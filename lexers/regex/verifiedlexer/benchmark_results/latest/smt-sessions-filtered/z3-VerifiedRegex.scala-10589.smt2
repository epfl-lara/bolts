; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544424 () Bool)

(assert start!544424)

(declare-fun b!5143100 () Bool)

(declare-fun e!3207183 () Bool)

(declare-fun tp!1436118 () Bool)

(assert (=> b!5143100 (= e!3207183 tp!1436118)))

(declare-fun res!2189795 () Bool)

(declare-fun e!3207184 () Bool)

(assert (=> start!544424 (=> (not res!2189795) (not e!3207184))))

(declare-datatypes ((C!29204 0))(
  ( (C!29205 (val!24254 Int)) )
))
(declare-datatypes ((Regex!14469 0))(
  ( (ElementMatch!14469 (c!885367 C!29204)) (Concat!23314 (regOne!29450 Regex!14469) (regTwo!29450 Regex!14469)) (EmptyExpr!14469) (Star!14469 (reg!14798 Regex!14469)) (EmptyLang!14469) (Union!14469 (regOne!29451 Regex!14469) (regTwo!29451 Regex!14469)) )
))
(declare-fun expr!117 () Regex!14469)

(declare-fun validRegex!6324 (Regex!14469) Bool)

(assert (=> start!544424 (= res!2189795 (validRegex!6324 expr!117))))

(assert (=> start!544424 e!3207184))

(assert (=> start!544424 e!3207183))

(declare-datatypes ((List!59849 0))(
  ( (Nil!59725) (Cons!59725 (h!66173 Regex!14469) (t!372884 List!59849)) )
))
(declare-datatypes ((Context!7706 0))(
  ( (Context!7707 (exprs!4353 List!59849)) )
))
(declare-fun ctx!100 () Context!7706)

(declare-fun e!3207185 () Bool)

(declare-fun inv!79353 (Context!7706) Bool)

(assert (=> start!544424 (and (inv!79353 ctx!100) e!3207185)))

(declare-fun tp_is_empty!38087 () Bool)

(assert (=> start!544424 tp_is_empty!38087))

(declare-fun b!5143101 () Bool)

(declare-fun tp!1436115 () Bool)

(declare-fun tp!1436114 () Bool)

(assert (=> b!5143101 (= e!3207183 (and tp!1436115 tp!1436114))))

(declare-fun b!5143102 () Bool)

(declare-fun res!2189797 () Bool)

(assert (=> b!5143102 (=> (not res!2189797) (not e!3207184))))

(assert (=> b!5143102 (= res!2189797 (validRegex!6324 (regOne!29451 expr!117)))))

(declare-fun b!5143103 () Bool)

(declare-fun regexDepth!135 (Regex!14469) Int)

(assert (=> b!5143103 (= e!3207184 (>= (regexDepth!135 (regOne!29451 expr!117)) (regexDepth!135 expr!117)))))

(declare-fun b!5143104 () Bool)

(declare-fun tp!1436119 () Bool)

(assert (=> b!5143104 (= e!3207185 tp!1436119)))

(declare-fun b!5143105 () Bool)

(declare-fun res!2189796 () Bool)

(assert (=> b!5143105 (=> (not res!2189796) (not e!3207184))))

(declare-fun e!3207187 () Bool)

(assert (=> b!5143105 (= res!2189796 e!3207187)))

(declare-fun res!2189794 () Bool)

(assert (=> b!5143105 (=> res!2189794 e!3207187)))

(declare-fun lostCause!1490 (Regex!14469) Bool)

(assert (=> b!5143105 (= res!2189794 (lostCause!1490 (regOne!29451 expr!117)))))

(declare-fun b!5143106 () Bool)

(declare-fun res!2189798 () Bool)

(assert (=> b!5143106 (=> (not res!2189798) (not e!3207184))))

(declare-fun e!3207186 () Bool)

(assert (=> b!5143106 (= res!2189798 e!3207186)))

(declare-fun res!2189799 () Bool)

(assert (=> b!5143106 (=> res!2189799 e!3207186)))

(assert (=> b!5143106 (= res!2189799 (lostCause!1490 expr!117))))

(declare-fun b!5143107 () Bool)

(assert (=> b!5143107 (= e!3207183 tp_is_empty!38087)))

(declare-fun b!5143108 () Bool)

(declare-fun tp!1436117 () Bool)

(declare-fun tp!1436116 () Bool)

(assert (=> b!5143108 (= e!3207183 (and tp!1436117 tp!1436116))))

(declare-fun b!5143109 () Bool)

(declare-fun lostCause!1491 (Context!7706) Bool)

(assert (=> b!5143109 (= e!3207186 (lostCause!1491 ctx!100))))

(declare-fun b!5143110 () Bool)

(declare-fun res!2189800 () Bool)

(assert (=> b!5143110 (=> (not res!2189800) (not e!3207184))))

(declare-fun a!1296 () C!29204)

(get-info :version)

(assert (=> b!5143110 (= res!2189800 (and (or (not ((_ is ElementMatch!14469) expr!117)) (not (= (c!885367 expr!117) a!1296))) ((_ is Union!14469) expr!117)))))

(declare-fun b!5143111 () Bool)

(assert (=> b!5143111 (= e!3207187 (lostCause!1491 ctx!100))))

(assert (= (and start!544424 res!2189795) b!5143106))

(assert (= (and b!5143106 (not res!2189799)) b!5143109))

(assert (= (and b!5143106 res!2189798) b!5143110))

(assert (= (and b!5143110 res!2189800) b!5143102))

(assert (= (and b!5143102 res!2189797) b!5143105))

(assert (= (and b!5143105 (not res!2189794)) b!5143111))

(assert (= (and b!5143105 res!2189796) b!5143103))

(assert (= (and start!544424 ((_ is ElementMatch!14469) expr!117)) b!5143107))

(assert (= (and start!544424 ((_ is Concat!23314) expr!117)) b!5143108))

(assert (= (and start!544424 ((_ is Star!14469) expr!117)) b!5143100))

(assert (= (and start!544424 ((_ is Union!14469) expr!117)) b!5143101))

(assert (= start!544424 b!5143104))

(declare-fun m!6205160 () Bool)

(assert (=> b!5143111 m!6205160))

(declare-fun m!6205162 () Bool)

(assert (=> b!5143103 m!6205162))

(declare-fun m!6205164 () Bool)

(assert (=> b!5143103 m!6205164))

(declare-fun m!6205166 () Bool)

(assert (=> b!5143102 m!6205166))

(declare-fun m!6205168 () Bool)

(assert (=> b!5143106 m!6205168))

(declare-fun m!6205170 () Bool)

(assert (=> b!5143105 m!6205170))

(declare-fun m!6205172 () Bool)

(assert (=> start!544424 m!6205172))

(declare-fun m!6205174 () Bool)

(assert (=> start!544424 m!6205174))

(assert (=> b!5143109 m!6205160))

(check-sat (not b!5143105) (not b!5143100) (not b!5143102) (not b!5143111) (not b!5143106) (not b!5143103) (not start!544424) (not b!5143104) (not b!5143101) (not b!5143108) tp_is_empty!38087 (not b!5143109))
(check-sat)
(get-model)

(declare-fun d!1663012 () Bool)

(declare-fun lostCauseFct!351 (Regex!14469) Bool)

(assert (=> d!1663012 (= (lostCause!1490 expr!117) (lostCauseFct!351 expr!117))))

(declare-fun bs!1200888 () Bool)

(assert (= bs!1200888 d!1663012))

(declare-fun m!6205176 () Bool)

(assert (=> bs!1200888 m!6205176))

(assert (=> b!5143106 d!1663012))

(declare-fun d!1663014 () Bool)

(declare-fun lambda!256519 () Int)

(declare-fun exists!1787 (List!59849 Int) Bool)

(assert (=> d!1663014 (= (lostCause!1491 ctx!100) (exists!1787 (exprs!4353 ctx!100) lambda!256519))))

(declare-fun bs!1200889 () Bool)

(assert (= bs!1200889 d!1663014))

(declare-fun m!6205184 () Bool)

(assert (=> bs!1200889 m!6205184))

(assert (=> b!5143111 d!1663014))

(declare-fun d!1663020 () Bool)

(assert (=> d!1663020 (= (lostCause!1490 (regOne!29451 expr!117)) (lostCauseFct!351 (regOne!29451 expr!117)))))

(declare-fun bs!1200890 () Bool)

(assert (= bs!1200890 d!1663020))

(declare-fun m!6205186 () Bool)

(assert (=> bs!1200890 m!6205186))

(assert (=> b!5143105 d!1663020))

(declare-fun call!359040 () Bool)

(declare-fun bm!359034 () Bool)

(declare-fun c!885378 () Bool)

(declare-fun c!885379 () Bool)

(assert (=> bm!359034 (= call!359040 (validRegex!6324 (ite c!885378 (reg!14798 expr!117) (ite c!885379 (regTwo!29451 expr!117) (regTwo!29450 expr!117)))))))

(declare-fun b!5143157 () Bool)

(declare-fun e!3207223 () Bool)

(declare-fun e!3207225 () Bool)

(assert (=> b!5143157 (= e!3207223 e!3207225)))

(declare-fun res!2189827 () Bool)

(assert (=> b!5143157 (=> (not res!2189827) (not e!3207225))))

(declare-fun call!359041 () Bool)

(assert (=> b!5143157 (= res!2189827 call!359041)))

(declare-fun b!5143158 () Bool)

(declare-fun call!359039 () Bool)

(assert (=> b!5143158 (= e!3207225 call!359039)))

(declare-fun b!5143159 () Bool)

(declare-fun e!3207224 () Bool)

(assert (=> b!5143159 (= e!3207224 call!359040)))

(declare-fun d!1663022 () Bool)

(declare-fun res!2189829 () Bool)

(declare-fun e!3207228 () Bool)

(assert (=> d!1663022 (=> res!2189829 e!3207228)))

(assert (=> d!1663022 (= res!2189829 ((_ is ElementMatch!14469) expr!117))))

(assert (=> d!1663022 (= (validRegex!6324 expr!117) e!3207228)))

(declare-fun bm!359035 () Bool)

(assert (=> bm!359035 (= call!359039 call!359040)))

(declare-fun b!5143160 () Bool)

(declare-fun e!3207226 () Bool)

(assert (=> b!5143160 (= e!3207226 e!3207224)))

(declare-fun res!2189830 () Bool)

(declare-fun nullable!4825 (Regex!14469) Bool)

(assert (=> b!5143160 (= res!2189830 (not (nullable!4825 (reg!14798 expr!117))))))

(assert (=> b!5143160 (=> (not res!2189830) (not e!3207224))))

(declare-fun b!5143161 () Bool)

(declare-fun e!3207229 () Bool)

(assert (=> b!5143161 (= e!3207226 e!3207229)))

(assert (=> b!5143161 (= c!885379 ((_ is Union!14469) expr!117))))

(declare-fun bm!359036 () Bool)

(assert (=> bm!359036 (= call!359041 (validRegex!6324 (ite c!885379 (regOne!29451 expr!117) (regOne!29450 expr!117))))))

(declare-fun b!5143162 () Bool)

(declare-fun res!2189828 () Bool)

(declare-fun e!3207227 () Bool)

(assert (=> b!5143162 (=> (not res!2189828) (not e!3207227))))

(assert (=> b!5143162 (= res!2189828 call!359041)))

(assert (=> b!5143162 (= e!3207229 e!3207227)))

(declare-fun b!5143163 () Bool)

(declare-fun res!2189826 () Bool)

(assert (=> b!5143163 (=> res!2189826 e!3207223)))

(assert (=> b!5143163 (= res!2189826 (not ((_ is Concat!23314) expr!117)))))

(assert (=> b!5143163 (= e!3207229 e!3207223)))

(declare-fun b!5143164 () Bool)

(assert (=> b!5143164 (= e!3207228 e!3207226)))

(assert (=> b!5143164 (= c!885378 ((_ is Star!14469) expr!117))))

(declare-fun b!5143165 () Bool)

(assert (=> b!5143165 (= e!3207227 call!359039)))

(assert (= (and d!1663022 (not res!2189829)) b!5143164))

(assert (= (and b!5143164 c!885378) b!5143160))

(assert (= (and b!5143164 (not c!885378)) b!5143161))

(assert (= (and b!5143160 res!2189830) b!5143159))

(assert (= (and b!5143161 c!885379) b!5143162))

(assert (= (and b!5143161 (not c!885379)) b!5143163))

(assert (= (and b!5143162 res!2189828) b!5143165))

(assert (= (and b!5143163 (not res!2189826)) b!5143157))

(assert (= (and b!5143157 res!2189827) b!5143158))

(assert (= (or b!5143165 b!5143158) bm!359035))

(assert (= (or b!5143162 b!5143157) bm!359036))

(assert (= (or b!5143159 bm!359035) bm!359034))

(declare-fun m!6205188 () Bool)

(assert (=> bm!359034 m!6205188))

(declare-fun m!6205190 () Bool)

(assert (=> b!5143160 m!6205190))

(declare-fun m!6205192 () Bool)

(assert (=> bm!359036 m!6205192))

(assert (=> start!544424 d!1663022))

(declare-fun bs!1200891 () Bool)

(declare-fun d!1663024 () Bool)

(assert (= bs!1200891 (and d!1663024 d!1663014)))

(declare-fun lambda!256522 () Int)

(assert (=> bs!1200891 (not (= lambda!256522 lambda!256519))))

(declare-fun forall!13926 (List!59849 Int) Bool)

(assert (=> d!1663024 (= (inv!79353 ctx!100) (forall!13926 (exprs!4353 ctx!100) lambda!256522))))

(declare-fun bs!1200892 () Bool)

(assert (= bs!1200892 d!1663024))

(declare-fun m!6205194 () Bool)

(assert (=> bs!1200892 m!6205194))

(assert (=> start!544424 d!1663024))

(assert (=> b!5143109 d!1663014))

(declare-fun b!5143200 () Bool)

(declare-fun e!3207258 () Bool)

(declare-fun lt!2120505 () Int)

(declare-fun call!359061 () Int)

(assert (=> b!5143200 (= e!3207258 (> lt!2120505 call!359061))))

(declare-fun bm!359051 () Bool)

(declare-fun call!359058 () Int)

(declare-fun c!885400 () Bool)

(assert (=> bm!359051 (= call!359058 (regexDepth!135 (ite c!885400 (regOne!29451 (regOne!29451 expr!117)) (regTwo!29450 (regOne!29451 expr!117)))))))

(declare-fun b!5143201 () Bool)

(assert (=> b!5143201 (= e!3207258 (= lt!2120505 1))))

(declare-fun call!359060 () Int)

(declare-fun c!885398 () Bool)

(declare-fun bm!359052 () Bool)

(assert (=> bm!359052 (= call!359060 (regexDepth!135 (ite c!885400 (regTwo!29451 (regOne!29451 expr!117)) (ite c!885398 (regOne!29450 (regOne!29451 expr!117)) (reg!14798 (regOne!29451 expr!117))))))))

(declare-fun b!5143202 () Bool)

(declare-fun e!3207252 () Int)

(declare-fun e!3207253 () Int)

(assert (=> b!5143202 (= e!3207252 e!3207253)))

(declare-fun c!885396 () Bool)

(assert (=> b!5143202 (= c!885396 ((_ is Concat!23314) (regOne!29451 expr!117)))))

(declare-fun b!5143203 () Bool)

(declare-fun e!3207257 () Bool)

(declare-fun e!3207254 () Bool)

(assert (=> b!5143203 (= e!3207257 e!3207254)))

(assert (=> b!5143203 (= c!885400 ((_ is Union!14469) (regOne!29451 expr!117)))))

(declare-fun b!5143204 () Bool)

(declare-fun e!3207251 () Int)

(declare-fun call!359057 () Int)

(assert (=> b!5143204 (= e!3207251 (+ 1 call!359057))))

(declare-fun b!5143205 () Bool)

(declare-fun call!359056 () Int)

(assert (=> b!5143205 (= e!3207253 (+ 1 call!359056))))

(declare-fun bm!359054 () Bool)

(assert (=> bm!359054 (= call!359061 call!359060)))

(declare-fun b!5143206 () Bool)

(declare-fun e!3207255 () Bool)

(assert (=> b!5143206 (= e!3207255 (> lt!2120505 call!359060))))

(declare-fun b!5143207 () Bool)

(declare-fun e!3207256 () Int)

(assert (=> b!5143207 (= e!3207256 1)))

(declare-fun b!5143208 () Bool)

(declare-fun c!885399 () Bool)

(assert (=> b!5143208 (= c!885399 ((_ is Star!14469) (regOne!29451 expr!117)))))

(declare-fun e!3207259 () Bool)

(assert (=> b!5143208 (= e!3207259 e!3207258)))

(declare-fun b!5143209 () Bool)

(assert (=> b!5143209 (= e!3207252 (+ 1 call!359056))))

(declare-fun b!5143210 () Bool)

(assert (=> b!5143210 (= e!3207253 1)))

(declare-fun b!5143211 () Bool)

(declare-fun res!2189838 () Bool)

(declare-fun e!3207250 () Bool)

(assert (=> b!5143211 (=> (not res!2189838) (not e!3207250))))

(assert (=> b!5143211 (= res!2189838 (> lt!2120505 call!359061))))

(assert (=> b!5143211 (= e!3207259 e!3207250)))

(declare-fun call!359059 () Int)

(declare-fun bm!359055 () Bool)

(declare-fun c!885397 () Bool)

(declare-fun call!359062 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!359055 (= call!359056 (maxBigInt!0 (ite c!885397 call!359062 call!359059) (ite c!885397 call!359059 call!359062)))))

(declare-fun bm!359056 () Bool)

(assert (=> bm!359056 (= call!359062 (regexDepth!135 (ite c!885397 (regOne!29451 (regOne!29451 expr!117)) (regTwo!29450 (regOne!29451 expr!117)))))))

(declare-fun d!1663026 () Bool)

(assert (=> d!1663026 e!3207257))

(declare-fun res!2189837 () Bool)

(assert (=> d!1663026 (=> (not res!2189837) (not e!3207257))))

(assert (=> d!1663026 (= res!2189837 (> lt!2120505 0))))

(assert (=> d!1663026 (= lt!2120505 e!3207256)))

(declare-fun c!885395 () Bool)

(assert (=> d!1663026 (= c!885395 ((_ is ElementMatch!14469) (regOne!29451 expr!117)))))

(assert (=> d!1663026 (= (regexDepth!135 (regOne!29451 expr!117)) lt!2120505)))

(declare-fun bm!359053 () Bool)

(declare-fun c!885394 () Bool)

(assert (=> bm!359053 (= call!359057 (regexDepth!135 (ite c!885394 (reg!14798 (regOne!29451 expr!117)) (ite c!885397 (regTwo!29451 (regOne!29451 expr!117)) (regOne!29450 (regOne!29451 expr!117))))))))

(declare-fun b!5143212 () Bool)

(assert (=> b!5143212 (= e!3207256 e!3207251)))

(assert (=> b!5143212 (= c!885394 ((_ is Star!14469) (regOne!29451 expr!117)))))

(declare-fun b!5143213 () Bool)

(assert (=> b!5143213 (= c!885397 ((_ is Union!14469) (regOne!29451 expr!117)))))

(assert (=> b!5143213 (= e!3207251 e!3207252)))

(declare-fun b!5143214 () Bool)

(assert (=> b!5143214 (= e!3207250 (> lt!2120505 call!359058))))

(declare-fun b!5143215 () Bool)

(assert (=> b!5143215 (= e!3207254 e!3207259)))

(assert (=> b!5143215 (= c!885398 ((_ is Concat!23314) (regOne!29451 expr!117)))))

(declare-fun bm!359057 () Bool)

(assert (=> bm!359057 (= call!359059 call!359057)))

(declare-fun b!5143216 () Bool)

(assert (=> b!5143216 (= e!3207254 e!3207255)))

(declare-fun res!2189839 () Bool)

(assert (=> b!5143216 (= res!2189839 (> lt!2120505 call!359058))))

(assert (=> b!5143216 (=> (not res!2189839) (not e!3207255))))

(assert (= (and d!1663026 c!885395) b!5143207))

(assert (= (and d!1663026 (not c!885395)) b!5143212))

(assert (= (and b!5143212 c!885394) b!5143204))

(assert (= (and b!5143212 (not c!885394)) b!5143213))

(assert (= (and b!5143213 c!885397) b!5143209))

(assert (= (and b!5143213 (not c!885397)) b!5143202))

(assert (= (and b!5143202 c!885396) b!5143205))

(assert (= (and b!5143202 (not c!885396)) b!5143210))

(assert (= (or b!5143209 b!5143205) bm!359057))

(assert (= (or b!5143209 b!5143205) bm!359056))

(assert (= (or b!5143209 b!5143205) bm!359055))

(assert (= (or b!5143204 bm!359057) bm!359053))

(assert (= (and d!1663026 res!2189837) b!5143203))

(assert (= (and b!5143203 c!885400) b!5143216))

(assert (= (and b!5143203 (not c!885400)) b!5143215))

(assert (= (and b!5143216 res!2189839) b!5143206))

(assert (= (and b!5143215 c!885398) b!5143211))

(assert (= (and b!5143215 (not c!885398)) b!5143208))

(assert (= (and b!5143211 res!2189838) b!5143214))

(assert (= (and b!5143208 c!885399) b!5143200))

(assert (= (and b!5143208 (not c!885399)) b!5143201))

(assert (= (or b!5143211 b!5143200) bm!359054))

(assert (= (or b!5143206 bm!359054) bm!359052))

(assert (= (or b!5143216 b!5143214) bm!359051))

(declare-fun m!6205196 () Bool)

(assert (=> bm!359053 m!6205196))

(declare-fun m!6205198 () Bool)

(assert (=> bm!359052 m!6205198))

(declare-fun m!6205200 () Bool)

(assert (=> bm!359051 m!6205200))

(declare-fun m!6205202 () Bool)

(assert (=> bm!359056 m!6205202))

(declare-fun m!6205204 () Bool)

(assert (=> bm!359055 m!6205204))

(assert (=> b!5143103 d!1663026))

(declare-fun b!5143217 () Bool)

(declare-fun e!3207268 () Bool)

(declare-fun lt!2120506 () Int)

(declare-fun call!359068 () Int)

(assert (=> b!5143217 (= e!3207268 (> lt!2120506 call!359068))))

(declare-fun bm!359058 () Bool)

(declare-fun call!359065 () Int)

(declare-fun c!885407 () Bool)

(assert (=> bm!359058 (= call!359065 (regexDepth!135 (ite c!885407 (regOne!29451 expr!117) (regTwo!29450 expr!117))))))

(declare-fun b!5143218 () Bool)

(assert (=> b!5143218 (= e!3207268 (= lt!2120506 1))))

(declare-fun c!885405 () Bool)

(declare-fun bm!359059 () Bool)

(declare-fun call!359067 () Int)

(assert (=> bm!359059 (= call!359067 (regexDepth!135 (ite c!885407 (regTwo!29451 expr!117) (ite c!885405 (regOne!29450 expr!117) (reg!14798 expr!117)))))))

(declare-fun b!5143219 () Bool)

(declare-fun e!3207262 () Int)

(declare-fun e!3207263 () Int)

(assert (=> b!5143219 (= e!3207262 e!3207263)))

(declare-fun c!885403 () Bool)

(assert (=> b!5143219 (= c!885403 ((_ is Concat!23314) expr!117))))

(declare-fun b!5143220 () Bool)

(declare-fun e!3207267 () Bool)

(declare-fun e!3207264 () Bool)

(assert (=> b!5143220 (= e!3207267 e!3207264)))

(assert (=> b!5143220 (= c!885407 ((_ is Union!14469) expr!117))))

(declare-fun b!5143221 () Bool)

(declare-fun e!3207261 () Int)

(declare-fun call!359064 () Int)

(assert (=> b!5143221 (= e!3207261 (+ 1 call!359064))))

(declare-fun b!5143222 () Bool)

(declare-fun call!359063 () Int)

(assert (=> b!5143222 (= e!3207263 (+ 1 call!359063))))

(declare-fun bm!359061 () Bool)

(assert (=> bm!359061 (= call!359068 call!359067)))

(declare-fun b!5143223 () Bool)

(declare-fun e!3207265 () Bool)

(assert (=> b!5143223 (= e!3207265 (> lt!2120506 call!359067))))

(declare-fun b!5143224 () Bool)

(declare-fun e!3207266 () Int)

(assert (=> b!5143224 (= e!3207266 1)))

(declare-fun b!5143225 () Bool)

(declare-fun c!885406 () Bool)

(assert (=> b!5143225 (= c!885406 ((_ is Star!14469) expr!117))))

(declare-fun e!3207269 () Bool)

(assert (=> b!5143225 (= e!3207269 e!3207268)))

(declare-fun b!5143226 () Bool)

(assert (=> b!5143226 (= e!3207262 (+ 1 call!359063))))

(declare-fun b!5143227 () Bool)

(assert (=> b!5143227 (= e!3207263 1)))

(declare-fun b!5143228 () Bool)

(declare-fun res!2189841 () Bool)

(declare-fun e!3207260 () Bool)

(assert (=> b!5143228 (=> (not res!2189841) (not e!3207260))))

(assert (=> b!5143228 (= res!2189841 (> lt!2120506 call!359068))))

(assert (=> b!5143228 (= e!3207269 e!3207260)))

(declare-fun call!359066 () Int)

(declare-fun c!885404 () Bool)

(declare-fun call!359069 () Int)

(declare-fun bm!359062 () Bool)

(assert (=> bm!359062 (= call!359063 (maxBigInt!0 (ite c!885404 call!359069 call!359066) (ite c!885404 call!359066 call!359069)))))

(declare-fun bm!359063 () Bool)

(assert (=> bm!359063 (= call!359069 (regexDepth!135 (ite c!885404 (regOne!29451 expr!117) (regTwo!29450 expr!117))))))

(declare-fun d!1663028 () Bool)

(assert (=> d!1663028 e!3207267))

(declare-fun res!2189840 () Bool)

(assert (=> d!1663028 (=> (not res!2189840) (not e!3207267))))

(assert (=> d!1663028 (= res!2189840 (> lt!2120506 0))))

(assert (=> d!1663028 (= lt!2120506 e!3207266)))

(declare-fun c!885402 () Bool)

(assert (=> d!1663028 (= c!885402 ((_ is ElementMatch!14469) expr!117))))

(assert (=> d!1663028 (= (regexDepth!135 expr!117) lt!2120506)))

(declare-fun bm!359060 () Bool)

(declare-fun c!885401 () Bool)

(assert (=> bm!359060 (= call!359064 (regexDepth!135 (ite c!885401 (reg!14798 expr!117) (ite c!885404 (regTwo!29451 expr!117) (regOne!29450 expr!117)))))))

(declare-fun b!5143229 () Bool)

(assert (=> b!5143229 (= e!3207266 e!3207261)))

(assert (=> b!5143229 (= c!885401 ((_ is Star!14469) expr!117))))

(declare-fun b!5143230 () Bool)

(assert (=> b!5143230 (= c!885404 ((_ is Union!14469) expr!117))))

(assert (=> b!5143230 (= e!3207261 e!3207262)))

(declare-fun b!5143231 () Bool)

(assert (=> b!5143231 (= e!3207260 (> lt!2120506 call!359065))))

(declare-fun b!5143232 () Bool)

(assert (=> b!5143232 (= e!3207264 e!3207269)))

(assert (=> b!5143232 (= c!885405 ((_ is Concat!23314) expr!117))))

(declare-fun bm!359064 () Bool)

(assert (=> bm!359064 (= call!359066 call!359064)))

(declare-fun b!5143233 () Bool)

(assert (=> b!5143233 (= e!3207264 e!3207265)))

(declare-fun res!2189842 () Bool)

(assert (=> b!5143233 (= res!2189842 (> lt!2120506 call!359065))))

(assert (=> b!5143233 (=> (not res!2189842) (not e!3207265))))

(assert (= (and d!1663028 c!885402) b!5143224))

(assert (= (and d!1663028 (not c!885402)) b!5143229))

(assert (= (and b!5143229 c!885401) b!5143221))

(assert (= (and b!5143229 (not c!885401)) b!5143230))

(assert (= (and b!5143230 c!885404) b!5143226))

(assert (= (and b!5143230 (not c!885404)) b!5143219))

(assert (= (and b!5143219 c!885403) b!5143222))

(assert (= (and b!5143219 (not c!885403)) b!5143227))

(assert (= (or b!5143226 b!5143222) bm!359064))

(assert (= (or b!5143226 b!5143222) bm!359063))

(assert (= (or b!5143226 b!5143222) bm!359062))

(assert (= (or b!5143221 bm!359064) bm!359060))

(assert (= (and d!1663028 res!2189840) b!5143220))

(assert (= (and b!5143220 c!885407) b!5143233))

(assert (= (and b!5143220 (not c!885407)) b!5143232))

(assert (= (and b!5143233 res!2189842) b!5143223))

(assert (= (and b!5143232 c!885405) b!5143228))

(assert (= (and b!5143232 (not c!885405)) b!5143225))

(assert (= (and b!5143228 res!2189841) b!5143231))

(assert (= (and b!5143225 c!885406) b!5143217))

(assert (= (and b!5143225 (not c!885406)) b!5143218))

(assert (= (or b!5143228 b!5143217) bm!359061))

(assert (= (or b!5143223 bm!359061) bm!359059))

(assert (= (or b!5143233 b!5143231) bm!359058))

(declare-fun m!6205206 () Bool)

(assert (=> bm!359060 m!6205206))

(declare-fun m!6205208 () Bool)

(assert (=> bm!359059 m!6205208))

(declare-fun m!6205210 () Bool)

(assert (=> bm!359058 m!6205210))

(declare-fun m!6205212 () Bool)

(assert (=> bm!359063 m!6205212))

(declare-fun m!6205214 () Bool)

(assert (=> bm!359062 m!6205214))

(assert (=> b!5143103 d!1663028))

(declare-fun bm!359065 () Bool)

(declare-fun c!885408 () Bool)

(declare-fun c!885409 () Bool)

(declare-fun call!359071 () Bool)

(assert (=> bm!359065 (= call!359071 (validRegex!6324 (ite c!885408 (reg!14798 (regOne!29451 expr!117)) (ite c!885409 (regTwo!29451 (regOne!29451 expr!117)) (regTwo!29450 (regOne!29451 expr!117))))))))

(declare-fun b!5143234 () Bool)

(declare-fun e!3207270 () Bool)

(declare-fun e!3207272 () Bool)

(assert (=> b!5143234 (= e!3207270 e!3207272)))

(declare-fun res!2189844 () Bool)

(assert (=> b!5143234 (=> (not res!2189844) (not e!3207272))))

(declare-fun call!359072 () Bool)

(assert (=> b!5143234 (= res!2189844 call!359072)))

(declare-fun b!5143235 () Bool)

(declare-fun call!359070 () Bool)

(assert (=> b!5143235 (= e!3207272 call!359070)))

(declare-fun b!5143236 () Bool)

(declare-fun e!3207271 () Bool)

(assert (=> b!5143236 (= e!3207271 call!359071)))

(declare-fun d!1663030 () Bool)

(declare-fun res!2189846 () Bool)

(declare-fun e!3207275 () Bool)

(assert (=> d!1663030 (=> res!2189846 e!3207275)))

(assert (=> d!1663030 (= res!2189846 ((_ is ElementMatch!14469) (regOne!29451 expr!117)))))

(assert (=> d!1663030 (= (validRegex!6324 (regOne!29451 expr!117)) e!3207275)))

(declare-fun bm!359066 () Bool)

(assert (=> bm!359066 (= call!359070 call!359071)))

(declare-fun b!5143237 () Bool)

(declare-fun e!3207273 () Bool)

(assert (=> b!5143237 (= e!3207273 e!3207271)))

(declare-fun res!2189847 () Bool)

(assert (=> b!5143237 (= res!2189847 (not (nullable!4825 (reg!14798 (regOne!29451 expr!117)))))))

(assert (=> b!5143237 (=> (not res!2189847) (not e!3207271))))

(declare-fun b!5143238 () Bool)

(declare-fun e!3207276 () Bool)

(assert (=> b!5143238 (= e!3207273 e!3207276)))

(assert (=> b!5143238 (= c!885409 ((_ is Union!14469) (regOne!29451 expr!117)))))

(declare-fun bm!359067 () Bool)

(assert (=> bm!359067 (= call!359072 (validRegex!6324 (ite c!885409 (regOne!29451 (regOne!29451 expr!117)) (regOne!29450 (regOne!29451 expr!117)))))))

(declare-fun b!5143239 () Bool)

(declare-fun res!2189845 () Bool)

(declare-fun e!3207274 () Bool)

(assert (=> b!5143239 (=> (not res!2189845) (not e!3207274))))

(assert (=> b!5143239 (= res!2189845 call!359072)))

(assert (=> b!5143239 (= e!3207276 e!3207274)))

(declare-fun b!5143240 () Bool)

(declare-fun res!2189843 () Bool)

(assert (=> b!5143240 (=> res!2189843 e!3207270)))

(assert (=> b!5143240 (= res!2189843 (not ((_ is Concat!23314) (regOne!29451 expr!117))))))

(assert (=> b!5143240 (= e!3207276 e!3207270)))

(declare-fun b!5143241 () Bool)

(assert (=> b!5143241 (= e!3207275 e!3207273)))

(assert (=> b!5143241 (= c!885408 ((_ is Star!14469) (regOne!29451 expr!117)))))

(declare-fun b!5143242 () Bool)

(assert (=> b!5143242 (= e!3207274 call!359070)))

(assert (= (and d!1663030 (not res!2189846)) b!5143241))

(assert (= (and b!5143241 c!885408) b!5143237))

(assert (= (and b!5143241 (not c!885408)) b!5143238))

(assert (= (and b!5143237 res!2189847) b!5143236))

(assert (= (and b!5143238 c!885409) b!5143239))

(assert (= (and b!5143238 (not c!885409)) b!5143240))

(assert (= (and b!5143239 res!2189845) b!5143242))

(assert (= (and b!5143240 (not res!2189843)) b!5143234))

(assert (= (and b!5143234 res!2189844) b!5143235))

(assert (= (or b!5143242 b!5143235) bm!359066))

(assert (= (or b!5143239 b!5143234) bm!359067))

(assert (= (or b!5143236 bm!359066) bm!359065))

(declare-fun m!6205216 () Bool)

(assert (=> bm!359065 m!6205216))

(declare-fun m!6205218 () Bool)

(assert (=> b!5143237 m!6205218))

(declare-fun m!6205220 () Bool)

(assert (=> bm!359067 m!6205220))

(assert (=> b!5143102 d!1663030))

(declare-fun b!5143256 () Bool)

(declare-fun e!3207279 () Bool)

(declare-fun tp!1436132 () Bool)

(declare-fun tp!1436133 () Bool)

(assert (=> b!5143256 (= e!3207279 (and tp!1436132 tp!1436133))))

(declare-fun b!5143254 () Bool)

(declare-fun tp!1436131 () Bool)

(declare-fun tp!1436130 () Bool)

(assert (=> b!5143254 (= e!3207279 (and tp!1436131 tp!1436130))))

(declare-fun b!5143253 () Bool)

(assert (=> b!5143253 (= e!3207279 tp_is_empty!38087)))

(declare-fun b!5143255 () Bool)

(declare-fun tp!1436134 () Bool)

(assert (=> b!5143255 (= e!3207279 tp!1436134)))

(assert (=> b!5143101 (= tp!1436115 e!3207279)))

(assert (= (and b!5143101 ((_ is ElementMatch!14469) (regOne!29451 expr!117))) b!5143253))

(assert (= (and b!5143101 ((_ is Concat!23314) (regOne!29451 expr!117))) b!5143254))

(assert (= (and b!5143101 ((_ is Star!14469) (regOne!29451 expr!117))) b!5143255))

(assert (= (and b!5143101 ((_ is Union!14469) (regOne!29451 expr!117))) b!5143256))

(declare-fun b!5143260 () Bool)

(declare-fun e!3207280 () Bool)

(declare-fun tp!1436137 () Bool)

(declare-fun tp!1436138 () Bool)

(assert (=> b!5143260 (= e!3207280 (and tp!1436137 tp!1436138))))

(declare-fun b!5143258 () Bool)

(declare-fun tp!1436136 () Bool)

(declare-fun tp!1436135 () Bool)

(assert (=> b!5143258 (= e!3207280 (and tp!1436136 tp!1436135))))

(declare-fun b!5143257 () Bool)

(assert (=> b!5143257 (= e!3207280 tp_is_empty!38087)))

(declare-fun b!5143259 () Bool)

(declare-fun tp!1436139 () Bool)

(assert (=> b!5143259 (= e!3207280 tp!1436139)))

(assert (=> b!5143101 (= tp!1436114 e!3207280)))

(assert (= (and b!5143101 ((_ is ElementMatch!14469) (regTwo!29451 expr!117))) b!5143257))

(assert (= (and b!5143101 ((_ is Concat!23314) (regTwo!29451 expr!117))) b!5143258))

(assert (= (and b!5143101 ((_ is Star!14469) (regTwo!29451 expr!117))) b!5143259))

(assert (= (and b!5143101 ((_ is Union!14469) (regTwo!29451 expr!117))) b!5143260))

(declare-fun b!5143264 () Bool)

(declare-fun e!3207281 () Bool)

(declare-fun tp!1436142 () Bool)

(declare-fun tp!1436143 () Bool)

(assert (=> b!5143264 (= e!3207281 (and tp!1436142 tp!1436143))))

(declare-fun b!5143262 () Bool)

(declare-fun tp!1436141 () Bool)

(declare-fun tp!1436140 () Bool)

(assert (=> b!5143262 (= e!3207281 (and tp!1436141 tp!1436140))))

(declare-fun b!5143261 () Bool)

(assert (=> b!5143261 (= e!3207281 tp_is_empty!38087)))

(declare-fun b!5143263 () Bool)

(declare-fun tp!1436144 () Bool)

(assert (=> b!5143263 (= e!3207281 tp!1436144)))

(assert (=> b!5143100 (= tp!1436118 e!3207281)))

(assert (= (and b!5143100 ((_ is ElementMatch!14469) (reg!14798 expr!117))) b!5143261))

(assert (= (and b!5143100 ((_ is Concat!23314) (reg!14798 expr!117))) b!5143262))

(assert (= (and b!5143100 ((_ is Star!14469) (reg!14798 expr!117))) b!5143263))

(assert (= (and b!5143100 ((_ is Union!14469) (reg!14798 expr!117))) b!5143264))

(declare-fun b!5143269 () Bool)

(declare-fun e!3207284 () Bool)

(declare-fun tp!1436149 () Bool)

(declare-fun tp!1436150 () Bool)

(assert (=> b!5143269 (= e!3207284 (and tp!1436149 tp!1436150))))

(assert (=> b!5143104 (= tp!1436119 e!3207284)))

(assert (= (and b!5143104 ((_ is Cons!59725) (exprs!4353 ctx!100))) b!5143269))

(declare-fun b!5143273 () Bool)

(declare-fun e!3207285 () Bool)

(declare-fun tp!1436153 () Bool)

(declare-fun tp!1436154 () Bool)

(assert (=> b!5143273 (= e!3207285 (and tp!1436153 tp!1436154))))

(declare-fun b!5143271 () Bool)

(declare-fun tp!1436152 () Bool)

(declare-fun tp!1436151 () Bool)

(assert (=> b!5143271 (= e!3207285 (and tp!1436152 tp!1436151))))

(declare-fun b!5143270 () Bool)

(assert (=> b!5143270 (= e!3207285 tp_is_empty!38087)))

(declare-fun b!5143272 () Bool)

(declare-fun tp!1436155 () Bool)

(assert (=> b!5143272 (= e!3207285 tp!1436155)))

(assert (=> b!5143108 (= tp!1436117 e!3207285)))

(assert (= (and b!5143108 ((_ is ElementMatch!14469) (regOne!29450 expr!117))) b!5143270))

(assert (= (and b!5143108 ((_ is Concat!23314) (regOne!29450 expr!117))) b!5143271))

(assert (= (and b!5143108 ((_ is Star!14469) (regOne!29450 expr!117))) b!5143272))

(assert (= (and b!5143108 ((_ is Union!14469) (regOne!29450 expr!117))) b!5143273))

(declare-fun b!5143277 () Bool)

(declare-fun e!3207286 () Bool)

(declare-fun tp!1436158 () Bool)

(declare-fun tp!1436159 () Bool)

(assert (=> b!5143277 (= e!3207286 (and tp!1436158 tp!1436159))))

(declare-fun b!5143275 () Bool)

(declare-fun tp!1436157 () Bool)

(declare-fun tp!1436156 () Bool)

(assert (=> b!5143275 (= e!3207286 (and tp!1436157 tp!1436156))))

(declare-fun b!5143274 () Bool)

(assert (=> b!5143274 (= e!3207286 tp_is_empty!38087)))

(declare-fun b!5143276 () Bool)

(declare-fun tp!1436160 () Bool)

(assert (=> b!5143276 (= e!3207286 tp!1436160)))

(assert (=> b!5143108 (= tp!1436116 e!3207286)))

(assert (= (and b!5143108 ((_ is ElementMatch!14469) (regTwo!29450 expr!117))) b!5143274))

(assert (= (and b!5143108 ((_ is Concat!23314) (regTwo!29450 expr!117))) b!5143275))

(assert (= (and b!5143108 ((_ is Star!14469) (regTwo!29450 expr!117))) b!5143276))

(assert (= (and b!5143108 ((_ is Union!14469) (regTwo!29450 expr!117))) b!5143277))

(check-sat (not b!5143256) (not bm!359062) (not bm!359036) (not b!5143273) (not bm!359055) (not d!1663012) (not b!5143258) (not b!5143272) (not bm!359051) (not bm!359058) (not b!5143262) (not bm!359059) (not b!5143237) (not b!5143259) (not bm!359034) (not b!5143264) (not b!5143260) (not b!5143160) (not d!1663024) (not b!5143254) (not d!1663020) (not bm!359056) (not bm!359065) (not bm!359060) (not bm!359052) (not b!5143275) (not b!5143276) (not d!1663014) (not bm!359063) (not b!5143269) tp_is_empty!38087 (not b!5143271) (not bm!359067) (not bm!359053) (not b!5143255) (not b!5143277) (not b!5143263))
(check-sat)
