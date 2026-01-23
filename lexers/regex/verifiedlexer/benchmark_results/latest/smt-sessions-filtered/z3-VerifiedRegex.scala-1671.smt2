; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84370 () Bool)

(assert start!84370)

(declare-fun b!946149 () Bool)

(assert (=> b!946149 true))

(assert (=> b!946149 true))

(assert (=> b!946149 true))

(declare-fun lambda!32248 () Int)

(declare-fun lambda!32247 () Int)

(assert (=> b!946149 (not (= lambda!32248 lambda!32247))))

(assert (=> b!946149 true))

(assert (=> b!946149 true))

(assert (=> b!946149 true))

(declare-fun bs!239549 () Bool)

(declare-fun b!946144 () Bool)

(assert (= bs!239549 (and b!946144 b!946149)))

(declare-datatypes ((C!5772 0))(
  ( (C!5773 (val!3134 Int)) )
))
(declare-datatypes ((Regex!2601 0))(
  ( (ElementMatch!2601 (c!154006 C!5772)) (Concat!4434 (regOne!5714 Regex!2601) (regTwo!5714 Regex!2601)) (EmptyExpr!2601) (Star!2601 (reg!2930 Regex!2601)) (EmptyLang!2601) (Union!2601 (regOne!5715 Regex!2601) (regTwo!5715 Regex!2601)) )
))
(declare-fun lt!343577 () Regex!2601)

(declare-fun lambda!32249 () Int)

(declare-fun lt!343581 () Regex!2601)

(declare-fun r!15766 () Regex!2601)

(declare-fun lt!343588 () Regex!2601)

(assert (=> bs!239549 (= (and (= lt!343581 (reg!2930 r!15766)) (= lt!343577 lt!343588)) (= lambda!32249 lambda!32247))))

(assert (=> bs!239549 (not (= lambda!32249 lambda!32248))))

(assert (=> b!946144 true))

(assert (=> b!946144 true))

(assert (=> b!946144 true))

(declare-fun lambda!32250 () Int)

(assert (=> bs!239549 (not (= lambda!32250 lambda!32247))))

(assert (=> bs!239549 (= (and (= lt!343581 (reg!2930 r!15766)) (= lt!343577 lt!343588)) (= lambda!32250 lambda!32248))))

(assert (=> b!946144 (not (= lambda!32250 lambda!32249))))

(assert (=> b!946144 true))

(assert (=> b!946144 true))

(assert (=> b!946144 true))

(declare-fun e!613130 () Bool)

(declare-fun e!613132 () Bool)

(assert (=> b!946144 (= e!613130 e!613132)))

(declare-fun res!429998 () Bool)

(assert (=> b!946144 (=> res!429998 e!613132)))

(declare-datatypes ((List!9831 0))(
  ( (Nil!9815) (Cons!9815 (h!15216 C!5772) (t!100877 List!9831)) )
))
(declare-fun s!10566 () List!9831)

(declare-fun isEmpty!6076 (List!9831) Bool)

(assert (=> b!946144 (= res!429998 (isEmpty!6076 s!10566))))

(declare-fun Exists!352 (Int) Bool)

(assert (=> b!946144 (= (Exists!352 lambda!32249) (Exists!352 lambda!32250))))

(declare-datatypes ((Unit!14827 0))(
  ( (Unit!14828) )
))
(declare-fun lt!343576 () Unit!14827)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!96 (Regex!2601 List!9831) Unit!14827)

(assert (=> b!946144 (= lt!343576 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!96 lt!343581 s!10566))))

(declare-fun lt!343586 () Bool)

(assert (=> b!946144 (= lt!343586 (Exists!352 lambda!32249))))

(declare-datatypes ((tuple2!11100 0))(
  ( (tuple2!11101 (_1!6376 List!9831) (_2!6376 List!9831)) )
))
(declare-datatypes ((Option!2192 0))(
  ( (None!2191) (Some!2191 (v!19608 tuple2!11100)) )
))
(declare-fun lt!343578 () Option!2192)

(declare-fun isDefined!1834 (Option!2192) Bool)

(assert (=> b!946144 (= lt!343586 (isDefined!1834 lt!343578))))

(declare-fun findConcatSeparation!298 (Regex!2601 Regex!2601 List!9831 List!9831 List!9831) Option!2192)

(assert (=> b!946144 (= lt!343578 (findConcatSeparation!298 lt!343581 lt!343577 Nil!9815 s!10566 s!10566))))

(declare-fun lt!343574 () Unit!14827)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!298 (Regex!2601 Regex!2601 List!9831) Unit!14827)

(assert (=> b!946144 (= lt!343574 (lemmaFindConcatSeparationEquivalentToExists!298 lt!343581 lt!343577 s!10566))))

(declare-fun matchRSpec!402 (Regex!2601 List!9831) Bool)

(assert (=> b!946144 (matchRSpec!402 lt!343577 s!10566)))

(declare-fun lt!343580 () Unit!14827)

(declare-fun mainMatchTheorem!402 (Regex!2601 List!9831) Unit!14827)

(assert (=> b!946144 (= lt!343580 (mainMatchTheorem!402 lt!343577 s!10566))))

(declare-fun b!946145 () Bool)

(declare-fun e!613129 () Bool)

(declare-fun e!613133 () Bool)

(assert (=> b!946145 (= e!613129 (not e!613133))))

(declare-fun res!429997 () Bool)

(assert (=> b!946145 (=> res!429997 e!613133)))

(declare-fun lt!343585 () Bool)

(get-info :version)

(assert (=> b!946145 (= res!429997 (or lt!343585 (and ((_ is Concat!4434) r!15766) ((_ is EmptyExpr!2601) (regOne!5714 r!15766))) (and ((_ is Concat!4434) r!15766) ((_ is EmptyExpr!2601) (regTwo!5714 r!15766))) ((_ is Concat!4434) r!15766) ((_ is Union!2601) r!15766) (not ((_ is Star!2601) r!15766))))))

(assert (=> b!946145 (= lt!343585 (matchRSpec!402 r!15766 s!10566))))

(declare-fun matchR!1139 (Regex!2601 List!9831) Bool)

(assert (=> b!946145 (= lt!343585 (matchR!1139 r!15766 s!10566))))

(declare-fun lt!343573 () Unit!14827)

(assert (=> b!946145 (= lt!343573 (mainMatchTheorem!402 r!15766 s!10566))))

(declare-fun b!946147 () Bool)

(declare-fun e!613131 () Bool)

(declare-fun tp_is_empty!4845 () Bool)

(assert (=> b!946147 (= e!613131 tp_is_empty!4845)))

(declare-fun b!946148 () Bool)

(declare-fun res!429999 () Bool)

(assert (=> b!946148 (=> res!429999 e!613132)))

(assert (=> b!946148 (= res!429999 (not lt!343586))))

(assert (=> b!946149 (= e!613133 e!613130)))

(declare-fun res!430001 () Bool)

(assert (=> b!946149 (=> res!430001 e!613130)))

(assert (=> b!946149 (= res!430001 (not (matchR!1139 lt!343577 s!10566)))))

(assert (=> b!946149 (= lt!343577 (Star!2601 lt!343581))))

(declare-fun removeUselessConcat!270 (Regex!2601) Regex!2601)

(assert (=> b!946149 (= lt!343581 (removeUselessConcat!270 (reg!2930 r!15766)))))

(assert (=> b!946149 (= (Exists!352 lambda!32247) (Exists!352 lambda!32248))))

(declare-fun lt!343575 () Unit!14827)

(assert (=> b!946149 (= lt!343575 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!96 (reg!2930 r!15766) s!10566))))

(assert (=> b!946149 (= (isDefined!1834 (findConcatSeparation!298 (reg!2930 r!15766) lt!343588 Nil!9815 s!10566 s!10566)) (Exists!352 lambda!32247))))

(declare-fun lt!343587 () Unit!14827)

(assert (=> b!946149 (= lt!343587 (lemmaFindConcatSeparationEquivalentToExists!298 (reg!2930 r!15766) lt!343588 s!10566))))

(assert (=> b!946149 (= lt!343588 (Star!2601 (reg!2930 r!15766)))))

(declare-fun b!946150 () Bool)

(declare-fun e!613128 () Unit!14827)

(declare-fun Unit!14829 () Unit!14827)

(assert (=> b!946150 (= e!613128 Unit!14829)))

(declare-fun b!946151 () Bool)

(declare-fun tp!292020 () Bool)

(assert (=> b!946151 (= e!613131 tp!292020)))

(declare-fun b!946152 () Bool)

(declare-fun e!613127 () Bool)

(declare-fun validRegex!1070 (Regex!2601) Bool)

(assert (=> b!946152 (= e!613127 (validRegex!1070 (reg!2930 r!15766)))))

(declare-fun lt!343589 () tuple2!11100)

(assert (=> b!946152 (= (matchR!1139 lt!343588 (_2!6376 lt!343589)) (matchR!1139 (removeUselessConcat!270 lt!343588) (_2!6376 lt!343589)))))

(declare-fun lt!343579 () Unit!14827)

(declare-fun lemmaRemoveUselessConcatSound!136 (Regex!2601 List!9831) Unit!14827)

(assert (=> b!946152 (= lt!343579 (lemmaRemoveUselessConcatSound!136 lt!343588 (_2!6376 lt!343589)))))

(declare-fun lt!343582 () Unit!14827)

(assert (=> b!946152 (= lt!343582 e!613128)))

(declare-fun c!154005 () Bool)

(declare-fun size!7899 (List!9831) Int)

(assert (=> b!946152 (= c!154005 (= (size!7899 (_2!6376 lt!343589)) (size!7899 s!10566)))))

(assert (=> b!946152 (matchR!1139 (reg!2930 r!15766) (_1!6376 lt!343589))))

(declare-fun lt!343583 () Unit!14827)

(assert (=> b!946152 (= lt!343583 (lemmaRemoveUselessConcatSound!136 (reg!2930 r!15766) (_1!6376 lt!343589)))))

(declare-fun b!946153 () Bool)

(assert (=> b!946153 (= e!613132 e!613127)))

(declare-fun res!430000 () Bool)

(assert (=> b!946153 (=> res!430000 e!613127)))

(assert (=> b!946153 (= res!430000 (not (matchR!1139 lt!343581 (_1!6376 lt!343589))))))

(declare-fun get!3283 (Option!2192) tuple2!11100)

(assert (=> b!946153 (= lt!343589 (get!3283 lt!343578))))

(declare-fun b!946154 () Bool)

(declare-fun tp!292018 () Bool)

(declare-fun tp!292015 () Bool)

(assert (=> b!946154 (= e!613131 (and tp!292018 tp!292015))))

(declare-fun res!429996 () Bool)

(assert (=> start!84370 (=> (not res!429996) (not e!613129))))

(assert (=> start!84370 (= res!429996 (validRegex!1070 r!15766))))

(assert (=> start!84370 e!613129))

(assert (=> start!84370 e!613131))

(declare-fun e!613126 () Bool)

(assert (=> start!84370 e!613126))

(declare-fun b!946146 () Bool)

(declare-fun tp!292017 () Bool)

(assert (=> b!946146 (= e!613126 (and tp_is_empty!4845 tp!292017))))

(declare-fun b!946155 () Bool)

(declare-fun res!430002 () Bool)

(assert (=> b!946155 (=> res!430002 e!613127)))

(assert (=> b!946155 (= res!430002 (not (matchR!1139 lt!343577 (_2!6376 lt!343589))))))

(declare-fun b!946156 () Bool)

(declare-fun tp!292016 () Bool)

(declare-fun tp!292019 () Bool)

(assert (=> b!946156 (= e!613131 (and tp!292016 tp!292019))))

(declare-fun b!946157 () Bool)

(declare-fun Unit!14830 () Unit!14827)

(assert (=> b!946157 (= e!613128 Unit!14830)))

(declare-fun lt!343584 () Unit!14827)

(assert (=> b!946157 (= lt!343584 (mainMatchTheorem!402 (reg!2930 r!15766) (_1!6376 lt!343589)))))

(assert (=> b!946157 false))

(assert (= (and start!84370 res!429996) b!946145))

(assert (= (and b!946145 (not res!429997)) b!946149))

(assert (= (and b!946149 (not res!430001)) b!946144))

(assert (= (and b!946144 (not res!429998)) b!946148))

(assert (= (and b!946148 (not res!429999)) b!946153))

(assert (= (and b!946153 (not res!430000)) b!946155))

(assert (= (and b!946155 (not res!430002)) b!946152))

(assert (= (and b!946152 c!154005) b!946157))

(assert (= (and b!946152 (not c!154005)) b!946150))

(assert (= (and start!84370 ((_ is ElementMatch!2601) r!15766)) b!946147))

(assert (= (and start!84370 ((_ is Concat!4434) r!15766)) b!946156))

(assert (= (and start!84370 ((_ is Star!2601) r!15766)) b!946151))

(assert (= (and start!84370 ((_ is Union!2601) r!15766)) b!946154))

(assert (= (and start!84370 ((_ is Cons!9815) s!10566)) b!946146))

(declare-fun m!1161109 () Bool)

(assert (=> start!84370 m!1161109))

(declare-fun m!1161111 () Bool)

(assert (=> b!946145 m!1161111))

(declare-fun m!1161113 () Bool)

(assert (=> b!946145 m!1161113))

(declare-fun m!1161115 () Bool)

(assert (=> b!946145 m!1161115))

(declare-fun m!1161117 () Bool)

(assert (=> b!946144 m!1161117))

(declare-fun m!1161119 () Bool)

(assert (=> b!946144 m!1161119))

(declare-fun m!1161121 () Bool)

(assert (=> b!946144 m!1161121))

(declare-fun m!1161123 () Bool)

(assert (=> b!946144 m!1161123))

(declare-fun m!1161125 () Bool)

(assert (=> b!946144 m!1161125))

(declare-fun m!1161127 () Bool)

(assert (=> b!946144 m!1161127))

(declare-fun m!1161129 () Bool)

(assert (=> b!946144 m!1161129))

(declare-fun m!1161131 () Bool)

(assert (=> b!946144 m!1161131))

(declare-fun m!1161133 () Bool)

(assert (=> b!946144 m!1161133))

(assert (=> b!946144 m!1161127))

(declare-fun m!1161135 () Bool)

(assert (=> b!946157 m!1161135))

(declare-fun m!1161137 () Bool)

(assert (=> b!946155 m!1161137))

(declare-fun m!1161139 () Bool)

(assert (=> b!946153 m!1161139))

(declare-fun m!1161141 () Bool)

(assert (=> b!946153 m!1161141))

(declare-fun m!1161143 () Bool)

(assert (=> b!946149 m!1161143))

(declare-fun m!1161145 () Bool)

(assert (=> b!946149 m!1161145))

(declare-fun m!1161147 () Bool)

(assert (=> b!946149 m!1161147))

(declare-fun m!1161149 () Bool)

(assert (=> b!946149 m!1161149))

(declare-fun m!1161151 () Bool)

(assert (=> b!946149 m!1161151))

(declare-fun m!1161153 () Bool)

(assert (=> b!946149 m!1161153))

(declare-fun m!1161155 () Bool)

(assert (=> b!946149 m!1161155))

(assert (=> b!946149 m!1161151))

(assert (=> b!946149 m!1161143))

(declare-fun m!1161157 () Bool)

(assert (=> b!946149 m!1161157))

(declare-fun m!1161159 () Bool)

(assert (=> b!946152 m!1161159))

(declare-fun m!1161161 () Bool)

(assert (=> b!946152 m!1161161))

(declare-fun m!1161163 () Bool)

(assert (=> b!946152 m!1161163))

(declare-fun m!1161165 () Bool)

(assert (=> b!946152 m!1161165))

(declare-fun m!1161167 () Bool)

(assert (=> b!946152 m!1161167))

(declare-fun m!1161169 () Bool)

(assert (=> b!946152 m!1161169))

(declare-fun m!1161171 () Bool)

(assert (=> b!946152 m!1161171))

(assert (=> b!946152 m!1161169))

(declare-fun m!1161173 () Bool)

(assert (=> b!946152 m!1161173))

(declare-fun m!1161175 () Bool)

(assert (=> b!946152 m!1161175))

(check-sat (not b!946144) (not b!946152) (not b!946153) (not b!946155) (not b!946146) (not b!946149) (not b!946145) (not b!946157) (not b!946151) (not b!946156) (not start!84370) (not b!946154) tp_is_empty!4845)
(check-sat)
(get-model)

(declare-fun bm!59151 () Bool)

(declare-fun call!59156 () Bool)

(declare-fun call!59158 () Bool)

(assert (=> bm!59151 (= call!59156 call!59158)))

(declare-fun b!946188 () Bool)

(declare-fun e!613157 () Bool)

(declare-fun e!613154 () Bool)

(assert (=> b!946188 (= e!613157 e!613154)))

(declare-fun c!154015 () Bool)

(assert (=> b!946188 (= c!154015 ((_ is Union!2601) r!15766))))

(declare-fun c!154016 () Bool)

(declare-fun bm!59152 () Bool)

(assert (=> bm!59152 (= call!59158 (validRegex!1070 (ite c!154016 (reg!2930 r!15766) (ite c!154015 (regTwo!5715 r!15766) (regTwo!5714 r!15766)))))))

(declare-fun b!946189 () Bool)

(declare-fun e!613156 () Bool)

(assert (=> b!946189 (= e!613156 call!59158)))

(declare-fun b!946190 () Bool)

(declare-fun e!613153 () Bool)

(declare-fun e!613152 () Bool)

(assert (=> b!946190 (= e!613153 e!613152)))

(declare-fun res!430016 () Bool)

(assert (=> b!946190 (=> (not res!430016) (not e!613152))))

(declare-fun call!59157 () Bool)

(assert (=> b!946190 (= res!430016 call!59157)))

(declare-fun b!946191 () Bool)

(declare-fun res!430014 () Bool)

(declare-fun e!613155 () Bool)

(assert (=> b!946191 (=> (not res!430014) (not e!613155))))

(assert (=> b!946191 (= res!430014 call!59157)))

(assert (=> b!946191 (= e!613154 e!613155)))

(declare-fun b!946192 () Bool)

(declare-fun res!430013 () Bool)

(assert (=> b!946192 (=> res!430013 e!613153)))

(assert (=> b!946192 (= res!430013 (not ((_ is Concat!4434) r!15766)))))

(assert (=> b!946192 (= e!613154 e!613153)))

(declare-fun b!946193 () Bool)

(assert (=> b!946193 (= e!613152 call!59156)))

(declare-fun d!283188 () Bool)

(declare-fun res!430017 () Bool)

(declare-fun e!613158 () Bool)

(assert (=> d!283188 (=> res!430017 e!613158)))

(assert (=> d!283188 (= res!430017 ((_ is ElementMatch!2601) r!15766))))

(assert (=> d!283188 (= (validRegex!1070 r!15766) e!613158)))

(declare-fun b!946194 () Bool)

(assert (=> b!946194 (= e!613155 call!59156)))

(declare-fun b!946195 () Bool)

(assert (=> b!946195 (= e!613158 e!613157)))

(assert (=> b!946195 (= c!154016 ((_ is Star!2601) r!15766))))

(declare-fun bm!59153 () Bool)

(assert (=> bm!59153 (= call!59157 (validRegex!1070 (ite c!154015 (regOne!5715 r!15766) (regOne!5714 r!15766))))))

(declare-fun b!946196 () Bool)

(assert (=> b!946196 (= e!613157 e!613156)))

(declare-fun res!430015 () Bool)

(declare-fun nullable!765 (Regex!2601) Bool)

(assert (=> b!946196 (= res!430015 (not (nullable!765 (reg!2930 r!15766))))))

(assert (=> b!946196 (=> (not res!430015) (not e!613156))))

(assert (= (and d!283188 (not res!430017)) b!946195))

(assert (= (and b!946195 c!154016) b!946196))

(assert (= (and b!946195 (not c!154016)) b!946188))

(assert (= (and b!946196 res!430015) b!946189))

(assert (= (and b!946188 c!154015) b!946191))

(assert (= (and b!946188 (not c!154015)) b!946192))

(assert (= (and b!946191 res!430014) b!946194))

(assert (= (and b!946192 (not res!430013)) b!946190))

(assert (= (and b!946190 res!430016) b!946193))

(assert (= (or b!946194 b!946193) bm!59151))

(assert (= (or b!946191 b!946190) bm!59153))

(assert (= (or b!946189 bm!59151) bm!59152))

(declare-fun m!1161185 () Bool)

(assert (=> bm!59152 m!1161185))

(declare-fun m!1161187 () Bool)

(assert (=> bm!59153 m!1161187))

(declare-fun m!1161189 () Bool)

(assert (=> b!946196 m!1161189))

(assert (=> start!84370 d!283188))

(declare-fun b!946355 () Bool)

(declare-fun e!613248 () Bool)

(declare-fun lt!343608 () Bool)

(assert (=> b!946355 (= e!613248 (not lt!343608))))

(declare-fun b!946357 () Bool)

(declare-fun res!430095 () Bool)

(declare-fun e!613247 () Bool)

(assert (=> b!946357 (=> res!430095 e!613247)))

(assert (=> b!946357 (= res!430095 (not ((_ is ElementMatch!2601) lt!343581)))))

(assert (=> b!946357 (= e!613248 e!613247)))

(declare-fun b!946358 () Bool)

(declare-fun e!613251 () Bool)

(declare-fun head!1727 (List!9831) C!5772)

(assert (=> b!946358 (= e!613251 (not (= (head!1727 (_1!6376 lt!343589)) (c!154006 lt!343581))))))

(declare-fun b!946359 () Bool)

(declare-fun res!430097 () Bool)

(assert (=> b!946359 (=> res!430097 e!613247)))

(declare-fun e!613249 () Bool)

(assert (=> b!946359 (= res!430097 e!613249)))

(declare-fun res!430093 () Bool)

(assert (=> b!946359 (=> (not res!430093) (not e!613249))))

(assert (=> b!946359 (= res!430093 lt!343608)))

(declare-fun b!946360 () Bool)

(declare-fun e!613252 () Bool)

(assert (=> b!946360 (= e!613247 e!613252)))

(declare-fun res!430094 () Bool)

(assert (=> b!946360 (=> (not res!430094) (not e!613252))))

(assert (=> b!946360 (= res!430094 (not lt!343608))))

(declare-fun d!283198 () Bool)

(declare-fun e!613253 () Bool)

(assert (=> d!283198 e!613253))

(declare-fun c!154061 () Bool)

(assert (=> d!283198 (= c!154061 ((_ is EmptyExpr!2601) lt!343581))))

(declare-fun e!613250 () Bool)

(assert (=> d!283198 (= lt!343608 e!613250)))

(declare-fun c!154060 () Bool)

(assert (=> d!283198 (= c!154060 (isEmpty!6076 (_1!6376 lt!343589)))))

(assert (=> d!283198 (validRegex!1070 lt!343581)))

(assert (=> d!283198 (= (matchR!1139 lt!343581 (_1!6376 lt!343589)) lt!343608)))

(declare-fun b!946356 () Bool)

(declare-fun res!430092 () Bool)

(assert (=> b!946356 (=> (not res!430092) (not e!613249))))

(declare-fun call!59190 () Bool)

(assert (=> b!946356 (= res!430092 (not call!59190))))

(declare-fun b!946361 () Bool)

(assert (=> b!946361 (= e!613252 e!613251)))

(declare-fun res!430096 () Bool)

(assert (=> b!946361 (=> res!430096 e!613251)))

(assert (=> b!946361 (= res!430096 call!59190)))

(declare-fun b!946362 () Bool)

(assert (=> b!946362 (= e!613249 (= (head!1727 (_1!6376 lt!343589)) (c!154006 lt!343581)))))

(declare-fun b!946363 () Bool)

(declare-fun derivativeStep!574 (Regex!2601 C!5772) Regex!2601)

(declare-fun tail!1289 (List!9831) List!9831)

(assert (=> b!946363 (= e!613250 (matchR!1139 (derivativeStep!574 lt!343581 (head!1727 (_1!6376 lt!343589))) (tail!1289 (_1!6376 lt!343589))))))

(declare-fun bm!59185 () Bool)

(assert (=> bm!59185 (= call!59190 (isEmpty!6076 (_1!6376 lt!343589)))))

(declare-fun b!946364 () Bool)

(declare-fun res!430099 () Bool)

(assert (=> b!946364 (=> (not res!430099) (not e!613249))))

(assert (=> b!946364 (= res!430099 (isEmpty!6076 (tail!1289 (_1!6376 lt!343589))))))

(declare-fun b!946365 () Bool)

(assert (=> b!946365 (= e!613253 (= lt!343608 call!59190))))

(declare-fun b!946366 () Bool)

(assert (=> b!946366 (= e!613250 (nullable!765 lt!343581))))

(declare-fun b!946367 () Bool)

(assert (=> b!946367 (= e!613253 e!613248)))

(declare-fun c!154059 () Bool)

(assert (=> b!946367 (= c!154059 ((_ is EmptyLang!2601) lt!343581))))

(declare-fun b!946368 () Bool)

(declare-fun res!430098 () Bool)

(assert (=> b!946368 (=> res!430098 e!613251)))

(assert (=> b!946368 (= res!430098 (not (isEmpty!6076 (tail!1289 (_1!6376 lt!343589)))))))

(assert (= (and d!283198 c!154060) b!946366))

(assert (= (and d!283198 (not c!154060)) b!946363))

(assert (= (and d!283198 c!154061) b!946365))

(assert (= (and d!283198 (not c!154061)) b!946367))

(assert (= (and b!946367 c!154059) b!946355))

(assert (= (and b!946367 (not c!154059)) b!946357))

(assert (= (and b!946357 (not res!430095)) b!946359))

(assert (= (and b!946359 res!430093) b!946356))

(assert (= (and b!946356 res!430092) b!946364))

(assert (= (and b!946364 res!430099) b!946362))

(assert (= (and b!946359 (not res!430097)) b!946360))

(assert (= (and b!946360 res!430094) b!946361))

(assert (= (and b!946361 (not res!430096)) b!946368))

(assert (= (and b!946368 (not res!430098)) b!946358))

(assert (= (or b!946365 b!946356 b!946361) bm!59185))

(declare-fun m!1161245 () Bool)

(assert (=> b!946366 m!1161245))

(declare-fun m!1161247 () Bool)

(assert (=> b!946358 m!1161247))

(assert (=> b!946363 m!1161247))

(assert (=> b!946363 m!1161247))

(declare-fun m!1161249 () Bool)

(assert (=> b!946363 m!1161249))

(declare-fun m!1161251 () Bool)

(assert (=> b!946363 m!1161251))

(assert (=> b!946363 m!1161249))

(assert (=> b!946363 m!1161251))

(declare-fun m!1161253 () Bool)

(assert (=> b!946363 m!1161253))

(declare-fun m!1161255 () Bool)

(assert (=> d!283198 m!1161255))

(declare-fun m!1161257 () Bool)

(assert (=> d!283198 m!1161257))

(assert (=> b!946368 m!1161251))

(assert (=> b!946368 m!1161251))

(declare-fun m!1161259 () Bool)

(assert (=> b!946368 m!1161259))

(assert (=> b!946364 m!1161251))

(assert (=> b!946364 m!1161251))

(assert (=> b!946364 m!1161259))

(assert (=> b!946362 m!1161247))

(assert (=> bm!59185 m!1161255))

(assert (=> b!946153 d!283198))

(declare-fun d!283212 () Bool)

(assert (=> d!283212 (= (get!3283 lt!343578) (v!19608 lt!343578))))

(assert (=> b!946153 d!283212))

(declare-fun d!283214 () Bool)

(assert (=> d!283214 (= (matchR!1139 (reg!2930 r!15766) (_1!6376 lt!343589)) (matchRSpec!402 (reg!2930 r!15766) (_1!6376 lt!343589)))))

(declare-fun lt!343617 () Unit!14827)

(declare-fun choose!5886 (Regex!2601 List!9831) Unit!14827)

(assert (=> d!283214 (= lt!343617 (choose!5886 (reg!2930 r!15766) (_1!6376 lt!343589)))))

(assert (=> d!283214 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283214 (= (mainMatchTheorem!402 (reg!2930 r!15766) (_1!6376 lt!343589)) lt!343617)))

(declare-fun bs!239552 () Bool)

(assert (= bs!239552 d!283214))

(assert (=> bs!239552 m!1161167))

(declare-fun m!1161261 () Bool)

(assert (=> bs!239552 m!1161261))

(declare-fun m!1161263 () Bool)

(assert (=> bs!239552 m!1161263))

(assert (=> bs!239552 m!1161163))

(assert (=> b!946157 d!283214))

(declare-fun b!946387 () Bool)

(declare-fun e!613265 () Bool)

(declare-fun lt!343618 () Bool)

(assert (=> b!946387 (= e!613265 (not lt!343618))))

(declare-fun b!946389 () Bool)

(declare-fun res!430113 () Bool)

(declare-fun e!613264 () Bool)

(assert (=> b!946389 (=> res!430113 e!613264)))

(assert (=> b!946389 (= res!430113 (not ((_ is ElementMatch!2601) (reg!2930 r!15766))))))

(assert (=> b!946389 (= e!613265 e!613264)))

(declare-fun b!946390 () Bool)

(declare-fun e!613268 () Bool)

(assert (=> b!946390 (= e!613268 (not (= (head!1727 (_1!6376 lt!343589)) (c!154006 (reg!2930 r!15766)))))))

(declare-fun b!946391 () Bool)

(declare-fun res!430115 () Bool)

(assert (=> b!946391 (=> res!430115 e!613264)))

(declare-fun e!613266 () Bool)

(assert (=> b!946391 (= res!430115 e!613266)))

(declare-fun res!430111 () Bool)

(assert (=> b!946391 (=> (not res!430111) (not e!613266))))

(assert (=> b!946391 (= res!430111 lt!343618)))

(declare-fun b!946392 () Bool)

(declare-fun e!613269 () Bool)

(assert (=> b!946392 (= e!613264 e!613269)))

(declare-fun res!430112 () Bool)

(assert (=> b!946392 (=> (not res!430112) (not e!613269))))

(assert (=> b!946392 (= res!430112 (not lt!343618))))

(declare-fun d!283216 () Bool)

(declare-fun e!613270 () Bool)

(assert (=> d!283216 e!613270))

(declare-fun c!154068 () Bool)

(assert (=> d!283216 (= c!154068 ((_ is EmptyExpr!2601) (reg!2930 r!15766)))))

(declare-fun e!613267 () Bool)

(assert (=> d!283216 (= lt!343618 e!613267)))

(declare-fun c!154067 () Bool)

(assert (=> d!283216 (= c!154067 (isEmpty!6076 (_1!6376 lt!343589)))))

(assert (=> d!283216 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283216 (= (matchR!1139 (reg!2930 r!15766) (_1!6376 lt!343589)) lt!343618)))

(declare-fun b!946388 () Bool)

(declare-fun res!430110 () Bool)

(assert (=> b!946388 (=> (not res!430110) (not e!613266))))

(declare-fun call!59191 () Bool)

(assert (=> b!946388 (= res!430110 (not call!59191))))

(declare-fun b!946393 () Bool)

(assert (=> b!946393 (= e!613269 e!613268)))

(declare-fun res!430114 () Bool)

(assert (=> b!946393 (=> res!430114 e!613268)))

(assert (=> b!946393 (= res!430114 call!59191)))

(declare-fun b!946394 () Bool)

(assert (=> b!946394 (= e!613266 (= (head!1727 (_1!6376 lt!343589)) (c!154006 (reg!2930 r!15766))))))

(declare-fun b!946395 () Bool)

(assert (=> b!946395 (= e!613267 (matchR!1139 (derivativeStep!574 (reg!2930 r!15766) (head!1727 (_1!6376 lt!343589))) (tail!1289 (_1!6376 lt!343589))))))

(declare-fun bm!59186 () Bool)

(assert (=> bm!59186 (= call!59191 (isEmpty!6076 (_1!6376 lt!343589)))))

(declare-fun b!946396 () Bool)

(declare-fun res!430117 () Bool)

(assert (=> b!946396 (=> (not res!430117) (not e!613266))))

(assert (=> b!946396 (= res!430117 (isEmpty!6076 (tail!1289 (_1!6376 lt!343589))))))

(declare-fun b!946397 () Bool)

(assert (=> b!946397 (= e!613270 (= lt!343618 call!59191))))

(declare-fun b!946398 () Bool)

(assert (=> b!946398 (= e!613267 (nullable!765 (reg!2930 r!15766)))))

(declare-fun b!946399 () Bool)

(assert (=> b!946399 (= e!613270 e!613265)))

(declare-fun c!154066 () Bool)

(assert (=> b!946399 (= c!154066 ((_ is EmptyLang!2601) (reg!2930 r!15766)))))

(declare-fun b!946400 () Bool)

(declare-fun res!430116 () Bool)

(assert (=> b!946400 (=> res!430116 e!613268)))

(assert (=> b!946400 (= res!430116 (not (isEmpty!6076 (tail!1289 (_1!6376 lt!343589)))))))

(assert (= (and d!283216 c!154067) b!946398))

(assert (= (and d!283216 (not c!154067)) b!946395))

(assert (= (and d!283216 c!154068) b!946397))

(assert (= (and d!283216 (not c!154068)) b!946399))

(assert (= (and b!946399 c!154066) b!946387))

(assert (= (and b!946399 (not c!154066)) b!946389))

(assert (= (and b!946389 (not res!430113)) b!946391))

(assert (= (and b!946391 res!430111) b!946388))

(assert (= (and b!946388 res!430110) b!946396))

(assert (= (and b!946396 res!430117) b!946394))

(assert (= (and b!946391 (not res!430115)) b!946392))

(assert (= (and b!946392 res!430112) b!946393))

(assert (= (and b!946393 (not res!430114)) b!946400))

(assert (= (and b!946400 (not res!430116)) b!946390))

(assert (= (or b!946397 b!946388 b!946393) bm!59186))

(assert (=> b!946398 m!1161189))

(assert (=> b!946390 m!1161247))

(assert (=> b!946395 m!1161247))

(assert (=> b!946395 m!1161247))

(declare-fun m!1161265 () Bool)

(assert (=> b!946395 m!1161265))

(assert (=> b!946395 m!1161251))

(assert (=> b!946395 m!1161265))

(assert (=> b!946395 m!1161251))

(declare-fun m!1161267 () Bool)

(assert (=> b!946395 m!1161267))

(assert (=> d!283216 m!1161255))

(assert (=> d!283216 m!1161163))

(assert (=> b!946400 m!1161251))

(assert (=> b!946400 m!1161251))

(assert (=> b!946400 m!1161259))

(assert (=> b!946396 m!1161251))

(assert (=> b!946396 m!1161251))

(assert (=> b!946396 m!1161259))

(assert (=> b!946394 m!1161247))

(assert (=> bm!59186 m!1161255))

(assert (=> b!946152 d!283216))

(declare-fun b!946440 () Bool)

(declare-fun e!613294 () Regex!2601)

(declare-fun e!613295 () Regex!2601)

(assert (=> b!946440 (= e!613294 e!613295)))

(declare-fun c!154083 () Bool)

(assert (=> b!946440 (= c!154083 ((_ is Union!2601) lt!343588))))

(declare-fun call!59205 () Regex!2601)

(declare-fun c!154084 () Bool)

(declare-fun bm!59197 () Bool)

(assert (=> bm!59197 (= call!59205 (removeUselessConcat!270 (ite c!154084 (regOne!5714 lt!343588) (ite c!154083 (regTwo!5715 lt!343588) (reg!2930 lt!343588)))))))

(declare-fun b!946441 () Bool)

(declare-fun e!613293 () Regex!2601)

(declare-fun call!59203 () Regex!2601)

(assert (=> b!946441 (= e!613293 (Star!2601 call!59203))))

(declare-fun b!946442 () Bool)

(declare-fun call!59202 () Regex!2601)

(assert (=> b!946442 (= e!613295 (Union!2601 call!59202 call!59203))))

(declare-fun b!946443 () Bool)

(assert (=> b!946443 (= e!613294 (Concat!4434 call!59205 call!59202))))

(declare-fun bm!59198 () Bool)

(declare-fun call!59204 () Regex!2601)

(declare-fun call!59206 () Regex!2601)

(assert (=> bm!59198 (= call!59204 call!59206)))

(declare-fun b!946445 () Bool)

(declare-fun e!613296 () Bool)

(declare-fun lt!343632 () Regex!2601)

(assert (=> b!946445 (= e!613296 (= (nullable!765 lt!343632) (nullable!765 lt!343588)))))

(declare-fun bm!59199 () Bool)

(assert (=> bm!59199 (= call!59202 call!59204)))

(declare-fun b!946446 () Bool)

(declare-fun e!613292 () Regex!2601)

(declare-fun e!613297 () Regex!2601)

(assert (=> b!946446 (= e!613292 e!613297)))

(declare-fun c!154085 () Bool)

(assert (=> b!946446 (= c!154085 (and ((_ is Concat!4434) lt!343588) ((_ is EmptyExpr!2601) (regTwo!5714 lt!343588))))))

(declare-fun b!946447 () Bool)

(assert (=> b!946447 (= e!613293 lt!343588)))

(declare-fun b!946448 () Bool)

(assert (=> b!946448 (= e!613292 call!59206)))

(declare-fun c!154081 () Bool)

(declare-fun bm!59200 () Bool)

(assert (=> bm!59200 (= call!59206 (removeUselessConcat!270 (ite c!154081 (regTwo!5714 lt!343588) (ite c!154085 (regOne!5714 lt!343588) (ite c!154084 (regTwo!5714 lt!343588) (regOne!5715 lt!343588))))))))

(declare-fun b!946444 () Bool)

(declare-fun c!154082 () Bool)

(assert (=> b!946444 (= c!154082 ((_ is Star!2601) lt!343588))))

(assert (=> b!946444 (= e!613295 e!613293)))

(declare-fun d!283218 () Bool)

(assert (=> d!283218 e!613296))

(declare-fun res!430133 () Bool)

(assert (=> d!283218 (=> (not res!430133) (not e!613296))))

(assert (=> d!283218 (= res!430133 (validRegex!1070 lt!343632))))

(assert (=> d!283218 (= lt!343632 e!613292)))

(assert (=> d!283218 (= c!154081 (and ((_ is Concat!4434) lt!343588) ((_ is EmptyExpr!2601) (regOne!5714 lt!343588))))))

(assert (=> d!283218 (validRegex!1070 lt!343588)))

(assert (=> d!283218 (= (removeUselessConcat!270 lt!343588) lt!343632)))

(declare-fun b!946449 () Bool)

(assert (=> b!946449 (= c!154084 ((_ is Concat!4434) lt!343588))))

(assert (=> b!946449 (= e!613297 e!613294)))

(declare-fun b!946450 () Bool)

(assert (=> b!946450 (= e!613297 call!59204)))

(declare-fun bm!59201 () Bool)

(assert (=> bm!59201 (= call!59203 call!59205)))

(assert (= (and d!283218 c!154081) b!946448))

(assert (= (and d!283218 (not c!154081)) b!946446))

(assert (= (and b!946446 c!154085) b!946450))

(assert (= (and b!946446 (not c!154085)) b!946449))

(assert (= (and b!946449 c!154084) b!946443))

(assert (= (and b!946449 (not c!154084)) b!946440))

(assert (= (and b!946440 c!154083) b!946442))

(assert (= (and b!946440 (not c!154083)) b!946444))

(assert (= (and b!946444 c!154082) b!946441))

(assert (= (and b!946444 (not c!154082)) b!946447))

(assert (= (or b!946442 b!946441) bm!59201))

(assert (= (or b!946443 b!946442) bm!59199))

(assert (= (or b!946443 bm!59201) bm!59197))

(assert (= (or b!946450 bm!59199) bm!59198))

(assert (= (or b!946448 bm!59198) bm!59200))

(assert (= (and d!283218 res!430133) b!946445))

(declare-fun m!1161305 () Bool)

(assert (=> bm!59197 m!1161305))

(declare-fun m!1161307 () Bool)

(assert (=> b!946445 m!1161307))

(declare-fun m!1161309 () Bool)

(assert (=> b!946445 m!1161309))

(declare-fun m!1161311 () Bool)

(assert (=> bm!59200 m!1161311))

(declare-fun m!1161313 () Bool)

(assert (=> d!283218 m!1161313))

(declare-fun m!1161315 () Bool)

(assert (=> d!283218 m!1161315))

(assert (=> b!946152 d!283218))

(declare-fun bm!59202 () Bool)

(declare-fun call!59207 () Bool)

(declare-fun call!59209 () Bool)

(assert (=> bm!59202 (= call!59207 call!59209)))

(declare-fun b!946457 () Bool)

(declare-fun e!613305 () Bool)

(declare-fun e!613302 () Bool)

(assert (=> b!946457 (= e!613305 e!613302)))

(declare-fun c!154086 () Bool)

(assert (=> b!946457 (= c!154086 ((_ is Union!2601) (reg!2930 r!15766)))))

(declare-fun bm!59203 () Bool)

(declare-fun c!154087 () Bool)

(assert (=> bm!59203 (= call!59209 (validRegex!1070 (ite c!154087 (reg!2930 (reg!2930 r!15766)) (ite c!154086 (regTwo!5715 (reg!2930 r!15766)) (regTwo!5714 (reg!2930 r!15766))))))))

(declare-fun b!946458 () Bool)

(declare-fun e!613304 () Bool)

(assert (=> b!946458 (= e!613304 call!59209)))

(declare-fun b!946459 () Bool)

(declare-fun e!613301 () Bool)

(declare-fun e!613300 () Bool)

(assert (=> b!946459 (= e!613301 e!613300)))

(declare-fun res!430143 () Bool)

(assert (=> b!946459 (=> (not res!430143) (not e!613300))))

(declare-fun call!59208 () Bool)

(assert (=> b!946459 (= res!430143 call!59208)))

(declare-fun b!946460 () Bool)

(declare-fun res!430141 () Bool)

(declare-fun e!613303 () Bool)

(assert (=> b!946460 (=> (not res!430141) (not e!613303))))

(assert (=> b!946460 (= res!430141 call!59208)))

(assert (=> b!946460 (= e!613302 e!613303)))

(declare-fun b!946461 () Bool)

(declare-fun res!430140 () Bool)

(assert (=> b!946461 (=> res!430140 e!613301)))

(assert (=> b!946461 (= res!430140 (not ((_ is Concat!4434) (reg!2930 r!15766))))))

(assert (=> b!946461 (= e!613302 e!613301)))

(declare-fun b!946462 () Bool)

(assert (=> b!946462 (= e!613300 call!59207)))

(declare-fun d!283230 () Bool)

(declare-fun res!430144 () Bool)

(declare-fun e!613306 () Bool)

(assert (=> d!283230 (=> res!430144 e!613306)))

(assert (=> d!283230 (= res!430144 ((_ is ElementMatch!2601) (reg!2930 r!15766)))))

(assert (=> d!283230 (= (validRegex!1070 (reg!2930 r!15766)) e!613306)))

(declare-fun b!946463 () Bool)

(assert (=> b!946463 (= e!613303 call!59207)))

(declare-fun b!946464 () Bool)

(assert (=> b!946464 (= e!613306 e!613305)))

(assert (=> b!946464 (= c!154087 ((_ is Star!2601) (reg!2930 r!15766)))))

(declare-fun bm!59204 () Bool)

(assert (=> bm!59204 (= call!59208 (validRegex!1070 (ite c!154086 (regOne!5715 (reg!2930 r!15766)) (regOne!5714 (reg!2930 r!15766)))))))

(declare-fun b!946465 () Bool)

(assert (=> b!946465 (= e!613305 e!613304)))

(declare-fun res!430142 () Bool)

(assert (=> b!946465 (= res!430142 (not (nullable!765 (reg!2930 (reg!2930 r!15766)))))))

(assert (=> b!946465 (=> (not res!430142) (not e!613304))))

(assert (= (and d!283230 (not res!430144)) b!946464))

(assert (= (and b!946464 c!154087) b!946465))

(assert (= (and b!946464 (not c!154087)) b!946457))

(assert (= (and b!946465 res!430142) b!946458))

(assert (= (and b!946457 c!154086) b!946460))

(assert (= (and b!946457 (not c!154086)) b!946461))

(assert (= (and b!946460 res!430141) b!946463))

(assert (= (and b!946461 (not res!430140)) b!946459))

(assert (= (and b!946459 res!430143) b!946462))

(assert (= (or b!946463 b!946462) bm!59202))

(assert (= (or b!946460 b!946459) bm!59204))

(assert (= (or b!946458 bm!59202) bm!59203))

(declare-fun m!1161317 () Bool)

(assert (=> bm!59203 m!1161317))

(declare-fun m!1161319 () Bool)

(assert (=> bm!59204 m!1161319))

(declare-fun m!1161321 () Bool)

(assert (=> b!946465 m!1161321))

(assert (=> b!946152 d!283230))

(declare-fun d!283232 () Bool)

(declare-fun lt!343636 () Int)

(assert (=> d!283232 (>= lt!343636 0)))

(declare-fun e!613309 () Int)

(assert (=> d!283232 (= lt!343636 e!613309)))

(declare-fun c!154090 () Bool)

(assert (=> d!283232 (= c!154090 ((_ is Nil!9815) (_2!6376 lt!343589)))))

(assert (=> d!283232 (= (size!7899 (_2!6376 lt!343589)) lt!343636)))

(declare-fun b!946470 () Bool)

(assert (=> b!946470 (= e!613309 0)))

(declare-fun b!946471 () Bool)

(assert (=> b!946471 (= e!613309 (+ 1 (size!7899 (t!100877 (_2!6376 lt!343589)))))))

(assert (= (and d!283232 c!154090) b!946470))

(assert (= (and d!283232 (not c!154090)) b!946471))

(declare-fun m!1161329 () Bool)

(assert (=> b!946471 m!1161329))

(assert (=> b!946152 d!283232))

(declare-fun b!946472 () Bool)

(declare-fun e!613311 () Bool)

(declare-fun lt!343637 () Bool)

(assert (=> b!946472 (= e!613311 (not lt!343637))))

(declare-fun b!946474 () Bool)

(declare-fun res!430148 () Bool)

(declare-fun e!613310 () Bool)

(assert (=> b!946474 (=> res!430148 e!613310)))

(assert (=> b!946474 (= res!430148 (not ((_ is ElementMatch!2601) lt!343588)))))

(assert (=> b!946474 (= e!613311 e!613310)))

(declare-fun b!946475 () Bool)

(declare-fun e!613314 () Bool)

(assert (=> b!946475 (= e!613314 (not (= (head!1727 (_2!6376 lt!343589)) (c!154006 lt!343588))))))

(declare-fun b!946476 () Bool)

(declare-fun res!430150 () Bool)

(assert (=> b!946476 (=> res!430150 e!613310)))

(declare-fun e!613312 () Bool)

(assert (=> b!946476 (= res!430150 e!613312)))

(declare-fun res!430146 () Bool)

(assert (=> b!946476 (=> (not res!430146) (not e!613312))))

(assert (=> b!946476 (= res!430146 lt!343637)))

(declare-fun b!946477 () Bool)

(declare-fun e!613315 () Bool)

(assert (=> b!946477 (= e!613310 e!613315)))

(declare-fun res!430147 () Bool)

(assert (=> b!946477 (=> (not res!430147) (not e!613315))))

(assert (=> b!946477 (= res!430147 (not lt!343637))))

(declare-fun d!283236 () Bool)

(declare-fun e!613316 () Bool)

(assert (=> d!283236 e!613316))

(declare-fun c!154093 () Bool)

(assert (=> d!283236 (= c!154093 ((_ is EmptyExpr!2601) lt!343588))))

(declare-fun e!613313 () Bool)

(assert (=> d!283236 (= lt!343637 e!613313)))

(declare-fun c!154092 () Bool)

(assert (=> d!283236 (= c!154092 (isEmpty!6076 (_2!6376 lt!343589)))))

(assert (=> d!283236 (validRegex!1070 lt!343588)))

(assert (=> d!283236 (= (matchR!1139 lt!343588 (_2!6376 lt!343589)) lt!343637)))

(declare-fun b!946473 () Bool)

(declare-fun res!430145 () Bool)

(assert (=> b!946473 (=> (not res!430145) (not e!613312))))

(declare-fun call!59210 () Bool)

(assert (=> b!946473 (= res!430145 (not call!59210))))

(declare-fun b!946478 () Bool)

(assert (=> b!946478 (= e!613315 e!613314)))

(declare-fun res!430149 () Bool)

(assert (=> b!946478 (=> res!430149 e!613314)))

(assert (=> b!946478 (= res!430149 call!59210)))

(declare-fun b!946479 () Bool)

(assert (=> b!946479 (= e!613312 (= (head!1727 (_2!6376 lt!343589)) (c!154006 lt!343588)))))

(declare-fun b!946480 () Bool)

(assert (=> b!946480 (= e!613313 (matchR!1139 (derivativeStep!574 lt!343588 (head!1727 (_2!6376 lt!343589))) (tail!1289 (_2!6376 lt!343589))))))

(declare-fun bm!59205 () Bool)

(assert (=> bm!59205 (= call!59210 (isEmpty!6076 (_2!6376 lt!343589)))))

(declare-fun b!946481 () Bool)

(declare-fun res!430152 () Bool)

(assert (=> b!946481 (=> (not res!430152) (not e!613312))))

(assert (=> b!946481 (= res!430152 (isEmpty!6076 (tail!1289 (_2!6376 lt!343589))))))

(declare-fun b!946482 () Bool)

(assert (=> b!946482 (= e!613316 (= lt!343637 call!59210))))

(declare-fun b!946483 () Bool)

(assert (=> b!946483 (= e!613313 (nullable!765 lt!343588))))

(declare-fun b!946484 () Bool)

(assert (=> b!946484 (= e!613316 e!613311)))

(declare-fun c!154091 () Bool)

(assert (=> b!946484 (= c!154091 ((_ is EmptyLang!2601) lt!343588))))

(declare-fun b!946485 () Bool)

(declare-fun res!430151 () Bool)

(assert (=> b!946485 (=> res!430151 e!613314)))

(assert (=> b!946485 (= res!430151 (not (isEmpty!6076 (tail!1289 (_2!6376 lt!343589)))))))

(assert (= (and d!283236 c!154092) b!946483))

(assert (= (and d!283236 (not c!154092)) b!946480))

(assert (= (and d!283236 c!154093) b!946482))

(assert (= (and d!283236 (not c!154093)) b!946484))

(assert (= (and b!946484 c!154091) b!946472))

(assert (= (and b!946484 (not c!154091)) b!946474))

(assert (= (and b!946474 (not res!430148)) b!946476))

(assert (= (and b!946476 res!430146) b!946473))

(assert (= (and b!946473 res!430145) b!946481))

(assert (= (and b!946481 res!430152) b!946479))

(assert (= (and b!946476 (not res!430150)) b!946477))

(assert (= (and b!946477 res!430147) b!946478))

(assert (= (and b!946478 (not res!430149)) b!946485))

(assert (= (and b!946485 (not res!430151)) b!946475))

(assert (= (or b!946482 b!946473 b!946478) bm!59205))

(assert (=> b!946483 m!1161309))

(declare-fun m!1161331 () Bool)

(assert (=> b!946475 m!1161331))

(assert (=> b!946480 m!1161331))

(assert (=> b!946480 m!1161331))

(declare-fun m!1161333 () Bool)

(assert (=> b!946480 m!1161333))

(declare-fun m!1161335 () Bool)

(assert (=> b!946480 m!1161335))

(assert (=> b!946480 m!1161333))

(assert (=> b!946480 m!1161335))

(declare-fun m!1161337 () Bool)

(assert (=> b!946480 m!1161337))

(declare-fun m!1161339 () Bool)

(assert (=> d!283236 m!1161339))

(assert (=> d!283236 m!1161315))

(assert (=> b!946485 m!1161335))

(assert (=> b!946485 m!1161335))

(declare-fun m!1161341 () Bool)

(assert (=> b!946485 m!1161341))

(assert (=> b!946481 m!1161335))

(assert (=> b!946481 m!1161335))

(assert (=> b!946481 m!1161341))

(assert (=> b!946479 m!1161331))

(assert (=> bm!59205 m!1161339))

(assert (=> b!946152 d!283236))

(declare-fun d!283238 () Bool)

(declare-fun lt!343638 () Int)

(assert (=> d!283238 (>= lt!343638 0)))

(declare-fun e!613321 () Int)

(assert (=> d!283238 (= lt!343638 e!613321)))

(declare-fun c!154096 () Bool)

(assert (=> d!283238 (= c!154096 ((_ is Nil!9815) s!10566))))

(assert (=> d!283238 (= (size!7899 s!10566) lt!343638)))

(declare-fun b!946492 () Bool)

(assert (=> b!946492 (= e!613321 0)))

(declare-fun b!946493 () Bool)

(assert (=> b!946493 (= e!613321 (+ 1 (size!7899 (t!100877 s!10566))))))

(assert (= (and d!283238 c!154096) b!946492))

(assert (= (and d!283238 (not c!154096)) b!946493))

(declare-fun m!1161343 () Bool)

(assert (=> b!946493 m!1161343))

(assert (=> b!946152 d!283238))

(declare-fun d!283240 () Bool)

(assert (=> d!283240 (= (matchR!1139 lt!343588 (_2!6376 lt!343589)) (matchR!1139 (removeUselessConcat!270 lt!343588) (_2!6376 lt!343589)))))

(declare-fun lt!343641 () Unit!14827)

(declare-fun choose!5887 (Regex!2601 List!9831) Unit!14827)

(assert (=> d!283240 (= lt!343641 (choose!5887 lt!343588 (_2!6376 lt!343589)))))

(assert (=> d!283240 (validRegex!1070 lt!343588)))

(assert (=> d!283240 (= (lemmaRemoveUselessConcatSound!136 lt!343588 (_2!6376 lt!343589)) lt!343641)))

(declare-fun bs!239563 () Bool)

(assert (= bs!239563 d!283240))

(assert (=> bs!239563 m!1161169))

(assert (=> bs!239563 m!1161171))

(declare-fun m!1161345 () Bool)

(assert (=> bs!239563 m!1161345))

(assert (=> bs!239563 m!1161169))

(assert (=> bs!239563 m!1161173))

(assert (=> bs!239563 m!1161315))

(assert (=> b!946152 d!283240))

(declare-fun d!283242 () Bool)

(assert (=> d!283242 (= (matchR!1139 (reg!2930 r!15766) (_1!6376 lt!343589)) (matchR!1139 (removeUselessConcat!270 (reg!2930 r!15766)) (_1!6376 lt!343589)))))

(declare-fun lt!343642 () Unit!14827)

(assert (=> d!283242 (= lt!343642 (choose!5887 (reg!2930 r!15766) (_1!6376 lt!343589)))))

(assert (=> d!283242 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283242 (= (lemmaRemoveUselessConcatSound!136 (reg!2930 r!15766) (_1!6376 lt!343589)) lt!343642)))

(declare-fun bs!239564 () Bool)

(assert (= bs!239564 d!283242))

(assert (=> bs!239564 m!1161147))

(assert (=> bs!239564 m!1161167))

(declare-fun m!1161347 () Bool)

(assert (=> bs!239564 m!1161347))

(assert (=> bs!239564 m!1161147))

(declare-fun m!1161349 () Bool)

(assert (=> bs!239564 m!1161349))

(assert (=> bs!239564 m!1161163))

(assert (=> b!946152 d!283242))

(declare-fun b!946520 () Bool)

(declare-fun e!613337 () Bool)

(declare-fun lt!343643 () Bool)

(assert (=> b!946520 (= e!613337 (not lt!343643))))

(declare-fun b!946522 () Bool)

(declare-fun res!430172 () Bool)

(declare-fun e!613336 () Bool)

(assert (=> b!946522 (=> res!430172 e!613336)))

(assert (=> b!946522 (= res!430172 (not ((_ is ElementMatch!2601) (removeUselessConcat!270 lt!343588))))))

(assert (=> b!946522 (= e!613337 e!613336)))

(declare-fun b!946523 () Bool)

(declare-fun e!613340 () Bool)

(assert (=> b!946523 (= e!613340 (not (= (head!1727 (_2!6376 lt!343589)) (c!154006 (removeUselessConcat!270 lt!343588)))))))

(declare-fun b!946524 () Bool)

(declare-fun res!430174 () Bool)

(assert (=> b!946524 (=> res!430174 e!613336)))

(declare-fun e!613338 () Bool)

(assert (=> b!946524 (= res!430174 e!613338)))

(declare-fun res!430170 () Bool)

(assert (=> b!946524 (=> (not res!430170) (not e!613338))))

(assert (=> b!946524 (= res!430170 lt!343643)))

(declare-fun b!946525 () Bool)

(declare-fun e!613341 () Bool)

(assert (=> b!946525 (= e!613336 e!613341)))

(declare-fun res!430171 () Bool)

(assert (=> b!946525 (=> (not res!430171) (not e!613341))))

(assert (=> b!946525 (= res!430171 (not lt!343643))))

(declare-fun d!283244 () Bool)

(declare-fun e!613342 () Bool)

(assert (=> d!283244 e!613342))

(declare-fun c!154105 () Bool)

(assert (=> d!283244 (= c!154105 ((_ is EmptyExpr!2601) (removeUselessConcat!270 lt!343588)))))

(declare-fun e!613339 () Bool)

(assert (=> d!283244 (= lt!343643 e!613339)))

(declare-fun c!154104 () Bool)

(assert (=> d!283244 (= c!154104 (isEmpty!6076 (_2!6376 lt!343589)))))

(assert (=> d!283244 (validRegex!1070 (removeUselessConcat!270 lt!343588))))

(assert (=> d!283244 (= (matchR!1139 (removeUselessConcat!270 lt!343588) (_2!6376 lt!343589)) lt!343643)))

(declare-fun b!946521 () Bool)

(declare-fun res!430169 () Bool)

(assert (=> b!946521 (=> (not res!430169) (not e!613338))))

(declare-fun call!59215 () Bool)

(assert (=> b!946521 (= res!430169 (not call!59215))))

(declare-fun b!946526 () Bool)

(assert (=> b!946526 (= e!613341 e!613340)))

(declare-fun res!430173 () Bool)

(assert (=> b!946526 (=> res!430173 e!613340)))

(assert (=> b!946526 (= res!430173 call!59215)))

(declare-fun b!946527 () Bool)

(assert (=> b!946527 (= e!613338 (= (head!1727 (_2!6376 lt!343589)) (c!154006 (removeUselessConcat!270 lt!343588))))))

(declare-fun b!946528 () Bool)

(assert (=> b!946528 (= e!613339 (matchR!1139 (derivativeStep!574 (removeUselessConcat!270 lt!343588) (head!1727 (_2!6376 lt!343589))) (tail!1289 (_2!6376 lt!343589))))))

(declare-fun bm!59210 () Bool)

(assert (=> bm!59210 (= call!59215 (isEmpty!6076 (_2!6376 lt!343589)))))

(declare-fun b!946529 () Bool)

(declare-fun res!430176 () Bool)

(assert (=> b!946529 (=> (not res!430176) (not e!613338))))

(assert (=> b!946529 (= res!430176 (isEmpty!6076 (tail!1289 (_2!6376 lt!343589))))))

(declare-fun b!946530 () Bool)

(assert (=> b!946530 (= e!613342 (= lt!343643 call!59215))))

(declare-fun b!946531 () Bool)

(assert (=> b!946531 (= e!613339 (nullable!765 (removeUselessConcat!270 lt!343588)))))

(declare-fun b!946532 () Bool)

(assert (=> b!946532 (= e!613342 e!613337)))

(declare-fun c!154103 () Bool)

(assert (=> b!946532 (= c!154103 ((_ is EmptyLang!2601) (removeUselessConcat!270 lt!343588)))))

(declare-fun b!946533 () Bool)

(declare-fun res!430175 () Bool)

(assert (=> b!946533 (=> res!430175 e!613340)))

(assert (=> b!946533 (= res!430175 (not (isEmpty!6076 (tail!1289 (_2!6376 lt!343589)))))))

(assert (= (and d!283244 c!154104) b!946531))

(assert (= (and d!283244 (not c!154104)) b!946528))

(assert (= (and d!283244 c!154105) b!946530))

(assert (= (and d!283244 (not c!154105)) b!946532))

(assert (= (and b!946532 c!154103) b!946520))

(assert (= (and b!946532 (not c!154103)) b!946522))

(assert (= (and b!946522 (not res!430172)) b!946524))

(assert (= (and b!946524 res!430170) b!946521))

(assert (= (and b!946521 res!430169) b!946529))

(assert (= (and b!946529 res!430176) b!946527))

(assert (= (and b!946524 (not res!430174)) b!946525))

(assert (= (and b!946525 res!430171) b!946526))

(assert (= (and b!946526 (not res!430173)) b!946533))

(assert (= (and b!946533 (not res!430175)) b!946523))

(assert (= (or b!946530 b!946521 b!946526) bm!59210))

(assert (=> b!946531 m!1161169))

(declare-fun m!1161351 () Bool)

(assert (=> b!946531 m!1161351))

(assert (=> b!946523 m!1161331))

(assert (=> b!946528 m!1161331))

(assert (=> b!946528 m!1161169))

(assert (=> b!946528 m!1161331))

(declare-fun m!1161353 () Bool)

(assert (=> b!946528 m!1161353))

(assert (=> b!946528 m!1161335))

(assert (=> b!946528 m!1161353))

(assert (=> b!946528 m!1161335))

(declare-fun m!1161355 () Bool)

(assert (=> b!946528 m!1161355))

(assert (=> d!283244 m!1161339))

(assert (=> d!283244 m!1161169))

(declare-fun m!1161357 () Bool)

(assert (=> d!283244 m!1161357))

(assert (=> b!946533 m!1161335))

(assert (=> b!946533 m!1161335))

(assert (=> b!946533 m!1161341))

(assert (=> b!946529 m!1161335))

(assert (=> b!946529 m!1161335))

(assert (=> b!946529 m!1161341))

(assert (=> b!946527 m!1161331))

(assert (=> bm!59210 m!1161339))

(assert (=> b!946152 d!283244))

(declare-fun bs!239612 () Bool)

(declare-fun b!946717 () Bool)

(assert (= bs!239612 (and b!946717 b!946149)))

(declare-fun lambda!32275 () Int)

(assert (=> bs!239612 (not (= lambda!32275 lambda!32247))))

(assert (=> bs!239612 (= (= r!15766 lt!343588) (= lambda!32275 lambda!32248))))

(declare-fun bs!239613 () Bool)

(assert (= bs!239613 (and b!946717 b!946144)))

(assert (=> bs!239613 (not (= lambda!32275 lambda!32249))))

(assert (=> bs!239613 (= (and (= (reg!2930 r!15766) lt!343581) (= r!15766 lt!343577)) (= lambda!32275 lambda!32250))))

(assert (=> b!946717 true))

(assert (=> b!946717 true))

(declare-fun bs!239614 () Bool)

(declare-fun b!946708 () Bool)

(assert (= bs!239614 (and b!946708 b!946149)))

(declare-fun lambda!32276 () Int)

(assert (=> bs!239614 (not (= lambda!32276 lambda!32248))))

(declare-fun bs!239615 () Bool)

(assert (= bs!239615 (and b!946708 b!946144)))

(assert (=> bs!239615 (not (= lambda!32276 lambda!32250))))

(assert (=> bs!239614 (not (= lambda!32276 lambda!32247))))

(assert (=> bs!239615 (not (= lambda!32276 lambda!32249))))

(declare-fun bs!239616 () Bool)

(assert (= bs!239616 (and b!946708 b!946717)))

(assert (=> bs!239616 (not (= lambda!32276 lambda!32275))))

(assert (=> b!946708 true))

(assert (=> b!946708 true))

(declare-fun e!613435 () Bool)

(declare-fun call!59237 () Bool)

(assert (=> b!946708 (= e!613435 call!59237)))

(declare-fun b!946709 () Bool)

(declare-fun c!154145 () Bool)

(assert (=> b!946709 (= c!154145 ((_ is Union!2601) r!15766))))

(declare-fun e!613437 () Bool)

(declare-fun e!613433 () Bool)

(assert (=> b!946709 (= e!613437 e!613433)))

(declare-fun b!946710 () Bool)

(declare-fun c!154144 () Bool)

(assert (=> b!946710 (= c!154144 ((_ is ElementMatch!2601) r!15766))))

(declare-fun e!613432 () Bool)

(assert (=> b!946710 (= e!613432 e!613437)))

(declare-fun d!283246 () Bool)

(declare-fun c!154146 () Bool)

(assert (=> d!283246 (= c!154146 ((_ is EmptyExpr!2601) r!15766))))

(declare-fun e!613434 () Bool)

(assert (=> d!283246 (= (matchRSpec!402 r!15766 s!10566) e!613434)))

(declare-fun b!946711 () Bool)

(declare-fun e!613436 () Bool)

(assert (=> b!946711 (= e!613436 (matchRSpec!402 (regTwo!5715 r!15766) s!10566))))

(declare-fun b!946712 () Bool)

(declare-fun res!430242 () Bool)

(declare-fun e!613431 () Bool)

(assert (=> b!946712 (=> res!430242 e!613431)))

(declare-fun call!59236 () Bool)

(assert (=> b!946712 (= res!430242 call!59236)))

(assert (=> b!946712 (= e!613435 e!613431)))

(declare-fun b!946713 () Bool)

(assert (=> b!946713 (= e!613433 e!613435)))

(declare-fun c!154143 () Bool)

(assert (=> b!946713 (= c!154143 ((_ is Star!2601) r!15766))))

(declare-fun b!946714 () Bool)

(assert (=> b!946714 (= e!613433 e!613436)))

(declare-fun res!430243 () Bool)

(assert (=> b!946714 (= res!430243 (matchRSpec!402 (regOne!5715 r!15766) s!10566))))

(assert (=> b!946714 (=> res!430243 e!613436)))

(declare-fun bm!59231 () Bool)

(assert (=> bm!59231 (= call!59236 (isEmpty!6076 s!10566))))

(declare-fun bm!59232 () Bool)

(assert (=> bm!59232 (= call!59237 (Exists!352 (ite c!154143 lambda!32275 lambda!32276)))))

(declare-fun b!946715 () Bool)

(assert (=> b!946715 (= e!613434 e!613432)))

(declare-fun res!430244 () Bool)

(assert (=> b!946715 (= res!430244 (not ((_ is EmptyLang!2601) r!15766)))))

(assert (=> b!946715 (=> (not res!430244) (not e!613432))))

(declare-fun b!946716 () Bool)

(assert (=> b!946716 (= e!613437 (= s!10566 (Cons!9815 (c!154006 r!15766) Nil!9815)))))

(assert (=> b!946717 (= e!613431 call!59237)))

(declare-fun b!946718 () Bool)

(assert (=> b!946718 (= e!613434 call!59236)))

(assert (= (and d!283246 c!154146) b!946718))

(assert (= (and d!283246 (not c!154146)) b!946715))

(assert (= (and b!946715 res!430244) b!946710))

(assert (= (and b!946710 c!154144) b!946716))

(assert (= (and b!946710 (not c!154144)) b!946709))

(assert (= (and b!946709 c!154145) b!946714))

(assert (= (and b!946709 (not c!154145)) b!946713))

(assert (= (and b!946714 (not res!430243)) b!946711))

(assert (= (and b!946713 c!154143) b!946712))

(assert (= (and b!946713 (not c!154143)) b!946708))

(assert (= (and b!946712 (not res!430242)) b!946717))

(assert (= (or b!946717 b!946708) bm!59232))

(assert (= (or b!946718 b!946712) bm!59231))

(declare-fun m!1161451 () Bool)

(assert (=> b!946711 m!1161451))

(declare-fun m!1161453 () Bool)

(assert (=> b!946714 m!1161453))

(assert (=> bm!59231 m!1161125))

(declare-fun m!1161455 () Bool)

(assert (=> bm!59232 m!1161455))

(assert (=> b!946145 d!283246))

(declare-fun b!946719 () Bool)

(declare-fun e!613439 () Bool)

(declare-fun lt!343656 () Bool)

(assert (=> b!946719 (= e!613439 (not lt!343656))))

(declare-fun b!946721 () Bool)

(declare-fun res!430248 () Bool)

(declare-fun e!613438 () Bool)

(assert (=> b!946721 (=> res!430248 e!613438)))

(assert (=> b!946721 (= res!430248 (not ((_ is ElementMatch!2601) r!15766)))))

(assert (=> b!946721 (= e!613439 e!613438)))

(declare-fun b!946722 () Bool)

(declare-fun e!613442 () Bool)

(assert (=> b!946722 (= e!613442 (not (= (head!1727 s!10566) (c!154006 r!15766))))))

(declare-fun b!946723 () Bool)

(declare-fun res!430250 () Bool)

(assert (=> b!946723 (=> res!430250 e!613438)))

(declare-fun e!613440 () Bool)

(assert (=> b!946723 (= res!430250 e!613440)))

(declare-fun res!430246 () Bool)

(assert (=> b!946723 (=> (not res!430246) (not e!613440))))

(assert (=> b!946723 (= res!430246 lt!343656)))

(declare-fun b!946724 () Bool)

(declare-fun e!613443 () Bool)

(assert (=> b!946724 (= e!613438 e!613443)))

(declare-fun res!430247 () Bool)

(assert (=> b!946724 (=> (not res!430247) (not e!613443))))

(assert (=> b!946724 (= res!430247 (not lt!343656))))

(declare-fun d!283284 () Bool)

(declare-fun e!613444 () Bool)

(assert (=> d!283284 e!613444))

(declare-fun c!154149 () Bool)

(assert (=> d!283284 (= c!154149 ((_ is EmptyExpr!2601) r!15766))))

(declare-fun e!613441 () Bool)

(assert (=> d!283284 (= lt!343656 e!613441)))

(declare-fun c!154148 () Bool)

(assert (=> d!283284 (= c!154148 (isEmpty!6076 s!10566))))

(assert (=> d!283284 (validRegex!1070 r!15766)))

(assert (=> d!283284 (= (matchR!1139 r!15766 s!10566) lt!343656)))

(declare-fun b!946720 () Bool)

(declare-fun res!430245 () Bool)

(assert (=> b!946720 (=> (not res!430245) (not e!613440))))

(declare-fun call!59238 () Bool)

(assert (=> b!946720 (= res!430245 (not call!59238))))

(declare-fun b!946725 () Bool)

(assert (=> b!946725 (= e!613443 e!613442)))

(declare-fun res!430249 () Bool)

(assert (=> b!946725 (=> res!430249 e!613442)))

(assert (=> b!946725 (= res!430249 call!59238)))

(declare-fun b!946726 () Bool)

(assert (=> b!946726 (= e!613440 (= (head!1727 s!10566) (c!154006 r!15766)))))

(declare-fun b!946727 () Bool)

(assert (=> b!946727 (= e!613441 (matchR!1139 (derivativeStep!574 r!15766 (head!1727 s!10566)) (tail!1289 s!10566)))))

(declare-fun bm!59233 () Bool)

(assert (=> bm!59233 (= call!59238 (isEmpty!6076 s!10566))))

(declare-fun b!946728 () Bool)

(declare-fun res!430252 () Bool)

(assert (=> b!946728 (=> (not res!430252) (not e!613440))))

(assert (=> b!946728 (= res!430252 (isEmpty!6076 (tail!1289 s!10566)))))

(declare-fun b!946729 () Bool)

(assert (=> b!946729 (= e!613444 (= lt!343656 call!59238))))

(declare-fun b!946730 () Bool)

(assert (=> b!946730 (= e!613441 (nullable!765 r!15766))))

(declare-fun b!946731 () Bool)

(assert (=> b!946731 (= e!613444 e!613439)))

(declare-fun c!154147 () Bool)

(assert (=> b!946731 (= c!154147 ((_ is EmptyLang!2601) r!15766))))

(declare-fun b!946732 () Bool)

(declare-fun res!430251 () Bool)

(assert (=> b!946732 (=> res!430251 e!613442)))

(assert (=> b!946732 (= res!430251 (not (isEmpty!6076 (tail!1289 s!10566))))))

(assert (= (and d!283284 c!154148) b!946730))

(assert (= (and d!283284 (not c!154148)) b!946727))

(assert (= (and d!283284 c!154149) b!946729))

(assert (= (and d!283284 (not c!154149)) b!946731))

(assert (= (and b!946731 c!154147) b!946719))

(assert (= (and b!946731 (not c!154147)) b!946721))

(assert (= (and b!946721 (not res!430248)) b!946723))

(assert (= (and b!946723 res!430246) b!946720))

(assert (= (and b!946720 res!430245) b!946728))

(assert (= (and b!946728 res!430252) b!946726))

(assert (= (and b!946723 (not res!430250)) b!946724))

(assert (= (and b!946724 res!430247) b!946725))

(assert (= (and b!946725 (not res!430249)) b!946732))

(assert (= (and b!946732 (not res!430251)) b!946722))

(assert (= (or b!946729 b!946720 b!946725) bm!59233))

(declare-fun m!1161457 () Bool)

(assert (=> b!946730 m!1161457))

(declare-fun m!1161459 () Bool)

(assert (=> b!946722 m!1161459))

(assert (=> b!946727 m!1161459))

(assert (=> b!946727 m!1161459))

(declare-fun m!1161461 () Bool)

(assert (=> b!946727 m!1161461))

(declare-fun m!1161463 () Bool)

(assert (=> b!946727 m!1161463))

(assert (=> b!946727 m!1161461))

(assert (=> b!946727 m!1161463))

(declare-fun m!1161465 () Bool)

(assert (=> b!946727 m!1161465))

(assert (=> d!283284 m!1161125))

(assert (=> d!283284 m!1161109))

(assert (=> b!946732 m!1161463))

(assert (=> b!946732 m!1161463))

(declare-fun m!1161467 () Bool)

(assert (=> b!946732 m!1161467))

(assert (=> b!946728 m!1161463))

(assert (=> b!946728 m!1161463))

(assert (=> b!946728 m!1161467))

(assert (=> b!946726 m!1161459))

(assert (=> bm!59233 m!1161125))

(assert (=> b!946145 d!283284))

(declare-fun d!283286 () Bool)

(assert (=> d!283286 (= (matchR!1139 r!15766 s!10566) (matchRSpec!402 r!15766 s!10566))))

(declare-fun lt!343657 () Unit!14827)

(assert (=> d!283286 (= lt!343657 (choose!5886 r!15766 s!10566))))

(assert (=> d!283286 (validRegex!1070 r!15766)))

(assert (=> d!283286 (= (mainMatchTheorem!402 r!15766 s!10566) lt!343657)))

(declare-fun bs!239617 () Bool)

(assert (= bs!239617 d!283286))

(assert (=> bs!239617 m!1161113))

(assert (=> bs!239617 m!1161111))

(declare-fun m!1161469 () Bool)

(assert (=> bs!239617 m!1161469))

(assert (=> bs!239617 m!1161109))

(assert (=> b!946145 d!283286))

(declare-fun b!946733 () Bool)

(declare-fun e!613446 () Bool)

(declare-fun lt!343658 () Bool)

(assert (=> b!946733 (= e!613446 (not lt!343658))))

(declare-fun b!946735 () Bool)

(declare-fun res!430256 () Bool)

(declare-fun e!613445 () Bool)

(assert (=> b!946735 (=> res!430256 e!613445)))

(assert (=> b!946735 (= res!430256 (not ((_ is ElementMatch!2601) lt!343577)))))

(assert (=> b!946735 (= e!613446 e!613445)))

(declare-fun b!946736 () Bool)

(declare-fun e!613449 () Bool)

(assert (=> b!946736 (= e!613449 (not (= (head!1727 (_2!6376 lt!343589)) (c!154006 lt!343577))))))

(declare-fun b!946737 () Bool)

(declare-fun res!430258 () Bool)

(assert (=> b!946737 (=> res!430258 e!613445)))

(declare-fun e!613447 () Bool)

(assert (=> b!946737 (= res!430258 e!613447)))

(declare-fun res!430254 () Bool)

(assert (=> b!946737 (=> (not res!430254) (not e!613447))))

(assert (=> b!946737 (= res!430254 lt!343658)))

(declare-fun b!946738 () Bool)

(declare-fun e!613450 () Bool)

(assert (=> b!946738 (= e!613445 e!613450)))

(declare-fun res!430255 () Bool)

(assert (=> b!946738 (=> (not res!430255) (not e!613450))))

(assert (=> b!946738 (= res!430255 (not lt!343658))))

(declare-fun d!283288 () Bool)

(declare-fun e!613451 () Bool)

(assert (=> d!283288 e!613451))

(declare-fun c!154152 () Bool)

(assert (=> d!283288 (= c!154152 ((_ is EmptyExpr!2601) lt!343577))))

(declare-fun e!613448 () Bool)

(assert (=> d!283288 (= lt!343658 e!613448)))

(declare-fun c!154151 () Bool)

(assert (=> d!283288 (= c!154151 (isEmpty!6076 (_2!6376 lt!343589)))))

(assert (=> d!283288 (validRegex!1070 lt!343577)))

(assert (=> d!283288 (= (matchR!1139 lt!343577 (_2!6376 lt!343589)) lt!343658)))

(declare-fun b!946734 () Bool)

(declare-fun res!430253 () Bool)

(assert (=> b!946734 (=> (not res!430253) (not e!613447))))

(declare-fun call!59239 () Bool)

(assert (=> b!946734 (= res!430253 (not call!59239))))

(declare-fun b!946739 () Bool)

(assert (=> b!946739 (= e!613450 e!613449)))

(declare-fun res!430257 () Bool)

(assert (=> b!946739 (=> res!430257 e!613449)))

(assert (=> b!946739 (= res!430257 call!59239)))

(declare-fun b!946740 () Bool)

(assert (=> b!946740 (= e!613447 (= (head!1727 (_2!6376 lt!343589)) (c!154006 lt!343577)))))

(declare-fun b!946741 () Bool)

(assert (=> b!946741 (= e!613448 (matchR!1139 (derivativeStep!574 lt!343577 (head!1727 (_2!6376 lt!343589))) (tail!1289 (_2!6376 lt!343589))))))

(declare-fun bm!59234 () Bool)

(assert (=> bm!59234 (= call!59239 (isEmpty!6076 (_2!6376 lt!343589)))))

(declare-fun b!946742 () Bool)

(declare-fun res!430260 () Bool)

(assert (=> b!946742 (=> (not res!430260) (not e!613447))))

(assert (=> b!946742 (= res!430260 (isEmpty!6076 (tail!1289 (_2!6376 lt!343589))))))

(declare-fun b!946743 () Bool)

(assert (=> b!946743 (= e!613451 (= lt!343658 call!59239))))

(declare-fun b!946744 () Bool)

(assert (=> b!946744 (= e!613448 (nullable!765 lt!343577))))

(declare-fun b!946745 () Bool)

(assert (=> b!946745 (= e!613451 e!613446)))

(declare-fun c!154150 () Bool)

(assert (=> b!946745 (= c!154150 ((_ is EmptyLang!2601) lt!343577))))

(declare-fun b!946746 () Bool)

(declare-fun res!430259 () Bool)

(assert (=> b!946746 (=> res!430259 e!613449)))

(assert (=> b!946746 (= res!430259 (not (isEmpty!6076 (tail!1289 (_2!6376 lt!343589)))))))

(assert (= (and d!283288 c!154151) b!946744))

(assert (= (and d!283288 (not c!154151)) b!946741))

(assert (= (and d!283288 c!154152) b!946743))

(assert (= (and d!283288 (not c!154152)) b!946745))

(assert (= (and b!946745 c!154150) b!946733))

(assert (= (and b!946745 (not c!154150)) b!946735))

(assert (= (and b!946735 (not res!430256)) b!946737))

(assert (= (and b!946737 res!430254) b!946734))

(assert (= (and b!946734 res!430253) b!946742))

(assert (= (and b!946742 res!430260) b!946740))

(assert (= (and b!946737 (not res!430258)) b!946738))

(assert (= (and b!946738 res!430255) b!946739))

(assert (= (and b!946739 (not res!430257)) b!946746))

(assert (= (and b!946746 (not res!430259)) b!946736))

(assert (= (or b!946743 b!946734 b!946739) bm!59234))

(declare-fun m!1161471 () Bool)

(assert (=> b!946744 m!1161471))

(assert (=> b!946736 m!1161331))

(assert (=> b!946741 m!1161331))

(assert (=> b!946741 m!1161331))

(declare-fun m!1161473 () Bool)

(assert (=> b!946741 m!1161473))

(assert (=> b!946741 m!1161335))

(assert (=> b!946741 m!1161473))

(assert (=> b!946741 m!1161335))

(declare-fun m!1161475 () Bool)

(assert (=> b!946741 m!1161475))

(assert (=> d!283288 m!1161339))

(declare-fun m!1161477 () Bool)

(assert (=> d!283288 m!1161477))

(assert (=> b!946746 m!1161335))

(assert (=> b!946746 m!1161335))

(assert (=> b!946746 m!1161341))

(assert (=> b!946742 m!1161335))

(assert (=> b!946742 m!1161335))

(assert (=> b!946742 m!1161341))

(assert (=> b!946740 m!1161331))

(assert (=> bm!59234 m!1161339))

(assert (=> b!946155 d!283288))

(declare-fun d!283290 () Bool)

(declare-fun choose!5888 (Int) Bool)

(assert (=> d!283290 (= (Exists!352 lambda!32247) (choose!5888 lambda!32247))))

(declare-fun bs!239618 () Bool)

(assert (= bs!239618 d!283290))

(declare-fun m!1161479 () Bool)

(assert (=> bs!239618 m!1161479))

(assert (=> b!946149 d!283290))

(declare-fun bs!239619 () Bool)

(declare-fun d!283292 () Bool)

(assert (= bs!239619 (and d!283292 b!946149)))

(declare-fun lambda!32279 () Int)

(assert (=> bs!239619 (not (= lambda!32279 lambda!32248))))

(declare-fun bs!239620 () Bool)

(assert (= bs!239620 (and d!283292 b!946144)))

(assert (=> bs!239620 (not (= lambda!32279 lambda!32250))))

(assert (=> bs!239619 (= lambda!32279 lambda!32247)))

(assert (=> bs!239620 (= (and (= (reg!2930 r!15766) lt!343581) (= lt!343588 lt!343577)) (= lambda!32279 lambda!32249))))

(declare-fun bs!239621 () Bool)

(assert (= bs!239621 (and d!283292 b!946708)))

(assert (=> bs!239621 (not (= lambda!32279 lambda!32276))))

(declare-fun bs!239622 () Bool)

(assert (= bs!239622 (and d!283292 b!946717)))

(assert (=> bs!239622 (not (= lambda!32279 lambda!32275))))

(assert (=> d!283292 true))

(assert (=> d!283292 true))

(assert (=> d!283292 true))

(assert (=> d!283292 (= (isDefined!1834 (findConcatSeparation!298 (reg!2930 r!15766) lt!343588 Nil!9815 s!10566 s!10566)) (Exists!352 lambda!32279))))

(declare-fun lt!343661 () Unit!14827)

(declare-fun choose!5889 (Regex!2601 Regex!2601 List!9831) Unit!14827)

(assert (=> d!283292 (= lt!343661 (choose!5889 (reg!2930 r!15766) lt!343588 s!10566))))

(assert (=> d!283292 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283292 (= (lemmaFindConcatSeparationEquivalentToExists!298 (reg!2930 r!15766) lt!343588 s!10566) lt!343661)))

(declare-fun bs!239623 () Bool)

(assert (= bs!239623 d!283292))

(assert (=> bs!239623 m!1161151))

(declare-fun m!1161481 () Bool)

(assert (=> bs!239623 m!1161481))

(declare-fun m!1161483 () Bool)

(assert (=> bs!239623 m!1161483))

(assert (=> bs!239623 m!1161163))

(assert (=> bs!239623 m!1161151))

(assert (=> bs!239623 m!1161153))

(assert (=> b!946149 d!283292))

(declare-fun d!283294 () Bool)

(assert (=> d!283294 (= (Exists!352 lambda!32248) (choose!5888 lambda!32248))))

(declare-fun bs!239624 () Bool)

(assert (= bs!239624 d!283294))

(declare-fun m!1161485 () Bool)

(assert (=> bs!239624 m!1161485))

(assert (=> b!946149 d!283294))

(declare-fun bs!239625 () Bool)

(declare-fun d!283296 () Bool)

(assert (= bs!239625 (and d!283296 b!946149)))

(declare-fun lambda!32284 () Int)

(assert (=> bs!239625 (not (= lambda!32284 lambda!32248))))

(declare-fun bs!239626 () Bool)

(assert (= bs!239626 (and d!283296 b!946144)))

(assert (=> bs!239626 (not (= lambda!32284 lambda!32250))))

(assert (=> bs!239625 (= (= (Star!2601 (reg!2930 r!15766)) lt!343588) (= lambda!32284 lambda!32247))))

(declare-fun bs!239627 () Bool)

(assert (= bs!239627 (and d!283296 d!283292)))

(assert (=> bs!239627 (= (= (Star!2601 (reg!2930 r!15766)) lt!343588) (= lambda!32284 lambda!32279))))

(assert (=> bs!239626 (= (and (= (reg!2930 r!15766) lt!343581) (= (Star!2601 (reg!2930 r!15766)) lt!343577)) (= lambda!32284 lambda!32249))))

(declare-fun bs!239628 () Bool)

(assert (= bs!239628 (and d!283296 b!946708)))

(assert (=> bs!239628 (not (= lambda!32284 lambda!32276))))

(declare-fun bs!239629 () Bool)

(assert (= bs!239629 (and d!283296 b!946717)))

(assert (=> bs!239629 (not (= lambda!32284 lambda!32275))))

(assert (=> d!283296 true))

(assert (=> d!283296 true))

(declare-fun lambda!32285 () Int)

(assert (=> bs!239625 (= (= (Star!2601 (reg!2930 r!15766)) lt!343588) (= lambda!32285 lambda!32248))))

(assert (=> bs!239626 (= (and (= (reg!2930 r!15766) lt!343581) (= (Star!2601 (reg!2930 r!15766)) lt!343577)) (= lambda!32285 lambda!32250))))

(declare-fun bs!239630 () Bool)

(assert (= bs!239630 d!283296))

(assert (=> bs!239630 (not (= lambda!32285 lambda!32284))))

(assert (=> bs!239625 (not (= lambda!32285 lambda!32247))))

(assert (=> bs!239627 (not (= lambda!32285 lambda!32279))))

(assert (=> bs!239626 (not (= lambda!32285 lambda!32249))))

(assert (=> bs!239628 (not (= lambda!32285 lambda!32276))))

(assert (=> bs!239629 (= (= (Star!2601 (reg!2930 r!15766)) r!15766) (= lambda!32285 lambda!32275))))

(assert (=> d!283296 true))

(assert (=> d!283296 true))

(assert (=> d!283296 (= (Exists!352 lambda!32284) (Exists!352 lambda!32285))))

(declare-fun lt!343664 () Unit!14827)

(declare-fun choose!5890 (Regex!2601 List!9831) Unit!14827)

(assert (=> d!283296 (= lt!343664 (choose!5890 (reg!2930 r!15766) s!10566))))

(assert (=> d!283296 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283296 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!96 (reg!2930 r!15766) s!10566) lt!343664)))

(declare-fun m!1161487 () Bool)

(assert (=> bs!239630 m!1161487))

(declare-fun m!1161489 () Bool)

(assert (=> bs!239630 m!1161489))

(declare-fun m!1161491 () Bool)

(assert (=> bs!239630 m!1161491))

(assert (=> bs!239630 m!1161163))

(assert (=> b!946149 d!283296))

(declare-fun b!946761 () Bool)

(declare-fun e!613460 () Regex!2601)

(declare-fun e!613461 () Regex!2601)

(assert (=> b!946761 (= e!613460 e!613461)))

(declare-fun c!154155 () Bool)

(assert (=> b!946761 (= c!154155 ((_ is Union!2601) (reg!2930 r!15766)))))

(declare-fun bm!59235 () Bool)

(declare-fun call!59243 () Regex!2601)

(declare-fun c!154156 () Bool)

(assert (=> bm!59235 (= call!59243 (removeUselessConcat!270 (ite c!154156 (regOne!5714 (reg!2930 r!15766)) (ite c!154155 (regTwo!5715 (reg!2930 r!15766)) (reg!2930 (reg!2930 r!15766))))))))

(declare-fun b!946762 () Bool)

(declare-fun e!613459 () Regex!2601)

(declare-fun call!59241 () Regex!2601)

(assert (=> b!946762 (= e!613459 (Star!2601 call!59241))))

(declare-fun b!946763 () Bool)

(declare-fun call!59240 () Regex!2601)

(assert (=> b!946763 (= e!613461 (Union!2601 call!59240 call!59241))))

(declare-fun b!946764 () Bool)

(assert (=> b!946764 (= e!613460 (Concat!4434 call!59243 call!59240))))

(declare-fun bm!59236 () Bool)

(declare-fun call!59242 () Regex!2601)

(declare-fun call!59244 () Regex!2601)

(assert (=> bm!59236 (= call!59242 call!59244)))

(declare-fun b!946766 () Bool)

(declare-fun e!613462 () Bool)

(declare-fun lt!343665 () Regex!2601)

(assert (=> b!946766 (= e!613462 (= (nullable!765 lt!343665) (nullable!765 (reg!2930 r!15766))))))

(declare-fun bm!59237 () Bool)

(assert (=> bm!59237 (= call!59240 call!59242)))

(declare-fun b!946767 () Bool)

(declare-fun e!613458 () Regex!2601)

(declare-fun e!613463 () Regex!2601)

(assert (=> b!946767 (= e!613458 e!613463)))

(declare-fun c!154157 () Bool)

(assert (=> b!946767 (= c!154157 (and ((_ is Concat!4434) (reg!2930 r!15766)) ((_ is EmptyExpr!2601) (regTwo!5714 (reg!2930 r!15766)))))))

(declare-fun b!946768 () Bool)

(assert (=> b!946768 (= e!613459 (reg!2930 r!15766))))

(declare-fun b!946769 () Bool)

(assert (=> b!946769 (= e!613458 call!59244)))

(declare-fun bm!59238 () Bool)

(declare-fun c!154153 () Bool)

(assert (=> bm!59238 (= call!59244 (removeUselessConcat!270 (ite c!154153 (regTwo!5714 (reg!2930 r!15766)) (ite c!154157 (regOne!5714 (reg!2930 r!15766)) (ite c!154156 (regTwo!5714 (reg!2930 r!15766)) (regOne!5715 (reg!2930 r!15766)))))))))

(declare-fun b!946765 () Bool)

(declare-fun c!154154 () Bool)

(assert (=> b!946765 (= c!154154 ((_ is Star!2601) (reg!2930 r!15766)))))

(assert (=> b!946765 (= e!613461 e!613459)))

(declare-fun d!283298 () Bool)

(assert (=> d!283298 e!613462))

(declare-fun res!430275 () Bool)

(assert (=> d!283298 (=> (not res!430275) (not e!613462))))

(assert (=> d!283298 (= res!430275 (validRegex!1070 lt!343665))))

(assert (=> d!283298 (= lt!343665 e!613458)))

(assert (=> d!283298 (= c!154153 (and ((_ is Concat!4434) (reg!2930 r!15766)) ((_ is EmptyExpr!2601) (regOne!5714 (reg!2930 r!15766)))))))

(assert (=> d!283298 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283298 (= (removeUselessConcat!270 (reg!2930 r!15766)) lt!343665)))

(declare-fun b!946770 () Bool)

(assert (=> b!946770 (= c!154156 ((_ is Concat!4434) (reg!2930 r!15766)))))

(assert (=> b!946770 (= e!613463 e!613460)))

(declare-fun b!946771 () Bool)

(assert (=> b!946771 (= e!613463 call!59242)))

(declare-fun bm!59239 () Bool)

(assert (=> bm!59239 (= call!59241 call!59243)))

(assert (= (and d!283298 c!154153) b!946769))

(assert (= (and d!283298 (not c!154153)) b!946767))

(assert (= (and b!946767 c!154157) b!946771))

(assert (= (and b!946767 (not c!154157)) b!946770))

(assert (= (and b!946770 c!154156) b!946764))

(assert (= (and b!946770 (not c!154156)) b!946761))

(assert (= (and b!946761 c!154155) b!946763))

(assert (= (and b!946761 (not c!154155)) b!946765))

(assert (= (and b!946765 c!154154) b!946762))

(assert (= (and b!946765 (not c!154154)) b!946768))

(assert (= (or b!946763 b!946762) bm!59239))

(assert (= (or b!946764 b!946763) bm!59237))

(assert (= (or b!946764 bm!59239) bm!59235))

(assert (= (or b!946771 bm!59237) bm!59236))

(assert (= (or b!946769 bm!59236) bm!59238))

(assert (= (and d!283298 res!430275) b!946766))

(declare-fun m!1161493 () Bool)

(assert (=> bm!59235 m!1161493))

(declare-fun m!1161495 () Bool)

(assert (=> b!946766 m!1161495))

(assert (=> b!946766 m!1161189))

(declare-fun m!1161497 () Bool)

(assert (=> bm!59238 m!1161497))

(declare-fun m!1161499 () Bool)

(assert (=> d!283298 m!1161499))

(assert (=> d!283298 m!1161163))

(assert (=> b!946149 d!283298))

(declare-fun b!946790 () Bool)

(declare-fun res!430290 () Bool)

(declare-fun e!613477 () Bool)

(assert (=> b!946790 (=> (not res!430290) (not e!613477))))

(declare-fun lt!343673 () Option!2192)

(assert (=> b!946790 (= res!430290 (matchR!1139 (reg!2930 r!15766) (_1!6376 (get!3283 lt!343673))))))

(declare-fun b!946791 () Bool)

(declare-fun ++!2619 (List!9831 List!9831) List!9831)

(assert (=> b!946791 (= e!613477 (= (++!2619 (_1!6376 (get!3283 lt!343673)) (_2!6376 (get!3283 lt!343673))) s!10566))))

(declare-fun d!283300 () Bool)

(declare-fun e!613475 () Bool)

(assert (=> d!283300 e!613475))

(declare-fun res!430289 () Bool)

(assert (=> d!283300 (=> res!430289 e!613475)))

(assert (=> d!283300 (= res!430289 e!613477)))

(declare-fun res!430287 () Bool)

(assert (=> d!283300 (=> (not res!430287) (not e!613477))))

(assert (=> d!283300 (= res!430287 (isDefined!1834 lt!343673))))

(declare-fun e!613476 () Option!2192)

(assert (=> d!283300 (= lt!343673 e!613476)))

(declare-fun c!154162 () Bool)

(declare-fun e!613478 () Bool)

(assert (=> d!283300 (= c!154162 e!613478)))

(declare-fun res!430286 () Bool)

(assert (=> d!283300 (=> (not res!430286) (not e!613478))))

(assert (=> d!283300 (= res!430286 (matchR!1139 (reg!2930 r!15766) Nil!9815))))

(assert (=> d!283300 (validRegex!1070 (reg!2930 r!15766))))

(assert (=> d!283300 (= (findConcatSeparation!298 (reg!2930 r!15766) lt!343588 Nil!9815 s!10566 s!10566) lt!343673)))

(declare-fun b!946792 () Bool)

(declare-fun res!430288 () Bool)

(assert (=> b!946792 (=> (not res!430288) (not e!613477))))

(assert (=> b!946792 (= res!430288 (matchR!1139 lt!343588 (_2!6376 (get!3283 lt!343673))))))

(declare-fun b!946793 () Bool)

(declare-fun e!613474 () Option!2192)

(assert (=> b!946793 (= e!613476 e!613474)))

(declare-fun c!154163 () Bool)

(assert (=> b!946793 (= c!154163 ((_ is Nil!9815) s!10566))))

(declare-fun b!946794 () Bool)

(assert (=> b!946794 (= e!613478 (matchR!1139 lt!343588 s!10566))))

(declare-fun b!946795 () Bool)

(assert (=> b!946795 (= e!613476 (Some!2191 (tuple2!11101 Nil!9815 s!10566)))))

(declare-fun b!946796 () Bool)

(assert (=> b!946796 (= e!613474 None!2191)))

(declare-fun b!946797 () Bool)

(declare-fun lt!343674 () Unit!14827)

(declare-fun lt!343672 () Unit!14827)

(assert (=> b!946797 (= lt!343674 lt!343672)))

(assert (=> b!946797 (= (++!2619 (++!2619 Nil!9815 (Cons!9815 (h!15216 s!10566) Nil!9815)) (t!100877 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!230 (List!9831 C!5772 List!9831 List!9831) Unit!14827)

(assert (=> b!946797 (= lt!343672 (lemmaMoveElementToOtherListKeepsConcatEq!230 Nil!9815 (h!15216 s!10566) (t!100877 s!10566) s!10566))))

(assert (=> b!946797 (= e!613474 (findConcatSeparation!298 (reg!2930 r!15766) lt!343588 (++!2619 Nil!9815 (Cons!9815 (h!15216 s!10566) Nil!9815)) (t!100877 s!10566) s!10566))))

(declare-fun b!946798 () Bool)

(assert (=> b!946798 (= e!613475 (not (isDefined!1834 lt!343673)))))

(assert (= (and d!283300 res!430286) b!946794))

(assert (= (and d!283300 c!154162) b!946795))

(assert (= (and d!283300 (not c!154162)) b!946793))

(assert (= (and b!946793 c!154163) b!946796))

(assert (= (and b!946793 (not c!154163)) b!946797))

(assert (= (and d!283300 res!430287) b!946790))

(assert (= (and b!946790 res!430290) b!946792))

(assert (= (and b!946792 res!430288) b!946791))

(assert (= (and d!283300 (not res!430289)) b!946798))

(declare-fun m!1161501 () Bool)

(assert (=> b!946792 m!1161501))

(declare-fun m!1161503 () Bool)

(assert (=> b!946792 m!1161503))

(declare-fun m!1161505 () Bool)

(assert (=> b!946798 m!1161505))

(assert (=> b!946790 m!1161501))

(declare-fun m!1161507 () Bool)

(assert (=> b!946790 m!1161507))

(assert (=> d!283300 m!1161505))

(declare-fun m!1161509 () Bool)

(assert (=> d!283300 m!1161509))

(assert (=> d!283300 m!1161163))

(declare-fun m!1161511 () Bool)

(assert (=> b!946794 m!1161511))

(declare-fun m!1161513 () Bool)

(assert (=> b!946797 m!1161513))

(assert (=> b!946797 m!1161513))

(declare-fun m!1161515 () Bool)

(assert (=> b!946797 m!1161515))

(declare-fun m!1161517 () Bool)

(assert (=> b!946797 m!1161517))

(assert (=> b!946797 m!1161513))

(declare-fun m!1161519 () Bool)

(assert (=> b!946797 m!1161519))

(assert (=> b!946791 m!1161501))

(declare-fun m!1161521 () Bool)

(assert (=> b!946791 m!1161521))

(assert (=> b!946149 d!283300))

(declare-fun b!946799 () Bool)

(declare-fun e!613480 () Bool)

(declare-fun lt!343675 () Bool)

(assert (=> b!946799 (= e!613480 (not lt!343675))))

(declare-fun b!946801 () Bool)

(declare-fun res!430294 () Bool)

(declare-fun e!613479 () Bool)

(assert (=> b!946801 (=> res!430294 e!613479)))

(assert (=> b!946801 (= res!430294 (not ((_ is ElementMatch!2601) lt!343577)))))

(assert (=> b!946801 (= e!613480 e!613479)))

(declare-fun b!946802 () Bool)

(declare-fun e!613483 () Bool)

(assert (=> b!946802 (= e!613483 (not (= (head!1727 s!10566) (c!154006 lt!343577))))))

(declare-fun b!946803 () Bool)

(declare-fun res!430296 () Bool)

(assert (=> b!946803 (=> res!430296 e!613479)))

(declare-fun e!613481 () Bool)

(assert (=> b!946803 (= res!430296 e!613481)))

(declare-fun res!430292 () Bool)

(assert (=> b!946803 (=> (not res!430292) (not e!613481))))

(assert (=> b!946803 (= res!430292 lt!343675)))

(declare-fun b!946804 () Bool)

(declare-fun e!613484 () Bool)

(assert (=> b!946804 (= e!613479 e!613484)))

(declare-fun res!430293 () Bool)

(assert (=> b!946804 (=> (not res!430293) (not e!613484))))

(assert (=> b!946804 (= res!430293 (not lt!343675))))

(declare-fun d!283302 () Bool)

(declare-fun e!613485 () Bool)

(assert (=> d!283302 e!613485))

(declare-fun c!154166 () Bool)

(assert (=> d!283302 (= c!154166 ((_ is EmptyExpr!2601) lt!343577))))

(declare-fun e!613482 () Bool)

(assert (=> d!283302 (= lt!343675 e!613482)))

(declare-fun c!154165 () Bool)

(assert (=> d!283302 (= c!154165 (isEmpty!6076 s!10566))))

(assert (=> d!283302 (validRegex!1070 lt!343577)))

(assert (=> d!283302 (= (matchR!1139 lt!343577 s!10566) lt!343675)))

(declare-fun b!946800 () Bool)

(declare-fun res!430291 () Bool)

(assert (=> b!946800 (=> (not res!430291) (not e!613481))))

(declare-fun call!59245 () Bool)

(assert (=> b!946800 (= res!430291 (not call!59245))))

(declare-fun b!946805 () Bool)

(assert (=> b!946805 (= e!613484 e!613483)))

(declare-fun res!430295 () Bool)

(assert (=> b!946805 (=> res!430295 e!613483)))

(assert (=> b!946805 (= res!430295 call!59245)))

(declare-fun b!946806 () Bool)

(assert (=> b!946806 (= e!613481 (= (head!1727 s!10566) (c!154006 lt!343577)))))

(declare-fun b!946807 () Bool)

(assert (=> b!946807 (= e!613482 (matchR!1139 (derivativeStep!574 lt!343577 (head!1727 s!10566)) (tail!1289 s!10566)))))

(declare-fun bm!59240 () Bool)

(assert (=> bm!59240 (= call!59245 (isEmpty!6076 s!10566))))

(declare-fun b!946808 () Bool)

(declare-fun res!430298 () Bool)

(assert (=> b!946808 (=> (not res!430298) (not e!613481))))

(assert (=> b!946808 (= res!430298 (isEmpty!6076 (tail!1289 s!10566)))))

(declare-fun b!946809 () Bool)

(assert (=> b!946809 (= e!613485 (= lt!343675 call!59245))))

(declare-fun b!946810 () Bool)

(assert (=> b!946810 (= e!613482 (nullable!765 lt!343577))))

(declare-fun b!946811 () Bool)

(assert (=> b!946811 (= e!613485 e!613480)))

(declare-fun c!154164 () Bool)

(assert (=> b!946811 (= c!154164 ((_ is EmptyLang!2601) lt!343577))))

(declare-fun b!946812 () Bool)

(declare-fun res!430297 () Bool)

(assert (=> b!946812 (=> res!430297 e!613483)))

(assert (=> b!946812 (= res!430297 (not (isEmpty!6076 (tail!1289 s!10566))))))

(assert (= (and d!283302 c!154165) b!946810))

(assert (= (and d!283302 (not c!154165)) b!946807))

(assert (= (and d!283302 c!154166) b!946809))

(assert (= (and d!283302 (not c!154166)) b!946811))

(assert (= (and b!946811 c!154164) b!946799))

(assert (= (and b!946811 (not c!154164)) b!946801))

(assert (= (and b!946801 (not res!430294)) b!946803))

(assert (= (and b!946803 res!430292) b!946800))

(assert (= (and b!946800 res!430291) b!946808))

(assert (= (and b!946808 res!430298) b!946806))

(assert (= (and b!946803 (not res!430296)) b!946804))

(assert (= (and b!946804 res!430293) b!946805))

(assert (= (and b!946805 (not res!430295)) b!946812))

(assert (= (and b!946812 (not res!430297)) b!946802))

(assert (= (or b!946809 b!946800 b!946805) bm!59240))

(assert (=> b!946810 m!1161471))

(assert (=> b!946802 m!1161459))

(assert (=> b!946807 m!1161459))

(assert (=> b!946807 m!1161459))

(declare-fun m!1161523 () Bool)

(assert (=> b!946807 m!1161523))

(assert (=> b!946807 m!1161463))

(assert (=> b!946807 m!1161523))

(assert (=> b!946807 m!1161463))

(declare-fun m!1161525 () Bool)

(assert (=> b!946807 m!1161525))

(assert (=> d!283302 m!1161125))

(assert (=> d!283302 m!1161477))

(assert (=> b!946812 m!1161463))

(assert (=> b!946812 m!1161463))

(assert (=> b!946812 m!1161467))

(assert (=> b!946808 m!1161463))

(assert (=> b!946808 m!1161463))

(assert (=> b!946808 m!1161467))

(assert (=> b!946806 m!1161459))

(assert (=> bm!59240 m!1161125))

(assert (=> b!946149 d!283302))

(declare-fun d!283304 () Bool)

(declare-fun isEmpty!6078 (Option!2192) Bool)

(assert (=> d!283304 (= (isDefined!1834 (findConcatSeparation!298 (reg!2930 r!15766) lt!343588 Nil!9815 s!10566 s!10566)) (not (isEmpty!6078 (findConcatSeparation!298 (reg!2930 r!15766) lt!343588 Nil!9815 s!10566 s!10566))))))

(declare-fun bs!239631 () Bool)

(assert (= bs!239631 d!283304))

(assert (=> bs!239631 m!1161151))

(declare-fun m!1161527 () Bool)

(assert (=> bs!239631 m!1161527))

(assert (=> b!946149 d!283304))

(declare-fun d!283306 () Bool)

(assert (=> d!283306 (= (Exists!352 lambda!32250) (choose!5888 lambda!32250))))

(declare-fun bs!239632 () Bool)

(assert (= bs!239632 d!283306))

(declare-fun m!1161529 () Bool)

(assert (=> bs!239632 m!1161529))

(assert (=> b!946144 d!283306))

(declare-fun d!283308 () Bool)

(assert (=> d!283308 (= (isEmpty!6076 s!10566) ((_ is Nil!9815) s!10566))))

(assert (=> b!946144 d!283308))

(declare-fun bs!239633 () Bool)

(declare-fun b!946822 () Bool)

(assert (= bs!239633 (and b!946822 b!946149)))

(declare-fun lambda!32286 () Int)

(assert (=> bs!239633 (= (and (= (reg!2930 lt!343577) (reg!2930 r!15766)) (= lt!343577 lt!343588)) (= lambda!32286 lambda!32248))))

(declare-fun bs!239634 () Bool)

(assert (= bs!239634 (and b!946822 b!946144)))

(assert (=> bs!239634 (= (= (reg!2930 lt!343577) lt!343581) (= lambda!32286 lambda!32250))))

(declare-fun bs!239635 () Bool)

(assert (= bs!239635 (and b!946822 d!283296)))

(assert (=> bs!239635 (not (= lambda!32286 lambda!32284))))

(assert (=> bs!239633 (not (= lambda!32286 lambda!32247))))

(declare-fun bs!239636 () Bool)

(assert (= bs!239636 (and b!946822 d!283292)))

(assert (=> bs!239636 (not (= lambda!32286 lambda!32279))))

(assert (=> bs!239634 (not (= lambda!32286 lambda!32249))))

(declare-fun bs!239637 () Bool)

(assert (= bs!239637 (and b!946822 b!946708)))

(assert (=> bs!239637 (not (= lambda!32286 lambda!32276))))

(declare-fun bs!239638 () Bool)

(assert (= bs!239638 (and b!946822 b!946717)))

(assert (=> bs!239638 (= (and (= (reg!2930 lt!343577) (reg!2930 r!15766)) (= lt!343577 r!15766)) (= lambda!32286 lambda!32275))))

(assert (=> bs!239635 (= (and (= (reg!2930 lt!343577) (reg!2930 r!15766)) (= lt!343577 (Star!2601 (reg!2930 r!15766)))) (= lambda!32286 lambda!32285))))

(assert (=> b!946822 true))

(assert (=> b!946822 true))

(declare-fun bs!239639 () Bool)

(declare-fun b!946813 () Bool)

(assert (= bs!239639 (and b!946813 b!946149)))

(declare-fun lambda!32287 () Int)

(assert (=> bs!239639 (not (= lambda!32287 lambda!32248))))

(declare-fun bs!239640 () Bool)

(assert (= bs!239640 (and b!946813 b!946144)))

(assert (=> bs!239640 (not (= lambda!32287 lambda!32250))))

(declare-fun bs!239641 () Bool)

(assert (= bs!239641 (and b!946813 d!283296)))

(assert (=> bs!239641 (not (= lambda!32287 lambda!32284))))

(assert (=> bs!239639 (not (= lambda!32287 lambda!32247))))

(declare-fun bs!239642 () Bool)

(assert (= bs!239642 (and b!946813 d!283292)))

(assert (=> bs!239642 (not (= lambda!32287 lambda!32279))))

(assert (=> bs!239640 (not (= lambda!32287 lambda!32249))))

(declare-fun bs!239643 () Bool)

(assert (= bs!239643 (and b!946813 b!946708)))

(assert (=> bs!239643 (= (and (= (regOne!5714 lt!343577) (regOne!5714 r!15766)) (= (regTwo!5714 lt!343577) (regTwo!5714 r!15766))) (= lambda!32287 lambda!32276))))

(declare-fun bs!239644 () Bool)

(assert (= bs!239644 (and b!946813 b!946717)))

(assert (=> bs!239644 (not (= lambda!32287 lambda!32275))))

(declare-fun bs!239645 () Bool)

(assert (= bs!239645 (and b!946813 b!946822)))

(assert (=> bs!239645 (not (= lambda!32287 lambda!32286))))

(assert (=> bs!239641 (not (= lambda!32287 lambda!32285))))

(assert (=> b!946813 true))

(assert (=> b!946813 true))

(declare-fun e!613490 () Bool)

(declare-fun call!59247 () Bool)

(assert (=> b!946813 (= e!613490 call!59247)))

(declare-fun b!946814 () Bool)

(declare-fun c!154169 () Bool)

(assert (=> b!946814 (= c!154169 ((_ is Union!2601) lt!343577))))

(declare-fun e!613492 () Bool)

(declare-fun e!613488 () Bool)

(assert (=> b!946814 (= e!613492 e!613488)))

(declare-fun b!946815 () Bool)

(declare-fun c!154168 () Bool)

(assert (=> b!946815 (= c!154168 ((_ is ElementMatch!2601) lt!343577))))

(declare-fun e!613487 () Bool)

(assert (=> b!946815 (= e!613487 e!613492)))

(declare-fun d!283310 () Bool)

(declare-fun c!154170 () Bool)

(assert (=> d!283310 (= c!154170 ((_ is EmptyExpr!2601) lt!343577))))

(declare-fun e!613489 () Bool)

(assert (=> d!283310 (= (matchRSpec!402 lt!343577 s!10566) e!613489)))

(declare-fun b!946816 () Bool)

(declare-fun e!613491 () Bool)

(assert (=> b!946816 (= e!613491 (matchRSpec!402 (regTwo!5715 lt!343577) s!10566))))

(declare-fun b!946817 () Bool)

(declare-fun res!430299 () Bool)

(declare-fun e!613486 () Bool)

(assert (=> b!946817 (=> res!430299 e!613486)))

(declare-fun call!59246 () Bool)

(assert (=> b!946817 (= res!430299 call!59246)))

(assert (=> b!946817 (= e!613490 e!613486)))

(declare-fun b!946818 () Bool)

(assert (=> b!946818 (= e!613488 e!613490)))

(declare-fun c!154167 () Bool)

(assert (=> b!946818 (= c!154167 ((_ is Star!2601) lt!343577))))

(declare-fun b!946819 () Bool)

(assert (=> b!946819 (= e!613488 e!613491)))

(declare-fun res!430300 () Bool)

(assert (=> b!946819 (= res!430300 (matchRSpec!402 (regOne!5715 lt!343577) s!10566))))

(assert (=> b!946819 (=> res!430300 e!613491)))

(declare-fun bm!59241 () Bool)

(assert (=> bm!59241 (= call!59246 (isEmpty!6076 s!10566))))

(declare-fun bm!59242 () Bool)

(assert (=> bm!59242 (= call!59247 (Exists!352 (ite c!154167 lambda!32286 lambda!32287)))))

(declare-fun b!946820 () Bool)

(assert (=> b!946820 (= e!613489 e!613487)))

(declare-fun res!430301 () Bool)

(assert (=> b!946820 (= res!430301 (not ((_ is EmptyLang!2601) lt!343577)))))

(assert (=> b!946820 (=> (not res!430301) (not e!613487))))

(declare-fun b!946821 () Bool)

(assert (=> b!946821 (= e!613492 (= s!10566 (Cons!9815 (c!154006 lt!343577) Nil!9815)))))

(assert (=> b!946822 (= e!613486 call!59247)))

(declare-fun b!946823 () Bool)

(assert (=> b!946823 (= e!613489 call!59246)))

(assert (= (and d!283310 c!154170) b!946823))

(assert (= (and d!283310 (not c!154170)) b!946820))

(assert (= (and b!946820 res!430301) b!946815))

(assert (= (and b!946815 c!154168) b!946821))

(assert (= (and b!946815 (not c!154168)) b!946814))

(assert (= (and b!946814 c!154169) b!946819))

(assert (= (and b!946814 (not c!154169)) b!946818))

(assert (= (and b!946819 (not res!430300)) b!946816))

(assert (= (and b!946818 c!154167) b!946817))

(assert (= (and b!946818 (not c!154167)) b!946813))

(assert (= (and b!946817 (not res!430299)) b!946822))

(assert (= (or b!946822 b!946813) bm!59242))

(assert (= (or b!946823 b!946817) bm!59241))

(declare-fun m!1161531 () Bool)

(assert (=> b!946816 m!1161531))

(declare-fun m!1161533 () Bool)

(assert (=> b!946819 m!1161533))

(assert (=> bm!59241 m!1161125))

(declare-fun m!1161535 () Bool)

(assert (=> bm!59242 m!1161535))

(assert (=> b!946144 d!283310))

(declare-fun d!283312 () Bool)

(assert (=> d!283312 (= (isDefined!1834 lt!343578) (not (isEmpty!6078 lt!343578)))))

(declare-fun bs!239646 () Bool)

(assert (= bs!239646 d!283312))

(declare-fun m!1161537 () Bool)

(assert (=> bs!239646 m!1161537))

(assert (=> b!946144 d!283312))

(declare-fun bs!239647 () Bool)

(declare-fun d!283314 () Bool)

(assert (= bs!239647 (and d!283314 b!946149)))

(declare-fun lambda!32288 () Int)

(assert (=> bs!239647 (not (= lambda!32288 lambda!32248))))

(declare-fun bs!239648 () Bool)

(assert (= bs!239648 (and d!283314 b!946144)))

(assert (=> bs!239648 (not (= lambda!32288 lambda!32250))))

(declare-fun bs!239649 () Bool)

(assert (= bs!239649 (and d!283314 d!283296)))

(assert (=> bs!239649 (= (and (= lt!343581 (reg!2930 r!15766)) (= (Star!2601 lt!343581) (Star!2601 (reg!2930 r!15766)))) (= lambda!32288 lambda!32284))))

(declare-fun bs!239650 () Bool)

(assert (= bs!239650 (and d!283314 b!946813)))

(assert (=> bs!239650 (not (= lambda!32288 lambda!32287))))

(assert (=> bs!239647 (= (and (= lt!343581 (reg!2930 r!15766)) (= (Star!2601 lt!343581) lt!343588)) (= lambda!32288 lambda!32247))))

(declare-fun bs!239651 () Bool)

(assert (= bs!239651 (and d!283314 d!283292)))

(assert (=> bs!239651 (= (and (= lt!343581 (reg!2930 r!15766)) (= (Star!2601 lt!343581) lt!343588)) (= lambda!32288 lambda!32279))))

(assert (=> bs!239648 (= (= (Star!2601 lt!343581) lt!343577) (= lambda!32288 lambda!32249))))

(declare-fun bs!239652 () Bool)

(assert (= bs!239652 (and d!283314 b!946708)))

(assert (=> bs!239652 (not (= lambda!32288 lambda!32276))))

(declare-fun bs!239653 () Bool)

(assert (= bs!239653 (and d!283314 b!946717)))

(assert (=> bs!239653 (not (= lambda!32288 lambda!32275))))

(declare-fun bs!239654 () Bool)

(assert (= bs!239654 (and d!283314 b!946822)))

(assert (=> bs!239654 (not (= lambda!32288 lambda!32286))))

(assert (=> bs!239649 (not (= lambda!32288 lambda!32285))))

(assert (=> d!283314 true))

(assert (=> d!283314 true))

(declare-fun lambda!32289 () Int)

(assert (=> bs!239647 (= (and (= lt!343581 (reg!2930 r!15766)) (= (Star!2601 lt!343581) lt!343588)) (= lambda!32289 lambda!32248))))

(assert (=> bs!239648 (= (= (Star!2601 lt!343581) lt!343577) (= lambda!32289 lambda!32250))))

(assert (=> bs!239649 (not (= lambda!32289 lambda!32284))))

(assert (=> bs!239650 (not (= lambda!32289 lambda!32287))))

(assert (=> bs!239647 (not (= lambda!32289 lambda!32247))))

(declare-fun bs!239655 () Bool)

(assert (= bs!239655 d!283314))

(assert (=> bs!239655 (not (= lambda!32289 lambda!32288))))

(assert (=> bs!239651 (not (= lambda!32289 lambda!32279))))

(assert (=> bs!239648 (not (= lambda!32289 lambda!32249))))

(assert (=> bs!239652 (not (= lambda!32289 lambda!32276))))

(assert (=> bs!239653 (= (and (= lt!343581 (reg!2930 r!15766)) (= (Star!2601 lt!343581) r!15766)) (= lambda!32289 lambda!32275))))

(assert (=> bs!239654 (= (and (= lt!343581 (reg!2930 lt!343577)) (= (Star!2601 lt!343581) lt!343577)) (= lambda!32289 lambda!32286))))

(assert (=> bs!239649 (= (and (= lt!343581 (reg!2930 r!15766)) (= (Star!2601 lt!343581) (Star!2601 (reg!2930 r!15766)))) (= lambda!32289 lambda!32285))))

(assert (=> d!283314 true))

(assert (=> d!283314 true))

(assert (=> d!283314 (= (Exists!352 lambda!32288) (Exists!352 lambda!32289))))

(declare-fun lt!343676 () Unit!14827)

(assert (=> d!283314 (= lt!343676 (choose!5890 lt!343581 s!10566))))

(assert (=> d!283314 (validRegex!1070 lt!343581)))

(assert (=> d!283314 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!96 lt!343581 s!10566) lt!343676)))

(declare-fun m!1161539 () Bool)

(assert (=> bs!239655 m!1161539))

(declare-fun m!1161541 () Bool)

(assert (=> bs!239655 m!1161541))

(declare-fun m!1161543 () Bool)

(assert (=> bs!239655 m!1161543))

(assert (=> bs!239655 m!1161257))

(assert (=> b!946144 d!283314))

(declare-fun d!283316 () Bool)

(assert (=> d!283316 (= (Exists!352 lambda!32249) (choose!5888 lambda!32249))))

(declare-fun bs!239656 () Bool)

(assert (= bs!239656 d!283316))

(declare-fun m!1161545 () Bool)

(assert (=> bs!239656 m!1161545))

(assert (=> b!946144 d!283316))

(declare-fun b!946824 () Bool)

(declare-fun res!430306 () Bool)

(declare-fun e!613496 () Bool)

(assert (=> b!946824 (=> (not res!430306) (not e!613496))))

(declare-fun lt!343678 () Option!2192)

(assert (=> b!946824 (= res!430306 (matchR!1139 lt!343581 (_1!6376 (get!3283 lt!343678))))))

(declare-fun b!946825 () Bool)

(assert (=> b!946825 (= e!613496 (= (++!2619 (_1!6376 (get!3283 lt!343678)) (_2!6376 (get!3283 lt!343678))) s!10566))))

(declare-fun d!283318 () Bool)

(declare-fun e!613494 () Bool)

(assert (=> d!283318 e!613494))

(declare-fun res!430305 () Bool)

(assert (=> d!283318 (=> res!430305 e!613494)))

(assert (=> d!283318 (= res!430305 e!613496)))

(declare-fun res!430303 () Bool)

(assert (=> d!283318 (=> (not res!430303) (not e!613496))))

(assert (=> d!283318 (= res!430303 (isDefined!1834 lt!343678))))

(declare-fun e!613495 () Option!2192)

(assert (=> d!283318 (= lt!343678 e!613495)))

(declare-fun c!154171 () Bool)

(declare-fun e!613497 () Bool)

(assert (=> d!283318 (= c!154171 e!613497)))

(declare-fun res!430302 () Bool)

(assert (=> d!283318 (=> (not res!430302) (not e!613497))))

(assert (=> d!283318 (= res!430302 (matchR!1139 lt!343581 Nil!9815))))

(assert (=> d!283318 (validRegex!1070 lt!343581)))

(assert (=> d!283318 (= (findConcatSeparation!298 lt!343581 lt!343577 Nil!9815 s!10566 s!10566) lt!343678)))

(declare-fun b!946826 () Bool)

(declare-fun res!430304 () Bool)

(assert (=> b!946826 (=> (not res!430304) (not e!613496))))

(assert (=> b!946826 (= res!430304 (matchR!1139 lt!343577 (_2!6376 (get!3283 lt!343678))))))

(declare-fun b!946827 () Bool)

(declare-fun e!613493 () Option!2192)

(assert (=> b!946827 (= e!613495 e!613493)))

(declare-fun c!154172 () Bool)

(assert (=> b!946827 (= c!154172 ((_ is Nil!9815) s!10566))))

(declare-fun b!946828 () Bool)

(assert (=> b!946828 (= e!613497 (matchR!1139 lt!343577 s!10566))))

(declare-fun b!946829 () Bool)

(assert (=> b!946829 (= e!613495 (Some!2191 (tuple2!11101 Nil!9815 s!10566)))))

(declare-fun b!946830 () Bool)

(assert (=> b!946830 (= e!613493 None!2191)))

(declare-fun b!946831 () Bool)

(declare-fun lt!343679 () Unit!14827)

(declare-fun lt!343677 () Unit!14827)

(assert (=> b!946831 (= lt!343679 lt!343677)))

(assert (=> b!946831 (= (++!2619 (++!2619 Nil!9815 (Cons!9815 (h!15216 s!10566) Nil!9815)) (t!100877 s!10566)) s!10566)))

(assert (=> b!946831 (= lt!343677 (lemmaMoveElementToOtherListKeepsConcatEq!230 Nil!9815 (h!15216 s!10566) (t!100877 s!10566) s!10566))))

(assert (=> b!946831 (= e!613493 (findConcatSeparation!298 lt!343581 lt!343577 (++!2619 Nil!9815 (Cons!9815 (h!15216 s!10566) Nil!9815)) (t!100877 s!10566) s!10566))))

(declare-fun b!946832 () Bool)

(assert (=> b!946832 (= e!613494 (not (isDefined!1834 lt!343678)))))

(assert (= (and d!283318 res!430302) b!946828))

(assert (= (and d!283318 c!154171) b!946829))

(assert (= (and d!283318 (not c!154171)) b!946827))

(assert (= (and b!946827 c!154172) b!946830))

(assert (= (and b!946827 (not c!154172)) b!946831))

(assert (= (and d!283318 res!430303) b!946824))

(assert (= (and b!946824 res!430306) b!946826))

(assert (= (and b!946826 res!430304) b!946825))

(assert (= (and d!283318 (not res!430305)) b!946832))

(declare-fun m!1161547 () Bool)

(assert (=> b!946826 m!1161547))

(declare-fun m!1161549 () Bool)

(assert (=> b!946826 m!1161549))

(declare-fun m!1161551 () Bool)

(assert (=> b!946832 m!1161551))

(assert (=> b!946824 m!1161547))

(declare-fun m!1161553 () Bool)

(assert (=> b!946824 m!1161553))

(assert (=> d!283318 m!1161551))

(declare-fun m!1161555 () Bool)

(assert (=> d!283318 m!1161555))

(assert (=> d!283318 m!1161257))

(assert (=> b!946828 m!1161149))

(assert (=> b!946831 m!1161513))

(assert (=> b!946831 m!1161513))

(assert (=> b!946831 m!1161515))

(assert (=> b!946831 m!1161517))

(assert (=> b!946831 m!1161513))

(declare-fun m!1161557 () Bool)

(assert (=> b!946831 m!1161557))

(assert (=> b!946825 m!1161547))

(declare-fun m!1161559 () Bool)

(assert (=> b!946825 m!1161559))

(assert (=> b!946144 d!283318))

(declare-fun bs!239657 () Bool)

(declare-fun d!283320 () Bool)

(assert (= bs!239657 (and d!283320 b!946149)))

(declare-fun lambda!32290 () Int)

(assert (=> bs!239657 (not (= lambda!32290 lambda!32248))))

(declare-fun bs!239658 () Bool)

(assert (= bs!239658 (and d!283320 b!946144)))

(assert (=> bs!239658 (not (= lambda!32290 lambda!32250))))

(declare-fun bs!239659 () Bool)

(assert (= bs!239659 (and d!283320 d!283296)))

(assert (=> bs!239659 (= (and (= lt!343581 (reg!2930 r!15766)) (= lt!343577 (Star!2601 (reg!2930 r!15766)))) (= lambda!32290 lambda!32284))))

(declare-fun bs!239660 () Bool)

(assert (= bs!239660 (and d!283320 b!946813)))

(assert (=> bs!239660 (not (= lambda!32290 lambda!32287))))

(declare-fun bs!239661 () Bool)

(assert (= bs!239661 (and d!283320 d!283314)))

(assert (=> bs!239661 (not (= lambda!32290 lambda!32289))))

(assert (=> bs!239657 (= (and (= lt!343581 (reg!2930 r!15766)) (= lt!343577 lt!343588)) (= lambda!32290 lambda!32247))))

(assert (=> bs!239661 (= (= lt!343577 (Star!2601 lt!343581)) (= lambda!32290 lambda!32288))))

(declare-fun bs!239662 () Bool)

(assert (= bs!239662 (and d!283320 d!283292)))

(assert (=> bs!239662 (= (and (= lt!343581 (reg!2930 r!15766)) (= lt!343577 lt!343588)) (= lambda!32290 lambda!32279))))

(assert (=> bs!239658 (= lambda!32290 lambda!32249)))

(declare-fun bs!239663 () Bool)

(assert (= bs!239663 (and d!283320 b!946708)))

(assert (=> bs!239663 (not (= lambda!32290 lambda!32276))))

(declare-fun bs!239664 () Bool)

(assert (= bs!239664 (and d!283320 b!946717)))

(assert (=> bs!239664 (not (= lambda!32290 lambda!32275))))

(declare-fun bs!239665 () Bool)

(assert (= bs!239665 (and d!283320 b!946822)))

(assert (=> bs!239665 (not (= lambda!32290 lambda!32286))))

(assert (=> bs!239659 (not (= lambda!32290 lambda!32285))))

(assert (=> d!283320 true))

(assert (=> d!283320 true))

(assert (=> d!283320 true))

(assert (=> d!283320 (= (isDefined!1834 (findConcatSeparation!298 lt!343581 lt!343577 Nil!9815 s!10566 s!10566)) (Exists!352 lambda!32290))))

(declare-fun lt!343680 () Unit!14827)

(assert (=> d!283320 (= lt!343680 (choose!5889 lt!343581 lt!343577 s!10566))))

(assert (=> d!283320 (validRegex!1070 lt!343581)))

(assert (=> d!283320 (= (lemmaFindConcatSeparationEquivalentToExists!298 lt!343581 lt!343577 s!10566) lt!343680)))

(declare-fun bs!239666 () Bool)

(assert (= bs!239666 d!283320))

(assert (=> bs!239666 m!1161123))

(declare-fun m!1161561 () Bool)

(assert (=> bs!239666 m!1161561))

(declare-fun m!1161563 () Bool)

(assert (=> bs!239666 m!1161563))

(assert (=> bs!239666 m!1161257))

(assert (=> bs!239666 m!1161123))

(declare-fun m!1161565 () Bool)

(assert (=> bs!239666 m!1161565))

(assert (=> b!946144 d!283320))

(declare-fun d!283322 () Bool)

(assert (=> d!283322 (= (matchR!1139 lt!343577 s!10566) (matchRSpec!402 lt!343577 s!10566))))

(declare-fun lt!343681 () Unit!14827)

(assert (=> d!283322 (= lt!343681 (choose!5886 lt!343577 s!10566))))

(assert (=> d!283322 (validRegex!1070 lt!343577)))

(assert (=> d!283322 (= (mainMatchTheorem!402 lt!343577 s!10566) lt!343681)))

(declare-fun bs!239667 () Bool)

(assert (= bs!239667 d!283322))

(assert (=> bs!239667 m!1161149))

(assert (=> bs!239667 m!1161129))

(declare-fun m!1161567 () Bool)

(assert (=> bs!239667 m!1161567))

(assert (=> bs!239667 m!1161477))

(assert (=> b!946144 d!283322))

(declare-fun b!946843 () Bool)

(declare-fun e!613500 () Bool)

(assert (=> b!946843 (= e!613500 tp_is_empty!4845)))

(declare-fun b!946845 () Bool)

(declare-fun tp!292069 () Bool)

(assert (=> b!946845 (= e!613500 tp!292069)))

(declare-fun b!946844 () Bool)

(declare-fun tp!292070 () Bool)

(declare-fun tp!292073 () Bool)

(assert (=> b!946844 (= e!613500 (and tp!292070 tp!292073))))

(assert (=> b!946154 (= tp!292018 e!613500)))

(declare-fun b!946846 () Bool)

(declare-fun tp!292072 () Bool)

(declare-fun tp!292071 () Bool)

(assert (=> b!946846 (= e!613500 (and tp!292072 tp!292071))))

(assert (= (and b!946154 ((_ is ElementMatch!2601) (regOne!5715 r!15766))) b!946843))

(assert (= (and b!946154 ((_ is Concat!4434) (regOne!5715 r!15766))) b!946844))

(assert (= (and b!946154 ((_ is Star!2601) (regOne!5715 r!15766))) b!946845))

(assert (= (and b!946154 ((_ is Union!2601) (regOne!5715 r!15766))) b!946846))

(declare-fun b!946847 () Bool)

(declare-fun e!613501 () Bool)

(assert (=> b!946847 (= e!613501 tp_is_empty!4845)))

(declare-fun b!946849 () Bool)

(declare-fun tp!292074 () Bool)

(assert (=> b!946849 (= e!613501 tp!292074)))

(declare-fun b!946848 () Bool)

(declare-fun tp!292075 () Bool)

(declare-fun tp!292078 () Bool)

(assert (=> b!946848 (= e!613501 (and tp!292075 tp!292078))))

(assert (=> b!946154 (= tp!292015 e!613501)))

(declare-fun b!946850 () Bool)

(declare-fun tp!292077 () Bool)

(declare-fun tp!292076 () Bool)

(assert (=> b!946850 (= e!613501 (and tp!292077 tp!292076))))

(assert (= (and b!946154 ((_ is ElementMatch!2601) (regTwo!5715 r!15766))) b!946847))

(assert (= (and b!946154 ((_ is Concat!4434) (regTwo!5715 r!15766))) b!946848))

(assert (= (and b!946154 ((_ is Star!2601) (regTwo!5715 r!15766))) b!946849))

(assert (= (and b!946154 ((_ is Union!2601) (regTwo!5715 r!15766))) b!946850))

(declare-fun b!946851 () Bool)

(declare-fun e!613502 () Bool)

(assert (=> b!946851 (= e!613502 tp_is_empty!4845)))

(declare-fun b!946853 () Bool)

(declare-fun tp!292079 () Bool)

(assert (=> b!946853 (= e!613502 tp!292079)))

(declare-fun b!946852 () Bool)

(declare-fun tp!292080 () Bool)

(declare-fun tp!292083 () Bool)

(assert (=> b!946852 (= e!613502 (and tp!292080 tp!292083))))

(assert (=> b!946151 (= tp!292020 e!613502)))

(declare-fun b!946854 () Bool)

(declare-fun tp!292082 () Bool)

(declare-fun tp!292081 () Bool)

(assert (=> b!946854 (= e!613502 (and tp!292082 tp!292081))))

(assert (= (and b!946151 ((_ is ElementMatch!2601) (reg!2930 r!15766))) b!946851))

(assert (= (and b!946151 ((_ is Concat!4434) (reg!2930 r!15766))) b!946852))

(assert (= (and b!946151 ((_ is Star!2601) (reg!2930 r!15766))) b!946853))

(assert (= (and b!946151 ((_ is Union!2601) (reg!2930 r!15766))) b!946854))

(declare-fun b!946859 () Bool)

(declare-fun e!613505 () Bool)

(declare-fun tp!292086 () Bool)

(assert (=> b!946859 (= e!613505 (and tp_is_empty!4845 tp!292086))))

(assert (=> b!946146 (= tp!292017 e!613505)))

(assert (= (and b!946146 ((_ is Cons!9815) (t!100877 s!10566))) b!946859))

(declare-fun b!946860 () Bool)

(declare-fun e!613506 () Bool)

(assert (=> b!946860 (= e!613506 tp_is_empty!4845)))

(declare-fun b!946862 () Bool)

(declare-fun tp!292087 () Bool)

(assert (=> b!946862 (= e!613506 tp!292087)))

(declare-fun b!946861 () Bool)

(declare-fun tp!292088 () Bool)

(declare-fun tp!292091 () Bool)

(assert (=> b!946861 (= e!613506 (and tp!292088 tp!292091))))

(assert (=> b!946156 (= tp!292016 e!613506)))

(declare-fun b!946863 () Bool)

(declare-fun tp!292090 () Bool)

(declare-fun tp!292089 () Bool)

(assert (=> b!946863 (= e!613506 (and tp!292090 tp!292089))))

(assert (= (and b!946156 ((_ is ElementMatch!2601) (regOne!5714 r!15766))) b!946860))

(assert (= (and b!946156 ((_ is Concat!4434) (regOne!5714 r!15766))) b!946861))

(assert (= (and b!946156 ((_ is Star!2601) (regOne!5714 r!15766))) b!946862))

(assert (= (and b!946156 ((_ is Union!2601) (regOne!5714 r!15766))) b!946863))

(declare-fun b!946864 () Bool)

(declare-fun e!613507 () Bool)

(assert (=> b!946864 (= e!613507 tp_is_empty!4845)))

(declare-fun b!946866 () Bool)

(declare-fun tp!292092 () Bool)

(assert (=> b!946866 (= e!613507 tp!292092)))

(declare-fun b!946865 () Bool)

(declare-fun tp!292093 () Bool)

(declare-fun tp!292096 () Bool)

(assert (=> b!946865 (= e!613507 (and tp!292093 tp!292096))))

(assert (=> b!946156 (= tp!292019 e!613507)))

(declare-fun b!946867 () Bool)

(declare-fun tp!292095 () Bool)

(declare-fun tp!292094 () Bool)

(assert (=> b!946867 (= e!613507 (and tp!292095 tp!292094))))

(assert (= (and b!946156 ((_ is ElementMatch!2601) (regTwo!5714 r!15766))) b!946864))

(assert (= (and b!946156 ((_ is Concat!4434) (regTwo!5714 r!15766))) b!946865))

(assert (= (and b!946156 ((_ is Star!2601) (regTwo!5714 r!15766))) b!946866))

(assert (= (and b!946156 ((_ is Union!2601) (regTwo!5714 r!15766))) b!946867))

(check-sat (not b!946366) (not d!283316) (not b!946722) (not d!283302) (not bm!59186) (not bm!59152) (not b!946845) (not b!946483) (not b!946863) (not bm!59242) (not b!946529) (not b!946742) (not bm!59235) (not b!946846) (not b!946475) (not b!946812) (not bm!59232) (not b!946528) (not b!946825) (not b!946810) (not d!283244) (not d!283304) (not d!283216) (not b!946848) (not b!946865) (not b!946766) (not bm!59185) (not d!283292) (not d!283288) (not b!946862) (not b!946849) (not b!946527) (not d!283242) (not b!946368) (not b!946362) (not d!283322) (not b!946396) (not bm!59204) (not b!946816) (not b!946728) (not b!946364) (not b!946485) (not b!946479) (not d!283240) (not b!946741) (not d!283218) (not bm!59233) (not b!946797) (not d!283294) (not b!946481) (not b!946802) (not bm!59203) (not bm!59234) (not bm!59197) (not bm!59238) (not b!946844) (not b!946852) (not b!946726) (not b!946819) (not b!946826) (not b!946398) (not b!946744) (not b!946794) (not b!946746) (not b!946711) (not b!946480) (not bm!59210) (not b!946445) (not b!946363) tp_is_empty!4845 (not b!946828) (not b!946853) (not b!946390) (not d!283318) (not b!946850) (not b!946854) (not bm!59153) (not b!946808) (not d!283306) (not b!946714) (not d!283312) (not b!946866) (not b!946832) (not d!283290) (not b!946196) (not b!946358) (not b!946824) (not bm!59240) (not b!946861) (not d!283236) (not b!946798) (not bm!59205) (not b!946730) (not bm!59200) (not b!946394) (not b!946523) (not b!946831) (not d!283284) (not d!283320) (not b!946792) (not d!283298) (not b!946400) (not b!946859) (not bm!59231) (not b!946471) (not b!946790) (not b!946531) (not b!946740) (not b!946533) (not b!946395) (not d!283286) (not b!946791) (not d!283314) (not d!283198) (not b!946465) (not b!946493) (not b!946727) (not b!946807) (not d!283296) (not d!283214) (not bm!59241) (not b!946806) (not b!946867) (not d!283300) (not b!946732) (not b!946736))
(check-sat)
