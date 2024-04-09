; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4936 () Bool)

(assert start!4936)

(declare-fun b_free!1339 () Bool)

(declare-fun b_next!1339 () Bool)

(assert (=> start!4936 (= b_free!1339 (not b_next!1339))))

(declare-fun tp!5512 () Bool)

(declare-fun b_and!2247 () Bool)

(assert (=> start!4936 (= tp!5512 b_and!2247)))

(declare-fun b!37314 () Bool)

(declare-fun res!22545 () Bool)

(declare-fun e!23608 () Bool)

(assert (=> b!37314 (=> (not res!22545) (not e!23608))))

(declare-datatypes ((B!746 0))(
  ( (B!747 (val!873 Int)) )
))
(declare-datatypes ((tuple2!1410 0))(
  ( (tuple2!1411 (_1!715 (_ BitVec 64)) (_2!715 B!746)) )
))
(declare-datatypes ((List!993 0))(
  ( (Nil!990) (Cons!989 (h!1557 tuple2!1410) (t!3784 List!993)) )
))
(declare-datatypes ((ListLongMap!991 0))(
  ( (ListLongMap!992 (toList!511 List!993)) )
))
(declare-fun lm!252 () ListLongMap!991)

(declare-fun k!388 () (_ BitVec 64))

(declare-fun head!845 (List!993) tuple2!1410)

(assert (=> b!37314 (= res!22545 (not (= (_1!715 (head!845 (toList!511 lm!252))) k!388)))))

(declare-fun b!37315 () Bool)

(declare-fun res!22547 () Bool)

(assert (=> b!37315 (=> (not res!22547) (not e!23608))))

(declare-fun isEmpty!208 (ListLongMap!991) Bool)

(assert (=> b!37315 (= res!22547 (not (isEmpty!208 lm!252)))))

(declare-fun b!37316 () Bool)

(declare-fun e!23609 () Bool)

(declare-fun tp!5513 () Bool)

(assert (=> b!37316 (= e!23609 tp!5513)))

(declare-fun b!37317 () Bool)

(declare-fun res!22546 () Bool)

(assert (=> b!37317 (=> (not res!22546) (not e!23608))))

(declare-fun contains!459 (ListLongMap!991 (_ BitVec 64)) Bool)

(assert (=> b!37317 (= res!22546 (contains!459 lm!252 k!388))))

(declare-fun e!23610 () Bool)

(declare-fun b!37318 () Bool)

(declare-fun p!304 () Int)

(declare-fun dynLambda!175 (Int tuple2!1410) Bool)

(declare-fun apply!46 (ListLongMap!991 (_ BitVec 64)) B!746)

(assert (=> b!37318 (= e!23610 (not (dynLambda!175 p!304 (tuple2!1411 k!388 (apply!46 lm!252 k!388)))))))

(declare-fun lt!13762 () ListLongMap!991)

(assert (=> b!37318 (dynLambda!175 p!304 (tuple2!1411 k!388 (apply!46 lt!13762 k!388)))))

(declare-datatypes ((Unit!843 0))(
  ( (Unit!844) )
))
(declare-fun lt!13761 () Unit!843)

(declare-fun applyForall!5 (ListLongMap!991 Int (_ BitVec 64)) Unit!843)

(assert (=> b!37318 (= lt!13761 (applyForall!5 lt!13762 p!304 k!388))))

(declare-fun res!22549 () Bool)

(assert (=> start!4936 (=> (not res!22549) (not e!23608))))

(declare-fun forall!173 (List!993 Int) Bool)

(assert (=> start!4936 (= res!22549 (forall!173 (toList!511 lm!252) p!304))))

(assert (=> start!4936 e!23608))

(declare-fun inv!1638 (ListLongMap!991) Bool)

(assert (=> start!4936 (and (inv!1638 lm!252) e!23609)))

(assert (=> start!4936 tp!5512))

(assert (=> start!4936 true))

(declare-fun b!37319 () Bool)

(declare-fun res!22544 () Bool)

(assert (=> b!37319 (=> (not res!22544) (not e!23610))))

(assert (=> b!37319 (= res!22544 (contains!459 lt!13762 k!388))))

(declare-fun b!37320 () Bool)

(assert (=> b!37320 (= e!23608 e!23610)))

(declare-fun res!22548 () Bool)

(assert (=> b!37320 (=> (not res!22548) (not e!23610))))

(assert (=> b!37320 (= res!22548 (forall!173 (toList!511 lt!13762) p!304))))

(declare-fun tail!104 (ListLongMap!991) ListLongMap!991)

(assert (=> b!37320 (= lt!13762 (tail!104 lm!252))))

(assert (= (and start!4936 res!22549) b!37317))

(assert (= (and b!37317 res!22546) b!37315))

(assert (= (and b!37315 res!22547) b!37314))

(assert (= (and b!37314 res!22545) b!37320))

(assert (= (and b!37320 res!22548) b!37319))

(assert (= (and b!37319 res!22544) b!37318))

(assert (= start!4936 b!37316))

(declare-fun b_lambda!1885 () Bool)

(assert (=> (not b_lambda!1885) (not b!37318)))

(declare-fun t!3781 () Bool)

(declare-fun tb!775 () Bool)

(assert (=> (and start!4936 (= p!304 p!304) t!3781) tb!775))

(declare-fun result!1311 () Bool)

(assert (=> tb!775 (= result!1311 true)))

(assert (=> b!37318 t!3781))

(declare-fun b_and!2249 () Bool)

(assert (= b_and!2247 (and (=> t!3781 result!1311) b_and!2249)))

(declare-fun b_lambda!1887 () Bool)

(assert (=> (not b_lambda!1887) (not b!37318)))

(declare-fun t!3783 () Bool)

(declare-fun tb!777 () Bool)

(assert (=> (and start!4936 (= p!304 p!304) t!3783) tb!777))

(declare-fun result!1313 () Bool)

(assert (=> tb!777 (= result!1313 true)))

(assert (=> b!37318 t!3783))

(declare-fun b_and!2251 () Bool)

(assert (= b_and!2249 (and (=> t!3783 result!1313) b_and!2251)))

(declare-fun m!30113 () Bool)

(assert (=> b!37318 m!30113))

(declare-fun m!30115 () Bool)

(assert (=> b!37318 m!30115))

(declare-fun m!30117 () Bool)

(assert (=> b!37318 m!30117))

(declare-fun m!30119 () Bool)

(assert (=> b!37318 m!30119))

(declare-fun m!30121 () Bool)

(assert (=> b!37318 m!30121))

(declare-fun m!30123 () Bool)

(assert (=> b!37317 m!30123))

(declare-fun m!30125 () Bool)

(assert (=> b!37314 m!30125))

(declare-fun m!30127 () Bool)

(assert (=> start!4936 m!30127))

(declare-fun m!30129 () Bool)

(assert (=> start!4936 m!30129))

(declare-fun m!30131 () Bool)

(assert (=> b!37320 m!30131))

(declare-fun m!30133 () Bool)

(assert (=> b!37320 m!30133))

(declare-fun m!30135 () Bool)

(assert (=> b!37319 m!30135))

(declare-fun m!30137 () Bool)

(assert (=> b!37315 m!30137))

(push 1)

(assert (not b_next!1339))

(assert (not b!37319))

(assert (not start!4936))

(assert (not b!37315))

(assert (not b!37317))

(assert (not b!37318))

(assert (not b_lambda!1885))

(assert (not b!37316))

(assert (not b_lambda!1887))

(assert (not b!37314))

(assert (not b!37320))

(assert b_and!2251)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2251)

(assert (not b_next!1339))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1901 () Bool)

(assert (= b_lambda!1887 (or (and start!4936 b_free!1339) b_lambda!1901)))

(declare-fun b_lambda!1903 () Bool)

(assert (= b_lambda!1885 (or (and start!4936 b_free!1339) b_lambda!1903)))

(push 1)

(assert (not b_next!1339))

(assert (not b!37319))

(assert (not start!4936))

(assert (not b_lambda!1901))

(assert (not b!37316))

(assert (not b!37315))

(assert (not b!37317))

(assert (not b!37318))

(assert (not b_lambda!1903))

(assert (not b!37314))

(assert (not b!37320))

(assert b_and!2251)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2251)

(assert (not b_next!1339))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5841 () Bool)

(assert (=> d!5841 (= (head!845 (toList!511 lm!252)) (h!1557 (toList!511 lm!252)))))

(assert (=> b!37314 d!5841))

(declare-fun d!5843 () Bool)

(declare-fun res!22594 () Bool)

(declare-fun e!23637 () Bool)

(assert (=> d!5843 (=> res!22594 e!23637)))

(assert (=> d!5843 (= res!22594 (is-Nil!990 (toList!511 lm!252)))))

(assert (=> d!5843 (= (forall!173 (toList!511 lm!252) p!304) e!23637)))

(declare-fun b!37371 () Bool)

(declare-fun e!23638 () Bool)

(assert (=> b!37371 (= e!23637 e!23638)))

(declare-fun res!22595 () Bool)

(assert (=> b!37371 (=> (not res!22595) (not e!23638))))

(assert (=> b!37371 (= res!22595 (dynLambda!175 p!304 (h!1557 (toList!511 lm!252))))))

(declare-fun b!37372 () Bool)

(assert (=> b!37372 (= e!23638 (forall!173 (t!3784 (toList!511 lm!252)) p!304))))

(assert (= (and d!5843 (not res!22594)) b!37371))

(assert (= (and b!37371 res!22595) b!37372))

(declare-fun b_lambda!1909 () Bool)

(assert (=> (not b_lambda!1909) (not b!37371)))

(declare-fun t!3796 () Bool)

(declare-fun tb!787 () Bool)

(assert (=> (and start!4936 (= p!304 p!304) t!3796) tb!787))

(declare-fun result!1323 () Bool)

(assert (=> tb!787 (= result!1323 true)))

(assert (=> b!37371 t!3796))

(declare-fun b_and!2265 () Bool)

(assert (= b_and!2251 (and (=> t!3796 result!1323) b_and!2265)))

(declare-fun m!30191 () Bool)

(assert (=> b!37371 m!30191))

(declare-fun m!30193 () Bool)

(assert (=> b!37372 m!30193))

(assert (=> start!4936 d!5843))

(declare-fun d!5849 () Bool)

(declare-fun isStrictlySorted!181 (List!993) Bool)

(assert (=> d!5849 (= (inv!1638 lm!252) (isStrictlySorted!181 (toList!511 lm!252)))))

(declare-fun bs!1446 () Bool)

(assert (= bs!1446 d!5849))

(declare-fun m!30207 () Bool)

(assert (=> bs!1446 m!30207))

(assert (=> start!4936 d!5849))

(declare-fun d!5857 () Bool)

(declare-fun e!23649 () Bool)

(assert (=> d!5857 e!23649))

(declare-fun res!22603 () Bool)

(assert (=> d!5857 (=> res!22603 e!23649)))

(declare-fun lt!13787 () Bool)

(assert (=> d!5857 (= res!22603 (not lt!13787))))

(declare-fun lt!13789 () Bool)

(assert (=> d!5857 (= lt!13787 lt!13789)))

(declare-fun lt!13786 () Unit!843)

(declare-fun e!23648 () Unit!843)

(assert (=> d!5857 (= lt!13786 e!23648)))

(declare-fun c!4309 () Bool)

(assert (=> d!5857 (= c!4309 lt!13789)))

(declare-fun containsKey!50 (List!993 (_ BitVec 64)) Bool)

(assert (=> d!5857 (= lt!13789 (containsKey!50 (toList!511 lt!13762) k!388))))

(assert (=> d!5857 (= (contains!459 lt!13762 k!388) lt!13787)))

(declare-fun b!37384 () Bool)

(declare-fun lt!13788 () Unit!843)

(assert (=> b!37384 (= e!23648 lt!13788)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!47 (List!993 (_ BitVec 64)) Unit!843)

(assert (=> b!37384 (= lt!13788 (lemmaContainsKeyImpliesGetValueByKeyDefined!47 (toList!511 lt!13762) k!388))))

(declare-datatypes ((Option!93 0))(
  ( (Some!92 (v!1961 B!746)) (None!91) )
))
(declare-fun isDefined!48 (Option!93) Bool)

(declare-fun getValueByKey!87 (List!993 (_ BitVec 64)) Option!93)

(assert (=> b!37384 (isDefined!48 (getValueByKey!87 (toList!511 lt!13762) k!388))))

(declare-fun b!37385 () Bool)

(declare-fun Unit!849 () Unit!843)

(assert (=> b!37385 (= e!23648 Unit!849)))

(declare-fun b!37386 () Bool)

(assert (=> b!37386 (= e!23649 (isDefined!48 (getValueByKey!87 (toList!511 lt!13762) k!388)))))

(assert (= (and d!5857 c!4309) b!37384))

(assert (= (and d!5857 (not c!4309)) b!37385))

(assert (= (and d!5857 (not res!22603)) b!37386))

(declare-fun m!30221 () Bool)

(assert (=> d!5857 m!30221))

(declare-fun m!30223 () Bool)

(assert (=> b!37384 m!30223))

(declare-fun m!30225 () Bool)

(assert (=> b!37384 m!30225))

(assert (=> b!37384 m!30225))

(declare-fun m!30227 () Bool)

(assert (=> b!37384 m!30227))

(assert (=> b!37386 m!30225))

(assert (=> b!37386 m!30225))

(assert (=> b!37386 m!30227))

(assert (=> b!37319 d!5857))

(declare-fun d!5869 () Bool)

(declare-fun get!636 (Option!93) B!746)

(assert (=> d!5869 (= (apply!46 lm!252 k!388) (get!636 (getValueByKey!87 (toList!511 lm!252) k!388)))))

(declare-fun bs!1450 () Bool)

(assert (= bs!1450 d!5869))

(declare-fun m!30229 () Bool)

(assert (=> bs!1450 m!30229))

(assert (=> bs!1450 m!30229))

(declare-fun m!30231 () Bool)

(assert (=> bs!1450 m!30231))

(assert (=> b!37318 d!5869))

(declare-fun d!5871 () Bool)

(assert (=> d!5871 (= (apply!46 lt!13762 k!388) (get!636 (getValueByKey!87 (toList!511 lt!13762) k!388)))))

(declare-fun bs!1451 () Bool)

(assert (= bs!1451 d!5871))

(assert (=> bs!1451 m!30225))

(assert (=> bs!1451 m!30225))

(declare-fun m!30233 () Bool)

(assert (=> bs!1451 m!30233))

(assert (=> b!37318 d!5871))

(declare-fun d!5873 () Bool)

(assert (=> d!5873 (dynLambda!175 p!304 (tuple2!1411 k!388 (apply!46 lt!13762 k!388)))))

(declare-fun lt!13807 () Unit!843)

(declare-fun choose!235 (ListLongMap!991 Int (_ BitVec 64)) Unit!843)

(assert (=> d!5873 (= lt!13807 (choose!235 lt!13762 p!304 k!388))))

(declare-fun e!23661 () Bool)

(assert (=> d!5873 e!23661))

(declare-fun res!22612 () Bool)

(assert (=> d!5873 (=> (not res!22612) (not e!23661))))

(assert (=> d!5873 (= res!22612 (forall!173 (toList!511 lt!13762) p!304))))

(assert (=> d!5873 (= (applyForall!5 lt!13762 p!304 k!388) lt!13807)))

(declare-fun b!37401 () Bool)

(assert (=> b!37401 (= e!23661 (contains!459 lt!13762 k!388))))

(assert (= (and d!5873 res!22612) b!37401))

(declare-fun b_lambda!1917 () Bool)

(assert (=> (not b_lambda!1917) (not d!5873)))

(assert (=> d!5873 t!3783))

(declare-fun b_and!2273 () Bool)

(assert (= b_and!2265 (and (=> t!3783 result!1313) b_and!2273)))

(assert (=> d!5873 m!30119))

(assert (=> d!5873 m!30117))

(declare-fun m!30243 () Bool)

(assert (=> d!5873 m!30243))

(assert (=> d!5873 m!30131))

(assert (=> b!37401 m!30135))

(assert (=> b!37318 d!5873))

(declare-fun d!5881 () Bool)

(declare-fun e!23667 () Bool)

(assert (=> d!5881 e!23667))

(declare-fun res!22617 () Bool)

(assert (=> d!5881 (=> res!22617 e!23667)))

(declare-fun lt!13809 () Bool)

(assert (=> d!5881 (= res!22617 (not lt!13809))))

(declare-fun lt!13811 () Bool)

(assert (=> d!5881 (= lt!13809 lt!13811)))

(declare-fun lt!13808 () Unit!843)

(declare-fun e!23666 () Unit!843)

(assert (=> d!5881 (= lt!13808 e!23666)))

(declare-fun c!4313 () Bool)

(assert (=> d!5881 (= c!4313 lt!13811)))

(assert (=> d!5881 (= lt!13811 (containsKey!50 (toList!511 lm!252) k!388))))

(assert (=> d!5881 (= (contains!459 lm!252 k!388) lt!13809)))

(declare-fun b!37406 () Bool)

(declare-fun lt!13810 () Unit!843)

(assert (=> b!37406 (= e!23666 lt!13810)))

(assert (=> b!37406 (= lt!13810 (lemmaContainsKeyImpliesGetValueByKeyDefined!47 (toList!511 lm!252) k!388))))

(assert (=> b!37406 (isDefined!48 (getValueByKey!87 (toList!511 lm!252) k!388))))

(declare-fun b!37407 () Bool)

(declare-fun Unit!851 () Unit!843)

(assert (=> b!37407 (= e!23666 Unit!851)))

(declare-fun b!37408 () Bool)

(assert (=> b!37408 (= e!23667 (isDefined!48 (getValueByKey!87 (toList!511 lm!252) k!388)))))

(assert (= (and d!5881 c!4313) b!37406))

(assert (= (and d!5881 (not c!4313)) b!37407))

(assert (= (and d!5881 (not res!22617)) b!37408))

(declare-fun m!30245 () Bool)

(assert (=> d!5881 m!30245))

(declare-fun m!30247 () Bool)

(assert (=> b!37406 m!30247))

(assert (=> b!37406 m!30229))

(assert (=> b!37406 m!30229))

(declare-fun m!30249 () Bool)

(assert (=> b!37406 m!30249))

(assert (=> b!37408 m!30229))

(assert (=> b!37408 m!30229))

(assert (=> b!37408 m!30249))

(assert (=> b!37317 d!5881))

(declare-fun d!5883 () Bool)

(declare-fun res!22620 () Bool)

(declare-fun e!23670 () Bool)

(assert (=> d!5883 (=> res!22620 e!23670)))

(assert (=> d!5883 (= res!22620 (is-Nil!990 (toList!511 lt!13762)))))

(assert (=> d!5883 (= (forall!173 (toList!511 lt!13762) p!304) e!23670)))

(declare-fun b!37411 () Bool)

(declare-fun e!23671 () Bool)

(assert (=> b!37411 (= e!23670 e!23671)))

(declare-fun res!22621 () Bool)

(assert (=> b!37411 (=> (not res!22621) (not e!23671))))

(assert (=> b!37411 (= res!22621 (dynLambda!175 p!304 (h!1557 (toList!511 lt!13762))))))

(declare-fun b!37412 () Bool)

(assert (=> b!37412 (= e!23671 (forall!173 (t!3784 (toList!511 lt!13762)) p!304))))

(assert (= (and d!5883 (not res!22620)) b!37411))

(assert (= (and b!37411 res!22621) b!37412))

(declare-fun b_lambda!1921 () Bool)

(assert (=> (not b_lambda!1921) (not b!37411)))

(declare-fun t!3802 () Bool)

(declare-fun tb!793 () Bool)

(assert (=> (and start!4936 (= p!304 p!304) t!3802) tb!793))

(declare-fun result!1329 () Bool)

(assert (=> tb!793 (= result!1329 true)))

(assert (=> b!37411 t!3802))

(declare-fun b_and!2277 () Bool)

(assert (= b_and!2273 (and (=> t!3802 result!1329) b_and!2277)))

(declare-fun m!30255 () Bool)

(assert (=> b!37411 m!30255))

(declare-fun m!30257 () Bool)

(assert (=> b!37412 m!30257))

(assert (=> b!37320 d!5883))

(declare-fun d!5887 () Bool)

(declare-fun tail!109 (List!993) List!993)

(assert (=> d!5887 (= (tail!104 lm!252) (ListLongMap!992 (tail!109 (toList!511 lm!252))))))

(declare-fun bs!1453 () Bool)

(assert (= bs!1453 d!5887))

(declare-fun m!30261 () Bool)

(assert (=> bs!1453 m!30261))

(assert (=> b!37320 d!5887))

(declare-fun d!5891 () Bool)

(declare-fun isEmpty!213 (List!993) Bool)

(assert (=> d!5891 (= (isEmpty!208 lm!252) (isEmpty!213 (toList!511 lm!252)))))

(declare-fun bs!1455 () Bool)

(assert (= bs!1455 d!5891))

(declare-fun m!30265 () Bool)

(assert (=> bs!1455 m!30265))

(assert (=> b!37315 d!5891))

(declare-fun b!37425 () Bool)

(declare-fun e!23680 () Bool)

(declare-fun tp_is_empty!1669 () Bool)

(declare-fun tp!5528 () Bool)

(assert (=> b!37425 (= e!23680 (and tp_is_empty!1669 tp!5528))))

(assert (=> b!37316 (= tp!5513 e!23680)))

(assert (= (and b!37316 (is-Cons!989 (toList!511 lm!252))) b!37425))

(declare-fun b_lambda!1925 () Bool)

(assert (= b_lambda!1921 (or (and start!4936 b_free!1339) b_lambda!1925)))

(declare-fun b_lambda!1927 () Bool)

(assert (= b_lambda!1909 (or (and start!4936 b_free!1339) b_lambda!1927)))

(declare-fun b_lambda!1929 () Bool)

(assert (= b_lambda!1917 (or (and start!4936 b_free!1339) b_lambda!1929)))

(push 1)

(assert (not b_lambda!1925))

(assert (not d!5887))

(assert (not b!37406))

(assert tp_is_empty!1669)

(assert (not d!5857))

(assert (not b!37372))

(assert (not b!37408))

(assert (not d!5873))

(assert (not b!37386))

(assert (not b!37412))

(assert (not b!37401))

(assert (not d!5881))

(assert (not b_next!1339))

(assert (not b_lambda!1929))

(assert (not b!37384))

(assert b_and!2277)

(assert (not d!5849))

(assert (not b_lambda!1901))

(assert (not d!5891))

(assert (not d!5869))

(assert (not b_lambda!1927))

(assert (not d!5871))

(assert (not b_lambda!1903))

(assert (not b!37425))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2277)

(assert (not b_next!1339))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!5931 () Bool)

(declare-fun res!22647 () Bool)

(declare-fun e!23719 () Bool)

(assert (=> d!5931 (=> res!22647 e!23719)))

(assert (=> d!5931 (= res!22647 (and (is-Cons!989 (toList!511 lm!252)) (= (_1!715 (h!1557 (toList!511 lm!252))) k!388)))))

(assert (=> d!5931 (= (containsKey!50 (toList!511 lm!252) k!388) e!23719)))

(declare-fun b!37479 () Bool)

(declare-fun e!23720 () Bool)

(assert (=> b!37479 (= e!23719 e!23720)))

(declare-fun res!22648 () Bool)

(assert (=> b!37479 (=> (not res!22648) (not e!23720))))

(assert (=> b!37479 (= res!22648 (and (or (not (is-Cons!989 (toList!511 lm!252))) (bvsle (_1!715 (h!1557 (toList!511 lm!252))) k!388)) (is-Cons!989 (toList!511 lm!252)) (bvslt (_1!715 (h!1557 (toList!511 lm!252))) k!388)))))

(declare-fun b!37480 () Bool)

(assert (=> b!37480 (= e!23720 (containsKey!50 (t!3784 (toList!511 lm!252)) k!388))))

(assert (= (and d!5931 (not res!22647)) b!37479))

(assert (= (and b!37479 res!22648) b!37480))

(declare-fun m!30319 () Bool)

(assert (=> b!37480 m!30319))

(assert (=> d!5881 d!5931))

(declare-fun d!5935 () Bool)

(declare-fun isEmpty!215 (Option!93) Bool)

(assert (=> d!5935 (= (isDefined!48 (getValueByKey!87 (toList!511 lm!252) k!388)) (not (isEmpty!215 (getValueByKey!87 (toList!511 lm!252) k!388))))))

(declare-fun bs!1461 () Bool)

(assert (= bs!1461 d!5935))

(assert (=> bs!1461 m!30229))

(declare-fun m!30321 () Bool)

(assert (=> bs!1461 m!30321))

(assert (=> b!37408 d!5935))

(declare-fun d!5937 () Bool)

(declare-fun c!4331 () Bool)

(assert (=> d!5937 (= c!4331 (and (is-Cons!989 (toList!511 lm!252)) (= (_1!715 (h!1557 (toList!511 lm!252))) k!388)))))

(declare-fun e!23738 () Option!93)

(assert (=> d!5937 (= (getValueByKey!87 (toList!511 lm!252) k!388) e!23738)))

(declare-fun b!37502 () Bool)

(assert (=> b!37502 (= e!23738 (Some!92 (_2!715 (h!1557 (toList!511 lm!252)))))))

(declare-fun b!37505 () Bool)

(declare-fun e!23739 () Option!93)

(assert (=> b!37505 (= e!23739 None!91)))

(declare-fun b!37504 () Bool)

(assert (=> b!37504 (= e!23739 (getValueByKey!87 (t!3784 (toList!511 lm!252)) k!388))))

(declare-fun b!37503 () Bool)

(assert (=> b!37503 (= e!23738 e!23739)))

(declare-fun c!4332 () Bool)

(assert (=> b!37503 (= c!4332 (and (is-Cons!989 (toList!511 lm!252)) (not (= (_1!715 (h!1557 (toList!511 lm!252))) k!388))))))

(assert (= (and d!5937 c!4331) b!37502))

(assert (= (and d!5937 (not c!4331)) b!37503))

(assert (= (and b!37503 c!4332) b!37504))

(assert (= (and b!37503 (not c!4332)) b!37505))

(declare-fun m!30335 () Bool)

(assert (=> b!37504 m!30335))

(assert (=> b!37408 d!5937))

(declare-fun d!5949 () Bool)

(assert (=> d!5949 (= (tail!109 (toList!511 lm!252)) (t!3784 (toList!511 lm!252)))))

(assert (=> d!5887 d!5949))

(declare-fun d!5951 () Bool)

(declare-fun res!22661 () Bool)

(declare-fun e!23740 () Bool)

(assert (=> d!5951 (=> res!22661 e!23740)))

(assert (=> d!5951 (= res!22661 (is-Nil!990 (t!3784 (toList!511 lm!252))))))

(assert (=> d!5951 (= (forall!173 (t!3784 (toList!511 lm!252)) p!304) e!23740)))

(declare-fun b!37506 () Bool)

(declare-fun e!23741 () Bool)

(assert (=> b!37506 (= e!23740 e!23741)))

(declare-fun res!22662 () Bool)

(assert (=> b!37506 (=> (not res!22662) (not e!23741))))

(assert (=> b!37506 (= res!22662 (dynLambda!175 p!304 (h!1557 (t!3784 (toList!511 lm!252)))))))

(declare-fun b!37507 () Bool)

(assert (=> b!37507 (= e!23741 (forall!173 (t!3784 (t!3784 (toList!511 lm!252))) p!304))))

(assert (= (and d!5951 (not res!22661)) b!37506))

(assert (= (and b!37506 res!22662) b!37507))

(declare-fun b_lambda!1959 () Bool)

(assert (=> (not b_lambda!1959) (not b!37506)))

(declare-fun t!3814 () Bool)

(declare-fun tb!805 () Bool)

(assert (=> (and start!4936 (= p!304 p!304) t!3814) tb!805))

(declare-fun result!1347 () Bool)

(assert (=> tb!805 (= result!1347 true)))

(assert (=> b!37506 t!3814))

(declare-fun b_and!2291 () Bool)

(assert (= b_and!2277 (and (=> t!3814 result!1347) b_and!2291)))

(declare-fun m!30337 () Bool)

(assert (=> b!37506 m!30337))

(declare-fun m!30339 () Bool)

(assert (=> b!37507 m!30339))

(assert (=> b!37372 d!5951))

(declare-fun d!5953 () Bool)

(declare-fun res!22667 () Bool)

(declare-fun e!23746 () Bool)

(assert (=> d!5953 (=> res!22667 e!23746)))

(assert (=> d!5953 (= res!22667 (and (is-Cons!989 (toList!511 lt!13762)) (= (_1!715 (h!1557 (toList!511 lt!13762))) k!388)))))

(assert (=> d!5953 (= (containsKey!50 (toList!511 lt!13762) k!388) e!23746)))

(declare-fun b!37512 () Bool)

(declare-fun e!23747 () Bool)

(assert (=> b!37512 (= e!23746 e!23747)))

(declare-fun res!22668 () Bool)

(assert (=> b!37512 (=> (not res!22668) (not e!23747))))

(assert (=> b!37512 (= res!22668 (and (or (not (is-Cons!989 (toList!511 lt!13762))) (bvsle (_1!715 (h!1557 (toList!511 lt!13762))) k!388)) (is-Cons!989 (toList!511 lt!13762)) (bvslt (_1!715 (h!1557 (toList!511 lt!13762))) k!388)))))

(declare-fun b!37513 () Bool)

(assert (=> b!37513 (= e!23747 (containsKey!50 (t!3784 (toList!511 lt!13762)) k!388))))

(assert (= (and d!5953 (not res!22667)) b!37512))

(assert (= (and b!37512 res!22668) b!37513))

(declare-fun m!30341 () Bool)

(assert (=> b!37513 m!30341))

(assert (=> d!5857 d!5953))

(declare-fun d!5955 () Bool)

(assert (=> d!5955 (= (get!636 (getValueByKey!87 (toList!511 lt!13762) k!388)) (v!1961 (getValueByKey!87 (toList!511 lt!13762) k!388)))))

(assert (=> d!5871 d!5955))

(declare-fun d!5959 () Bool)

(declare-fun c!4333 () Bool)

(assert (=> d!5959 (= c!4333 (and (is-Cons!989 (toList!511 lt!13762)) (= (_1!715 (h!1557 (toList!511 lt!13762))) k!388)))))

(declare-fun e!23750 () Option!93)

(assert (=> d!5959 (= (getValueByKey!87 (toList!511 lt!13762) k!388) e!23750)))

(declare-fun b!37516 () Bool)

(assert (=> b!37516 (= e!23750 (Some!92 (_2!715 (h!1557 (toList!511 lt!13762)))))))

(declare-fun b!37519 () Bool)

(declare-fun e!23751 () Option!93)

(assert (=> b!37519 (= e!23751 None!91)))

(declare-fun b!37518 () Bool)

(assert (=> b!37518 (= e!23751 (getValueByKey!87 (t!3784 (toList!511 lt!13762)) k!388))))

(declare-fun b!37517 () Bool)

(assert (=> b!37517 (= e!23750 e!23751)))

(declare-fun c!4334 () Bool)

(assert (=> b!37517 (= c!4334 (and (is-Cons!989 (toList!511 lt!13762)) (not (= (_1!715 (h!1557 (toList!511 lt!13762))) k!388))))))

(assert (= (and d!5959 c!4333) b!37516))

(assert (= (and d!5959 (not c!4333)) b!37517))

(assert (= (and b!37517 c!4334) b!37518))

(assert (= (and b!37517 (not c!4334)) b!37519))

(declare-fun m!30345 () Bool)

(assert (=> b!37518 m!30345))

(assert (=> d!5871 d!5959))

(declare-fun d!5963 () Bool)

(declare-fun res!22671 () Bool)

(declare-fun e!23752 () Bool)

(assert (=> d!5963 (=> res!22671 e!23752)))

(assert (=> d!5963 (= res!22671 (is-Nil!990 (t!3784 (toList!511 lt!13762))))))

