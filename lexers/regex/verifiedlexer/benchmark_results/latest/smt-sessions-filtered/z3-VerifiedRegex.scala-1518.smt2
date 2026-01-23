; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80190 () Bool)

(assert start!80190)

(declare-fun b!888085 () Bool)

(declare-fun e!582140 () Bool)

(declare-datatypes ((C!5160 0))(
  ( (C!5161 (val!2828 Int)) )
))
(declare-datatypes ((Regex!2295 0))(
  ( (ElementMatch!2295 (c!143612 C!5160)) (Concat!4128 (regOne!5102 Regex!2295) (regTwo!5102 Regex!2295)) (EmptyExpr!2295) (Star!2295 (reg!2624 Regex!2295)) (EmptyLang!2295) (Union!2295 (regOne!5103 Regex!2295) (regTwo!5103 Regex!2295)) )
))
(declare-fun r!15766 () Regex!2295)

(declare-fun validRegex!764 (Regex!2295) Bool)

(assert (=> b!888085 (= e!582140 (validRegex!764 (regOne!5103 r!15766)))))

(declare-datatypes ((List!9525 0))(
  ( (Nil!9509) (Cons!9509 (h!14910 C!5160) (t!100571 List!9525)) )
))
(declare-fun s!10566 () List!9525)

(declare-fun matchR!833 (Regex!2295 List!9525) Bool)

(declare-fun removeUselessConcat!32 (Regex!2295) Regex!2295)

(assert (=> b!888085 (matchR!833 (removeUselessConcat!32 (regOne!5103 r!15766)) s!10566)))

(declare-datatypes ((Unit!14169 0))(
  ( (Unit!14170) )
))
(declare-fun lt!331952 () Unit!14169)

(declare-fun lemmaRemoveUselessConcatSound!26 (Regex!2295 List!9525) Unit!14169)

(assert (=> b!888085 (= lt!331952 (lemmaRemoveUselessConcatSound!26 (regOne!5103 r!15766) s!10566))))

(declare-fun res!403929 () Bool)

(declare-fun e!582138 () Bool)

(assert (=> start!80190 (=> (not res!403929) (not e!582138))))

(assert (=> start!80190 (= res!403929 (validRegex!764 r!15766))))

(assert (=> start!80190 e!582138))

(declare-fun e!582137 () Bool)

(assert (=> start!80190 e!582137))

(declare-fun e!582141 () Bool)

(assert (=> start!80190 e!582141))

(declare-fun b!888086 () Bool)

(declare-fun e!582136 () Bool)

(assert (=> b!888086 (= e!582136 (matchR!833 (regTwo!5103 r!15766) s!10566))))

(declare-fun b!888087 () Bool)

(declare-fun tp!279820 () Bool)

(declare-fun tp!279823 () Bool)

(assert (=> b!888087 (= e!582137 (and tp!279820 tp!279823))))

(declare-fun b!888088 () Bool)

(declare-fun e!582139 () Bool)

(assert (=> b!888088 (= e!582138 (not e!582139))))

(declare-fun res!403930 () Bool)

(assert (=> b!888088 (=> res!403930 e!582139)))

(declare-fun lt!331951 () Bool)

(get-info :version)

(assert (=> b!888088 (= res!403930 (or (not lt!331951) (and ((_ is Concat!4128) r!15766) ((_ is EmptyExpr!2295) (regOne!5102 r!15766))) (and ((_ is Concat!4128) r!15766) ((_ is EmptyExpr!2295) (regTwo!5102 r!15766))) ((_ is Concat!4128) r!15766) (not ((_ is Union!2295) r!15766))))))

(declare-fun matchRSpec!96 (Regex!2295 List!9525) Bool)

(assert (=> b!888088 (= lt!331951 (matchRSpec!96 r!15766 s!10566))))

(assert (=> b!888088 (= lt!331951 (matchR!833 r!15766 s!10566))))

(declare-fun lt!331953 () Unit!14169)

(declare-fun mainMatchTheorem!96 (Regex!2295 List!9525) Unit!14169)

(assert (=> b!888088 (= lt!331953 (mainMatchTheorem!96 r!15766 s!10566))))

(declare-fun b!888089 () Bool)

(declare-fun tp!279821 () Bool)

(declare-fun tp!279824 () Bool)

(assert (=> b!888089 (= e!582137 (and tp!279821 tp!279824))))

(declare-fun b!888090 () Bool)

(declare-fun tp_is_empty!4233 () Bool)

(assert (=> b!888090 (= e!582137 tp_is_empty!4233)))

(declare-fun b!888091 () Bool)

(assert (=> b!888091 (= e!582139 e!582140)))

(declare-fun res!403932 () Bool)

(assert (=> b!888091 (=> res!403932 e!582140)))

(declare-fun lt!331954 () Bool)

(assert (=> b!888091 (= res!403932 (not lt!331954))))

(assert (=> b!888091 e!582136))

(declare-fun res!403931 () Bool)

(assert (=> b!888091 (=> res!403931 e!582136)))

(assert (=> b!888091 (= res!403931 lt!331954)))

(assert (=> b!888091 (= lt!331954 (matchR!833 (regOne!5103 r!15766) s!10566))))

(declare-fun lt!331955 () Unit!14169)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!6 (Regex!2295 Regex!2295 List!9525) Unit!14169)

(assert (=> b!888091 (= lt!331955 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!6 (regOne!5103 r!15766) (regTwo!5103 r!15766) s!10566))))

(declare-fun b!888092 () Bool)

(declare-fun tp!279819 () Bool)

(assert (=> b!888092 (= e!582141 (and tp_is_empty!4233 tp!279819))))

(declare-fun b!888093 () Bool)

(declare-fun tp!279822 () Bool)

(assert (=> b!888093 (= e!582137 tp!279822)))

(assert (= (and start!80190 res!403929) b!888088))

(assert (= (and b!888088 (not res!403930)) b!888091))

(assert (= (and b!888091 (not res!403931)) b!888086))

(assert (= (and b!888091 (not res!403932)) b!888085))

(assert (= (and start!80190 ((_ is ElementMatch!2295) r!15766)) b!888090))

(assert (= (and start!80190 ((_ is Concat!4128) r!15766)) b!888087))

(assert (= (and start!80190 ((_ is Star!2295) r!15766)) b!888093))

(assert (= (and start!80190 ((_ is Union!2295) r!15766)) b!888089))

(assert (= (and start!80190 ((_ is Cons!9509) s!10566)) b!888092))

(declare-fun m!1132875 () Bool)

(assert (=> b!888091 m!1132875))

(declare-fun m!1132877 () Bool)

(assert (=> b!888091 m!1132877))

(declare-fun m!1132879 () Bool)

(assert (=> b!888086 m!1132879))

(declare-fun m!1132881 () Bool)

(assert (=> b!888088 m!1132881))

(declare-fun m!1132883 () Bool)

(assert (=> b!888088 m!1132883))

(declare-fun m!1132885 () Bool)

(assert (=> b!888088 m!1132885))

(declare-fun m!1132887 () Bool)

(assert (=> start!80190 m!1132887))

(declare-fun m!1132889 () Bool)

(assert (=> b!888085 m!1132889))

(declare-fun m!1132891 () Bool)

(assert (=> b!888085 m!1132891))

(assert (=> b!888085 m!1132891))

(declare-fun m!1132893 () Bool)

(assert (=> b!888085 m!1132893))

(declare-fun m!1132895 () Bool)

(assert (=> b!888085 m!1132895))

(check-sat tp_is_empty!4233 (not b!888089) (not b!888088) (not b!888092) (not b!888086) (not b!888087) (not b!888091) (not start!80190) (not b!888093) (not b!888085))
(check-sat)
(get-model)

(declare-fun b!888139 () Bool)

(declare-fun e!582183 () Bool)

(declare-fun call!52195 () Bool)

(assert (=> b!888139 (= e!582183 call!52195)))

(declare-fun b!888140 () Bool)

(declare-fun e!582179 () Bool)

(declare-fun call!52196 () Bool)

(assert (=> b!888140 (= e!582179 call!52196)))

(declare-fun bm!52190 () Bool)

(declare-fun c!143623 () Bool)

(declare-fun c!143624 () Bool)

(assert (=> bm!52190 (= call!52196 (validRegex!764 (ite c!143624 (reg!2624 r!15766) (ite c!143623 (regOne!5103 r!15766) (regOne!5102 r!15766)))))))

(declare-fun b!888141 () Bool)

(declare-fun e!582182 () Bool)

(assert (=> b!888141 (= e!582182 e!582179)))

(declare-fun res!403962 () Bool)

(declare-fun nullable!593 (Regex!2295) Bool)

(assert (=> b!888141 (= res!403962 (not (nullable!593 (reg!2624 r!15766))))))

(assert (=> b!888141 (=> (not res!403962) (not e!582179))))

(declare-fun d!277113 () Bool)

(declare-fun res!403958 () Bool)

(declare-fun e!582180 () Bool)

(assert (=> d!277113 (=> res!403958 e!582180)))

(assert (=> d!277113 (= res!403958 ((_ is ElementMatch!2295) r!15766))))

(assert (=> d!277113 (= (validRegex!764 r!15766) e!582180)))

(declare-fun b!888142 () Bool)

(declare-fun e!582181 () Bool)

(assert (=> b!888142 (= e!582181 call!52195)))

(declare-fun b!888143 () Bool)

(declare-fun e!582177 () Bool)

(assert (=> b!888143 (= e!582182 e!582177)))

(assert (=> b!888143 (= c!143623 ((_ is Union!2295) r!15766))))

(declare-fun b!888144 () Bool)

(assert (=> b!888144 (= e!582180 e!582182)))

(assert (=> b!888144 (= c!143624 ((_ is Star!2295) r!15766))))

(declare-fun b!888145 () Bool)

(declare-fun res!403961 () Bool)

(assert (=> b!888145 (=> (not res!403961) (not e!582181))))

(declare-fun call!52197 () Bool)

(assert (=> b!888145 (= res!403961 call!52197)))

(assert (=> b!888145 (= e!582177 e!582181)))

(declare-fun b!888146 () Bool)

(declare-fun e!582178 () Bool)

(assert (=> b!888146 (= e!582178 e!582183)))

(declare-fun res!403960 () Bool)

(assert (=> b!888146 (=> (not res!403960) (not e!582183))))

(assert (=> b!888146 (= res!403960 call!52197)))

(declare-fun b!888147 () Bool)

(declare-fun res!403959 () Bool)

(assert (=> b!888147 (=> res!403959 e!582178)))

(assert (=> b!888147 (= res!403959 (not ((_ is Concat!4128) r!15766)))))

(assert (=> b!888147 (= e!582177 e!582178)))

(declare-fun bm!52191 () Bool)

(assert (=> bm!52191 (= call!52195 (validRegex!764 (ite c!143623 (regTwo!5103 r!15766) (regTwo!5102 r!15766))))))

(declare-fun bm!52192 () Bool)

(assert (=> bm!52192 (= call!52197 call!52196)))

(assert (= (and d!277113 (not res!403958)) b!888144))

(assert (= (and b!888144 c!143624) b!888141))

(assert (= (and b!888144 (not c!143624)) b!888143))

(assert (= (and b!888141 res!403962) b!888140))

(assert (= (and b!888143 c!143623) b!888145))

(assert (= (and b!888143 (not c!143623)) b!888147))

(assert (= (and b!888145 res!403961) b!888142))

(assert (= (and b!888147 (not res!403959)) b!888146))

(assert (= (and b!888146 res!403960) b!888139))

(assert (= (or b!888142 b!888139) bm!52191))

(assert (= (or b!888145 b!888146) bm!52192))

(assert (= (or b!888140 bm!52192) bm!52190))

(declare-fun m!1132903 () Bool)

(assert (=> bm!52190 m!1132903))

(declare-fun m!1132905 () Bool)

(assert (=> b!888141 m!1132905))

(declare-fun m!1132907 () Bool)

(assert (=> bm!52191 m!1132907))

(assert (=> start!80190 d!277113))

(declare-fun b!888204 () Bool)

(declare-fun res!404000 () Bool)

(declare-fun e!582216 () Bool)

(assert (=> b!888204 (=> res!404000 e!582216)))

(declare-fun e!582213 () Bool)

(assert (=> b!888204 (= res!404000 e!582213)))

(declare-fun res!404002 () Bool)

(assert (=> b!888204 (=> (not res!404002) (not e!582213))))

(declare-fun lt!331960 () Bool)

(assert (=> b!888204 (= res!404002 lt!331960)))

(declare-fun b!888205 () Bool)

(declare-fun res!403996 () Bool)

(assert (=> b!888205 (=> res!403996 e!582216)))

(assert (=> b!888205 (= res!403996 (not ((_ is ElementMatch!2295) (regTwo!5103 r!15766))))))

(declare-fun e!582212 () Bool)

(assert (=> b!888205 (= e!582212 e!582216)))

(declare-fun b!888206 () Bool)

(declare-fun res!404001 () Bool)

(assert (=> b!888206 (=> (not res!404001) (not e!582213))))

(declare-fun isEmpty!5715 (List!9525) Bool)

(declare-fun tail!1120 (List!9525) List!9525)

(assert (=> b!888206 (= res!404001 (isEmpty!5715 (tail!1120 s!10566)))))

(declare-fun b!888207 () Bool)

(declare-fun e!582214 () Bool)

(assert (=> b!888207 (= e!582214 e!582212)))

(declare-fun c!143638 () Bool)

(assert (=> b!888207 (= c!143638 ((_ is EmptyLang!2295) (regTwo!5103 r!15766)))))

(declare-fun bm!52197 () Bool)

(declare-fun call!52202 () Bool)

(assert (=> bm!52197 (= call!52202 (isEmpty!5715 s!10566))))

(declare-fun b!888208 () Bool)

(declare-fun e!582218 () Bool)

(assert (=> b!888208 (= e!582218 (nullable!593 (regTwo!5103 r!15766)))))

(declare-fun b!888209 () Bool)

(declare-fun head!1558 (List!9525) C!5160)

(assert (=> b!888209 (= e!582213 (= (head!1558 s!10566) (c!143612 (regTwo!5103 r!15766))))))

(declare-fun b!888210 () Bool)

(assert (=> b!888210 (= e!582212 (not lt!331960))))

(declare-fun b!888211 () Bool)

(declare-fun res!403999 () Bool)

(assert (=> b!888211 (=> (not res!403999) (not e!582213))))

(assert (=> b!888211 (= res!403999 (not call!52202))))

(declare-fun b!888212 () Bool)

(declare-fun res!403995 () Bool)

(declare-fun e!582215 () Bool)

(assert (=> b!888212 (=> res!403995 e!582215)))

(assert (=> b!888212 (= res!403995 (not (isEmpty!5715 (tail!1120 s!10566))))))

(declare-fun b!888213 () Bool)

(declare-fun derivativeStep!405 (Regex!2295 C!5160) Regex!2295)

(assert (=> b!888213 (= e!582218 (matchR!833 (derivativeStep!405 (regTwo!5103 r!15766) (head!1558 s!10566)) (tail!1120 s!10566)))))

(declare-fun b!888214 () Bool)

(declare-fun e!582217 () Bool)

(assert (=> b!888214 (= e!582216 e!582217)))

(declare-fun res!403997 () Bool)

(assert (=> b!888214 (=> (not res!403997) (not e!582217))))

(assert (=> b!888214 (= res!403997 (not lt!331960))))

(declare-fun b!888215 () Bool)

(assert (=> b!888215 (= e!582215 (not (= (head!1558 s!10566) (c!143612 (regTwo!5103 r!15766)))))))

(declare-fun b!888217 () Bool)

(assert (=> b!888217 (= e!582217 e!582215)))

(declare-fun res!403998 () Bool)

(assert (=> b!888217 (=> res!403998 e!582215)))

(assert (=> b!888217 (= res!403998 call!52202)))

(declare-fun b!888216 () Bool)

(assert (=> b!888216 (= e!582214 (= lt!331960 call!52202))))

(declare-fun d!277117 () Bool)

(assert (=> d!277117 e!582214))

(declare-fun c!143639 () Bool)

(assert (=> d!277117 (= c!143639 ((_ is EmptyExpr!2295) (regTwo!5103 r!15766)))))

(assert (=> d!277117 (= lt!331960 e!582218)))

(declare-fun c!143637 () Bool)

(assert (=> d!277117 (= c!143637 (isEmpty!5715 s!10566))))

(assert (=> d!277117 (validRegex!764 (regTwo!5103 r!15766))))

(assert (=> d!277117 (= (matchR!833 (regTwo!5103 r!15766) s!10566) lt!331960)))

(assert (= (and d!277117 c!143637) b!888208))

(assert (= (and d!277117 (not c!143637)) b!888213))

(assert (= (and d!277117 c!143639) b!888216))

(assert (= (and d!277117 (not c!143639)) b!888207))

(assert (= (and b!888207 c!143638) b!888210))

(assert (= (and b!888207 (not c!143638)) b!888205))

(assert (= (and b!888205 (not res!403996)) b!888204))

(assert (= (and b!888204 res!404002) b!888211))

(assert (= (and b!888211 res!403999) b!888206))

(assert (= (and b!888206 res!404001) b!888209))

(assert (= (and b!888204 (not res!404000)) b!888214))

(assert (= (and b!888214 res!403997) b!888217))

(assert (= (and b!888217 (not res!403998)) b!888212))

(assert (= (and b!888212 (not res!403995)) b!888215))

(assert (= (or b!888216 b!888211 b!888217) bm!52197))

(declare-fun m!1132909 () Bool)

(assert (=> b!888208 m!1132909))

(declare-fun m!1132911 () Bool)

(assert (=> b!888213 m!1132911))

(assert (=> b!888213 m!1132911))

(declare-fun m!1132913 () Bool)

(assert (=> b!888213 m!1132913))

(declare-fun m!1132915 () Bool)

(assert (=> b!888213 m!1132915))

(assert (=> b!888213 m!1132913))

(assert (=> b!888213 m!1132915))

(declare-fun m!1132917 () Bool)

(assert (=> b!888213 m!1132917))

(declare-fun m!1132919 () Bool)

(assert (=> bm!52197 m!1132919))

(assert (=> b!888206 m!1132915))

(assert (=> b!888206 m!1132915))

(declare-fun m!1132921 () Bool)

(assert (=> b!888206 m!1132921))

(assert (=> b!888215 m!1132911))

(assert (=> b!888209 m!1132911))

(assert (=> d!277117 m!1132919))

(declare-fun m!1132923 () Bool)

(assert (=> d!277117 m!1132923))

(assert (=> b!888212 m!1132915))

(assert (=> b!888212 m!1132915))

(assert (=> b!888212 m!1132921))

(assert (=> b!888086 d!277117))

(declare-fun b!888232 () Bool)

(declare-fun res!404016 () Bool)

(declare-fun e!582230 () Bool)

(assert (=> b!888232 (=> res!404016 e!582230)))

(declare-fun e!582226 () Bool)

(assert (=> b!888232 (= res!404016 e!582226)))

(declare-fun res!404018 () Bool)

(assert (=> b!888232 (=> (not res!404018) (not e!582226))))

(declare-fun lt!331962 () Bool)

(assert (=> b!888232 (= res!404018 lt!331962)))

(declare-fun b!888233 () Bool)

(declare-fun res!404012 () Bool)

(assert (=> b!888233 (=> res!404012 e!582230)))

(assert (=> b!888233 (= res!404012 (not ((_ is ElementMatch!2295) (regOne!5103 r!15766))))))

(declare-fun e!582224 () Bool)

(assert (=> b!888233 (= e!582224 e!582230)))

(declare-fun b!888234 () Bool)

(declare-fun res!404017 () Bool)

(assert (=> b!888234 (=> (not res!404017) (not e!582226))))

(assert (=> b!888234 (= res!404017 (isEmpty!5715 (tail!1120 s!10566)))))

(declare-fun b!888235 () Bool)

(declare-fun e!582228 () Bool)

(assert (=> b!888235 (= e!582228 e!582224)))

(declare-fun c!143644 () Bool)

(assert (=> b!888235 (= c!143644 ((_ is EmptyLang!2295) (regOne!5103 r!15766)))))

(declare-fun bm!52199 () Bool)

(declare-fun call!52204 () Bool)

(assert (=> bm!52199 (= call!52204 (isEmpty!5715 s!10566))))

(declare-fun b!888236 () Bool)

(declare-fun e!582232 () Bool)

(assert (=> b!888236 (= e!582232 (nullable!593 (regOne!5103 r!15766)))))

(declare-fun b!888237 () Bool)

(assert (=> b!888237 (= e!582226 (= (head!1558 s!10566) (c!143612 (regOne!5103 r!15766))))))

(declare-fun b!888238 () Bool)

(assert (=> b!888238 (= e!582224 (not lt!331962))))

(declare-fun b!888239 () Bool)

(declare-fun res!404015 () Bool)

(assert (=> b!888239 (=> (not res!404015) (not e!582226))))

(assert (=> b!888239 (= res!404015 (not call!52204))))

(declare-fun b!888240 () Bool)

(declare-fun res!404010 () Bool)

(declare-fun e!582229 () Bool)

(assert (=> b!888240 (=> res!404010 e!582229)))

(assert (=> b!888240 (= res!404010 (not (isEmpty!5715 (tail!1120 s!10566))))))

(declare-fun b!888241 () Bool)

(assert (=> b!888241 (= e!582232 (matchR!833 (derivativeStep!405 (regOne!5103 r!15766) (head!1558 s!10566)) (tail!1120 s!10566)))))

(declare-fun b!888242 () Bool)

(declare-fun e!582231 () Bool)

(assert (=> b!888242 (= e!582230 e!582231)))

(declare-fun res!404013 () Bool)

(assert (=> b!888242 (=> (not res!404013) (not e!582231))))

(assert (=> b!888242 (= res!404013 (not lt!331962))))

(declare-fun b!888243 () Bool)

(assert (=> b!888243 (= e!582229 (not (= (head!1558 s!10566) (c!143612 (regOne!5103 r!15766)))))))

(declare-fun b!888245 () Bool)

(assert (=> b!888245 (= e!582231 e!582229)))

(declare-fun res!404014 () Bool)

(assert (=> b!888245 (=> res!404014 e!582229)))

(assert (=> b!888245 (= res!404014 call!52204)))

(declare-fun b!888244 () Bool)

(assert (=> b!888244 (= e!582228 (= lt!331962 call!52204))))

(declare-fun d!277119 () Bool)

(assert (=> d!277119 e!582228))

(declare-fun c!143645 () Bool)

(assert (=> d!277119 (= c!143645 ((_ is EmptyExpr!2295) (regOne!5103 r!15766)))))

(assert (=> d!277119 (= lt!331962 e!582232)))

(declare-fun c!143643 () Bool)

(assert (=> d!277119 (= c!143643 (isEmpty!5715 s!10566))))

(assert (=> d!277119 (validRegex!764 (regOne!5103 r!15766))))

(assert (=> d!277119 (= (matchR!833 (regOne!5103 r!15766) s!10566) lt!331962)))

(assert (= (and d!277119 c!143643) b!888236))

(assert (= (and d!277119 (not c!143643)) b!888241))

(assert (= (and d!277119 c!143645) b!888244))

(assert (= (and d!277119 (not c!143645)) b!888235))

(assert (= (and b!888235 c!143644) b!888238))

(assert (= (and b!888235 (not c!143644)) b!888233))

(assert (= (and b!888233 (not res!404012)) b!888232))

(assert (= (and b!888232 res!404018) b!888239))

(assert (= (and b!888239 res!404015) b!888234))

(assert (= (and b!888234 res!404017) b!888237))

(assert (= (and b!888232 (not res!404016)) b!888242))

(assert (= (and b!888242 res!404013) b!888245))

(assert (= (and b!888245 (not res!404014)) b!888240))

(assert (= (and b!888240 (not res!404010)) b!888243))

(assert (= (or b!888244 b!888239 b!888245) bm!52199))

(declare-fun m!1132925 () Bool)

(assert (=> b!888236 m!1132925))

(assert (=> b!888241 m!1132911))

(assert (=> b!888241 m!1132911))

(declare-fun m!1132927 () Bool)

(assert (=> b!888241 m!1132927))

(assert (=> b!888241 m!1132915))

(assert (=> b!888241 m!1132927))

(assert (=> b!888241 m!1132915))

(declare-fun m!1132929 () Bool)

(assert (=> b!888241 m!1132929))

(assert (=> bm!52199 m!1132919))

(assert (=> b!888234 m!1132915))

(assert (=> b!888234 m!1132915))

(assert (=> b!888234 m!1132921))

(assert (=> b!888243 m!1132911))

(assert (=> b!888237 m!1132911))

(assert (=> d!277119 m!1132919))

(assert (=> d!277119 m!1132889))

(assert (=> b!888240 m!1132915))

(assert (=> b!888240 m!1132915))

(assert (=> b!888240 m!1132921))

(assert (=> b!888091 d!277119))

(declare-fun d!277121 () Bool)

(declare-fun e!582238 () Bool)

(assert (=> d!277121 e!582238))

(declare-fun res!404023 () Bool)

(assert (=> d!277121 (=> res!404023 e!582238)))

(assert (=> d!277121 (= res!404023 (matchR!833 (regOne!5103 r!15766) s!10566))))

(declare-fun lt!331965 () Unit!14169)

(declare-fun choose!5296 (Regex!2295 Regex!2295 List!9525) Unit!14169)

(assert (=> d!277121 (= lt!331965 (choose!5296 (regOne!5103 r!15766) (regTwo!5103 r!15766) s!10566))))

(declare-fun e!582237 () Bool)

(assert (=> d!277121 e!582237))

(declare-fun res!404024 () Bool)

(assert (=> d!277121 (=> (not res!404024) (not e!582237))))

(assert (=> d!277121 (= res!404024 (validRegex!764 (regOne!5103 r!15766)))))

(assert (=> d!277121 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!6 (regOne!5103 r!15766) (regTwo!5103 r!15766) s!10566) lt!331965)))

(declare-fun b!888250 () Bool)

(assert (=> b!888250 (= e!582237 (validRegex!764 (regTwo!5103 r!15766)))))

(declare-fun b!888251 () Bool)

(assert (=> b!888251 (= e!582238 (matchR!833 (regTwo!5103 r!15766) s!10566))))

(assert (= (and d!277121 res!404024) b!888250))

(assert (= (and d!277121 (not res!404023)) b!888251))

(assert (=> d!277121 m!1132875))

(declare-fun m!1132947 () Bool)

(assert (=> d!277121 m!1132947))

(assert (=> d!277121 m!1132889))

(assert (=> b!888250 m!1132923))

(assert (=> b!888251 m!1132879))

(assert (=> b!888091 d!277121))

(declare-fun b!888252 () Bool)

(declare-fun e!582245 () Bool)

(declare-fun call!52205 () Bool)

(assert (=> b!888252 (= e!582245 call!52205)))

(declare-fun b!888253 () Bool)

(declare-fun e!582241 () Bool)

(declare-fun call!52206 () Bool)

(assert (=> b!888253 (= e!582241 call!52206)))

(declare-fun c!143647 () Bool)

(declare-fun c!143646 () Bool)

(declare-fun bm!52200 () Bool)

(assert (=> bm!52200 (= call!52206 (validRegex!764 (ite c!143647 (reg!2624 (regOne!5103 r!15766)) (ite c!143646 (regOne!5103 (regOne!5103 r!15766)) (regOne!5102 (regOne!5103 r!15766))))))))

(declare-fun b!888254 () Bool)

(declare-fun e!582244 () Bool)

(assert (=> b!888254 (= e!582244 e!582241)))

(declare-fun res!404029 () Bool)

(assert (=> b!888254 (= res!404029 (not (nullable!593 (reg!2624 (regOne!5103 r!15766)))))))

(assert (=> b!888254 (=> (not res!404029) (not e!582241))))

(declare-fun d!277125 () Bool)

(declare-fun res!404025 () Bool)

(declare-fun e!582242 () Bool)

(assert (=> d!277125 (=> res!404025 e!582242)))

(assert (=> d!277125 (= res!404025 ((_ is ElementMatch!2295) (regOne!5103 r!15766)))))

(assert (=> d!277125 (= (validRegex!764 (regOne!5103 r!15766)) e!582242)))

(declare-fun b!888255 () Bool)

(declare-fun e!582243 () Bool)

(assert (=> b!888255 (= e!582243 call!52205)))

(declare-fun b!888256 () Bool)

(declare-fun e!582239 () Bool)

(assert (=> b!888256 (= e!582244 e!582239)))

(assert (=> b!888256 (= c!143646 ((_ is Union!2295) (regOne!5103 r!15766)))))

(declare-fun b!888257 () Bool)

(assert (=> b!888257 (= e!582242 e!582244)))

(assert (=> b!888257 (= c!143647 ((_ is Star!2295) (regOne!5103 r!15766)))))

(declare-fun b!888258 () Bool)

(declare-fun res!404028 () Bool)

(assert (=> b!888258 (=> (not res!404028) (not e!582243))))

(declare-fun call!52207 () Bool)

(assert (=> b!888258 (= res!404028 call!52207)))

(assert (=> b!888258 (= e!582239 e!582243)))

(declare-fun b!888259 () Bool)

(declare-fun e!582240 () Bool)

(assert (=> b!888259 (= e!582240 e!582245)))

(declare-fun res!404027 () Bool)

(assert (=> b!888259 (=> (not res!404027) (not e!582245))))

(assert (=> b!888259 (= res!404027 call!52207)))

(declare-fun b!888260 () Bool)

(declare-fun res!404026 () Bool)

(assert (=> b!888260 (=> res!404026 e!582240)))

(assert (=> b!888260 (= res!404026 (not ((_ is Concat!4128) (regOne!5103 r!15766))))))

(assert (=> b!888260 (= e!582239 e!582240)))

(declare-fun bm!52201 () Bool)

(assert (=> bm!52201 (= call!52205 (validRegex!764 (ite c!143646 (regTwo!5103 (regOne!5103 r!15766)) (regTwo!5102 (regOne!5103 r!15766)))))))

(declare-fun bm!52202 () Bool)

(assert (=> bm!52202 (= call!52207 call!52206)))

(assert (= (and d!277125 (not res!404025)) b!888257))

(assert (= (and b!888257 c!143647) b!888254))

(assert (= (and b!888257 (not c!143647)) b!888256))

(assert (= (and b!888254 res!404029) b!888253))

(assert (= (and b!888256 c!143646) b!888258))

(assert (= (and b!888256 (not c!143646)) b!888260))

(assert (= (and b!888258 res!404028) b!888255))

(assert (= (and b!888260 (not res!404026)) b!888259))

(assert (= (and b!888259 res!404027) b!888252))

(assert (= (or b!888255 b!888252) bm!52201))

(assert (= (or b!888258 b!888259) bm!52202))

(assert (= (or b!888253 bm!52202) bm!52200))

(declare-fun m!1132949 () Bool)

(assert (=> bm!52200 m!1132949))

(declare-fun m!1132951 () Bool)

(assert (=> b!888254 m!1132951))

(declare-fun m!1132953 () Bool)

(assert (=> bm!52201 m!1132953))

(assert (=> b!888085 d!277125))

(declare-fun b!888261 () Bool)

(declare-fun res!404035 () Bool)

(declare-fun e!582250 () Bool)

(assert (=> b!888261 (=> res!404035 e!582250)))

(declare-fun e!582247 () Bool)

(assert (=> b!888261 (= res!404035 e!582247)))

(declare-fun res!404037 () Bool)

(assert (=> b!888261 (=> (not res!404037) (not e!582247))))

(declare-fun lt!331966 () Bool)

(assert (=> b!888261 (= res!404037 lt!331966)))

(declare-fun b!888262 () Bool)

(declare-fun res!404031 () Bool)

(assert (=> b!888262 (=> res!404031 e!582250)))

(assert (=> b!888262 (= res!404031 (not ((_ is ElementMatch!2295) (removeUselessConcat!32 (regOne!5103 r!15766)))))))

(declare-fun e!582246 () Bool)

(assert (=> b!888262 (= e!582246 e!582250)))

(declare-fun b!888263 () Bool)

(declare-fun res!404036 () Bool)

(assert (=> b!888263 (=> (not res!404036) (not e!582247))))

(assert (=> b!888263 (= res!404036 (isEmpty!5715 (tail!1120 s!10566)))))

(declare-fun b!888264 () Bool)

(declare-fun e!582248 () Bool)

(assert (=> b!888264 (= e!582248 e!582246)))

(declare-fun c!143649 () Bool)

(assert (=> b!888264 (= c!143649 ((_ is EmptyLang!2295) (removeUselessConcat!32 (regOne!5103 r!15766))))))

(declare-fun bm!52203 () Bool)

(declare-fun call!52208 () Bool)

(assert (=> bm!52203 (= call!52208 (isEmpty!5715 s!10566))))

(declare-fun b!888265 () Bool)

(declare-fun e!582252 () Bool)

(assert (=> b!888265 (= e!582252 (nullable!593 (removeUselessConcat!32 (regOne!5103 r!15766))))))

(declare-fun b!888266 () Bool)

(assert (=> b!888266 (= e!582247 (= (head!1558 s!10566) (c!143612 (removeUselessConcat!32 (regOne!5103 r!15766)))))))

(declare-fun b!888267 () Bool)

(assert (=> b!888267 (= e!582246 (not lt!331966))))

(declare-fun b!888268 () Bool)

(declare-fun res!404034 () Bool)

(assert (=> b!888268 (=> (not res!404034) (not e!582247))))

(assert (=> b!888268 (= res!404034 (not call!52208))))

(declare-fun b!888269 () Bool)

(declare-fun res!404030 () Bool)

(declare-fun e!582249 () Bool)

(assert (=> b!888269 (=> res!404030 e!582249)))

(assert (=> b!888269 (= res!404030 (not (isEmpty!5715 (tail!1120 s!10566))))))

(declare-fun b!888270 () Bool)

(assert (=> b!888270 (= e!582252 (matchR!833 (derivativeStep!405 (removeUselessConcat!32 (regOne!5103 r!15766)) (head!1558 s!10566)) (tail!1120 s!10566)))))

(declare-fun b!888271 () Bool)

(declare-fun e!582251 () Bool)

(assert (=> b!888271 (= e!582250 e!582251)))

(declare-fun res!404032 () Bool)

(assert (=> b!888271 (=> (not res!404032) (not e!582251))))

(assert (=> b!888271 (= res!404032 (not lt!331966))))

(declare-fun b!888272 () Bool)

(assert (=> b!888272 (= e!582249 (not (= (head!1558 s!10566) (c!143612 (removeUselessConcat!32 (regOne!5103 r!15766))))))))

(declare-fun b!888274 () Bool)

(assert (=> b!888274 (= e!582251 e!582249)))

(declare-fun res!404033 () Bool)

(assert (=> b!888274 (=> res!404033 e!582249)))

(assert (=> b!888274 (= res!404033 call!52208)))

(declare-fun b!888273 () Bool)

(assert (=> b!888273 (= e!582248 (= lt!331966 call!52208))))

(declare-fun d!277127 () Bool)

(assert (=> d!277127 e!582248))

(declare-fun c!143650 () Bool)

(assert (=> d!277127 (= c!143650 ((_ is EmptyExpr!2295) (removeUselessConcat!32 (regOne!5103 r!15766))))))

(assert (=> d!277127 (= lt!331966 e!582252)))

(declare-fun c!143648 () Bool)

(assert (=> d!277127 (= c!143648 (isEmpty!5715 s!10566))))

(assert (=> d!277127 (validRegex!764 (removeUselessConcat!32 (regOne!5103 r!15766)))))

(assert (=> d!277127 (= (matchR!833 (removeUselessConcat!32 (regOne!5103 r!15766)) s!10566) lt!331966)))

(assert (= (and d!277127 c!143648) b!888265))

(assert (= (and d!277127 (not c!143648)) b!888270))

(assert (= (and d!277127 c!143650) b!888273))

(assert (= (and d!277127 (not c!143650)) b!888264))

(assert (= (and b!888264 c!143649) b!888267))

(assert (= (and b!888264 (not c!143649)) b!888262))

(assert (= (and b!888262 (not res!404031)) b!888261))

(assert (= (and b!888261 res!404037) b!888268))

(assert (= (and b!888268 res!404034) b!888263))

(assert (= (and b!888263 res!404036) b!888266))

(assert (= (and b!888261 (not res!404035)) b!888271))

(assert (= (and b!888271 res!404032) b!888274))

(assert (= (and b!888274 (not res!404033)) b!888269))

(assert (= (and b!888269 (not res!404030)) b!888272))

(assert (= (or b!888273 b!888268 b!888274) bm!52203))

(assert (=> b!888265 m!1132891))

(declare-fun m!1132955 () Bool)

(assert (=> b!888265 m!1132955))

(assert (=> b!888270 m!1132911))

(assert (=> b!888270 m!1132891))

(assert (=> b!888270 m!1132911))

(declare-fun m!1132957 () Bool)

(assert (=> b!888270 m!1132957))

(assert (=> b!888270 m!1132915))

(assert (=> b!888270 m!1132957))

(assert (=> b!888270 m!1132915))

(declare-fun m!1132959 () Bool)

(assert (=> b!888270 m!1132959))

(assert (=> bm!52203 m!1132919))

(assert (=> b!888263 m!1132915))

(assert (=> b!888263 m!1132915))

(assert (=> b!888263 m!1132921))

(assert (=> b!888272 m!1132911))

(assert (=> b!888266 m!1132911))

(assert (=> d!277127 m!1132919))

(assert (=> d!277127 m!1132891))

(declare-fun m!1132961 () Bool)

(assert (=> d!277127 m!1132961))

(assert (=> b!888269 m!1132915))

(assert (=> b!888269 m!1132915))

(assert (=> b!888269 m!1132921))

(assert (=> b!888085 d!277127))

(declare-fun call!52237 () Regex!2295)

(declare-fun c!143680 () Bool)

(declare-fun c!143678 () Bool)

(declare-fun bm!52229 () Bool)

(assert (=> bm!52229 (= call!52237 (removeUselessConcat!32 (ite c!143678 (regTwo!5102 (regOne!5103 r!15766)) (ite c!143680 (regOne!5102 (regOne!5103 r!15766)) (regOne!5103 (regOne!5103 r!15766))))))))

(declare-fun b!888330 () Bool)

(declare-fun e!582283 () Regex!2295)

(declare-fun e!582284 () Regex!2295)

(assert (=> b!888330 (= e!582283 e!582284)))

(declare-fun c!143677 () Bool)

(assert (=> b!888330 (= c!143677 ((_ is Union!2295) (regOne!5103 r!15766)))))

(declare-fun b!888331 () Bool)

(declare-fun e!582288 () Regex!2295)

(declare-fun call!52238 () Regex!2295)

(assert (=> b!888331 (= e!582288 call!52238)))

(declare-fun bm!52230 () Bool)

(declare-fun call!52235 () Regex!2295)

(assert (=> bm!52230 (= call!52235 call!52237)))

(declare-fun c!143679 () Bool)

(declare-fun bm!52231 () Bool)

(assert (=> bm!52231 (= call!52238 (removeUselessConcat!32 (ite c!143679 (regOne!5102 (regOne!5103 r!15766)) (ite c!143680 (regTwo!5102 (regOne!5103 r!15766)) (ite c!143677 (regTwo!5103 (regOne!5103 r!15766)) (reg!2624 (regOne!5103 r!15766)))))))))

(declare-fun b!888332 () Bool)

(declare-fun e!582285 () Regex!2295)

(declare-fun call!52234 () Regex!2295)

(assert (=> b!888332 (= e!582285 (Star!2295 call!52234))))

(declare-fun b!888333 () Bool)

(declare-fun e!582286 () Regex!2295)

(assert (=> b!888333 (= e!582286 e!582288)))

(assert (=> b!888333 (= c!143679 (and ((_ is Concat!4128) (regOne!5103 r!15766)) ((_ is EmptyExpr!2295) (regTwo!5102 (regOne!5103 r!15766)))))))

(declare-fun b!888334 () Bool)

(assert (=> b!888334 (= c!143680 ((_ is Concat!4128) (regOne!5103 r!15766)))))

(assert (=> b!888334 (= e!582288 e!582283)))

(declare-fun bm!52232 () Bool)

(declare-fun call!52236 () Regex!2295)

(assert (=> bm!52232 (= call!52236 call!52238)))

(declare-fun d!277129 () Bool)

(declare-fun e!582287 () Bool)

(assert (=> d!277129 e!582287))

(declare-fun res!404043 () Bool)

(assert (=> d!277129 (=> (not res!404043) (not e!582287))))

(declare-fun lt!331975 () Regex!2295)

(assert (=> d!277129 (= res!404043 (validRegex!764 lt!331975))))

(assert (=> d!277129 (= lt!331975 e!582286)))

(assert (=> d!277129 (= c!143678 (and ((_ is Concat!4128) (regOne!5103 r!15766)) ((_ is EmptyExpr!2295) (regOne!5102 (regOne!5103 r!15766)))))))

(assert (=> d!277129 (validRegex!764 (regOne!5103 r!15766))))

(assert (=> d!277129 (= (removeUselessConcat!32 (regOne!5103 r!15766)) lt!331975)))

(declare-fun bm!52233 () Bool)

(assert (=> bm!52233 (= call!52234 call!52236)))

(declare-fun b!888335 () Bool)

(assert (=> b!888335 (= e!582283 (Concat!4128 call!52235 call!52236))))

(declare-fun b!888336 () Bool)

(declare-fun c!143676 () Bool)

(assert (=> b!888336 (= c!143676 ((_ is Star!2295) (regOne!5103 r!15766)))))

(assert (=> b!888336 (= e!582284 e!582285)))

(declare-fun b!888337 () Bool)

(assert (=> b!888337 (= e!582285 (regOne!5103 r!15766))))

(declare-fun b!888338 () Bool)

(assert (=> b!888338 (= e!582287 (= (nullable!593 lt!331975) (nullable!593 (regOne!5103 r!15766))))))

(declare-fun b!888339 () Bool)

(assert (=> b!888339 (= e!582284 (Union!2295 call!52235 call!52234))))

(declare-fun b!888340 () Bool)

(assert (=> b!888340 (= e!582286 call!52237)))

(assert (= (and d!277129 c!143678) b!888340))

(assert (= (and d!277129 (not c!143678)) b!888333))

(assert (= (and b!888333 c!143679) b!888331))

(assert (= (and b!888333 (not c!143679)) b!888334))

(assert (= (and b!888334 c!143680) b!888335))

(assert (= (and b!888334 (not c!143680)) b!888330))

(assert (= (and b!888330 c!143677) b!888339))

(assert (= (and b!888330 (not c!143677)) b!888336))

(assert (= (and b!888336 c!143676) b!888332))

(assert (= (and b!888336 (not c!143676)) b!888337))

(assert (= (or b!888339 b!888332) bm!52233))

(assert (= (or b!888335 bm!52233) bm!52232))

(assert (= (or b!888335 b!888339) bm!52230))

(assert (= (or b!888331 bm!52232) bm!52231))

(assert (= (or b!888340 bm!52230) bm!52229))

(assert (= (and d!277129 res!404043) b!888338))

(declare-fun m!1132975 () Bool)

(assert (=> bm!52229 m!1132975))

(declare-fun m!1132977 () Bool)

(assert (=> bm!52231 m!1132977))

(declare-fun m!1132979 () Bool)

(assert (=> d!277129 m!1132979))

(assert (=> d!277129 m!1132889))

(declare-fun m!1132981 () Bool)

(assert (=> b!888338 m!1132981))

(assert (=> b!888338 m!1132925))

(assert (=> b!888085 d!277129))

(declare-fun d!277135 () Bool)

(assert (=> d!277135 (= (matchR!833 (regOne!5103 r!15766) s!10566) (matchR!833 (removeUselessConcat!32 (regOne!5103 r!15766)) s!10566))))

(declare-fun lt!331979 () Unit!14169)

(declare-fun choose!5297 (Regex!2295 List!9525) Unit!14169)

(assert (=> d!277135 (= lt!331979 (choose!5297 (regOne!5103 r!15766) s!10566))))

(assert (=> d!277135 (validRegex!764 (regOne!5103 r!15766))))

(assert (=> d!277135 (= (lemmaRemoveUselessConcatSound!26 (regOne!5103 r!15766) s!10566) lt!331979)))

(declare-fun bs!234790 () Bool)

(assert (= bs!234790 d!277135))

(assert (=> bs!234790 m!1132875))

(declare-fun m!1132997 () Bool)

(assert (=> bs!234790 m!1132997))

(assert (=> bs!234790 m!1132889))

(assert (=> bs!234790 m!1132891))

(assert (=> bs!234790 m!1132893))

(assert (=> bs!234790 m!1132891))

(assert (=> b!888085 d!277135))

(declare-fun b!888515 () Bool)

(assert (=> b!888515 true))

(assert (=> b!888515 true))

(declare-fun bs!234793 () Bool)

(declare-fun b!888518 () Bool)

(assert (= bs!234793 (and b!888518 b!888515)))

(declare-fun lambda!27502 () Int)

(declare-fun lambda!27501 () Int)

(assert (=> bs!234793 (not (= lambda!27502 lambda!27501))))

(assert (=> b!888518 true))

(assert (=> b!888518 true))

(declare-fun bm!52250 () Bool)

(declare-fun call!52256 () Bool)

(assert (=> bm!52250 (= call!52256 (isEmpty!5715 s!10566))))

(declare-fun b!888512 () Bool)

(declare-fun res!404116 () Bool)

(declare-fun e!582378 () Bool)

(assert (=> b!888512 (=> res!404116 e!582378)))

(assert (=> b!888512 (= res!404116 call!52256)))

(declare-fun e!582379 () Bool)

(assert (=> b!888512 (= e!582379 e!582378)))

(declare-fun b!888513 () Bool)

(declare-fun e!582381 () Bool)

(assert (=> b!888513 (= e!582381 (matchRSpec!96 (regTwo!5103 r!15766) s!10566))))

(declare-fun b!888514 () Bool)

(declare-fun e!582380 () Bool)

(declare-fun e!582377 () Bool)

(assert (=> b!888514 (= e!582380 e!582377)))

(declare-fun res!404114 () Bool)

(assert (=> b!888514 (= res!404114 (not ((_ is EmptyLang!2295) r!15766)))))

(assert (=> b!888514 (=> (not res!404114) (not e!582377))))

(declare-fun call!52255 () Bool)

(assert (=> b!888515 (= e!582378 call!52255)))

(declare-fun b!888516 () Bool)

(declare-fun c!143712 () Bool)

(assert (=> b!888516 (= c!143712 ((_ is Union!2295) r!15766))))

(declare-fun e!582376 () Bool)

(declare-fun e!582382 () Bool)

(assert (=> b!888516 (= e!582376 e!582382)))

(declare-fun b!888517 () Bool)

(assert (=> b!888517 (= e!582380 call!52256)))

(assert (=> b!888518 (= e!582379 call!52255)))

(declare-fun d!277141 () Bool)

(declare-fun c!143714 () Bool)

(assert (=> d!277141 (= c!143714 ((_ is EmptyExpr!2295) r!15766))))

(assert (=> d!277141 (= (matchRSpec!96 r!15766 s!10566) e!582380)))

(declare-fun b!888519 () Bool)

(assert (=> b!888519 (= e!582382 e!582381)))

(declare-fun res!404115 () Bool)

(assert (=> b!888519 (= res!404115 (matchRSpec!96 (regOne!5103 r!15766) s!10566))))

(assert (=> b!888519 (=> res!404115 e!582381)))

(declare-fun b!888520 () Bool)

(assert (=> b!888520 (= e!582376 (= s!10566 (Cons!9509 (c!143612 r!15766) Nil!9509)))))

(declare-fun b!888521 () Bool)

(assert (=> b!888521 (= e!582382 e!582379)))

(declare-fun c!143715 () Bool)

(assert (=> b!888521 (= c!143715 ((_ is Star!2295) r!15766))))

(declare-fun b!888522 () Bool)

(declare-fun c!143713 () Bool)

(assert (=> b!888522 (= c!143713 ((_ is ElementMatch!2295) r!15766))))

(assert (=> b!888522 (= e!582377 e!582376)))

(declare-fun bm!52251 () Bool)

(declare-fun Exists!86 (Int) Bool)

(assert (=> bm!52251 (= call!52255 (Exists!86 (ite c!143715 lambda!27501 lambda!27502)))))

(assert (= (and d!277141 c!143714) b!888517))

(assert (= (and d!277141 (not c!143714)) b!888514))

(assert (= (and b!888514 res!404114) b!888522))

(assert (= (and b!888522 c!143713) b!888520))

(assert (= (and b!888522 (not c!143713)) b!888516))

(assert (= (and b!888516 c!143712) b!888519))

(assert (= (and b!888516 (not c!143712)) b!888521))

(assert (= (and b!888519 (not res!404115)) b!888513))

(assert (= (and b!888521 c!143715) b!888512))

(assert (= (and b!888521 (not c!143715)) b!888518))

(assert (= (and b!888512 (not res!404116)) b!888515))

(assert (= (or b!888515 b!888518) bm!52251))

(assert (= (or b!888517 b!888512) bm!52250))

(assert (=> bm!52250 m!1132919))

(declare-fun m!1133019 () Bool)

(assert (=> b!888513 m!1133019))

(declare-fun m!1133021 () Bool)

(assert (=> b!888519 m!1133021))

(declare-fun m!1133023 () Bool)

(assert (=> bm!52251 m!1133023))

(assert (=> b!888088 d!277141))

(declare-fun b!888527 () Bool)

(declare-fun res!404122 () Bool)

(declare-fun e!582387 () Bool)

(assert (=> b!888527 (=> res!404122 e!582387)))

(declare-fun e!582384 () Bool)

(assert (=> b!888527 (= res!404122 e!582384)))

(declare-fun res!404124 () Bool)

(assert (=> b!888527 (=> (not res!404124) (not e!582384))))

(declare-fun lt!331988 () Bool)

(assert (=> b!888527 (= res!404124 lt!331988)))

(declare-fun b!888528 () Bool)

(declare-fun res!404118 () Bool)

(assert (=> b!888528 (=> res!404118 e!582387)))

(assert (=> b!888528 (= res!404118 (not ((_ is ElementMatch!2295) r!15766)))))

(declare-fun e!582383 () Bool)

(assert (=> b!888528 (= e!582383 e!582387)))

(declare-fun b!888529 () Bool)

(declare-fun res!404123 () Bool)

(assert (=> b!888529 (=> (not res!404123) (not e!582384))))

(assert (=> b!888529 (= res!404123 (isEmpty!5715 (tail!1120 s!10566)))))

(declare-fun b!888530 () Bool)

(declare-fun e!582385 () Bool)

(assert (=> b!888530 (= e!582385 e!582383)))

(declare-fun c!143717 () Bool)

(assert (=> b!888530 (= c!143717 ((_ is EmptyLang!2295) r!15766))))

(declare-fun bm!52252 () Bool)

(declare-fun call!52257 () Bool)

(assert (=> bm!52252 (= call!52257 (isEmpty!5715 s!10566))))

(declare-fun b!888531 () Bool)

(declare-fun e!582389 () Bool)

(assert (=> b!888531 (= e!582389 (nullable!593 r!15766))))

(declare-fun b!888532 () Bool)

(assert (=> b!888532 (= e!582384 (= (head!1558 s!10566) (c!143612 r!15766)))))

(declare-fun b!888533 () Bool)

(assert (=> b!888533 (= e!582383 (not lt!331988))))

(declare-fun b!888534 () Bool)

(declare-fun res!404121 () Bool)

(assert (=> b!888534 (=> (not res!404121) (not e!582384))))

(assert (=> b!888534 (= res!404121 (not call!52257))))

(declare-fun b!888535 () Bool)

(declare-fun res!404117 () Bool)

(declare-fun e!582386 () Bool)

(assert (=> b!888535 (=> res!404117 e!582386)))

(assert (=> b!888535 (= res!404117 (not (isEmpty!5715 (tail!1120 s!10566))))))

(declare-fun b!888536 () Bool)

(assert (=> b!888536 (= e!582389 (matchR!833 (derivativeStep!405 r!15766 (head!1558 s!10566)) (tail!1120 s!10566)))))

(declare-fun b!888537 () Bool)

(declare-fun e!582388 () Bool)

(assert (=> b!888537 (= e!582387 e!582388)))

(declare-fun res!404119 () Bool)

(assert (=> b!888537 (=> (not res!404119) (not e!582388))))

(assert (=> b!888537 (= res!404119 (not lt!331988))))

(declare-fun b!888538 () Bool)

(assert (=> b!888538 (= e!582386 (not (= (head!1558 s!10566) (c!143612 r!15766))))))

(declare-fun b!888540 () Bool)

(assert (=> b!888540 (= e!582388 e!582386)))

(declare-fun res!404120 () Bool)

(assert (=> b!888540 (=> res!404120 e!582386)))

(assert (=> b!888540 (= res!404120 call!52257)))

(declare-fun b!888539 () Bool)

(assert (=> b!888539 (= e!582385 (= lt!331988 call!52257))))

(declare-fun d!277151 () Bool)

(assert (=> d!277151 e!582385))

(declare-fun c!143718 () Bool)

(assert (=> d!277151 (= c!143718 ((_ is EmptyExpr!2295) r!15766))))

(assert (=> d!277151 (= lt!331988 e!582389)))

(declare-fun c!143716 () Bool)

(assert (=> d!277151 (= c!143716 (isEmpty!5715 s!10566))))

(assert (=> d!277151 (validRegex!764 r!15766)))

(assert (=> d!277151 (= (matchR!833 r!15766 s!10566) lt!331988)))

(assert (= (and d!277151 c!143716) b!888531))

(assert (= (and d!277151 (not c!143716)) b!888536))

(assert (= (and d!277151 c!143718) b!888539))

(assert (= (and d!277151 (not c!143718)) b!888530))

(assert (= (and b!888530 c!143717) b!888533))

(assert (= (and b!888530 (not c!143717)) b!888528))

(assert (= (and b!888528 (not res!404118)) b!888527))

(assert (= (and b!888527 res!404124) b!888534))

(assert (= (and b!888534 res!404121) b!888529))

(assert (= (and b!888529 res!404123) b!888532))

(assert (= (and b!888527 (not res!404122)) b!888537))

(assert (= (and b!888537 res!404119) b!888540))

(assert (= (and b!888540 (not res!404120)) b!888535))

(assert (= (and b!888535 (not res!404117)) b!888538))

(assert (= (or b!888539 b!888534 b!888540) bm!52252))

(declare-fun m!1133025 () Bool)

(assert (=> b!888531 m!1133025))

(assert (=> b!888536 m!1132911))

(assert (=> b!888536 m!1132911))

(declare-fun m!1133027 () Bool)

(assert (=> b!888536 m!1133027))

(assert (=> b!888536 m!1132915))

(assert (=> b!888536 m!1133027))

(assert (=> b!888536 m!1132915))

(declare-fun m!1133029 () Bool)

(assert (=> b!888536 m!1133029))

(assert (=> bm!52252 m!1132919))

(assert (=> b!888529 m!1132915))

(assert (=> b!888529 m!1132915))

(assert (=> b!888529 m!1132921))

(assert (=> b!888538 m!1132911))

(assert (=> b!888532 m!1132911))

(assert (=> d!277151 m!1132919))

(assert (=> d!277151 m!1132887))

(assert (=> b!888535 m!1132915))

(assert (=> b!888535 m!1132915))

(assert (=> b!888535 m!1132921))

(assert (=> b!888088 d!277151))

(declare-fun d!277153 () Bool)

(assert (=> d!277153 (= (matchR!833 r!15766 s!10566) (matchRSpec!96 r!15766 s!10566))))

(declare-fun lt!331991 () Unit!14169)

(declare-fun choose!5299 (Regex!2295 List!9525) Unit!14169)

(assert (=> d!277153 (= lt!331991 (choose!5299 r!15766 s!10566))))

(assert (=> d!277153 (validRegex!764 r!15766)))

(assert (=> d!277153 (= (mainMatchTheorem!96 r!15766 s!10566) lt!331991)))

(declare-fun bs!234794 () Bool)

(assert (= bs!234794 d!277153))

(assert (=> bs!234794 m!1132883))

(assert (=> bs!234794 m!1132881))

(declare-fun m!1133031 () Bool)

(assert (=> bs!234794 m!1133031))

(assert (=> bs!234794 m!1132887))

(assert (=> b!888088 d!277153))

(declare-fun b!888545 () Bool)

(declare-fun e!582392 () Bool)

(declare-fun tp!279865 () Bool)

(assert (=> b!888545 (= e!582392 (and tp_is_empty!4233 tp!279865))))

(assert (=> b!888092 (= tp!279819 e!582392)))

(assert (= (and b!888092 ((_ is Cons!9509) (t!100571 s!10566))) b!888545))

(declare-fun b!888556 () Bool)

(declare-fun e!582395 () Bool)

(assert (=> b!888556 (= e!582395 tp_is_empty!4233)))

(declare-fun b!888559 () Bool)

(declare-fun tp!279876 () Bool)

(declare-fun tp!279877 () Bool)

(assert (=> b!888559 (= e!582395 (and tp!279876 tp!279877))))

(declare-fun b!888558 () Bool)

(declare-fun tp!279880 () Bool)

(assert (=> b!888558 (= e!582395 tp!279880)))

(assert (=> b!888089 (= tp!279821 e!582395)))

(declare-fun b!888557 () Bool)

(declare-fun tp!279878 () Bool)

(declare-fun tp!279879 () Bool)

(assert (=> b!888557 (= e!582395 (and tp!279878 tp!279879))))

(assert (= (and b!888089 ((_ is ElementMatch!2295) (regOne!5103 r!15766))) b!888556))

(assert (= (and b!888089 ((_ is Concat!4128) (regOne!5103 r!15766))) b!888557))

(assert (= (and b!888089 ((_ is Star!2295) (regOne!5103 r!15766))) b!888558))

(assert (= (and b!888089 ((_ is Union!2295) (regOne!5103 r!15766))) b!888559))

(declare-fun b!888560 () Bool)

(declare-fun e!582396 () Bool)

(assert (=> b!888560 (= e!582396 tp_is_empty!4233)))

(declare-fun b!888563 () Bool)

(declare-fun tp!279881 () Bool)

(declare-fun tp!279882 () Bool)

(assert (=> b!888563 (= e!582396 (and tp!279881 tp!279882))))

(declare-fun b!888562 () Bool)

(declare-fun tp!279885 () Bool)

(assert (=> b!888562 (= e!582396 tp!279885)))

(assert (=> b!888089 (= tp!279824 e!582396)))

(declare-fun b!888561 () Bool)

(declare-fun tp!279883 () Bool)

(declare-fun tp!279884 () Bool)

(assert (=> b!888561 (= e!582396 (and tp!279883 tp!279884))))

(assert (= (and b!888089 ((_ is ElementMatch!2295) (regTwo!5103 r!15766))) b!888560))

(assert (= (and b!888089 ((_ is Concat!4128) (regTwo!5103 r!15766))) b!888561))

(assert (= (and b!888089 ((_ is Star!2295) (regTwo!5103 r!15766))) b!888562))

(assert (= (and b!888089 ((_ is Union!2295) (regTwo!5103 r!15766))) b!888563))

(declare-fun b!888564 () Bool)

(declare-fun e!582397 () Bool)

(assert (=> b!888564 (= e!582397 tp_is_empty!4233)))

(declare-fun b!888567 () Bool)

(declare-fun tp!279886 () Bool)

(declare-fun tp!279887 () Bool)

(assert (=> b!888567 (= e!582397 (and tp!279886 tp!279887))))

(declare-fun b!888566 () Bool)

(declare-fun tp!279890 () Bool)

(assert (=> b!888566 (= e!582397 tp!279890)))

(assert (=> b!888087 (= tp!279820 e!582397)))

(declare-fun b!888565 () Bool)

(declare-fun tp!279888 () Bool)

(declare-fun tp!279889 () Bool)

(assert (=> b!888565 (= e!582397 (and tp!279888 tp!279889))))

(assert (= (and b!888087 ((_ is ElementMatch!2295) (regOne!5102 r!15766))) b!888564))

(assert (= (and b!888087 ((_ is Concat!4128) (regOne!5102 r!15766))) b!888565))

(assert (= (and b!888087 ((_ is Star!2295) (regOne!5102 r!15766))) b!888566))

(assert (= (and b!888087 ((_ is Union!2295) (regOne!5102 r!15766))) b!888567))

(declare-fun b!888568 () Bool)

(declare-fun e!582398 () Bool)

(assert (=> b!888568 (= e!582398 tp_is_empty!4233)))

(declare-fun b!888571 () Bool)

(declare-fun tp!279891 () Bool)

(declare-fun tp!279892 () Bool)

(assert (=> b!888571 (= e!582398 (and tp!279891 tp!279892))))

(declare-fun b!888570 () Bool)

(declare-fun tp!279895 () Bool)

(assert (=> b!888570 (= e!582398 tp!279895)))

(assert (=> b!888087 (= tp!279823 e!582398)))

(declare-fun b!888569 () Bool)

(declare-fun tp!279893 () Bool)

(declare-fun tp!279894 () Bool)

(assert (=> b!888569 (= e!582398 (and tp!279893 tp!279894))))

(assert (= (and b!888087 ((_ is ElementMatch!2295) (regTwo!5102 r!15766))) b!888568))

(assert (= (and b!888087 ((_ is Concat!4128) (regTwo!5102 r!15766))) b!888569))

(assert (= (and b!888087 ((_ is Star!2295) (regTwo!5102 r!15766))) b!888570))

(assert (= (and b!888087 ((_ is Union!2295) (regTwo!5102 r!15766))) b!888571))

(declare-fun b!888572 () Bool)

(declare-fun e!582399 () Bool)

(assert (=> b!888572 (= e!582399 tp_is_empty!4233)))

(declare-fun b!888575 () Bool)

(declare-fun tp!279896 () Bool)

(declare-fun tp!279897 () Bool)

(assert (=> b!888575 (= e!582399 (and tp!279896 tp!279897))))

(declare-fun b!888574 () Bool)

(declare-fun tp!279900 () Bool)

(assert (=> b!888574 (= e!582399 tp!279900)))

(assert (=> b!888093 (= tp!279822 e!582399)))

(declare-fun b!888573 () Bool)

(declare-fun tp!279898 () Bool)

(declare-fun tp!279899 () Bool)

(assert (=> b!888573 (= e!582399 (and tp!279898 tp!279899))))

(assert (= (and b!888093 ((_ is ElementMatch!2295) (reg!2624 r!15766))) b!888572))

(assert (= (and b!888093 ((_ is Concat!4128) (reg!2624 r!15766))) b!888573))

(assert (= (and b!888093 ((_ is Star!2295) (reg!2624 r!15766))) b!888574))

(assert (= (and b!888093 ((_ is Union!2295) (reg!2624 r!15766))) b!888575))

(check-sat (not b!888557) (not b!888234) (not b!888209) (not b!888265) (not b!888263) (not b!888570) (not b!888250) (not b!888529) (not b!888141) (not bm!52251) (not bm!52201) (not b!888573) (not bm!52197) (not b!888563) (not bm!52252) (not b!888208) (not d!277121) (not b!888562) (not d!277119) (not d!277135) (not b!888566) (not b!888558) (not d!277153) (not b!888536) (not b!888545) (not b!888269) (not b!888574) (not b!888240) (not b!888513) tp_is_empty!4233 (not b!888241) (not b!888575) (not b!888266) (not b!888272) (not b!888243) (not d!277151) (not b!888215) (not b!888206) (not d!277117) (not bm!52203) (not bm!52199) (not b!888559) (not bm!52250) (not b!888571) (not b!888569) (not b!888532) (not b!888538) (not bm!52200) (not b!888270) (not bm!52190) (not bm!52229) (not b!888567) (not b!888213) (not b!888251) (not b!888212) (not b!888237) (not bm!52191) (not b!888519) (not b!888561) (not d!277129) (not d!277127) (not b!888565) (not b!888338) (not b!888535) (not b!888254) (not bm!52231) (not b!888236) (not b!888531))
(check-sat)
