; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74166 () Bool)

(assert start!74166)

(declare-fun b!834067 () Bool)

(declare-fun e!548902 () Bool)

(declare-fun tp!261413 () Bool)

(declare-fun tp!261414 () Bool)

(assert (=> b!834067 (= e!548902 (and tp!261413 tp!261414))))

(declare-fun b!834068 () Bool)

(declare-fun res!382152 () Bool)

(declare-fun e!548903 () Bool)

(assert (=> b!834068 (=> (not res!382152) (not e!548903))))

(declare-datatypes ((C!4740 0))(
  ( (C!4741 (val!2618 Int)) )
))
(declare-datatypes ((Regex!2085 0))(
  ( (ElementMatch!2085 (c!136038 C!4740)) (Concat!3816 (regOne!4682 Regex!2085) (regTwo!4682 Regex!2085)) (EmptyExpr!2085) (Star!2085 (reg!2414 Regex!2085)) (EmptyLang!2085) (Union!2085 (regOne!4683 Regex!2085) (regTwo!4683 Regex!2085)) )
))
(declare-fun r!27177 () Regex!2085)

(get-info :version)

(assert (=> b!834068 (= res!382152 (and (not ((_ is EmptyExpr!2085) r!27177)) (not ((_ is EmptyLang!2085) r!27177)) (not ((_ is ElementMatch!2085) r!27177)) (not ((_ is Star!2085) r!27177)) (not ((_ is Union!2085) r!27177))))))

(declare-fun res!382157 () Bool)

(assert (=> start!74166 (=> (not res!382157) (not e!548903))))

(declare-fun validRegex!638 (Regex!2085) Bool)

(assert (=> start!74166 (= res!382157 (validRegex!638 r!27177))))

(assert (=> start!74166 e!548903))

(assert (=> start!74166 e!548902))

(declare-fun tp_is_empty!3893 () Bool)

(assert (=> start!74166 tp_is_empty!3893))

(declare-fun b!834069 () Bool)

(declare-fun res!382151 () Bool)

(assert (=> b!834069 (=> (not res!382151) (not e!548903))))

(assert (=> b!834069 (= res!382151 (validRegex!638 (regTwo!4682 r!27177)))))

(declare-fun b!834070 () Bool)

(declare-fun res!382154 () Bool)

(assert (=> b!834070 (=> (not res!382154) (not e!548903))))

(declare-fun c!13916 () C!4740)

(declare-datatypes ((List!8911 0))(
  ( (Nil!8895) (Cons!8895 (h!14296 C!4740) (t!93203 List!8911)) )
))
(declare-fun contains!1676 (List!8911 C!4740) Bool)

(declare-fun firstChars!56 (Regex!2085) List!8911)

(assert (=> b!834070 (= res!382154 (contains!1676 (firstChars!56 (regTwo!4682 r!27177)) c!13916))))

(declare-fun b!834071 () Bool)

(declare-fun res!382153 () Bool)

(assert (=> b!834071 (=> (not res!382153) (not e!548903))))

(declare-fun nullable!536 (Regex!2085) Bool)

(assert (=> b!834071 (= res!382153 (nullable!536 (regOne!4682 r!27177)))))

(declare-fun b!834072 () Bool)

(declare-fun tp!261410 () Bool)

(assert (=> b!834072 (= e!548902 tp!261410)))

(declare-fun b!834073 () Bool)

(declare-fun usedCharacters!168 (Regex!2085) List!8911)

(assert (=> b!834073 (= e!548903 (not (contains!1676 (usedCharacters!168 r!27177) c!13916)))))

(assert (=> b!834073 (contains!1676 (usedCharacters!168 (regTwo!4682 r!27177)) c!13916)))

(declare-datatypes ((Unit!13387 0))(
  ( (Unit!13388) )
))
(declare-fun lt!317849 () Unit!13387)

(declare-fun lemmaUsedCharsContainsAllFirstChars!10 (Regex!2085 C!4740) Unit!13387)

(assert (=> b!834073 (= lt!317849 (lemmaUsedCharsContainsAllFirstChars!10 (regTwo!4682 r!27177) c!13916))))

(declare-fun b!834074 () Bool)

(declare-fun tp!261411 () Bool)

(declare-fun tp!261412 () Bool)

(assert (=> b!834074 (= e!548902 (and tp!261411 tp!261412))))

(declare-fun b!834075 () Bool)

(assert (=> b!834075 (= e!548902 tp_is_empty!3893)))

(declare-fun b!834076 () Bool)

(declare-fun res!382155 () Bool)

(assert (=> b!834076 (=> (not res!382155) (not e!548903))))

(assert (=> b!834076 (= res!382155 (contains!1676 (firstChars!56 r!27177) c!13916))))

(declare-fun b!834077 () Bool)

(declare-fun res!382156 () Bool)

(assert (=> b!834077 (=> (not res!382156) (not e!548903))))

(assert (=> b!834077 (= res!382156 (not (contains!1676 (firstChars!56 (regOne!4682 r!27177)) c!13916)))))

(assert (= (and start!74166 res!382157) b!834076))

(assert (= (and b!834076 res!382155) b!834068))

(assert (= (and b!834068 res!382152) b!834071))

(assert (= (and b!834071 res!382153) b!834077))

(assert (= (and b!834077 res!382156) b!834069))

(assert (= (and b!834069 res!382151) b!834070))

(assert (= (and b!834070 res!382154) b!834073))

(assert (= (and start!74166 ((_ is ElementMatch!2085) r!27177)) b!834075))

(assert (= (and start!74166 ((_ is Concat!3816) r!27177)) b!834074))

(assert (= (and start!74166 ((_ is Star!2085) r!27177)) b!834072))

(assert (= (and start!74166 ((_ is Union!2085) r!27177)) b!834067))

(declare-fun m!1069277 () Bool)

(assert (=> b!834071 m!1069277))

(declare-fun m!1069279 () Bool)

(assert (=> start!74166 m!1069279))

(declare-fun m!1069281 () Bool)

(assert (=> b!834076 m!1069281))

(assert (=> b!834076 m!1069281))

(declare-fun m!1069283 () Bool)

(assert (=> b!834076 m!1069283))

(declare-fun m!1069285 () Bool)

(assert (=> b!834070 m!1069285))

(assert (=> b!834070 m!1069285))

(declare-fun m!1069287 () Bool)

(assert (=> b!834070 m!1069287))

(declare-fun m!1069289 () Bool)

(assert (=> b!834077 m!1069289))

(assert (=> b!834077 m!1069289))

(declare-fun m!1069291 () Bool)

(assert (=> b!834077 m!1069291))

(declare-fun m!1069293 () Bool)

(assert (=> b!834069 m!1069293))

(declare-fun m!1069295 () Bool)

(assert (=> b!834073 m!1069295))

(declare-fun m!1069297 () Bool)

(assert (=> b!834073 m!1069297))

(declare-fun m!1069299 () Bool)

(assert (=> b!834073 m!1069299))

(declare-fun m!1069301 () Bool)

(assert (=> b!834073 m!1069301))

(assert (=> b!834073 m!1069295))

(declare-fun m!1069303 () Bool)

(assert (=> b!834073 m!1069303))

(assert (=> b!834073 m!1069297))

(check-sat (not b!834067) tp_is_empty!3893 (not b!834069) (not b!834077) (not b!834072) (not b!834070) (not b!834071) (not b!834076) (not b!834074) (not b!834073) (not start!74166))
(check-sat)
(get-model)

(declare-fun d!260654 () Bool)

(declare-fun lt!317855 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1324 (List!8911) (InoxSet C!4740))

(assert (=> d!260654 (= lt!317855 (select (content!1324 (usedCharacters!168 (regTwo!4682 r!27177))) c!13916))))

(declare-fun e!548915 () Bool)

(assert (=> d!260654 (= lt!317855 e!548915)))

(declare-fun res!382168 () Bool)

(assert (=> d!260654 (=> (not res!382168) (not e!548915))))

(assert (=> d!260654 (= res!382168 ((_ is Cons!8895) (usedCharacters!168 (regTwo!4682 r!27177))))))

(assert (=> d!260654 (= (contains!1676 (usedCharacters!168 (regTwo!4682 r!27177)) c!13916) lt!317855)))

(declare-fun b!834088 () Bool)

(declare-fun e!548914 () Bool)

(assert (=> b!834088 (= e!548915 e!548914)))

(declare-fun res!382169 () Bool)

(assert (=> b!834088 (=> res!382169 e!548914)))

(assert (=> b!834088 (= res!382169 (= (h!14296 (usedCharacters!168 (regTwo!4682 r!27177))) c!13916))))

(declare-fun b!834089 () Bool)

(assert (=> b!834089 (= e!548914 (contains!1676 (t!93203 (usedCharacters!168 (regTwo!4682 r!27177))) c!13916))))

(assert (= (and d!260654 res!382168) b!834088))

(assert (= (and b!834088 (not res!382169)) b!834089))

(assert (=> d!260654 m!1069297))

(declare-fun m!1069311 () Bool)

(assert (=> d!260654 m!1069311))

(declare-fun m!1069313 () Bool)

(assert (=> d!260654 m!1069313))

(declare-fun m!1069315 () Bool)

(assert (=> b!834089 m!1069315))

(assert (=> b!834073 d!260654))

(declare-fun d!260660 () Bool)

(assert (=> d!260660 (contains!1676 (usedCharacters!168 (regTwo!4682 r!27177)) c!13916)))

(declare-fun lt!317861 () Unit!13387)

(declare-fun choose!4938 (Regex!2085 C!4740) Unit!13387)

(assert (=> d!260660 (= lt!317861 (choose!4938 (regTwo!4682 r!27177) c!13916))))

(assert (=> d!260660 (validRegex!638 (regTwo!4682 r!27177))))

(assert (=> d!260660 (= (lemmaUsedCharsContainsAllFirstChars!10 (regTwo!4682 r!27177) c!13916) lt!317861)))

(declare-fun bs!229697 () Bool)

(assert (= bs!229697 d!260660))

(assert (=> bs!229697 m!1069297))

(assert (=> bs!229697 m!1069297))

(assert (=> bs!229697 m!1069299))

(declare-fun m!1069319 () Bool)

(assert (=> bs!229697 m!1069319))

(assert (=> bs!229697 m!1069293))

(assert (=> b!834073 d!260660))

(declare-fun d!260664 () Bool)

(declare-fun lt!317863 () Bool)

(assert (=> d!260664 (= lt!317863 (select (content!1324 (usedCharacters!168 r!27177)) c!13916))))

(declare-fun e!548919 () Bool)

(assert (=> d!260664 (= lt!317863 e!548919)))

(declare-fun res!382172 () Bool)

(assert (=> d!260664 (=> (not res!382172) (not e!548919))))

(assert (=> d!260664 (= res!382172 ((_ is Cons!8895) (usedCharacters!168 r!27177)))))

(assert (=> d!260664 (= (contains!1676 (usedCharacters!168 r!27177) c!13916) lt!317863)))

(declare-fun b!834092 () Bool)

(declare-fun e!548918 () Bool)

(assert (=> b!834092 (= e!548919 e!548918)))

(declare-fun res!382173 () Bool)

(assert (=> b!834092 (=> res!382173 e!548918)))

(assert (=> b!834092 (= res!382173 (= (h!14296 (usedCharacters!168 r!27177)) c!13916))))

(declare-fun b!834093 () Bool)

(assert (=> b!834093 (= e!548918 (contains!1676 (t!93203 (usedCharacters!168 r!27177)) c!13916))))

(assert (= (and d!260664 res!382172) b!834092))

(assert (= (and b!834092 (not res!382173)) b!834093))

(assert (=> d!260664 m!1069295))

(declare-fun m!1069327 () Bool)

(assert (=> d!260664 m!1069327))

(declare-fun m!1069329 () Bool)

(assert (=> d!260664 m!1069329))

(declare-fun m!1069331 () Bool)

(assert (=> b!834093 m!1069331))

(assert (=> b!834073 d!260664))

(declare-fun d!260668 () Bool)

(declare-fun c!136062 () Bool)

(assert (=> d!260668 (= c!136062 (or ((_ is EmptyExpr!2085) (regTwo!4682 r!27177)) ((_ is EmptyLang!2085) (regTwo!4682 r!27177))))))

(declare-fun e!548940 () List!8911)

(assert (=> d!260668 (= (usedCharacters!168 (regTwo!4682 r!27177)) e!548940)))

(declare-fun b!834134 () Bool)

(declare-fun e!548942 () List!8911)

(assert (=> b!834134 (= e!548942 (Cons!8895 (c!136038 (regTwo!4682 r!27177)) Nil!8895))))

(declare-fun bm!49681 () Bool)

(declare-fun call!49686 () List!8911)

(declare-fun call!49689 () List!8911)

(assert (=> bm!49681 (= call!49686 call!49689)))

(declare-fun call!49688 () List!8911)

(declare-fun bm!49682 () Bool)

(declare-fun c!136064 () Bool)

(declare-fun call!49687 () List!8911)

(declare-fun ++!2312 (List!8911 List!8911) List!8911)

(assert (=> bm!49682 (= call!49688 (++!2312 (ite c!136064 call!49687 call!49686) (ite c!136064 call!49686 call!49687)))))

(declare-fun b!834135 () Bool)

(assert (=> b!834135 (= e!548940 Nil!8895)))

(declare-fun b!834136 () Bool)

(declare-fun e!548941 () List!8911)

(assert (=> b!834136 (= e!548941 call!49688)))

(declare-fun b!834137 () Bool)

(assert (=> b!834137 (= e!548941 call!49688)))

(declare-fun bm!49683 () Bool)

(assert (=> bm!49683 (= call!49687 (usedCharacters!168 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))

(declare-fun b!834138 () Bool)

(declare-fun e!548943 () List!8911)

(assert (=> b!834138 (= e!548943 call!49689)))

(declare-fun b!834139 () Bool)

(assert (=> b!834139 (= e!548943 e!548941)))

(assert (=> b!834139 (= c!136064 ((_ is Union!2085) (regTwo!4682 r!27177)))))

(declare-fun b!834140 () Bool)

(assert (=> b!834140 (= e!548940 e!548942)))

(declare-fun c!136061 () Bool)

(assert (=> b!834140 (= c!136061 ((_ is ElementMatch!2085) (regTwo!4682 r!27177)))))

(declare-fun b!834141 () Bool)

(declare-fun c!136063 () Bool)

(assert (=> b!834141 (= c!136063 ((_ is Star!2085) (regTwo!4682 r!27177)))))

(assert (=> b!834141 (= e!548942 e!548943)))

(declare-fun bm!49684 () Bool)

(assert (=> bm!49684 (= call!49689 (usedCharacters!168 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(assert (= (and d!260668 c!136062) b!834135))

(assert (= (and d!260668 (not c!136062)) b!834140))

(assert (= (and b!834140 c!136061) b!834134))

(assert (= (and b!834140 (not c!136061)) b!834141))

(assert (= (and b!834141 c!136063) b!834138))

(assert (= (and b!834141 (not c!136063)) b!834139))

(assert (= (and b!834139 c!136064) b!834137))

(assert (= (and b!834139 (not c!136064)) b!834136))

(assert (= (or b!834137 b!834136) bm!49681))

(assert (= (or b!834137 b!834136) bm!49683))

(assert (= (or b!834137 b!834136) bm!49682))

(assert (= (or b!834138 bm!49681) bm!49684))

(declare-fun m!1069339 () Bool)

(assert (=> bm!49682 m!1069339))

(declare-fun m!1069341 () Bool)

(assert (=> bm!49683 m!1069341))

(declare-fun m!1069343 () Bool)

(assert (=> bm!49684 m!1069343))

(assert (=> b!834073 d!260668))

(declare-fun d!260672 () Bool)

(declare-fun c!136070 () Bool)

(assert (=> d!260672 (= c!136070 (or ((_ is EmptyExpr!2085) r!27177) ((_ is EmptyLang!2085) r!27177)))))

(declare-fun e!548948 () List!8911)

(assert (=> d!260672 (= (usedCharacters!168 r!27177) e!548948)))

(declare-fun b!834150 () Bool)

(declare-fun e!548950 () List!8911)

(assert (=> b!834150 (= e!548950 (Cons!8895 (c!136038 r!27177) Nil!8895))))

(declare-fun bm!49689 () Bool)

(declare-fun call!49694 () List!8911)

(declare-fun call!49697 () List!8911)

(assert (=> bm!49689 (= call!49694 call!49697)))

(declare-fun bm!49690 () Bool)

(declare-fun call!49696 () List!8911)

(declare-fun c!136072 () Bool)

(declare-fun call!49695 () List!8911)

(assert (=> bm!49690 (= call!49696 (++!2312 (ite c!136072 call!49695 call!49694) (ite c!136072 call!49694 call!49695)))))

(declare-fun b!834151 () Bool)

(assert (=> b!834151 (= e!548948 Nil!8895)))

(declare-fun b!834152 () Bool)

(declare-fun e!548949 () List!8911)

(assert (=> b!834152 (= e!548949 call!49696)))

(declare-fun b!834153 () Bool)

(assert (=> b!834153 (= e!548949 call!49696)))

(declare-fun bm!49691 () Bool)

(assert (=> bm!49691 (= call!49695 (usedCharacters!168 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))

(declare-fun b!834154 () Bool)

(declare-fun e!548951 () List!8911)

(assert (=> b!834154 (= e!548951 call!49697)))

(declare-fun b!834155 () Bool)

(assert (=> b!834155 (= e!548951 e!548949)))

(assert (=> b!834155 (= c!136072 ((_ is Union!2085) r!27177))))

(declare-fun b!834156 () Bool)

(assert (=> b!834156 (= e!548948 e!548950)))

(declare-fun c!136069 () Bool)

(assert (=> b!834156 (= c!136069 ((_ is ElementMatch!2085) r!27177))))

(declare-fun b!834157 () Bool)

(declare-fun c!136071 () Bool)

(assert (=> b!834157 (= c!136071 ((_ is Star!2085) r!27177))))

(assert (=> b!834157 (= e!548950 e!548951)))

(declare-fun bm!49692 () Bool)

(assert (=> bm!49692 (= call!49697 (usedCharacters!168 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(assert (= (and d!260672 c!136070) b!834151))

(assert (= (and d!260672 (not c!136070)) b!834156))

(assert (= (and b!834156 c!136069) b!834150))

(assert (= (and b!834156 (not c!136069)) b!834157))

(assert (= (and b!834157 c!136071) b!834154))

(assert (= (and b!834157 (not c!136071)) b!834155))

(assert (= (and b!834155 c!136072) b!834153))

(assert (= (and b!834155 (not c!136072)) b!834152))

(assert (= (or b!834153 b!834152) bm!49689))

(assert (= (or b!834153 b!834152) bm!49691))

(assert (= (or b!834153 b!834152) bm!49690))

(assert (= (or b!834154 bm!49689) bm!49692))

(declare-fun m!1069351 () Bool)

(assert (=> bm!49690 m!1069351))

(declare-fun m!1069353 () Bool)

(assert (=> bm!49691 m!1069353))

(declare-fun m!1069359 () Bool)

(assert (=> bm!49692 m!1069359))

(assert (=> b!834073 d!260672))

(declare-fun d!260676 () Bool)

(declare-fun lt!317865 () Bool)

(assert (=> d!260676 (= lt!317865 (select (content!1324 (firstChars!56 (regOne!4682 r!27177))) c!13916))))

(declare-fun e!548955 () Bool)

(assert (=> d!260676 (= lt!317865 e!548955)))

(declare-fun res!382176 () Bool)

(assert (=> d!260676 (=> (not res!382176) (not e!548955))))

(assert (=> d!260676 (= res!382176 ((_ is Cons!8895) (firstChars!56 (regOne!4682 r!27177))))))

(assert (=> d!260676 (= (contains!1676 (firstChars!56 (regOne!4682 r!27177)) c!13916) lt!317865)))

(declare-fun b!834160 () Bool)

(declare-fun e!548954 () Bool)

(assert (=> b!834160 (= e!548955 e!548954)))

(declare-fun res!382177 () Bool)

(assert (=> b!834160 (=> res!382177 e!548954)))

(assert (=> b!834160 (= res!382177 (= (h!14296 (firstChars!56 (regOne!4682 r!27177))) c!13916))))

(declare-fun b!834161 () Bool)

(assert (=> b!834161 (= e!548954 (contains!1676 (t!93203 (firstChars!56 (regOne!4682 r!27177))) c!13916))))

(assert (= (and d!260676 res!382176) b!834160))

(assert (= (and b!834160 (not res!382177)) b!834161))

(assert (=> d!260676 m!1069289))

(declare-fun m!1069363 () Bool)

(assert (=> d!260676 m!1069363))

(declare-fun m!1069365 () Bool)

(assert (=> d!260676 m!1069365))

(declare-fun m!1069367 () Bool)

(assert (=> b!834161 m!1069367))

(assert (=> b!834077 d!260676))

(declare-fun b!834212 () Bool)

(declare-fun e!548983 () List!8911)

(declare-fun e!548981 () List!8911)

(assert (=> b!834212 (= e!548983 e!548981)))

(declare-fun c!136099 () Bool)

(assert (=> b!834212 (= c!136099 ((_ is Union!2085) (regOne!4682 r!27177)))))

(declare-fun d!260680 () Bool)

(declare-fun c!136102 () Bool)

(assert (=> d!260680 (= c!136102 (or ((_ is EmptyExpr!2085) (regOne!4682 r!27177)) ((_ is EmptyLang!2085) (regOne!4682 r!27177))))))

(declare-fun e!548984 () List!8911)

(assert (=> d!260680 (= (firstChars!56 (regOne!4682 r!27177)) e!548984)))

(declare-fun bm!49718 () Bool)

(declare-fun call!49727 () List!8911)

(assert (=> bm!49718 (= call!49727 (firstChars!56 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))))))

(declare-fun call!49724 () List!8911)

(declare-fun call!49723 () List!8911)

(declare-fun call!49726 () List!8911)

(declare-fun bm!49719 () Bool)

(assert (=> bm!49719 (= call!49726 (++!2312 (ite c!136099 call!49723 call!49724) (ite c!136099 call!49727 call!49723)))))

(declare-fun c!136098 () Bool)

(declare-fun bm!49720 () Bool)

(declare-fun call!49725 () List!8911)

(assert (=> bm!49720 (= call!49725 (firstChars!56 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))))))

(declare-fun b!834213 () Bool)

(declare-fun e!548985 () List!8911)

(assert (=> b!834213 (= e!548985 call!49724)))

(declare-fun b!834214 () Bool)

(assert (=> b!834214 (= e!548985 call!49726)))

(declare-fun b!834215 () Bool)

(assert (=> b!834215 (= e!548983 call!49725)))

(declare-fun b!834216 () Bool)

(assert (=> b!834216 (= c!136098 ((_ is Star!2085) (regOne!4682 r!27177)))))

(declare-fun e!548982 () List!8911)

(assert (=> b!834216 (= e!548982 e!548983)))

(declare-fun bm!49721 () Bool)

(assert (=> bm!49721 (= call!49724 call!49727)))

(declare-fun b!834217 () Bool)

(declare-fun c!136100 () Bool)

(assert (=> b!834217 (= c!136100 (nullable!536 (regOne!4682 (regOne!4682 r!27177))))))

(assert (=> b!834217 (= e!548981 e!548985)))

(declare-fun b!834218 () Bool)

(assert (=> b!834218 (= e!548982 (Cons!8895 (c!136038 (regOne!4682 r!27177)) Nil!8895))))

(declare-fun b!834219 () Bool)

(assert (=> b!834219 (= e!548984 Nil!8895)))

(declare-fun b!834220 () Bool)

(assert (=> b!834220 (= e!548984 e!548982)))

(declare-fun c!136101 () Bool)

(assert (=> b!834220 (= c!136101 ((_ is ElementMatch!2085) (regOne!4682 r!27177)))))

(declare-fun bm!49722 () Bool)

(assert (=> bm!49722 (= call!49723 call!49725)))

(declare-fun b!834221 () Bool)

(assert (=> b!834221 (= e!548981 call!49726)))

(assert (= (and d!260680 c!136102) b!834219))

(assert (= (and d!260680 (not c!136102)) b!834220))

(assert (= (and b!834220 c!136101) b!834218))

(assert (= (and b!834220 (not c!136101)) b!834216))

(assert (= (and b!834216 c!136098) b!834215))

(assert (= (and b!834216 (not c!136098)) b!834212))

(assert (= (and b!834212 c!136099) b!834221))

(assert (= (and b!834212 (not c!136099)) b!834217))

(assert (= (and b!834217 c!136100) b!834214))

(assert (= (and b!834217 (not c!136100)) b!834213))

(assert (= (or b!834214 b!834213) bm!49721))

(assert (= (or b!834221 bm!49721) bm!49718))

(assert (= (or b!834221 b!834214) bm!49722))

(assert (= (or b!834221 b!834214) bm!49719))

(assert (= (or b!834215 bm!49722) bm!49720))

(declare-fun m!1069377 () Bool)

(assert (=> bm!49718 m!1069377))

(declare-fun m!1069379 () Bool)

(assert (=> bm!49719 m!1069379))

(declare-fun m!1069381 () Bool)

(assert (=> bm!49720 m!1069381))

(declare-fun m!1069383 () Bool)

(assert (=> b!834217 m!1069383))

(assert (=> b!834077 d!260680))

(declare-fun b!834270 () Bool)

(declare-fun e!549023 () Bool)

(declare-fun call!49747 () Bool)

(assert (=> b!834270 (= e!549023 call!49747)))

(declare-fun b!834271 () Bool)

(declare-fun e!549026 () Bool)

(declare-fun e!549025 () Bool)

(assert (=> b!834271 (= e!549026 e!549025)))

(declare-fun c!136116 () Bool)

(assert (=> b!834271 (= c!136116 ((_ is Union!2085) r!27177))))

(declare-fun b!834273 () Bool)

(declare-fun e!549022 () Bool)

(declare-fun call!49745 () Bool)

(assert (=> b!834273 (= e!549022 call!49745)))

(declare-fun b!834274 () Bool)

(declare-fun e!549021 () Bool)

(declare-fun call!49746 () Bool)

(assert (=> b!834274 (= e!549021 call!49746)))

(declare-fun b!834275 () Bool)

(declare-fun res!382200 () Bool)

(declare-fun e!549024 () Bool)

(assert (=> b!834275 (=> res!382200 e!549024)))

(assert (=> b!834275 (= res!382200 (not ((_ is Concat!3816) r!27177)))))

(assert (=> b!834275 (= e!549025 e!549024)))

(declare-fun bm!49740 () Bool)

(assert (=> bm!49740 (= call!49745 (validRegex!638 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun b!834276 () Bool)

(assert (=> b!834276 (= e!549026 e!549021)))

(declare-fun res!382202 () Bool)

(assert (=> b!834276 (= res!382202 (not (nullable!536 (reg!2414 r!27177))))))

(assert (=> b!834276 (=> (not res!382202) (not e!549021))))

(declare-fun b!834272 () Bool)

(declare-fun res!382204 () Bool)

(assert (=> b!834272 (=> (not res!382204) (not e!549022))))

(assert (=> b!834272 (= res!382204 call!49747)))

(assert (=> b!834272 (= e!549025 e!549022)))

(declare-fun d!260684 () Bool)

(declare-fun res!382201 () Bool)

(declare-fun e!549027 () Bool)

(assert (=> d!260684 (=> res!382201 e!549027)))

(assert (=> d!260684 (= res!382201 ((_ is ElementMatch!2085) r!27177))))

(assert (=> d!260684 (= (validRegex!638 r!27177) e!549027)))

(declare-fun bm!49741 () Bool)

(assert (=> bm!49741 (= call!49747 call!49746)))

(declare-fun b!834277 () Bool)

(assert (=> b!834277 (= e!549027 e!549026)))

(declare-fun c!136117 () Bool)

(assert (=> b!834277 (= c!136117 ((_ is Star!2085) r!27177))))

(declare-fun bm!49742 () Bool)

(assert (=> bm!49742 (= call!49746 (validRegex!638 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun b!834278 () Bool)

(assert (=> b!834278 (= e!549024 e!549023)))

(declare-fun res!382203 () Bool)

(assert (=> b!834278 (=> (not res!382203) (not e!549023))))

(assert (=> b!834278 (= res!382203 call!49745)))

(assert (= (and d!260684 (not res!382201)) b!834277))

(assert (= (and b!834277 c!136117) b!834276))

(assert (= (and b!834277 (not c!136117)) b!834271))

(assert (= (and b!834276 res!382202) b!834274))

(assert (= (and b!834271 c!136116) b!834272))

(assert (= (and b!834271 (not c!136116)) b!834275))

(assert (= (and b!834272 res!382204) b!834273))

(assert (= (and b!834275 (not res!382200)) b!834278))

(assert (= (and b!834278 res!382203) b!834270))

(assert (= (or b!834272 b!834270) bm!49741))

(assert (= (or b!834273 b!834278) bm!49740))

(assert (= (or b!834274 bm!49741) bm!49742))

(declare-fun m!1069399 () Bool)

(assert (=> bm!49740 m!1069399))

(declare-fun m!1069401 () Bool)

(assert (=> b!834276 m!1069401))

(declare-fun m!1069403 () Bool)

(assert (=> bm!49742 m!1069403))

(assert (=> start!74166 d!260684))

(declare-fun d!260690 () Bool)

(declare-fun nullableFct!173 (Regex!2085) Bool)

(assert (=> d!260690 (= (nullable!536 (regOne!4682 r!27177)) (nullableFct!173 (regOne!4682 r!27177)))))

(declare-fun bs!229698 () Bool)

(assert (= bs!229698 d!260690))

(declare-fun m!1069405 () Bool)

(assert (=> bs!229698 m!1069405))

(assert (=> b!834071 d!260690))

(declare-fun d!260692 () Bool)

(declare-fun lt!317867 () Bool)

(assert (=> d!260692 (= lt!317867 (select (content!1324 (firstChars!56 r!27177)) c!13916))))

(declare-fun e!549036 () Bool)

(assert (=> d!260692 (= lt!317867 e!549036)))

(declare-fun res!382210 () Bool)

(assert (=> d!260692 (=> (not res!382210) (not e!549036))))

(assert (=> d!260692 (= res!382210 ((_ is Cons!8895) (firstChars!56 r!27177)))))

(assert (=> d!260692 (= (contains!1676 (firstChars!56 r!27177) c!13916) lt!317867)))

(declare-fun b!834288 () Bool)

(declare-fun e!549035 () Bool)

(assert (=> b!834288 (= e!549036 e!549035)))

(declare-fun res!382211 () Bool)

(assert (=> b!834288 (=> res!382211 e!549035)))

(assert (=> b!834288 (= res!382211 (= (h!14296 (firstChars!56 r!27177)) c!13916))))

(declare-fun b!834289 () Bool)

(assert (=> b!834289 (= e!549035 (contains!1676 (t!93203 (firstChars!56 r!27177)) c!13916))))

(assert (= (and d!260692 res!382210) b!834288))

(assert (= (and b!834288 (not res!382211)) b!834289))

(assert (=> d!260692 m!1069281))

(declare-fun m!1069413 () Bool)

(assert (=> d!260692 m!1069413))

(declare-fun m!1069415 () Bool)

(assert (=> d!260692 m!1069415))

(declare-fun m!1069417 () Bool)

(assert (=> b!834289 m!1069417))

(assert (=> b!834076 d!260692))

(declare-fun b!834292 () Bool)

(declare-fun e!549041 () List!8911)

(declare-fun e!549039 () List!8911)

(assert (=> b!834292 (= e!549041 e!549039)))

(declare-fun c!136121 () Bool)

(assert (=> b!834292 (= c!136121 ((_ is Union!2085) r!27177))))

(declare-fun d!260696 () Bool)

(declare-fun c!136124 () Bool)

(assert (=> d!260696 (= c!136124 (or ((_ is EmptyExpr!2085) r!27177) ((_ is EmptyLang!2085) r!27177)))))

(declare-fun e!549042 () List!8911)

(assert (=> d!260696 (= (firstChars!56 r!27177) e!549042)))

(declare-fun bm!49746 () Bool)

(declare-fun call!49755 () List!8911)

(assert (=> bm!49746 (= call!49755 (firstChars!56 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun call!49752 () List!8911)

(declare-fun bm!49747 () Bool)

(declare-fun call!49754 () List!8911)

(declare-fun call!49751 () List!8911)

(assert (=> bm!49747 (= call!49754 (++!2312 (ite c!136121 call!49751 call!49752) (ite c!136121 call!49755 call!49751)))))

(declare-fun call!49753 () List!8911)

(declare-fun c!136120 () Bool)

(declare-fun bm!49748 () Bool)

(assert (=> bm!49748 (= call!49753 (firstChars!56 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun b!834293 () Bool)

(declare-fun e!549043 () List!8911)

(assert (=> b!834293 (= e!549043 call!49752)))

(declare-fun b!834294 () Bool)

(assert (=> b!834294 (= e!549043 call!49754)))

(declare-fun b!834295 () Bool)

(assert (=> b!834295 (= e!549041 call!49753)))

(declare-fun b!834296 () Bool)

(assert (=> b!834296 (= c!136120 ((_ is Star!2085) r!27177))))

(declare-fun e!549040 () List!8911)

(assert (=> b!834296 (= e!549040 e!549041)))

(declare-fun bm!49749 () Bool)

(assert (=> bm!49749 (= call!49752 call!49755)))

(declare-fun b!834297 () Bool)

(declare-fun c!136122 () Bool)

(assert (=> b!834297 (= c!136122 (nullable!536 (regOne!4682 r!27177)))))

(assert (=> b!834297 (= e!549039 e!549043)))

(declare-fun b!834298 () Bool)

(assert (=> b!834298 (= e!549040 (Cons!8895 (c!136038 r!27177) Nil!8895))))

(declare-fun b!834299 () Bool)

(assert (=> b!834299 (= e!549042 Nil!8895)))

(declare-fun b!834300 () Bool)

(assert (=> b!834300 (= e!549042 e!549040)))

(declare-fun c!136123 () Bool)

(assert (=> b!834300 (= c!136123 ((_ is ElementMatch!2085) r!27177))))

(declare-fun bm!49750 () Bool)

(assert (=> bm!49750 (= call!49751 call!49753)))

(declare-fun b!834301 () Bool)

(assert (=> b!834301 (= e!549039 call!49754)))

(assert (= (and d!260696 c!136124) b!834299))

(assert (= (and d!260696 (not c!136124)) b!834300))

(assert (= (and b!834300 c!136123) b!834298))

(assert (= (and b!834300 (not c!136123)) b!834296))

(assert (= (and b!834296 c!136120) b!834295))

(assert (= (and b!834296 (not c!136120)) b!834292))

(assert (= (and b!834292 c!136121) b!834301))

(assert (= (and b!834292 (not c!136121)) b!834297))

(assert (= (and b!834297 c!136122) b!834294))

(assert (= (and b!834297 (not c!136122)) b!834293))

(assert (= (or b!834294 b!834293) bm!49749))

(assert (= (or b!834301 bm!49749) bm!49746))

(assert (= (or b!834301 b!834294) bm!49750))

(assert (= (or b!834301 b!834294) bm!49747))

(assert (= (or b!834295 bm!49750) bm!49748))

(declare-fun m!1069425 () Bool)

(assert (=> bm!49746 m!1069425))

(declare-fun m!1069427 () Bool)

(assert (=> bm!49747 m!1069427))

(declare-fun m!1069429 () Bool)

(assert (=> bm!49748 m!1069429))

(assert (=> b!834297 m!1069277))

(assert (=> b!834076 d!260696))

(declare-fun d!260700 () Bool)

(declare-fun lt!317869 () Bool)

(assert (=> d!260700 (= lt!317869 (select (content!1324 (firstChars!56 (regTwo!4682 r!27177))) c!13916))))

(declare-fun e!549050 () Bool)

(assert (=> d!260700 (= lt!317869 e!549050)))

(declare-fun res!382214 () Bool)

(assert (=> d!260700 (=> (not res!382214) (not e!549050))))

(assert (=> d!260700 (= res!382214 ((_ is Cons!8895) (firstChars!56 (regTwo!4682 r!27177))))))

(assert (=> d!260700 (= (contains!1676 (firstChars!56 (regTwo!4682 r!27177)) c!13916) lt!317869)))

(declare-fun b!834312 () Bool)

(declare-fun e!549049 () Bool)

(assert (=> b!834312 (= e!549050 e!549049)))

(declare-fun res!382215 () Bool)

(assert (=> b!834312 (=> res!382215 e!549049)))

(assert (=> b!834312 (= res!382215 (= (h!14296 (firstChars!56 (regTwo!4682 r!27177))) c!13916))))

(declare-fun b!834313 () Bool)

(assert (=> b!834313 (= e!549049 (contains!1676 (t!93203 (firstChars!56 (regTwo!4682 r!27177))) c!13916))))

(assert (= (and d!260700 res!382214) b!834312))

(assert (= (and b!834312 (not res!382215)) b!834313))

(assert (=> d!260700 m!1069285))

(declare-fun m!1069437 () Bool)

(assert (=> d!260700 m!1069437))

(declare-fun m!1069439 () Bool)

(assert (=> d!260700 m!1069439))

(declare-fun m!1069441 () Bool)

(assert (=> b!834313 m!1069441))

(assert (=> b!834070 d!260700))

(declare-fun b!834314 () Bool)

(declare-fun e!549053 () List!8911)

(declare-fun e!549051 () List!8911)

(assert (=> b!834314 (= e!549053 e!549051)))

(declare-fun c!136131 () Bool)

(assert (=> b!834314 (= c!136131 ((_ is Union!2085) (regTwo!4682 r!27177)))))

(declare-fun d!260704 () Bool)

(declare-fun c!136134 () Bool)

(assert (=> d!260704 (= c!136134 (or ((_ is EmptyExpr!2085) (regTwo!4682 r!27177)) ((_ is EmptyLang!2085) (regTwo!4682 r!27177))))))

(declare-fun e!549054 () List!8911)

(assert (=> d!260704 (= (firstChars!56 (regTwo!4682 r!27177)) e!549054)))

(declare-fun bm!49756 () Bool)

(declare-fun call!49765 () List!8911)

(assert (=> bm!49756 (= call!49765 (firstChars!56 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun bm!49757 () Bool)

(declare-fun call!49761 () List!8911)

(declare-fun call!49764 () List!8911)

(declare-fun call!49762 () List!8911)

(assert (=> bm!49757 (= call!49764 (++!2312 (ite c!136131 call!49761 call!49762) (ite c!136131 call!49765 call!49761)))))

(declare-fun bm!49758 () Bool)

(declare-fun c!136130 () Bool)

(declare-fun call!49763 () List!8911)

(assert (=> bm!49758 (= call!49763 (firstChars!56 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun b!834315 () Bool)

(declare-fun e!549055 () List!8911)

(assert (=> b!834315 (= e!549055 call!49762)))

(declare-fun b!834316 () Bool)

(assert (=> b!834316 (= e!549055 call!49764)))

(declare-fun b!834317 () Bool)

(assert (=> b!834317 (= e!549053 call!49763)))

(declare-fun b!834318 () Bool)

(assert (=> b!834318 (= c!136130 ((_ is Star!2085) (regTwo!4682 r!27177)))))

(declare-fun e!549052 () List!8911)

(assert (=> b!834318 (= e!549052 e!549053)))

(declare-fun bm!49759 () Bool)

(assert (=> bm!49759 (= call!49762 call!49765)))

(declare-fun b!834319 () Bool)

(declare-fun c!136132 () Bool)

(assert (=> b!834319 (= c!136132 (nullable!536 (regOne!4682 (regTwo!4682 r!27177))))))

(assert (=> b!834319 (= e!549051 e!549055)))

(declare-fun b!834320 () Bool)

(assert (=> b!834320 (= e!549052 (Cons!8895 (c!136038 (regTwo!4682 r!27177)) Nil!8895))))

(declare-fun b!834321 () Bool)

(assert (=> b!834321 (= e!549054 Nil!8895)))

(declare-fun b!834322 () Bool)

(assert (=> b!834322 (= e!549054 e!549052)))

(declare-fun c!136133 () Bool)

(assert (=> b!834322 (= c!136133 ((_ is ElementMatch!2085) (regTwo!4682 r!27177)))))

(declare-fun bm!49760 () Bool)

(assert (=> bm!49760 (= call!49761 call!49763)))

(declare-fun b!834323 () Bool)

(assert (=> b!834323 (= e!549051 call!49764)))

(assert (= (and d!260704 c!136134) b!834321))

(assert (= (and d!260704 (not c!136134)) b!834322))

(assert (= (and b!834322 c!136133) b!834320))

(assert (= (and b!834322 (not c!136133)) b!834318))

(assert (= (and b!834318 c!136130) b!834317))

(assert (= (and b!834318 (not c!136130)) b!834314))

(assert (= (and b!834314 c!136131) b!834323))

(assert (= (and b!834314 (not c!136131)) b!834319))

(assert (= (and b!834319 c!136132) b!834316))

(assert (= (and b!834319 (not c!136132)) b!834315))

(assert (= (or b!834316 b!834315) bm!49759))

(assert (= (or b!834323 bm!49759) bm!49756))

(assert (= (or b!834323 b!834316) bm!49760))

(assert (= (or b!834323 b!834316) bm!49757))

(assert (= (or b!834317 bm!49760) bm!49758))

(declare-fun m!1069445 () Bool)

(assert (=> bm!49756 m!1069445))

(declare-fun m!1069447 () Bool)

(assert (=> bm!49757 m!1069447))

(declare-fun m!1069449 () Bool)

(assert (=> bm!49758 m!1069449))

(declare-fun m!1069451 () Bool)

(assert (=> b!834319 m!1069451))

(assert (=> b!834070 d!260704))

(declare-fun b!834333 () Bool)

(declare-fun e!549065 () Bool)

(declare-fun call!49771 () Bool)

(assert (=> b!834333 (= e!549065 call!49771)))

(declare-fun b!834334 () Bool)

(declare-fun e!549068 () Bool)

(declare-fun e!549067 () Bool)

(assert (=> b!834334 (= e!549068 e!549067)))

(declare-fun c!136137 () Bool)

(assert (=> b!834334 (= c!136137 ((_ is Union!2085) (regTwo!4682 r!27177)))))

(declare-fun b!834336 () Bool)

(declare-fun e!549064 () Bool)

(declare-fun call!49769 () Bool)

(assert (=> b!834336 (= e!549064 call!49769)))

(declare-fun b!834337 () Bool)

(declare-fun e!549063 () Bool)

(declare-fun call!49770 () Bool)

(assert (=> b!834337 (= e!549063 call!49770)))

(declare-fun b!834338 () Bool)

(declare-fun res!382221 () Bool)

(declare-fun e!549066 () Bool)

(assert (=> b!834338 (=> res!382221 e!549066)))

(assert (=> b!834338 (= res!382221 (not ((_ is Concat!3816) (regTwo!4682 r!27177))))))

(assert (=> b!834338 (= e!549067 e!549066)))

(declare-fun bm!49764 () Bool)

(assert (=> bm!49764 (= call!49769 (validRegex!638 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun b!834339 () Bool)

(assert (=> b!834339 (= e!549068 e!549063)))

(declare-fun res!382223 () Bool)

(assert (=> b!834339 (= res!382223 (not (nullable!536 (reg!2414 (regTwo!4682 r!27177)))))))

(assert (=> b!834339 (=> (not res!382223) (not e!549063))))

(declare-fun b!834335 () Bool)

(declare-fun res!382225 () Bool)

(assert (=> b!834335 (=> (not res!382225) (not e!549064))))

(assert (=> b!834335 (= res!382225 call!49771)))

(assert (=> b!834335 (= e!549067 e!549064)))

(declare-fun d!260708 () Bool)

(declare-fun res!382222 () Bool)

(declare-fun e!549069 () Bool)

(assert (=> d!260708 (=> res!382222 e!549069)))

(assert (=> d!260708 (= res!382222 ((_ is ElementMatch!2085) (regTwo!4682 r!27177)))))

(assert (=> d!260708 (= (validRegex!638 (regTwo!4682 r!27177)) e!549069)))

(declare-fun bm!49765 () Bool)

(assert (=> bm!49765 (= call!49771 call!49770)))

(declare-fun b!834340 () Bool)

(assert (=> b!834340 (= e!549069 e!549068)))

(declare-fun c!136138 () Bool)

(assert (=> b!834340 (= c!136138 ((_ is Star!2085) (regTwo!4682 r!27177)))))

(declare-fun bm!49766 () Bool)

(assert (=> bm!49766 (= call!49770 (validRegex!638 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun b!834341 () Bool)

(assert (=> b!834341 (= e!549066 e!549065)))

(declare-fun res!382224 () Bool)

(assert (=> b!834341 (=> (not res!382224) (not e!549065))))

(assert (=> b!834341 (= res!382224 call!49769)))

(assert (= (and d!260708 (not res!382222)) b!834340))

(assert (= (and b!834340 c!136138) b!834339))

(assert (= (and b!834340 (not c!136138)) b!834334))

(assert (= (and b!834339 res!382223) b!834337))

(assert (= (and b!834334 c!136137) b!834335))

(assert (= (and b!834334 (not c!136137)) b!834338))

(assert (= (and b!834335 res!382225) b!834336))

(assert (= (and b!834338 (not res!382221)) b!834341))

(assert (= (and b!834341 res!382224) b!834333))

(assert (= (or b!834335 b!834333) bm!49765))

(assert (= (or b!834336 b!834341) bm!49764))

(assert (= (or b!834337 bm!49765) bm!49766))

(declare-fun m!1069459 () Bool)

(assert (=> bm!49764 m!1069459))

(declare-fun m!1069461 () Bool)

(assert (=> b!834339 m!1069461))

(declare-fun m!1069463 () Bool)

(assert (=> bm!49766 m!1069463))

(assert (=> b!834069 d!260708))

(declare-fun b!834375 () Bool)

(declare-fun e!549077 () Bool)

(declare-fun tp!261453 () Bool)

(declare-fun tp!261454 () Bool)

(assert (=> b!834375 (= e!549077 (and tp!261453 tp!261454))))

(declare-fun b!834374 () Bool)

(assert (=> b!834374 (= e!549077 tp_is_empty!3893)))

(declare-fun b!834377 () Bool)

(declare-fun tp!261450 () Bool)

(declare-fun tp!261452 () Bool)

(assert (=> b!834377 (= e!549077 (and tp!261450 tp!261452))))

(declare-fun b!834376 () Bool)

(declare-fun tp!261451 () Bool)

(assert (=> b!834376 (= e!549077 tp!261451)))

(assert (=> b!834067 (= tp!261413 e!549077)))

(assert (= (and b!834067 ((_ is ElementMatch!2085) (regOne!4683 r!27177))) b!834374))

(assert (= (and b!834067 ((_ is Concat!3816) (regOne!4683 r!27177))) b!834375))

(assert (= (and b!834067 ((_ is Star!2085) (regOne!4683 r!27177))) b!834376))

(assert (= (and b!834067 ((_ is Union!2085) (regOne!4683 r!27177))) b!834377))

(declare-fun b!834387 () Bool)

(declare-fun e!549080 () Bool)

(declare-fun tp!261468 () Bool)

(declare-fun tp!261469 () Bool)

(assert (=> b!834387 (= e!549080 (and tp!261468 tp!261469))))

(declare-fun b!834386 () Bool)

(assert (=> b!834386 (= e!549080 tp_is_empty!3893)))

(declare-fun b!834389 () Bool)

(declare-fun tp!261465 () Bool)

(declare-fun tp!261467 () Bool)

(assert (=> b!834389 (= e!549080 (and tp!261465 tp!261467))))

(declare-fun b!834388 () Bool)

(declare-fun tp!261466 () Bool)

(assert (=> b!834388 (= e!549080 tp!261466)))

(assert (=> b!834067 (= tp!261414 e!549080)))

(assert (= (and b!834067 ((_ is ElementMatch!2085) (regTwo!4683 r!27177))) b!834386))

(assert (= (and b!834067 ((_ is Concat!3816) (regTwo!4683 r!27177))) b!834387))

(assert (= (and b!834067 ((_ is Star!2085) (regTwo!4683 r!27177))) b!834388))

(assert (= (and b!834067 ((_ is Union!2085) (regTwo!4683 r!27177))) b!834389))

(declare-fun b!834391 () Bool)

(declare-fun e!549081 () Bool)

(declare-fun tp!261473 () Bool)

(declare-fun tp!261474 () Bool)

(assert (=> b!834391 (= e!549081 (and tp!261473 tp!261474))))

(declare-fun b!834390 () Bool)

(assert (=> b!834390 (= e!549081 tp_is_empty!3893)))

(declare-fun b!834393 () Bool)

(declare-fun tp!261470 () Bool)

(declare-fun tp!261472 () Bool)

(assert (=> b!834393 (= e!549081 (and tp!261470 tp!261472))))

(declare-fun b!834392 () Bool)

(declare-fun tp!261471 () Bool)

(assert (=> b!834392 (= e!549081 tp!261471)))

(assert (=> b!834072 (= tp!261410 e!549081)))

(assert (= (and b!834072 ((_ is ElementMatch!2085) (reg!2414 r!27177))) b!834390))

(assert (= (and b!834072 ((_ is Concat!3816) (reg!2414 r!27177))) b!834391))

(assert (= (and b!834072 ((_ is Star!2085) (reg!2414 r!27177))) b!834392))

(assert (= (and b!834072 ((_ is Union!2085) (reg!2414 r!27177))) b!834393))

(declare-fun b!834395 () Bool)

(declare-fun e!549082 () Bool)

(declare-fun tp!261478 () Bool)

(declare-fun tp!261479 () Bool)

(assert (=> b!834395 (= e!549082 (and tp!261478 tp!261479))))

(declare-fun b!834394 () Bool)

(assert (=> b!834394 (= e!549082 tp_is_empty!3893)))

(declare-fun b!834397 () Bool)

(declare-fun tp!261475 () Bool)

(declare-fun tp!261477 () Bool)

(assert (=> b!834397 (= e!549082 (and tp!261475 tp!261477))))

(declare-fun b!834396 () Bool)

(declare-fun tp!261476 () Bool)

(assert (=> b!834396 (= e!549082 tp!261476)))

(assert (=> b!834074 (= tp!261411 e!549082)))

(assert (= (and b!834074 ((_ is ElementMatch!2085) (regOne!4682 r!27177))) b!834394))

(assert (= (and b!834074 ((_ is Concat!3816) (regOne!4682 r!27177))) b!834395))

(assert (= (and b!834074 ((_ is Star!2085) (regOne!4682 r!27177))) b!834396))

(assert (= (and b!834074 ((_ is Union!2085) (regOne!4682 r!27177))) b!834397))

(declare-fun b!834399 () Bool)

(declare-fun e!549083 () Bool)

(declare-fun tp!261483 () Bool)

(declare-fun tp!261484 () Bool)

(assert (=> b!834399 (= e!549083 (and tp!261483 tp!261484))))

(declare-fun b!834398 () Bool)

(assert (=> b!834398 (= e!549083 tp_is_empty!3893)))

(declare-fun b!834401 () Bool)

(declare-fun tp!261480 () Bool)

(declare-fun tp!261482 () Bool)

(assert (=> b!834401 (= e!549083 (and tp!261480 tp!261482))))

(declare-fun b!834400 () Bool)

(declare-fun tp!261481 () Bool)

(assert (=> b!834400 (= e!549083 tp!261481)))

(assert (=> b!834074 (= tp!261412 e!549083)))

(assert (= (and b!834074 ((_ is ElementMatch!2085) (regTwo!4682 r!27177))) b!834398))

(assert (= (and b!834074 ((_ is Concat!3816) (regTwo!4682 r!27177))) b!834399))

(assert (= (and b!834074 ((_ is Star!2085) (regTwo!4682 r!27177))) b!834400))

(assert (= (and b!834074 ((_ is Union!2085) (regTwo!4682 r!27177))) b!834401))

(check-sat (not b!834161) (not bm!49748) (not b!834395) (not b!834319) (not bm!49683) (not b!834276) (not b!834389) (not bm!49766) (not b!834401) (not bm!49692) (not b!834387) (not b!834396) (not d!260690) (not bm!49690) tp_is_empty!3893 (not bm!49756) (not b!834297) (not b!834391) (not b!834400) (not bm!49764) (not bm!49684) (not bm!49691) (not b!834377) (not b!834217) (not bm!49719) (not b!834313) (not b!834397) (not b!834339) (not b!834093) (not b!834089) (not d!260660) (not b!834393) (not d!260664) (not bm!49757) (not bm!49720) (not bm!49740) (not bm!49747) (not b!834399) (not b!834392) (not b!834375) (not bm!49682) (not d!260654) (not d!260676) (not bm!49718) (not d!260692) (not b!834289) (not bm!49742) (not b!834388) (not bm!49758) (not d!260700) (not bm!49746) (not b!834376))
(check-sat)
(get-model)

(declare-fun d!260710 () Bool)

(declare-fun lt!317870 () Bool)

(assert (=> d!260710 (= lt!317870 (select (content!1324 (t!93203 (firstChars!56 (regTwo!4682 r!27177)))) c!13916))))

(declare-fun e!549085 () Bool)

(assert (=> d!260710 (= lt!317870 e!549085)))

(declare-fun res!382226 () Bool)

(assert (=> d!260710 (=> (not res!382226) (not e!549085))))

(assert (=> d!260710 (= res!382226 ((_ is Cons!8895) (t!93203 (firstChars!56 (regTwo!4682 r!27177)))))))

(assert (=> d!260710 (= (contains!1676 (t!93203 (firstChars!56 (regTwo!4682 r!27177))) c!13916) lt!317870)))

(declare-fun b!834402 () Bool)

(declare-fun e!549084 () Bool)

(assert (=> b!834402 (= e!549085 e!549084)))

(declare-fun res!382227 () Bool)

(assert (=> b!834402 (=> res!382227 e!549084)))

(assert (=> b!834402 (= res!382227 (= (h!14296 (t!93203 (firstChars!56 (regTwo!4682 r!27177)))) c!13916))))

(declare-fun b!834403 () Bool)

(assert (=> b!834403 (= e!549084 (contains!1676 (t!93203 (t!93203 (firstChars!56 (regTwo!4682 r!27177)))) c!13916))))

(assert (= (and d!260710 res!382226) b!834402))

(assert (= (and b!834402 (not res!382227)) b!834403))

(declare-fun m!1069465 () Bool)

(assert (=> d!260710 m!1069465))

(declare-fun m!1069467 () Bool)

(assert (=> d!260710 m!1069467))

(declare-fun m!1069469 () Bool)

(assert (=> b!834403 m!1069469))

(assert (=> b!834313 d!260710))

(declare-fun d!260712 () Bool)

(declare-fun c!136140 () Bool)

(assert (=> d!260712 (= c!136140 (or ((_ is EmptyExpr!2085) (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))) ((_ is EmptyLang!2085) (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))))

(declare-fun e!549086 () List!8911)

(assert (=> d!260712 (= (usedCharacters!168 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))) e!549086)))

(declare-fun b!834404 () Bool)

(declare-fun e!549088 () List!8911)

(assert (=> b!834404 (= e!549088 (Cons!8895 (c!136038 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))) Nil!8895))))

(declare-fun bm!49767 () Bool)

(declare-fun call!49772 () List!8911)

(declare-fun call!49775 () List!8911)

(assert (=> bm!49767 (= call!49772 call!49775)))

(declare-fun c!136142 () Bool)

(declare-fun call!49773 () List!8911)

(declare-fun bm!49768 () Bool)

(declare-fun call!49774 () List!8911)

(assert (=> bm!49768 (= call!49774 (++!2312 (ite c!136142 call!49773 call!49772) (ite c!136142 call!49772 call!49773)))))

(declare-fun b!834405 () Bool)

(assert (=> b!834405 (= e!549086 Nil!8895)))

(declare-fun b!834406 () Bool)

(declare-fun e!549087 () List!8911)

(assert (=> b!834406 (= e!549087 call!49774)))

(declare-fun b!834407 () Bool)

(assert (=> b!834407 (= e!549087 call!49774)))

(declare-fun bm!49769 () Bool)

(assert (=> bm!49769 (= call!49773 (usedCharacters!168 (ite c!136142 (regOne!4683 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))) (regTwo!4682 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))))

(declare-fun b!834408 () Bool)

(declare-fun e!549089 () List!8911)

(assert (=> b!834408 (= e!549089 call!49775)))

(declare-fun b!834409 () Bool)

(assert (=> b!834409 (= e!549089 e!549087)))

(assert (=> b!834409 (= c!136142 ((_ is Union!2085) (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(declare-fun b!834410 () Bool)

(assert (=> b!834410 (= e!549086 e!549088)))

(declare-fun c!136139 () Bool)

(assert (=> b!834410 (= c!136139 ((_ is ElementMatch!2085) (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(declare-fun b!834411 () Bool)

(declare-fun c!136141 () Bool)

(assert (=> b!834411 (= c!136141 ((_ is Star!2085) (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(assert (=> b!834411 (= e!549088 e!549089)))

(declare-fun bm!49770 () Bool)

(assert (=> bm!49770 (= call!49775 (usedCharacters!168 (ite c!136141 (reg!2414 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))) (ite c!136142 (regTwo!4683 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177)))) (regOne!4682 (ite c!136071 (reg!2414 r!27177) (ite c!136072 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))))))

(assert (= (and d!260712 c!136140) b!834405))

(assert (= (and d!260712 (not c!136140)) b!834410))

(assert (= (and b!834410 c!136139) b!834404))

(assert (= (and b!834410 (not c!136139)) b!834411))

(assert (= (and b!834411 c!136141) b!834408))

(assert (= (and b!834411 (not c!136141)) b!834409))

(assert (= (and b!834409 c!136142) b!834407))

(assert (= (and b!834409 (not c!136142)) b!834406))

(assert (= (or b!834407 b!834406) bm!49767))

(assert (= (or b!834407 b!834406) bm!49769))

(assert (= (or b!834407 b!834406) bm!49768))

(assert (= (or b!834408 bm!49767) bm!49770))

(declare-fun m!1069471 () Bool)

(assert (=> bm!49768 m!1069471))

(declare-fun m!1069473 () Bool)

(assert (=> bm!49769 m!1069473))

(declare-fun m!1069475 () Bool)

(assert (=> bm!49770 m!1069475))

(assert (=> bm!49692 d!260712))

(declare-fun c!136144 () Bool)

(declare-fun d!260714 () Bool)

(assert (=> d!260714 (= c!136144 (or ((_ is EmptyExpr!2085) (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))) ((_ is EmptyLang!2085) (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))))

(declare-fun e!549090 () List!8911)

(assert (=> d!260714 (= (usedCharacters!168 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))) e!549090)))

(declare-fun e!549092 () List!8911)

(declare-fun b!834412 () Bool)

(assert (=> b!834412 (= e!549092 (Cons!8895 (c!136038 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))) Nil!8895))))

(declare-fun bm!49771 () Bool)

(declare-fun call!49776 () List!8911)

(declare-fun call!49779 () List!8911)

(assert (=> bm!49771 (= call!49776 call!49779)))

(declare-fun bm!49772 () Bool)

(declare-fun call!49778 () List!8911)

(declare-fun c!136146 () Bool)

(declare-fun call!49777 () List!8911)

(assert (=> bm!49772 (= call!49778 (++!2312 (ite c!136146 call!49777 call!49776) (ite c!136146 call!49776 call!49777)))))

(declare-fun b!834413 () Bool)

(assert (=> b!834413 (= e!549090 Nil!8895)))

(declare-fun b!834414 () Bool)

(declare-fun e!549091 () List!8911)

(assert (=> b!834414 (= e!549091 call!49778)))

(declare-fun b!834415 () Bool)

(assert (=> b!834415 (= e!549091 call!49778)))

(declare-fun bm!49773 () Bool)

(assert (=> bm!49773 (= call!49777 (usedCharacters!168 (ite c!136146 (regOne!4683 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))) (regTwo!4682 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))))

(declare-fun b!834416 () Bool)

(declare-fun e!549093 () List!8911)

(assert (=> b!834416 (= e!549093 call!49779)))

(declare-fun b!834417 () Bool)

(assert (=> b!834417 (= e!549093 e!549091)))

(assert (=> b!834417 (= c!136146 ((_ is Union!2085) (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(declare-fun b!834418 () Bool)

(assert (=> b!834418 (= e!549090 e!549092)))

(declare-fun c!136143 () Bool)

(assert (=> b!834418 (= c!136143 ((_ is ElementMatch!2085) (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(declare-fun c!136145 () Bool)

(declare-fun b!834419 () Bool)

(assert (=> b!834419 (= c!136145 ((_ is Star!2085) (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(assert (=> b!834419 (= e!549092 e!549093)))

(declare-fun bm!49774 () Bool)

(assert (=> bm!49774 (= call!49779 (usedCharacters!168 (ite c!136145 (reg!2414 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))) (ite c!136146 (regTwo!4683 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))) (regOne!4682 (ite c!136063 (reg!2414 (regTwo!4682 r!27177)) (ite c!136064 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))))))

(assert (= (and d!260714 c!136144) b!834413))

(assert (= (and d!260714 (not c!136144)) b!834418))

(assert (= (and b!834418 c!136143) b!834412))

(assert (= (and b!834418 (not c!136143)) b!834419))

(assert (= (and b!834419 c!136145) b!834416))

(assert (= (and b!834419 (not c!136145)) b!834417))

(assert (= (and b!834417 c!136146) b!834415))

(assert (= (and b!834417 (not c!136146)) b!834414))

(assert (= (or b!834415 b!834414) bm!49771))

(assert (= (or b!834415 b!834414) bm!49773))

(assert (= (or b!834415 b!834414) bm!49772))

(assert (= (or b!834416 bm!49771) bm!49774))

(declare-fun m!1069477 () Bool)

(assert (=> bm!49772 m!1069477))

(declare-fun m!1069479 () Bool)

(assert (=> bm!49773 m!1069479))

(declare-fun m!1069481 () Bool)

(assert (=> bm!49774 m!1069481))

(assert (=> bm!49684 d!260714))

(declare-fun d!260716 () Bool)

(declare-fun lt!317871 () Bool)

(assert (=> d!260716 (= lt!317871 (select (content!1324 (t!93203 (firstChars!56 r!27177))) c!13916))))

(declare-fun e!549095 () Bool)

(assert (=> d!260716 (= lt!317871 e!549095)))

(declare-fun res!382228 () Bool)

(assert (=> d!260716 (=> (not res!382228) (not e!549095))))

(assert (=> d!260716 (= res!382228 ((_ is Cons!8895) (t!93203 (firstChars!56 r!27177))))))

(assert (=> d!260716 (= (contains!1676 (t!93203 (firstChars!56 r!27177)) c!13916) lt!317871)))

(declare-fun b!834420 () Bool)

(declare-fun e!549094 () Bool)

(assert (=> b!834420 (= e!549095 e!549094)))

(declare-fun res!382229 () Bool)

(assert (=> b!834420 (=> res!382229 e!549094)))

(assert (=> b!834420 (= res!382229 (= (h!14296 (t!93203 (firstChars!56 r!27177))) c!13916))))

(declare-fun b!834421 () Bool)

(assert (=> b!834421 (= e!549094 (contains!1676 (t!93203 (t!93203 (firstChars!56 r!27177))) c!13916))))

(assert (= (and d!260716 res!382228) b!834420))

(assert (= (and b!834420 (not res!382229)) b!834421))

(declare-fun m!1069483 () Bool)

(assert (=> d!260716 m!1069483))

(declare-fun m!1069485 () Bool)

(assert (=> d!260716 m!1069485))

(declare-fun m!1069487 () Bool)

(assert (=> b!834421 m!1069487))

(assert (=> b!834289 d!260716))

(declare-fun d!260718 () Bool)

(declare-fun c!136149 () Bool)

(assert (=> d!260718 (= c!136149 ((_ is Nil!8895) (usedCharacters!168 r!27177)))))

(declare-fun e!549098 () (InoxSet C!4740))

(assert (=> d!260718 (= (content!1324 (usedCharacters!168 r!27177)) e!549098)))

(declare-fun b!834426 () Bool)

(assert (=> b!834426 (= e!549098 ((as const (Array C!4740 Bool)) false))))

(declare-fun b!834427 () Bool)

(assert (=> b!834427 (= e!549098 ((_ map or) (store ((as const (Array C!4740 Bool)) false) (h!14296 (usedCharacters!168 r!27177)) true) (content!1324 (t!93203 (usedCharacters!168 r!27177)))))))

(assert (= (and d!260718 c!136149) b!834426))

(assert (= (and d!260718 (not c!136149)) b!834427))

(declare-fun m!1069489 () Bool)

(assert (=> b!834427 m!1069489))

(declare-fun m!1069491 () Bool)

(assert (=> b!834427 m!1069491))

(assert (=> d!260664 d!260718))

(declare-fun b!834442 () Bool)

(declare-fun e!549113 () Bool)

(declare-fun e!549114 () Bool)

(assert (=> b!834442 (= e!549113 e!549114)))

(declare-fun c!136152 () Bool)

(assert (=> b!834442 (= c!136152 ((_ is Union!2085) (regOne!4682 r!27177)))))

(declare-fun bm!49779 () Bool)

(declare-fun call!49784 () Bool)

(assert (=> bm!49779 (= call!49784 (nullable!536 (ite c!136152 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177)))))))

(declare-fun b!834443 () Bool)

(declare-fun e!549112 () Bool)

(declare-fun call!49785 () Bool)

(assert (=> b!834443 (= e!549112 call!49785)))

(declare-fun d!260720 () Bool)

(declare-fun res!382240 () Bool)

(declare-fun e!549116 () Bool)

(assert (=> d!260720 (=> res!382240 e!549116)))

(assert (=> d!260720 (= res!382240 ((_ is EmptyExpr!2085) (regOne!4682 r!27177)))))

(assert (=> d!260720 (= (nullableFct!173 (regOne!4682 r!27177)) e!549116)))

(declare-fun b!834444 () Bool)

(assert (=> b!834444 (= e!549114 e!549112)))

(declare-fun res!382244 () Bool)

(assert (=> b!834444 (= res!382244 call!49784)))

(assert (=> b!834444 (=> res!382244 e!549112)))

(declare-fun b!834445 () Bool)

(declare-fun e!549115 () Bool)

(assert (=> b!834445 (= e!549115 e!549113)))

(declare-fun res!382243 () Bool)

(assert (=> b!834445 (=> res!382243 e!549113)))

(assert (=> b!834445 (= res!382243 ((_ is Star!2085) (regOne!4682 r!27177)))))

(declare-fun b!834446 () Bool)

(assert (=> b!834446 (= e!549116 e!549115)))

(declare-fun res!382241 () Bool)

(assert (=> b!834446 (=> (not res!382241) (not e!549115))))

(assert (=> b!834446 (= res!382241 (and (not ((_ is EmptyLang!2085) (regOne!4682 r!27177))) (not ((_ is ElementMatch!2085) (regOne!4682 r!27177)))))))

(declare-fun bm!49780 () Bool)

(assert (=> bm!49780 (= call!49785 (nullable!536 (ite c!136152 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))))))

(declare-fun b!834447 () Bool)

(declare-fun e!549111 () Bool)

(assert (=> b!834447 (= e!549111 call!49784)))

(declare-fun b!834448 () Bool)

(assert (=> b!834448 (= e!549114 e!549111)))

(declare-fun res!382242 () Bool)

(assert (=> b!834448 (= res!382242 call!49785)))

(assert (=> b!834448 (=> (not res!382242) (not e!549111))))

(assert (= (and d!260720 (not res!382240)) b!834446))

(assert (= (and b!834446 res!382241) b!834445))

(assert (= (and b!834445 (not res!382243)) b!834442))

(assert (= (and b!834442 c!136152) b!834444))

(assert (= (and b!834442 (not c!136152)) b!834448))

(assert (= (and b!834444 (not res!382244)) b!834443))

(assert (= (and b!834448 res!382242) b!834447))

(assert (= (or b!834444 b!834447) bm!49779))

(assert (= (or b!834443 b!834448) bm!49780))

(declare-fun m!1069493 () Bool)

(assert (=> bm!49779 m!1069493))

(declare-fun m!1069495 () Bool)

(assert (=> bm!49780 m!1069495))

(assert (=> d!260690 d!260720))

(declare-fun b!834460 () Bool)

(declare-fun lt!317874 () List!8911)

(declare-fun e!549121 () Bool)

(assert (=> b!834460 (= e!549121 (or (not (= (ite c!136121 call!49755 call!49751) Nil!8895)) (= lt!317874 (ite c!136121 call!49751 call!49752))))))

(declare-fun e!549122 () List!8911)

(declare-fun b!834457 () Bool)

(assert (=> b!834457 (= e!549122 (ite c!136121 call!49755 call!49751))))

(declare-fun d!260722 () Bool)

(assert (=> d!260722 e!549121))

(declare-fun res!382250 () Bool)

(assert (=> d!260722 (=> (not res!382250) (not e!549121))))

(assert (=> d!260722 (= res!382250 (= (content!1324 lt!317874) ((_ map or) (content!1324 (ite c!136121 call!49751 call!49752)) (content!1324 (ite c!136121 call!49755 call!49751)))))))

(assert (=> d!260722 (= lt!317874 e!549122)))

(declare-fun c!136155 () Bool)

(assert (=> d!260722 (= c!136155 ((_ is Nil!8895) (ite c!136121 call!49751 call!49752)))))

(assert (=> d!260722 (= (++!2312 (ite c!136121 call!49751 call!49752) (ite c!136121 call!49755 call!49751)) lt!317874)))

(declare-fun b!834459 () Bool)

(declare-fun res!382249 () Bool)

(assert (=> b!834459 (=> (not res!382249) (not e!549121))))

(declare-fun size!7487 (List!8911) Int)

(assert (=> b!834459 (= res!382249 (= (size!7487 lt!317874) (+ (size!7487 (ite c!136121 call!49751 call!49752)) (size!7487 (ite c!136121 call!49755 call!49751)))))))

(declare-fun b!834458 () Bool)

(assert (=> b!834458 (= e!549122 (Cons!8895 (h!14296 (ite c!136121 call!49751 call!49752)) (++!2312 (t!93203 (ite c!136121 call!49751 call!49752)) (ite c!136121 call!49755 call!49751))))))

(assert (= (and d!260722 c!136155) b!834457))

(assert (= (and d!260722 (not c!136155)) b!834458))

(assert (= (and d!260722 res!382250) b!834459))

(assert (= (and b!834459 res!382249) b!834460))

(declare-fun m!1069497 () Bool)

(assert (=> d!260722 m!1069497))

(declare-fun m!1069499 () Bool)

(assert (=> d!260722 m!1069499))

(declare-fun m!1069501 () Bool)

(assert (=> d!260722 m!1069501))

(declare-fun m!1069503 () Bool)

(assert (=> b!834459 m!1069503))

(declare-fun m!1069505 () Bool)

(assert (=> b!834459 m!1069505))

(declare-fun m!1069507 () Bool)

(assert (=> b!834459 m!1069507))

(declare-fun m!1069509 () Bool)

(assert (=> b!834458 m!1069509))

(assert (=> bm!49747 d!260722))

(declare-fun b!834461 () Bool)

(declare-fun e!549125 () List!8911)

(declare-fun e!549123 () List!8911)

(assert (=> b!834461 (= e!549125 e!549123)))

(declare-fun c!136157 () Bool)

(assert (=> b!834461 (= c!136157 ((_ is Union!2085) (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun d!260724 () Bool)

(declare-fun c!136160 () Bool)

(assert (=> d!260724 (= c!136160 (or ((_ is EmptyExpr!2085) (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) ((_ is EmptyLang!2085) (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))))

(declare-fun e!549126 () List!8911)

(assert (=> d!260724 (= (firstChars!56 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) e!549126)))

(declare-fun bm!49781 () Bool)

(declare-fun call!49790 () List!8911)

(assert (=> bm!49781 (= call!49790 (firstChars!56 (ite c!136157 (regTwo!4683 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) (regOne!4682 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))))

(declare-fun call!49789 () List!8911)

(declare-fun bm!49782 () Bool)

(declare-fun call!49787 () List!8911)

(declare-fun call!49786 () List!8911)

(assert (=> bm!49782 (= call!49789 (++!2312 (ite c!136157 call!49786 call!49787) (ite c!136157 call!49790 call!49786)))))

(declare-fun c!136156 () Bool)

(declare-fun call!49788 () List!8911)

(declare-fun bm!49783 () Bool)

(assert (=> bm!49783 (= call!49788 (firstChars!56 (ite c!136156 (reg!2414 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) (ite c!136157 (regOne!4683 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) (regTwo!4682 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))))))

(declare-fun b!834462 () Bool)

(declare-fun e!549127 () List!8911)

(assert (=> b!834462 (= e!549127 call!49787)))

(declare-fun b!834463 () Bool)

(assert (=> b!834463 (= e!549127 call!49789)))

(declare-fun b!834464 () Bool)

(assert (=> b!834464 (= e!549125 call!49788)))

(declare-fun b!834465 () Bool)

(assert (=> b!834465 (= c!136156 ((_ is Star!2085) (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun e!549124 () List!8911)

(assert (=> b!834465 (= e!549124 e!549125)))

(declare-fun bm!49784 () Bool)

(assert (=> bm!49784 (= call!49787 call!49790)))

(declare-fun b!834466 () Bool)

(declare-fun c!136158 () Bool)

(assert (=> b!834466 (= c!136158 (nullable!536 (regOne!4682 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))))

(assert (=> b!834466 (= e!549123 e!549127)))

(declare-fun b!834467 () Bool)

(assert (=> b!834467 (= e!549124 (Cons!8895 (c!136038 (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) Nil!8895))))

(declare-fun b!834468 () Bool)

(assert (=> b!834468 (= e!549126 Nil!8895)))

(declare-fun b!834469 () Bool)

(assert (=> b!834469 (= e!549126 e!549124)))

(declare-fun c!136159 () Bool)

(assert (=> b!834469 (= c!136159 ((_ is ElementMatch!2085) (ite c!136120 (reg!2414 r!27177) (ite c!136121 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun bm!49785 () Bool)

(assert (=> bm!49785 (= call!49786 call!49788)))

(declare-fun b!834470 () Bool)

(assert (=> b!834470 (= e!549123 call!49789)))

(assert (= (and d!260724 c!136160) b!834468))

(assert (= (and d!260724 (not c!136160)) b!834469))

(assert (= (and b!834469 c!136159) b!834467))

(assert (= (and b!834469 (not c!136159)) b!834465))

(assert (= (and b!834465 c!136156) b!834464))

(assert (= (and b!834465 (not c!136156)) b!834461))

(assert (= (and b!834461 c!136157) b!834470))

(assert (= (and b!834461 (not c!136157)) b!834466))

(assert (= (and b!834466 c!136158) b!834463))

(assert (= (and b!834466 (not c!136158)) b!834462))

(assert (= (or b!834463 b!834462) bm!49784))

(assert (= (or b!834470 bm!49784) bm!49781))

(assert (= (or b!834470 b!834463) bm!49785))

(assert (= (or b!834470 b!834463) bm!49782))

(assert (= (or b!834464 bm!49785) bm!49783))

(declare-fun m!1069511 () Bool)

(assert (=> bm!49781 m!1069511))

(declare-fun m!1069513 () Bool)

(assert (=> bm!49782 m!1069513))

(declare-fun m!1069515 () Bool)

(assert (=> bm!49783 m!1069515))

(declare-fun m!1069517 () Bool)

(assert (=> b!834466 m!1069517))

(assert (=> bm!49748 d!260724))

(declare-fun b!834471 () Bool)

(declare-fun e!549130 () List!8911)

(declare-fun e!549128 () List!8911)

(assert (=> b!834471 (= e!549130 e!549128)))

(declare-fun c!136162 () Bool)

(assert (=> b!834471 (= c!136162 ((_ is Union!2085) (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun d!260728 () Bool)

(declare-fun c!136165 () Bool)

(assert (=> d!260728 (= c!136165 (or ((_ is EmptyExpr!2085) (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))) ((_ is EmptyLang!2085) (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(declare-fun e!549131 () List!8911)

(assert (=> d!260728 (= (firstChars!56 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))) e!549131)))

(declare-fun call!49795 () List!8911)

(declare-fun bm!49786 () Bool)

(assert (=> bm!49786 (= call!49795 (firstChars!56 (ite c!136162 (regTwo!4683 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))) (regOne!4682 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))))

(declare-fun call!49794 () List!8911)

(declare-fun call!49792 () List!8911)

(declare-fun call!49791 () List!8911)

(declare-fun bm!49787 () Bool)

(assert (=> bm!49787 (= call!49794 (++!2312 (ite c!136162 call!49791 call!49792) (ite c!136162 call!49795 call!49791)))))

(declare-fun call!49793 () List!8911)

(declare-fun c!136161 () Bool)

(declare-fun bm!49788 () Bool)

(assert (=> bm!49788 (= call!49793 (firstChars!56 (ite c!136161 (reg!2414 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))) (ite c!136162 (regOne!4683 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))) (regTwo!4682 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))))

(declare-fun b!834472 () Bool)

(declare-fun e!549132 () List!8911)

(assert (=> b!834472 (= e!549132 call!49792)))

(declare-fun b!834473 () Bool)

(assert (=> b!834473 (= e!549132 call!49794)))

(declare-fun b!834474 () Bool)

(assert (=> b!834474 (= e!549130 call!49793)))

(declare-fun b!834475 () Bool)

(assert (=> b!834475 (= c!136161 ((_ is Star!2085) (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun e!549129 () List!8911)

(assert (=> b!834475 (= e!549129 e!549130)))

(declare-fun bm!49789 () Bool)

(assert (=> bm!49789 (= call!49792 call!49795)))

(declare-fun b!834476 () Bool)

(declare-fun c!136163 () Bool)

(assert (=> b!834476 (= c!136163 (nullable!536 (regOne!4682 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(assert (=> b!834476 (= e!549128 e!549132)))

(declare-fun b!834477 () Bool)

(assert (=> b!834477 (= e!549129 (Cons!8895 (c!136038 (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))) Nil!8895))))

(declare-fun b!834478 () Bool)

(assert (=> b!834478 (= e!549131 Nil!8895)))

(declare-fun b!834479 () Bool)

(assert (=> b!834479 (= e!549131 e!549129)))

(declare-fun c!136164 () Bool)

(assert (=> b!834479 (= c!136164 ((_ is ElementMatch!2085) (ite c!136121 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun bm!49790 () Bool)

(assert (=> bm!49790 (= call!49791 call!49793)))

(declare-fun b!834480 () Bool)

(assert (=> b!834480 (= e!549128 call!49794)))

(assert (= (and d!260728 c!136165) b!834478))

(assert (= (and d!260728 (not c!136165)) b!834479))

(assert (= (and b!834479 c!136164) b!834477))

(assert (= (and b!834479 (not c!136164)) b!834475))

(assert (= (and b!834475 c!136161) b!834474))

(assert (= (and b!834475 (not c!136161)) b!834471))

(assert (= (and b!834471 c!136162) b!834480))

(assert (= (and b!834471 (not c!136162)) b!834476))

(assert (= (and b!834476 c!136163) b!834473))

(assert (= (and b!834476 (not c!136163)) b!834472))

(assert (= (or b!834473 b!834472) bm!49789))

(assert (= (or b!834480 bm!49789) bm!49786))

(assert (= (or b!834480 b!834473) bm!49790))

(assert (= (or b!834480 b!834473) bm!49787))

(assert (= (or b!834474 bm!49790) bm!49788))

(declare-fun m!1069519 () Bool)

(assert (=> bm!49786 m!1069519))

(declare-fun m!1069521 () Bool)

(assert (=> bm!49787 m!1069521))

(declare-fun m!1069523 () Bool)

(assert (=> bm!49788 m!1069523))

(declare-fun m!1069525 () Bool)

(assert (=> b!834476 m!1069525))

(assert (=> bm!49746 d!260728))

(declare-fun d!260730 () Bool)

(declare-fun c!136167 () Bool)

(assert (=> d!260730 (= c!136167 (or ((_ is EmptyExpr!2085) (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))) ((_ is EmptyLang!2085) (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun e!549133 () List!8911)

(assert (=> d!260730 (= (usedCharacters!168 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))) e!549133)))

(declare-fun b!834481 () Bool)

(declare-fun e!549135 () List!8911)

(assert (=> b!834481 (= e!549135 (Cons!8895 (c!136038 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))) Nil!8895))))

(declare-fun bm!49791 () Bool)

(declare-fun call!49796 () List!8911)

(declare-fun call!49799 () List!8911)

(assert (=> bm!49791 (= call!49796 call!49799)))

(declare-fun c!136169 () Bool)

(declare-fun call!49797 () List!8911)

(declare-fun call!49798 () List!8911)

(declare-fun bm!49792 () Bool)

(assert (=> bm!49792 (= call!49798 (++!2312 (ite c!136169 call!49797 call!49796) (ite c!136169 call!49796 call!49797)))))

(declare-fun b!834482 () Bool)

(assert (=> b!834482 (= e!549133 Nil!8895)))

(declare-fun b!834483 () Bool)

(declare-fun e!549134 () List!8911)

(assert (=> b!834483 (= e!549134 call!49798)))

(declare-fun b!834484 () Bool)

(assert (=> b!834484 (= e!549134 call!49798)))

(declare-fun bm!49793 () Bool)

(assert (=> bm!49793 (= call!49797 (usedCharacters!168 (ite c!136169 (regOne!4683 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))) (regTwo!4682 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))))

(declare-fun b!834485 () Bool)

(declare-fun e!549136 () List!8911)

(assert (=> b!834485 (= e!549136 call!49799)))

(declare-fun b!834486 () Bool)

(assert (=> b!834486 (= e!549136 e!549134)))

(assert (=> b!834486 (= c!136169 ((_ is Union!2085) (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))

(declare-fun b!834487 () Bool)

(assert (=> b!834487 (= e!549133 e!549135)))

(declare-fun c!136166 () Bool)

(assert (=> b!834487 (= c!136166 ((_ is ElementMatch!2085) (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))

(declare-fun b!834488 () Bool)

(declare-fun c!136168 () Bool)

(assert (=> b!834488 (= c!136168 ((_ is Star!2085) (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))

(assert (=> b!834488 (= e!549135 e!549136)))

(declare-fun bm!49794 () Bool)

(assert (=> bm!49794 (= call!49799 (usedCharacters!168 (ite c!136168 (reg!2414 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))) (ite c!136169 (regTwo!4683 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177))) (regOne!4682 (ite c!136072 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))))

(assert (= (and d!260730 c!136167) b!834482))

(assert (= (and d!260730 (not c!136167)) b!834487))

(assert (= (and b!834487 c!136166) b!834481))

(assert (= (and b!834487 (not c!136166)) b!834488))

(assert (= (and b!834488 c!136168) b!834485))

(assert (= (and b!834488 (not c!136168)) b!834486))

(assert (= (and b!834486 c!136169) b!834484))

(assert (= (and b!834486 (not c!136169)) b!834483))

(assert (= (or b!834484 b!834483) bm!49791))

(assert (= (or b!834484 b!834483) bm!49793))

(assert (= (or b!834484 b!834483) bm!49792))

(assert (= (or b!834485 bm!49791) bm!49794))

(declare-fun m!1069527 () Bool)

(assert (=> bm!49792 m!1069527))

(declare-fun m!1069529 () Bool)

(assert (=> bm!49793 m!1069529))

(declare-fun m!1069531 () Bool)

(assert (=> bm!49794 m!1069531))

(assert (=> bm!49691 d!260730))

(declare-fun d!260732 () Bool)

(declare-fun c!136172 () Bool)

(assert (=> d!260732 (= c!136172 (or ((_ is EmptyExpr!2085) (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))) ((_ is EmptyLang!2085) (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun e!549137 () List!8911)

(assert (=> d!260732 (= (usedCharacters!168 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))) e!549137)))

(declare-fun b!834489 () Bool)

(declare-fun e!549139 () List!8911)

(assert (=> b!834489 (= e!549139 (Cons!8895 (c!136038 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))) Nil!8895))))

(declare-fun bm!49795 () Bool)

(declare-fun call!49800 () List!8911)

(declare-fun call!49803 () List!8911)

(assert (=> bm!49795 (= call!49800 call!49803)))

(declare-fun call!49801 () List!8911)

(declare-fun call!49802 () List!8911)

(declare-fun c!136174 () Bool)

(declare-fun bm!49796 () Bool)

(assert (=> bm!49796 (= call!49802 (++!2312 (ite c!136174 call!49801 call!49800) (ite c!136174 call!49800 call!49801)))))

(declare-fun b!834490 () Bool)

(assert (=> b!834490 (= e!549137 Nil!8895)))

(declare-fun b!834491 () Bool)

(declare-fun e!549138 () List!8911)

(assert (=> b!834491 (= e!549138 call!49802)))

(declare-fun b!834492 () Bool)

(assert (=> b!834492 (= e!549138 call!49802)))

(declare-fun bm!49797 () Bool)

(assert (=> bm!49797 (= call!49801 (usedCharacters!168 (ite c!136174 (regOne!4683 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))) (regTwo!4682 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))))

(declare-fun b!834493 () Bool)

(declare-fun e!549140 () List!8911)

(assert (=> b!834493 (= e!549140 call!49803)))

(declare-fun b!834494 () Bool)

(assert (=> b!834494 (= e!549140 e!549138)))

(assert (=> b!834494 (= c!136174 ((_ is Union!2085) (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))

(declare-fun b!834495 () Bool)

(assert (=> b!834495 (= e!549137 e!549139)))

(declare-fun c!136171 () Bool)

(assert (=> b!834495 (= c!136171 ((_ is ElementMatch!2085) (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))

(declare-fun b!834496 () Bool)

(declare-fun c!136173 () Bool)

(assert (=> b!834496 (= c!136173 ((_ is Star!2085) (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))

(assert (=> b!834496 (= e!549139 e!549140)))

(declare-fun bm!49798 () Bool)

(assert (=> bm!49798 (= call!49803 (usedCharacters!168 (ite c!136173 (reg!2414 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))) (ite c!136174 (regTwo!4683 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))) (regOne!4682 (ite c!136064 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))))

(assert (= (and d!260732 c!136172) b!834490))

(assert (= (and d!260732 (not c!136172)) b!834495))

(assert (= (and b!834495 c!136171) b!834489))

(assert (= (and b!834495 (not c!136171)) b!834496))

(assert (= (and b!834496 c!136173) b!834493))

(assert (= (and b!834496 (not c!136173)) b!834494))

(assert (= (and b!834494 c!136174) b!834492))

(assert (= (and b!834494 (not c!136174)) b!834491))

(assert (= (or b!834492 b!834491) bm!49795))

(assert (= (or b!834492 b!834491) bm!49797))

(assert (= (or b!834492 b!834491) bm!49796))

(assert (= (or b!834493 bm!49795) bm!49798))

(declare-fun m!1069533 () Bool)

(assert (=> bm!49796 m!1069533))

(declare-fun m!1069535 () Bool)

(assert (=> bm!49797 m!1069535))

(declare-fun m!1069537 () Bool)

(assert (=> bm!49798 m!1069537))

(assert (=> bm!49683 d!260732))

(declare-fun d!260736 () Bool)

(declare-fun lt!317875 () Bool)

(assert (=> d!260736 (= lt!317875 (select (content!1324 (t!93203 (firstChars!56 (regOne!4682 r!27177)))) c!13916))))

(declare-fun e!549149 () Bool)

(assert (=> d!260736 (= lt!317875 e!549149)))

(declare-fun res!382256 () Bool)

(assert (=> d!260736 (=> (not res!382256) (not e!549149))))

(assert (=> d!260736 (= res!382256 ((_ is Cons!8895) (t!93203 (firstChars!56 (regOne!4682 r!27177)))))))

(assert (=> d!260736 (= (contains!1676 (t!93203 (firstChars!56 (regOne!4682 r!27177))) c!13916) lt!317875)))

(declare-fun b!834506 () Bool)

(declare-fun e!549148 () Bool)

(assert (=> b!834506 (= e!549149 e!549148)))

(declare-fun res!382257 () Bool)

(assert (=> b!834506 (=> res!382257 e!549148)))

(assert (=> b!834506 (= res!382257 (= (h!14296 (t!93203 (firstChars!56 (regOne!4682 r!27177)))) c!13916))))

(declare-fun b!834507 () Bool)

(assert (=> b!834507 (= e!549148 (contains!1676 (t!93203 (t!93203 (firstChars!56 (regOne!4682 r!27177)))) c!13916))))

(assert (= (and d!260736 res!382256) b!834506))

(assert (= (and b!834506 (not res!382257)) b!834507))

(declare-fun m!1069539 () Bool)

(assert (=> d!260736 m!1069539))

(declare-fun m!1069541 () Bool)

(assert (=> d!260736 m!1069541))

(declare-fun m!1069543 () Bool)

(assert (=> b!834507 m!1069543))

(assert (=> b!834161 d!260736))

(declare-fun d!260738 () Bool)

(assert (=> d!260738 (= (nullable!536 (regOne!4682 (regTwo!4682 r!27177))) (nullableFct!173 (regOne!4682 (regTwo!4682 r!27177))))))

(declare-fun bs!229701 () Bool)

(assert (= bs!229701 d!260738))

(declare-fun m!1069545 () Bool)

(assert (=> bs!229701 m!1069545))

(assert (=> b!834319 d!260738))

(declare-fun d!260740 () Bool)

(declare-fun lt!317876 () Bool)

(assert (=> d!260740 (= lt!317876 (select (content!1324 (t!93203 (usedCharacters!168 (regTwo!4682 r!27177)))) c!13916))))

(declare-fun e!549151 () Bool)

(assert (=> d!260740 (= lt!317876 e!549151)))

(declare-fun res!382258 () Bool)

(assert (=> d!260740 (=> (not res!382258) (not e!549151))))

(assert (=> d!260740 (= res!382258 ((_ is Cons!8895) (t!93203 (usedCharacters!168 (regTwo!4682 r!27177)))))))

(assert (=> d!260740 (= (contains!1676 (t!93203 (usedCharacters!168 (regTwo!4682 r!27177))) c!13916) lt!317876)))

(declare-fun b!834508 () Bool)

(declare-fun e!549150 () Bool)

(assert (=> b!834508 (= e!549151 e!549150)))

(declare-fun res!382259 () Bool)

(assert (=> b!834508 (=> res!382259 e!549150)))

(assert (=> b!834508 (= res!382259 (= (h!14296 (t!93203 (usedCharacters!168 (regTwo!4682 r!27177)))) c!13916))))

(declare-fun b!834509 () Bool)

(assert (=> b!834509 (= e!549150 (contains!1676 (t!93203 (t!93203 (usedCharacters!168 (regTwo!4682 r!27177)))) c!13916))))

(assert (= (and d!260740 res!382258) b!834508))

(assert (= (and b!834508 (not res!382259)) b!834509))

(declare-fun m!1069547 () Bool)

(assert (=> d!260740 m!1069547))

(declare-fun m!1069549 () Bool)

(assert (=> d!260740 m!1069549))

(declare-fun m!1069551 () Bool)

(assert (=> b!834509 m!1069551))

(assert (=> b!834089 d!260740))

(declare-fun d!260742 () Bool)

(assert (=> d!260742 (= (nullable!536 (regOne!4682 (regOne!4682 r!27177))) (nullableFct!173 (regOne!4682 (regOne!4682 r!27177))))))

(declare-fun bs!229702 () Bool)

(assert (= bs!229702 d!260742))

(declare-fun m!1069555 () Bool)

(assert (=> bs!229702 m!1069555))

(assert (=> b!834217 d!260742))

(declare-fun d!260744 () Bool)

(declare-fun c!136177 () Bool)

(assert (=> d!260744 (= c!136177 ((_ is Nil!8895) (firstChars!56 r!27177)))))

(declare-fun e!549152 () (InoxSet C!4740))

(assert (=> d!260744 (= (content!1324 (firstChars!56 r!27177)) e!549152)))

(declare-fun b!834510 () Bool)

(assert (=> b!834510 (= e!549152 ((as const (Array C!4740 Bool)) false))))

(declare-fun b!834511 () Bool)

(assert (=> b!834511 (= e!549152 ((_ map or) (store ((as const (Array C!4740 Bool)) false) (h!14296 (firstChars!56 r!27177)) true) (content!1324 (t!93203 (firstChars!56 r!27177)))))))

(assert (= (and d!260744 c!136177) b!834510))

(assert (= (and d!260744 (not c!136177)) b!834511))

(declare-fun m!1069561 () Bool)

(assert (=> b!834511 m!1069561))

(assert (=> b!834511 m!1069483))

(assert (=> d!260692 d!260744))

(declare-fun b!834515 () Bool)

(declare-fun e!549153 () Bool)

(declare-fun lt!317877 () List!8911)

(assert (=> b!834515 (= e!549153 (or (not (= (ite c!136072 call!49694 call!49695) Nil!8895)) (= lt!317877 (ite c!136072 call!49695 call!49694))))))

(declare-fun e!549154 () List!8911)

(declare-fun b!834512 () Bool)

(assert (=> b!834512 (= e!549154 (ite c!136072 call!49694 call!49695))))

(declare-fun d!260748 () Bool)

(assert (=> d!260748 e!549153))

(declare-fun res!382261 () Bool)

(assert (=> d!260748 (=> (not res!382261) (not e!549153))))

(assert (=> d!260748 (= res!382261 (= (content!1324 lt!317877) ((_ map or) (content!1324 (ite c!136072 call!49695 call!49694)) (content!1324 (ite c!136072 call!49694 call!49695)))))))

(assert (=> d!260748 (= lt!317877 e!549154)))

(declare-fun c!136178 () Bool)

(assert (=> d!260748 (= c!136178 ((_ is Nil!8895) (ite c!136072 call!49695 call!49694)))))

(assert (=> d!260748 (= (++!2312 (ite c!136072 call!49695 call!49694) (ite c!136072 call!49694 call!49695)) lt!317877)))

(declare-fun b!834514 () Bool)

(declare-fun res!382260 () Bool)

(assert (=> b!834514 (=> (not res!382260) (not e!549153))))

(assert (=> b!834514 (= res!382260 (= (size!7487 lt!317877) (+ (size!7487 (ite c!136072 call!49695 call!49694)) (size!7487 (ite c!136072 call!49694 call!49695)))))))

(declare-fun b!834513 () Bool)

(assert (=> b!834513 (= e!549154 (Cons!8895 (h!14296 (ite c!136072 call!49695 call!49694)) (++!2312 (t!93203 (ite c!136072 call!49695 call!49694)) (ite c!136072 call!49694 call!49695))))))

(assert (= (and d!260748 c!136178) b!834512))

(assert (= (and d!260748 (not c!136178)) b!834513))

(assert (= (and d!260748 res!382261) b!834514))

(assert (= (and b!834514 res!382260) b!834515))

(declare-fun m!1069563 () Bool)

(assert (=> d!260748 m!1069563))

(declare-fun m!1069565 () Bool)

(assert (=> d!260748 m!1069565))

(declare-fun m!1069567 () Bool)

(assert (=> d!260748 m!1069567))

(declare-fun m!1069569 () Bool)

(assert (=> b!834514 m!1069569))

(declare-fun m!1069571 () Bool)

(assert (=> b!834514 m!1069571))

(declare-fun m!1069573 () Bool)

(assert (=> b!834514 m!1069573))

(declare-fun m!1069575 () Bool)

(assert (=> b!834513 m!1069575))

(assert (=> bm!49690 d!260748))

(declare-fun b!834519 () Bool)

(declare-fun lt!317878 () List!8911)

(declare-fun e!549155 () Bool)

(assert (=> b!834519 (= e!549155 (or (not (= (ite c!136064 call!49686 call!49687) Nil!8895)) (= lt!317878 (ite c!136064 call!49687 call!49686))))))

(declare-fun b!834516 () Bool)

(declare-fun e!549156 () List!8911)

(assert (=> b!834516 (= e!549156 (ite c!136064 call!49686 call!49687))))

(declare-fun d!260750 () Bool)

(assert (=> d!260750 e!549155))

(declare-fun res!382263 () Bool)

(assert (=> d!260750 (=> (not res!382263) (not e!549155))))

(assert (=> d!260750 (= res!382263 (= (content!1324 lt!317878) ((_ map or) (content!1324 (ite c!136064 call!49687 call!49686)) (content!1324 (ite c!136064 call!49686 call!49687)))))))

(assert (=> d!260750 (= lt!317878 e!549156)))

(declare-fun c!136179 () Bool)

(assert (=> d!260750 (= c!136179 ((_ is Nil!8895) (ite c!136064 call!49687 call!49686)))))

(assert (=> d!260750 (= (++!2312 (ite c!136064 call!49687 call!49686) (ite c!136064 call!49686 call!49687)) lt!317878)))

(declare-fun b!834518 () Bool)

(declare-fun res!382262 () Bool)

(assert (=> b!834518 (=> (not res!382262) (not e!549155))))

(assert (=> b!834518 (= res!382262 (= (size!7487 lt!317878) (+ (size!7487 (ite c!136064 call!49687 call!49686)) (size!7487 (ite c!136064 call!49686 call!49687)))))))

(declare-fun b!834517 () Bool)

(assert (=> b!834517 (= e!549156 (Cons!8895 (h!14296 (ite c!136064 call!49687 call!49686)) (++!2312 (t!93203 (ite c!136064 call!49687 call!49686)) (ite c!136064 call!49686 call!49687))))))

(assert (= (and d!260750 c!136179) b!834516))

(assert (= (and d!260750 (not c!136179)) b!834517))

(assert (= (and d!260750 res!382263) b!834518))

(assert (= (and b!834518 res!382262) b!834519))

(declare-fun m!1069577 () Bool)

(assert (=> d!260750 m!1069577))

(declare-fun m!1069579 () Bool)

(assert (=> d!260750 m!1069579))

(declare-fun m!1069581 () Bool)

(assert (=> d!260750 m!1069581))

(declare-fun m!1069583 () Bool)

(assert (=> b!834518 m!1069583))

(declare-fun m!1069585 () Bool)

(assert (=> b!834518 m!1069585))

(declare-fun m!1069587 () Bool)

(assert (=> b!834518 m!1069587))

(declare-fun m!1069589 () Bool)

(assert (=> b!834517 m!1069589))

(assert (=> bm!49682 d!260750))

(declare-fun b!834520 () Bool)

(declare-fun e!549159 () List!8911)

(declare-fun e!549157 () List!8911)

(assert (=> b!834520 (= e!549159 e!549157)))

(declare-fun c!136181 () Bool)

(assert (=> b!834520 (= c!136181 ((_ is Union!2085) (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun c!136184 () Bool)

(declare-fun d!260752 () Bool)

(assert (=> d!260752 (= c!136184 (or ((_ is EmptyExpr!2085) (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) ((_ is EmptyLang!2085) (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))))

(declare-fun e!549160 () List!8911)

(assert (=> d!260752 (= (firstChars!56 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) e!549160)))

(declare-fun bm!49802 () Bool)

(declare-fun call!49811 () List!8911)

(assert (=> bm!49802 (= call!49811 (firstChars!56 (ite c!136181 (regTwo!4683 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) (regOne!4682 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))))

(declare-fun call!49807 () List!8911)

(declare-fun call!49810 () List!8911)

(declare-fun call!49808 () List!8911)

(declare-fun bm!49803 () Bool)

(assert (=> bm!49803 (= call!49810 (++!2312 (ite c!136181 call!49807 call!49808) (ite c!136181 call!49811 call!49807)))))

(declare-fun bm!49804 () Bool)

(declare-fun c!136180 () Bool)

(declare-fun call!49809 () List!8911)

(assert (=> bm!49804 (= call!49809 (firstChars!56 (ite c!136180 (reg!2414 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) (ite c!136181 (regOne!4683 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) (regTwo!4682 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))))))

(declare-fun b!834521 () Bool)

(declare-fun e!549161 () List!8911)

(assert (=> b!834521 (= e!549161 call!49808)))

(declare-fun b!834522 () Bool)

(assert (=> b!834522 (= e!549161 call!49810)))

(declare-fun b!834523 () Bool)

(assert (=> b!834523 (= e!549159 call!49809)))

(declare-fun b!834524 () Bool)

(assert (=> b!834524 (= c!136180 ((_ is Star!2085) (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun e!549158 () List!8911)

(assert (=> b!834524 (= e!549158 e!549159)))

(declare-fun bm!49805 () Bool)

(assert (=> bm!49805 (= call!49808 call!49811)))

(declare-fun c!136182 () Bool)

(declare-fun b!834525 () Bool)

(assert (=> b!834525 (= c!136182 (nullable!536 (regOne!4682 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))))

(assert (=> b!834525 (= e!549157 e!549161)))

(declare-fun b!834526 () Bool)

(assert (=> b!834526 (= e!549158 (Cons!8895 (c!136038 (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) Nil!8895))))

(declare-fun b!834527 () Bool)

(assert (=> b!834527 (= e!549160 Nil!8895)))

(declare-fun b!834528 () Bool)

(assert (=> b!834528 (= e!549160 e!549158)))

(declare-fun c!136183 () Bool)

(assert (=> b!834528 (= c!136183 ((_ is ElementMatch!2085) (ite c!136130 (reg!2414 (regTwo!4682 r!27177)) (ite c!136131 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun bm!49806 () Bool)

(assert (=> bm!49806 (= call!49807 call!49809)))

(declare-fun b!834529 () Bool)

(assert (=> b!834529 (= e!549157 call!49810)))

(assert (= (and d!260752 c!136184) b!834527))

(assert (= (and d!260752 (not c!136184)) b!834528))

(assert (= (and b!834528 c!136183) b!834526))

(assert (= (and b!834528 (not c!136183)) b!834524))

(assert (= (and b!834524 c!136180) b!834523))

(assert (= (and b!834524 (not c!136180)) b!834520))

(assert (= (and b!834520 c!136181) b!834529))

(assert (= (and b!834520 (not c!136181)) b!834525))

(assert (= (and b!834525 c!136182) b!834522))

(assert (= (and b!834525 (not c!136182)) b!834521))

(assert (= (or b!834522 b!834521) bm!49805))

(assert (= (or b!834529 bm!49805) bm!49802))

(assert (= (or b!834529 b!834522) bm!49806))

(assert (= (or b!834529 b!834522) bm!49803))

(assert (= (or b!834523 bm!49806) bm!49804))

(declare-fun m!1069591 () Bool)

(assert (=> bm!49802 m!1069591))

(declare-fun m!1069593 () Bool)

(assert (=> bm!49803 m!1069593))

(declare-fun m!1069595 () Bool)

(assert (=> bm!49804 m!1069595))

(declare-fun m!1069597 () Bool)

(assert (=> b!834525 m!1069597))

(assert (=> bm!49758 d!260752))

(declare-fun b!834530 () Bool)

(declare-fun e!549164 () Bool)

(declare-fun call!49814 () Bool)

(assert (=> b!834530 (= e!549164 call!49814)))

(declare-fun b!834531 () Bool)

(declare-fun e!549167 () Bool)

(declare-fun e!549166 () Bool)

(assert (=> b!834531 (= e!549167 e!549166)))

(declare-fun c!136185 () Bool)

(assert (=> b!834531 (= c!136185 ((_ is Union!2085) (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun b!834533 () Bool)

(declare-fun e!549163 () Bool)

(declare-fun call!49812 () Bool)

(assert (=> b!834533 (= e!549163 call!49812)))

(declare-fun b!834534 () Bool)

(declare-fun e!549162 () Bool)

(declare-fun call!49813 () Bool)

(assert (=> b!834534 (= e!549162 call!49813)))

(declare-fun b!834535 () Bool)

(declare-fun res!382264 () Bool)

(declare-fun e!549165 () Bool)

(assert (=> b!834535 (=> res!382264 e!549165)))

(assert (=> b!834535 (= res!382264 (not ((_ is Concat!3816) (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))))

(assert (=> b!834535 (= e!549166 e!549165)))

(declare-fun bm!49807 () Bool)

(assert (=> bm!49807 (= call!49812 (validRegex!638 (ite c!136185 (regTwo!4683 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) (regOne!4682 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))))

(declare-fun b!834536 () Bool)

(assert (=> b!834536 (= e!549167 e!549162)))

(declare-fun res!382266 () Bool)

(assert (=> b!834536 (= res!382266 (not (nullable!536 (reg!2414 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))))

(assert (=> b!834536 (=> (not res!382266) (not e!549162))))

(declare-fun b!834532 () Bool)

(declare-fun res!382268 () Bool)

(assert (=> b!834532 (=> (not res!382268) (not e!549163))))

(assert (=> b!834532 (= res!382268 call!49814)))

(assert (=> b!834532 (= e!549166 e!549163)))

(declare-fun d!260754 () Bool)

(declare-fun res!382265 () Bool)

(declare-fun e!549168 () Bool)

(assert (=> d!260754 (=> res!382265 e!549168)))

(assert (=> d!260754 (= res!382265 ((_ is ElementMatch!2085) (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(assert (=> d!260754 (= (validRegex!638 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) e!549168)))

(declare-fun bm!49808 () Bool)

(assert (=> bm!49808 (= call!49814 call!49813)))

(declare-fun b!834537 () Bool)

(assert (=> b!834537 (= e!549168 e!549167)))

(declare-fun c!136186 () Bool)

(assert (=> b!834537 (= c!136186 ((_ is Star!2085) (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))))))

(declare-fun bm!49809 () Bool)

(assert (=> bm!49809 (= call!49813 (validRegex!638 (ite c!136186 (reg!2414 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) (ite c!136185 (regOne!4683 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177))))) (regTwo!4682 (ite c!136138 (reg!2414 (regTwo!4682 r!27177)) (ite c!136137 (regOne!4683 (regTwo!4682 r!27177)) (regTwo!4682 (regTwo!4682 r!27177)))))))))))

(declare-fun b!834538 () Bool)

(assert (=> b!834538 (= e!549165 e!549164)))

(declare-fun res!382267 () Bool)

(assert (=> b!834538 (=> (not res!382267) (not e!549164))))

(assert (=> b!834538 (= res!382267 call!49812)))

(assert (= (and d!260754 (not res!382265)) b!834537))

(assert (= (and b!834537 c!136186) b!834536))

(assert (= (and b!834537 (not c!136186)) b!834531))

(assert (= (and b!834536 res!382266) b!834534))

(assert (= (and b!834531 c!136185) b!834532))

(assert (= (and b!834531 (not c!136185)) b!834535))

(assert (= (and b!834532 res!382268) b!834533))

(assert (= (and b!834535 (not res!382264)) b!834538))

(assert (= (and b!834538 res!382267) b!834530))

(assert (= (or b!834532 b!834530) bm!49808))

(assert (= (or b!834533 b!834538) bm!49807))

(assert (= (or b!834534 bm!49808) bm!49809))

(declare-fun m!1069599 () Bool)

(assert (=> bm!49807 m!1069599))

(declare-fun m!1069601 () Bool)

(assert (=> b!834536 m!1069601))

(declare-fun m!1069603 () Bool)

(assert (=> bm!49809 m!1069603))

(assert (=> bm!49766 d!260754))

(declare-fun d!260756 () Bool)

(declare-fun c!136187 () Bool)

(assert (=> d!260756 (= c!136187 ((_ is Nil!8895) (firstChars!56 (regTwo!4682 r!27177))))))

(declare-fun e!549169 () (InoxSet C!4740))

(assert (=> d!260756 (= (content!1324 (firstChars!56 (regTwo!4682 r!27177))) e!549169)))

(declare-fun b!834539 () Bool)

(assert (=> b!834539 (= e!549169 ((as const (Array C!4740 Bool)) false))))

(declare-fun b!834540 () Bool)

(assert (=> b!834540 (= e!549169 ((_ map or) (store ((as const (Array C!4740 Bool)) false) (h!14296 (firstChars!56 (regTwo!4682 r!27177))) true) (content!1324 (t!93203 (firstChars!56 (regTwo!4682 r!27177))))))))

(assert (= (and d!260756 c!136187) b!834539))

(assert (= (and d!260756 (not c!136187)) b!834540))

(declare-fun m!1069605 () Bool)

(assert (=> b!834540 m!1069605))

(assert (=> b!834540 m!1069465))

(assert (=> d!260700 d!260756))

(declare-fun lt!317881 () List!8911)

(declare-fun e!549170 () Bool)

(declare-fun b!834546 () Bool)

(assert (=> b!834546 (= e!549170 (or (not (= (ite c!136131 call!49765 call!49761) Nil!8895)) (= lt!317881 (ite c!136131 call!49761 call!49762))))))

(declare-fun e!549171 () List!8911)

(declare-fun b!834543 () Bool)

(assert (=> b!834543 (= e!549171 (ite c!136131 call!49765 call!49761))))

(declare-fun d!260758 () Bool)

(assert (=> d!260758 e!549170))

(declare-fun res!382270 () Bool)

(assert (=> d!260758 (=> (not res!382270) (not e!549170))))

(assert (=> d!260758 (= res!382270 (= (content!1324 lt!317881) ((_ map or) (content!1324 (ite c!136131 call!49761 call!49762)) (content!1324 (ite c!136131 call!49765 call!49761)))))))

(assert (=> d!260758 (= lt!317881 e!549171)))

(declare-fun c!136188 () Bool)

(assert (=> d!260758 (= c!136188 ((_ is Nil!8895) (ite c!136131 call!49761 call!49762)))))

(assert (=> d!260758 (= (++!2312 (ite c!136131 call!49761 call!49762) (ite c!136131 call!49765 call!49761)) lt!317881)))

(declare-fun b!834545 () Bool)

(declare-fun res!382269 () Bool)

(assert (=> b!834545 (=> (not res!382269) (not e!549170))))

(assert (=> b!834545 (= res!382269 (= (size!7487 lt!317881) (+ (size!7487 (ite c!136131 call!49761 call!49762)) (size!7487 (ite c!136131 call!49765 call!49761)))))))

(declare-fun b!834544 () Bool)

(assert (=> b!834544 (= e!549171 (Cons!8895 (h!14296 (ite c!136131 call!49761 call!49762)) (++!2312 (t!93203 (ite c!136131 call!49761 call!49762)) (ite c!136131 call!49765 call!49761))))))

(assert (= (and d!260758 c!136188) b!834543))

(assert (= (and d!260758 (not c!136188)) b!834544))

(assert (= (and d!260758 res!382270) b!834545))

(assert (= (and b!834545 res!382269) b!834546))

(declare-fun m!1069607 () Bool)

(assert (=> d!260758 m!1069607))

(declare-fun m!1069609 () Bool)

(assert (=> d!260758 m!1069609))

(declare-fun m!1069611 () Bool)

(assert (=> d!260758 m!1069611))

(declare-fun m!1069613 () Bool)

(assert (=> b!834545 m!1069613))

(declare-fun m!1069615 () Bool)

(assert (=> b!834545 m!1069615))

(declare-fun m!1069617 () Bool)

(assert (=> b!834545 m!1069617))

(declare-fun m!1069619 () Bool)

(assert (=> b!834544 m!1069619))

(assert (=> bm!49757 d!260758))

(declare-fun d!260760 () Bool)

(assert (=> d!260760 (= (nullable!536 (reg!2414 (regTwo!4682 r!27177))) (nullableFct!173 (reg!2414 (regTwo!4682 r!27177))))))

(declare-fun bs!229703 () Bool)

(assert (= bs!229703 d!260760))

(declare-fun m!1069621 () Bool)

(assert (=> bs!229703 m!1069621))

(assert (=> b!834339 d!260760))

(assert (=> d!260660 d!260654))

(assert (=> d!260660 d!260668))

(declare-fun d!260762 () Bool)

(assert (=> d!260762 (contains!1676 (usedCharacters!168 (regTwo!4682 r!27177)) c!13916)))

(assert (=> d!260762 true))

(declare-fun _$135!88 () Unit!13387)

(assert (=> d!260762 (= (choose!4938 (regTwo!4682 r!27177) c!13916) _$135!88)))

(declare-fun bs!229704 () Bool)

(assert (= bs!229704 d!260762))

(assert (=> bs!229704 m!1069297))

(assert (=> bs!229704 m!1069297))

(assert (=> bs!229704 m!1069299))

(assert (=> d!260660 d!260762))

(assert (=> d!260660 d!260708))

(declare-fun b!834553 () Bool)

(declare-fun e!549178 () List!8911)

(declare-fun e!549176 () List!8911)

(assert (=> b!834553 (= e!549178 e!549176)))

(declare-fun c!136193 () Bool)

(assert (=> b!834553 (= c!136193 ((_ is Union!2085) (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun d!260764 () Bool)

(declare-fun c!136196 () Bool)

(assert (=> d!260764 (= c!136196 (or ((_ is EmptyExpr!2085) (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) ((_ is EmptyLang!2085) (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(declare-fun e!549179 () List!8911)

(assert (=> d!260764 (= (firstChars!56 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) e!549179)))

(declare-fun call!49819 () List!8911)

(declare-fun bm!49810 () Bool)

(assert (=> bm!49810 (= call!49819 (firstChars!56 (ite c!136193 (regTwo!4683 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) (regOne!4682 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))))

(declare-fun call!49815 () List!8911)

(declare-fun bm!49811 () Bool)

(declare-fun call!49816 () List!8911)

(declare-fun call!49818 () List!8911)

(assert (=> bm!49811 (= call!49818 (++!2312 (ite c!136193 call!49815 call!49816) (ite c!136193 call!49819 call!49815)))))

(declare-fun bm!49812 () Bool)

(declare-fun c!136192 () Bool)

(declare-fun call!49817 () List!8911)

(assert (=> bm!49812 (= call!49817 (firstChars!56 (ite c!136192 (reg!2414 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) (ite c!136193 (regOne!4683 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) (regTwo!4682 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))))

(declare-fun b!834554 () Bool)

(declare-fun e!549180 () List!8911)

(assert (=> b!834554 (= e!549180 call!49816)))

(declare-fun b!834555 () Bool)

(assert (=> b!834555 (= e!549180 call!49818)))

(declare-fun b!834556 () Bool)

(assert (=> b!834556 (= e!549178 call!49817)))

(declare-fun b!834557 () Bool)

(assert (=> b!834557 (= c!136192 ((_ is Star!2085) (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun e!549177 () List!8911)

(assert (=> b!834557 (= e!549177 e!549178)))

(declare-fun bm!49813 () Bool)

(assert (=> bm!49813 (= call!49816 call!49819)))

(declare-fun b!834558 () Bool)

(declare-fun c!136194 () Bool)

(assert (=> b!834558 (= c!136194 (nullable!536 (regOne!4682 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(assert (=> b!834558 (= e!549176 e!549180)))

(declare-fun b!834559 () Bool)

(assert (=> b!834559 (= e!549177 (Cons!8895 (c!136038 (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) Nil!8895))))

(declare-fun b!834560 () Bool)

(assert (=> b!834560 (= e!549179 Nil!8895)))

(declare-fun b!834561 () Bool)

(assert (=> b!834561 (= e!549179 e!549177)))

(declare-fun c!136195 () Bool)

(assert (=> b!834561 (= c!136195 ((_ is ElementMatch!2085) (ite c!136131 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun bm!49814 () Bool)

(assert (=> bm!49814 (= call!49815 call!49817)))

(declare-fun b!834562 () Bool)

(assert (=> b!834562 (= e!549176 call!49818)))

(assert (= (and d!260764 c!136196) b!834560))

(assert (= (and d!260764 (not c!136196)) b!834561))

(assert (= (and b!834561 c!136195) b!834559))

(assert (= (and b!834561 (not c!136195)) b!834557))

(assert (= (and b!834557 c!136192) b!834556))

(assert (= (and b!834557 (not c!136192)) b!834553))

(assert (= (and b!834553 c!136193) b!834562))

(assert (= (and b!834553 (not c!136193)) b!834558))

(assert (= (and b!834558 c!136194) b!834555))

(assert (= (and b!834558 (not c!136194)) b!834554))

(assert (= (or b!834555 b!834554) bm!49813))

(assert (= (or b!834562 bm!49813) bm!49810))

(assert (= (or b!834562 b!834555) bm!49814))

(assert (= (or b!834562 b!834555) bm!49811))

(assert (= (or b!834556 bm!49814) bm!49812))

(declare-fun m!1069623 () Bool)

(assert (=> bm!49810 m!1069623))

(declare-fun m!1069625 () Bool)

(assert (=> bm!49811 m!1069625))

(declare-fun m!1069627 () Bool)

(assert (=> bm!49812 m!1069627))

(declare-fun m!1069629 () Bool)

(assert (=> b!834558 m!1069629))

(assert (=> bm!49756 d!260764))

(declare-fun b!834567 () Bool)

(declare-fun e!549185 () Bool)

(declare-fun call!49822 () Bool)

(assert (=> b!834567 (= e!549185 call!49822)))

(declare-fun b!834568 () Bool)

(declare-fun e!549188 () Bool)

(declare-fun e!549187 () Bool)

(assert (=> b!834568 (= e!549188 e!549187)))

(declare-fun c!136198 () Bool)

(assert (=> b!834568 (= c!136198 ((_ is Union!2085) (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun b!834570 () Bool)

(declare-fun e!549184 () Bool)

(declare-fun call!49820 () Bool)

(assert (=> b!834570 (= e!549184 call!49820)))

(declare-fun b!834571 () Bool)

(declare-fun e!549183 () Bool)

(declare-fun call!49821 () Bool)

(assert (=> b!834571 (= e!549183 call!49821)))

(declare-fun b!834572 () Bool)

(declare-fun res!382277 () Bool)

(declare-fun e!549186 () Bool)

(assert (=> b!834572 (=> res!382277 e!549186)))

(assert (=> b!834572 (= res!382277 (not ((_ is Concat!3816) (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))))

(assert (=> b!834572 (= e!549187 e!549186)))

(declare-fun bm!49815 () Bool)

(assert (=> bm!49815 (= call!49820 (validRegex!638 (ite c!136198 (regTwo!4683 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) (regOne!4682 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))))

(declare-fun b!834573 () Bool)

(assert (=> b!834573 (= e!549188 e!549183)))

(declare-fun res!382279 () Bool)

(assert (=> b!834573 (= res!382279 (not (nullable!536 (reg!2414 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))))

(assert (=> b!834573 (=> (not res!382279) (not e!549183))))

(declare-fun b!834569 () Bool)

(declare-fun res!382281 () Bool)

(assert (=> b!834569 (=> (not res!382281) (not e!549184))))

(assert (=> b!834569 (= res!382281 call!49822)))

(assert (=> b!834569 (= e!549187 e!549184)))

(declare-fun d!260766 () Bool)

(declare-fun res!382278 () Bool)

(declare-fun e!549189 () Bool)

(assert (=> d!260766 (=> res!382278 e!549189)))

(assert (=> d!260766 (= res!382278 ((_ is ElementMatch!2085) (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(assert (=> d!260766 (= (validRegex!638 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) e!549189)))

(declare-fun bm!49816 () Bool)

(assert (=> bm!49816 (= call!49822 call!49821)))

(declare-fun b!834574 () Bool)

(assert (=> b!834574 (= e!549189 e!549188)))

(declare-fun c!136199 () Bool)

(assert (=> b!834574 (= c!136199 ((_ is Star!2085) (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))))))

(declare-fun bm!49817 () Bool)

(assert (=> bm!49817 (= call!49821 (validRegex!638 (ite c!136199 (reg!2414 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) (ite c!136198 (regOne!4683 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177)))) (regTwo!4682 (ite c!136117 (reg!2414 r!27177) (ite c!136116 (regOne!4683 r!27177) (regTwo!4682 r!27177))))))))))

(declare-fun b!834575 () Bool)

(assert (=> b!834575 (= e!549186 e!549185)))

(declare-fun res!382280 () Bool)

(assert (=> b!834575 (=> (not res!382280) (not e!549185))))

(assert (=> b!834575 (= res!382280 call!49820)))

(assert (= (and d!260766 (not res!382278)) b!834574))

(assert (= (and b!834574 c!136199) b!834573))

(assert (= (and b!834574 (not c!136199)) b!834568))

(assert (= (and b!834573 res!382279) b!834571))

(assert (= (and b!834568 c!136198) b!834569))

(assert (= (and b!834568 (not c!136198)) b!834572))

(assert (= (and b!834569 res!382281) b!834570))

(assert (= (and b!834572 (not res!382277)) b!834575))

(assert (= (and b!834575 res!382280) b!834567))

(assert (= (or b!834569 b!834567) bm!49816))

(assert (= (or b!834570 b!834575) bm!49815))

(assert (= (or b!834571 bm!49816) bm!49817))

(declare-fun m!1069647 () Bool)

(assert (=> bm!49815 m!1069647))

(declare-fun m!1069649 () Bool)

(assert (=> b!834573 m!1069649))

(declare-fun m!1069651 () Bool)

(assert (=> bm!49817 m!1069651))

(assert (=> bm!49742 d!260766))

(declare-fun b!834586 () Bool)

(declare-fun e!549197 () List!8911)

(declare-fun e!549195 () List!8911)

(assert (=> b!834586 (= e!549197 e!549195)))

(declare-fun c!136206 () Bool)

(assert (=> b!834586 (= c!136206 ((_ is Union!2085) (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))))))

(declare-fun d!260772 () Bool)

(declare-fun c!136209 () Bool)

(assert (=> d!260772 (= c!136209 (or ((_ is EmptyExpr!2085) (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))) ((_ is EmptyLang!2085) (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177)))))))))

(declare-fun e!549198 () List!8911)

(assert (=> d!260772 (= (firstChars!56 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))) e!549198)))

(declare-fun call!49832 () List!8911)

(declare-fun bm!49823 () Bool)

(assert (=> bm!49823 (= call!49832 (firstChars!56 (ite c!136206 (regTwo!4683 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))) (regOne!4682 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))))))))

(declare-fun call!49831 () List!8911)

(declare-fun call!49828 () List!8911)

(declare-fun call!49829 () List!8911)

(declare-fun bm!49824 () Bool)

(assert (=> bm!49824 (= call!49831 (++!2312 (ite c!136206 call!49828 call!49829) (ite c!136206 call!49832 call!49828)))))

(declare-fun bm!49825 () Bool)

(declare-fun call!49830 () List!8911)

(declare-fun c!136205 () Bool)

(assert (=> bm!49825 (= call!49830 (firstChars!56 (ite c!136205 (reg!2414 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))) (ite c!136206 (regOne!4683 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))) (regTwo!4682 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177)))))))))))

(declare-fun b!834587 () Bool)

(declare-fun e!549199 () List!8911)

(assert (=> b!834587 (= e!549199 call!49829)))

(declare-fun b!834588 () Bool)

(assert (=> b!834588 (= e!549199 call!49831)))

(declare-fun b!834589 () Bool)

(assert (=> b!834589 (= e!549197 call!49830)))

(declare-fun b!834590 () Bool)

(assert (=> b!834590 (= c!136205 ((_ is Star!2085) (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))))))

(declare-fun e!549196 () List!8911)

(assert (=> b!834590 (= e!549196 e!549197)))

(declare-fun bm!49826 () Bool)

(assert (=> bm!49826 (= call!49829 call!49832)))

(declare-fun c!136207 () Bool)

(declare-fun b!834591 () Bool)

(assert (=> b!834591 (= c!136207 (nullable!536 (regOne!4682 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177)))))))))

(assert (=> b!834591 (= e!549195 e!549199)))

(declare-fun b!834592 () Bool)

(assert (=> b!834592 (= e!549196 (Cons!8895 (c!136038 (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))) Nil!8895))))

(declare-fun b!834593 () Bool)

(assert (=> b!834593 (= e!549198 Nil!8895)))

(declare-fun b!834594 () Bool)

(assert (=> b!834594 (= e!549198 e!549196)))

(declare-fun c!136208 () Bool)

(assert (=> b!834594 (= c!136208 ((_ is ElementMatch!2085) (ite c!136098 (reg!2414 (regOne!4682 r!27177)) (ite c!136099 (regOne!4683 (regOne!4682 r!27177)) (regTwo!4682 (regOne!4682 r!27177))))))))

(declare-fun bm!49827 () Bool)

(assert (=> bm!49827 (= call!49828 call!49830)))

(declare-fun b!834595 () Bool)

(assert (=> b!834595 (= e!549195 call!49831)))

(assert (= (and d!260772 c!136209) b!834593))

(assert (= (and d!260772 (not c!136209)) b!834594))

(assert (= (and b!834594 c!136208) b!834592))

(assert (= (and b!834594 (not c!136208)) b!834590))

(assert (= (and b!834590 c!136205) b!834589))

(assert (= (and b!834590 (not c!136205)) b!834586))

(assert (= (and b!834586 c!136206) b!834595))

(assert (= (and b!834586 (not c!136206)) b!834591))

(assert (= (and b!834591 c!136207) b!834588))

(assert (= (and b!834591 (not c!136207)) b!834587))

(assert (= (or b!834588 b!834587) bm!49826))

(assert (= (or b!834595 bm!49826) bm!49823))

(assert (= (or b!834595 b!834588) bm!49827))

(assert (= (or b!834595 b!834588) bm!49824))

(assert (= (or b!834589 bm!49827) bm!49825))

(declare-fun m!1069653 () Bool)

(assert (=> bm!49823 m!1069653))

(declare-fun m!1069657 () Bool)

(assert (=> bm!49824 m!1069657))

(declare-fun m!1069661 () Bool)

(assert (=> bm!49825 m!1069661))

(declare-fun m!1069663 () Bool)

(assert (=> b!834591 m!1069663))

(assert (=> bm!49720 d!260772))

(declare-fun d!260774 () Bool)

(declare-fun c!136210 () Bool)

(assert (=> d!260774 (= c!136210 ((_ is Nil!8895) (firstChars!56 (regOne!4682 r!27177))))))

(declare-fun e!549200 () (InoxSet C!4740))

(assert (=> d!260774 (= (content!1324 (firstChars!56 (regOne!4682 r!27177))) e!549200)))

(declare-fun b!834596 () Bool)

(assert (=> b!834596 (= e!549200 ((as const (Array C!4740 Bool)) false))))

(declare-fun b!834597 () Bool)

(assert (=> b!834597 (= e!549200 ((_ map or) (store ((as const (Array C!4740 Bool)) false) (h!14296 (firstChars!56 (regOne!4682 r!27177))) true) (content!1324 (t!93203 (firstChars!56 (regOne!4682 r!27177))))))))

(assert (= (and d!260774 c!136210) b!834596))

(assert (= (and d!260774 (not c!136210)) b!834597))

(declare-fun m!1069669 () Bool)

(assert (=> b!834597 m!1069669))

(assert (=> b!834597 m!1069539))

(assert (=> d!260676 d!260774))

(declare-fun b!834608 () Bool)

(declare-fun e!549208 () Bool)

(declare-fun call!49840 () Bool)

(assert (=> b!834608 (= e!549208 call!49840)))

(declare-fun b!834609 () Bool)

(declare-fun e!549211 () Bool)

(declare-fun e!549210 () Bool)

(assert (=> b!834609 (= e!549211 e!549210)))

(declare-fun c!136216 () Bool)

(assert (=> b!834609 (= c!136216 ((_ is Union!2085) (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun b!834611 () Bool)

(declare-fun e!549207 () Bool)

(declare-fun call!49838 () Bool)

(assert (=> b!834611 (= e!549207 call!49838)))

(declare-fun b!834612 () Bool)

(declare-fun e!549206 () Bool)

(declare-fun call!49839 () Bool)

(assert (=> b!834612 (= e!549206 call!49839)))

(declare-fun b!834613 () Bool)

(declare-fun res!382282 () Bool)

(declare-fun e!549209 () Bool)

(assert (=> b!834613 (=> res!382282 e!549209)))

(assert (=> b!834613 (= res!382282 (not ((_ is Concat!3816) (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))

(assert (=> b!834613 (= e!549210 e!549209)))

(declare-fun bm!49833 () Bool)

(assert (=> bm!49833 (= call!49838 (validRegex!638 (ite c!136216 (regTwo!4683 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) (regOne!4682 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))))

(declare-fun b!834614 () Bool)

(assert (=> b!834614 (= e!549211 e!549206)))

(declare-fun res!382284 () Bool)

(assert (=> b!834614 (= res!382284 (not (nullable!536 (reg!2414 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))))

(assert (=> b!834614 (=> (not res!382284) (not e!549206))))

(declare-fun b!834610 () Bool)

(declare-fun res!382286 () Bool)

(assert (=> b!834610 (=> (not res!382286) (not e!549207))))

(assert (=> b!834610 (= res!382286 call!49840)))

(assert (=> b!834610 (= e!549210 e!549207)))

(declare-fun d!260778 () Bool)

(declare-fun res!382283 () Bool)

(declare-fun e!549212 () Bool)

(assert (=> d!260778 (=> res!382283 e!549212)))

(assert (=> d!260778 (= res!382283 ((_ is ElementMatch!2085) (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(assert (=> d!260778 (= (validRegex!638 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) e!549212)))

(declare-fun bm!49834 () Bool)

(assert (=> bm!49834 (= call!49840 call!49839)))

(declare-fun b!834615 () Bool)

(assert (=> b!834615 (= e!549212 e!549211)))

(declare-fun c!136217 () Bool)

(assert (=> b!834615 (= c!136217 ((_ is Star!2085) (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))))))

(declare-fun bm!49835 () Bool)

(assert (=> bm!49835 (= call!49839 (validRegex!638 (ite c!136217 (reg!2414 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) (ite c!136216 (regOne!4683 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177)))) (regTwo!4682 (ite c!136137 (regTwo!4683 (regTwo!4682 r!27177)) (regOne!4682 (regTwo!4682 r!27177))))))))))

(declare-fun b!834616 () Bool)

(assert (=> b!834616 (= e!549209 e!549208)))

(declare-fun res!382285 () Bool)

(assert (=> b!834616 (=> (not res!382285) (not e!549208))))

(assert (=> b!834616 (= res!382285 call!49838)))

(assert (= (and d!260778 (not res!382283)) b!834615))

(assert (= (and b!834615 c!136217) b!834614))

(assert (= (and b!834615 (not c!136217)) b!834609))

(assert (= (and b!834614 res!382284) b!834612))

(assert (= (and b!834609 c!136216) b!834610))

(assert (= (and b!834609 (not c!136216)) b!834613))

(assert (= (and b!834610 res!382286) b!834611))

(assert (= (and b!834613 (not res!382282)) b!834616))

(assert (= (and b!834616 res!382285) b!834608))

(assert (= (or b!834610 b!834608) bm!49834))

(assert (= (or b!834611 b!834616) bm!49833))

(assert (= (or b!834612 bm!49834) bm!49835))

(declare-fun m!1069671 () Bool)

(assert (=> bm!49833 m!1069671))

(declare-fun m!1069673 () Bool)

(assert (=> b!834614 m!1069673))

(declare-fun m!1069675 () Bool)

(assert (=> bm!49835 m!1069675))

(assert (=> bm!49764 d!260778))

(declare-fun d!260780 () Bool)

(assert (=> d!260780 (= (nullable!536 (reg!2414 r!27177)) (nullableFct!173 (reg!2414 r!27177)))))

(declare-fun bs!229706 () Bool)

(assert (= bs!229706 d!260780))

(declare-fun m!1069677 () Bool)

(assert (=> bs!229706 m!1069677))

(assert (=> b!834276 d!260780))

(declare-fun e!549213 () Bool)

(declare-fun lt!317883 () List!8911)

(declare-fun b!834620 () Bool)

(assert (=> b!834620 (= e!549213 (or (not (= (ite c!136099 call!49727 call!49723) Nil!8895)) (= lt!317883 (ite c!136099 call!49723 call!49724))))))

(declare-fun e!549214 () List!8911)

(declare-fun b!834617 () Bool)

(assert (=> b!834617 (= e!549214 (ite c!136099 call!49727 call!49723))))

(declare-fun d!260782 () Bool)

(assert (=> d!260782 e!549213))

(declare-fun res!382288 () Bool)

(assert (=> d!260782 (=> (not res!382288) (not e!549213))))

(assert (=> d!260782 (= res!382288 (= (content!1324 lt!317883) ((_ map or) (content!1324 (ite c!136099 call!49723 call!49724)) (content!1324 (ite c!136099 call!49727 call!49723)))))))

(assert (=> d!260782 (= lt!317883 e!549214)))

(declare-fun c!136218 () Bool)

(assert (=> d!260782 (= c!136218 ((_ is Nil!8895) (ite c!136099 call!49723 call!49724)))))

(assert (=> d!260782 (= (++!2312 (ite c!136099 call!49723 call!49724) (ite c!136099 call!49727 call!49723)) lt!317883)))

(declare-fun b!834619 () Bool)

(declare-fun res!382287 () Bool)

(assert (=> b!834619 (=> (not res!382287) (not e!549213))))

(assert (=> b!834619 (= res!382287 (= (size!7487 lt!317883) (+ (size!7487 (ite c!136099 call!49723 call!49724)) (size!7487 (ite c!136099 call!49727 call!49723)))))))

(declare-fun b!834618 () Bool)

(assert (=> b!834618 (= e!549214 (Cons!8895 (h!14296 (ite c!136099 call!49723 call!49724)) (++!2312 (t!93203 (ite c!136099 call!49723 call!49724)) (ite c!136099 call!49727 call!49723))))))

(assert (= (and d!260782 c!136218) b!834617))

(assert (= (and d!260782 (not c!136218)) b!834618))

(assert (= (and d!260782 res!382288) b!834619))

(assert (= (and b!834619 res!382287) b!834620))

(declare-fun m!1069687 () Bool)

(assert (=> d!260782 m!1069687))

(declare-fun m!1069689 () Bool)

(assert (=> d!260782 m!1069689))

(declare-fun m!1069691 () Bool)

(assert (=> d!260782 m!1069691))

(declare-fun m!1069693 () Bool)

(assert (=> b!834619 m!1069693))

(declare-fun m!1069695 () Bool)

(assert (=> b!834619 m!1069695))

(declare-fun m!1069697 () Bool)

(assert (=> b!834619 m!1069697))

(declare-fun m!1069699 () Bool)

(assert (=> b!834618 m!1069699))

(assert (=> bm!49719 d!260782))

(declare-fun b!834629 () Bool)

(declare-fun e!549221 () List!8911)

(declare-fun e!549219 () List!8911)

(assert (=> b!834629 (= e!549221 e!549219)))

(declare-fun c!136224 () Bool)

(assert (=> b!834629 (= c!136224 ((_ is Union!2085) (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))))))

(declare-fun d!260786 () Bool)

(declare-fun c!136227 () Bool)

(assert (=> d!260786 (= c!136227 (or ((_ is EmptyExpr!2085) (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))) ((_ is EmptyLang!2085) (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177))))))))

(declare-fun e!549222 () List!8911)

(assert (=> d!260786 (= (firstChars!56 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))) e!549222)))

(declare-fun bm!49840 () Bool)

(declare-fun call!49849 () List!8911)

(assert (=> bm!49840 (= call!49849 (firstChars!56 (ite c!136224 (regTwo!4683 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))) (regOne!4682 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))))))))

(declare-fun call!49848 () List!8911)

(declare-fun call!49846 () List!8911)

(declare-fun call!49845 () List!8911)

(declare-fun bm!49841 () Bool)

(assert (=> bm!49841 (= call!49848 (++!2312 (ite c!136224 call!49845 call!49846) (ite c!136224 call!49849 call!49845)))))

(declare-fun c!136223 () Bool)

(declare-fun bm!49842 () Bool)

(declare-fun call!49847 () List!8911)

(assert (=> bm!49842 (= call!49847 (firstChars!56 (ite c!136223 (reg!2414 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))) (ite c!136224 (regOne!4683 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))) (regTwo!4682 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177))))))))))

(declare-fun b!834630 () Bool)

(declare-fun e!549223 () List!8911)

(assert (=> b!834630 (= e!549223 call!49846)))

(declare-fun b!834631 () Bool)

(assert (=> b!834631 (= e!549223 call!49848)))

(declare-fun b!834632 () Bool)

(assert (=> b!834632 (= e!549221 call!49847)))

(declare-fun b!834633 () Bool)

(assert (=> b!834633 (= c!136223 ((_ is Star!2085) (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))))))

(declare-fun e!549220 () List!8911)

(assert (=> b!834633 (= e!549220 e!549221)))

(declare-fun bm!49843 () Bool)

(assert (=> bm!49843 (= call!49846 call!49849)))

(declare-fun b!834634 () Bool)

(declare-fun c!136225 () Bool)

(assert (=> b!834634 (= c!136225 (nullable!536 (regOne!4682 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177))))))))

(assert (=> b!834634 (= e!549219 e!549223)))

(declare-fun b!834635 () Bool)

(assert (=> b!834635 (= e!549220 (Cons!8895 (c!136038 (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))) Nil!8895))))

(declare-fun b!834636 () Bool)

(assert (=> b!834636 (= e!549222 Nil!8895)))

(declare-fun b!834637 () Bool)

(assert (=> b!834637 (= e!549222 e!549220)))

(declare-fun c!136226 () Bool)

(assert (=> b!834637 (= c!136226 ((_ is ElementMatch!2085) (ite c!136099 (regTwo!4683 (regOne!4682 r!27177)) (regOne!4682 (regOne!4682 r!27177)))))))

(declare-fun bm!49844 () Bool)

(assert (=> bm!49844 (= call!49845 call!49847)))

(declare-fun b!834638 () Bool)

(assert (=> b!834638 (= e!549219 call!49848)))

(assert (= (and d!260786 c!136227) b!834636))

(assert (= (and d!260786 (not c!136227)) b!834637))

(assert (= (and b!834637 c!136226) b!834635))

(assert (= (and b!834637 (not c!136226)) b!834633))

(assert (= (and b!834633 c!136223) b!834632))

(assert (= (and b!834633 (not c!136223)) b!834629))

(assert (= (and b!834629 c!136224) b!834638))

(assert (= (and b!834629 (not c!136224)) b!834634))

(assert (= (and b!834634 c!136225) b!834631))

(assert (= (and b!834634 (not c!136225)) b!834630))

(assert (= (or b!834631 b!834630) bm!49843))

(assert (= (or b!834638 bm!49843) bm!49840))

(assert (= (or b!834638 b!834631) bm!49844))

(assert (= (or b!834638 b!834631) bm!49841))

(assert (= (or b!834632 bm!49844) bm!49842))

(declare-fun m!1069705 () Bool)

(assert (=> bm!49840 m!1069705))

(declare-fun m!1069707 () Bool)

(assert (=> bm!49841 m!1069707))

(declare-fun m!1069711 () Bool)

(assert (=> bm!49842 m!1069711))

(declare-fun m!1069713 () Bool)

(assert (=> b!834634 m!1069713))

(assert (=> bm!49718 d!260786))

(declare-fun d!260790 () Bool)

(declare-fun c!136230 () Bool)

(assert (=> d!260790 (= c!136230 ((_ is Nil!8895) (usedCharacters!168 (regTwo!4682 r!27177))))))

(declare-fun e!549226 () (InoxSet C!4740))

(assert (=> d!260790 (= (content!1324 (usedCharacters!168 (regTwo!4682 r!27177))) e!549226)))

(declare-fun b!834639 () Bool)

(assert (=> b!834639 (= e!549226 ((as const (Array C!4740 Bool)) false))))

(declare-fun b!834640 () Bool)

(assert (=> b!834640 (= e!549226 ((_ map or) (store ((as const (Array C!4740 Bool)) false) (h!14296 (usedCharacters!168 (regTwo!4682 r!27177))) true) (content!1324 (t!93203 (usedCharacters!168 (regTwo!4682 r!27177))))))))

(assert (= (and d!260790 c!136230) b!834639))

(assert (= (and d!260790 (not c!136230)) b!834640))

(declare-fun m!1069715 () Bool)

(assert (=> b!834640 m!1069715))

(assert (=> b!834640 m!1069547))

(assert (=> d!260654 d!260790))

(declare-fun d!260792 () Bool)

(declare-fun lt!317884 () Bool)

(assert (=> d!260792 (= lt!317884 (select (content!1324 (t!93203 (usedCharacters!168 r!27177))) c!13916))))

(declare-fun e!549233 () Bool)

(assert (=> d!260792 (= lt!317884 e!549233)))

(declare-fun res!382294 () Bool)

(assert (=> d!260792 (=> (not res!382294) (not e!549233))))

(assert (=> d!260792 (= res!382294 ((_ is Cons!8895) (t!93203 (usedCharacters!168 r!27177))))))

(assert (=> d!260792 (= (contains!1676 (t!93203 (usedCharacters!168 r!27177)) c!13916) lt!317884)))

(declare-fun b!834650 () Bool)

(declare-fun e!549232 () Bool)

(assert (=> b!834650 (= e!549233 e!549232)))

(declare-fun res!382295 () Bool)

(assert (=> b!834650 (=> res!382295 e!549232)))

(assert (=> b!834650 (= res!382295 (= (h!14296 (t!93203 (usedCharacters!168 r!27177))) c!13916))))

(declare-fun b!834651 () Bool)

(assert (=> b!834651 (= e!549232 (contains!1676 (t!93203 (t!93203 (usedCharacters!168 r!27177))) c!13916))))

(assert (= (and d!260792 res!382294) b!834650))

(assert (= (and b!834650 (not res!382295)) b!834651))

(assert (=> d!260792 m!1069491))

(declare-fun m!1069717 () Bool)

(assert (=> d!260792 m!1069717))

(declare-fun m!1069719 () Bool)

(assert (=> b!834651 m!1069719))

(assert (=> b!834093 d!260792))

(declare-fun b!834652 () Bool)

(declare-fun e!549236 () Bool)

(declare-fun call!49855 () Bool)

(assert (=> b!834652 (= e!549236 call!49855)))

(declare-fun b!834653 () Bool)

(declare-fun e!549239 () Bool)

(declare-fun e!549238 () Bool)

(assert (=> b!834653 (= e!549239 e!549238)))

(declare-fun c!136231 () Bool)

(assert (=> b!834653 (= c!136231 ((_ is Union!2085) (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun b!834655 () Bool)

(declare-fun e!549235 () Bool)

(declare-fun call!49853 () Bool)

(assert (=> b!834655 (= e!549235 call!49853)))

(declare-fun b!834656 () Bool)

(declare-fun e!549234 () Bool)

(declare-fun call!49854 () Bool)

(assert (=> b!834656 (= e!549234 call!49854)))

(declare-fun b!834657 () Bool)

(declare-fun res!382296 () Bool)

(declare-fun e!549237 () Bool)

(assert (=> b!834657 (=> res!382296 e!549237)))

(assert (=> b!834657 (= res!382296 (not ((_ is Concat!3816) (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))

(assert (=> b!834657 (= e!549238 e!549237)))

(declare-fun bm!49848 () Bool)

(assert (=> bm!49848 (= call!49853 (validRegex!638 (ite c!136231 (regTwo!4683 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))) (regOne!4682 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))))

(declare-fun b!834658 () Bool)

(assert (=> b!834658 (= e!549239 e!549234)))

(declare-fun res!382298 () Bool)

(assert (=> b!834658 (= res!382298 (not (nullable!536 (reg!2414 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))))

(assert (=> b!834658 (=> (not res!382298) (not e!549234))))

(declare-fun b!834654 () Bool)

(declare-fun res!382300 () Bool)

(assert (=> b!834654 (=> (not res!382300) (not e!549235))))

(assert (=> b!834654 (= res!382300 call!49855)))

(assert (=> b!834654 (= e!549238 e!549235)))

(declare-fun d!260794 () Bool)

(declare-fun res!382297 () Bool)

(declare-fun e!549240 () Bool)

(assert (=> d!260794 (=> res!382297 e!549240)))

(assert (=> d!260794 (= res!382297 ((_ is ElementMatch!2085) (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(assert (=> d!260794 (= (validRegex!638 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))) e!549240)))

(declare-fun bm!49849 () Bool)

(assert (=> bm!49849 (= call!49855 call!49854)))

(declare-fun b!834659 () Bool)

(assert (=> b!834659 (= e!549240 e!549239)))

(declare-fun c!136232 () Bool)

(assert (=> b!834659 (= c!136232 ((_ is Star!2085) (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))))))

(declare-fun bm!49850 () Bool)

(assert (=> bm!49850 (= call!49854 (validRegex!638 (ite c!136232 (reg!2414 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))) (ite c!136231 (regOne!4683 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177))) (regTwo!4682 (ite c!136116 (regTwo!4683 r!27177) (regOne!4682 r!27177)))))))))

(declare-fun b!834660 () Bool)

(assert (=> b!834660 (= e!549237 e!549236)))

(declare-fun res!382299 () Bool)

(assert (=> b!834660 (=> (not res!382299) (not e!549236))))

(assert (=> b!834660 (= res!382299 call!49853)))

(assert (= (and d!260794 (not res!382297)) b!834659))

(assert (= (and b!834659 c!136232) b!834658))

(assert (= (and b!834659 (not c!136232)) b!834653))

(assert (= (and b!834658 res!382298) b!834656))

(assert (= (and b!834653 c!136231) b!834654))

(assert (= (and b!834653 (not c!136231)) b!834657))

(assert (= (and b!834654 res!382300) b!834655))

(assert (= (and b!834657 (not res!382296)) b!834660))

(assert (= (and b!834660 res!382299) b!834652))

(assert (= (or b!834654 b!834652) bm!49849))

(assert (= (or b!834655 b!834660) bm!49848))

(assert (= (or b!834656 bm!49849) bm!49850))

(declare-fun m!1069727 () Bool)

(assert (=> bm!49848 m!1069727))

(declare-fun m!1069729 () Bool)

(assert (=> b!834658 m!1069729))

(declare-fun m!1069731 () Bool)

(assert (=> bm!49850 m!1069731))

(assert (=> bm!49740 d!260794))

(assert (=> b!834297 d!260690))

(declare-fun b!834666 () Bool)

(declare-fun e!549243 () Bool)

(declare-fun tp!261488 () Bool)

(declare-fun tp!261489 () Bool)

(assert (=> b!834666 (= e!549243 (and tp!261488 tp!261489))))

(declare-fun b!834665 () Bool)

(assert (=> b!834665 (= e!549243 tp_is_empty!3893)))

(declare-fun b!834668 () Bool)

(declare-fun tp!261485 () Bool)

(declare-fun tp!261487 () Bool)

(assert (=> b!834668 (= e!549243 (and tp!261485 tp!261487))))

(declare-fun b!834667 () Bool)

(declare-fun tp!261486 () Bool)

(assert (=> b!834667 (= e!549243 tp!261486)))

(assert (=> b!834377 (= tp!261450 e!549243)))

(assert (= (and b!834377 ((_ is ElementMatch!2085) (regOne!4683 (regOne!4683 r!27177)))) b!834665))

(assert (= (and b!834377 ((_ is Concat!3816) (regOne!4683 (regOne!4683 r!27177)))) b!834666))

(assert (= (and b!834377 ((_ is Star!2085) (regOne!4683 (regOne!4683 r!27177)))) b!834667))

(assert (= (and b!834377 ((_ is Union!2085) (regOne!4683 (regOne!4683 r!27177)))) b!834668))

(declare-fun b!834670 () Bool)

(declare-fun e!549244 () Bool)

(declare-fun tp!261493 () Bool)

(declare-fun tp!261494 () Bool)

(assert (=> b!834670 (= e!549244 (and tp!261493 tp!261494))))

(declare-fun b!834669 () Bool)

(assert (=> b!834669 (= e!549244 tp_is_empty!3893)))

(declare-fun b!834672 () Bool)

(declare-fun tp!261490 () Bool)

(declare-fun tp!261492 () Bool)

(assert (=> b!834672 (= e!549244 (and tp!261490 tp!261492))))

(declare-fun b!834671 () Bool)

(declare-fun tp!261491 () Bool)

(assert (=> b!834671 (= e!549244 tp!261491)))

(assert (=> b!834377 (= tp!261452 e!549244)))

(assert (= (and b!834377 ((_ is ElementMatch!2085) (regTwo!4683 (regOne!4683 r!27177)))) b!834669))

(assert (= (and b!834377 ((_ is Concat!3816) (regTwo!4683 (regOne!4683 r!27177)))) b!834670))

(assert (= (and b!834377 ((_ is Star!2085) (regTwo!4683 (regOne!4683 r!27177)))) b!834671))

(assert (= (and b!834377 ((_ is Union!2085) (regTwo!4683 (regOne!4683 r!27177)))) b!834672))

(declare-fun b!834674 () Bool)

(declare-fun e!549245 () Bool)

(declare-fun tp!261498 () Bool)

(declare-fun tp!261499 () Bool)

(assert (=> b!834674 (= e!549245 (and tp!261498 tp!261499))))

(declare-fun b!834673 () Bool)

(assert (=> b!834673 (= e!549245 tp_is_empty!3893)))

(declare-fun b!834676 () Bool)

(declare-fun tp!261495 () Bool)

(declare-fun tp!261497 () Bool)

(assert (=> b!834676 (= e!549245 (and tp!261495 tp!261497))))

(declare-fun b!834675 () Bool)

(declare-fun tp!261496 () Bool)

(assert (=> b!834675 (= e!549245 tp!261496)))

(assert (=> b!834376 (= tp!261451 e!549245)))

(assert (= (and b!834376 ((_ is ElementMatch!2085) (reg!2414 (regOne!4683 r!27177)))) b!834673))

(assert (= (and b!834376 ((_ is Concat!3816) (reg!2414 (regOne!4683 r!27177)))) b!834674))

(assert (= (and b!834376 ((_ is Star!2085) (reg!2414 (regOne!4683 r!27177)))) b!834675))

(assert (= (and b!834376 ((_ is Union!2085) (reg!2414 (regOne!4683 r!27177)))) b!834676))

(declare-fun b!834680 () Bool)

(declare-fun e!549248 () Bool)

(declare-fun tp!261503 () Bool)

(declare-fun tp!261504 () Bool)

(assert (=> b!834680 (= e!549248 (and tp!261503 tp!261504))))

(declare-fun b!834679 () Bool)

(assert (=> b!834679 (= e!549248 tp_is_empty!3893)))

(declare-fun b!834682 () Bool)

(declare-fun tp!261500 () Bool)

(declare-fun tp!261502 () Bool)

(assert (=> b!834682 (= e!549248 (and tp!261500 tp!261502))))

(declare-fun b!834681 () Bool)

(declare-fun tp!261501 () Bool)

(assert (=> b!834681 (= e!549248 tp!261501)))

(assert (=> b!834393 (= tp!261470 e!549248)))

(assert (= (and b!834393 ((_ is ElementMatch!2085) (regOne!4683 (reg!2414 r!27177)))) b!834679))

(assert (= (and b!834393 ((_ is Concat!3816) (regOne!4683 (reg!2414 r!27177)))) b!834680))

(assert (= (and b!834393 ((_ is Star!2085) (regOne!4683 (reg!2414 r!27177)))) b!834681))

(assert (= (and b!834393 ((_ is Union!2085) (regOne!4683 (reg!2414 r!27177)))) b!834682))

(declare-fun b!834684 () Bool)

(declare-fun e!549249 () Bool)

(declare-fun tp!261508 () Bool)

(declare-fun tp!261509 () Bool)

(assert (=> b!834684 (= e!549249 (and tp!261508 tp!261509))))

(declare-fun b!834683 () Bool)

(assert (=> b!834683 (= e!549249 tp_is_empty!3893)))

(declare-fun b!834686 () Bool)

(declare-fun tp!261505 () Bool)

(declare-fun tp!261507 () Bool)

(assert (=> b!834686 (= e!549249 (and tp!261505 tp!261507))))

(declare-fun b!834685 () Bool)

(declare-fun tp!261506 () Bool)

(assert (=> b!834685 (= e!549249 tp!261506)))

(assert (=> b!834393 (= tp!261472 e!549249)))

(assert (= (and b!834393 ((_ is ElementMatch!2085) (regTwo!4683 (reg!2414 r!27177)))) b!834683))

(assert (= (and b!834393 ((_ is Concat!3816) (regTwo!4683 (reg!2414 r!27177)))) b!834684))

(assert (= (and b!834393 ((_ is Star!2085) (regTwo!4683 (reg!2414 r!27177)))) b!834685))

(assert (= (and b!834393 ((_ is Union!2085) (regTwo!4683 (reg!2414 r!27177)))) b!834686))

(declare-fun b!834690 () Bool)

(declare-fun e!549252 () Bool)

(declare-fun tp!261513 () Bool)

(declare-fun tp!261514 () Bool)

(assert (=> b!834690 (= e!549252 (and tp!261513 tp!261514))))

(declare-fun b!834689 () Bool)

(assert (=> b!834689 (= e!549252 tp_is_empty!3893)))

(declare-fun b!834692 () Bool)

(declare-fun tp!261510 () Bool)

(declare-fun tp!261512 () Bool)

(assert (=> b!834692 (= e!549252 (and tp!261510 tp!261512))))

(declare-fun b!834691 () Bool)

(declare-fun tp!261511 () Bool)

(assert (=> b!834691 (= e!549252 tp!261511)))

(assert (=> b!834401 (= tp!261480 e!549252)))

(assert (= (and b!834401 ((_ is ElementMatch!2085) (regOne!4683 (regTwo!4682 r!27177)))) b!834689))

(assert (= (and b!834401 ((_ is Concat!3816) (regOne!4683 (regTwo!4682 r!27177)))) b!834690))

(assert (= (and b!834401 ((_ is Star!2085) (regOne!4683 (regTwo!4682 r!27177)))) b!834691))

(assert (= (and b!834401 ((_ is Union!2085) (regOne!4683 (regTwo!4682 r!27177)))) b!834692))

(declare-fun b!834695 () Bool)

(declare-fun e!549254 () Bool)

(declare-fun tp!261518 () Bool)

(declare-fun tp!261519 () Bool)

(assert (=> b!834695 (= e!549254 (and tp!261518 tp!261519))))

(declare-fun b!834693 () Bool)

(assert (=> b!834693 (= e!549254 tp_is_empty!3893)))

(declare-fun b!834698 () Bool)

(declare-fun tp!261515 () Bool)

(declare-fun tp!261517 () Bool)

(assert (=> b!834698 (= e!549254 (and tp!261515 tp!261517))))

(declare-fun b!834697 () Bool)

(declare-fun tp!261516 () Bool)

(assert (=> b!834697 (= e!549254 tp!261516)))

(assert (=> b!834401 (= tp!261482 e!549254)))

(assert (= (and b!834401 ((_ is ElementMatch!2085) (regTwo!4683 (regTwo!4682 r!27177)))) b!834693))

(assert (= (and b!834401 ((_ is Concat!3816) (regTwo!4683 (regTwo!4682 r!27177)))) b!834695))

(assert (= (and b!834401 ((_ is Star!2085) (regTwo!4683 (regTwo!4682 r!27177)))) b!834697))

(assert (= (and b!834401 ((_ is Union!2085) (regTwo!4683 (regTwo!4682 r!27177)))) b!834698))

(declare-fun b!834700 () Bool)

(declare-fun e!549256 () Bool)

(declare-fun tp!261523 () Bool)

(declare-fun tp!261524 () Bool)

(assert (=> b!834700 (= e!549256 (and tp!261523 tp!261524))))

(declare-fun b!834699 () Bool)

(assert (=> b!834699 (= e!549256 tp_is_empty!3893)))

(declare-fun b!834702 () Bool)

(declare-fun tp!261520 () Bool)

(declare-fun tp!261522 () Bool)

(assert (=> b!834702 (= e!549256 (and tp!261520 tp!261522))))

(declare-fun b!834701 () Bool)

(declare-fun tp!261521 () Bool)

(assert (=> b!834701 (= e!549256 tp!261521)))

(assert (=> b!834388 (= tp!261466 e!549256)))

(assert (= (and b!834388 ((_ is ElementMatch!2085) (reg!2414 (regTwo!4683 r!27177)))) b!834699))

(assert (= (and b!834388 ((_ is Concat!3816) (reg!2414 (regTwo!4683 r!27177)))) b!834700))

(assert (= (and b!834388 ((_ is Star!2085) (reg!2414 (regTwo!4683 r!27177)))) b!834701))

(assert (= (and b!834388 ((_ is Union!2085) (reg!2414 (regTwo!4683 r!27177)))) b!834702))

(declare-fun b!834704 () Bool)

(declare-fun e!549257 () Bool)

(declare-fun tp!261528 () Bool)

(declare-fun tp!261529 () Bool)

(assert (=> b!834704 (= e!549257 (and tp!261528 tp!261529))))

(declare-fun b!834703 () Bool)

(assert (=> b!834703 (= e!549257 tp_is_empty!3893)))

(declare-fun b!834706 () Bool)

(declare-fun tp!261525 () Bool)

(declare-fun tp!261527 () Bool)

(assert (=> b!834706 (= e!549257 (and tp!261525 tp!261527))))

(declare-fun b!834705 () Bool)

(declare-fun tp!261526 () Bool)

(assert (=> b!834705 (= e!549257 tp!261526)))

(assert (=> b!834389 (= tp!261465 e!549257)))

(assert (= (and b!834389 ((_ is ElementMatch!2085) (regOne!4683 (regTwo!4683 r!27177)))) b!834703))

(assert (= (and b!834389 ((_ is Concat!3816) (regOne!4683 (regTwo!4683 r!27177)))) b!834704))

(assert (= (and b!834389 ((_ is Star!2085) (regOne!4683 (regTwo!4683 r!27177)))) b!834705))

(assert (= (and b!834389 ((_ is Union!2085) (regOne!4683 (regTwo!4683 r!27177)))) b!834706))

(declare-fun b!834717 () Bool)

(declare-fun e!549265 () Bool)

(declare-fun tp!261533 () Bool)

(declare-fun tp!261534 () Bool)

(assert (=> b!834717 (= e!549265 (and tp!261533 tp!261534))))

(declare-fun b!834716 () Bool)

(assert (=> b!834716 (= e!549265 tp_is_empty!3893)))

(declare-fun b!834719 () Bool)

(declare-fun tp!261530 () Bool)

(declare-fun tp!261532 () Bool)

(assert (=> b!834719 (= e!549265 (and tp!261530 tp!261532))))

(declare-fun b!834718 () Bool)

(declare-fun tp!261531 () Bool)

(assert (=> b!834718 (= e!549265 tp!261531)))

(assert (=> b!834389 (= tp!261467 e!549265)))

(assert (= (and b!834389 ((_ is ElementMatch!2085) (regTwo!4683 (regTwo!4683 r!27177)))) b!834716))

(assert (= (and b!834389 ((_ is Concat!3816) (regTwo!4683 (regTwo!4683 r!27177)))) b!834717))

(assert (= (and b!834389 ((_ is Star!2085) (regTwo!4683 (regTwo!4683 r!27177)))) b!834718))

(assert (= (and b!834389 ((_ is Union!2085) (regTwo!4683 (regTwo!4683 r!27177)))) b!834719))

(declare-fun b!834721 () Bool)

(declare-fun e!549266 () Bool)

(declare-fun tp!261538 () Bool)

(declare-fun tp!261539 () Bool)

(assert (=> b!834721 (= e!549266 (and tp!261538 tp!261539))))

(declare-fun b!834720 () Bool)

(assert (=> b!834720 (= e!549266 tp_is_empty!3893)))

(declare-fun b!834723 () Bool)

(declare-fun tp!261535 () Bool)

(declare-fun tp!261537 () Bool)

(assert (=> b!834723 (= e!549266 (and tp!261535 tp!261537))))

(declare-fun b!834722 () Bool)

(declare-fun tp!261536 () Bool)

(assert (=> b!834722 (= e!549266 tp!261536)))

(assert (=> b!834375 (= tp!261453 e!549266)))

(assert (= (and b!834375 ((_ is ElementMatch!2085) (regOne!4682 (regOne!4683 r!27177)))) b!834720))

(assert (= (and b!834375 ((_ is Concat!3816) (regOne!4682 (regOne!4683 r!27177)))) b!834721))

(assert (= (and b!834375 ((_ is Star!2085) (regOne!4682 (regOne!4683 r!27177)))) b!834722))

(assert (= (and b!834375 ((_ is Union!2085) (regOne!4682 (regOne!4683 r!27177)))) b!834723))

(declare-fun b!834725 () Bool)

(declare-fun e!549267 () Bool)

(declare-fun tp!261543 () Bool)

(declare-fun tp!261544 () Bool)

(assert (=> b!834725 (= e!549267 (and tp!261543 tp!261544))))

(declare-fun b!834724 () Bool)

(assert (=> b!834724 (= e!549267 tp_is_empty!3893)))

(declare-fun b!834727 () Bool)

(declare-fun tp!261540 () Bool)

(declare-fun tp!261542 () Bool)

(assert (=> b!834727 (= e!549267 (and tp!261540 tp!261542))))

(declare-fun b!834726 () Bool)

(declare-fun tp!261541 () Bool)

(assert (=> b!834726 (= e!549267 tp!261541)))

(assert (=> b!834375 (= tp!261454 e!549267)))

(assert (= (and b!834375 ((_ is ElementMatch!2085) (regTwo!4682 (regOne!4683 r!27177)))) b!834724))

(assert (= (and b!834375 ((_ is Concat!3816) (regTwo!4682 (regOne!4683 r!27177)))) b!834725))

(assert (= (and b!834375 ((_ is Star!2085) (regTwo!4682 (regOne!4683 r!27177)))) b!834726))

(assert (= (and b!834375 ((_ is Union!2085) (regTwo!4682 (regOne!4683 r!27177)))) b!834727))

(declare-fun b!834729 () Bool)

(declare-fun e!549268 () Bool)

(declare-fun tp!261548 () Bool)

(declare-fun tp!261549 () Bool)

(assert (=> b!834729 (= e!549268 (and tp!261548 tp!261549))))

(declare-fun b!834728 () Bool)

(assert (=> b!834728 (= e!549268 tp_is_empty!3893)))

(declare-fun b!834731 () Bool)

(declare-fun tp!261545 () Bool)

(declare-fun tp!261547 () Bool)

(assert (=> b!834731 (= e!549268 (and tp!261545 tp!261547))))

(declare-fun b!834730 () Bool)

(declare-fun tp!261546 () Bool)

(assert (=> b!834730 (= e!549268 tp!261546)))

(assert (=> b!834400 (= tp!261481 e!549268)))

(assert (= (and b!834400 ((_ is ElementMatch!2085) (reg!2414 (regTwo!4682 r!27177)))) b!834728))

(assert (= (and b!834400 ((_ is Concat!3816) (reg!2414 (regTwo!4682 r!27177)))) b!834729))

(assert (= (and b!834400 ((_ is Star!2085) (reg!2414 (regTwo!4682 r!27177)))) b!834730))

(assert (= (and b!834400 ((_ is Union!2085) (reg!2414 (regTwo!4682 r!27177)))) b!834731))

(declare-fun b!834733 () Bool)

(declare-fun e!549269 () Bool)

(declare-fun tp!261553 () Bool)

(declare-fun tp!261554 () Bool)

(assert (=> b!834733 (= e!549269 (and tp!261553 tp!261554))))

(declare-fun b!834732 () Bool)

(assert (=> b!834732 (= e!549269 tp_is_empty!3893)))

(declare-fun b!834735 () Bool)

(declare-fun tp!261550 () Bool)

(declare-fun tp!261552 () Bool)

(assert (=> b!834735 (= e!549269 (and tp!261550 tp!261552))))

(declare-fun b!834734 () Bool)

(declare-fun tp!261551 () Bool)

(assert (=> b!834734 (= e!549269 tp!261551)))

(assert (=> b!834387 (= tp!261468 e!549269)))

(assert (= (and b!834387 ((_ is ElementMatch!2085) (regOne!4682 (regTwo!4683 r!27177)))) b!834732))

(assert (= (and b!834387 ((_ is Concat!3816) (regOne!4682 (regTwo!4683 r!27177)))) b!834733))

(assert (= (and b!834387 ((_ is Star!2085) (regOne!4682 (regTwo!4683 r!27177)))) b!834734))

(assert (= (and b!834387 ((_ is Union!2085) (regOne!4682 (regTwo!4683 r!27177)))) b!834735))

(declare-fun b!834747 () Bool)

(declare-fun e!549275 () Bool)

(declare-fun tp!261558 () Bool)

(declare-fun tp!261559 () Bool)

(assert (=> b!834747 (= e!549275 (and tp!261558 tp!261559))))

(declare-fun b!834746 () Bool)

(assert (=> b!834746 (= e!549275 tp_is_empty!3893)))

(declare-fun b!834749 () Bool)

(declare-fun tp!261555 () Bool)

(declare-fun tp!261557 () Bool)

(assert (=> b!834749 (= e!549275 (and tp!261555 tp!261557))))

(declare-fun b!834748 () Bool)

(declare-fun tp!261556 () Bool)

(assert (=> b!834748 (= e!549275 tp!261556)))

(assert (=> b!834387 (= tp!261469 e!549275)))

(assert (= (and b!834387 ((_ is ElementMatch!2085) (regTwo!4682 (regTwo!4683 r!27177)))) b!834746))

(assert (= (and b!834387 ((_ is Concat!3816) (regTwo!4682 (regTwo!4683 r!27177)))) b!834747))

(assert (= (and b!834387 ((_ is Star!2085) (regTwo!4682 (regTwo!4683 r!27177)))) b!834748))

(assert (= (and b!834387 ((_ is Union!2085) (regTwo!4682 (regTwo!4683 r!27177)))) b!834749))

(declare-fun b!834751 () Bool)

(declare-fun e!549276 () Bool)

(declare-fun tp!261563 () Bool)

(declare-fun tp!261564 () Bool)

(assert (=> b!834751 (= e!549276 (and tp!261563 tp!261564))))

(declare-fun b!834750 () Bool)

(assert (=> b!834750 (= e!549276 tp_is_empty!3893)))

(declare-fun b!834753 () Bool)

(declare-fun tp!261560 () Bool)

(declare-fun tp!261562 () Bool)

(assert (=> b!834753 (= e!549276 (and tp!261560 tp!261562))))

(declare-fun b!834752 () Bool)

(declare-fun tp!261561 () Bool)

(assert (=> b!834752 (= e!549276 tp!261561)))

(assert (=> b!834396 (= tp!261476 e!549276)))

(assert (= (and b!834396 ((_ is ElementMatch!2085) (reg!2414 (regOne!4682 r!27177)))) b!834750))

(assert (= (and b!834396 ((_ is Concat!3816) (reg!2414 (regOne!4682 r!27177)))) b!834751))

(assert (= (and b!834396 ((_ is Star!2085) (reg!2414 (regOne!4682 r!27177)))) b!834752))

(assert (= (and b!834396 ((_ is Union!2085) (reg!2414 (regOne!4682 r!27177)))) b!834753))

(declare-fun b!834755 () Bool)

(declare-fun e!549277 () Bool)

(declare-fun tp!261568 () Bool)

(declare-fun tp!261569 () Bool)

(assert (=> b!834755 (= e!549277 (and tp!261568 tp!261569))))

(declare-fun b!834754 () Bool)

(assert (=> b!834754 (= e!549277 tp_is_empty!3893)))

(declare-fun b!834757 () Bool)

(declare-fun tp!261565 () Bool)

(declare-fun tp!261567 () Bool)

(assert (=> b!834757 (= e!549277 (and tp!261565 tp!261567))))

(declare-fun b!834756 () Bool)

(declare-fun tp!261566 () Bool)

(assert (=> b!834756 (= e!549277 tp!261566)))

(assert (=> b!834397 (= tp!261475 e!549277)))

(assert (= (and b!834397 ((_ is ElementMatch!2085) (regOne!4683 (regOne!4682 r!27177)))) b!834754))

(assert (= (and b!834397 ((_ is Concat!3816) (regOne!4683 (regOne!4682 r!27177)))) b!834755))

(assert (= (and b!834397 ((_ is Star!2085) (regOne!4683 (regOne!4682 r!27177)))) b!834756))

(assert (= (and b!834397 ((_ is Union!2085) (regOne!4683 (regOne!4682 r!27177)))) b!834757))

(declare-fun b!834759 () Bool)

(declare-fun e!549278 () Bool)

(declare-fun tp!261573 () Bool)

(declare-fun tp!261574 () Bool)

(assert (=> b!834759 (= e!549278 (and tp!261573 tp!261574))))

(declare-fun b!834758 () Bool)

(assert (=> b!834758 (= e!549278 tp_is_empty!3893)))

(declare-fun b!834761 () Bool)

(declare-fun tp!261570 () Bool)

(declare-fun tp!261572 () Bool)

(assert (=> b!834761 (= e!549278 (and tp!261570 tp!261572))))

(declare-fun b!834760 () Bool)

(declare-fun tp!261571 () Bool)

(assert (=> b!834760 (= e!549278 tp!261571)))

(assert (=> b!834397 (= tp!261477 e!549278)))

(assert (= (and b!834397 ((_ is ElementMatch!2085) (regTwo!4683 (regOne!4682 r!27177)))) b!834758))

(assert (= (and b!834397 ((_ is Concat!3816) (regTwo!4683 (regOne!4682 r!27177)))) b!834759))

(assert (= (and b!834397 ((_ is Star!2085) (regTwo!4683 (regOne!4682 r!27177)))) b!834760))

(assert (= (and b!834397 ((_ is Union!2085) (regTwo!4683 (regOne!4682 r!27177)))) b!834761))

(declare-fun b!834763 () Bool)

(declare-fun e!549279 () Bool)

(declare-fun tp!261578 () Bool)

(declare-fun tp!261579 () Bool)

(assert (=> b!834763 (= e!549279 (and tp!261578 tp!261579))))

(declare-fun b!834762 () Bool)

(assert (=> b!834762 (= e!549279 tp_is_empty!3893)))

(declare-fun b!834765 () Bool)

(declare-fun tp!261575 () Bool)

(declare-fun tp!261577 () Bool)

(assert (=> b!834765 (= e!549279 (and tp!261575 tp!261577))))

(declare-fun b!834764 () Bool)

(declare-fun tp!261576 () Bool)

(assert (=> b!834764 (= e!549279 tp!261576)))

(assert (=> b!834392 (= tp!261471 e!549279)))

(assert (= (and b!834392 ((_ is ElementMatch!2085) (reg!2414 (reg!2414 r!27177)))) b!834762))

(assert (= (and b!834392 ((_ is Concat!3816) (reg!2414 (reg!2414 r!27177)))) b!834763))

(assert (= (and b!834392 ((_ is Star!2085) (reg!2414 (reg!2414 r!27177)))) b!834764))

(assert (= (and b!834392 ((_ is Union!2085) (reg!2414 (reg!2414 r!27177)))) b!834765))

(declare-fun b!834767 () Bool)

(declare-fun e!549280 () Bool)

(declare-fun tp!261583 () Bool)

(declare-fun tp!261584 () Bool)

(assert (=> b!834767 (= e!549280 (and tp!261583 tp!261584))))

(declare-fun b!834766 () Bool)

(assert (=> b!834766 (= e!549280 tp_is_empty!3893)))

(declare-fun b!834769 () Bool)

(declare-fun tp!261580 () Bool)

(declare-fun tp!261582 () Bool)

(assert (=> b!834769 (= e!549280 (and tp!261580 tp!261582))))

(declare-fun b!834768 () Bool)

(declare-fun tp!261581 () Bool)

(assert (=> b!834768 (= e!549280 tp!261581)))

(assert (=> b!834395 (= tp!261478 e!549280)))

(assert (= (and b!834395 ((_ is ElementMatch!2085) (regOne!4682 (regOne!4682 r!27177)))) b!834766))

(assert (= (and b!834395 ((_ is Concat!3816) (regOne!4682 (regOne!4682 r!27177)))) b!834767))

(assert (= (and b!834395 ((_ is Star!2085) (regOne!4682 (regOne!4682 r!27177)))) b!834768))

(assert (= (and b!834395 ((_ is Union!2085) (regOne!4682 (regOne!4682 r!27177)))) b!834769))

(declare-fun b!834771 () Bool)

(declare-fun e!549281 () Bool)

(declare-fun tp!261588 () Bool)

(declare-fun tp!261589 () Bool)

(assert (=> b!834771 (= e!549281 (and tp!261588 tp!261589))))

(declare-fun b!834770 () Bool)

(assert (=> b!834770 (= e!549281 tp_is_empty!3893)))

(declare-fun b!834773 () Bool)

(declare-fun tp!261585 () Bool)

(declare-fun tp!261587 () Bool)

(assert (=> b!834773 (= e!549281 (and tp!261585 tp!261587))))

(declare-fun b!834772 () Bool)

(declare-fun tp!261586 () Bool)

(assert (=> b!834772 (= e!549281 tp!261586)))

(assert (=> b!834395 (= tp!261479 e!549281)))

(assert (= (and b!834395 ((_ is ElementMatch!2085) (regTwo!4682 (regOne!4682 r!27177)))) b!834770))

(assert (= (and b!834395 ((_ is Concat!3816) (regTwo!4682 (regOne!4682 r!27177)))) b!834771))

(assert (= (and b!834395 ((_ is Star!2085) (regTwo!4682 (regOne!4682 r!27177)))) b!834772))

(assert (= (and b!834395 ((_ is Union!2085) (regTwo!4682 (regOne!4682 r!27177)))) b!834773))

(declare-fun b!834779 () Bool)

(declare-fun e!549284 () Bool)

(declare-fun tp!261593 () Bool)

(declare-fun tp!261594 () Bool)

(assert (=> b!834779 (= e!549284 (and tp!261593 tp!261594))))

(declare-fun b!834778 () Bool)

(assert (=> b!834778 (= e!549284 tp_is_empty!3893)))

(declare-fun b!834781 () Bool)

(declare-fun tp!261590 () Bool)

(declare-fun tp!261592 () Bool)

(assert (=> b!834781 (= e!549284 (and tp!261590 tp!261592))))

(declare-fun b!834780 () Bool)

(declare-fun tp!261591 () Bool)

(assert (=> b!834780 (= e!549284 tp!261591)))

(assert (=> b!834391 (= tp!261473 e!549284)))

(assert (= (and b!834391 ((_ is ElementMatch!2085) (regOne!4682 (reg!2414 r!27177)))) b!834778))

(assert (= (and b!834391 ((_ is Concat!3816) (regOne!4682 (reg!2414 r!27177)))) b!834779))

(assert (= (and b!834391 ((_ is Star!2085) (regOne!4682 (reg!2414 r!27177)))) b!834780))

(assert (= (and b!834391 ((_ is Union!2085) (regOne!4682 (reg!2414 r!27177)))) b!834781))

(declare-fun b!834783 () Bool)

(declare-fun e!549285 () Bool)

(declare-fun tp!261598 () Bool)

(declare-fun tp!261599 () Bool)

(assert (=> b!834783 (= e!549285 (and tp!261598 tp!261599))))

(declare-fun b!834782 () Bool)

(assert (=> b!834782 (= e!549285 tp_is_empty!3893)))

(declare-fun b!834785 () Bool)

(declare-fun tp!261595 () Bool)

(declare-fun tp!261597 () Bool)

(assert (=> b!834785 (= e!549285 (and tp!261595 tp!261597))))

(declare-fun b!834784 () Bool)

(declare-fun tp!261596 () Bool)

(assert (=> b!834784 (= e!549285 tp!261596)))

(assert (=> b!834391 (= tp!261474 e!549285)))

(assert (= (and b!834391 ((_ is ElementMatch!2085) (regTwo!4682 (reg!2414 r!27177)))) b!834782))

(assert (= (and b!834391 ((_ is Concat!3816) (regTwo!4682 (reg!2414 r!27177)))) b!834783))

(assert (= (and b!834391 ((_ is Star!2085) (regTwo!4682 (reg!2414 r!27177)))) b!834784))

(assert (= (and b!834391 ((_ is Union!2085) (regTwo!4682 (reg!2414 r!27177)))) b!834785))

(declare-fun b!834787 () Bool)

(declare-fun e!549286 () Bool)

(declare-fun tp!261603 () Bool)

(declare-fun tp!261604 () Bool)

(assert (=> b!834787 (= e!549286 (and tp!261603 tp!261604))))

(declare-fun b!834786 () Bool)

(assert (=> b!834786 (= e!549286 tp_is_empty!3893)))

(declare-fun b!834789 () Bool)

(declare-fun tp!261600 () Bool)

(declare-fun tp!261602 () Bool)

(assert (=> b!834789 (= e!549286 (and tp!261600 tp!261602))))

(declare-fun b!834788 () Bool)

(declare-fun tp!261601 () Bool)

(assert (=> b!834788 (= e!549286 tp!261601)))

(assert (=> b!834399 (= tp!261483 e!549286)))

(assert (= (and b!834399 ((_ is ElementMatch!2085) (regOne!4682 (regTwo!4682 r!27177)))) b!834786))

(assert (= (and b!834399 ((_ is Concat!3816) (regOne!4682 (regTwo!4682 r!27177)))) b!834787))

(assert (= (and b!834399 ((_ is Star!2085) (regOne!4682 (regTwo!4682 r!27177)))) b!834788))

(assert (= (and b!834399 ((_ is Union!2085) (regOne!4682 (regTwo!4682 r!27177)))) b!834789))

(declare-fun b!834793 () Bool)

(declare-fun e!549289 () Bool)

(declare-fun tp!261608 () Bool)

(declare-fun tp!261609 () Bool)

(assert (=> b!834793 (= e!549289 (and tp!261608 tp!261609))))

(declare-fun b!834792 () Bool)

(assert (=> b!834792 (= e!549289 tp_is_empty!3893)))

(declare-fun b!834795 () Bool)

(declare-fun tp!261605 () Bool)

(declare-fun tp!261607 () Bool)

(assert (=> b!834795 (= e!549289 (and tp!261605 tp!261607))))

(declare-fun b!834794 () Bool)

(declare-fun tp!261606 () Bool)

(assert (=> b!834794 (= e!549289 tp!261606)))

(assert (=> b!834399 (= tp!261484 e!549289)))

(assert (= (and b!834399 ((_ is ElementMatch!2085) (regTwo!4682 (regTwo!4682 r!27177)))) b!834792))

(assert (= (and b!834399 ((_ is Concat!3816) (regTwo!4682 (regTwo!4682 r!27177)))) b!834793))

(assert (= (and b!834399 ((_ is Star!2085) (regTwo!4682 (regTwo!4682 r!27177)))) b!834794))

(assert (= (and b!834399 ((_ is Union!2085) (regTwo!4682 (regTwo!4682 r!27177)))) b!834795))

(check-sat (not b!834761) (not b!834682) (not b!834618) (not b!834721) (not b!834640) (not bm!49797) (not b!834726) (not b!834773) (not b!834718) (not d!260762) (not b!834729) (not bm!49792) (not bm!49796) (not b!834466) (not b!834514) (not b!834674) (not bm!49848) (not b!834681) (not bm!49794) (not bm!49811) (not bm!49783) (not b!834670) (not b!834751) (not b!834763) (not b!834779) (not b!834725) (not b!834667) (not b!834544) (not b!834760) tp_is_empty!3893 (not b!834768) (not b!834730) (not d!260782) (not b!834772) (not b!834706) (not b!834634) (not b!834752) (not bm!49833) (not d!260742) (not bm!49782) (not bm!49817) (not bm!49793) (not b!834789) (not b!834731) (not b!834733) (not bm!49773) (not b!834614) (not b!834666) (not d!260750) (not bm!49809) (not d!260722) (not bm!49769) (not bm!49824) (not b!834403) (not b!834558) (not b!834794) (not b!834734) (not b!834756) (not b!834509) (not b!834702) (not b!834759) (not bm!49780) (not b!834705) (not b!834525) (not b!834788) (not b!834459) (not bm!49810) (not b!834700) (not b!834781) (not bm!49786) (not bm!49798) (not bm!49825) (not bm!49840) (not b!834685) (not bm!49850) (not b!834458) (not bm!49772) (not d!260760) (not b!834757) (not b!834672) (not b!834769) (not b!834540) (not b!834735) (not bm!49842) (not b!834658) (not b!834691) (not bm!49770) (not bm!49788) (not b!834517) (not d!260758) (not b!834698) (not bm!49835) (not b!834747) (not b!834591) (not b!834764) (not bm!49781) (not b!834771) (not b!834513) (not b!834619) (not b!834690) (not bm!49787) (not b!834765) (not b!834476) (not b!834597) (not bm!49802) (not b!834511) (not b!834701) (not bm!49803) (not b!834676) (not bm!49768) (not b!834748) (not bm!49807) (not d!260740) (not b!834518) (not b!834671) (not bm!49812) (not bm!49823) (not b!834427) (not bm!49779) (not bm!49804) (not b!834722) (not b!834795) (not d!260736) (not b!834793) (not b!834651) (not b!834545) (not bm!49841) (not b!834767) (not b!834785) (not b!834684) (not b!834507) (not d!260748) (not d!260716) (not b!834717) (not d!260738) (not d!260780) (not b!834695) (not b!834675) (not b!834573) (not b!834686) (not b!834536) (not b!834697) (not b!834753) (not b!834692) (not d!260792) (not b!834704) (not b!834727) (not b!834784) (not b!834680) (not b!834780) (not b!834749) (not b!834421) (not b!834783) (not b!834787) (not b!834668) (not bm!49815) (not b!834755) (not d!260710) (not bm!49774) (not b!834719) (not b!834723))
(check-sat)
