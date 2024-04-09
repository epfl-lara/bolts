; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87330 () Bool)

(assert start!87330)

(declare-fun res!679848 () Bool)

(declare-fun e!569257 () Bool)

(assert (=> start!87330 (=> (not res!679848) (not e!569257))))

(declare-datatypes ((B!1318 0))(
  ( (B!1319 (val!11743 Int)) )
))
(declare-datatypes ((tuple2!15122 0))(
  ( (tuple2!15123 (_1!7571 (_ BitVec 64)) (_2!7571 B!1318)) )
))
(declare-datatypes ((List!21450 0))(
  ( (Nil!21447) (Cons!21446 (h!22644 tuple2!15122) (t!30459 List!21450)) )
))
(declare-fun l!412 () List!21450)

(declare-fun isStrictlySorted!519 (List!21450) Bool)

(assert (=> start!87330 (= res!679848 (isStrictlySorted!519 l!412))))

(assert (=> start!87330 e!569257))

(declare-fun e!569258 () Bool)

(assert (=> start!87330 e!569258))

(declare-fun tp_is_empty!23385 () Bool)

(assert (=> start!87330 tp_is_empty!23385))

(declare-fun b!1011826 () Bool)

(declare-fun res!679849 () Bool)

(assert (=> b!1011826 (=> (not res!679849) (not e!569257))))

(declare-fun value!115 () B!1318)

(get-info :version)

(assert (=> b!1011826 (= res!679849 (and ((_ is Cons!21446) l!412) (= (_2!7571 (h!22644 l!412)) value!115)))))

(declare-fun b!1011828 () Bool)

(assert (=> b!1011828 (= e!569257 (not (isStrictlySorted!519 (t!30459 l!412))))))

(declare-fun b!1011829 () Bool)

(declare-fun tp!70233 () Bool)

(assert (=> b!1011829 (= e!569258 (and tp_is_empty!23385 tp!70233))))

(declare-fun b!1011827 () Bool)

(declare-fun res!679847 () Bool)

(assert (=> b!1011827 (=> (not res!679847) (not e!569257))))

(declare-datatypes ((List!21451 0))(
  ( (Nil!21448) (Cons!21447 (h!22645 (_ BitVec 64)) (t!30460 List!21451)) )
))
(declare-fun isEmpty!780 (List!21451) Bool)

(declare-fun getKeysOf!8 (List!21450 B!1318) List!21451)

(assert (=> b!1011827 (= res!679847 (not (isEmpty!780 (getKeysOf!8 (t!30459 l!412) value!115))))))

(assert (= (and start!87330 res!679848) b!1011826))

(assert (= (and b!1011826 res!679849) b!1011827))

(assert (= (and b!1011827 res!679847) b!1011828))

(assert (= (and start!87330 ((_ is Cons!21446) l!412)) b!1011829))

(declare-fun m!935849 () Bool)

(assert (=> start!87330 m!935849))

(declare-fun m!935851 () Bool)

(assert (=> b!1011828 m!935851))

(declare-fun m!935853 () Bool)

(assert (=> b!1011827 m!935853))

(assert (=> b!1011827 m!935853))

(declare-fun m!935855 () Bool)

(assert (=> b!1011827 m!935855))

(check-sat (not b!1011829) tp_is_empty!23385 (not b!1011828) (not start!87330) (not b!1011827))
(check-sat)
(get-model)

(declare-fun d!120183 () Bool)

(assert (=> d!120183 (= (isEmpty!780 (getKeysOf!8 (t!30459 l!412) value!115)) ((_ is Nil!21448) (getKeysOf!8 (t!30459 l!412) value!115)))))

(assert (=> b!1011827 d!120183))

(declare-fun b!1011912 () Bool)

(assert (=> b!1011912 true))

(assert (=> b!1011912 true))

(assert (=> b!1011912 true))

(declare-fun bs!28746 () Bool)

(declare-fun b!1011917 () Bool)

(assert (= bs!28746 (and b!1011917 b!1011912)))

(declare-fun lambda!261 () Int)

(declare-fun lt!447236 () List!21450)

(declare-fun lt!447258 () List!21450)

(declare-fun lt!447239 () tuple2!15122)

(declare-fun lt!447251 () tuple2!15122)

(declare-fun lambda!264 () Int)

(assert (=> bs!28746 (= (= (Cons!21446 lt!447251 lt!447236) (Cons!21446 lt!447239 lt!447258)) (= lambda!264 lambda!261))))

(assert (=> b!1011917 true))

(assert (=> b!1011917 true))

(assert (=> b!1011917 true))

(declare-fun bs!28748 () Bool)

(declare-fun d!120187 () Bool)

(assert (= bs!28748 (and d!120187 b!1011912)))

(declare-fun lambda!266 () Int)

(assert (=> bs!28748 (= (= (t!30459 l!412) (Cons!21446 lt!447239 lt!447258)) (= lambda!266 lambda!261))))

(declare-fun bs!28749 () Bool)

(assert (= bs!28749 (and d!120187 b!1011917)))

(assert (=> bs!28749 (= (= (t!30459 l!412) (Cons!21446 lt!447251 lt!447236)) (= lambda!266 lambda!264))))

(assert (=> d!120187 true))

(assert (=> d!120187 true))

(declare-fun b!1011907 () Bool)

(declare-datatypes ((Unit!32990 0))(
  ( (Unit!32991) )
))
(declare-fun e!569306 () Unit!32990)

(declare-fun Unit!32992 () Unit!32990)

(assert (=> b!1011907 (= e!569306 Unit!32992)))

(declare-fun bm!42467 () Bool)

(declare-fun call!42471 () List!21451)

(assert (=> bm!42467 (= call!42471 (getKeysOf!8 (t!30459 (t!30459 l!412)) value!115))))

(declare-fun c!102170 () Bool)

(declare-fun lt!447255 () List!21451)

(declare-fun lt!447247 () List!21451)

(declare-fun bm!42469 () Bool)

(declare-fun call!42477 () Unit!32990)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!4 (List!21450 List!21451 B!1318 tuple2!15122) Unit!32990)

(assert (=> bm!42469 (= call!42477 (lemmaForallGetValueByKeySameWithASmallerHead!4 (ite c!102170 lt!447258 lt!447236) (ite c!102170 lt!447255 lt!447247) value!115 (ite c!102170 lt!447239 lt!447251)))))

(declare-fun b!1011910 () Bool)

(declare-fun lt!447242 () Unit!32990)

(assert (=> b!1011910 (= lt!447242 e!569306)))

(declare-fun c!102163 () Bool)

(declare-fun call!42474 () Bool)

(assert (=> b!1011910 (= c!102163 (not call!42474))))

(declare-fun lt!447252 () List!21451)

(assert (=> b!1011910 (= lt!447252 call!42471)))

(declare-fun e!569309 () List!21451)

(assert (=> b!1011910 (= e!569309 call!42471)))

(declare-fun call!42473 () Bool)

(assert (=> b!1011912 call!42473))

(declare-fun lt!447241 () Unit!32990)

(assert (=> b!1011912 (= lt!447241 call!42477)))

(assert (=> b!1011912 (= lt!447239 (h!22644 (t!30459 l!412)))))

(assert (=> b!1011912 (= lt!447255 call!42471)))

(assert (=> b!1011912 (= lt!447258 (t!30459 (t!30459 l!412)))))

(declare-fun e!569310 () Unit!32990)

(assert (=> b!1011912 (= e!569310 lt!447241)))

(declare-fun b!1011913 () Bool)

(declare-fun e!569308 () List!21451)

(assert (=> b!1011913 (= e!569308 e!569309)))

(declare-fun c!102165 () Bool)

(assert (=> b!1011913 (= c!102165 (and ((_ is Cons!21446) (t!30459 l!412)) (not (= (_2!7571 (h!22644 (t!30459 l!412))) value!115))))))

(declare-fun b!1011915 () Bool)

(assert (=> b!1011915 (= e!569309 Nil!21448)))

(declare-fun lt!447256 () List!21451)

(declare-fun forall!204 (List!21451 Int) Bool)

(assert (=> d!120187 (forall!204 lt!447256 lambda!266)))

(assert (=> d!120187 (= lt!447256 e!569308)))

(assert (=> d!120187 (= c!102170 (and ((_ is Cons!21446) (t!30459 l!412)) (= (_2!7571 (h!22644 (t!30459 l!412))) value!115)))))

(assert (=> d!120187 (isStrictlySorted!519 (t!30459 l!412))))

(assert (=> d!120187 (= (getKeysOf!8 (t!30459 l!412) value!115) lt!447256)))

(declare-fun bm!42471 () Bool)

(assert (=> bm!42471 (= call!42473 (forall!204 (ite c!102170 lt!447255 lt!447247) (ite c!102170 lambda!261 lambda!264)))))

(declare-fun lt!447253 () Unit!32990)

(assert (=> b!1011917 (= e!569306 lt!447253)))

(assert (=> b!1011917 (= lt!447236 (t!30459 (t!30459 l!412)))))

(assert (=> b!1011917 (= lt!447247 call!42471)))

(assert (=> b!1011917 (= lt!447251 (h!22644 (t!30459 l!412)))))

(assert (=> b!1011917 (= lt!447253 call!42477)))

(assert (=> b!1011917 call!42473))

(declare-fun b!1011919 () Bool)

(assert (=> b!1011919 (= e!569308 (Cons!21447 (_1!7571 (h!22644 (t!30459 l!412))) call!42471))))

(declare-fun c!102167 () Bool)

(assert (=> b!1011919 (= c!102167 (not call!42474))))

(declare-fun lt!447244 () Unit!32990)

(assert (=> b!1011919 (= lt!447244 e!569310)))

(declare-fun b!1011920 () Bool)

(declare-fun Unit!32997 () Unit!32990)

(assert (=> b!1011920 (= e!569310 Unit!32997)))

(declare-fun bm!42474 () Bool)

(assert (=> bm!42474 (= call!42474 (isEmpty!780 call!42471))))

(assert (= (and d!120187 c!102170) b!1011919))

(assert (= (and d!120187 (not c!102170)) b!1011913))

(assert (= (and b!1011919 c!102167) b!1011912))

(assert (= (and b!1011919 (not c!102167)) b!1011920))

(assert (= (and b!1011913 c!102165) b!1011910))

(assert (= (and b!1011913 (not c!102165)) b!1011915))

(assert (= (and b!1011910 c!102163) b!1011917))

(assert (= (and b!1011910 (not c!102163)) b!1011907))

(assert (= (or b!1011912 b!1011917) bm!42469))

(assert (= (or b!1011912 b!1011917) bm!42471))

(assert (= (or b!1011919 b!1011912 b!1011910 b!1011917) bm!42467))

(assert (= (or b!1011919 b!1011910) bm!42474))

(declare-fun m!935870 () Bool)

(assert (=> bm!42474 m!935870))

(declare-fun m!935873 () Bool)

(assert (=> bm!42471 m!935873))

(declare-fun m!935877 () Bool)

(assert (=> bm!42467 m!935877))

(declare-fun m!935881 () Bool)

(assert (=> bm!42469 m!935881))

(declare-fun m!935885 () Bool)

(assert (=> d!120187 m!935885))

(assert (=> d!120187 m!935851))

(assert (=> b!1011827 d!120187))

(declare-fun d!120203 () Bool)

(declare-fun res!679879 () Bool)

(declare-fun e!569327 () Bool)

(assert (=> d!120203 (=> res!679879 e!569327)))

(assert (=> d!120203 (= res!679879 (or ((_ is Nil!21447) l!412) ((_ is Nil!21447) (t!30459 l!412))))))

(assert (=> d!120203 (= (isStrictlySorted!519 l!412) e!569327)))

(declare-fun b!1011962 () Bool)

(declare-fun e!569328 () Bool)

(assert (=> b!1011962 (= e!569327 e!569328)))

(declare-fun res!679880 () Bool)

(assert (=> b!1011962 (=> (not res!679880) (not e!569328))))

(assert (=> b!1011962 (= res!679880 (bvslt (_1!7571 (h!22644 l!412)) (_1!7571 (h!22644 (t!30459 l!412)))))))

(declare-fun b!1011963 () Bool)

(assert (=> b!1011963 (= e!569328 (isStrictlySorted!519 (t!30459 l!412)))))

(assert (= (and d!120203 (not res!679879)) b!1011962))

(assert (= (and b!1011962 res!679880) b!1011963))

(assert (=> b!1011963 m!935851))

(assert (=> start!87330 d!120203))

(declare-fun d!120205 () Bool)

(declare-fun res!679881 () Bool)

(declare-fun e!569329 () Bool)

(assert (=> d!120205 (=> res!679881 e!569329)))

(assert (=> d!120205 (= res!679881 (or ((_ is Nil!21447) (t!30459 l!412)) ((_ is Nil!21447) (t!30459 (t!30459 l!412)))))))

(assert (=> d!120205 (= (isStrictlySorted!519 (t!30459 l!412)) e!569329)))

(declare-fun b!1011964 () Bool)

(declare-fun e!569330 () Bool)

(assert (=> b!1011964 (= e!569329 e!569330)))

(declare-fun res!679882 () Bool)

(assert (=> b!1011964 (=> (not res!679882) (not e!569330))))

(assert (=> b!1011964 (= res!679882 (bvslt (_1!7571 (h!22644 (t!30459 l!412))) (_1!7571 (h!22644 (t!30459 (t!30459 l!412))))))))

(declare-fun b!1011965 () Bool)

(assert (=> b!1011965 (= e!569330 (isStrictlySorted!519 (t!30459 (t!30459 l!412))))))

(assert (= (and d!120205 (not res!679881)) b!1011964))

(assert (= (and b!1011964 res!679882) b!1011965))

(declare-fun m!935899 () Bool)

(assert (=> b!1011965 m!935899))

(assert (=> b!1011828 d!120205))

(declare-fun b!1011970 () Bool)

(declare-fun e!569333 () Bool)

(declare-fun tp!70245 () Bool)

(assert (=> b!1011970 (= e!569333 (and tp_is_empty!23385 tp!70245))))

(assert (=> b!1011829 (= tp!70233 e!569333)))

(assert (= (and b!1011829 ((_ is Cons!21446) (t!30459 l!412))) b!1011970))

(check-sat (not b!1011963) (not bm!42467) (not bm!42471) (not bm!42474) (not b!1011965) tp_is_empty!23385 (not d!120187) (not bm!42469) (not b!1011970))
(check-sat)
