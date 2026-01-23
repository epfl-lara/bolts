; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85492 () Bool)

(assert start!85492)

(declare-fun b!959898 () Bool)

(assert (=> b!959898 true))

(assert (=> b!959898 true))

(declare-fun lambda!33346 () Int)

(declare-fun lambda!33345 () Int)

(assert (=> b!959898 (not (= lambda!33346 lambda!33345))))

(assert (=> b!959898 true))

(assert (=> b!959898 true))

(declare-fun res!436225 () Bool)

(declare-fun e!620153 () Bool)

(assert (=> start!85492 (=> (not res!436225) (not e!620153))))

(declare-datatypes ((C!5886 0))(
  ( (C!5887 (val!3191 Int)) )
))
(declare-datatypes ((Regex!2658 0))(
  ( (ElementMatch!2658 (c!156371 C!5886)) (Concat!4491 (regOne!5828 Regex!2658) (regTwo!5828 Regex!2658)) (EmptyExpr!2658) (Star!2658 (reg!2987 Regex!2658)) (EmptyLang!2658) (Union!2658 (regOne!5829 Regex!2658) (regTwo!5829 Regex!2658)) )
))
(declare-fun r!15766 () Regex!2658)

(declare-fun validRegex!1127 (Regex!2658) Bool)

(assert (=> start!85492 (= res!436225 (validRegex!1127 r!15766))))

(assert (=> start!85492 e!620153))

(declare-fun e!620152 () Bool)

(assert (=> start!85492 e!620152))

(declare-fun e!620155 () Bool)

(assert (=> start!85492 e!620155))

(declare-fun e!620156 () Bool)

(declare-fun e!620154 () Bool)

(assert (=> b!959898 (= e!620156 e!620154)))

(declare-fun res!436223 () Bool)

(assert (=> b!959898 (=> res!436223 e!620154)))

(declare-datatypes ((List!9888 0))(
  ( (Nil!9872) (Cons!9872 (h!15273 C!5886) (t!100934 List!9888)) )
))
(declare-fun s!10566 () List!9888)

(declare-fun isEmpty!6160 (List!9888) Bool)

(assert (=> b!959898 (= res!436223 (isEmpty!6160 s!10566))))

(declare-fun Exists!405 (Int) Bool)

(assert (=> b!959898 (= (Exists!405 lambda!33345) (Exists!405 lambda!33346))))

(declare-datatypes ((Unit!14971 0))(
  ( (Unit!14972) )
))
(declare-fun lt!346401 () Unit!14971)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!201 (Regex!2658 Regex!2658 List!9888) Unit!14971)

(assert (=> b!959898 (= lt!346401 (lemmaExistCutMatchRandMatchRSpecEquivalent!201 EmptyExpr!2658 (regTwo!5828 r!15766) s!10566))))

(declare-datatypes ((tuple2!11202 0))(
  ( (tuple2!11203 (_1!6427 List!9888) (_2!6427 List!9888)) )
))
(declare-datatypes ((Option!2243 0))(
  ( (None!2242) (Some!2242 (v!19659 tuple2!11202)) )
))
(declare-fun lt!346404 () Option!2243)

(declare-fun isDefined!1885 (Option!2243) Bool)

(assert (=> b!959898 (= (isDefined!1885 lt!346404) (Exists!405 lambda!33345))))

(declare-fun findConcatSeparation!349 (Regex!2658 Regex!2658 List!9888 List!9888 List!9888) Option!2243)

(assert (=> b!959898 (= lt!346404 (findConcatSeparation!349 EmptyExpr!2658 (regTwo!5828 r!15766) Nil!9872 s!10566 s!10566))))

(declare-fun lt!346400 () Unit!14971)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!349 (Regex!2658 Regex!2658 List!9888) Unit!14971)

(assert (=> b!959898 (= lt!346400 (lemmaFindConcatSeparationEquivalentToExists!349 EmptyExpr!2658 (regTwo!5828 r!15766) s!10566))))

(declare-fun b!959899 () Bool)

(declare-fun tp_is_empty!4959 () Bool)

(declare-fun tp!295165 () Bool)

(assert (=> b!959899 (= e!620155 (and tp_is_empty!4959 tp!295165))))

(declare-fun b!959900 () Bool)

(declare-fun isEmpty!6161 (Option!2243) Bool)

(assert (=> b!959900 (= e!620154 (isEmpty!6161 lt!346404))))

(declare-fun b!959901 () Bool)

(declare-fun tp!295170 () Bool)

(declare-fun tp!295166 () Bool)

(assert (=> b!959901 (= e!620152 (and tp!295170 tp!295166))))

(declare-fun b!959902 () Bool)

(assert (=> b!959902 (= e!620152 tp_is_empty!4959)))

(declare-fun b!959903 () Bool)

(declare-fun tp!295168 () Bool)

(declare-fun tp!295169 () Bool)

(assert (=> b!959903 (= e!620152 (and tp!295168 tp!295169))))

(declare-fun b!959904 () Bool)

(assert (=> b!959904 (= e!620153 (not e!620156))))

(declare-fun res!436224 () Bool)

(assert (=> b!959904 (=> res!436224 e!620156)))

(declare-fun lt!346403 () Bool)

(assert (=> b!959904 (= res!436224 (or lt!346403 (not (is-Concat!4491 r!15766)) (not (is-EmptyExpr!2658 (regOne!5828 r!15766)))))))

(declare-fun matchRSpec!459 (Regex!2658 List!9888) Bool)

(assert (=> b!959904 (= lt!346403 (matchRSpec!459 r!15766 s!10566))))

(declare-fun matchR!1196 (Regex!2658 List!9888) Bool)

(assert (=> b!959904 (= lt!346403 (matchR!1196 r!15766 s!10566))))

(declare-fun lt!346402 () Unit!14971)

(declare-fun mainMatchTheorem!459 (Regex!2658 List!9888) Unit!14971)

(assert (=> b!959904 (= lt!346402 (mainMatchTheorem!459 r!15766 s!10566))))

(declare-fun b!959905 () Bool)

(declare-fun tp!295167 () Bool)

(assert (=> b!959905 (= e!620152 tp!295167)))

(assert (= (and start!85492 res!436225) b!959904))

(assert (= (and b!959904 (not res!436224)) b!959898))

(assert (= (and b!959898 (not res!436223)) b!959900))

(assert (= (and start!85492 (is-ElementMatch!2658 r!15766)) b!959902))

(assert (= (and start!85492 (is-Concat!4491 r!15766)) b!959901))

(assert (= (and start!85492 (is-Star!2658 r!15766)) b!959905))

(assert (= (and start!85492 (is-Union!2658 r!15766)) b!959903))

(assert (= (and start!85492 (is-Cons!9872 s!10566)) b!959899))

(declare-fun m!1168617 () Bool)

(assert (=> start!85492 m!1168617))

(declare-fun m!1168619 () Bool)

(assert (=> b!959898 m!1168619))

(assert (=> b!959898 m!1168619))

(declare-fun m!1168621 () Bool)

(assert (=> b!959898 m!1168621))

(declare-fun m!1168623 () Bool)

(assert (=> b!959898 m!1168623))

(declare-fun m!1168625 () Bool)

(assert (=> b!959898 m!1168625))

(declare-fun m!1168627 () Bool)

(assert (=> b!959898 m!1168627))

(declare-fun m!1168629 () Bool)

(assert (=> b!959898 m!1168629))

(declare-fun m!1168631 () Bool)

(assert (=> b!959898 m!1168631))

(declare-fun m!1168633 () Bool)

(assert (=> b!959900 m!1168633))

(declare-fun m!1168635 () Bool)

(assert (=> b!959904 m!1168635))

(declare-fun m!1168637 () Bool)

(assert (=> b!959904 m!1168637))

(declare-fun m!1168639 () Bool)

(assert (=> b!959904 m!1168639))

(push 1)

(assert (not b!959903))

(assert (not start!85492))

(assert (not b!959899))

(assert (not b!959901))

(assert (not b!959905))

(assert tp_is_empty!4959)

(assert (not b!959900))

(assert (not b!959898))

(assert (not b!959904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!285037 () Bool)

(assert (=> d!285037 (= (isEmpty!6161 lt!346404) (not (is-Some!2242 lt!346404)))))

(assert (=> b!959900 d!285037))

(declare-fun bm!60479 () Bool)

(declare-fun call!60486 () Bool)

(declare-fun call!60485 () Bool)

(assert (=> bm!60479 (= call!60486 call!60485)))

(declare-fun b!959968 () Bool)

(declare-fun e!620198 () Bool)

(declare-fun e!620192 () Bool)

(assert (=> b!959968 (= e!620198 e!620192)))

(declare-fun c!156377 () Bool)

(assert (=> b!959968 (= c!156377 (is-Star!2658 r!15766))))

(declare-fun b!959969 () Bool)

(declare-fun e!620193 () Bool)

(declare-fun e!620197 () Bool)

(assert (=> b!959969 (= e!620193 e!620197)))

(declare-fun res!436257 () Bool)

(assert (=> b!959969 (=> (not res!436257) (not e!620197))))

(assert (=> b!959969 (= res!436257 call!60486)))

(declare-fun b!959970 () Bool)

(declare-fun e!620196 () Bool)

(assert (=> b!959970 (= e!620192 e!620196)))

(declare-fun c!156378 () Bool)

(assert (=> b!959970 (= c!156378 (is-Union!2658 r!15766))))

(declare-fun b!959971 () Bool)

(declare-fun res!436258 () Bool)

(assert (=> b!959971 (=> res!436258 e!620193)))

(assert (=> b!959971 (= res!436258 (not (is-Concat!4491 r!15766)))))

(assert (=> b!959971 (= e!620196 e!620193)))

(declare-fun b!959972 () Bool)

(declare-fun call!60484 () Bool)

(assert (=> b!959972 (= e!620197 call!60484)))

(declare-fun b!959973 () Bool)

(declare-fun e!620194 () Bool)

(assert (=> b!959973 (= e!620194 call!60484)))

(declare-fun bm!60480 () Bool)

(assert (=> bm!60480 (= call!60484 (validRegex!1127 (ite c!156378 (regTwo!5829 r!15766) (regTwo!5828 r!15766))))))

(declare-fun d!285039 () Bool)

(declare-fun res!436259 () Bool)

(assert (=> d!285039 (=> res!436259 e!620198)))

(assert (=> d!285039 (= res!436259 (is-ElementMatch!2658 r!15766))))

(assert (=> d!285039 (= (validRegex!1127 r!15766) e!620198)))

(declare-fun b!959974 () Bool)

(declare-fun res!436260 () Bool)

(assert (=> b!959974 (=> (not res!436260) (not e!620194))))

(assert (=> b!959974 (= res!436260 call!60486)))

(assert (=> b!959974 (= e!620196 e!620194)))

(declare-fun b!959975 () Bool)

(declare-fun e!620195 () Bool)

(assert (=> b!959975 (= e!620192 e!620195)))

(declare-fun res!436261 () Bool)

(declare-fun nullable!799 (Regex!2658) Bool)

(assert (=> b!959975 (= res!436261 (not (nullable!799 (reg!2987 r!15766))))))

(assert (=> b!959975 (=> (not res!436261) (not e!620195))))

(declare-fun bm!60481 () Bool)

(assert (=> bm!60481 (= call!60485 (validRegex!1127 (ite c!156377 (reg!2987 r!15766) (ite c!156378 (regOne!5829 r!15766) (regOne!5828 r!15766)))))))

(declare-fun b!959976 () Bool)

(assert (=> b!959976 (= e!620195 call!60485)))

(assert (= (and d!285039 (not res!436259)) b!959968))

(assert (= (and b!959968 c!156377) b!959975))

(assert (= (and b!959968 (not c!156377)) b!959970))

(assert (= (and b!959975 res!436261) b!959976))

(assert (= (and b!959970 c!156378) b!959974))

(assert (= (and b!959970 (not c!156378)) b!959971))

(assert (= (and b!959974 res!436260) b!959973))

(assert (= (and b!959971 (not res!436258)) b!959969))

(assert (= (and b!959969 res!436257) b!959972))

(assert (= (or b!959973 b!959972) bm!60480))

(assert (= (or b!959974 b!959969) bm!60479))

(assert (= (or b!959976 bm!60479) bm!60481))

(declare-fun m!1168665 () Bool)

(assert (=> bm!60480 m!1168665))

(declare-fun m!1168667 () Bool)

(assert (=> b!959975 m!1168667))

(declare-fun m!1168669 () Bool)

(assert (=> bm!60481 m!1168669))

(assert (=> start!85492 d!285039))

(declare-fun bs!240728 () Bool)

(declare-fun b!960030 () Bool)

(assert (= bs!240728 (and b!960030 b!959898)))

(declare-fun lambda!33359 () Int)

(assert (=> bs!240728 (not (= lambda!33359 lambda!33345))))

(assert (=> bs!240728 (not (= lambda!33359 lambda!33346))))

(assert (=> b!960030 true))

(assert (=> b!960030 true))

(declare-fun bs!240729 () Bool)

(declare-fun b!960033 () Bool)

(assert (= bs!240729 (and b!960033 b!959898)))

(declare-fun lambda!33360 () Int)

(assert (=> bs!240729 (not (= lambda!33360 lambda!33345))))

(assert (=> bs!240729 (= (= (regOne!5828 r!15766) EmptyExpr!2658) (= lambda!33360 lambda!33346))))

(declare-fun bs!240730 () Bool)

(assert (= bs!240730 (and b!960033 b!960030)))

(assert (=> bs!240730 (not (= lambda!33360 lambda!33359))))

(assert (=> b!960033 true))

(assert (=> b!960033 true))

(declare-fun b!960027 () Bool)

(declare-fun e!620231 () Bool)

(declare-fun e!620234 () Bool)

(assert (=> b!960027 (= e!620231 e!620234)))

(declare-fun res!436288 () Bool)

(assert (=> b!960027 (= res!436288 (not (is-EmptyLang!2658 r!15766)))))

(assert (=> b!960027 (=> (not res!436288) (not e!620234))))

(declare-fun bm!60492 () Bool)

(declare-fun call!60498 () Bool)

(declare-fun c!156391 () Bool)

(assert (=> bm!60492 (= call!60498 (Exists!405 (ite c!156391 lambda!33359 lambda!33360)))))

(declare-fun b!960028 () Bool)

(declare-fun e!620235 () Bool)

(declare-fun e!620232 () Bool)

(assert (=> b!960028 (= e!620235 e!620232)))

(declare-fun res!436289 () Bool)

(assert (=> b!960028 (= res!436289 (matchRSpec!459 (regOne!5829 r!15766) s!10566))))

(assert (=> b!960028 (=> res!436289 e!620232)))

(declare-fun bm!60493 () Bool)

(declare-fun call!60497 () Bool)

(assert (=> bm!60493 (= call!60497 (isEmpty!6160 s!10566))))

(declare-fun b!960029 () Bool)

(declare-fun e!620237 () Bool)

(assert (=> b!960029 (= e!620235 e!620237)))

(assert (=> b!960029 (= c!156391 (is-Star!2658 r!15766))))

(declare-fun e!620236 () Bool)

(assert (=> b!960030 (= e!620236 call!60498)))

(declare-fun b!960031 () Bool)

(declare-fun e!620233 () Bool)

(assert (=> b!960031 (= e!620233 (= s!10566 (Cons!9872 (c!156371 r!15766) Nil!9872)))))

(declare-fun b!960032 () Bool)

(declare-fun c!156394 () Bool)

(assert (=> b!960032 (= c!156394 (is-Union!2658 r!15766))))

(assert (=> b!960032 (= e!620233 e!620235)))

(assert (=> b!960033 (= e!620237 call!60498)))

(declare-fun b!960034 () Bool)

(assert (=> b!960034 (= e!620231 call!60497)))

(declare-fun b!960035 () Bool)

(declare-fun c!156393 () Bool)

(assert (=> b!960035 (= c!156393 (is-ElementMatch!2658 r!15766))))

(assert (=> b!960035 (= e!620234 e!620233)))

(declare-fun b!960036 () Bool)

(declare-fun res!436290 () Bool)

(assert (=> b!960036 (=> res!436290 e!620236)))

(assert (=> b!960036 (= res!436290 call!60497)))

(assert (=> b!960036 (= e!620237 e!620236)))

(declare-fun b!960037 () Bool)

(assert (=> b!960037 (= e!620232 (matchRSpec!459 (regTwo!5829 r!15766) s!10566))))

(declare-fun d!285041 () Bool)

(declare-fun c!156392 () Bool)

(assert (=> d!285041 (= c!156392 (is-EmptyExpr!2658 r!15766))))

(assert (=> d!285041 (= (matchRSpec!459 r!15766 s!10566) e!620231)))

(assert (= (and d!285041 c!156392) b!960034))

(assert (= (and d!285041 (not c!156392)) b!960027))

(assert (= (and b!960027 res!436288) b!960035))

(assert (= (and b!960035 c!156393) b!960031))

(assert (= (and b!960035 (not c!156393)) b!960032))

(assert (= (and b!960032 c!156394) b!960028))

(assert (= (and b!960032 (not c!156394)) b!960029))

(assert (= (and b!960028 (not res!436289)) b!960037))

(assert (= (and b!960029 c!156391) b!960036))

(assert (= (and b!960029 (not c!156391)) b!960033))

(assert (= (and b!960036 (not res!436290)) b!960030))

(assert (= (or b!960030 b!960033) bm!60492))

(assert (= (or b!960034 b!960036) bm!60493))

(declare-fun m!1168671 () Bool)

(assert (=> bm!60492 m!1168671))

(declare-fun m!1168673 () Bool)

(assert (=> b!960028 m!1168673))

(assert (=> bm!60493 m!1168625))

(declare-fun m!1168675 () Bool)

(assert (=> b!960037 m!1168675))

(assert (=> b!959904 d!285041))

(declare-fun b!960075 () Bool)

(declare-fun res!436315 () Bool)

(declare-fun e!620260 () Bool)

(assert (=> b!960075 (=> res!436315 e!620260)))

(declare-fun e!620261 () Bool)

(assert (=> b!960075 (= res!436315 e!620261)))

(declare-fun res!436314 () Bool)

(assert (=> b!960075 (=> (not res!436314) (not e!620261))))

(declare-fun lt!346422 () Bool)

(assert (=> b!960075 (= res!436314 lt!346422)))

(declare-fun d!285045 () Bool)

(declare-fun e!620262 () Bool)

(assert (=> d!285045 e!620262))

(declare-fun c!156405 () Bool)

(assert (=> d!285045 (= c!156405 (is-EmptyExpr!2658 r!15766))))

(declare-fun e!620259 () Bool)

(assert (=> d!285045 (= lt!346422 e!620259)))

(declare-fun c!156404 () Bool)

(assert (=> d!285045 (= c!156404 (isEmpty!6160 s!10566))))

(assert (=> d!285045 (validRegex!1127 r!15766)))

(assert (=> d!285045 (= (matchR!1196 r!15766 s!10566) lt!346422)))

(declare-fun b!960076 () Bool)

(declare-fun e!620265 () Bool)

(assert (=> b!960076 (= e!620262 e!620265)))

(declare-fun c!156403 () Bool)

(assert (=> b!960076 (= c!156403 (is-EmptyLang!2658 r!15766))))

(declare-fun b!960077 () Bool)

(declare-fun res!436319 () Bool)

(assert (=> b!960077 (=> (not res!436319) (not e!620261))))

(declare-fun call!60504 () Bool)

(assert (=> b!960077 (= res!436319 (not call!60504))))

(declare-fun b!960078 () Bool)

(declare-fun res!436313 () Bool)

(assert (=> b!960078 (=> res!436313 e!620260)))

(assert (=> b!960078 (= res!436313 (not (is-ElementMatch!2658 r!15766)))))

(assert (=> b!960078 (= e!620265 e!620260)))

(declare-fun b!960079 () Bool)

(assert (=> b!960079 (= e!620259 (nullable!799 r!15766))))

(declare-fun b!960080 () Bool)

(declare-fun e!620264 () Bool)

(declare-fun e!620263 () Bool)

(assert (=> b!960080 (= e!620264 e!620263)))

(declare-fun res!436317 () Bool)

(assert (=> b!960080 (=> res!436317 e!620263)))

(assert (=> b!960080 (= res!436317 call!60504)))

(declare-fun b!960081 () Bool)

(assert (=> b!960081 (= e!620265 (not lt!346422))))

(declare-fun b!960082 () Bool)

(declare-fun derivativeStep!608 (Regex!2658 C!5886) Regex!2658)

(declare-fun head!1761 (List!9888) C!5886)

(declare-fun tail!1323 (List!9888) List!9888)

(assert (=> b!960082 (= e!620259 (matchR!1196 (derivativeStep!608 r!15766 (head!1761 s!10566)) (tail!1323 s!10566)))))

(declare-fun bm!60499 () Bool)

(assert (=> bm!60499 (= call!60504 (isEmpty!6160 s!10566))))

(declare-fun b!960083 () Bool)

(assert (=> b!960083 (= e!620261 (= (head!1761 s!10566) (c!156371 r!15766)))))

(declare-fun b!960084 () Bool)

(declare-fun res!436316 () Bool)

(assert (=> b!960084 (=> (not res!436316) (not e!620261))))

(assert (=> b!960084 (= res!436316 (isEmpty!6160 (tail!1323 s!10566)))))

(declare-fun b!960085 () Bool)

(assert (=> b!960085 (= e!620260 e!620264)))

(declare-fun res!436318 () Bool)

(assert (=> b!960085 (=> (not res!436318) (not e!620264))))

(assert (=> b!960085 (= res!436318 (not lt!346422))))

(declare-fun b!960086 () Bool)

(assert (=> b!960086 (= e!620262 (= lt!346422 call!60504))))

(declare-fun b!960087 () Bool)

(assert (=> b!960087 (= e!620263 (not (= (head!1761 s!10566) (c!156371 r!15766))))))

(declare-fun b!960088 () Bool)

(declare-fun res!436312 () Bool)

(assert (=> b!960088 (=> res!436312 e!620263)))

(assert (=> b!960088 (= res!436312 (not (isEmpty!6160 (tail!1323 s!10566))))))

(assert (= (and d!285045 c!156404) b!960079))

(assert (= (and d!285045 (not c!156404)) b!960082))

(assert (= (and d!285045 c!156405) b!960086))

(assert (= (and d!285045 (not c!156405)) b!960076))

(assert (= (and b!960076 c!156403) b!960081))

(assert (= (and b!960076 (not c!156403)) b!960078))

(assert (= (and b!960078 (not res!436313)) b!960075))

(assert (= (and b!960075 res!436314) b!960077))

(assert (= (and b!960077 res!436319) b!960084))

(assert (= (and b!960084 res!436316) b!960083))

(assert (= (and b!960075 (not res!436315)) b!960085))

(assert (= (and b!960085 res!436318) b!960080))

(assert (= (and b!960080 (not res!436317)) b!960088))

(assert (= (and b!960088 (not res!436312)) b!960087))

(assert (= (or b!960086 b!960077 b!960080) bm!60499))

(declare-fun m!1168685 () Bool)

(assert (=> b!960088 m!1168685))

(assert (=> b!960088 m!1168685))

(declare-fun m!1168687 () Bool)

(assert (=> b!960088 m!1168687))

(assert (=> d!285045 m!1168625))

(assert (=> d!285045 m!1168617))

(declare-fun m!1168689 () Bool)

(assert (=> b!960083 m!1168689))

(assert (=> b!960084 m!1168685))

(assert (=> b!960084 m!1168685))

(assert (=> b!960084 m!1168687))

(assert (=> b!960087 m!1168689))

(declare-fun m!1168691 () Bool)

(assert (=> b!960079 m!1168691))

(assert (=> b!960082 m!1168689))

(assert (=> b!960082 m!1168689))

(declare-fun m!1168693 () Bool)

(assert (=> b!960082 m!1168693))

(assert (=> b!960082 m!1168685))

(assert (=> b!960082 m!1168693))

(assert (=> b!960082 m!1168685))

(declare-fun m!1168695 () Bool)

(assert (=> b!960082 m!1168695))

(assert (=> bm!60499 m!1168625))

(assert (=> b!959904 d!285045))

(declare-fun d!285055 () Bool)

(assert (=> d!285055 (= (matchR!1196 r!15766 s!10566) (matchRSpec!459 r!15766 s!10566))))

(declare-fun lt!346425 () Unit!14971)

(declare-fun choose!6036 (Regex!2658 List!9888) Unit!14971)

(assert (=> d!285055 (= lt!346425 (choose!6036 r!15766 s!10566))))

(assert (=> d!285055 (validRegex!1127 r!15766)))

(assert (=> d!285055 (= (mainMatchTheorem!459 r!15766 s!10566) lt!346425)))

(declare-fun bs!240732 () Bool)

(assert (= bs!240732 d!285055))

(assert (=> bs!240732 m!1168637))

(assert (=> bs!240732 m!1168635))

(declare-fun m!1168697 () Bool)

(assert (=> bs!240732 m!1168697))

(assert (=> bs!240732 m!1168617))

(assert (=> b!959904 d!285055))

(declare-fun d!285057 () Bool)

(assert (=> d!285057 (= (isDefined!1885 lt!346404) (not (isEmpty!6161 lt!346404)))))

(declare-fun bs!240733 () Bool)

(assert (= bs!240733 d!285057))

(assert (=> bs!240733 m!1168633))

(assert (=> b!959898 d!285057))

(declare-fun d!285059 () Bool)

(declare-fun choose!6037 (Int) Bool)

(assert (=> d!285059 (= (Exists!405 lambda!33346) (choose!6037 lambda!33346))))

(declare-fun bs!240734 () Bool)

(assert (= bs!240734 d!285059))

(declare-fun m!1168699 () Bool)

(assert (=> bs!240734 m!1168699))

(assert (=> b!959898 d!285059))

(declare-fun d!285061 () Bool)

(assert (=> d!285061 (= (isEmpty!6160 s!10566) (is-Nil!9872 s!10566))))

(assert (=> b!959898 d!285061))

(declare-fun b!960107 () Bool)

(declare-fun e!620280 () Bool)

(declare-fun lt!346432 () Option!2243)

(assert (=> b!960107 (= e!620280 (not (isDefined!1885 lt!346432)))))

(declare-fun b!960108 () Bool)

(declare-fun res!436333 () Bool)

(declare-fun e!620276 () Bool)

(assert (=> b!960108 (=> (not res!436333) (not e!620276))))

(declare-fun get!3361 (Option!2243) tuple2!11202)

(assert (=> b!960108 (= res!436333 (matchR!1196 EmptyExpr!2658 (_1!6427 (get!3361 lt!346432))))))

(declare-fun b!960109 () Bool)

(declare-fun res!436330 () Bool)

(assert (=> b!960109 (=> (not res!436330) (not e!620276))))

(assert (=> b!960109 (= res!436330 (matchR!1196 (regTwo!5828 r!15766) (_2!6427 (get!3361 lt!346432))))))

(declare-fun b!960110 () Bool)

(declare-fun e!620278 () Bool)

(assert (=> b!960110 (= e!620278 (matchR!1196 (regTwo!5828 r!15766) s!10566))))

(declare-fun d!285063 () Bool)

(assert (=> d!285063 e!620280))

(declare-fun res!436331 () Bool)

(assert (=> d!285063 (=> res!436331 e!620280)))

(assert (=> d!285063 (= res!436331 e!620276)))

(declare-fun res!436334 () Bool)

(assert (=> d!285063 (=> (not res!436334) (not e!620276))))

(assert (=> d!285063 (= res!436334 (isDefined!1885 lt!346432))))

(declare-fun e!620279 () Option!2243)

(assert (=> d!285063 (= lt!346432 e!620279)))

(declare-fun c!156410 () Bool)

(assert (=> d!285063 (= c!156410 e!620278)))

(declare-fun res!436332 () Bool)

(assert (=> d!285063 (=> (not res!436332) (not e!620278))))

(assert (=> d!285063 (= res!436332 (matchR!1196 EmptyExpr!2658 Nil!9872))))

(assert (=> d!285063 (validRegex!1127 EmptyExpr!2658)))

(assert (=> d!285063 (= (findConcatSeparation!349 EmptyExpr!2658 (regTwo!5828 r!15766) Nil!9872 s!10566 s!10566) lt!346432)))

(declare-fun b!960111 () Bool)

(declare-fun lt!346434 () Unit!14971)

(declare-fun lt!346433 () Unit!14971)

(assert (=> b!960111 (= lt!346434 lt!346433)))

(declare-fun ++!2657 (List!9888 List!9888) List!9888)

(assert (=> b!960111 (= (++!2657 (++!2657 Nil!9872 (Cons!9872 (h!15273 s!10566) Nil!9872)) (t!100934 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!262 (List!9888 C!5886 List!9888 List!9888) Unit!14971)

(assert (=> b!960111 (= lt!346433 (lemmaMoveElementToOtherListKeepsConcatEq!262 Nil!9872 (h!15273 s!10566) (t!100934 s!10566) s!10566))))

(declare-fun e!620277 () Option!2243)

(assert (=> b!960111 (= e!620277 (findConcatSeparation!349 EmptyExpr!2658 (regTwo!5828 r!15766) (++!2657 Nil!9872 (Cons!9872 (h!15273 s!10566) Nil!9872)) (t!100934 s!10566) s!10566))))

(declare-fun b!960112 () Bool)

(assert (=> b!960112 (= e!620276 (= (++!2657 (_1!6427 (get!3361 lt!346432)) (_2!6427 (get!3361 lt!346432))) s!10566))))

(declare-fun b!960113 () Bool)

(assert (=> b!960113 (= e!620279 e!620277)))

(declare-fun c!156411 () Bool)

(assert (=> b!960113 (= c!156411 (is-Nil!9872 s!10566))))

(declare-fun b!960114 () Bool)

(assert (=> b!960114 (= e!620279 (Some!2242 (tuple2!11203 Nil!9872 s!10566)))))

(declare-fun b!960115 () Bool)

(assert (=> b!960115 (= e!620277 None!2242)))

(assert (= (and d!285063 res!436332) b!960110))

(assert (= (and d!285063 c!156410) b!960114))

(assert (= (and d!285063 (not c!156410)) b!960113))

(assert (= (and b!960113 c!156411) b!960115))

(assert (= (and b!960113 (not c!156411)) b!960111))

(assert (= (and d!285063 res!436334) b!960108))

(assert (= (and b!960108 res!436333) b!960109))

(assert (= (and b!960109 res!436330) b!960112))

(assert (= (and d!285063 (not res!436331)) b!960107))

(declare-fun m!1168701 () Bool)

(assert (=> b!960109 m!1168701))

(declare-fun m!1168703 () Bool)

(assert (=> b!960109 m!1168703))

(declare-fun m!1168705 () Bool)

(assert (=> d!285063 m!1168705))

(declare-fun m!1168707 () Bool)

(assert (=> d!285063 m!1168707))

(declare-fun m!1168709 () Bool)

(assert (=> d!285063 m!1168709))

(declare-fun m!1168711 () Bool)

(assert (=> b!960111 m!1168711))

(assert (=> b!960111 m!1168711))

(declare-fun m!1168713 () Bool)

(assert (=> b!960111 m!1168713))

(declare-fun m!1168715 () Bool)

(assert (=> b!960111 m!1168715))

(assert (=> b!960111 m!1168711))

(declare-fun m!1168717 () Bool)

(assert (=> b!960111 m!1168717))

(assert (=> b!960108 m!1168701))

(declare-fun m!1168719 () Bool)

(assert (=> b!960108 m!1168719))

(assert (=> b!960112 m!1168701))

(declare-fun m!1168721 () Bool)

(assert (=> b!960112 m!1168721))

(declare-fun m!1168723 () Bool)

(assert (=> b!960110 m!1168723))

(assert (=> b!960107 m!1168705))

(assert (=> b!959898 d!285063))

(declare-fun bs!240735 () Bool)

(declare-fun d!285065 () Bool)

(assert (= bs!240735 (and d!285065 b!959898)))

(declare-fun lambda!33363 () Int)

(assert (=> bs!240735 (= lambda!33363 lambda!33345)))

(assert (=> bs!240735 (not (= lambda!33363 lambda!33346))))

(declare-fun bs!240736 () Bool)

(assert (= bs!240736 (and d!285065 b!960030)))

(assert (=> bs!240736 (not (= lambda!33363 lambda!33359))))

(declare-fun bs!240737 () Bool)

(assert (= bs!240737 (and d!285065 b!960033)))

(assert (=> bs!240737 (not (= lambda!33363 lambda!33360))))

(assert (=> d!285065 true))

(assert (=> d!285065 true))

(assert (=> d!285065 true))

(assert (=> d!285065 (= (isDefined!1885 (findConcatSeparation!349 EmptyExpr!2658 (regTwo!5828 r!15766) Nil!9872 s!10566 s!10566)) (Exists!405 lambda!33363))))

(declare-fun lt!346443 () Unit!14971)

(declare-fun choose!6038 (Regex!2658 Regex!2658 List!9888) Unit!14971)

(assert (=> d!285065 (= lt!346443 (choose!6038 EmptyExpr!2658 (regTwo!5828 r!15766) s!10566))))

(assert (=> d!285065 (validRegex!1127 EmptyExpr!2658)))

(assert (=> d!285065 (= (lemmaFindConcatSeparationEquivalentToExists!349 EmptyExpr!2658 (regTwo!5828 r!15766) s!10566) lt!346443)))

(declare-fun bs!240738 () Bool)

(assert (= bs!240738 d!285065))

(declare-fun m!1168725 () Bool)

(assert (=> bs!240738 m!1168725))

(assert (=> bs!240738 m!1168629))

(declare-fun m!1168727 () Bool)

(assert (=> bs!240738 m!1168727))

(assert (=> bs!240738 m!1168629))

(declare-fun m!1168729 () Bool)

(assert (=> bs!240738 m!1168729))

(assert (=> bs!240738 m!1168709))

(assert (=> b!959898 d!285065))

(declare-fun bs!240740 () Bool)

(declare-fun d!285067 () Bool)

(assert (= bs!240740 (and d!285067 b!960033)))

(declare-fun lambda!33368 () Int)

(assert (=> bs!240740 (not (= lambda!33368 lambda!33360))))

(declare-fun bs!240741 () Bool)

(assert (= bs!240741 (and d!285067 b!959898)))

(assert (=> bs!240741 (not (= lambda!33368 lambda!33346))))

(declare-fun bs!240742 () Bool)

(assert (= bs!240742 (and d!285067 d!285065)))

(assert (=> bs!240742 (= lambda!33368 lambda!33363)))

(declare-fun bs!240743 () Bool)

(assert (= bs!240743 (and d!285067 b!960030)))

(assert (=> bs!240743 (not (= lambda!33368 lambda!33359))))

(assert (=> bs!240741 (= lambda!33368 lambda!33345)))

(assert (=> d!285067 true))

(assert (=> d!285067 true))

(assert (=> d!285067 true))

(declare-fun lambda!33369 () Int)

(assert (=> bs!240740 (= (= EmptyExpr!2658 (regOne!5828 r!15766)) (= lambda!33369 lambda!33360))))

(assert (=> bs!240741 (= lambda!33369 lambda!33346)))

(declare-fun bs!240744 () Bool)

(assert (= bs!240744 d!285067))

(assert (=> bs!240744 (not (= lambda!33369 lambda!33368))))

(assert (=> bs!240742 (not (= lambda!33369 lambda!33363))))

(assert (=> bs!240743 (not (= lambda!33369 lambda!33359))))

(assert (=> bs!240741 (not (= lambda!33369 lambda!33345))))

(assert (=> d!285067 true))

(assert (=> d!285067 true))

(assert (=> d!285067 true))

(assert (=> d!285067 (= (Exists!405 lambda!33368) (Exists!405 lambda!33369))))

(declare-fun lt!346449 () Unit!14971)

(declare-fun choose!6039 (Regex!2658 Regex!2658 List!9888) Unit!14971)

(assert (=> d!285067 (= lt!346449 (choose!6039 EmptyExpr!2658 (regTwo!5828 r!15766) s!10566))))

(assert (=> d!285067 (validRegex!1127 EmptyExpr!2658)))

(assert (=> d!285067 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!201 EmptyExpr!2658 (regTwo!5828 r!15766) s!10566) lt!346449)))

(declare-fun m!1168757 () Bool)

(assert (=> bs!240744 m!1168757))

(declare-fun m!1168759 () Bool)

(assert (=> bs!240744 m!1168759))

(declare-fun m!1168761 () Bool)

(assert (=> bs!240744 m!1168761))

(assert (=> bs!240744 m!1168709))

(assert (=> b!959898 d!285067))

(declare-fun d!285073 () Bool)

(assert (=> d!285073 (= (Exists!405 lambda!33345) (choose!6037 lambda!33345))))

(declare-fun bs!240745 () Bool)

(assert (= bs!240745 d!285073))

(declare-fun m!1168763 () Bool)

(assert (=> bs!240745 m!1168763))

(assert (=> b!959898 d!285073))

(declare-fun e!620304 () Bool)

(assert (=> b!959905 (= tp!295167 e!620304)))

(declare-fun b!960166 () Bool)

(declare-fun tp!295200 () Bool)

(declare-fun tp!295201 () Bool)

(assert (=> b!960166 (= e!620304 (and tp!295200 tp!295201))))

(declare-fun b!960165 () Bool)

(assert (=> b!960165 (= e!620304 tp_is_empty!4959)))

(declare-fun b!960167 () Bool)

(declare-fun tp!295202 () Bool)

(assert (=> b!960167 (= e!620304 tp!295202)))

(declare-fun b!960168 () Bool)

(declare-fun tp!295203 () Bool)

(declare-fun tp!295199 () Bool)

(assert (=> b!960168 (= e!620304 (and tp!295203 tp!295199))))

(assert (= (and b!959905 (is-ElementMatch!2658 (reg!2987 r!15766))) b!960165))

(assert (= (and b!959905 (is-Concat!4491 (reg!2987 r!15766))) b!960166))

(assert (= (and b!959905 (is-Star!2658 (reg!2987 r!15766))) b!960167))

(assert (= (and b!959905 (is-Union!2658 (reg!2987 r!15766))) b!960168))

(declare-fun b!960173 () Bool)

(declare-fun e!620307 () Bool)

(declare-fun tp!295206 () Bool)

(assert (=> b!960173 (= e!620307 (and tp_is_empty!4959 tp!295206))))

(assert (=> b!959899 (= tp!295165 e!620307)))

(assert (= (and b!959899 (is-Cons!9872 (t!100934 s!10566))) b!960173))

(declare-fun e!620308 () Bool)

(assert (=> b!959903 (= tp!295168 e!620308)))

(declare-fun b!960175 () Bool)

(declare-fun tp!295208 () Bool)

(declare-fun tp!295209 () Bool)

(assert (=> b!960175 (= e!620308 (and tp!295208 tp!295209))))

(declare-fun b!960174 () Bool)

(assert (=> b!960174 (= e!620308 tp_is_empty!4959)))

(declare-fun b!960176 () Bool)

(declare-fun tp!295210 () Bool)

(assert (=> b!960176 (= e!620308 tp!295210)))

(declare-fun b!960177 () Bool)

(declare-fun tp!295211 () Bool)

(declare-fun tp!295207 () Bool)

(assert (=> b!960177 (= e!620308 (and tp!295211 tp!295207))))

(assert (= (and b!959903 (is-ElementMatch!2658 (regOne!5829 r!15766))) b!960174))

(assert (= (and b!959903 (is-Concat!4491 (regOne!5829 r!15766))) b!960175))

(assert (= (and b!959903 (is-Star!2658 (regOne!5829 r!15766))) b!960176))

(assert (= (and b!959903 (is-Union!2658 (regOne!5829 r!15766))) b!960177))

(declare-fun e!620309 () Bool)

(assert (=> b!959903 (= tp!295169 e!620309)))

(declare-fun b!960179 () Bool)

(declare-fun tp!295213 () Bool)

(declare-fun tp!295214 () Bool)

(assert (=> b!960179 (= e!620309 (and tp!295213 tp!295214))))

(declare-fun b!960178 () Bool)

(assert (=> b!960178 (= e!620309 tp_is_empty!4959)))

(declare-fun b!960180 () Bool)

(declare-fun tp!295215 () Bool)

(assert (=> b!960180 (= e!620309 tp!295215)))

(declare-fun b!960181 () Bool)

(declare-fun tp!295216 () Bool)

(declare-fun tp!295212 () Bool)

(assert (=> b!960181 (= e!620309 (and tp!295216 tp!295212))))

(assert (= (and b!959903 (is-ElementMatch!2658 (regTwo!5829 r!15766))) b!960178))

(assert (= (and b!959903 (is-Concat!4491 (regTwo!5829 r!15766))) b!960179))

(assert (= (and b!959903 (is-Star!2658 (regTwo!5829 r!15766))) b!960180))

(assert (= (and b!959903 (is-Union!2658 (regTwo!5829 r!15766))) b!960181))

(declare-fun e!620310 () Bool)

(assert (=> b!959901 (= tp!295170 e!620310)))

(declare-fun b!960183 () Bool)

(declare-fun tp!295218 () Bool)

(declare-fun tp!295219 () Bool)

(assert (=> b!960183 (= e!620310 (and tp!295218 tp!295219))))

(declare-fun b!960182 () Bool)

(assert (=> b!960182 (= e!620310 tp_is_empty!4959)))

(declare-fun b!960184 () Bool)

(declare-fun tp!295220 () Bool)

(assert (=> b!960184 (= e!620310 tp!295220)))

(declare-fun b!960185 () Bool)

(declare-fun tp!295221 () Bool)

(declare-fun tp!295217 () Bool)

(assert (=> b!960185 (= e!620310 (and tp!295221 tp!295217))))

(assert (= (and b!959901 (is-ElementMatch!2658 (regOne!5828 r!15766))) b!960182))

(assert (= (and b!959901 (is-Concat!4491 (regOne!5828 r!15766))) b!960183))

(assert (= (and b!959901 (is-Star!2658 (regOne!5828 r!15766))) b!960184))

(assert (= (and b!959901 (is-Union!2658 (regOne!5828 r!15766))) b!960185))

(declare-fun e!620311 () Bool)

(assert (=> b!959901 (= tp!295166 e!620311)))

(declare-fun b!960187 () Bool)

(declare-fun tp!295223 () Bool)

(declare-fun tp!295224 () Bool)

(assert (=> b!960187 (= e!620311 (and tp!295223 tp!295224))))

(declare-fun b!960186 () Bool)

(assert (=> b!960186 (= e!620311 tp_is_empty!4959)))

(declare-fun b!960188 () Bool)

(declare-fun tp!295225 () Bool)

(assert (=> b!960188 (= e!620311 tp!295225)))

(declare-fun b!960189 () Bool)

(declare-fun tp!295226 () Bool)

(declare-fun tp!295222 () Bool)

(assert (=> b!960189 (= e!620311 (and tp!295226 tp!295222))))

(assert (= (and b!959901 (is-ElementMatch!2658 (regTwo!5828 r!15766))) b!960186))

(assert (= (and b!959901 (is-Concat!4491 (regTwo!5828 r!15766))) b!960187))

(assert (= (and b!959901 (is-Star!2658 (regTwo!5828 r!15766))) b!960188))

(assert (= (and b!959901 (is-Union!2658 (regTwo!5828 r!15766))) b!960189))

(push 1)

(assert (not d!285055))

(assert (not bm!60493))

(assert (not d!285057))

(assert (not b!960185))

(assert (not b!960083))

(assert (not b!960188))

(assert (not b!960112))

(assert (not b!960180))

(assert tp_is_empty!4959)

(assert (not d!285067))

(assert (not b!960187))

(assert (not bm!60499))

(assert (not b!960087))

(assert (not b!960037))

(assert (not bm!60481))

(assert (not d!285045))

(assert (not b!960167))

(assert (not b!960176))

(assert (not b!960084))

(assert (not d!285073))

(assert (not b!959975))

(assert (not b!960173))

(assert (not b!960189))

(assert (not bm!60480))

(assert (not b!960168))

(assert (not b!960175))

(assert (not b!960107))

(assert (not d!285063))

(assert (not b!960111))

(assert (not b!960183))

(assert (not b!960181))

(assert (not b!960184))

(assert (not b!960179))

(assert (not b!960082))

(assert (not b!960079))

(assert (not b!960110))

(assert (not b!960088))

(assert (not b!960028))

(assert (not bm!60492))

(assert (not b!960177))

(assert (not b!960109))

(assert (not d!285065))

(assert (not b!960108))

(assert (not d!285059))

(assert (not b!960166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

