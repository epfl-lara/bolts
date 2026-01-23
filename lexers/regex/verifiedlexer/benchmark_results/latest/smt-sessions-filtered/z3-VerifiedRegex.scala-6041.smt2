; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295480 () Bool)

(assert start!295480)

(declare-fun b!3128181 () Bool)

(assert (=> b!3128181 true))

(assert (=> b!3128181 true))

(assert (=> b!3128181 true))

(declare-fun lambda!115466 () Int)

(declare-fun lambda!115465 () Int)

(assert (=> b!3128181 (not (= lambda!115466 lambda!115465))))

(assert (=> b!3128181 true))

(assert (=> b!3128181 true))

(assert (=> b!3128181 true))

(declare-fun b!3128179 () Bool)

(declare-fun e!1952595 () Bool)

(declare-fun e!1952587 () Bool)

(assert (=> b!3128179 (= e!1952595 (not e!1952587))))

(declare-fun res!1279220 () Bool)

(assert (=> b!3128179 (=> res!1279220 e!1952587)))

(declare-fun lt!1059779 () Bool)

(declare-datatypes ((C!19452 0))(
  ( (C!19453 (val!11762 Int)) )
))
(declare-datatypes ((Regex!9633 0))(
  ( (ElementMatch!9633 (c!524943 C!19452)) (Concat!14954 (regOne!19778 Regex!9633) (regTwo!19778 Regex!9633)) (EmptyExpr!9633) (Star!9633 (reg!9962 Regex!9633)) (EmptyLang!9633) (Union!9633 (regOne!19779 Regex!9633) (regTwo!19779 Regex!9633)) )
))
(declare-fun r!17423 () Regex!9633)

(get-info :version)

(assert (=> b!3128179 (= res!1279220 (or lt!1059779 ((_ is Concat!14954) r!17423) ((_ is Union!9633) r!17423) (not ((_ is Star!9633) r!17423))))))

(declare-datatypes ((List!35498 0))(
  ( (Nil!35374) (Cons!35374 (h!40794 C!19452) (t!234563 List!35498)) )
))
(declare-fun s!11993 () List!35498)

(declare-fun matchRSpec!1770 (Regex!9633 List!35498) Bool)

(assert (=> b!3128179 (= lt!1059779 (matchRSpec!1770 r!17423 s!11993))))

(declare-fun matchR!4515 (Regex!9633 List!35498) Bool)

(assert (=> b!3128179 (= lt!1059779 (matchR!4515 r!17423 s!11993))))

(declare-datatypes ((Unit!49705 0))(
  ( (Unit!49706) )
))
(declare-fun lt!1059787 () Unit!49705)

(declare-fun mainMatchTheorem!1770 (Regex!9633 List!35498) Unit!49705)

(assert (=> b!3128179 (= lt!1059787 (mainMatchTheorem!1770 r!17423 s!11993))))

(declare-fun b!3128180 () Bool)

(declare-fun e!1952589 () Bool)

(declare-fun e!1952591 () Bool)

(assert (=> b!3128180 (= e!1952589 e!1952591)))

(declare-fun res!1279214 () Bool)

(assert (=> b!3128180 (=> res!1279214 e!1952591)))

(declare-fun lt!1059778 () Int)

(declare-fun lt!1059782 () Int)

(assert (=> b!3128180 (= res!1279214 (not (= lt!1059778 lt!1059782)))))

(declare-fun size!26589 (List!35498) Int)

(assert (=> b!3128180 (= lt!1059782 (size!26589 s!11993))))

(declare-datatypes ((tuple2!34244 0))(
  ( (tuple2!34245 (_1!20254 List!35498) (_2!20254 List!35498)) )
))
(declare-fun lt!1059786 () tuple2!34244)

(assert (=> b!3128180 (= lt!1059778 (size!26589 (_2!20254 lt!1059786)))))

(assert (=> b!3128180 (matchR!4515 (reg!9962 r!17423) (_1!20254 lt!1059786))))

(declare-fun lt!1059783 () Unit!49705)

(declare-fun lemmaSimplifySound!360 (Regex!9633 List!35498) Unit!49705)

(assert (=> b!3128180 (= lt!1059783 (lemmaSimplifySound!360 (reg!9962 r!17423) (_1!20254 lt!1059786)))))

(declare-fun e!1952585 () Bool)

(declare-fun e!1952592 () Bool)

(assert (=> b!3128181 (= e!1952585 e!1952592)))

(declare-fun res!1279210 () Bool)

(assert (=> b!3128181 (=> res!1279210 e!1952592)))

(declare-fun lt!1059788 () Bool)

(assert (=> b!3128181 (= res!1279210 (not lt!1059788))))

(declare-fun Exists!1887 (Int) Bool)

(assert (=> b!3128181 (= (Exists!1887 lambda!115465) (Exists!1887 lambda!115466))))

(declare-fun lt!1059784 () Unit!49705)

(declare-fun lt!1059785 () Regex!9633)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!348 (Regex!9633 List!35498) Unit!49705)

(assert (=> b!3128181 (= lt!1059784 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!348 lt!1059785 s!11993))))

(assert (=> b!3128181 (= lt!1059788 (Exists!1887 lambda!115465))))

(declare-datatypes ((Option!6854 0))(
  ( (None!6853) (Some!6853 (v!34987 tuple2!34244)) )
))
(declare-fun lt!1059789 () Option!6854)

(declare-fun isDefined!5405 (Option!6854) Bool)

(assert (=> b!3128181 (= lt!1059788 (isDefined!5405 lt!1059789))))

(declare-fun lt!1059790 () Regex!9633)

(declare-fun findConcatSeparation!1248 (Regex!9633 Regex!9633 List!35498 List!35498 List!35498) Option!6854)

(assert (=> b!3128181 (= lt!1059789 (findConcatSeparation!1248 lt!1059785 lt!1059790 Nil!35374 s!11993 s!11993))))

(declare-fun lt!1059791 () Unit!49705)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1018 (Regex!9633 Regex!9633 List!35498) Unit!49705)

(assert (=> b!3128181 (= lt!1059791 (lemmaFindConcatSeparationEquivalentToExists!1018 lt!1059785 lt!1059790 s!11993))))

(declare-fun b!3128182 () Bool)

(declare-fun res!1279216 () Bool)

(declare-fun e!1952588 () Bool)

(assert (=> b!3128182 (=> res!1279216 e!1952588)))

(declare-fun isEmpty!19725 (List!35498) Bool)

(assert (=> b!3128182 (= res!1279216 (not (isEmpty!19725 (_1!20254 lt!1059786))))))

(declare-fun b!3128183 () Bool)

(declare-fun e!1952586 () Bool)

(assert (=> b!3128183 (= e!1952587 e!1952586)))

(declare-fun res!1279215 () Bool)

(assert (=> b!3128183 (=> res!1279215 e!1952586)))

(declare-fun isEmptyLang!684 (Regex!9633) Bool)

(assert (=> b!3128183 (= res!1279215 (isEmptyLang!684 lt!1059785))))

(declare-fun simplify!588 (Regex!9633) Regex!9633)

(assert (=> b!3128183 (= lt!1059785 (simplify!588 (reg!9962 r!17423)))))

(declare-fun b!3128184 () Bool)

(assert (=> b!3128184 (= e!1952591 e!1952588)))

(declare-fun res!1279219 () Bool)

(assert (=> b!3128184 (=> res!1279219 e!1952588)))

(declare-fun lt!1059792 () Int)

(assert (=> b!3128184 (= res!1279219 (or (not (= (+ lt!1059792 lt!1059778) lt!1059782)) (not (= lt!1059792 0))))))

(assert (=> b!3128184 (= lt!1059792 (size!26589 (_1!20254 lt!1059786)))))

(declare-fun b!3128185 () Bool)

(declare-fun res!1279218 () Bool)

(assert (=> b!3128185 (=> res!1279218 e!1952589)))

(assert (=> b!3128185 (= res!1279218 (not (matchR!4515 lt!1059790 (_2!20254 lt!1059786))))))

(declare-fun b!3128186 () Bool)

(declare-fun e!1952593 () Bool)

(declare-fun tp_is_empty!16829 () Bool)

(declare-fun tp!979964 () Bool)

(assert (=> b!3128186 (= e!1952593 (and tp_is_empty!16829 tp!979964))))

(declare-fun b!3128187 () Bool)

(declare-fun nullable!3271 (Regex!9633) Bool)

(assert (=> b!3128187 (= e!1952588 (not (nullable!3271 (reg!9962 r!17423))))))

(assert (=> b!3128187 (matchRSpec!1770 (reg!9962 r!17423) (_1!20254 lt!1059786))))

(declare-fun lt!1059781 () Unit!49705)

(assert (=> b!3128187 (= lt!1059781 (mainMatchTheorem!1770 (reg!9962 r!17423) (_1!20254 lt!1059786)))))

(declare-fun res!1279211 () Bool)

(assert (=> start!295480 (=> (not res!1279211) (not e!1952595))))

(declare-fun validRegex!4366 (Regex!9633) Bool)

(assert (=> start!295480 (= res!1279211 (validRegex!4366 r!17423))))

(assert (=> start!295480 e!1952595))

(declare-fun e!1952590 () Bool)

(assert (=> start!295480 e!1952590))

(assert (=> start!295480 e!1952593))

(declare-fun b!3128188 () Bool)

(declare-fun e!1952594 () Bool)

(assert (=> b!3128188 (= e!1952586 e!1952594)))

(declare-fun res!1279213 () Bool)

(assert (=> b!3128188 (=> res!1279213 e!1952594)))

(assert (=> b!3128188 (= res!1279213 (not (matchR!4515 lt!1059790 s!11993)))))

(assert (=> b!3128188 (= lt!1059790 (Star!9633 lt!1059785))))

(declare-fun b!3128189 () Bool)

(assert (=> b!3128189 (= e!1952594 e!1952585)))

(declare-fun res!1279212 () Bool)

(assert (=> b!3128189 (=> res!1279212 e!1952585)))

(assert (=> b!3128189 (= res!1279212 (isEmpty!19725 s!11993))))

(assert (=> b!3128189 (matchRSpec!1770 lt!1059790 s!11993)))

(declare-fun lt!1059780 () Unit!49705)

(assert (=> b!3128189 (= lt!1059780 (mainMatchTheorem!1770 lt!1059790 s!11993))))

(declare-fun b!3128190 () Bool)

(assert (=> b!3128190 (= e!1952592 e!1952589)))

(declare-fun res!1279209 () Bool)

(assert (=> b!3128190 (=> res!1279209 e!1952589)))

(assert (=> b!3128190 (= res!1279209 (not (matchR!4515 lt!1059785 (_1!20254 lt!1059786))))))

(declare-fun get!11136 (Option!6854) tuple2!34244)

(assert (=> b!3128190 (= lt!1059786 (get!11136 lt!1059789))))

(declare-fun b!3128191 () Bool)

(declare-fun res!1279217 () Bool)

(assert (=> b!3128191 (=> res!1279217 e!1952591)))

(declare-fun ++!8511 (List!35498 List!35498) List!35498)

(assert (=> b!3128191 (= res!1279217 (not (= (++!8511 (_1!20254 lt!1059786) (_2!20254 lt!1059786)) s!11993)))))

(declare-fun b!3128192 () Bool)

(declare-fun tp!979962 () Bool)

(declare-fun tp!979965 () Bool)

(assert (=> b!3128192 (= e!1952590 (and tp!979962 tp!979965))))

(declare-fun b!3128193 () Bool)

(declare-fun tp!979963 () Bool)

(assert (=> b!3128193 (= e!1952590 tp!979963)))

(declare-fun b!3128194 () Bool)

(declare-fun tp!979960 () Bool)

(declare-fun tp!979961 () Bool)

(assert (=> b!3128194 (= e!1952590 (and tp!979960 tp!979961))))

(declare-fun b!3128195 () Bool)

(assert (=> b!3128195 (= e!1952590 tp_is_empty!16829)))

(assert (= (and start!295480 res!1279211) b!3128179))

(assert (= (and b!3128179 (not res!1279220)) b!3128183))

(assert (= (and b!3128183 (not res!1279215)) b!3128188))

(assert (= (and b!3128188 (not res!1279213)) b!3128189))

(assert (= (and b!3128189 (not res!1279212)) b!3128181))

(assert (= (and b!3128181 (not res!1279210)) b!3128190))

(assert (= (and b!3128190 (not res!1279209)) b!3128185))

(assert (= (and b!3128185 (not res!1279218)) b!3128180))

(assert (= (and b!3128180 (not res!1279214)) b!3128191))

(assert (= (and b!3128191 (not res!1279217)) b!3128184))

(assert (= (and b!3128184 (not res!1279219)) b!3128182))

(assert (= (and b!3128182 (not res!1279216)) b!3128187))

(assert (= (and start!295480 ((_ is ElementMatch!9633) r!17423)) b!3128195))

(assert (= (and start!295480 ((_ is Concat!14954) r!17423)) b!3128194))

(assert (= (and start!295480 ((_ is Star!9633) r!17423)) b!3128193))

(assert (= (and start!295480 ((_ is Union!9633) r!17423)) b!3128192))

(assert (= (and start!295480 ((_ is Cons!35374) s!11993)) b!3128186))

(declare-fun m!3412055 () Bool)

(assert (=> b!3128189 m!3412055))

(declare-fun m!3412057 () Bool)

(assert (=> b!3128189 m!3412057))

(declare-fun m!3412059 () Bool)

(assert (=> b!3128189 m!3412059))

(declare-fun m!3412061 () Bool)

(assert (=> b!3128182 m!3412061))

(declare-fun m!3412063 () Bool)

(assert (=> b!3128190 m!3412063))

(declare-fun m!3412065 () Bool)

(assert (=> b!3128190 m!3412065))

(declare-fun m!3412067 () Bool)

(assert (=> b!3128181 m!3412067))

(assert (=> b!3128181 m!3412067))

(declare-fun m!3412069 () Bool)

(assert (=> b!3128181 m!3412069))

(declare-fun m!3412071 () Bool)

(assert (=> b!3128181 m!3412071))

(declare-fun m!3412073 () Bool)

(assert (=> b!3128181 m!3412073))

(declare-fun m!3412075 () Bool)

(assert (=> b!3128181 m!3412075))

(declare-fun m!3412077 () Bool)

(assert (=> b!3128181 m!3412077))

(declare-fun m!3412079 () Bool)

(assert (=> b!3128188 m!3412079))

(declare-fun m!3412081 () Bool)

(assert (=> b!3128180 m!3412081))

(declare-fun m!3412083 () Bool)

(assert (=> b!3128180 m!3412083))

(declare-fun m!3412085 () Bool)

(assert (=> b!3128180 m!3412085))

(declare-fun m!3412087 () Bool)

(assert (=> b!3128180 m!3412087))

(declare-fun m!3412089 () Bool)

(assert (=> b!3128183 m!3412089))

(declare-fun m!3412091 () Bool)

(assert (=> b!3128183 m!3412091))

(declare-fun m!3412093 () Bool)

(assert (=> b!3128184 m!3412093))

(declare-fun m!3412095 () Bool)

(assert (=> b!3128179 m!3412095))

(declare-fun m!3412097 () Bool)

(assert (=> b!3128179 m!3412097))

(declare-fun m!3412099 () Bool)

(assert (=> b!3128179 m!3412099))

(declare-fun m!3412101 () Bool)

(assert (=> start!295480 m!3412101))

(declare-fun m!3412103 () Bool)

(assert (=> b!3128191 m!3412103))

(declare-fun m!3412105 () Bool)

(assert (=> b!3128187 m!3412105))

(declare-fun m!3412107 () Bool)

(assert (=> b!3128187 m!3412107))

(declare-fun m!3412109 () Bool)

(assert (=> b!3128187 m!3412109))

(declare-fun m!3412111 () Bool)

(assert (=> b!3128185 m!3412111))

(check-sat (not b!3128194) (not b!3128180) (not b!3128186) (not b!3128181) (not b!3128184) (not b!3128192) (not b!3128179) (not start!295480) (not b!3128185) (not b!3128193) (not b!3128187) (not b!3128188) (not b!3128189) tp_is_empty!16829 (not b!3128183) (not b!3128182) (not b!3128190) (not b!3128191))
(check-sat)
(get-model)

(declare-fun bm!223256 () Bool)

(declare-fun call!223261 () Bool)

(assert (=> bm!223256 (= call!223261 (isEmpty!19725 s!11993))))

(declare-fun b!3128228 () Bool)

(declare-fun e!1952612 () Bool)

(declare-fun head!6924 (List!35498) C!19452)

(assert (=> b!3128228 (= e!1952612 (not (= (head!6924 s!11993) (c!524943 lt!1059790))))))

(declare-fun b!3128229 () Bool)

(declare-fun e!1952615 () Bool)

(declare-fun lt!1059795 () Bool)

(assert (=> b!3128229 (= e!1952615 (= lt!1059795 call!223261))))

(declare-fun b!3128230 () Bool)

(declare-fun e!1952616 () Bool)

(declare-fun derivativeStep!2865 (Regex!9633 C!19452) Regex!9633)

(declare-fun tail!5150 (List!35498) List!35498)

(assert (=> b!3128230 (= e!1952616 (matchR!4515 (derivativeStep!2865 lt!1059790 (head!6924 s!11993)) (tail!5150 s!11993)))))

(declare-fun b!3128231 () Bool)

(declare-fun e!1952613 () Bool)

(assert (=> b!3128231 (= e!1952613 e!1952612)))

(declare-fun res!1279239 () Bool)

(assert (=> b!3128231 (=> res!1279239 e!1952612)))

(assert (=> b!3128231 (= res!1279239 call!223261)))

(declare-fun b!3128232 () Bool)

(declare-fun res!1279243 () Bool)

(declare-fun e!1952611 () Bool)

(assert (=> b!3128232 (=> (not res!1279243) (not e!1952611))))

(assert (=> b!3128232 (= res!1279243 (isEmpty!19725 (tail!5150 s!11993)))))

(declare-fun b!3128233 () Bool)

(declare-fun e!1952614 () Bool)

(assert (=> b!3128233 (= e!1952614 (not lt!1059795))))

(declare-fun b!3128234 () Bool)

(declare-fun res!1279242 () Bool)

(declare-fun e!1952610 () Bool)

(assert (=> b!3128234 (=> res!1279242 e!1952610)))

(assert (=> b!3128234 (= res!1279242 (not ((_ is ElementMatch!9633) lt!1059790)))))

(assert (=> b!3128234 (= e!1952614 e!1952610)))

(declare-fun b!3128236 () Bool)

(assert (=> b!3128236 (= e!1952615 e!1952614)))

(declare-fun c!524951 () Bool)

(assert (=> b!3128236 (= c!524951 ((_ is EmptyLang!9633) lt!1059790))))

(declare-fun b!3128237 () Bool)

(assert (=> b!3128237 (= e!1952611 (= (head!6924 s!11993) (c!524943 lt!1059790)))))

(declare-fun b!3128238 () Bool)

(assert (=> b!3128238 (= e!1952610 e!1952613)))

(declare-fun res!1279244 () Bool)

(assert (=> b!3128238 (=> (not res!1279244) (not e!1952613))))

(assert (=> b!3128238 (= res!1279244 (not lt!1059795))))

(declare-fun b!3128239 () Bool)

(declare-fun res!1279241 () Bool)

(assert (=> b!3128239 (=> (not res!1279241) (not e!1952611))))

(assert (=> b!3128239 (= res!1279241 (not call!223261))))

(declare-fun b!3128235 () Bool)

(declare-fun res!1279238 () Bool)

(assert (=> b!3128235 (=> res!1279238 e!1952612)))

(assert (=> b!3128235 (= res!1279238 (not (isEmpty!19725 (tail!5150 s!11993))))))

(declare-fun d!863864 () Bool)

(assert (=> d!863864 e!1952615))

(declare-fun c!524950 () Bool)

(assert (=> d!863864 (= c!524950 ((_ is EmptyExpr!9633) lt!1059790))))

(assert (=> d!863864 (= lt!1059795 e!1952616)))

(declare-fun c!524952 () Bool)

(assert (=> d!863864 (= c!524952 (isEmpty!19725 s!11993))))

(assert (=> d!863864 (validRegex!4366 lt!1059790)))

(assert (=> d!863864 (= (matchR!4515 lt!1059790 s!11993) lt!1059795)))

(declare-fun b!3128240 () Bool)

(assert (=> b!3128240 (= e!1952616 (nullable!3271 lt!1059790))))

(declare-fun b!3128241 () Bool)

(declare-fun res!1279237 () Bool)

(assert (=> b!3128241 (=> res!1279237 e!1952610)))

(assert (=> b!3128241 (= res!1279237 e!1952611)))

(declare-fun res!1279240 () Bool)

(assert (=> b!3128241 (=> (not res!1279240) (not e!1952611))))

(assert (=> b!3128241 (= res!1279240 lt!1059795)))

(assert (= (and d!863864 c!524952) b!3128240))

(assert (= (and d!863864 (not c!524952)) b!3128230))

(assert (= (and d!863864 c!524950) b!3128229))

(assert (= (and d!863864 (not c!524950)) b!3128236))

(assert (= (and b!3128236 c!524951) b!3128233))

(assert (= (and b!3128236 (not c!524951)) b!3128234))

(assert (= (and b!3128234 (not res!1279242)) b!3128241))

(assert (= (and b!3128241 res!1279240) b!3128239))

(assert (= (and b!3128239 res!1279241) b!3128232))

(assert (= (and b!3128232 res!1279243) b!3128237))

(assert (= (and b!3128241 (not res!1279237)) b!3128238))

(assert (= (and b!3128238 res!1279244) b!3128231))

(assert (= (and b!3128231 (not res!1279239)) b!3128235))

(assert (= (and b!3128235 (not res!1279238)) b!3128228))

(assert (= (or b!3128229 b!3128231 b!3128239) bm!223256))

(declare-fun m!3412113 () Bool)

(assert (=> b!3128235 m!3412113))

(assert (=> b!3128235 m!3412113))

(declare-fun m!3412115 () Bool)

(assert (=> b!3128235 m!3412115))

(assert (=> b!3128232 m!3412113))

(assert (=> b!3128232 m!3412113))

(assert (=> b!3128232 m!3412115))

(assert (=> d!863864 m!3412055))

(declare-fun m!3412117 () Bool)

(assert (=> d!863864 m!3412117))

(assert (=> bm!223256 m!3412055))

(declare-fun m!3412119 () Bool)

(assert (=> b!3128237 m!3412119))

(assert (=> b!3128230 m!3412119))

(assert (=> b!3128230 m!3412119))

(declare-fun m!3412121 () Bool)

(assert (=> b!3128230 m!3412121))

(assert (=> b!3128230 m!3412113))

(assert (=> b!3128230 m!3412121))

(assert (=> b!3128230 m!3412113))

(declare-fun m!3412123 () Bool)

(assert (=> b!3128230 m!3412123))

(declare-fun m!3412125 () Bool)

(assert (=> b!3128240 m!3412125))

(assert (=> b!3128228 m!3412119))

(assert (=> b!3128188 d!863864))

(declare-fun d!863866 () Bool)

(assert (=> d!863866 (= (isEmpty!19725 s!11993) ((_ is Nil!35374) s!11993))))

(assert (=> b!3128189 d!863866))

(declare-fun bs!537236 () Bool)

(declare-fun b!3128311 () Bool)

(assert (= bs!537236 (and b!3128311 b!3128181)))

(declare-fun lambda!115471 () Int)

(assert (=> bs!537236 (not (= lambda!115471 lambda!115465))))

(assert (=> bs!537236 (= (= (reg!9962 lt!1059790) lt!1059785) (= lambda!115471 lambda!115466))))

(assert (=> b!3128311 true))

(assert (=> b!3128311 true))

(declare-fun bs!537237 () Bool)

(declare-fun b!3128309 () Bool)

(assert (= bs!537237 (and b!3128309 b!3128181)))

(declare-fun lambda!115472 () Int)

(assert (=> bs!537237 (not (= lambda!115472 lambda!115465))))

(assert (=> bs!537237 (not (= lambda!115472 lambda!115466))))

(declare-fun bs!537238 () Bool)

(assert (= bs!537238 (and b!3128309 b!3128311)))

(assert (=> bs!537238 (not (= lambda!115472 lambda!115471))))

(assert (=> b!3128309 true))

(assert (=> b!3128309 true))

(declare-fun e!1952660 () Bool)

(declare-fun call!223276 () Bool)

(assert (=> b!3128309 (= e!1952660 call!223276)))

(declare-fun b!3128310 () Bool)

(declare-fun c!524972 () Bool)

(assert (=> b!3128310 (= c!524972 ((_ is ElementMatch!9633) lt!1059790))))

(declare-fun e!1952665 () Bool)

(declare-fun e!1952664 () Bool)

(assert (=> b!3128310 (= e!1952665 e!1952664)))

(declare-fun bm!223270 () Bool)

(declare-fun call!223275 () Bool)

(assert (=> bm!223270 (= call!223275 (isEmpty!19725 s!11993))))

(declare-fun e!1952663 () Bool)

(assert (=> b!3128311 (= e!1952663 call!223276)))

(declare-fun bm!223271 () Bool)

(declare-fun c!524974 () Bool)

(assert (=> bm!223271 (= call!223276 (Exists!1887 (ite c!524974 lambda!115471 lambda!115472)))))

(declare-fun b!3128313 () Bool)

(declare-fun e!1952661 () Bool)

(assert (=> b!3128313 (= e!1952661 e!1952665)))

(declare-fun res!1279277 () Bool)

(assert (=> b!3128313 (= res!1279277 (not ((_ is EmptyLang!9633) lt!1059790)))))

(assert (=> b!3128313 (=> (not res!1279277) (not e!1952665))))

(declare-fun b!3128314 () Bool)

(assert (=> b!3128314 (= e!1952664 (= s!11993 (Cons!35374 (c!524943 lt!1059790) Nil!35374)))))

(declare-fun b!3128315 () Bool)

(declare-fun e!1952662 () Bool)

(assert (=> b!3128315 (= e!1952662 e!1952660)))

(assert (=> b!3128315 (= c!524974 ((_ is Star!9633) lt!1059790))))

(declare-fun b!3128316 () Bool)

(declare-fun res!1279278 () Bool)

(assert (=> b!3128316 (=> res!1279278 e!1952663)))

(assert (=> b!3128316 (= res!1279278 call!223275)))

(assert (=> b!3128316 (= e!1952660 e!1952663)))

(declare-fun b!3128317 () Bool)

(assert (=> b!3128317 (= e!1952661 call!223275)))

(declare-fun b!3128312 () Bool)

(declare-fun c!524973 () Bool)

(assert (=> b!3128312 (= c!524973 ((_ is Union!9633) lt!1059790))))

(assert (=> b!3128312 (= e!1952664 e!1952662)))

(declare-fun d!863868 () Bool)

(declare-fun c!524971 () Bool)

(assert (=> d!863868 (= c!524971 ((_ is EmptyExpr!9633) lt!1059790))))

(assert (=> d!863868 (= (matchRSpec!1770 lt!1059790 s!11993) e!1952661)))

(declare-fun b!3128318 () Bool)

(declare-fun e!1952666 () Bool)

(assert (=> b!3128318 (= e!1952662 e!1952666)))

(declare-fun res!1279276 () Bool)

(assert (=> b!3128318 (= res!1279276 (matchRSpec!1770 (regOne!19779 lt!1059790) s!11993))))

(assert (=> b!3128318 (=> res!1279276 e!1952666)))

(declare-fun b!3128319 () Bool)

(assert (=> b!3128319 (= e!1952666 (matchRSpec!1770 (regTwo!19779 lt!1059790) s!11993))))

(assert (= (and d!863868 c!524971) b!3128317))

(assert (= (and d!863868 (not c!524971)) b!3128313))

(assert (= (and b!3128313 res!1279277) b!3128310))

(assert (= (and b!3128310 c!524972) b!3128314))

(assert (= (and b!3128310 (not c!524972)) b!3128312))

(assert (= (and b!3128312 c!524973) b!3128318))

(assert (= (and b!3128312 (not c!524973)) b!3128315))

(assert (= (and b!3128318 (not res!1279276)) b!3128319))

(assert (= (and b!3128315 c!524974) b!3128316))

(assert (= (and b!3128315 (not c!524974)) b!3128309))

(assert (= (and b!3128316 (not res!1279278)) b!3128311))

(assert (= (or b!3128311 b!3128309) bm!223271))

(assert (= (or b!3128317 b!3128316) bm!223270))

(assert (=> bm!223270 m!3412055))

(declare-fun m!3412135 () Bool)

(assert (=> bm!223271 m!3412135))

(declare-fun m!3412137 () Bool)

(assert (=> b!3128318 m!3412137))

(declare-fun m!3412139 () Bool)

(assert (=> b!3128319 m!3412139))

(assert (=> b!3128189 d!863868))

(declare-fun d!863878 () Bool)

(assert (=> d!863878 (= (matchR!4515 lt!1059790 s!11993) (matchRSpec!1770 lt!1059790 s!11993))))

(declare-fun lt!1059804 () Unit!49705)

(declare-fun choose!18478 (Regex!9633 List!35498) Unit!49705)

(assert (=> d!863878 (= lt!1059804 (choose!18478 lt!1059790 s!11993))))

(assert (=> d!863878 (validRegex!4366 lt!1059790)))

(assert (=> d!863878 (= (mainMatchTheorem!1770 lt!1059790 s!11993) lt!1059804)))

(declare-fun bs!537239 () Bool)

(assert (= bs!537239 d!863878))

(assert (=> bs!537239 m!3412079))

(assert (=> bs!537239 m!3412057))

(declare-fun m!3412141 () Bool)

(assert (=> bs!537239 m!3412141))

(assert (=> bs!537239 m!3412117))

(assert (=> b!3128189 d!863878))

(declare-fun d!863880 () Bool)

(declare-fun nullableFct!916 (Regex!9633) Bool)

(assert (=> d!863880 (= (nullable!3271 (reg!9962 r!17423)) (nullableFct!916 (reg!9962 r!17423)))))

(declare-fun bs!537240 () Bool)

(assert (= bs!537240 d!863880))

(declare-fun m!3412143 () Bool)

(assert (=> bs!537240 m!3412143))

(assert (=> b!3128187 d!863880))

(declare-fun bs!537241 () Bool)

(declare-fun b!3128364 () Bool)

(assert (= bs!537241 (and b!3128364 b!3128181)))

(declare-fun lambda!115473 () Int)

(assert (=> bs!537241 (not (= lambda!115473 lambda!115465))))

(assert (=> bs!537241 (= (and (= (_1!20254 lt!1059786) s!11993) (= (reg!9962 (reg!9962 r!17423)) lt!1059785) (= (reg!9962 r!17423) lt!1059790)) (= lambda!115473 lambda!115466))))

(declare-fun bs!537242 () Bool)

(assert (= bs!537242 (and b!3128364 b!3128311)))

(assert (=> bs!537242 (= (and (= (_1!20254 lt!1059786) s!11993) (= (reg!9962 (reg!9962 r!17423)) (reg!9962 lt!1059790)) (= (reg!9962 r!17423) lt!1059790)) (= lambda!115473 lambda!115471))))

(declare-fun bs!537243 () Bool)

(assert (= bs!537243 (and b!3128364 b!3128309)))

(assert (=> bs!537243 (not (= lambda!115473 lambda!115472))))

(assert (=> b!3128364 true))

(assert (=> b!3128364 true))

(declare-fun bs!537244 () Bool)

(declare-fun b!3128362 () Bool)

(assert (= bs!537244 (and b!3128362 b!3128311)))

(declare-fun lambda!115474 () Int)

(assert (=> bs!537244 (not (= lambda!115474 lambda!115471))))

(declare-fun bs!537245 () Bool)

(assert (= bs!537245 (and b!3128362 b!3128181)))

(assert (=> bs!537245 (not (= lambda!115474 lambda!115465))))

(assert (=> bs!537245 (not (= lambda!115474 lambda!115466))))

(declare-fun bs!537246 () Bool)

(assert (= bs!537246 (and b!3128362 b!3128364)))

(assert (=> bs!537246 (not (= lambda!115474 lambda!115473))))

(declare-fun bs!537247 () Bool)

(assert (= bs!537247 (and b!3128362 b!3128309)))

(assert (=> bs!537247 (= (and (= (_1!20254 lt!1059786) s!11993) (= (regOne!19778 (reg!9962 r!17423)) (regOne!19778 lt!1059790)) (= (regTwo!19778 (reg!9962 r!17423)) (regTwo!19778 lt!1059790))) (= lambda!115474 lambda!115472))))

(assert (=> b!3128362 true))

(assert (=> b!3128362 true))

(declare-fun e!1952688 () Bool)

(declare-fun call!223281 () Bool)

(assert (=> b!3128362 (= e!1952688 call!223281)))

(declare-fun b!3128363 () Bool)

(declare-fun c!524985 () Bool)

(assert (=> b!3128363 (= c!524985 ((_ is ElementMatch!9633) (reg!9962 r!17423)))))

(declare-fun e!1952693 () Bool)

(declare-fun e!1952692 () Bool)

(assert (=> b!3128363 (= e!1952693 e!1952692)))

(declare-fun bm!223275 () Bool)

(declare-fun call!223280 () Bool)

(assert (=> bm!223275 (= call!223280 (isEmpty!19725 (_1!20254 lt!1059786)))))

(declare-fun e!1952691 () Bool)

(assert (=> b!3128364 (= e!1952691 call!223281)))

(declare-fun c!524987 () Bool)

(declare-fun bm!223276 () Bool)

(assert (=> bm!223276 (= call!223281 (Exists!1887 (ite c!524987 lambda!115473 lambda!115474)))))

(declare-fun b!3128366 () Bool)

(declare-fun e!1952689 () Bool)

(assert (=> b!3128366 (= e!1952689 e!1952693)))

(declare-fun res!1279304 () Bool)

(assert (=> b!3128366 (= res!1279304 (not ((_ is EmptyLang!9633) (reg!9962 r!17423))))))

(assert (=> b!3128366 (=> (not res!1279304) (not e!1952693))))

(declare-fun b!3128367 () Bool)

(assert (=> b!3128367 (= e!1952692 (= (_1!20254 lt!1059786) (Cons!35374 (c!524943 (reg!9962 r!17423)) Nil!35374)))))

(declare-fun b!3128368 () Bool)

(declare-fun e!1952690 () Bool)

(assert (=> b!3128368 (= e!1952690 e!1952688)))

(assert (=> b!3128368 (= c!524987 ((_ is Star!9633) (reg!9962 r!17423)))))

(declare-fun b!3128369 () Bool)

(declare-fun res!1279305 () Bool)

(assert (=> b!3128369 (=> res!1279305 e!1952691)))

(assert (=> b!3128369 (= res!1279305 call!223280)))

(assert (=> b!3128369 (= e!1952688 e!1952691)))

(declare-fun b!3128370 () Bool)

(assert (=> b!3128370 (= e!1952689 call!223280)))

(declare-fun b!3128365 () Bool)

(declare-fun c!524986 () Bool)

(assert (=> b!3128365 (= c!524986 ((_ is Union!9633) (reg!9962 r!17423)))))

(assert (=> b!3128365 (= e!1952692 e!1952690)))

(declare-fun d!863882 () Bool)

(declare-fun c!524984 () Bool)

(assert (=> d!863882 (= c!524984 ((_ is EmptyExpr!9633) (reg!9962 r!17423)))))

(assert (=> d!863882 (= (matchRSpec!1770 (reg!9962 r!17423) (_1!20254 lt!1059786)) e!1952689)))

(declare-fun b!3128371 () Bool)

(declare-fun e!1952694 () Bool)

(assert (=> b!3128371 (= e!1952690 e!1952694)))

(declare-fun res!1279303 () Bool)

(assert (=> b!3128371 (= res!1279303 (matchRSpec!1770 (regOne!19779 (reg!9962 r!17423)) (_1!20254 lt!1059786)))))

(assert (=> b!3128371 (=> res!1279303 e!1952694)))

(declare-fun b!3128372 () Bool)

(assert (=> b!3128372 (= e!1952694 (matchRSpec!1770 (regTwo!19779 (reg!9962 r!17423)) (_1!20254 lt!1059786)))))

(assert (= (and d!863882 c!524984) b!3128370))

(assert (= (and d!863882 (not c!524984)) b!3128366))

(assert (= (and b!3128366 res!1279304) b!3128363))

(assert (= (and b!3128363 c!524985) b!3128367))

(assert (= (and b!3128363 (not c!524985)) b!3128365))

(assert (= (and b!3128365 c!524986) b!3128371))

(assert (= (and b!3128365 (not c!524986)) b!3128368))

(assert (= (and b!3128371 (not res!1279303)) b!3128372))

(assert (= (and b!3128368 c!524987) b!3128369))

(assert (= (and b!3128368 (not c!524987)) b!3128362))

(assert (= (and b!3128369 (not res!1279305)) b!3128364))

(assert (= (or b!3128364 b!3128362) bm!223276))

(assert (= (or b!3128370 b!3128369) bm!223275))

(assert (=> bm!223275 m!3412061))

(declare-fun m!3412157 () Bool)

(assert (=> bm!223276 m!3412157))

(declare-fun m!3412159 () Bool)

(assert (=> b!3128371 m!3412159))

(declare-fun m!3412161 () Bool)

(assert (=> b!3128372 m!3412161))

(assert (=> b!3128187 d!863882))

(declare-fun d!863886 () Bool)

(assert (=> d!863886 (= (matchR!4515 (reg!9962 r!17423) (_1!20254 lt!1059786)) (matchRSpec!1770 (reg!9962 r!17423) (_1!20254 lt!1059786)))))

(declare-fun lt!1059808 () Unit!49705)

(assert (=> d!863886 (= lt!1059808 (choose!18478 (reg!9962 r!17423) (_1!20254 lt!1059786)))))

(assert (=> d!863886 (validRegex!4366 (reg!9962 r!17423))))

(assert (=> d!863886 (= (mainMatchTheorem!1770 (reg!9962 r!17423) (_1!20254 lt!1059786)) lt!1059808)))

(declare-fun bs!537248 () Bool)

(assert (= bs!537248 d!863886))

(assert (=> bs!537248 m!3412085))

(assert (=> bs!537248 m!3412107))

(declare-fun m!3412163 () Bool)

(assert (=> bs!537248 m!3412163))

(declare-fun m!3412165 () Bool)

(assert (=> bs!537248 m!3412165))

(assert (=> b!3128187 d!863886))

(declare-fun b!3128421 () Bool)

(declare-fun e!1952728 () Bool)

(declare-fun call!223292 () Bool)

(assert (=> b!3128421 (= e!1952728 call!223292)))

(declare-fun b!3128422 () Bool)

(declare-fun e!1952724 () Bool)

(declare-fun call!223290 () Bool)

(assert (=> b!3128422 (= e!1952724 call!223290)))

(declare-fun d!863888 () Bool)

(declare-fun res!1279334 () Bool)

(declare-fun e!1952727 () Bool)

(assert (=> d!863888 (=> res!1279334 e!1952727)))

(assert (=> d!863888 (= res!1279334 ((_ is ElementMatch!9633) r!17423))))

(assert (=> d!863888 (= (validRegex!4366 r!17423) e!1952727)))

(declare-fun b!3128423 () Bool)

(declare-fun e!1952729 () Bool)

(assert (=> b!3128423 (= e!1952727 e!1952729)))

(declare-fun c!525000 () Bool)

(assert (=> b!3128423 (= c!525000 ((_ is Star!9633) r!17423))))

(declare-fun bm!223285 () Bool)

(declare-fun c!524999 () Bool)

(assert (=> bm!223285 (= call!223290 (validRegex!4366 (ite c!524999 (regTwo!19779 r!17423) (regOne!19778 r!17423))))))

(declare-fun b!3128424 () Bool)

(declare-fun e!1952725 () Bool)

(declare-fun e!1952726 () Bool)

(assert (=> b!3128424 (= e!1952725 e!1952726)))

(declare-fun res!1279333 () Bool)

(assert (=> b!3128424 (=> (not res!1279333) (not e!1952726))))

(assert (=> b!3128424 (= res!1279333 call!223290)))

(declare-fun bm!223286 () Bool)

(assert (=> bm!223286 (= call!223292 (validRegex!4366 (ite c!525000 (reg!9962 r!17423) (ite c!524999 (regOne!19779 r!17423) (regTwo!19778 r!17423)))))))

(declare-fun b!3128425 () Bool)

(declare-fun e!1952730 () Bool)

(assert (=> b!3128425 (= e!1952729 e!1952730)))

(assert (=> b!3128425 (= c!524999 ((_ is Union!9633) r!17423))))

(declare-fun bm!223287 () Bool)

(declare-fun call!223291 () Bool)

(assert (=> bm!223287 (= call!223291 call!223292)))

(declare-fun b!3128426 () Bool)

(assert (=> b!3128426 (= e!1952726 call!223291)))

(declare-fun b!3128427 () Bool)

(declare-fun res!1279335 () Bool)

(assert (=> b!3128427 (=> res!1279335 e!1952725)))

(assert (=> b!3128427 (= res!1279335 (not ((_ is Concat!14954) r!17423)))))

(assert (=> b!3128427 (= e!1952730 e!1952725)))

(declare-fun b!3128428 () Bool)

(assert (=> b!3128428 (= e!1952729 e!1952728)))

(declare-fun res!1279336 () Bool)

(assert (=> b!3128428 (= res!1279336 (not (nullable!3271 (reg!9962 r!17423))))))

(assert (=> b!3128428 (=> (not res!1279336) (not e!1952728))))

(declare-fun b!3128429 () Bool)

(declare-fun res!1279332 () Bool)

(assert (=> b!3128429 (=> (not res!1279332) (not e!1952724))))

(assert (=> b!3128429 (= res!1279332 call!223291)))

(assert (=> b!3128429 (= e!1952730 e!1952724)))

(assert (= (and d!863888 (not res!1279334)) b!3128423))

(assert (= (and b!3128423 c!525000) b!3128428))

(assert (= (and b!3128423 (not c!525000)) b!3128425))

(assert (= (and b!3128428 res!1279336) b!3128421))

(assert (= (and b!3128425 c!524999) b!3128429))

(assert (= (and b!3128425 (not c!524999)) b!3128427))

(assert (= (and b!3128429 res!1279332) b!3128422))

(assert (= (and b!3128427 (not res!1279335)) b!3128424))

(assert (= (and b!3128424 res!1279333) b!3128426))

(assert (= (or b!3128429 b!3128426) bm!223287))

(assert (= (or b!3128422 b!3128424) bm!223285))

(assert (= (or b!3128421 bm!223287) bm!223286))

(declare-fun m!3412197 () Bool)

(assert (=> bm!223285 m!3412197))

(declare-fun m!3412199 () Bool)

(assert (=> bm!223286 m!3412199))

(assert (=> b!3128428 m!3412105))

(assert (=> start!295480 d!863888))

(declare-fun d!863902 () Bool)

(declare-fun lt!1059815 () Int)

(assert (=> d!863902 (>= lt!1059815 0)))

(declare-fun e!1952733 () Int)

(assert (=> d!863902 (= lt!1059815 e!1952733)))

(declare-fun c!525003 () Bool)

(assert (=> d!863902 (= c!525003 ((_ is Nil!35374) (_1!20254 lt!1059786)))))

(assert (=> d!863902 (= (size!26589 (_1!20254 lt!1059786)) lt!1059815)))

(declare-fun b!3128434 () Bool)

(assert (=> b!3128434 (= e!1952733 0)))

(declare-fun b!3128435 () Bool)

(assert (=> b!3128435 (= e!1952733 (+ 1 (size!26589 (t!234563 (_1!20254 lt!1059786)))))))

(assert (= (and d!863902 c!525003) b!3128434))

(assert (= (and d!863902 (not c!525003)) b!3128435))

(declare-fun m!3412201 () Bool)

(assert (=> b!3128435 m!3412201))

(assert (=> b!3128184 d!863902))

(declare-fun bm!223288 () Bool)

(declare-fun call!223293 () Bool)

(assert (=> bm!223288 (= call!223293 (isEmpty!19725 (_2!20254 lt!1059786)))))

(declare-fun b!3128436 () Bool)

(declare-fun e!1952736 () Bool)

(assert (=> b!3128436 (= e!1952736 (not (= (head!6924 (_2!20254 lt!1059786)) (c!524943 lt!1059790))))))

(declare-fun b!3128437 () Bool)

(declare-fun e!1952739 () Bool)

(declare-fun lt!1059816 () Bool)

(assert (=> b!3128437 (= e!1952739 (= lt!1059816 call!223293))))

(declare-fun b!3128438 () Bool)

(declare-fun e!1952740 () Bool)

(assert (=> b!3128438 (= e!1952740 (matchR!4515 (derivativeStep!2865 lt!1059790 (head!6924 (_2!20254 lt!1059786))) (tail!5150 (_2!20254 lt!1059786))))))

(declare-fun b!3128439 () Bool)

(declare-fun e!1952737 () Bool)

(assert (=> b!3128439 (= e!1952737 e!1952736)))

(declare-fun res!1279339 () Bool)

(assert (=> b!3128439 (=> res!1279339 e!1952736)))

(assert (=> b!3128439 (= res!1279339 call!223293)))

(declare-fun b!3128440 () Bool)

(declare-fun res!1279343 () Bool)

(declare-fun e!1952735 () Bool)

(assert (=> b!3128440 (=> (not res!1279343) (not e!1952735))))

(assert (=> b!3128440 (= res!1279343 (isEmpty!19725 (tail!5150 (_2!20254 lt!1059786))))))

(declare-fun b!3128441 () Bool)

(declare-fun e!1952738 () Bool)

(assert (=> b!3128441 (= e!1952738 (not lt!1059816))))

(declare-fun b!3128442 () Bool)

(declare-fun res!1279342 () Bool)

(declare-fun e!1952734 () Bool)

(assert (=> b!3128442 (=> res!1279342 e!1952734)))

(assert (=> b!3128442 (= res!1279342 (not ((_ is ElementMatch!9633) lt!1059790)))))

(assert (=> b!3128442 (= e!1952738 e!1952734)))

(declare-fun b!3128444 () Bool)

(assert (=> b!3128444 (= e!1952739 e!1952738)))

(declare-fun c!525005 () Bool)

(assert (=> b!3128444 (= c!525005 ((_ is EmptyLang!9633) lt!1059790))))

(declare-fun b!3128445 () Bool)

(assert (=> b!3128445 (= e!1952735 (= (head!6924 (_2!20254 lt!1059786)) (c!524943 lt!1059790)))))

(declare-fun b!3128446 () Bool)

(assert (=> b!3128446 (= e!1952734 e!1952737)))

(declare-fun res!1279344 () Bool)

(assert (=> b!3128446 (=> (not res!1279344) (not e!1952737))))

(assert (=> b!3128446 (= res!1279344 (not lt!1059816))))

(declare-fun b!3128447 () Bool)

(declare-fun res!1279341 () Bool)

(assert (=> b!3128447 (=> (not res!1279341) (not e!1952735))))

(assert (=> b!3128447 (= res!1279341 (not call!223293))))

(declare-fun b!3128443 () Bool)

(declare-fun res!1279338 () Bool)

(assert (=> b!3128443 (=> res!1279338 e!1952736)))

(assert (=> b!3128443 (= res!1279338 (not (isEmpty!19725 (tail!5150 (_2!20254 lt!1059786)))))))

(declare-fun d!863904 () Bool)

(assert (=> d!863904 e!1952739))

(declare-fun c!525004 () Bool)

(assert (=> d!863904 (= c!525004 ((_ is EmptyExpr!9633) lt!1059790))))

(assert (=> d!863904 (= lt!1059816 e!1952740)))

(declare-fun c!525006 () Bool)

(assert (=> d!863904 (= c!525006 (isEmpty!19725 (_2!20254 lt!1059786)))))

(assert (=> d!863904 (validRegex!4366 lt!1059790)))

(assert (=> d!863904 (= (matchR!4515 lt!1059790 (_2!20254 lt!1059786)) lt!1059816)))

(declare-fun b!3128448 () Bool)

(assert (=> b!3128448 (= e!1952740 (nullable!3271 lt!1059790))))

(declare-fun b!3128449 () Bool)

(declare-fun res!1279337 () Bool)

(assert (=> b!3128449 (=> res!1279337 e!1952734)))

(assert (=> b!3128449 (= res!1279337 e!1952735)))

(declare-fun res!1279340 () Bool)

(assert (=> b!3128449 (=> (not res!1279340) (not e!1952735))))

(assert (=> b!3128449 (= res!1279340 lt!1059816)))

(assert (= (and d!863904 c!525006) b!3128448))

(assert (= (and d!863904 (not c!525006)) b!3128438))

(assert (= (and d!863904 c!525004) b!3128437))

(assert (= (and d!863904 (not c!525004)) b!3128444))

(assert (= (and b!3128444 c!525005) b!3128441))

(assert (= (and b!3128444 (not c!525005)) b!3128442))

(assert (= (and b!3128442 (not res!1279342)) b!3128449))

(assert (= (and b!3128449 res!1279340) b!3128447))

(assert (= (and b!3128447 res!1279341) b!3128440))

(assert (= (and b!3128440 res!1279343) b!3128445))

(assert (= (and b!3128449 (not res!1279337)) b!3128446))

(assert (= (and b!3128446 res!1279344) b!3128439))

(assert (= (and b!3128439 (not res!1279339)) b!3128443))

(assert (= (and b!3128443 (not res!1279338)) b!3128436))

(assert (= (or b!3128437 b!3128439 b!3128447) bm!223288))

(declare-fun m!3412203 () Bool)

(assert (=> b!3128443 m!3412203))

(assert (=> b!3128443 m!3412203))

(declare-fun m!3412205 () Bool)

(assert (=> b!3128443 m!3412205))

(assert (=> b!3128440 m!3412203))

(assert (=> b!3128440 m!3412203))

(assert (=> b!3128440 m!3412205))

(declare-fun m!3412207 () Bool)

(assert (=> d!863904 m!3412207))

(assert (=> d!863904 m!3412117))

(assert (=> bm!223288 m!3412207))

(declare-fun m!3412209 () Bool)

(assert (=> b!3128445 m!3412209))

(assert (=> b!3128438 m!3412209))

(assert (=> b!3128438 m!3412209))

(declare-fun m!3412211 () Bool)

(assert (=> b!3128438 m!3412211))

(assert (=> b!3128438 m!3412203))

(assert (=> b!3128438 m!3412211))

(assert (=> b!3128438 m!3412203))

(declare-fun m!3412213 () Bool)

(assert (=> b!3128438 m!3412213))

(assert (=> b!3128448 m!3412125))

(assert (=> b!3128436 m!3412209))

(assert (=> b!3128185 d!863904))

(declare-fun d!863906 () Bool)

(assert (=> d!863906 (= (isEmptyLang!684 lt!1059785) ((_ is EmptyLang!9633) lt!1059785))))

(assert (=> b!3128183 d!863906))

(declare-fun b!3128575 () Bool)

(declare-fun e!1952812 () Bool)

(declare-fun call!223331 () Bool)

(assert (=> b!3128575 (= e!1952812 call!223331)))

(declare-fun b!3128576 () Bool)

(declare-fun e!1952818 () Regex!9633)

(assert (=> b!3128576 (= e!1952818 EmptyLang!9633)))

(declare-fun c!525069 () Bool)

(declare-fun bm!223324 () Bool)

(declare-fun c!525068 () Bool)

(declare-fun call!223333 () Regex!9633)

(assert (=> bm!223324 (= call!223333 (simplify!588 (ite c!525068 (reg!9962 (reg!9962 r!17423)) (ite c!525069 (regOne!19779 (reg!9962 r!17423)) (regTwo!19778 (reg!9962 r!17423))))))))

(declare-fun b!3128577 () Bool)

(declare-fun e!1952822 () Regex!9633)

(declare-fun lt!1059854 () Regex!9633)

(assert (=> b!3128577 (= e!1952822 lt!1059854)))

(declare-fun b!3128578 () Bool)

(declare-fun e!1952814 () Bool)

(declare-fun lt!1059853 () Regex!9633)

(assert (=> b!3128578 (= e!1952814 (= (nullable!3271 lt!1059853) (nullable!3271 (reg!9962 r!17423))))))

(declare-fun b!3128579 () Bool)

(declare-fun e!1952811 () Regex!9633)

(assert (=> b!3128579 (= e!1952811 EmptyExpr!9633)))

(declare-fun b!3128580 () Bool)

(declare-fun c!525063 () Bool)

(assert (=> b!3128580 (= c!525063 e!1952812)))

(declare-fun res!1279362 () Bool)

(assert (=> b!3128580 (=> res!1279362 e!1952812)))

(declare-fun call!223334 () Bool)

(assert (=> b!3128580 (= res!1279362 call!223334)))

(declare-fun lt!1059850 () Regex!9633)

(assert (=> b!3128580 (= lt!1059850 call!223333)))

(declare-fun e!1952819 () Regex!9633)

(declare-fun e!1952813 () Regex!9633)

(assert (=> b!3128580 (= e!1952819 e!1952813)))

(declare-fun bm!223326 () Bool)

(declare-fun call!223329 () Regex!9633)

(assert (=> bm!223326 (= call!223329 (simplify!588 (ite c!525069 (regTwo!19779 (reg!9962 r!17423)) (regOne!19778 (reg!9962 r!17423)))))))

(declare-fun b!3128581 () Bool)

(declare-fun e!1952821 () Regex!9633)

(assert (=> b!3128581 (= e!1952821 e!1952818)))

(declare-fun lt!1059851 () Regex!9633)

(assert (=> b!3128581 (= lt!1059851 call!223329)))

(declare-fun call!223335 () Regex!9633)

(assert (=> b!3128581 (= lt!1059854 call!223335)))

(declare-fun res!1279360 () Bool)

(declare-fun call!223330 () Bool)

(assert (=> b!3128581 (= res!1279360 call!223330)))

(declare-fun e!1952823 () Bool)

(assert (=> b!3128581 (=> res!1279360 e!1952823)))

(declare-fun c!525066 () Bool)

(assert (=> b!3128581 (= c!525066 e!1952823)))

(declare-fun b!3128582 () Bool)

(declare-fun c!525065 () Bool)

(assert (=> b!3128582 (= c!525065 call!223330)))

(declare-fun e!1952824 () Regex!9633)

(declare-fun e!1952816 () Regex!9633)

(assert (=> b!3128582 (= e!1952824 e!1952816)))

(declare-fun b!3128583 () Bool)

(declare-fun lt!1059852 () Regex!9633)

(assert (=> b!3128583 (= e!1952824 lt!1059852)))

(declare-fun b!3128584 () Bool)

(declare-fun e!1952820 () Regex!9633)

(declare-fun e!1952817 () Regex!9633)

(assert (=> b!3128584 (= e!1952820 e!1952817)))

(declare-fun c!525071 () Bool)

(assert (=> b!3128584 (= c!525071 ((_ is ElementMatch!9633) (reg!9962 r!17423)))))

(declare-fun bm!223327 () Bool)

(assert (=> bm!223327 (= call!223330 (isEmptyLang!684 (ite c!525069 lt!1059852 lt!1059851)))))

(declare-fun b!3128585 () Bool)

(assert (=> b!3128585 (= e!1952820 EmptyLang!9633)))

(declare-fun b!3128586 () Bool)

(declare-fun e!1952815 () Regex!9633)

(assert (=> b!3128586 (= e!1952822 e!1952815)))

(declare-fun c!525072 () Bool)

(declare-fun isEmptyExpr!682 (Regex!9633) Bool)

(assert (=> b!3128586 (= c!525072 (isEmptyExpr!682 lt!1059854))))

(declare-fun b!3128587 () Bool)

(declare-fun lt!1059849 () Regex!9633)

(assert (=> b!3128587 (= e!1952816 (Union!9633 lt!1059849 lt!1059852))))

(declare-fun b!3128588 () Bool)

(assert (=> b!3128588 (= c!525069 ((_ is Union!9633) (reg!9962 r!17423)))))

(assert (=> b!3128588 (= e!1952819 e!1952821)))

(declare-fun bm!223325 () Bool)

(assert (=> bm!223325 (= call!223331 (isEmptyExpr!682 (ite c!525068 lt!1059850 lt!1059851)))))

(declare-fun d!863908 () Bool)

(assert (=> d!863908 e!1952814))

(declare-fun res!1279361 () Bool)

(assert (=> d!863908 (=> (not res!1279361) (not e!1952814))))

(assert (=> d!863908 (= res!1279361 (validRegex!4366 lt!1059853))))

(assert (=> d!863908 (= lt!1059853 e!1952820)))

(declare-fun c!525064 () Bool)

(assert (=> d!863908 (= c!525064 ((_ is EmptyLang!9633) (reg!9962 r!17423)))))

(assert (=> d!863908 (validRegex!4366 (reg!9962 r!17423))))

(assert (=> d!863908 (= (simplify!588 (reg!9962 r!17423)) lt!1059853)))

(declare-fun bm!223328 () Bool)

(assert (=> bm!223328 (= call!223334 (isEmptyLang!684 (ite c!525068 lt!1059850 (ite c!525069 lt!1059849 lt!1059854))))))

(declare-fun b!3128589 () Bool)

(assert (=> b!3128589 (= e!1952816 lt!1059849)))

(declare-fun bm!223329 () Bool)

(assert (=> bm!223329 (= call!223335 call!223333)))

(declare-fun b!3128590 () Bool)

(assert (=> b!3128590 (= e!1952815 (Concat!14954 lt!1059851 lt!1059854))))

(declare-fun b!3128591 () Bool)

(declare-fun c!525062 () Bool)

(assert (=> b!3128591 (= c!525062 call!223331)))

(assert (=> b!3128591 (= e!1952818 e!1952822)))

(declare-fun b!3128592 () Bool)

(assert (=> b!3128592 (= e!1952817 (reg!9962 r!17423))))

(declare-fun b!3128593 () Bool)

(declare-fun call!223332 () Bool)

(assert (=> b!3128593 (= e!1952823 call!223332)))

(declare-fun b!3128594 () Bool)

(assert (=> b!3128594 (= e!1952811 e!1952819)))

(assert (=> b!3128594 (= c!525068 ((_ is Star!9633) (reg!9962 r!17423)))))

(declare-fun b!3128595 () Bool)

(assert (=> b!3128595 (= e!1952813 (Star!9633 lt!1059850))))

(declare-fun b!3128596 () Bool)

(assert (=> b!3128596 (= e!1952821 e!1952824)))

(assert (=> b!3128596 (= lt!1059849 call!223335)))

(assert (=> b!3128596 (= lt!1059852 call!223329)))

(declare-fun c!525070 () Bool)

(assert (=> b!3128596 (= c!525070 call!223332)))

(declare-fun b!3128597 () Bool)

(assert (=> b!3128597 (= e!1952815 lt!1059851)))

(declare-fun b!3128598 () Bool)

(declare-fun c!525067 () Bool)

(assert (=> b!3128598 (= c!525067 ((_ is EmptyExpr!9633) (reg!9962 r!17423)))))

(assert (=> b!3128598 (= e!1952817 e!1952811)))

(declare-fun b!3128599 () Bool)

(assert (=> b!3128599 (= e!1952813 EmptyExpr!9633)))

(declare-fun bm!223330 () Bool)

(assert (=> bm!223330 (= call!223332 call!223334)))

(assert (= (and d!863908 c!525064) b!3128585))

(assert (= (and d!863908 (not c!525064)) b!3128584))

(assert (= (and b!3128584 c!525071) b!3128592))

(assert (= (and b!3128584 (not c!525071)) b!3128598))

(assert (= (and b!3128598 c!525067) b!3128579))

(assert (= (and b!3128598 (not c!525067)) b!3128594))

(assert (= (and b!3128594 c!525068) b!3128580))

(assert (= (and b!3128594 (not c!525068)) b!3128588))

(assert (= (and b!3128580 (not res!1279362)) b!3128575))

(assert (= (and b!3128580 c!525063) b!3128599))

(assert (= (and b!3128580 (not c!525063)) b!3128595))

(assert (= (and b!3128588 c!525069) b!3128596))

(assert (= (and b!3128588 (not c!525069)) b!3128581))

(assert (= (and b!3128596 c!525070) b!3128583))

(assert (= (and b!3128596 (not c!525070)) b!3128582))

(assert (= (and b!3128582 c!525065) b!3128589))

(assert (= (and b!3128582 (not c!525065)) b!3128587))

(assert (= (and b!3128581 (not res!1279360)) b!3128593))

(assert (= (and b!3128581 c!525066) b!3128576))

(assert (= (and b!3128581 (not c!525066)) b!3128591))

(assert (= (and b!3128591 c!525062) b!3128577))

(assert (= (and b!3128591 (not c!525062)) b!3128586))

(assert (= (and b!3128586 c!525072) b!3128597))

(assert (= (and b!3128586 (not c!525072)) b!3128590))

(assert (= (or b!3128596 b!3128581) bm!223329))

(assert (= (or b!3128596 b!3128581) bm!223326))

(assert (= (or b!3128596 b!3128593) bm!223330))

(assert (= (or b!3128582 b!3128581) bm!223327))

(assert (= (or b!3128575 b!3128591) bm!223325))

(assert (= (or b!3128580 bm!223329) bm!223324))

(assert (= (or b!3128580 bm!223330) bm!223328))

(assert (= (and d!863908 res!1279361) b!3128578))

(declare-fun m!3412231 () Bool)

(assert (=> bm!223328 m!3412231))

(declare-fun m!3412233 () Bool)

(assert (=> bm!223327 m!3412233))

(declare-fun m!3412235 () Bool)

(assert (=> b!3128578 m!3412235))

(assert (=> b!3128578 m!3412105))

(declare-fun m!3412237 () Bool)

(assert (=> bm!223324 m!3412237))

(declare-fun m!3412239 () Bool)

(assert (=> d!863908 m!3412239))

(assert (=> d!863908 m!3412165))

(declare-fun m!3412241 () Bool)

(assert (=> bm!223326 m!3412241))

(declare-fun m!3412243 () Bool)

(assert (=> bm!223325 m!3412243))

(declare-fun m!3412245 () Bool)

(assert (=> b!3128586 m!3412245))

(assert (=> b!3128183 d!863908))

(declare-fun d!863912 () Bool)

(assert (=> d!863912 (= (isEmpty!19725 (_1!20254 lt!1059786)) ((_ is Nil!35374) (_1!20254 lt!1059786)))))

(assert (=> b!3128182 d!863912))

(declare-fun b!3128615 () Bool)

(declare-fun e!1952831 () Bool)

(declare-fun lt!1059858 () List!35498)

(assert (=> b!3128615 (= e!1952831 (or (not (= (_2!20254 lt!1059786) Nil!35374)) (= lt!1059858 (_1!20254 lt!1059786))))))

(declare-fun d!863914 () Bool)

(assert (=> d!863914 e!1952831))

(declare-fun res!1279371 () Bool)

(assert (=> d!863914 (=> (not res!1279371) (not e!1952831))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4823 (List!35498) (InoxSet C!19452))

(assert (=> d!863914 (= res!1279371 (= (content!4823 lt!1059858) ((_ map or) (content!4823 (_1!20254 lt!1059786)) (content!4823 (_2!20254 lt!1059786)))))))

(declare-fun e!1952832 () List!35498)

(assert (=> d!863914 (= lt!1059858 e!1952832)))

(declare-fun c!525075 () Bool)

(assert (=> d!863914 (= c!525075 ((_ is Nil!35374) (_1!20254 lt!1059786)))))

(assert (=> d!863914 (= (++!8511 (_1!20254 lt!1059786) (_2!20254 lt!1059786)) lt!1059858)))

(declare-fun b!3128612 () Bool)

(assert (=> b!3128612 (= e!1952832 (_2!20254 lt!1059786))))

(declare-fun b!3128614 () Bool)

(declare-fun res!1279372 () Bool)

(assert (=> b!3128614 (=> (not res!1279372) (not e!1952831))))

(assert (=> b!3128614 (= res!1279372 (= (size!26589 lt!1059858) (+ (size!26589 (_1!20254 lt!1059786)) (size!26589 (_2!20254 lt!1059786)))))))

(declare-fun b!3128613 () Bool)

(assert (=> b!3128613 (= e!1952832 (Cons!35374 (h!40794 (_1!20254 lt!1059786)) (++!8511 (t!234563 (_1!20254 lt!1059786)) (_2!20254 lt!1059786))))))

(assert (= (and d!863914 c!525075) b!3128612))

(assert (= (and d!863914 (not c!525075)) b!3128613))

(assert (= (and d!863914 res!1279371) b!3128614))

(assert (= (and b!3128614 res!1279372) b!3128615))

(declare-fun m!3412255 () Bool)

(assert (=> d!863914 m!3412255))

(declare-fun m!3412257 () Bool)

(assert (=> d!863914 m!3412257))

(declare-fun m!3412259 () Bool)

(assert (=> d!863914 m!3412259))

(declare-fun m!3412261 () Bool)

(assert (=> b!3128614 m!3412261))

(assert (=> b!3128614 m!3412093))

(assert (=> b!3128614 m!3412083))

(declare-fun m!3412263 () Bool)

(assert (=> b!3128613 m!3412263))

(assert (=> b!3128191 d!863914))

(declare-fun d!863920 () Bool)

(declare-fun lt!1059859 () Int)

(assert (=> d!863920 (>= lt!1059859 0)))

(declare-fun e!1952833 () Int)

(assert (=> d!863920 (= lt!1059859 e!1952833)))

(declare-fun c!525076 () Bool)

(assert (=> d!863920 (= c!525076 ((_ is Nil!35374) s!11993))))

(assert (=> d!863920 (= (size!26589 s!11993) lt!1059859)))

(declare-fun b!3128616 () Bool)

(assert (=> b!3128616 (= e!1952833 0)))

(declare-fun b!3128617 () Bool)

(assert (=> b!3128617 (= e!1952833 (+ 1 (size!26589 (t!234563 s!11993))))))

(assert (= (and d!863920 c!525076) b!3128616))

(assert (= (and d!863920 (not c!525076)) b!3128617))

(declare-fun m!3412265 () Bool)

(assert (=> b!3128617 m!3412265))

(assert (=> b!3128180 d!863920))

(declare-fun d!863922 () Bool)

(declare-fun lt!1059860 () Int)

(assert (=> d!863922 (>= lt!1059860 0)))

(declare-fun e!1952834 () Int)

(assert (=> d!863922 (= lt!1059860 e!1952834)))

(declare-fun c!525077 () Bool)

(assert (=> d!863922 (= c!525077 ((_ is Nil!35374) (_2!20254 lt!1059786)))))

(assert (=> d!863922 (= (size!26589 (_2!20254 lt!1059786)) lt!1059860)))

(declare-fun b!3128618 () Bool)

(assert (=> b!3128618 (= e!1952834 0)))

(declare-fun b!3128619 () Bool)

(assert (=> b!3128619 (= e!1952834 (+ 1 (size!26589 (t!234563 (_2!20254 lt!1059786)))))))

(assert (= (and d!863922 c!525077) b!3128618))

(assert (= (and d!863922 (not c!525077)) b!3128619))

(declare-fun m!3412267 () Bool)

(assert (=> b!3128619 m!3412267))

(assert (=> b!3128180 d!863922))

(declare-fun bm!223331 () Bool)

(declare-fun call!223336 () Bool)

(assert (=> bm!223331 (= call!223336 (isEmpty!19725 (_1!20254 lt!1059786)))))

(declare-fun b!3128620 () Bool)

(declare-fun e!1952837 () Bool)

(assert (=> b!3128620 (= e!1952837 (not (= (head!6924 (_1!20254 lt!1059786)) (c!524943 (reg!9962 r!17423)))))))

(declare-fun b!3128621 () Bool)

(declare-fun e!1952840 () Bool)

(declare-fun lt!1059861 () Bool)

(assert (=> b!3128621 (= e!1952840 (= lt!1059861 call!223336))))

(declare-fun b!3128622 () Bool)

(declare-fun e!1952841 () Bool)

(assert (=> b!3128622 (= e!1952841 (matchR!4515 (derivativeStep!2865 (reg!9962 r!17423) (head!6924 (_1!20254 lt!1059786))) (tail!5150 (_1!20254 lt!1059786))))))

(declare-fun b!3128623 () Bool)

(declare-fun e!1952838 () Bool)

(assert (=> b!3128623 (= e!1952838 e!1952837)))

(declare-fun res!1279375 () Bool)

(assert (=> b!3128623 (=> res!1279375 e!1952837)))

(assert (=> b!3128623 (= res!1279375 call!223336)))

(declare-fun b!3128624 () Bool)

(declare-fun res!1279379 () Bool)

(declare-fun e!1952836 () Bool)

(assert (=> b!3128624 (=> (not res!1279379) (not e!1952836))))

(assert (=> b!3128624 (= res!1279379 (isEmpty!19725 (tail!5150 (_1!20254 lt!1059786))))))

(declare-fun b!3128625 () Bool)

(declare-fun e!1952839 () Bool)

(assert (=> b!3128625 (= e!1952839 (not lt!1059861))))

(declare-fun b!3128626 () Bool)

(declare-fun res!1279378 () Bool)

(declare-fun e!1952835 () Bool)

(assert (=> b!3128626 (=> res!1279378 e!1952835)))

(assert (=> b!3128626 (= res!1279378 (not ((_ is ElementMatch!9633) (reg!9962 r!17423))))))

(assert (=> b!3128626 (= e!1952839 e!1952835)))

(declare-fun b!3128628 () Bool)

(assert (=> b!3128628 (= e!1952840 e!1952839)))

(declare-fun c!525079 () Bool)

(assert (=> b!3128628 (= c!525079 ((_ is EmptyLang!9633) (reg!9962 r!17423)))))

(declare-fun b!3128629 () Bool)

(assert (=> b!3128629 (= e!1952836 (= (head!6924 (_1!20254 lt!1059786)) (c!524943 (reg!9962 r!17423))))))

(declare-fun b!3128630 () Bool)

(assert (=> b!3128630 (= e!1952835 e!1952838)))

(declare-fun res!1279380 () Bool)

(assert (=> b!3128630 (=> (not res!1279380) (not e!1952838))))

(assert (=> b!3128630 (= res!1279380 (not lt!1059861))))

(declare-fun b!3128631 () Bool)

(declare-fun res!1279377 () Bool)

(assert (=> b!3128631 (=> (not res!1279377) (not e!1952836))))

(assert (=> b!3128631 (= res!1279377 (not call!223336))))

(declare-fun b!3128627 () Bool)

(declare-fun res!1279374 () Bool)

(assert (=> b!3128627 (=> res!1279374 e!1952837)))

(assert (=> b!3128627 (= res!1279374 (not (isEmpty!19725 (tail!5150 (_1!20254 lt!1059786)))))))

(declare-fun d!863924 () Bool)

(assert (=> d!863924 e!1952840))

(declare-fun c!525078 () Bool)

(assert (=> d!863924 (= c!525078 ((_ is EmptyExpr!9633) (reg!9962 r!17423)))))

(assert (=> d!863924 (= lt!1059861 e!1952841)))

(declare-fun c!525080 () Bool)

(assert (=> d!863924 (= c!525080 (isEmpty!19725 (_1!20254 lt!1059786)))))

(assert (=> d!863924 (validRegex!4366 (reg!9962 r!17423))))

(assert (=> d!863924 (= (matchR!4515 (reg!9962 r!17423) (_1!20254 lt!1059786)) lt!1059861)))

(declare-fun b!3128632 () Bool)

(assert (=> b!3128632 (= e!1952841 (nullable!3271 (reg!9962 r!17423)))))

(declare-fun b!3128633 () Bool)

(declare-fun res!1279373 () Bool)

(assert (=> b!3128633 (=> res!1279373 e!1952835)))

(assert (=> b!3128633 (= res!1279373 e!1952836)))

(declare-fun res!1279376 () Bool)

(assert (=> b!3128633 (=> (not res!1279376) (not e!1952836))))

(assert (=> b!3128633 (= res!1279376 lt!1059861)))

(assert (= (and d!863924 c!525080) b!3128632))

(assert (= (and d!863924 (not c!525080)) b!3128622))

(assert (= (and d!863924 c!525078) b!3128621))

(assert (= (and d!863924 (not c!525078)) b!3128628))

(assert (= (and b!3128628 c!525079) b!3128625))

(assert (= (and b!3128628 (not c!525079)) b!3128626))

(assert (= (and b!3128626 (not res!1279378)) b!3128633))

(assert (= (and b!3128633 res!1279376) b!3128631))

(assert (= (and b!3128631 res!1279377) b!3128624))

(assert (= (and b!3128624 res!1279379) b!3128629))

(assert (= (and b!3128633 (not res!1279373)) b!3128630))

(assert (= (and b!3128630 res!1279380) b!3128623))

(assert (= (and b!3128623 (not res!1279375)) b!3128627))

(assert (= (and b!3128627 (not res!1279374)) b!3128620))

(assert (= (or b!3128621 b!3128623 b!3128631) bm!223331))

(declare-fun m!3412269 () Bool)

(assert (=> b!3128627 m!3412269))

(assert (=> b!3128627 m!3412269))

(declare-fun m!3412271 () Bool)

(assert (=> b!3128627 m!3412271))

(assert (=> b!3128624 m!3412269))

(assert (=> b!3128624 m!3412269))

(assert (=> b!3128624 m!3412271))

(assert (=> d!863924 m!3412061))

(assert (=> d!863924 m!3412165))

(assert (=> bm!223331 m!3412061))

(declare-fun m!3412273 () Bool)

(assert (=> b!3128629 m!3412273))

(assert (=> b!3128622 m!3412273))

(assert (=> b!3128622 m!3412273))

(declare-fun m!3412275 () Bool)

(assert (=> b!3128622 m!3412275))

(assert (=> b!3128622 m!3412269))

(assert (=> b!3128622 m!3412275))

(assert (=> b!3128622 m!3412269))

(declare-fun m!3412277 () Bool)

(assert (=> b!3128622 m!3412277))

(assert (=> b!3128632 m!3412105))

(assert (=> b!3128620 m!3412273))

(assert (=> b!3128180 d!863924))

(declare-fun d!863926 () Bool)

(assert (=> d!863926 (= (matchR!4515 (reg!9962 r!17423) (_1!20254 lt!1059786)) (matchR!4515 (simplify!588 (reg!9962 r!17423)) (_1!20254 lt!1059786)))))

(declare-fun lt!1059866 () Unit!49705)

(declare-fun choose!18483 (Regex!9633 List!35498) Unit!49705)

(assert (=> d!863926 (= lt!1059866 (choose!18483 (reg!9962 r!17423) (_1!20254 lt!1059786)))))

(assert (=> d!863926 (validRegex!4366 (reg!9962 r!17423))))

(assert (=> d!863926 (= (lemmaSimplifySound!360 (reg!9962 r!17423) (_1!20254 lt!1059786)) lt!1059866)))

(declare-fun bs!537253 () Bool)

(assert (= bs!537253 d!863926))

(declare-fun m!3412279 () Bool)

(assert (=> bs!537253 m!3412279))

(assert (=> bs!537253 m!3412091))

(assert (=> bs!537253 m!3412085))

(assert (=> bs!537253 m!3412165))

(assert (=> bs!537253 m!3412091))

(declare-fun m!3412281 () Bool)

(assert (=> bs!537253 m!3412281))

(assert (=> b!3128180 d!863926))

(declare-fun d!863928 () Bool)

(declare-fun choose!18484 (Int) Bool)

(assert (=> d!863928 (= (Exists!1887 lambda!115465) (choose!18484 lambda!115465))))

(declare-fun bs!537254 () Bool)

(assert (= bs!537254 d!863928))

(declare-fun m!3412283 () Bool)

(assert (=> bs!537254 m!3412283))

(assert (=> b!3128181 d!863928))

(declare-fun bs!537260 () Bool)

(declare-fun d!863930 () Bool)

(assert (= bs!537260 (and d!863930 b!3128311)))

(declare-fun lambda!115488 () Int)

(assert (=> bs!537260 (not (= lambda!115488 lambda!115471))))

(declare-fun bs!537261 () Bool)

(assert (= bs!537261 (and d!863930 b!3128181)))

(assert (=> bs!537261 (= (= (Star!9633 lt!1059785) lt!1059790) (= lambda!115488 lambda!115465))))

(declare-fun bs!537262 () Bool)

(assert (= bs!537262 (and d!863930 b!3128362)))

(assert (=> bs!537262 (not (= lambda!115488 lambda!115474))))

(assert (=> bs!537261 (not (= lambda!115488 lambda!115466))))

(declare-fun bs!537263 () Bool)

(assert (= bs!537263 (and d!863930 b!3128364)))

(assert (=> bs!537263 (not (= lambda!115488 lambda!115473))))

(declare-fun bs!537264 () Bool)

(assert (= bs!537264 (and d!863930 b!3128309)))

(assert (=> bs!537264 (not (= lambda!115488 lambda!115472))))

(assert (=> d!863930 true))

(assert (=> d!863930 true))

(declare-fun lambda!115489 () Int)

(assert (=> bs!537260 (= (and (= lt!1059785 (reg!9962 lt!1059790)) (= (Star!9633 lt!1059785) lt!1059790)) (= lambda!115489 lambda!115471))))

(assert (=> bs!537262 (not (= lambda!115489 lambda!115474))))

(assert (=> bs!537261 (= (= (Star!9633 lt!1059785) lt!1059790) (= lambda!115489 lambda!115466))))

(assert (=> bs!537263 (= (and (= s!11993 (_1!20254 lt!1059786)) (= lt!1059785 (reg!9962 (reg!9962 r!17423))) (= (Star!9633 lt!1059785) (reg!9962 r!17423))) (= lambda!115489 lambda!115473))))

(assert (=> bs!537264 (not (= lambda!115489 lambda!115472))))

(declare-fun bs!537265 () Bool)

(assert (= bs!537265 d!863930))

(assert (=> bs!537265 (not (= lambda!115489 lambda!115488))))

(assert (=> bs!537261 (not (= lambda!115489 lambda!115465))))

(assert (=> d!863930 true))

(assert (=> d!863930 true))

(assert (=> d!863930 (= (Exists!1887 lambda!115488) (Exists!1887 lambda!115489))))

(declare-fun lt!1059870 () Unit!49705)

(declare-fun choose!18485 (Regex!9633 List!35498) Unit!49705)

(assert (=> d!863930 (= lt!1059870 (choose!18485 lt!1059785 s!11993))))

(assert (=> d!863930 (validRegex!4366 lt!1059785)))

(assert (=> d!863930 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!348 lt!1059785 s!11993) lt!1059870)))

(declare-fun m!3412295 () Bool)

(assert (=> bs!537265 m!3412295))

(declare-fun m!3412297 () Bool)

(assert (=> bs!537265 m!3412297))

(declare-fun m!3412299 () Bool)

(assert (=> bs!537265 m!3412299))

(declare-fun m!3412301 () Bool)

(assert (=> bs!537265 m!3412301))

(assert (=> b!3128181 d!863930))

(declare-fun d!863938 () Bool)

(declare-fun isEmpty!19727 (Option!6854) Bool)

(assert (=> d!863938 (= (isDefined!5405 lt!1059789) (not (isEmpty!19727 lt!1059789)))))

(declare-fun bs!537266 () Bool)

(assert (= bs!537266 d!863938))

(declare-fun m!3412303 () Bool)

(assert (=> bs!537266 m!3412303))

(assert (=> b!3128181 d!863938))

(declare-fun d!863940 () Bool)

(assert (=> d!863940 (= (Exists!1887 lambda!115466) (choose!18484 lambda!115466))))

(declare-fun bs!537267 () Bool)

(assert (= bs!537267 d!863940))

(declare-fun m!3412305 () Bool)

(assert (=> bs!537267 m!3412305))

(assert (=> b!3128181 d!863940))

(declare-fun bs!537268 () Bool)

(declare-fun d!863942 () Bool)

(assert (= bs!537268 (and d!863942 b!3128311)))

(declare-fun lambda!115492 () Int)

(assert (=> bs!537268 (not (= lambda!115492 lambda!115471))))

(declare-fun bs!537269 () Bool)

(assert (= bs!537269 (and d!863942 b!3128181)))

(assert (=> bs!537269 (not (= lambda!115492 lambda!115466))))

(declare-fun bs!537270 () Bool)

(assert (= bs!537270 (and d!863942 b!3128364)))

(assert (=> bs!537270 (not (= lambda!115492 lambda!115473))))

(declare-fun bs!537271 () Bool)

(assert (= bs!537271 (and d!863942 b!3128309)))

(assert (=> bs!537271 (not (= lambda!115492 lambda!115472))))

(declare-fun bs!537272 () Bool)

(assert (= bs!537272 (and d!863942 d!863930)))

(assert (=> bs!537272 (= (= lt!1059790 (Star!9633 lt!1059785)) (= lambda!115492 lambda!115488))))

(assert (=> bs!537269 (= lambda!115492 lambda!115465)))

(declare-fun bs!537273 () Bool)

(assert (= bs!537273 (and d!863942 b!3128362)))

(assert (=> bs!537273 (not (= lambda!115492 lambda!115474))))

(assert (=> bs!537272 (not (= lambda!115492 lambda!115489))))

(assert (=> d!863942 true))

(assert (=> d!863942 true))

(assert (=> d!863942 true))

(assert (=> d!863942 (= (isDefined!5405 (findConcatSeparation!1248 lt!1059785 lt!1059790 Nil!35374 s!11993 s!11993)) (Exists!1887 lambda!115492))))

(declare-fun lt!1059883 () Unit!49705)

(declare-fun choose!18486 (Regex!9633 Regex!9633 List!35498) Unit!49705)

(assert (=> d!863942 (= lt!1059883 (choose!18486 lt!1059785 lt!1059790 s!11993))))

(assert (=> d!863942 (validRegex!4366 lt!1059785)))

(assert (=> d!863942 (= (lemmaFindConcatSeparationEquivalentToExists!1018 lt!1059785 lt!1059790 s!11993) lt!1059883)))

(declare-fun bs!537274 () Bool)

(assert (= bs!537274 d!863942))

(declare-fun m!3412337 () Bool)

(assert (=> bs!537274 m!3412337))

(assert (=> bs!537274 m!3412073))

(declare-fun m!3412339 () Bool)

(assert (=> bs!537274 m!3412339))

(assert (=> bs!537274 m!3412073))

(assert (=> bs!537274 m!3412301))

(declare-fun m!3412341 () Bool)

(assert (=> bs!537274 m!3412341))

(assert (=> b!3128181 d!863942))

(declare-fun b!3128760 () Bool)

(declare-fun e!1952911 () Bool)

(declare-fun lt!1059892 () Option!6854)

(assert (=> b!3128760 (= e!1952911 (= (++!8511 (_1!20254 (get!11136 lt!1059892)) (_2!20254 (get!11136 lt!1059892))) s!11993))))

(declare-fun b!3128761 () Bool)

(declare-fun lt!1059890 () Unit!49705)

(declare-fun lt!1059891 () Unit!49705)

(assert (=> b!3128761 (= lt!1059890 lt!1059891)))

(assert (=> b!3128761 (= (++!8511 (++!8511 Nil!35374 (Cons!35374 (h!40794 s!11993) Nil!35374)) (t!234563 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1104 (List!35498 C!19452 List!35498 List!35498) Unit!49705)

(assert (=> b!3128761 (= lt!1059891 (lemmaMoveElementToOtherListKeepsConcatEq!1104 Nil!35374 (h!40794 s!11993) (t!234563 s!11993) s!11993))))

(declare-fun e!1952912 () Option!6854)

(assert (=> b!3128761 (= e!1952912 (findConcatSeparation!1248 lt!1059785 lt!1059790 (++!8511 Nil!35374 (Cons!35374 (h!40794 s!11993) Nil!35374)) (t!234563 s!11993) s!11993))))

(declare-fun b!3128762 () Bool)

(declare-fun e!1952909 () Option!6854)

(assert (=> b!3128762 (= e!1952909 (Some!6853 (tuple2!34245 Nil!35374 s!11993)))))

(declare-fun d!863950 () Bool)

(declare-fun e!1952913 () Bool)

(assert (=> d!863950 e!1952913))

(declare-fun res!1279458 () Bool)

(assert (=> d!863950 (=> res!1279458 e!1952913)))

(assert (=> d!863950 (= res!1279458 e!1952911)))

(declare-fun res!1279460 () Bool)

(assert (=> d!863950 (=> (not res!1279460) (not e!1952911))))

(assert (=> d!863950 (= res!1279460 (isDefined!5405 lt!1059892))))

(assert (=> d!863950 (= lt!1059892 e!1952909)))

(declare-fun c!525107 () Bool)

(declare-fun e!1952910 () Bool)

(assert (=> d!863950 (= c!525107 e!1952910)))

(declare-fun res!1279461 () Bool)

(assert (=> d!863950 (=> (not res!1279461) (not e!1952910))))

(assert (=> d!863950 (= res!1279461 (matchR!4515 lt!1059785 Nil!35374))))

(assert (=> d!863950 (validRegex!4366 lt!1059785)))

(assert (=> d!863950 (= (findConcatSeparation!1248 lt!1059785 lt!1059790 Nil!35374 s!11993 s!11993) lt!1059892)))

(declare-fun b!3128763 () Bool)

(assert (=> b!3128763 (= e!1952910 (matchR!4515 lt!1059790 s!11993))))

(declare-fun b!3128764 () Bool)

(assert (=> b!3128764 (= e!1952909 e!1952912)))

(declare-fun c!525106 () Bool)

(assert (=> b!3128764 (= c!525106 ((_ is Nil!35374) s!11993))))

(declare-fun b!3128765 () Bool)

(declare-fun res!1279457 () Bool)

(assert (=> b!3128765 (=> (not res!1279457) (not e!1952911))))

(assert (=> b!3128765 (= res!1279457 (matchR!4515 lt!1059790 (_2!20254 (get!11136 lt!1059892))))))

(declare-fun b!3128766 () Bool)

(assert (=> b!3128766 (= e!1952912 None!6853)))

(declare-fun b!3128767 () Bool)

(assert (=> b!3128767 (= e!1952913 (not (isDefined!5405 lt!1059892)))))

(declare-fun b!3128768 () Bool)

(declare-fun res!1279459 () Bool)

(assert (=> b!3128768 (=> (not res!1279459) (not e!1952911))))

(assert (=> b!3128768 (= res!1279459 (matchR!4515 lt!1059785 (_1!20254 (get!11136 lt!1059892))))))

(assert (= (and d!863950 res!1279461) b!3128763))

(assert (= (and d!863950 c!525107) b!3128762))

(assert (= (and d!863950 (not c!525107)) b!3128764))

(assert (= (and b!3128764 c!525106) b!3128766))

(assert (= (and b!3128764 (not c!525106)) b!3128761))

(assert (= (and d!863950 res!1279460) b!3128768))

(assert (= (and b!3128768 res!1279459) b!3128765))

(assert (= (and b!3128765 res!1279457) b!3128760))

(assert (= (and d!863950 (not res!1279458)) b!3128767))

(declare-fun m!3412343 () Bool)

(assert (=> b!3128768 m!3412343))

(declare-fun m!3412345 () Bool)

(assert (=> b!3128768 m!3412345))

(declare-fun m!3412347 () Bool)

(assert (=> b!3128761 m!3412347))

(assert (=> b!3128761 m!3412347))

(declare-fun m!3412349 () Bool)

(assert (=> b!3128761 m!3412349))

(declare-fun m!3412351 () Bool)

(assert (=> b!3128761 m!3412351))

(assert (=> b!3128761 m!3412347))

(declare-fun m!3412353 () Bool)

(assert (=> b!3128761 m!3412353))

(assert (=> b!3128765 m!3412343))

(declare-fun m!3412355 () Bool)

(assert (=> b!3128765 m!3412355))

(assert (=> b!3128760 m!3412343))

(declare-fun m!3412359 () Bool)

(assert (=> b!3128760 m!3412359))

(assert (=> b!3128763 m!3412079))

(declare-fun m!3412363 () Bool)

(assert (=> d!863950 m!3412363))

(declare-fun m!3412367 () Bool)

(assert (=> d!863950 m!3412367))

(assert (=> d!863950 m!3412301))

(assert (=> b!3128767 m!3412363))

(assert (=> b!3128181 d!863950))

(declare-fun bs!537282 () Bool)

(declare-fun b!3128771 () Bool)

(assert (= bs!537282 (and b!3128771 b!3128311)))

(declare-fun lambda!115499 () Int)

(assert (=> bs!537282 (= (and (= (reg!9962 r!17423) (reg!9962 lt!1059790)) (= r!17423 lt!1059790)) (= lambda!115499 lambda!115471))))

(declare-fun bs!537283 () Bool)

(assert (= bs!537283 (and b!3128771 d!863942)))

(assert (=> bs!537283 (not (= lambda!115499 lambda!115492))))

(declare-fun bs!537284 () Bool)

(assert (= bs!537284 (and b!3128771 b!3128181)))

(assert (=> bs!537284 (= (and (= (reg!9962 r!17423) lt!1059785) (= r!17423 lt!1059790)) (= lambda!115499 lambda!115466))))

(declare-fun bs!537285 () Bool)

(assert (= bs!537285 (and b!3128771 b!3128364)))

(assert (=> bs!537285 (= (and (= s!11993 (_1!20254 lt!1059786)) (= (reg!9962 r!17423) (reg!9962 (reg!9962 r!17423))) (= r!17423 (reg!9962 r!17423))) (= lambda!115499 lambda!115473))))

(declare-fun bs!537286 () Bool)

(assert (= bs!537286 (and b!3128771 b!3128309)))

(assert (=> bs!537286 (not (= lambda!115499 lambda!115472))))

(declare-fun bs!537287 () Bool)

(assert (= bs!537287 (and b!3128771 d!863930)))

(assert (=> bs!537287 (not (= lambda!115499 lambda!115488))))

(assert (=> bs!537284 (not (= lambda!115499 lambda!115465))))

(declare-fun bs!537288 () Bool)

(assert (= bs!537288 (and b!3128771 b!3128362)))

(assert (=> bs!537288 (not (= lambda!115499 lambda!115474))))

(assert (=> bs!537287 (= (and (= (reg!9962 r!17423) lt!1059785) (= r!17423 (Star!9633 lt!1059785))) (= lambda!115499 lambda!115489))))

(assert (=> b!3128771 true))

(assert (=> b!3128771 true))

(declare-fun bs!537289 () Bool)

(declare-fun b!3128769 () Bool)

(assert (= bs!537289 (and b!3128769 b!3128311)))

(declare-fun lambda!115500 () Int)

(assert (=> bs!537289 (not (= lambda!115500 lambda!115471))))

(declare-fun bs!537290 () Bool)

(assert (= bs!537290 (and b!3128769 b!3128771)))

(assert (=> bs!537290 (not (= lambda!115500 lambda!115499))))

(declare-fun bs!537291 () Bool)

(assert (= bs!537291 (and b!3128769 d!863942)))

(assert (=> bs!537291 (not (= lambda!115500 lambda!115492))))

(declare-fun bs!537292 () Bool)

(assert (= bs!537292 (and b!3128769 b!3128181)))

(assert (=> bs!537292 (not (= lambda!115500 lambda!115466))))

(declare-fun bs!537293 () Bool)

(assert (= bs!537293 (and b!3128769 b!3128364)))

(assert (=> bs!537293 (not (= lambda!115500 lambda!115473))))

(declare-fun bs!537295 () Bool)

(assert (= bs!537295 (and b!3128769 b!3128309)))

(assert (=> bs!537295 (= (and (= (regOne!19778 r!17423) (regOne!19778 lt!1059790)) (= (regTwo!19778 r!17423) (regTwo!19778 lt!1059790))) (= lambda!115500 lambda!115472))))

(declare-fun bs!537296 () Bool)

(assert (= bs!537296 (and b!3128769 d!863930)))

(assert (=> bs!537296 (not (= lambda!115500 lambda!115488))))

(assert (=> bs!537292 (not (= lambda!115500 lambda!115465))))

(declare-fun bs!537297 () Bool)

(assert (= bs!537297 (and b!3128769 b!3128362)))

(assert (=> bs!537297 (= (and (= s!11993 (_1!20254 lt!1059786)) (= (regOne!19778 r!17423) (regOne!19778 (reg!9962 r!17423))) (= (regTwo!19778 r!17423) (regTwo!19778 (reg!9962 r!17423)))) (= lambda!115500 lambda!115474))))

(assert (=> bs!537296 (not (= lambda!115500 lambda!115489))))

(assert (=> b!3128769 true))

(assert (=> b!3128769 true))

(declare-fun e!1952914 () Bool)

(declare-fun call!223345 () Bool)

(assert (=> b!3128769 (= e!1952914 call!223345)))

(declare-fun b!3128770 () Bool)

(declare-fun c!525109 () Bool)

(assert (=> b!3128770 (= c!525109 ((_ is ElementMatch!9633) r!17423))))

(declare-fun e!1952919 () Bool)

(declare-fun e!1952918 () Bool)

(assert (=> b!3128770 (= e!1952919 e!1952918)))

(declare-fun bm!223339 () Bool)

(declare-fun call!223344 () Bool)

(assert (=> bm!223339 (= call!223344 (isEmpty!19725 s!11993))))

(declare-fun e!1952917 () Bool)

(assert (=> b!3128771 (= e!1952917 call!223345)))

(declare-fun bm!223340 () Bool)

(declare-fun c!525111 () Bool)

(assert (=> bm!223340 (= call!223345 (Exists!1887 (ite c!525111 lambda!115499 lambda!115500)))))

(declare-fun b!3128773 () Bool)

(declare-fun e!1952915 () Bool)

(assert (=> b!3128773 (= e!1952915 e!1952919)))

(declare-fun res!1279463 () Bool)

(assert (=> b!3128773 (= res!1279463 (not ((_ is EmptyLang!9633) r!17423)))))

(assert (=> b!3128773 (=> (not res!1279463) (not e!1952919))))

(declare-fun b!3128774 () Bool)

(assert (=> b!3128774 (= e!1952918 (= s!11993 (Cons!35374 (c!524943 r!17423) Nil!35374)))))

(declare-fun b!3128775 () Bool)

(declare-fun e!1952916 () Bool)

(assert (=> b!3128775 (= e!1952916 e!1952914)))

(assert (=> b!3128775 (= c!525111 ((_ is Star!9633) r!17423))))

(declare-fun b!3128776 () Bool)

(declare-fun res!1279464 () Bool)

(assert (=> b!3128776 (=> res!1279464 e!1952917)))

(assert (=> b!3128776 (= res!1279464 call!223344)))

(assert (=> b!3128776 (= e!1952914 e!1952917)))

(declare-fun b!3128777 () Bool)

(assert (=> b!3128777 (= e!1952915 call!223344)))

(declare-fun b!3128772 () Bool)

(declare-fun c!525110 () Bool)

(assert (=> b!3128772 (= c!525110 ((_ is Union!9633) r!17423))))

(assert (=> b!3128772 (= e!1952918 e!1952916)))

(declare-fun d!863954 () Bool)

(declare-fun c!525108 () Bool)

(assert (=> d!863954 (= c!525108 ((_ is EmptyExpr!9633) r!17423))))

(assert (=> d!863954 (= (matchRSpec!1770 r!17423 s!11993) e!1952915)))

(declare-fun b!3128778 () Bool)

(declare-fun e!1952920 () Bool)

(assert (=> b!3128778 (= e!1952916 e!1952920)))

(declare-fun res!1279462 () Bool)

(assert (=> b!3128778 (= res!1279462 (matchRSpec!1770 (regOne!19779 r!17423) s!11993))))

(assert (=> b!3128778 (=> res!1279462 e!1952920)))

(declare-fun b!3128779 () Bool)

(assert (=> b!3128779 (= e!1952920 (matchRSpec!1770 (regTwo!19779 r!17423) s!11993))))

(assert (= (and d!863954 c!525108) b!3128777))

(assert (= (and d!863954 (not c!525108)) b!3128773))

(assert (= (and b!3128773 res!1279463) b!3128770))

(assert (= (and b!3128770 c!525109) b!3128774))

(assert (= (and b!3128770 (not c!525109)) b!3128772))

(assert (= (and b!3128772 c!525110) b!3128778))

(assert (= (and b!3128772 (not c!525110)) b!3128775))

(assert (= (and b!3128778 (not res!1279462)) b!3128779))

(assert (= (and b!3128775 c!525111) b!3128776))

(assert (= (and b!3128775 (not c!525111)) b!3128769))

(assert (= (and b!3128776 (not res!1279464)) b!3128771))

(assert (= (or b!3128771 b!3128769) bm!223340))

(assert (= (or b!3128777 b!3128776) bm!223339))

(assert (=> bm!223339 m!3412055))

(declare-fun m!3412371 () Bool)

(assert (=> bm!223340 m!3412371))

(declare-fun m!3412373 () Bool)

(assert (=> b!3128778 m!3412373))

(declare-fun m!3412375 () Bool)

(assert (=> b!3128779 m!3412375))

(assert (=> b!3128179 d!863954))

(declare-fun bm!223341 () Bool)

(declare-fun call!223346 () Bool)

(assert (=> bm!223341 (= call!223346 (isEmpty!19725 s!11993))))

(declare-fun b!3128780 () Bool)

(declare-fun e!1952923 () Bool)

(assert (=> b!3128780 (= e!1952923 (not (= (head!6924 s!11993) (c!524943 r!17423))))))

(declare-fun b!3128781 () Bool)

(declare-fun e!1952926 () Bool)

(declare-fun lt!1059896 () Bool)

(assert (=> b!3128781 (= e!1952926 (= lt!1059896 call!223346))))

(declare-fun b!3128782 () Bool)

(declare-fun e!1952927 () Bool)

(assert (=> b!3128782 (= e!1952927 (matchR!4515 (derivativeStep!2865 r!17423 (head!6924 s!11993)) (tail!5150 s!11993)))))

(declare-fun b!3128783 () Bool)

(declare-fun e!1952924 () Bool)

(assert (=> b!3128783 (= e!1952924 e!1952923)))

(declare-fun res!1279467 () Bool)

(assert (=> b!3128783 (=> res!1279467 e!1952923)))

(assert (=> b!3128783 (= res!1279467 call!223346)))

(declare-fun b!3128784 () Bool)

(declare-fun res!1279471 () Bool)

(declare-fun e!1952922 () Bool)

(assert (=> b!3128784 (=> (not res!1279471) (not e!1952922))))

(assert (=> b!3128784 (= res!1279471 (isEmpty!19725 (tail!5150 s!11993)))))

(declare-fun b!3128785 () Bool)

(declare-fun e!1952925 () Bool)

(assert (=> b!3128785 (= e!1952925 (not lt!1059896))))

(declare-fun b!3128786 () Bool)

(declare-fun res!1279470 () Bool)

(declare-fun e!1952921 () Bool)

(assert (=> b!3128786 (=> res!1279470 e!1952921)))

(assert (=> b!3128786 (= res!1279470 (not ((_ is ElementMatch!9633) r!17423)))))

(assert (=> b!3128786 (= e!1952925 e!1952921)))

(declare-fun b!3128788 () Bool)

(assert (=> b!3128788 (= e!1952926 e!1952925)))

(declare-fun c!525113 () Bool)

(assert (=> b!3128788 (= c!525113 ((_ is EmptyLang!9633) r!17423))))

(declare-fun b!3128789 () Bool)

(assert (=> b!3128789 (= e!1952922 (= (head!6924 s!11993) (c!524943 r!17423)))))

(declare-fun b!3128790 () Bool)

(assert (=> b!3128790 (= e!1952921 e!1952924)))

(declare-fun res!1279472 () Bool)

(assert (=> b!3128790 (=> (not res!1279472) (not e!1952924))))

(assert (=> b!3128790 (= res!1279472 (not lt!1059896))))

(declare-fun b!3128791 () Bool)

(declare-fun res!1279469 () Bool)

(assert (=> b!3128791 (=> (not res!1279469) (not e!1952922))))

(assert (=> b!3128791 (= res!1279469 (not call!223346))))

(declare-fun b!3128787 () Bool)

(declare-fun res!1279466 () Bool)

(assert (=> b!3128787 (=> res!1279466 e!1952923)))

(assert (=> b!3128787 (= res!1279466 (not (isEmpty!19725 (tail!5150 s!11993))))))

(declare-fun d!863958 () Bool)

(assert (=> d!863958 e!1952926))

(declare-fun c!525112 () Bool)

(assert (=> d!863958 (= c!525112 ((_ is EmptyExpr!9633) r!17423))))

(assert (=> d!863958 (= lt!1059896 e!1952927)))

(declare-fun c!525114 () Bool)

(assert (=> d!863958 (= c!525114 (isEmpty!19725 s!11993))))

(assert (=> d!863958 (validRegex!4366 r!17423)))

(assert (=> d!863958 (= (matchR!4515 r!17423 s!11993) lt!1059896)))

(declare-fun b!3128792 () Bool)

(assert (=> b!3128792 (= e!1952927 (nullable!3271 r!17423))))

(declare-fun b!3128793 () Bool)

(declare-fun res!1279465 () Bool)

(assert (=> b!3128793 (=> res!1279465 e!1952921)))

(assert (=> b!3128793 (= res!1279465 e!1952922)))

(declare-fun res!1279468 () Bool)

(assert (=> b!3128793 (=> (not res!1279468) (not e!1952922))))

(assert (=> b!3128793 (= res!1279468 lt!1059896)))

(assert (= (and d!863958 c!525114) b!3128792))

(assert (= (and d!863958 (not c!525114)) b!3128782))

(assert (= (and d!863958 c!525112) b!3128781))

(assert (= (and d!863958 (not c!525112)) b!3128788))

(assert (= (and b!3128788 c!525113) b!3128785))

(assert (= (and b!3128788 (not c!525113)) b!3128786))

(assert (= (and b!3128786 (not res!1279470)) b!3128793))

(assert (= (and b!3128793 res!1279468) b!3128791))

(assert (= (and b!3128791 res!1279469) b!3128784))

(assert (= (and b!3128784 res!1279471) b!3128789))

(assert (= (and b!3128793 (not res!1279465)) b!3128790))

(assert (= (and b!3128790 res!1279472) b!3128783))

(assert (= (and b!3128783 (not res!1279467)) b!3128787))

(assert (= (and b!3128787 (not res!1279466)) b!3128780))

(assert (= (or b!3128781 b!3128783 b!3128791) bm!223341))

(assert (=> b!3128787 m!3412113))

(assert (=> b!3128787 m!3412113))

(assert (=> b!3128787 m!3412115))

(assert (=> b!3128784 m!3412113))

(assert (=> b!3128784 m!3412113))

(assert (=> b!3128784 m!3412115))

(assert (=> d!863958 m!3412055))

(assert (=> d!863958 m!3412101))

(assert (=> bm!223341 m!3412055))

(assert (=> b!3128789 m!3412119))

(assert (=> b!3128782 m!3412119))

(assert (=> b!3128782 m!3412119))

(declare-fun m!3412377 () Bool)

(assert (=> b!3128782 m!3412377))

(assert (=> b!3128782 m!3412113))

(assert (=> b!3128782 m!3412377))

(assert (=> b!3128782 m!3412113))

(declare-fun m!3412379 () Bool)

(assert (=> b!3128782 m!3412379))

(declare-fun m!3412381 () Bool)

(assert (=> b!3128792 m!3412381))

(assert (=> b!3128780 m!3412119))

(assert (=> b!3128179 d!863958))

(declare-fun d!863960 () Bool)

(assert (=> d!863960 (= (matchR!4515 r!17423 s!11993) (matchRSpec!1770 r!17423 s!11993))))

(declare-fun lt!1059899 () Unit!49705)

(assert (=> d!863960 (= lt!1059899 (choose!18478 r!17423 s!11993))))

(assert (=> d!863960 (validRegex!4366 r!17423)))

(assert (=> d!863960 (= (mainMatchTheorem!1770 r!17423 s!11993) lt!1059899)))

(declare-fun bs!537298 () Bool)

(assert (= bs!537298 d!863960))

(assert (=> bs!537298 m!3412097))

(assert (=> bs!537298 m!3412095))

(declare-fun m!3412383 () Bool)

(assert (=> bs!537298 m!3412383))

(assert (=> bs!537298 m!3412101))

(assert (=> b!3128179 d!863960))

(declare-fun bm!223342 () Bool)

(declare-fun call!223347 () Bool)

(assert (=> bm!223342 (= call!223347 (isEmpty!19725 (_1!20254 lt!1059786)))))

(declare-fun b!3128798 () Bool)

(declare-fun e!1952932 () Bool)

(assert (=> b!3128798 (= e!1952932 (not (= (head!6924 (_1!20254 lt!1059786)) (c!524943 lt!1059785))))))

(declare-fun b!3128799 () Bool)

(declare-fun e!1952935 () Bool)

(declare-fun lt!1059900 () Bool)

(assert (=> b!3128799 (= e!1952935 (= lt!1059900 call!223347))))

(declare-fun b!3128800 () Bool)

(declare-fun e!1952936 () Bool)

(assert (=> b!3128800 (= e!1952936 (matchR!4515 (derivativeStep!2865 lt!1059785 (head!6924 (_1!20254 lt!1059786))) (tail!5150 (_1!20254 lt!1059786))))))

(declare-fun b!3128801 () Bool)

(declare-fun e!1952933 () Bool)

(assert (=> b!3128801 (= e!1952933 e!1952932)))

(declare-fun res!1279475 () Bool)

(assert (=> b!3128801 (=> res!1279475 e!1952932)))

(assert (=> b!3128801 (= res!1279475 call!223347)))

(declare-fun b!3128802 () Bool)

(declare-fun res!1279479 () Bool)

(declare-fun e!1952931 () Bool)

(assert (=> b!3128802 (=> (not res!1279479) (not e!1952931))))

(assert (=> b!3128802 (= res!1279479 (isEmpty!19725 (tail!5150 (_1!20254 lt!1059786))))))

(declare-fun b!3128803 () Bool)

(declare-fun e!1952934 () Bool)

(assert (=> b!3128803 (= e!1952934 (not lt!1059900))))

(declare-fun b!3128804 () Bool)

(declare-fun res!1279478 () Bool)

(declare-fun e!1952930 () Bool)

(assert (=> b!3128804 (=> res!1279478 e!1952930)))

(assert (=> b!3128804 (= res!1279478 (not ((_ is ElementMatch!9633) lt!1059785)))))

(assert (=> b!3128804 (= e!1952934 e!1952930)))

(declare-fun b!3128806 () Bool)

(assert (=> b!3128806 (= e!1952935 e!1952934)))

(declare-fun c!525118 () Bool)

(assert (=> b!3128806 (= c!525118 ((_ is EmptyLang!9633) lt!1059785))))

(declare-fun b!3128807 () Bool)

(assert (=> b!3128807 (= e!1952931 (= (head!6924 (_1!20254 lt!1059786)) (c!524943 lt!1059785)))))

(declare-fun b!3128808 () Bool)

(assert (=> b!3128808 (= e!1952930 e!1952933)))

(declare-fun res!1279480 () Bool)

(assert (=> b!3128808 (=> (not res!1279480) (not e!1952933))))

(assert (=> b!3128808 (= res!1279480 (not lt!1059900))))

(declare-fun b!3128809 () Bool)

(declare-fun res!1279477 () Bool)

(assert (=> b!3128809 (=> (not res!1279477) (not e!1952931))))

(assert (=> b!3128809 (= res!1279477 (not call!223347))))

(declare-fun b!3128805 () Bool)

(declare-fun res!1279474 () Bool)

(assert (=> b!3128805 (=> res!1279474 e!1952932)))

(assert (=> b!3128805 (= res!1279474 (not (isEmpty!19725 (tail!5150 (_1!20254 lt!1059786)))))))

(declare-fun d!863962 () Bool)

(assert (=> d!863962 e!1952935))

(declare-fun c!525117 () Bool)

(assert (=> d!863962 (= c!525117 ((_ is EmptyExpr!9633) lt!1059785))))

(assert (=> d!863962 (= lt!1059900 e!1952936)))

(declare-fun c!525119 () Bool)

(assert (=> d!863962 (= c!525119 (isEmpty!19725 (_1!20254 lt!1059786)))))

(assert (=> d!863962 (validRegex!4366 lt!1059785)))

(assert (=> d!863962 (= (matchR!4515 lt!1059785 (_1!20254 lt!1059786)) lt!1059900)))

(declare-fun b!3128810 () Bool)

(assert (=> b!3128810 (= e!1952936 (nullable!3271 lt!1059785))))

(declare-fun b!3128811 () Bool)

(declare-fun res!1279473 () Bool)

(assert (=> b!3128811 (=> res!1279473 e!1952930)))

(assert (=> b!3128811 (= res!1279473 e!1952931)))

(declare-fun res!1279476 () Bool)

(assert (=> b!3128811 (=> (not res!1279476) (not e!1952931))))

(assert (=> b!3128811 (= res!1279476 lt!1059900)))

(assert (= (and d!863962 c!525119) b!3128810))

(assert (= (and d!863962 (not c!525119)) b!3128800))

(assert (= (and d!863962 c!525117) b!3128799))

(assert (= (and d!863962 (not c!525117)) b!3128806))

(assert (= (and b!3128806 c!525118) b!3128803))

(assert (= (and b!3128806 (not c!525118)) b!3128804))

(assert (= (and b!3128804 (not res!1279478)) b!3128811))

(assert (= (and b!3128811 res!1279476) b!3128809))

(assert (= (and b!3128809 res!1279477) b!3128802))

(assert (= (and b!3128802 res!1279479) b!3128807))

(assert (= (and b!3128811 (not res!1279473)) b!3128808))

(assert (= (and b!3128808 res!1279480) b!3128801))

(assert (= (and b!3128801 (not res!1279475)) b!3128805))

(assert (= (and b!3128805 (not res!1279474)) b!3128798))

(assert (= (or b!3128799 b!3128801 b!3128809) bm!223342))

(assert (=> b!3128805 m!3412269))

(assert (=> b!3128805 m!3412269))

(assert (=> b!3128805 m!3412271))

(assert (=> b!3128802 m!3412269))

(assert (=> b!3128802 m!3412269))

(assert (=> b!3128802 m!3412271))

(assert (=> d!863962 m!3412061))

(assert (=> d!863962 m!3412301))

(assert (=> bm!223342 m!3412061))

(assert (=> b!3128807 m!3412273))

(assert (=> b!3128800 m!3412273))

(assert (=> b!3128800 m!3412273))

(declare-fun m!3412385 () Bool)

(assert (=> b!3128800 m!3412385))

(assert (=> b!3128800 m!3412269))

(assert (=> b!3128800 m!3412385))

(assert (=> b!3128800 m!3412269))

(declare-fun m!3412387 () Bool)

(assert (=> b!3128800 m!3412387))

(declare-fun m!3412389 () Bool)

(assert (=> b!3128810 m!3412389))

(assert (=> b!3128798 m!3412273))

(assert (=> b!3128190 d!863962))

(declare-fun d!863964 () Bool)

(assert (=> d!863964 (= (get!11136 lt!1059789) (v!34987 lt!1059789))))

(assert (=> b!3128190 d!863964))

(declare-fun b!3128841 () Bool)

(declare-fun e!1952950 () Bool)

(assert (=> b!3128841 (= e!1952950 tp_is_empty!16829)))

(declare-fun b!3128843 () Bool)

(declare-fun tp!979979 () Bool)

(assert (=> b!3128843 (= e!1952950 tp!979979)))

(declare-fun b!3128844 () Bool)

(declare-fun tp!979976 () Bool)

(declare-fun tp!979977 () Bool)

(assert (=> b!3128844 (= e!1952950 (and tp!979976 tp!979977))))

(assert (=> b!3128194 (= tp!979960 e!1952950)))

(declare-fun b!3128842 () Bool)

(declare-fun tp!979978 () Bool)

(declare-fun tp!979980 () Bool)

(assert (=> b!3128842 (= e!1952950 (and tp!979978 tp!979980))))

(assert (= (and b!3128194 ((_ is ElementMatch!9633) (regOne!19778 r!17423))) b!3128841))

(assert (= (and b!3128194 ((_ is Concat!14954) (regOne!19778 r!17423))) b!3128842))

(assert (= (and b!3128194 ((_ is Star!9633) (regOne!19778 r!17423))) b!3128843))

(assert (= (and b!3128194 ((_ is Union!9633) (regOne!19778 r!17423))) b!3128844))

(declare-fun b!3128845 () Bool)

(declare-fun e!1952951 () Bool)

(assert (=> b!3128845 (= e!1952951 tp_is_empty!16829)))

(declare-fun b!3128847 () Bool)

(declare-fun tp!979984 () Bool)

(assert (=> b!3128847 (= e!1952951 tp!979984)))

(declare-fun b!3128848 () Bool)

(declare-fun tp!979981 () Bool)

(declare-fun tp!979982 () Bool)

(assert (=> b!3128848 (= e!1952951 (and tp!979981 tp!979982))))

(assert (=> b!3128194 (= tp!979961 e!1952951)))

(declare-fun b!3128846 () Bool)

(declare-fun tp!979983 () Bool)

(declare-fun tp!979985 () Bool)

(assert (=> b!3128846 (= e!1952951 (and tp!979983 tp!979985))))

(assert (= (and b!3128194 ((_ is ElementMatch!9633) (regTwo!19778 r!17423))) b!3128845))

(assert (= (and b!3128194 ((_ is Concat!14954) (regTwo!19778 r!17423))) b!3128846))

(assert (= (and b!3128194 ((_ is Star!9633) (regTwo!19778 r!17423))) b!3128847))

(assert (= (and b!3128194 ((_ is Union!9633) (regTwo!19778 r!17423))) b!3128848))

(declare-fun b!3128849 () Bool)

(declare-fun e!1952952 () Bool)

(assert (=> b!3128849 (= e!1952952 tp_is_empty!16829)))

(declare-fun b!3128851 () Bool)

(declare-fun tp!979989 () Bool)

(assert (=> b!3128851 (= e!1952952 tp!979989)))

(declare-fun b!3128852 () Bool)

(declare-fun tp!979986 () Bool)

(declare-fun tp!979987 () Bool)

(assert (=> b!3128852 (= e!1952952 (and tp!979986 tp!979987))))

(assert (=> b!3128192 (= tp!979962 e!1952952)))

(declare-fun b!3128850 () Bool)

(declare-fun tp!979988 () Bool)

(declare-fun tp!979990 () Bool)

(assert (=> b!3128850 (= e!1952952 (and tp!979988 tp!979990))))

(assert (= (and b!3128192 ((_ is ElementMatch!9633) (regOne!19779 r!17423))) b!3128849))

(assert (= (and b!3128192 ((_ is Concat!14954) (regOne!19779 r!17423))) b!3128850))

(assert (= (and b!3128192 ((_ is Star!9633) (regOne!19779 r!17423))) b!3128851))

(assert (= (and b!3128192 ((_ is Union!9633) (regOne!19779 r!17423))) b!3128852))

(declare-fun b!3128853 () Bool)

(declare-fun e!1952953 () Bool)

(assert (=> b!3128853 (= e!1952953 tp_is_empty!16829)))

(declare-fun b!3128855 () Bool)

(declare-fun tp!979994 () Bool)

(assert (=> b!3128855 (= e!1952953 tp!979994)))

(declare-fun b!3128856 () Bool)

(declare-fun tp!979991 () Bool)

(declare-fun tp!979992 () Bool)

(assert (=> b!3128856 (= e!1952953 (and tp!979991 tp!979992))))

(assert (=> b!3128192 (= tp!979965 e!1952953)))

(declare-fun b!3128854 () Bool)

(declare-fun tp!979993 () Bool)

(declare-fun tp!979995 () Bool)

(assert (=> b!3128854 (= e!1952953 (and tp!979993 tp!979995))))

(assert (= (and b!3128192 ((_ is ElementMatch!9633) (regTwo!19779 r!17423))) b!3128853))

(assert (= (and b!3128192 ((_ is Concat!14954) (regTwo!19779 r!17423))) b!3128854))

(assert (= (and b!3128192 ((_ is Star!9633) (regTwo!19779 r!17423))) b!3128855))

(assert (= (and b!3128192 ((_ is Union!9633) (regTwo!19779 r!17423))) b!3128856))

(declare-fun b!3128857 () Bool)

(declare-fun e!1952954 () Bool)

(assert (=> b!3128857 (= e!1952954 tp_is_empty!16829)))

(declare-fun b!3128859 () Bool)

(declare-fun tp!979999 () Bool)

(assert (=> b!3128859 (= e!1952954 tp!979999)))

(declare-fun b!3128860 () Bool)

(declare-fun tp!979996 () Bool)

(declare-fun tp!979997 () Bool)

(assert (=> b!3128860 (= e!1952954 (and tp!979996 tp!979997))))

(assert (=> b!3128193 (= tp!979963 e!1952954)))

(declare-fun b!3128858 () Bool)

(declare-fun tp!979998 () Bool)

(declare-fun tp!980000 () Bool)

(assert (=> b!3128858 (= e!1952954 (and tp!979998 tp!980000))))

(assert (= (and b!3128193 ((_ is ElementMatch!9633) (reg!9962 r!17423))) b!3128857))

(assert (= (and b!3128193 ((_ is Concat!14954) (reg!9962 r!17423))) b!3128858))

(assert (= (and b!3128193 ((_ is Star!9633) (reg!9962 r!17423))) b!3128859))

(assert (= (and b!3128193 ((_ is Union!9633) (reg!9962 r!17423))) b!3128860))

(declare-fun b!3128865 () Bool)

(declare-fun e!1952957 () Bool)

(declare-fun tp!980003 () Bool)

(assert (=> b!3128865 (= e!1952957 (and tp_is_empty!16829 tp!980003))))

(assert (=> b!3128186 (= tp!979964 e!1952957)))

(assert (= (and b!3128186 ((_ is Cons!35374) (t!234563 s!11993))) b!3128865))

(check-sat (not b!3128855) (not bm!223331) (not d!863958) (not d!863930) (not bm!223276) (not bm!223340) (not bm!223341) (not b!3128844) (not b!3128768) (not b!3128372) (not b!3128438) (not b!3128848) (not b!3128228) (not b!3128858) (not d!863886) (not b!3128850) (not bm!223339) (not b!3128319) (not bm!223342) (not b!3128629) (not b!3128856) (not b!3128860) (not b!3128760) (not bm!223285) (not b!3128435) (not b!3128787) (not b!3128847) (not bm!223288) (not b!3128627) (not b!3128617) (not bm!223270) (not b!3128614) (not b!3128778) (not b!3128810) (not b!3128779) (not b!3128318) (not b!3128846) (not b!3128619) (not b!3128761) (not d!863880) (not b!3128230) (not b!3128443) (not b!3128578) (not b!3128852) (not b!3128859) (not b!3128237) (not b!3128802) (not b!3128767) (not d!863940) (not b!3128807) (not b!3128792) (not b!3128800) (not b!3128842) (not d!863938) (not b!3128240) (not b!3128586) (not b!3128865) (not b!3128622) (not bm!223326) (not b!3128371) (not b!3128440) (not d!863924) (not b!3128448) (not d!863950) (not b!3128632) (not bm!223275) (not b!3128782) (not d!863908) (not bm!223327) (not bm!223271) (not d!863962) (not b!3128843) (not b!3128784) (not d!863926) (not bm!223328) (not d!863904) (not b!3128851) (not b!3128798) (not d!863960) (not b!3128613) (not d!863914) (not b!3128436) (not b!3128624) (not b!3128780) (not b!3128805) (not d!863942) (not d!863878) (not d!863864) (not b!3128232) tp_is_empty!16829 (not b!3128763) (not b!3128428) (not b!3128765) (not bm!223286) (not bm!223324) (not b!3128620) (not bm!223325) (not d!863928) (not b!3128854) (not b!3128445) (not b!3128235) (not b!3128789) (not bm!223256))
(check-sat)
