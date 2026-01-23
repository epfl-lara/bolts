; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471126 () Bool)

(assert start!471126)

(declare-fun b!4670869 () Bool)

(declare-fun res!1966268 () Bool)

(declare-fun e!2914807 () Bool)

(assert (=> b!4670869 (=> (not res!1966268) (not e!2914807))))

(declare-datatypes ((K!13408 0))(
  ( (K!13409 (val!18997 Int)) )
))
(declare-datatypes ((V!13654 0))(
  ( (V!13655 (val!18998 Int)) )
))
(declare-datatypes ((tuple2!53230 0))(
  ( (tuple2!53231 (_1!29909 K!13408) (_2!29909 V!13654)) )
))
(declare-datatypes ((List!52168 0))(
  ( (Nil!52044) (Cons!52044 (h!58224 tuple2!53230) (t!359306 List!52168)) )
))
(declare-fun l!12991 () List!52168)

(assert (=> b!4670869 (= res!1966268 (is-Cons!52044 l!12991))))

(declare-fun res!1966267 () Bool)

(assert (=> start!471126 (=> (not res!1966267) (not e!2914807))))

(declare-fun key!4532 () K!13408)

(declare-fun containsKey!2847 (List!52168 K!13408) Bool)

(assert (=> start!471126 (= res!1966267 (not (containsKey!2847 l!12991 key!4532)))))

(assert (=> start!471126 e!2914807))

(declare-fun e!2914806 () Bool)

(assert (=> start!471126 e!2914806))

(declare-fun tp_is_empty!30105 () Bool)

(assert (=> start!471126 tp_is_empty!30105))

(declare-datatypes ((ListMap!4667 0))(
  ( (ListMap!4668 (toList!5311 List!52168)) )
))
(declare-fun lhm!57 () ListMap!4667)

(declare-fun e!2914805 () Bool)

(declare-fun inv!67283 (ListMap!4667) Bool)

(assert (=> start!471126 (and (inv!67283 lhm!57) e!2914805)))

(declare-fun b!4670870 () Bool)

(assert (=> b!4670870 (= e!2914807 (= (_1!29909 (h!58224 l!12991)) key!4532))))

(declare-fun lt!1832868 () ListMap!4667)

(declare-fun +!2031 (ListMap!4667 tuple2!53230) ListMap!4667)

(assert (=> b!4670870 (= lt!1832868 (+!2031 lhm!57 (h!58224 l!12991)))))

(declare-fun b!4670871 () Bool)

(declare-fun tp_is_empty!30107 () Bool)

(declare-fun tp!1343863 () Bool)

(assert (=> b!4670871 (= e!2914806 (and tp_is_empty!30105 tp_is_empty!30107 tp!1343863))))

(declare-fun b!4670872 () Bool)

(declare-fun res!1966269 () Bool)

(assert (=> b!4670872 (=> (not res!1966269) (not e!2914807))))

(declare-fun noDuplicateKeys!1703 (List!52168) Bool)

(assert (=> b!4670872 (= res!1966269 (noDuplicateKeys!1703 l!12991))))

(declare-fun b!4670873 () Bool)

(declare-fun tp!1343862 () Bool)

(assert (=> b!4670873 (= e!2914805 tp!1343862)))

(assert (= (and start!471126 res!1966267) b!4670872))

(assert (= (and b!4670872 res!1966269) b!4670869))

(assert (= (and b!4670869 res!1966268) b!4670870))

(assert (= (and start!471126 (is-Cons!52044 l!12991)) b!4670871))

(assert (= start!471126 b!4670873))

(declare-fun m!5564143 () Bool)

(assert (=> start!471126 m!5564143))

(declare-fun m!5564145 () Bool)

(assert (=> start!471126 m!5564145))

(declare-fun m!5564147 () Bool)

(assert (=> b!4670870 m!5564147))

(declare-fun m!5564149 () Bool)

(assert (=> b!4670872 m!5564149))

(push 1)

(assert (not b!4670872))

(assert (not b!4670870))

(assert tp_is_empty!30105)

(assert tp_is_empty!30107)

(assert (not b!4670873))

(assert (not b!4670871))

(assert (not start!471126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1485300 () Bool)

(declare-fun res!1966283 () Bool)

(declare-fun e!2914821 () Bool)

(assert (=> d!1485300 (=> res!1966283 e!2914821)))

(assert (=> d!1485300 (= res!1966283 (not (is-Cons!52044 l!12991)))))

(assert (=> d!1485300 (= (noDuplicateKeys!1703 l!12991) e!2914821)))

(declare-fun b!4670893 () Bool)

(declare-fun e!2914822 () Bool)

(assert (=> b!4670893 (= e!2914821 e!2914822)))

(declare-fun res!1966284 () Bool)

(assert (=> b!4670893 (=> (not res!1966284) (not e!2914822))))

(assert (=> b!4670893 (= res!1966284 (not (containsKey!2847 (t!359306 l!12991) (_1!29909 (h!58224 l!12991)))))))

(declare-fun b!4670894 () Bool)

(assert (=> b!4670894 (= e!2914822 (noDuplicateKeys!1703 (t!359306 l!12991)))))

(assert (= (and d!1485300 (not res!1966283)) b!4670893))

(assert (= (and b!4670893 res!1966284) b!4670894))

(declare-fun m!5564159 () Bool)

(assert (=> b!4670893 m!5564159))

(declare-fun m!5564161 () Bool)

(assert (=> b!4670894 m!5564161))

(assert (=> b!4670872 d!1485300))

(declare-fun d!1485304 () Bool)

(declare-fun res!1966295 () Bool)

(declare-fun e!2914833 () Bool)

(assert (=> d!1485304 (=> res!1966295 e!2914833)))

(assert (=> d!1485304 (= res!1966295 (and (is-Cons!52044 l!12991) (= (_1!29909 (h!58224 l!12991)) key!4532)))))

(assert (=> d!1485304 (= (containsKey!2847 l!12991 key!4532) e!2914833)))

(declare-fun b!4670905 () Bool)

(declare-fun e!2914834 () Bool)

(assert (=> b!4670905 (= e!2914833 e!2914834)))

(declare-fun res!1966296 () Bool)

(assert (=> b!4670905 (=> (not res!1966296) (not e!2914834))))

(assert (=> b!4670905 (= res!1966296 (is-Cons!52044 l!12991))))

(declare-fun b!4670906 () Bool)

(assert (=> b!4670906 (= e!2914834 (containsKey!2847 (t!359306 l!12991) key!4532))))

(assert (= (and d!1485304 (not res!1966295)) b!4670905))

(assert (= (and b!4670905 res!1966296) b!4670906))

(declare-fun m!5564167 () Bool)

(assert (=> b!4670906 m!5564167))

(assert (=> start!471126 d!1485304))

(declare-fun d!1485308 () Bool)

(declare-fun invariantList!1333 (List!52168) Bool)

(assert (=> d!1485308 (= (inv!67283 lhm!57) (invariantList!1333 (toList!5311 lhm!57)))))

(declare-fun bs!1078831 () Bool)

(assert (= bs!1078831 d!1485308))

(declare-fun m!5564169 () Bool)

(assert (=> bs!1078831 m!5564169))

(assert (=> start!471126 d!1485308))

(declare-fun d!1485310 () Bool)

(declare-fun e!2914843 () Bool)

(assert (=> d!1485310 e!2914843))

(declare-fun res!1966307 () Bool)

(assert (=> d!1485310 (=> (not res!1966307) (not e!2914843))))

(declare-fun lt!1832891 () ListMap!4667)

(declare-fun contains!15238 (ListMap!4667 K!13408) Bool)

(assert (=> d!1485310 (= res!1966307 (contains!15238 lt!1832891 (_1!29909 (h!58224 l!12991))))))

(declare-fun lt!1832888 () List!52168)

(assert (=> d!1485310 (= lt!1832891 (ListMap!4668 lt!1832888))))

(declare-datatypes ((Unit!121132 0))(
  ( (Unit!121133) )
))
(declare-fun lt!1832890 () Unit!121132)

(declare-fun lt!1832889 () Unit!121132)

(assert (=> d!1485310 (= lt!1832890 lt!1832889)))

(declare-datatypes ((Option!11929 0))(
  ( (None!11928) (Some!11928 (v!46288 V!13654)) )
))
(declare-fun getValueByKey!1677 (List!52168 K!13408) Option!11929)

(assert (=> d!1485310 (= (getValueByKey!1677 lt!1832888 (_1!29909 (h!58224 l!12991))) (Some!11928 (_2!29909 (h!58224 l!12991))))))

(declare-fun lemmaContainsTupThenGetReturnValue!951 (List!52168 K!13408 V!13654) Unit!121132)

(assert (=> d!1485310 (= lt!1832889 (lemmaContainsTupThenGetReturnValue!951 lt!1832888 (_1!29909 (h!58224 l!12991)) (_2!29909 (h!58224 l!12991))))))

(declare-fun insertNoDuplicatedKeys!459 (List!52168 K!13408 V!13654) List!52168)

(assert (=> d!1485310 (= lt!1832888 (insertNoDuplicatedKeys!459 (toList!5311 lhm!57) (_1!29909 (h!58224 l!12991)) (_2!29909 (h!58224 l!12991))))))

(assert (=> d!1485310 (= (+!2031 lhm!57 (h!58224 l!12991)) lt!1832891)))

(declare-fun b!4670917 () Bool)

(declare-fun res!1966308 () Bool)

(assert (=> b!4670917 (=> (not res!1966308) (not e!2914843))))

(assert (=> b!4670917 (= res!1966308 (= (getValueByKey!1677 (toList!5311 lt!1832891) (_1!29909 (h!58224 l!12991))) (Some!11928 (_2!29909 (h!58224 l!12991)))))))

(declare-fun b!4670918 () Bool)

(declare-fun contains!15240 (List!52168 tuple2!53230) Bool)

(assert (=> b!4670918 (= e!2914843 (contains!15240 (toList!5311 lt!1832891) (h!58224 l!12991)))))

(assert (= (and d!1485310 res!1966307) b!4670917))

(assert (= (and b!4670917 res!1966308) b!4670918))

(declare-fun m!5564175 () Bool)

(assert (=> d!1485310 m!5564175))

(declare-fun m!5564177 () Bool)

(assert (=> d!1485310 m!5564177))

(declare-fun m!5564179 () Bool)

(assert (=> d!1485310 m!5564179))

(declare-fun m!5564181 () Bool)

(assert (=> d!1485310 m!5564181))

(declare-fun m!5564183 () Bool)

(assert (=> b!4670917 m!5564183))

(declare-fun m!5564185 () Bool)

(assert (=> b!4670918 m!5564185))

(assert (=> b!4670870 d!1485310))

(declare-fun tp!1343872 () Bool)

(declare-fun e!2914848 () Bool)

(declare-fun b!4670927 () Bool)

(assert (=> b!4670927 (= e!2914848 (and tp_is_empty!30105 tp_is_empty!30107 tp!1343872))))

(assert (=> b!4670871 (= tp!1343863 e!2914848)))

(assert (= (and b!4670871 (is-Cons!52044 (t!359306 l!12991))) b!4670927))

(declare-fun b!4670928 () Bool)

(declare-fun e!2914849 () Bool)

(declare-fun tp!1343873 () Bool)

(assert (=> b!4670928 (= e!2914849 (and tp_is_empty!30105 tp_is_empty!30107 tp!1343873))))

(assert (=> b!4670873 (= tp!1343862 e!2914849)))

(assert (= (and b!4670873 (is-Cons!52044 (toList!5311 lhm!57))) b!4670928))

(push 1)

(assert (not d!1485308))

(assert (not b!4670906))

(assert (not d!1485310))

(assert (not b!4670928))

(assert (not b!4670894))

(assert tp_is_empty!30105)

(assert (not b!4670918))

(assert tp_is_empty!30107)

(assert (not b!4670917))

(assert (not b!4670893))

(assert (not b!4670927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

