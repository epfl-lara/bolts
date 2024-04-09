; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4766 () Bool)

(assert start!4766)

(declare-fun b_free!1331 () Bool)

(declare-fun b_next!1331 () Bool)

(assert (=> start!4766 (= b_free!1331 (not b_next!1331))))

(declare-fun tp!5465 () Bool)

(declare-fun b_and!2191 () Bool)

(assert (=> start!4766 (= tp!5465 b_and!2191)))

(declare-fun b!36811 () Bool)

(declare-fun res!22269 () Bool)

(declare-fun e!23254 () Bool)

(assert (=> b!36811 (=> (not res!22269) (not e!23254))))

(declare-datatypes ((B!738 0))(
  ( (B!739 (val!869 Int)) )
))
(declare-datatypes ((tuple2!1402 0))(
  ( (tuple2!1403 (_1!711 (_ BitVec 64)) (_2!711 B!738)) )
))
(declare-datatypes ((List!989 0))(
  ( (Nil!986) (Cons!985 (h!1553 tuple2!1402) (t!3728 List!989)) )
))
(declare-datatypes ((ListLongMap!983 0))(
  ( (ListLongMap!984 (toList!507 List!989)) )
))
(declare-fun lm!252 () ListLongMap!983)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun contains!455 (ListLongMap!983 (_ BitVec 64)) Bool)

(assert (=> b!36811 (= res!22269 (contains!455 lm!252 k!388))))

(declare-fun b!36812 () Bool)

(declare-fun e!23255 () Bool)

(assert (=> b!36812 (= e!23254 e!23255)))

(declare-fun res!22272 () Bool)

(assert (=> b!36812 (=> res!22272 e!23255)))

(declare-fun lt!13609 () ListLongMap!983)

(declare-fun p!304 () Int)

(declare-fun forall!169 (List!989 Int) Bool)

(assert (=> b!36812 (= res!22272 (not (forall!169 (toList!507 lt!13609) p!304)))))

(declare-fun tail!94 (ListLongMap!983) ListLongMap!983)

(assert (=> b!36812 (= lt!13609 (tail!94 lm!252))))

(declare-fun b!36814 () Bool)

(declare-fun res!22271 () Bool)

(assert (=> b!36814 (=> (not res!22271) (not e!23254))))

(declare-fun isEmpty!193 (ListLongMap!983) Bool)

(assert (=> b!36814 (= res!22271 (not (isEmpty!193 lm!252)))))

(declare-fun b!36815 () Bool)

(declare-fun res!22270 () Bool)

(assert (=> b!36815 (=> (not res!22270) (not e!23254))))

(declare-fun head!841 (List!989) tuple2!1402)

(assert (=> b!36815 (= res!22270 (not (= (_1!711 (head!841 (toList!507 lm!252))) k!388)))))

(declare-fun b!36816 () Bool)

(declare-fun e!23256 () Bool)

(declare-fun tp!5464 () Bool)

(assert (=> b!36816 (= e!23256 tp!5464)))

(declare-fun res!22273 () Bool)

(assert (=> start!4766 (=> (not res!22273) (not e!23254))))

(assert (=> start!4766 (= res!22273 (forall!169 (toList!507 lm!252) p!304))))

(assert (=> start!4766 e!23254))

(declare-fun inv!1624 (ListLongMap!983) Bool)

(assert (=> start!4766 (and (inv!1624 lm!252) e!23256)))

(assert (=> start!4766 tp!5465))

(assert (=> start!4766 true))

(declare-fun b!36813 () Bool)

(assert (=> b!36813 (= e!23255 (not (contains!455 lt!13609 k!388)))))

(assert (= (and start!4766 res!22273) b!36811))

(assert (= (and b!36811 res!22269) b!36814))

(assert (= (and b!36814 res!22271) b!36815))

(assert (= (and b!36815 res!22270) b!36812))

(assert (= (and b!36812 (not res!22272)) b!36813))

(assert (= start!4766 b!36816))

(declare-fun m!29665 () Bool)

(assert (=> start!4766 m!29665))

(declare-fun m!29667 () Bool)

(assert (=> start!4766 m!29667))

(declare-fun m!29669 () Bool)

(assert (=> b!36815 m!29669))

(declare-fun m!29671 () Bool)

(assert (=> b!36814 m!29671))

(declare-fun m!29673 () Bool)

(assert (=> b!36811 m!29673))

(declare-fun m!29675 () Bool)

(assert (=> b!36813 m!29675))

(declare-fun m!29677 () Bool)

(assert (=> b!36812 m!29677))

(declare-fun m!29679 () Bool)

(assert (=> b!36812 m!29679))

(push 1)

(assert b_and!2191)

(assert (not b!36815))

(assert (not b_next!1331))

(assert (not b!36812))

(assert (not b!36816))

(assert (not b!36813))

(assert (not b!36811))

(assert (not b!36814))

(assert (not start!4766))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2191)

(assert (not b_next!1331))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5561 () Bool)

(declare-fun res!22278 () Bool)

(declare-fun e!23261 () Bool)

(assert (=> d!5561 (=> res!22278 e!23261)))

(assert (=> d!5561 (= res!22278 (is-Nil!986 (toList!507 lt!13609)))))

(assert (=> d!5561 (= (forall!169 (toList!507 lt!13609) p!304) e!23261)))

(declare-fun b!36821 () Bool)

(declare-fun e!23262 () Bool)

(assert (=> b!36821 (= e!23261 e!23262)))

(declare-fun res!22279 () Bool)

(assert (=> b!36821 (=> (not res!22279) (not e!23262))))

(declare-fun dynLambda!169 (Int tuple2!1402) Bool)

(assert (=> b!36821 (= res!22279 (dynLambda!169 p!304 (h!1553 (toList!507 lt!13609))))))

(declare-fun b!36822 () Bool)

(assert (=> b!36822 (= e!23262 (forall!169 (t!3728 (toList!507 lt!13609)) p!304))))

(assert (= (and d!5561 (not res!22278)) b!36821))

(assert (= (and b!36821 res!22279) b!36822))

(declare-fun b_lambda!1789 () Bool)

(assert (=> (not b_lambda!1789) (not b!36821)))

(declare-fun t!3730 () Bool)

(declare-fun tb!727 () Bool)

(assert (=> (and start!4766 (= p!304 p!304) t!3730) tb!727))

(declare-fun result!1251 () Bool)

(assert (=> tb!727 (= result!1251 true)))

(assert (=> b!36821 t!3730))

(declare-fun b_and!2193 () Bool)

(assert (= b_and!2191 (and (=> t!3730 result!1251) b_and!2193)))

(declare-fun m!29683 () Bool)

(assert (=> b!36821 m!29683))

(declare-fun m!29685 () Bool)

(assert (=> b!36822 m!29685))

(assert (=> b!36812 d!5561))

(declare-fun d!5569 () Bool)

(declare-fun tail!95 (List!989) List!989)

(assert (=> d!5569 (= (tail!94 lm!252) (ListLongMap!984 (tail!95 (toList!507 lm!252))))))

(declare-fun bs!1409 () Bool)

(assert (= bs!1409 d!5569))

(declare-fun m!29691 () Bool)

(assert (=> bs!1409 m!29691))

(assert (=> b!36812 d!5569))

(declare-fun d!5573 () Bool)

(declare-fun e!23286 () Bool)

(assert (=> d!5573 e!23286))

(declare-fun res!22297 () Bool)

(assert (=> d!5573 (=> res!22297 e!23286)))

(declare-fun lt!13632 () Bool)

(assert (=> d!5573 (= res!22297 (not lt!13632))))

(declare-fun lt!13633 () Bool)

(assert (=> d!5573 (= lt!13632 lt!13633)))

(declare-datatypes ((Unit!822 0))(
  ( (Unit!823) )
))
(declare-fun lt!13631 () Unit!822)

(declare-fun e!23285 () Unit!822)

(assert (=> d!5573 (= lt!13631 e!23285)))

(declare-fun c!4222 () Bool)

(assert (=> d!5573 (= c!4222 lt!13633)))

(declare-fun containsKey!45 (List!989 (_ BitVec 64)) Bool)

(assert (=> d!5573 (= lt!13633 (containsKey!45 (toList!507 lt!13609) k!388))))

(assert (=> d!5573 (= (contains!455 lt!13609 k!388) lt!13632)))

(declare-fun b!36849 () Bool)

(declare-fun lt!13630 () Unit!822)

(assert (=> b!36849 (= e!23285 lt!13630)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!42 (List!989 (_ BitVec 64)) Unit!822)

(assert (=> b!36849 (= lt!13630 (lemmaContainsKeyImpliesGetValueByKeyDefined!42 (toList!507 lt!13609) k!388))))

(declare-datatypes ((Option!87 0))(
  ( (Some!86 (v!1955 B!738)) (None!85) )
))
(declare-fun isDefined!43 (Option!87) Bool)

(declare-fun getValueByKey!81 (List!989 (_ BitVec 64)) Option!87)

(assert (=> b!36849 (isDefined!43 (getValueByKey!81 (toList!507 lt!13609) k!388))))

(declare-fun b!36851 () Bool)

(declare-fun Unit!826 () Unit!822)

(assert (=> b!36851 (= e!23285 Unit!826)))

(declare-fun b!36852 () Bool)

(assert (=> b!36852 (= e!23286 (isDefined!43 (getValueByKey!81 (toList!507 lt!13609) k!388)))))

(assert (= (and d!5573 c!4222) b!36849))

(assert (= (and d!5573 (not c!4222)) b!36851))

(assert (= (and d!5573 (not res!22297)) b!36852))

(declare-fun m!29709 () Bool)

(assert (=> d!5573 m!29709))

(declare-fun m!29711 () Bool)

(assert (=> b!36849 m!29711))

(declare-fun m!29713 () Bool)

(assert (=> b!36849 m!29713))

(assert (=> b!36849 m!29713))

(declare-fun m!29715 () Bool)

(assert (=> b!36849 m!29715))

(assert (=> b!36852 m!29713))

(assert (=> b!36852 m!29713))

(assert (=> b!36852 m!29715))

(assert (=> b!36813 d!5573))

(declare-fun d!5585 () Bool)

(declare-fun res!22298 () Bool)

(declare-fun e!23287 () Bool)

(assert (=> d!5585 (=> res!22298 e!23287)))

(assert (=> d!5585 (= res!22298 (is-Nil!986 (toList!507 lm!252)))))

(assert (=> d!5585 (= (forall!169 (toList!507 lm!252) p!304) e!23287)))

(declare-fun b!36853 () Bool)

(declare-fun e!23288 () Bool)

(assert (=> b!36853 (= e!23287 e!23288)))

(declare-fun res!22299 () Bool)

(assert (=> b!36853 (=> (not res!22299) (not e!23288))))

(assert (=> b!36853 (= res!22299 (dynLambda!169 p!304 (h!1553 (toList!507 lm!252))))))

(declare-fun b!36854 () Bool)

(assert (=> b!36854 (= e!23288 (forall!169 (t!3728 (toList!507 lm!252)) p!304))))

(assert (= (and d!5585 (not res!22298)) b!36853))

(assert (= (and b!36853 res!22299) b!36854))

(declare-fun b_lambda!1795 () Bool)

(assert (=> (not b_lambda!1795) (not b!36853)))

(declare-fun t!3736 () Bool)

(declare-fun tb!733 () Bool)

(assert (=> (and start!4766 (= p!304 p!304) t!3736) tb!733))

(declare-fun result!1257 () Bool)

(assert (=> tb!733 (= result!1257 true)))

(assert (=> b!36853 t!3736))

(declare-fun b_and!2199 () Bool)

(assert (= b_and!2193 (and (=> t!3736 result!1257) b_and!2199)))

(declare-fun m!29717 () Bool)

(assert (=> b!36853 m!29717))

(declare-fun m!29719 () Bool)

(assert (=> b!36854 m!29719))

(assert (=> start!4766 d!5585))

(declare-fun d!5587 () Bool)

(declare-fun isStrictlySorted!177 (List!989) Bool)

(assert (=> d!5587 (= (inv!1624 lm!252) (isStrictlySorted!177 (toList!507 lm!252)))))

(declare-fun bs!1412 () Bool)

(assert (= bs!1412 d!5587))

(declare-fun m!29725 () Bool)

(assert (=> bs!1412 m!29725))

(assert (=> start!4766 d!5587))

(declare-fun d!5591 () Bool)

(declare-fun isEmpty!196 (List!989) Bool)

(assert (=> d!5591 (= (isEmpty!193 lm!252) (isEmpty!196 (toList!507 lm!252)))))

(declare-fun bs!1414 () Bool)

(assert (= bs!1414 d!5591))

(declare-fun m!29729 () Bool)

(assert (=> bs!1414 m!29729))

(assert (=> b!36814 d!5591))

(declare-fun d!5595 () Bool)

(assert (=> d!5595 (= (head!841 (toList!507 lm!252)) (h!1553 (toList!507 lm!252)))))

(assert (=> b!36815 d!5595))

(declare-fun d!5599 () Bool)

(declare-fun e!23300 () Bool)

(assert (=> d!5599 e!23300))

(declare-fun res!22306 () Bool)

(assert (=> d!5599 (=> res!22306 e!23300)))

(declare-fun lt!13652 () Bool)

(assert (=> d!5599 (= res!22306 (not lt!13652))))

(declare-fun lt!13653 () Bool)

(assert (=> d!5599 (= lt!13652 lt!13653)))

(declare-fun lt!13651 () Unit!822)

(declare-fun e!23299 () Unit!822)

(assert (=> d!5599 (= lt!13651 e!23299)))

(declare-fun c!4227 () Bool)

(assert (=> d!5599 (= c!4227 lt!13653)))

(assert (=> d!5599 (= lt!13653 (containsKey!45 (toList!507 lm!252) k!388))))

(assert (=> d!5599 (= (contains!455 lm!252 k!388) lt!13652)))

(declare-fun b!36869 () Bool)

(declare-fun lt!13650 () Unit!822)

(assert (=> b!36869 (= e!23299 lt!13650)))

(assert (=> b!36869 (= lt!13650 (lemmaContainsKeyImpliesGetValueByKeyDefined!42 (toList!507 lm!252) k!388))))

(assert (=> b!36869 (isDefined!43 (getValueByKey!81 (toList!507 lm!252) k!388))))

(declare-fun b!36870 () Bool)

(declare-fun Unit!830 () Unit!822)

(assert (=> b!36870 (= e!23299 Unit!830)))

(declare-fun b!36871 () Bool)

(assert (=> b!36871 (= e!23300 (isDefined!43 (getValueByKey!81 (toList!507 lm!252) k!388)))))

(assert (= (and d!5599 c!4227) b!36869))

(assert (= (and d!5599 (not c!4227)) b!36870))

(assert (= (and d!5599 (not res!22306)) b!36871))

(declare-fun m!29749 () Bool)

(assert (=> d!5599 m!29749))

(declare-fun m!29751 () Bool)

(assert (=> b!36869 m!29751))

(declare-fun m!29753 () Bool)

(assert (=> b!36869 m!29753))

(assert (=> b!36869 m!29753))

(declare-fun m!29755 () Bool)

(assert (=> b!36869 m!29755))

(assert (=> b!36871 m!29753))

(assert (=> b!36871 m!29753))

(assert (=> b!36871 m!29755))

(assert (=> b!36811 d!5599))

(declare-fun b!36883 () Bool)

(declare-fun e!23308 () Bool)

(declare-fun tp_is_empty!1658 () Bool)

(declare-fun tp!5471 () Bool)

(assert (=> b!36883 (= e!23308 (and tp_is_empty!1658 tp!5471))))

(assert (=> b!36816 (= tp!5464 e!23308)))

(assert (= (and b!36816 (is-Cons!985 (toList!507 lm!252))) b!36883))

(declare-fun b_lambda!1802 () Bool)

(assert (= b_lambda!1789 (or (and start!4766 b_free!1331) b_lambda!1802)))

(declare-fun b_lambda!1806 () Bool)

(assert (= b_lambda!1795 (or (and start!4766 b_free!1331) b_lambda!1806)))

(push 1)

(assert (not d!5599))

(assert tp_is_empty!1658)

(assert (not b!36822))

(assert (not b!36869))

(assert (not d!5587))

(assert (not b_next!1331))

(assert (not d!5591))

(assert (not b!36883))

(assert (not b_lambda!1806))

(assert (not d!5573))

(assert (not b_lambda!1802))

(assert (not b!36854))

(assert (not d!5569))

(assert (not b!36849))

(assert b_and!2199)

(assert (not b!36852))

(assert (not b!36871))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2199)

(assert (not b_next!1331))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5641 () Bool)

(declare-fun isEmpty!199 (Option!87) Bool)

(assert (=> d!5641 (= (isDefined!43 (getValueByKey!81 (toList!507 lt!13609) k!388)) (not (isEmpty!199 (getValueByKey!81 (toList!507 lt!13609) k!388))))))

(declare-fun bs!1420 () Bool)

(assert (= bs!1420 d!5641))

(assert (=> bs!1420 m!29713))

(declare-fun m!29805 () Bool)

(assert (=> bs!1420 m!29805))

(assert (=> b!36852 d!5641))

(declare-fun b!36961 () Bool)

(declare-fun e!23364 () Option!87)

(declare-fun e!23365 () Option!87)

(assert (=> b!36961 (= e!23364 e!23365)))

(declare-fun c!4248 () Bool)

(assert (=> b!36961 (= c!4248 (and (is-Cons!985 (toList!507 lt!13609)) (not (= (_1!711 (h!1553 (toList!507 lt!13609))) k!388))))))

(declare-fun d!5645 () Bool)

(declare-fun c!4247 () Bool)

(assert (=> d!5645 (= c!4247 (and (is-Cons!985 (toList!507 lt!13609)) (= (_1!711 (h!1553 (toList!507 lt!13609))) k!388)))))

(assert (=> d!5645 (= (getValueByKey!81 (toList!507 lt!13609) k!388) e!23364)))

(declare-fun b!36962 () Bool)

(assert (=> b!36962 (= e!23365 (getValueByKey!81 (t!3728 (toList!507 lt!13609)) k!388))))

(declare-fun b!36960 () Bool)

(assert (=> b!36960 (= e!23364 (Some!86 (_2!711 (h!1553 (toList!507 lt!13609)))))))

(declare-fun b!36963 () Bool)

(assert (=> b!36963 (= e!23365 None!85)))

(assert (= (and d!5645 c!4247) b!36960))

(assert (= (and d!5645 (not c!4247)) b!36961))

(assert (= (and b!36961 c!4248) b!36962))

(assert (= (and b!36961 (not c!4248)) b!36963))

(declare-fun m!29813 () Bool)

(assert (=> b!36962 m!29813))

(assert (=> b!36852 d!5645))

(declare-fun d!5653 () Bool)

(assert (=> d!5653 (= (isEmpty!196 (toList!507 lm!252)) (is-Nil!986 (toList!507 lm!252)))))

(assert (=> d!5591 d!5653))

(declare-fun d!5657 () Bool)

(declare-fun res!22349 () Bool)

(declare-fun e!23376 () Bool)

(assert (=> d!5657 (=> res!22349 e!23376)))

(assert (=> d!5657 (= res!22349 (or (is-Nil!986 (toList!507 lm!252)) (is-Nil!986 (t!3728 (toList!507 lm!252)))))))

(assert (=> d!5657 (= (isStrictlySorted!177 (toList!507 lm!252)) e!23376)))

(declare-fun b!36976 () Bool)

(declare-fun e!23377 () Bool)

(assert (=> b!36976 (= e!23376 e!23377)))

(declare-fun res!22350 () Bool)

(assert (=> b!36976 (=> (not res!22350) (not e!23377))))

(assert (=> b!36976 (= res!22350 (bvslt (_1!711 (h!1553 (toList!507 lm!252))) (_1!711 (h!1553 (t!3728 (toList!507 lm!252))))))))

(declare-fun b!36977 () Bool)

(assert (=> b!36977 (= e!23377 (isStrictlySorted!177 (t!3728 (toList!507 lm!252))))))

(assert (= (and d!5657 (not res!22349)) b!36976))

(assert (= (and b!36976 res!22350) b!36977))

(declare-fun m!29823 () Bool)

(assert (=> b!36977 m!29823))

(assert (=> d!5587 d!5657))

(declare-fun d!5665 () Bool)

(assert (=> d!5665 (isDefined!43 (getValueByKey!81 (toList!507 lm!252) k!388))))

(declare-fun lt!13668 () Unit!822)

(declare-fun choose!231 (List!989 (_ BitVec 64)) Unit!822)

(assert (=> d!5665 (= lt!13668 (choose!231 (toList!507 lm!252) k!388))))

(declare-fun e!23390 () Bool)

(assert (=> d!5665 e!23390))

(declare-fun res!22362 () Bool)

(assert (=> d!5665 (=> (not res!22362) (not e!23390))))

(assert (=> d!5665 (= res!22362 (isStrictlySorted!177 (toList!507 lm!252)))))

(assert (=> d!5665 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!42 (toList!507 lm!252) k!388) lt!13668)))

(declare-fun b!36990 () Bool)

(assert (=> b!36990 (= e!23390 (containsKey!45 (toList!507 lm!252) k!388))))

(assert (= (and d!5665 res!22362) b!36990))

(assert (=> d!5665 m!29753))

(assert (=> d!5665 m!29753))

(assert (=> d!5665 m!29755))

(declare-fun m!29833 () Bool)

(assert (=> d!5665 m!29833))

(assert (=> d!5665 m!29725))

(assert (=> b!36990 m!29749))

(assert (=> b!36869 d!5665))

(declare-fun d!5671 () Bool)

(assert (=> d!5671 (= (isDefined!43 (getValueByKey!81 (toList!507 lm!252) k!388)) (not (isEmpty!199 (getValueByKey!81 (toList!507 lm!252) k!388))))))

(declare-fun bs!1422 () Bool)

(assert (= bs!1422 d!5671))

(assert (=> bs!1422 m!29753))

(declare-fun m!29835 () Bool)

(assert (=> bs!1422 m!29835))

(assert (=> b!36869 d!5671))

(declare-fun b!36992 () Bool)

(declare-fun e!23391 () Option!87)

(declare-fun e!23392 () Option!87)

(assert (=> b!36992 (= e!23391 e!23392)))

(declare-fun c!4252 () Bool)

(assert (=> b!36992 (= c!4252 (and (is-Cons!985 (toList!507 lm!252)) (not (= (_1!711 (h!1553 (toList!507 lm!252))) k!388))))))

