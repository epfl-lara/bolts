; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282014 () Bool)

(assert start!282014)

(declare-fun b!2893019 () Bool)

(declare-fun e!1828165 () Bool)

(declare-datatypes ((C!17856 0))(
  ( (C!17857 (val!10962 Int)) )
))
(declare-datatypes ((Regex!8837 0))(
  ( (ElementMatch!8837 (c!470518 C!17856)) (Concat!14158 (regOne!18186 Regex!8837) (regTwo!18186 Regex!8837)) (EmptyExpr!8837) (Star!8837 (reg!9166 Regex!8837)) (EmptyLang!8837) (Union!8837 (regOne!18187 Regex!8837) (regTwo!18187 Regex!8837)) )
))
(declare-fun r!23079 () Regex!8837)

(declare-fun regexDepth!77 (Regex!8837) Int)

(assert (=> b!2893019 (= e!1828165 (>= (regexDepth!77 (regTwo!18187 r!23079)) (regexDepth!77 r!23079)))))

(declare-fun b!2893020 () Bool)

(declare-fun e!1828163 () Bool)

(declare-fun tp!928875 () Bool)

(declare-fun tp!928877 () Bool)

(assert (=> b!2893020 (= e!1828163 (and tp!928875 tp!928877))))

(declare-fun b!2893021 () Bool)

(declare-fun e!1828164 () Bool)

(assert (=> b!2893021 (= e!1828164 e!1828165)))

(declare-fun res!1196881 () Bool)

(assert (=> b!2893021 (=> (not res!1196881) (not e!1828165))))

(declare-fun validRegex!3610 (Regex!8837) Bool)

(assert (=> b!2893021 (= res!1196881 (validRegex!3610 (regTwo!18187 r!23079)))))

(declare-datatypes ((List!34638 0))(
  ( (Nil!34514) (Cons!34514 (h!39934 C!17856) (t!233681 List!34638)) )
))
(declare-datatypes ((Option!6510 0))(
  ( (None!6509) (Some!6509 (v!34635 List!34638)) )
))
(declare-fun lt!1021220 () Option!6510)

(declare-fun getLanguageWitness!544 (Regex!8837) Option!6510)

(assert (=> b!2893021 (= lt!1021220 (getLanguageWitness!544 (regTwo!18187 r!23079)))))

(declare-fun b!2893022 () Bool)

(declare-fun res!1196882 () Bool)

(assert (=> b!2893022 (=> (not res!1196882) (not e!1828164))))

(get-info :version)

(assert (=> b!2893022 (= res!1196882 (and (not ((_ is EmptyExpr!8837) r!23079)) (not ((_ is EmptyLang!8837) r!23079)) (not ((_ is ElementMatch!8837) r!23079)) (not ((_ is Star!8837) r!23079)) ((_ is Union!8837) r!23079)))))

(declare-fun b!2893023 () Bool)

(declare-fun res!1196884 () Bool)

(assert (=> b!2893023 (=> (not res!1196884) (not e!1828164))))

(declare-fun isDefined!5074 (Option!6510) Bool)

(assert (=> b!2893023 (= res!1196884 (isDefined!5074 (getLanguageWitness!544 r!23079)))))

(declare-fun b!2893024 () Bool)

(declare-fun tp!928878 () Bool)

(declare-fun tp!928879 () Bool)

(assert (=> b!2893024 (= e!1828163 (and tp!928878 tp!928879))))

(declare-fun b!2893025 () Bool)

(declare-fun res!1196885 () Bool)

(assert (=> b!2893025 (=> (not res!1196885) (not e!1828165))))

(assert (=> b!2893025 (= res!1196885 (isDefined!5074 lt!1021220))))

(declare-fun b!2893026 () Bool)

(declare-fun tp!928876 () Bool)

(assert (=> b!2893026 (= e!1828163 tp!928876)))

(declare-fun res!1196883 () Bool)

(assert (=> start!282014 (=> (not res!1196883) (not e!1828164))))

(assert (=> start!282014 (= res!1196883 (validRegex!3610 r!23079))))

(assert (=> start!282014 e!1828164))

(assert (=> start!282014 e!1828163))

(declare-fun b!2893027 () Bool)

(declare-fun tp_is_empty!15261 () Bool)

(assert (=> b!2893027 (= e!1828163 tp_is_empty!15261)))

(declare-fun b!2893028 () Bool)

(declare-fun res!1196880 () Bool)

(assert (=> b!2893028 (=> (not res!1196880) (not e!1828164))))

(assert (=> b!2893028 (= res!1196880 (not ((_ is Some!6509) (getLanguageWitness!544 (regOne!18187 r!23079)))))))

(assert (= (and start!282014 res!1196883) b!2893023))

(assert (= (and b!2893023 res!1196884) b!2893022))

(assert (= (and b!2893022 res!1196882) b!2893028))

(assert (= (and b!2893028 res!1196880) b!2893021))

(assert (= (and b!2893021 res!1196881) b!2893025))

(assert (= (and b!2893025 res!1196885) b!2893019))

(assert (= (and start!282014 ((_ is ElementMatch!8837) r!23079)) b!2893027))

(assert (= (and start!282014 ((_ is Concat!14158) r!23079)) b!2893024))

(assert (= (and start!282014 ((_ is Star!8837) r!23079)) b!2893026))

(assert (= (and start!282014 ((_ is Union!8837) r!23079)) b!2893020))

(declare-fun m!3303109 () Bool)

(assert (=> b!2893021 m!3303109))

(declare-fun m!3303111 () Bool)

(assert (=> b!2893021 m!3303111))

(declare-fun m!3303113 () Bool)

(assert (=> start!282014 m!3303113))

(declare-fun m!3303115 () Bool)

(assert (=> b!2893019 m!3303115))

(declare-fun m!3303117 () Bool)

(assert (=> b!2893019 m!3303117))

(declare-fun m!3303119 () Bool)

(assert (=> b!2893025 m!3303119))

(declare-fun m!3303121 () Bool)

(assert (=> b!2893028 m!3303121))

(declare-fun m!3303123 () Bool)

(assert (=> b!2893023 m!3303123))

(assert (=> b!2893023 m!3303123))

(declare-fun m!3303125 () Bool)

(assert (=> b!2893023 m!3303125))

(check-sat (not b!2893026) (not b!2893024) (not b!2893021) (not b!2893023) (not b!2893020) (not b!2893025) (not b!2893019) tp_is_empty!15261 (not b!2893028) (not start!282014))
(check-sat)
(get-model)

(declare-fun b!2893079 () Bool)

(declare-fun res!1196898 () Bool)

(declare-fun e!1828198 () Bool)

(assert (=> b!2893079 (=> (not res!1196898) (not e!1828198))))

(declare-fun call!187985 () Bool)

(assert (=> b!2893079 (= res!1196898 call!187985)))

(declare-fun e!1828197 () Bool)

(assert (=> b!2893079 (= e!1828197 e!1828198)))

(declare-fun b!2893080 () Bool)

(declare-fun e!1828201 () Bool)

(declare-fun call!187986 () Bool)

(assert (=> b!2893080 (= e!1828201 call!187986)))

(declare-fun bm!187980 () Bool)

(declare-fun call!187987 () Bool)

(assert (=> bm!187980 (= call!187987 call!187986)))

(declare-fun d!834590 () Bool)

(declare-fun res!1196897 () Bool)

(declare-fun e!1828199 () Bool)

(assert (=> d!834590 (=> res!1196897 e!1828199)))

(assert (=> d!834590 (= res!1196897 ((_ is ElementMatch!8837) (regTwo!18187 r!23079)))))

(assert (=> d!834590 (= (validRegex!3610 (regTwo!18187 r!23079)) e!1828199)))

(declare-fun b!2893081 () Bool)

(declare-fun e!1828202 () Bool)

(assert (=> b!2893081 (= e!1828202 e!1828197)))

(declare-fun c!470539 () Bool)

(assert (=> b!2893081 (= c!470539 ((_ is Union!8837) (regTwo!18187 r!23079)))))

(declare-fun b!2893082 () Bool)

(assert (=> b!2893082 (= e!1828198 call!187987)))

(declare-fun b!2893083 () Bool)

(assert (=> b!2893083 (= e!1828202 e!1828201)))

(declare-fun res!1196899 () Bool)

(declare-fun nullable!2736 (Regex!8837) Bool)

(assert (=> b!2893083 (= res!1196899 (not (nullable!2736 (reg!9166 (regTwo!18187 r!23079)))))))

(assert (=> b!2893083 (=> (not res!1196899) (not e!1828201))))

(declare-fun b!2893084 () Bool)

(declare-fun res!1196896 () Bool)

(declare-fun e!1828200 () Bool)

(assert (=> b!2893084 (=> res!1196896 e!1828200)))

(assert (=> b!2893084 (= res!1196896 (not ((_ is Concat!14158) (regTwo!18187 r!23079))))))

(assert (=> b!2893084 (= e!1828197 e!1828200)))

(declare-fun b!2893085 () Bool)

(assert (=> b!2893085 (= e!1828199 e!1828202)))

(declare-fun c!470540 () Bool)

(assert (=> b!2893085 (= c!470540 ((_ is Star!8837) (regTwo!18187 r!23079)))))

(declare-fun bm!187981 () Bool)

(assert (=> bm!187981 (= call!187985 (validRegex!3610 (ite c!470539 (regOne!18187 (regTwo!18187 r!23079)) (regOne!18186 (regTwo!18187 r!23079)))))))

(declare-fun b!2893086 () Bool)

(declare-fun e!1828196 () Bool)

(assert (=> b!2893086 (= e!1828196 call!187987)))

(declare-fun bm!187982 () Bool)

(assert (=> bm!187982 (= call!187986 (validRegex!3610 (ite c!470540 (reg!9166 (regTwo!18187 r!23079)) (ite c!470539 (regTwo!18187 (regTwo!18187 r!23079)) (regTwo!18186 (regTwo!18187 r!23079))))))))

(declare-fun b!2893087 () Bool)

(assert (=> b!2893087 (= e!1828200 e!1828196)))

(declare-fun res!1196900 () Bool)

(assert (=> b!2893087 (=> (not res!1196900) (not e!1828196))))

(assert (=> b!2893087 (= res!1196900 call!187985)))

(assert (= (and d!834590 (not res!1196897)) b!2893085))

(assert (= (and b!2893085 c!470540) b!2893083))

(assert (= (and b!2893085 (not c!470540)) b!2893081))

(assert (= (and b!2893083 res!1196899) b!2893080))

(assert (= (and b!2893081 c!470539) b!2893079))

(assert (= (and b!2893081 (not c!470539)) b!2893084))

(assert (= (and b!2893079 res!1196898) b!2893082))

(assert (= (and b!2893084 (not res!1196896)) b!2893087))

(assert (= (and b!2893087 res!1196900) b!2893086))

(assert (= (or b!2893082 b!2893086) bm!187980))

(assert (= (or b!2893079 b!2893087) bm!187981))

(assert (= (or b!2893080 bm!187980) bm!187982))

(declare-fun m!3303129 () Bool)

(assert (=> b!2893083 m!3303129))

(declare-fun m!3303131 () Bool)

(assert (=> bm!187981 m!3303131))

(declare-fun m!3303133 () Bool)

(assert (=> bm!187982 m!3303133))

(assert (=> b!2893021 d!834590))

(declare-fun b!2893152 () Bool)

(declare-fun e!1828235 () Option!6510)

(assert (=> b!2893152 (= e!1828235 (Some!6509 Nil!34514))))

(declare-fun b!2893153 () Bool)

(declare-fun e!1828242 () Option!6510)

(declare-fun e!1828237 () Option!6510)

(assert (=> b!2893153 (= e!1828242 e!1828237)))

(declare-fun lt!1021239 () Option!6510)

(declare-fun call!187998 () Option!6510)

(assert (=> b!2893153 (= lt!1021239 call!187998)))

(declare-fun c!470575 () Bool)

(assert (=> b!2893153 (= c!470575 ((_ is Some!6509) lt!1021239))))

(declare-fun b!2893154 () Bool)

(declare-fun e!1828241 () Option!6510)

(assert (=> b!2893154 (= e!1828235 e!1828241)))

(declare-fun c!470576 () Bool)

(assert (=> b!2893154 (= c!470576 ((_ is EmptyLang!8837) (regTwo!18187 r!23079)))))

(declare-fun b!2893155 () Bool)

(assert (=> b!2893155 (= e!1828237 None!6509)))

(declare-fun b!2893156 () Bool)

(declare-fun e!1828239 () Option!6510)

(assert (=> b!2893156 (= e!1828239 (Some!6509 Nil!34514))))

(declare-fun b!2893157 () Bool)

(declare-fun e!1828238 () Option!6510)

(assert (=> b!2893157 (= e!1828238 call!187998)))

(declare-fun b!2893158 () Bool)

(declare-fun e!1828240 () Option!6510)

(declare-fun lt!1021240 () Option!6510)

(declare-fun ++!8235 (List!34638 List!34638) List!34638)

(assert (=> b!2893158 (= e!1828240 (Some!6509 (++!8235 (v!34635 lt!1021239) (v!34635 lt!1021240))))))

(declare-fun bm!187993 () Bool)

(declare-fun call!187999 () Option!6510)

(declare-fun c!470579 () Bool)

(assert (=> bm!187993 (= call!187999 (getLanguageWitness!544 (ite c!470579 (regOne!18187 (regTwo!18187 r!23079)) (regTwo!18186 (regTwo!18187 r!23079)))))))

(declare-fun bm!187994 () Bool)

(assert (=> bm!187994 (= call!187998 (getLanguageWitness!544 (ite c!470579 (regTwo!18187 (regTwo!18187 r!23079)) (regOne!18186 (regTwo!18187 r!23079)))))))

(declare-fun b!2893159 () Bool)

(declare-fun e!1828236 () Option!6510)

(assert (=> b!2893159 (= e!1828236 (Some!6509 (Cons!34514 (c!470518 (regTwo!18187 r!23079)) Nil!34514)))))

(declare-fun b!2893160 () Bool)

(declare-fun c!470574 () Bool)

(assert (=> b!2893160 (= c!470574 ((_ is Some!6509) lt!1021240))))

(assert (=> b!2893160 (= lt!1021240 call!187999)))

(assert (=> b!2893160 (= e!1828237 e!1828240)))

(declare-fun b!2893161 () Bool)

(assert (=> b!2893161 (= c!470579 ((_ is Union!8837) (regTwo!18187 r!23079)))))

(assert (=> b!2893161 (= e!1828239 e!1828242)))

(declare-fun b!2893162 () Bool)

(declare-fun lt!1021238 () Option!6510)

(assert (=> b!2893162 (= e!1828238 lt!1021238)))

(declare-fun b!2893163 () Bool)

(assert (=> b!2893163 (= e!1828242 e!1828238)))

(assert (=> b!2893163 (= lt!1021238 call!187999)))

(declare-fun c!470577 () Bool)

(assert (=> b!2893163 (= c!470577 ((_ is Some!6509) lt!1021238))))

(declare-fun d!834596 () Bool)

(declare-fun c!470573 () Bool)

(assert (=> d!834596 (= c!470573 ((_ is EmptyExpr!8837) (regTwo!18187 r!23079)))))

(assert (=> d!834596 (= (getLanguageWitness!544 (regTwo!18187 r!23079)) e!1828235)))

(declare-fun b!2893164 () Bool)

(assert (=> b!2893164 (= e!1828236 e!1828239)))

(declare-fun c!470580 () Bool)

(assert (=> b!2893164 (= c!470580 ((_ is Star!8837) (regTwo!18187 r!23079)))))

(declare-fun b!2893165 () Bool)

(declare-fun c!470578 () Bool)

(assert (=> b!2893165 (= c!470578 ((_ is ElementMatch!8837) (regTwo!18187 r!23079)))))

(assert (=> b!2893165 (= e!1828241 e!1828236)))

(declare-fun b!2893166 () Bool)

(assert (=> b!2893166 (= e!1828241 None!6509)))

(declare-fun b!2893167 () Bool)

(assert (=> b!2893167 (= e!1828240 None!6509)))

(assert (= (and d!834596 c!470573) b!2893152))

(assert (= (and d!834596 (not c!470573)) b!2893154))

(assert (= (and b!2893154 c!470576) b!2893166))

(assert (= (and b!2893154 (not c!470576)) b!2893165))

(assert (= (and b!2893165 c!470578) b!2893159))

(assert (= (and b!2893165 (not c!470578)) b!2893164))

(assert (= (and b!2893164 c!470580) b!2893156))

(assert (= (and b!2893164 (not c!470580)) b!2893161))

(assert (= (and b!2893161 c!470579) b!2893163))

(assert (= (and b!2893161 (not c!470579)) b!2893153))

(assert (= (and b!2893163 c!470577) b!2893162))

(assert (= (and b!2893163 (not c!470577)) b!2893157))

(assert (= (and b!2893153 c!470575) b!2893160))

(assert (= (and b!2893153 (not c!470575)) b!2893155))

(assert (= (and b!2893160 c!470574) b!2893158))

(assert (= (and b!2893160 (not c!470574)) b!2893167))

(assert (= (or b!2893157 b!2893153) bm!187994))

(assert (= (or b!2893163 b!2893160) bm!187993))

(declare-fun m!3303141 () Bool)

(assert (=> b!2893158 m!3303141))

(declare-fun m!3303143 () Bool)

(assert (=> bm!187993 m!3303143))

(declare-fun m!3303145 () Bool)

(assert (=> bm!187994 m!3303145))

(assert (=> b!2893021 d!834596))

(declare-fun b!2893168 () Bool)

(declare-fun res!1196903 () Bool)

(declare-fun e!1828245 () Bool)

(assert (=> b!2893168 (=> (not res!1196903) (not e!1828245))))

(declare-fun call!188006 () Bool)

(assert (=> b!2893168 (= res!1196903 call!188006)))

(declare-fun e!1828244 () Bool)

(assert (=> b!2893168 (= e!1828244 e!1828245)))

(declare-fun b!2893169 () Bool)

(declare-fun e!1828248 () Bool)

(declare-fun call!188007 () Bool)

(assert (=> b!2893169 (= e!1828248 call!188007)))

(declare-fun bm!188001 () Bool)

(declare-fun call!188008 () Bool)

(assert (=> bm!188001 (= call!188008 call!188007)))

(declare-fun d!834600 () Bool)

(declare-fun res!1196902 () Bool)

(declare-fun e!1828246 () Bool)

(assert (=> d!834600 (=> res!1196902 e!1828246)))

(assert (=> d!834600 (= res!1196902 ((_ is ElementMatch!8837) r!23079))))

(assert (=> d!834600 (= (validRegex!3610 r!23079) e!1828246)))

(declare-fun b!2893170 () Bool)

(declare-fun e!1828249 () Bool)

(assert (=> b!2893170 (= e!1828249 e!1828244)))

(declare-fun c!470581 () Bool)

(assert (=> b!2893170 (= c!470581 ((_ is Union!8837) r!23079))))

(declare-fun b!2893171 () Bool)

(assert (=> b!2893171 (= e!1828245 call!188008)))

(declare-fun b!2893172 () Bool)

(assert (=> b!2893172 (= e!1828249 e!1828248)))

(declare-fun res!1196904 () Bool)

(assert (=> b!2893172 (= res!1196904 (not (nullable!2736 (reg!9166 r!23079))))))

(assert (=> b!2893172 (=> (not res!1196904) (not e!1828248))))

(declare-fun b!2893173 () Bool)

(declare-fun res!1196901 () Bool)

(declare-fun e!1828247 () Bool)

(assert (=> b!2893173 (=> res!1196901 e!1828247)))

(assert (=> b!2893173 (= res!1196901 (not ((_ is Concat!14158) r!23079)))))

(assert (=> b!2893173 (= e!1828244 e!1828247)))

(declare-fun b!2893174 () Bool)

(assert (=> b!2893174 (= e!1828246 e!1828249)))

(declare-fun c!470582 () Bool)

(assert (=> b!2893174 (= c!470582 ((_ is Star!8837) r!23079))))

(declare-fun bm!188002 () Bool)

(assert (=> bm!188002 (= call!188006 (validRegex!3610 (ite c!470581 (regOne!18187 r!23079) (regOne!18186 r!23079))))))

(declare-fun b!2893175 () Bool)

(declare-fun e!1828243 () Bool)

(assert (=> b!2893175 (= e!1828243 call!188008)))

(declare-fun bm!188003 () Bool)

(assert (=> bm!188003 (= call!188007 (validRegex!3610 (ite c!470582 (reg!9166 r!23079) (ite c!470581 (regTwo!18187 r!23079) (regTwo!18186 r!23079)))))))

(declare-fun b!2893176 () Bool)

(assert (=> b!2893176 (= e!1828247 e!1828243)))

(declare-fun res!1196905 () Bool)

(assert (=> b!2893176 (=> (not res!1196905) (not e!1828243))))

(assert (=> b!2893176 (= res!1196905 call!188006)))

(assert (= (and d!834600 (not res!1196902)) b!2893174))

(assert (= (and b!2893174 c!470582) b!2893172))

(assert (= (and b!2893174 (not c!470582)) b!2893170))

(assert (= (and b!2893172 res!1196904) b!2893169))

(assert (= (and b!2893170 c!470581) b!2893168))

(assert (= (and b!2893170 (not c!470581)) b!2893173))

(assert (= (and b!2893168 res!1196903) b!2893171))

(assert (= (and b!2893173 (not res!1196901)) b!2893176))

(assert (= (and b!2893176 res!1196905) b!2893175))

(assert (= (or b!2893171 b!2893175) bm!188001))

(assert (= (or b!2893168 b!2893176) bm!188002))

(assert (= (or b!2893169 bm!188001) bm!188003))

(declare-fun m!3303147 () Bool)

(assert (=> b!2893172 m!3303147))

(declare-fun m!3303149 () Bool)

(assert (=> bm!188002 m!3303149))

(declare-fun m!3303151 () Bool)

(assert (=> bm!188003 m!3303151))

(assert (=> start!282014 d!834600))

(declare-fun d!834602 () Bool)

(declare-fun isEmpty!18815 (Option!6510) Bool)

(assert (=> d!834602 (= (isDefined!5074 lt!1021220) (not (isEmpty!18815 lt!1021220)))))

(declare-fun bs!523904 () Bool)

(assert (= bs!523904 d!834602))

(declare-fun m!3303153 () Bool)

(assert (=> bs!523904 m!3303153))

(assert (=> b!2893025 d!834602))

(declare-fun b!2893297 () Bool)

(declare-fun e!1828331 () Bool)

(declare-fun lt!1021248 () Int)

(declare-fun call!188051 () Int)

(assert (=> b!2893297 (= e!1828331 (> lt!1021248 call!188051))))

(declare-fun b!2893298 () Bool)

(declare-fun e!1828325 () Bool)

(declare-fun call!188054 () Int)

(assert (=> b!2893298 (= e!1828325 (> lt!1021248 call!188054))))

(declare-fun bm!188046 () Bool)

(declare-fun call!188057 () Int)

(declare-fun call!188052 () Int)

(declare-fun call!188055 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!188046 (= call!188057 (maxBigInt!0 call!188052 call!188055))))

(declare-fun bm!188047 () Bool)

(declare-fun c!470630 () Bool)

(assert (=> bm!188047 (= call!188055 (regexDepth!77 (ite c!470630 (regTwo!18187 (regTwo!18187 r!23079)) (regTwo!18186 (regTwo!18187 r!23079)))))))

(declare-fun bm!188048 () Bool)

(declare-fun c!470629 () Bool)

(assert (=> bm!188048 (= call!188051 (regexDepth!77 (ite c!470629 (regOne!18187 (regTwo!18187 r!23079)) (regTwo!18186 (regTwo!18187 r!23079)))))))

(declare-fun bm!188049 () Bool)

(declare-fun call!188053 () Int)

(assert (=> bm!188049 (= call!188053 call!188054)))

(declare-fun b!2893299 () Bool)

(declare-fun e!1828328 () Int)

(declare-fun e!1828329 () Int)

(assert (=> b!2893299 (= e!1828328 e!1828329)))

(declare-fun c!470631 () Bool)

(assert (=> b!2893299 (= c!470631 ((_ is Concat!14158) (regTwo!18187 r!23079)))))

(declare-fun b!2893300 () Bool)

(declare-fun res!1196936 () Bool)

(assert (=> b!2893300 (=> (not res!1196936) (not e!1828331))))

(assert (=> b!2893300 (= res!1196936 (> lt!1021248 call!188053))))

(declare-fun e!1828326 () Bool)

(assert (=> b!2893300 (= e!1828326 e!1828331)))

(declare-fun b!2893301 () Bool)

(assert (=> b!2893301 (= c!470630 ((_ is Union!8837) (regTwo!18187 r!23079)))))

(declare-fun e!1828324 () Int)

(assert (=> b!2893301 (= e!1828324 e!1828328)))

(declare-fun b!2893302 () Bool)

(declare-fun call!188056 () Int)

(assert (=> b!2893302 (= e!1828324 (+ 1 call!188056))))

(declare-fun b!2893303 () Bool)

(declare-fun c!470632 () Bool)

(assert (=> b!2893303 (= c!470632 ((_ is Star!8837) (regTwo!18187 r!23079)))))

(declare-fun e!1828327 () Bool)

(assert (=> b!2893303 (= e!1828326 e!1828327)))

(declare-fun b!2893304 () Bool)

(assert (=> b!2893304 (= e!1828329 1)))

(declare-fun b!2893305 () Bool)

(assert (=> b!2893305 (= e!1828327 (= lt!1021248 1))))

(declare-fun b!2893306 () Bool)

(declare-fun e!1828332 () Bool)

(assert (=> b!2893306 (= e!1828332 e!1828325)))

(declare-fun res!1196935 () Bool)

(assert (=> b!2893306 (= res!1196935 (> lt!1021248 call!188051))))

(assert (=> b!2893306 (=> (not res!1196935) (not e!1828325))))

(declare-fun b!2893307 () Bool)

(assert (=> b!2893307 (= e!1828332 e!1828326)))

(declare-fun c!470635 () Bool)

(assert (=> b!2893307 (= c!470635 ((_ is Concat!14158) (regTwo!18187 r!23079)))))

(declare-fun b!2893308 () Bool)

(assert (=> b!2893308 (= e!1828328 (+ 1 call!188057))))

(declare-fun b!2893309 () Bool)

(declare-fun e!1828330 () Int)

(assert (=> b!2893309 (= e!1828330 e!1828324)))

(declare-fun c!470634 () Bool)

(assert (=> b!2893309 (= c!470634 ((_ is Star!8837) (regTwo!18187 r!23079)))))

(declare-fun bm!188051 () Bool)

(assert (=> bm!188051 (= call!188054 (regexDepth!77 (ite c!470629 (regTwo!18187 (regTwo!18187 r!23079)) (ite c!470635 (regOne!18186 (regTwo!18187 r!23079)) (reg!9166 (regTwo!18187 r!23079))))))))

(declare-fun bm!188050 () Bool)

(assert (=> bm!188050 (= call!188052 call!188056)))

(declare-fun d!834604 () Bool)

(declare-fun e!1828333 () Bool)

(assert (=> d!834604 e!1828333))

(declare-fun res!1196934 () Bool)

(assert (=> d!834604 (=> (not res!1196934) (not e!1828333))))

(assert (=> d!834604 (= res!1196934 (> lt!1021248 0))))

(assert (=> d!834604 (= lt!1021248 e!1828330)))

(declare-fun c!470633 () Bool)

(assert (=> d!834604 (= c!470633 ((_ is ElementMatch!8837) (regTwo!18187 r!23079)))))

(assert (=> d!834604 (= (regexDepth!77 (regTwo!18187 r!23079)) lt!1021248)))

(declare-fun bm!188052 () Bool)

(assert (=> bm!188052 (= call!188056 (regexDepth!77 (ite c!470634 (reg!9166 (regTwo!18187 r!23079)) (ite c!470630 (regOne!18187 (regTwo!18187 r!23079)) (regOne!18186 (regTwo!18187 r!23079))))))))

(declare-fun b!2893310 () Bool)

(assert (=> b!2893310 (= e!1828327 (> lt!1021248 call!188053))))

(declare-fun b!2893311 () Bool)

(assert (=> b!2893311 (= e!1828333 e!1828332)))

(assert (=> b!2893311 (= c!470629 ((_ is Union!8837) (regTwo!18187 r!23079)))))

(declare-fun b!2893312 () Bool)

(assert (=> b!2893312 (= e!1828329 (+ 1 call!188057))))

(declare-fun b!2893313 () Bool)

(assert (=> b!2893313 (= e!1828330 1)))

(assert (= (and d!834604 c!470633) b!2893313))

(assert (= (and d!834604 (not c!470633)) b!2893309))

(assert (= (and b!2893309 c!470634) b!2893302))

(assert (= (and b!2893309 (not c!470634)) b!2893301))

(assert (= (and b!2893301 c!470630) b!2893308))

(assert (= (and b!2893301 (not c!470630)) b!2893299))

(assert (= (and b!2893299 c!470631) b!2893312))

(assert (= (and b!2893299 (not c!470631)) b!2893304))

(assert (= (or b!2893308 b!2893312) bm!188050))

(assert (= (or b!2893308 b!2893312) bm!188047))

(assert (= (or b!2893308 b!2893312) bm!188046))

(assert (= (or b!2893302 bm!188050) bm!188052))

(assert (= (and d!834604 res!1196934) b!2893311))

(assert (= (and b!2893311 c!470629) b!2893306))

(assert (= (and b!2893311 (not c!470629)) b!2893307))

(assert (= (and b!2893306 res!1196935) b!2893298))

(assert (= (and b!2893307 c!470635) b!2893300))

(assert (= (and b!2893307 (not c!470635)) b!2893303))

(assert (= (and b!2893300 res!1196936) b!2893297))

(assert (= (and b!2893303 c!470632) b!2893310))

(assert (= (and b!2893303 (not c!470632)) b!2893305))

(assert (= (or b!2893300 b!2893310) bm!188049))

(assert (= (or b!2893298 bm!188049) bm!188051))

(assert (= (or b!2893306 b!2893297) bm!188048))

(declare-fun m!3303181 () Bool)

(assert (=> bm!188046 m!3303181))

(declare-fun m!3303183 () Bool)

(assert (=> bm!188052 m!3303183))

(declare-fun m!3303185 () Bool)

(assert (=> bm!188047 m!3303185))

(declare-fun m!3303187 () Bool)

(assert (=> bm!188051 m!3303187))

(declare-fun m!3303189 () Bool)

(assert (=> bm!188048 m!3303189))

(assert (=> b!2893019 d!834604))

(declare-fun b!2893314 () Bool)

(declare-fun e!1828341 () Bool)

(declare-fun lt!1021249 () Int)

(declare-fun call!188060 () Int)

(assert (=> b!2893314 (= e!1828341 (> lt!1021249 call!188060))))

(declare-fun b!2893315 () Bool)

(declare-fun e!1828335 () Bool)

(declare-fun call!188063 () Int)

(assert (=> b!2893315 (= e!1828335 (> lt!1021249 call!188063))))

(declare-fun bm!188055 () Bool)

(declare-fun call!188066 () Int)

(declare-fun call!188061 () Int)

(declare-fun call!188064 () Int)

(assert (=> bm!188055 (= call!188066 (maxBigInt!0 call!188061 call!188064))))

(declare-fun bm!188056 () Bool)

(declare-fun c!470637 () Bool)

(assert (=> bm!188056 (= call!188064 (regexDepth!77 (ite c!470637 (regTwo!18187 r!23079) (regTwo!18186 r!23079))))))

(declare-fun bm!188057 () Bool)

(declare-fun c!470636 () Bool)

(assert (=> bm!188057 (= call!188060 (regexDepth!77 (ite c!470636 (regOne!18187 r!23079) (regTwo!18186 r!23079))))))

(declare-fun bm!188058 () Bool)

(declare-fun call!188062 () Int)

(assert (=> bm!188058 (= call!188062 call!188063)))

(declare-fun b!2893316 () Bool)

(declare-fun e!1828338 () Int)

(declare-fun e!1828339 () Int)

(assert (=> b!2893316 (= e!1828338 e!1828339)))

(declare-fun c!470638 () Bool)

(assert (=> b!2893316 (= c!470638 ((_ is Concat!14158) r!23079))))

(declare-fun b!2893317 () Bool)

(declare-fun res!1196939 () Bool)

(assert (=> b!2893317 (=> (not res!1196939) (not e!1828341))))

(assert (=> b!2893317 (= res!1196939 (> lt!1021249 call!188062))))

(declare-fun e!1828336 () Bool)

(assert (=> b!2893317 (= e!1828336 e!1828341)))

(declare-fun b!2893318 () Bool)

(assert (=> b!2893318 (= c!470637 ((_ is Union!8837) r!23079))))

(declare-fun e!1828334 () Int)

(assert (=> b!2893318 (= e!1828334 e!1828338)))

(declare-fun b!2893319 () Bool)

(declare-fun call!188065 () Int)

(assert (=> b!2893319 (= e!1828334 (+ 1 call!188065))))

(declare-fun b!2893320 () Bool)

(declare-fun c!470639 () Bool)

(assert (=> b!2893320 (= c!470639 ((_ is Star!8837) r!23079))))

(declare-fun e!1828337 () Bool)

(assert (=> b!2893320 (= e!1828336 e!1828337)))

(declare-fun b!2893321 () Bool)

(assert (=> b!2893321 (= e!1828339 1)))

(declare-fun b!2893322 () Bool)

(assert (=> b!2893322 (= e!1828337 (= lt!1021249 1))))

(declare-fun b!2893323 () Bool)

(declare-fun e!1828342 () Bool)

(assert (=> b!2893323 (= e!1828342 e!1828335)))

(declare-fun res!1196938 () Bool)

(assert (=> b!2893323 (= res!1196938 (> lt!1021249 call!188060))))

(assert (=> b!2893323 (=> (not res!1196938) (not e!1828335))))

(declare-fun b!2893324 () Bool)

(assert (=> b!2893324 (= e!1828342 e!1828336)))

(declare-fun c!470642 () Bool)

(assert (=> b!2893324 (= c!470642 ((_ is Concat!14158) r!23079))))

(declare-fun b!2893325 () Bool)

(assert (=> b!2893325 (= e!1828338 (+ 1 call!188066))))

(declare-fun b!2893326 () Bool)

(declare-fun e!1828340 () Int)

(assert (=> b!2893326 (= e!1828340 e!1828334)))

(declare-fun c!470641 () Bool)

(assert (=> b!2893326 (= c!470641 ((_ is Star!8837) r!23079))))

(declare-fun bm!188060 () Bool)

(assert (=> bm!188060 (= call!188063 (regexDepth!77 (ite c!470636 (regTwo!18187 r!23079) (ite c!470642 (regOne!18186 r!23079) (reg!9166 r!23079)))))))

(declare-fun bm!188059 () Bool)

(assert (=> bm!188059 (= call!188061 call!188065)))

(declare-fun d!834612 () Bool)

(declare-fun e!1828343 () Bool)

(assert (=> d!834612 e!1828343))

(declare-fun res!1196937 () Bool)

(assert (=> d!834612 (=> (not res!1196937) (not e!1828343))))

(assert (=> d!834612 (= res!1196937 (> lt!1021249 0))))

(assert (=> d!834612 (= lt!1021249 e!1828340)))

(declare-fun c!470640 () Bool)

(assert (=> d!834612 (= c!470640 ((_ is ElementMatch!8837) r!23079))))

(assert (=> d!834612 (= (regexDepth!77 r!23079) lt!1021249)))

(declare-fun bm!188061 () Bool)

(assert (=> bm!188061 (= call!188065 (regexDepth!77 (ite c!470641 (reg!9166 r!23079) (ite c!470637 (regOne!18187 r!23079) (regOne!18186 r!23079)))))))

(declare-fun b!2893327 () Bool)

(assert (=> b!2893327 (= e!1828337 (> lt!1021249 call!188062))))

(declare-fun b!2893328 () Bool)

(assert (=> b!2893328 (= e!1828343 e!1828342)))

(assert (=> b!2893328 (= c!470636 ((_ is Union!8837) r!23079))))

(declare-fun b!2893329 () Bool)

(assert (=> b!2893329 (= e!1828339 (+ 1 call!188066))))

(declare-fun b!2893330 () Bool)

(assert (=> b!2893330 (= e!1828340 1)))

(assert (= (and d!834612 c!470640) b!2893330))

(assert (= (and d!834612 (not c!470640)) b!2893326))

(assert (= (and b!2893326 c!470641) b!2893319))

(assert (= (and b!2893326 (not c!470641)) b!2893318))

(assert (= (and b!2893318 c!470637) b!2893325))

(assert (= (and b!2893318 (not c!470637)) b!2893316))

(assert (= (and b!2893316 c!470638) b!2893329))

(assert (= (and b!2893316 (not c!470638)) b!2893321))

(assert (= (or b!2893325 b!2893329) bm!188059))

(assert (= (or b!2893325 b!2893329) bm!188056))

(assert (= (or b!2893325 b!2893329) bm!188055))

(assert (= (or b!2893319 bm!188059) bm!188061))

(assert (= (and d!834612 res!1196937) b!2893328))

(assert (= (and b!2893328 c!470636) b!2893323))

(assert (= (and b!2893328 (not c!470636)) b!2893324))

(assert (= (and b!2893323 res!1196938) b!2893315))

(assert (= (and b!2893324 c!470642) b!2893317))

(assert (= (and b!2893324 (not c!470642)) b!2893320))

(assert (= (and b!2893317 res!1196939) b!2893314))

(assert (= (and b!2893320 c!470639) b!2893327))

(assert (= (and b!2893320 (not c!470639)) b!2893322))

(assert (= (or b!2893317 b!2893327) bm!188058))

(assert (= (or b!2893315 bm!188058) bm!188060))

(assert (= (or b!2893323 b!2893314) bm!188057))

(declare-fun m!3303191 () Bool)

(assert (=> bm!188055 m!3303191))

(declare-fun m!3303193 () Bool)

(assert (=> bm!188061 m!3303193))

(declare-fun m!3303195 () Bool)

(assert (=> bm!188056 m!3303195))

(declare-fun m!3303197 () Bool)

(assert (=> bm!188060 m!3303197))

(declare-fun m!3303199 () Bool)

(assert (=> bm!188057 m!3303199))

(assert (=> b!2893019 d!834612))

(declare-fun d!834614 () Bool)

(assert (=> d!834614 (= (isDefined!5074 (getLanguageWitness!544 r!23079)) (not (isEmpty!18815 (getLanguageWitness!544 r!23079))))))

(declare-fun bs!523905 () Bool)

(assert (= bs!523905 d!834614))

(assert (=> bs!523905 m!3303123))

(declare-fun m!3303201 () Bool)

(assert (=> bs!523905 m!3303201))

(assert (=> b!2893023 d!834614))

(declare-fun b!2893331 () Bool)

(declare-fun e!1828344 () Option!6510)

(assert (=> b!2893331 (= e!1828344 (Some!6509 Nil!34514))))

(declare-fun b!2893332 () Bool)

(declare-fun e!1828351 () Option!6510)

(declare-fun e!1828346 () Option!6510)

(assert (=> b!2893332 (= e!1828351 e!1828346)))

(declare-fun lt!1021251 () Option!6510)

(declare-fun call!188067 () Option!6510)

(assert (=> b!2893332 (= lt!1021251 call!188067)))

(declare-fun c!470645 () Bool)

(assert (=> b!2893332 (= c!470645 ((_ is Some!6509) lt!1021251))))

(declare-fun b!2893333 () Bool)

(declare-fun e!1828350 () Option!6510)

(assert (=> b!2893333 (= e!1828344 e!1828350)))

(declare-fun c!470646 () Bool)

(assert (=> b!2893333 (= c!470646 ((_ is EmptyLang!8837) r!23079))))

(declare-fun b!2893334 () Bool)

(assert (=> b!2893334 (= e!1828346 None!6509)))

(declare-fun b!2893335 () Bool)

(declare-fun e!1828348 () Option!6510)

(assert (=> b!2893335 (= e!1828348 (Some!6509 Nil!34514))))

(declare-fun b!2893336 () Bool)

(declare-fun e!1828347 () Option!6510)

(assert (=> b!2893336 (= e!1828347 call!188067)))

(declare-fun b!2893337 () Bool)

(declare-fun e!1828349 () Option!6510)

(declare-fun lt!1021252 () Option!6510)

(assert (=> b!2893337 (= e!1828349 (Some!6509 (++!8235 (v!34635 lt!1021251) (v!34635 lt!1021252))))))

(declare-fun bm!188062 () Bool)

(declare-fun call!188068 () Option!6510)

(declare-fun c!470649 () Bool)

(assert (=> bm!188062 (= call!188068 (getLanguageWitness!544 (ite c!470649 (regOne!18187 r!23079) (regTwo!18186 r!23079))))))

(declare-fun bm!188063 () Bool)

(assert (=> bm!188063 (= call!188067 (getLanguageWitness!544 (ite c!470649 (regTwo!18187 r!23079) (regOne!18186 r!23079))))))

(declare-fun b!2893338 () Bool)

(declare-fun e!1828345 () Option!6510)

(assert (=> b!2893338 (= e!1828345 (Some!6509 (Cons!34514 (c!470518 r!23079) Nil!34514)))))

(declare-fun b!2893339 () Bool)

(declare-fun c!470644 () Bool)

(assert (=> b!2893339 (= c!470644 ((_ is Some!6509) lt!1021252))))

(assert (=> b!2893339 (= lt!1021252 call!188068)))

(assert (=> b!2893339 (= e!1828346 e!1828349)))

(declare-fun b!2893340 () Bool)

(assert (=> b!2893340 (= c!470649 ((_ is Union!8837) r!23079))))

(assert (=> b!2893340 (= e!1828348 e!1828351)))

(declare-fun b!2893341 () Bool)

(declare-fun lt!1021250 () Option!6510)

(assert (=> b!2893341 (= e!1828347 lt!1021250)))

(declare-fun b!2893342 () Bool)

(assert (=> b!2893342 (= e!1828351 e!1828347)))

(assert (=> b!2893342 (= lt!1021250 call!188068)))

(declare-fun c!470647 () Bool)

(assert (=> b!2893342 (= c!470647 ((_ is Some!6509) lt!1021250))))

(declare-fun d!834616 () Bool)

(declare-fun c!470643 () Bool)

(assert (=> d!834616 (= c!470643 ((_ is EmptyExpr!8837) r!23079))))

(assert (=> d!834616 (= (getLanguageWitness!544 r!23079) e!1828344)))

(declare-fun b!2893343 () Bool)

(assert (=> b!2893343 (= e!1828345 e!1828348)))

(declare-fun c!470650 () Bool)

(assert (=> b!2893343 (= c!470650 ((_ is Star!8837) r!23079))))

(declare-fun b!2893344 () Bool)

(declare-fun c!470648 () Bool)

(assert (=> b!2893344 (= c!470648 ((_ is ElementMatch!8837) r!23079))))

(assert (=> b!2893344 (= e!1828350 e!1828345)))

(declare-fun b!2893345 () Bool)

(assert (=> b!2893345 (= e!1828350 None!6509)))

(declare-fun b!2893346 () Bool)

(assert (=> b!2893346 (= e!1828349 None!6509)))

(assert (= (and d!834616 c!470643) b!2893331))

(assert (= (and d!834616 (not c!470643)) b!2893333))

(assert (= (and b!2893333 c!470646) b!2893345))

(assert (= (and b!2893333 (not c!470646)) b!2893344))

(assert (= (and b!2893344 c!470648) b!2893338))

(assert (= (and b!2893344 (not c!470648)) b!2893343))

(assert (= (and b!2893343 c!470650) b!2893335))

(assert (= (and b!2893343 (not c!470650)) b!2893340))

(assert (= (and b!2893340 c!470649) b!2893342))

(assert (= (and b!2893340 (not c!470649)) b!2893332))

(assert (= (and b!2893342 c!470647) b!2893341))

(assert (= (and b!2893342 (not c!470647)) b!2893336))

(assert (= (and b!2893332 c!470645) b!2893339))

(assert (= (and b!2893332 (not c!470645)) b!2893334))

(assert (= (and b!2893339 c!470644) b!2893337))

(assert (= (and b!2893339 (not c!470644)) b!2893346))

(assert (= (or b!2893336 b!2893332) bm!188063))

(assert (= (or b!2893342 b!2893339) bm!188062))

(declare-fun m!3303203 () Bool)

(assert (=> b!2893337 m!3303203))

(declare-fun m!3303205 () Bool)

(assert (=> bm!188062 m!3303205))

(declare-fun m!3303207 () Bool)

(assert (=> bm!188063 m!3303207))

(assert (=> b!2893023 d!834616))

(declare-fun b!2893356 () Bool)

(declare-fun e!1828359 () Option!6510)

(assert (=> b!2893356 (= e!1828359 (Some!6509 Nil!34514))))

(declare-fun b!2893357 () Bool)

(declare-fun e!1828366 () Option!6510)

(declare-fun e!1828361 () Option!6510)

(assert (=> b!2893357 (= e!1828366 e!1828361)))

(declare-fun lt!1021254 () Option!6510)

(declare-fun call!188072 () Option!6510)

(assert (=> b!2893357 (= lt!1021254 call!188072)))

(declare-fun c!470655 () Bool)

(assert (=> b!2893357 (= c!470655 ((_ is Some!6509) lt!1021254))))

(declare-fun b!2893358 () Bool)

(declare-fun e!1828365 () Option!6510)

(assert (=> b!2893358 (= e!1828359 e!1828365)))

(declare-fun c!470656 () Bool)

(assert (=> b!2893358 (= c!470656 ((_ is EmptyLang!8837) (regOne!18187 r!23079)))))

(declare-fun b!2893359 () Bool)

(assert (=> b!2893359 (= e!1828361 None!6509)))

(declare-fun b!2893360 () Bool)

(declare-fun e!1828363 () Option!6510)

(assert (=> b!2893360 (= e!1828363 (Some!6509 Nil!34514))))

(declare-fun b!2893361 () Bool)

(declare-fun e!1828362 () Option!6510)

(assert (=> b!2893361 (= e!1828362 call!188072)))

(declare-fun b!2893362 () Bool)

(declare-fun e!1828364 () Option!6510)

(declare-fun lt!1021255 () Option!6510)

(assert (=> b!2893362 (= e!1828364 (Some!6509 (++!8235 (v!34635 lt!1021254) (v!34635 lt!1021255))))))

(declare-fun bm!188067 () Bool)

(declare-fun call!188073 () Option!6510)

(declare-fun c!470659 () Bool)

(assert (=> bm!188067 (= call!188073 (getLanguageWitness!544 (ite c!470659 (regOne!18187 (regOne!18187 r!23079)) (regTwo!18186 (regOne!18187 r!23079)))))))

(declare-fun bm!188068 () Bool)

(assert (=> bm!188068 (= call!188072 (getLanguageWitness!544 (ite c!470659 (regTwo!18187 (regOne!18187 r!23079)) (regOne!18186 (regOne!18187 r!23079)))))))

(declare-fun b!2893363 () Bool)

(declare-fun e!1828360 () Option!6510)

(assert (=> b!2893363 (= e!1828360 (Some!6509 (Cons!34514 (c!470518 (regOne!18187 r!23079)) Nil!34514)))))

(declare-fun b!2893364 () Bool)

(declare-fun c!470654 () Bool)

(assert (=> b!2893364 (= c!470654 ((_ is Some!6509) lt!1021255))))

(assert (=> b!2893364 (= lt!1021255 call!188073)))

(assert (=> b!2893364 (= e!1828361 e!1828364)))

(declare-fun b!2893365 () Bool)

(assert (=> b!2893365 (= c!470659 ((_ is Union!8837) (regOne!18187 r!23079)))))

(assert (=> b!2893365 (= e!1828363 e!1828366)))

(declare-fun b!2893366 () Bool)

(declare-fun lt!1021253 () Option!6510)

(assert (=> b!2893366 (= e!1828362 lt!1021253)))

(declare-fun b!2893367 () Bool)

(assert (=> b!2893367 (= e!1828366 e!1828362)))

(assert (=> b!2893367 (= lt!1021253 call!188073)))

(declare-fun c!470657 () Bool)

(assert (=> b!2893367 (= c!470657 ((_ is Some!6509) lt!1021253))))

(declare-fun d!834618 () Bool)

(declare-fun c!470653 () Bool)

(assert (=> d!834618 (= c!470653 ((_ is EmptyExpr!8837) (regOne!18187 r!23079)))))

(assert (=> d!834618 (= (getLanguageWitness!544 (regOne!18187 r!23079)) e!1828359)))

(declare-fun b!2893368 () Bool)

(assert (=> b!2893368 (= e!1828360 e!1828363)))

(declare-fun c!470660 () Bool)

(assert (=> b!2893368 (= c!470660 ((_ is Star!8837) (regOne!18187 r!23079)))))

(declare-fun b!2893369 () Bool)

(declare-fun c!470658 () Bool)

(assert (=> b!2893369 (= c!470658 ((_ is ElementMatch!8837) (regOne!18187 r!23079)))))

(assert (=> b!2893369 (= e!1828365 e!1828360)))

(declare-fun b!2893370 () Bool)

(assert (=> b!2893370 (= e!1828365 None!6509)))

(declare-fun b!2893371 () Bool)

(assert (=> b!2893371 (= e!1828364 None!6509)))

(assert (= (and d!834618 c!470653) b!2893356))

(assert (= (and d!834618 (not c!470653)) b!2893358))

(assert (= (and b!2893358 c!470656) b!2893370))

(assert (= (and b!2893358 (not c!470656)) b!2893369))

(assert (= (and b!2893369 c!470658) b!2893363))

(assert (= (and b!2893369 (not c!470658)) b!2893368))

(assert (= (and b!2893368 c!470660) b!2893360))

(assert (= (and b!2893368 (not c!470660)) b!2893365))

(assert (= (and b!2893365 c!470659) b!2893367))

(assert (= (and b!2893365 (not c!470659)) b!2893357))

(assert (= (and b!2893367 c!470657) b!2893366))

(assert (= (and b!2893367 (not c!470657)) b!2893361))

(assert (= (and b!2893357 c!470655) b!2893364))

(assert (= (and b!2893357 (not c!470655)) b!2893359))

(assert (= (and b!2893364 c!470654) b!2893362))

(assert (= (and b!2893364 (not c!470654)) b!2893371))

(assert (= (or b!2893361 b!2893357) bm!188068))

(assert (= (or b!2893367 b!2893364) bm!188067))

(declare-fun m!3303215 () Bool)

(assert (=> b!2893362 m!3303215))

(declare-fun m!3303217 () Bool)

(assert (=> bm!188067 m!3303217))

(declare-fun m!3303219 () Bool)

(assert (=> bm!188068 m!3303219))

(assert (=> b!2893028 d!834618))

(declare-fun b!2893415 () Bool)

(declare-fun e!1828386 () Bool)

(declare-fun tp!928895 () Bool)

(assert (=> b!2893415 (= e!1828386 tp!928895)))

(declare-fun b!2893416 () Bool)

(declare-fun tp!928896 () Bool)

(declare-fun tp!928893 () Bool)

(assert (=> b!2893416 (= e!1828386 (and tp!928896 tp!928893))))

(assert (=> b!2893026 (= tp!928876 e!1828386)))

(declare-fun b!2893413 () Bool)

(assert (=> b!2893413 (= e!1828386 tp_is_empty!15261)))

(declare-fun b!2893414 () Bool)

(declare-fun tp!928894 () Bool)

(declare-fun tp!928892 () Bool)

(assert (=> b!2893414 (= e!1828386 (and tp!928894 tp!928892))))

(assert (= (and b!2893026 ((_ is ElementMatch!8837) (reg!9166 r!23079))) b!2893413))

(assert (= (and b!2893026 ((_ is Concat!14158) (reg!9166 r!23079))) b!2893414))

(assert (= (and b!2893026 ((_ is Star!8837) (reg!9166 r!23079))) b!2893415))

(assert (= (and b!2893026 ((_ is Union!8837) (reg!9166 r!23079))) b!2893416))

(declare-fun b!2893423 () Bool)

(declare-fun e!1828387 () Bool)

(declare-fun tp!928908 () Bool)

(assert (=> b!2893423 (= e!1828387 tp!928908)))

(declare-fun b!2893424 () Bool)

(declare-fun tp!928909 () Bool)

(declare-fun tp!928906 () Bool)

(assert (=> b!2893424 (= e!1828387 (and tp!928909 tp!928906))))

(assert (=> b!2893020 (= tp!928875 e!1828387)))

(declare-fun b!2893421 () Bool)

(assert (=> b!2893421 (= e!1828387 tp_is_empty!15261)))

(declare-fun b!2893422 () Bool)

(declare-fun tp!928907 () Bool)

(declare-fun tp!928905 () Bool)

(assert (=> b!2893422 (= e!1828387 (and tp!928907 tp!928905))))

(assert (= (and b!2893020 ((_ is ElementMatch!8837) (regOne!18187 r!23079))) b!2893421))

(assert (= (and b!2893020 ((_ is Concat!14158) (regOne!18187 r!23079))) b!2893422))

(assert (= (and b!2893020 ((_ is Star!8837) (regOne!18187 r!23079))) b!2893423))

(assert (= (and b!2893020 ((_ is Union!8837) (regOne!18187 r!23079))) b!2893424))

(declare-fun b!2893427 () Bool)

(declare-fun e!1828388 () Bool)

(declare-fun tp!928913 () Bool)

(assert (=> b!2893427 (= e!1828388 tp!928913)))

(declare-fun b!2893428 () Bool)

(declare-fun tp!928914 () Bool)

(declare-fun tp!928911 () Bool)

(assert (=> b!2893428 (= e!1828388 (and tp!928914 tp!928911))))

(assert (=> b!2893020 (= tp!928877 e!1828388)))

(declare-fun b!2893425 () Bool)

(assert (=> b!2893425 (= e!1828388 tp_is_empty!15261)))

(declare-fun b!2893426 () Bool)

(declare-fun tp!928912 () Bool)

(declare-fun tp!928910 () Bool)

(assert (=> b!2893426 (= e!1828388 (and tp!928912 tp!928910))))

(assert (= (and b!2893020 ((_ is ElementMatch!8837) (regTwo!18187 r!23079))) b!2893425))

(assert (= (and b!2893020 ((_ is Concat!14158) (regTwo!18187 r!23079))) b!2893426))

(assert (= (and b!2893020 ((_ is Star!8837) (regTwo!18187 r!23079))) b!2893427))

(assert (= (and b!2893020 ((_ is Union!8837) (regTwo!18187 r!23079))) b!2893428))

(declare-fun b!2893431 () Bool)

(declare-fun e!1828389 () Bool)

(declare-fun tp!928918 () Bool)

(assert (=> b!2893431 (= e!1828389 tp!928918)))

(declare-fun b!2893432 () Bool)

(declare-fun tp!928919 () Bool)

(declare-fun tp!928916 () Bool)

(assert (=> b!2893432 (= e!1828389 (and tp!928919 tp!928916))))

(assert (=> b!2893024 (= tp!928878 e!1828389)))

(declare-fun b!2893429 () Bool)

(assert (=> b!2893429 (= e!1828389 tp_is_empty!15261)))

(declare-fun b!2893430 () Bool)

(declare-fun tp!928917 () Bool)

(declare-fun tp!928915 () Bool)

(assert (=> b!2893430 (= e!1828389 (and tp!928917 tp!928915))))

(assert (= (and b!2893024 ((_ is ElementMatch!8837) (regOne!18186 r!23079))) b!2893429))

(assert (= (and b!2893024 ((_ is Concat!14158) (regOne!18186 r!23079))) b!2893430))

(assert (= (and b!2893024 ((_ is Star!8837) (regOne!18186 r!23079))) b!2893431))

(assert (= (and b!2893024 ((_ is Union!8837) (regOne!18186 r!23079))) b!2893432))

(declare-fun b!2893439 () Bool)

(declare-fun e!1828391 () Bool)

(declare-fun tp!928928 () Bool)

(assert (=> b!2893439 (= e!1828391 tp!928928)))

(declare-fun b!2893440 () Bool)

(declare-fun tp!928929 () Bool)

(declare-fun tp!928926 () Bool)

(assert (=> b!2893440 (= e!1828391 (and tp!928929 tp!928926))))

(assert (=> b!2893024 (= tp!928879 e!1828391)))

(declare-fun b!2893437 () Bool)

(assert (=> b!2893437 (= e!1828391 tp_is_empty!15261)))

(declare-fun b!2893438 () Bool)

(declare-fun tp!928927 () Bool)

(declare-fun tp!928925 () Bool)

(assert (=> b!2893438 (= e!1828391 (and tp!928927 tp!928925))))

(assert (= (and b!2893024 ((_ is ElementMatch!8837) (regTwo!18186 r!23079))) b!2893437))

(assert (= (and b!2893024 ((_ is Concat!14158) (regTwo!18186 r!23079))) b!2893438))

(assert (= (and b!2893024 ((_ is Star!8837) (regTwo!18186 r!23079))) b!2893439))

(assert (= (and b!2893024 ((_ is Union!8837) (regTwo!18186 r!23079))) b!2893440))

(check-sat (not bm!187994) (not bm!188056) (not bm!187981) (not bm!188046) (not bm!187993) (not b!2893362) (not bm!188048) (not d!834614) (not bm!188003) (not bm!188061) (not b!2893428) (not b!2893440) (not b!2893172) (not bm!188051) (not b!2893422) (not bm!188060) (not b!2893423) tp_is_empty!15261 (not bm!188047) (not d!834602) (not bm!188052) (not bm!188063) (not b!2893427) (not b!2893430) (not b!2893416) (not b!2893431) (not bm!188057) (not b!2893158) (not bm!188067) (not b!2893426) (not b!2893432) (not bm!188002) (not b!2893439) (not b!2893415) (not bm!188068) (not bm!188062) (not b!2893438) (not b!2893337) (not b!2893424) (not bm!187982) (not bm!188055) (not b!2893414) (not b!2893083))
(check-sat)
