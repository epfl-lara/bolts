; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4938 () Bool)

(assert start!4938)

(declare-fun b_free!1341 () Bool)

(declare-fun b_next!1341 () Bool)

(assert (=> start!4938 (= b_free!1341 (not b_next!1341))))

(declare-fun tp!5519 () Bool)

(declare-fun b_and!2253 () Bool)

(assert (=> start!4938 (= tp!5519 b_and!2253)))

(declare-fun res!22565 () Bool)

(declare-fun e!23617 () Bool)

(assert (=> start!4938 (=> (not res!22565) (not e!23617))))

(declare-datatypes ((B!748 0))(
  ( (B!749 (val!874 Int)) )
))
(declare-datatypes ((tuple2!1412 0))(
  ( (tuple2!1413 (_1!716 (_ BitVec 64)) (_2!716 B!748)) )
))
(declare-datatypes ((List!994 0))(
  ( (Nil!991) (Cons!990 (h!1558 tuple2!1412) (t!3789 List!994)) )
))
(declare-datatypes ((ListLongMap!993 0))(
  ( (ListLongMap!994 (toList!512 List!994)) )
))
(declare-fun lm!252 () ListLongMap!993)

(declare-fun p!304 () Int)

(declare-fun forall!174 (List!994 Int) Bool)

(assert (=> start!4938 (= res!22565 (forall!174 (toList!512 lm!252) p!304))))

(assert (=> start!4938 e!23617))

(declare-fun e!23619 () Bool)

(declare-fun inv!1639 (ListLongMap!993) Bool)

(assert (=> start!4938 (and (inv!1639 lm!252) e!23619)))

(assert (=> start!4938 tp!5519))

(assert (=> start!4938 true))

(declare-fun b!37335 () Bool)

(declare-fun res!22563 () Bool)

(assert (=> b!37335 (=> (not res!22563) (not e!23617))))

(declare-fun isEmpty!209 (ListLongMap!993) Bool)

(assert (=> b!37335 (= res!22563 (not (isEmpty!209 lm!252)))))

(declare-fun b!37336 () Bool)

(declare-fun e!23618 () Bool)

(assert (=> b!37336 (= e!23617 e!23618)))

(declare-fun res!22567 () Bool)

(assert (=> b!37336 (=> (not res!22567) (not e!23618))))

(declare-fun lt!13768 () ListLongMap!993)

(assert (=> b!37336 (= res!22567 (forall!174 (toList!512 lt!13768) p!304))))

(declare-fun tail!105 (ListLongMap!993) ListLongMap!993)

(assert (=> b!37336 (= lt!13768 (tail!105 lm!252))))

(declare-fun b!37337 () Bool)

(declare-fun tp!5518 () Bool)

(assert (=> b!37337 (= e!23619 tp!5518)))

(declare-fun b!37338 () Bool)

(declare-fun res!22566 () Bool)

(assert (=> b!37338 (=> (not res!22566) (not e!23618))))

(declare-fun k0!388 () (_ BitVec 64))

(declare-fun contains!460 (ListLongMap!993 (_ BitVec 64)) Bool)

(assert (=> b!37338 (= res!22566 (contains!460 lt!13768 k0!388))))

(declare-fun b!37339 () Bool)

(declare-fun dynLambda!176 (Int tuple2!1412) Bool)

(declare-fun apply!47 (ListLongMap!993 (_ BitVec 64)) B!748)

(assert (=> b!37339 (= e!23618 (not (dynLambda!176 p!304 (tuple2!1413 k0!388 (apply!47 lm!252 k0!388)))))))

(assert (=> b!37339 (dynLambda!176 p!304 (tuple2!1413 k0!388 (apply!47 lt!13768 k0!388)))))

(declare-datatypes ((Unit!845 0))(
  ( (Unit!846) )
))
(declare-fun lt!13767 () Unit!845)

(declare-fun applyForall!6 (ListLongMap!993 Int (_ BitVec 64)) Unit!845)

(assert (=> b!37339 (= lt!13767 (applyForall!6 lt!13768 p!304 k0!388))))

(declare-fun b!37340 () Bool)

(declare-fun res!22562 () Bool)

(assert (=> b!37340 (=> (not res!22562) (not e!23617))))

(assert (=> b!37340 (= res!22562 (contains!460 lm!252 k0!388))))

(declare-fun b!37341 () Bool)

(declare-fun res!22564 () Bool)

(assert (=> b!37341 (=> (not res!22564) (not e!23617))))

(declare-fun head!846 (List!994) tuple2!1412)

(assert (=> b!37341 (= res!22564 (not (= (_1!716 (head!846 (toList!512 lm!252))) k0!388)))))

(assert (= (and start!4938 res!22565) b!37340))

(assert (= (and b!37340 res!22562) b!37335))

(assert (= (and b!37335 res!22563) b!37341))

(assert (= (and b!37341 res!22564) b!37336))

(assert (= (and b!37336 res!22567) b!37338))

(assert (= (and b!37338 res!22566) b!37339))

(assert (= start!4938 b!37337))

(declare-fun b_lambda!1889 () Bool)

(assert (=> (not b_lambda!1889) (not b!37339)))

(declare-fun t!3786 () Bool)

(declare-fun tb!779 () Bool)

(assert (=> (and start!4938 (= p!304 p!304) t!3786) tb!779))

(declare-fun result!1315 () Bool)

(assert (=> tb!779 (= result!1315 true)))

(assert (=> b!37339 t!3786))

(declare-fun b_and!2255 () Bool)

(assert (= b_and!2253 (and (=> t!3786 result!1315) b_and!2255)))

(declare-fun b_lambda!1891 () Bool)

(assert (=> (not b_lambda!1891) (not b!37339)))

(declare-fun t!3788 () Bool)

(declare-fun tb!781 () Bool)

(assert (=> (and start!4938 (= p!304 p!304) t!3788) tb!781))

(declare-fun result!1317 () Bool)

(assert (=> tb!781 (= result!1317 true)))

(assert (=> b!37339 t!3788))

(declare-fun b_and!2257 () Bool)

(assert (= b_and!2255 (and (=> t!3788 result!1317) b_and!2257)))

(declare-fun m!30139 () Bool)

(assert (=> b!37341 m!30139))

(declare-fun m!30141 () Bool)

(assert (=> b!37335 m!30141))

(declare-fun m!30143 () Bool)

(assert (=> b!37340 m!30143))

(declare-fun m!30145 () Bool)

(assert (=> b!37338 m!30145))

(declare-fun m!30147 () Bool)

(assert (=> b!37339 m!30147))

(declare-fun m!30149 () Bool)

(assert (=> b!37339 m!30149))

(declare-fun m!30151 () Bool)

(assert (=> b!37339 m!30151))

(declare-fun m!30153 () Bool)

(assert (=> b!37339 m!30153))

(declare-fun m!30155 () Bool)

(assert (=> b!37339 m!30155))

(declare-fun m!30157 () Bool)

(assert (=> b!37336 m!30157))

(declare-fun m!30159 () Bool)

(assert (=> b!37336 m!30159))

(declare-fun m!30161 () Bool)

(assert (=> start!4938 m!30161))

(declare-fun m!30163 () Bool)

(assert (=> start!4938 m!30163))

(check-sat b_and!2257 (not b!37341) (not b!37340) (not b!37338) (not b_lambda!1891) (not b!37337) (not b_lambda!1889) (not b_next!1341) (not b!37335) (not start!4938) (not b!37339) (not b!37336))
(check-sat b_and!2257 (not b_next!1341))
(get-model)

(declare-fun b_lambda!1897 () Bool)

(assert (= b_lambda!1889 (or (and start!4938 b_free!1341) b_lambda!1897)))

(declare-fun b_lambda!1899 () Bool)

(assert (= b_lambda!1891 (or (and start!4938 b_free!1341) b_lambda!1899)))

(check-sat b_and!2257 (not b!37341) (not b!37340) (not b_lambda!1897) (not b!37338) (not b!37337) (not b_next!1341) (not b!37335) (not start!4938) (not b_lambda!1899) (not b!37339) (not b!37336))
(check-sat b_and!2257 (not b_next!1341))
(get-model)

(declare-fun d!5847 () Bool)

(declare-datatypes ((Option!92 0))(
  ( (Some!91 (v!1960 B!748)) (None!90) )
))
(declare-fun get!635 (Option!92) B!748)

(declare-fun getValueByKey!86 (List!994 (_ BitVec 64)) Option!92)

(assert (=> d!5847 (= (apply!47 lm!252 k0!388) (get!635 (getValueByKey!86 (toList!512 lm!252) k0!388)))))

(declare-fun bs!1444 () Bool)

(assert (= bs!1444 d!5847))

(declare-fun m!30195 () Bool)

(assert (=> bs!1444 m!30195))

(assert (=> bs!1444 m!30195))

(declare-fun m!30197 () Bool)

(assert (=> bs!1444 m!30197))

(assert (=> b!37339 d!5847))

(declare-fun d!5851 () Bool)

(assert (=> d!5851 (= (apply!47 lt!13768 k0!388) (get!635 (getValueByKey!86 (toList!512 lt!13768) k0!388)))))

(declare-fun bs!1445 () Bool)

(assert (= bs!1445 d!5851))

(declare-fun m!30199 () Bool)

(assert (=> bs!1445 m!30199))

(assert (=> bs!1445 m!30199))

(declare-fun m!30201 () Bool)

(assert (=> bs!1445 m!30201))

(assert (=> b!37339 d!5851))

(declare-fun d!5853 () Bool)

(assert (=> d!5853 (dynLambda!176 p!304 (tuple2!1413 k0!388 (apply!47 lt!13768 k0!388)))))

(declare-fun lt!13777 () Unit!845)

(declare-fun choose!234 (ListLongMap!993 Int (_ BitVec 64)) Unit!845)

(assert (=> d!5853 (= lt!13777 (choose!234 lt!13768 p!304 k0!388))))

(declare-fun e!23643 () Bool)

(assert (=> d!5853 e!23643))

(declare-fun res!22600 () Bool)

(assert (=> d!5853 (=> (not res!22600) (not e!23643))))

(assert (=> d!5853 (= res!22600 (forall!174 (toList!512 lt!13768) p!304))))

(assert (=> d!5853 (= (applyForall!6 lt!13768 p!304 k0!388) lt!13777)))

(declare-fun b!37377 () Bool)

(assert (=> b!37377 (= e!23643 (contains!460 lt!13768 k0!388))))

(assert (= (and d!5853 res!22600) b!37377))

(declare-fun b_lambda!1913 () Bool)

(assert (=> (not b_lambda!1913) (not d!5853)))

(assert (=> d!5853 t!3788))

(declare-fun b_and!2269 () Bool)

(assert (= b_and!2257 (and (=> t!3788 result!1317) b_and!2269)))

(assert (=> d!5853 m!30155))

(assert (=> d!5853 m!30153))

(declare-fun m!30215 () Bool)

(assert (=> d!5853 m!30215))

(assert (=> d!5853 m!30157))

(assert (=> b!37377 m!30145))

(assert (=> b!37339 d!5853))

(declare-fun d!5865 () Bool)

(declare-fun e!23658 () Bool)

(assert (=> d!5865 e!23658))

(declare-fun res!22609 () Bool)

(assert (=> d!5865 (=> res!22609 e!23658)))

(declare-fun lt!13803 () Bool)

(assert (=> d!5865 (= res!22609 (not lt!13803))))

(declare-fun lt!13801 () Bool)

(assert (=> d!5865 (= lt!13803 lt!13801)))

(declare-fun lt!13804 () Unit!845)

(declare-fun e!23657 () Unit!845)

(assert (=> d!5865 (= lt!13804 e!23657)))

(declare-fun c!4312 () Bool)

(assert (=> d!5865 (= c!4312 lt!13801)))

(declare-fun containsKey!51 (List!994 (_ BitVec 64)) Bool)

(assert (=> d!5865 (= lt!13801 (containsKey!51 (toList!512 lt!13768) k0!388))))

(assert (=> d!5865 (= (contains!460 lt!13768 k0!388) lt!13803)))

(declare-fun b!37396 () Bool)

(declare-fun lt!13802 () Unit!845)

(assert (=> b!37396 (= e!23657 lt!13802)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!48 (List!994 (_ BitVec 64)) Unit!845)

(assert (=> b!37396 (= lt!13802 (lemmaContainsKeyImpliesGetValueByKeyDefined!48 (toList!512 lt!13768) k0!388))))

(declare-fun isDefined!49 (Option!92) Bool)

(assert (=> b!37396 (isDefined!49 (getValueByKey!86 (toList!512 lt!13768) k0!388))))

(declare-fun b!37397 () Bool)

(declare-fun Unit!850 () Unit!845)

(assert (=> b!37397 (= e!23657 Unit!850)))

(declare-fun b!37398 () Bool)

(assert (=> b!37398 (= e!23658 (isDefined!49 (getValueByKey!86 (toList!512 lt!13768) k0!388)))))

(assert (= (and d!5865 c!4312) b!37396))

(assert (= (and d!5865 (not c!4312)) b!37397))

(assert (= (and d!5865 (not res!22609)) b!37398))

(declare-fun m!30237 () Bool)

(assert (=> d!5865 m!30237))

(declare-fun m!30239 () Bool)

(assert (=> b!37396 m!30239))

(assert (=> b!37396 m!30199))

(assert (=> b!37396 m!30199))

(declare-fun m!30241 () Bool)

(assert (=> b!37396 m!30241))

(assert (=> b!37398 m!30199))

(assert (=> b!37398 m!30199))

(assert (=> b!37398 m!30241))

(assert (=> b!37338 d!5865))

(declare-fun d!5877 () Bool)

(assert (=> d!5877 (= (head!846 (toList!512 lm!252)) (h!1558 (toList!512 lm!252)))))

(assert (=> b!37341 d!5877))

(declare-fun d!5879 () Bool)

(declare-fun res!22618 () Bool)

(declare-fun e!23668 () Bool)

(assert (=> d!5879 (=> res!22618 e!23668)))

(get-info :version)

(assert (=> d!5879 (= res!22618 ((_ is Nil!991) (toList!512 lt!13768)))))

(assert (=> d!5879 (= (forall!174 (toList!512 lt!13768) p!304) e!23668)))

(declare-fun b!37409 () Bool)

(declare-fun e!23669 () Bool)

(assert (=> b!37409 (= e!23668 e!23669)))

(declare-fun res!22619 () Bool)

(assert (=> b!37409 (=> (not res!22619) (not e!23669))))

(assert (=> b!37409 (= res!22619 (dynLambda!176 p!304 (h!1558 (toList!512 lt!13768))))))

(declare-fun b!37410 () Bool)

(assert (=> b!37410 (= e!23669 (forall!174 (t!3789 (toList!512 lt!13768)) p!304))))

(assert (= (and d!5879 (not res!22618)) b!37409))

(assert (= (and b!37409 res!22619) b!37410))

(declare-fun b_lambda!1919 () Bool)

(assert (=> (not b_lambda!1919) (not b!37409)))

(declare-fun t!3800 () Bool)

(declare-fun tb!791 () Bool)

(assert (=> (and start!4938 (= p!304 p!304) t!3800) tb!791))

(declare-fun result!1327 () Bool)

(assert (=> tb!791 (= result!1327 true)))

(assert (=> b!37409 t!3800))

(declare-fun b_and!2275 () Bool)

(assert (= b_and!2269 (and (=> t!3800 result!1327) b_and!2275)))

(declare-fun m!30251 () Bool)

(assert (=> b!37409 m!30251))

(declare-fun m!30253 () Bool)

(assert (=> b!37410 m!30253))

(assert (=> b!37336 d!5879))

(declare-fun d!5885 () Bool)

(declare-fun tail!108 (List!994) List!994)

(assert (=> d!5885 (= (tail!105 lm!252) (ListLongMap!994 (tail!108 (toList!512 lm!252))))))

(declare-fun bs!1452 () Bool)

(assert (= bs!1452 d!5885))

(declare-fun m!30259 () Bool)

(assert (=> bs!1452 m!30259))

(assert (=> b!37336 d!5885))

(declare-fun d!5889 () Bool)

(declare-fun isEmpty!211 (List!994) Bool)

(assert (=> d!5889 (= (isEmpty!209 lm!252) (isEmpty!211 (toList!512 lm!252)))))

(declare-fun bs!1454 () Bool)

(assert (= bs!1454 d!5889))

(declare-fun m!30263 () Bool)

(assert (=> bs!1454 m!30263))

(assert (=> b!37335 d!5889))

(declare-fun d!5893 () Bool)

(declare-fun res!22622 () Bool)

(declare-fun e!23674 () Bool)

(assert (=> d!5893 (=> res!22622 e!23674)))

(assert (=> d!5893 (= res!22622 ((_ is Nil!991) (toList!512 lm!252)))))

(assert (=> d!5893 (= (forall!174 (toList!512 lm!252) p!304) e!23674)))

(declare-fun b!37417 () Bool)

(declare-fun e!23675 () Bool)

(assert (=> b!37417 (= e!23674 e!23675)))

(declare-fun res!22623 () Bool)

(assert (=> b!37417 (=> (not res!22623) (not e!23675))))

(assert (=> b!37417 (= res!22623 (dynLambda!176 p!304 (h!1558 (toList!512 lm!252))))))

(declare-fun b!37418 () Bool)

(assert (=> b!37418 (= e!23675 (forall!174 (t!3789 (toList!512 lm!252)) p!304))))

(assert (= (and d!5893 (not res!22622)) b!37417))

(assert (= (and b!37417 res!22623) b!37418))

(declare-fun b_lambda!1923 () Bool)

(assert (=> (not b_lambda!1923) (not b!37417)))

(declare-fun t!3804 () Bool)

(declare-fun tb!795 () Bool)

(assert (=> (and start!4938 (= p!304 p!304) t!3804) tb!795))

(declare-fun result!1333 () Bool)

(assert (=> tb!795 (= result!1333 true)))

(assert (=> b!37417 t!3804))

(declare-fun b_and!2279 () Bool)

(assert (= b_and!2275 (and (=> t!3804 result!1333) b_and!2279)))

(declare-fun m!30267 () Bool)

(assert (=> b!37417 m!30267))

(declare-fun m!30269 () Bool)

(assert (=> b!37418 m!30269))

(assert (=> start!4938 d!5893))

(declare-fun d!5895 () Bool)

(declare-fun isStrictlySorted!182 (List!994) Bool)

(assert (=> d!5895 (= (inv!1639 lm!252) (isStrictlySorted!182 (toList!512 lm!252)))))

(declare-fun bs!1456 () Bool)

(assert (= bs!1456 d!5895))

(declare-fun m!30271 () Bool)

(assert (=> bs!1456 m!30271))

(assert (=> start!4938 d!5895))

(declare-fun d!5897 () Bool)

(declare-fun e!23682 () Bool)

(assert (=> d!5897 e!23682))

(declare-fun res!22626 () Bool)

(assert (=> d!5897 (=> res!22626 e!23682)))

(declare-fun lt!13822 () Bool)

(assert (=> d!5897 (= res!22626 (not lt!13822))))

(declare-fun lt!13820 () Bool)

(assert (=> d!5897 (= lt!13822 lt!13820)))

(declare-fun lt!13823 () Unit!845)

(declare-fun e!23681 () Unit!845)

(assert (=> d!5897 (= lt!13823 e!23681)))

(declare-fun c!4316 () Bool)

(assert (=> d!5897 (= c!4316 lt!13820)))

(assert (=> d!5897 (= lt!13820 (containsKey!51 (toList!512 lm!252) k0!388))))

(assert (=> d!5897 (= (contains!460 lm!252 k0!388) lt!13822)))

(declare-fun b!37426 () Bool)

(declare-fun lt!13821 () Unit!845)

(assert (=> b!37426 (= e!23681 lt!13821)))

(assert (=> b!37426 (= lt!13821 (lemmaContainsKeyImpliesGetValueByKeyDefined!48 (toList!512 lm!252) k0!388))))

(assert (=> b!37426 (isDefined!49 (getValueByKey!86 (toList!512 lm!252) k0!388))))

(declare-fun b!37427 () Bool)

(declare-fun Unit!852 () Unit!845)

(assert (=> b!37427 (= e!23681 Unit!852)))

(declare-fun b!37428 () Bool)

(assert (=> b!37428 (= e!23682 (isDefined!49 (getValueByKey!86 (toList!512 lm!252) k0!388)))))

(assert (= (and d!5897 c!4316) b!37426))

(assert (= (and d!5897 (not c!4316)) b!37427))

(assert (= (and d!5897 (not res!22626)) b!37428))

(declare-fun m!30273 () Bool)

(assert (=> d!5897 m!30273))

(declare-fun m!30275 () Bool)

(assert (=> b!37426 m!30275))

(assert (=> b!37426 m!30195))

(assert (=> b!37426 m!30195))

(declare-fun m!30277 () Bool)

(assert (=> b!37426 m!30277))

(assert (=> b!37428 m!30195))

(assert (=> b!37428 m!30195))

(assert (=> b!37428 m!30277))

(assert (=> b!37340 d!5897))

(declare-fun b!37436 () Bool)

(declare-fun e!23687 () Bool)

(declare-fun tp_is_empty!1671 () Bool)

(declare-fun tp!5531 () Bool)

(assert (=> b!37436 (= e!23687 (and tp_is_empty!1671 tp!5531))))

(assert (=> b!37337 (= tp!5518 e!23687)))

(assert (= (and b!37337 ((_ is Cons!990) (toList!512 lm!252))) b!37436))

(declare-fun b_lambda!1931 () Bool)

(assert (= b_lambda!1913 (or (and start!4938 b_free!1341) b_lambda!1931)))

(declare-fun b_lambda!1933 () Bool)

(assert (= b_lambda!1923 (or (and start!4938 b_free!1341) b_lambda!1933)))

(declare-fun b_lambda!1935 () Bool)

(assert (= b_lambda!1919 (or (and start!4938 b_free!1341) b_lambda!1935)))

(check-sat (not b_lambda!1933) (not b_lambda!1897) (not b!37426) (not d!5885) (not d!5897) (not b_lambda!1935) (not d!5889) (not b!37428) (not b_lambda!1899) (not d!5895) (not d!5853) (not b!37418) (not b!37398) b_and!2279 (not b_lambda!1931) (not b!37377) (not d!5851) (not b_next!1341) (not b!37410) (not d!5847) (not d!5865) (not b!37436) tp_is_empty!1671 (not b!37396))
(check-sat b_and!2279 (not b_next!1341))
(get-model)

(declare-fun d!5907 () Bool)

(declare-fun isEmpty!214 (Option!92) Bool)

(assert (=> d!5907 (= (isDefined!49 (getValueByKey!86 (toList!512 lt!13768) k0!388)) (not (isEmpty!214 (getValueByKey!86 (toList!512 lt!13768) k0!388))))))

(declare-fun bs!1459 () Bool)

(assert (= bs!1459 d!5907))

(assert (=> bs!1459 m!30199))

(declare-fun m!30299 () Bool)

(assert (=> bs!1459 m!30299))

(assert (=> b!37398 d!5907))

(declare-fun b!37457 () Bool)

(declare-fun e!23700 () Option!92)

(assert (=> b!37457 (= e!23700 (getValueByKey!86 (t!3789 (toList!512 lt!13768)) k0!388))))

(declare-fun b!37456 () Bool)

(declare-fun e!23699 () Option!92)

(assert (=> b!37456 (= e!23699 e!23700)))

(declare-fun c!4324 () Bool)

(assert (=> b!37456 (= c!4324 (and ((_ is Cons!990) (toList!512 lt!13768)) (not (= (_1!716 (h!1558 (toList!512 lt!13768))) k0!388))))))

(declare-fun b!37455 () Bool)

(assert (=> b!37455 (= e!23699 (Some!91 (_2!716 (h!1558 (toList!512 lt!13768)))))))

(declare-fun b!37458 () Bool)

(assert (=> b!37458 (= e!23700 None!90)))

(declare-fun d!5909 () Bool)

(declare-fun c!4323 () Bool)

(assert (=> d!5909 (= c!4323 (and ((_ is Cons!990) (toList!512 lt!13768)) (= (_1!716 (h!1558 (toList!512 lt!13768))) k0!388)))))

(assert (=> d!5909 (= (getValueByKey!86 (toList!512 lt!13768) k0!388) e!23699)))

(assert (= (and d!5909 c!4323) b!37455))

(assert (= (and d!5909 (not c!4323)) b!37456))

(assert (= (and b!37456 c!4324) b!37457))

(assert (= (and b!37456 (not c!4324)) b!37458))

(declare-fun m!30301 () Bool)

(assert (=> b!37457 m!30301))

(assert (=> b!37398 d!5909))

(declare-fun d!5911 () Bool)

(declare-fun res!22631 () Bool)

(declare-fun e!23701 () Bool)

(assert (=> d!5911 (=> res!22631 e!23701)))

(assert (=> d!5911 (= res!22631 ((_ is Nil!991) (t!3789 (toList!512 lm!252))))))

(assert (=> d!5911 (= (forall!174 (t!3789 (toList!512 lm!252)) p!304) e!23701)))

(declare-fun b!37459 () Bool)

(declare-fun e!23702 () Bool)

(assert (=> b!37459 (= e!23701 e!23702)))

(declare-fun res!22632 () Bool)

(assert (=> b!37459 (=> (not res!22632) (not e!23702))))

(assert (=> b!37459 (= res!22632 (dynLambda!176 p!304 (h!1558 (t!3789 (toList!512 lm!252)))))))

(declare-fun b!37460 () Bool)

(assert (=> b!37460 (= e!23702 (forall!174 (t!3789 (t!3789 (toList!512 lm!252))) p!304))))

(assert (= (and d!5911 (not res!22631)) b!37459))

(assert (= (and b!37459 res!22632) b!37460))

(declare-fun b_lambda!1945 () Bool)

(assert (=> (not b_lambda!1945) (not b!37459)))

(declare-fun t!3808 () Bool)

(declare-fun tb!799 () Bool)

(assert (=> (and start!4938 (= p!304 p!304) t!3808) tb!799))

(declare-fun result!1341 () Bool)

(assert (=> tb!799 (= result!1341 true)))

(assert (=> b!37459 t!3808))

(declare-fun b_and!2283 () Bool)

(assert (= b_and!2279 (and (=> t!3808 result!1341) b_and!2283)))

(declare-fun m!30303 () Bool)

(assert (=> b!37459 m!30303))

(declare-fun m!30305 () Bool)

(assert (=> b!37460 m!30305))

(assert (=> b!37418 d!5911))

(declare-fun d!5913 () Bool)

(assert (=> d!5913 (isDefined!49 (getValueByKey!86 (toList!512 lm!252) k0!388))))

(declare-fun lt!13834 () Unit!845)

(declare-fun choose!237 (List!994 (_ BitVec 64)) Unit!845)

(assert (=> d!5913 (= lt!13834 (choose!237 (toList!512 lm!252) k0!388))))

(declare-fun e!23705 () Bool)

(assert (=> d!5913 e!23705))

(declare-fun res!22635 () Bool)

(assert (=> d!5913 (=> (not res!22635) (not e!23705))))

(assert (=> d!5913 (= res!22635 (isStrictlySorted!182 (toList!512 lm!252)))))

(assert (=> d!5913 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!48 (toList!512 lm!252) k0!388) lt!13834)))

(declare-fun b!37463 () Bool)

(assert (=> b!37463 (= e!23705 (containsKey!51 (toList!512 lm!252) k0!388))))

(assert (= (and d!5913 res!22635) b!37463))

(assert (=> d!5913 m!30195))

(assert (=> d!5913 m!30195))

(assert (=> d!5913 m!30277))

(declare-fun m!30307 () Bool)

(assert (=> d!5913 m!30307))

(assert (=> d!5913 m!30271))

(assert (=> b!37463 m!30273))

(assert (=> b!37426 d!5913))

(declare-fun d!5915 () Bool)

(assert (=> d!5915 (= (isDefined!49 (getValueByKey!86 (toList!512 lm!252) k0!388)) (not (isEmpty!214 (getValueByKey!86 (toList!512 lm!252) k0!388))))))

(declare-fun bs!1460 () Bool)

(assert (= bs!1460 d!5915))

(assert (=> bs!1460 m!30195))

(declare-fun m!30309 () Bool)

(assert (=> bs!1460 m!30309))

(assert (=> b!37426 d!5915))

(declare-fun b!37466 () Bool)

(declare-fun e!23707 () Option!92)

(assert (=> b!37466 (= e!23707 (getValueByKey!86 (t!3789 (toList!512 lm!252)) k0!388))))

(declare-fun b!37465 () Bool)

(declare-fun e!23706 () Option!92)

(assert (=> b!37465 (= e!23706 e!23707)))

(declare-fun c!4326 () Bool)

(assert (=> b!37465 (= c!4326 (and ((_ is Cons!990) (toList!512 lm!252)) (not (= (_1!716 (h!1558 (toList!512 lm!252))) k0!388))))))

(declare-fun b!37464 () Bool)

(assert (=> b!37464 (= e!23706 (Some!91 (_2!716 (h!1558 (toList!512 lm!252)))))))

(declare-fun b!37467 () Bool)

(assert (=> b!37467 (= e!23707 None!90)))

(declare-fun d!5917 () Bool)

(declare-fun c!4325 () Bool)

(assert (=> d!5917 (= c!4325 (and ((_ is Cons!990) (toList!512 lm!252)) (= (_1!716 (h!1558 (toList!512 lm!252))) k0!388)))))

(assert (=> d!5917 (= (getValueByKey!86 (toList!512 lm!252) k0!388) e!23706)))

(assert (= (and d!5917 c!4325) b!37464))

(assert (= (and d!5917 (not c!4325)) b!37465))

(assert (= (and b!37465 c!4326) b!37466))

(assert (= (and b!37465 (not c!4326)) b!37467))

(declare-fun m!30311 () Bool)

(assert (=> b!37466 m!30311))

(assert (=> b!37426 d!5917))

(declare-fun d!5919 () Bool)

(assert (=> d!5919 (= (get!635 (getValueByKey!86 (toList!512 lm!252) k0!388)) (v!1960 (getValueByKey!86 (toList!512 lm!252) k0!388)))))

(assert (=> d!5847 d!5919))

(assert (=> d!5847 d!5917))

(declare-fun d!5921 () Bool)

(assert (=> d!5921 (= (isEmpty!211 (toList!512 lm!252)) ((_ is Nil!991) (toList!512 lm!252)))))

(assert (=> d!5889 d!5921))

(declare-fun d!5923 () Bool)

(assert (=> d!5923 (isDefined!49 (getValueByKey!86 (toList!512 lt!13768) k0!388))))

(declare-fun lt!13835 () Unit!845)

(assert (=> d!5923 (= lt!13835 (choose!237 (toList!512 lt!13768) k0!388))))

(declare-fun e!23708 () Bool)

(assert (=> d!5923 e!23708))

(declare-fun res!22636 () Bool)

(assert (=> d!5923 (=> (not res!22636) (not e!23708))))

(assert (=> d!5923 (= res!22636 (isStrictlySorted!182 (toList!512 lt!13768)))))

(assert (=> d!5923 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!48 (toList!512 lt!13768) k0!388) lt!13835)))

(declare-fun b!37468 () Bool)

(assert (=> b!37468 (= e!23708 (containsKey!51 (toList!512 lt!13768) k0!388))))

(assert (= (and d!5923 res!22636) b!37468))

(assert (=> d!5923 m!30199))

(assert (=> d!5923 m!30199))

(assert (=> d!5923 m!30241))

(declare-fun m!30313 () Bool)

(assert (=> d!5923 m!30313))

(declare-fun m!30315 () Bool)

(assert (=> d!5923 m!30315))

(assert (=> b!37468 m!30237))

(assert (=> b!37396 d!5923))

(assert (=> b!37396 d!5907))

(assert (=> b!37396 d!5909))

(assert (=> b!37377 d!5865))

(declare-fun d!5925 () Bool)

(assert (=> d!5925 (= (get!635 (getValueByKey!86 (toList!512 lt!13768) k0!388)) (v!1960 (getValueByKey!86 (toList!512 lt!13768) k0!388)))))

(assert (=> d!5851 d!5925))

(assert (=> d!5851 d!5909))

(assert (=> d!5853 d!5851))

(declare-fun d!5927 () Bool)

(assert (=> d!5927 (dynLambda!176 p!304 (tuple2!1413 k0!388 (apply!47 lt!13768 k0!388)))))

(assert (=> d!5927 true))

(declare-fun _$37!23 () Unit!845)

(assert (=> d!5927 (= (choose!234 lt!13768 p!304 k0!388) _$37!23)))

(declare-fun b_lambda!1947 () Bool)

(assert (=> (not b_lambda!1947) (not d!5927)))

(assert (=> d!5927 t!3788))

(declare-fun b_and!2285 () Bool)

(assert (= b_and!2283 (and (=> t!3788 result!1317) b_and!2285)))

(assert (=> d!5927 m!30155))

(assert (=> d!5927 m!30153))

(assert (=> d!5853 d!5927))

(assert (=> d!5853 d!5879))

(declare-fun d!5929 () Bool)

(declare-fun res!22641 () Bool)

(declare-fun e!23713 () Bool)

(assert (=> d!5929 (=> res!22641 e!23713)))

(assert (=> d!5929 (= res!22641 (and ((_ is Cons!990) (toList!512 lt!13768)) (= (_1!716 (h!1558 (toList!512 lt!13768))) k0!388)))))

(assert (=> d!5929 (= (containsKey!51 (toList!512 lt!13768) k0!388) e!23713)))

(declare-fun b!37473 () Bool)

(declare-fun e!23714 () Bool)

(assert (=> b!37473 (= e!23713 e!23714)))

(declare-fun res!22642 () Bool)

(assert (=> b!37473 (=> (not res!22642) (not e!23714))))

(assert (=> b!37473 (= res!22642 (and (or (not ((_ is Cons!990) (toList!512 lt!13768))) (bvsle (_1!716 (h!1558 (toList!512 lt!13768))) k0!388)) ((_ is Cons!990) (toList!512 lt!13768)) (bvslt (_1!716 (h!1558 (toList!512 lt!13768))) k0!388)))))

(declare-fun b!37474 () Bool)

(assert (=> b!37474 (= e!23714 (containsKey!51 (t!3789 (toList!512 lt!13768)) k0!388))))

(assert (= (and d!5929 (not res!22641)) b!37473))

(assert (= (and b!37473 res!22642) b!37474))

(declare-fun m!30317 () Bool)

(assert (=> b!37474 m!30317))

(assert (=> d!5865 d!5929))

(declare-fun d!5933 () Bool)

(declare-fun res!22653 () Bool)

(declare-fun e!23725 () Bool)

(assert (=> d!5933 (=> res!22653 e!23725)))

(assert (=> d!5933 (= res!22653 (or ((_ is Nil!991) (toList!512 lm!252)) ((_ is Nil!991) (t!3789 (toList!512 lm!252)))))))

(assert (=> d!5933 (= (isStrictlySorted!182 (toList!512 lm!252)) e!23725)))

(declare-fun b!37485 () Bool)

(declare-fun e!23726 () Bool)

(assert (=> b!37485 (= e!23725 e!23726)))

(declare-fun res!22654 () Bool)

(assert (=> b!37485 (=> (not res!22654) (not e!23726))))

(assert (=> b!37485 (= res!22654 (bvslt (_1!716 (h!1558 (toList!512 lm!252))) (_1!716 (h!1558 (t!3789 (toList!512 lm!252))))))))

(declare-fun b!37486 () Bool)

(assert (=> b!37486 (= e!23726 (isStrictlySorted!182 (t!3789 (toList!512 lm!252))))))

(assert (= (and d!5933 (not res!22653)) b!37485))

(assert (= (and b!37485 res!22654) b!37486))

(declare-fun m!30323 () Bool)

(assert (=> b!37486 m!30323))

(assert (=> d!5895 d!5933))

(declare-fun d!5939 () Bool)

(assert (=> d!5939 (= (tail!108 (toList!512 lm!252)) (t!3789 (toList!512 lm!252)))))

(assert (=> d!5885 d!5939))

(assert (=> b!37428 d!5915))

(assert (=> b!37428 d!5917))

(declare-fun d!5941 () Bool)

(declare-fun res!22655 () Bool)

(declare-fun e!23727 () Bool)

(assert (=> d!5941 (=> res!22655 e!23727)))

(assert (=> d!5941 (= res!22655 (and ((_ is Cons!990) (toList!512 lm!252)) (= (_1!716 (h!1558 (toList!512 lm!252))) k0!388)))))

(assert (=> d!5941 (= (containsKey!51 (toList!512 lm!252) k0!388) e!23727)))

(declare-fun b!37487 () Bool)

(declare-fun e!23728 () Bool)

(assert (=> b!37487 (= e!23727 e!23728)))

(declare-fun res!22656 () Bool)

(assert (=> b!37487 (=> (not res!22656) (not e!23728))))

(assert (=> b!37487 (= res!22656 (and (or (not ((_ is Cons!990) (toList!512 lm!252))) (bvsle (_1!716 (h!1558 (toList!512 lm!252))) k0!388)) ((_ is Cons!990) (toList!512 lm!252)) (bvslt (_1!716 (h!1558 (toList!512 lm!252))) k0!388)))))

(declare-fun b!37488 () Bool)

(assert (=> b!37488 (= e!23728 (containsKey!51 (t!3789 (toList!512 lm!252)) k0!388))))

(assert (= (and d!5941 (not res!22655)) b!37487))

(assert (= (and b!37487 res!22656) b!37488))

(declare-fun m!30325 () Bool)

(assert (=> b!37488 m!30325))

(assert (=> d!5897 d!5941))

(declare-fun d!5943 () Bool)

(declare-fun res!22657 () Bool)

(declare-fun e!23731 () Bool)

(assert (=> d!5943 (=> res!22657 e!23731)))

(assert (=> d!5943 (= res!22657 ((_ is Nil!991) (t!3789 (toList!512 lt!13768))))))

(assert (=> d!5943 (= (forall!174 (t!3789 (toList!512 lt!13768)) p!304) e!23731)))

(declare-fun b!37493 () Bool)

(declare-fun e!23732 () Bool)

(assert (=> b!37493 (= e!23731 e!23732)))

(declare-fun res!22658 () Bool)

(assert (=> b!37493 (=> (not res!22658) (not e!23732))))

(assert (=> b!37493 (= res!22658 (dynLambda!176 p!304 (h!1558 (t!3789 (toList!512 lt!13768)))))))

(declare-fun b!37494 () Bool)

(assert (=> b!37494 (= e!23732 (forall!174 (t!3789 (t!3789 (toList!512 lt!13768))) p!304))))

(assert (= (and d!5943 (not res!22657)) b!37493))

(assert (= (and b!37493 res!22658) b!37494))

(declare-fun b_lambda!1949 () Bool)

(assert (=> (not b_lambda!1949) (not b!37493)))

(declare-fun t!3810 () Bool)

(declare-fun tb!801 () Bool)

(assert (=> (and start!4938 (= p!304 p!304) t!3810) tb!801))

(declare-fun result!1343 () Bool)

(assert (=> tb!801 (= result!1343 true)))

(assert (=> b!37493 t!3810))

(declare-fun b_and!2287 () Bool)

(assert (= b_and!2285 (and (=> t!3810 result!1343) b_and!2287)))

(declare-fun m!30327 () Bool)

(assert (=> b!37493 m!30327))

(declare-fun m!30329 () Bool)

(assert (=> b!37494 m!30329))

(assert (=> b!37410 d!5943))

(declare-fun b!37499 () Bool)

(declare-fun e!23735 () Bool)

(declare-fun tp!5535 () Bool)

(assert (=> b!37499 (= e!23735 (and tp_is_empty!1671 tp!5535))))

(assert (=> b!37436 (= tp!5531 e!23735)))

(assert (= (and b!37436 ((_ is Cons!990) (t!3789 (toList!512 lm!252)))) b!37499))

(declare-fun b_lambda!1951 () Bool)

(assert (= b_lambda!1945 (or (and start!4938 b_free!1341) b_lambda!1951)))

(declare-fun b_lambda!1953 () Bool)

(assert (= b_lambda!1949 (or (and start!4938 b_free!1341) b_lambda!1953)))

(declare-fun b_lambda!1955 () Bool)

(assert (= b_lambda!1947 (or (and start!4938 b_free!1341) b_lambda!1955)))

(check-sat (not b!37468) (not b_lambda!1897) (not b!37474) (not b!37486) (not b_lambda!1931) (not d!5927) (not b_lambda!1953) (not d!5923) (not b_lambda!1951) (not b!37494) (not b_next!1341) (not b!37499) tp_is_empty!1671 (not b!37460) (not b!37466) (not b_lambda!1933) b_and!2287 (not b_lambda!1955) (not b_lambda!1935) (not d!5913) (not b!37488) (not b!37457) (not d!5907) (not b_lambda!1899) (not d!5915) (not b!37463))
(check-sat b_and!2287 (not b_next!1341))
