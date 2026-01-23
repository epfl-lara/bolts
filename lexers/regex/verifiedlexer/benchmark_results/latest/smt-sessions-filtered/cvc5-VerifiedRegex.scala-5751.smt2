; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285014 () Bool)

(assert start!285014)

(declare-fun b!2931131 () Bool)

(assert (=> b!2931131 true))

(assert (=> b!2931131 true))

(assert (=> b!2931131 true))

(declare-fun lambda!109118 () Int)

(declare-fun lambda!109117 () Int)

(assert (=> b!2931131 (not (= lambda!109118 lambda!109117))))

(assert (=> b!2931131 true))

(assert (=> b!2931131 true))

(assert (=> b!2931131 true))

(declare-fun b!2931130 () Bool)

(declare-fun e!1848261 () Bool)

(declare-fun tp!939398 () Bool)

(assert (=> b!2931130 (= e!1848261 tp!939398)))

(declare-fun e!1848266 () Bool)

(declare-fun e!1848264 () Bool)

(assert (=> b!2931131 (= e!1848266 e!1848264)))

(declare-fun res!1210077 () Bool)

(assert (=> b!2931131 (=> res!1210077 e!1848264)))

(declare-fun lt!1027904 () Bool)

(assert (=> b!2931131 (= res!1210077 (not lt!1027904))))

(declare-fun Exists!1414 (Int) Bool)

(assert (=> b!2931131 (= (Exists!1414 lambda!109117) (Exists!1414 lambda!109118))))

(declare-datatypes ((Unit!48447 0))(
  ( (Unit!48448) )
))
(declare-fun lt!1027906 () Unit!48447)

(declare-datatypes ((C!18290 0))(
  ( (C!18291 (val!11181 Int)) )
))
(declare-datatypes ((Regex!9052 0))(
  ( (ElementMatch!9052 (c!478651 C!18290)) (Concat!14373 (regOne!18616 Regex!9052) (regTwo!18616 Regex!9052)) (EmptyExpr!9052) (Star!9052 (reg!9381 Regex!9052)) (EmptyLang!9052) (Union!9052 (regOne!18617 Regex!9052) (regTwo!18617 Regex!9052)) )
))
(declare-fun r!17423 () Regex!9052)

(declare-datatypes ((List!34917 0))(
  ( (Nil!34793) (Cons!34793 (h!40213 C!18290) (t!233982 List!34917)) )
))
(declare-fun s!11993 () List!34917)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!225 (Regex!9052 List!34917) Unit!48447)

(assert (=> b!2931131 (= lt!1027906 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!225 (reg!9381 r!17423) s!11993))))

(assert (=> b!2931131 (= lt!1027904 (Exists!1414 lambda!109117))))

(declare-datatypes ((tuple2!33754 0))(
  ( (tuple2!33755 (_1!20009 List!34917) (_2!20009 List!34917)) )
))
(declare-datatypes ((Option!6609 0))(
  ( (None!6608) (Some!6608 (v!34742 tuple2!33754)) )
))
(declare-fun lt!1027905 () Option!6609)

(declare-fun isDefined!5160 (Option!6609) Bool)

(assert (=> b!2931131 (= lt!1027904 (isDefined!5160 lt!1027905))))

(declare-fun lt!1027910 () Regex!9052)

(declare-fun findConcatSeparation!1003 (Regex!9052 Regex!9052 List!34917 List!34917 List!34917) Option!6609)

(assert (=> b!2931131 (= lt!1027905 (findConcatSeparation!1003 (reg!9381 r!17423) lt!1027910 Nil!34793 s!11993 s!11993))))

(declare-fun lt!1027907 () Unit!48447)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!785 (Regex!9052 Regex!9052 List!34917) Unit!48447)

(assert (=> b!2931131 (= lt!1027907 (lemmaFindConcatSeparationEquivalentToExists!785 (reg!9381 r!17423) lt!1027910 s!11993))))

(assert (=> b!2931131 (= lt!1027910 (Star!9052 (reg!9381 r!17423)))))

(declare-fun b!2931132 () Bool)

(declare-fun res!1210075 () Bool)

(declare-fun e!1848263 () Bool)

(assert (=> b!2931132 (=> res!1210075 e!1848263)))

(declare-fun lt!1027913 () tuple2!33754)

(declare-fun matchR!3934 (Regex!9052 List!34917) Bool)

(assert (=> b!2931132 (= res!1210075 (not (matchR!3934 lt!1027910 (_2!20009 lt!1027913))))))

(declare-fun res!1210079 () Bool)

(declare-fun e!1848260 () Bool)

(assert (=> start!285014 (=> (not res!1210079) (not e!1848260))))

(declare-fun validRegex!3785 (Regex!9052) Bool)

(assert (=> start!285014 (= res!1210079 (validRegex!3785 r!17423))))

(assert (=> start!285014 e!1848260))

(assert (=> start!285014 e!1848261))

(declare-fun e!1848262 () Bool)

(assert (=> start!285014 e!1848262))

(declare-fun b!2931133 () Bool)

(declare-fun tp_is_empty!15667 () Bool)

(declare-fun tp!939396 () Bool)

(assert (=> b!2931133 (= e!1848262 (and tp_is_empty!15667 tp!939396))))

(declare-fun b!2931134 () Bool)

(assert (=> b!2931134 (= e!1848260 (not e!1848266))))

(declare-fun res!1210078 () Bool)

(assert (=> b!2931134 (=> res!1210078 e!1848266)))

(declare-fun lt!1027902 () Bool)

(assert (=> b!2931134 (= res!1210078 (or (not lt!1027902) (is-Concat!14373 r!17423) (is-Union!9052 r!17423) (not (is-Star!9052 r!17423))))))

(declare-fun matchRSpec!1189 (Regex!9052 List!34917) Bool)

(assert (=> b!2931134 (= lt!1027902 (matchRSpec!1189 r!17423 s!11993))))

(assert (=> b!2931134 (= lt!1027902 (matchR!3934 r!17423 s!11993))))

(declare-fun lt!1027911 () Unit!48447)

(declare-fun mainMatchTheorem!1189 (Regex!9052 List!34917) Unit!48447)

(assert (=> b!2931134 (= lt!1027911 (mainMatchTheorem!1189 r!17423 s!11993))))

(declare-fun b!2931135 () Bool)

(assert (=> b!2931135 (= e!1848263 (validRegex!3785 (reg!9381 r!17423)))))

(declare-fun simplify!59 (Regex!9052) Regex!9052)

(assert (=> b!2931135 (matchR!3934 (simplify!59 lt!1027910) (_2!20009 lt!1027913))))

(declare-fun lt!1027912 () Unit!48447)

(declare-fun lemmaSimplifySound!55 (Regex!9052 List!34917) Unit!48447)

(assert (=> b!2931135 (= lt!1027912 (lemmaSimplifySound!55 lt!1027910 (_2!20009 lt!1027913)))))

(declare-fun lt!1027909 () Unit!48447)

(declare-fun e!1848265 () Unit!48447)

(assert (=> b!2931135 (= lt!1027909 e!1848265)))

(declare-fun c!478650 () Bool)

(declare-fun size!26448 (List!34917) Int)

(assert (=> b!2931135 (= c!478650 (= (size!26448 (_2!20009 lt!1027913)) (size!26448 s!11993)))))

(assert (=> b!2931135 (matchR!3934 (simplify!59 (reg!9381 r!17423)) (_1!20009 lt!1027913))))

(declare-fun lt!1027908 () Unit!48447)

(assert (=> b!2931135 (= lt!1027908 (lemmaSimplifySound!55 (reg!9381 r!17423) (_1!20009 lt!1027913)))))

(declare-fun b!2931136 () Bool)

(assert (=> b!2931136 (= e!1848261 tp_is_empty!15667)))

(declare-fun b!2931137 () Bool)

(declare-fun tp!939394 () Bool)

(declare-fun tp!939399 () Bool)

(assert (=> b!2931137 (= e!1848261 (and tp!939394 tp!939399))))

(declare-fun b!2931138 () Bool)

(assert (=> b!2931138 (= e!1848264 e!1848263)))

(declare-fun res!1210076 () Bool)

(assert (=> b!2931138 (=> res!1210076 e!1848263)))

(assert (=> b!2931138 (= res!1210076 (not (matchR!3934 (reg!9381 r!17423) (_1!20009 lt!1027913))))))

(declare-fun get!10627 (Option!6609) tuple2!33754)

(assert (=> b!2931138 (= lt!1027913 (get!10627 lt!1027905))))

(declare-fun b!2931139 () Bool)

(declare-fun Unit!48449 () Unit!48447)

(assert (=> b!2931139 (= e!1848265 Unit!48449)))

(declare-fun lt!1027903 () Unit!48447)

(assert (=> b!2931139 (= lt!1027903 (mainMatchTheorem!1189 (reg!9381 r!17423) (_1!20009 lt!1027913)))))

(assert (=> b!2931139 false))

(declare-fun b!2931140 () Bool)

(declare-fun res!1210080 () Bool)

(assert (=> b!2931140 (=> res!1210080 e!1848266)))

(declare-fun isEmpty!19044 (List!34917) Bool)

(assert (=> b!2931140 (= res!1210080 (isEmpty!19044 s!11993))))

(declare-fun b!2931141 () Bool)

(declare-fun Unit!48450 () Unit!48447)

(assert (=> b!2931141 (= e!1848265 Unit!48450)))

(declare-fun b!2931142 () Bool)

(declare-fun tp!939395 () Bool)

(declare-fun tp!939397 () Bool)

(assert (=> b!2931142 (= e!1848261 (and tp!939395 tp!939397))))

(assert (= (and start!285014 res!1210079) b!2931134))

(assert (= (and b!2931134 (not res!1210078)) b!2931140))

(assert (= (and b!2931140 (not res!1210080)) b!2931131))

(assert (= (and b!2931131 (not res!1210077)) b!2931138))

(assert (= (and b!2931138 (not res!1210076)) b!2931132))

(assert (= (and b!2931132 (not res!1210075)) b!2931135))

(assert (= (and b!2931135 c!478650) b!2931139))

(assert (= (and b!2931135 (not c!478650)) b!2931141))

(assert (= (and start!285014 (is-ElementMatch!9052 r!17423)) b!2931136))

(assert (= (and start!285014 (is-Concat!14373 r!17423)) b!2931142))

(assert (= (and start!285014 (is-Star!9052 r!17423)) b!2931130))

(assert (= (and start!285014 (is-Union!9052 r!17423)) b!2931137))

(assert (= (and start!285014 (is-Cons!34793 s!11993)) b!2931133))

(declare-fun m!3321145 () Bool)

(assert (=> b!2931138 m!3321145))

(declare-fun m!3321147 () Bool)

(assert (=> b!2931138 m!3321147))

(declare-fun m!3321149 () Bool)

(assert (=> b!2931135 m!3321149))

(declare-fun m!3321151 () Bool)

(assert (=> b!2931135 m!3321151))

(declare-fun m!3321153 () Bool)

(assert (=> b!2931135 m!3321153))

(assert (=> b!2931135 m!3321149))

(declare-fun m!3321155 () Bool)

(assert (=> b!2931135 m!3321155))

(declare-fun m!3321157 () Bool)

(assert (=> b!2931135 m!3321157))

(declare-fun m!3321159 () Bool)

(assert (=> b!2931135 m!3321159))

(declare-fun m!3321161 () Bool)

(assert (=> b!2931135 m!3321161))

(declare-fun m!3321163 () Bool)

(assert (=> b!2931135 m!3321163))

(assert (=> b!2931135 m!3321157))

(declare-fun m!3321165 () Bool)

(assert (=> b!2931135 m!3321165))

(declare-fun m!3321167 () Bool)

(assert (=> b!2931131 m!3321167))

(declare-fun m!3321169 () Bool)

(assert (=> b!2931131 m!3321169))

(declare-fun m!3321171 () Bool)

(assert (=> b!2931131 m!3321171))

(declare-fun m!3321173 () Bool)

(assert (=> b!2931131 m!3321173))

(declare-fun m!3321175 () Bool)

(assert (=> b!2931131 m!3321175))

(declare-fun m!3321177 () Bool)

(assert (=> b!2931131 m!3321177))

(assert (=> b!2931131 m!3321167))

(declare-fun m!3321179 () Bool)

(assert (=> b!2931139 m!3321179))

(declare-fun m!3321181 () Bool)

(assert (=> b!2931140 m!3321181))

(declare-fun m!3321183 () Bool)

(assert (=> b!2931134 m!3321183))

(declare-fun m!3321185 () Bool)

(assert (=> b!2931134 m!3321185))

(declare-fun m!3321187 () Bool)

(assert (=> b!2931134 m!3321187))

(declare-fun m!3321189 () Bool)

(assert (=> b!2931132 m!3321189))

(declare-fun m!3321191 () Bool)

(assert (=> start!285014 m!3321191))

(push 1)

(assert (not b!2931140))

(assert (not b!2931133))

(assert (not start!285014))

(assert (not b!2931139))

(assert (not b!2931135))

(assert (not b!2931137))

(assert (not b!2931130))

(assert (not b!2931131))

(assert (not b!2931132))

(assert (not b!2931134))

(assert tp_is_empty!15667)

(assert (not b!2931142))

(assert (not b!2931138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!839348 () Bool)

(declare-fun choose!17321 (Int) Bool)

(assert (=> d!839348 (= (Exists!1414 lambda!109117) (choose!17321 lambda!109117))))

(declare-fun bs!525229 () Bool)

(assert (= bs!525229 d!839348))

(declare-fun m!3321241 () Bool)

(assert (=> bs!525229 m!3321241))

(assert (=> b!2931131 d!839348))

(declare-fun bs!525230 () Bool)

(declare-fun d!839350 () Bool)

(assert (= bs!525230 (and d!839350 b!2931131)))

(declare-fun lambda!109131 () Int)

(assert (=> bs!525230 (= (= (Star!9052 (reg!9381 r!17423)) lt!1027910) (= lambda!109131 lambda!109117))))

(assert (=> bs!525230 (not (= lambda!109131 lambda!109118))))

(assert (=> d!839350 true))

(assert (=> d!839350 true))

(declare-fun lambda!109132 () Int)

(assert (=> bs!525230 (not (= lambda!109132 lambda!109117))))

(assert (=> bs!525230 (= (= (Star!9052 (reg!9381 r!17423)) lt!1027910) (= lambda!109132 lambda!109118))))

(declare-fun bs!525231 () Bool)

(assert (= bs!525231 d!839350))

(assert (=> bs!525231 (not (= lambda!109132 lambda!109131))))

(assert (=> d!839350 true))

(assert (=> d!839350 true))

(assert (=> d!839350 (= (Exists!1414 lambda!109131) (Exists!1414 lambda!109132))))

(declare-fun lt!1027952 () Unit!48447)

(declare-fun choose!17322 (Regex!9052 List!34917) Unit!48447)

(assert (=> d!839350 (= lt!1027952 (choose!17322 (reg!9381 r!17423) s!11993))))

(assert (=> d!839350 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839350 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!225 (reg!9381 r!17423) s!11993) lt!1027952)))

(declare-fun m!3321243 () Bool)

(assert (=> bs!525231 m!3321243))

(declare-fun m!3321245 () Bool)

(assert (=> bs!525231 m!3321245))

(declare-fun m!3321247 () Bool)

(assert (=> bs!525231 m!3321247))

(assert (=> bs!525231 m!3321153))

(assert (=> b!2931131 d!839350))

(declare-fun d!839352 () Bool)

(assert (=> d!839352 (= (Exists!1414 lambda!109118) (choose!17321 lambda!109118))))

(declare-fun bs!525232 () Bool)

(assert (= bs!525232 d!839352))

(declare-fun m!3321249 () Bool)

(assert (=> bs!525232 m!3321249))

(assert (=> b!2931131 d!839352))

(declare-fun d!839354 () Bool)

(declare-fun isEmpty!19046 (Option!6609) Bool)

(assert (=> d!839354 (= (isDefined!5160 lt!1027905) (not (isEmpty!19046 lt!1027905)))))

(declare-fun bs!525233 () Bool)

(assert (= bs!525233 d!839354))

(declare-fun m!3321251 () Bool)

(assert (=> bs!525233 m!3321251))

(assert (=> b!2931131 d!839354))

(declare-fun bs!525234 () Bool)

(declare-fun d!839356 () Bool)

(assert (= bs!525234 (and d!839356 b!2931131)))

(declare-fun lambda!109135 () Int)

(assert (=> bs!525234 (= lambda!109135 lambda!109117)))

(assert (=> bs!525234 (not (= lambda!109135 lambda!109118))))

(declare-fun bs!525235 () Bool)

(assert (= bs!525235 (and d!839356 d!839350)))

(assert (=> bs!525235 (= (= lt!1027910 (Star!9052 (reg!9381 r!17423))) (= lambda!109135 lambda!109131))))

(assert (=> bs!525235 (not (= lambda!109135 lambda!109132))))

(assert (=> d!839356 true))

(assert (=> d!839356 true))

(assert (=> d!839356 true))

(assert (=> d!839356 (= (isDefined!5160 (findConcatSeparation!1003 (reg!9381 r!17423) lt!1027910 Nil!34793 s!11993 s!11993)) (Exists!1414 lambda!109135))))

(declare-fun lt!1027955 () Unit!48447)

(declare-fun choose!17323 (Regex!9052 Regex!9052 List!34917) Unit!48447)

(assert (=> d!839356 (= lt!1027955 (choose!17323 (reg!9381 r!17423) lt!1027910 s!11993))))

(assert (=> d!839356 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839356 (= (lemmaFindConcatSeparationEquivalentToExists!785 (reg!9381 r!17423) lt!1027910 s!11993) lt!1027955)))

(declare-fun bs!525236 () Bool)

(assert (= bs!525236 d!839356))

(assert (=> bs!525236 m!3321173))

(declare-fun m!3321253 () Bool)

(assert (=> bs!525236 m!3321253))

(declare-fun m!3321255 () Bool)

(assert (=> bs!525236 m!3321255))

(assert (=> bs!525236 m!3321173))

(assert (=> bs!525236 m!3321153))

(declare-fun m!3321257 () Bool)

(assert (=> bs!525236 m!3321257))

(assert (=> b!2931131 d!839356))

(declare-fun b!2931264 () Bool)

(declare-fun e!1848326 () Option!6609)

(assert (=> b!2931264 (= e!1848326 None!6608)))

(declare-fun b!2931265 () Bool)

(declare-fun e!1848329 () Option!6609)

(assert (=> b!2931265 (= e!1848329 (Some!6608 (tuple2!33755 Nil!34793 s!11993)))))

(declare-fun b!2931266 () Bool)

(declare-fun res!1210152 () Bool)

(declare-fun e!1848328 () Bool)

(assert (=> b!2931266 (=> (not res!1210152) (not e!1848328))))

(declare-fun lt!1027964 () Option!6609)

(assert (=> b!2931266 (= res!1210152 (matchR!3934 lt!1027910 (_2!20009 (get!10627 lt!1027964))))))

(declare-fun b!2931267 () Bool)

(declare-fun ++!8300 (List!34917 List!34917) List!34917)

(assert (=> b!2931267 (= e!1848328 (= (++!8300 (_1!20009 (get!10627 lt!1027964)) (_2!20009 (get!10627 lt!1027964))) s!11993))))

(declare-fun b!2931268 () Bool)

(declare-fun e!1848327 () Bool)

(assert (=> b!2931268 (= e!1848327 (matchR!3934 lt!1027910 s!11993))))

(declare-fun b!2931269 () Bool)

(declare-fun e!1848330 () Bool)

(assert (=> b!2931269 (= e!1848330 (not (isDefined!5160 lt!1027964)))))

(declare-fun b!2931270 () Bool)

(declare-fun res!1210151 () Bool)

(assert (=> b!2931270 (=> (not res!1210151) (not e!1848328))))

(assert (=> b!2931270 (= res!1210151 (matchR!3934 (reg!9381 r!17423) (_1!20009 (get!10627 lt!1027964))))))

(declare-fun d!839362 () Bool)

(assert (=> d!839362 e!1848330))

(declare-fun res!1210153 () Bool)

(assert (=> d!839362 (=> res!1210153 e!1848330)))

(assert (=> d!839362 (= res!1210153 e!1848328)))

(declare-fun res!1210149 () Bool)

(assert (=> d!839362 (=> (not res!1210149) (not e!1848328))))

(assert (=> d!839362 (= res!1210149 (isDefined!5160 lt!1027964))))

(assert (=> d!839362 (= lt!1027964 e!1848329)))

(declare-fun c!478669 () Bool)

(assert (=> d!839362 (= c!478669 e!1848327)))

(declare-fun res!1210150 () Bool)

(assert (=> d!839362 (=> (not res!1210150) (not e!1848327))))

(assert (=> d!839362 (= res!1210150 (matchR!3934 (reg!9381 r!17423) Nil!34793))))

(assert (=> d!839362 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839362 (= (findConcatSeparation!1003 (reg!9381 r!17423) lt!1027910 Nil!34793 s!11993 s!11993) lt!1027964)))

(declare-fun b!2931271 () Bool)

(assert (=> b!2931271 (= e!1848329 e!1848326)))

(declare-fun c!478668 () Bool)

(assert (=> b!2931271 (= c!478668 (is-Nil!34793 s!11993))))

(declare-fun b!2931272 () Bool)

(declare-fun lt!1027963 () Unit!48447)

(declare-fun lt!1027962 () Unit!48447)

(assert (=> b!2931272 (= lt!1027963 lt!1027962)))

(assert (=> b!2931272 (= (++!8300 (++!8300 Nil!34793 (Cons!34793 (h!40213 s!11993) Nil!34793)) (t!233982 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!931 (List!34917 C!18290 List!34917 List!34917) Unit!48447)

(assert (=> b!2931272 (= lt!1027962 (lemmaMoveElementToOtherListKeepsConcatEq!931 Nil!34793 (h!40213 s!11993) (t!233982 s!11993) s!11993))))

(assert (=> b!2931272 (= e!1848326 (findConcatSeparation!1003 (reg!9381 r!17423) lt!1027910 (++!8300 Nil!34793 (Cons!34793 (h!40213 s!11993) Nil!34793)) (t!233982 s!11993) s!11993))))

(assert (= (and d!839362 res!1210150) b!2931268))

(assert (= (and d!839362 c!478669) b!2931265))

(assert (= (and d!839362 (not c!478669)) b!2931271))

(assert (= (and b!2931271 c!478668) b!2931264))

(assert (= (and b!2931271 (not c!478668)) b!2931272))

(assert (= (and d!839362 res!1210149) b!2931270))

(assert (= (and b!2931270 res!1210151) b!2931266))

(assert (= (and b!2931266 res!1210152) b!2931267))

(assert (= (and d!839362 (not res!1210153)) b!2931269))

(declare-fun m!3321259 () Bool)

(assert (=> b!2931270 m!3321259))

(declare-fun m!3321261 () Bool)

(assert (=> b!2931270 m!3321261))

(declare-fun m!3321263 () Bool)

(assert (=> b!2931269 m!3321263))

(assert (=> b!2931266 m!3321259))

(declare-fun m!3321265 () Bool)

(assert (=> b!2931266 m!3321265))

(assert (=> b!2931267 m!3321259))

(declare-fun m!3321267 () Bool)

(assert (=> b!2931267 m!3321267))

(assert (=> d!839362 m!3321263))

(declare-fun m!3321269 () Bool)

(assert (=> d!839362 m!3321269))

(assert (=> d!839362 m!3321153))

(declare-fun m!3321271 () Bool)

(assert (=> b!2931272 m!3321271))

(assert (=> b!2931272 m!3321271))

(declare-fun m!3321273 () Bool)

(assert (=> b!2931272 m!3321273))

(declare-fun m!3321275 () Bool)

(assert (=> b!2931272 m!3321275))

(assert (=> b!2931272 m!3321271))

(declare-fun m!3321277 () Bool)

(assert (=> b!2931272 m!3321277))

(declare-fun m!3321279 () Bool)

(assert (=> b!2931268 m!3321279))

(assert (=> b!2931131 d!839362))

(declare-fun b!2931305 () Bool)

(declare-fun res!1210180 () Bool)

(declare-fun e!1848353 () Bool)

(assert (=> b!2931305 (=> (not res!1210180) (not e!1848353))))

(declare-fun call!192373 () Bool)

(assert (=> b!2931305 (= res!1210180 (not call!192373))))

(declare-fun b!2931306 () Bool)

(declare-fun res!1210174 () Bool)

(declare-fun e!1848348 () Bool)

(assert (=> b!2931306 (=> res!1210174 e!1848348)))

(declare-fun tail!4744 (List!34917) List!34917)

(assert (=> b!2931306 (= res!1210174 (not (isEmpty!19044 (tail!4744 (_2!20009 lt!1027913)))))))

(declare-fun b!2931307 () Bool)

(declare-fun head!6518 (List!34917) C!18290)

(assert (=> b!2931307 (= e!1848353 (= (head!6518 (_2!20009 lt!1027913)) (c!478651 lt!1027910)))))

(declare-fun b!2931308 () Bool)

(declare-fun e!1848351 () Bool)

(declare-fun nullable!2848 (Regex!9052) Bool)

(assert (=> b!2931308 (= e!1848351 (nullable!2848 lt!1027910))))

(declare-fun b!2931309 () Bool)

(declare-fun res!1210177 () Bool)

(declare-fun e!1848352 () Bool)

(assert (=> b!2931309 (=> res!1210177 e!1848352)))

(assert (=> b!2931309 (= res!1210177 e!1848353)))

(declare-fun res!1210178 () Bool)

(assert (=> b!2931309 (=> (not res!1210178) (not e!1848353))))

(declare-fun lt!1027967 () Bool)

(assert (=> b!2931309 (= res!1210178 lt!1027967)))

(declare-fun b!2931310 () Bool)

(assert (=> b!2931310 (= e!1848348 (not (= (head!6518 (_2!20009 lt!1027913)) (c!478651 lt!1027910))))))

(declare-fun b!2931311 () Bool)

(declare-fun e!1848350 () Bool)

(assert (=> b!2931311 (= e!1848350 e!1848348)))

(declare-fun res!1210181 () Bool)

(assert (=> b!2931311 (=> res!1210181 e!1848348)))

(assert (=> b!2931311 (= res!1210181 call!192373)))

(declare-fun bm!192368 () Bool)

(assert (=> bm!192368 (= call!192373 (isEmpty!19044 (_2!20009 lt!1027913)))))

(declare-fun b!2931313 () Bool)

(declare-fun e!1848349 () Bool)

(assert (=> b!2931313 (= e!1848349 (= lt!1027967 call!192373))))

(declare-fun b!2931314 () Bool)

(declare-fun res!1210176 () Bool)

(assert (=> b!2931314 (=> (not res!1210176) (not e!1848353))))

(assert (=> b!2931314 (= res!1210176 (isEmpty!19044 (tail!4744 (_2!20009 lt!1027913))))))

(declare-fun b!2931315 () Bool)

(declare-fun derivativeStep!2459 (Regex!9052 C!18290) Regex!9052)

(assert (=> b!2931315 (= e!1848351 (matchR!3934 (derivativeStep!2459 lt!1027910 (head!6518 (_2!20009 lt!1027913))) (tail!4744 (_2!20009 lt!1027913))))))

(declare-fun b!2931316 () Bool)

(declare-fun e!1848347 () Bool)

(assert (=> b!2931316 (= e!1848349 e!1848347)))

(declare-fun c!478678 () Bool)

(assert (=> b!2931316 (= c!478678 (is-EmptyLang!9052 lt!1027910))))

(declare-fun b!2931317 () Bool)

(assert (=> b!2931317 (= e!1848352 e!1848350)))

(declare-fun res!1210175 () Bool)

(assert (=> b!2931317 (=> (not res!1210175) (not e!1848350))))

(assert (=> b!2931317 (= res!1210175 (not lt!1027967))))

(declare-fun b!2931318 () Bool)

(assert (=> b!2931318 (= e!1848347 (not lt!1027967))))

(declare-fun b!2931312 () Bool)

(declare-fun res!1210179 () Bool)

(assert (=> b!2931312 (=> res!1210179 e!1848352)))

(assert (=> b!2931312 (= res!1210179 (not (is-ElementMatch!9052 lt!1027910)))))

(assert (=> b!2931312 (= e!1848347 e!1848352)))

(declare-fun d!839364 () Bool)

(assert (=> d!839364 e!1848349))

(declare-fun c!478677 () Bool)

(assert (=> d!839364 (= c!478677 (is-EmptyExpr!9052 lt!1027910))))

(assert (=> d!839364 (= lt!1027967 e!1848351)))

(declare-fun c!478676 () Bool)

(assert (=> d!839364 (= c!478676 (isEmpty!19044 (_2!20009 lt!1027913)))))

(assert (=> d!839364 (validRegex!3785 lt!1027910)))

(assert (=> d!839364 (= (matchR!3934 lt!1027910 (_2!20009 lt!1027913)) lt!1027967)))

(assert (= (and d!839364 c!478676) b!2931308))

(assert (= (and d!839364 (not c!478676)) b!2931315))

(assert (= (and d!839364 c!478677) b!2931313))

(assert (= (and d!839364 (not c!478677)) b!2931316))

(assert (= (and b!2931316 c!478678) b!2931318))

(assert (= (and b!2931316 (not c!478678)) b!2931312))

(assert (= (and b!2931312 (not res!1210179)) b!2931309))

(assert (= (and b!2931309 res!1210178) b!2931305))

(assert (= (and b!2931305 res!1210180) b!2931314))

(assert (= (and b!2931314 res!1210176) b!2931307))

(assert (= (and b!2931309 (not res!1210177)) b!2931317))

(assert (= (and b!2931317 res!1210175) b!2931311))

(assert (= (and b!2931311 (not res!1210181)) b!2931306))

(assert (= (and b!2931306 (not res!1210174)) b!2931310))

(assert (= (or b!2931313 b!2931305 b!2931311) bm!192368))

(declare-fun m!3321281 () Bool)

(assert (=> d!839364 m!3321281))

(declare-fun m!3321283 () Bool)

(assert (=> d!839364 m!3321283))

(assert (=> bm!192368 m!3321281))

(declare-fun m!3321285 () Bool)

(assert (=> b!2931310 m!3321285))

(assert (=> b!2931315 m!3321285))

(assert (=> b!2931315 m!3321285))

(declare-fun m!3321287 () Bool)

(assert (=> b!2931315 m!3321287))

(declare-fun m!3321289 () Bool)

(assert (=> b!2931315 m!3321289))

(assert (=> b!2931315 m!3321287))

(assert (=> b!2931315 m!3321289))

(declare-fun m!3321291 () Bool)

(assert (=> b!2931315 m!3321291))

(assert (=> b!2931307 m!3321285))

(declare-fun m!3321293 () Bool)

(assert (=> b!2931308 m!3321293))

(assert (=> b!2931314 m!3321289))

(assert (=> b!2931314 m!3321289))

(declare-fun m!3321295 () Bool)

(assert (=> b!2931314 m!3321295))

(assert (=> b!2931306 m!3321289))

(assert (=> b!2931306 m!3321289))

(assert (=> b!2931306 m!3321295))

(assert (=> b!2931132 d!839364))

(declare-fun b!2931348 () Bool)

(declare-fun e!1848380 () Bool)

(declare-fun e!1848379 () Bool)

(assert (=> b!2931348 (= e!1848380 e!1848379)))

(declare-fun c!478687 () Bool)

(assert (=> b!2931348 (= c!478687 (is-Union!9052 r!17423))))

(declare-fun b!2931349 () Bool)

(declare-fun e!1848378 () Bool)

(assert (=> b!2931349 (= e!1848378 e!1848380)))

(declare-fun c!478688 () Bool)

(assert (=> b!2931349 (= c!478688 (is-Star!9052 r!17423))))

(declare-fun b!2931350 () Bool)

(declare-fun e!1848377 () Bool)

(declare-fun call!192383 () Bool)

(assert (=> b!2931350 (= e!1848377 call!192383)))

(declare-fun bm!192377 () Bool)

(declare-fun call!192384 () Bool)

(assert (=> bm!192377 (= call!192384 (validRegex!3785 (ite c!478687 (regOne!18617 r!17423) (regTwo!18616 r!17423))))))

(declare-fun bm!192378 () Bool)

(assert (=> bm!192378 (= call!192383 (validRegex!3785 (ite c!478688 (reg!9381 r!17423) (ite c!478687 (regTwo!18617 r!17423) (regOne!18616 r!17423)))))))

(declare-fun b!2931351 () Bool)

(assert (=> b!2931351 (= e!1848380 e!1848377)))

(declare-fun res!1210198 () Bool)

(assert (=> b!2931351 (= res!1210198 (not (nullable!2848 (reg!9381 r!17423))))))

(assert (=> b!2931351 (=> (not res!1210198) (not e!1848377))))

(declare-fun bm!192379 () Bool)

(declare-fun call!192382 () Bool)

(assert (=> bm!192379 (= call!192382 call!192383)))

(declare-fun b!2931352 () Bool)

(declare-fun res!1210196 () Bool)

(declare-fun e!1848375 () Bool)

(assert (=> b!2931352 (=> res!1210196 e!1848375)))

(assert (=> b!2931352 (= res!1210196 (not (is-Concat!14373 r!17423)))))

(assert (=> b!2931352 (= e!1848379 e!1848375)))

(declare-fun d!839366 () Bool)

(declare-fun res!1210195 () Bool)

(assert (=> d!839366 (=> res!1210195 e!1848378)))

(assert (=> d!839366 (= res!1210195 (is-ElementMatch!9052 r!17423))))

(assert (=> d!839366 (= (validRegex!3785 r!17423) e!1848378)))

(declare-fun b!2931353 () Bool)

(declare-fun e!1848376 () Bool)

(assert (=> b!2931353 (= e!1848376 call!192384)))

(declare-fun b!2931354 () Bool)

(assert (=> b!2931354 (= e!1848375 e!1848376)))

(declare-fun res!1210199 () Bool)

(assert (=> b!2931354 (=> (not res!1210199) (not e!1848376))))

(assert (=> b!2931354 (= res!1210199 call!192382)))

(declare-fun b!2931355 () Bool)

(declare-fun res!1210197 () Bool)

(declare-fun e!1848381 () Bool)

(assert (=> b!2931355 (=> (not res!1210197) (not e!1848381))))

(assert (=> b!2931355 (= res!1210197 call!192384)))

(assert (=> b!2931355 (= e!1848379 e!1848381)))

(declare-fun b!2931356 () Bool)

(assert (=> b!2931356 (= e!1848381 call!192382)))

(assert (= (and d!839366 (not res!1210195)) b!2931349))

(assert (= (and b!2931349 c!478688) b!2931351))

(assert (= (and b!2931349 (not c!478688)) b!2931348))

(assert (= (and b!2931351 res!1210198) b!2931350))

(assert (= (and b!2931348 c!478687) b!2931355))

(assert (= (and b!2931348 (not c!478687)) b!2931352))

(assert (= (and b!2931355 res!1210197) b!2931356))

(assert (= (and b!2931352 (not res!1210196)) b!2931354))

(assert (= (and b!2931354 res!1210199) b!2931353))

(assert (= (or b!2931355 b!2931353) bm!192377))

(assert (= (or b!2931356 b!2931354) bm!192379))

(assert (= (or b!2931350 bm!192379) bm!192378))

(declare-fun m!3321297 () Bool)

(assert (=> bm!192377 m!3321297))

(declare-fun m!3321299 () Bool)

(assert (=> bm!192378 m!3321299))

(declare-fun m!3321301 () Bool)

(assert (=> b!2931351 m!3321301))

(assert (=> start!285014 d!839366))

(declare-fun b!2931357 () Bool)

(declare-fun res!1210206 () Bool)

(declare-fun e!1848388 () Bool)

(assert (=> b!2931357 (=> (not res!1210206) (not e!1848388))))

(declare-fun call!192385 () Bool)

(assert (=> b!2931357 (= res!1210206 (not call!192385))))

(declare-fun b!2931358 () Bool)

(declare-fun res!1210200 () Bool)

(declare-fun e!1848383 () Bool)

(assert (=> b!2931358 (=> res!1210200 e!1848383)))

(assert (=> b!2931358 (= res!1210200 (not (isEmpty!19044 (tail!4744 (_1!20009 lt!1027913)))))))

(declare-fun b!2931359 () Bool)

(assert (=> b!2931359 (= e!1848388 (= (head!6518 (_1!20009 lt!1027913)) (c!478651 (reg!9381 r!17423))))))

(declare-fun b!2931360 () Bool)

(declare-fun e!1848386 () Bool)

(assert (=> b!2931360 (= e!1848386 (nullable!2848 (reg!9381 r!17423)))))

(declare-fun b!2931361 () Bool)

(declare-fun res!1210203 () Bool)

(declare-fun e!1848387 () Bool)

(assert (=> b!2931361 (=> res!1210203 e!1848387)))

(assert (=> b!2931361 (= res!1210203 e!1848388)))

(declare-fun res!1210204 () Bool)

(assert (=> b!2931361 (=> (not res!1210204) (not e!1848388))))

(declare-fun lt!1027968 () Bool)

(assert (=> b!2931361 (= res!1210204 lt!1027968)))

(declare-fun b!2931362 () Bool)

(assert (=> b!2931362 (= e!1848383 (not (= (head!6518 (_1!20009 lt!1027913)) (c!478651 (reg!9381 r!17423)))))))

(declare-fun b!2931363 () Bool)

(declare-fun e!1848385 () Bool)

(assert (=> b!2931363 (= e!1848385 e!1848383)))

(declare-fun res!1210207 () Bool)

(assert (=> b!2931363 (=> res!1210207 e!1848383)))

(assert (=> b!2931363 (= res!1210207 call!192385)))

(declare-fun bm!192380 () Bool)

(assert (=> bm!192380 (= call!192385 (isEmpty!19044 (_1!20009 lt!1027913)))))

(declare-fun b!2931365 () Bool)

(declare-fun e!1848384 () Bool)

(assert (=> b!2931365 (= e!1848384 (= lt!1027968 call!192385))))

(declare-fun b!2931366 () Bool)

(declare-fun res!1210202 () Bool)

(assert (=> b!2931366 (=> (not res!1210202) (not e!1848388))))

(assert (=> b!2931366 (= res!1210202 (isEmpty!19044 (tail!4744 (_1!20009 lt!1027913))))))

(declare-fun b!2931367 () Bool)

(assert (=> b!2931367 (= e!1848386 (matchR!3934 (derivativeStep!2459 (reg!9381 r!17423) (head!6518 (_1!20009 lt!1027913))) (tail!4744 (_1!20009 lt!1027913))))))

(declare-fun b!2931368 () Bool)

(declare-fun e!1848382 () Bool)

(assert (=> b!2931368 (= e!1848384 e!1848382)))

(declare-fun c!478691 () Bool)

(assert (=> b!2931368 (= c!478691 (is-EmptyLang!9052 (reg!9381 r!17423)))))

(declare-fun b!2931369 () Bool)

(assert (=> b!2931369 (= e!1848387 e!1848385)))

(declare-fun res!1210201 () Bool)

(assert (=> b!2931369 (=> (not res!1210201) (not e!1848385))))

(assert (=> b!2931369 (= res!1210201 (not lt!1027968))))

(declare-fun b!2931370 () Bool)

(assert (=> b!2931370 (= e!1848382 (not lt!1027968))))

(declare-fun b!2931364 () Bool)

(declare-fun res!1210205 () Bool)

(assert (=> b!2931364 (=> res!1210205 e!1848387)))

(assert (=> b!2931364 (= res!1210205 (not (is-ElementMatch!9052 (reg!9381 r!17423))))))

(assert (=> b!2931364 (= e!1848382 e!1848387)))

(declare-fun d!839368 () Bool)

(assert (=> d!839368 e!1848384))

(declare-fun c!478690 () Bool)

(assert (=> d!839368 (= c!478690 (is-EmptyExpr!9052 (reg!9381 r!17423)))))

(assert (=> d!839368 (= lt!1027968 e!1848386)))

(declare-fun c!478689 () Bool)

(assert (=> d!839368 (= c!478689 (isEmpty!19044 (_1!20009 lt!1027913)))))

(assert (=> d!839368 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839368 (= (matchR!3934 (reg!9381 r!17423) (_1!20009 lt!1027913)) lt!1027968)))

(assert (= (and d!839368 c!478689) b!2931360))

(assert (= (and d!839368 (not c!478689)) b!2931367))

(assert (= (and d!839368 c!478690) b!2931365))

(assert (= (and d!839368 (not c!478690)) b!2931368))

(assert (= (and b!2931368 c!478691) b!2931370))

(assert (= (and b!2931368 (not c!478691)) b!2931364))

(assert (= (and b!2931364 (not res!1210205)) b!2931361))

(assert (= (and b!2931361 res!1210204) b!2931357))

(assert (= (and b!2931357 res!1210206) b!2931366))

(assert (= (and b!2931366 res!1210202) b!2931359))

(assert (= (and b!2931361 (not res!1210203)) b!2931369))

(assert (= (and b!2931369 res!1210201) b!2931363))

(assert (= (and b!2931363 (not res!1210207)) b!2931358))

(assert (= (and b!2931358 (not res!1210200)) b!2931362))

(assert (= (or b!2931365 b!2931357 b!2931363) bm!192380))

(declare-fun m!3321303 () Bool)

(assert (=> d!839368 m!3321303))

(assert (=> d!839368 m!3321153))

(assert (=> bm!192380 m!3321303))

(declare-fun m!3321305 () Bool)

(assert (=> b!2931362 m!3321305))

(assert (=> b!2931367 m!3321305))

(assert (=> b!2931367 m!3321305))

(declare-fun m!3321307 () Bool)

(assert (=> b!2931367 m!3321307))

(declare-fun m!3321309 () Bool)

(assert (=> b!2931367 m!3321309))

(assert (=> b!2931367 m!3321307))

(assert (=> b!2931367 m!3321309))

(declare-fun m!3321311 () Bool)

(assert (=> b!2931367 m!3321311))

(assert (=> b!2931359 m!3321305))

(assert (=> b!2931360 m!3321301))

(assert (=> b!2931366 m!3321309))

(assert (=> b!2931366 m!3321309))

(declare-fun m!3321313 () Bool)

(assert (=> b!2931366 m!3321313))

(assert (=> b!2931358 m!3321309))

(assert (=> b!2931358 m!3321309))

(assert (=> b!2931358 m!3321313))

(assert (=> b!2931138 d!839368))

(declare-fun d!839370 () Bool)

(assert (=> d!839370 (= (get!10627 lt!1027905) (v!34742 lt!1027905))))

(assert (=> b!2931138 d!839370))

(declare-fun d!839372 () Bool)

(assert (=> d!839372 (= (matchR!3934 (reg!9381 r!17423) (_1!20009 lt!1027913)) (matchRSpec!1189 (reg!9381 r!17423) (_1!20009 lt!1027913)))))

(declare-fun lt!1027971 () Unit!48447)

(declare-fun choose!17324 (Regex!9052 List!34917) Unit!48447)

(assert (=> d!839372 (= lt!1027971 (choose!17324 (reg!9381 r!17423) (_1!20009 lt!1027913)))))

(assert (=> d!839372 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839372 (= (mainMatchTheorem!1189 (reg!9381 r!17423) (_1!20009 lt!1027913)) lt!1027971)))

(declare-fun bs!525240 () Bool)

(assert (= bs!525240 d!839372))

(assert (=> bs!525240 m!3321145))

(declare-fun m!3321321 () Bool)

(assert (=> bs!525240 m!3321321))

(declare-fun m!3321323 () Bool)

(assert (=> bs!525240 m!3321323))

(assert (=> bs!525240 m!3321153))

(assert (=> b!2931139 d!839372))

(declare-fun bs!525241 () Bool)

(declare-fun b!2931415 () Bool)

(assert (= bs!525241 (and b!2931415 d!839356)))

(declare-fun lambda!109146 () Int)

(assert (=> bs!525241 (not (= lambda!109146 lambda!109135))))

(declare-fun bs!525242 () Bool)

(assert (= bs!525242 (and b!2931415 d!839350)))

(assert (=> bs!525242 (not (= lambda!109146 lambda!109131))))

(assert (=> bs!525242 (= (= r!17423 (Star!9052 (reg!9381 r!17423))) (= lambda!109146 lambda!109132))))

(declare-fun bs!525243 () Bool)

(assert (= bs!525243 (and b!2931415 b!2931131)))

(assert (=> bs!525243 (= (= r!17423 lt!1027910) (= lambda!109146 lambda!109118))))

(assert (=> bs!525243 (not (= lambda!109146 lambda!109117))))

(assert (=> b!2931415 true))

(assert (=> b!2931415 true))

(declare-fun bs!525244 () Bool)

(declare-fun b!2931407 () Bool)

(assert (= bs!525244 (and b!2931407 d!839356)))

(declare-fun lambda!109147 () Int)

(assert (=> bs!525244 (not (= lambda!109147 lambda!109135))))

(declare-fun bs!525245 () Bool)

(assert (= bs!525245 (and b!2931407 d!839350)))

(assert (=> bs!525245 (not (= lambda!109147 lambda!109131))))

(declare-fun bs!525246 () Bool)

(assert (= bs!525246 (and b!2931407 b!2931131)))

(assert (=> bs!525246 (not (= lambda!109147 lambda!109118))))

(assert (=> bs!525246 (not (= lambda!109147 lambda!109117))))

(assert (=> bs!525245 (not (= lambda!109147 lambda!109132))))

(declare-fun bs!525247 () Bool)

(assert (= bs!525247 (and b!2931407 b!2931415)))

(assert (=> bs!525247 (not (= lambda!109147 lambda!109146))))

(assert (=> b!2931407 true))

(assert (=> b!2931407 true))

(declare-fun d!839376 () Bool)

(declare-fun c!478702 () Bool)

(assert (=> d!839376 (= c!478702 (is-EmptyExpr!9052 r!17423))))

(declare-fun e!1848415 () Bool)

(assert (=> d!839376 (= (matchRSpec!1189 r!17423 s!11993) e!1848415)))

(declare-fun e!1848413 () Bool)

(declare-fun call!192390 () Bool)

(assert (=> b!2931407 (= e!1848413 call!192390)))

(declare-fun b!2931408 () Bool)

(declare-fun c!478703 () Bool)

(assert (=> b!2931408 (= c!478703 (is-ElementMatch!9052 r!17423))))

(declare-fun e!1848412 () Bool)

(declare-fun e!1848409 () Bool)

(assert (=> b!2931408 (= e!1848412 e!1848409)))

(declare-fun b!2931409 () Bool)

(declare-fun e!1848410 () Bool)

(declare-fun e!1848414 () Bool)

(assert (=> b!2931409 (= e!1848410 e!1848414)))

(declare-fun res!1210226 () Bool)

(assert (=> b!2931409 (= res!1210226 (matchRSpec!1189 (regOne!18617 r!17423) s!11993))))

(assert (=> b!2931409 (=> res!1210226 e!1848414)))

(declare-fun b!2931410 () Bool)

(declare-fun c!478704 () Bool)

(assert (=> b!2931410 (= c!478704 (is-Union!9052 r!17423))))

(assert (=> b!2931410 (= e!1848409 e!1848410)))

(declare-fun b!2931411 () Bool)

(declare-fun res!1210225 () Bool)

(declare-fun e!1848411 () Bool)

(assert (=> b!2931411 (=> res!1210225 e!1848411)))

(declare-fun call!192391 () Bool)

(assert (=> b!2931411 (= res!1210225 call!192391)))

(assert (=> b!2931411 (= e!1848413 e!1848411)))

(declare-fun b!2931412 () Bool)

(assert (=> b!2931412 (= e!1848414 (matchRSpec!1189 (regTwo!18617 r!17423) s!11993))))

(declare-fun c!478705 () Bool)

(declare-fun bm!192385 () Bool)

(assert (=> bm!192385 (= call!192390 (Exists!1414 (ite c!478705 lambda!109146 lambda!109147)))))

(declare-fun b!2931413 () Bool)

(assert (=> b!2931413 (= e!1848409 (= s!11993 (Cons!34793 (c!478651 r!17423) Nil!34793)))))

(declare-fun bm!192386 () Bool)

(assert (=> bm!192386 (= call!192391 (isEmpty!19044 s!11993))))

(declare-fun b!2931414 () Bool)

(assert (=> b!2931414 (= e!1848415 e!1848412)))

(declare-fun res!1210224 () Bool)

(assert (=> b!2931414 (= res!1210224 (not (is-EmptyLang!9052 r!17423)))))

(assert (=> b!2931414 (=> (not res!1210224) (not e!1848412))))

(assert (=> b!2931415 (= e!1848411 call!192390)))

(declare-fun b!2931416 () Bool)

(assert (=> b!2931416 (= e!1848415 call!192391)))

(declare-fun b!2931417 () Bool)

(assert (=> b!2931417 (= e!1848410 e!1848413)))

(assert (=> b!2931417 (= c!478705 (is-Star!9052 r!17423))))

(assert (= (and d!839376 c!478702) b!2931416))

(assert (= (and d!839376 (not c!478702)) b!2931414))

(assert (= (and b!2931414 res!1210224) b!2931408))

(assert (= (and b!2931408 c!478703) b!2931413))

(assert (= (and b!2931408 (not c!478703)) b!2931410))

(assert (= (and b!2931410 c!478704) b!2931409))

(assert (= (and b!2931410 (not c!478704)) b!2931417))

(assert (= (and b!2931409 (not res!1210226)) b!2931412))

(assert (= (and b!2931417 c!478705) b!2931411))

(assert (= (and b!2931417 (not c!478705)) b!2931407))

(assert (= (and b!2931411 (not res!1210225)) b!2931415))

(assert (= (or b!2931415 b!2931407) bm!192385))

(assert (= (or b!2931416 b!2931411) bm!192386))

(declare-fun m!3321325 () Bool)

(assert (=> b!2931409 m!3321325))

(declare-fun m!3321327 () Bool)

(assert (=> b!2931412 m!3321327))

(declare-fun m!3321329 () Bool)

(assert (=> bm!192385 m!3321329))

(assert (=> bm!192386 m!3321181))

(assert (=> b!2931134 d!839376))

(declare-fun b!2931442 () Bool)

(declare-fun res!1210249 () Bool)

(declare-fun e!1848434 () Bool)

(assert (=> b!2931442 (=> (not res!1210249) (not e!1848434))))

(declare-fun call!192392 () Bool)

(assert (=> b!2931442 (= res!1210249 (not call!192392))))

(declare-fun b!2931443 () Bool)

(declare-fun res!1210243 () Bool)

(declare-fun e!1848429 () Bool)

(assert (=> b!2931443 (=> res!1210243 e!1848429)))

(assert (=> b!2931443 (= res!1210243 (not (isEmpty!19044 (tail!4744 s!11993))))))

(declare-fun b!2931444 () Bool)

(assert (=> b!2931444 (= e!1848434 (= (head!6518 s!11993) (c!478651 r!17423)))))

(declare-fun b!2931445 () Bool)

(declare-fun e!1848432 () Bool)

(assert (=> b!2931445 (= e!1848432 (nullable!2848 r!17423))))

(declare-fun b!2931446 () Bool)

(declare-fun res!1210246 () Bool)

(declare-fun e!1848433 () Bool)

(assert (=> b!2931446 (=> res!1210246 e!1848433)))

(assert (=> b!2931446 (= res!1210246 e!1848434)))

(declare-fun res!1210247 () Bool)

(assert (=> b!2931446 (=> (not res!1210247) (not e!1848434))))

(declare-fun lt!1027974 () Bool)

(assert (=> b!2931446 (= res!1210247 lt!1027974)))

(declare-fun b!2931447 () Bool)

(assert (=> b!2931447 (= e!1848429 (not (= (head!6518 s!11993) (c!478651 r!17423))))))

(declare-fun b!2931448 () Bool)

(declare-fun e!1848431 () Bool)

(assert (=> b!2931448 (= e!1848431 e!1848429)))

(declare-fun res!1210250 () Bool)

(assert (=> b!2931448 (=> res!1210250 e!1848429)))

(assert (=> b!2931448 (= res!1210250 call!192392)))

(declare-fun bm!192387 () Bool)

(assert (=> bm!192387 (= call!192392 (isEmpty!19044 s!11993))))

(declare-fun b!2931450 () Bool)

(declare-fun e!1848430 () Bool)

(assert (=> b!2931450 (= e!1848430 (= lt!1027974 call!192392))))

(declare-fun b!2931451 () Bool)

(declare-fun res!1210245 () Bool)

(assert (=> b!2931451 (=> (not res!1210245) (not e!1848434))))

(assert (=> b!2931451 (= res!1210245 (isEmpty!19044 (tail!4744 s!11993)))))

(declare-fun b!2931452 () Bool)

(assert (=> b!2931452 (= e!1848432 (matchR!3934 (derivativeStep!2459 r!17423 (head!6518 s!11993)) (tail!4744 s!11993)))))

(declare-fun b!2931453 () Bool)

(declare-fun e!1848428 () Bool)

(assert (=> b!2931453 (= e!1848430 e!1848428)))

(declare-fun c!478712 () Bool)

(assert (=> b!2931453 (= c!478712 (is-EmptyLang!9052 r!17423))))

(declare-fun b!2931454 () Bool)

(assert (=> b!2931454 (= e!1848433 e!1848431)))

(declare-fun res!1210244 () Bool)

(assert (=> b!2931454 (=> (not res!1210244) (not e!1848431))))

(assert (=> b!2931454 (= res!1210244 (not lt!1027974))))

(declare-fun b!2931455 () Bool)

(assert (=> b!2931455 (= e!1848428 (not lt!1027974))))

(declare-fun b!2931449 () Bool)

(declare-fun res!1210248 () Bool)

(assert (=> b!2931449 (=> res!1210248 e!1848433)))

(assert (=> b!2931449 (= res!1210248 (not (is-ElementMatch!9052 r!17423)))))

(assert (=> b!2931449 (= e!1848428 e!1848433)))

(declare-fun d!839378 () Bool)

(assert (=> d!839378 e!1848430))

(declare-fun c!478711 () Bool)

(assert (=> d!839378 (= c!478711 (is-EmptyExpr!9052 r!17423))))

(assert (=> d!839378 (= lt!1027974 e!1848432)))

(declare-fun c!478710 () Bool)

(assert (=> d!839378 (= c!478710 (isEmpty!19044 s!11993))))

(assert (=> d!839378 (validRegex!3785 r!17423)))

(assert (=> d!839378 (= (matchR!3934 r!17423 s!11993) lt!1027974)))

(assert (= (and d!839378 c!478710) b!2931445))

(assert (= (and d!839378 (not c!478710)) b!2931452))

(assert (= (and d!839378 c!478711) b!2931450))

(assert (= (and d!839378 (not c!478711)) b!2931453))

(assert (= (and b!2931453 c!478712) b!2931455))

(assert (= (and b!2931453 (not c!478712)) b!2931449))

(assert (= (and b!2931449 (not res!1210248)) b!2931446))

(assert (= (and b!2931446 res!1210247) b!2931442))

(assert (= (and b!2931442 res!1210249) b!2931451))

(assert (= (and b!2931451 res!1210245) b!2931444))

(assert (= (and b!2931446 (not res!1210246)) b!2931454))

(assert (= (and b!2931454 res!1210244) b!2931448))

(assert (= (and b!2931448 (not res!1210250)) b!2931443))

(assert (= (and b!2931443 (not res!1210243)) b!2931447))

(assert (= (or b!2931450 b!2931442 b!2931448) bm!192387))

(assert (=> d!839378 m!3321181))

(assert (=> d!839378 m!3321191))

(assert (=> bm!192387 m!3321181))

(declare-fun m!3321331 () Bool)

(assert (=> b!2931447 m!3321331))

(assert (=> b!2931452 m!3321331))

(assert (=> b!2931452 m!3321331))

(declare-fun m!3321333 () Bool)

(assert (=> b!2931452 m!3321333))

(declare-fun m!3321335 () Bool)

(assert (=> b!2931452 m!3321335))

(assert (=> b!2931452 m!3321333))

(assert (=> b!2931452 m!3321335))

(declare-fun m!3321337 () Bool)

(assert (=> b!2931452 m!3321337))

(assert (=> b!2931444 m!3321331))

(declare-fun m!3321339 () Bool)

(assert (=> b!2931445 m!3321339))

(assert (=> b!2931451 m!3321335))

(assert (=> b!2931451 m!3321335))

(declare-fun m!3321341 () Bool)

(assert (=> b!2931451 m!3321341))

(assert (=> b!2931443 m!3321335))

(assert (=> b!2931443 m!3321335))

(assert (=> b!2931443 m!3321341))

(assert (=> b!2931134 d!839378))

(declare-fun d!839380 () Bool)

(assert (=> d!839380 (= (matchR!3934 r!17423 s!11993) (matchRSpec!1189 r!17423 s!11993))))

(declare-fun lt!1027975 () Unit!48447)

(assert (=> d!839380 (= lt!1027975 (choose!17324 r!17423 s!11993))))

(assert (=> d!839380 (validRegex!3785 r!17423)))

(assert (=> d!839380 (= (mainMatchTheorem!1189 r!17423 s!11993) lt!1027975)))

(declare-fun bs!525248 () Bool)

(assert (= bs!525248 d!839380))

(assert (=> bs!525248 m!3321185))

(assert (=> bs!525248 m!3321183))

(declare-fun m!3321343 () Bool)

(assert (=> bs!525248 m!3321343))

(assert (=> bs!525248 m!3321191))

(assert (=> b!2931134 d!839380))

(declare-fun d!839382 () Bool)

(assert (=> d!839382 (= (isEmpty!19044 s!11993) (is-Nil!34793 s!11993))))

(assert (=> b!2931140 d!839382))

(declare-fun d!839384 () Bool)

(declare-fun lt!1027978 () Int)

(assert (=> d!839384 (>= lt!1027978 0)))

(declare-fun e!1848437 () Int)

(assert (=> d!839384 (= lt!1027978 e!1848437)))

(declare-fun c!478715 () Bool)

(assert (=> d!839384 (= c!478715 (is-Nil!34793 (_2!20009 lt!1027913)))))

(assert (=> d!839384 (= (size!26448 (_2!20009 lt!1027913)) lt!1027978)))

(declare-fun b!2931460 () Bool)

(assert (=> b!2931460 (= e!1848437 0)))

(declare-fun b!2931461 () Bool)

(assert (=> b!2931461 (= e!1848437 (+ 1 (size!26448 (t!233982 (_2!20009 lt!1027913)))))))

(assert (= (and d!839384 c!478715) b!2931460))

(assert (= (and d!839384 (not c!478715)) b!2931461))

(declare-fun m!3321345 () Bool)

(assert (=> b!2931461 m!3321345))

(assert (=> b!2931135 d!839384))

(declare-fun d!839386 () Bool)

(assert (=> d!839386 (= (matchR!3934 lt!1027910 (_2!20009 lt!1027913)) (matchR!3934 (simplify!59 lt!1027910) (_2!20009 lt!1027913)))))

(declare-fun lt!1027981 () Unit!48447)

(declare-fun choose!17325 (Regex!9052 List!34917) Unit!48447)

(assert (=> d!839386 (= lt!1027981 (choose!17325 lt!1027910 (_2!20009 lt!1027913)))))

(assert (=> d!839386 (validRegex!3785 lt!1027910)))

(assert (=> d!839386 (= (lemmaSimplifySound!55 lt!1027910 (_2!20009 lt!1027913)) lt!1027981)))

(declare-fun bs!525249 () Bool)

(assert (= bs!525249 d!839386))

(assert (=> bs!525249 m!3321157))

(declare-fun m!3321347 () Bool)

(assert (=> bs!525249 m!3321347))

(assert (=> bs!525249 m!3321189))

(assert (=> bs!525249 m!3321283))

(assert (=> bs!525249 m!3321157))

(assert (=> bs!525249 m!3321165))

(assert (=> b!2931135 d!839386))

(declare-fun bm!192405 () Bool)

(declare-fun call!192410 () Regex!9052)

(declare-fun call!192411 () Regex!9052)

(assert (=> bm!192405 (= call!192410 call!192411)))

(declare-fun bm!192406 () Bool)

(declare-fun c!478748 () Bool)

(declare-fun lt!1028002 () Regex!9052)

(declare-fun lt!1028000 () Regex!9052)

(declare-fun call!192413 () Bool)

(declare-fun c!478745 () Bool)

(declare-fun lt!1027999 () Regex!9052)

(declare-fun isEmptyLang!193 (Regex!9052) Bool)

(assert (=> bm!192406 (= call!192413 (isEmptyLang!193 (ite c!478748 lt!1027999 (ite c!478745 lt!1028002 lt!1028000))))))

(declare-fun b!2931526 () Bool)

(declare-fun c!478743 () Bool)

(assert (=> b!2931526 (= c!478743 (is-EmptyExpr!9052 (reg!9381 r!17423)))))

(declare-fun e!1848483 () Regex!9052)

(declare-fun e!1848475 () Regex!9052)

(assert (=> b!2931526 (= e!1848483 e!1848475)))

(declare-fun b!2931527 () Bool)

(declare-fun e!1848486 () Regex!9052)

(declare-fun e!1848480 () Regex!9052)

(assert (=> b!2931527 (= e!1848486 e!1848480)))

(declare-fun call!192414 () Regex!9052)

(assert (=> b!2931527 (= lt!1028000 call!192414)))

(declare-fun lt!1027998 () Regex!9052)

(assert (=> b!2931527 (= lt!1027998 call!192410)))

(declare-fun res!1210267 () Bool)

(declare-fun call!192415 () Bool)

(assert (=> b!2931527 (= res!1210267 call!192415)))

(declare-fun e!1848476 () Bool)

(assert (=> b!2931527 (=> res!1210267 e!1848476)))

(declare-fun c!478750 () Bool)

(assert (=> b!2931527 (= c!478750 e!1848476)))

(declare-fun b!2931528 () Bool)

(declare-fun e!1848473 () Regex!9052)

(declare-fun e!1848479 () Regex!9052)

(assert (=> b!2931528 (= e!1848473 e!1848479)))

(declare-fun c!478747 () Bool)

(declare-fun isEmptyExpr!278 (Regex!9052) Bool)

(assert (=> b!2931528 (= c!478747 (isEmptyExpr!278 lt!1027998))))

(declare-fun b!2931529 () Bool)

(declare-fun e!1848481 () Regex!9052)

(assert (=> b!2931529 (= e!1848481 EmptyExpr!9052)))

(declare-fun b!2931530 () Bool)

(declare-fun e!1848484 () Regex!9052)

(declare-fun lt!1028001 () Regex!9052)

(assert (=> b!2931530 (= e!1848484 lt!1028001)))

(declare-fun b!2931531 () Bool)

(assert (=> b!2931531 (= e!1848486 e!1848484)))

(assert (=> b!2931531 (= lt!1028002 call!192410)))

(assert (=> b!2931531 (= lt!1028001 call!192414)))

(declare-fun c!478744 () Bool)

(assert (=> b!2931531 (= c!478744 call!192415)))

(declare-fun b!2931532 () Bool)

(assert (=> b!2931532 (= e!1848483 (reg!9381 r!17423))))

(declare-fun b!2931533 () Bool)

(declare-fun e!1848478 () Regex!9052)

(assert (=> b!2931533 (= e!1848478 lt!1028002)))

(declare-fun b!2931534 () Bool)

(assert (=> b!2931534 (= e!1848481 (Star!9052 lt!1027999))))

(declare-fun b!2931535 () Bool)

(declare-fun e!1848474 () Regex!9052)

(assert (=> b!2931535 (= e!1848475 e!1848474)))

(assert (=> b!2931535 (= c!478748 (is-Star!9052 (reg!9381 r!17423)))))

(declare-fun d!839388 () Bool)

(declare-fun e!1848482 () Bool)

(assert (=> d!839388 e!1848482))

(declare-fun res!1210266 () Bool)

(assert (=> d!839388 (=> (not res!1210266) (not e!1848482))))

(declare-fun lt!1028003 () Regex!9052)

(assert (=> d!839388 (= res!1210266 (validRegex!3785 lt!1028003))))

(declare-fun e!1848485 () Regex!9052)

(assert (=> d!839388 (= lt!1028003 e!1848485)))

(declare-fun c!478742 () Bool)

(assert (=> d!839388 (= c!478742 (is-EmptyLang!9052 (reg!9381 r!17423)))))

(assert (=> d!839388 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839388 (= (simplify!59 (reg!9381 r!17423)) lt!1028003)))

(declare-fun b!2931536 () Bool)

(declare-fun c!478741 () Bool)

(declare-fun call!192416 () Bool)

(assert (=> b!2931536 (= c!478741 call!192416)))

(assert (=> b!2931536 (= e!1848484 e!1848478)))

(declare-fun b!2931537 () Bool)

(assert (=> b!2931537 (= e!1848482 (= (nullable!2848 lt!1028003) (nullable!2848 (reg!9381 r!17423))))))

(declare-fun bm!192407 () Bool)

(assert (=> bm!192407 (= call!192415 call!192413)))

(declare-fun bm!192408 () Bool)

(assert (=> bm!192408 (= call!192416 (isEmptyLang!193 (ite c!478745 lt!1028001 lt!1027998)))))

(declare-fun b!2931538 () Bool)

(assert (=> b!2931538 (= e!1848479 lt!1028000)))

(declare-fun bm!192409 () Bool)

(assert (=> bm!192409 (= call!192414 (simplify!59 (ite c!478745 (regTwo!18617 (reg!9381 r!17423)) (regOne!18616 (reg!9381 r!17423)))))))

(declare-fun bm!192410 () Bool)

(declare-fun call!192412 () Bool)

(assert (=> bm!192410 (= call!192412 (isEmptyExpr!278 (ite c!478748 lt!1027999 lt!1028000)))))

(declare-fun bm!192411 () Bool)

(assert (=> bm!192411 (= call!192411 (simplify!59 (ite c!478748 (reg!9381 (reg!9381 r!17423)) (ite c!478745 (regOne!18617 (reg!9381 r!17423)) (regTwo!18616 (reg!9381 r!17423))))))))

(declare-fun b!2931539 () Bool)

(assert (=> b!2931539 (= e!1848480 EmptyLang!9052)))

(declare-fun b!2931540 () Bool)

(assert (=> b!2931540 (= e!1848473 lt!1027998)))

(declare-fun b!2931541 () Bool)

(assert (=> b!2931541 (= e!1848485 EmptyLang!9052)))

(declare-fun b!2931542 () Bool)

(assert (=> b!2931542 (= c!478745 (is-Union!9052 (reg!9381 r!17423)))))

(assert (=> b!2931542 (= e!1848474 e!1848486)))

(declare-fun b!2931543 () Bool)

(declare-fun e!1848477 () Bool)

(assert (=> b!2931543 (= e!1848477 call!192412)))

(declare-fun b!2931544 () Bool)

(assert (=> b!2931544 (= e!1848485 e!1848483)))

(declare-fun c!478746 () Bool)

(assert (=> b!2931544 (= c!478746 (is-ElementMatch!9052 (reg!9381 r!17423)))))

(declare-fun b!2931545 () Bool)

(assert (=> b!2931545 (= e!1848478 (Union!9052 lt!1028002 lt!1028001))))

(declare-fun b!2931546 () Bool)

(assert (=> b!2931546 (= e!1848475 EmptyExpr!9052)))

(declare-fun b!2931547 () Bool)

(assert (=> b!2931547 (= e!1848476 call!192416)))

(declare-fun b!2931548 () Bool)

(declare-fun c!478751 () Bool)

(assert (=> b!2931548 (= c!478751 call!192412)))

(assert (=> b!2931548 (= e!1848480 e!1848473)))

(declare-fun b!2931549 () Bool)

(assert (=> b!2931549 (= e!1848479 (Concat!14373 lt!1028000 lt!1027998))))

(declare-fun b!2931550 () Bool)

(declare-fun c!478749 () Bool)

(assert (=> b!2931550 (= c!478749 e!1848477)))

(declare-fun res!1210265 () Bool)

(assert (=> b!2931550 (=> res!1210265 e!1848477)))

(assert (=> b!2931550 (= res!1210265 call!192413)))

(assert (=> b!2931550 (= lt!1027999 call!192411)))

(assert (=> b!2931550 (= e!1848474 e!1848481)))

(assert (= (and d!839388 c!478742) b!2931541))

(assert (= (and d!839388 (not c!478742)) b!2931544))

(assert (= (and b!2931544 c!478746) b!2931532))

(assert (= (and b!2931544 (not c!478746)) b!2931526))

(assert (= (and b!2931526 c!478743) b!2931546))

(assert (= (and b!2931526 (not c!478743)) b!2931535))

(assert (= (and b!2931535 c!478748) b!2931550))

(assert (= (and b!2931535 (not c!478748)) b!2931542))

(assert (= (and b!2931550 (not res!1210265)) b!2931543))

(assert (= (and b!2931550 c!478749) b!2931529))

(assert (= (and b!2931550 (not c!478749)) b!2931534))

(assert (= (and b!2931542 c!478745) b!2931531))

(assert (= (and b!2931542 (not c!478745)) b!2931527))

(assert (= (and b!2931531 c!478744) b!2931530))

(assert (= (and b!2931531 (not c!478744)) b!2931536))

(assert (= (and b!2931536 c!478741) b!2931533))

(assert (= (and b!2931536 (not c!478741)) b!2931545))

(assert (= (and b!2931527 (not res!1210267)) b!2931547))

(assert (= (and b!2931527 c!478750) b!2931539))

(assert (= (and b!2931527 (not c!478750)) b!2931548))

(assert (= (and b!2931548 c!478751) b!2931540))

(assert (= (and b!2931548 (not c!478751)) b!2931528))

(assert (= (and b!2931528 c!478747) b!2931538))

(assert (= (and b!2931528 (not c!478747)) b!2931549))

(assert (= (or b!2931531 b!2931527) bm!192405))

(assert (= (or b!2931531 b!2931527) bm!192409))

(assert (= (or b!2931536 b!2931547) bm!192408))

(assert (= (or b!2931531 b!2931527) bm!192407))

(assert (= (or b!2931543 b!2931548) bm!192410))

(assert (= (or b!2931550 bm!192405) bm!192411))

(assert (= (or b!2931550 bm!192407) bm!192406))

(assert (= (and d!839388 res!1210266) b!2931537))

(declare-fun m!3321363 () Bool)

(assert (=> bm!192408 m!3321363))

(declare-fun m!3321365 () Bool)

(assert (=> bm!192410 m!3321365))

(declare-fun m!3321367 () Bool)

(assert (=> b!2931537 m!3321367))

(assert (=> b!2931537 m!3321301))

(declare-fun m!3321369 () Bool)

(assert (=> b!2931528 m!3321369))

(declare-fun m!3321371 () Bool)

(assert (=> d!839388 m!3321371))

(assert (=> d!839388 m!3321153))

(declare-fun m!3321373 () Bool)

(assert (=> bm!192411 m!3321373))

(declare-fun m!3321375 () Bool)

(assert (=> bm!192409 m!3321375))

(declare-fun m!3321377 () Bool)

(assert (=> bm!192406 m!3321377))

(assert (=> b!2931135 d!839388))

(declare-fun d!839394 () Bool)

(declare-fun lt!1028004 () Int)

(assert (=> d!839394 (>= lt!1028004 0)))

(declare-fun e!1848487 () Int)

(assert (=> d!839394 (= lt!1028004 e!1848487)))

(declare-fun c!478752 () Bool)

(assert (=> d!839394 (= c!478752 (is-Nil!34793 s!11993))))

(assert (=> d!839394 (= (size!26448 s!11993) lt!1028004)))

(declare-fun b!2931551 () Bool)

(assert (=> b!2931551 (= e!1848487 0)))

(declare-fun b!2931552 () Bool)

(assert (=> b!2931552 (= e!1848487 (+ 1 (size!26448 (t!233982 s!11993))))))

(assert (= (and d!839394 c!478752) b!2931551))

(assert (= (and d!839394 (not c!478752)) b!2931552))

(declare-fun m!3321379 () Bool)

(assert (=> b!2931552 m!3321379))

(assert (=> b!2931135 d!839394))

(declare-fun b!2931553 () Bool)

(declare-fun e!1848493 () Bool)

(declare-fun e!1848492 () Bool)

(assert (=> b!2931553 (= e!1848493 e!1848492)))

(declare-fun c!478753 () Bool)

(assert (=> b!2931553 (= c!478753 (is-Union!9052 (reg!9381 r!17423)))))

(declare-fun b!2931554 () Bool)

(declare-fun e!1848491 () Bool)

(assert (=> b!2931554 (= e!1848491 e!1848493)))

(declare-fun c!478754 () Bool)

(assert (=> b!2931554 (= c!478754 (is-Star!9052 (reg!9381 r!17423)))))

(declare-fun b!2931555 () Bool)

(declare-fun e!1848490 () Bool)

(declare-fun call!192418 () Bool)

(assert (=> b!2931555 (= e!1848490 call!192418)))

(declare-fun bm!192412 () Bool)

(declare-fun call!192419 () Bool)

(assert (=> bm!192412 (= call!192419 (validRegex!3785 (ite c!478753 (regOne!18617 (reg!9381 r!17423)) (regTwo!18616 (reg!9381 r!17423)))))))

(declare-fun bm!192413 () Bool)

(assert (=> bm!192413 (= call!192418 (validRegex!3785 (ite c!478754 (reg!9381 (reg!9381 r!17423)) (ite c!478753 (regTwo!18617 (reg!9381 r!17423)) (regOne!18616 (reg!9381 r!17423))))))))

(declare-fun b!2931556 () Bool)

(assert (=> b!2931556 (= e!1848493 e!1848490)))

(declare-fun res!1210271 () Bool)

(assert (=> b!2931556 (= res!1210271 (not (nullable!2848 (reg!9381 (reg!9381 r!17423)))))))

(assert (=> b!2931556 (=> (not res!1210271) (not e!1848490))))

(declare-fun bm!192414 () Bool)

(declare-fun call!192417 () Bool)

(assert (=> bm!192414 (= call!192417 call!192418)))

(declare-fun b!2931557 () Bool)

(declare-fun res!1210269 () Bool)

(declare-fun e!1848488 () Bool)

(assert (=> b!2931557 (=> res!1210269 e!1848488)))

(assert (=> b!2931557 (= res!1210269 (not (is-Concat!14373 (reg!9381 r!17423))))))

(assert (=> b!2931557 (= e!1848492 e!1848488)))

(declare-fun d!839396 () Bool)

(declare-fun res!1210268 () Bool)

(assert (=> d!839396 (=> res!1210268 e!1848491)))

(assert (=> d!839396 (= res!1210268 (is-ElementMatch!9052 (reg!9381 r!17423)))))

(assert (=> d!839396 (= (validRegex!3785 (reg!9381 r!17423)) e!1848491)))

(declare-fun b!2931558 () Bool)

(declare-fun e!1848489 () Bool)

(assert (=> b!2931558 (= e!1848489 call!192419)))

(declare-fun b!2931559 () Bool)

(assert (=> b!2931559 (= e!1848488 e!1848489)))

(declare-fun res!1210272 () Bool)

(assert (=> b!2931559 (=> (not res!1210272) (not e!1848489))))

(assert (=> b!2931559 (= res!1210272 call!192417)))

(declare-fun b!2931560 () Bool)

(declare-fun res!1210270 () Bool)

(declare-fun e!1848494 () Bool)

(assert (=> b!2931560 (=> (not res!1210270) (not e!1848494))))

(assert (=> b!2931560 (= res!1210270 call!192419)))

(assert (=> b!2931560 (= e!1848492 e!1848494)))

(declare-fun b!2931561 () Bool)

(assert (=> b!2931561 (= e!1848494 call!192417)))

(assert (= (and d!839396 (not res!1210268)) b!2931554))

(assert (= (and b!2931554 c!478754) b!2931556))

(assert (= (and b!2931554 (not c!478754)) b!2931553))

(assert (= (and b!2931556 res!1210271) b!2931555))

(assert (= (and b!2931553 c!478753) b!2931560))

(assert (= (and b!2931553 (not c!478753)) b!2931557))

(assert (= (and b!2931560 res!1210270) b!2931561))

(assert (= (and b!2931557 (not res!1210269)) b!2931559))

(assert (= (and b!2931559 res!1210272) b!2931558))

(assert (= (or b!2931560 b!2931558) bm!192412))

(assert (= (or b!2931561 b!2931559) bm!192414))

(assert (= (or b!2931555 bm!192414) bm!192413))

(declare-fun m!3321381 () Bool)

(assert (=> bm!192412 m!3321381))

(declare-fun m!3321383 () Bool)

(assert (=> bm!192413 m!3321383))

(declare-fun m!3321385 () Bool)

(assert (=> b!2931556 m!3321385))

(assert (=> b!2931135 d!839396))

(declare-fun d!839398 () Bool)

(assert (=> d!839398 (= (matchR!3934 (reg!9381 r!17423) (_1!20009 lt!1027913)) (matchR!3934 (simplify!59 (reg!9381 r!17423)) (_1!20009 lt!1027913)))))

(declare-fun lt!1028005 () Unit!48447)

(assert (=> d!839398 (= lt!1028005 (choose!17325 (reg!9381 r!17423) (_1!20009 lt!1027913)))))

(assert (=> d!839398 (validRegex!3785 (reg!9381 r!17423))))

(assert (=> d!839398 (= (lemmaSimplifySound!55 (reg!9381 r!17423) (_1!20009 lt!1027913)) lt!1028005)))

(declare-fun bs!525251 () Bool)

(assert (= bs!525251 d!839398))

(assert (=> bs!525251 m!3321149))

(declare-fun m!3321387 () Bool)

(assert (=> bs!525251 m!3321387))

(assert (=> bs!525251 m!3321145))

(assert (=> bs!525251 m!3321153))

(assert (=> bs!525251 m!3321149))

(assert (=> bs!525251 m!3321151))

(assert (=> b!2931135 d!839398))

(declare-fun b!2931562 () Bool)

(declare-fun res!1210279 () Bool)

(declare-fun e!1848501 () Bool)

(assert (=> b!2931562 (=> (not res!1210279) (not e!1848501))))

(declare-fun call!192420 () Bool)

(assert (=> b!2931562 (= res!1210279 (not call!192420))))

(declare-fun b!2931563 () Bool)

(declare-fun res!1210273 () Bool)

(declare-fun e!1848496 () Bool)

(assert (=> b!2931563 (=> res!1210273 e!1848496)))

(assert (=> b!2931563 (= res!1210273 (not (isEmpty!19044 (tail!4744 (_1!20009 lt!1027913)))))))

(declare-fun b!2931564 () Bool)

(assert (=> b!2931564 (= e!1848501 (= (head!6518 (_1!20009 lt!1027913)) (c!478651 (simplify!59 (reg!9381 r!17423)))))))

(declare-fun b!2931565 () Bool)

(declare-fun e!1848499 () Bool)

(assert (=> b!2931565 (= e!1848499 (nullable!2848 (simplify!59 (reg!9381 r!17423))))))

(declare-fun b!2931566 () Bool)

(declare-fun res!1210276 () Bool)

(declare-fun e!1848500 () Bool)

(assert (=> b!2931566 (=> res!1210276 e!1848500)))

(assert (=> b!2931566 (= res!1210276 e!1848501)))

(declare-fun res!1210277 () Bool)

(assert (=> b!2931566 (=> (not res!1210277) (not e!1848501))))

(declare-fun lt!1028006 () Bool)

(assert (=> b!2931566 (= res!1210277 lt!1028006)))

(declare-fun b!2931567 () Bool)

(assert (=> b!2931567 (= e!1848496 (not (= (head!6518 (_1!20009 lt!1027913)) (c!478651 (simplify!59 (reg!9381 r!17423))))))))

(declare-fun b!2931568 () Bool)

(declare-fun e!1848498 () Bool)

(assert (=> b!2931568 (= e!1848498 e!1848496)))

(declare-fun res!1210280 () Bool)

(assert (=> b!2931568 (=> res!1210280 e!1848496)))

(assert (=> b!2931568 (= res!1210280 call!192420)))

(declare-fun bm!192415 () Bool)

(assert (=> bm!192415 (= call!192420 (isEmpty!19044 (_1!20009 lt!1027913)))))

(declare-fun b!2931570 () Bool)

(declare-fun e!1848497 () Bool)

(assert (=> b!2931570 (= e!1848497 (= lt!1028006 call!192420))))

(declare-fun b!2931571 () Bool)

(declare-fun res!1210275 () Bool)

(assert (=> b!2931571 (=> (not res!1210275) (not e!1848501))))

(assert (=> b!2931571 (= res!1210275 (isEmpty!19044 (tail!4744 (_1!20009 lt!1027913))))))

(declare-fun b!2931572 () Bool)

(assert (=> b!2931572 (= e!1848499 (matchR!3934 (derivativeStep!2459 (simplify!59 (reg!9381 r!17423)) (head!6518 (_1!20009 lt!1027913))) (tail!4744 (_1!20009 lt!1027913))))))

(declare-fun b!2931573 () Bool)

(declare-fun e!1848495 () Bool)

(assert (=> b!2931573 (= e!1848497 e!1848495)))

(declare-fun c!478757 () Bool)

(assert (=> b!2931573 (= c!478757 (is-EmptyLang!9052 (simplify!59 (reg!9381 r!17423))))))

(declare-fun b!2931574 () Bool)

(assert (=> b!2931574 (= e!1848500 e!1848498)))

(declare-fun res!1210274 () Bool)

(assert (=> b!2931574 (=> (not res!1210274) (not e!1848498))))

(assert (=> b!2931574 (= res!1210274 (not lt!1028006))))

(declare-fun b!2931575 () Bool)

(assert (=> b!2931575 (= e!1848495 (not lt!1028006))))

(declare-fun b!2931569 () Bool)

(declare-fun res!1210278 () Bool)

(assert (=> b!2931569 (=> res!1210278 e!1848500)))

(assert (=> b!2931569 (= res!1210278 (not (is-ElementMatch!9052 (simplify!59 (reg!9381 r!17423)))))))

(assert (=> b!2931569 (= e!1848495 e!1848500)))

(declare-fun d!839400 () Bool)

(assert (=> d!839400 e!1848497))

(declare-fun c!478756 () Bool)

(assert (=> d!839400 (= c!478756 (is-EmptyExpr!9052 (simplify!59 (reg!9381 r!17423))))))

(assert (=> d!839400 (= lt!1028006 e!1848499)))

(declare-fun c!478755 () Bool)

(assert (=> d!839400 (= c!478755 (isEmpty!19044 (_1!20009 lt!1027913)))))

(assert (=> d!839400 (validRegex!3785 (simplify!59 (reg!9381 r!17423)))))

(assert (=> d!839400 (= (matchR!3934 (simplify!59 (reg!9381 r!17423)) (_1!20009 lt!1027913)) lt!1028006)))

(assert (= (and d!839400 c!478755) b!2931565))

(assert (= (and d!839400 (not c!478755)) b!2931572))

(assert (= (and d!839400 c!478756) b!2931570))

(assert (= (and d!839400 (not c!478756)) b!2931573))

(assert (= (and b!2931573 c!478757) b!2931575))

(assert (= (and b!2931573 (not c!478757)) b!2931569))

(assert (= (and b!2931569 (not res!1210278)) b!2931566))

(assert (= (and b!2931566 res!1210277) b!2931562))

(assert (= (and b!2931562 res!1210279) b!2931571))

(assert (= (and b!2931571 res!1210275) b!2931564))

(assert (= (and b!2931566 (not res!1210276)) b!2931574))

(assert (= (and b!2931574 res!1210274) b!2931568))

(assert (= (and b!2931568 (not res!1210280)) b!2931563))

(assert (= (and b!2931563 (not res!1210273)) b!2931567))

(assert (= (or b!2931570 b!2931562 b!2931568) bm!192415))

(assert (=> d!839400 m!3321303))

(assert (=> d!839400 m!3321149))

(declare-fun m!3321389 () Bool)

(assert (=> d!839400 m!3321389))

(assert (=> bm!192415 m!3321303))

(assert (=> b!2931567 m!3321305))

(assert (=> b!2931572 m!3321305))

(assert (=> b!2931572 m!3321149))

(assert (=> b!2931572 m!3321305))

(declare-fun m!3321391 () Bool)

(assert (=> b!2931572 m!3321391))

(assert (=> b!2931572 m!3321309))

(assert (=> b!2931572 m!3321391))

(assert (=> b!2931572 m!3321309))

(declare-fun m!3321393 () Bool)

(assert (=> b!2931572 m!3321393))

(assert (=> b!2931564 m!3321305))

(assert (=> b!2931565 m!3321149))

(declare-fun m!3321395 () Bool)

(assert (=> b!2931565 m!3321395))

(assert (=> b!2931571 m!3321309))

(assert (=> b!2931571 m!3321309))

(assert (=> b!2931571 m!3321313))

(assert (=> b!2931563 m!3321309))

(assert (=> b!2931563 m!3321309))

(assert (=> b!2931563 m!3321313))

(assert (=> b!2931135 d!839400))

(declare-fun b!2931576 () Bool)

(declare-fun res!1210287 () Bool)

(declare-fun e!1848508 () Bool)

(assert (=> b!2931576 (=> (not res!1210287) (not e!1848508))))

(declare-fun call!192421 () Bool)

(assert (=> b!2931576 (= res!1210287 (not call!192421))))

(declare-fun b!2931577 () Bool)

(declare-fun res!1210281 () Bool)

(declare-fun e!1848503 () Bool)

(assert (=> b!2931577 (=> res!1210281 e!1848503)))

(assert (=> b!2931577 (= res!1210281 (not (isEmpty!19044 (tail!4744 (_2!20009 lt!1027913)))))))

(declare-fun b!2931578 () Bool)

(assert (=> b!2931578 (= e!1848508 (= (head!6518 (_2!20009 lt!1027913)) (c!478651 (simplify!59 lt!1027910))))))

(declare-fun b!2931579 () Bool)

(declare-fun e!1848506 () Bool)

(assert (=> b!2931579 (= e!1848506 (nullable!2848 (simplify!59 lt!1027910)))))

(declare-fun b!2931580 () Bool)

(declare-fun res!1210284 () Bool)

(declare-fun e!1848507 () Bool)

(assert (=> b!2931580 (=> res!1210284 e!1848507)))

(assert (=> b!2931580 (= res!1210284 e!1848508)))

(declare-fun res!1210285 () Bool)

(assert (=> b!2931580 (=> (not res!1210285) (not e!1848508))))

(declare-fun lt!1028007 () Bool)

(assert (=> b!2931580 (= res!1210285 lt!1028007)))

(declare-fun b!2931581 () Bool)

(assert (=> b!2931581 (= e!1848503 (not (= (head!6518 (_2!20009 lt!1027913)) (c!478651 (simplify!59 lt!1027910)))))))

(declare-fun b!2931582 () Bool)

(declare-fun e!1848505 () Bool)

(assert (=> b!2931582 (= e!1848505 e!1848503)))

(declare-fun res!1210288 () Bool)

(assert (=> b!2931582 (=> res!1210288 e!1848503)))

(assert (=> b!2931582 (= res!1210288 call!192421)))

(declare-fun bm!192416 () Bool)

(assert (=> bm!192416 (= call!192421 (isEmpty!19044 (_2!20009 lt!1027913)))))

(declare-fun b!2931584 () Bool)

(declare-fun e!1848504 () Bool)

(assert (=> b!2931584 (= e!1848504 (= lt!1028007 call!192421))))

(declare-fun b!2931585 () Bool)

(declare-fun res!1210283 () Bool)

(assert (=> b!2931585 (=> (not res!1210283) (not e!1848508))))

(assert (=> b!2931585 (= res!1210283 (isEmpty!19044 (tail!4744 (_2!20009 lt!1027913))))))

(declare-fun b!2931586 () Bool)

(assert (=> b!2931586 (= e!1848506 (matchR!3934 (derivativeStep!2459 (simplify!59 lt!1027910) (head!6518 (_2!20009 lt!1027913))) (tail!4744 (_2!20009 lt!1027913))))))

(declare-fun b!2931587 () Bool)

(declare-fun e!1848502 () Bool)

(assert (=> b!2931587 (= e!1848504 e!1848502)))

(declare-fun c!478760 () Bool)

(assert (=> b!2931587 (= c!478760 (is-EmptyLang!9052 (simplify!59 lt!1027910)))))

(declare-fun b!2931588 () Bool)

(assert (=> b!2931588 (= e!1848507 e!1848505)))

(declare-fun res!1210282 () Bool)

(assert (=> b!2931588 (=> (not res!1210282) (not e!1848505))))

(assert (=> b!2931588 (= res!1210282 (not lt!1028007))))

(declare-fun b!2931589 () Bool)

(assert (=> b!2931589 (= e!1848502 (not lt!1028007))))

(declare-fun b!2931583 () Bool)

(declare-fun res!1210286 () Bool)

(assert (=> b!2931583 (=> res!1210286 e!1848507)))

(assert (=> b!2931583 (= res!1210286 (not (is-ElementMatch!9052 (simplify!59 lt!1027910))))))

(assert (=> b!2931583 (= e!1848502 e!1848507)))

(declare-fun d!839402 () Bool)

(assert (=> d!839402 e!1848504))

(declare-fun c!478759 () Bool)

(assert (=> d!839402 (= c!478759 (is-EmptyExpr!9052 (simplify!59 lt!1027910)))))

(assert (=> d!839402 (= lt!1028007 e!1848506)))

(declare-fun c!478758 () Bool)

(assert (=> d!839402 (= c!478758 (isEmpty!19044 (_2!20009 lt!1027913)))))

(assert (=> d!839402 (validRegex!3785 (simplify!59 lt!1027910))))

(assert (=> d!839402 (= (matchR!3934 (simplify!59 lt!1027910) (_2!20009 lt!1027913)) lt!1028007)))

(assert (= (and d!839402 c!478758) b!2931579))

(assert (= (and d!839402 (not c!478758)) b!2931586))

(assert (= (and d!839402 c!478759) b!2931584))

(assert (= (and d!839402 (not c!478759)) b!2931587))

(assert (= (and b!2931587 c!478760) b!2931589))

(assert (= (and b!2931587 (not c!478760)) b!2931583))

(assert (= (and b!2931583 (not res!1210286)) b!2931580))

(assert (= (and b!2931580 res!1210285) b!2931576))

(assert (= (and b!2931576 res!1210287) b!2931585))

(assert (= (and b!2931585 res!1210283) b!2931578))

(assert (= (and b!2931580 (not res!1210284)) b!2931588))

(assert (= (and b!2931588 res!1210282) b!2931582))

(assert (= (and b!2931582 (not res!1210288)) b!2931577))

(assert (= (and b!2931577 (not res!1210281)) b!2931581))

(assert (= (or b!2931584 b!2931576 b!2931582) bm!192416))

(assert (=> d!839402 m!3321281))

(assert (=> d!839402 m!3321157))

(declare-fun m!3321397 () Bool)

(assert (=> d!839402 m!3321397))

(assert (=> bm!192416 m!3321281))

(assert (=> b!2931581 m!3321285))

(assert (=> b!2931586 m!3321285))

(assert (=> b!2931586 m!3321157))

(assert (=> b!2931586 m!3321285))

(declare-fun m!3321399 () Bool)

(assert (=> b!2931586 m!3321399))

(assert (=> b!2931586 m!3321289))

(assert (=> b!2931586 m!3321399))

(assert (=> b!2931586 m!3321289))

(declare-fun m!3321401 () Bool)

(assert (=> b!2931586 m!3321401))

(assert (=> b!2931578 m!3321285))

(assert (=> b!2931579 m!3321157))

(declare-fun m!3321403 () Bool)

(assert (=> b!2931579 m!3321403))

(assert (=> b!2931585 m!3321289))

(assert (=> b!2931585 m!3321289))

(assert (=> b!2931585 m!3321295))

(assert (=> b!2931577 m!3321289))

(assert (=> b!2931577 m!3321289))

(assert (=> b!2931577 m!3321295))

(assert (=> b!2931135 d!839402))

(declare-fun bm!192417 () Bool)

(declare-fun call!192422 () Regex!9052)

(declare-fun call!192423 () Regex!9052)

(assert (=> bm!192417 (= call!192422 call!192423)))

(declare-fun call!192425 () Bool)

(declare-fun lt!1028012 () Regex!9052)

(declare-fun c!478768 () Bool)

(declare-fun bm!192418 () Bool)

(declare-fun lt!1028010 () Regex!9052)

(declare-fun lt!1028009 () Regex!9052)

(declare-fun c!478765 () Bool)

(assert (=> bm!192418 (= call!192425 (isEmptyLang!193 (ite c!478768 lt!1028009 (ite c!478765 lt!1028012 lt!1028010))))))

(declare-fun b!2931590 () Bool)

(declare-fun c!478763 () Bool)

(assert (=> b!2931590 (= c!478763 (is-EmptyExpr!9052 lt!1027910))))

(declare-fun e!1848519 () Regex!9052)

(declare-fun e!1848511 () Regex!9052)

(assert (=> b!2931590 (= e!1848519 e!1848511)))

(declare-fun b!2931591 () Bool)

(declare-fun e!1848522 () Regex!9052)

(declare-fun e!1848516 () Regex!9052)

(assert (=> b!2931591 (= e!1848522 e!1848516)))

(declare-fun call!192426 () Regex!9052)

(assert (=> b!2931591 (= lt!1028010 call!192426)))

(declare-fun lt!1028008 () Regex!9052)

(assert (=> b!2931591 (= lt!1028008 call!192422)))

(declare-fun res!1210291 () Bool)

(declare-fun call!192427 () Bool)

(assert (=> b!2931591 (= res!1210291 call!192427)))

(declare-fun e!1848512 () Bool)

(assert (=> b!2931591 (=> res!1210291 e!1848512)))

(declare-fun c!478770 () Bool)

(assert (=> b!2931591 (= c!478770 e!1848512)))

(declare-fun b!2931592 () Bool)

(declare-fun e!1848509 () Regex!9052)

(declare-fun e!1848515 () Regex!9052)

(assert (=> b!2931592 (= e!1848509 e!1848515)))

(declare-fun c!478767 () Bool)

(assert (=> b!2931592 (= c!478767 (isEmptyExpr!278 lt!1028008))))

(declare-fun b!2931593 () Bool)

(declare-fun e!1848517 () Regex!9052)

(assert (=> b!2931593 (= e!1848517 EmptyExpr!9052)))

(declare-fun b!2931594 () Bool)

(declare-fun e!1848520 () Regex!9052)

(declare-fun lt!1028011 () Regex!9052)

(assert (=> b!2931594 (= e!1848520 lt!1028011)))

(declare-fun b!2931595 () Bool)

(assert (=> b!2931595 (= e!1848522 e!1848520)))

(assert (=> b!2931595 (= lt!1028012 call!192422)))

(assert (=> b!2931595 (= lt!1028011 call!192426)))

(declare-fun c!478764 () Bool)

(assert (=> b!2931595 (= c!478764 call!192427)))

(declare-fun b!2931596 () Bool)

(assert (=> b!2931596 (= e!1848519 lt!1027910)))

(declare-fun b!2931597 () Bool)

(declare-fun e!1848514 () Regex!9052)

(assert (=> b!2931597 (= e!1848514 lt!1028012)))

(declare-fun b!2931598 () Bool)

(assert (=> b!2931598 (= e!1848517 (Star!9052 lt!1028009))))

(declare-fun b!2931599 () Bool)

(declare-fun e!1848510 () Regex!9052)

(assert (=> b!2931599 (= e!1848511 e!1848510)))

(assert (=> b!2931599 (= c!478768 (is-Star!9052 lt!1027910))))

(declare-fun d!839404 () Bool)

(declare-fun e!1848518 () Bool)

(assert (=> d!839404 e!1848518))

(declare-fun res!1210290 () Bool)

(assert (=> d!839404 (=> (not res!1210290) (not e!1848518))))

(declare-fun lt!1028013 () Regex!9052)

(assert (=> d!839404 (= res!1210290 (validRegex!3785 lt!1028013))))

(declare-fun e!1848521 () Regex!9052)

(assert (=> d!839404 (= lt!1028013 e!1848521)))

(declare-fun c!478762 () Bool)

(assert (=> d!839404 (= c!478762 (is-EmptyLang!9052 lt!1027910))))

(assert (=> d!839404 (validRegex!3785 lt!1027910)))

(assert (=> d!839404 (= (simplify!59 lt!1027910) lt!1028013)))

(declare-fun b!2931600 () Bool)

(declare-fun c!478761 () Bool)

(declare-fun call!192428 () Bool)

(assert (=> b!2931600 (= c!478761 call!192428)))

(assert (=> b!2931600 (= e!1848520 e!1848514)))

(declare-fun b!2931601 () Bool)

(assert (=> b!2931601 (= e!1848518 (= (nullable!2848 lt!1028013) (nullable!2848 lt!1027910)))))

(declare-fun bm!192419 () Bool)

(assert (=> bm!192419 (= call!192427 call!192425)))

(declare-fun bm!192420 () Bool)

(assert (=> bm!192420 (= call!192428 (isEmptyLang!193 (ite c!478765 lt!1028011 lt!1028008)))))

(declare-fun b!2931602 () Bool)

(assert (=> b!2931602 (= e!1848515 lt!1028010)))

(declare-fun bm!192421 () Bool)

(assert (=> bm!192421 (= call!192426 (simplify!59 (ite c!478765 (regTwo!18617 lt!1027910) (regOne!18616 lt!1027910))))))

(declare-fun bm!192422 () Bool)

(declare-fun call!192424 () Bool)

(assert (=> bm!192422 (= call!192424 (isEmptyExpr!278 (ite c!478768 lt!1028009 lt!1028010)))))

(declare-fun bm!192423 () Bool)

(assert (=> bm!192423 (= call!192423 (simplify!59 (ite c!478768 (reg!9381 lt!1027910) (ite c!478765 (regOne!18617 lt!1027910) (regTwo!18616 lt!1027910)))))))

(declare-fun b!2931603 () Bool)

(assert (=> b!2931603 (= e!1848516 EmptyLang!9052)))

(declare-fun b!2931604 () Bool)

(assert (=> b!2931604 (= e!1848509 lt!1028008)))

(declare-fun b!2931605 () Bool)

(assert (=> b!2931605 (= e!1848521 EmptyLang!9052)))

(declare-fun b!2931606 () Bool)

(assert (=> b!2931606 (= c!478765 (is-Union!9052 lt!1027910))))

(assert (=> b!2931606 (= e!1848510 e!1848522)))

(declare-fun b!2931607 () Bool)

(declare-fun e!1848513 () Bool)

(assert (=> b!2931607 (= e!1848513 call!192424)))

(declare-fun b!2931608 () Bool)

(assert (=> b!2931608 (= e!1848521 e!1848519)))

(declare-fun c!478766 () Bool)

(assert (=> b!2931608 (= c!478766 (is-ElementMatch!9052 lt!1027910))))

(declare-fun b!2931609 () Bool)

(assert (=> b!2931609 (= e!1848514 (Union!9052 lt!1028012 lt!1028011))))

(declare-fun b!2931610 () Bool)

(assert (=> b!2931610 (= e!1848511 EmptyExpr!9052)))

(declare-fun b!2931611 () Bool)

(assert (=> b!2931611 (= e!1848512 call!192428)))

(declare-fun b!2931612 () Bool)

(declare-fun c!478771 () Bool)

(assert (=> b!2931612 (= c!478771 call!192424)))

(assert (=> b!2931612 (= e!1848516 e!1848509)))

(declare-fun b!2931613 () Bool)

(assert (=> b!2931613 (= e!1848515 (Concat!14373 lt!1028010 lt!1028008))))

(declare-fun b!2931614 () Bool)

(declare-fun c!478769 () Bool)

(assert (=> b!2931614 (= c!478769 e!1848513)))

(declare-fun res!1210289 () Bool)

(assert (=> b!2931614 (=> res!1210289 e!1848513)))

(assert (=> b!2931614 (= res!1210289 call!192425)))

(assert (=> b!2931614 (= lt!1028009 call!192423)))

(assert (=> b!2931614 (= e!1848510 e!1848517)))

(assert (= (and d!839404 c!478762) b!2931605))

(assert (= (and d!839404 (not c!478762)) b!2931608))

(assert (= (and b!2931608 c!478766) b!2931596))

(assert (= (and b!2931608 (not c!478766)) b!2931590))

(assert (= (and b!2931590 c!478763) b!2931610))

(assert (= (and b!2931590 (not c!478763)) b!2931599))

(assert (= (and b!2931599 c!478768) b!2931614))

(assert (= (and b!2931599 (not c!478768)) b!2931606))

(assert (= (and b!2931614 (not res!1210289)) b!2931607))

(assert (= (and b!2931614 c!478769) b!2931593))

(assert (= (and b!2931614 (not c!478769)) b!2931598))

(assert (= (and b!2931606 c!478765) b!2931595))

(assert (= (and b!2931606 (not c!478765)) b!2931591))

(assert (= (and b!2931595 c!478764) b!2931594))

(assert (= (and b!2931595 (not c!478764)) b!2931600))

(assert (= (and b!2931600 c!478761) b!2931597))

(assert (= (and b!2931600 (not c!478761)) b!2931609))

(assert (= (and b!2931591 (not res!1210291)) b!2931611))

(assert (= (and b!2931591 c!478770) b!2931603))

(assert (= (and b!2931591 (not c!478770)) b!2931612))

(assert (= (and b!2931612 c!478771) b!2931604))

(assert (= (and b!2931612 (not c!478771)) b!2931592))

(assert (= (and b!2931592 c!478767) b!2931602))

(assert (= (and b!2931592 (not c!478767)) b!2931613))

(assert (= (or b!2931595 b!2931591) bm!192417))

(assert (= (or b!2931595 b!2931591) bm!192421))

(assert (= (or b!2931600 b!2931611) bm!192420))

(assert (= (or b!2931595 b!2931591) bm!192419))

(assert (= (or b!2931607 b!2931612) bm!192422))

(assert (= (or b!2931614 bm!192417) bm!192423))

(assert (= (or b!2931614 bm!192419) bm!192418))

(assert (= (and d!839404 res!1210290) b!2931601))

(declare-fun m!3321405 () Bool)

(assert (=> bm!192420 m!3321405))

(declare-fun m!3321407 () Bool)

(assert (=> bm!192422 m!3321407))

(declare-fun m!3321409 () Bool)

(assert (=> b!2931601 m!3321409))

(assert (=> b!2931601 m!3321293))

(declare-fun m!3321411 () Bool)

(assert (=> b!2931592 m!3321411))

(declare-fun m!3321413 () Bool)

(assert (=> d!839404 m!3321413))

(assert (=> d!839404 m!3321283))

(declare-fun m!3321415 () Bool)

(assert (=> bm!192423 m!3321415))

(declare-fun m!3321417 () Bool)

(assert (=> bm!192421 m!3321417))

(declare-fun m!3321419 () Bool)

(assert (=> bm!192418 m!3321419))

(assert (=> b!2931135 d!839404))

(declare-fun b!2931626 () Bool)

(declare-fun e!1848525 () Bool)

(declare-fun tp!939429 () Bool)

(declare-fun tp!939431 () Bool)

(assert (=> b!2931626 (= e!1848525 (and tp!939429 tp!939431))))

(assert (=> b!2931142 (= tp!939395 e!1848525)))

(declare-fun b!2931625 () Bool)

(assert (=> b!2931625 (= e!1848525 tp_is_empty!15667)))

(declare-fun b!2931627 () Bool)

(declare-fun tp!939430 () Bool)

(assert (=> b!2931627 (= e!1848525 tp!939430)))

(declare-fun b!2931628 () Bool)

(declare-fun tp!939432 () Bool)

(declare-fun tp!939428 () Bool)

(assert (=> b!2931628 (= e!1848525 (and tp!939432 tp!939428))))

(assert (= (and b!2931142 (is-ElementMatch!9052 (regOne!18616 r!17423))) b!2931625))

(assert (= (and b!2931142 (is-Concat!14373 (regOne!18616 r!17423))) b!2931626))

(assert (= (and b!2931142 (is-Star!9052 (regOne!18616 r!17423))) b!2931627))

(assert (= (and b!2931142 (is-Union!9052 (regOne!18616 r!17423))) b!2931628))

(declare-fun b!2931630 () Bool)

(declare-fun e!1848526 () Bool)

(declare-fun tp!939434 () Bool)

(declare-fun tp!939436 () Bool)

(assert (=> b!2931630 (= e!1848526 (and tp!939434 tp!939436))))

(assert (=> b!2931142 (= tp!939397 e!1848526)))

(declare-fun b!2931629 () Bool)

(assert (=> b!2931629 (= e!1848526 tp_is_empty!15667)))

(declare-fun b!2931631 () Bool)

(declare-fun tp!939435 () Bool)

(assert (=> b!2931631 (= e!1848526 tp!939435)))

(declare-fun b!2931632 () Bool)

(declare-fun tp!939437 () Bool)

(declare-fun tp!939433 () Bool)

(assert (=> b!2931632 (= e!1848526 (and tp!939437 tp!939433))))

(assert (= (and b!2931142 (is-ElementMatch!9052 (regTwo!18616 r!17423))) b!2931629))

(assert (= (and b!2931142 (is-Concat!14373 (regTwo!18616 r!17423))) b!2931630))

(assert (= (and b!2931142 (is-Star!9052 (regTwo!18616 r!17423))) b!2931631))

(assert (= (and b!2931142 (is-Union!9052 (regTwo!18616 r!17423))) b!2931632))

(declare-fun b!2931634 () Bool)

(declare-fun e!1848527 () Bool)

(declare-fun tp!939439 () Bool)

(declare-fun tp!939441 () Bool)

(assert (=> b!2931634 (= e!1848527 (and tp!939439 tp!939441))))

(assert (=> b!2931137 (= tp!939394 e!1848527)))

(declare-fun b!2931633 () Bool)

(assert (=> b!2931633 (= e!1848527 tp_is_empty!15667)))

(declare-fun b!2931635 () Bool)

(declare-fun tp!939440 () Bool)

(assert (=> b!2931635 (= e!1848527 tp!939440)))

(declare-fun b!2931636 () Bool)

(declare-fun tp!939442 () Bool)

(declare-fun tp!939438 () Bool)

(assert (=> b!2931636 (= e!1848527 (and tp!939442 tp!939438))))

(assert (= (and b!2931137 (is-ElementMatch!9052 (regOne!18617 r!17423))) b!2931633))

(assert (= (and b!2931137 (is-Concat!14373 (regOne!18617 r!17423))) b!2931634))

(assert (= (and b!2931137 (is-Star!9052 (regOne!18617 r!17423))) b!2931635))

(assert (= (and b!2931137 (is-Union!9052 (regOne!18617 r!17423))) b!2931636))

(declare-fun b!2931638 () Bool)

(declare-fun e!1848528 () Bool)

(declare-fun tp!939444 () Bool)

(declare-fun tp!939446 () Bool)

(assert (=> b!2931638 (= e!1848528 (and tp!939444 tp!939446))))

(assert (=> b!2931137 (= tp!939399 e!1848528)))

(declare-fun b!2931637 () Bool)

(assert (=> b!2931637 (= e!1848528 tp_is_empty!15667)))

(declare-fun b!2931639 () Bool)

(declare-fun tp!939445 () Bool)

(assert (=> b!2931639 (= e!1848528 tp!939445)))

(declare-fun b!2931640 () Bool)

(declare-fun tp!939447 () Bool)

(declare-fun tp!939443 () Bool)

(assert (=> b!2931640 (= e!1848528 (and tp!939447 tp!939443))))

(assert (= (and b!2931137 (is-ElementMatch!9052 (regTwo!18617 r!17423))) b!2931637))

(assert (= (and b!2931137 (is-Concat!14373 (regTwo!18617 r!17423))) b!2931638))

(assert (= (and b!2931137 (is-Star!9052 (regTwo!18617 r!17423))) b!2931639))

(assert (= (and b!2931137 (is-Union!9052 (regTwo!18617 r!17423))) b!2931640))

(declare-fun b!2931645 () Bool)

(declare-fun e!1848531 () Bool)

(declare-fun tp!939450 () Bool)

(assert (=> b!2931645 (= e!1848531 (and tp_is_empty!15667 tp!939450))))

(assert (=> b!2931133 (= tp!939396 e!1848531)))

(assert (= (and b!2931133 (is-Cons!34793 (t!233982 s!11993))) b!2931645))

(declare-fun b!2931647 () Bool)

(declare-fun e!1848532 () Bool)

(declare-fun tp!939452 () Bool)

(declare-fun tp!939454 () Bool)

(assert (=> b!2931647 (= e!1848532 (and tp!939452 tp!939454))))

(assert (=> b!2931130 (= tp!939398 e!1848532)))

(declare-fun b!2931646 () Bool)

(assert (=> b!2931646 (= e!1848532 tp_is_empty!15667)))

(declare-fun b!2931648 () Bool)

(declare-fun tp!939453 () Bool)

(assert (=> b!2931648 (= e!1848532 tp!939453)))

(declare-fun b!2931649 () Bool)

(declare-fun tp!939455 () Bool)

(declare-fun tp!939451 () Bool)

(assert (=> b!2931649 (= e!1848532 (and tp!939455 tp!939451))))

(assert (= (and b!2931130 (is-ElementMatch!9052 (reg!9381 r!17423))) b!2931646))

(assert (= (and b!2931130 (is-Concat!14373 (reg!9381 r!17423))) b!2931647))

(assert (= (and b!2931130 (is-Star!9052 (reg!9381 r!17423))) b!2931648))

(assert (= (and b!2931130 (is-Union!9052 (reg!9381 r!17423))) b!2931649))

(push 1)

(assert (not b!2931445))

(assert (not b!2931366))

(assert (not d!839352))

(assert (not b!2931367))

(assert (not bm!192411))

(assert (not b!2931649))

(assert (not b!2931306))

(assert (not bm!192415))

(assert (not b!2931634))

(assert (not b!2931601))

(assert (not b!2931645))

(assert (not b!2931266))

(assert (not b!2931648))

(assert (not bm!192422))

(assert (not b!2931632))

(assert (not bm!192412))

(assert (not d!839388))

(assert (not d!839368))

(assert (not bm!192406))

(assert (not b!2931270))

(assert (not d!839404))

(assert (not d!839402))

(assert (not b!2931451))

(assert (not b!2931581))

(assert (not d!839380))

(assert (not b!2931267))

(assert (not b!2931579))

(assert (not bm!192380))

(assert tp_is_empty!15667)

(assert (not d!839362))

(assert (not bm!192378))

(assert (not d!839378))

(assert (not b!2931269))

(assert (not d!839400))

(assert (not b!2931635))

(assert (not b!2931409))

(assert (not d!839386))

(assert (not b!2931443))

(assert (not b!2931556))

(assert (not b!2931528))

(assert (not b!2931314))

(assert (not bm!192368))

(assert (not b!2931564))

(assert (not b!2931577))

(assert (not b!2931572))

(assert (not b!2931351))

(assert (not b!2931412))

(assert (not b!2931563))

(assert (not b!2931268))

(assert (not b!2931315))

(assert (not bm!192409))

(assert (not b!2931567))

(assert (not b!2931636))

(assert (not b!2931272))

(assert (not bm!192408))

(assert (not b!2931627))

(assert (not d!839350))

(assert (not b!2931307))

(assert (not b!2931639))

(assert (not b!2931640))

(assert (not d!839356))

(assert (not b!2931628))

(assert (not b!2931461))

(assert (not b!2931552))

(assert (not b!2931631))

(assert (not d!839372))

(assert (not bm!192420))

(assert (not bm!192413))

(assert (not b!2931444))

(assert (not b!2931592))

(assert (not bm!192421))

(assert (not b!2931308))

(assert (not b!2931359))

(assert (not b!2931638))

(assert (not bm!192385))

(assert (not b!2931586))

(assert (not b!2931358))

(assert (not b!2931447))

(assert (not bm!192418))

(assert (not bm!192423))

(assert (not b!2931537))

(assert (not d!839348))

(assert (not d!839364))

(assert (not bm!192377))

(assert (not b!2931452))

(assert (not b!2931310))

(assert (not b!2931626))

(assert (not d!839354))

(assert (not bm!192386))

(assert (not b!2931571))

(assert (not b!2931630))

(assert (not bm!192416))

(assert (not b!2931585))

(assert (not b!2931360))

(assert (not b!2931647))

(assert (not bm!192387))

(assert (not b!2931565))

(assert (not d!839398))

(assert (not b!2931362))

(assert (not bm!192410))

(assert (not b!2931578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

