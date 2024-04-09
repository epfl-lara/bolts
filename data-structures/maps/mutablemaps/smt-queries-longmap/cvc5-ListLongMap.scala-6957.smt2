; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87838 () Bool)

(assert start!87838)

(declare-fun b!1014885 () Bool)

(assert (=> b!1014885 true))

(assert (=> b!1014885 true))

(declare-datatypes ((Unit!33162 0))(
  ( (Unit!33163) )
))
(declare-fun e!570966 () Unit!33162)

(declare-fun lt!448838 () Unit!33162)

(assert (=> b!1014885 (= e!570966 lt!448838)))

(declare-datatypes ((List!21562 0))(
  ( (Nil!21559) (Cons!21558 (h!22756 (_ BitVec 64)) (t!30571 List!21562)) )
))
(declare-fun lt!448837 () List!21562)

(declare-datatypes ((B!1448 0))(
  ( (B!1449 (val!11808 Int)) )
))
(declare-fun value!115 () B!1448)

(declare-datatypes ((tuple2!15252 0))(
  ( (tuple2!15253 (_1!7636 (_ BitVec 64)) (_2!7636 B!1448)) )
))
(declare-datatypes ((List!21563 0))(
  ( (Nil!21560) (Cons!21559 (h!22757 tuple2!15252) (t!30572 List!21563)) )
))
(declare-fun l!412 () List!21563)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!45 (List!21563 List!21562 B!1448 tuple2!15252) Unit!33162)

(assert (=> b!1014885 (= lt!448838 (lemmaForallGetValueByKeySameWithASmallerHead!45 (t!30572 l!412) lt!448837 value!115 (h!22757 l!412)))))

(declare-fun lambda!776 () Int)

(declare-fun forall!250 (List!21562 Int) Bool)

(assert (=> b!1014885 (forall!250 lt!448837 lambda!776)))

(declare-fun b!1014886 () Bool)

(declare-fun res!680995 () Bool)

(declare-fun e!570967 () Bool)

(assert (=> b!1014886 (=> (not res!680995) (not e!570967))))

(assert (=> b!1014886 (= res!680995 (and (not (= (_2!7636 (h!22757 l!412)) value!115)) (is-Cons!21559 l!412)))))

(declare-fun b!1014887 () Bool)

(declare-fun ListPrimitiveSize!118 (List!21563) Int)

(assert (=> b!1014887 (= e!570967 (>= (ListPrimitiveSize!118 (t!30572 l!412)) (ListPrimitiveSize!118 l!412)))))

(declare-fun lt!448839 () Unit!33162)

(assert (=> b!1014887 (= lt!448839 e!570966)))

(declare-fun c!102744 () Bool)

(declare-fun isEmpty!849 (List!21562) Bool)

(assert (=> b!1014887 (= c!102744 (not (isEmpty!849 lt!448837)))))

(declare-fun getKeysOf!55 (List!21563 B!1448) List!21562)

(assert (=> b!1014887 (= lt!448837 (getKeysOf!55 (t!30572 l!412) value!115))))

(declare-fun b!1014888 () Bool)

(declare-fun Unit!33164 () Unit!33162)

(assert (=> b!1014888 (= e!570966 Unit!33164)))

(declare-fun b!1014889 () Bool)

(declare-fun e!570968 () Bool)

(declare-fun tp_is_empty!23515 () Bool)

(declare-fun tp!70575 () Bool)

(assert (=> b!1014889 (= e!570968 (and tp_is_empty!23515 tp!70575))))

(declare-fun res!680994 () Bool)

(assert (=> start!87838 (=> (not res!680994) (not e!570967))))

(declare-fun isStrictlySorted!578 (List!21563) Bool)

(assert (=> start!87838 (= res!680994 (isStrictlySorted!578 l!412))))

(assert (=> start!87838 e!570967))

(assert (=> start!87838 e!570968))

(assert (=> start!87838 tp_is_empty!23515))

(assert (= (and start!87838 res!680994) b!1014886))

(assert (= (and b!1014886 res!680995) b!1014887))

(assert (= (and b!1014887 c!102744) b!1014885))

(assert (= (and b!1014887 (not c!102744)) b!1014888))

(assert (= (and start!87838 (is-Cons!21559 l!412)) b!1014889))

(declare-fun m!937359 () Bool)

(assert (=> b!1014885 m!937359))

(declare-fun m!937361 () Bool)

(assert (=> b!1014885 m!937361))

(declare-fun m!937363 () Bool)

(assert (=> b!1014887 m!937363))

(declare-fun m!937365 () Bool)

(assert (=> b!1014887 m!937365))

(declare-fun m!937367 () Bool)

(assert (=> b!1014887 m!937367))

(declare-fun m!937369 () Bool)

(assert (=> b!1014887 m!937369))

(declare-fun m!937371 () Bool)

(assert (=> start!87838 m!937371))

(push 1)

(assert (not start!87838))

(assert tp_is_empty!23515)

(assert (not b!1014889))

(assert (not b!1014885))

(assert (not b!1014887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120837 () Bool)

(declare-fun lt!448867 () Int)

(assert (=> d!120837 (>= lt!448867 0)))

(declare-fun e!570996 () Int)

(assert (=> d!120837 (= lt!448867 e!570996)))

(declare-fun c!102760 () Bool)

(assert (=> d!120837 (= c!102760 (is-Nil!21560 (t!30572 l!412)))))

(assert (=> d!120837 (= (ListPrimitiveSize!118 (t!30572 l!412)) lt!448867)))

(declare-fun b!1014950 () Bool)

(assert (=> b!1014950 (= e!570996 0)))

(declare-fun b!1014951 () Bool)

(assert (=> b!1014951 (= e!570996 (+ 1 (ListPrimitiveSize!118 (t!30572 (t!30572 l!412)))))))

(assert (= (and d!120837 c!102760) b!1014950))

(assert (= (and d!120837 (not c!102760)) b!1014951))

(declare-fun m!937405 () Bool)

(assert (=> b!1014951 m!937405))

(assert (=> b!1014887 d!120837))

(declare-fun d!120847 () Bool)

(declare-fun lt!448869 () Int)

(assert (=> d!120847 (>= lt!448869 0)))

(declare-fun e!570998 () Int)

(assert (=> d!120847 (= lt!448869 e!570998)))

(declare-fun c!102762 () Bool)

(assert (=> d!120847 (= c!102762 (is-Nil!21560 l!412))))

(assert (=> d!120847 (= (ListPrimitiveSize!118 l!412) lt!448869)))

(declare-fun b!1014954 () Bool)

(assert (=> b!1014954 (= e!570998 0)))

(declare-fun b!1014955 () Bool)

(assert (=> b!1014955 (= e!570998 (+ 1 (ListPrimitiveSize!118 (t!30572 l!412))))))

(assert (= (and d!120847 c!102762) b!1014954))

(assert (= (and d!120847 (not c!102762)) b!1014955))

(assert (=> b!1014955 m!937363))

(assert (=> b!1014887 d!120847))

(declare-fun d!120851 () Bool)

(assert (=> d!120851 (= (isEmpty!849 lt!448837) (is-Nil!21559 lt!448837))))

(assert (=> b!1014887 d!120851))

(declare-fun bs!29311 () Bool)

(declare-fun b!1015023 () Bool)

(assert (= bs!29311 (and b!1015023 b!1014885)))

(declare-fun lt!448967 () List!21563)

(declare-fun lambda!803 () Int)

(declare-fun lt!448974 () tuple2!15252)

(assert (=> bs!29311 (= (= (Cons!21559 lt!448974 lt!448967) l!412) (= lambda!803 lambda!776))))

(assert (=> b!1015023 true))

(assert (=> b!1015023 true))

(assert (=> b!1015023 true))

(declare-fun bs!29315 () Bool)

(declare-fun b!1015025 () Bool)

(assert (= bs!29315 (and b!1015025 b!1014885)))

(declare-fun lt!448976 () List!21563)

(declare-fun lt!448972 () tuple2!15252)

(declare-fun lambda!806 () Int)

(assert (=> bs!29315 (= (= (Cons!21559 lt!448972 lt!448976) l!412) (= lambda!806 lambda!776))))

(declare-fun bs!29317 () Bool)

(assert (= bs!29317 (and b!1015025 b!1015023)))

(assert (=> bs!29317 (= (= (Cons!21559 lt!448972 lt!448976) (Cons!21559 lt!448974 lt!448967)) (= lambda!806 lambda!803))))

(assert (=> b!1015025 true))

(assert (=> b!1015025 true))

(assert (=> b!1015025 true))

(declare-fun bs!29322 () Bool)

(declare-fun d!120855 () Bool)

(assert (= bs!29322 (and d!120855 b!1014885)))

(declare-fun lambda!809 () Int)

(assert (=> bs!29322 (= (= (t!30572 l!412) l!412) (= lambda!809 lambda!776))))

(declare-fun bs!29324 () Bool)

(assert (= bs!29324 (and d!120855 b!1015023)))

(assert (=> bs!29324 (= (= (t!30572 l!412) (Cons!21559 lt!448974 lt!448967)) (= lambda!809 lambda!803))))

(declare-fun bs!29326 () Bool)

(assert (= bs!29326 (and d!120855 b!1015025)))

(assert (=> bs!29326 (= (= (t!30572 l!412) (Cons!21559 lt!448972 lt!448976)) (= lambda!809 lambda!806))))

(assert (=> d!120855 true))

(assert (=> d!120855 true))

(declare-fun b!1015020 () Bool)

(declare-fun e!571034 () Unit!33162)

(declare-fun Unit!33171 () Unit!33162)

(assert (=> b!1015020 (= e!571034 Unit!33171)))

(declare-fun b!1015021 () Bool)

(declare-fun e!571033 () List!21562)

(declare-fun call!42922 () List!21562)

(assert (=> b!1015021 (= e!571033 (Cons!21558 (_1!7636 (h!22757 (t!30572 l!412))) call!42922))))

(declare-fun c!102797 () Bool)

(declare-fun call!42924 () Bool)

(assert (=> b!1015021 (= c!102797 (not call!42924))))

(declare-fun lt!448977 () Unit!33162)

(assert (=> b!1015021 (= lt!448977 e!571034)))

(declare-fun bm!42919 () Bool)

(assert (=> bm!42919 (= call!42924 (isEmpty!849 call!42922))))

(declare-fun b!1015022 () Bool)

(declare-fun lt!448975 () Unit!33162)

(declare-fun e!571032 () Unit!33162)

(assert (=> b!1015022 (= lt!448975 e!571032)))

(declare-fun c!102795 () Bool)

(assert (=> b!1015022 (= c!102795 (not call!42924))))

(declare-fun lt!448971 () List!21562)

(assert (=> b!1015022 (= lt!448971 call!42922)))

(declare-fun e!571031 () List!21562)

(assert (=> b!1015022 (= e!571031 call!42922)))

(declare-fun bm!42920 () Bool)

(assert (=> bm!42920 (= call!42922 (getKeysOf!55 (t!30572 (t!30572 l!412)) value!115))))

(declare-fun bm!42921 () Bool)

(declare-fun lt!448970 () List!21562)

(declare-fun lt!448969 () List!21562)

(declare-fun c!102796 () Bool)

(declare-fun call!42925 () Bool)

(assert (=> bm!42921 (= call!42925 (forall!250 (ite c!102796 lt!448970 lt!448969) (ite c!102796 lambda!803 lambda!806)))))

(declare-fun b!1015024 () Bool)

(assert (=> b!1015024 (= e!571033 e!571031)))

(declare-fun c!102798 () Bool)

(assert (=> b!1015024 (= c!102798 (and (is-Cons!21559 (t!30572 l!412)) (not (= (_2!7636 (h!22757 (t!30572 l!412))) value!115))))))

(assert (=> b!1015023 call!42925))

(declare-fun lt!448966 () Unit!33162)

(declare-fun call!42923 () Unit!33162)

(assert (=> b!1015023 (= lt!448966 call!42923)))

(assert (=> b!1015023 (= lt!448974 (h!22757 (t!30572 l!412)))))

(assert (=> b!1015023 (= lt!448970 call!42922)))

(assert (=> b!1015023 (= lt!448967 (t!30572 (t!30572 l!412)))))

(assert (=> b!1015023 (= e!571034 lt!448966)))

(declare-fun lt!448968 () List!21562)

(assert (=> d!120855 (forall!250 lt!448968 lambda!809)))

(assert (=> d!120855 (= lt!448968 e!571033)))

(assert (=> d!120855 (= c!102796 (and (is-Cons!21559 (t!30572 l!412)) (= (_2!7636 (h!22757 (t!30572 l!412))) value!115)))))

(assert (=> d!120855 (isStrictlySorted!578 (t!30572 l!412))))

(assert (=> d!120855 (= (getKeysOf!55 (t!30572 l!412) value!115) lt!448968)))

(declare-fun lt!448973 () Unit!33162)

(assert (=> b!1015025 (= e!571032 lt!448973)))

(assert (=> b!1015025 (= lt!448976 (t!30572 (t!30572 l!412)))))

(assert (=> b!1015025 (= lt!448969 call!42922)))

(assert (=> b!1015025 (= lt!448972 (h!22757 (t!30572 l!412)))))

(assert (=> b!1015025 (= lt!448973 call!42923)))

(assert (=> b!1015025 call!42925))

(declare-fun b!1015026 () Bool)

(declare-fun Unit!33174 () Unit!33162)

(assert (=> b!1015026 (= e!571032 Unit!33174)))

(declare-fun bm!42922 () Bool)

(assert (=> bm!42922 (= call!42923 (lemmaForallGetValueByKeySameWithASmallerHead!45 (ite c!102796 lt!448967 lt!448976) (ite c!102796 lt!448970 lt!448969) value!115 (ite c!102796 lt!448974 lt!448972)))))

(declare-fun b!1015027 () Bool)

(assert (=> b!1015027 (= e!571031 Nil!21559)))

(assert (= (and d!120855 c!102796) b!1015021))

(assert (= (and d!120855 (not c!102796)) b!1015024))

(assert (= (and b!1015021 c!102797) b!1015023))

(assert (= (and b!1015021 (not c!102797)) b!1015020))

(assert (= (and b!1015024 c!102798) b!1015022))

(assert (= (and b!1015024 (not c!102798)) b!1015027))

(assert (= (and b!1015022 c!102795) b!1015025))

(assert (= (and b!1015022 (not c!102795)) b!1015026))

(assert (= (or b!1015023 b!1015025) bm!42922))

(assert (= (or b!1015023 b!1015025) bm!42921))

(assert (= (or b!1015021 b!1015023 b!1015022 b!1015025) bm!42920))

(assert (= (or b!1015021 b!1015022) bm!42919))

(declare-fun m!937423 () Bool)

(assert (=> bm!42922 m!937423))

(declare-fun m!937427 () Bool)

(assert (=> bm!42919 m!937427))

(declare-fun m!937431 () Bool)

(assert (=> bm!42920 m!937431))

(declare-fun m!937437 () Bool)

(assert (=> d!120855 m!937437))

(declare-fun m!937439 () Bool)

(assert (=> d!120855 m!937439))

(declare-fun m!937441 () Bool)

(assert (=> bm!42921 m!937441))

(assert (=> b!1014887 d!120855))

(declare-fun bs!29328 () Bool)

(declare-fun b!1015062 () Bool)

(assert (= bs!29328 (and b!1015062 b!1014885)))

(declare-fun lambda!821 () Int)

(assert (=> bs!29328 (= (= (t!30572 l!412) l!412) (= lambda!821 lambda!776))))

(declare-fun bs!29330 () Bool)

(assert (= bs!29330 (and b!1015062 b!1015023)))

(assert (=> bs!29330 (= (= (t!30572 l!412) (Cons!21559 lt!448974 lt!448967)) (= lambda!821 lambda!803))))

(declare-fun bs!29332 () Bool)

(assert (= bs!29332 (and b!1015062 b!1015025)))

(assert (=> bs!29332 (= (= (t!30572 l!412) (Cons!21559 lt!448972 lt!448976)) (= lambda!821 lambda!806))))

(declare-fun bs!29334 () Bool)

(assert (= bs!29334 (and b!1015062 d!120855)))

(assert (=> bs!29334 (= lambda!821 lambda!809)))

(assert (=> b!1015062 true))

(assert (=> b!1015062 true))

(declare-fun bs!29336 () Bool)

(declare-fun d!120861 () Bool)

(assert (= bs!29336 (and d!120861 b!1015062)))

(declare-fun lambda!825 () Int)

(assert (=> bs!29336 (= (= (Cons!21559 (h!22757 l!412) (t!30572 l!412)) (t!30572 l!412)) (= lambda!825 lambda!821))))

(declare-fun bs!29338 () Bool)

(assert (= bs!29338 (and d!120861 d!120855)))

(assert (=> bs!29338 (= (= (Cons!21559 (h!22757 l!412) (t!30572 l!412)) (t!30572 l!412)) (= lambda!825 lambda!809))))

(declare-fun bs!29340 () Bool)

(assert (= bs!29340 (and d!120861 b!1014885)))

(assert (=> bs!29340 (= (= (Cons!21559 (h!22757 l!412) (t!30572 l!412)) l!412) (= lambda!825 lambda!776))))

(declare-fun bs!29342 () Bool)

(assert (= bs!29342 (and d!120861 b!1015025)))

(assert (=> bs!29342 (= (= (Cons!21559 (h!22757 l!412) (t!30572 l!412)) (Cons!21559 lt!448972 lt!448976)) (= lambda!825 lambda!806))))

(declare-fun bs!29344 () Bool)

(assert (= bs!29344 (and d!120861 b!1015023)))

(assert (=> bs!29344 (= (= (Cons!21559 (h!22757 l!412) (t!30572 l!412)) (Cons!21559 lt!448974 lt!448967)) (= lambda!825 lambda!803))))

(assert (=> d!120861 true))

(assert (=> d!120861 true))

(assert (=> d!120861 true))

(assert (=> d!120861 (forall!250 lt!448837 lambda!825)))

(declare-fun lt!448985 () Unit!33162)

(declare-fun choose!1643 (List!21563 List!21562 B!1448 tuple2!15252) Unit!33162)

(assert (=> d!120861 (= lt!448985 (choose!1643 (t!30572 l!412) lt!448837 value!115 (h!22757 l!412)))))

(declare-fun e!571048 () Bool)

(assert (=> d!120861 e!571048))

(declare-fun res!681037 () Bool)

(assert (=> d!120861 (=> (not res!681037) (not e!571048))))

(assert (=> d!120861 (= res!681037 (isStrictlySorted!578 (t!30572 l!412)))))

(assert (=> d!120861 (= (lemmaForallGetValueByKeySameWithASmallerHead!45 (t!30572 l!412) lt!448837 value!115 (h!22757 l!412)) lt!448985)))

(declare-fun b!1015061 () Bool)

(declare-fun res!681035 () Bool)

(assert (=> b!1015061 (=> (not res!681035) (not e!571048))))

(declare-fun isEmpty!853 (List!21563) Bool)

(assert (=> b!1015061 (= res!681035 (not (isEmpty!853 (t!30572 l!412))))))

(declare-fun res!681036 () Bool)

(assert (=> b!1015062 (=> (not res!681036) (not e!571048))))

(assert (=> b!1015062 (= res!681036 (forall!250 lt!448837 lambda!821))))

(declare-fun b!1015063 () Bool)

(declare-fun head!943 (List!21563) tuple2!15252)

(assert (=> b!1015063 (= e!571048 (bvslt (_1!7636 (h!22757 l!412)) (_1!7636 (head!943 (t!30572 l!412)))))))

(assert (= (and d!120861 res!681037) b!1015061))

(assert (= (and b!1015061 res!681035) b!1015062))

(assert (= (and b!1015062 res!681036) b!1015063))

(declare-fun m!937445 () Bool)

(assert (=> d!120861 m!937445))

(declare-fun m!937449 () Bool)

(assert (=> d!120861 m!937449))

(assert (=> d!120861 m!937439))

(declare-fun m!937453 () Bool)

(assert (=> b!1015061 m!937453))

(declare-fun m!937457 () Bool)

(assert (=> b!1015062 m!937457))

(declare-fun m!937461 () Bool)

(assert (=> b!1015063 m!937461))

(assert (=> b!1014885 d!120861))

(declare-fun d!120867 () Bool)

(declare-fun res!681049 () Bool)

(declare-fun e!571058 () Bool)

(assert (=> d!120867 (=> res!681049 e!571058)))

(assert (=> d!120867 (= res!681049 (is-Nil!21559 lt!448837))))

(assert (=> d!120867 (= (forall!250 lt!448837 lambda!776) e!571058)))

(declare-fun b!1015075 () Bool)

(declare-fun e!571059 () Bool)

(assert (=> b!1015075 (= e!571058 e!571059)))

(declare-fun res!681050 () Bool)

(assert (=> b!1015075 (=> (not res!681050) (not e!571059))))

(declare-fun dynLambda!1898 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015075 (= res!681050 (dynLambda!1898 lambda!776 (h!22756 lt!448837)))))

(declare-fun b!1015076 () Bool)

(assert (=> b!1015076 (= e!571059 (forall!250 (t!30571 lt!448837) lambda!776))))

(assert (= (and d!120867 (not res!681049)) b!1015075))

(assert (= (and b!1015075 res!681050) b!1015076))

(declare-fun b_lambda!15409 () Bool)

(assert (=> (not b_lambda!15409) (not b!1015075)))

(declare-fun m!937463 () Bool)

(assert (=> b!1015075 m!937463))

(declare-fun m!937467 () Bool)

(assert (=> b!1015076 m!937467))

(assert (=> b!1014885 d!120867))

(declare-fun d!120869 () Bool)

(declare-fun res!681061 () Bool)

(declare-fun e!571070 () Bool)

(assert (=> d!120869 (=> res!681061 e!571070)))

(assert (=> d!120869 (= res!681061 (or (is-Nil!21560 l!412) (is-Nil!21560 (t!30572 l!412))))))

(assert (=> d!120869 (= (isStrictlySorted!578 l!412) e!571070)))

(declare-fun b!1015087 () Bool)

(declare-fun e!571071 () Bool)

(assert (=> b!1015087 (= e!571070 e!571071)))

(declare-fun res!681062 () Bool)

(assert (=> b!1015087 (=> (not res!681062) (not e!571071))))

(assert (=> b!1015087 (= res!681062 (bvslt (_1!7636 (h!22757 l!412)) (_1!7636 (h!22757 (t!30572 l!412)))))))

(declare-fun b!1015088 () Bool)

(assert (=> b!1015088 (= e!571071 (isStrictlySorted!578 (t!30572 l!412)))))

(assert (= (and d!120869 (not res!681061)) b!1015087))

(assert (= (and b!1015087 res!681062) b!1015088))

(assert (=> b!1015088 m!937439))

(assert (=> start!87838 d!120869))

(declare-fun b!1015103 () Bool)

(declare-fun e!571082 () Bool)

(declare-fun tp!70586 () Bool)

(assert (=> b!1015103 (= e!571082 (and tp_is_empty!23515 tp!70586))))

(assert (=> b!1014889 (= tp!70575 e!571082)))

(assert (= (and b!1014889 (is-Cons!21559 (t!30572 l!412))) b!1015103))

(declare-fun b_lambda!15414 () Bool)

(assert (= b_lambda!15409 (or b!1014885 b_lambda!15414)))

(declare-fun bs!29355 () Bool)

(declare-fun d!120876 () Bool)

(assert (= bs!29355 (and d!120876 b!1014885)))

(declare-datatypes ((Option!585 0))(
  ( (Some!584 (v!14433 B!1448)) (None!583) )
))
(declare-fun getValueByKey!534 (List!21563 (_ BitVec 64)) Option!585)

(assert (=> bs!29355 (= (dynLambda!1898 lambda!776 (h!22756 lt!448837)) (= (getValueByKey!534 l!412 (h!22756 lt!448837)) (Some!584 value!115)))))

(declare-fun m!937482 () Bool)

(assert (=> bs!29355 m!937482))

(assert (=> b!1015075 d!120876))

(push 1)

