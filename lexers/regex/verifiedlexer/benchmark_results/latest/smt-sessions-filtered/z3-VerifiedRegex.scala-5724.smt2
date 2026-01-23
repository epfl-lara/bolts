; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284412 () Bool)

(assert start!284412)

(declare-fun b!2921205 () Bool)

(declare-fun e!1842901 () Bool)

(declare-fun tp_is_empty!15561 () Bool)

(assert (=> b!2921205 (= e!1842901 tp_is_empty!15561)))

(declare-fun b!2921206 () Bool)

(declare-fun e!1842905 () Bool)

(declare-fun e!1842900 () Bool)

(assert (=> b!2921206 (= e!1842905 (not e!1842900))))

(declare-fun res!1205936 () Bool)

(assert (=> b!2921206 (=> res!1205936 e!1842900)))

(declare-fun lt!1025797 () Bool)

(declare-datatypes ((C!18184 0))(
  ( (C!18185 (val!11128 Int)) )
))
(declare-datatypes ((Regex!8999 0))(
  ( (ElementMatch!8999 (c!476681 C!18184)) (Concat!14320 (regOne!18510 Regex!8999) (regTwo!18510 Regex!8999)) (EmptyExpr!8999) (Star!8999 (reg!9328 Regex!8999)) (EmptyLang!8999) (Union!8999 (regOne!18511 Regex!8999) (regTwo!18511 Regex!8999)) )
))
(declare-fun r!17423 () Regex!8999)

(get-info :version)

(assert (=> b!2921206 (= res!1205936 (or (not lt!1025797) ((_ is Concat!14320) r!17423) (not ((_ is Union!8999) r!17423))))))

(declare-datatypes ((List!34864 0))(
  ( (Nil!34740) (Cons!34740 (h!40160 C!18184) (t!233929 List!34864)) )
))
(declare-fun s!11993 () List!34864)

(declare-fun matchRSpec!1136 (Regex!8999 List!34864) Bool)

(assert (=> b!2921206 (= lt!1025797 (matchRSpec!1136 r!17423 s!11993))))

(declare-fun matchR!3881 (Regex!8999 List!34864) Bool)

(assert (=> b!2921206 (= lt!1025797 (matchR!3881 r!17423 s!11993))))

(declare-datatypes ((Unit!48337 0))(
  ( (Unit!48338) )
))
(declare-fun lt!1025792 () Unit!48337)

(declare-fun mainMatchTheorem!1136 (Regex!8999 List!34864) Unit!48337)

(assert (=> b!2921206 (= lt!1025792 (mainMatchTheorem!1136 r!17423 s!11993))))

(declare-fun b!2921207 () Bool)

(declare-fun e!1842902 () Bool)

(declare-fun validRegex!3732 (Regex!8999) Bool)

(declare-fun simplify!30 (Regex!8999) Regex!8999)

(assert (=> b!2921207 (= e!1842902 (validRegex!3732 (simplify!30 r!17423)))))

(declare-fun lt!1025794 () Regex!8999)

(declare-fun lt!1025799 () Regex!8999)

(assert (=> b!2921207 (matchR!3881 (Union!8999 lt!1025794 lt!1025799) s!11993)))

(declare-fun lt!1025793 () Unit!48337)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!52 (Regex!8999 Regex!8999 List!34864) Unit!48337)

(assert (=> b!2921207 (= lt!1025793 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!52 lt!1025794 lt!1025799 s!11993))))

(declare-fun b!2921208 () Bool)

(declare-fun tp!937379 () Bool)

(declare-fun tp!937380 () Bool)

(assert (=> b!2921208 (= e!1842901 (and tp!937379 tp!937380))))

(declare-fun b!2921209 () Bool)

(declare-fun e!1842904 () Bool)

(assert (=> b!2921209 (= e!1842900 e!1842904)))

(declare-fun res!1205937 () Bool)

(assert (=> b!2921209 (=> res!1205937 e!1842904)))

(declare-fun lt!1025796 () Bool)

(assert (=> b!2921209 (= res!1205937 (not lt!1025796))))

(declare-fun e!1842903 () Bool)

(assert (=> b!2921209 e!1842903))

(declare-fun res!1205933 () Bool)

(assert (=> b!2921209 (=> res!1205933 e!1842903)))

(assert (=> b!2921209 (= res!1205933 lt!1025796)))

(assert (=> b!2921209 (= lt!1025796 (matchR!3881 (regOne!18511 r!17423) s!11993))))

(declare-fun lt!1025795 () Unit!48337)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!248 (Regex!8999 Regex!8999 List!34864) Unit!48337)

(assert (=> b!2921209 (= lt!1025795 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!248 (regOne!18511 r!17423) (regTwo!18511 r!17423) s!11993))))

(declare-fun b!2921210 () Bool)

(declare-fun tp!937377 () Bool)

(assert (=> b!2921210 (= e!1842901 tp!937377)))

(declare-fun b!2921211 () Bool)

(declare-fun tp!937381 () Bool)

(declare-fun tp!937376 () Bool)

(assert (=> b!2921211 (= e!1842901 (and tp!937381 tp!937376))))

(declare-fun b!2921212 () Bool)

(assert (=> b!2921212 (= e!1842904 e!1842902)))

(declare-fun res!1205938 () Bool)

(assert (=> b!2921212 (=> res!1205938 e!1842902)))

(assert (=> b!2921212 (= res!1205938 (not (validRegex!3732 lt!1025794)))))

(assert (=> b!2921212 (= lt!1025799 (simplify!30 (regTwo!18511 r!17423)))))

(assert (=> b!2921212 (matchR!3881 lt!1025794 s!11993)))

(assert (=> b!2921212 (= lt!1025794 (simplify!30 (regOne!18511 r!17423)))))

(declare-fun lt!1025798 () Unit!48337)

(declare-fun lemmaSimplifySound!28 (Regex!8999 List!34864) Unit!48337)

(assert (=> b!2921212 (= lt!1025798 (lemmaSimplifySound!28 (regOne!18511 r!17423) s!11993))))

(declare-fun b!2921213 () Bool)

(assert (=> b!2921213 (= e!1842903 (matchR!3881 (regTwo!18511 r!17423) s!11993))))

(declare-fun res!1205934 () Bool)

(assert (=> start!284412 (=> (not res!1205934) (not e!1842905))))

(assert (=> start!284412 (= res!1205934 (validRegex!3732 r!17423))))

(assert (=> start!284412 e!1842905))

(assert (=> start!284412 e!1842901))

(declare-fun e!1842899 () Bool)

(assert (=> start!284412 e!1842899))

(declare-fun b!2921214 () Bool)

(declare-fun tp!937378 () Bool)

(assert (=> b!2921214 (= e!1842899 (and tp_is_empty!15561 tp!937378))))

(declare-fun b!2921215 () Bool)

(declare-fun res!1205935 () Bool)

(assert (=> b!2921215 (=> res!1205935 e!1842902)))

(assert (=> b!2921215 (= res!1205935 (not (validRegex!3732 lt!1025799)))))

(assert (= (and start!284412 res!1205934) b!2921206))

(assert (= (and b!2921206 (not res!1205936)) b!2921209))

(assert (= (and b!2921209 (not res!1205933)) b!2921213))

(assert (= (and b!2921209 (not res!1205937)) b!2921212))

(assert (= (and b!2921212 (not res!1205938)) b!2921215))

(assert (= (and b!2921215 (not res!1205935)) b!2921207))

(assert (= (and start!284412 ((_ is ElementMatch!8999) r!17423)) b!2921205))

(assert (= (and start!284412 ((_ is Concat!14320) r!17423)) b!2921211))

(assert (= (and start!284412 ((_ is Star!8999) r!17423)) b!2921210))

(assert (= (and start!284412 ((_ is Union!8999) r!17423)) b!2921208))

(assert (= (and start!284412 ((_ is Cons!34740) s!11993)) b!2921214))

(declare-fun m!3317143 () Bool)

(assert (=> b!2921215 m!3317143))

(declare-fun m!3317145 () Bool)

(assert (=> b!2921206 m!3317145))

(declare-fun m!3317147 () Bool)

(assert (=> b!2921206 m!3317147))

(declare-fun m!3317149 () Bool)

(assert (=> b!2921206 m!3317149))

(declare-fun m!3317151 () Bool)

(assert (=> b!2921212 m!3317151))

(declare-fun m!3317153 () Bool)

(assert (=> b!2921212 m!3317153))

(declare-fun m!3317155 () Bool)

(assert (=> b!2921212 m!3317155))

(declare-fun m!3317157 () Bool)

(assert (=> b!2921212 m!3317157))

(declare-fun m!3317159 () Bool)

(assert (=> b!2921212 m!3317159))

(declare-fun m!3317161 () Bool)

(assert (=> b!2921207 m!3317161))

(assert (=> b!2921207 m!3317161))

(declare-fun m!3317163 () Bool)

(assert (=> b!2921207 m!3317163))

(declare-fun m!3317165 () Bool)

(assert (=> b!2921207 m!3317165))

(declare-fun m!3317167 () Bool)

(assert (=> b!2921207 m!3317167))

(declare-fun m!3317169 () Bool)

(assert (=> start!284412 m!3317169))

(declare-fun m!3317171 () Bool)

(assert (=> b!2921209 m!3317171))

(declare-fun m!3317173 () Bool)

(assert (=> b!2921209 m!3317173))

(declare-fun m!3317175 () Bool)

(assert (=> b!2921213 m!3317175))

(check-sat (not b!2921211) tp_is_empty!15561 (not b!2921207) (not b!2921210) (not start!284412) (not b!2921212) (not b!2921214) (not b!2921215) (not b!2921209) (not b!2921213) (not b!2921208) (not b!2921206))
(check-sat)
(get-model)

(declare-fun b!2921248 () Bool)

(declare-fun res!1205957 () Bool)

(declare-fun e!1842926 () Bool)

(assert (=> b!2921248 (=> (not res!1205957) (not e!1842926))))

(declare-fun isEmpty!18990 (List!34864) Bool)

(declare-fun tail!4719 (List!34864) List!34864)

(assert (=> b!2921248 (= res!1205957 (isEmpty!18990 (tail!4719 s!11993)))))

(declare-fun b!2921249 () Bool)

(declare-fun e!1842925 () Bool)

(declare-fun lt!1025804 () Bool)

(declare-fun call!191177 () Bool)

(assert (=> b!2921249 (= e!1842925 (= lt!1025804 call!191177))))

(declare-fun b!2921251 () Bool)

(declare-fun e!1842927 () Bool)

(assert (=> b!2921251 (= e!1842925 e!1842927)))

(declare-fun c!476691 () Bool)

(assert (=> b!2921251 (= c!476691 ((_ is EmptyLang!8999) (regTwo!18511 r!17423)))))

(declare-fun b!2921252 () Bool)

(declare-fun e!1842924 () Bool)

(declare-fun e!1842923 () Bool)

(assert (=> b!2921252 (= e!1842924 e!1842923)))

(declare-fun res!1205955 () Bool)

(assert (=> b!2921252 (=> res!1205955 e!1842923)))

(assert (=> b!2921252 (= res!1205955 call!191177)))

(declare-fun b!2921253 () Bool)

(declare-fun res!1205956 () Bool)

(declare-fun e!1842928 () Bool)

(assert (=> b!2921253 (=> res!1205956 e!1842928)))

(assert (=> b!2921253 (= res!1205956 e!1842926)))

(declare-fun res!1205962 () Bool)

(assert (=> b!2921253 (=> (not res!1205962) (not e!1842926))))

(assert (=> b!2921253 (= res!1205962 lt!1025804)))

(declare-fun b!2921254 () Bool)

(assert (=> b!2921254 (= e!1842928 e!1842924)))

(declare-fun res!1205960 () Bool)

(assert (=> b!2921254 (=> (not res!1205960) (not e!1842924))))

(assert (=> b!2921254 (= res!1205960 (not lt!1025804))))

(declare-fun b!2921255 () Bool)

(declare-fun head!6493 (List!34864) C!18184)

(assert (=> b!2921255 (= e!1842923 (not (= (head!6493 s!11993) (c!476681 (regTwo!18511 r!17423)))))))

(declare-fun b!2921256 () Bool)

(declare-fun e!1842922 () Bool)

(declare-fun nullable!2820 (Regex!8999) Bool)

(assert (=> b!2921256 (= e!1842922 (nullable!2820 (regTwo!18511 r!17423)))))

(declare-fun b!2921257 () Bool)

(declare-fun derivativeStep!2434 (Regex!8999 C!18184) Regex!8999)

(assert (=> b!2921257 (= e!1842922 (matchR!3881 (derivativeStep!2434 (regTwo!18511 r!17423) (head!6493 s!11993)) (tail!4719 s!11993)))))

(declare-fun b!2921258 () Bool)

(assert (=> b!2921258 (= e!1842927 (not lt!1025804))))

(declare-fun d!838563 () Bool)

(assert (=> d!838563 e!1842925))

(declare-fun c!476690 () Bool)

(assert (=> d!838563 (= c!476690 ((_ is EmptyExpr!8999) (regTwo!18511 r!17423)))))

(assert (=> d!838563 (= lt!1025804 e!1842922)))

(declare-fun c!476692 () Bool)

(assert (=> d!838563 (= c!476692 (isEmpty!18990 s!11993))))

(assert (=> d!838563 (validRegex!3732 (regTwo!18511 r!17423))))

(assert (=> d!838563 (= (matchR!3881 (regTwo!18511 r!17423) s!11993) lt!1025804)))

(declare-fun b!2921250 () Bool)

(declare-fun res!1205959 () Bool)

(assert (=> b!2921250 (=> (not res!1205959) (not e!1842926))))

(assert (=> b!2921250 (= res!1205959 (not call!191177))))

(declare-fun b!2921259 () Bool)

(declare-fun res!1205958 () Bool)

(assert (=> b!2921259 (=> res!1205958 e!1842923)))

(assert (=> b!2921259 (= res!1205958 (not (isEmpty!18990 (tail!4719 s!11993))))))

(declare-fun bm!191172 () Bool)

(assert (=> bm!191172 (= call!191177 (isEmpty!18990 s!11993))))

(declare-fun b!2921260 () Bool)

(declare-fun res!1205961 () Bool)

(assert (=> b!2921260 (=> res!1205961 e!1842928)))

(assert (=> b!2921260 (= res!1205961 (not ((_ is ElementMatch!8999) (regTwo!18511 r!17423))))))

(assert (=> b!2921260 (= e!1842927 e!1842928)))

(declare-fun b!2921261 () Bool)

(assert (=> b!2921261 (= e!1842926 (= (head!6493 s!11993) (c!476681 (regTwo!18511 r!17423))))))

(assert (= (and d!838563 c!476692) b!2921256))

(assert (= (and d!838563 (not c!476692)) b!2921257))

(assert (= (and d!838563 c!476690) b!2921249))

(assert (= (and d!838563 (not c!476690)) b!2921251))

(assert (= (and b!2921251 c!476691) b!2921258))

(assert (= (and b!2921251 (not c!476691)) b!2921260))

(assert (= (and b!2921260 (not res!1205961)) b!2921253))

(assert (= (and b!2921253 res!1205962) b!2921250))

(assert (= (and b!2921250 res!1205959) b!2921248))

(assert (= (and b!2921248 res!1205957) b!2921261))

(assert (= (and b!2921253 (not res!1205956)) b!2921254))

(assert (= (and b!2921254 res!1205960) b!2921252))

(assert (= (and b!2921252 (not res!1205955)) b!2921259))

(assert (= (and b!2921259 (not res!1205958)) b!2921255))

(assert (= (or b!2921249 b!2921250 b!2921252) bm!191172))

(declare-fun m!3317177 () Bool)

(assert (=> b!2921257 m!3317177))

(assert (=> b!2921257 m!3317177))

(declare-fun m!3317179 () Bool)

(assert (=> b!2921257 m!3317179))

(declare-fun m!3317181 () Bool)

(assert (=> b!2921257 m!3317181))

(assert (=> b!2921257 m!3317179))

(assert (=> b!2921257 m!3317181))

(declare-fun m!3317183 () Bool)

(assert (=> b!2921257 m!3317183))

(declare-fun m!3317185 () Bool)

(assert (=> b!2921256 m!3317185))

(declare-fun m!3317187 () Bool)

(assert (=> bm!191172 m!3317187))

(assert (=> b!2921259 m!3317181))

(assert (=> b!2921259 m!3317181))

(declare-fun m!3317189 () Bool)

(assert (=> b!2921259 m!3317189))

(assert (=> d!838563 m!3317187))

(declare-fun m!3317191 () Bool)

(assert (=> d!838563 m!3317191))

(assert (=> b!2921261 m!3317177))

(assert (=> b!2921255 m!3317177))

(assert (=> b!2921248 m!3317181))

(assert (=> b!2921248 m!3317181))

(assert (=> b!2921248 m!3317189))

(assert (=> b!2921213 d!838563))

(declare-fun d!838565 () Bool)

(declare-fun res!1205990 () Bool)

(declare-fun e!1842961 () Bool)

(assert (=> d!838565 (=> res!1205990 e!1842961)))

(assert (=> d!838565 (= res!1205990 ((_ is ElementMatch!8999) (simplify!30 r!17423)))))

(assert (=> d!838565 (= (validRegex!3732 (simplify!30 r!17423)) e!1842961)))

(declare-fun b!2921304 () Bool)

(declare-fun res!1205992 () Bool)

(declare-fun e!1842957 () Bool)

(assert (=> b!2921304 (=> (not res!1205992) (not e!1842957))))

(declare-fun call!191186 () Bool)

(assert (=> b!2921304 (= res!1205992 call!191186)))

(declare-fun e!1842958 () Bool)

(assert (=> b!2921304 (= e!1842958 e!1842957)))

(declare-fun bm!191181 () Bool)

(declare-fun call!191188 () Bool)

(declare-fun c!476701 () Bool)

(assert (=> bm!191181 (= call!191188 (validRegex!3732 (ite c!476701 (regTwo!18511 (simplify!30 r!17423)) (regOne!18510 (simplify!30 r!17423)))))))

(declare-fun b!2921305 () Bool)

(declare-fun e!1842956 () Bool)

(assert (=> b!2921305 (= e!1842956 call!191186)))

(declare-fun b!2921306 () Bool)

(declare-fun res!1205989 () Bool)

(declare-fun e!1842960 () Bool)

(assert (=> b!2921306 (=> res!1205989 e!1842960)))

(assert (=> b!2921306 (= res!1205989 (not ((_ is Concat!14320) (simplify!30 r!17423))))))

(assert (=> b!2921306 (= e!1842958 e!1842960)))

(declare-fun b!2921307 () Bool)

(assert (=> b!2921307 (= e!1842960 e!1842956)))

(declare-fun res!1205993 () Bool)

(assert (=> b!2921307 (=> (not res!1205993) (not e!1842956))))

(assert (=> b!2921307 (= res!1205993 call!191188)))

(declare-fun b!2921308 () Bool)

(declare-fun e!1842955 () Bool)

(declare-fun call!191187 () Bool)

(assert (=> b!2921308 (= e!1842955 call!191187)))

(declare-fun bm!191182 () Bool)

(declare-fun c!476702 () Bool)

(assert (=> bm!191182 (= call!191187 (validRegex!3732 (ite c!476702 (reg!9328 (simplify!30 r!17423)) (ite c!476701 (regOne!18511 (simplify!30 r!17423)) (regTwo!18510 (simplify!30 r!17423))))))))

(declare-fun b!2921309 () Bool)

(declare-fun e!1842959 () Bool)

(assert (=> b!2921309 (= e!1842961 e!1842959)))

(assert (=> b!2921309 (= c!476702 ((_ is Star!8999) (simplify!30 r!17423)))))

(declare-fun bm!191183 () Bool)

(assert (=> bm!191183 (= call!191186 call!191187)))

(declare-fun b!2921310 () Bool)

(assert (=> b!2921310 (= e!1842959 e!1842955)))

(declare-fun res!1205991 () Bool)

(assert (=> b!2921310 (= res!1205991 (not (nullable!2820 (reg!9328 (simplify!30 r!17423)))))))

(assert (=> b!2921310 (=> (not res!1205991) (not e!1842955))))

(declare-fun b!2921311 () Bool)

(assert (=> b!2921311 (= e!1842957 call!191188)))

(declare-fun b!2921312 () Bool)

(assert (=> b!2921312 (= e!1842959 e!1842958)))

(assert (=> b!2921312 (= c!476701 ((_ is Union!8999) (simplify!30 r!17423)))))

(assert (= (and d!838565 (not res!1205990)) b!2921309))

(assert (= (and b!2921309 c!476702) b!2921310))

(assert (= (and b!2921309 (not c!476702)) b!2921312))

(assert (= (and b!2921310 res!1205991) b!2921308))

(assert (= (and b!2921312 c!476701) b!2921304))

(assert (= (and b!2921312 (not c!476701)) b!2921306))

(assert (= (and b!2921304 res!1205992) b!2921311))

(assert (= (and b!2921306 (not res!1205989)) b!2921307))

(assert (= (and b!2921307 res!1205993) b!2921305))

(assert (= (or b!2921304 b!2921305) bm!191183))

(assert (= (or b!2921311 b!2921307) bm!191181))

(assert (= (or b!2921308 bm!191183) bm!191182))

(declare-fun m!3317193 () Bool)

(assert (=> bm!191181 m!3317193))

(declare-fun m!3317195 () Bool)

(assert (=> bm!191182 m!3317195))

(declare-fun m!3317197 () Bool)

(assert (=> b!2921310 m!3317197))

(assert (=> b!2921207 d!838565))

(declare-fun call!191207 () Regex!8999)

(declare-fun c!476740 () Bool)

(declare-fun bm!191201 () Bool)

(declare-fun c!476734 () Bool)

(assert (=> bm!191201 (= call!191207 (simplify!30 (ite c!476734 (reg!9328 r!17423) (ite c!476740 (regTwo!18511 r!17423) (regOne!18510 r!17423)))))))

(declare-fun b!2921411 () Bool)

(declare-fun e!1843026 () Regex!8999)

(declare-fun lt!1025825 () Regex!8999)

(assert (=> b!2921411 (= e!1843026 lt!1025825)))

(declare-fun bm!191202 () Bool)

(declare-fun call!191209 () Bool)

(declare-fun lt!1025828 () Regex!8999)

(declare-fun lt!1025826 () Regex!8999)

(declare-fun isEmptyExpr!258 (Regex!8999) Bool)

(assert (=> bm!191202 (= call!191209 (isEmptyExpr!258 (ite c!476734 lt!1025826 lt!1025828)))))

(declare-fun b!2921412 () Bool)

(declare-fun e!1843020 () Regex!8999)

(assert (=> b!2921412 (= e!1843020 lt!1025828)))

(declare-fun b!2921413 () Bool)

(declare-fun e!1843023 () Regex!8999)

(declare-fun e!1843024 () Regex!8999)

(assert (=> b!2921413 (= e!1843023 e!1843024)))

(declare-fun call!191210 () Regex!8999)

(assert (=> b!2921413 (= lt!1025825 call!191210)))

(declare-fun lt!1025824 () Regex!8999)

(declare-fun call!191212 () Regex!8999)

(assert (=> b!2921413 (= lt!1025824 call!191212)))

(declare-fun c!476739 () Bool)

(declare-fun call!191211 () Bool)

(assert (=> b!2921413 (= c!476739 call!191211)))

(declare-fun b!2921414 () Bool)

(declare-fun e!1843017 () Bool)

(assert (=> b!2921414 (= e!1843017 call!191209)))

(declare-fun b!2921415 () Bool)

(declare-fun e!1843018 () Regex!8999)

(assert (=> b!2921415 (= e!1843018 EmptyLang!8999)))

(declare-fun b!2921416 () Bool)

(assert (=> b!2921416 (= e!1843024 lt!1025824)))

(declare-fun b!2921417 () Bool)

(declare-fun e!1843030 () Regex!8999)

(assert (=> b!2921417 (= e!1843030 e!1843020)))

(declare-fun c!476741 () Bool)

(declare-fun lt!1025827 () Regex!8999)

(assert (=> b!2921417 (= c!476741 (isEmptyExpr!258 lt!1025827))))

(declare-fun b!2921418 () Bool)

(assert (=> b!2921418 (= e!1843023 e!1843018)))

(assert (=> b!2921418 (= lt!1025828 call!191212)))

(assert (=> b!2921418 (= lt!1025827 call!191210)))

(declare-fun res!1206031 () Bool)

(assert (=> b!2921418 (= res!1206031 call!191211)))

(declare-fun e!1843029 () Bool)

(assert (=> b!2921418 (=> res!1206031 e!1843029)))

(declare-fun c!476737 () Bool)

(assert (=> b!2921418 (= c!476737 e!1843029)))

(declare-fun d!838567 () Bool)

(declare-fun e!1843025 () Bool)

(assert (=> d!838567 e!1843025))

(declare-fun res!1206032 () Bool)

(assert (=> d!838567 (=> (not res!1206032) (not e!1843025))))

(declare-fun lt!1025823 () Regex!8999)

(assert (=> d!838567 (= res!1206032 (validRegex!3732 lt!1025823))))

(declare-fun e!1843028 () Regex!8999)

(assert (=> d!838567 (= lt!1025823 e!1843028)))

(declare-fun c!476735 () Bool)

(assert (=> d!838567 (= c!476735 ((_ is EmptyLang!8999) r!17423))))

(assert (=> d!838567 (validRegex!3732 r!17423)))

(assert (=> d!838567 (= (simplify!30 r!17423) lt!1025823)))

(declare-fun b!2921419 () Bool)

(assert (=> b!2921419 (= e!1843025 (= (nullable!2820 lt!1025823) (nullable!2820 r!17423)))))

(declare-fun b!2921420 () Bool)

(assert (=> b!2921420 (= c!476740 ((_ is Union!8999) r!17423))))

(declare-fun e!1843019 () Regex!8999)

(assert (=> b!2921420 (= e!1843019 e!1843023)))

(declare-fun b!2921421 () Bool)

(declare-fun e!1843021 () Regex!8999)

(assert (=> b!2921421 (= e!1843028 e!1843021)))

(declare-fun c!476742 () Bool)

(assert (=> b!2921421 (= c!476742 ((_ is ElementMatch!8999) r!17423))))

(declare-fun b!2921422 () Bool)

(assert (=> b!2921422 (= e!1843021 r!17423)))

(declare-fun b!2921423 () Bool)

(declare-fun c!476736 () Bool)

(assert (=> b!2921423 (= c!476736 call!191209)))

(assert (=> b!2921423 (= e!1843018 e!1843030)))

(declare-fun bm!191203 () Bool)

(assert (=> bm!191203 (= call!191212 call!191207)))

(declare-fun b!2921424 () Bool)

(assert (=> b!2921424 (= e!1843026 (Union!8999 lt!1025825 lt!1025824))))

(declare-fun call!191206 () Bool)

(declare-fun bm!191204 () Bool)

(declare-fun isEmptyLang!173 (Regex!8999) Bool)

(assert (=> bm!191204 (= call!191206 (isEmptyLang!173 (ite c!476740 lt!1025824 lt!1025827)))))

(declare-fun b!2921425 () Bool)

(declare-fun e!1843022 () Regex!8999)

(assert (=> b!2921425 (= e!1843022 (Star!8999 lt!1025826))))

(declare-fun b!2921426 () Bool)

(assert (=> b!2921426 (= e!1843029 call!191206)))

(declare-fun bm!191205 () Bool)

(declare-fun call!191208 () Bool)

(assert (=> bm!191205 (= call!191211 call!191208)))

(declare-fun bm!191206 () Bool)

(assert (=> bm!191206 (= call!191210 (simplify!30 (ite c!476740 (regOne!18511 r!17423) (regTwo!18510 r!17423))))))

(declare-fun b!2921427 () Bool)

(declare-fun e!1843027 () Regex!8999)

(assert (=> b!2921427 (= e!1843027 EmptyExpr!8999)))

(declare-fun b!2921428 () Bool)

(declare-fun c!476738 () Bool)

(assert (=> b!2921428 (= c!476738 call!191206)))

(assert (=> b!2921428 (= e!1843024 e!1843026)))

(declare-fun b!2921429 () Bool)

(assert (=> b!2921429 (= e!1843028 EmptyLang!8999)))

(declare-fun b!2921430 () Bool)

(declare-fun c!476743 () Bool)

(assert (=> b!2921430 (= c!476743 e!1843017)))

(declare-fun res!1206030 () Bool)

(assert (=> b!2921430 (=> res!1206030 e!1843017)))

(assert (=> b!2921430 (= res!1206030 call!191208)))

(assert (=> b!2921430 (= lt!1025826 call!191207)))

(assert (=> b!2921430 (= e!1843019 e!1843022)))

(declare-fun b!2921431 () Bool)

(assert (=> b!2921431 (= e!1843022 EmptyExpr!8999)))

(declare-fun b!2921432 () Bool)

(declare-fun c!476744 () Bool)

(assert (=> b!2921432 (= c!476744 ((_ is EmptyExpr!8999) r!17423))))

(assert (=> b!2921432 (= e!1843021 e!1843027)))

(declare-fun b!2921433 () Bool)

(assert (=> b!2921433 (= e!1843027 e!1843019)))

(assert (=> b!2921433 (= c!476734 ((_ is Star!8999) r!17423))))

(declare-fun bm!191207 () Bool)

(assert (=> bm!191207 (= call!191208 (isEmptyLang!173 (ite c!476734 lt!1025826 (ite c!476740 lt!1025825 lt!1025828))))))

(declare-fun b!2921434 () Bool)

(assert (=> b!2921434 (= e!1843030 lt!1025827)))

(declare-fun b!2921435 () Bool)

(assert (=> b!2921435 (= e!1843020 (Concat!14320 lt!1025828 lt!1025827))))

(assert (= (and d!838567 c!476735) b!2921429))

(assert (= (and d!838567 (not c!476735)) b!2921421))

(assert (= (and b!2921421 c!476742) b!2921422))

(assert (= (and b!2921421 (not c!476742)) b!2921432))

(assert (= (and b!2921432 c!476744) b!2921427))

(assert (= (and b!2921432 (not c!476744)) b!2921433))

(assert (= (and b!2921433 c!476734) b!2921430))

(assert (= (and b!2921433 (not c!476734)) b!2921420))

(assert (= (and b!2921430 (not res!1206030)) b!2921414))

(assert (= (and b!2921430 c!476743) b!2921431))

(assert (= (and b!2921430 (not c!476743)) b!2921425))

(assert (= (and b!2921420 c!476740) b!2921413))

(assert (= (and b!2921420 (not c!476740)) b!2921418))

(assert (= (and b!2921413 c!476739) b!2921416))

(assert (= (and b!2921413 (not c!476739)) b!2921428))

(assert (= (and b!2921428 c!476738) b!2921411))

(assert (= (and b!2921428 (not c!476738)) b!2921424))

(assert (= (and b!2921418 (not res!1206031)) b!2921426))

(assert (= (and b!2921418 c!476737) b!2921415))

(assert (= (and b!2921418 (not c!476737)) b!2921423))

(assert (= (and b!2921423 c!476736) b!2921434))

(assert (= (and b!2921423 (not c!476736)) b!2921417))

(assert (= (and b!2921417 c!476741) b!2921412))

(assert (= (and b!2921417 (not c!476741)) b!2921435))

(assert (= (or b!2921413 b!2921418) bm!191206))

(assert (= (or b!2921413 b!2921418) bm!191203))

(assert (= (or b!2921413 b!2921418) bm!191205))

(assert (= (or b!2921428 b!2921426) bm!191204))

(assert (= (or b!2921414 b!2921423) bm!191202))

(assert (= (or b!2921430 bm!191203) bm!191201))

(assert (= (or b!2921430 bm!191205) bm!191207))

(assert (= (and d!838567 res!1206032) b!2921419))

(declare-fun m!3317231 () Bool)

(assert (=> d!838567 m!3317231))

(assert (=> d!838567 m!3317169))

(declare-fun m!3317233 () Bool)

(assert (=> bm!191202 m!3317233))

(declare-fun m!3317235 () Bool)

(assert (=> bm!191204 m!3317235))

(declare-fun m!3317237 () Bool)

(assert (=> bm!191201 m!3317237))

(declare-fun m!3317239 () Bool)

(assert (=> bm!191206 m!3317239))

(declare-fun m!3317241 () Bool)

(assert (=> b!2921419 m!3317241))

(declare-fun m!3317243 () Bool)

(assert (=> b!2921419 m!3317243))

(declare-fun m!3317245 () Bool)

(assert (=> bm!191207 m!3317245))

(declare-fun m!3317247 () Bool)

(assert (=> b!2921417 m!3317247))

(assert (=> b!2921207 d!838567))

(declare-fun b!2921436 () Bool)

(declare-fun res!1206035 () Bool)

(declare-fun e!1843035 () Bool)

(assert (=> b!2921436 (=> (not res!1206035) (not e!1843035))))

(assert (=> b!2921436 (= res!1206035 (isEmpty!18990 (tail!4719 s!11993)))))

(declare-fun b!2921437 () Bool)

(declare-fun e!1843034 () Bool)

(declare-fun lt!1025829 () Bool)

(declare-fun call!191213 () Bool)

(assert (=> b!2921437 (= e!1843034 (= lt!1025829 call!191213))))

(declare-fun b!2921439 () Bool)

(declare-fun e!1843036 () Bool)

(assert (=> b!2921439 (= e!1843034 e!1843036)))

(declare-fun c!476746 () Bool)

(assert (=> b!2921439 (= c!476746 ((_ is EmptyLang!8999) (Union!8999 lt!1025794 lt!1025799)))))

(declare-fun b!2921440 () Bool)

(declare-fun e!1843033 () Bool)

(declare-fun e!1843032 () Bool)

(assert (=> b!2921440 (= e!1843033 e!1843032)))

(declare-fun res!1206033 () Bool)

(assert (=> b!2921440 (=> res!1206033 e!1843032)))

(assert (=> b!2921440 (= res!1206033 call!191213)))

(declare-fun b!2921441 () Bool)

(declare-fun res!1206034 () Bool)

(declare-fun e!1843037 () Bool)

(assert (=> b!2921441 (=> res!1206034 e!1843037)))

(assert (=> b!2921441 (= res!1206034 e!1843035)))

(declare-fun res!1206040 () Bool)

(assert (=> b!2921441 (=> (not res!1206040) (not e!1843035))))

(assert (=> b!2921441 (= res!1206040 lt!1025829)))

(declare-fun b!2921442 () Bool)

(assert (=> b!2921442 (= e!1843037 e!1843033)))

(declare-fun res!1206038 () Bool)

(assert (=> b!2921442 (=> (not res!1206038) (not e!1843033))))

(assert (=> b!2921442 (= res!1206038 (not lt!1025829))))

(declare-fun b!2921443 () Bool)

(assert (=> b!2921443 (= e!1843032 (not (= (head!6493 s!11993) (c!476681 (Union!8999 lt!1025794 lt!1025799)))))))

(declare-fun b!2921444 () Bool)

(declare-fun e!1843031 () Bool)

(assert (=> b!2921444 (= e!1843031 (nullable!2820 (Union!8999 lt!1025794 lt!1025799)))))

(declare-fun b!2921445 () Bool)

(assert (=> b!2921445 (= e!1843031 (matchR!3881 (derivativeStep!2434 (Union!8999 lt!1025794 lt!1025799) (head!6493 s!11993)) (tail!4719 s!11993)))))

(declare-fun b!2921446 () Bool)

(assert (=> b!2921446 (= e!1843036 (not lt!1025829))))

(declare-fun d!838577 () Bool)

(assert (=> d!838577 e!1843034))

(declare-fun c!476745 () Bool)

(assert (=> d!838577 (= c!476745 ((_ is EmptyExpr!8999) (Union!8999 lt!1025794 lt!1025799)))))

(assert (=> d!838577 (= lt!1025829 e!1843031)))

(declare-fun c!476747 () Bool)

(assert (=> d!838577 (= c!476747 (isEmpty!18990 s!11993))))

(assert (=> d!838577 (validRegex!3732 (Union!8999 lt!1025794 lt!1025799))))

(assert (=> d!838577 (= (matchR!3881 (Union!8999 lt!1025794 lt!1025799) s!11993) lt!1025829)))

(declare-fun b!2921438 () Bool)

(declare-fun res!1206037 () Bool)

(assert (=> b!2921438 (=> (not res!1206037) (not e!1843035))))

(assert (=> b!2921438 (= res!1206037 (not call!191213))))

(declare-fun b!2921447 () Bool)

(declare-fun res!1206036 () Bool)

(assert (=> b!2921447 (=> res!1206036 e!1843032)))

(assert (=> b!2921447 (= res!1206036 (not (isEmpty!18990 (tail!4719 s!11993))))))

(declare-fun bm!191208 () Bool)

(assert (=> bm!191208 (= call!191213 (isEmpty!18990 s!11993))))

(declare-fun b!2921448 () Bool)

(declare-fun res!1206039 () Bool)

(assert (=> b!2921448 (=> res!1206039 e!1843037)))

(assert (=> b!2921448 (= res!1206039 (not ((_ is ElementMatch!8999) (Union!8999 lt!1025794 lt!1025799))))))

(assert (=> b!2921448 (= e!1843036 e!1843037)))

(declare-fun b!2921449 () Bool)

(assert (=> b!2921449 (= e!1843035 (= (head!6493 s!11993) (c!476681 (Union!8999 lt!1025794 lt!1025799))))))

(assert (= (and d!838577 c!476747) b!2921444))

(assert (= (and d!838577 (not c!476747)) b!2921445))

(assert (= (and d!838577 c!476745) b!2921437))

(assert (= (and d!838577 (not c!476745)) b!2921439))

(assert (= (and b!2921439 c!476746) b!2921446))

(assert (= (and b!2921439 (not c!476746)) b!2921448))

(assert (= (and b!2921448 (not res!1206039)) b!2921441))

(assert (= (and b!2921441 res!1206040) b!2921438))

(assert (= (and b!2921438 res!1206037) b!2921436))

(assert (= (and b!2921436 res!1206035) b!2921449))

(assert (= (and b!2921441 (not res!1206034)) b!2921442))

(assert (= (and b!2921442 res!1206038) b!2921440))

(assert (= (and b!2921440 (not res!1206033)) b!2921447))

(assert (= (and b!2921447 (not res!1206036)) b!2921443))

(assert (= (or b!2921437 b!2921438 b!2921440) bm!191208))

(assert (=> b!2921445 m!3317177))

(assert (=> b!2921445 m!3317177))

(declare-fun m!3317249 () Bool)

(assert (=> b!2921445 m!3317249))

(assert (=> b!2921445 m!3317181))

(assert (=> b!2921445 m!3317249))

(assert (=> b!2921445 m!3317181))

(declare-fun m!3317251 () Bool)

(assert (=> b!2921445 m!3317251))

(declare-fun m!3317253 () Bool)

(assert (=> b!2921444 m!3317253))

(assert (=> bm!191208 m!3317187))

(assert (=> b!2921447 m!3317181))

(assert (=> b!2921447 m!3317181))

(assert (=> b!2921447 m!3317189))

(assert (=> d!838577 m!3317187))

(declare-fun m!3317255 () Bool)

(assert (=> d!838577 m!3317255))

(assert (=> b!2921449 m!3317177))

(assert (=> b!2921443 m!3317177))

(assert (=> b!2921436 m!3317181))

(assert (=> b!2921436 m!3317181))

(assert (=> b!2921436 m!3317189))

(assert (=> b!2921207 d!838577))

(declare-fun d!838579 () Bool)

(assert (=> d!838579 (matchR!3881 (Union!8999 lt!1025794 lt!1025799) s!11993)))

(declare-fun lt!1025832 () Unit!48337)

(declare-fun choose!17224 (Regex!8999 Regex!8999 List!34864) Unit!48337)

(assert (=> d!838579 (= lt!1025832 (choose!17224 lt!1025794 lt!1025799 s!11993))))

(declare-fun e!1843040 () Bool)

(assert (=> d!838579 e!1843040))

(declare-fun res!1206043 () Bool)

(assert (=> d!838579 (=> (not res!1206043) (not e!1843040))))

(assert (=> d!838579 (= res!1206043 (validRegex!3732 lt!1025794))))

(assert (=> d!838579 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!52 lt!1025794 lt!1025799 s!11993) lt!1025832)))

(declare-fun b!2921452 () Bool)

(assert (=> b!2921452 (= e!1843040 (validRegex!3732 lt!1025799))))

(assert (= (and d!838579 res!1206043) b!2921452))

(assert (=> d!838579 m!3317165))

(declare-fun m!3317257 () Bool)

(assert (=> d!838579 m!3317257))

(assert (=> d!838579 m!3317153))

(assert (=> b!2921452 m!3317143))

(assert (=> b!2921207 d!838579))

(declare-fun d!838581 () Bool)

(declare-fun res!1206045 () Bool)

(declare-fun e!1843047 () Bool)

(assert (=> d!838581 (=> res!1206045 e!1843047)))

(assert (=> d!838581 (= res!1206045 ((_ is ElementMatch!8999) lt!1025794))))

(assert (=> d!838581 (= (validRegex!3732 lt!1025794) e!1843047)))

(declare-fun b!2921453 () Bool)

(declare-fun res!1206047 () Bool)

(declare-fun e!1843043 () Bool)

(assert (=> b!2921453 (=> (not res!1206047) (not e!1843043))))

(declare-fun call!191214 () Bool)

(assert (=> b!2921453 (= res!1206047 call!191214)))

(declare-fun e!1843044 () Bool)

(assert (=> b!2921453 (= e!1843044 e!1843043)))

(declare-fun bm!191209 () Bool)

(declare-fun call!191216 () Bool)

(declare-fun c!476748 () Bool)

(assert (=> bm!191209 (= call!191216 (validRegex!3732 (ite c!476748 (regTwo!18511 lt!1025794) (regOne!18510 lt!1025794))))))

(declare-fun b!2921454 () Bool)

(declare-fun e!1843042 () Bool)

(assert (=> b!2921454 (= e!1843042 call!191214)))

(declare-fun b!2921455 () Bool)

(declare-fun res!1206044 () Bool)

(declare-fun e!1843046 () Bool)

(assert (=> b!2921455 (=> res!1206044 e!1843046)))

(assert (=> b!2921455 (= res!1206044 (not ((_ is Concat!14320) lt!1025794)))))

(assert (=> b!2921455 (= e!1843044 e!1843046)))

(declare-fun b!2921456 () Bool)

(assert (=> b!2921456 (= e!1843046 e!1843042)))

(declare-fun res!1206048 () Bool)

(assert (=> b!2921456 (=> (not res!1206048) (not e!1843042))))

(assert (=> b!2921456 (= res!1206048 call!191216)))

(declare-fun b!2921457 () Bool)

(declare-fun e!1843041 () Bool)

(declare-fun call!191215 () Bool)

(assert (=> b!2921457 (= e!1843041 call!191215)))

(declare-fun c!476749 () Bool)

(declare-fun bm!191210 () Bool)

(assert (=> bm!191210 (= call!191215 (validRegex!3732 (ite c!476749 (reg!9328 lt!1025794) (ite c!476748 (regOne!18511 lt!1025794) (regTwo!18510 lt!1025794)))))))

(declare-fun b!2921458 () Bool)

(declare-fun e!1843045 () Bool)

(assert (=> b!2921458 (= e!1843047 e!1843045)))

(assert (=> b!2921458 (= c!476749 ((_ is Star!8999) lt!1025794))))

(declare-fun bm!191211 () Bool)

(assert (=> bm!191211 (= call!191214 call!191215)))

(declare-fun b!2921459 () Bool)

(assert (=> b!2921459 (= e!1843045 e!1843041)))

(declare-fun res!1206046 () Bool)

(assert (=> b!2921459 (= res!1206046 (not (nullable!2820 (reg!9328 lt!1025794))))))

(assert (=> b!2921459 (=> (not res!1206046) (not e!1843041))))

(declare-fun b!2921460 () Bool)

(assert (=> b!2921460 (= e!1843043 call!191216)))

(declare-fun b!2921461 () Bool)

(assert (=> b!2921461 (= e!1843045 e!1843044)))

(assert (=> b!2921461 (= c!476748 ((_ is Union!8999) lt!1025794))))

(assert (= (and d!838581 (not res!1206045)) b!2921458))

(assert (= (and b!2921458 c!476749) b!2921459))

(assert (= (and b!2921458 (not c!476749)) b!2921461))

(assert (= (and b!2921459 res!1206046) b!2921457))

(assert (= (and b!2921461 c!476748) b!2921453))

(assert (= (and b!2921461 (not c!476748)) b!2921455))

(assert (= (and b!2921453 res!1206047) b!2921460))

(assert (= (and b!2921455 (not res!1206044)) b!2921456))

(assert (= (and b!2921456 res!1206048) b!2921454))

(assert (= (or b!2921453 b!2921454) bm!191211))

(assert (= (or b!2921460 b!2921456) bm!191209))

(assert (= (or b!2921457 bm!191211) bm!191210))

(declare-fun m!3317259 () Bool)

(assert (=> bm!191209 m!3317259))

(declare-fun m!3317261 () Bool)

(assert (=> bm!191210 m!3317261))

(declare-fun m!3317263 () Bool)

(assert (=> b!2921459 m!3317263))

(assert (=> b!2921212 d!838581))

(declare-fun b!2921462 () Bool)

(declare-fun res!1206051 () Bool)

(declare-fun e!1843052 () Bool)

(assert (=> b!2921462 (=> (not res!1206051) (not e!1843052))))

(assert (=> b!2921462 (= res!1206051 (isEmpty!18990 (tail!4719 s!11993)))))

(declare-fun b!2921463 () Bool)

(declare-fun e!1843051 () Bool)

(declare-fun lt!1025833 () Bool)

(declare-fun call!191217 () Bool)

(assert (=> b!2921463 (= e!1843051 (= lt!1025833 call!191217))))

(declare-fun b!2921465 () Bool)

(declare-fun e!1843053 () Bool)

(assert (=> b!2921465 (= e!1843051 e!1843053)))

(declare-fun c!476751 () Bool)

(assert (=> b!2921465 (= c!476751 ((_ is EmptyLang!8999) lt!1025794))))

(declare-fun b!2921466 () Bool)

(declare-fun e!1843050 () Bool)

(declare-fun e!1843049 () Bool)

(assert (=> b!2921466 (= e!1843050 e!1843049)))

(declare-fun res!1206049 () Bool)

(assert (=> b!2921466 (=> res!1206049 e!1843049)))

(assert (=> b!2921466 (= res!1206049 call!191217)))

(declare-fun b!2921467 () Bool)

(declare-fun res!1206050 () Bool)

(declare-fun e!1843054 () Bool)

(assert (=> b!2921467 (=> res!1206050 e!1843054)))

(assert (=> b!2921467 (= res!1206050 e!1843052)))

(declare-fun res!1206056 () Bool)

(assert (=> b!2921467 (=> (not res!1206056) (not e!1843052))))

(assert (=> b!2921467 (= res!1206056 lt!1025833)))

(declare-fun b!2921468 () Bool)

(assert (=> b!2921468 (= e!1843054 e!1843050)))

(declare-fun res!1206054 () Bool)

(assert (=> b!2921468 (=> (not res!1206054) (not e!1843050))))

(assert (=> b!2921468 (= res!1206054 (not lt!1025833))))

(declare-fun b!2921469 () Bool)

(assert (=> b!2921469 (= e!1843049 (not (= (head!6493 s!11993) (c!476681 lt!1025794))))))

(declare-fun b!2921470 () Bool)

(declare-fun e!1843048 () Bool)

(assert (=> b!2921470 (= e!1843048 (nullable!2820 lt!1025794))))

(declare-fun b!2921471 () Bool)

(assert (=> b!2921471 (= e!1843048 (matchR!3881 (derivativeStep!2434 lt!1025794 (head!6493 s!11993)) (tail!4719 s!11993)))))

(declare-fun b!2921472 () Bool)

(assert (=> b!2921472 (= e!1843053 (not lt!1025833))))

(declare-fun d!838583 () Bool)

(assert (=> d!838583 e!1843051))

(declare-fun c!476750 () Bool)

(assert (=> d!838583 (= c!476750 ((_ is EmptyExpr!8999) lt!1025794))))

(assert (=> d!838583 (= lt!1025833 e!1843048)))

(declare-fun c!476752 () Bool)

(assert (=> d!838583 (= c!476752 (isEmpty!18990 s!11993))))

(assert (=> d!838583 (validRegex!3732 lt!1025794)))

(assert (=> d!838583 (= (matchR!3881 lt!1025794 s!11993) lt!1025833)))

(declare-fun b!2921464 () Bool)

(declare-fun res!1206053 () Bool)

(assert (=> b!2921464 (=> (not res!1206053) (not e!1843052))))

(assert (=> b!2921464 (= res!1206053 (not call!191217))))

(declare-fun b!2921473 () Bool)

(declare-fun res!1206052 () Bool)

(assert (=> b!2921473 (=> res!1206052 e!1843049)))

(assert (=> b!2921473 (= res!1206052 (not (isEmpty!18990 (tail!4719 s!11993))))))

(declare-fun bm!191212 () Bool)

(assert (=> bm!191212 (= call!191217 (isEmpty!18990 s!11993))))

(declare-fun b!2921474 () Bool)

(declare-fun res!1206055 () Bool)

(assert (=> b!2921474 (=> res!1206055 e!1843054)))

(assert (=> b!2921474 (= res!1206055 (not ((_ is ElementMatch!8999) lt!1025794)))))

(assert (=> b!2921474 (= e!1843053 e!1843054)))

(declare-fun b!2921475 () Bool)

(assert (=> b!2921475 (= e!1843052 (= (head!6493 s!11993) (c!476681 lt!1025794)))))

(assert (= (and d!838583 c!476752) b!2921470))

(assert (= (and d!838583 (not c!476752)) b!2921471))

(assert (= (and d!838583 c!476750) b!2921463))

(assert (= (and d!838583 (not c!476750)) b!2921465))

(assert (= (and b!2921465 c!476751) b!2921472))

(assert (= (and b!2921465 (not c!476751)) b!2921474))

(assert (= (and b!2921474 (not res!1206055)) b!2921467))

(assert (= (and b!2921467 res!1206056) b!2921464))

(assert (= (and b!2921464 res!1206053) b!2921462))

(assert (= (and b!2921462 res!1206051) b!2921475))

(assert (= (and b!2921467 (not res!1206050)) b!2921468))

(assert (= (and b!2921468 res!1206054) b!2921466))

(assert (= (and b!2921466 (not res!1206049)) b!2921473))

(assert (= (and b!2921473 (not res!1206052)) b!2921469))

(assert (= (or b!2921463 b!2921464 b!2921466) bm!191212))

(assert (=> b!2921471 m!3317177))

(assert (=> b!2921471 m!3317177))

(declare-fun m!3317265 () Bool)

(assert (=> b!2921471 m!3317265))

(assert (=> b!2921471 m!3317181))

(assert (=> b!2921471 m!3317265))

(assert (=> b!2921471 m!3317181))

(declare-fun m!3317267 () Bool)

(assert (=> b!2921471 m!3317267))

(declare-fun m!3317269 () Bool)

(assert (=> b!2921470 m!3317269))

(assert (=> bm!191212 m!3317187))

(assert (=> b!2921473 m!3317181))

(assert (=> b!2921473 m!3317181))

(assert (=> b!2921473 m!3317189))

(assert (=> d!838583 m!3317187))

(assert (=> d!838583 m!3317153))

(assert (=> b!2921475 m!3317177))

(assert (=> b!2921469 m!3317177))

(assert (=> b!2921462 m!3317181))

(assert (=> b!2921462 m!3317181))

(assert (=> b!2921462 m!3317189))

(assert (=> b!2921212 d!838583))

(declare-fun c!476759 () Bool)

(declare-fun c!476753 () Bool)

(declare-fun bm!191213 () Bool)

(declare-fun call!191219 () Regex!8999)

(assert (=> bm!191213 (= call!191219 (simplify!30 (ite c!476753 (reg!9328 (regOne!18511 r!17423)) (ite c!476759 (regTwo!18511 (regOne!18511 r!17423)) (regOne!18510 (regOne!18511 r!17423))))))))

(declare-fun b!2921476 () Bool)

(declare-fun e!1843064 () Regex!8999)

(declare-fun lt!1025836 () Regex!8999)

(assert (=> b!2921476 (= e!1843064 lt!1025836)))

(declare-fun lt!1025837 () Regex!8999)

(declare-fun lt!1025839 () Regex!8999)

(declare-fun call!191221 () Bool)

(declare-fun bm!191214 () Bool)

(assert (=> bm!191214 (= call!191221 (isEmptyExpr!258 (ite c!476753 lt!1025837 lt!1025839)))))

(declare-fun b!2921477 () Bool)

(declare-fun e!1843058 () Regex!8999)

(assert (=> b!2921477 (= e!1843058 lt!1025839)))

(declare-fun b!2921478 () Bool)

(declare-fun e!1843061 () Regex!8999)

(declare-fun e!1843062 () Regex!8999)

(assert (=> b!2921478 (= e!1843061 e!1843062)))

(declare-fun call!191222 () Regex!8999)

(assert (=> b!2921478 (= lt!1025836 call!191222)))

(declare-fun lt!1025835 () Regex!8999)

(declare-fun call!191224 () Regex!8999)

(assert (=> b!2921478 (= lt!1025835 call!191224)))

(declare-fun c!476758 () Bool)

(declare-fun call!191223 () Bool)

(assert (=> b!2921478 (= c!476758 call!191223)))

(declare-fun b!2921479 () Bool)

(declare-fun e!1843055 () Bool)

(assert (=> b!2921479 (= e!1843055 call!191221)))

(declare-fun b!2921480 () Bool)

(declare-fun e!1843056 () Regex!8999)

(assert (=> b!2921480 (= e!1843056 EmptyLang!8999)))

(declare-fun b!2921481 () Bool)

(assert (=> b!2921481 (= e!1843062 lt!1025835)))

(declare-fun b!2921482 () Bool)

(declare-fun e!1843068 () Regex!8999)

(assert (=> b!2921482 (= e!1843068 e!1843058)))

(declare-fun c!476760 () Bool)

(declare-fun lt!1025838 () Regex!8999)

(assert (=> b!2921482 (= c!476760 (isEmptyExpr!258 lt!1025838))))

(declare-fun b!2921483 () Bool)

(assert (=> b!2921483 (= e!1843061 e!1843056)))

(assert (=> b!2921483 (= lt!1025839 call!191224)))

(assert (=> b!2921483 (= lt!1025838 call!191222)))

(declare-fun res!1206058 () Bool)

(assert (=> b!2921483 (= res!1206058 call!191223)))

(declare-fun e!1843067 () Bool)

(assert (=> b!2921483 (=> res!1206058 e!1843067)))

(declare-fun c!476756 () Bool)

(assert (=> b!2921483 (= c!476756 e!1843067)))

(declare-fun d!838585 () Bool)

(declare-fun e!1843063 () Bool)

(assert (=> d!838585 e!1843063))

(declare-fun res!1206059 () Bool)

(assert (=> d!838585 (=> (not res!1206059) (not e!1843063))))

(declare-fun lt!1025834 () Regex!8999)

(assert (=> d!838585 (= res!1206059 (validRegex!3732 lt!1025834))))

(declare-fun e!1843066 () Regex!8999)

(assert (=> d!838585 (= lt!1025834 e!1843066)))

(declare-fun c!476754 () Bool)

(assert (=> d!838585 (= c!476754 ((_ is EmptyLang!8999) (regOne!18511 r!17423)))))

(assert (=> d!838585 (validRegex!3732 (regOne!18511 r!17423))))

(assert (=> d!838585 (= (simplify!30 (regOne!18511 r!17423)) lt!1025834)))

(declare-fun b!2921484 () Bool)

(assert (=> b!2921484 (= e!1843063 (= (nullable!2820 lt!1025834) (nullable!2820 (regOne!18511 r!17423))))))

(declare-fun b!2921485 () Bool)

(assert (=> b!2921485 (= c!476759 ((_ is Union!8999) (regOne!18511 r!17423)))))

(declare-fun e!1843057 () Regex!8999)

(assert (=> b!2921485 (= e!1843057 e!1843061)))

(declare-fun b!2921486 () Bool)

(declare-fun e!1843059 () Regex!8999)

(assert (=> b!2921486 (= e!1843066 e!1843059)))

(declare-fun c!476761 () Bool)

(assert (=> b!2921486 (= c!476761 ((_ is ElementMatch!8999) (regOne!18511 r!17423)))))

(declare-fun b!2921487 () Bool)

(assert (=> b!2921487 (= e!1843059 (regOne!18511 r!17423))))

(declare-fun b!2921488 () Bool)

(declare-fun c!476755 () Bool)

(assert (=> b!2921488 (= c!476755 call!191221)))

(assert (=> b!2921488 (= e!1843056 e!1843068)))

(declare-fun bm!191215 () Bool)

(assert (=> bm!191215 (= call!191224 call!191219)))

(declare-fun b!2921489 () Bool)

(assert (=> b!2921489 (= e!1843064 (Union!8999 lt!1025836 lt!1025835))))

(declare-fun bm!191216 () Bool)

(declare-fun call!191218 () Bool)

(assert (=> bm!191216 (= call!191218 (isEmptyLang!173 (ite c!476759 lt!1025835 lt!1025838)))))

(declare-fun b!2921490 () Bool)

(declare-fun e!1843060 () Regex!8999)

(assert (=> b!2921490 (= e!1843060 (Star!8999 lt!1025837))))

(declare-fun b!2921491 () Bool)

(assert (=> b!2921491 (= e!1843067 call!191218)))

(declare-fun bm!191217 () Bool)

(declare-fun call!191220 () Bool)

(assert (=> bm!191217 (= call!191223 call!191220)))

(declare-fun bm!191218 () Bool)

(assert (=> bm!191218 (= call!191222 (simplify!30 (ite c!476759 (regOne!18511 (regOne!18511 r!17423)) (regTwo!18510 (regOne!18511 r!17423)))))))

(declare-fun b!2921492 () Bool)

(declare-fun e!1843065 () Regex!8999)

(assert (=> b!2921492 (= e!1843065 EmptyExpr!8999)))

(declare-fun b!2921493 () Bool)

(declare-fun c!476757 () Bool)

(assert (=> b!2921493 (= c!476757 call!191218)))

(assert (=> b!2921493 (= e!1843062 e!1843064)))

(declare-fun b!2921494 () Bool)

(assert (=> b!2921494 (= e!1843066 EmptyLang!8999)))

(declare-fun b!2921495 () Bool)

(declare-fun c!476762 () Bool)

(assert (=> b!2921495 (= c!476762 e!1843055)))

(declare-fun res!1206057 () Bool)

(assert (=> b!2921495 (=> res!1206057 e!1843055)))

(assert (=> b!2921495 (= res!1206057 call!191220)))

(assert (=> b!2921495 (= lt!1025837 call!191219)))

(assert (=> b!2921495 (= e!1843057 e!1843060)))

(declare-fun b!2921496 () Bool)

(assert (=> b!2921496 (= e!1843060 EmptyExpr!8999)))

(declare-fun b!2921497 () Bool)

(declare-fun c!476763 () Bool)

(assert (=> b!2921497 (= c!476763 ((_ is EmptyExpr!8999) (regOne!18511 r!17423)))))

(assert (=> b!2921497 (= e!1843059 e!1843065)))

(declare-fun b!2921498 () Bool)

(assert (=> b!2921498 (= e!1843065 e!1843057)))

(assert (=> b!2921498 (= c!476753 ((_ is Star!8999) (regOne!18511 r!17423)))))

(declare-fun bm!191219 () Bool)

(assert (=> bm!191219 (= call!191220 (isEmptyLang!173 (ite c!476753 lt!1025837 (ite c!476759 lt!1025836 lt!1025839))))))

(declare-fun b!2921499 () Bool)

(assert (=> b!2921499 (= e!1843068 lt!1025838)))

(declare-fun b!2921500 () Bool)

(assert (=> b!2921500 (= e!1843058 (Concat!14320 lt!1025839 lt!1025838))))

(assert (= (and d!838585 c!476754) b!2921494))

(assert (= (and d!838585 (not c!476754)) b!2921486))

(assert (= (and b!2921486 c!476761) b!2921487))

(assert (= (and b!2921486 (not c!476761)) b!2921497))

(assert (= (and b!2921497 c!476763) b!2921492))

(assert (= (and b!2921497 (not c!476763)) b!2921498))

(assert (= (and b!2921498 c!476753) b!2921495))

(assert (= (and b!2921498 (not c!476753)) b!2921485))

(assert (= (and b!2921495 (not res!1206057)) b!2921479))

(assert (= (and b!2921495 c!476762) b!2921496))

(assert (= (and b!2921495 (not c!476762)) b!2921490))

(assert (= (and b!2921485 c!476759) b!2921478))

(assert (= (and b!2921485 (not c!476759)) b!2921483))

(assert (= (and b!2921478 c!476758) b!2921481))

(assert (= (and b!2921478 (not c!476758)) b!2921493))

(assert (= (and b!2921493 c!476757) b!2921476))

(assert (= (and b!2921493 (not c!476757)) b!2921489))

(assert (= (and b!2921483 (not res!1206058)) b!2921491))

(assert (= (and b!2921483 c!476756) b!2921480))

(assert (= (and b!2921483 (not c!476756)) b!2921488))

(assert (= (and b!2921488 c!476755) b!2921499))

(assert (= (and b!2921488 (not c!476755)) b!2921482))

(assert (= (and b!2921482 c!476760) b!2921477))

(assert (= (and b!2921482 (not c!476760)) b!2921500))

(assert (= (or b!2921478 b!2921483) bm!191218))

(assert (= (or b!2921478 b!2921483) bm!191215))

(assert (= (or b!2921478 b!2921483) bm!191217))

(assert (= (or b!2921493 b!2921491) bm!191216))

(assert (= (or b!2921479 b!2921488) bm!191214))

(assert (= (or b!2921495 bm!191215) bm!191213))

(assert (= (or b!2921495 bm!191217) bm!191219))

(assert (= (and d!838585 res!1206059) b!2921484))

(declare-fun m!3317271 () Bool)

(assert (=> d!838585 m!3317271))

(declare-fun m!3317273 () Bool)

(assert (=> d!838585 m!3317273))

(declare-fun m!3317275 () Bool)

(assert (=> bm!191214 m!3317275))

(declare-fun m!3317277 () Bool)

(assert (=> bm!191216 m!3317277))

(declare-fun m!3317279 () Bool)

(assert (=> bm!191213 m!3317279))

(declare-fun m!3317281 () Bool)

(assert (=> bm!191218 m!3317281))

(declare-fun m!3317283 () Bool)

(assert (=> b!2921484 m!3317283))

(declare-fun m!3317285 () Bool)

(assert (=> b!2921484 m!3317285))

(declare-fun m!3317287 () Bool)

(assert (=> bm!191219 m!3317287))

(declare-fun m!3317289 () Bool)

(assert (=> b!2921482 m!3317289))

(assert (=> b!2921212 d!838585))

(declare-fun d!838587 () Bool)

(assert (=> d!838587 (= (matchR!3881 (regOne!18511 r!17423) s!11993) (matchR!3881 (simplify!30 (regOne!18511 r!17423)) s!11993))))

(declare-fun lt!1025842 () Unit!48337)

(declare-fun choose!17226 (Regex!8999 List!34864) Unit!48337)

(assert (=> d!838587 (= lt!1025842 (choose!17226 (regOne!18511 r!17423) s!11993))))

(assert (=> d!838587 (validRegex!3732 (regOne!18511 r!17423))))

(assert (=> d!838587 (= (lemmaSimplifySound!28 (regOne!18511 r!17423) s!11993) lt!1025842)))

(declare-fun bs!524961 () Bool)

(assert (= bs!524961 d!838587))

(assert (=> bs!524961 m!3317171))

(assert (=> bs!524961 m!3317157))

(declare-fun m!3317291 () Bool)

(assert (=> bs!524961 m!3317291))

(assert (=> bs!524961 m!3317157))

(assert (=> bs!524961 m!3317273))

(declare-fun m!3317293 () Bool)

(assert (=> bs!524961 m!3317293))

(assert (=> b!2921212 d!838587))

(declare-fun c!476770 () Bool)

(declare-fun call!191226 () Regex!8999)

(declare-fun c!476764 () Bool)

(declare-fun bm!191220 () Bool)

(assert (=> bm!191220 (= call!191226 (simplify!30 (ite c!476764 (reg!9328 (regTwo!18511 r!17423)) (ite c!476770 (regTwo!18511 (regTwo!18511 r!17423)) (regOne!18510 (regTwo!18511 r!17423))))))))

(declare-fun b!2921501 () Bool)

(declare-fun e!1843078 () Regex!8999)

(declare-fun lt!1025845 () Regex!8999)

(assert (=> b!2921501 (= e!1843078 lt!1025845)))

(declare-fun bm!191221 () Bool)

(declare-fun call!191228 () Bool)

(declare-fun lt!1025846 () Regex!8999)

(declare-fun lt!1025848 () Regex!8999)

(assert (=> bm!191221 (= call!191228 (isEmptyExpr!258 (ite c!476764 lt!1025846 lt!1025848)))))

(declare-fun b!2921502 () Bool)

(declare-fun e!1843072 () Regex!8999)

(assert (=> b!2921502 (= e!1843072 lt!1025848)))

(declare-fun b!2921503 () Bool)

(declare-fun e!1843075 () Regex!8999)

(declare-fun e!1843076 () Regex!8999)

(assert (=> b!2921503 (= e!1843075 e!1843076)))

(declare-fun call!191229 () Regex!8999)

(assert (=> b!2921503 (= lt!1025845 call!191229)))

(declare-fun lt!1025844 () Regex!8999)

(declare-fun call!191231 () Regex!8999)

(assert (=> b!2921503 (= lt!1025844 call!191231)))

(declare-fun c!476769 () Bool)

(declare-fun call!191230 () Bool)

(assert (=> b!2921503 (= c!476769 call!191230)))

(declare-fun b!2921504 () Bool)

(declare-fun e!1843069 () Bool)

(assert (=> b!2921504 (= e!1843069 call!191228)))

(declare-fun b!2921505 () Bool)

(declare-fun e!1843070 () Regex!8999)

(assert (=> b!2921505 (= e!1843070 EmptyLang!8999)))

(declare-fun b!2921506 () Bool)

(assert (=> b!2921506 (= e!1843076 lt!1025844)))

(declare-fun b!2921507 () Bool)

(declare-fun e!1843082 () Regex!8999)

(assert (=> b!2921507 (= e!1843082 e!1843072)))

(declare-fun c!476771 () Bool)

(declare-fun lt!1025847 () Regex!8999)

(assert (=> b!2921507 (= c!476771 (isEmptyExpr!258 lt!1025847))))

(declare-fun b!2921508 () Bool)

(assert (=> b!2921508 (= e!1843075 e!1843070)))

(assert (=> b!2921508 (= lt!1025848 call!191231)))

(assert (=> b!2921508 (= lt!1025847 call!191229)))

(declare-fun res!1206061 () Bool)

(assert (=> b!2921508 (= res!1206061 call!191230)))

(declare-fun e!1843081 () Bool)

(assert (=> b!2921508 (=> res!1206061 e!1843081)))

(declare-fun c!476767 () Bool)

(assert (=> b!2921508 (= c!476767 e!1843081)))

(declare-fun d!838589 () Bool)

(declare-fun e!1843077 () Bool)

(assert (=> d!838589 e!1843077))

(declare-fun res!1206062 () Bool)

(assert (=> d!838589 (=> (not res!1206062) (not e!1843077))))

(declare-fun lt!1025843 () Regex!8999)

(assert (=> d!838589 (= res!1206062 (validRegex!3732 lt!1025843))))

(declare-fun e!1843080 () Regex!8999)

(assert (=> d!838589 (= lt!1025843 e!1843080)))

(declare-fun c!476765 () Bool)

(assert (=> d!838589 (= c!476765 ((_ is EmptyLang!8999) (regTwo!18511 r!17423)))))

(assert (=> d!838589 (validRegex!3732 (regTwo!18511 r!17423))))

(assert (=> d!838589 (= (simplify!30 (regTwo!18511 r!17423)) lt!1025843)))

(declare-fun b!2921509 () Bool)

(assert (=> b!2921509 (= e!1843077 (= (nullable!2820 lt!1025843) (nullable!2820 (regTwo!18511 r!17423))))))

(declare-fun b!2921510 () Bool)

(assert (=> b!2921510 (= c!476770 ((_ is Union!8999) (regTwo!18511 r!17423)))))

(declare-fun e!1843071 () Regex!8999)

(assert (=> b!2921510 (= e!1843071 e!1843075)))

(declare-fun b!2921511 () Bool)

(declare-fun e!1843073 () Regex!8999)

(assert (=> b!2921511 (= e!1843080 e!1843073)))

(declare-fun c!476772 () Bool)

(assert (=> b!2921511 (= c!476772 ((_ is ElementMatch!8999) (regTwo!18511 r!17423)))))

(declare-fun b!2921512 () Bool)

(assert (=> b!2921512 (= e!1843073 (regTwo!18511 r!17423))))

(declare-fun b!2921513 () Bool)

(declare-fun c!476766 () Bool)

(assert (=> b!2921513 (= c!476766 call!191228)))

(assert (=> b!2921513 (= e!1843070 e!1843082)))

(declare-fun bm!191222 () Bool)

(assert (=> bm!191222 (= call!191231 call!191226)))

(declare-fun b!2921514 () Bool)

(assert (=> b!2921514 (= e!1843078 (Union!8999 lt!1025845 lt!1025844))))

(declare-fun bm!191223 () Bool)

(declare-fun call!191225 () Bool)

(assert (=> bm!191223 (= call!191225 (isEmptyLang!173 (ite c!476770 lt!1025844 lt!1025847)))))

(declare-fun b!2921515 () Bool)

(declare-fun e!1843074 () Regex!8999)

(assert (=> b!2921515 (= e!1843074 (Star!8999 lt!1025846))))

(declare-fun b!2921516 () Bool)

(assert (=> b!2921516 (= e!1843081 call!191225)))

(declare-fun bm!191224 () Bool)

(declare-fun call!191227 () Bool)

(assert (=> bm!191224 (= call!191230 call!191227)))

(declare-fun bm!191225 () Bool)

(assert (=> bm!191225 (= call!191229 (simplify!30 (ite c!476770 (regOne!18511 (regTwo!18511 r!17423)) (regTwo!18510 (regTwo!18511 r!17423)))))))

(declare-fun b!2921517 () Bool)

(declare-fun e!1843079 () Regex!8999)

(assert (=> b!2921517 (= e!1843079 EmptyExpr!8999)))

(declare-fun b!2921518 () Bool)

(declare-fun c!476768 () Bool)

(assert (=> b!2921518 (= c!476768 call!191225)))

(assert (=> b!2921518 (= e!1843076 e!1843078)))

(declare-fun b!2921519 () Bool)

(assert (=> b!2921519 (= e!1843080 EmptyLang!8999)))

(declare-fun b!2921520 () Bool)

(declare-fun c!476773 () Bool)

(assert (=> b!2921520 (= c!476773 e!1843069)))

(declare-fun res!1206060 () Bool)

(assert (=> b!2921520 (=> res!1206060 e!1843069)))

(assert (=> b!2921520 (= res!1206060 call!191227)))

(assert (=> b!2921520 (= lt!1025846 call!191226)))

(assert (=> b!2921520 (= e!1843071 e!1843074)))

(declare-fun b!2921521 () Bool)

(assert (=> b!2921521 (= e!1843074 EmptyExpr!8999)))

(declare-fun b!2921522 () Bool)

(declare-fun c!476774 () Bool)

(assert (=> b!2921522 (= c!476774 ((_ is EmptyExpr!8999) (regTwo!18511 r!17423)))))

(assert (=> b!2921522 (= e!1843073 e!1843079)))

(declare-fun b!2921523 () Bool)

(assert (=> b!2921523 (= e!1843079 e!1843071)))

(assert (=> b!2921523 (= c!476764 ((_ is Star!8999) (regTwo!18511 r!17423)))))

(declare-fun bm!191226 () Bool)

(assert (=> bm!191226 (= call!191227 (isEmptyLang!173 (ite c!476764 lt!1025846 (ite c!476770 lt!1025845 lt!1025848))))))

(declare-fun b!2921524 () Bool)

(assert (=> b!2921524 (= e!1843082 lt!1025847)))

(declare-fun b!2921525 () Bool)

(assert (=> b!2921525 (= e!1843072 (Concat!14320 lt!1025848 lt!1025847))))

(assert (= (and d!838589 c!476765) b!2921519))

(assert (= (and d!838589 (not c!476765)) b!2921511))

(assert (= (and b!2921511 c!476772) b!2921512))

(assert (= (and b!2921511 (not c!476772)) b!2921522))

(assert (= (and b!2921522 c!476774) b!2921517))

(assert (= (and b!2921522 (not c!476774)) b!2921523))

(assert (= (and b!2921523 c!476764) b!2921520))

(assert (= (and b!2921523 (not c!476764)) b!2921510))

(assert (= (and b!2921520 (not res!1206060)) b!2921504))

(assert (= (and b!2921520 c!476773) b!2921521))

(assert (= (and b!2921520 (not c!476773)) b!2921515))

(assert (= (and b!2921510 c!476770) b!2921503))

(assert (= (and b!2921510 (not c!476770)) b!2921508))

(assert (= (and b!2921503 c!476769) b!2921506))

(assert (= (and b!2921503 (not c!476769)) b!2921518))

(assert (= (and b!2921518 c!476768) b!2921501))

(assert (= (and b!2921518 (not c!476768)) b!2921514))

(assert (= (and b!2921508 (not res!1206061)) b!2921516))

(assert (= (and b!2921508 c!476767) b!2921505))

(assert (= (and b!2921508 (not c!476767)) b!2921513))

(assert (= (and b!2921513 c!476766) b!2921524))

(assert (= (and b!2921513 (not c!476766)) b!2921507))

(assert (= (and b!2921507 c!476771) b!2921502))

(assert (= (and b!2921507 (not c!476771)) b!2921525))

(assert (= (or b!2921503 b!2921508) bm!191225))

(assert (= (or b!2921503 b!2921508) bm!191222))

(assert (= (or b!2921503 b!2921508) bm!191224))

(assert (= (or b!2921518 b!2921516) bm!191223))

(assert (= (or b!2921504 b!2921513) bm!191221))

(assert (= (or b!2921520 bm!191222) bm!191220))

(assert (= (or b!2921520 bm!191224) bm!191226))

(assert (= (and d!838589 res!1206062) b!2921509))

(declare-fun m!3317295 () Bool)

(assert (=> d!838589 m!3317295))

(assert (=> d!838589 m!3317191))

(declare-fun m!3317297 () Bool)

(assert (=> bm!191221 m!3317297))

(declare-fun m!3317299 () Bool)

(assert (=> bm!191223 m!3317299))

(declare-fun m!3317301 () Bool)

(assert (=> bm!191220 m!3317301))

(declare-fun m!3317303 () Bool)

(assert (=> bm!191225 m!3317303))

(declare-fun m!3317305 () Bool)

(assert (=> b!2921509 m!3317305))

(assert (=> b!2921509 m!3317185))

(declare-fun m!3317307 () Bool)

(assert (=> bm!191226 m!3317307))

(declare-fun m!3317309 () Bool)

(assert (=> b!2921507 m!3317309))

(assert (=> b!2921212 d!838589))

(declare-fun d!838591 () Bool)

(declare-fun res!1206066 () Bool)

(declare-fun e!1843101 () Bool)

(assert (=> d!838591 (=> res!1206066 e!1843101)))

(assert (=> d!838591 (= res!1206066 ((_ is ElementMatch!8999) r!17423))))

(assert (=> d!838591 (= (validRegex!3732 r!17423) e!1843101)))

(declare-fun b!2921548 () Bool)

(declare-fun res!1206068 () Bool)

(declare-fun e!1843097 () Bool)

(assert (=> b!2921548 (=> (not res!1206068) (not e!1843097))))

(declare-fun call!191232 () Bool)

(assert (=> b!2921548 (= res!1206068 call!191232)))

(declare-fun e!1843098 () Bool)

(assert (=> b!2921548 (= e!1843098 e!1843097)))

(declare-fun bm!191227 () Bool)

(declare-fun call!191234 () Bool)

(declare-fun c!476785 () Bool)

(assert (=> bm!191227 (= call!191234 (validRegex!3732 (ite c!476785 (regTwo!18511 r!17423) (regOne!18510 r!17423))))))

(declare-fun b!2921549 () Bool)

(declare-fun e!1843096 () Bool)

(assert (=> b!2921549 (= e!1843096 call!191232)))

(declare-fun b!2921550 () Bool)

(declare-fun res!1206065 () Bool)

(declare-fun e!1843100 () Bool)

(assert (=> b!2921550 (=> res!1206065 e!1843100)))

(assert (=> b!2921550 (= res!1206065 (not ((_ is Concat!14320) r!17423)))))

(assert (=> b!2921550 (= e!1843098 e!1843100)))

(declare-fun b!2921551 () Bool)

(assert (=> b!2921551 (= e!1843100 e!1843096)))

(declare-fun res!1206069 () Bool)

(assert (=> b!2921551 (=> (not res!1206069) (not e!1843096))))

(assert (=> b!2921551 (= res!1206069 call!191234)))

(declare-fun b!2921552 () Bool)

(declare-fun e!1843095 () Bool)

(declare-fun call!191233 () Bool)

(assert (=> b!2921552 (= e!1843095 call!191233)))

(declare-fun bm!191228 () Bool)

(declare-fun c!476786 () Bool)

(assert (=> bm!191228 (= call!191233 (validRegex!3732 (ite c!476786 (reg!9328 r!17423) (ite c!476785 (regOne!18511 r!17423) (regTwo!18510 r!17423)))))))

(declare-fun b!2921553 () Bool)

(declare-fun e!1843099 () Bool)

(assert (=> b!2921553 (= e!1843101 e!1843099)))

(assert (=> b!2921553 (= c!476786 ((_ is Star!8999) r!17423))))

(declare-fun bm!191229 () Bool)

(assert (=> bm!191229 (= call!191232 call!191233)))

(declare-fun b!2921554 () Bool)

(assert (=> b!2921554 (= e!1843099 e!1843095)))

(declare-fun res!1206067 () Bool)

(assert (=> b!2921554 (= res!1206067 (not (nullable!2820 (reg!9328 r!17423))))))

(assert (=> b!2921554 (=> (not res!1206067) (not e!1843095))))

(declare-fun b!2921555 () Bool)

(assert (=> b!2921555 (= e!1843097 call!191234)))

(declare-fun b!2921556 () Bool)

(assert (=> b!2921556 (= e!1843099 e!1843098)))

(assert (=> b!2921556 (= c!476785 ((_ is Union!8999) r!17423))))

(assert (= (and d!838591 (not res!1206066)) b!2921553))

(assert (= (and b!2921553 c!476786) b!2921554))

(assert (= (and b!2921553 (not c!476786)) b!2921556))

(assert (= (and b!2921554 res!1206067) b!2921552))

(assert (= (and b!2921556 c!476785) b!2921548))

(assert (= (and b!2921556 (not c!476785)) b!2921550))

(assert (= (and b!2921548 res!1206068) b!2921555))

(assert (= (and b!2921550 (not res!1206065)) b!2921551))

(assert (= (and b!2921551 res!1206069) b!2921549))

(assert (= (or b!2921548 b!2921549) bm!191229))

(assert (= (or b!2921555 b!2921551) bm!191227))

(assert (= (or b!2921552 bm!191229) bm!191228))

(declare-fun m!3317311 () Bool)

(assert (=> bm!191227 m!3317311))

(declare-fun m!3317313 () Bool)

(assert (=> bm!191228 m!3317313))

(declare-fun m!3317315 () Bool)

(assert (=> b!2921554 m!3317315))

(assert (=> start!284412 d!838591))

(declare-fun b!2921778 () Bool)

(assert (=> b!2921778 true))

(assert (=> b!2921778 true))

(declare-fun bs!524963 () Bool)

(declare-fun b!2921777 () Bool)

(assert (= bs!524963 (and b!2921777 b!2921778)))

(declare-fun lambda!108660 () Int)

(declare-fun lambda!108659 () Int)

(assert (=> bs!524963 (not (= lambda!108660 lambda!108659))))

(assert (=> b!2921777 true))

(assert (=> b!2921777 true))

(declare-fun b!2921776 () Bool)

(declare-fun c!476861 () Bool)

(assert (=> b!2921776 (= c!476861 ((_ is Union!8999) r!17423))))

(declare-fun e!1843239 () Bool)

(declare-fun e!1843238 () Bool)

(assert (=> b!2921776 (= e!1843239 e!1843238)))

(declare-fun e!1843241 () Bool)

(declare-fun call!191291 () Bool)

(assert (=> b!2921777 (= e!1843241 call!191291)))

(declare-fun e!1843237 () Bool)

(assert (=> b!2921778 (= e!1843237 call!191291)))

(declare-fun c!476862 () Bool)

(declare-fun bm!191285 () Bool)

(declare-fun Exists!1370 (Int) Bool)

(assert (=> bm!191285 (= call!191291 (Exists!1370 (ite c!476862 lambda!108659 lambda!108660)))))

(declare-fun b!2921780 () Bool)

(declare-fun e!1843243 () Bool)

(assert (=> b!2921780 (= e!1843238 e!1843243)))

(declare-fun res!1206142 () Bool)

(assert (=> b!2921780 (= res!1206142 (matchRSpec!1136 (regOne!18511 r!17423) s!11993))))

(assert (=> b!2921780 (=> res!1206142 e!1843243)))

(declare-fun b!2921781 () Bool)

(assert (=> b!2921781 (= e!1843238 e!1843241)))

(assert (=> b!2921781 (= c!476862 ((_ is Star!8999) r!17423))))

(declare-fun b!2921782 () Bool)

(declare-fun e!1843240 () Bool)

(declare-fun e!1843242 () Bool)

(assert (=> b!2921782 (= e!1843240 e!1843242)))

(declare-fun res!1206143 () Bool)

(assert (=> b!2921782 (= res!1206143 (not ((_ is EmptyLang!8999) r!17423)))))

(assert (=> b!2921782 (=> (not res!1206143) (not e!1843242))))

(declare-fun bm!191286 () Bool)

(declare-fun call!191290 () Bool)

(assert (=> bm!191286 (= call!191290 (isEmpty!18990 s!11993))))

(declare-fun b!2921783 () Bool)

(declare-fun res!1206141 () Bool)

(assert (=> b!2921783 (=> res!1206141 e!1843237)))

(assert (=> b!2921783 (= res!1206141 call!191290)))

(assert (=> b!2921783 (= e!1843241 e!1843237)))

(declare-fun b!2921784 () Bool)

(assert (=> b!2921784 (= e!1843239 (= s!11993 (Cons!34740 (c!476681 r!17423) Nil!34740)))))

(declare-fun b!2921779 () Bool)

(assert (=> b!2921779 (= e!1843243 (matchRSpec!1136 (regTwo!18511 r!17423) s!11993))))

(declare-fun d!838593 () Bool)

(declare-fun c!476863 () Bool)

(assert (=> d!838593 (= c!476863 ((_ is EmptyExpr!8999) r!17423))))

(assert (=> d!838593 (= (matchRSpec!1136 r!17423 s!11993) e!1843240)))

(declare-fun b!2921785 () Bool)

(declare-fun c!476864 () Bool)

(assert (=> b!2921785 (= c!476864 ((_ is ElementMatch!8999) r!17423))))

(assert (=> b!2921785 (= e!1843242 e!1843239)))

(declare-fun b!2921786 () Bool)

(assert (=> b!2921786 (= e!1843240 call!191290)))

(assert (= (and d!838593 c!476863) b!2921786))

(assert (= (and d!838593 (not c!476863)) b!2921782))

(assert (= (and b!2921782 res!1206143) b!2921785))

(assert (= (and b!2921785 c!476864) b!2921784))

(assert (= (and b!2921785 (not c!476864)) b!2921776))

(assert (= (and b!2921776 c!476861) b!2921780))

(assert (= (and b!2921776 (not c!476861)) b!2921781))

(assert (= (and b!2921780 (not res!1206142)) b!2921779))

(assert (= (and b!2921781 c!476862) b!2921783))

(assert (= (and b!2921781 (not c!476862)) b!2921777))

(assert (= (and b!2921783 (not res!1206141)) b!2921778))

(assert (= (or b!2921778 b!2921777) bm!191285))

(assert (= (or b!2921786 b!2921783) bm!191286))

(declare-fun m!3317399 () Bool)

(assert (=> bm!191285 m!3317399))

(declare-fun m!3317401 () Bool)

(assert (=> b!2921780 m!3317401))

(assert (=> bm!191286 m!3317187))

(declare-fun m!3317403 () Bool)

(assert (=> b!2921779 m!3317403))

(assert (=> b!2921206 d!838593))

(declare-fun b!2921791 () Bool)

(declare-fun res!1206146 () Bool)

(declare-fun e!1843248 () Bool)

(assert (=> b!2921791 (=> (not res!1206146) (not e!1843248))))

(assert (=> b!2921791 (= res!1206146 (isEmpty!18990 (tail!4719 s!11993)))))

(declare-fun b!2921792 () Bool)

(declare-fun e!1843247 () Bool)

(declare-fun lt!1025886 () Bool)

(declare-fun call!191292 () Bool)

(assert (=> b!2921792 (= e!1843247 (= lt!1025886 call!191292))))

(declare-fun b!2921794 () Bool)

(declare-fun e!1843249 () Bool)

(assert (=> b!2921794 (= e!1843247 e!1843249)))

(declare-fun c!476866 () Bool)

(assert (=> b!2921794 (= c!476866 ((_ is EmptyLang!8999) r!17423))))

(declare-fun b!2921795 () Bool)

(declare-fun e!1843246 () Bool)

(declare-fun e!1843245 () Bool)

(assert (=> b!2921795 (= e!1843246 e!1843245)))

(declare-fun res!1206144 () Bool)

(assert (=> b!2921795 (=> res!1206144 e!1843245)))

(assert (=> b!2921795 (= res!1206144 call!191292)))

(declare-fun b!2921796 () Bool)

(declare-fun res!1206145 () Bool)

(declare-fun e!1843250 () Bool)

(assert (=> b!2921796 (=> res!1206145 e!1843250)))

(assert (=> b!2921796 (= res!1206145 e!1843248)))

(declare-fun res!1206151 () Bool)

(assert (=> b!2921796 (=> (not res!1206151) (not e!1843248))))

(assert (=> b!2921796 (= res!1206151 lt!1025886)))

(declare-fun b!2921797 () Bool)

(assert (=> b!2921797 (= e!1843250 e!1843246)))

(declare-fun res!1206149 () Bool)

(assert (=> b!2921797 (=> (not res!1206149) (not e!1843246))))

(assert (=> b!2921797 (= res!1206149 (not lt!1025886))))

(declare-fun b!2921798 () Bool)

(assert (=> b!2921798 (= e!1843245 (not (= (head!6493 s!11993) (c!476681 r!17423))))))

(declare-fun b!2921799 () Bool)

(declare-fun e!1843244 () Bool)

(assert (=> b!2921799 (= e!1843244 (nullable!2820 r!17423))))

(declare-fun b!2921800 () Bool)

(assert (=> b!2921800 (= e!1843244 (matchR!3881 (derivativeStep!2434 r!17423 (head!6493 s!11993)) (tail!4719 s!11993)))))

(declare-fun b!2921801 () Bool)

(assert (=> b!2921801 (= e!1843249 (not lt!1025886))))

(declare-fun d!838613 () Bool)

(assert (=> d!838613 e!1843247))

(declare-fun c!476865 () Bool)

(assert (=> d!838613 (= c!476865 ((_ is EmptyExpr!8999) r!17423))))

(assert (=> d!838613 (= lt!1025886 e!1843244)))

(declare-fun c!476867 () Bool)

(assert (=> d!838613 (= c!476867 (isEmpty!18990 s!11993))))

(assert (=> d!838613 (validRegex!3732 r!17423)))

(assert (=> d!838613 (= (matchR!3881 r!17423 s!11993) lt!1025886)))

(declare-fun b!2921793 () Bool)

(declare-fun res!1206148 () Bool)

(assert (=> b!2921793 (=> (not res!1206148) (not e!1843248))))

(assert (=> b!2921793 (= res!1206148 (not call!191292))))

(declare-fun b!2921802 () Bool)

(declare-fun res!1206147 () Bool)

(assert (=> b!2921802 (=> res!1206147 e!1843245)))

(assert (=> b!2921802 (= res!1206147 (not (isEmpty!18990 (tail!4719 s!11993))))))

(declare-fun bm!191287 () Bool)

(assert (=> bm!191287 (= call!191292 (isEmpty!18990 s!11993))))

(declare-fun b!2921803 () Bool)

(declare-fun res!1206150 () Bool)

(assert (=> b!2921803 (=> res!1206150 e!1843250)))

(assert (=> b!2921803 (= res!1206150 (not ((_ is ElementMatch!8999) r!17423)))))

(assert (=> b!2921803 (= e!1843249 e!1843250)))

(declare-fun b!2921804 () Bool)

(assert (=> b!2921804 (= e!1843248 (= (head!6493 s!11993) (c!476681 r!17423)))))

(assert (= (and d!838613 c!476867) b!2921799))

(assert (= (and d!838613 (not c!476867)) b!2921800))

(assert (= (and d!838613 c!476865) b!2921792))

(assert (= (and d!838613 (not c!476865)) b!2921794))

(assert (= (and b!2921794 c!476866) b!2921801))

(assert (= (and b!2921794 (not c!476866)) b!2921803))

(assert (= (and b!2921803 (not res!1206150)) b!2921796))

(assert (= (and b!2921796 res!1206151) b!2921793))

(assert (= (and b!2921793 res!1206148) b!2921791))

(assert (= (and b!2921791 res!1206146) b!2921804))

(assert (= (and b!2921796 (not res!1206145)) b!2921797))

(assert (= (and b!2921797 res!1206149) b!2921795))

(assert (= (and b!2921795 (not res!1206144)) b!2921802))

(assert (= (and b!2921802 (not res!1206147)) b!2921798))

(assert (= (or b!2921792 b!2921793 b!2921795) bm!191287))

(assert (=> b!2921800 m!3317177))

(assert (=> b!2921800 m!3317177))

(declare-fun m!3317405 () Bool)

(assert (=> b!2921800 m!3317405))

(assert (=> b!2921800 m!3317181))

(assert (=> b!2921800 m!3317405))

(assert (=> b!2921800 m!3317181))

(declare-fun m!3317407 () Bool)

(assert (=> b!2921800 m!3317407))

(assert (=> b!2921799 m!3317243))

(assert (=> bm!191287 m!3317187))

(assert (=> b!2921802 m!3317181))

(assert (=> b!2921802 m!3317181))

(assert (=> b!2921802 m!3317189))

(assert (=> d!838613 m!3317187))

(assert (=> d!838613 m!3317169))

(assert (=> b!2921804 m!3317177))

(assert (=> b!2921798 m!3317177))

(assert (=> b!2921791 m!3317181))

(assert (=> b!2921791 m!3317181))

(assert (=> b!2921791 m!3317189))

(assert (=> b!2921206 d!838613))

(declare-fun d!838615 () Bool)

(assert (=> d!838615 (= (matchR!3881 r!17423 s!11993) (matchRSpec!1136 r!17423 s!11993))))

(declare-fun lt!1025889 () Unit!48337)

(declare-fun choose!17228 (Regex!8999 List!34864) Unit!48337)

(assert (=> d!838615 (= lt!1025889 (choose!17228 r!17423 s!11993))))

(assert (=> d!838615 (validRegex!3732 r!17423)))

(assert (=> d!838615 (= (mainMatchTheorem!1136 r!17423 s!11993) lt!1025889)))

(declare-fun bs!524964 () Bool)

(assert (= bs!524964 d!838615))

(assert (=> bs!524964 m!3317147))

(assert (=> bs!524964 m!3317145))

(declare-fun m!3317409 () Bool)

(assert (=> bs!524964 m!3317409))

(assert (=> bs!524964 m!3317169))

(assert (=> b!2921206 d!838615))

(declare-fun d!838617 () Bool)

(declare-fun res!1206153 () Bool)

(declare-fun e!1843257 () Bool)

(assert (=> d!838617 (=> res!1206153 e!1843257)))

(assert (=> d!838617 (= res!1206153 ((_ is ElementMatch!8999) lt!1025799))))

(assert (=> d!838617 (= (validRegex!3732 lt!1025799) e!1843257)))

(declare-fun b!2921805 () Bool)

(declare-fun res!1206155 () Bool)

(declare-fun e!1843253 () Bool)

(assert (=> b!2921805 (=> (not res!1206155) (not e!1843253))))

(declare-fun call!191293 () Bool)

(assert (=> b!2921805 (= res!1206155 call!191293)))

(declare-fun e!1843254 () Bool)

(assert (=> b!2921805 (= e!1843254 e!1843253)))

(declare-fun bm!191288 () Bool)

(declare-fun call!191295 () Bool)

(declare-fun c!476868 () Bool)

(assert (=> bm!191288 (= call!191295 (validRegex!3732 (ite c!476868 (regTwo!18511 lt!1025799) (regOne!18510 lt!1025799))))))

(declare-fun b!2921806 () Bool)

(declare-fun e!1843252 () Bool)

(assert (=> b!2921806 (= e!1843252 call!191293)))

(declare-fun b!2921807 () Bool)

(declare-fun res!1206152 () Bool)

(declare-fun e!1843256 () Bool)

(assert (=> b!2921807 (=> res!1206152 e!1843256)))

(assert (=> b!2921807 (= res!1206152 (not ((_ is Concat!14320) lt!1025799)))))

(assert (=> b!2921807 (= e!1843254 e!1843256)))

(declare-fun b!2921808 () Bool)

(assert (=> b!2921808 (= e!1843256 e!1843252)))

(declare-fun res!1206156 () Bool)

(assert (=> b!2921808 (=> (not res!1206156) (not e!1843252))))

(assert (=> b!2921808 (= res!1206156 call!191295)))

(declare-fun b!2921809 () Bool)

(declare-fun e!1843251 () Bool)

(declare-fun call!191294 () Bool)

(assert (=> b!2921809 (= e!1843251 call!191294)))

(declare-fun bm!191289 () Bool)

(declare-fun c!476869 () Bool)

(assert (=> bm!191289 (= call!191294 (validRegex!3732 (ite c!476869 (reg!9328 lt!1025799) (ite c!476868 (regOne!18511 lt!1025799) (regTwo!18510 lt!1025799)))))))

(declare-fun b!2921810 () Bool)

(declare-fun e!1843255 () Bool)

(assert (=> b!2921810 (= e!1843257 e!1843255)))

(assert (=> b!2921810 (= c!476869 ((_ is Star!8999) lt!1025799))))

(declare-fun bm!191290 () Bool)

(assert (=> bm!191290 (= call!191293 call!191294)))

(declare-fun b!2921811 () Bool)

(assert (=> b!2921811 (= e!1843255 e!1843251)))

(declare-fun res!1206154 () Bool)

(assert (=> b!2921811 (= res!1206154 (not (nullable!2820 (reg!9328 lt!1025799))))))

(assert (=> b!2921811 (=> (not res!1206154) (not e!1843251))))

(declare-fun b!2921812 () Bool)

(assert (=> b!2921812 (= e!1843253 call!191295)))

(declare-fun b!2921813 () Bool)

(assert (=> b!2921813 (= e!1843255 e!1843254)))

(assert (=> b!2921813 (= c!476868 ((_ is Union!8999) lt!1025799))))

(assert (= (and d!838617 (not res!1206153)) b!2921810))

(assert (= (and b!2921810 c!476869) b!2921811))

(assert (= (and b!2921810 (not c!476869)) b!2921813))

(assert (= (and b!2921811 res!1206154) b!2921809))

(assert (= (and b!2921813 c!476868) b!2921805))

(assert (= (and b!2921813 (not c!476868)) b!2921807))

(assert (= (and b!2921805 res!1206155) b!2921812))

(assert (= (and b!2921807 (not res!1206152)) b!2921808))

(assert (= (and b!2921808 res!1206156) b!2921806))

(assert (= (or b!2921805 b!2921806) bm!191290))

(assert (= (or b!2921812 b!2921808) bm!191288))

(assert (= (or b!2921809 bm!191290) bm!191289))

(declare-fun m!3317411 () Bool)

(assert (=> bm!191288 m!3317411))

(declare-fun m!3317413 () Bool)

(assert (=> bm!191289 m!3317413))

(declare-fun m!3317415 () Bool)

(assert (=> b!2921811 m!3317415))

(assert (=> b!2921215 d!838617))

(declare-fun b!2921814 () Bool)

(declare-fun res!1206159 () Bool)

(declare-fun e!1843262 () Bool)

(assert (=> b!2921814 (=> (not res!1206159) (not e!1843262))))

(assert (=> b!2921814 (= res!1206159 (isEmpty!18990 (tail!4719 s!11993)))))

(declare-fun b!2921815 () Bool)

(declare-fun e!1843261 () Bool)

(declare-fun lt!1025890 () Bool)

(declare-fun call!191296 () Bool)

(assert (=> b!2921815 (= e!1843261 (= lt!1025890 call!191296))))

(declare-fun b!2921817 () Bool)

(declare-fun e!1843263 () Bool)

(assert (=> b!2921817 (= e!1843261 e!1843263)))

(declare-fun c!476871 () Bool)

(assert (=> b!2921817 (= c!476871 ((_ is EmptyLang!8999) (regOne!18511 r!17423)))))

(declare-fun b!2921818 () Bool)

(declare-fun e!1843260 () Bool)

(declare-fun e!1843259 () Bool)

(assert (=> b!2921818 (= e!1843260 e!1843259)))

(declare-fun res!1206157 () Bool)

(assert (=> b!2921818 (=> res!1206157 e!1843259)))

(assert (=> b!2921818 (= res!1206157 call!191296)))

(declare-fun b!2921819 () Bool)

(declare-fun res!1206158 () Bool)

(declare-fun e!1843264 () Bool)

(assert (=> b!2921819 (=> res!1206158 e!1843264)))

(assert (=> b!2921819 (= res!1206158 e!1843262)))

(declare-fun res!1206164 () Bool)

(assert (=> b!2921819 (=> (not res!1206164) (not e!1843262))))

(assert (=> b!2921819 (= res!1206164 lt!1025890)))

(declare-fun b!2921820 () Bool)

(assert (=> b!2921820 (= e!1843264 e!1843260)))

(declare-fun res!1206162 () Bool)

(assert (=> b!2921820 (=> (not res!1206162) (not e!1843260))))

(assert (=> b!2921820 (= res!1206162 (not lt!1025890))))

(declare-fun b!2921821 () Bool)

(assert (=> b!2921821 (= e!1843259 (not (= (head!6493 s!11993) (c!476681 (regOne!18511 r!17423)))))))

(declare-fun b!2921822 () Bool)

(declare-fun e!1843258 () Bool)

(assert (=> b!2921822 (= e!1843258 (nullable!2820 (regOne!18511 r!17423)))))

(declare-fun b!2921823 () Bool)

(assert (=> b!2921823 (= e!1843258 (matchR!3881 (derivativeStep!2434 (regOne!18511 r!17423) (head!6493 s!11993)) (tail!4719 s!11993)))))

(declare-fun b!2921824 () Bool)

(assert (=> b!2921824 (= e!1843263 (not lt!1025890))))

(declare-fun d!838619 () Bool)

(assert (=> d!838619 e!1843261))

(declare-fun c!476870 () Bool)

(assert (=> d!838619 (= c!476870 ((_ is EmptyExpr!8999) (regOne!18511 r!17423)))))

(assert (=> d!838619 (= lt!1025890 e!1843258)))

(declare-fun c!476872 () Bool)

(assert (=> d!838619 (= c!476872 (isEmpty!18990 s!11993))))

(assert (=> d!838619 (validRegex!3732 (regOne!18511 r!17423))))

(assert (=> d!838619 (= (matchR!3881 (regOne!18511 r!17423) s!11993) lt!1025890)))

(declare-fun b!2921816 () Bool)

(declare-fun res!1206161 () Bool)

(assert (=> b!2921816 (=> (not res!1206161) (not e!1843262))))

(assert (=> b!2921816 (= res!1206161 (not call!191296))))

(declare-fun b!2921825 () Bool)

(declare-fun res!1206160 () Bool)

(assert (=> b!2921825 (=> res!1206160 e!1843259)))

(assert (=> b!2921825 (= res!1206160 (not (isEmpty!18990 (tail!4719 s!11993))))))

(declare-fun bm!191291 () Bool)

(assert (=> bm!191291 (= call!191296 (isEmpty!18990 s!11993))))

(declare-fun b!2921826 () Bool)

(declare-fun res!1206163 () Bool)

(assert (=> b!2921826 (=> res!1206163 e!1843264)))

(assert (=> b!2921826 (= res!1206163 (not ((_ is ElementMatch!8999) (regOne!18511 r!17423))))))

(assert (=> b!2921826 (= e!1843263 e!1843264)))

(declare-fun b!2921827 () Bool)

(assert (=> b!2921827 (= e!1843262 (= (head!6493 s!11993) (c!476681 (regOne!18511 r!17423))))))

(assert (= (and d!838619 c!476872) b!2921822))

(assert (= (and d!838619 (not c!476872)) b!2921823))

(assert (= (and d!838619 c!476870) b!2921815))

(assert (= (and d!838619 (not c!476870)) b!2921817))

(assert (= (and b!2921817 c!476871) b!2921824))

(assert (= (and b!2921817 (not c!476871)) b!2921826))

(assert (= (and b!2921826 (not res!1206163)) b!2921819))

(assert (= (and b!2921819 res!1206164) b!2921816))

(assert (= (and b!2921816 res!1206161) b!2921814))

(assert (= (and b!2921814 res!1206159) b!2921827))

(assert (= (and b!2921819 (not res!1206158)) b!2921820))

(assert (= (and b!2921820 res!1206162) b!2921818))

(assert (= (and b!2921818 (not res!1206157)) b!2921825))

(assert (= (and b!2921825 (not res!1206160)) b!2921821))

(assert (= (or b!2921815 b!2921816 b!2921818) bm!191291))

(assert (=> b!2921823 m!3317177))

(assert (=> b!2921823 m!3317177))

(declare-fun m!3317417 () Bool)

(assert (=> b!2921823 m!3317417))

(assert (=> b!2921823 m!3317181))

(assert (=> b!2921823 m!3317417))

(assert (=> b!2921823 m!3317181))

(declare-fun m!3317419 () Bool)

(assert (=> b!2921823 m!3317419))

(assert (=> b!2921822 m!3317285))

(assert (=> bm!191291 m!3317187))

(assert (=> b!2921825 m!3317181))

(assert (=> b!2921825 m!3317181))

(assert (=> b!2921825 m!3317189))

(assert (=> d!838619 m!3317187))

(assert (=> d!838619 m!3317273))

(assert (=> b!2921827 m!3317177))

(assert (=> b!2921821 m!3317177))

(assert (=> b!2921814 m!3317181))

(assert (=> b!2921814 m!3317181))

(assert (=> b!2921814 m!3317189))

(assert (=> b!2921209 d!838619))

(declare-fun d!838621 () Bool)

(declare-fun e!1843269 () Bool)

(assert (=> d!838621 e!1843269))

(declare-fun res!1206169 () Bool)

(assert (=> d!838621 (=> res!1206169 e!1843269)))

(assert (=> d!838621 (= res!1206169 (matchR!3881 (regOne!18511 r!17423) s!11993))))

(declare-fun lt!1025893 () Unit!48337)

(declare-fun choose!17229 (Regex!8999 Regex!8999 List!34864) Unit!48337)

(assert (=> d!838621 (= lt!1025893 (choose!17229 (regOne!18511 r!17423) (regTwo!18511 r!17423) s!11993))))

(declare-fun e!1843270 () Bool)

(assert (=> d!838621 e!1843270))

(declare-fun res!1206170 () Bool)

(assert (=> d!838621 (=> (not res!1206170) (not e!1843270))))

(assert (=> d!838621 (= res!1206170 (validRegex!3732 (regOne!18511 r!17423)))))

(assert (=> d!838621 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!248 (regOne!18511 r!17423) (regTwo!18511 r!17423) s!11993) lt!1025893)))

(declare-fun b!2921832 () Bool)

(assert (=> b!2921832 (= e!1843270 (validRegex!3732 (regTwo!18511 r!17423)))))

(declare-fun b!2921833 () Bool)

(assert (=> b!2921833 (= e!1843269 (matchR!3881 (regTwo!18511 r!17423) s!11993))))

(assert (= (and d!838621 res!1206170) b!2921832))

(assert (= (and d!838621 (not res!1206169)) b!2921833))

(assert (=> d!838621 m!3317171))

(declare-fun m!3317421 () Bool)

(assert (=> d!838621 m!3317421))

(assert (=> d!838621 m!3317273))

(assert (=> b!2921832 m!3317191))

(assert (=> b!2921833 m!3317175))

(assert (=> b!2921209 d!838621))

(declare-fun b!2921838 () Bool)

(declare-fun e!1843273 () Bool)

(declare-fun tp!937384 () Bool)

(assert (=> b!2921838 (= e!1843273 (and tp_is_empty!15561 tp!937384))))

(assert (=> b!2921214 (= tp!937378 e!1843273)))

(assert (= (and b!2921214 ((_ is Cons!34740) (t!233929 s!11993))) b!2921838))

(declare-fun b!2921850 () Bool)

(declare-fun e!1843276 () Bool)

(declare-fun tp!937397 () Bool)

(declare-fun tp!937396 () Bool)

(assert (=> b!2921850 (= e!1843276 (and tp!937397 tp!937396))))

(declare-fun b!2921851 () Bool)

(declare-fun tp!937399 () Bool)

(assert (=> b!2921851 (= e!1843276 tp!937399)))

(declare-fun b!2921849 () Bool)

(assert (=> b!2921849 (= e!1843276 tp_is_empty!15561)))

(assert (=> b!2921208 (= tp!937379 e!1843276)))

(declare-fun b!2921852 () Bool)

(declare-fun tp!937398 () Bool)

(declare-fun tp!937395 () Bool)

(assert (=> b!2921852 (= e!1843276 (and tp!937398 tp!937395))))

(assert (= (and b!2921208 ((_ is ElementMatch!8999) (regOne!18511 r!17423))) b!2921849))

(assert (= (and b!2921208 ((_ is Concat!14320) (regOne!18511 r!17423))) b!2921850))

(assert (= (and b!2921208 ((_ is Star!8999) (regOne!18511 r!17423))) b!2921851))

(assert (= (and b!2921208 ((_ is Union!8999) (regOne!18511 r!17423))) b!2921852))

(declare-fun b!2921854 () Bool)

(declare-fun e!1843277 () Bool)

(declare-fun tp!937402 () Bool)

(declare-fun tp!937401 () Bool)

(assert (=> b!2921854 (= e!1843277 (and tp!937402 tp!937401))))

(declare-fun b!2921855 () Bool)

(declare-fun tp!937404 () Bool)

(assert (=> b!2921855 (= e!1843277 tp!937404)))

(declare-fun b!2921853 () Bool)

(assert (=> b!2921853 (= e!1843277 tp_is_empty!15561)))

(assert (=> b!2921208 (= tp!937380 e!1843277)))

(declare-fun b!2921856 () Bool)

(declare-fun tp!937403 () Bool)

(declare-fun tp!937400 () Bool)

(assert (=> b!2921856 (= e!1843277 (and tp!937403 tp!937400))))

(assert (= (and b!2921208 ((_ is ElementMatch!8999) (regTwo!18511 r!17423))) b!2921853))

(assert (= (and b!2921208 ((_ is Concat!14320) (regTwo!18511 r!17423))) b!2921854))

(assert (= (and b!2921208 ((_ is Star!8999) (regTwo!18511 r!17423))) b!2921855))

(assert (= (and b!2921208 ((_ is Union!8999) (regTwo!18511 r!17423))) b!2921856))

(declare-fun b!2921858 () Bool)

(declare-fun e!1843278 () Bool)

(declare-fun tp!937407 () Bool)

(declare-fun tp!937406 () Bool)

(assert (=> b!2921858 (= e!1843278 (and tp!937407 tp!937406))))

(declare-fun b!2921859 () Bool)

(declare-fun tp!937409 () Bool)

(assert (=> b!2921859 (= e!1843278 tp!937409)))

(declare-fun b!2921857 () Bool)

(assert (=> b!2921857 (= e!1843278 tp_is_empty!15561)))

(assert (=> b!2921211 (= tp!937381 e!1843278)))

(declare-fun b!2921860 () Bool)

(declare-fun tp!937408 () Bool)

(declare-fun tp!937405 () Bool)

(assert (=> b!2921860 (= e!1843278 (and tp!937408 tp!937405))))

(assert (= (and b!2921211 ((_ is ElementMatch!8999) (regOne!18510 r!17423))) b!2921857))

(assert (= (and b!2921211 ((_ is Concat!14320) (regOne!18510 r!17423))) b!2921858))

(assert (= (and b!2921211 ((_ is Star!8999) (regOne!18510 r!17423))) b!2921859))

(assert (= (and b!2921211 ((_ is Union!8999) (regOne!18510 r!17423))) b!2921860))

(declare-fun b!2921862 () Bool)

(declare-fun e!1843279 () Bool)

(declare-fun tp!937412 () Bool)

(declare-fun tp!937411 () Bool)

(assert (=> b!2921862 (= e!1843279 (and tp!937412 tp!937411))))

(declare-fun b!2921863 () Bool)

(declare-fun tp!937414 () Bool)

(assert (=> b!2921863 (= e!1843279 tp!937414)))

(declare-fun b!2921861 () Bool)

(assert (=> b!2921861 (= e!1843279 tp_is_empty!15561)))

(assert (=> b!2921211 (= tp!937376 e!1843279)))

(declare-fun b!2921864 () Bool)

(declare-fun tp!937413 () Bool)

(declare-fun tp!937410 () Bool)

(assert (=> b!2921864 (= e!1843279 (and tp!937413 tp!937410))))

(assert (= (and b!2921211 ((_ is ElementMatch!8999) (regTwo!18510 r!17423))) b!2921861))

(assert (= (and b!2921211 ((_ is Concat!14320) (regTwo!18510 r!17423))) b!2921862))

(assert (= (and b!2921211 ((_ is Star!8999) (regTwo!18510 r!17423))) b!2921863))

(assert (= (and b!2921211 ((_ is Union!8999) (regTwo!18510 r!17423))) b!2921864))

(declare-fun b!2921866 () Bool)

(declare-fun e!1843280 () Bool)

(declare-fun tp!937417 () Bool)

(declare-fun tp!937416 () Bool)

(assert (=> b!2921866 (= e!1843280 (and tp!937417 tp!937416))))

(declare-fun b!2921867 () Bool)

(declare-fun tp!937419 () Bool)

(assert (=> b!2921867 (= e!1843280 tp!937419)))

(declare-fun b!2921865 () Bool)

(assert (=> b!2921865 (= e!1843280 tp_is_empty!15561)))

(assert (=> b!2921210 (= tp!937377 e!1843280)))

(declare-fun b!2921868 () Bool)

(declare-fun tp!937418 () Bool)

(declare-fun tp!937415 () Bool)

(assert (=> b!2921868 (= e!1843280 (and tp!937418 tp!937415))))

(assert (= (and b!2921210 ((_ is ElementMatch!8999) (reg!9328 r!17423))) b!2921865))

(assert (= (and b!2921210 ((_ is Concat!14320) (reg!9328 r!17423))) b!2921866))

(assert (= (and b!2921210 ((_ is Star!8999) (reg!9328 r!17423))) b!2921867))

(assert (= (and b!2921210 ((_ is Union!8999) (reg!9328 r!17423))) b!2921868))

(check-sat (not bm!191201) (not bm!191182) (not b!2921447) (not b!2921473) (not b!2921860) (not d!838587) (not bm!191218) (not bm!191287) (not bm!191228) (not b!2921259) (not d!838579) (not b!2921554) (not bm!191285) (not b!2921851) (not b!2921822) (not b!2921864) (not b!2921854) (not b!2921419) (not d!838613) (not b!2921257) (not d!838563) (not bm!191219) (not b!2921862) (not b!2921780) (not bm!191181) (not bm!191210) (not b!2921867) tp_is_empty!15561 (not bm!191216) (not b!2921850) (not b!2921791) (not b!2921445) (not b!2921856) (not b!2921779) (not b!2921449) (not b!2921811) (not bm!191291) (not b!2921798) (not b!2921459) (not b!2921417) (not bm!191227) (not b!2921799) (not d!838619) (not b!2921838) (not b!2921814) (not b!2921863) (not bm!191288) (not bm!191209) (not b!2921800) (not b!2921866) (not bm!191206) (not b!2921469) (not b!2921436) (not b!2921310) (not d!838621) (not b!2921507) (not b!2921827) (not bm!191286) (not b!2921852) (not b!2921855) (not b!2921859) (not b!2921858) (not bm!191212) (not b!2921452) (not b!2921475) (not b!2921255) (not bm!191220) (not bm!191207) (not bm!191208) (not bm!191213) (not b!2921509) (not b!2921821) (not d!838589) (not d!838583) (not d!838615) (not bm!191214) (not bm!191289) (not b!2921482) (not b!2921471) (not d!838577) (not b!2921833) (not b!2921868) (not d!838585) (not b!2921804) (not d!838567) (not bm!191202) (not b!2921470) (not b!2921484) (not b!2921443) (not b!2921256) (not bm!191225) (not b!2921444) (not bm!191223) (not b!2921832) (not b!2921825) (not bm!191221) (not b!2921462) (not b!2921802) (not b!2921248) (not b!2921823) (not bm!191172) (not b!2921261) (not bm!191226) (not bm!191204))
(check-sat)
