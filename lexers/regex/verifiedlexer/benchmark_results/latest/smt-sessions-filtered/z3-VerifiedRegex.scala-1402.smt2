; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73822 () Bool)

(assert start!73822)

(declare-fun b!826103 () Bool)

(declare-fun e!545080 () Bool)

(declare-fun tp!258311 () Bool)

(assert (=> b!826103 (= e!545080 tp!258311)))

(declare-fun res!380396 () Bool)

(declare-fun e!545081 () Bool)

(assert (=> start!73822 (=> (not res!380396) (not e!545081))))

(declare-datatypes ((C!4696 0))(
  ( (C!4697 (val!2596 Int)) )
))
(declare-datatypes ((Regex!2063 0))(
  ( (ElementMatch!2063 (c!134162 C!4696)) (Concat!3794 (regOne!4638 Regex!2063) (regTwo!4638 Regex!2063)) (EmptyExpr!2063) (Star!2063 (reg!2392 Regex!2063)) (EmptyLang!2063) (Union!2063 (regOne!4639 Regex!2063) (regTwo!4639 Regex!2063)) )
))
(declare-fun r!27177 () Regex!2063)

(declare-fun validRegex!616 (Regex!2063) Bool)

(assert (=> start!73822 (= res!380396 (validRegex!616 r!27177))))

(assert (=> start!73822 e!545081))

(assert (=> start!73822 e!545080))

(declare-fun tp_is_empty!3849 () Bool)

(assert (=> start!73822 tp_is_empty!3849))

(declare-fun b!826104 () Bool)

(declare-fun res!380395 () Bool)

(assert (=> b!826104 (=> (not res!380395) (not e!545081))))

(get-info :version)

(assert (=> b!826104 (= res!380395 (and (not ((_ is EmptyExpr!2063) r!27177)) (not ((_ is EmptyLang!2063) r!27177)) (not ((_ is ElementMatch!2063) r!27177)) (not ((_ is Star!2063) r!27177)) ((_ is Union!2063) r!27177)))))

(declare-fun b!826105 () Bool)

(declare-fun res!380397 () Bool)

(assert (=> b!826105 (=> (not res!380397) (not e!545081))))

(assert (=> b!826105 (= res!380397 (validRegex!616 (regOne!4639 r!27177)))))

(declare-fun b!826106 () Bool)

(declare-fun res!380398 () Bool)

(assert (=> b!826106 (=> (not res!380398) (not e!545081))))

(declare-fun c!13916 () C!4696)

(declare-datatypes ((List!8889 0))(
  ( (Nil!8873) (Cons!8873 (h!14274 C!4696) (t!93181 List!8889)) )
))
(declare-fun contains!1654 (List!8889 C!4696) Bool)

(declare-fun firstChars!34 (Regex!2063) List!8889)

(assert (=> b!826106 (= res!380398 (contains!1654 (firstChars!34 r!27177) c!13916))))

(declare-fun b!826107 () Bool)

(declare-fun tp!258313 () Bool)

(declare-fun tp!258310 () Bool)

(assert (=> b!826107 (= e!545080 (and tp!258313 tp!258310))))

(declare-fun b!826108 () Bool)

(assert (=> b!826108 (= e!545080 tp_is_empty!3849)))

(declare-fun b!826109 () Bool)

(declare-fun usedCharacters!162 (Regex!2063) List!8889)

(assert (=> b!826109 (= e!545081 (not (contains!1654 (usedCharacters!162 r!27177) c!13916)))))

(assert (=> b!826109 (contains!1654 (usedCharacters!162 (regOne!4639 r!27177)) c!13916)))

(declare-datatypes ((Unit!13375 0))(
  ( (Unit!13376) )
))
(declare-fun lt!317515 () Unit!13375)

(declare-fun lemmaUsedCharsContainsAllFirstChars!4 (Regex!2063 C!4696) Unit!13375)

(assert (=> b!826109 (= lt!317515 (lemmaUsedCharsContainsAllFirstChars!4 (regOne!4639 r!27177) c!13916))))

(declare-fun b!826110 () Bool)

(declare-fun tp!258312 () Bool)

(declare-fun tp!258314 () Bool)

(assert (=> b!826110 (= e!545080 (and tp!258312 tp!258314))))

(declare-fun b!826111 () Bool)

(declare-fun res!380399 () Bool)

(assert (=> b!826111 (=> (not res!380399) (not e!545081))))

(assert (=> b!826111 (= res!380399 (contains!1654 (firstChars!34 (regOne!4639 r!27177)) c!13916))))

(assert (= (and start!73822 res!380396) b!826106))

(assert (= (and b!826106 res!380398) b!826104))

(assert (= (and b!826104 res!380395) b!826111))

(assert (= (and b!826111 res!380399) b!826105))

(assert (= (and b!826105 res!380397) b!826109))

(assert (= (and start!73822 ((_ is ElementMatch!2063) r!27177)) b!826108))

(assert (= (and start!73822 ((_ is Concat!3794) r!27177)) b!826107))

(assert (= (and start!73822 ((_ is Star!2063) r!27177)) b!826103))

(assert (= (and start!73822 ((_ is Union!2063) r!27177)) b!826110))

(declare-fun m!1064987 () Bool)

(assert (=> b!826105 m!1064987))

(declare-fun m!1064989 () Bool)

(assert (=> b!826111 m!1064989))

(assert (=> b!826111 m!1064989))

(declare-fun m!1064991 () Bool)

(assert (=> b!826111 m!1064991))

(declare-fun m!1064993 () Bool)

(assert (=> start!73822 m!1064993))

(declare-fun m!1064995 () Bool)

(assert (=> b!826106 m!1064995))

(assert (=> b!826106 m!1064995))

(declare-fun m!1064997 () Bool)

(assert (=> b!826106 m!1064997))

(declare-fun m!1064999 () Bool)

(assert (=> b!826109 m!1064999))

(declare-fun m!1065001 () Bool)

(assert (=> b!826109 m!1065001))

(declare-fun m!1065003 () Bool)

(assert (=> b!826109 m!1065003))

(declare-fun m!1065005 () Bool)

(assert (=> b!826109 m!1065005))

(assert (=> b!826109 m!1065003))

(assert (=> b!826109 m!1064999))

(declare-fun m!1065007 () Bool)

(assert (=> b!826109 m!1065007))

(check-sat (not b!826111) (not b!826105) (not b!826109) tp_is_empty!3849 (not b!826103) (not start!73822) (not b!826106) (not b!826107) (not b!826110))
(check-sat)
(get-model)

(declare-fun d!259355 () Bool)

(declare-fun lt!317520 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1302 (List!8889) (InoxSet C!4696))

(assert (=> d!259355 (= lt!317520 (select (content!1302 (firstChars!34 (regOne!4639 r!27177))) c!13916))))

(declare-fun e!545091 () Bool)

(assert (=> d!259355 (= lt!317520 e!545091)))

(declare-fun res!380408 () Bool)

(assert (=> d!259355 (=> (not res!380408) (not e!545091))))

(assert (=> d!259355 (= res!380408 ((_ is Cons!8873) (firstChars!34 (regOne!4639 r!27177))))))

(assert (=> d!259355 (= (contains!1654 (firstChars!34 (regOne!4639 r!27177)) c!13916) lt!317520)))

(declare-fun b!826120 () Bool)

(declare-fun e!545090 () Bool)

(assert (=> b!826120 (= e!545091 e!545090)))

(declare-fun res!380409 () Bool)

(assert (=> b!826120 (=> res!380409 e!545090)))

(assert (=> b!826120 (= res!380409 (= (h!14274 (firstChars!34 (regOne!4639 r!27177))) c!13916))))

(declare-fun b!826121 () Bool)

(assert (=> b!826121 (= e!545090 (contains!1654 (t!93181 (firstChars!34 (regOne!4639 r!27177))) c!13916))))

(assert (= (and d!259355 res!380408) b!826120))

(assert (= (and b!826120 (not res!380409)) b!826121))

(assert (=> d!259355 m!1064989))

(declare-fun m!1065009 () Bool)

(assert (=> d!259355 m!1065009))

(declare-fun m!1065013 () Bool)

(assert (=> d!259355 m!1065013))

(declare-fun m!1065017 () Bool)

(assert (=> b!826121 m!1065017))

(assert (=> b!826111 d!259355))

(declare-fun bm!47932 () Bool)

(declare-fun call!47938 () List!8889)

(declare-fun c!134187 () Bool)

(assert (=> bm!47932 (= call!47938 (firstChars!34 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun b!826167 () Bool)

(declare-fun e!545119 () List!8889)

(declare-fun call!47941 () List!8889)

(assert (=> b!826167 (= e!545119 call!47941)))

(declare-fun d!259359 () Bool)

(declare-fun c!134186 () Bool)

(assert (=> d!259359 (= c!134186 (or ((_ is EmptyExpr!2063) (regOne!4639 r!27177)) ((_ is EmptyLang!2063) (regOne!4639 r!27177))))))

(declare-fun e!545121 () List!8889)

(assert (=> d!259359 (= (firstChars!34 (regOne!4639 r!27177)) e!545121)))

(declare-fun b!826169 () Bool)

(declare-fun e!545123 () List!8889)

(assert (=> b!826169 (= e!545123 (Cons!8873 (c!134162 (regOne!4639 r!27177)) Nil!8873))))

(declare-fun b!826170 () Bool)

(assert (=> b!826170 (= e!545121 Nil!8873)))

(declare-fun bm!47934 () Bool)

(declare-fun call!47944 () List!8889)

(assert (=> bm!47934 (= call!47941 call!47944)))

(declare-fun call!47940 () List!8889)

(declare-fun bm!47936 () Bool)

(declare-fun ++!2290 (List!8889 List!8889) List!8889)

(assert (=> bm!47936 (= call!47940 (++!2290 (ite c!134187 call!47938 call!47941) (ite c!134187 call!47944 call!47938)))))

(declare-fun b!826173 () Bool)

(assert (=> b!826173 (= e!545121 e!545123)))

(declare-fun c!134191 () Bool)

(assert (=> b!826173 (= c!134191 ((_ is ElementMatch!2063) (regOne!4639 r!27177)))))

(declare-fun bm!47937 () Bool)

(declare-fun call!47945 () List!8889)

(assert (=> bm!47937 (= call!47944 call!47945)))

(declare-fun b!826176 () Bool)

(declare-fun c!134192 () Bool)

(declare-fun nullable!514 (Regex!2063) Bool)

(assert (=> b!826176 (= c!134192 (nullable!514 (regOne!4638 (regOne!4639 r!27177))))))

(declare-fun e!545115 () List!8889)

(assert (=> b!826176 (= e!545115 e!545119)))

(declare-fun b!826178 () Bool)

(declare-fun e!545116 () List!8889)

(assert (=> b!826178 (= e!545116 call!47945)))

(declare-fun b!826180 () Bool)

(declare-fun c!134189 () Bool)

(assert (=> b!826180 (= c!134189 ((_ is Star!2063) (regOne!4639 r!27177)))))

(assert (=> b!826180 (= e!545123 e!545116)))

(declare-fun b!826181 () Bool)

(assert (=> b!826181 (= e!545119 call!47940)))

(declare-fun b!826182 () Bool)

(assert (=> b!826182 (= e!545115 call!47940)))

(declare-fun bm!47940 () Bool)

(assert (=> bm!47940 (= call!47945 (firstChars!34 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun b!826183 () Bool)

(assert (=> b!826183 (= e!545116 e!545115)))

(assert (=> b!826183 (= c!134187 ((_ is Union!2063) (regOne!4639 r!27177)))))

(assert (= (and d!259359 c!134186) b!826170))

(assert (= (and d!259359 (not c!134186)) b!826173))

(assert (= (and b!826173 c!134191) b!826169))

(assert (= (and b!826173 (not c!134191)) b!826180))

(assert (= (and b!826180 c!134189) b!826178))

(assert (= (and b!826180 (not c!134189)) b!826183))

(assert (= (and b!826183 c!134187) b!826182))

(assert (= (and b!826183 (not c!134187)) b!826176))

(assert (= (and b!826176 c!134192) b!826181))

(assert (= (and b!826176 (not c!134192)) b!826167))

(assert (= (or b!826181 b!826167) bm!47934))

(assert (= (or b!826182 bm!47934) bm!47937))

(assert (= (or b!826182 b!826181) bm!47932))

(assert (= (or b!826182 b!826181) bm!47936))

(assert (= (or b!826178 bm!47937) bm!47940))

(declare-fun m!1065021 () Bool)

(assert (=> bm!47932 m!1065021))

(declare-fun m!1065027 () Bool)

(assert (=> bm!47936 m!1065027))

(declare-fun m!1065031 () Bool)

(assert (=> b!826176 m!1065031))

(declare-fun m!1065035 () Bool)

(assert (=> bm!47940 m!1065035))

(assert (=> b!826111 d!259359))

(declare-fun d!259365 () Bool)

(declare-fun lt!317522 () Bool)

(assert (=> d!259365 (= lt!317522 (select (content!1302 (firstChars!34 r!27177)) c!13916))))

(declare-fun e!545125 () Bool)

(assert (=> d!259365 (= lt!317522 e!545125)))

(declare-fun res!380412 () Bool)

(assert (=> d!259365 (=> (not res!380412) (not e!545125))))

(assert (=> d!259365 (= res!380412 ((_ is Cons!8873) (firstChars!34 r!27177)))))

(assert (=> d!259365 (= (contains!1654 (firstChars!34 r!27177) c!13916) lt!317522)))

(declare-fun b!826184 () Bool)

(declare-fun e!545124 () Bool)

(assert (=> b!826184 (= e!545125 e!545124)))

(declare-fun res!380413 () Bool)

(assert (=> b!826184 (=> res!380413 e!545124)))

(assert (=> b!826184 (= res!380413 (= (h!14274 (firstChars!34 r!27177)) c!13916))))

(declare-fun b!826185 () Bool)

(assert (=> b!826185 (= e!545124 (contains!1654 (t!93181 (firstChars!34 r!27177)) c!13916))))

(assert (= (and d!259365 res!380412) b!826184))

(assert (= (and b!826184 (not res!380413)) b!826185))

(assert (=> d!259365 m!1064995))

(declare-fun m!1065037 () Bool)

(assert (=> d!259365 m!1065037))

(declare-fun m!1065039 () Bool)

(assert (=> d!259365 m!1065039))

(declare-fun m!1065041 () Bool)

(assert (=> b!826185 m!1065041))

(assert (=> b!826106 d!259365))

(declare-fun bm!47941 () Bool)

(declare-fun call!47946 () List!8889)

(declare-fun c!134194 () Bool)

(assert (=> bm!47941 (= call!47946 (firstChars!34 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun b!826186 () Bool)

(declare-fun e!545128 () List!8889)

(declare-fun call!47948 () List!8889)

(assert (=> b!826186 (= e!545128 call!47948)))

(declare-fun d!259367 () Bool)

(declare-fun c!134193 () Bool)

(assert (=> d!259367 (= c!134193 (or ((_ is EmptyExpr!2063) r!27177) ((_ is EmptyLang!2063) r!27177)))))

(declare-fun e!545129 () List!8889)

(assert (=> d!259367 (= (firstChars!34 r!27177) e!545129)))

(declare-fun b!826187 () Bool)

(declare-fun e!545130 () List!8889)

(assert (=> b!826187 (= e!545130 (Cons!8873 (c!134162 r!27177) Nil!8873))))

(declare-fun b!826188 () Bool)

(assert (=> b!826188 (= e!545129 Nil!8873)))

(declare-fun bm!47942 () Bool)

(declare-fun call!47949 () List!8889)

(assert (=> bm!47942 (= call!47948 call!47949)))

(declare-fun bm!47943 () Bool)

(declare-fun call!47947 () List!8889)

(assert (=> bm!47943 (= call!47947 (++!2290 (ite c!134194 call!47946 call!47948) (ite c!134194 call!47949 call!47946)))))

(declare-fun b!826189 () Bool)

(assert (=> b!826189 (= e!545129 e!545130)))

(declare-fun c!134196 () Bool)

(assert (=> b!826189 (= c!134196 ((_ is ElementMatch!2063) r!27177))))

(declare-fun bm!47944 () Bool)

(declare-fun call!47950 () List!8889)

(assert (=> bm!47944 (= call!47949 call!47950)))

(declare-fun b!826190 () Bool)

(declare-fun c!134197 () Bool)

(assert (=> b!826190 (= c!134197 (nullable!514 (regOne!4638 r!27177)))))

(declare-fun e!545126 () List!8889)

(assert (=> b!826190 (= e!545126 e!545128)))

(declare-fun b!826191 () Bool)

(declare-fun e!545127 () List!8889)

(assert (=> b!826191 (= e!545127 call!47950)))

(declare-fun b!826192 () Bool)

(declare-fun c!134195 () Bool)

(assert (=> b!826192 (= c!134195 ((_ is Star!2063) r!27177))))

(assert (=> b!826192 (= e!545130 e!545127)))

(declare-fun b!826193 () Bool)

(assert (=> b!826193 (= e!545128 call!47947)))

(declare-fun b!826194 () Bool)

(assert (=> b!826194 (= e!545126 call!47947)))

(declare-fun bm!47945 () Bool)

(assert (=> bm!47945 (= call!47950 (firstChars!34 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun b!826195 () Bool)

(assert (=> b!826195 (= e!545127 e!545126)))

(assert (=> b!826195 (= c!134194 ((_ is Union!2063) r!27177))))

(assert (= (and d!259367 c!134193) b!826188))

(assert (= (and d!259367 (not c!134193)) b!826189))

(assert (= (and b!826189 c!134196) b!826187))

(assert (= (and b!826189 (not c!134196)) b!826192))

(assert (= (and b!826192 c!134195) b!826191))

(assert (= (and b!826192 (not c!134195)) b!826195))

(assert (= (and b!826195 c!134194) b!826194))

(assert (= (and b!826195 (not c!134194)) b!826190))

(assert (= (and b!826190 c!134197) b!826193))

(assert (= (and b!826190 (not c!134197)) b!826186))

(assert (= (or b!826193 b!826186) bm!47942))

(assert (= (or b!826194 bm!47942) bm!47944))

(assert (= (or b!826194 b!826193) bm!47941))

(assert (= (or b!826194 b!826193) bm!47943))

(assert (= (or b!826191 bm!47944) bm!47945))

(declare-fun m!1065043 () Bool)

(assert (=> bm!47941 m!1065043))

(declare-fun m!1065045 () Bool)

(assert (=> bm!47943 m!1065045))

(declare-fun m!1065047 () Bool)

(assert (=> b!826190 m!1065047))

(declare-fun m!1065049 () Bool)

(assert (=> bm!47945 m!1065049))

(assert (=> b!826106 d!259367))

(declare-fun b!826240 () Bool)

(declare-fun res!380427 () Bool)

(declare-fun e!545165 () Bool)

(assert (=> b!826240 (=> (not res!380427) (not e!545165))))

(declare-fun call!47971 () Bool)

(assert (=> b!826240 (= res!380427 call!47971)))

(declare-fun e!545159 () Bool)

(assert (=> b!826240 (= e!545159 e!545165)))

(declare-fun b!826241 () Bool)

(declare-fun e!545164 () Bool)

(assert (=> b!826241 (= e!545164 e!545159)))

(declare-fun c!134214 () Bool)

(assert (=> b!826241 (= c!134214 ((_ is Union!2063) (regOne!4639 r!27177)))))

(declare-fun call!47970 () Bool)

(declare-fun c!134215 () Bool)

(declare-fun bm!47964 () Bool)

(assert (=> bm!47964 (= call!47970 (validRegex!616 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun bm!47965 () Bool)

(assert (=> bm!47965 (= call!47971 (validRegex!616 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun b!826242 () Bool)

(declare-fun e!545163 () Bool)

(assert (=> b!826242 (= e!545163 call!47971)))

(declare-fun b!826243 () Bool)

(declare-fun e!545162 () Bool)

(assert (=> b!826243 (= e!545164 e!545162)))

(declare-fun res!380426 () Bool)

(assert (=> b!826243 (= res!380426 (not (nullable!514 (reg!2392 (regOne!4639 r!27177)))))))

(assert (=> b!826243 (=> (not res!380426) (not e!545162))))

(declare-fun b!826244 () Bool)

(declare-fun e!545160 () Bool)

(assert (=> b!826244 (= e!545160 e!545164)))

(assert (=> b!826244 (= c!134215 ((_ is Star!2063) (regOne!4639 r!27177)))))

(declare-fun bm!47966 () Bool)

(declare-fun call!47969 () Bool)

(assert (=> bm!47966 (= call!47969 call!47970)))

(declare-fun b!826245 () Bool)

(declare-fun e!545161 () Bool)

(assert (=> b!826245 (= e!545161 e!545163)))

(declare-fun res!380430 () Bool)

(assert (=> b!826245 (=> (not res!380430) (not e!545163))))

(assert (=> b!826245 (= res!380430 call!47969)))

(declare-fun b!826246 () Bool)

(assert (=> b!826246 (= e!545162 call!47970)))

(declare-fun b!826247 () Bool)

(declare-fun res!380428 () Bool)

(assert (=> b!826247 (=> res!380428 e!545161)))

(assert (=> b!826247 (= res!380428 (not ((_ is Concat!3794) (regOne!4639 r!27177))))))

(assert (=> b!826247 (= e!545159 e!545161)))

(declare-fun d!259369 () Bool)

(declare-fun res!380429 () Bool)

(assert (=> d!259369 (=> res!380429 e!545160)))

(assert (=> d!259369 (= res!380429 ((_ is ElementMatch!2063) (regOne!4639 r!27177)))))

(assert (=> d!259369 (= (validRegex!616 (regOne!4639 r!27177)) e!545160)))

(declare-fun b!826248 () Bool)

(assert (=> b!826248 (= e!545165 call!47969)))

(assert (= (and d!259369 (not res!380429)) b!826244))

(assert (= (and b!826244 c!134215) b!826243))

(assert (= (and b!826244 (not c!134215)) b!826241))

(assert (= (and b!826243 res!380426) b!826246))

(assert (= (and b!826241 c!134214) b!826240))

(assert (= (and b!826241 (not c!134214)) b!826247))

(assert (= (and b!826240 res!380427) b!826248))

(assert (= (and b!826247 (not res!380428)) b!826245))

(assert (= (and b!826245 res!380430) b!826242))

(assert (= (or b!826240 b!826242) bm!47965))

(assert (= (or b!826248 b!826245) bm!47966))

(assert (= (or b!826246 bm!47966) bm!47964))

(declare-fun m!1065069 () Bool)

(assert (=> bm!47964 m!1065069))

(declare-fun m!1065071 () Bool)

(assert (=> bm!47965 m!1065071))

(declare-fun m!1065073 () Bool)

(assert (=> b!826243 m!1065073))

(assert (=> b!826105 d!259369))

(declare-fun b!826251 () Bool)

(declare-fun res!380434 () Bool)

(declare-fun e!545174 () Bool)

(assert (=> b!826251 (=> (not res!380434) (not e!545174))))

(declare-fun call!47974 () Bool)

(assert (=> b!826251 (= res!380434 call!47974)))

(declare-fun e!545168 () Bool)

(assert (=> b!826251 (= e!545168 e!545174)))

(declare-fun b!826252 () Bool)

(declare-fun e!545173 () Bool)

(assert (=> b!826252 (= e!545173 e!545168)))

(declare-fun c!134216 () Bool)

(assert (=> b!826252 (= c!134216 ((_ is Union!2063) r!27177))))

(declare-fun call!47973 () Bool)

(declare-fun c!134217 () Bool)

(declare-fun bm!47967 () Bool)

(assert (=> bm!47967 (= call!47973 (validRegex!616 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun bm!47968 () Bool)

(assert (=> bm!47968 (= call!47974 (validRegex!616 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun b!826253 () Bool)

(declare-fun e!545172 () Bool)

(assert (=> b!826253 (= e!545172 call!47974)))

(declare-fun b!826254 () Bool)

(declare-fun e!545171 () Bool)

(assert (=> b!826254 (= e!545173 e!545171)))

(declare-fun res!380433 () Bool)

(assert (=> b!826254 (= res!380433 (not (nullable!514 (reg!2392 r!27177))))))

(assert (=> b!826254 (=> (not res!380433) (not e!545171))))

(declare-fun b!826255 () Bool)

(declare-fun e!545169 () Bool)

(assert (=> b!826255 (= e!545169 e!545173)))

(assert (=> b!826255 (= c!134217 ((_ is Star!2063) r!27177))))

(declare-fun bm!47969 () Bool)

(declare-fun call!47972 () Bool)

(assert (=> bm!47969 (= call!47972 call!47973)))

(declare-fun b!826256 () Bool)

(declare-fun e!545170 () Bool)

(assert (=> b!826256 (= e!545170 e!545172)))

(declare-fun res!380437 () Bool)

(assert (=> b!826256 (=> (not res!380437) (not e!545172))))

(assert (=> b!826256 (= res!380437 call!47972)))

(declare-fun b!826257 () Bool)

(assert (=> b!826257 (= e!545171 call!47973)))

(declare-fun b!826258 () Bool)

(declare-fun res!380435 () Bool)

(assert (=> b!826258 (=> res!380435 e!545170)))

(assert (=> b!826258 (= res!380435 (not ((_ is Concat!3794) r!27177)))))

(assert (=> b!826258 (= e!545168 e!545170)))

(declare-fun d!259377 () Bool)

(declare-fun res!380436 () Bool)

(assert (=> d!259377 (=> res!380436 e!545169)))

(assert (=> d!259377 (= res!380436 ((_ is ElementMatch!2063) r!27177))))

(assert (=> d!259377 (= (validRegex!616 r!27177) e!545169)))

(declare-fun b!826259 () Bool)

(assert (=> b!826259 (= e!545174 call!47972)))

(assert (= (and d!259377 (not res!380436)) b!826255))

(assert (= (and b!826255 c!134217) b!826254))

(assert (= (and b!826255 (not c!134217)) b!826252))

(assert (= (and b!826254 res!380433) b!826257))

(assert (= (and b!826252 c!134216) b!826251))

(assert (= (and b!826252 (not c!134216)) b!826258))

(assert (= (and b!826251 res!380434) b!826259))

(assert (= (and b!826258 (not res!380435)) b!826256))

(assert (= (and b!826256 res!380437) b!826253))

(assert (= (or b!826251 b!826253) bm!47968))

(assert (= (or b!826259 b!826256) bm!47969))

(assert (= (or b!826257 bm!47969) bm!47967))

(declare-fun m!1065075 () Bool)

(assert (=> bm!47967 m!1065075))

(declare-fun m!1065077 () Bool)

(assert (=> bm!47968 m!1065077))

(declare-fun m!1065079 () Bool)

(assert (=> b!826254 m!1065079))

(assert (=> start!73822 d!259377))

(declare-fun b!826314 () Bool)

(declare-fun e!545211 () List!8889)

(declare-fun e!545210 () List!8889)

(assert (=> b!826314 (= e!545211 e!545210)))

(declare-fun c!134243 () Bool)

(assert (=> b!826314 (= c!134243 ((_ is ElementMatch!2063) (regOne!4639 r!27177)))))

(declare-fun b!826315 () Bool)

(declare-fun e!545208 () List!8889)

(declare-fun e!545209 () List!8889)

(assert (=> b!826315 (= e!545208 e!545209)))

(declare-fun c!134242 () Bool)

(assert (=> b!826315 (= c!134242 ((_ is Union!2063) (regOne!4639 r!27177)))))

(declare-fun bm!47989 () Bool)

(declare-fun call!47994 () List!8889)

(assert (=> bm!47989 (= call!47994 (usedCharacters!162 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun bm!47990 () Bool)

(declare-fun call!47995 () List!8889)

(declare-fun call!47996 () List!8889)

(assert (=> bm!47990 (= call!47995 call!47996)))

(declare-fun b!826316 () Bool)

(assert (=> b!826316 (= e!545208 call!47996)))

(declare-fun d!259379 () Bool)

(declare-fun c!134241 () Bool)

(assert (=> d!259379 (= c!134241 (or ((_ is EmptyExpr!2063) (regOne!4639 r!27177)) ((_ is EmptyLang!2063) (regOne!4639 r!27177))))))

(assert (=> d!259379 (= (usedCharacters!162 (regOne!4639 r!27177)) e!545211)))

(declare-fun bm!47991 () Bool)

(declare-fun c!134240 () Bool)

(assert (=> bm!47991 (= call!47996 (usedCharacters!162 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun b!826317 () Bool)

(assert (=> b!826317 (= c!134240 ((_ is Star!2063) (regOne!4639 r!27177)))))

(assert (=> b!826317 (= e!545210 e!545208)))

(declare-fun b!826318 () Bool)

(assert (=> b!826318 (= e!545211 Nil!8873)))

(declare-fun b!826319 () Bool)

(declare-fun call!47997 () List!8889)

(assert (=> b!826319 (= e!545209 call!47997)))

(declare-fun b!826320 () Bool)

(assert (=> b!826320 (= e!545210 (Cons!8873 (c!134162 (regOne!4639 r!27177)) Nil!8873))))

(declare-fun b!826321 () Bool)

(assert (=> b!826321 (= e!545209 call!47997)))

(declare-fun bm!47992 () Bool)

(assert (=> bm!47992 (= call!47997 (++!2290 (ite c!134242 call!47994 call!47995) (ite c!134242 call!47995 call!47994)))))

(assert (= (and d!259379 c!134241) b!826318))

(assert (= (and d!259379 (not c!134241)) b!826314))

(assert (= (and b!826314 c!134243) b!826320))

(assert (= (and b!826314 (not c!134243)) b!826317))

(assert (= (and b!826317 c!134240) b!826316))

(assert (= (and b!826317 (not c!134240)) b!826315))

(assert (= (and b!826315 c!134242) b!826319))

(assert (= (and b!826315 (not c!134242)) b!826321))

(assert (= (or b!826319 b!826321) bm!47990))

(assert (= (or b!826319 b!826321) bm!47989))

(assert (= (or b!826319 b!826321) bm!47992))

(assert (= (or b!826316 bm!47990) bm!47991))

(declare-fun m!1065103 () Bool)

(assert (=> bm!47989 m!1065103))

(declare-fun m!1065105 () Bool)

(assert (=> bm!47991 m!1065105))

(declare-fun m!1065107 () Bool)

(assert (=> bm!47992 m!1065107))

(assert (=> b!826109 d!259379))

(declare-fun d!259389 () Bool)

(declare-fun lt!317529 () Bool)

(assert (=> d!259389 (= lt!317529 (select (content!1302 (usedCharacters!162 r!27177)) c!13916))))

(declare-fun e!545213 () Bool)

(assert (=> d!259389 (= lt!317529 e!545213)))

(declare-fun res!380450 () Bool)

(assert (=> d!259389 (=> (not res!380450) (not e!545213))))

(assert (=> d!259389 (= res!380450 ((_ is Cons!8873) (usedCharacters!162 r!27177)))))

(assert (=> d!259389 (= (contains!1654 (usedCharacters!162 r!27177) c!13916) lt!317529)))

(declare-fun b!826322 () Bool)

(declare-fun e!545212 () Bool)

(assert (=> b!826322 (= e!545213 e!545212)))

(declare-fun res!380451 () Bool)

(assert (=> b!826322 (=> res!380451 e!545212)))

(assert (=> b!826322 (= res!380451 (= (h!14274 (usedCharacters!162 r!27177)) c!13916))))

(declare-fun b!826323 () Bool)

(assert (=> b!826323 (= e!545212 (contains!1654 (t!93181 (usedCharacters!162 r!27177)) c!13916))))

(assert (= (and d!259389 res!380450) b!826322))

(assert (= (and b!826322 (not res!380451)) b!826323))

(assert (=> d!259389 m!1065003))

(declare-fun m!1065109 () Bool)

(assert (=> d!259389 m!1065109))

(declare-fun m!1065111 () Bool)

(assert (=> d!259389 m!1065111))

(declare-fun m!1065113 () Bool)

(assert (=> b!826323 m!1065113))

(assert (=> b!826109 d!259389))

(declare-fun d!259391 () Bool)

(declare-fun lt!317530 () Bool)

(assert (=> d!259391 (= lt!317530 (select (content!1302 (usedCharacters!162 (regOne!4639 r!27177))) c!13916))))

(declare-fun e!545215 () Bool)

(assert (=> d!259391 (= lt!317530 e!545215)))

(declare-fun res!380452 () Bool)

(assert (=> d!259391 (=> (not res!380452) (not e!545215))))

(assert (=> d!259391 (= res!380452 ((_ is Cons!8873) (usedCharacters!162 (regOne!4639 r!27177))))))

(assert (=> d!259391 (= (contains!1654 (usedCharacters!162 (regOne!4639 r!27177)) c!13916) lt!317530)))

(declare-fun b!826324 () Bool)

(declare-fun e!545214 () Bool)

(assert (=> b!826324 (= e!545215 e!545214)))

(declare-fun res!380453 () Bool)

(assert (=> b!826324 (=> res!380453 e!545214)))

(assert (=> b!826324 (= res!380453 (= (h!14274 (usedCharacters!162 (regOne!4639 r!27177))) c!13916))))

(declare-fun b!826325 () Bool)

(assert (=> b!826325 (= e!545214 (contains!1654 (t!93181 (usedCharacters!162 (regOne!4639 r!27177))) c!13916))))

(assert (= (and d!259391 res!380452) b!826324))

(assert (= (and b!826324 (not res!380453)) b!826325))

(assert (=> d!259391 m!1064999))

(declare-fun m!1065115 () Bool)

(assert (=> d!259391 m!1065115))

(declare-fun m!1065117 () Bool)

(assert (=> d!259391 m!1065117))

(declare-fun m!1065119 () Bool)

(assert (=> b!826325 m!1065119))

(assert (=> b!826109 d!259391))

(declare-fun d!259393 () Bool)

(assert (=> d!259393 (contains!1654 (usedCharacters!162 (regOne!4639 r!27177)) c!13916)))

(declare-fun lt!317533 () Unit!13375)

(declare-fun choose!4932 (Regex!2063 C!4696) Unit!13375)

(assert (=> d!259393 (= lt!317533 (choose!4932 (regOne!4639 r!27177) c!13916))))

(assert (=> d!259393 (validRegex!616 (regOne!4639 r!27177))))

(assert (=> d!259393 (= (lemmaUsedCharsContainsAllFirstChars!4 (regOne!4639 r!27177) c!13916) lt!317533)))

(declare-fun bs!229585 () Bool)

(assert (= bs!229585 d!259393))

(assert (=> bs!229585 m!1064999))

(assert (=> bs!229585 m!1064999))

(assert (=> bs!229585 m!1065001))

(declare-fun m!1065121 () Bool)

(assert (=> bs!229585 m!1065121))

(assert (=> bs!229585 m!1064987))

(assert (=> b!826109 d!259393))

(declare-fun b!826335 () Bool)

(declare-fun e!545226 () List!8889)

(declare-fun e!545225 () List!8889)

(assert (=> b!826335 (= e!545226 e!545225)))

(declare-fun c!134250 () Bool)

(assert (=> b!826335 (= c!134250 ((_ is ElementMatch!2063) r!27177))))

(declare-fun b!826336 () Bool)

(declare-fun e!545223 () List!8889)

(declare-fun e!545224 () List!8889)

(assert (=> b!826336 (= e!545223 e!545224)))

(declare-fun c!134249 () Bool)

(assert (=> b!826336 (= c!134249 ((_ is Union!2063) r!27177))))

(declare-fun bm!48000 () Bool)

(declare-fun call!48005 () List!8889)

(assert (=> bm!48000 (= call!48005 (usedCharacters!162 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun bm!48001 () Bool)

(declare-fun call!48006 () List!8889)

(declare-fun call!48007 () List!8889)

(assert (=> bm!48001 (= call!48006 call!48007)))

(declare-fun b!826337 () Bool)

(assert (=> b!826337 (= e!545223 call!48007)))

(declare-fun d!259395 () Bool)

(declare-fun c!134248 () Bool)

(assert (=> d!259395 (= c!134248 (or ((_ is EmptyExpr!2063) r!27177) ((_ is EmptyLang!2063) r!27177)))))

(assert (=> d!259395 (= (usedCharacters!162 r!27177) e!545226)))

(declare-fun bm!48002 () Bool)

(declare-fun c!134247 () Bool)

(assert (=> bm!48002 (= call!48007 (usedCharacters!162 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun b!826338 () Bool)

(assert (=> b!826338 (= c!134247 ((_ is Star!2063) r!27177))))

(assert (=> b!826338 (= e!545225 e!545223)))

(declare-fun b!826339 () Bool)

(assert (=> b!826339 (= e!545226 Nil!8873)))

(declare-fun b!826340 () Bool)

(declare-fun call!48008 () List!8889)

(assert (=> b!826340 (= e!545224 call!48008)))

(declare-fun b!826341 () Bool)

(assert (=> b!826341 (= e!545225 (Cons!8873 (c!134162 r!27177) Nil!8873))))

(declare-fun b!826342 () Bool)

(assert (=> b!826342 (= e!545224 call!48008)))

(declare-fun bm!48003 () Bool)

(assert (=> bm!48003 (= call!48008 (++!2290 (ite c!134249 call!48005 call!48006) (ite c!134249 call!48006 call!48005)))))

(assert (= (and d!259395 c!134248) b!826339))

(assert (= (and d!259395 (not c!134248)) b!826335))

(assert (= (and b!826335 c!134250) b!826341))

(assert (= (and b!826335 (not c!134250)) b!826338))

(assert (= (and b!826338 c!134247) b!826337))

(assert (= (and b!826338 (not c!134247)) b!826336))

(assert (= (and b!826336 c!134249) b!826340))

(assert (= (and b!826336 (not c!134249)) b!826342))

(assert (= (or b!826340 b!826342) bm!48001))

(assert (= (or b!826340 b!826342) bm!48000))

(assert (= (or b!826340 b!826342) bm!48003))

(assert (= (or b!826337 bm!48001) bm!48002))

(declare-fun m!1065129 () Bool)

(assert (=> bm!48000 m!1065129))

(declare-fun m!1065133 () Bool)

(assert (=> bm!48002 m!1065133))

(declare-fun m!1065137 () Bool)

(assert (=> bm!48003 m!1065137))

(assert (=> b!826109 d!259395))

(declare-fun b!826376 () Bool)

(declare-fun e!545239 () Bool)

(assert (=> b!826376 (= e!545239 tp_is_empty!3849)))

(assert (=> b!826107 (= tp!258313 e!545239)))

(declare-fun b!826379 () Bool)

(declare-fun tp!258340 () Bool)

(declare-fun tp!258344 () Bool)

(assert (=> b!826379 (= e!545239 (and tp!258340 tp!258344))))

(declare-fun b!826377 () Bool)

(declare-fun tp!258341 () Bool)

(declare-fun tp!258342 () Bool)

(assert (=> b!826377 (= e!545239 (and tp!258341 tp!258342))))

(declare-fun b!826378 () Bool)

(declare-fun tp!258343 () Bool)

(assert (=> b!826378 (= e!545239 tp!258343)))

(assert (= (and b!826107 ((_ is ElementMatch!2063) (regOne!4638 r!27177))) b!826376))

(assert (= (and b!826107 ((_ is Concat!3794) (regOne!4638 r!27177))) b!826377))

(assert (= (and b!826107 ((_ is Star!2063) (regOne!4638 r!27177))) b!826378))

(assert (= (and b!826107 ((_ is Union!2063) (regOne!4638 r!27177))) b!826379))

(declare-fun b!826384 () Bool)

(declare-fun e!545241 () Bool)

(assert (=> b!826384 (= e!545241 tp_is_empty!3849)))

(assert (=> b!826107 (= tp!258310 e!545241)))

(declare-fun b!826387 () Bool)

(declare-fun tp!258350 () Bool)

(declare-fun tp!258354 () Bool)

(assert (=> b!826387 (= e!545241 (and tp!258350 tp!258354))))

(declare-fun b!826385 () Bool)

(declare-fun tp!258351 () Bool)

(declare-fun tp!258352 () Bool)

(assert (=> b!826385 (= e!545241 (and tp!258351 tp!258352))))

(declare-fun b!826386 () Bool)

(declare-fun tp!258353 () Bool)

(assert (=> b!826386 (= e!545241 tp!258353)))

(assert (= (and b!826107 ((_ is ElementMatch!2063) (regTwo!4638 r!27177))) b!826384))

(assert (= (and b!826107 ((_ is Concat!3794) (regTwo!4638 r!27177))) b!826385))

(assert (= (and b!826107 ((_ is Star!2063) (regTwo!4638 r!27177))) b!826386))

(assert (= (and b!826107 ((_ is Union!2063) (regTwo!4638 r!27177))) b!826387))

(declare-fun b!826396 () Bool)

(declare-fun e!545244 () Bool)

(assert (=> b!826396 (= e!545244 tp_is_empty!3849)))

(assert (=> b!826103 (= tp!258311 e!545244)))

(declare-fun b!826399 () Bool)

(declare-fun tp!258365 () Bool)

(declare-fun tp!258369 () Bool)

(assert (=> b!826399 (= e!545244 (and tp!258365 tp!258369))))

(declare-fun b!826397 () Bool)

(declare-fun tp!258366 () Bool)

(declare-fun tp!258367 () Bool)

(assert (=> b!826397 (= e!545244 (and tp!258366 tp!258367))))

(declare-fun b!826398 () Bool)

(declare-fun tp!258368 () Bool)

(assert (=> b!826398 (= e!545244 tp!258368)))

(assert (= (and b!826103 ((_ is ElementMatch!2063) (reg!2392 r!27177))) b!826396))

(assert (= (and b!826103 ((_ is Concat!3794) (reg!2392 r!27177))) b!826397))

(assert (= (and b!826103 ((_ is Star!2063) (reg!2392 r!27177))) b!826398))

(assert (= (and b!826103 ((_ is Union!2063) (reg!2392 r!27177))) b!826399))

(declare-fun b!826404 () Bool)

(declare-fun e!545246 () Bool)

(assert (=> b!826404 (= e!545246 tp_is_empty!3849)))

(assert (=> b!826110 (= tp!258312 e!545246)))

(declare-fun b!826407 () Bool)

(declare-fun tp!258375 () Bool)

(declare-fun tp!258379 () Bool)

(assert (=> b!826407 (= e!545246 (and tp!258375 tp!258379))))

(declare-fun b!826405 () Bool)

(declare-fun tp!258376 () Bool)

(declare-fun tp!258377 () Bool)

(assert (=> b!826405 (= e!545246 (and tp!258376 tp!258377))))

(declare-fun b!826406 () Bool)

(declare-fun tp!258378 () Bool)

(assert (=> b!826406 (= e!545246 tp!258378)))

(assert (= (and b!826110 ((_ is ElementMatch!2063) (regOne!4639 r!27177))) b!826404))

(assert (= (and b!826110 ((_ is Concat!3794) (regOne!4639 r!27177))) b!826405))

(assert (= (and b!826110 ((_ is Star!2063) (regOne!4639 r!27177))) b!826406))

(assert (= (and b!826110 ((_ is Union!2063) (regOne!4639 r!27177))) b!826407))

(declare-fun b!826408 () Bool)

(declare-fun e!545247 () Bool)

(assert (=> b!826408 (= e!545247 tp_is_empty!3849)))

(assert (=> b!826110 (= tp!258314 e!545247)))

(declare-fun b!826411 () Bool)

(declare-fun tp!258380 () Bool)

(declare-fun tp!258384 () Bool)

(assert (=> b!826411 (= e!545247 (and tp!258380 tp!258384))))

(declare-fun b!826409 () Bool)

(declare-fun tp!258381 () Bool)

(declare-fun tp!258382 () Bool)

(assert (=> b!826409 (= e!545247 (and tp!258381 tp!258382))))

(declare-fun b!826410 () Bool)

(declare-fun tp!258383 () Bool)

(assert (=> b!826410 (= e!545247 tp!258383)))

(assert (= (and b!826110 ((_ is ElementMatch!2063) (regTwo!4639 r!27177))) b!826408))

(assert (= (and b!826110 ((_ is Concat!3794) (regTwo!4639 r!27177))) b!826409))

(assert (= (and b!826110 ((_ is Star!2063) (regTwo!4639 r!27177))) b!826410))

(assert (= (and b!826110 ((_ is Union!2063) (regTwo!4639 r!27177))) b!826411))

(check-sat (not b!826185) (not bm!47968) (not bm!47943) (not b!826410) (not b!826385) (not b!826121) (not bm!47992) (not b!826406) (not b!826254) (not d!259391) (not bm!47936) (not bm!47965) (not b!826398) (not bm!47945) (not bm!47941) (not bm!48003) (not b!826243) (not b!826399) (not b!826176) (not d!259355) (not bm!47967) (not bm!47964) (not bm!47989) tp_is_empty!3849 (not bm!48000) (not bm!47940) (not b!826405) (not d!259393) (not b!826379) (not b!826397) (not b!826378) (not bm!47932) (not d!259389) (not bm!47991) (not d!259365) (not b!826323) (not b!826190) (not b!826386) (not b!826325) (not bm!48002) (not b!826407) (not b!826409) (not b!826387) (not b!826411) (not b!826377))
(check-sat)
(get-model)

(declare-fun d!259399 () Bool)

(declare-fun nullableFct!154 (Regex!2063) Bool)

(assert (=> d!259399 (= (nullable!514 (reg!2392 (regOne!4639 r!27177))) (nullableFct!154 (reg!2392 (regOne!4639 r!27177))))))

(declare-fun bs!229586 () Bool)

(assert (= bs!229586 d!259399))

(declare-fun m!1065141 () Bool)

(assert (=> bs!229586 m!1065141))

(assert (=> b!826243 d!259399))

(declare-fun b!826422 () Bool)

(declare-fun res!380469 () Bool)

(declare-fun e!545253 () Bool)

(assert (=> b!826422 (=> (not res!380469) (not e!545253))))

(declare-fun lt!317536 () List!8889)

(declare-fun size!7472 (List!8889) Int)

(assert (=> b!826422 (= res!380469 (= (size!7472 lt!317536) (+ (size!7472 (ite c!134194 call!47946 call!47948)) (size!7472 (ite c!134194 call!47949 call!47946)))))))

(declare-fun b!826423 () Bool)

(assert (=> b!826423 (= e!545253 (or (not (= (ite c!134194 call!47949 call!47946) Nil!8873)) (= lt!317536 (ite c!134194 call!47946 call!47948))))))

(declare-fun b!826420 () Bool)

(declare-fun e!545252 () List!8889)

(assert (=> b!826420 (= e!545252 (ite c!134194 call!47949 call!47946))))

(declare-fun b!826421 () Bool)

(assert (=> b!826421 (= e!545252 (Cons!8873 (h!14274 (ite c!134194 call!47946 call!47948)) (++!2290 (t!93181 (ite c!134194 call!47946 call!47948)) (ite c!134194 call!47949 call!47946))))))

(declare-fun d!259401 () Bool)

(assert (=> d!259401 e!545253))

(declare-fun res!380468 () Bool)

(assert (=> d!259401 (=> (not res!380468) (not e!545253))))

(assert (=> d!259401 (= res!380468 (= (content!1302 lt!317536) ((_ map or) (content!1302 (ite c!134194 call!47946 call!47948)) (content!1302 (ite c!134194 call!47949 call!47946)))))))

(assert (=> d!259401 (= lt!317536 e!545252)))

(declare-fun c!134255 () Bool)

(assert (=> d!259401 (= c!134255 ((_ is Nil!8873) (ite c!134194 call!47946 call!47948)))))

(assert (=> d!259401 (= (++!2290 (ite c!134194 call!47946 call!47948) (ite c!134194 call!47949 call!47946)) lt!317536)))

(assert (= (and d!259401 c!134255) b!826420))

(assert (= (and d!259401 (not c!134255)) b!826421))

(assert (= (and d!259401 res!380468) b!826422))

(assert (= (and b!826422 res!380469) b!826423))

(declare-fun m!1065143 () Bool)

(assert (=> b!826422 m!1065143))

(declare-fun m!1065145 () Bool)

(assert (=> b!826422 m!1065145))

(declare-fun m!1065147 () Bool)

(assert (=> b!826422 m!1065147))

(declare-fun m!1065149 () Bool)

(assert (=> b!826421 m!1065149))

(declare-fun m!1065151 () Bool)

(assert (=> d!259401 m!1065151))

(declare-fun m!1065153 () Bool)

(assert (=> d!259401 m!1065153))

(declare-fun m!1065155 () Bool)

(assert (=> d!259401 m!1065155))

(assert (=> bm!47943 d!259401))

(declare-fun b!826424 () Bool)

(declare-fun res!380471 () Bool)

(declare-fun e!545260 () Bool)

(assert (=> b!826424 (=> (not res!380471) (not e!545260))))

(declare-fun call!48014 () Bool)

(assert (=> b!826424 (= res!380471 call!48014)))

(declare-fun e!545254 () Bool)

(assert (=> b!826424 (= e!545254 e!545260)))

(declare-fun b!826425 () Bool)

(declare-fun e!545259 () Bool)

(assert (=> b!826425 (= e!545259 e!545254)))

(declare-fun c!134256 () Bool)

(assert (=> b!826425 (= c!134256 ((_ is Union!2063) (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun call!48013 () Bool)

(declare-fun bm!48007 () Bool)

(declare-fun c!134257 () Bool)

(assert (=> bm!48007 (= call!48013 (validRegex!616 (ite c!134257 (reg!2392 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (ite c!134256 (regTwo!4639 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (regOne!4638 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))))

(declare-fun bm!48008 () Bool)

(assert (=> bm!48008 (= call!48014 (validRegex!616 (ite c!134256 (regOne!4639 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (regTwo!4638 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))))

(declare-fun b!826426 () Bool)

(declare-fun e!545258 () Bool)

(assert (=> b!826426 (= e!545258 call!48014)))

(declare-fun b!826427 () Bool)

(declare-fun e!545257 () Bool)

(assert (=> b!826427 (= e!545259 e!545257)))

(declare-fun res!380470 () Bool)

(assert (=> b!826427 (= res!380470 (not (nullable!514 (reg!2392 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))))

(assert (=> b!826427 (=> (not res!380470) (not e!545257))))

(declare-fun b!826428 () Bool)

(declare-fun e!545255 () Bool)

(assert (=> b!826428 (= e!545255 e!545259)))

(assert (=> b!826428 (= c!134257 ((_ is Star!2063) (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun bm!48009 () Bool)

(declare-fun call!48012 () Bool)

(assert (=> bm!48009 (= call!48012 call!48013)))

(declare-fun b!826429 () Bool)

(declare-fun e!545256 () Bool)

(assert (=> b!826429 (= e!545256 e!545258)))

(declare-fun res!380474 () Bool)

(assert (=> b!826429 (=> (not res!380474) (not e!545258))))

(assert (=> b!826429 (= res!380474 call!48012)))

(declare-fun b!826430 () Bool)

(assert (=> b!826430 (= e!545257 call!48013)))

(declare-fun b!826431 () Bool)

(declare-fun res!380472 () Bool)

(assert (=> b!826431 (=> res!380472 e!545256)))

(assert (=> b!826431 (= res!380472 (not ((_ is Concat!3794) (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))

(assert (=> b!826431 (= e!545254 e!545256)))

(declare-fun d!259403 () Bool)

(declare-fun res!380473 () Bool)

(assert (=> d!259403 (=> res!380473 e!545255)))

(assert (=> d!259403 (= res!380473 ((_ is ElementMatch!2063) (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(assert (=> d!259403 (= (validRegex!616 (ite c!134215 (reg!2392 (regOne!4639 r!27177)) (ite c!134214 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) e!545255)))

(declare-fun b!826432 () Bool)

(assert (=> b!826432 (= e!545260 call!48012)))

(assert (= (and d!259403 (not res!380473)) b!826428))

(assert (= (and b!826428 c!134257) b!826427))

(assert (= (and b!826428 (not c!134257)) b!826425))

(assert (= (and b!826427 res!380470) b!826430))

(assert (= (and b!826425 c!134256) b!826424))

(assert (= (and b!826425 (not c!134256)) b!826431))

(assert (= (and b!826424 res!380471) b!826432))

(assert (= (and b!826431 (not res!380472)) b!826429))

(assert (= (and b!826429 res!380474) b!826426))

(assert (= (or b!826424 b!826426) bm!48008))

(assert (= (or b!826432 b!826429) bm!48009))

(assert (= (or b!826430 bm!48009) bm!48007))

(declare-fun m!1065157 () Bool)

(assert (=> bm!48007 m!1065157))

(declare-fun m!1065159 () Bool)

(assert (=> bm!48008 m!1065159))

(declare-fun m!1065161 () Bool)

(assert (=> b!826427 m!1065161))

(assert (=> bm!47964 d!259403))

(declare-fun d!259405 () Bool)

(assert (=> d!259405 (= (nullable!514 (regOne!4638 (regOne!4639 r!27177))) (nullableFct!154 (regOne!4638 (regOne!4639 r!27177))))))

(declare-fun bs!229587 () Bool)

(assert (= bs!229587 d!259405))

(declare-fun m!1065163 () Bool)

(assert (=> bs!229587 m!1065163))

(assert (=> b!826176 d!259405))

(declare-fun b!826433 () Bool)

(declare-fun e!545264 () List!8889)

(declare-fun e!545263 () List!8889)

(assert (=> b!826433 (= e!545264 e!545263)))

(declare-fun c!134261 () Bool)

(assert (=> b!826433 (= c!134261 ((_ is ElementMatch!2063) (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun b!826434 () Bool)

(declare-fun e!545261 () List!8889)

(declare-fun e!545262 () List!8889)

(assert (=> b!826434 (= e!545261 e!545262)))

(declare-fun c!134260 () Bool)

(assert (=> b!826434 (= c!134260 ((_ is Union!2063) (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun call!48015 () List!8889)

(declare-fun bm!48010 () Bool)

(assert (=> bm!48010 (= call!48015 (usedCharacters!162 (ite c!134260 (regOne!4639 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (regTwo!4638 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))))

(declare-fun bm!48011 () Bool)

(declare-fun call!48016 () List!8889)

(declare-fun call!48017 () List!8889)

(assert (=> bm!48011 (= call!48016 call!48017)))

(declare-fun b!826435 () Bool)

(assert (=> b!826435 (= e!545261 call!48017)))

(declare-fun c!134259 () Bool)

(declare-fun d!259407 () Bool)

(assert (=> d!259407 (= c!134259 (or ((_ is EmptyExpr!2063) (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) ((_ is EmptyLang!2063) (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))

(assert (=> d!259407 (= (usedCharacters!162 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) e!545264)))

(declare-fun c!134258 () Bool)

(declare-fun bm!48012 () Bool)

(assert (=> bm!48012 (= call!48017 (usedCharacters!162 (ite c!134258 (reg!2392 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (ite c!134260 (regTwo!4639 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (regOne!4638 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))))

(declare-fun b!826436 () Bool)

(assert (=> b!826436 (= c!134258 ((_ is Star!2063) (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(assert (=> b!826436 (= e!545263 e!545261)))

(declare-fun b!826437 () Bool)

(assert (=> b!826437 (= e!545264 Nil!8873)))

(declare-fun b!826438 () Bool)

(declare-fun call!48018 () List!8889)

(assert (=> b!826438 (= e!545262 call!48018)))

(declare-fun b!826439 () Bool)

(assert (=> b!826439 (= e!545263 (Cons!8873 (c!134162 (ite c!134240 (reg!2392 (regOne!4639 r!27177)) (ite c!134242 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) Nil!8873))))

(declare-fun b!826440 () Bool)

(assert (=> b!826440 (= e!545262 call!48018)))

(declare-fun bm!48013 () Bool)

(assert (=> bm!48013 (= call!48018 (++!2290 (ite c!134260 call!48015 call!48016) (ite c!134260 call!48016 call!48015)))))

(assert (= (and d!259407 c!134259) b!826437))

(assert (= (and d!259407 (not c!134259)) b!826433))

(assert (= (and b!826433 c!134261) b!826439))

(assert (= (and b!826433 (not c!134261)) b!826436))

(assert (= (and b!826436 c!134258) b!826435))

(assert (= (and b!826436 (not c!134258)) b!826434))

(assert (= (and b!826434 c!134260) b!826438))

(assert (= (and b!826434 (not c!134260)) b!826440))

(assert (= (or b!826438 b!826440) bm!48011))

(assert (= (or b!826438 b!826440) bm!48010))

(assert (= (or b!826438 b!826440) bm!48013))

(assert (= (or b!826435 bm!48011) bm!48012))

(declare-fun m!1065165 () Bool)

(assert (=> bm!48010 m!1065165))

(declare-fun m!1065167 () Bool)

(assert (=> bm!48012 m!1065167))

(declare-fun m!1065169 () Bool)

(assert (=> bm!48013 m!1065169))

(assert (=> bm!47991 d!259407))

(declare-fun d!259409 () Bool)

(declare-fun c!134264 () Bool)

(assert (=> d!259409 (= c!134264 ((_ is Nil!8873) (usedCharacters!162 r!27177)))))

(declare-fun e!545267 () (InoxSet C!4696))

(assert (=> d!259409 (= (content!1302 (usedCharacters!162 r!27177)) e!545267)))

(declare-fun b!826445 () Bool)

(assert (=> b!826445 (= e!545267 ((as const (Array C!4696 Bool)) false))))

(declare-fun b!826446 () Bool)

(assert (=> b!826446 (= e!545267 ((_ map or) (store ((as const (Array C!4696 Bool)) false) (h!14274 (usedCharacters!162 r!27177)) true) (content!1302 (t!93181 (usedCharacters!162 r!27177)))))))

(assert (= (and d!259409 c!134264) b!826445))

(assert (= (and d!259409 (not c!134264)) b!826446))

(declare-fun m!1065171 () Bool)

(assert (=> b!826446 m!1065171))

(declare-fun m!1065173 () Bool)

(assert (=> b!826446 m!1065173))

(assert (=> d!259389 d!259409))

(declare-fun d!259411 () Bool)

(declare-fun lt!317537 () Bool)

(assert (=> d!259411 (= lt!317537 (select (content!1302 (t!93181 (usedCharacters!162 (regOne!4639 r!27177)))) c!13916))))

(declare-fun e!545269 () Bool)

(assert (=> d!259411 (= lt!317537 e!545269)))

(declare-fun res!380475 () Bool)

(assert (=> d!259411 (=> (not res!380475) (not e!545269))))

(assert (=> d!259411 (= res!380475 ((_ is Cons!8873) (t!93181 (usedCharacters!162 (regOne!4639 r!27177)))))))

(assert (=> d!259411 (= (contains!1654 (t!93181 (usedCharacters!162 (regOne!4639 r!27177))) c!13916) lt!317537)))

(declare-fun b!826447 () Bool)

(declare-fun e!545268 () Bool)

(assert (=> b!826447 (= e!545269 e!545268)))

(declare-fun res!380476 () Bool)

(assert (=> b!826447 (=> res!380476 e!545268)))

(assert (=> b!826447 (= res!380476 (= (h!14274 (t!93181 (usedCharacters!162 (regOne!4639 r!27177)))) c!13916))))

(declare-fun b!826448 () Bool)

(assert (=> b!826448 (= e!545268 (contains!1654 (t!93181 (t!93181 (usedCharacters!162 (regOne!4639 r!27177)))) c!13916))))

(assert (= (and d!259411 res!380475) b!826447))

(assert (= (and b!826447 (not res!380476)) b!826448))

(declare-fun m!1065175 () Bool)

(assert (=> d!259411 m!1065175))

(declare-fun m!1065177 () Bool)

(assert (=> d!259411 m!1065177))

(declare-fun m!1065179 () Bool)

(assert (=> b!826448 m!1065179))

(assert (=> b!826325 d!259411))

(declare-fun b!826449 () Bool)

(declare-fun res!380478 () Bool)

(declare-fun e!545276 () Bool)

(assert (=> b!826449 (=> (not res!380478) (not e!545276))))

(declare-fun call!48021 () Bool)

(assert (=> b!826449 (= res!380478 call!48021)))

(declare-fun e!545270 () Bool)

(assert (=> b!826449 (= e!545270 e!545276)))

(declare-fun b!826450 () Bool)

(declare-fun e!545275 () Bool)

(assert (=> b!826450 (= e!545275 e!545270)))

(declare-fun c!134265 () Bool)

(assert (=> b!826450 (= c!134265 ((_ is Union!2063) (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun c!134266 () Bool)

(declare-fun call!48020 () Bool)

(declare-fun bm!48014 () Bool)

(assert (=> bm!48014 (= call!48020 (validRegex!616 (ite c!134266 (reg!2392 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (ite c!134265 (regTwo!4639 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (regOne!4638 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))))

(declare-fun bm!48015 () Bool)

(assert (=> bm!48015 (= call!48021 (validRegex!616 (ite c!134265 (regOne!4639 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (regTwo!4638 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))))

(declare-fun b!826451 () Bool)

(declare-fun e!545274 () Bool)

(assert (=> b!826451 (= e!545274 call!48021)))

(declare-fun b!826452 () Bool)

(declare-fun e!545273 () Bool)

(assert (=> b!826452 (= e!545275 e!545273)))

(declare-fun res!380477 () Bool)

(assert (=> b!826452 (= res!380477 (not (nullable!514 (reg!2392 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))))

(assert (=> b!826452 (=> (not res!380477) (not e!545273))))

(declare-fun b!826453 () Bool)

(declare-fun e!545271 () Bool)

(assert (=> b!826453 (= e!545271 e!545275)))

(assert (=> b!826453 (= c!134266 ((_ is Star!2063) (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun bm!48016 () Bool)

(declare-fun call!48019 () Bool)

(assert (=> bm!48016 (= call!48019 call!48020)))

(declare-fun b!826454 () Bool)

(declare-fun e!545272 () Bool)

(assert (=> b!826454 (= e!545272 e!545274)))

(declare-fun res!380481 () Bool)

(assert (=> b!826454 (=> (not res!380481) (not e!545274))))

(assert (=> b!826454 (= res!380481 call!48019)))

(declare-fun b!826455 () Bool)

(assert (=> b!826455 (= e!545273 call!48020)))

(declare-fun b!826456 () Bool)

(declare-fun res!380479 () Bool)

(assert (=> b!826456 (=> res!380479 e!545272)))

(assert (=> b!826456 (= res!380479 (not ((_ is Concat!3794) (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))

(assert (=> b!826456 (= e!545270 e!545272)))

(declare-fun d!259413 () Bool)

(declare-fun res!380480 () Bool)

(assert (=> d!259413 (=> res!380480 e!545271)))

(assert (=> d!259413 (= res!380480 ((_ is ElementMatch!2063) (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(assert (=> d!259413 (= (validRegex!616 (ite c!134214 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) e!545271)))

(declare-fun b!826457 () Bool)

(assert (=> b!826457 (= e!545276 call!48019)))

(assert (= (and d!259413 (not res!380480)) b!826453))

(assert (= (and b!826453 c!134266) b!826452))

(assert (= (and b!826453 (not c!134266)) b!826450))

(assert (= (and b!826452 res!380477) b!826455))

(assert (= (and b!826450 c!134265) b!826449))

(assert (= (and b!826450 (not c!134265)) b!826456))

(assert (= (and b!826449 res!380478) b!826457))

(assert (= (and b!826456 (not res!380479)) b!826454))

(assert (= (and b!826454 res!380481) b!826451))

(assert (= (or b!826449 b!826451) bm!48015))

(assert (= (or b!826457 b!826454) bm!48016))

(assert (= (or b!826455 bm!48016) bm!48014))

(declare-fun m!1065181 () Bool)

(assert (=> bm!48014 m!1065181))

(declare-fun m!1065183 () Bool)

(assert (=> bm!48015 m!1065183))

(declare-fun m!1065185 () Bool)

(assert (=> b!826452 m!1065185))

(assert (=> bm!47965 d!259413))

(declare-fun b!826458 () Bool)

(declare-fun res!380483 () Bool)

(declare-fun e!545283 () Bool)

(assert (=> b!826458 (=> (not res!380483) (not e!545283))))

(declare-fun call!48024 () Bool)

(assert (=> b!826458 (= res!380483 call!48024)))

(declare-fun e!545277 () Bool)

(assert (=> b!826458 (= e!545277 e!545283)))

(declare-fun b!826459 () Bool)

(declare-fun e!545282 () Bool)

(assert (=> b!826459 (= e!545282 e!545277)))

(declare-fun c!134267 () Bool)

(assert (=> b!826459 (= c!134267 ((_ is Union!2063) (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun c!134268 () Bool)

(declare-fun bm!48017 () Bool)

(declare-fun call!48023 () Bool)

(assert (=> bm!48017 (= call!48023 (validRegex!616 (ite c!134268 (reg!2392 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (ite c!134267 (regTwo!4639 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (regOne!4638 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))))

(declare-fun bm!48018 () Bool)

(assert (=> bm!48018 (= call!48024 (validRegex!616 (ite c!134267 (regOne!4639 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (regTwo!4638 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))))

(declare-fun b!826460 () Bool)

(declare-fun e!545281 () Bool)

(assert (=> b!826460 (= e!545281 call!48024)))

(declare-fun b!826461 () Bool)

(declare-fun e!545280 () Bool)

(assert (=> b!826461 (= e!545282 e!545280)))

(declare-fun res!380482 () Bool)

(assert (=> b!826461 (= res!380482 (not (nullable!514 (reg!2392 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))))

(assert (=> b!826461 (=> (not res!380482) (not e!545280))))

(declare-fun b!826462 () Bool)

(declare-fun e!545278 () Bool)

(assert (=> b!826462 (= e!545278 e!545282)))

(assert (=> b!826462 (= c!134268 ((_ is Star!2063) (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun bm!48019 () Bool)

(declare-fun call!48022 () Bool)

(assert (=> bm!48019 (= call!48022 call!48023)))

(declare-fun b!826463 () Bool)

(declare-fun e!545279 () Bool)

(assert (=> b!826463 (= e!545279 e!545281)))

(declare-fun res!380486 () Bool)

(assert (=> b!826463 (=> (not res!380486) (not e!545281))))

(assert (=> b!826463 (= res!380486 call!48022)))

(declare-fun b!826464 () Bool)

(assert (=> b!826464 (= e!545280 call!48023)))

(declare-fun b!826465 () Bool)

(declare-fun res!380484 () Bool)

(assert (=> b!826465 (=> res!380484 e!545279)))

(assert (=> b!826465 (= res!380484 (not ((_ is Concat!3794) (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))

(assert (=> b!826465 (= e!545277 e!545279)))

(declare-fun d!259415 () Bool)

(declare-fun res!380485 () Bool)

(assert (=> d!259415 (=> res!380485 e!545278)))

(assert (=> d!259415 (= res!380485 ((_ is ElementMatch!2063) (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(assert (=> d!259415 (= (validRegex!616 (ite c!134216 (regOne!4639 r!27177) (regTwo!4638 r!27177))) e!545278)))

(declare-fun b!826466 () Bool)

(assert (=> b!826466 (= e!545283 call!48022)))

(assert (= (and d!259415 (not res!380485)) b!826462))

(assert (= (and b!826462 c!134268) b!826461))

(assert (= (and b!826462 (not c!134268)) b!826459))

(assert (= (and b!826461 res!380482) b!826464))

(assert (= (and b!826459 c!134267) b!826458))

(assert (= (and b!826459 (not c!134267)) b!826465))

(assert (= (and b!826458 res!380483) b!826466))

(assert (= (and b!826465 (not res!380484)) b!826463))

(assert (= (and b!826463 res!380486) b!826460))

(assert (= (or b!826458 b!826460) bm!48018))

(assert (= (or b!826466 b!826463) bm!48019))

(assert (= (or b!826464 bm!48019) bm!48017))

(declare-fun m!1065187 () Bool)

(assert (=> bm!48017 m!1065187))

(declare-fun m!1065189 () Bool)

(assert (=> bm!48018 m!1065189))

(declare-fun m!1065191 () Bool)

(assert (=> b!826461 m!1065191))

(assert (=> bm!47968 d!259415))

(declare-fun call!48025 () List!8889)

(declare-fun c!134270 () Bool)

(declare-fun bm!48020 () Bool)

(assert (=> bm!48020 (= call!48025 (firstChars!34 (ite c!134270 (regOne!4639 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (regTwo!4638 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))))

(declare-fun b!826467 () Bool)

(declare-fun e!545286 () List!8889)

(declare-fun call!48027 () List!8889)

(assert (=> b!826467 (= e!545286 call!48027)))

(declare-fun d!259417 () Bool)

(declare-fun c!134269 () Bool)

(assert (=> d!259417 (= c!134269 (or ((_ is EmptyExpr!2063) (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))) ((_ is EmptyLang!2063) (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))

(declare-fun e!545287 () List!8889)

(assert (=> d!259417 (= (firstChars!34 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))) e!545287)))

(declare-fun b!826468 () Bool)

(declare-fun e!545288 () List!8889)

(assert (=> b!826468 (= e!545288 (Cons!8873 (c!134162 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))) Nil!8873))))

(declare-fun b!826469 () Bool)

(assert (=> b!826469 (= e!545287 Nil!8873)))

(declare-fun bm!48021 () Bool)

(declare-fun call!48028 () List!8889)

(assert (=> bm!48021 (= call!48027 call!48028)))

(declare-fun call!48026 () List!8889)

(declare-fun bm!48022 () Bool)

(assert (=> bm!48022 (= call!48026 (++!2290 (ite c!134270 call!48025 call!48027) (ite c!134270 call!48028 call!48025)))))

(declare-fun b!826470 () Bool)

(assert (=> b!826470 (= e!545287 e!545288)))

(declare-fun c!134272 () Bool)

(assert (=> b!826470 (= c!134272 ((_ is ElementMatch!2063) (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun bm!48023 () Bool)

(declare-fun call!48029 () List!8889)

(assert (=> bm!48023 (= call!48028 call!48029)))

(declare-fun b!826471 () Bool)

(declare-fun c!134273 () Bool)

(assert (=> b!826471 (= c!134273 (nullable!514 (regOne!4638 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))

(declare-fun e!545284 () List!8889)

(assert (=> b!826471 (= e!545284 e!545286)))

(declare-fun b!826472 () Bool)

(declare-fun e!545285 () List!8889)

(assert (=> b!826472 (= e!545285 call!48029)))

(declare-fun b!826473 () Bool)

(declare-fun c!134271 () Bool)

(assert (=> b!826473 (= c!134271 ((_ is Star!2063) (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(assert (=> b!826473 (= e!545288 e!545285)))

(declare-fun b!826474 () Bool)

(assert (=> b!826474 (= e!545286 call!48026)))

(declare-fun b!826475 () Bool)

(assert (=> b!826475 (= e!545284 call!48026)))

(declare-fun bm!48024 () Bool)

(assert (=> bm!48024 (= call!48029 (firstChars!34 (ite c!134271 (reg!2392 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (ite c!134270 (regTwo!4639 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (regOne!4638 (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))))

(declare-fun b!826476 () Bool)

(assert (=> b!826476 (= e!545285 e!545284)))

(assert (=> b!826476 (= c!134270 ((_ is Union!2063) (ite c!134194 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(assert (= (and d!259417 c!134269) b!826469))

(assert (= (and d!259417 (not c!134269)) b!826470))

(assert (= (and b!826470 c!134272) b!826468))

(assert (= (and b!826470 (not c!134272)) b!826473))

(assert (= (and b!826473 c!134271) b!826472))

(assert (= (and b!826473 (not c!134271)) b!826476))

(assert (= (and b!826476 c!134270) b!826475))

(assert (= (and b!826476 (not c!134270)) b!826471))

(assert (= (and b!826471 c!134273) b!826474))

(assert (= (and b!826471 (not c!134273)) b!826467))

(assert (= (or b!826474 b!826467) bm!48021))

(assert (= (or b!826475 bm!48021) bm!48023))

(assert (= (or b!826475 b!826474) bm!48020))

(assert (= (or b!826475 b!826474) bm!48022))

(assert (= (or b!826472 bm!48023) bm!48024))

(declare-fun m!1065193 () Bool)

(assert (=> bm!48020 m!1065193))

(declare-fun m!1065195 () Bool)

(assert (=> bm!48022 m!1065195))

(declare-fun m!1065197 () Bool)

(assert (=> b!826471 m!1065197))

(declare-fun m!1065199 () Bool)

(assert (=> bm!48024 m!1065199))

(assert (=> bm!47941 d!259417))

(declare-fun d!259419 () Bool)

(assert (=> d!259419 (= (nullable!514 (reg!2392 r!27177)) (nullableFct!154 (reg!2392 r!27177)))))

(declare-fun bs!229588 () Bool)

(assert (= bs!229588 d!259419))

(declare-fun m!1065201 () Bool)

(assert (=> bs!229588 m!1065201))

(assert (=> b!826254 d!259419))

(declare-fun b!826479 () Bool)

(declare-fun res!380488 () Bool)

(declare-fun e!545290 () Bool)

(assert (=> b!826479 (=> (not res!380488) (not e!545290))))

(declare-fun lt!317538 () List!8889)

(assert (=> b!826479 (= res!380488 (= (size!7472 lt!317538) (+ (size!7472 (ite c!134187 call!47938 call!47941)) (size!7472 (ite c!134187 call!47944 call!47938)))))))

(declare-fun b!826480 () Bool)

(assert (=> b!826480 (= e!545290 (or (not (= (ite c!134187 call!47944 call!47938) Nil!8873)) (= lt!317538 (ite c!134187 call!47938 call!47941))))))

(declare-fun b!826477 () Bool)

(declare-fun e!545289 () List!8889)

(assert (=> b!826477 (= e!545289 (ite c!134187 call!47944 call!47938))))

(declare-fun b!826478 () Bool)

(assert (=> b!826478 (= e!545289 (Cons!8873 (h!14274 (ite c!134187 call!47938 call!47941)) (++!2290 (t!93181 (ite c!134187 call!47938 call!47941)) (ite c!134187 call!47944 call!47938))))))

(declare-fun d!259421 () Bool)

(assert (=> d!259421 e!545290))

(declare-fun res!380487 () Bool)

(assert (=> d!259421 (=> (not res!380487) (not e!545290))))

(assert (=> d!259421 (= res!380487 (= (content!1302 lt!317538) ((_ map or) (content!1302 (ite c!134187 call!47938 call!47941)) (content!1302 (ite c!134187 call!47944 call!47938)))))))

(assert (=> d!259421 (= lt!317538 e!545289)))

(declare-fun c!134274 () Bool)

(assert (=> d!259421 (= c!134274 ((_ is Nil!8873) (ite c!134187 call!47938 call!47941)))))

(assert (=> d!259421 (= (++!2290 (ite c!134187 call!47938 call!47941) (ite c!134187 call!47944 call!47938)) lt!317538)))

(assert (= (and d!259421 c!134274) b!826477))

(assert (= (and d!259421 (not c!134274)) b!826478))

(assert (= (and d!259421 res!380487) b!826479))

(assert (= (and b!826479 res!380488) b!826480))

(declare-fun m!1065203 () Bool)

(assert (=> b!826479 m!1065203))

(declare-fun m!1065205 () Bool)

(assert (=> b!826479 m!1065205))

(declare-fun m!1065207 () Bool)

(assert (=> b!826479 m!1065207))

(declare-fun m!1065209 () Bool)

(assert (=> b!826478 m!1065209))

(declare-fun m!1065211 () Bool)

(assert (=> d!259421 m!1065211))

(declare-fun m!1065213 () Bool)

(assert (=> d!259421 m!1065213))

(declare-fun m!1065215 () Bool)

(assert (=> d!259421 m!1065215))

(assert (=> bm!47936 d!259421))

(declare-fun d!259423 () Bool)

(declare-fun lt!317539 () Bool)

(assert (=> d!259423 (= lt!317539 (select (content!1302 (t!93181 (firstChars!34 (regOne!4639 r!27177)))) c!13916))))

(declare-fun e!545292 () Bool)

(assert (=> d!259423 (= lt!317539 e!545292)))

(declare-fun res!380489 () Bool)

(assert (=> d!259423 (=> (not res!380489) (not e!545292))))

(assert (=> d!259423 (= res!380489 ((_ is Cons!8873) (t!93181 (firstChars!34 (regOne!4639 r!27177)))))))

(assert (=> d!259423 (= (contains!1654 (t!93181 (firstChars!34 (regOne!4639 r!27177))) c!13916) lt!317539)))

(declare-fun b!826481 () Bool)

(declare-fun e!545291 () Bool)

(assert (=> b!826481 (= e!545292 e!545291)))

(declare-fun res!380490 () Bool)

(assert (=> b!826481 (=> res!380490 e!545291)))

(assert (=> b!826481 (= res!380490 (= (h!14274 (t!93181 (firstChars!34 (regOne!4639 r!27177)))) c!13916))))

(declare-fun b!826482 () Bool)

(assert (=> b!826482 (= e!545291 (contains!1654 (t!93181 (t!93181 (firstChars!34 (regOne!4639 r!27177)))) c!13916))))

(assert (= (and d!259423 res!380489) b!826481))

(assert (= (and b!826481 (not res!380490)) b!826482))

(declare-fun m!1065217 () Bool)

(assert (=> d!259423 m!1065217))

(declare-fun m!1065219 () Bool)

(assert (=> d!259423 m!1065219))

(declare-fun m!1065221 () Bool)

(assert (=> b!826482 m!1065221))

(assert (=> b!826121 d!259423))

(declare-fun d!259425 () Bool)

(declare-fun lt!317540 () Bool)

(assert (=> d!259425 (= lt!317540 (select (content!1302 (t!93181 (firstChars!34 r!27177))) c!13916))))

(declare-fun e!545294 () Bool)

(assert (=> d!259425 (= lt!317540 e!545294)))

(declare-fun res!380491 () Bool)

(assert (=> d!259425 (=> (not res!380491) (not e!545294))))

(assert (=> d!259425 (= res!380491 ((_ is Cons!8873) (t!93181 (firstChars!34 r!27177))))))

(assert (=> d!259425 (= (contains!1654 (t!93181 (firstChars!34 r!27177)) c!13916) lt!317540)))

(declare-fun b!826483 () Bool)

(declare-fun e!545293 () Bool)

(assert (=> b!826483 (= e!545294 e!545293)))

(declare-fun res!380492 () Bool)

(assert (=> b!826483 (=> res!380492 e!545293)))

(assert (=> b!826483 (= res!380492 (= (h!14274 (t!93181 (firstChars!34 r!27177))) c!13916))))

(declare-fun b!826484 () Bool)

(assert (=> b!826484 (= e!545293 (contains!1654 (t!93181 (t!93181 (firstChars!34 r!27177))) c!13916))))

(assert (= (and d!259425 res!380491) b!826483))

(assert (= (and b!826483 (not res!380492)) b!826484))

(declare-fun m!1065223 () Bool)

(assert (=> d!259425 m!1065223))

(declare-fun m!1065225 () Bool)

(assert (=> d!259425 m!1065225))

(declare-fun m!1065227 () Bool)

(assert (=> b!826484 m!1065227))

(assert (=> b!826185 d!259425))

(declare-fun b!826485 () Bool)

(declare-fun res!380494 () Bool)

(declare-fun e!545301 () Bool)

(assert (=> b!826485 (=> (not res!380494) (not e!545301))))

(declare-fun call!48032 () Bool)

(assert (=> b!826485 (= res!380494 call!48032)))

(declare-fun e!545295 () Bool)

(assert (=> b!826485 (= e!545295 e!545301)))

(declare-fun b!826486 () Bool)

(declare-fun e!545300 () Bool)

(assert (=> b!826486 (= e!545300 e!545295)))

(declare-fun c!134275 () Bool)

(assert (=> b!826486 (= c!134275 ((_ is Union!2063) (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun bm!48025 () Bool)

(declare-fun call!48031 () Bool)

(declare-fun c!134276 () Bool)

(assert (=> bm!48025 (= call!48031 (validRegex!616 (ite c!134276 (reg!2392 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (ite c!134275 (regTwo!4639 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (regOne!4638 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))))

(declare-fun bm!48026 () Bool)

(assert (=> bm!48026 (= call!48032 (validRegex!616 (ite c!134275 (regOne!4639 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (regTwo!4638 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))))

(declare-fun b!826487 () Bool)

(declare-fun e!545299 () Bool)

(assert (=> b!826487 (= e!545299 call!48032)))

(declare-fun b!826488 () Bool)

(declare-fun e!545298 () Bool)

(assert (=> b!826488 (= e!545300 e!545298)))

(declare-fun res!380493 () Bool)

(assert (=> b!826488 (= res!380493 (not (nullable!514 (reg!2392 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))))

(assert (=> b!826488 (=> (not res!380493) (not e!545298))))

(declare-fun b!826489 () Bool)

(declare-fun e!545296 () Bool)

(assert (=> b!826489 (= e!545296 e!545300)))

(assert (=> b!826489 (= c!134276 ((_ is Star!2063) (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun bm!48027 () Bool)

(declare-fun call!48030 () Bool)

(assert (=> bm!48027 (= call!48030 call!48031)))

(declare-fun b!826490 () Bool)

(declare-fun e!545297 () Bool)

(assert (=> b!826490 (= e!545297 e!545299)))

(declare-fun res!380497 () Bool)

(assert (=> b!826490 (=> (not res!380497) (not e!545299))))

(assert (=> b!826490 (= res!380497 call!48030)))

(declare-fun b!826491 () Bool)

(assert (=> b!826491 (= e!545298 call!48031)))

(declare-fun b!826492 () Bool)

(declare-fun res!380495 () Bool)

(assert (=> b!826492 (=> res!380495 e!545297)))

(assert (=> b!826492 (= res!380495 (not ((_ is Concat!3794) (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))

(assert (=> b!826492 (= e!545295 e!545297)))

(declare-fun d!259427 () Bool)

(declare-fun res!380496 () Bool)

(assert (=> d!259427 (=> res!380496 e!545296)))

(assert (=> d!259427 (= res!380496 ((_ is ElementMatch!2063) (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(assert (=> d!259427 (= (validRegex!616 (ite c!134217 (reg!2392 r!27177) (ite c!134216 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) e!545296)))

(declare-fun b!826493 () Bool)

(assert (=> b!826493 (= e!545301 call!48030)))

(assert (= (and d!259427 (not res!380496)) b!826489))

(assert (= (and b!826489 c!134276) b!826488))

(assert (= (and b!826489 (not c!134276)) b!826486))

(assert (= (and b!826488 res!380493) b!826491))

(assert (= (and b!826486 c!134275) b!826485))

(assert (= (and b!826486 (not c!134275)) b!826492))

(assert (= (and b!826485 res!380494) b!826493))

(assert (= (and b!826492 (not res!380495)) b!826490))

(assert (= (and b!826490 res!380497) b!826487))

(assert (= (or b!826485 b!826487) bm!48026))

(assert (= (or b!826493 b!826490) bm!48027))

(assert (= (or b!826491 bm!48027) bm!48025))

(declare-fun m!1065229 () Bool)

(assert (=> bm!48025 m!1065229))

(declare-fun m!1065231 () Bool)

(assert (=> bm!48026 m!1065231))

(declare-fun m!1065233 () Bool)

(assert (=> b!826488 m!1065233))

(assert (=> bm!47967 d!259427))

(declare-fun b!826494 () Bool)

(declare-fun e!545305 () List!8889)

(declare-fun e!545304 () List!8889)

(assert (=> b!826494 (= e!545305 e!545304)))

(declare-fun c!134280 () Bool)

(assert (=> b!826494 (= c!134280 ((_ is ElementMatch!2063) (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun b!826495 () Bool)

(declare-fun e!545302 () List!8889)

(declare-fun e!545303 () List!8889)

(assert (=> b!826495 (= e!545302 e!545303)))

(declare-fun c!134279 () Bool)

(assert (=> b!826495 (= c!134279 ((_ is Union!2063) (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun bm!48028 () Bool)

(declare-fun call!48033 () List!8889)

(assert (=> bm!48028 (= call!48033 (usedCharacters!162 (ite c!134279 (regOne!4639 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (regTwo!4638 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))))

(declare-fun bm!48029 () Bool)

(declare-fun call!48034 () List!8889)

(declare-fun call!48035 () List!8889)

(assert (=> bm!48029 (= call!48034 call!48035)))

(declare-fun b!826496 () Bool)

(assert (=> b!826496 (= e!545302 call!48035)))

(declare-fun d!259429 () Bool)

(declare-fun c!134278 () Bool)

(assert (=> d!259429 (= c!134278 (or ((_ is EmptyExpr!2063) (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) ((_ is EmptyLang!2063) (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))

(assert (=> d!259429 (= (usedCharacters!162 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) e!545305)))

(declare-fun bm!48030 () Bool)

(declare-fun c!134277 () Bool)

(assert (=> bm!48030 (= call!48035 (usedCharacters!162 (ite c!134277 (reg!2392 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (ite c!134279 (regTwo!4639 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (regOne!4638 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))))

(declare-fun b!826497 () Bool)

(assert (=> b!826497 (= c!134277 ((_ is Star!2063) (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(assert (=> b!826497 (= e!545304 e!545302)))

(declare-fun b!826498 () Bool)

(assert (=> b!826498 (= e!545305 Nil!8873)))

(declare-fun b!826499 () Bool)

(declare-fun call!48036 () List!8889)

(assert (=> b!826499 (= e!545303 call!48036)))

(declare-fun b!826500 () Bool)

(assert (=> b!826500 (= e!545304 (Cons!8873 (c!134162 (ite c!134242 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) Nil!8873))))

(declare-fun b!826501 () Bool)

(assert (=> b!826501 (= e!545303 call!48036)))

(declare-fun bm!48031 () Bool)

(assert (=> bm!48031 (= call!48036 (++!2290 (ite c!134279 call!48033 call!48034) (ite c!134279 call!48034 call!48033)))))

(assert (= (and d!259429 c!134278) b!826498))

(assert (= (and d!259429 (not c!134278)) b!826494))

(assert (= (and b!826494 c!134280) b!826500))

(assert (= (and b!826494 (not c!134280)) b!826497))

(assert (= (and b!826497 c!134277) b!826496))

(assert (= (and b!826497 (not c!134277)) b!826495))

(assert (= (and b!826495 c!134279) b!826499))

(assert (= (and b!826495 (not c!134279)) b!826501))

(assert (= (or b!826499 b!826501) bm!48029))

(assert (= (or b!826499 b!826501) bm!48028))

(assert (= (or b!826499 b!826501) bm!48031))

(assert (= (or b!826496 bm!48029) bm!48030))

(declare-fun m!1065235 () Bool)

(assert (=> bm!48028 m!1065235))

(declare-fun m!1065237 () Bool)

(assert (=> bm!48030 m!1065237))

(declare-fun m!1065239 () Bool)

(assert (=> bm!48031 m!1065239))

(assert (=> bm!47989 d!259429))

(declare-fun d!259431 () Bool)

(declare-fun c!134281 () Bool)

(assert (=> d!259431 (= c!134281 ((_ is Nil!8873) (usedCharacters!162 (regOne!4639 r!27177))))))

(declare-fun e!545306 () (InoxSet C!4696))

(assert (=> d!259431 (= (content!1302 (usedCharacters!162 (regOne!4639 r!27177))) e!545306)))

(declare-fun b!826502 () Bool)

(assert (=> b!826502 (= e!545306 ((as const (Array C!4696 Bool)) false))))

(declare-fun b!826503 () Bool)

(assert (=> b!826503 (= e!545306 ((_ map or) (store ((as const (Array C!4696 Bool)) false) (h!14274 (usedCharacters!162 (regOne!4639 r!27177))) true) (content!1302 (t!93181 (usedCharacters!162 (regOne!4639 r!27177))))))))

(assert (= (and d!259431 c!134281) b!826502))

(assert (= (and d!259431 (not c!134281)) b!826503))

(declare-fun m!1065241 () Bool)

(assert (=> b!826503 m!1065241))

(assert (=> b!826503 m!1065175))

(assert (=> d!259391 d!259431))

(declare-fun b!826506 () Bool)

(declare-fun res!380499 () Bool)

(declare-fun e!545308 () Bool)

(assert (=> b!826506 (=> (not res!380499) (not e!545308))))

(declare-fun lt!317541 () List!8889)

(assert (=> b!826506 (= res!380499 (= (size!7472 lt!317541) (+ (size!7472 (ite c!134249 call!48005 call!48006)) (size!7472 (ite c!134249 call!48006 call!48005)))))))

(declare-fun b!826507 () Bool)

(assert (=> b!826507 (= e!545308 (or (not (= (ite c!134249 call!48006 call!48005) Nil!8873)) (= lt!317541 (ite c!134249 call!48005 call!48006))))))

(declare-fun b!826504 () Bool)

(declare-fun e!545307 () List!8889)

(assert (=> b!826504 (= e!545307 (ite c!134249 call!48006 call!48005))))

(declare-fun b!826505 () Bool)

(assert (=> b!826505 (= e!545307 (Cons!8873 (h!14274 (ite c!134249 call!48005 call!48006)) (++!2290 (t!93181 (ite c!134249 call!48005 call!48006)) (ite c!134249 call!48006 call!48005))))))

(declare-fun d!259433 () Bool)

(assert (=> d!259433 e!545308))

(declare-fun res!380498 () Bool)

(assert (=> d!259433 (=> (not res!380498) (not e!545308))))

(assert (=> d!259433 (= res!380498 (= (content!1302 lt!317541) ((_ map or) (content!1302 (ite c!134249 call!48005 call!48006)) (content!1302 (ite c!134249 call!48006 call!48005)))))))

(assert (=> d!259433 (= lt!317541 e!545307)))

(declare-fun c!134282 () Bool)

(assert (=> d!259433 (= c!134282 ((_ is Nil!8873) (ite c!134249 call!48005 call!48006)))))

(assert (=> d!259433 (= (++!2290 (ite c!134249 call!48005 call!48006) (ite c!134249 call!48006 call!48005)) lt!317541)))

(assert (= (and d!259433 c!134282) b!826504))

(assert (= (and d!259433 (not c!134282)) b!826505))

(assert (= (and d!259433 res!380498) b!826506))

(assert (= (and b!826506 res!380499) b!826507))

(declare-fun m!1065243 () Bool)

(assert (=> b!826506 m!1065243))

(declare-fun m!1065245 () Bool)

(assert (=> b!826506 m!1065245))

(declare-fun m!1065247 () Bool)

(assert (=> b!826506 m!1065247))

(declare-fun m!1065249 () Bool)

(assert (=> b!826505 m!1065249))

(declare-fun m!1065251 () Bool)

(assert (=> d!259433 m!1065251))

(declare-fun m!1065253 () Bool)

(assert (=> d!259433 m!1065253))

(declare-fun m!1065255 () Bool)

(assert (=> d!259433 m!1065255))

(assert (=> bm!48003 d!259433))

(declare-fun call!48037 () List!8889)

(declare-fun bm!48032 () Bool)

(declare-fun c!134284 () Bool)

(assert (=> bm!48032 (= call!48037 (firstChars!34 (ite c!134284 (regOne!4639 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (regTwo!4638 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))))

(declare-fun b!826508 () Bool)

(declare-fun e!545311 () List!8889)

(declare-fun call!48039 () List!8889)

(assert (=> b!826508 (= e!545311 call!48039)))

(declare-fun d!259435 () Bool)

(declare-fun c!134283 () Bool)

(assert (=> d!259435 (= c!134283 (or ((_ is EmptyExpr!2063) (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) ((_ is EmptyLang!2063) (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))

(declare-fun e!545312 () List!8889)

(assert (=> d!259435 (= (firstChars!34 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) e!545312)))

(declare-fun b!826509 () Bool)

(declare-fun e!545313 () List!8889)

(assert (=> b!826509 (= e!545313 (Cons!8873 (c!134162 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) Nil!8873))))

(declare-fun b!826510 () Bool)

(assert (=> b!826510 (= e!545312 Nil!8873)))

(declare-fun bm!48033 () Bool)

(declare-fun call!48040 () List!8889)

(assert (=> bm!48033 (= call!48039 call!48040)))

(declare-fun call!48038 () List!8889)

(declare-fun bm!48034 () Bool)

(assert (=> bm!48034 (= call!48038 (++!2290 (ite c!134284 call!48037 call!48039) (ite c!134284 call!48040 call!48037)))))

(declare-fun b!826511 () Bool)

(assert (=> b!826511 (= e!545312 e!545313)))

(declare-fun c!134286 () Bool)

(assert (=> b!826511 (= c!134286 ((_ is ElementMatch!2063) (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun bm!48035 () Bool)

(declare-fun call!48041 () List!8889)

(assert (=> bm!48035 (= call!48040 call!48041)))

(declare-fun b!826512 () Bool)

(declare-fun c!134287 () Bool)

(assert (=> b!826512 (= c!134287 (nullable!514 (regOne!4638 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))

(declare-fun e!545309 () List!8889)

(assert (=> b!826512 (= e!545309 e!545311)))

(declare-fun b!826513 () Bool)

(declare-fun e!545310 () List!8889)

(assert (=> b!826513 (= e!545310 call!48041)))

(declare-fun c!134285 () Bool)

(declare-fun b!826514 () Bool)

(assert (=> b!826514 (= c!134285 ((_ is Star!2063) (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(assert (=> b!826514 (= e!545313 e!545310)))

(declare-fun b!826515 () Bool)

(assert (=> b!826515 (= e!545311 call!48038)))

(declare-fun b!826516 () Bool)

(assert (=> b!826516 (= e!545309 call!48038)))

(declare-fun bm!48036 () Bool)

(assert (=> bm!48036 (= call!48041 (firstChars!34 (ite c!134285 (reg!2392 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (ite c!134284 (regTwo!4639 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (regOne!4638 (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))))

(declare-fun b!826517 () Bool)

(assert (=> b!826517 (= e!545310 e!545309)))

(assert (=> b!826517 (= c!134284 ((_ is Union!2063) (ite c!134195 (reg!2392 r!27177) (ite c!134194 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(assert (= (and d!259435 c!134283) b!826510))

(assert (= (and d!259435 (not c!134283)) b!826511))

(assert (= (and b!826511 c!134286) b!826509))

(assert (= (and b!826511 (not c!134286)) b!826514))

(assert (= (and b!826514 c!134285) b!826513))

(assert (= (and b!826514 (not c!134285)) b!826517))

(assert (= (and b!826517 c!134284) b!826516))

(assert (= (and b!826517 (not c!134284)) b!826512))

(assert (= (and b!826512 c!134287) b!826515))

(assert (= (and b!826512 (not c!134287)) b!826508))

(assert (= (or b!826515 b!826508) bm!48033))

(assert (= (or b!826516 bm!48033) bm!48035))

(assert (= (or b!826516 b!826515) bm!48032))

(assert (= (or b!826516 b!826515) bm!48034))

(assert (= (or b!826513 bm!48035) bm!48036))

(declare-fun m!1065257 () Bool)

(assert (=> bm!48032 m!1065257))

(declare-fun m!1065259 () Bool)

(assert (=> bm!48034 m!1065259))

(declare-fun m!1065261 () Bool)

(assert (=> b!826512 m!1065261))

(declare-fun m!1065263 () Bool)

(assert (=> bm!48036 m!1065263))

(assert (=> bm!47945 d!259435))

(declare-fun d!259437 () Bool)

(declare-fun c!134288 () Bool)

(assert (=> d!259437 (= c!134288 ((_ is Nil!8873) (firstChars!34 (regOne!4639 r!27177))))))

(declare-fun e!545314 () (InoxSet C!4696))

(assert (=> d!259437 (= (content!1302 (firstChars!34 (regOne!4639 r!27177))) e!545314)))

(declare-fun b!826518 () Bool)

(assert (=> b!826518 (= e!545314 ((as const (Array C!4696 Bool)) false))))

(declare-fun b!826519 () Bool)

(assert (=> b!826519 (= e!545314 ((_ map or) (store ((as const (Array C!4696 Bool)) false) (h!14274 (firstChars!34 (regOne!4639 r!27177))) true) (content!1302 (t!93181 (firstChars!34 (regOne!4639 r!27177))))))))

(assert (= (and d!259437 c!134288) b!826518))

(assert (= (and d!259437 (not c!134288)) b!826519))

(declare-fun m!1065265 () Bool)

(assert (=> b!826519 m!1065265))

(assert (=> b!826519 m!1065217))

(assert (=> d!259355 d!259437))

(declare-fun b!826520 () Bool)

(declare-fun e!545318 () List!8889)

(declare-fun e!545317 () List!8889)

(assert (=> b!826520 (= e!545318 e!545317)))

(declare-fun c!134292 () Bool)

(assert (=> b!826520 (= c!134292 ((_ is ElementMatch!2063) (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun b!826521 () Bool)

(declare-fun e!545315 () List!8889)

(declare-fun e!545316 () List!8889)

(assert (=> b!826521 (= e!545315 e!545316)))

(declare-fun c!134291 () Bool)

(assert (=> b!826521 (= c!134291 ((_ is Union!2063) (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(declare-fun call!48042 () List!8889)

(declare-fun bm!48037 () Bool)

(assert (=> bm!48037 (= call!48042 (usedCharacters!162 (ite c!134291 (regOne!4639 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (regTwo!4638 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))))

(declare-fun bm!48038 () Bool)

(declare-fun call!48043 () List!8889)

(declare-fun call!48044 () List!8889)

(assert (=> bm!48038 (= call!48043 call!48044)))

(declare-fun b!826522 () Bool)

(assert (=> b!826522 (= e!545315 call!48044)))

(declare-fun d!259439 () Bool)

(declare-fun c!134290 () Bool)

(assert (=> d!259439 (= c!134290 (or ((_ is EmptyExpr!2063) (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) ((_ is EmptyLang!2063) (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))

(assert (=> d!259439 (= (usedCharacters!162 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) e!545318)))

(declare-fun bm!48039 () Bool)

(declare-fun c!134289 () Bool)

(assert (=> bm!48039 (= call!48044 (usedCharacters!162 (ite c!134289 (reg!2392 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (ite c!134291 (regTwo!4639 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) (regOne!4638 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177))))))))))

(declare-fun b!826523 () Bool)

(assert (=> b!826523 (= c!134289 ((_ is Star!2063) (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))))))

(assert (=> b!826523 (= e!545317 e!545315)))

(declare-fun b!826524 () Bool)

(assert (=> b!826524 (= e!545318 Nil!8873)))

(declare-fun b!826525 () Bool)

(declare-fun call!48045 () List!8889)

(assert (=> b!826525 (= e!545316 call!48045)))

(declare-fun b!826526 () Bool)

(assert (=> b!826526 (= e!545317 (Cons!8873 (c!134162 (ite c!134247 (reg!2392 r!27177) (ite c!134249 (regTwo!4639 r!27177) (regOne!4638 r!27177)))) Nil!8873))))

(declare-fun b!826527 () Bool)

(assert (=> b!826527 (= e!545316 call!48045)))

(declare-fun bm!48040 () Bool)

(assert (=> bm!48040 (= call!48045 (++!2290 (ite c!134291 call!48042 call!48043) (ite c!134291 call!48043 call!48042)))))

(assert (= (and d!259439 c!134290) b!826524))

(assert (= (and d!259439 (not c!134290)) b!826520))

(assert (= (and b!826520 c!134292) b!826526))

(assert (= (and b!826520 (not c!134292)) b!826523))

(assert (= (and b!826523 c!134289) b!826522))

(assert (= (and b!826523 (not c!134289)) b!826521))

(assert (= (and b!826521 c!134291) b!826525))

(assert (= (and b!826521 (not c!134291)) b!826527))

(assert (= (or b!826525 b!826527) bm!48038))

(assert (= (or b!826525 b!826527) bm!48037))

(assert (= (or b!826525 b!826527) bm!48040))

(assert (= (or b!826522 bm!48038) bm!48039))

(declare-fun m!1065267 () Bool)

(assert (=> bm!48037 m!1065267))

(declare-fun m!1065269 () Bool)

(assert (=> bm!48039 m!1065269))

(declare-fun m!1065271 () Bool)

(assert (=> bm!48040 m!1065271))

(assert (=> bm!48002 d!259439))

(assert (=> d!259393 d!259391))

(assert (=> d!259393 d!259379))

(declare-fun d!259441 () Bool)

(assert (=> d!259441 (contains!1654 (usedCharacters!162 (regOne!4639 r!27177)) c!13916)))

(assert (=> d!259441 true))

(declare-fun _$135!67 () Unit!13375)

(assert (=> d!259441 (= (choose!4932 (regOne!4639 r!27177) c!13916) _$135!67)))

(declare-fun bs!229589 () Bool)

(assert (= bs!229589 d!259441))

(assert (=> bs!229589 m!1064999))

(assert (=> bs!229589 m!1064999))

(assert (=> bs!229589 m!1065001))

(assert (=> d!259393 d!259441))

(assert (=> d!259393 d!259369))

(declare-fun d!259443 () Bool)

(declare-fun c!134294 () Bool)

(assert (=> d!259443 (= c!134294 ((_ is Nil!8873) (firstChars!34 r!27177)))))

(declare-fun e!545319 () (InoxSet C!4696))

(assert (=> d!259443 (= (content!1302 (firstChars!34 r!27177)) e!545319)))

(declare-fun b!826528 () Bool)

(assert (=> b!826528 (= e!545319 ((as const (Array C!4696 Bool)) false))))

(declare-fun b!826529 () Bool)

(assert (=> b!826529 (= e!545319 ((_ map or) (store ((as const (Array C!4696 Bool)) false) (h!14274 (firstChars!34 r!27177)) true) (content!1302 (t!93181 (firstChars!34 r!27177)))))))

(assert (= (and d!259443 c!134294) b!826528))

(assert (= (and d!259443 (not c!134294)) b!826529))

(declare-fun m!1065273 () Bool)

(assert (=> b!826529 m!1065273))

(assert (=> b!826529 m!1065223))

(assert (=> d!259365 d!259443))

(declare-fun c!134296 () Bool)

(declare-fun call!48046 () List!8889)

(declare-fun bm!48041 () Bool)

(assert (=> bm!48041 (= call!48046 (firstChars!34 (ite c!134296 (regOne!4639 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (regTwo!4638 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))))

(declare-fun b!826530 () Bool)

(declare-fun e!545322 () List!8889)

(declare-fun call!48048 () List!8889)

(assert (=> b!826530 (= e!545322 call!48048)))

(declare-fun d!259445 () Bool)

(declare-fun c!134295 () Bool)

(assert (=> d!259445 (= c!134295 (or ((_ is EmptyExpr!2063) (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) ((_ is EmptyLang!2063) (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))

(declare-fun e!545323 () List!8889)

(assert (=> d!259445 (= (firstChars!34 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) e!545323)))

(declare-fun b!826531 () Bool)

(declare-fun e!545324 () List!8889)

(assert (=> b!826531 (= e!545324 (Cons!8873 (c!134162 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) Nil!8873))))

(declare-fun b!826532 () Bool)

(assert (=> b!826532 (= e!545323 Nil!8873)))

(declare-fun bm!48042 () Bool)

(declare-fun call!48049 () List!8889)

(assert (=> bm!48042 (= call!48048 call!48049)))

(declare-fun call!48047 () List!8889)

(declare-fun bm!48043 () Bool)

(assert (=> bm!48043 (= call!48047 (++!2290 (ite c!134296 call!48046 call!48048) (ite c!134296 call!48049 call!48046)))))

(declare-fun b!826533 () Bool)

(assert (=> b!826533 (= e!545323 e!545324)))

(declare-fun c!134298 () Bool)

(assert (=> b!826533 (= c!134298 ((_ is ElementMatch!2063) (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(declare-fun bm!48044 () Bool)

(declare-fun call!48050 () List!8889)

(assert (=> bm!48044 (= call!48049 call!48050)))

(declare-fun c!134299 () Bool)

(declare-fun b!826534 () Bool)

(assert (=> b!826534 (= c!134299 (nullable!514 (regOne!4638 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))

(declare-fun e!545320 () List!8889)

(assert (=> b!826534 (= e!545320 e!545322)))

(declare-fun b!826535 () Bool)

(declare-fun e!545321 () List!8889)

(assert (=> b!826535 (= e!545321 call!48050)))

(declare-fun c!134297 () Bool)

(declare-fun b!826536 () Bool)

(assert (=> b!826536 (= c!134297 ((_ is Star!2063) (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(assert (=> b!826536 (= e!545324 e!545321)))

(declare-fun b!826537 () Bool)

(assert (=> b!826537 (= e!545322 call!48047)))

(declare-fun b!826538 () Bool)

(assert (=> b!826538 (= e!545320 call!48047)))

(declare-fun bm!48045 () Bool)

(assert (=> bm!48045 (= call!48050 (firstChars!34 (ite c!134297 (reg!2392 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (ite c!134296 (regTwo!4639 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))) (regOne!4638 (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177)))))))))))

(declare-fun b!826539 () Bool)

(assert (=> b!826539 (= e!545321 e!545320)))

(assert (=> b!826539 (= c!134296 ((_ is Union!2063) (ite c!134189 (reg!2392 (regOne!4639 r!27177)) (ite c!134187 (regTwo!4639 (regOne!4639 r!27177)) (regOne!4638 (regOne!4639 r!27177))))))))

(assert (= (and d!259445 c!134295) b!826532))

(assert (= (and d!259445 (not c!134295)) b!826533))

(assert (= (and b!826533 c!134298) b!826531))

(assert (= (and b!826533 (not c!134298)) b!826536))

(assert (= (and b!826536 c!134297) b!826535))

(assert (= (and b!826536 (not c!134297)) b!826539))

(assert (= (and b!826539 c!134296) b!826538))

(assert (= (and b!826539 (not c!134296)) b!826534))

(assert (= (and b!826534 c!134299) b!826537))

(assert (= (and b!826534 (not c!134299)) b!826530))

(assert (= (or b!826537 b!826530) bm!48042))

(assert (= (or b!826538 bm!48042) bm!48044))

(assert (= (or b!826538 b!826537) bm!48041))

(assert (= (or b!826538 b!826537) bm!48043))

(assert (= (or b!826535 bm!48044) bm!48045))

(declare-fun m!1065275 () Bool)

(assert (=> bm!48041 m!1065275))

(declare-fun m!1065277 () Bool)

(assert (=> bm!48043 m!1065277))

(declare-fun m!1065279 () Bool)

(assert (=> b!826534 m!1065279))

(declare-fun m!1065281 () Bool)

(assert (=> bm!48045 m!1065281))

(assert (=> bm!47940 d!259445))

(declare-fun b!826542 () Bool)

(declare-fun res!380501 () Bool)

(declare-fun e!545326 () Bool)

(assert (=> b!826542 (=> (not res!380501) (not e!545326))))

(declare-fun lt!317542 () List!8889)

(assert (=> b!826542 (= res!380501 (= (size!7472 lt!317542) (+ (size!7472 (ite c!134242 call!47994 call!47995)) (size!7472 (ite c!134242 call!47995 call!47994)))))))

(declare-fun b!826543 () Bool)

(assert (=> b!826543 (= e!545326 (or (not (= (ite c!134242 call!47995 call!47994) Nil!8873)) (= lt!317542 (ite c!134242 call!47994 call!47995))))))

(declare-fun b!826540 () Bool)

(declare-fun e!545325 () List!8889)

(assert (=> b!826540 (= e!545325 (ite c!134242 call!47995 call!47994))))

(declare-fun b!826541 () Bool)

(assert (=> b!826541 (= e!545325 (Cons!8873 (h!14274 (ite c!134242 call!47994 call!47995)) (++!2290 (t!93181 (ite c!134242 call!47994 call!47995)) (ite c!134242 call!47995 call!47994))))))

(declare-fun d!259447 () Bool)

(assert (=> d!259447 e!545326))

(declare-fun res!380500 () Bool)

(assert (=> d!259447 (=> (not res!380500) (not e!545326))))

(assert (=> d!259447 (= res!380500 (= (content!1302 lt!317542) ((_ map or) (content!1302 (ite c!134242 call!47994 call!47995)) (content!1302 (ite c!134242 call!47995 call!47994)))))))

(assert (=> d!259447 (= lt!317542 e!545325)))

(declare-fun c!134300 () Bool)

(assert (=> d!259447 (= c!134300 ((_ is Nil!8873) (ite c!134242 call!47994 call!47995)))))

(assert (=> d!259447 (= (++!2290 (ite c!134242 call!47994 call!47995) (ite c!134242 call!47995 call!47994)) lt!317542)))

(assert (= (and d!259447 c!134300) b!826540))

(assert (= (and d!259447 (not c!134300)) b!826541))

(assert (= (and d!259447 res!380500) b!826542))

(assert (= (and b!826542 res!380501) b!826543))

(declare-fun m!1065283 () Bool)

(assert (=> b!826542 m!1065283))

(declare-fun m!1065285 () Bool)

(assert (=> b!826542 m!1065285))

(declare-fun m!1065287 () Bool)

(assert (=> b!826542 m!1065287))

(declare-fun m!1065289 () Bool)

(assert (=> b!826541 m!1065289))

(declare-fun m!1065291 () Bool)

(assert (=> d!259447 m!1065291))

(declare-fun m!1065293 () Bool)

(assert (=> d!259447 m!1065293))

(declare-fun m!1065295 () Bool)

(assert (=> d!259447 m!1065295))

(assert (=> bm!47992 d!259447))

(declare-fun call!48051 () List!8889)

(declare-fun bm!48046 () Bool)

(declare-fun c!134302 () Bool)

(assert (=> bm!48046 (= call!48051 (firstChars!34 (ite c!134302 (regOne!4639 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (regTwo!4638 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))))

(declare-fun b!826544 () Bool)

(declare-fun e!545329 () List!8889)

(declare-fun call!48053 () List!8889)

(assert (=> b!826544 (= e!545329 call!48053)))

(declare-fun d!259449 () Bool)

(declare-fun c!134301 () Bool)

(assert (=> d!259449 (= c!134301 (or ((_ is EmptyExpr!2063) (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) ((_ is EmptyLang!2063) (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))

(declare-fun e!545330 () List!8889)

(assert (=> d!259449 (= (firstChars!34 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) e!545330)))

(declare-fun b!826545 () Bool)

(declare-fun e!545331 () List!8889)

(assert (=> b!826545 (= e!545331 (Cons!8873 (c!134162 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) Nil!8873))))

(declare-fun b!826546 () Bool)

(assert (=> b!826546 (= e!545330 Nil!8873)))

(declare-fun bm!48047 () Bool)

(declare-fun call!48054 () List!8889)

(assert (=> bm!48047 (= call!48053 call!48054)))

(declare-fun call!48052 () List!8889)

(declare-fun bm!48048 () Bool)

(assert (=> bm!48048 (= call!48052 (++!2290 (ite c!134302 call!48051 call!48053) (ite c!134302 call!48054 call!48051)))))

(declare-fun b!826547 () Bool)

(assert (=> b!826547 (= e!545330 e!545331)))

(declare-fun c!134304 () Bool)

(assert (=> b!826547 (= c!134304 ((_ is ElementMatch!2063) (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(declare-fun bm!48049 () Bool)

(declare-fun call!48055 () List!8889)

(assert (=> bm!48049 (= call!48054 call!48055)))

(declare-fun b!826548 () Bool)

(declare-fun c!134305 () Bool)

(assert (=> b!826548 (= c!134305 (nullable!514 (regOne!4638 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))

(declare-fun e!545327 () List!8889)

(assert (=> b!826548 (= e!545327 e!545329)))

(declare-fun b!826549 () Bool)

(declare-fun e!545328 () List!8889)

(assert (=> b!826549 (= e!545328 call!48055)))

(declare-fun b!826550 () Bool)

(declare-fun c!134303 () Bool)

(assert (=> b!826550 (= c!134303 ((_ is Star!2063) (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(assert (=> b!826550 (= e!545331 e!545328)))

(declare-fun b!826551 () Bool)

(assert (=> b!826551 (= e!545329 call!48052)))

(declare-fun b!826552 () Bool)

(assert (=> b!826552 (= e!545327 call!48052)))

(declare-fun bm!48050 () Bool)

(assert (=> bm!48050 (= call!48055 (firstChars!34 (ite c!134303 (reg!2392 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (ite c!134302 (regTwo!4639 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))) (regOne!4638 (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177))))))))))

(declare-fun b!826553 () Bool)

(assert (=> b!826553 (= e!545328 e!545327)))

(assert (=> b!826553 (= c!134302 ((_ is Union!2063) (ite c!134187 (regOne!4639 (regOne!4639 r!27177)) (regTwo!4638 (regOne!4639 r!27177)))))))

(assert (= (and d!259449 c!134301) b!826546))

(assert (= (and d!259449 (not c!134301)) b!826547))

(assert (= (and b!826547 c!134304) b!826545))

(assert (= (and b!826547 (not c!134304)) b!826550))

(assert (= (and b!826550 c!134303) b!826549))

(assert (= (and b!826550 (not c!134303)) b!826553))

(assert (= (and b!826553 c!134302) b!826552))

(assert (= (and b!826553 (not c!134302)) b!826548))

(assert (= (and b!826548 c!134305) b!826551))

(assert (= (and b!826548 (not c!134305)) b!826544))

(assert (= (or b!826551 b!826544) bm!48047))

(assert (= (or b!826552 bm!48047) bm!48049))

(assert (= (or b!826552 b!826551) bm!48046))

(assert (= (or b!826552 b!826551) bm!48048))

(assert (= (or b!826549 bm!48049) bm!48050))

(declare-fun m!1065297 () Bool)

(assert (=> bm!48046 m!1065297))

(declare-fun m!1065299 () Bool)

(assert (=> bm!48048 m!1065299))

(declare-fun m!1065301 () Bool)

(assert (=> b!826548 m!1065301))

(declare-fun m!1065303 () Bool)

(assert (=> bm!48050 m!1065303))

(assert (=> bm!47932 d!259449))

(declare-fun b!826554 () Bool)

(declare-fun e!545335 () List!8889)

(declare-fun e!545334 () List!8889)

(assert (=> b!826554 (= e!545335 e!545334)))

(declare-fun c!134309 () Bool)

(assert (=> b!826554 (= c!134309 ((_ is ElementMatch!2063) (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun b!826555 () Bool)

(declare-fun e!545332 () List!8889)

(declare-fun e!545333 () List!8889)

(assert (=> b!826555 (= e!545332 e!545333)))

(declare-fun c!134308 () Bool)

(assert (=> b!826555 (= c!134308 ((_ is Union!2063) (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(declare-fun bm!48051 () Bool)

(declare-fun call!48056 () List!8889)

(assert (=> bm!48051 (= call!48056 (usedCharacters!162 (ite c!134308 (regOne!4639 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (regTwo!4638 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))))

(declare-fun bm!48052 () Bool)

(declare-fun call!48057 () List!8889)

(declare-fun call!48058 () List!8889)

(assert (=> bm!48052 (= call!48057 call!48058)))

(declare-fun b!826556 () Bool)

(assert (=> b!826556 (= e!545332 call!48058)))

(declare-fun d!259451 () Bool)

(declare-fun c!134307 () Bool)

(assert (=> d!259451 (= c!134307 (or ((_ is EmptyExpr!2063) (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))) ((_ is EmptyLang!2063) (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))

(assert (=> d!259451 (= (usedCharacters!162 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))) e!545335)))

(declare-fun c!134306 () Bool)

(declare-fun bm!48053 () Bool)

(assert (=> bm!48053 (= call!48058 (usedCharacters!162 (ite c!134306 (reg!2392 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (ite c!134308 (regTwo!4639 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))) (regOne!4638 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177)))))))))

(declare-fun b!826557 () Bool)

(assert (=> b!826557 (= c!134306 ((_ is Star!2063) (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))))))

(assert (=> b!826557 (= e!545334 e!545332)))

(declare-fun b!826558 () Bool)

(assert (=> b!826558 (= e!545335 Nil!8873)))

(declare-fun b!826559 () Bool)

(declare-fun call!48059 () List!8889)

(assert (=> b!826559 (= e!545333 call!48059)))

(declare-fun b!826560 () Bool)

(assert (=> b!826560 (= e!545334 (Cons!8873 (c!134162 (ite c!134249 (regOne!4639 r!27177) (regTwo!4638 r!27177))) Nil!8873))))

(declare-fun b!826561 () Bool)

(assert (=> b!826561 (= e!545333 call!48059)))

(declare-fun bm!48054 () Bool)

(assert (=> bm!48054 (= call!48059 (++!2290 (ite c!134308 call!48056 call!48057) (ite c!134308 call!48057 call!48056)))))

(assert (= (and d!259451 c!134307) b!826558))

(assert (= (and d!259451 (not c!134307)) b!826554))

(assert (= (and b!826554 c!134309) b!826560))

(assert (= (and b!826554 (not c!134309)) b!826557))

(assert (= (and b!826557 c!134306) b!826556))

(assert (= (and b!826557 (not c!134306)) b!826555))

(assert (= (and b!826555 c!134308) b!826559))

(assert (= (and b!826555 (not c!134308)) b!826561))

(assert (= (or b!826559 b!826561) bm!48052))

(assert (= (or b!826559 b!826561) bm!48051))

(assert (= (or b!826559 b!826561) bm!48054))

(assert (= (or b!826556 bm!48052) bm!48053))

(declare-fun m!1065305 () Bool)

(assert (=> bm!48051 m!1065305))

(declare-fun m!1065307 () Bool)

(assert (=> bm!48053 m!1065307))

(declare-fun m!1065309 () Bool)

(assert (=> bm!48054 m!1065309))

(assert (=> bm!48000 d!259451))

(declare-fun d!259453 () Bool)

(assert (=> d!259453 (= (nullable!514 (regOne!4638 r!27177)) (nullableFct!154 (regOne!4638 r!27177)))))

(declare-fun bs!229590 () Bool)

(assert (= bs!229590 d!259453))

(declare-fun m!1065311 () Bool)

(assert (=> bs!229590 m!1065311))

(assert (=> b!826190 d!259453))

(declare-fun d!259455 () Bool)

(declare-fun lt!317543 () Bool)

(assert (=> d!259455 (= lt!317543 (select (content!1302 (t!93181 (usedCharacters!162 r!27177))) c!13916))))

(declare-fun e!545337 () Bool)

(assert (=> d!259455 (= lt!317543 e!545337)))

(declare-fun res!380502 () Bool)

(assert (=> d!259455 (=> (not res!380502) (not e!545337))))

(assert (=> d!259455 (= res!380502 ((_ is Cons!8873) (t!93181 (usedCharacters!162 r!27177))))))

(assert (=> d!259455 (= (contains!1654 (t!93181 (usedCharacters!162 r!27177)) c!13916) lt!317543)))

(declare-fun b!826562 () Bool)

(declare-fun e!545336 () Bool)

(assert (=> b!826562 (= e!545337 e!545336)))

(declare-fun res!380503 () Bool)

(assert (=> b!826562 (=> res!380503 e!545336)))

(assert (=> b!826562 (= res!380503 (= (h!14274 (t!93181 (usedCharacters!162 r!27177))) c!13916))))

(declare-fun b!826563 () Bool)

(assert (=> b!826563 (= e!545336 (contains!1654 (t!93181 (t!93181 (usedCharacters!162 r!27177))) c!13916))))

(assert (= (and d!259455 res!380502) b!826562))

(assert (= (and b!826562 (not res!380503)) b!826563))

(assert (=> d!259455 m!1065173))

(declare-fun m!1065313 () Bool)

(assert (=> d!259455 m!1065313))

(declare-fun m!1065315 () Bool)

(assert (=> b!826563 m!1065315))

(assert (=> b!826323 d!259455))

(declare-fun b!826564 () Bool)

(declare-fun e!545338 () Bool)

(assert (=> b!826564 (= e!545338 tp_is_empty!3849)))

(assert (=> b!826379 (= tp!258340 e!545338)))

(declare-fun b!826567 () Bool)

(declare-fun tp!258385 () Bool)

(declare-fun tp!258389 () Bool)

(assert (=> b!826567 (= e!545338 (and tp!258385 tp!258389))))

(declare-fun b!826565 () Bool)

(declare-fun tp!258386 () Bool)

(declare-fun tp!258387 () Bool)

(assert (=> b!826565 (= e!545338 (and tp!258386 tp!258387))))

(declare-fun b!826566 () Bool)

(declare-fun tp!258388 () Bool)

(assert (=> b!826566 (= e!545338 tp!258388)))

(assert (= (and b!826379 ((_ is ElementMatch!2063) (regOne!4639 (regOne!4638 r!27177)))) b!826564))

(assert (= (and b!826379 ((_ is Concat!3794) (regOne!4639 (regOne!4638 r!27177)))) b!826565))

(assert (= (and b!826379 ((_ is Star!2063) (regOne!4639 (regOne!4638 r!27177)))) b!826566))

(assert (= (and b!826379 ((_ is Union!2063) (regOne!4639 (regOne!4638 r!27177)))) b!826567))

(declare-fun b!826568 () Bool)

(declare-fun e!545339 () Bool)

(assert (=> b!826568 (= e!545339 tp_is_empty!3849)))

(assert (=> b!826379 (= tp!258344 e!545339)))

(declare-fun b!826571 () Bool)

(declare-fun tp!258390 () Bool)

(declare-fun tp!258394 () Bool)

(assert (=> b!826571 (= e!545339 (and tp!258390 tp!258394))))

(declare-fun b!826569 () Bool)

(declare-fun tp!258391 () Bool)

(declare-fun tp!258392 () Bool)

(assert (=> b!826569 (= e!545339 (and tp!258391 tp!258392))))

(declare-fun b!826570 () Bool)

(declare-fun tp!258393 () Bool)

(assert (=> b!826570 (= e!545339 tp!258393)))

(assert (= (and b!826379 ((_ is ElementMatch!2063) (regTwo!4639 (regOne!4638 r!27177)))) b!826568))

(assert (= (and b!826379 ((_ is Concat!3794) (regTwo!4639 (regOne!4638 r!27177)))) b!826569))

(assert (= (and b!826379 ((_ is Star!2063) (regTwo!4639 (regOne!4638 r!27177)))) b!826570))

(assert (= (and b!826379 ((_ is Union!2063) (regTwo!4639 (regOne!4638 r!27177)))) b!826571))

(declare-fun b!826572 () Bool)

(declare-fun e!545340 () Bool)

(assert (=> b!826572 (= e!545340 tp_is_empty!3849)))

(assert (=> b!826399 (= tp!258365 e!545340)))

(declare-fun b!826575 () Bool)

(declare-fun tp!258395 () Bool)

(declare-fun tp!258399 () Bool)

(assert (=> b!826575 (= e!545340 (and tp!258395 tp!258399))))

(declare-fun b!826573 () Bool)

(declare-fun tp!258396 () Bool)

(declare-fun tp!258397 () Bool)

(assert (=> b!826573 (= e!545340 (and tp!258396 tp!258397))))

(declare-fun b!826574 () Bool)

(declare-fun tp!258398 () Bool)

(assert (=> b!826574 (= e!545340 tp!258398)))

(assert (= (and b!826399 ((_ is ElementMatch!2063) (regOne!4639 (reg!2392 r!27177)))) b!826572))

(assert (= (and b!826399 ((_ is Concat!3794) (regOne!4639 (reg!2392 r!27177)))) b!826573))

(assert (= (and b!826399 ((_ is Star!2063) (regOne!4639 (reg!2392 r!27177)))) b!826574))

(assert (= (and b!826399 ((_ is Union!2063) (regOne!4639 (reg!2392 r!27177)))) b!826575))

(declare-fun b!826576 () Bool)

(declare-fun e!545341 () Bool)

(assert (=> b!826576 (= e!545341 tp_is_empty!3849)))

(assert (=> b!826399 (= tp!258369 e!545341)))

(declare-fun b!826579 () Bool)

(declare-fun tp!258400 () Bool)

(declare-fun tp!258404 () Bool)

(assert (=> b!826579 (= e!545341 (and tp!258400 tp!258404))))

(declare-fun b!826577 () Bool)

(declare-fun tp!258401 () Bool)

(declare-fun tp!258402 () Bool)

(assert (=> b!826577 (= e!545341 (and tp!258401 tp!258402))))

(declare-fun b!826578 () Bool)

(declare-fun tp!258403 () Bool)

(assert (=> b!826578 (= e!545341 tp!258403)))

(assert (= (and b!826399 ((_ is ElementMatch!2063) (regTwo!4639 (reg!2392 r!27177)))) b!826576))

(assert (= (and b!826399 ((_ is Concat!3794) (regTwo!4639 (reg!2392 r!27177)))) b!826577))

(assert (= (and b!826399 ((_ is Star!2063) (regTwo!4639 (reg!2392 r!27177)))) b!826578))

(assert (= (and b!826399 ((_ is Union!2063) (regTwo!4639 (reg!2392 r!27177)))) b!826579))

(declare-fun b!826580 () Bool)

(declare-fun e!545342 () Bool)

(assert (=> b!826580 (= e!545342 tp_is_empty!3849)))

(assert (=> b!826385 (= tp!258351 e!545342)))

(declare-fun b!826583 () Bool)

(declare-fun tp!258405 () Bool)

(declare-fun tp!258409 () Bool)

(assert (=> b!826583 (= e!545342 (and tp!258405 tp!258409))))

(declare-fun b!826581 () Bool)

(declare-fun tp!258406 () Bool)

(declare-fun tp!258407 () Bool)

(assert (=> b!826581 (= e!545342 (and tp!258406 tp!258407))))

(declare-fun b!826582 () Bool)

(declare-fun tp!258408 () Bool)

(assert (=> b!826582 (= e!545342 tp!258408)))

(assert (= (and b!826385 ((_ is ElementMatch!2063) (regOne!4638 (regTwo!4638 r!27177)))) b!826580))

(assert (= (and b!826385 ((_ is Concat!3794) (regOne!4638 (regTwo!4638 r!27177)))) b!826581))

(assert (= (and b!826385 ((_ is Star!2063) (regOne!4638 (regTwo!4638 r!27177)))) b!826582))

(assert (= (and b!826385 ((_ is Union!2063) (regOne!4638 (regTwo!4638 r!27177)))) b!826583))

(declare-fun b!826584 () Bool)

(declare-fun e!545343 () Bool)

(assert (=> b!826584 (= e!545343 tp_is_empty!3849)))

(assert (=> b!826385 (= tp!258352 e!545343)))

(declare-fun b!826587 () Bool)

(declare-fun tp!258410 () Bool)

(declare-fun tp!258414 () Bool)

(assert (=> b!826587 (= e!545343 (and tp!258410 tp!258414))))

(declare-fun b!826585 () Bool)

(declare-fun tp!258411 () Bool)

(declare-fun tp!258412 () Bool)

(assert (=> b!826585 (= e!545343 (and tp!258411 tp!258412))))

(declare-fun b!826586 () Bool)

(declare-fun tp!258413 () Bool)

(assert (=> b!826586 (= e!545343 tp!258413)))

(assert (= (and b!826385 ((_ is ElementMatch!2063) (regTwo!4638 (regTwo!4638 r!27177)))) b!826584))

(assert (= (and b!826385 ((_ is Concat!3794) (regTwo!4638 (regTwo!4638 r!27177)))) b!826585))

(assert (= (and b!826385 ((_ is Star!2063) (regTwo!4638 (regTwo!4638 r!27177)))) b!826586))

(assert (= (and b!826385 ((_ is Union!2063) (regTwo!4638 (regTwo!4638 r!27177)))) b!826587))

(declare-fun b!826588 () Bool)

(declare-fun e!545344 () Bool)

(assert (=> b!826588 (= e!545344 tp_is_empty!3849)))

(assert (=> b!826386 (= tp!258353 e!545344)))

(declare-fun b!826591 () Bool)

(declare-fun tp!258415 () Bool)

(declare-fun tp!258419 () Bool)

(assert (=> b!826591 (= e!545344 (and tp!258415 tp!258419))))

(declare-fun b!826589 () Bool)

(declare-fun tp!258416 () Bool)

(declare-fun tp!258417 () Bool)

(assert (=> b!826589 (= e!545344 (and tp!258416 tp!258417))))

(declare-fun b!826590 () Bool)

(declare-fun tp!258418 () Bool)

(assert (=> b!826590 (= e!545344 tp!258418)))

(assert (= (and b!826386 ((_ is ElementMatch!2063) (reg!2392 (regTwo!4638 r!27177)))) b!826588))

(assert (= (and b!826386 ((_ is Concat!3794) (reg!2392 (regTwo!4638 r!27177)))) b!826589))

(assert (= (and b!826386 ((_ is Star!2063) (reg!2392 (regTwo!4638 r!27177)))) b!826590))

(assert (= (and b!826386 ((_ is Union!2063) (reg!2392 (regTwo!4638 r!27177)))) b!826591))

(declare-fun b!826592 () Bool)

(declare-fun e!545345 () Bool)

(assert (=> b!826592 (= e!545345 tp_is_empty!3849)))

(assert (=> b!826377 (= tp!258341 e!545345)))

(declare-fun b!826595 () Bool)

(declare-fun tp!258420 () Bool)

(declare-fun tp!258424 () Bool)

(assert (=> b!826595 (= e!545345 (and tp!258420 tp!258424))))

(declare-fun b!826593 () Bool)

(declare-fun tp!258421 () Bool)

(declare-fun tp!258422 () Bool)

(assert (=> b!826593 (= e!545345 (and tp!258421 tp!258422))))

(declare-fun b!826594 () Bool)

(declare-fun tp!258423 () Bool)

(assert (=> b!826594 (= e!545345 tp!258423)))

(assert (= (and b!826377 ((_ is ElementMatch!2063) (regOne!4638 (regOne!4638 r!27177)))) b!826592))

(assert (= (and b!826377 ((_ is Concat!3794) (regOne!4638 (regOne!4638 r!27177)))) b!826593))

(assert (= (and b!826377 ((_ is Star!2063) (regOne!4638 (regOne!4638 r!27177)))) b!826594))

(assert (= (and b!826377 ((_ is Union!2063) (regOne!4638 (regOne!4638 r!27177)))) b!826595))

(declare-fun b!826596 () Bool)

(declare-fun e!545346 () Bool)

(assert (=> b!826596 (= e!545346 tp_is_empty!3849)))

(assert (=> b!826377 (= tp!258342 e!545346)))

(declare-fun b!826599 () Bool)

(declare-fun tp!258425 () Bool)

(declare-fun tp!258429 () Bool)

(assert (=> b!826599 (= e!545346 (and tp!258425 tp!258429))))

(declare-fun b!826597 () Bool)

(declare-fun tp!258426 () Bool)

(declare-fun tp!258427 () Bool)

(assert (=> b!826597 (= e!545346 (and tp!258426 tp!258427))))

(declare-fun b!826598 () Bool)

(declare-fun tp!258428 () Bool)

(assert (=> b!826598 (= e!545346 tp!258428)))

(assert (= (and b!826377 ((_ is ElementMatch!2063) (regTwo!4638 (regOne!4638 r!27177)))) b!826596))

(assert (= (and b!826377 ((_ is Concat!3794) (regTwo!4638 (regOne!4638 r!27177)))) b!826597))

(assert (= (and b!826377 ((_ is Star!2063) (regTwo!4638 (regOne!4638 r!27177)))) b!826598))

(assert (= (and b!826377 ((_ is Union!2063) (regTwo!4638 (regOne!4638 r!27177)))) b!826599))

(declare-fun b!826600 () Bool)

(declare-fun e!545347 () Bool)

(assert (=> b!826600 (= e!545347 tp_is_empty!3849)))

(assert (=> b!826378 (= tp!258343 e!545347)))

(declare-fun b!826603 () Bool)

(declare-fun tp!258430 () Bool)

(declare-fun tp!258434 () Bool)

(assert (=> b!826603 (= e!545347 (and tp!258430 tp!258434))))

(declare-fun b!826601 () Bool)

(declare-fun tp!258431 () Bool)

(declare-fun tp!258432 () Bool)

(assert (=> b!826601 (= e!545347 (and tp!258431 tp!258432))))

(declare-fun b!826602 () Bool)

(declare-fun tp!258433 () Bool)

(assert (=> b!826602 (= e!545347 tp!258433)))

(assert (= (and b!826378 ((_ is ElementMatch!2063) (reg!2392 (regOne!4638 r!27177)))) b!826600))

(assert (= (and b!826378 ((_ is Concat!3794) (reg!2392 (regOne!4638 r!27177)))) b!826601))

(assert (= (and b!826378 ((_ is Star!2063) (reg!2392 (regOne!4638 r!27177)))) b!826602))

(assert (= (and b!826378 ((_ is Union!2063) (reg!2392 (regOne!4638 r!27177)))) b!826603))

(declare-fun b!826604 () Bool)

(declare-fun e!545348 () Bool)

(assert (=> b!826604 (= e!545348 tp_is_empty!3849)))

(assert (=> b!826387 (= tp!258350 e!545348)))

(declare-fun b!826607 () Bool)

(declare-fun tp!258435 () Bool)

(declare-fun tp!258439 () Bool)

(assert (=> b!826607 (= e!545348 (and tp!258435 tp!258439))))

(declare-fun b!826605 () Bool)

(declare-fun tp!258436 () Bool)

(declare-fun tp!258437 () Bool)

(assert (=> b!826605 (= e!545348 (and tp!258436 tp!258437))))

(declare-fun b!826606 () Bool)

(declare-fun tp!258438 () Bool)

(assert (=> b!826606 (= e!545348 tp!258438)))

(assert (= (and b!826387 ((_ is ElementMatch!2063) (regOne!4639 (regTwo!4638 r!27177)))) b!826604))

(assert (= (and b!826387 ((_ is Concat!3794) (regOne!4639 (regTwo!4638 r!27177)))) b!826605))

(assert (= (and b!826387 ((_ is Star!2063) (regOne!4639 (regTwo!4638 r!27177)))) b!826606))

(assert (= (and b!826387 ((_ is Union!2063) (regOne!4639 (regTwo!4638 r!27177)))) b!826607))

(declare-fun b!826608 () Bool)

(declare-fun e!545349 () Bool)

(assert (=> b!826608 (= e!545349 tp_is_empty!3849)))

(assert (=> b!826387 (= tp!258354 e!545349)))

(declare-fun b!826611 () Bool)

(declare-fun tp!258440 () Bool)

(declare-fun tp!258444 () Bool)

(assert (=> b!826611 (= e!545349 (and tp!258440 tp!258444))))

(declare-fun b!826609 () Bool)

(declare-fun tp!258441 () Bool)

(declare-fun tp!258442 () Bool)

(assert (=> b!826609 (= e!545349 (and tp!258441 tp!258442))))

(declare-fun b!826610 () Bool)

(declare-fun tp!258443 () Bool)

(assert (=> b!826610 (= e!545349 tp!258443)))

(assert (= (and b!826387 ((_ is ElementMatch!2063) (regTwo!4639 (regTwo!4638 r!27177)))) b!826608))

(assert (= (and b!826387 ((_ is Concat!3794) (regTwo!4639 (regTwo!4638 r!27177)))) b!826609))

(assert (= (and b!826387 ((_ is Star!2063) (regTwo!4639 (regTwo!4638 r!27177)))) b!826610))

(assert (= (and b!826387 ((_ is Union!2063) (regTwo!4639 (regTwo!4638 r!27177)))) b!826611))

(declare-fun b!826612 () Bool)

(declare-fun e!545350 () Bool)

(assert (=> b!826612 (= e!545350 tp_is_empty!3849)))

(assert (=> b!826406 (= tp!258378 e!545350)))

(declare-fun b!826615 () Bool)

(declare-fun tp!258445 () Bool)

(declare-fun tp!258449 () Bool)

(assert (=> b!826615 (= e!545350 (and tp!258445 tp!258449))))

(declare-fun b!826613 () Bool)

(declare-fun tp!258446 () Bool)

(declare-fun tp!258447 () Bool)

(assert (=> b!826613 (= e!545350 (and tp!258446 tp!258447))))

(declare-fun b!826614 () Bool)

(declare-fun tp!258448 () Bool)

(assert (=> b!826614 (= e!545350 tp!258448)))

(assert (= (and b!826406 ((_ is ElementMatch!2063) (reg!2392 (regOne!4639 r!27177)))) b!826612))

(assert (= (and b!826406 ((_ is Concat!3794) (reg!2392 (regOne!4639 r!27177)))) b!826613))

(assert (= (and b!826406 ((_ is Star!2063) (reg!2392 (regOne!4639 r!27177)))) b!826614))

(assert (= (and b!826406 ((_ is Union!2063) (reg!2392 (regOne!4639 r!27177)))) b!826615))

(declare-fun b!826616 () Bool)

(declare-fun e!545351 () Bool)

(assert (=> b!826616 (= e!545351 tp_is_empty!3849)))

(assert (=> b!826411 (= tp!258380 e!545351)))

(declare-fun b!826619 () Bool)

(declare-fun tp!258450 () Bool)

(declare-fun tp!258454 () Bool)

(assert (=> b!826619 (= e!545351 (and tp!258450 tp!258454))))

(declare-fun b!826617 () Bool)

(declare-fun tp!258451 () Bool)

(declare-fun tp!258452 () Bool)

(assert (=> b!826617 (= e!545351 (and tp!258451 tp!258452))))

(declare-fun b!826618 () Bool)

(declare-fun tp!258453 () Bool)

(assert (=> b!826618 (= e!545351 tp!258453)))

(assert (= (and b!826411 ((_ is ElementMatch!2063) (regOne!4639 (regTwo!4639 r!27177)))) b!826616))

(assert (= (and b!826411 ((_ is Concat!3794) (regOne!4639 (regTwo!4639 r!27177)))) b!826617))

(assert (= (and b!826411 ((_ is Star!2063) (regOne!4639 (regTwo!4639 r!27177)))) b!826618))

(assert (= (and b!826411 ((_ is Union!2063) (regOne!4639 (regTwo!4639 r!27177)))) b!826619))

(declare-fun b!826620 () Bool)

(declare-fun e!545352 () Bool)

(assert (=> b!826620 (= e!545352 tp_is_empty!3849)))

(assert (=> b!826411 (= tp!258384 e!545352)))

(declare-fun b!826623 () Bool)

(declare-fun tp!258455 () Bool)

(declare-fun tp!258459 () Bool)

(assert (=> b!826623 (= e!545352 (and tp!258455 tp!258459))))

(declare-fun b!826621 () Bool)

(declare-fun tp!258456 () Bool)

(declare-fun tp!258457 () Bool)

(assert (=> b!826621 (= e!545352 (and tp!258456 tp!258457))))

(declare-fun b!826622 () Bool)

(declare-fun tp!258458 () Bool)

(assert (=> b!826622 (= e!545352 tp!258458)))

(assert (= (and b!826411 ((_ is ElementMatch!2063) (regTwo!4639 (regTwo!4639 r!27177)))) b!826620))

(assert (= (and b!826411 ((_ is Concat!3794) (regTwo!4639 (regTwo!4639 r!27177)))) b!826621))

(assert (= (and b!826411 ((_ is Star!2063) (regTwo!4639 (regTwo!4639 r!27177)))) b!826622))

(assert (= (and b!826411 ((_ is Union!2063) (regTwo!4639 (regTwo!4639 r!27177)))) b!826623))

(declare-fun b!826624 () Bool)

(declare-fun e!545353 () Bool)

(assert (=> b!826624 (= e!545353 tp_is_empty!3849)))

(assert (=> b!826397 (= tp!258366 e!545353)))

(declare-fun b!826627 () Bool)

(declare-fun tp!258460 () Bool)

(declare-fun tp!258464 () Bool)

(assert (=> b!826627 (= e!545353 (and tp!258460 tp!258464))))

(declare-fun b!826625 () Bool)

(declare-fun tp!258461 () Bool)

(declare-fun tp!258462 () Bool)

(assert (=> b!826625 (= e!545353 (and tp!258461 tp!258462))))

(declare-fun b!826626 () Bool)

(declare-fun tp!258463 () Bool)

(assert (=> b!826626 (= e!545353 tp!258463)))

(assert (= (and b!826397 ((_ is ElementMatch!2063) (regOne!4638 (reg!2392 r!27177)))) b!826624))

(assert (= (and b!826397 ((_ is Concat!3794) (regOne!4638 (reg!2392 r!27177)))) b!826625))

(assert (= (and b!826397 ((_ is Star!2063) (regOne!4638 (reg!2392 r!27177)))) b!826626))

(assert (= (and b!826397 ((_ is Union!2063) (regOne!4638 (reg!2392 r!27177)))) b!826627))

(declare-fun b!826628 () Bool)

(declare-fun e!545354 () Bool)

(assert (=> b!826628 (= e!545354 tp_is_empty!3849)))

(assert (=> b!826397 (= tp!258367 e!545354)))

(declare-fun b!826631 () Bool)

(declare-fun tp!258465 () Bool)

(declare-fun tp!258469 () Bool)

(assert (=> b!826631 (= e!545354 (and tp!258465 tp!258469))))

(declare-fun b!826629 () Bool)

(declare-fun tp!258466 () Bool)

(declare-fun tp!258467 () Bool)

(assert (=> b!826629 (= e!545354 (and tp!258466 tp!258467))))

(declare-fun b!826630 () Bool)

(declare-fun tp!258468 () Bool)

(assert (=> b!826630 (= e!545354 tp!258468)))

(assert (= (and b!826397 ((_ is ElementMatch!2063) (regTwo!4638 (reg!2392 r!27177)))) b!826628))

(assert (= (and b!826397 ((_ is Concat!3794) (regTwo!4638 (reg!2392 r!27177)))) b!826629))

(assert (= (and b!826397 ((_ is Star!2063) (regTwo!4638 (reg!2392 r!27177)))) b!826630))

(assert (= (and b!826397 ((_ is Union!2063) (regTwo!4638 (reg!2392 r!27177)))) b!826631))

(declare-fun b!826632 () Bool)

(declare-fun e!545355 () Bool)

(assert (=> b!826632 (= e!545355 tp_is_empty!3849)))

(assert (=> b!826398 (= tp!258368 e!545355)))

(declare-fun b!826635 () Bool)

(declare-fun tp!258470 () Bool)

(declare-fun tp!258474 () Bool)

(assert (=> b!826635 (= e!545355 (and tp!258470 tp!258474))))

(declare-fun b!826633 () Bool)

(declare-fun tp!258471 () Bool)

(declare-fun tp!258472 () Bool)

(assert (=> b!826633 (= e!545355 (and tp!258471 tp!258472))))

(declare-fun b!826634 () Bool)

(declare-fun tp!258473 () Bool)

(assert (=> b!826634 (= e!545355 tp!258473)))

(assert (= (and b!826398 ((_ is ElementMatch!2063) (reg!2392 (reg!2392 r!27177)))) b!826632))

(assert (= (and b!826398 ((_ is Concat!3794) (reg!2392 (reg!2392 r!27177)))) b!826633))

(assert (= (and b!826398 ((_ is Star!2063) (reg!2392 (reg!2392 r!27177)))) b!826634))

(assert (= (and b!826398 ((_ is Union!2063) (reg!2392 (reg!2392 r!27177)))) b!826635))

(declare-fun b!826636 () Bool)

(declare-fun e!545356 () Bool)

(assert (=> b!826636 (= e!545356 tp_is_empty!3849)))

(assert (=> b!826407 (= tp!258375 e!545356)))

(declare-fun b!826639 () Bool)

(declare-fun tp!258475 () Bool)

(declare-fun tp!258479 () Bool)

(assert (=> b!826639 (= e!545356 (and tp!258475 tp!258479))))

(declare-fun b!826637 () Bool)

(declare-fun tp!258476 () Bool)

(declare-fun tp!258477 () Bool)

(assert (=> b!826637 (= e!545356 (and tp!258476 tp!258477))))

(declare-fun b!826638 () Bool)

(declare-fun tp!258478 () Bool)

(assert (=> b!826638 (= e!545356 tp!258478)))

(assert (= (and b!826407 ((_ is ElementMatch!2063) (regOne!4639 (regOne!4639 r!27177)))) b!826636))

(assert (= (and b!826407 ((_ is Concat!3794) (regOne!4639 (regOne!4639 r!27177)))) b!826637))

(assert (= (and b!826407 ((_ is Star!2063) (regOne!4639 (regOne!4639 r!27177)))) b!826638))

(assert (= (and b!826407 ((_ is Union!2063) (regOne!4639 (regOne!4639 r!27177)))) b!826639))

(declare-fun b!826640 () Bool)

(declare-fun e!545357 () Bool)

(assert (=> b!826640 (= e!545357 tp_is_empty!3849)))

(assert (=> b!826407 (= tp!258379 e!545357)))

(declare-fun b!826643 () Bool)

(declare-fun tp!258480 () Bool)

(declare-fun tp!258484 () Bool)

(assert (=> b!826643 (= e!545357 (and tp!258480 tp!258484))))

(declare-fun b!826641 () Bool)

(declare-fun tp!258481 () Bool)

(declare-fun tp!258482 () Bool)

(assert (=> b!826641 (= e!545357 (and tp!258481 tp!258482))))

(declare-fun b!826642 () Bool)

(declare-fun tp!258483 () Bool)

(assert (=> b!826642 (= e!545357 tp!258483)))

(assert (= (and b!826407 ((_ is ElementMatch!2063) (regTwo!4639 (regOne!4639 r!27177)))) b!826640))

(assert (= (and b!826407 ((_ is Concat!3794) (regTwo!4639 (regOne!4639 r!27177)))) b!826641))

(assert (= (and b!826407 ((_ is Star!2063) (regTwo!4639 (regOne!4639 r!27177)))) b!826642))

(assert (= (and b!826407 ((_ is Union!2063) (regTwo!4639 (regOne!4639 r!27177)))) b!826643))

(declare-fun b!826644 () Bool)

(declare-fun e!545358 () Bool)

(assert (=> b!826644 (= e!545358 tp_is_empty!3849)))

(assert (=> b!826409 (= tp!258381 e!545358)))

(declare-fun b!826647 () Bool)

(declare-fun tp!258485 () Bool)

(declare-fun tp!258489 () Bool)

(assert (=> b!826647 (= e!545358 (and tp!258485 tp!258489))))

(declare-fun b!826645 () Bool)

(declare-fun tp!258486 () Bool)

(declare-fun tp!258487 () Bool)

(assert (=> b!826645 (= e!545358 (and tp!258486 tp!258487))))

(declare-fun b!826646 () Bool)

(declare-fun tp!258488 () Bool)

(assert (=> b!826646 (= e!545358 tp!258488)))

(assert (= (and b!826409 ((_ is ElementMatch!2063) (regOne!4638 (regTwo!4639 r!27177)))) b!826644))

(assert (= (and b!826409 ((_ is Concat!3794) (regOne!4638 (regTwo!4639 r!27177)))) b!826645))

(assert (= (and b!826409 ((_ is Star!2063) (regOne!4638 (regTwo!4639 r!27177)))) b!826646))

(assert (= (and b!826409 ((_ is Union!2063) (regOne!4638 (regTwo!4639 r!27177)))) b!826647))

(declare-fun b!826648 () Bool)

(declare-fun e!545359 () Bool)

(assert (=> b!826648 (= e!545359 tp_is_empty!3849)))

(assert (=> b!826409 (= tp!258382 e!545359)))

(declare-fun b!826651 () Bool)

(declare-fun tp!258490 () Bool)

(declare-fun tp!258494 () Bool)

(assert (=> b!826651 (= e!545359 (and tp!258490 tp!258494))))

(declare-fun b!826649 () Bool)

(declare-fun tp!258491 () Bool)

(declare-fun tp!258492 () Bool)

(assert (=> b!826649 (= e!545359 (and tp!258491 tp!258492))))

(declare-fun b!826650 () Bool)

(declare-fun tp!258493 () Bool)

(assert (=> b!826650 (= e!545359 tp!258493)))

(assert (= (and b!826409 ((_ is ElementMatch!2063) (regTwo!4638 (regTwo!4639 r!27177)))) b!826648))

(assert (= (and b!826409 ((_ is Concat!3794) (regTwo!4638 (regTwo!4639 r!27177)))) b!826649))

(assert (= (and b!826409 ((_ is Star!2063) (regTwo!4638 (regTwo!4639 r!27177)))) b!826650))

(assert (= (and b!826409 ((_ is Union!2063) (regTwo!4638 (regTwo!4639 r!27177)))) b!826651))

(declare-fun b!826652 () Bool)

(declare-fun e!545360 () Bool)

(assert (=> b!826652 (= e!545360 tp_is_empty!3849)))

(assert (=> b!826410 (= tp!258383 e!545360)))

(declare-fun b!826655 () Bool)

(declare-fun tp!258495 () Bool)

(declare-fun tp!258499 () Bool)

(assert (=> b!826655 (= e!545360 (and tp!258495 tp!258499))))

(declare-fun b!826653 () Bool)

(declare-fun tp!258496 () Bool)

(declare-fun tp!258497 () Bool)

(assert (=> b!826653 (= e!545360 (and tp!258496 tp!258497))))

(declare-fun b!826654 () Bool)

(declare-fun tp!258498 () Bool)

(assert (=> b!826654 (= e!545360 tp!258498)))

(assert (= (and b!826410 ((_ is ElementMatch!2063) (reg!2392 (regTwo!4639 r!27177)))) b!826652))

(assert (= (and b!826410 ((_ is Concat!3794) (reg!2392 (regTwo!4639 r!27177)))) b!826653))

(assert (= (and b!826410 ((_ is Star!2063) (reg!2392 (regTwo!4639 r!27177)))) b!826654))

(assert (= (and b!826410 ((_ is Union!2063) (reg!2392 (regTwo!4639 r!27177)))) b!826655))

(declare-fun b!826656 () Bool)

(declare-fun e!545361 () Bool)

(assert (=> b!826656 (= e!545361 tp_is_empty!3849)))

(assert (=> b!826405 (= tp!258376 e!545361)))

(declare-fun b!826659 () Bool)

(declare-fun tp!258500 () Bool)

(declare-fun tp!258504 () Bool)

(assert (=> b!826659 (= e!545361 (and tp!258500 tp!258504))))

(declare-fun b!826657 () Bool)

(declare-fun tp!258501 () Bool)

(declare-fun tp!258502 () Bool)

(assert (=> b!826657 (= e!545361 (and tp!258501 tp!258502))))

(declare-fun b!826658 () Bool)

(declare-fun tp!258503 () Bool)

(assert (=> b!826658 (= e!545361 tp!258503)))

(assert (= (and b!826405 ((_ is ElementMatch!2063) (regOne!4638 (regOne!4639 r!27177)))) b!826656))

(assert (= (and b!826405 ((_ is Concat!3794) (regOne!4638 (regOne!4639 r!27177)))) b!826657))

(assert (= (and b!826405 ((_ is Star!2063) (regOne!4638 (regOne!4639 r!27177)))) b!826658))

(assert (= (and b!826405 ((_ is Union!2063) (regOne!4638 (regOne!4639 r!27177)))) b!826659))

(declare-fun b!826660 () Bool)

(declare-fun e!545362 () Bool)

(assert (=> b!826660 (= e!545362 tp_is_empty!3849)))

(assert (=> b!826405 (= tp!258377 e!545362)))

(declare-fun b!826663 () Bool)

(declare-fun tp!258505 () Bool)

(declare-fun tp!258509 () Bool)

(assert (=> b!826663 (= e!545362 (and tp!258505 tp!258509))))

(declare-fun b!826661 () Bool)

(declare-fun tp!258506 () Bool)

(declare-fun tp!258507 () Bool)

(assert (=> b!826661 (= e!545362 (and tp!258506 tp!258507))))

(declare-fun b!826662 () Bool)

(declare-fun tp!258508 () Bool)

(assert (=> b!826662 (= e!545362 tp!258508)))

(assert (= (and b!826405 ((_ is ElementMatch!2063) (regTwo!4638 (regOne!4639 r!27177)))) b!826660))

(assert (= (and b!826405 ((_ is Concat!3794) (regTwo!4638 (regOne!4639 r!27177)))) b!826661))

(assert (= (and b!826405 ((_ is Star!2063) (regTwo!4638 (regOne!4639 r!27177)))) b!826662))

(assert (= (and b!826405 ((_ is Union!2063) (regTwo!4638 (regOne!4639 r!27177)))) b!826663))

(check-sat (not b!826653) (not b!826585) (not b!826587) (not bm!48045) (not b!826601) (not bm!48046) (not b!826638) (not bm!48018) (not bm!48022) (not bm!48041) (not b!826595) (not b!826570) (not d!259441) (not b!826611) (not b!826590) (not b!826589) (not d!259411) (not b!826573) (not d!259405) (not b!826569) (not b!826571) tp_is_empty!3849 (not b!826629) (not d!259401) (not b!826479) (not b!826574) (not bm!48050) (not bm!48030) (not b!826534) (not b!826422) (not b!826597) (not bm!48013) (not b!826639) (not d!259423) (not bm!48048) (not b!826621) (not bm!48017) (not b!826602) (not bm!48036) (not b!826512) (not b!826650) (not b!826586) (not b!826635) (not bm!48010) (not b!826647) (not b!826627) (not b!826623) (not bm!48007) (not bm!48025) (not b!826593) (not d!259425) (not b!826615) (not b!826505) (not b!826548) (not b!826448) (not b!826625) (not b!826506) (not b!826471) (not b!826654) (not b!826645) (not b!826663) (not bm!48040) (not b!826461) (not b!826662) (not bm!48034) (not b!826577) (not b!826614) (not b!826452) (not b!826613) (not b!826578) (not b!826617) (not b!826503) (not d!259447) (not b!826484) (not b!826618) (not b!826651) (not d!259455) (not b!826657) (not b!826488) (not b!826607) (not b!826598) (not b!826579) (not b!826619) (not b!826649) (not b!826641) (not b!826630) (not b!826637) (not bm!48024) (not d!259453) (not b!826542) (not b!826575) (not bm!48028) (not b!826661) (not b!826605) (not b!826646) (not bm!48008) (not b!826594) (not bm!48043) (not d!259421) (not b!826658) (not b!826634) (not b!826565) (not bm!48051) (not b!826581) (not bm!48054) (not b!826482) (not d!259399) (not b!826626) (not b!826582) (not bm!48032) (not d!259433) (not bm!48014) (not b!826566) (not b!826642) (not bm!48039) (not bm!48012) (not b!826599) (not bm!48026) (not b!826603) (not bm!48031) (not bm!48015) (not bm!48020) (not b!826631) (not b!826591) (not d!259419) (not b!826567) (not b!826643) (not b!826478) (not b!826563) (not b!826606) (not b!826541) (not b!826659) (not b!826633) (not b!826610) (not b!826427) (not b!826655) (not b!826519) (not b!826622) (not b!826446) (not bm!48037) (not b!826583) (not b!826529) (not b!826609) (not bm!48053) (not b!826421))
(check-sat)
