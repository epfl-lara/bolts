; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486282 () Bool)

(assert start!486282)

(assert (=> start!486282 true))

(declare-datatypes ((K!14713 0))(
  ( (K!14714 (val!20041 Int)) )
))
(declare-datatypes ((V!14959 0))(
  ( (V!14960 (val!20042 Int)) )
))
(declare-datatypes ((tuple2!55018 0))(
  ( (tuple2!55019 (_1!30803 K!14713) (_2!30803 V!14959)) )
))
(declare-datatypes ((List!53293 0))(
  ( (Nil!53169) (Cons!53169 (h!59566 tuple2!55018) (t!360637 List!53293)) )
))
(declare-fun bucket!42 () List!53293)

(declare-fun hash!422 () (_ BitVec 64))

(declare-fun e!2967072 () Bool)

(declare-datatypes ((Hashable!6453 0))(
  ( (HashableExt!6452 (__x!32156 Int)) )
))
(declare-fun hashF!1442 () Hashable!6453)

(declare-fun b!4756085 () Bool)

(declare-fun allKeysSameHash!1910 (List!53293 (_ BitVec 64) Hashable!6453) Bool)

(assert (=> b!4756085 (= e!2967072 (not (allKeysSameHash!1910 bucket!42 hash!422 hashF!1442)))))

(declare-datatypes ((Unit!137700 0))(
  ( (Unit!137701) )
))
(declare-fun lt!1922972 () Unit!137700)

(declare-datatypes ((tuple2!55020 0))(
  ( (tuple2!55021 (_1!30804 (_ BitVec 64)) (_2!30804 List!53293)) )
))
(declare-datatypes ((List!53294 0))(
  ( (Nil!53170) (Cons!53170 (h!59567 tuple2!55020) (t!360638 List!53294)) )
))
(declare-fun lml!42 () List!53294)

(declare-fun lambda!223485 () Int)

(declare-fun lt!1922973 () tuple2!55020)

(declare-fun forallContained!3817 (List!53294 Int tuple2!55020) Unit!137700)

(assert (=> b!4756085 (= lt!1922972 (forallContained!3817 lml!42 lambda!223485 lt!1922973))))

(declare-fun tp_is_empty!32193 () Bool)

(declare-fun e!2967071 () Bool)

(declare-fun tp!1350934 () Bool)

(declare-fun tp_is_empty!32195 () Bool)

(declare-fun b!4756087 () Bool)

(assert (=> b!4756087 (= e!2967071 (and tp_is_empty!32193 tp_is_empty!32195 tp!1350934))))

(declare-fun b!4756086 () Bool)

(declare-fun e!2967070 () Bool)

(declare-fun tp!1350936 () Bool)

(declare-fun tp!1350935 () Bool)

(assert (=> b!4756086 (= e!2967070 (and tp!1350936 tp!1350935))))

(declare-fun b!4756084 () Bool)

(declare-fun e!2967069 () Bool)

(assert (=> b!4756084 (= e!2967069 e!2967072)))

(declare-fun res!2017751 () Bool)

(assert (=> b!4756084 (=> (not res!2017751) (not e!2967072))))

(declare-fun contains!16592 (List!53294 tuple2!55020) Bool)

(assert (=> b!4756084 (= res!2017751 (contains!16592 lml!42 lt!1922973))))

(assert (=> b!4756084 (= lt!1922973 (tuple2!55021 hash!422 bucket!42))))

(declare-fun res!2017750 () Bool)

(assert (=> start!486282 (=> (not res!2017750) (not e!2967069))))

(declare-fun forall!11795 (List!53294 Int) Bool)

(assert (=> start!486282 (= res!2017750 (forall!11795 lml!42 lambda!223485))))

(assert (=> start!486282 e!2967069))

(assert (=> start!486282 e!2967070))

(assert (=> start!486282 true))

(assert (=> start!486282 e!2967071))

(assert (= (and start!486282 res!2017750) b!4756084))

(assert (= (and b!4756084 res!2017751) b!4756085))

(assert (= (and start!486282 (is-Cons!53170 lml!42)) b!4756086))

(assert (= (and start!486282 (is-Cons!53169 bucket!42)) b!4756087))

(declare-fun m!5726247 () Bool)

(assert (=> b!4756085 m!5726247))

(declare-fun m!5726249 () Bool)

(assert (=> b!4756085 m!5726249))

(declare-fun m!5726251 () Bool)

(assert (=> b!4756084 m!5726251))

(declare-fun m!5726253 () Bool)

(assert (=> start!486282 m!5726253))

(push 1)

(assert tp_is_empty!32193)

(assert (not b!4756085))

(assert (not start!486282))

(assert (not b!4756087))

(assert (not b!4756084))

(assert tp_is_empty!32195)

(assert (not b!4756086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1520793 () Bool)

(assert (=> d!1520793 true))

(assert (=> d!1520793 true))

(declare-fun lambda!223493 () Int)

(declare-fun forall!11797 (List!53293 Int) Bool)

(assert (=> d!1520793 (= (allKeysSameHash!1910 bucket!42 hash!422 hashF!1442) (forall!11797 bucket!42 lambda!223493))))

(declare-fun bs!1146895 () Bool)

(assert (= bs!1146895 d!1520793))

(declare-fun m!5726263 () Bool)

(assert (=> bs!1146895 m!5726263))

(assert (=> b!4756085 d!1520793))

(declare-fun d!1520795 () Bool)

(declare-fun dynLambda!21903 (Int tuple2!55020) Bool)

(assert (=> d!1520795 (dynLambda!21903 lambda!223485 lt!1922973)))

(declare-fun lt!1922982 () Unit!137700)

(declare-fun choose!33893 (List!53294 Int tuple2!55020) Unit!137700)

(assert (=> d!1520795 (= lt!1922982 (choose!33893 lml!42 lambda!223485 lt!1922973))))

(declare-fun e!2967087 () Bool)

(assert (=> d!1520795 e!2967087))

(declare-fun res!2017760 () Bool)

(assert (=> d!1520795 (=> (not res!2017760) (not e!2967087))))

(assert (=> d!1520795 (= res!2017760 (forall!11795 lml!42 lambda!223485))))

(assert (=> d!1520795 (= (forallContained!3817 lml!42 lambda!223485 lt!1922973) lt!1922982)))

(declare-fun b!4756110 () Bool)

(assert (=> b!4756110 (= e!2967087 (contains!16592 lml!42 lt!1922973))))

(assert (= (and d!1520795 res!2017760) b!4756110))

(declare-fun b_lambda!183693 () Bool)

(assert (=> (not b_lambda!183693) (not d!1520795)))

(declare-fun m!5726265 () Bool)

(assert (=> d!1520795 m!5726265))

(declare-fun m!5726267 () Bool)

(assert (=> d!1520795 m!5726267))

(assert (=> d!1520795 m!5726253))

(assert (=> b!4756110 m!5726251))

(assert (=> b!4756085 d!1520795))

(declare-fun d!1520797 () Bool)

(declare-fun res!2017765 () Bool)

(declare-fun e!2967092 () Bool)

(assert (=> d!1520797 (=> res!2017765 e!2967092)))

(assert (=> d!1520797 (= res!2017765 (is-Nil!53170 lml!42))))

(assert (=> d!1520797 (= (forall!11795 lml!42 lambda!223485) e!2967092)))

(declare-fun b!4756115 () Bool)

(declare-fun e!2967093 () Bool)

(assert (=> b!4756115 (= e!2967092 e!2967093)))

(declare-fun res!2017766 () Bool)

(assert (=> b!4756115 (=> (not res!2017766) (not e!2967093))))

(assert (=> b!4756115 (= res!2017766 (dynLambda!21903 lambda!223485 (h!59567 lml!42)))))

(declare-fun b!4756116 () Bool)

(assert (=> b!4756116 (= e!2967093 (forall!11795 (t!360638 lml!42) lambda!223485))))

(assert (= (and d!1520797 (not res!2017765)) b!4756115))

(assert (= (and b!4756115 res!2017766) b!4756116))

(declare-fun b_lambda!183695 () Bool)

(assert (=> (not b_lambda!183695) (not b!4756115)))

(declare-fun m!5726269 () Bool)

(assert (=> b!4756115 m!5726269))

(declare-fun m!5726271 () Bool)

(assert (=> b!4756116 m!5726271))

(assert (=> start!486282 d!1520797))

(declare-fun d!1520801 () Bool)

(declare-fun lt!1922985 () Bool)

(declare-fun content!9570 (List!53294) (Set tuple2!55020))

(assert (=> d!1520801 (= lt!1922985 (set.member lt!1922973 (content!9570 lml!42)))))

(declare-fun e!2967102 () Bool)

(assert (=> d!1520801 (= lt!1922985 e!2967102)))

(declare-fun res!2017776 () Bool)

(assert (=> d!1520801 (=> (not res!2017776) (not e!2967102))))

(assert (=> d!1520801 (= res!2017776 (is-Cons!53170 lml!42))))

(assert (=> d!1520801 (= (contains!16592 lml!42 lt!1922973) lt!1922985)))

(declare-fun b!4756125 () Bool)

(declare-fun e!2967103 () Bool)

(assert (=> b!4756125 (= e!2967102 e!2967103)))

(declare-fun res!2017775 () Bool)

(assert (=> b!4756125 (=> res!2017775 e!2967103)))

(assert (=> b!4756125 (= res!2017775 (= (h!59567 lml!42) lt!1922973))))

(declare-fun b!4756126 () Bool)

(assert (=> b!4756126 (= e!2967103 (contains!16592 (t!360638 lml!42) lt!1922973))))

(assert (= (and d!1520801 res!2017776) b!4756125))

(assert (= (and b!4756125 (not res!2017775)) b!4756126))

(declare-fun m!5726273 () Bool)

(assert (=> d!1520801 m!5726273))

(declare-fun m!5726275 () Bool)

(assert (=> d!1520801 m!5726275))

(declare-fun m!5726277 () Bool)

(assert (=> b!4756126 m!5726277))

(assert (=> b!4756084 d!1520801))

(declare-fun e!2967106 () Bool)

(declare-fun b!4756131 () Bool)

(declare-fun tp!1350948 () Bool)

(assert (=> b!4756131 (= e!2967106 (and tp_is_empty!32193 tp_is_empty!32195 tp!1350948))))

(assert (=> b!4756086 (= tp!1350936 e!2967106)))

(assert (= (and b!4756086 (is-Cons!53169 (_2!30804 (h!59567 lml!42)))) b!4756131))

(declare-fun b!4756136 () Bool)

(declare-fun e!2967109 () Bool)

(declare-fun tp!1350953 () Bool)

(declare-fun tp!1350954 () Bool)

(assert (=> b!4756136 (= e!2967109 (and tp!1350953 tp!1350954))))

(assert (=> b!4756086 (= tp!1350935 e!2967109)))

(assert (= (and b!4756086 (is-Cons!53170 (t!360638 lml!42))) b!4756136))

(declare-fun e!2967110 () Bool)

(declare-fun b!4756137 () Bool)

(declare-fun tp!1350955 () Bool)

(assert (=> b!4756137 (= e!2967110 (and tp_is_empty!32193 tp_is_empty!32195 tp!1350955))))

(assert (=> b!4756087 (= tp!1350934 e!2967110)))

(assert (= (and b!4756087 (is-Cons!53169 (t!360637 bucket!42))) b!4756137))

(declare-fun b_lambda!183697 () Bool)

(assert (= b_lambda!183695 (or start!486282 b_lambda!183697)))

(declare-fun bs!1146896 () Bool)

(declare-fun d!1520803 () Bool)

(assert (= bs!1146896 (and d!1520803 start!486282)))

(assert (=> bs!1146896 (= (dynLambda!21903 lambda!223485 (h!59567 lml!42)) (allKeysSameHash!1910 (_2!30804 (h!59567 lml!42)) (_1!30804 (h!59567 lml!42)) hashF!1442))))

(declare-fun m!5726279 () Bool)

(assert (=> bs!1146896 m!5726279))

(assert (=> b!4756115 d!1520803))

(declare-fun b_lambda!183699 () Bool)

(assert (= b_lambda!183693 (or start!486282 b_lambda!183699)))

(declare-fun bs!1146897 () Bool)

(declare-fun d!1520805 () Bool)

(assert (= bs!1146897 (and d!1520805 start!486282)))

(assert (=> bs!1146897 (= (dynLambda!21903 lambda!223485 lt!1922973) (allKeysSameHash!1910 (_2!30804 lt!1922973) (_1!30804 lt!1922973) hashF!1442))))

(declare-fun m!5726281 () Bool)

(assert (=> bs!1146897 m!5726281))

(assert (=> d!1520795 d!1520805))

(push 1)

(assert (not b!4756116))

(assert tp_is_empty!32193)

(assert (not bs!1146896))

(assert (not b!4756136))

(assert (not b!4756137))

(assert (not b_lambda!183699))

(assert (not d!1520801))

(assert tp_is_empty!32195)

(assert (not d!1520795))

(assert (not b_lambda!183697))

(assert (not b!4756131))

(assert (not d!1520793))

(assert (not bs!1146897))

(assert (not b!4756110))

(assert (not b!4756126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

