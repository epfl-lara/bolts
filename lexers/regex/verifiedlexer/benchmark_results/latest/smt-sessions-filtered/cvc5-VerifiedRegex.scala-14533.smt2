; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!754922 () Bool)

(assert start!754922)

(declare-fun b!8020165 () Bool)

(declare-fun e!4724474 () Bool)

(declare-fun tp_is_empty!54035 () Bool)

(declare-fun tp!2400427 () Bool)

(assert (=> b!8020165 (= e!4724474 (and tp_is_empty!54035 tp!2400427))))

(declare-datatypes ((B!4147 0))(
  ( (B!4148 (val!32463 Int)) )
))
(declare-datatypes ((List!74975 0))(
  ( (Nil!74851) (Cons!74851 (h!81299 B!4147) (t!390718 List!74975)) )
))
(declare-fun tl2!39 () List!74975)

(declare-fun b!8020166 () Bool)

(declare-fun hd2!39 () B!4147)

(declare-fun s1!496 () List!74975)

(declare-fun e!4724476 () Bool)

(declare-fun tot!47 () List!74975)

(declare-fun ++!18541 (List!74975 List!74975) List!74975)

(assert (=> b!8020166 (= e!4724476 (not (= (++!18541 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)) tl2!39) tot!47)))))

(declare-fun b!8020167 () Bool)

(declare-fun e!4724477 () Bool)

(declare-fun tp!2400429 () Bool)

(assert (=> b!8020167 (= e!4724477 (and tp_is_empty!54035 tp!2400429))))

(declare-fun b!8020168 () Bool)

(declare-fun res!3171139 () Bool)

(assert (=> b!8020168 (=> (not res!3171139) (not e!4724476))))

(assert (=> b!8020168 (= res!3171139 (not (is-Cons!74851 s1!496)))))

(declare-fun b!8020169 () Bool)

(declare-fun e!4724475 () Bool)

(declare-fun tp!2400428 () Bool)

(assert (=> b!8020169 (= e!4724475 (and tp_is_empty!54035 tp!2400428))))

(declare-fun res!3171140 () Bool)

(assert (=> start!754922 (=> (not res!3171140) (not e!4724476))))

(assert (=> start!754922 (= res!3171140 (= (++!18541 s1!496 (Cons!74851 hd2!39 tl2!39)) tot!47))))

(assert (=> start!754922 e!4724476))

(assert (=> start!754922 e!4724474))

(assert (=> start!754922 tp_is_empty!54035))

(assert (=> start!754922 e!4724475))

(assert (=> start!754922 e!4724477))

(assert (= (and start!754922 res!3171140) b!8020168))

(assert (= (and b!8020168 res!3171139) b!8020166))

(assert (= (and start!754922 (is-Cons!74851 s1!496)) b!8020165))

(assert (= (and start!754922 (is-Cons!74851 tl2!39)) b!8020169))

(assert (= (and start!754922 (is-Cons!74851 tot!47)) b!8020167))

(declare-fun m!8383158 () Bool)

(assert (=> b!8020166 m!8383158))

(assert (=> b!8020166 m!8383158))

(declare-fun m!8383160 () Bool)

(assert (=> b!8020166 m!8383160))

(declare-fun m!8383162 () Bool)

(assert (=> start!754922 m!8383162))

(push 1)

(assert (not start!754922))

(assert (not b!8020165))

(assert (not b!8020169))

(assert (not b!8020167))

(assert tp_is_empty!54035)

(assert (not b!8020166))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!4724495 () List!74975)

(declare-fun b!8020194 () Bool)

(assert (=> b!8020194 (= e!4724495 (Cons!74851 (h!81299 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) (++!18541 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) tl2!39)))))

(declare-fun d!2391462 () Bool)

(declare-fun e!4724494 () Bool)

(assert (=> d!2391462 e!4724494))

(declare-fun res!3171152 () Bool)

(assert (=> d!2391462 (=> (not res!3171152) (not e!4724494))))

(declare-fun lt!2719748 () List!74975)

(declare-fun content!15936 (List!74975) (Set B!4147))

(assert (=> d!2391462 (= res!3171152 (= (content!15936 lt!2719748) (set.union (content!15936 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) (content!15936 tl2!39))))))

(assert (=> d!2391462 (= lt!2719748 e!4724495)))

(declare-fun c!1471979 () Bool)

(assert (=> d!2391462 (= c!1471979 (is-Nil!74851 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))))))

(assert (=> d!2391462 (= (++!18541 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)) tl2!39) lt!2719748)))

(declare-fun b!8020195 () Bool)

(declare-fun res!3171151 () Bool)

(assert (=> b!8020195 (=> (not res!3171151) (not e!4724494))))

(declare-fun size!43638 (List!74975) Int)

(assert (=> b!8020195 (= res!3171151 (= (size!43638 lt!2719748) (+ (size!43638 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) (size!43638 tl2!39))))))

(declare-fun b!8020193 () Bool)

(assert (=> b!8020193 (= e!4724495 tl2!39)))

(declare-fun b!8020196 () Bool)

(assert (=> b!8020196 (= e!4724494 (or (not (= tl2!39 Nil!74851)) (= lt!2719748 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)))))))

(assert (= (and d!2391462 c!1471979) b!8020193))

(assert (= (and d!2391462 (not c!1471979)) b!8020194))

(assert (= (and d!2391462 res!3171152) b!8020195))

(assert (= (and b!8020195 res!3171151) b!8020196))

(declare-fun m!8383170 () Bool)

(assert (=> b!8020194 m!8383170))

(declare-fun m!8383172 () Bool)

(assert (=> d!2391462 m!8383172))

(assert (=> d!2391462 m!8383158))

(declare-fun m!8383174 () Bool)

(assert (=> d!2391462 m!8383174))

(declare-fun m!8383176 () Bool)

(assert (=> d!2391462 m!8383176))

(declare-fun m!8383178 () Bool)

(assert (=> b!8020195 m!8383178))

(assert (=> b!8020195 m!8383158))

(declare-fun m!8383180 () Bool)

(assert (=> b!8020195 m!8383180))

(declare-fun m!8383182 () Bool)

(assert (=> b!8020195 m!8383182))

(assert (=> b!8020166 d!2391462))

(declare-fun b!8020198 () Bool)

(declare-fun e!4724497 () List!74975)

(assert (=> b!8020198 (= e!4724497 (Cons!74851 (h!81299 s1!496) (++!18541 (t!390718 s1!496) (Cons!74851 hd2!39 Nil!74851))))))

(declare-fun d!2391466 () Bool)

(declare-fun e!4724496 () Bool)

(assert (=> d!2391466 e!4724496))

(declare-fun res!3171154 () Bool)

(assert (=> d!2391466 (=> (not res!3171154) (not e!4724496))))

(declare-fun lt!2719749 () List!74975)

(assert (=> d!2391466 (= res!3171154 (= (content!15936 lt!2719749) (set.union (content!15936 s1!496) (content!15936 (Cons!74851 hd2!39 Nil!74851)))))))

(assert (=> d!2391466 (= lt!2719749 e!4724497)))

(declare-fun c!1471980 () Bool)

(assert (=> d!2391466 (= c!1471980 (is-Nil!74851 s1!496))))

(assert (=> d!2391466 (= (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)) lt!2719749)))

(declare-fun b!8020199 () Bool)

(declare-fun res!3171153 () Bool)

(assert (=> b!8020199 (=> (not res!3171153) (not e!4724496))))

(assert (=> b!8020199 (= res!3171153 (= (size!43638 lt!2719749) (+ (size!43638 s1!496) (size!43638 (Cons!74851 hd2!39 Nil!74851)))))))

(declare-fun b!8020197 () Bool)

(assert (=> b!8020197 (= e!4724497 (Cons!74851 hd2!39 Nil!74851))))

(declare-fun b!8020200 () Bool)

(assert (=> b!8020200 (= e!4724496 (or (not (= (Cons!74851 hd2!39 Nil!74851) Nil!74851)) (= lt!2719749 s1!496)))))

(assert (= (and d!2391466 c!1471980) b!8020197))

(assert (= (and d!2391466 (not c!1471980)) b!8020198))

(assert (= (and d!2391466 res!3171154) b!8020199))

(assert (= (and b!8020199 res!3171153) b!8020200))

(declare-fun m!8383184 () Bool)

(assert (=> b!8020198 m!8383184))

(declare-fun m!8383186 () Bool)

(assert (=> d!2391466 m!8383186))

(declare-fun m!8383188 () Bool)

(assert (=> d!2391466 m!8383188))

(declare-fun m!8383190 () Bool)

(assert (=> d!2391466 m!8383190))

(declare-fun m!8383192 () Bool)

(assert (=> b!8020199 m!8383192))

(declare-fun m!8383194 () Bool)

(assert (=> b!8020199 m!8383194))

(declare-fun m!8383196 () Bool)

(assert (=> b!8020199 m!8383196))

(assert (=> b!8020166 d!2391466))

(declare-fun e!4724499 () List!74975)

(declare-fun b!8020202 () Bool)

(assert (=> b!8020202 (= e!4724499 (Cons!74851 (h!81299 s1!496) (++!18541 (t!390718 s1!496) (Cons!74851 hd2!39 tl2!39))))))

(declare-fun d!2391468 () Bool)

(declare-fun e!4724498 () Bool)

(assert (=> d!2391468 e!4724498))

(declare-fun res!3171156 () Bool)

(assert (=> d!2391468 (=> (not res!3171156) (not e!4724498))))

(declare-fun lt!2719750 () List!74975)

(assert (=> d!2391468 (= res!3171156 (= (content!15936 lt!2719750) (set.union (content!15936 s1!496) (content!15936 (Cons!74851 hd2!39 tl2!39)))))))

(assert (=> d!2391468 (= lt!2719750 e!4724499)))

(declare-fun c!1471981 () Bool)

(assert (=> d!2391468 (= c!1471981 (is-Nil!74851 s1!496))))

(assert (=> d!2391468 (= (++!18541 s1!496 (Cons!74851 hd2!39 tl2!39)) lt!2719750)))

(declare-fun b!8020203 () Bool)

(declare-fun res!3171155 () Bool)

(assert (=> b!8020203 (=> (not res!3171155) (not e!4724498))))

(assert (=> b!8020203 (= res!3171155 (= (size!43638 lt!2719750) (+ (size!43638 s1!496) (size!43638 (Cons!74851 hd2!39 tl2!39)))))))

(declare-fun b!8020201 () Bool)

(assert (=> b!8020201 (= e!4724499 (Cons!74851 hd2!39 tl2!39))))

(declare-fun b!8020204 () Bool)

(assert (=> b!8020204 (= e!4724498 (or (not (= (Cons!74851 hd2!39 tl2!39) Nil!74851)) (= lt!2719750 s1!496)))))

(assert (= (and d!2391468 c!1471981) b!8020201))

(assert (= (and d!2391468 (not c!1471981)) b!8020202))

(assert (= (and d!2391468 res!3171156) b!8020203))

(assert (= (and b!8020203 res!3171155) b!8020204))

(declare-fun m!8383198 () Bool)

(assert (=> b!8020202 m!8383198))

(declare-fun m!8383200 () Bool)

(assert (=> d!2391468 m!8383200))

(assert (=> d!2391468 m!8383188))

(declare-fun m!8383202 () Bool)

(assert (=> d!2391468 m!8383202))

(declare-fun m!8383204 () Bool)

(assert (=> b!8020203 m!8383204))

(assert (=> b!8020203 m!8383194))

(declare-fun m!8383206 () Bool)

(assert (=> b!8020203 m!8383206))

(assert (=> start!754922 d!2391468))

(declare-fun b!8020209 () Bool)

(declare-fun e!4724502 () Bool)

(declare-fun tp!2400441 () Bool)

(assert (=> b!8020209 (= e!4724502 (and tp_is_empty!54035 tp!2400441))))

(assert (=> b!8020165 (= tp!2400427 e!4724502)))

(assert (= (and b!8020165 (is-Cons!74851 (t!390718 s1!496))) b!8020209))

(declare-fun b!8020210 () Bool)

(declare-fun e!4724503 () Bool)

(declare-fun tp!2400442 () Bool)

(assert (=> b!8020210 (= e!4724503 (and tp_is_empty!54035 tp!2400442))))

(assert (=> b!8020167 (= tp!2400429 e!4724503)))

(assert (= (and b!8020167 (is-Cons!74851 (t!390718 tot!47))) b!8020210))

(declare-fun b!8020211 () Bool)

(declare-fun e!4724504 () Bool)

(declare-fun tp!2400443 () Bool)

(assert (=> b!8020211 (= e!4724504 (and tp_is_empty!54035 tp!2400443))))

(assert (=> b!8020169 (= tp!2400428 e!4724504)))

(assert (= (and b!8020169 (is-Cons!74851 (t!390718 tl2!39))) b!8020211))

(push 1)

(assert (not b!8020202))

(assert (not b!8020211))

(assert (not b!8020195))

(assert tp_is_empty!54035)

(assert (not b!8020203))

(assert (not b!8020194))

(assert (not b!8020199))

(assert (not d!2391462))

(assert (not b!8020209))

(assert (not b!8020198))

(assert (not d!2391466))

(assert (not d!2391468))

(assert (not b!8020210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391474 () Bool)

(declare-fun c!1471989 () Bool)

(assert (=> d!2391474 (= c!1471989 (is-Nil!74851 lt!2719749))))

(declare-fun e!4724522 () (Set B!4147))

(assert (=> d!2391474 (= (content!15936 lt!2719749) e!4724522)))

(declare-fun b!8020243 () Bool)

(assert (=> b!8020243 (= e!4724522 (as set.empty (Set B!4147)))))

(declare-fun b!8020244 () Bool)

(assert (=> b!8020244 (= e!4724522 (set.union (set.insert (h!81299 lt!2719749) (as set.empty (Set B!4147))) (content!15936 (t!390718 lt!2719749))))))

(assert (= (and d!2391474 c!1471989) b!8020243))

(assert (= (and d!2391474 (not c!1471989)) b!8020244))

(declare-fun m!8383246 () Bool)

(assert (=> b!8020244 m!8383246))

(declare-fun m!8383248 () Bool)

(assert (=> b!8020244 m!8383248))

(assert (=> d!2391466 d!2391474))

(declare-fun d!2391476 () Bool)

(declare-fun c!1471990 () Bool)

(assert (=> d!2391476 (= c!1471990 (is-Nil!74851 s1!496))))

(declare-fun e!4724523 () (Set B!4147))

(assert (=> d!2391476 (= (content!15936 s1!496) e!4724523)))

(declare-fun b!8020245 () Bool)

(assert (=> b!8020245 (= e!4724523 (as set.empty (Set B!4147)))))

(declare-fun b!8020246 () Bool)

(assert (=> b!8020246 (= e!4724523 (set.union (set.insert (h!81299 s1!496) (as set.empty (Set B!4147))) (content!15936 (t!390718 s1!496))))))

(assert (= (and d!2391476 c!1471990) b!8020245))

(assert (= (and d!2391476 (not c!1471990)) b!8020246))

(declare-fun m!8383250 () Bool)

(assert (=> b!8020246 m!8383250))

(declare-fun m!8383252 () Bool)

(assert (=> b!8020246 m!8383252))

(assert (=> d!2391466 d!2391476))

(declare-fun d!2391478 () Bool)

(declare-fun c!1471991 () Bool)

(assert (=> d!2391478 (= c!1471991 (is-Nil!74851 (Cons!74851 hd2!39 Nil!74851)))))

(declare-fun e!4724524 () (Set B!4147))

(assert (=> d!2391478 (= (content!15936 (Cons!74851 hd2!39 Nil!74851)) e!4724524)))

(declare-fun b!8020247 () Bool)

(assert (=> b!8020247 (= e!4724524 (as set.empty (Set B!4147)))))

(declare-fun b!8020248 () Bool)

(assert (=> b!8020248 (= e!4724524 (set.union (set.insert (h!81299 (Cons!74851 hd2!39 Nil!74851)) (as set.empty (Set B!4147))) (content!15936 (t!390718 (Cons!74851 hd2!39 Nil!74851)))))))

(assert (= (and d!2391478 c!1471991) b!8020247))

(assert (= (and d!2391478 (not c!1471991)) b!8020248))

(declare-fun m!8383254 () Bool)

(assert (=> b!8020248 m!8383254))

(declare-fun m!8383256 () Bool)

(assert (=> b!8020248 m!8383256))

(assert (=> d!2391466 d!2391478))

(declare-fun d!2391480 () Bool)

(declare-fun c!1471992 () Bool)

(assert (=> d!2391480 (= c!1471992 (is-Nil!74851 lt!2719750))))

(declare-fun e!4724525 () (Set B!4147))

(assert (=> d!2391480 (= (content!15936 lt!2719750) e!4724525)))

(declare-fun b!8020249 () Bool)

(assert (=> b!8020249 (= e!4724525 (as set.empty (Set B!4147)))))

(declare-fun b!8020250 () Bool)

(assert (=> b!8020250 (= e!4724525 (set.union (set.insert (h!81299 lt!2719750) (as set.empty (Set B!4147))) (content!15936 (t!390718 lt!2719750))))))

(assert (= (and d!2391480 c!1471992) b!8020249))

(assert (= (and d!2391480 (not c!1471992)) b!8020250))

(declare-fun m!8383258 () Bool)

(assert (=> b!8020250 m!8383258))

(declare-fun m!8383260 () Bool)

(assert (=> b!8020250 m!8383260))

(assert (=> d!2391468 d!2391480))

(assert (=> d!2391468 d!2391476))

(declare-fun d!2391482 () Bool)

(declare-fun c!1471993 () Bool)

(assert (=> d!2391482 (= c!1471993 (is-Nil!74851 (Cons!74851 hd2!39 tl2!39)))))

(declare-fun e!4724526 () (Set B!4147))

(assert (=> d!2391482 (= (content!15936 (Cons!74851 hd2!39 tl2!39)) e!4724526)))

(declare-fun b!8020251 () Bool)

(assert (=> b!8020251 (= e!4724526 (as set.empty (Set B!4147)))))

(declare-fun b!8020252 () Bool)

(assert (=> b!8020252 (= e!4724526 (set.union (set.insert (h!81299 (Cons!74851 hd2!39 tl2!39)) (as set.empty (Set B!4147))) (content!15936 (t!390718 (Cons!74851 hd2!39 tl2!39)))))))

(assert (= (and d!2391482 c!1471993) b!8020251))

(assert (= (and d!2391482 (not c!1471993)) b!8020252))

(declare-fun m!8383262 () Bool)

(assert (=> b!8020252 m!8383262))

(declare-fun m!8383264 () Bool)

(assert (=> b!8020252 m!8383264))

(assert (=> d!2391468 d!2391482))

(declare-fun d!2391484 () Bool)

(declare-fun c!1471994 () Bool)

(assert (=> d!2391484 (= c!1471994 (is-Nil!74851 lt!2719748))))

(declare-fun e!4724527 () (Set B!4147))

(assert (=> d!2391484 (= (content!15936 lt!2719748) e!4724527)))

(declare-fun b!8020253 () Bool)

(assert (=> b!8020253 (= e!4724527 (as set.empty (Set B!4147)))))

(declare-fun b!8020254 () Bool)

(assert (=> b!8020254 (= e!4724527 (set.union (set.insert (h!81299 lt!2719748) (as set.empty (Set B!4147))) (content!15936 (t!390718 lt!2719748))))))

(assert (= (and d!2391484 c!1471994) b!8020253))

(assert (= (and d!2391484 (not c!1471994)) b!8020254))

(declare-fun m!8383266 () Bool)

(assert (=> b!8020254 m!8383266))

(declare-fun m!8383268 () Bool)

(assert (=> b!8020254 m!8383268))

(assert (=> d!2391462 d!2391484))

(declare-fun d!2391486 () Bool)

(declare-fun c!1471995 () Bool)

(assert (=> d!2391486 (= c!1471995 (is-Nil!74851 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))))))

(declare-fun e!4724528 () (Set B!4147))

(assert (=> d!2391486 (= (content!15936 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) e!4724528)))

(declare-fun b!8020255 () Bool)

(assert (=> b!8020255 (= e!4724528 (as set.empty (Set B!4147)))))

(declare-fun b!8020256 () Bool)

(assert (=> b!8020256 (= e!4724528 (set.union (set.insert (h!81299 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) (as set.empty (Set B!4147))) (content!15936 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))))))))

(assert (= (and d!2391486 c!1471995) b!8020255))

(assert (= (and d!2391486 (not c!1471995)) b!8020256))

(declare-fun m!8383270 () Bool)

(assert (=> b!8020256 m!8383270))

(declare-fun m!8383272 () Bool)

(assert (=> b!8020256 m!8383272))

(assert (=> d!2391462 d!2391486))

(declare-fun d!2391488 () Bool)

(declare-fun c!1471996 () Bool)

(assert (=> d!2391488 (= c!1471996 (is-Nil!74851 tl2!39))))

(declare-fun e!4724529 () (Set B!4147))

(assert (=> d!2391488 (= (content!15936 tl2!39) e!4724529)))

(declare-fun b!8020257 () Bool)

(assert (=> b!8020257 (= e!4724529 (as set.empty (Set B!4147)))))

(declare-fun b!8020258 () Bool)

(assert (=> b!8020258 (= e!4724529 (set.union (set.insert (h!81299 tl2!39) (as set.empty (Set B!4147))) (content!15936 (t!390718 tl2!39))))))

(assert (= (and d!2391488 c!1471996) b!8020257))

(assert (= (and d!2391488 (not c!1471996)) b!8020258))

(declare-fun m!8383274 () Bool)

(assert (=> b!8020258 m!8383274))

(declare-fun m!8383276 () Bool)

(assert (=> b!8020258 m!8383276))

(assert (=> d!2391462 d!2391488))

(declare-fun b!8020260 () Bool)

(declare-fun e!4724531 () List!74975)

(assert (=> b!8020260 (= e!4724531 (Cons!74851 (h!81299 (t!390718 s1!496)) (++!18541 (t!390718 (t!390718 s1!496)) (Cons!74851 hd2!39 Nil!74851))))))

(declare-fun d!2391490 () Bool)

(declare-fun e!4724530 () Bool)

(assert (=> d!2391490 e!4724530))

(declare-fun res!3171168 () Bool)

(assert (=> d!2391490 (=> (not res!3171168) (not e!4724530))))

(declare-fun lt!2719756 () List!74975)

(assert (=> d!2391490 (= res!3171168 (= (content!15936 lt!2719756) (set.union (content!15936 (t!390718 s1!496)) (content!15936 (Cons!74851 hd2!39 Nil!74851)))))))

(assert (=> d!2391490 (= lt!2719756 e!4724531)))

(declare-fun c!1471997 () Bool)

(assert (=> d!2391490 (= c!1471997 (is-Nil!74851 (t!390718 s1!496)))))

(assert (=> d!2391490 (= (++!18541 (t!390718 s1!496) (Cons!74851 hd2!39 Nil!74851)) lt!2719756)))

(declare-fun b!8020261 () Bool)

(declare-fun res!3171167 () Bool)

(assert (=> b!8020261 (=> (not res!3171167) (not e!4724530))))

(assert (=> b!8020261 (= res!3171167 (= (size!43638 lt!2719756) (+ (size!43638 (t!390718 s1!496)) (size!43638 (Cons!74851 hd2!39 Nil!74851)))))))

(declare-fun b!8020259 () Bool)

(assert (=> b!8020259 (= e!4724531 (Cons!74851 hd2!39 Nil!74851))))

(declare-fun b!8020262 () Bool)

(assert (=> b!8020262 (= e!4724530 (or (not (= (Cons!74851 hd2!39 Nil!74851) Nil!74851)) (= lt!2719756 (t!390718 s1!496))))))

(assert (= (and d!2391490 c!1471997) b!8020259))

(assert (= (and d!2391490 (not c!1471997)) b!8020260))

(assert (= (and d!2391490 res!3171168) b!8020261))

(assert (= (and b!8020261 res!3171167) b!8020262))

(declare-fun m!8383278 () Bool)

(assert (=> b!8020260 m!8383278))

(declare-fun m!8383280 () Bool)

(assert (=> d!2391490 m!8383280))

(assert (=> d!2391490 m!8383252))

(assert (=> d!2391490 m!8383190))

(declare-fun m!8383282 () Bool)

(assert (=> b!8020261 m!8383282))

(declare-fun m!8383284 () Bool)

(assert (=> b!8020261 m!8383284))

(assert (=> b!8020261 m!8383196))

(assert (=> b!8020198 d!2391490))

(declare-fun d!2391492 () Bool)

(declare-fun lt!2719759 () Int)

(assert (=> d!2391492 (>= lt!2719759 0)))

(declare-fun e!4724534 () Int)

(assert (=> d!2391492 (= lt!2719759 e!4724534)))

(declare-fun c!1472000 () Bool)

(assert (=> d!2391492 (= c!1472000 (is-Nil!74851 lt!2719750))))

(assert (=> d!2391492 (= (size!43638 lt!2719750) lt!2719759)))

(declare-fun b!8020267 () Bool)

(assert (=> b!8020267 (= e!4724534 0)))

(declare-fun b!8020268 () Bool)

(assert (=> b!8020268 (= e!4724534 (+ 1 (size!43638 (t!390718 lt!2719750))))))

(assert (= (and d!2391492 c!1472000) b!8020267))

(assert (= (and d!2391492 (not c!1472000)) b!8020268))

(declare-fun m!8383286 () Bool)

(assert (=> b!8020268 m!8383286))

(assert (=> b!8020203 d!2391492))

(declare-fun d!2391494 () Bool)

(declare-fun lt!2719760 () Int)

(assert (=> d!2391494 (>= lt!2719760 0)))

(declare-fun e!4724535 () Int)

(assert (=> d!2391494 (= lt!2719760 e!4724535)))

(declare-fun c!1472001 () Bool)

(assert (=> d!2391494 (= c!1472001 (is-Nil!74851 s1!496))))

(assert (=> d!2391494 (= (size!43638 s1!496) lt!2719760)))

(declare-fun b!8020269 () Bool)

(assert (=> b!8020269 (= e!4724535 0)))

(declare-fun b!8020270 () Bool)

(assert (=> b!8020270 (= e!4724535 (+ 1 (size!43638 (t!390718 s1!496))))))

(assert (= (and d!2391494 c!1472001) b!8020269))

(assert (= (and d!2391494 (not c!1472001)) b!8020270))

(assert (=> b!8020270 m!8383284))

(assert (=> b!8020203 d!2391494))

(declare-fun d!2391496 () Bool)

(declare-fun lt!2719761 () Int)

(assert (=> d!2391496 (>= lt!2719761 0)))

(declare-fun e!4724536 () Int)

(assert (=> d!2391496 (= lt!2719761 e!4724536)))

(declare-fun c!1472002 () Bool)

(assert (=> d!2391496 (= c!1472002 (is-Nil!74851 (Cons!74851 hd2!39 tl2!39)))))

(assert (=> d!2391496 (= (size!43638 (Cons!74851 hd2!39 tl2!39)) lt!2719761)))

(declare-fun b!8020271 () Bool)

(assert (=> b!8020271 (= e!4724536 0)))

(declare-fun b!8020272 () Bool)

(assert (=> b!8020272 (= e!4724536 (+ 1 (size!43638 (t!390718 (Cons!74851 hd2!39 tl2!39)))))))

(assert (= (and d!2391496 c!1472002) b!8020271))

(assert (= (and d!2391496 (not c!1472002)) b!8020272))

(declare-fun m!8383288 () Bool)

(assert (=> b!8020272 m!8383288))

(assert (=> b!8020203 d!2391496))

(declare-fun e!4724538 () List!74975)

(declare-fun b!8020274 () Bool)

(assert (=> b!8020274 (= e!4724538 (Cons!74851 (h!81299 (t!390718 s1!496)) (++!18541 (t!390718 (t!390718 s1!496)) (Cons!74851 hd2!39 tl2!39))))))

(declare-fun d!2391498 () Bool)

(declare-fun e!4724537 () Bool)

(assert (=> d!2391498 e!4724537))

(declare-fun res!3171170 () Bool)

(assert (=> d!2391498 (=> (not res!3171170) (not e!4724537))))

(declare-fun lt!2719762 () List!74975)

(assert (=> d!2391498 (= res!3171170 (= (content!15936 lt!2719762) (set.union (content!15936 (t!390718 s1!496)) (content!15936 (Cons!74851 hd2!39 tl2!39)))))))

(assert (=> d!2391498 (= lt!2719762 e!4724538)))

(declare-fun c!1472003 () Bool)

(assert (=> d!2391498 (= c!1472003 (is-Nil!74851 (t!390718 s1!496)))))

(assert (=> d!2391498 (= (++!18541 (t!390718 s1!496) (Cons!74851 hd2!39 tl2!39)) lt!2719762)))

(declare-fun b!8020275 () Bool)

(declare-fun res!3171169 () Bool)

(assert (=> b!8020275 (=> (not res!3171169) (not e!4724537))))

(assert (=> b!8020275 (= res!3171169 (= (size!43638 lt!2719762) (+ (size!43638 (t!390718 s1!496)) (size!43638 (Cons!74851 hd2!39 tl2!39)))))))

(declare-fun b!8020273 () Bool)

(assert (=> b!8020273 (= e!4724538 (Cons!74851 hd2!39 tl2!39))))

(declare-fun b!8020276 () Bool)

(assert (=> b!8020276 (= e!4724537 (or (not (= (Cons!74851 hd2!39 tl2!39) Nil!74851)) (= lt!2719762 (t!390718 s1!496))))))

(assert (= (and d!2391498 c!1472003) b!8020273))

(assert (= (and d!2391498 (not c!1472003)) b!8020274))

(assert (= (and d!2391498 res!3171170) b!8020275))

(assert (= (and b!8020275 res!3171169) b!8020276))

(declare-fun m!8383290 () Bool)

(assert (=> b!8020274 m!8383290))

(declare-fun m!8383292 () Bool)

(assert (=> d!2391498 m!8383292))

(assert (=> d!2391498 m!8383252))

(assert (=> d!2391498 m!8383202))

(declare-fun m!8383294 () Bool)

(assert (=> b!8020275 m!8383294))

(assert (=> b!8020275 m!8383284))

(assert (=> b!8020275 m!8383206))

(assert (=> b!8020202 d!2391498))

(declare-fun d!2391500 () Bool)

(declare-fun lt!2719763 () Int)

(assert (=> d!2391500 (>= lt!2719763 0)))

(declare-fun e!4724539 () Int)

(assert (=> d!2391500 (= lt!2719763 e!4724539)))

(declare-fun c!1472004 () Bool)

(assert (=> d!2391500 (= c!1472004 (is-Nil!74851 lt!2719748))))

(assert (=> d!2391500 (= (size!43638 lt!2719748) lt!2719763)))

(declare-fun b!8020277 () Bool)

(assert (=> b!8020277 (= e!4724539 0)))

(declare-fun b!8020278 () Bool)

(assert (=> b!8020278 (= e!4724539 (+ 1 (size!43638 (t!390718 lt!2719748))))))

(assert (= (and d!2391500 c!1472004) b!8020277))

(assert (= (and d!2391500 (not c!1472004)) b!8020278))

(declare-fun m!8383296 () Bool)

(assert (=> b!8020278 m!8383296))

(assert (=> b!8020195 d!2391500))

(declare-fun d!2391502 () Bool)

(declare-fun lt!2719764 () Int)

(assert (=> d!2391502 (>= lt!2719764 0)))

(declare-fun e!4724540 () Int)

(assert (=> d!2391502 (= lt!2719764 e!4724540)))

(declare-fun c!1472005 () Bool)

(assert (=> d!2391502 (= c!1472005 (is-Nil!74851 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))))))

(assert (=> d!2391502 (= (size!43638 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) lt!2719764)))

(declare-fun b!8020279 () Bool)

(assert (=> b!8020279 (= e!4724540 0)))

(declare-fun b!8020280 () Bool)

(assert (=> b!8020280 (= e!4724540 (+ 1 (size!43638 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))))))))

(assert (= (and d!2391502 c!1472005) b!8020279))

(assert (= (and d!2391502 (not c!1472005)) b!8020280))

(declare-fun m!8383298 () Bool)

(assert (=> b!8020280 m!8383298))

(assert (=> b!8020195 d!2391502))

(declare-fun d!2391504 () Bool)

(declare-fun lt!2719765 () Int)

(assert (=> d!2391504 (>= lt!2719765 0)))

(declare-fun e!4724541 () Int)

(assert (=> d!2391504 (= lt!2719765 e!4724541)))

(declare-fun c!1472006 () Bool)

(assert (=> d!2391504 (= c!1472006 (is-Nil!74851 tl2!39))))

(assert (=> d!2391504 (= (size!43638 tl2!39) lt!2719765)))

(declare-fun b!8020281 () Bool)

(assert (=> b!8020281 (= e!4724541 0)))

(declare-fun b!8020282 () Bool)

(assert (=> b!8020282 (= e!4724541 (+ 1 (size!43638 (t!390718 tl2!39))))))

(assert (= (and d!2391504 c!1472006) b!8020281))

(assert (= (and d!2391504 (not c!1472006)) b!8020282))

(declare-fun m!8383300 () Bool)

(assert (=> b!8020282 m!8383300))

(assert (=> b!8020195 d!2391504))

(declare-fun e!4724543 () List!74975)

(declare-fun b!8020284 () Bool)

(assert (=> b!8020284 (= e!4724543 (Cons!74851 (h!81299 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)))) (++!18541 (t!390718 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)))) tl2!39)))))

(declare-fun d!2391506 () Bool)

(declare-fun e!4724542 () Bool)

(assert (=> d!2391506 e!4724542))

(declare-fun res!3171172 () Bool)

(assert (=> d!2391506 (=> (not res!3171172) (not e!4724542))))

(declare-fun lt!2719766 () List!74975)

(assert (=> d!2391506 (= res!3171172 (= (content!15936 lt!2719766) (set.union (content!15936 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)))) (content!15936 tl2!39))))))

(assert (=> d!2391506 (= lt!2719766 e!4724543)))

(declare-fun c!1472007 () Bool)

(assert (=> d!2391506 (= c!1472007 (is-Nil!74851 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)))))))

(assert (=> d!2391506 (= (++!18541 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))) tl2!39) lt!2719766)))

(declare-fun b!8020285 () Bool)

(declare-fun res!3171171 () Bool)

(assert (=> b!8020285 (=> (not res!3171171) (not e!4724542))))

(assert (=> b!8020285 (= res!3171171 (= (size!43638 lt!2719766) (+ (size!43638 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851)))) (size!43638 tl2!39))))))

(declare-fun b!8020283 () Bool)

(assert (=> b!8020283 (= e!4724543 tl2!39)))

(declare-fun b!8020286 () Bool)

(assert (=> b!8020286 (= e!4724542 (or (not (= tl2!39 Nil!74851)) (= lt!2719766 (t!390718 (++!18541 s1!496 (Cons!74851 hd2!39 Nil!74851))))))))

(assert (= (and d!2391506 c!1472007) b!8020283))

(assert (= (and d!2391506 (not c!1472007)) b!8020284))

(assert (= (and d!2391506 res!3171172) b!8020285))

(assert (= (and b!8020285 res!3171171) b!8020286))

(declare-fun m!8383302 () Bool)

(assert (=> b!8020284 m!8383302))

(declare-fun m!8383304 () Bool)

(assert (=> d!2391506 m!8383304))

(assert (=> d!2391506 m!8383272))

(assert (=> d!2391506 m!8383176))

(declare-fun m!8383306 () Bool)

(assert (=> b!8020285 m!8383306))

(assert (=> b!8020285 m!8383298))

(assert (=> b!8020285 m!8383182))

(assert (=> b!8020194 d!2391506))

(declare-fun d!2391508 () Bool)

(declare-fun lt!2719767 () Int)

(assert (=> d!2391508 (>= lt!2719767 0)))

(declare-fun e!4724544 () Int)

(assert (=> d!2391508 (= lt!2719767 e!4724544)))

(declare-fun c!1472008 () Bool)

(assert (=> d!2391508 (= c!1472008 (is-Nil!74851 lt!2719749))))

(assert (=> d!2391508 (= (size!43638 lt!2719749) lt!2719767)))

(declare-fun b!8020287 () Bool)

(assert (=> b!8020287 (= e!4724544 0)))

(declare-fun b!8020288 () Bool)

(assert (=> b!8020288 (= e!4724544 (+ 1 (size!43638 (t!390718 lt!2719749))))))

(assert (= (and d!2391508 c!1472008) b!8020287))

(assert (= (and d!2391508 (not c!1472008)) b!8020288))

(declare-fun m!8383308 () Bool)

(assert (=> b!8020288 m!8383308))

(assert (=> b!8020199 d!2391508))

(assert (=> b!8020199 d!2391494))

(declare-fun d!2391510 () Bool)

(declare-fun lt!2719768 () Int)

(assert (=> d!2391510 (>= lt!2719768 0)))

(declare-fun e!4724545 () Int)

(assert (=> d!2391510 (= lt!2719768 e!4724545)))

(declare-fun c!1472009 () Bool)

(assert (=> d!2391510 (= c!1472009 (is-Nil!74851 (Cons!74851 hd2!39 Nil!74851)))))

(assert (=> d!2391510 (= (size!43638 (Cons!74851 hd2!39 Nil!74851)) lt!2719768)))

(declare-fun b!8020289 () Bool)

(assert (=> b!8020289 (= e!4724545 0)))

(declare-fun b!8020290 () Bool)

(assert (=> b!8020290 (= e!4724545 (+ 1 (size!43638 (t!390718 (Cons!74851 hd2!39 Nil!74851)))))))

(assert (= (and d!2391510 c!1472009) b!8020289))

(assert (= (and d!2391510 (not c!1472009)) b!8020290))

(declare-fun m!8383310 () Bool)

(assert (=> b!8020290 m!8383310))

(assert (=> b!8020199 d!2391510))

(declare-fun b!8020291 () Bool)

(declare-fun e!4724546 () Bool)

(declare-fun tp!2400449 () Bool)

(assert (=> b!8020291 (= e!4724546 (and tp_is_empty!54035 tp!2400449))))

(assert (=> b!8020210 (= tp!2400442 e!4724546)))

(assert (= (and b!8020210 (is-Cons!74851 (t!390718 (t!390718 tot!47)))) b!8020291))

(declare-fun b!8020292 () Bool)

(declare-fun e!4724547 () Bool)

(declare-fun tp!2400450 () Bool)

(assert (=> b!8020292 (= e!4724547 (and tp_is_empty!54035 tp!2400450))))

(assert (=> b!8020211 (= tp!2400443 e!4724547)))

(assert (= (and b!8020211 (is-Cons!74851 (t!390718 (t!390718 tl2!39)))) b!8020292))

(declare-fun b!8020293 () Bool)

(declare-fun e!4724548 () Bool)

(declare-fun tp!2400451 () Bool)

(assert (=> b!8020293 (= e!4724548 (and tp_is_empty!54035 tp!2400451))))

(assert (=> b!8020209 (= tp!2400441 e!4724548)))

(assert (= (and b!8020209 (is-Cons!74851 (t!390718 (t!390718 s1!496)))) b!8020293))

(push 1)

(assert (not d!2391506))

(assert (not b!8020282))

(assert (not b!8020250))

(assert (not b!8020256))

(assert (not b!8020275))

(assert (not b!8020272))

(assert (not b!8020254))

(assert (not b!8020261))

(assert (not b!8020260))

(assert (not b!8020270))

(assert (not b!8020292))

(assert (not b!8020280))

(assert (not b!8020268))

(assert (not b!8020274))

(assert (not b!8020244))

(assert (not b!8020291))

(assert (not b!8020248))

(assert (not d!2391498))

(assert (not d!2391490))

(assert tp_is_empty!54035)

(assert (not b!8020288))

(assert (not b!8020285))

(assert (not b!8020246))

(assert (not b!8020278))

(assert (not b!8020258))

(assert (not b!8020293))

(assert (not b!8020284))

(assert (not b!8020252))

(assert (not b!8020290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

