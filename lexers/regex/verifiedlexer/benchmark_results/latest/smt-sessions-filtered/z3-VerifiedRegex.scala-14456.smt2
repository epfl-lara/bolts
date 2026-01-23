; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752872 () Bool)

(assert start!752872)

(declare-fun b!8002038 () Bool)

(declare-fun res!3164369 () Bool)

(declare-fun e!4713862 () Bool)

(assert (=> b!8002038 (=> (not res!3164369) (not e!4713862))))

(declare-datatypes ((C!43524 0))(
  ( (C!43525 (val!32310 Int)) )
))
(declare-datatypes ((List!74822 0))(
  ( (Nil!74698) (Cons!74698 (h!81146 C!43524) (t!390565 List!74822)) )
))
(declare-fun input!8006 () List!74822)

(get-info :version)

(assert (=> b!8002038 (= res!3164369 (not ((_ is Cons!74698) input!8006)))))

(declare-fun b!8002039 () Bool)

(declare-fun e!4713861 () Bool)

(declare-fun tp_is_empty!53729 () Bool)

(assert (=> b!8002039 (= e!4713861 tp_is_empty!53729)))

(declare-fun b!8002040 () Bool)

(declare-fun tp!2393708 () Bool)

(declare-fun tp!2393705 () Bool)

(assert (=> b!8002040 (= e!4713861 (and tp!2393708 tp!2393705))))

(declare-fun b!8002041 () Bool)

(declare-datatypes ((Regex!21593 0))(
  ( (ElementMatch!21593 (c!1469198 C!43524)) (Concat!30592 (regOne!43698 Regex!21593) (regTwo!43698 Regex!21593)) (EmptyExpr!21593) (Star!21593 (reg!21922 Regex!21593)) (EmptyLang!21593) (Union!21593 (regOne!43699 Regex!21593) (regTwo!43699 Regex!21593)) )
))
(declare-fun r!24748 () Regex!21593)

(declare-fun matchR!10772 (Regex!21593 List!74822) Bool)

(declare-fun derivative!773 (Regex!21593 List!74822) Regex!21593)

(assert (=> b!8002041 (= e!4713862 (not (= (matchR!10772 r!24748 input!8006) (matchR!10772 (derivative!773 r!24748 input!8006) Nil!74698))))))

(declare-fun res!3164370 () Bool)

(assert (=> start!752872 (=> (not res!3164370) (not e!4713862))))

(declare-fun validRegex!11897 (Regex!21593) Bool)

(assert (=> start!752872 (= res!3164370 (validRegex!11897 r!24748))))

(assert (=> start!752872 e!4713862))

(assert (=> start!752872 e!4713861))

(declare-fun e!4713863 () Bool)

(assert (=> start!752872 e!4713863))

(declare-fun b!8002042 () Bool)

(declare-fun tp!2393709 () Bool)

(assert (=> b!8002042 (= e!4713861 tp!2393709)))

(declare-fun b!8002043 () Bool)

(declare-fun tp!2393707 () Bool)

(declare-fun tp!2393710 () Bool)

(assert (=> b!8002043 (= e!4713861 (and tp!2393707 tp!2393710))))

(declare-fun b!8002044 () Bool)

(declare-fun tp!2393706 () Bool)

(assert (=> b!8002044 (= e!4713863 (and tp_is_empty!53729 tp!2393706))))

(assert (= (and start!752872 res!3164370) b!8002038))

(assert (= (and b!8002038 res!3164369) b!8002041))

(assert (= (and start!752872 ((_ is ElementMatch!21593) r!24748)) b!8002039))

(assert (= (and start!752872 ((_ is Concat!30592) r!24748)) b!8002040))

(assert (= (and start!752872 ((_ is Star!21593) r!24748)) b!8002042))

(assert (= (and start!752872 ((_ is Union!21593) r!24748)) b!8002043))

(assert (= (and start!752872 ((_ is Cons!74698) input!8006)) b!8002044))

(declare-fun m!8369030 () Bool)

(assert (=> b!8002041 m!8369030))

(declare-fun m!8369032 () Bool)

(assert (=> b!8002041 m!8369032))

(assert (=> b!8002041 m!8369032))

(declare-fun m!8369034 () Bool)

(assert (=> b!8002041 m!8369034))

(declare-fun m!8369036 () Bool)

(assert (=> start!752872 m!8369036))

(check-sat tp_is_empty!53729 (not b!8002044) (not b!8002041) (not b!8002042) (not start!752872) (not b!8002043) (not b!8002040))
(check-sat)
(get-model)

(declare-fun b!8002090 () Bool)

(declare-fun e!4713901 () Bool)

(declare-fun call!743505 () Bool)

(assert (=> b!8002090 (= e!4713901 call!743505)))

(declare-fun b!8002091 () Bool)

(declare-fun e!4713905 () Bool)

(assert (=> b!8002091 (= e!4713905 e!4713901)))

(declare-fun res!3164396 () Bool)

(declare-fun nullable!9674 (Regex!21593) Bool)

(assert (=> b!8002091 (= res!3164396 (not (nullable!9674 (reg!21922 r!24748))))))

(assert (=> b!8002091 (=> (not res!3164396) (not e!4713901))))

(declare-fun b!8002092 () Bool)

(declare-fun e!4713900 () Bool)

(declare-fun call!743506 () Bool)

(assert (=> b!8002092 (= e!4713900 call!743506)))

(declare-fun b!8002093 () Bool)

(declare-fun e!4713899 () Bool)

(assert (=> b!8002093 (= e!4713899 e!4713905)))

(declare-fun c!1469209 () Bool)

(assert (=> b!8002093 (= c!1469209 ((_ is Star!21593) r!24748))))

(declare-fun b!8002094 () Bool)

(declare-fun res!3164400 () Bool)

(assert (=> b!8002094 (=> (not res!3164400) (not e!4713900))))

(declare-fun call!743504 () Bool)

(assert (=> b!8002094 (= res!3164400 call!743504)))

(declare-fun e!4713904 () Bool)

(assert (=> b!8002094 (= e!4713904 e!4713900)))

(declare-fun bm!743499 () Bool)

(assert (=> bm!743499 (= call!743504 call!743505)))

(declare-fun bm!743500 () Bool)

(declare-fun c!1469210 () Bool)

(assert (=> bm!743500 (= call!743506 (validRegex!11897 (ite c!1469210 (regTwo!43699 r!24748) (regOne!43698 r!24748))))))

(declare-fun b!8002095 () Bool)

(assert (=> b!8002095 (= e!4713905 e!4713904)))

(assert (=> b!8002095 (= c!1469210 ((_ is Union!21593) r!24748))))

(declare-fun b!8002096 () Bool)

(declare-fun res!3164399 () Bool)

(declare-fun e!4713902 () Bool)

(assert (=> b!8002096 (=> res!3164399 e!4713902)))

(assert (=> b!8002096 (= res!3164399 (not ((_ is Concat!30592) r!24748)))))

(assert (=> b!8002096 (= e!4713904 e!4713902)))

(declare-fun d!2386899 () Bool)

(declare-fun res!3164397 () Bool)

(assert (=> d!2386899 (=> res!3164397 e!4713899)))

(assert (=> d!2386899 (= res!3164397 ((_ is ElementMatch!21593) r!24748))))

(assert (=> d!2386899 (= (validRegex!11897 r!24748) e!4713899)))

(declare-fun b!8002097 () Bool)

(declare-fun e!4713903 () Bool)

(assert (=> b!8002097 (= e!4713902 e!4713903)))

(declare-fun res!3164398 () Bool)

(assert (=> b!8002097 (=> (not res!3164398) (not e!4713903))))

(assert (=> b!8002097 (= res!3164398 call!743506)))

(declare-fun bm!743501 () Bool)

(assert (=> bm!743501 (= call!743505 (validRegex!11897 (ite c!1469209 (reg!21922 r!24748) (ite c!1469210 (regOne!43699 r!24748) (regTwo!43698 r!24748)))))))

(declare-fun b!8002098 () Bool)

(assert (=> b!8002098 (= e!4713903 call!743504)))

(assert (= (and d!2386899 (not res!3164397)) b!8002093))

(assert (= (and b!8002093 c!1469209) b!8002091))

(assert (= (and b!8002093 (not c!1469209)) b!8002095))

(assert (= (and b!8002091 res!3164396) b!8002090))

(assert (= (and b!8002095 c!1469210) b!8002094))

(assert (= (and b!8002095 (not c!1469210)) b!8002096))

(assert (= (and b!8002094 res!3164400) b!8002092))

(assert (= (and b!8002096 (not res!3164399)) b!8002097))

(assert (= (and b!8002097 res!3164398) b!8002098))

(assert (= (or b!8002092 b!8002097) bm!743500))

(assert (= (or b!8002094 b!8002098) bm!743499))

(assert (= (or b!8002090 bm!743499) bm!743501))

(declare-fun m!8369044 () Bool)

(assert (=> b!8002091 m!8369044))

(declare-fun m!8369046 () Bool)

(assert (=> bm!743500 m!8369046))

(declare-fun m!8369048 () Bool)

(assert (=> bm!743501 m!8369048))

(assert (=> start!752872 d!2386899))

(declare-fun b!8002169 () Bool)

(declare-fun e!4713946 () Bool)

(declare-fun e!4713943 () Bool)

(assert (=> b!8002169 (= e!4713946 e!4713943)))

(declare-fun res!3164446 () Bool)

(assert (=> b!8002169 (=> (not res!3164446) (not e!4713943))))

(declare-fun lt!2713781 () Bool)

(assert (=> b!8002169 (= res!3164446 (not lt!2713781))))

(declare-fun b!8002170 () Bool)

(declare-fun e!4713944 () Bool)

(assert (=> b!8002170 (= e!4713944 (nullable!9674 r!24748))))

(declare-fun b!8002171 () Bool)

(declare-fun e!4713945 () Bool)

(declare-fun e!4713947 () Bool)

(assert (=> b!8002171 (= e!4713945 e!4713947)))

(declare-fun c!1469227 () Bool)

(assert (=> b!8002171 (= c!1469227 ((_ is EmptyLang!21593) r!24748))))

(declare-fun b!8002172 () Bool)

(declare-fun res!3164444 () Bool)

(assert (=> b!8002172 (=> res!3164444 e!4713946)))

(assert (=> b!8002172 (= res!3164444 (not ((_ is ElementMatch!21593) r!24748)))))

(assert (=> b!8002172 (= e!4713947 e!4713946)))

(declare-fun b!8002173 () Bool)

(declare-fun res!3164441 () Bool)

(declare-fun e!4713941 () Bool)

(assert (=> b!8002173 (=> (not res!3164441) (not e!4713941))))

(declare-fun isEmpty!42971 (List!74822) Bool)

(declare-fun tail!15832 (List!74822) List!74822)

(assert (=> b!8002173 (= res!3164441 (isEmpty!42971 (tail!15832 input!8006)))))

(declare-fun b!8002175 () Bool)

(declare-fun res!3164443 () Bool)

(assert (=> b!8002175 (=> (not res!3164443) (not e!4713941))))

(declare-fun call!743512 () Bool)

(assert (=> b!8002175 (= res!3164443 (not call!743512))))

(declare-fun bm!743507 () Bool)

(assert (=> bm!743507 (= call!743512 (isEmpty!42971 input!8006))))

(declare-fun b!8002176 () Bool)

(declare-fun e!4713942 () Bool)

(assert (=> b!8002176 (= e!4713943 e!4713942)))

(declare-fun res!3164448 () Bool)

(assert (=> b!8002176 (=> res!3164448 e!4713942)))

(assert (=> b!8002176 (= res!3164448 call!743512)))

(declare-fun b!8002177 () Bool)

(declare-fun derivativeStep!6608 (Regex!21593 C!43524) Regex!21593)

(declare-fun head!16305 (List!74822) C!43524)

(assert (=> b!8002177 (= e!4713944 (matchR!10772 (derivativeStep!6608 r!24748 (head!16305 input!8006)) (tail!15832 input!8006)))))

(declare-fun b!8002174 () Bool)

(assert (=> b!8002174 (= e!4713947 (not lt!2713781))))

(declare-fun d!2386903 () Bool)

(assert (=> d!2386903 e!4713945))

(declare-fun c!1469226 () Bool)

(assert (=> d!2386903 (= c!1469226 ((_ is EmptyExpr!21593) r!24748))))

(assert (=> d!2386903 (= lt!2713781 e!4713944)))

(declare-fun c!1469228 () Bool)

(assert (=> d!2386903 (= c!1469228 (isEmpty!42971 input!8006))))

(assert (=> d!2386903 (validRegex!11897 r!24748)))

(assert (=> d!2386903 (= (matchR!10772 r!24748 input!8006) lt!2713781)))

(declare-fun b!8002178 () Bool)

(assert (=> b!8002178 (= e!4713945 (= lt!2713781 call!743512))))

(declare-fun b!8002179 () Bool)

(declare-fun res!3164442 () Bool)

(assert (=> b!8002179 (=> res!3164442 e!4713942)))

(assert (=> b!8002179 (= res!3164442 (not (isEmpty!42971 (tail!15832 input!8006))))))

(declare-fun b!8002180 () Bool)

(assert (=> b!8002180 (= e!4713941 (= (head!16305 input!8006) (c!1469198 r!24748)))))

(declare-fun b!8002181 () Bool)

(declare-fun res!3164447 () Bool)

(assert (=> b!8002181 (=> res!3164447 e!4713946)))

(assert (=> b!8002181 (= res!3164447 e!4713941)))

(declare-fun res!3164445 () Bool)

(assert (=> b!8002181 (=> (not res!3164445) (not e!4713941))))

(assert (=> b!8002181 (= res!3164445 lt!2713781)))

(declare-fun b!8002182 () Bool)

(assert (=> b!8002182 (= e!4713942 (not (= (head!16305 input!8006) (c!1469198 r!24748))))))

(assert (= (and d!2386903 c!1469228) b!8002170))

(assert (= (and d!2386903 (not c!1469228)) b!8002177))

(assert (= (and d!2386903 c!1469226) b!8002178))

(assert (= (and d!2386903 (not c!1469226)) b!8002171))

(assert (= (and b!8002171 c!1469227) b!8002174))

(assert (= (and b!8002171 (not c!1469227)) b!8002172))

(assert (= (and b!8002172 (not res!3164444)) b!8002181))

(assert (= (and b!8002181 res!3164445) b!8002175))

(assert (= (and b!8002175 res!3164443) b!8002173))

(assert (= (and b!8002173 res!3164441) b!8002180))

(assert (= (and b!8002181 (not res!3164447)) b!8002169))

(assert (= (and b!8002169 res!3164446) b!8002176))

(assert (= (and b!8002176 (not res!3164448)) b!8002179))

(assert (= (and b!8002179 (not res!3164442)) b!8002182))

(assert (= (or b!8002178 b!8002175 b!8002176) bm!743507))

(declare-fun m!8369064 () Bool)

(assert (=> b!8002182 m!8369064))

(declare-fun m!8369066 () Bool)

(assert (=> b!8002170 m!8369066))

(declare-fun m!8369068 () Bool)

(assert (=> b!8002179 m!8369068))

(assert (=> b!8002179 m!8369068))

(declare-fun m!8369070 () Bool)

(assert (=> b!8002179 m!8369070))

(assert (=> b!8002180 m!8369064))

(assert (=> b!8002173 m!8369068))

(assert (=> b!8002173 m!8369068))

(assert (=> b!8002173 m!8369070))

(declare-fun m!8369072 () Bool)

(assert (=> bm!743507 m!8369072))

(assert (=> d!2386903 m!8369072))

(assert (=> d!2386903 m!8369036))

(assert (=> b!8002177 m!8369064))

(assert (=> b!8002177 m!8369064))

(declare-fun m!8369074 () Bool)

(assert (=> b!8002177 m!8369074))

(assert (=> b!8002177 m!8369068))

(assert (=> b!8002177 m!8369074))

(assert (=> b!8002177 m!8369068))

(declare-fun m!8369076 () Bool)

(assert (=> b!8002177 m!8369076))

(assert (=> b!8002041 d!2386903))

(declare-fun b!8002197 () Bool)

(declare-fun e!4713960 () Bool)

(declare-fun e!4713957 () Bool)

(assert (=> b!8002197 (= e!4713960 e!4713957)))

(declare-fun res!3164462 () Bool)

(assert (=> b!8002197 (=> (not res!3164462) (not e!4713957))))

(declare-fun lt!2713783 () Bool)

(assert (=> b!8002197 (= res!3164462 (not lt!2713783))))

(declare-fun b!8002198 () Bool)

(declare-fun e!4713958 () Bool)

(assert (=> b!8002198 (= e!4713958 (nullable!9674 (derivative!773 r!24748 input!8006)))))

(declare-fun b!8002199 () Bool)

(declare-fun e!4713959 () Bool)

(declare-fun e!4713961 () Bool)

(assert (=> b!8002199 (= e!4713959 e!4713961)))

(declare-fun c!1469233 () Bool)

(assert (=> b!8002199 (= c!1469233 ((_ is EmptyLang!21593) (derivative!773 r!24748 input!8006)))))

(declare-fun b!8002200 () Bool)

(declare-fun res!3164460 () Bool)

(assert (=> b!8002200 (=> res!3164460 e!4713960)))

(assert (=> b!8002200 (= res!3164460 (not ((_ is ElementMatch!21593) (derivative!773 r!24748 input!8006))))))

(assert (=> b!8002200 (= e!4713961 e!4713960)))

(declare-fun b!8002201 () Bool)

(declare-fun res!3164457 () Bool)

(declare-fun e!4713955 () Bool)

(assert (=> b!8002201 (=> (not res!3164457) (not e!4713955))))

(assert (=> b!8002201 (= res!3164457 (isEmpty!42971 (tail!15832 Nil!74698)))))

(declare-fun b!8002203 () Bool)

(declare-fun res!3164459 () Bool)

(assert (=> b!8002203 (=> (not res!3164459) (not e!4713955))))

(declare-fun call!743514 () Bool)

(assert (=> b!8002203 (= res!3164459 (not call!743514))))

(declare-fun bm!743509 () Bool)

(assert (=> bm!743509 (= call!743514 (isEmpty!42971 Nil!74698))))

(declare-fun b!8002204 () Bool)

(declare-fun e!4713956 () Bool)

(assert (=> b!8002204 (= e!4713957 e!4713956)))

(declare-fun res!3164464 () Bool)

(assert (=> b!8002204 (=> res!3164464 e!4713956)))

(assert (=> b!8002204 (= res!3164464 call!743514)))

(declare-fun b!8002205 () Bool)

(assert (=> b!8002205 (= e!4713958 (matchR!10772 (derivativeStep!6608 (derivative!773 r!24748 input!8006) (head!16305 Nil!74698)) (tail!15832 Nil!74698)))))

(declare-fun b!8002202 () Bool)

(assert (=> b!8002202 (= e!4713961 (not lt!2713783))))

(declare-fun d!2386907 () Bool)

(assert (=> d!2386907 e!4713959))

(declare-fun c!1469232 () Bool)

(assert (=> d!2386907 (= c!1469232 ((_ is EmptyExpr!21593) (derivative!773 r!24748 input!8006)))))

(assert (=> d!2386907 (= lt!2713783 e!4713958)))

(declare-fun c!1469234 () Bool)

(assert (=> d!2386907 (= c!1469234 (isEmpty!42971 Nil!74698))))

(assert (=> d!2386907 (validRegex!11897 (derivative!773 r!24748 input!8006))))

(assert (=> d!2386907 (= (matchR!10772 (derivative!773 r!24748 input!8006) Nil!74698) lt!2713783)))

(declare-fun b!8002206 () Bool)

(assert (=> b!8002206 (= e!4713959 (= lt!2713783 call!743514))))

(declare-fun b!8002207 () Bool)

(declare-fun res!3164458 () Bool)

(assert (=> b!8002207 (=> res!3164458 e!4713956)))

(assert (=> b!8002207 (= res!3164458 (not (isEmpty!42971 (tail!15832 Nil!74698))))))

(declare-fun b!8002208 () Bool)

(assert (=> b!8002208 (= e!4713955 (= (head!16305 Nil!74698) (c!1469198 (derivative!773 r!24748 input!8006))))))

(declare-fun b!8002209 () Bool)

(declare-fun res!3164463 () Bool)

(assert (=> b!8002209 (=> res!3164463 e!4713960)))

(assert (=> b!8002209 (= res!3164463 e!4713955)))

(declare-fun res!3164461 () Bool)

(assert (=> b!8002209 (=> (not res!3164461) (not e!4713955))))

(assert (=> b!8002209 (= res!3164461 lt!2713783)))

(declare-fun b!8002210 () Bool)

(assert (=> b!8002210 (= e!4713956 (not (= (head!16305 Nil!74698) (c!1469198 (derivative!773 r!24748 input!8006)))))))

(assert (= (and d!2386907 c!1469234) b!8002198))

(assert (= (and d!2386907 (not c!1469234)) b!8002205))

(assert (= (and d!2386907 c!1469232) b!8002206))

(assert (= (and d!2386907 (not c!1469232)) b!8002199))

(assert (= (and b!8002199 c!1469233) b!8002202))

(assert (= (and b!8002199 (not c!1469233)) b!8002200))

(assert (= (and b!8002200 (not res!3164460)) b!8002209))

(assert (= (and b!8002209 res!3164461) b!8002203))

(assert (= (and b!8002203 res!3164459) b!8002201))

(assert (= (and b!8002201 res!3164457) b!8002208))

(assert (= (and b!8002209 (not res!3164463)) b!8002197))

(assert (= (and b!8002197 res!3164462) b!8002204))

(assert (= (and b!8002204 (not res!3164464)) b!8002207))

(assert (= (and b!8002207 (not res!3164458)) b!8002210))

(assert (= (or b!8002206 b!8002203 b!8002204) bm!743509))

(declare-fun m!8369094 () Bool)

(assert (=> b!8002210 m!8369094))

(assert (=> b!8002198 m!8369032))

(declare-fun m!8369096 () Bool)

(assert (=> b!8002198 m!8369096))

(declare-fun m!8369098 () Bool)

(assert (=> b!8002207 m!8369098))

(assert (=> b!8002207 m!8369098))

(declare-fun m!8369100 () Bool)

(assert (=> b!8002207 m!8369100))

(assert (=> b!8002208 m!8369094))

(assert (=> b!8002201 m!8369098))

(assert (=> b!8002201 m!8369098))

(assert (=> b!8002201 m!8369100))

(declare-fun m!8369102 () Bool)

(assert (=> bm!743509 m!8369102))

(assert (=> d!2386907 m!8369102))

(assert (=> d!2386907 m!8369032))

(declare-fun m!8369104 () Bool)

(assert (=> d!2386907 m!8369104))

(assert (=> b!8002205 m!8369094))

(assert (=> b!8002205 m!8369032))

(assert (=> b!8002205 m!8369094))

(declare-fun m!8369106 () Bool)

(assert (=> b!8002205 m!8369106))

(assert (=> b!8002205 m!8369098))

(assert (=> b!8002205 m!8369106))

(assert (=> b!8002205 m!8369098))

(declare-fun m!8369108 () Bool)

(assert (=> b!8002205 m!8369108))

(assert (=> b!8002041 d!2386907))

(declare-fun d!2386911 () Bool)

(declare-fun lt!2713789 () Regex!21593)

(assert (=> d!2386911 (validRegex!11897 lt!2713789)))

(declare-fun e!4713969 () Regex!21593)

(assert (=> d!2386911 (= lt!2713789 e!4713969)))

(declare-fun c!1469240 () Bool)

(assert (=> d!2386911 (= c!1469240 ((_ is Cons!74698) input!8006))))

(assert (=> d!2386911 (validRegex!11897 r!24748)))

(assert (=> d!2386911 (= (derivative!773 r!24748 input!8006) lt!2713789)))

(declare-fun b!8002225 () Bool)

(assert (=> b!8002225 (= e!4713969 (derivative!773 (derivativeStep!6608 r!24748 (h!81146 input!8006)) (t!390565 input!8006)))))

(declare-fun b!8002226 () Bool)

(assert (=> b!8002226 (= e!4713969 r!24748)))

(assert (= (and d!2386911 c!1469240) b!8002225))

(assert (= (and d!2386911 (not c!1469240)) b!8002226))

(declare-fun m!8369116 () Bool)

(assert (=> d!2386911 m!8369116))

(assert (=> d!2386911 m!8369036))

(declare-fun m!8369118 () Bool)

(assert (=> b!8002225 m!8369118))

(assert (=> b!8002225 m!8369118))

(declare-fun m!8369120 () Bool)

(assert (=> b!8002225 m!8369120))

(assert (=> b!8002041 d!2386911))

(declare-fun b!8002255 () Bool)

(declare-fun e!4713976 () Bool)

(declare-fun tp!2393743 () Bool)

(declare-fun tp!2393740 () Bool)

(assert (=> b!8002255 (= e!4713976 (and tp!2393743 tp!2393740))))

(assert (=> b!8002043 (= tp!2393707 e!4713976)))

(declare-fun b!8002253 () Bool)

(declare-fun tp!2393742 () Bool)

(declare-fun tp!2393739 () Bool)

(assert (=> b!8002253 (= e!4713976 (and tp!2393742 tp!2393739))))

(declare-fun b!8002252 () Bool)

(assert (=> b!8002252 (= e!4713976 tp_is_empty!53729)))

(declare-fun b!8002254 () Bool)

(declare-fun tp!2393741 () Bool)

(assert (=> b!8002254 (= e!4713976 tp!2393741)))

(assert (= (and b!8002043 ((_ is ElementMatch!21593) (regOne!43699 r!24748))) b!8002252))

(assert (= (and b!8002043 ((_ is Concat!30592) (regOne!43699 r!24748))) b!8002253))

(assert (= (and b!8002043 ((_ is Star!21593) (regOne!43699 r!24748))) b!8002254))

(assert (= (and b!8002043 ((_ is Union!21593) (regOne!43699 r!24748))) b!8002255))

(declare-fun b!8002267 () Bool)

(declare-fun e!4713979 () Bool)

(declare-fun tp!2393758 () Bool)

(declare-fun tp!2393755 () Bool)

(assert (=> b!8002267 (= e!4713979 (and tp!2393758 tp!2393755))))

(assert (=> b!8002043 (= tp!2393710 e!4713979)))

(declare-fun b!8002265 () Bool)

(declare-fun tp!2393757 () Bool)

(declare-fun tp!2393754 () Bool)

(assert (=> b!8002265 (= e!4713979 (and tp!2393757 tp!2393754))))

(declare-fun b!8002264 () Bool)

(assert (=> b!8002264 (= e!4713979 tp_is_empty!53729)))

(declare-fun b!8002266 () Bool)

(declare-fun tp!2393756 () Bool)

(assert (=> b!8002266 (= e!4713979 tp!2393756)))

(assert (= (and b!8002043 ((_ is ElementMatch!21593) (regTwo!43699 r!24748))) b!8002264))

(assert (= (and b!8002043 ((_ is Concat!30592) (regTwo!43699 r!24748))) b!8002265))

(assert (= (and b!8002043 ((_ is Star!21593) (regTwo!43699 r!24748))) b!8002266))

(assert (= (and b!8002043 ((_ is Union!21593) (regTwo!43699 r!24748))) b!8002267))

(declare-fun b!8002280 () Bool)

(declare-fun e!4713984 () Bool)

(declare-fun tp!2393771 () Bool)

(assert (=> b!8002280 (= e!4713984 (and tp_is_empty!53729 tp!2393771))))

(assert (=> b!8002044 (= tp!2393706 e!4713984)))

(assert (= (and b!8002044 ((_ is Cons!74698) (t!390565 input!8006))) b!8002280))

(declare-fun b!8002284 () Bool)

(declare-fun e!4713985 () Bool)

(declare-fun tp!2393776 () Bool)

(declare-fun tp!2393773 () Bool)

(assert (=> b!8002284 (= e!4713985 (and tp!2393776 tp!2393773))))

(assert (=> b!8002042 (= tp!2393709 e!4713985)))

(declare-fun b!8002282 () Bool)

(declare-fun tp!2393775 () Bool)

(declare-fun tp!2393772 () Bool)

(assert (=> b!8002282 (= e!4713985 (and tp!2393775 tp!2393772))))

(declare-fun b!8002281 () Bool)

(assert (=> b!8002281 (= e!4713985 tp_is_empty!53729)))

(declare-fun b!8002283 () Bool)

(declare-fun tp!2393774 () Bool)

(assert (=> b!8002283 (= e!4713985 tp!2393774)))

(assert (= (and b!8002042 ((_ is ElementMatch!21593) (reg!21922 r!24748))) b!8002281))

(assert (= (and b!8002042 ((_ is Concat!30592) (reg!21922 r!24748))) b!8002282))

(assert (= (and b!8002042 ((_ is Star!21593) (reg!21922 r!24748))) b!8002283))

(assert (= (and b!8002042 ((_ is Union!21593) (reg!21922 r!24748))) b!8002284))

(declare-fun b!8002288 () Bool)

(declare-fun e!4713986 () Bool)

(declare-fun tp!2393781 () Bool)

(declare-fun tp!2393778 () Bool)

(assert (=> b!8002288 (= e!4713986 (and tp!2393781 tp!2393778))))

(assert (=> b!8002040 (= tp!2393708 e!4713986)))

(declare-fun b!8002286 () Bool)

(declare-fun tp!2393780 () Bool)

(declare-fun tp!2393777 () Bool)

(assert (=> b!8002286 (= e!4713986 (and tp!2393780 tp!2393777))))

(declare-fun b!8002285 () Bool)

(assert (=> b!8002285 (= e!4713986 tp_is_empty!53729)))

(declare-fun b!8002287 () Bool)

(declare-fun tp!2393779 () Bool)

(assert (=> b!8002287 (= e!4713986 tp!2393779)))

(assert (= (and b!8002040 ((_ is ElementMatch!21593) (regOne!43698 r!24748))) b!8002285))

(assert (= (and b!8002040 ((_ is Concat!30592) (regOne!43698 r!24748))) b!8002286))

(assert (= (and b!8002040 ((_ is Star!21593) (regOne!43698 r!24748))) b!8002287))

(assert (= (and b!8002040 ((_ is Union!21593) (regOne!43698 r!24748))) b!8002288))

(declare-fun b!8002292 () Bool)

(declare-fun e!4713987 () Bool)

(declare-fun tp!2393786 () Bool)

(declare-fun tp!2393783 () Bool)

(assert (=> b!8002292 (= e!4713987 (and tp!2393786 tp!2393783))))

(assert (=> b!8002040 (= tp!2393705 e!4713987)))

(declare-fun b!8002290 () Bool)

(declare-fun tp!2393785 () Bool)

(declare-fun tp!2393782 () Bool)

(assert (=> b!8002290 (= e!4713987 (and tp!2393785 tp!2393782))))

(declare-fun b!8002289 () Bool)

(assert (=> b!8002289 (= e!4713987 tp_is_empty!53729)))

(declare-fun b!8002291 () Bool)

(declare-fun tp!2393784 () Bool)

(assert (=> b!8002291 (= e!4713987 tp!2393784)))

(assert (= (and b!8002040 ((_ is ElementMatch!21593) (regTwo!43698 r!24748))) b!8002289))

(assert (= (and b!8002040 ((_ is Concat!30592) (regTwo!43698 r!24748))) b!8002290))

(assert (= (and b!8002040 ((_ is Star!21593) (regTwo!43698 r!24748))) b!8002291))

(assert (= (and b!8002040 ((_ is Union!21593) (regTwo!43698 r!24748))) b!8002292))

(check-sat (not b!8002207) (not b!8002284) (not b!8002177) (not b!8002287) (not bm!743509) (not b!8002266) (not b!8002265) (not b!8002267) (not b!8002182) (not b!8002205) (not b!8002280) (not d!2386903) (not b!8002201) tp_is_empty!53729 (not b!8002180) (not b!8002208) (not b!8002286) (not b!8002091) (not b!8002283) (not bm!743500) (not bm!743507) (not b!8002210) (not b!8002225) (not b!8002288) (not d!2386911) (not b!8002253) (not b!8002179) (not b!8002292) (not b!8002255) (not d!2386907) (not b!8002198) (not b!8002290) (not b!8002291) (not b!8002173) (not b!8002170) (not bm!743501) (not b!8002254) (not b!8002282))
(check-sat)
