; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87796 () Bool)

(assert start!87796)

(declare-fun b!1014682 () Bool)

(assert (=> b!1014682 true))

(assert (=> b!1014682 true))

(declare-fun b!1014679 () Bool)

(declare-fun res!680909 () Bool)

(declare-fun e!570846 () Bool)

(assert (=> b!1014679 (=> (not res!680909) (not e!570846))))

(declare-datatypes ((B!1442 0))(
  ( (B!1443 (val!11805 Int)) )
))
(declare-datatypes ((tuple2!15246 0))(
  ( (tuple2!15247 (_1!7633 (_ BitVec 64)) (_2!7633 B!1442)) )
))
(declare-datatypes ((List!21556 0))(
  ( (Nil!21553) (Cons!21552 (h!22750 tuple2!15246) (t!30565 List!21556)) )
))
(declare-fun l!412 () List!21556)

(declare-fun value!115 () B!1442)

(assert (=> b!1014679 (= res!680909 (and (not (= (_2!7633 (h!22750 l!412)) value!115)) (is-Cons!21552 l!412)))))

(declare-fun b!1014680 () Bool)

(declare-fun e!570845 () Bool)

(declare-fun head!939 (List!21556) tuple2!15246)

(assert (=> b!1014680 (= e!570845 (bvsge (_1!7633 (h!22750 l!412)) (_1!7633 (head!939 (t!30565 l!412)))))))

(declare-fun b!1014681 () Bool)

(declare-fun e!570848 () Bool)

(assert (=> b!1014681 (= e!570846 e!570848)))

(declare-fun res!680906 () Bool)

(assert (=> b!1014681 (=> (not res!680906) (not e!570848))))

(declare-datatypes ((List!21557 0))(
  ( (Nil!21554) (Cons!21553 (h!22751 (_ BitVec 64)) (t!30566 List!21557)) )
))
(declare-fun lt!448716 () List!21557)

(declare-fun isEmpty!843 (List!21557) Bool)

(assert (=> b!1014681 (= res!680906 (not (isEmpty!843 lt!448716)))))

(declare-fun getKeysOf!52 (List!21556 B!1442) List!21557)

(assert (=> b!1014681 (= lt!448716 (getKeysOf!52 (t!30565 l!412) value!115))))

(declare-fun res!680908 () Bool)

(assert (=> b!1014682 (=> res!680908 e!570845)))

(declare-fun lambda!740 () Int)

(declare-fun forall!247 (List!21557 Int) Bool)

(assert (=> b!1014682 (= res!680908 (not (forall!247 lt!448716 lambda!740)))))

(declare-fun res!680911 () Bool)

(assert (=> start!87796 (=> (not res!680911) (not e!570846))))

(declare-fun isStrictlySorted!575 (List!21556) Bool)

(assert (=> start!87796 (= res!680911 (isStrictlySorted!575 l!412))))

(assert (=> start!87796 e!570846))

(declare-fun e!570847 () Bool)

(assert (=> start!87796 e!570847))

(declare-fun tp_is_empty!23509 () Bool)

(assert (=> start!87796 tp_is_empty!23509))

(declare-fun b!1014683 () Bool)

(declare-fun tp!70557 () Bool)

(assert (=> b!1014683 (= e!570847 (and tp_is_empty!23509 tp!70557))))

(declare-fun b!1014684 () Bool)

(assert (=> b!1014684 (= e!570848 e!570845)))

(declare-fun res!680907 () Bool)

(assert (=> b!1014684 (=> res!680907 e!570845)))

(assert (=> b!1014684 (= res!680907 (not (isStrictlySorted!575 (t!30565 l!412))))))

(declare-fun b!1014685 () Bool)

(declare-fun res!680910 () Bool)

(assert (=> b!1014685 (=> res!680910 e!570845)))

(declare-fun isEmpty!844 (List!21556) Bool)

(assert (=> b!1014685 (= res!680910 (isEmpty!844 (t!30565 l!412)))))

(assert (= (and start!87796 res!680911) b!1014679))

(assert (= (and b!1014679 res!680909) b!1014681))

(assert (= (and b!1014681 res!680906) b!1014684))

(assert (= (and b!1014684 (not res!680907)) b!1014685))

(assert (= (and b!1014685 (not res!680910)) b!1014682))

(assert (= (and b!1014682 (not res!680908)) b!1014680))

(assert (= (and start!87796 (is-Cons!21552 l!412)) b!1014683))

(declare-fun m!937263 () Bool)

(assert (=> start!87796 m!937263))

(declare-fun m!937265 () Bool)

(assert (=> b!1014680 m!937265))

(declare-fun m!937267 () Bool)

(assert (=> b!1014685 m!937267))

(declare-fun m!937269 () Bool)

(assert (=> b!1014681 m!937269))

(declare-fun m!937271 () Bool)

(assert (=> b!1014681 m!937271))

(declare-fun m!937273 () Bool)

(assert (=> b!1014682 m!937273))

(declare-fun m!937275 () Bool)

(assert (=> b!1014684 m!937275))

(push 1)

(assert (not b!1014684))

(assert (not b!1014682))

(assert tp_is_empty!23509)

(assert (not b!1014681))

(assert (not b!1014683))

(assert (not b!1014685))

(assert (not start!87796))

(assert (not b!1014680))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120797 () Bool)

(assert (=> d!120797 (= (head!939 (t!30565 l!412)) (h!22750 (t!30565 l!412)))))

(assert (=> b!1014680 d!120797))

(declare-fun d!120799 () Bool)

(declare-fun res!680970 () Bool)

(declare-fun e!570895 () Bool)

(assert (=> d!120799 (=> res!680970 e!570895)))

(assert (=> d!120799 (= res!680970 (or (is-Nil!21553 l!412) (is-Nil!21553 (t!30565 l!412))))))

(assert (=> d!120799 (= (isStrictlySorted!575 l!412) e!570895)))

(declare-fun b!1014762 () Bool)

(declare-fun e!570896 () Bool)

(assert (=> b!1014762 (= e!570895 e!570896)))

(declare-fun res!680971 () Bool)

(assert (=> b!1014762 (=> (not res!680971) (not e!570896))))

(assert (=> b!1014762 (= res!680971 (bvslt (_1!7633 (h!22750 l!412)) (_1!7633 (h!22750 (t!30565 l!412)))))))

(declare-fun b!1014763 () Bool)

(assert (=> b!1014763 (= e!570896 (isStrictlySorted!575 (t!30565 l!412)))))

(assert (= (and d!120799 (not res!680970)) b!1014762))

(assert (= (and b!1014762 res!680971) b!1014763))

(assert (=> b!1014763 m!937275))

(assert (=> start!87796 d!120799))

(declare-fun d!120805 () Bool)

(assert (=> d!120805 (= (isEmpty!843 lt!448716) (is-Nil!21554 lt!448716))))

(assert (=> b!1014681 d!120805))

(declare-fun bs!29289 () Bool)

(declare-fun b!1014839 () Bool)

(assert (= bs!29289 (and b!1014839 b!1014682)))

(declare-fun lambda!768 () Int)

(declare-fun lt!448827 () tuple2!15246)

(declare-fun lt!448822 () List!21556)

(assert (=> bs!29289 (= (= (Cons!21552 lt!448827 lt!448822) (t!30565 l!412)) (= lambda!768 lambda!740))))

(assert (=> b!1014839 true))

(assert (=> b!1014839 true))

(assert (=> b!1014839 true))

(declare-fun bs!29295 () Bool)

(declare-fun b!1014836 () Bool)

(assert (= bs!29295 (and b!1014836 b!1014682)))

(declare-fun lt!448823 () List!21556)

(declare-fun lt!448819 () tuple2!15246)

(declare-fun lambda!771 () Int)

(assert (=> bs!29295 (= (= (Cons!21552 lt!448819 lt!448823) (t!30565 l!412)) (= lambda!771 lambda!740))))

(declare-fun bs!29296 () Bool)

(assert (= bs!29296 (and b!1014836 b!1014839)))

(assert (=> bs!29296 (= (= (Cons!21552 lt!448819 lt!448823) (Cons!21552 lt!448827 lt!448822)) (= lambda!771 lambda!768))))

(assert (=> b!1014836 true))

(assert (=> b!1014836 true))

(assert (=> b!1014836 true))

(declare-fun bs!29300 () Bool)

(declare-fun d!120807 () Bool)

(assert (= bs!29300 (and d!120807 b!1014682)))

(declare-fun lambda!773 () Int)

(assert (=> bs!29300 (= lambda!773 lambda!740)))

(declare-fun bs!29301 () Bool)

(assert (= bs!29301 (and d!120807 b!1014839)))

(assert (=> bs!29301 (= (= (t!30565 l!412) (Cons!21552 lt!448827 lt!448822)) (= lambda!773 lambda!768))))

(declare-fun bs!29302 () Bool)

(assert (= bs!29302 (and d!120807 b!1014836)))

(assert (=> bs!29302 (= (= (t!30565 l!412) (Cons!21552 lt!448819 lt!448823)) (= lambda!773 lambda!771))))

(assert (=> d!120807 true))

(assert (=> d!120807 true))

(declare-fun b!1014832 () Bool)

(declare-fun e!570930 () List!21557)

(assert (=> b!1014832 (= e!570930 Nil!21554)))

(declare-fun bm!42883 () Bool)

(declare-fun call!42887 () Bool)

(declare-fun call!42889 () List!21557)

(assert (=> bm!42883 (= call!42887 (isEmpty!843 call!42889))))

(declare-fun bm!42884 () Bool)

(assert (=> bm!42884 (= call!42889 (getKeysOf!52 (t!30565 (t!30565 l!412)) value!115))))

(declare-fun b!1014833 () Bool)

(declare-datatypes ((Unit!33152 0))(
  ( (Unit!33153) )
))
(declare-fun e!570929 () Unit!33152)

(declare-fun Unit!33154 () Unit!33152)

(assert (=> b!1014833 (= e!570929 Unit!33154)))

(declare-fun b!1014834 () Bool)

(declare-fun e!570932 () Unit!33152)

(declare-fun Unit!33155 () Unit!33152)

(assert (=> b!1014834 (= e!570932 Unit!33155)))

(declare-fun lt!448828 () List!21557)

(declare-fun c!102738 () Bool)

(declare-fun lt!448829 () List!21557)

(declare-fun call!42886 () Unit!33152)

(declare-fun bm!42885 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!43 (List!21556 List!21557 B!1442 tuple2!15246) Unit!33152)

(assert (=> bm!42885 (= call!42886 (lemmaForallGetValueByKeySameWithASmallerHead!43 (ite c!102738 lt!448822 lt!448823) (ite c!102738 lt!448829 lt!448828) value!115 (ite c!102738 lt!448827 lt!448819)))))

(declare-fun b!1014835 () Bool)

(declare-fun lt!448820 () Unit!33152)

(assert (=> b!1014835 (= lt!448820 e!570929)))

(declare-fun c!102740 () Bool)

(assert (=> b!1014835 (= c!102740 (not call!42887))))

(declare-fun lt!448824 () List!21557)

(assert (=> b!1014835 (= lt!448824 call!42889)))

(assert (=> b!1014835 (= e!570930 call!42889)))

(declare-fun lt!448825 () List!21557)

(assert (=> d!120807 (forall!247 lt!448825 lambda!773)))

(declare-fun e!570931 () List!21557)

(assert (=> d!120807 (= lt!448825 e!570931)))

(assert (=> d!120807 (= c!102738 (and (is-Cons!21552 (t!30565 l!412)) (= (_2!7633 (h!22750 (t!30565 l!412))) value!115)))))

(assert (=> d!120807 (isStrictlySorted!575 (t!30565 l!412))))

(assert (=> d!120807 (= (getKeysOf!52 (t!30565 l!412) value!115) lt!448825)))

(declare-fun call!42888 () Bool)

(declare-fun bm!42886 () Bool)

(assert (=> bm!42886 (= call!42888 (forall!247 (ite c!102738 lt!448829 lt!448828) (ite c!102738 lambda!768 lambda!771)))))

(declare-fun lt!448830 () Unit!33152)

(assert (=> b!1014836 (= e!570929 lt!448830)))

(assert (=> b!1014836 (= lt!448823 (t!30565 (t!30565 l!412)))))

(assert (=> b!1014836 (= lt!448828 call!42889)))

(assert (=> b!1014836 (= lt!448819 (h!22750 (t!30565 l!412)))))

(assert (=> b!1014836 (= lt!448830 call!42886)))

(assert (=> b!1014836 call!42888))

(declare-fun b!1014837 () Bool)

(assert (=> b!1014837 (= e!570931 e!570930)))

(declare-fun c!102741 () Bool)

(assert (=> b!1014837 (= c!102741 (and (is-Cons!21552 (t!30565 l!412)) (not (= (_2!7633 (h!22750 (t!30565 l!412))) value!115))))))

(declare-fun b!1014838 () Bool)

(assert (=> b!1014838 (= e!570931 (Cons!21553 (_1!7633 (h!22750 (t!30565 l!412))) call!42889))))

(declare-fun c!102739 () Bool)

(assert (=> b!1014838 (= c!102739 (not call!42887))))

(declare-fun lt!448826 () Unit!33152)

(assert (=> b!1014838 (= lt!448826 e!570932)))

(assert (=> b!1014839 call!42888))

(declare-fun lt!448821 () Unit!33152)

(assert (=> b!1014839 (= lt!448821 call!42886)))

(assert (=> b!1014839 (= lt!448827 (h!22750 (t!30565 l!412)))))

(assert (=> b!1014839 (= lt!448829 call!42889)))

(assert (=> b!1014839 (= lt!448822 (t!30565 (t!30565 l!412)))))

(assert (=> b!1014839 (= e!570932 lt!448821)))

(assert (= (and d!120807 c!102738) b!1014838))

(assert (= (and d!120807 (not c!102738)) b!1014837))

(assert (= (and b!1014838 c!102739) b!1014839))

(assert (= (and b!1014838 (not c!102739)) b!1014834))

(assert (= (and b!1014837 c!102741) b!1014835))

(assert (= (and b!1014837 (not c!102741)) b!1014832))

(assert (= (and b!1014835 c!102740) b!1014836))

(assert (= (and b!1014835 (not c!102740)) b!1014833))

(assert (= (or b!1014839 b!1014836) bm!42885))

(assert (= (or b!1014839 b!1014836) bm!42886))

(assert (= (or b!1014838 b!1014839 b!1014835 b!1014836) bm!42884))

(assert (= (or b!1014838 b!1014835) bm!42883))

(declare-fun m!937335 () Bool)

(assert (=> d!120807 m!937335))

(assert (=> d!120807 m!937275))

(declare-fun m!937337 () Bool)

(assert (=> bm!42886 m!937337))

(declare-fun m!937339 () Bool)

(assert (=> bm!42885 m!937339))

(declare-fun m!937341 () Bool)

(assert (=> bm!42883 m!937341))

(declare-fun m!937343 () Bool)

(assert (=> bm!42884 m!937343))

(assert (=> b!1014681 d!120807))

(declare-fun d!120813 () Bool)

(declare-fun res!680974 () Bool)

(declare-fun e!570937 () Bool)

(assert (=> d!120813 (=> res!680974 e!570937)))

(assert (=> d!120813 (= res!680974 (or (is-Nil!21553 (t!30565 l!412)) (is-Nil!21553 (t!30565 (t!30565 l!412)))))))

(assert (=> d!120813 (= (isStrictlySorted!575 (t!30565 l!412)) e!570937)))

(declare-fun b!1014848 () Bool)

(declare-fun e!570938 () Bool)

(assert (=> b!1014848 (= e!570937 e!570938)))

(declare-fun res!680975 () Bool)

(assert (=> b!1014848 (=> (not res!680975) (not e!570938))))

(assert (=> b!1014848 (= res!680975 (bvslt (_1!7633 (h!22750 (t!30565 l!412))) (_1!7633 (h!22750 (t!30565 (t!30565 l!412))))))))

(declare-fun b!1014849 () Bool)

(assert (=> b!1014849 (= e!570938 (isStrictlySorted!575 (t!30565 (t!30565 l!412))))))

(assert (= (and d!120813 (not res!680974)) b!1014848))

(assert (= (and b!1014848 res!680975) b!1014849))

(declare-fun m!937345 () Bool)

(assert (=> b!1014849 m!937345))

(assert (=> b!1014684 d!120813))

(declare-fun d!120815 () Bool)

(assert (=> d!120815 (= (isEmpty!844 (t!30565 l!412)) (is-Nil!21553 (t!30565 l!412)))))

(assert (=> b!1014685 d!120815))

(declare-fun d!120819 () Bool)

(declare-fun res!680984 () Bool)

(declare-fun e!570948 () Bool)

(assert (=> d!120819 (=> res!680984 e!570948)))

(assert (=> d!120819 (= res!680984 (is-Nil!21554 lt!448716))))

(assert (=> d!120819 (= (forall!247 lt!448716 lambda!740) e!570948)))

(declare-fun b!1014859 () Bool)

(declare-fun e!570949 () Bool)

(assert (=> b!1014859 (= e!570948 e!570949)))

(declare-fun res!680985 () Bool)

(assert (=> b!1014859 (=> (not res!680985) (not e!570949))))

(declare-fun dynLambda!1896 (Int (_ BitVec 64)) Bool)

(assert (=> b!1014859 (= res!680985 (dynLambda!1896 lambda!740 (h!22751 lt!448716)))))

(declare-fun b!1014860 () Bool)

(assert (=> b!1014860 (= e!570949 (forall!247 (t!30566 lt!448716) lambda!740))))

(assert (= (and d!120819 (not res!680984)) b!1014859))

(assert (= (and b!1014859 res!680985) b!1014860))

(declare-fun b_lambda!15403 () Bool)

(assert (=> (not b_lambda!15403) (not b!1014859)))

(declare-fun m!937349 () Bool)

(assert (=> b!1014859 m!937349))

(declare-fun m!937351 () Bool)

(assert (=> b!1014860 m!937351))

(assert (=> b!1014682 d!120819))

(declare-fun b!1014867 () Bool)

(declare-fun e!570954 () Bool)

(declare-fun tp!70569 () Bool)

(assert (=> b!1014867 (= e!570954 (and tp_is_empty!23509 tp!70569))))

(assert (=> b!1014683 (= tp!70557 e!570954)))

(assert (= (and b!1014683 (is-Cons!21552 (t!30565 l!412))) b!1014867))

(declare-fun b_lambda!15405 () Bool)

(assert (= b_lambda!15403 (or b!1014682 b_lambda!15405)))

(declare-fun bs!29304 () Bool)

(declare-fun d!120821 () Bool)

(assert (= bs!29304 (and d!120821 b!1014682)))

(declare-datatypes ((Option!582 0))(
  ( (Some!581 (v!14430 B!1442)) (None!580) )
))
(declare-fun getValueByKey!531 (List!21556 (_ BitVec 64)) Option!582)

(assert (=> bs!29304 (= (dynLambda!1896 lambda!740 (h!22751 lt!448716)) (= (getValueByKey!531 (t!30565 l!412) (h!22751 lt!448716)) (Some!581 value!115)))))

(declare-fun m!937353 () Bool)

(assert (=> bs!29304 m!937353))

(assert (=> b!1014859 d!120821))

(push 1)

(assert (not bm!42884))

(assert (not b!1014860))

(assert (not d!120807))

(assert tp_is_empty!23509)

(assert (not b!1014763))

(assert (not bm!42886))

(assert (not bm!42883))

(assert (not bm!42885))

(assert (not b!1014867))

(assert (not bs!29304))

(assert (not b!1014849))

(assert (not b_lambda!15405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

