; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740334 () Bool)

(assert start!740334)

(declare-fun b!7776847 () Bool)

(declare-fun e!4607208 () Bool)

(declare-fun e!4607206 () Bool)

(assert (=> b!7776847 (= e!4607208 e!4607206)))

(declare-fun res!3099898 () Bool)

(assert (=> b!7776847 (=> (not res!3099898) (not e!4607206))))

(declare-datatypes ((C!41916 0))(
  ( (C!41917 (val!31398 Int)) )
))
(declare-datatypes ((Regex!20795 0))(
  ( (ElementMatch!20795 (c!1433152 C!41916)) (Concat!29640 (regOne!42102 Regex!20795) (regTwo!42102 Regex!20795)) (EmptyExpr!20795) (Star!20795 (reg!21124 Regex!20795)) (EmptyLang!20795) (Union!20795 (regOne!42103 Regex!20795) (regTwo!42103 Regex!20795)) )
))
(declare-fun lt!2672257 () Regex!20795)

(declare-fun lt!2672258 () Regex!20795)

(declare-fun lt!2672253 () Regex!20795)

(assert (=> b!7776847 (= res!3099898 (= lt!2672258 (Union!20795 lt!2672253 lt!2672257)))))

(declare-fun r2!6217 () Regex!20795)

(declare-datatypes ((List!73634 0))(
  ( (Nil!73510) (Cons!73510 (h!79958 C!41916) (t!388369 List!73634)) )
))
(declare-fun s!14292 () List!73634)

(declare-fun derivativeStep!6138 (Regex!20795 C!41916) Regex!20795)

(assert (=> b!7776847 (= lt!2672257 (derivativeStep!6138 r2!6217 (h!79958 s!14292)))))

(declare-fun lt!2672262 () Regex!20795)

(assert (=> b!7776847 (= lt!2672253 (Concat!29640 lt!2672262 r2!6217))))

(declare-fun r1!6279 () Regex!20795)

(assert (=> b!7776847 (= lt!2672262 (derivativeStep!6138 r1!6279 (h!79958 s!14292)))))

(declare-fun b!7776848 () Bool)

(declare-fun res!3099905 () Bool)

(declare-fun e!4607210 () Bool)

(assert (=> b!7776848 (=> res!3099905 e!4607210)))

(declare-fun lt!2672251 () List!73634)

(declare-fun isPrefix!6247 (List!73634 List!73634) Bool)

(assert (=> b!7776848 (= res!3099905 (not (isPrefix!6247 Nil!73510 lt!2672251)))))

(declare-fun b!7776849 () Bool)

(declare-fun e!4607207 () Bool)

(assert (=> b!7776849 (= e!4607207 e!4607208)))

(declare-fun res!3099910 () Bool)

(assert (=> b!7776849 (=> (not res!3099910) (not e!4607208))))

(declare-fun matchR!10255 (Regex!20795 List!73634) Bool)

(assert (=> b!7776849 (= res!3099910 (matchR!10255 lt!2672258 (t!388369 s!14292)))))

(declare-fun lt!2672255 () Regex!20795)

(assert (=> b!7776849 (= lt!2672258 (derivativeStep!6138 lt!2672255 (h!79958 s!14292)))))

(declare-fun b!7776850 () Bool)

(declare-fun res!3099902 () Bool)

(assert (=> b!7776850 (=> res!3099902 e!4607210)))

(declare-fun ++!17911 (List!73634 List!73634) List!73634)

(assert (=> b!7776850 (= res!3099902 (not (= (++!17911 Nil!73510 s!14292) s!14292)))))

(declare-fun b!7776851 () Bool)

(declare-fun e!4607211 () Bool)

(assert (=> b!7776851 (= e!4607206 (not e!4607211))))

(declare-fun res!3099906 () Bool)

(assert (=> b!7776851 (=> res!3099906 e!4607211)))

(declare-fun lt!2672261 () Bool)

(assert (=> b!7776851 (= res!3099906 (not lt!2672261))))

(declare-fun e!4607212 () Bool)

(assert (=> b!7776851 e!4607212))

(declare-fun res!3099901 () Bool)

(assert (=> b!7776851 (=> res!3099901 e!4607212)))

(assert (=> b!7776851 (= res!3099901 lt!2672261)))

(assert (=> b!7776851 (= lt!2672261 (matchR!10255 lt!2672253 (t!388369 s!14292)))))

(declare-datatypes ((Unit!168492 0))(
  ( (Unit!168493) )
))
(declare-fun lt!2672254 () Unit!168492)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!370 (Regex!20795 Regex!20795 List!73634) Unit!168492)

(assert (=> b!7776851 (= lt!2672254 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!370 lt!2672253 lt!2672257 (t!388369 s!14292)))))

(declare-fun b!7776852 () Bool)

(declare-fun e!4607213 () Bool)

(assert (=> b!7776852 (= e!4607213 e!4607207)))

(declare-fun res!3099908 () Bool)

(assert (=> b!7776852 (=> (not res!3099908) (not e!4607207))))

(assert (=> b!7776852 (= res!3099908 (matchR!10255 lt!2672255 s!14292))))

(assert (=> b!7776852 (= lt!2672255 (Concat!29640 r1!6279 r2!6217))))

(declare-fun b!7776853 () Bool)

(declare-fun e!4607209 () Bool)

(declare-fun tp_is_empty!51945 () Bool)

(assert (=> b!7776853 (= e!4607209 tp_is_empty!51945)))

(declare-fun b!7776854 () Bool)

(declare-fun e!4607205 () Bool)

(assert (=> b!7776854 (= e!4607205 tp_is_empty!51945)))

(declare-fun b!7776855 () Bool)

(declare-fun tp!2285346 () Bool)

(declare-fun tp!2285344 () Bool)

(assert (=> b!7776855 (= e!4607205 (and tp!2285346 tp!2285344))))

(declare-fun b!7776856 () Bool)

(declare-fun tp!2285343 () Bool)

(declare-fun tp!2285341 () Bool)

(assert (=> b!7776856 (= e!4607209 (and tp!2285343 tp!2285341))))

(declare-fun b!7776857 () Bool)

(declare-fun e!4607204 () Bool)

(declare-fun tp!2285347 () Bool)

(assert (=> b!7776857 (= e!4607204 (and tp_is_empty!51945 tp!2285347))))

(declare-fun b!7776858 () Bool)

(declare-fun res!3099900 () Bool)

(assert (=> b!7776858 (=> (not res!3099900) (not e!4607213))))

(declare-fun validRegex!11209 (Regex!20795) Bool)

(assert (=> b!7776858 (= res!3099900 (validRegex!11209 r2!6217))))

(declare-fun b!7776859 () Bool)

(declare-fun tp!2285345 () Bool)

(declare-fun tp!2285351 () Bool)

(assert (=> b!7776859 (= e!4607209 (and tp!2285345 tp!2285351))))

(declare-fun b!7776860 () Bool)

(declare-fun tp!2285342 () Bool)

(declare-fun tp!2285350 () Bool)

(assert (=> b!7776860 (= e!4607205 (and tp!2285342 tp!2285350))))

(declare-fun res!3099904 () Bool)

(assert (=> start!740334 (=> (not res!3099904) (not e!4607213))))

(assert (=> start!740334 (= res!3099904 (validRegex!11209 r1!6279))))

(assert (=> start!740334 e!4607213))

(assert (=> start!740334 e!4607209))

(assert (=> start!740334 e!4607205))

(assert (=> start!740334 e!4607204))

(declare-fun b!7776846 () Bool)

(assert (=> b!7776846 (= e!4607210 true)))

(declare-fun lt!2672260 () Bool)

(declare-datatypes ((tuple2!69884 0))(
  ( (tuple2!69885 (_1!38245 List!73634) (_2!38245 List!73634)) )
))
(declare-fun lt!2672252 () tuple2!69884)

(assert (=> b!7776846 (= lt!2672260 (matchR!10255 r2!6217 (_2!38245 lt!2672252)))))

(declare-fun b!7776861 () Bool)

(declare-fun res!3099909 () Bool)

(assert (=> b!7776861 (=> (not res!3099909) (not e!4607207))))

(get-info :version)

(assert (=> b!7776861 (= res!3099909 ((_ is Cons!73510) s!14292))))

(declare-fun b!7776862 () Bool)

(declare-fun res!3099899 () Bool)

(assert (=> b!7776862 (=> (not res!3099899) (not e!4607208))))

(declare-fun nullable!9183 (Regex!20795) Bool)

(assert (=> b!7776862 (= res!3099899 (nullable!9183 r1!6279))))

(declare-fun b!7776863 () Bool)

(assert (=> b!7776863 (= e!4607211 e!4607210)))

(declare-fun res!3099907 () Bool)

(assert (=> b!7776863 (=> res!3099907 e!4607210)))

(assert (=> b!7776863 (= res!3099907 (not (= (++!17911 lt!2672251 (_2!38245 lt!2672252)) s!14292)))))

(assert (=> b!7776863 (= lt!2672251 (Cons!73510 (h!79958 s!14292) (_1!38245 lt!2672252)))))

(declare-datatypes ((Option!17736 0))(
  ( (None!17735) (Some!17735 (v!54870 tuple2!69884)) )
))
(declare-fun lt!2672259 () Option!17736)

(declare-fun get!26264 (Option!17736) tuple2!69884)

(assert (=> b!7776863 (= lt!2672252 (get!26264 lt!2672259))))

(declare-fun isDefined!14348 (Option!17736) Bool)

(assert (=> b!7776863 (isDefined!14348 lt!2672259)))

(declare-fun findConcatSeparation!3766 (Regex!20795 Regex!20795 List!73634 List!73634 List!73634) Option!17736)

(assert (=> b!7776863 (= lt!2672259 (findConcatSeparation!3766 lt!2672262 r2!6217 Nil!73510 (t!388369 s!14292) (t!388369 s!14292)))))

(declare-fun lt!2672256 () Unit!168492)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!356 (Regex!20795 Regex!20795 List!73634) Unit!168492)

(assert (=> b!7776863 (= lt!2672256 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!356 lt!2672262 r2!6217 (t!388369 s!14292)))))

(declare-fun b!7776864 () Bool)

(declare-fun res!3099903 () Bool)

(assert (=> b!7776864 (=> res!3099903 e!4607210)))

(assert (=> b!7776864 (= res!3099903 (not (matchR!10255 r1!6279 lt!2672251)))))

(declare-fun b!7776865 () Bool)

(declare-fun tp!2285349 () Bool)

(assert (=> b!7776865 (= e!4607205 tp!2285349)))

(declare-fun b!7776866 () Bool)

(assert (=> b!7776866 (= e!4607212 (matchR!10255 lt!2672257 (t!388369 s!14292)))))

(declare-fun b!7776867 () Bool)

(declare-fun tp!2285348 () Bool)

(assert (=> b!7776867 (= e!4607209 tp!2285348)))

(assert (= (and start!740334 res!3099904) b!7776858))

(assert (= (and b!7776858 res!3099900) b!7776852))

(assert (= (and b!7776852 res!3099908) b!7776861))

(assert (= (and b!7776861 res!3099909) b!7776849))

(assert (= (and b!7776849 res!3099910) b!7776862))

(assert (= (and b!7776862 res!3099899) b!7776847))

(assert (= (and b!7776847 res!3099898) b!7776851))

(assert (= (and b!7776851 (not res!3099901)) b!7776866))

(assert (= (and b!7776851 (not res!3099906)) b!7776863))

(assert (= (and b!7776863 (not res!3099907)) b!7776848))

(assert (= (and b!7776848 (not res!3099905)) b!7776850))

(assert (= (and b!7776850 (not res!3099902)) b!7776864))

(assert (= (and b!7776864 (not res!3099903)) b!7776846))

(assert (= (and start!740334 ((_ is ElementMatch!20795) r1!6279)) b!7776853))

(assert (= (and start!740334 ((_ is Concat!29640) r1!6279)) b!7776856))

(assert (= (and start!740334 ((_ is Star!20795) r1!6279)) b!7776867))

(assert (= (and start!740334 ((_ is Union!20795) r1!6279)) b!7776859))

(assert (= (and start!740334 ((_ is ElementMatch!20795) r2!6217)) b!7776854))

(assert (= (and start!740334 ((_ is Concat!29640) r2!6217)) b!7776860))

(assert (= (and start!740334 ((_ is Star!20795) r2!6217)) b!7776865))

(assert (= (and start!740334 ((_ is Union!20795) r2!6217)) b!7776855))

(assert (= (and start!740334 ((_ is Cons!73510) s!14292)) b!7776857))

(declare-fun m!8227290 () Bool)

(assert (=> b!7776864 m!8227290))

(declare-fun m!8227292 () Bool)

(assert (=> b!7776862 m!8227292))

(declare-fun m!8227294 () Bool)

(assert (=> b!7776858 m!8227294))

(declare-fun m!8227296 () Bool)

(assert (=> b!7776850 m!8227296))

(declare-fun m!8227298 () Bool)

(assert (=> start!740334 m!8227298))

(declare-fun m!8227300 () Bool)

(assert (=> b!7776847 m!8227300))

(declare-fun m!8227302 () Bool)

(assert (=> b!7776847 m!8227302))

(declare-fun m!8227304 () Bool)

(assert (=> b!7776852 m!8227304))

(declare-fun m!8227306 () Bool)

(assert (=> b!7776848 m!8227306))

(declare-fun m!8227308 () Bool)

(assert (=> b!7776863 m!8227308))

(declare-fun m!8227310 () Bool)

(assert (=> b!7776863 m!8227310))

(declare-fun m!8227312 () Bool)

(assert (=> b!7776863 m!8227312))

(declare-fun m!8227314 () Bool)

(assert (=> b!7776863 m!8227314))

(declare-fun m!8227316 () Bool)

(assert (=> b!7776863 m!8227316))

(declare-fun m!8227318 () Bool)

(assert (=> b!7776851 m!8227318))

(declare-fun m!8227320 () Bool)

(assert (=> b!7776851 m!8227320))

(declare-fun m!8227322 () Bool)

(assert (=> b!7776866 m!8227322))

(declare-fun m!8227324 () Bool)

(assert (=> b!7776846 m!8227324))

(declare-fun m!8227326 () Bool)

(assert (=> b!7776849 m!8227326))

(declare-fun m!8227328 () Bool)

(assert (=> b!7776849 m!8227328))

(check-sat (not b!7776846) (not b!7776855) (not b!7776856) (not b!7776850) (not b!7776848) (not b!7776863) (not b!7776866) (not b!7776847) (not b!7776857) (not b!7776867) (not b!7776849) (not b!7776859) (not b!7776852) (not b!7776862) tp_is_empty!51945 (not b!7776865) (not b!7776851) (not b!7776864) (not start!740334) (not b!7776858) (not b!7776860))
(check-sat)
