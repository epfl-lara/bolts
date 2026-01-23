; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486266 () Bool)

(assert start!486266)

(assert (=> start!486266 true))

(declare-fun res!2017715 () Bool)

(declare-fun e!2967006 () Bool)

(assert (=> start!486266 (=> (not res!2017715) (not e!2967006))))

(declare-datatypes ((K!14708 0))(
  ( (K!14709 (val!20037 Int)) )
))
(declare-datatypes ((V!14954 0))(
  ( (V!14955 (val!20038 Int)) )
))
(declare-datatypes ((tuple2!55010 0))(
  ( (tuple2!55011 (_1!30799 K!14708) (_2!30799 V!14954)) )
))
(declare-datatypes ((List!53289 0))(
  ( (Nil!53165) (Cons!53165 (h!59562 tuple2!55010) (t!360633 List!53289)) )
))
(declare-datatypes ((tuple2!55012 0))(
  ( (tuple2!55013 (_1!30800 (_ BitVec 64)) (_2!30800 List!53289)) )
))
(declare-datatypes ((List!53290 0))(
  ( (Nil!53166) (Cons!53166 (h!59563 tuple2!55012) (t!360634 List!53290)) )
))
(declare-fun lml!42 () List!53290)

(declare-fun lambda!223477 () Int)

(declare-fun forall!11793 (List!53290 Int) Bool)

(assert (=> start!486266 (= res!2017715 (forall!11793 lml!42 lambda!223477))))

(assert (=> start!486266 e!2967006))

(declare-fun e!2967007 () Bool)

(assert (=> start!486266 e!2967007))

(assert (=> start!486266 true))

(declare-fun e!2967005 () Bool)

(assert (=> start!486266 e!2967005))

(declare-fun b!4756000 () Bool)

(declare-fun tp!1350898 () Bool)

(declare-fun tp!1350896 () Bool)

(assert (=> b!4756000 (= e!2967007 (and tp!1350898 tp!1350896))))

(declare-fun tp!1350897 () Bool)

(declare-fun tp_is_empty!32187 () Bool)

(declare-fun b!4756001 () Bool)

(declare-fun tp_is_empty!32185 () Bool)

(assert (=> b!4756001 (= e!2967005 (and tp_is_empty!32185 tp_is_empty!32187 tp!1350897))))

(declare-fun b!4755999 () Bool)

(declare-fun size!35987 (List!53290) Int)

(assert (=> b!4755999 (= e!2967006 (< (size!35987 lml!42) 0))))

(declare-fun b!4755998 () Bool)

(declare-fun res!2017714 () Bool)

(assert (=> b!4755998 (=> (not res!2017714) (not e!2967006))))

(declare-fun bucket!42 () List!53289)

(declare-fun hash!422 () (_ BitVec 64))

(declare-fun contains!16590 (List!53290 tuple2!55012) Bool)

(assert (=> b!4755998 (= res!2017714 (contains!16590 lml!42 (tuple2!55013 hash!422 bucket!42)))))

(assert (= (and start!486266 res!2017715) b!4755998))

(assert (= (and b!4755998 res!2017714) b!4755999))

(assert (= (and start!486266 (is-Cons!53166 lml!42)) b!4756000))

(assert (= (and start!486266 (is-Cons!53165 bucket!42)) b!4756001))

(declare-fun m!5726209 () Bool)

(assert (=> start!486266 m!5726209))

(declare-fun m!5726211 () Bool)

(assert (=> b!4755999 m!5726211))

(declare-fun m!5726213 () Bool)

(assert (=> b!4755998 m!5726213))

(push 1)

(assert (not b!4755998))

(assert (not b!4756001))

(assert (not b!4755999))

(assert (not b!4756000))

(assert tp_is_empty!32187)

(assert tp_is_empty!32185)

(assert (not start!486266))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!1922958 () Bool)

(declare-fun d!1520778 () Bool)

(declare-fun content!9569 (List!53290) (Set tuple2!55012))

(assert (=> d!1520778 (= lt!1922958 (set.member (tuple2!55013 hash!422 bucket!42) (content!9569 lml!42)))))

(declare-fun e!2967021 () Bool)

(assert (=> d!1520778 (= lt!1922958 e!2967021)))

(declare-fun res!2017727 () Bool)

(assert (=> d!1520778 (=> (not res!2017727) (not e!2967021))))

(assert (=> d!1520778 (= res!2017727 (is-Cons!53166 lml!42))))

(assert (=> d!1520778 (= (contains!16590 lml!42 (tuple2!55013 hash!422 bucket!42)) lt!1922958)))

(declare-fun b!4756022 () Bool)

(declare-fun e!2967022 () Bool)

(assert (=> b!4756022 (= e!2967021 e!2967022)))

(declare-fun res!2017726 () Bool)

(assert (=> b!4756022 (=> res!2017726 e!2967022)))

(assert (=> b!4756022 (= res!2017726 (= (h!59563 lml!42) (tuple2!55013 hash!422 bucket!42)))))

(declare-fun b!4756023 () Bool)

(assert (=> b!4756023 (= e!2967022 (contains!16590 (t!360634 lml!42) (tuple2!55013 hash!422 bucket!42)))))

(assert (= (and d!1520778 res!2017727) b!4756022))

(assert (= (and b!4756022 (not res!2017726)) b!4756023))

(declare-fun m!5726221 () Bool)

(assert (=> d!1520778 m!5726221))

(declare-fun m!5726223 () Bool)

(assert (=> d!1520778 m!5726223))

(declare-fun m!5726225 () Bool)

(assert (=> b!4756023 m!5726225))

(assert (=> b!4755998 d!1520778))

(declare-fun d!1520780 () Bool)

(declare-fun lt!1922961 () Int)

(assert (=> d!1520780 (>= lt!1922961 0)))

(declare-fun e!2967025 () Int)

(assert (=> d!1520780 (= lt!1922961 e!2967025)))

(declare-fun c!811690 () Bool)

(assert (=> d!1520780 (= c!811690 (is-Nil!53166 lml!42))))

(assert (=> d!1520780 (= (size!35987 lml!42) lt!1922961)))

(declare-fun b!4756028 () Bool)

(assert (=> b!4756028 (= e!2967025 0)))

(declare-fun b!4756029 () Bool)

(assert (=> b!4756029 (= e!2967025 (+ 1 (size!35987 (t!360634 lml!42))))))

(assert (= (and d!1520780 c!811690) b!4756028))

(assert (= (and d!1520780 (not c!811690)) b!4756029))

(declare-fun m!5726227 () Bool)

(assert (=> b!4756029 m!5726227))

(assert (=> b!4755999 d!1520780))

(declare-fun d!1520782 () Bool)

(declare-fun res!2017732 () Bool)

(declare-fun e!2967030 () Bool)

(assert (=> d!1520782 (=> res!2017732 e!2967030)))

(assert (=> d!1520782 (= res!2017732 (is-Nil!53166 lml!42))))

(assert (=> d!1520782 (= (forall!11793 lml!42 lambda!223477) e!2967030)))

(declare-fun b!4756034 () Bool)

(declare-fun e!2967031 () Bool)

(assert (=> b!4756034 (= e!2967030 e!2967031)))

(declare-fun res!2017733 () Bool)

(assert (=> b!4756034 (=> (not res!2017733) (not e!2967031))))

(declare-fun dynLambda!21902 (Int tuple2!55012) Bool)

(assert (=> b!4756034 (= res!2017733 (dynLambda!21902 lambda!223477 (h!59563 lml!42)))))

(declare-fun b!4756035 () Bool)

(assert (=> b!4756035 (= e!2967031 (forall!11793 (t!360634 lml!42) lambda!223477))))

(assert (= (and d!1520782 (not res!2017732)) b!4756034))

(assert (= (and b!4756034 res!2017733) b!4756035))

(declare-fun b_lambda!183685 () Bool)

(assert (=> (not b_lambda!183685) (not b!4756034)))

(declare-fun m!5726229 () Bool)

(assert (=> b!4756034 m!5726229))

(declare-fun m!5726231 () Bool)

(assert (=> b!4756035 m!5726231))

(assert (=> start!486266 d!1520782))

(declare-fun b!4756040 () Bool)

(declare-fun tp!1350910 () Bool)

(declare-fun e!2967034 () Bool)

(assert (=> b!4756040 (= e!2967034 (and tp_is_empty!32185 tp_is_empty!32187 tp!1350910))))

(assert (=> b!4756000 (= tp!1350898 e!2967034)))

(assert (= (and b!4756000 (is-Cons!53165 (_2!30800 (h!59563 lml!42)))) b!4756040))

(declare-fun b!4756045 () Bool)

(declare-fun e!2967037 () Bool)

(declare-fun tp!1350915 () Bool)

(declare-fun tp!1350916 () Bool)

(assert (=> b!4756045 (= e!2967037 (and tp!1350915 tp!1350916))))

(assert (=> b!4756000 (= tp!1350896 e!2967037)))

(assert (= (and b!4756000 (is-Cons!53166 (t!360634 lml!42))) b!4756045))

(declare-fun tp!1350917 () Bool)

(declare-fun b!4756046 () Bool)

(declare-fun e!2967038 () Bool)

(assert (=> b!4756046 (= e!2967038 (and tp_is_empty!32185 tp_is_empty!32187 tp!1350917))))

(assert (=> b!4756001 (= tp!1350897 e!2967038)))

(assert (= (and b!4756001 (is-Cons!53165 (t!360633 bucket!42))) b!4756046))

(declare-fun b_lambda!183687 () Bool)

(assert (= b_lambda!183685 (or start!486266 b_lambda!183687)))

(declare-fun bs!1146892 () Bool)

(declare-fun d!1520786 () Bool)

(assert (= bs!1146892 (and d!1520786 start!486266)))

(declare-datatypes ((Hashable!6452 0))(
  ( (HashableExt!6451 (__x!32155 Int)) )
))
(declare-fun hashF!1442 () Hashable!6452)

(declare-fun allKeysSameHash!1909 (List!53289 (_ BitVec 64) Hashable!6452) Bool)

(assert (=> bs!1146892 (= (dynLambda!21902 lambda!223477 (h!59563 lml!42)) (allKeysSameHash!1909 (_2!30800 (h!59563 lml!42)) (_1!30800 (h!59563 lml!42)) hashF!1442))))

(declare-fun m!5726233 () Bool)

(assert (=> bs!1146892 m!5726233))

(assert (=> b!4756034 d!1520786))

(push 1)

(assert (not b!4756046))

(assert (not bs!1146892))

(assert (not b!4756040))

(assert (not b!4756029))

(assert (not d!1520778))

(assert (not b!4756035))

(assert tp_is_empty!32187)

(assert (not b_lambda!183687))

(assert (not b!4756023))

(assert (not b!4756045))

(assert tp_is_empty!32185)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

