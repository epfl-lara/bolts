; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87798 () Bool)

(assert start!87798)

(declare-fun b!1014710 () Bool)

(assert (=> b!1014710 true))

(assert (=> b!1014710 true))

(declare-fun b!1014704 () Bool)

(declare-fun e!570858 () Bool)

(declare-fun tp_is_empty!23511 () Bool)

(declare-fun tp!70560 () Bool)

(assert (=> b!1014704 (= e!570858 (and tp_is_empty!23511 tp!70560))))

(declare-fun b!1014705 () Bool)

(declare-fun e!570860 () Bool)

(declare-fun e!570857 () Bool)

(assert (=> b!1014705 (= e!570860 e!570857)))

(declare-fun res!680925 () Bool)

(assert (=> b!1014705 (=> (not res!680925) (not e!570857))))

(declare-datatypes ((List!21558 0))(
  ( (Nil!21555) (Cons!21554 (h!22752 (_ BitVec 64)) (t!30567 List!21558)) )
))
(declare-fun lt!448719 () List!21558)

(declare-fun isEmpty!845 (List!21558) Bool)

(assert (=> b!1014705 (= res!680925 (not (isEmpty!845 lt!448719)))))

(declare-datatypes ((B!1444 0))(
  ( (B!1445 (val!11806 Int)) )
))
(declare-datatypes ((tuple2!15248 0))(
  ( (tuple2!15249 (_1!7634 (_ BitVec 64)) (_2!7634 B!1444)) )
))
(declare-datatypes ((List!21559 0))(
  ( (Nil!21556) (Cons!21555 (h!22753 tuple2!15248) (t!30568 List!21559)) )
))
(declare-fun l!412 () List!21559)

(declare-fun value!115 () B!1444)

(declare-fun getKeysOf!53 (List!21559 B!1444) List!21558)

(assert (=> b!1014705 (= lt!448719 (getKeysOf!53 (t!30568 l!412) value!115))))

(declare-fun b!1014706 () Bool)

(declare-fun res!680926 () Bool)

(assert (=> b!1014706 (=> (not res!680926) (not e!570860))))

(get-info :version)

(assert (=> b!1014706 (= res!680926 (and (not (= (_2!7634 (h!22753 l!412)) value!115)) ((_ is Cons!21555) l!412)))))

(declare-fun b!1014707 () Bool)

(declare-fun e!570859 () Bool)

(declare-fun head!940 (List!21559) tuple2!15248)

(assert (=> b!1014707 (= e!570859 (bvsge (_1!7634 (h!22753 l!412)) (_1!7634 (head!940 (t!30568 l!412)))))))

(declare-fun res!680927 () Bool)

(assert (=> start!87798 (=> (not res!680927) (not e!570860))))

(declare-fun isStrictlySorted!576 (List!21559) Bool)

(assert (=> start!87798 (= res!680927 (isStrictlySorted!576 l!412))))

(assert (=> start!87798 e!570860))

(assert (=> start!87798 e!570858))

(assert (=> start!87798 tp_is_empty!23511))

(declare-fun b!1014708 () Bool)

(assert (=> b!1014708 (= e!570857 e!570859)))

(declare-fun res!680929 () Bool)

(assert (=> b!1014708 (=> res!680929 e!570859)))

(assert (=> b!1014708 (= res!680929 (not (isStrictlySorted!576 (t!30568 l!412))))))

(declare-fun b!1014709 () Bool)

(declare-fun res!680928 () Bool)

(assert (=> b!1014709 (=> res!680928 e!570859)))

(declare-fun isEmpty!846 (List!21559) Bool)

(assert (=> b!1014709 (= res!680928 (isEmpty!846 (t!30568 l!412)))))

(declare-fun res!680924 () Bool)

(assert (=> b!1014710 (=> res!680924 e!570859)))

(declare-fun lambda!743 () Int)

(declare-fun forall!248 (List!21558 Int) Bool)

(assert (=> b!1014710 (= res!680924 (not (forall!248 lt!448719 lambda!743)))))

(assert (= (and start!87798 res!680927) b!1014706))

(assert (= (and b!1014706 res!680926) b!1014705))

(assert (= (and b!1014705 res!680925) b!1014708))

(assert (= (and b!1014708 (not res!680929)) b!1014709))

(assert (= (and b!1014709 (not res!680928)) b!1014710))

(assert (= (and b!1014710 (not res!680924)) b!1014707))

(assert (= (and start!87798 ((_ is Cons!21555) l!412)) b!1014704))

(declare-fun m!937277 () Bool)

(assert (=> start!87798 m!937277))

(declare-fun m!937279 () Bool)

(assert (=> b!1014708 m!937279))

(declare-fun m!937281 () Bool)

(assert (=> b!1014709 m!937281))

(declare-fun m!937283 () Bool)

(assert (=> b!1014705 m!937283))

(declare-fun m!937285 () Bool)

(assert (=> b!1014705 m!937285))

(declare-fun m!937287 () Bool)

(assert (=> b!1014710 m!937287))

(declare-fun m!937289 () Bool)

(assert (=> b!1014707 m!937289))

(check-sat (not b!1014704) (not b!1014708) (not b!1014709) (not b!1014705) tp_is_empty!23511 (not start!87798) (not b!1014710) (not b!1014707))
(check-sat)
(get-model)

(declare-fun d!120785 () Bool)

(declare-fun res!680958 () Bool)

(declare-fun e!570883 () Bool)

(assert (=> d!120785 (=> res!680958 e!570883)))

(assert (=> d!120785 (= res!680958 (or ((_ is Nil!21556) (t!30568 l!412)) ((_ is Nil!21556) (t!30568 (t!30568 l!412)))))))

(assert (=> d!120785 (= (isStrictlySorted!576 (t!30568 l!412)) e!570883)))

(declare-fun b!1014750 () Bool)

(declare-fun e!570884 () Bool)

(assert (=> b!1014750 (= e!570883 e!570884)))

(declare-fun res!680959 () Bool)

(assert (=> b!1014750 (=> (not res!680959) (not e!570884))))

(assert (=> b!1014750 (= res!680959 (bvslt (_1!7634 (h!22753 (t!30568 l!412))) (_1!7634 (h!22753 (t!30568 (t!30568 l!412))))))))

(declare-fun b!1014751 () Bool)

(assert (=> b!1014751 (= e!570884 (isStrictlySorted!576 (t!30568 (t!30568 l!412))))))

(assert (= (and d!120785 (not res!680958)) b!1014750))

(assert (= (and b!1014750 res!680959) b!1014751))

(declare-fun m!937309 () Bool)

(assert (=> b!1014751 m!937309))

(assert (=> b!1014708 d!120785))

(declare-fun d!120789 () Bool)

(assert (=> d!120789 (= (isEmpty!846 (t!30568 l!412)) ((_ is Nil!21556) (t!30568 l!412)))))

(assert (=> b!1014709 d!120789))

(declare-fun d!120793 () Bool)

(assert (=> d!120793 (= (head!940 (t!30568 l!412)) (h!22753 (t!30568 l!412)))))

(assert (=> b!1014707 d!120793))

(declare-fun d!120795 () Bool)

(declare-fun res!680964 () Bool)

(declare-fun e!570889 () Bool)

(assert (=> d!120795 (=> res!680964 e!570889)))

(assert (=> d!120795 (= res!680964 ((_ is Nil!21555) lt!448719))))

(assert (=> d!120795 (= (forall!248 lt!448719 lambda!743) e!570889)))

(declare-fun b!1014756 () Bool)

(declare-fun e!570890 () Bool)

(assert (=> b!1014756 (= e!570889 e!570890)))

(declare-fun res!680965 () Bool)

(assert (=> b!1014756 (=> (not res!680965) (not e!570890))))

(declare-fun dynLambda!1894 (Int (_ BitVec 64)) Bool)

(assert (=> b!1014756 (= res!680965 (dynLambda!1894 lambda!743 (h!22752 lt!448719)))))

(declare-fun b!1014757 () Bool)

(assert (=> b!1014757 (= e!570890 (forall!248 (t!30567 lt!448719) lambda!743))))

(assert (= (and d!120795 (not res!680964)) b!1014756))

(assert (= (and b!1014756 res!680965) b!1014757))

(declare-fun b_lambda!15399 () Bool)

(assert (=> (not b_lambda!15399) (not b!1014756)))

(declare-fun m!937311 () Bool)

(assert (=> b!1014756 m!937311))

(declare-fun m!937313 () Bool)

(assert (=> b!1014757 m!937313))

(assert (=> b!1014710 d!120795))

(declare-fun d!120801 () Bool)

(assert (=> d!120801 (= (isEmpty!845 lt!448719) ((_ is Nil!21555) lt!448719))))

(assert (=> b!1014705 d!120801))

(declare-fun bs!29288 () Bool)

(declare-fun b!1014822 () Bool)

(assert (= bs!29288 (and b!1014822 b!1014710)))

(declare-fun lt!448807 () tuple2!15248)

(declare-fun lt!448816 () List!21559)

(declare-fun lambda!767 () Int)

(assert (=> bs!29288 (= (= (Cons!21555 lt!448807 lt!448816) (t!30568 l!412)) (= lambda!767 lambda!743))))

(assert (=> b!1014822 true))

(assert (=> b!1014822 true))

(assert (=> b!1014822 true))

(declare-fun bs!29290 () Bool)

(declare-fun b!1014824 () Bool)

(assert (= bs!29290 (and b!1014824 b!1014710)))

(declare-fun lambda!770 () Int)

(declare-fun lt!448810 () List!21559)

(declare-fun lt!448808 () tuple2!15248)

(assert (=> bs!29290 (= (= (Cons!21555 lt!448808 lt!448810) (t!30568 l!412)) (= lambda!770 lambda!743))))

(declare-fun bs!29292 () Bool)

(assert (= bs!29292 (and b!1014824 b!1014822)))

(assert (=> bs!29292 (= (= (Cons!21555 lt!448808 lt!448810) (Cons!21555 lt!448807 lt!448816)) (= lambda!770 lambda!767))))

(assert (=> b!1014824 true))

(assert (=> b!1014824 true))

(assert (=> b!1014824 true))

(declare-fun bs!29297 () Bool)

(declare-fun d!120803 () Bool)

(assert (= bs!29297 (and d!120803 b!1014710)))

(declare-fun lambda!772 () Int)

(assert (=> bs!29297 (= lambda!772 lambda!743)))

(declare-fun bs!29298 () Bool)

(assert (= bs!29298 (and d!120803 b!1014822)))

(assert (=> bs!29298 (= (= (t!30568 l!412) (Cons!21555 lt!448807 lt!448816)) (= lambda!772 lambda!767))))

(declare-fun bs!29299 () Bool)

(assert (= bs!29299 (and d!120803 b!1014824)))

(assert (=> bs!29299 (= (= (t!30568 l!412) (Cons!21555 lt!448808 lt!448810)) (= lambda!772 lambda!770))))

(assert (=> d!120803 true))

(assert (=> d!120803 true))

(declare-fun call!42883 () Bool)

(declare-fun bm!42879 () Bool)

(declare-fun lt!448809 () List!21558)

(declare-fun c!102736 () Bool)

(declare-fun lt!448812 () List!21558)

(assert (=> bm!42879 (= call!42883 (forall!248 (ite c!102736 lt!448809 lt!448812) (ite c!102736 lambda!767 lambda!770)))))

(declare-datatypes ((Unit!33150 0))(
  ( (Unit!33151) )
))
(declare-fun call!42885 () Unit!33150)

(declare-fun bm!42880 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!42 (List!21559 List!21558 B!1444 tuple2!15248) Unit!33150)

(assert (=> bm!42880 (= call!42885 (lemmaForallGetValueByKeySameWithASmallerHead!42 (ite c!102736 lt!448816 lt!448810) (ite c!102736 lt!448809 lt!448812) value!115 (ite c!102736 lt!448807 lt!448808)))))

(assert (=> b!1014822 call!42883))

(declare-fun lt!448813 () Unit!33150)

(assert (=> b!1014822 (= lt!448813 call!42885)))

(assert (=> b!1014822 (= lt!448807 (h!22753 (t!30568 l!412)))))

(declare-fun call!42882 () List!21558)

(assert (=> b!1014822 (= lt!448809 call!42882)))

(assert (=> b!1014822 (= lt!448816 (t!30568 (t!30568 l!412)))))

(declare-fun e!570926 () Unit!33150)

(assert (=> b!1014822 (= e!570926 lt!448813)))

(declare-fun b!1014823 () Bool)

(declare-fun e!570925 () List!21558)

(declare-fun e!570927 () List!21558)

(assert (=> b!1014823 (= e!570925 e!570927)))

(declare-fun c!102735 () Bool)

(assert (=> b!1014823 (= c!102735 (and ((_ is Cons!21555) (t!30568 l!412)) (not (= (_2!7634 (h!22753 (t!30568 l!412))) value!115))))))

(declare-fun e!570928 () Unit!33150)

(declare-fun lt!448811 () Unit!33150)

(assert (=> b!1014824 (= e!570928 lt!448811)))

(assert (=> b!1014824 (= lt!448810 (t!30568 (t!30568 l!412)))))

(assert (=> b!1014824 (= lt!448812 call!42882)))

(assert (=> b!1014824 (= lt!448808 (h!22753 (t!30568 l!412)))))

(assert (=> b!1014824 (= lt!448811 call!42885)))

(assert (=> b!1014824 call!42883))

(declare-fun b!1014825 () Bool)

(assert (=> b!1014825 (= e!570927 Nil!21555)))

(declare-fun bm!42881 () Bool)

(assert (=> bm!42881 (= call!42882 (getKeysOf!53 (t!30568 (t!30568 l!412)) value!115))))

(declare-fun b!1014826 () Bool)

(declare-fun lt!448815 () Unit!33150)

(assert (=> b!1014826 (= lt!448815 e!570928)))

(declare-fun c!102734 () Bool)

(declare-fun call!42884 () Bool)

(assert (=> b!1014826 (= c!102734 (not call!42884))))

(declare-fun lt!448818 () List!21558)

(assert (=> b!1014826 (= lt!448818 call!42882)))

(assert (=> b!1014826 (= e!570927 call!42882)))

(declare-fun lt!448814 () List!21558)

(assert (=> d!120803 (forall!248 lt!448814 lambda!772)))

(assert (=> d!120803 (= lt!448814 e!570925)))

(assert (=> d!120803 (= c!102736 (and ((_ is Cons!21555) (t!30568 l!412)) (= (_2!7634 (h!22753 (t!30568 l!412))) value!115)))))

(assert (=> d!120803 (isStrictlySorted!576 (t!30568 l!412))))

(assert (=> d!120803 (= (getKeysOf!53 (t!30568 l!412) value!115) lt!448814)))

(declare-fun b!1014827 () Bool)

(declare-fun Unit!33156 () Unit!33150)

(assert (=> b!1014827 (= e!570928 Unit!33156)))

(declare-fun bm!42882 () Bool)

(assert (=> bm!42882 (= call!42884 (isEmpty!845 call!42882))))

(declare-fun b!1014828 () Bool)

(assert (=> b!1014828 (= e!570925 (Cons!21554 (_1!7634 (h!22753 (t!30568 l!412))) call!42882))))

(declare-fun c!102737 () Bool)

(assert (=> b!1014828 (= c!102737 (not call!42884))))

(declare-fun lt!448817 () Unit!33150)

(assert (=> b!1014828 (= lt!448817 e!570926)))

(declare-fun b!1014829 () Bool)

(declare-fun Unit!33159 () Unit!33150)

(assert (=> b!1014829 (= e!570926 Unit!33159)))

(assert (= (and d!120803 c!102736) b!1014828))

(assert (= (and d!120803 (not c!102736)) b!1014823))

(assert (= (and b!1014828 c!102737) b!1014822))

(assert (= (and b!1014828 (not c!102737)) b!1014829))

(assert (= (and b!1014823 c!102735) b!1014826))

(assert (= (and b!1014823 (not c!102735)) b!1014825))

(assert (= (and b!1014826 c!102734) b!1014824))

(assert (= (and b!1014826 (not c!102734)) b!1014827))

(assert (= (or b!1014822 b!1014824) bm!42880))

(assert (= (or b!1014822 b!1014824) bm!42879))

(assert (= (or b!1014828 b!1014822 b!1014826 b!1014824) bm!42881))

(assert (= (or b!1014828 b!1014826) bm!42882))

(declare-fun m!937315 () Bool)

(assert (=> bm!42880 m!937315))

(declare-fun m!937317 () Bool)

(assert (=> bm!42881 m!937317))

(declare-fun m!937319 () Bool)

(assert (=> bm!42882 m!937319))

(declare-fun m!937323 () Bool)

(assert (=> bm!42879 m!937323))

(declare-fun m!937325 () Bool)

(assert (=> d!120803 m!937325))

(assert (=> d!120803 m!937279))

(assert (=> b!1014705 d!120803))

(declare-fun d!120809 () Bool)

(declare-fun res!680972 () Bool)

(declare-fun e!570933 () Bool)

(assert (=> d!120809 (=> res!680972 e!570933)))

(assert (=> d!120809 (= res!680972 (or ((_ is Nil!21556) l!412) ((_ is Nil!21556) (t!30568 l!412))))))

(assert (=> d!120809 (= (isStrictlySorted!576 l!412) e!570933)))

(declare-fun b!1014842 () Bool)

(declare-fun e!570934 () Bool)

(assert (=> b!1014842 (= e!570933 e!570934)))

(declare-fun res!680973 () Bool)

(assert (=> b!1014842 (=> (not res!680973) (not e!570934))))

(assert (=> b!1014842 (= res!680973 (bvslt (_1!7634 (h!22753 l!412)) (_1!7634 (h!22753 (t!30568 l!412)))))))

(declare-fun b!1014843 () Bool)

(assert (=> b!1014843 (= e!570934 (isStrictlySorted!576 (t!30568 l!412)))))

(assert (= (and d!120809 (not res!680972)) b!1014842))

(assert (= (and b!1014842 res!680973) b!1014843))

(assert (=> b!1014843 m!937279))

(assert (=> start!87798 d!120809))

(declare-fun b!1014850 () Bool)

(declare-fun e!570939 () Bool)

(declare-fun tp!70566 () Bool)

(assert (=> b!1014850 (= e!570939 (and tp_is_empty!23511 tp!70566))))

(assert (=> b!1014704 (= tp!70560 e!570939)))

(assert (= (and b!1014704 ((_ is Cons!21555) (t!30568 l!412))) b!1014850))

(declare-fun b_lambda!15401 () Bool)

(assert (= b_lambda!15399 (or b!1014710 b_lambda!15401)))

(declare-fun bs!29303 () Bool)

(declare-fun d!120817 () Bool)

(assert (= bs!29303 (and d!120817 b!1014710)))

(declare-datatypes ((Option!581 0))(
  ( (Some!580 (v!14429 B!1444)) (None!579) )
))
(declare-fun getValueByKey!530 (List!21559 (_ BitVec 64)) Option!581)

(assert (=> bs!29303 (= (dynLambda!1894 lambda!743 (h!22752 lt!448719)) (= (getValueByKey!530 (t!30568 l!412) (h!22752 lt!448719)) (Some!580 value!115)))))

(declare-fun m!937347 () Bool)

(assert (=> bs!29303 m!937347))

(assert (=> b!1014756 d!120817))

(check-sat (not b!1014843) (not bm!42879) (not d!120803) (not bm!42880) (not bm!42881) (not b!1014751) tp_is_empty!23511 (not bm!42882) (not bs!29303) (not b!1014850) (not b!1014757) (not b_lambda!15401))
(check-sat)
