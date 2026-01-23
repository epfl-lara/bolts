; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73638 () Bool)

(assert start!73638)

(declare-fun b!822890 () Bool)

(declare-fun e!543515 () Bool)

(declare-fun tp!257161 () Bool)

(declare-fun tp!257163 () Bool)

(assert (=> b!822890 (= e!543515 (and tp!257161 tp!257163))))

(declare-fun b!822891 () Bool)

(declare-fun tp!257164 () Bool)

(declare-fun tp!257160 () Bool)

(assert (=> b!822891 (= e!543515 (and tp!257164 tp!257160))))

(declare-fun b!822892 () Bool)

(declare-fun e!543514 () Bool)

(declare-datatypes ((C!4660 0))(
  ( (C!4661 (val!2578 Int)) )
))
(declare-datatypes ((Regex!2045 0))(
  ( (ElementMatch!2045 (c!133394 C!4660)) (Concat!3776 (regOne!4602 Regex!2045) (regTwo!4602 Regex!2045)) (EmptyExpr!2045) (Star!2045 (reg!2374 Regex!2045)) (EmptyLang!2045) (Union!2045 (regOne!4603 Regex!2045) (regTwo!4603 Regex!2045)) )
))
(declare-fun r!27177 () Regex!2045)

(declare-fun c!13916 () C!4660)

(declare-datatypes ((List!8871 0))(
  ( (Nil!8855) (Cons!8855 (h!14256 C!4660) (t!93163 List!8871)) )
))
(declare-fun contains!1636 (List!8871 C!4660) Bool)

(declare-fun usedCharacters!154 (Regex!2045) List!8871)

(assert (=> b!822892 (= e!543514 (not (contains!1636 (usedCharacters!154 r!27177) c!13916)))))

(declare-fun b!822893 () Bool)

(declare-fun res!379635 () Bool)

(assert (=> b!822893 (=> (not res!379635) (not e!543514))))

(get-info :version)

(assert (=> b!822893 (= res!379635 ((_ is EmptyExpr!2045) r!27177))))

(declare-fun b!822894 () Bool)

(declare-fun tp_is_empty!3813 () Bool)

(assert (=> b!822894 (= e!543515 tp_is_empty!3813)))

(declare-fun b!822895 () Bool)

(declare-fun res!379634 () Bool)

(assert (=> b!822895 (=> (not res!379634) (not e!543514))))

(declare-fun firstChars!16 (Regex!2045) List!8871)

(assert (=> b!822895 (= res!379634 (contains!1636 (firstChars!16 r!27177) c!13916))))

(declare-fun res!379633 () Bool)

(assert (=> start!73638 (=> (not res!379633) (not e!543514))))

(declare-fun validRegex!598 (Regex!2045) Bool)

(assert (=> start!73638 (= res!379633 (validRegex!598 r!27177))))

(assert (=> start!73638 e!543514))

(assert (=> start!73638 e!543515))

(assert (=> start!73638 tp_is_empty!3813))

(declare-fun b!822889 () Bool)

(declare-fun tp!257162 () Bool)

(assert (=> b!822889 (= e!543515 tp!257162)))

(assert (= (and start!73638 res!379633) b!822895))

(assert (= (and b!822895 res!379634) b!822893))

(assert (= (and b!822893 res!379635) b!822892))

(assert (= (and start!73638 ((_ is ElementMatch!2045) r!27177)) b!822894))

(assert (= (and start!73638 ((_ is Concat!3776) r!27177)) b!822891))

(assert (= (and start!73638 ((_ is Star!2045) r!27177)) b!822889))

(assert (= (and start!73638 ((_ is Union!2045) r!27177)) b!822890))

(declare-fun m!1063767 () Bool)

(assert (=> b!822892 m!1063767))

(assert (=> b!822892 m!1063767))

(declare-fun m!1063769 () Bool)

(assert (=> b!822892 m!1063769))

(declare-fun m!1063771 () Bool)

(assert (=> b!822895 m!1063771))

(assert (=> b!822895 m!1063771))

(declare-fun m!1063773 () Bool)

(assert (=> b!822895 m!1063773))

(declare-fun m!1063775 () Bool)

(assert (=> start!73638 m!1063775))

(check-sat (not b!822890) tp_is_empty!3813 (not start!73638) (not b!822895) (not b!822889) (not b!822891) (not b!822892))
(check-sat)
(get-model)

(declare-fun d!259028 () Bool)

(declare-fun lt!317390 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1283 (List!8871) (InoxSet C!4660))

(assert (=> d!259028 (= lt!317390 (select (content!1283 (usedCharacters!154 r!27177)) c!13916))))

(declare-fun e!543534 () Bool)

(assert (=> d!259028 (= lt!317390 e!543534)))

(declare-fun res!379651 () Bool)

(assert (=> d!259028 (=> (not res!379651) (not e!543534))))

(assert (=> d!259028 (= res!379651 ((_ is Cons!8855) (usedCharacters!154 r!27177)))))

(assert (=> d!259028 (= (contains!1636 (usedCharacters!154 r!27177) c!13916) lt!317390)))

(declare-fun b!822918 () Bool)

(declare-fun e!543535 () Bool)

(assert (=> b!822918 (= e!543534 e!543535)))

(declare-fun res!379650 () Bool)

(assert (=> b!822918 (=> res!379650 e!543535)))

(assert (=> b!822918 (= res!379650 (= (h!14256 (usedCharacters!154 r!27177)) c!13916))))

(declare-fun b!822919 () Bool)

(assert (=> b!822919 (= e!543535 (contains!1636 (t!93163 (usedCharacters!154 r!27177)) c!13916))))

(assert (= (and d!259028 res!379651) b!822918))

(assert (= (and b!822918 (not res!379650)) b!822919))

(assert (=> d!259028 m!1063767))

(declare-fun m!1063777 () Bool)

(assert (=> d!259028 m!1063777))

(declare-fun m!1063779 () Bool)

(assert (=> d!259028 m!1063779))

(declare-fun m!1063781 () Bool)

(assert (=> b!822919 m!1063781))

(assert (=> b!822892 d!259028))

(declare-fun b!822951 () Bool)

(declare-fun e!543560 () List!8871)

(declare-fun e!543557 () List!8871)

(assert (=> b!822951 (= e!543560 e!543557)))

(declare-fun c!133411 () Bool)

(assert (=> b!822951 (= c!133411 ((_ is Union!2045) r!27177))))

(declare-fun call!47178 () List!8871)

(declare-fun bm!47170 () Bool)

(declare-fun c!133409 () Bool)

(assert (=> bm!47170 (= call!47178 (usedCharacters!154 (ite c!133409 (reg!2374 r!27177) (ite c!133411 (regTwo!4603 r!27177) (regOne!4602 r!27177)))))))

(declare-fun b!822952 () Bool)

(declare-fun e!543558 () List!8871)

(assert (=> b!822952 (= e!543558 (Cons!8855 (c!133394 r!27177) Nil!8855))))

(declare-fun b!822953 () Bool)

(declare-fun call!47177 () List!8871)

(assert (=> b!822953 (= e!543557 call!47177)))

(declare-fun d!259030 () Bool)

(declare-fun c!133410 () Bool)

(assert (=> d!259030 (= c!133410 (or ((_ is EmptyExpr!2045) r!27177) ((_ is EmptyLang!2045) r!27177)))))

(declare-fun e!543559 () List!8871)

(assert (=> d!259030 (= (usedCharacters!154 r!27177) e!543559)))

(declare-fun bm!47171 () Bool)

(declare-fun call!47176 () List!8871)

(assert (=> bm!47171 (= call!47176 (usedCharacters!154 (ite c!133411 (regOne!4603 r!27177) (regTwo!4602 r!27177))))))

(declare-fun b!822954 () Bool)

(assert (=> b!822954 (= e!543560 call!47178)))

(declare-fun b!822955 () Bool)

(assert (=> b!822955 (= e!543557 call!47177)))

(declare-fun b!822956 () Bool)

(assert (=> b!822956 (= e!543559 Nil!8855)))

(declare-fun call!47175 () List!8871)

(declare-fun bm!47172 () Bool)

(declare-fun ++!2271 (List!8871 List!8871) List!8871)

(assert (=> bm!47172 (= call!47177 (++!2271 (ite c!133411 call!47176 call!47175) (ite c!133411 call!47175 call!47176)))))

(declare-fun b!822957 () Bool)

(assert (=> b!822957 (= c!133409 ((_ is Star!2045) r!27177))))

(assert (=> b!822957 (= e!543558 e!543560)))

(declare-fun b!822958 () Bool)

(assert (=> b!822958 (= e!543559 e!543558)))

(declare-fun c!133412 () Bool)

(assert (=> b!822958 (= c!133412 ((_ is ElementMatch!2045) r!27177))))

(declare-fun bm!47173 () Bool)

(assert (=> bm!47173 (= call!47175 call!47178)))

(assert (= (and d!259030 c!133410) b!822956))

(assert (= (and d!259030 (not c!133410)) b!822958))

(assert (= (and b!822958 c!133412) b!822952))

(assert (= (and b!822958 (not c!133412)) b!822957))

(assert (= (and b!822957 c!133409) b!822954))

(assert (= (and b!822957 (not c!133409)) b!822951))

(assert (= (and b!822951 c!133411) b!822955))

(assert (= (and b!822951 (not c!133411)) b!822953))

(assert (= (or b!822955 b!822953) bm!47173))

(assert (= (or b!822955 b!822953) bm!47171))

(assert (= (or b!822955 b!822953) bm!47172))

(assert (= (or b!822954 bm!47173) bm!47170))

(declare-fun m!1063795 () Bool)

(assert (=> bm!47170 m!1063795))

(declare-fun m!1063797 () Bool)

(assert (=> bm!47171 m!1063797))

(declare-fun m!1063799 () Bool)

(assert (=> bm!47172 m!1063799))

(assert (=> b!822892 d!259030))

(declare-fun d!259036 () Bool)

(declare-fun lt!317394 () Bool)

(assert (=> d!259036 (= lt!317394 (select (content!1283 (firstChars!16 r!27177)) c!13916))))

(declare-fun e!543561 () Bool)

(assert (=> d!259036 (= lt!317394 e!543561)))

(declare-fun res!379664 () Bool)

(assert (=> d!259036 (=> (not res!379664) (not e!543561))))

(assert (=> d!259036 (= res!379664 ((_ is Cons!8855) (firstChars!16 r!27177)))))

(assert (=> d!259036 (= (contains!1636 (firstChars!16 r!27177) c!13916) lt!317394)))

(declare-fun b!822959 () Bool)

(declare-fun e!543562 () Bool)

(assert (=> b!822959 (= e!543561 e!543562)))

(declare-fun res!379663 () Bool)

(assert (=> b!822959 (=> res!379663 e!543562)))

(assert (=> b!822959 (= res!379663 (= (h!14256 (firstChars!16 r!27177)) c!13916))))

(declare-fun b!822960 () Bool)

(assert (=> b!822960 (= e!543562 (contains!1636 (t!93163 (firstChars!16 r!27177)) c!13916))))

(assert (= (and d!259036 res!379664) b!822959))

(assert (= (and b!822959 (not res!379663)) b!822960))

(assert (=> d!259036 m!1063771))

(declare-fun m!1063801 () Bool)

(assert (=> d!259036 m!1063801))

(declare-fun m!1063803 () Bool)

(assert (=> d!259036 m!1063803))

(declare-fun m!1063805 () Bool)

(assert (=> b!822960 m!1063805))

(assert (=> b!822895 d!259036))

(declare-fun b!823007 () Bool)

(declare-fun e!543588 () List!8871)

(declare-fun e!543591 () List!8871)

(assert (=> b!823007 (= e!543588 e!543591)))

(declare-fun c!133439 () Bool)

(assert (=> b!823007 (= c!133439 ((_ is Union!2045) r!27177))))

(declare-fun b!823008 () Bool)

(declare-fun e!543590 () List!8871)

(declare-fun call!47203 () List!8871)

(assert (=> b!823008 (= e!543590 call!47203)))

(declare-fun b!823009 () Bool)

(declare-fun e!543589 () List!8871)

(assert (=> b!823009 (= e!543589 Nil!8855)))

(declare-fun bm!47196 () Bool)

(declare-fun call!47202 () List!8871)

(assert (=> bm!47196 (= call!47202 (firstChars!16 (ite c!133439 (regTwo!4603 r!27177) (regOne!4602 r!27177))))))

(declare-fun b!823010 () Bool)

(declare-fun c!133435 () Bool)

(declare-fun nullable!496 (Regex!2045) Bool)

(assert (=> b!823010 (= c!133435 (nullable!496 (regOne!4602 r!27177)))))

(assert (=> b!823010 (= e!543591 e!543590)))

(declare-fun d!259038 () Bool)

(declare-fun c!133437 () Bool)

(assert (=> d!259038 (= c!133437 (or ((_ is EmptyExpr!2045) r!27177) ((_ is EmptyLang!2045) r!27177)))))

(assert (=> d!259038 (= (firstChars!16 r!27177) e!543589)))

(declare-fun b!823011 () Bool)

(assert (=> b!823011 (= e!543591 call!47203)))

(declare-fun call!47205 () List!8871)

(declare-fun call!47201 () List!8871)

(declare-fun bm!47197 () Bool)

(assert (=> bm!47197 (= call!47203 (++!2271 (ite c!133439 call!47205 call!47201) (ite c!133439 call!47202 call!47205)))))

(declare-fun b!823012 () Bool)

(declare-fun call!47204 () List!8871)

(assert (=> b!823012 (= e!543588 call!47204)))

(declare-fun bm!47198 () Bool)

(assert (=> bm!47198 (= call!47205 call!47204)))

(declare-fun b!823013 () Bool)

(assert (=> b!823013 (= e!543590 call!47201)))

(declare-fun bm!47199 () Bool)

(assert (=> bm!47199 (= call!47201 call!47202)))

(declare-fun b!823014 () Bool)

(declare-fun c!133438 () Bool)

(assert (=> b!823014 (= c!133438 ((_ is Star!2045) r!27177))))

(declare-fun e!543587 () List!8871)

(assert (=> b!823014 (= e!543587 e!543588)))

(declare-fun b!823015 () Bool)

(assert (=> b!823015 (= e!543589 e!543587)))

(declare-fun c!133436 () Bool)

(assert (=> b!823015 (= c!133436 ((_ is ElementMatch!2045) r!27177))))

(declare-fun b!823016 () Bool)

(assert (=> b!823016 (= e!543587 (Cons!8855 (c!133394 r!27177) Nil!8855))))

(declare-fun bm!47200 () Bool)

(assert (=> bm!47200 (= call!47204 (firstChars!16 (ite c!133438 (reg!2374 r!27177) (ite c!133439 (regOne!4603 r!27177) (regTwo!4602 r!27177)))))))

(assert (= (and d!259038 c!133437) b!823009))

(assert (= (and d!259038 (not c!133437)) b!823015))

(assert (= (and b!823015 c!133436) b!823016))

(assert (= (and b!823015 (not c!133436)) b!823014))

(assert (= (and b!823014 c!133438) b!823012))

(assert (= (and b!823014 (not c!133438)) b!823007))

(assert (= (and b!823007 c!133439) b!823011))

(assert (= (and b!823007 (not c!133439)) b!823010))

(assert (= (and b!823010 c!133435) b!823008))

(assert (= (and b!823010 (not c!133435)) b!823013))

(assert (= (or b!823008 b!823013) bm!47199))

(assert (= (or b!823011 bm!47199) bm!47196))

(assert (= (or b!823011 b!823008) bm!47198))

(assert (= (or b!823011 b!823008) bm!47197))

(assert (= (or b!823012 bm!47198) bm!47200))

(declare-fun m!1063819 () Bool)

(assert (=> bm!47196 m!1063819))

(declare-fun m!1063821 () Bool)

(assert (=> b!823010 m!1063821))

(declare-fun m!1063823 () Bool)

(assert (=> bm!47197 m!1063823))

(declare-fun m!1063825 () Bool)

(assert (=> bm!47200 m!1063825))

(assert (=> b!822895 d!259038))

(declare-fun b!823065 () Bool)

(declare-fun e!543623 () Bool)

(declare-fun e!543626 () Bool)

(assert (=> b!823065 (= e!543623 e!543626)))

(declare-fun res!379679 () Bool)

(assert (=> b!823065 (= res!379679 (not (nullable!496 (reg!2374 r!27177))))))

(assert (=> b!823065 (=> (not res!379679) (not e!543626))))

(declare-fun b!823066 () Bool)

(declare-fun res!379680 () Bool)

(declare-fun e!543625 () Bool)

(assert (=> b!823066 (=> res!379680 e!543625)))

(assert (=> b!823066 (= res!379680 (not ((_ is Concat!3776) r!27177)))))

(declare-fun e!543627 () Bool)

(assert (=> b!823066 (= e!543627 e!543625)))

(declare-fun bm!47222 () Bool)

(declare-fun call!47228 () Bool)

(declare-fun c!133459 () Bool)

(assert (=> bm!47222 (= call!47228 (validRegex!598 (ite c!133459 (regTwo!4603 r!27177) (regOne!4602 r!27177))))))

(declare-fun bm!47223 () Bool)

(declare-fun call!47229 () Bool)

(declare-fun c!133460 () Bool)

(assert (=> bm!47223 (= call!47229 (validRegex!598 (ite c!133460 (reg!2374 r!27177) (ite c!133459 (regOne!4603 r!27177) (regTwo!4602 r!27177)))))))

(declare-fun b!823067 () Bool)

(declare-fun e!543624 () Bool)

(assert (=> b!823067 (= e!543624 call!47228)))

(declare-fun b!823068 () Bool)

(assert (=> b!823068 (= e!543623 e!543627)))

(assert (=> b!823068 (= c!133459 ((_ is Union!2045) r!27177))))

(declare-fun b!823069 () Bool)

(declare-fun res!379678 () Bool)

(assert (=> b!823069 (=> (not res!379678) (not e!543624))))

(declare-fun call!47227 () Bool)

(assert (=> b!823069 (= res!379678 call!47227)))

(assert (=> b!823069 (= e!543627 e!543624)))

(declare-fun b!823070 () Bool)

(declare-fun e!543621 () Bool)

(assert (=> b!823070 (= e!543621 call!47227)))

(declare-fun b!823072 () Bool)

(assert (=> b!823072 (= e!543626 call!47229)))

(declare-fun b!823071 () Bool)

(assert (=> b!823071 (= e!543625 e!543621)))

(declare-fun res!379681 () Bool)

(assert (=> b!823071 (=> (not res!379681) (not e!543621))))

(assert (=> b!823071 (= res!379681 call!47228)))

(declare-fun d!259044 () Bool)

(declare-fun res!379677 () Bool)

(declare-fun e!543622 () Bool)

(assert (=> d!259044 (=> res!379677 e!543622)))

(assert (=> d!259044 (= res!379677 ((_ is ElementMatch!2045) r!27177))))

(assert (=> d!259044 (= (validRegex!598 r!27177) e!543622)))

(declare-fun b!823073 () Bool)

(assert (=> b!823073 (= e!543622 e!543623)))

(assert (=> b!823073 (= c!133460 ((_ is Star!2045) r!27177))))

(declare-fun bm!47224 () Bool)

(assert (=> bm!47224 (= call!47227 call!47229)))

(assert (= (and d!259044 (not res!379677)) b!823073))

(assert (= (and b!823073 c!133460) b!823065))

(assert (= (and b!823073 (not c!133460)) b!823068))

(assert (= (and b!823065 res!379679) b!823072))

(assert (= (and b!823068 c!133459) b!823069))

(assert (= (and b!823068 (not c!133459)) b!823066))

(assert (= (and b!823069 res!379678) b!823067))

(assert (= (and b!823066 (not res!379680)) b!823071))

(assert (= (and b!823071 res!379681) b!823070))

(assert (= (or b!823069 b!823070) bm!47224))

(assert (= (or b!823067 b!823071) bm!47222))

(assert (= (or b!823072 bm!47224) bm!47223))

(declare-fun m!1063835 () Bool)

(assert (=> b!823065 m!1063835))

(declare-fun m!1063837 () Bool)

(assert (=> bm!47222 m!1063837))

(declare-fun m!1063839 () Bool)

(assert (=> bm!47223 m!1063839))

(assert (=> start!73638 d!259044))

(declare-fun b!823105 () Bool)

(declare-fun e!543634 () Bool)

(declare-fun tp!257195 () Bool)

(declare-fun tp!257199 () Bool)

(assert (=> b!823105 (= e!543634 (and tp!257195 tp!257199))))

(declare-fun b!823102 () Bool)

(assert (=> b!823102 (= e!543634 tp_is_empty!3813)))

(declare-fun b!823104 () Bool)

(declare-fun tp!257196 () Bool)

(assert (=> b!823104 (= e!543634 tp!257196)))

(declare-fun b!823103 () Bool)

(declare-fun tp!257197 () Bool)

(declare-fun tp!257198 () Bool)

(assert (=> b!823103 (= e!543634 (and tp!257197 tp!257198))))

(assert (=> b!822891 (= tp!257164 e!543634)))

(assert (= (and b!822891 ((_ is ElementMatch!2045) (regOne!4602 r!27177))) b!823102))

(assert (= (and b!822891 ((_ is Concat!3776) (regOne!4602 r!27177))) b!823103))

(assert (= (and b!822891 ((_ is Star!2045) (regOne!4602 r!27177))) b!823104))

(assert (= (and b!822891 ((_ is Union!2045) (regOne!4602 r!27177))) b!823105))

(declare-fun b!823117 () Bool)

(declare-fun e!543637 () Bool)

(declare-fun tp!257210 () Bool)

(declare-fun tp!257214 () Bool)

(assert (=> b!823117 (= e!543637 (and tp!257210 tp!257214))))

(declare-fun b!823114 () Bool)

(assert (=> b!823114 (= e!543637 tp_is_empty!3813)))

(declare-fun b!823116 () Bool)

(declare-fun tp!257211 () Bool)

(assert (=> b!823116 (= e!543637 tp!257211)))

(declare-fun b!823115 () Bool)

(declare-fun tp!257212 () Bool)

(declare-fun tp!257213 () Bool)

(assert (=> b!823115 (= e!543637 (and tp!257212 tp!257213))))

(assert (=> b!822891 (= tp!257160 e!543637)))

(assert (= (and b!822891 ((_ is ElementMatch!2045) (regTwo!4602 r!27177))) b!823114))

(assert (= (and b!822891 ((_ is Concat!3776) (regTwo!4602 r!27177))) b!823115))

(assert (= (and b!822891 ((_ is Star!2045) (regTwo!4602 r!27177))) b!823116))

(assert (= (and b!822891 ((_ is Union!2045) (regTwo!4602 r!27177))) b!823117))

(declare-fun b!823125 () Bool)

(declare-fun e!543639 () Bool)

(declare-fun tp!257220 () Bool)

(declare-fun tp!257224 () Bool)

(assert (=> b!823125 (= e!543639 (and tp!257220 tp!257224))))

(declare-fun b!823122 () Bool)

(assert (=> b!823122 (= e!543639 tp_is_empty!3813)))

(declare-fun b!823124 () Bool)

(declare-fun tp!257221 () Bool)

(assert (=> b!823124 (= e!543639 tp!257221)))

(declare-fun b!823123 () Bool)

(declare-fun tp!257222 () Bool)

(declare-fun tp!257223 () Bool)

(assert (=> b!823123 (= e!543639 (and tp!257222 tp!257223))))

(assert (=> b!822890 (= tp!257161 e!543639)))

(assert (= (and b!822890 ((_ is ElementMatch!2045) (regOne!4603 r!27177))) b!823122))

(assert (= (and b!822890 ((_ is Concat!3776) (regOne!4603 r!27177))) b!823123))

(assert (= (and b!822890 ((_ is Star!2045) (regOne!4603 r!27177))) b!823124))

(assert (= (and b!822890 ((_ is Union!2045) (regOne!4603 r!27177))) b!823125))

(declare-fun b!823129 () Bool)

(declare-fun e!543640 () Bool)

(declare-fun tp!257225 () Bool)

(declare-fun tp!257229 () Bool)

(assert (=> b!823129 (= e!543640 (and tp!257225 tp!257229))))

(declare-fun b!823126 () Bool)

(assert (=> b!823126 (= e!543640 tp_is_empty!3813)))

(declare-fun b!823128 () Bool)

(declare-fun tp!257226 () Bool)

(assert (=> b!823128 (= e!543640 tp!257226)))

(declare-fun b!823127 () Bool)

(declare-fun tp!257227 () Bool)

(declare-fun tp!257228 () Bool)

(assert (=> b!823127 (= e!543640 (and tp!257227 tp!257228))))

(assert (=> b!822890 (= tp!257163 e!543640)))

(assert (= (and b!822890 ((_ is ElementMatch!2045) (regTwo!4603 r!27177))) b!823126))

(assert (= (and b!822890 ((_ is Concat!3776) (regTwo!4603 r!27177))) b!823127))

(assert (= (and b!822890 ((_ is Star!2045) (regTwo!4603 r!27177))) b!823128))

(assert (= (and b!822890 ((_ is Union!2045) (regTwo!4603 r!27177))) b!823129))

(declare-fun b!823133 () Bool)

(declare-fun e!543641 () Bool)

(declare-fun tp!257230 () Bool)

(declare-fun tp!257234 () Bool)

(assert (=> b!823133 (= e!543641 (and tp!257230 tp!257234))))

(declare-fun b!823130 () Bool)

(assert (=> b!823130 (= e!543641 tp_is_empty!3813)))

(declare-fun b!823132 () Bool)

(declare-fun tp!257231 () Bool)

(assert (=> b!823132 (= e!543641 tp!257231)))

(declare-fun b!823131 () Bool)

(declare-fun tp!257232 () Bool)

(declare-fun tp!257233 () Bool)

(assert (=> b!823131 (= e!543641 (and tp!257232 tp!257233))))

(assert (=> b!822889 (= tp!257162 e!543641)))

(assert (= (and b!822889 ((_ is ElementMatch!2045) (reg!2374 r!27177))) b!823130))

(assert (= (and b!822889 ((_ is Concat!3776) (reg!2374 r!27177))) b!823131))

(assert (= (and b!822889 ((_ is Star!2045) (reg!2374 r!27177))) b!823132))

(assert (= (and b!822889 ((_ is Union!2045) (reg!2374 r!27177))) b!823133))

(check-sat (not b!823127) (not bm!47200) (not bm!47222) tp_is_empty!3813 (not bm!47223) (not d!259036) (not b!823065) (not d!259028) (not b!823132) (not b!823010) (not b!823115) (not b!823105) (not bm!47170) (not bm!47196) (not b!823129) (not b!823104) (not b!823116) (not b!823117) (not bm!47197) (not bm!47171) (not b!823133) (not b!823131) (not bm!47172) (not b!822919) (not b!822960) (not b!823124) (not b!823128) (not b!823103) (not b!823123) (not b!823125))
(check-sat)
