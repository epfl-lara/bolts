; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436114 () Bool)

(assert start!436114)

(declare-fun b!4453066 () Bool)

(declare-fun e!2773001 () Bool)

(declare-fun tp!1334648 () Bool)

(assert (=> b!4453066 (= e!2773001 tp!1334648)))

(declare-fun b!4453067 () Bool)

(declare-fun res!1845521 () Bool)

(declare-fun e!2773002 () Bool)

(assert (=> b!4453067 (=> (not res!1845521) (not e!2773002))))

(declare-datatypes ((V!11509 0))(
  ( (V!11510 (val!17281 Int)) )
))
(declare-datatypes ((K!11263 0))(
  ( (K!11264 (val!17282 Int)) )
))
(declare-datatypes ((tuple2!49882 0))(
  ( (tuple2!49883 (_1!28235 K!11263) (_2!28235 V!11509)) )
))
(declare-datatypes ((List!50015 0))(
  ( (Nil!49891) (Cons!49891 (h!55636 tuple2!49882) (t!356965 List!50015)) )
))
(declare-datatypes ((tuple2!49884 0))(
  ( (tuple2!49885 (_1!28236 (_ BitVec 64)) (_2!28236 List!50015)) )
))
(declare-datatypes ((List!50016 0))(
  ( (Nil!49892) (Cons!49892 (h!55637 tuple2!49884) (t!356966 List!50016)) )
))
(declare-datatypes ((ListLongMap!2389 0))(
  ( (ListLongMap!2390 (toList!3735 List!50016)) )
))
(declare-fun lm!1837 () ListLongMap!2389)

(declare-fun key!4369 () K!11263)

(declare-datatypes ((ListMap!2975 0))(
  ( (ListMap!2976 (toList!3736 List!50015)) )
))
(declare-fun contains!12479 (ListMap!2975 K!11263) Bool)

(declare-fun extractMap!933 (List!50016) ListMap!2975)

(declare-fun tail!7434 (ListLongMap!2389) ListLongMap!2389)

(assert (=> b!4453067 (= res!1845521 (contains!12479 (extractMap!933 (toList!3735 (tail!7434 lm!1837))) key!4369))))

(declare-fun b!4453068 () Bool)

(declare-fun res!1845518 () Bool)

(assert (=> b!4453068 (=> (not res!1845518) (not e!2773002))))

(declare-datatypes ((Hashable!5270 0))(
  ( (HashableExt!5269 (__x!30973 Int)) )
))
(declare-fun hashF!1304 () Hashable!5270)

(declare-fun allKeysSameHashInMap!982 (ListLongMap!2389 Hashable!5270) Bool)

(assert (=> b!4453068 (= res!1845518 (allKeysSameHashInMap!982 lm!1837 hashF!1304))))

(declare-fun res!1845522 () Bool)

(assert (=> start!436114 (=> (not res!1845522) (not e!2773002))))

(declare-fun lambda!159374 () Int)

(declare-fun forall!9771 (List!50016 Int) Bool)

(assert (=> start!436114 (= res!1845522 (forall!9771 (toList!3735 lm!1837) lambda!159374))))

(assert (=> start!436114 e!2773002))

(declare-fun inv!65450 (ListLongMap!2389) Bool)

(assert (=> start!436114 (and (inv!65450 lm!1837) e!2773001)))

(assert (=> start!436114 true))

(declare-fun tp_is_empty!26733 () Bool)

(assert (=> start!436114 tp_is_empty!26733))

(declare-fun b!4453069 () Bool)

(declare-fun res!1845519 () Bool)

(assert (=> b!4453069 (=> (not res!1845519) (not e!2773002))))

(assert (=> b!4453069 (= res!1845519 (is-Cons!49892 (toList!3735 lm!1837)))))

(declare-fun b!4453070 () Bool)

(declare-fun res!1845520 () Bool)

(assert (=> b!4453070 (=> (not res!1845520) (not e!2773002))))

(declare-fun isEmpty!28416 (List!50016) Bool)

(assert (=> b!4453070 (= res!1845520 (not (isEmpty!28416 (toList!3735 lm!1837))))))

(declare-fun b!4453071 () Bool)

(declare-fun isEmpty!28417 (ListLongMap!2389) Bool)

(assert (=> b!4453071 (= e!2773002 (isEmpty!28417 lm!1837))))

(assert (= (and start!436114 res!1845522) b!4453068))

(assert (= (and b!4453068 res!1845518) b!4453070))

(assert (= (and b!4453070 res!1845520) b!4453067))

(assert (= (and b!4453067 res!1845521) b!4453069))

(assert (= (and b!4453069 res!1845519) b!4453071))

(assert (= start!436114 b!4453066))

(declare-fun m!5153869 () Bool)

(assert (=> b!4453070 m!5153869))

(declare-fun m!5153871 () Bool)

(assert (=> b!4453067 m!5153871))

(declare-fun m!5153873 () Bool)

(assert (=> b!4453067 m!5153873))

(assert (=> b!4453067 m!5153873))

(declare-fun m!5153875 () Bool)

(assert (=> b!4453067 m!5153875))

(declare-fun m!5153877 () Bool)

(assert (=> b!4453071 m!5153877))

(declare-fun m!5153879 () Bool)

(assert (=> b!4453068 m!5153879))

(declare-fun m!5153881 () Bool)

(assert (=> start!436114 m!5153881))

(declare-fun m!5153883 () Bool)

(assert (=> start!436114 m!5153883))

(push 1)

(assert (not b!4453070))

(assert (not b!4453068))

(assert tp_is_empty!26733)

(assert (not b!4453066))

(assert (not b!4453071))

(assert (not start!436114))

(assert (not b!4453067))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!790027 () Bool)

(declare-fun d!1358421 () Bool)

(assert (= bs!790027 (and d!1358421 start!436114)))

(declare-fun lambda!159380 () Int)

(assert (=> bs!790027 (not (= lambda!159380 lambda!159374))))

(assert (=> d!1358421 true))

(assert (=> d!1358421 (= (allKeysSameHashInMap!982 lm!1837 hashF!1304) (forall!9771 (toList!3735 lm!1837) lambda!159380))))

(declare-fun bs!790028 () Bool)

(assert (= bs!790028 d!1358421))

(declare-fun m!5153901 () Bool)

(assert (=> bs!790028 m!5153901))

(assert (=> b!4453068 d!1358421))

(declare-fun d!1358423 () Bool)

(assert (=> d!1358423 (= (isEmpty!28416 (toList!3735 lm!1837)) (is-Nil!49892 (toList!3735 lm!1837)))))

(assert (=> b!4453070 d!1358423))

(declare-fun d!1358425 () Bool)

(assert (=> d!1358425 (= (isEmpty!28417 lm!1837) (isEmpty!28416 (toList!3735 lm!1837)))))

(declare-fun bs!790029 () Bool)

(assert (= bs!790029 d!1358425))

(assert (=> bs!790029 m!5153869))

(assert (=> b!4453071 d!1358425))

(declare-fun d!1358427 () Bool)

(declare-fun res!1845542 () Bool)

(declare-fun e!2773013 () Bool)

(assert (=> d!1358427 (=> res!1845542 e!2773013)))

(assert (=> d!1358427 (= res!1845542 (is-Nil!49892 (toList!3735 lm!1837)))))

(assert (=> d!1358427 (= (forall!9771 (toList!3735 lm!1837) lambda!159374) e!2773013)))

(declare-fun b!4453096 () Bool)

(declare-fun e!2773014 () Bool)

(assert (=> b!4453096 (= e!2773013 e!2773014)))

(declare-fun res!1845543 () Bool)

(assert (=> b!4453096 (=> (not res!1845543) (not e!2773014))))

(declare-fun dynLambda!20948 (Int tuple2!49884) Bool)

(assert (=> b!4453096 (= res!1845543 (dynLambda!20948 lambda!159374 (h!55637 (toList!3735 lm!1837))))))

(declare-fun b!4453097 () Bool)

(assert (=> b!4453097 (= e!2773014 (forall!9771 (t!356966 (toList!3735 lm!1837)) lambda!159374))))

(assert (= (and d!1358427 (not res!1845542)) b!4453096))

(assert (= (and b!4453096 res!1845543) b!4453097))

(declare-fun b_lambda!147341 () Bool)

(assert (=> (not b_lambda!147341) (not b!4453096)))

(declare-fun m!5153903 () Bool)

(assert (=> b!4453096 m!5153903))

(declare-fun m!5153905 () Bool)

(assert (=> b!4453097 m!5153905))

(assert (=> start!436114 d!1358427))

(declare-fun d!1358429 () Bool)

(declare-fun isStrictlySorted!289 (List!50016) Bool)

(assert (=> d!1358429 (= (inv!65450 lm!1837) (isStrictlySorted!289 (toList!3735 lm!1837)))))

(declare-fun bs!790030 () Bool)

(assert (= bs!790030 d!1358429))

(declare-fun m!5153907 () Bool)

(assert (=> bs!790030 m!5153907))

(assert (=> start!436114 d!1358429))

(declare-fun d!1358433 () Bool)

(declare-fun e!2773027 () Bool)

(assert (=> d!1358433 e!2773027))

(declare-fun res!1845552 () Bool)

(assert (=> d!1358433 (=> res!1845552 e!2773027)))

(declare-fun e!2773030 () Bool)

(assert (=> d!1358433 (= res!1845552 e!2773030)))

(declare-fun res!1845550 () Bool)

(assert (=> d!1358433 (=> (not res!1845550) (not e!2773030))))

(declare-fun lt!1645111 () Bool)

(assert (=> d!1358433 (= res!1845550 (not lt!1645111))))

(declare-fun lt!1645107 () Bool)

(assert (=> d!1358433 (= lt!1645111 lt!1645107)))

(declare-datatypes ((Unit!85683 0))(
  ( (Unit!85684) )
))
(declare-fun lt!1645110 () Unit!85683)

(declare-fun e!2773032 () Unit!85683)

(assert (=> d!1358433 (= lt!1645110 e!2773032)))

(declare-fun c!758114 () Bool)

(assert (=> d!1358433 (= c!758114 lt!1645107)))

(declare-fun containsKey!1298 (List!50015 K!11263) Bool)

(assert (=> d!1358433 (= lt!1645107 (containsKey!1298 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369))))

(assert (=> d!1358433 (= (contains!12479 (extractMap!933 (toList!3735 (tail!7434 lm!1837))) key!4369) lt!1645111)))

(declare-fun b!4453118 () Bool)

(declare-datatypes ((List!50019 0))(
  ( (Nil!49895) (Cons!49895 (h!55640 K!11263) (t!356969 List!50019)) )
))
(declare-fun e!2773028 () List!50019)

(declare-fun getKeysList!307 (List!50015) List!50019)

(assert (=> b!4453118 (= e!2773028 (getKeysList!307 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837))))))))

(declare-fun b!4453119 () Bool)

(declare-fun lt!1645106 () Unit!85683)

(assert (=> b!4453119 (= e!2773032 lt!1645106)))

(declare-fun lt!1645113 () Unit!85683)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!730 (List!50015 K!11263) Unit!85683)

(assert (=> b!4453119 (= lt!1645113 (lemmaContainsKeyImpliesGetValueByKeyDefined!730 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369))))

(declare-datatypes ((Option!10839 0))(
  ( (None!10838) (Some!10838 (v!44092 V!11509)) )
))
(declare-fun isDefined!8127 (Option!10839) Bool)

(declare-fun getValueByKey!825 (List!50015 K!11263) Option!10839)

(assert (=> b!4453119 (isDefined!8127 (getValueByKey!825 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369))))

(declare-fun lt!1645112 () Unit!85683)

(assert (=> b!4453119 (= lt!1645112 lt!1645113)))

(declare-fun lemmaInListThenGetKeysListContains!304 (List!50015 K!11263) Unit!85683)

(assert (=> b!4453119 (= lt!1645106 (lemmaInListThenGetKeysListContains!304 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369))))

(declare-fun call!309885 () Bool)

(assert (=> b!4453119 call!309885))

(declare-fun b!4453120 () Bool)

(declare-fun e!2773031 () Unit!85683)

(assert (=> b!4453120 (= e!2773032 e!2773031)))

(declare-fun c!758115 () Bool)

(assert (=> b!4453120 (= c!758115 call!309885)))

(declare-fun b!4453121 () Bool)

(declare-fun Unit!85685 () Unit!85683)

(assert (=> b!4453121 (= e!2773031 Unit!85685)))

(declare-fun b!4453122 () Bool)

(assert (=> b!4453122 false))

(declare-fun lt!1645108 () Unit!85683)

(declare-fun lt!1645109 () Unit!85683)

(assert (=> b!4453122 (= lt!1645108 lt!1645109)))

(assert (=> b!4453122 (containsKey!1298 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!305 (List!50015 K!11263) Unit!85683)

(assert (=> b!4453122 (= lt!1645109 (lemmaInGetKeysListThenContainsKey!305 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369))))

(declare-fun Unit!85686 () Unit!85683)

(assert (=> b!4453122 (= e!2773031 Unit!85686)))

(declare-fun b!4453123 () Bool)

(declare-fun e!2773029 () Bool)

(assert (=> b!4453123 (= e!2773027 e!2773029)))

(declare-fun res!1845551 () Bool)

(assert (=> b!4453123 (=> (not res!1845551) (not e!2773029))))

(assert (=> b!4453123 (= res!1845551 (isDefined!8127 (getValueByKey!825 (toList!3736 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369)))))

(declare-fun bm!309880 () Bool)

(declare-fun contains!12481 (List!50019 K!11263) Bool)

(assert (=> bm!309880 (= call!309885 (contains!12481 e!2773028 key!4369))))

(declare-fun c!758116 () Bool)

(assert (=> bm!309880 (= c!758116 c!758114)))

(declare-fun b!4453124 () Bool)

(declare-fun keys!17119 (ListMap!2975) List!50019)

(assert (=> b!4453124 (= e!2773029 (contains!12481 (keys!17119 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369))))

(declare-fun b!4453125 () Bool)

(assert (=> b!4453125 (= e!2773030 (not (contains!12481 (keys!17119 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))) key!4369)))))

(declare-fun b!4453126 () Bool)

(assert (=> b!4453126 (= e!2773028 (keys!17119 (extractMap!933 (toList!3735 (tail!7434 lm!1837)))))))

(assert (= (and d!1358433 c!758114) b!4453119))

(assert (= (and d!1358433 (not c!758114)) b!4453120))

(assert (= (and b!4453120 c!758115) b!4453122))

(assert (= (and b!4453120 (not c!758115)) b!4453121))

(assert (= (or b!4453119 b!4453120) bm!309880))

(assert (= (and bm!309880 c!758116) b!4453118))

(assert (= (and bm!309880 (not c!758116)) b!4453126))

(assert (= (and d!1358433 res!1845550) b!4453125))

(assert (= (and d!1358433 (not res!1845552)) b!4453123))

(assert (= (and b!4453123 res!1845551) b!4453124))

(assert (=> b!4453126 m!5153873))

(declare-fun m!5153911 () Bool)

(assert (=> b!4453126 m!5153911))

(declare-fun m!5153913 () Bool)

(assert (=> d!1358433 m!5153913))

(assert (=> b!4453124 m!5153873))

(assert (=> b!4453124 m!5153911))

(assert (=> b!4453124 m!5153911))

(declare-fun m!5153915 () Bool)

(assert (=> b!4453124 m!5153915))

(assert (=> b!4453125 m!5153873))

(assert (=> b!4453125 m!5153911))

(assert (=> b!4453125 m!5153911))

(assert (=> b!4453125 m!5153915))

(declare-fun m!5153917 () Bool)

(assert (=> b!4453123 m!5153917))

(assert (=> b!4453123 m!5153917))

(declare-fun m!5153919 () Bool)

(assert (=> b!4453123 m!5153919))

(assert (=> b!4453122 m!5153913))

(declare-fun m!5153921 () Bool)

(assert (=> b!4453122 m!5153921))

(declare-fun m!5153923 () Bool)

(assert (=> b!4453119 m!5153923))

(assert (=> b!4453119 m!5153917))

(assert (=> b!4453119 m!5153917))

(assert (=> b!4453119 m!5153919))

(declare-fun m!5153925 () Bool)

(assert (=> b!4453119 m!5153925))

(declare-fun m!5153927 () Bool)

(assert (=> bm!309880 m!5153927))

(declare-fun m!5153929 () Bool)

(assert (=> b!4453118 m!5153929))

(assert (=> b!4453067 d!1358433))

(declare-fun bs!790034 () Bool)

(declare-fun d!1358441 () Bool)

(assert (= bs!790034 (and d!1358441 start!436114)))

(declare-fun lambda!159386 () Int)

(assert (=> bs!790034 (= lambda!159386 lambda!159374)))

(declare-fun bs!790035 () Bool)

(assert (= bs!790035 (and d!1358441 d!1358421)))

(assert (=> bs!790035 (not (= lambda!159386 lambda!159380))))

(declare-fun lt!1645116 () ListMap!2975)

(declare-fun invariantList!861 (List!50015) Bool)

(assert (=> d!1358441 (invariantList!861 (toList!3736 lt!1645116))))

(declare-fun e!2773035 () ListMap!2975)

(assert (=> d!1358441 (= lt!1645116 e!2773035)))

(declare-fun c!758119 () Bool)

(assert (=> d!1358441 (= c!758119 (is-Cons!49892 (toList!3735 (tail!7434 lm!1837))))))

(assert (=> d!1358441 (forall!9771 (toList!3735 (tail!7434 lm!1837)) lambda!159386)))

(assert (=> d!1358441 (= (extractMap!933 (toList!3735 (tail!7434 lm!1837))) lt!1645116)))

(declare-fun b!4453131 () Bool)

(declare-fun addToMapMapFromBucket!472 (List!50015 ListMap!2975) ListMap!2975)

(assert (=> b!4453131 (= e!2773035 (addToMapMapFromBucket!472 (_2!28236 (h!55637 (toList!3735 (tail!7434 lm!1837)))) (extractMap!933 (t!356966 (toList!3735 (tail!7434 lm!1837))))))))

(declare-fun b!4453132 () Bool)

(assert (=> b!4453132 (= e!2773035 (ListMap!2976 Nil!49891))))

(assert (= (and d!1358441 c!758119) b!4453131))

(assert (= (and d!1358441 (not c!758119)) b!4453132))

(declare-fun m!5153931 () Bool)

(assert (=> d!1358441 m!5153931))

(declare-fun m!5153933 () Bool)

(assert (=> d!1358441 m!5153933))

(declare-fun m!5153935 () Bool)

(assert (=> b!4453131 m!5153935))

(assert (=> b!4453131 m!5153935))

(declare-fun m!5153937 () Bool)

(assert (=> b!4453131 m!5153937))

(assert (=> b!4453067 d!1358441))

(declare-fun d!1358443 () Bool)

(declare-fun tail!7436 (List!50016) List!50016)

(assert (=> d!1358443 (= (tail!7434 lm!1837) (ListLongMap!2390 (tail!7436 (toList!3735 lm!1837))))))

(declare-fun bs!790036 () Bool)

(assert (= bs!790036 d!1358443))

(declare-fun m!5153939 () Bool)

(assert (=> bs!790036 m!5153939))

(assert (=> b!4453067 d!1358443))

(declare-fun b!4453137 () Bool)

(declare-fun e!2773038 () Bool)

(declare-fun tp!1334656 () Bool)

(declare-fun tp!1334657 () Bool)

(assert (=> b!4453137 (= e!2773038 (and tp!1334656 tp!1334657))))

(assert (=> b!4453066 (= tp!1334648 e!2773038)))

(assert (= (and b!4453066 (is-Cons!49892 (toList!3735 lm!1837))) b!4453137))

(declare-fun b_lambda!147343 () Bool)

(assert (= b_lambda!147341 (or start!436114 b_lambda!147343)))

(declare-fun bs!790037 () Bool)

(declare-fun d!1358445 () Bool)

(assert (= bs!790037 (and d!1358445 start!436114)))

(declare-fun noDuplicateKeys!873 (List!50015) Bool)

(assert (=> bs!790037 (= (dynLambda!20948 lambda!159374 (h!55637 (toList!3735 lm!1837))) (noDuplicateKeys!873 (_2!28236 (h!55637 (toList!3735 lm!1837)))))))

(declare-fun m!5153941 () Bool)

(assert (=> bs!790037 m!5153941))

(assert (=> b!4453096 d!1358445))

(push 1)

(assert (not d!1358443))

(assert tp_is_empty!26733)

(assert (not d!1358433))

(assert (not bs!790037))

(assert (not b!4453123))

(assert (not b_lambda!147343))

(assert (not b!4453126))

(assert (not b!4453097))

(assert (not b!4453124))

(assert (not bm!309880))

(assert (not d!1358425))

(assert (not b!4453131))

(assert (not b!4453125))

(assert (not b!4453118))

(assert (not d!1358429))

(assert (not b!4453122))

(assert (not d!1358421))

(assert (not d!1358441))

(assert (not b!4453137))

(assert (not b!4453119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

