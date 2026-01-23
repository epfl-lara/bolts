; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188980 () Bool)

(assert start!188980)

(declare-fun b!1887227 () Bool)

(declare-fun res!842463 () Bool)

(declare-fun e!1204288 () Bool)

(assert (=> b!1887227 (=> (not res!842463) (not e!1204288))))

(declare-datatypes ((B!1721 0))(
  ( (B!1722 (val!6146 Int)) )
))
(declare-datatypes ((List!21139 0))(
  ( (Nil!21057) (Cons!21057 (h!26458 B!1721) (t!175138 List!21139)) )
))
(declare-fun l1!1329 () List!21139)

(declare-fun l2!1298 () List!21139)

(declare-fun subseq!407 (List!21139 List!21139) Bool)

(assert (=> b!1887227 (= res!842463 (subseq!407 l1!1329 (t!175138 l2!1298)))))

(declare-fun b!1887228 () Bool)

(declare-fun e!1204286 () Bool)

(declare-fun tp_is_empty!8977 () Bool)

(declare-fun tp!538110 () Bool)

(assert (=> b!1887228 (= e!1204286 (and tp_is_empty!8977 tp!538110))))

(declare-fun b!1887229 () Bool)

(declare-fun e!1204285 () Bool)

(declare-fun tp!538112 () Bool)

(assert (=> b!1887229 (= e!1204285 (and tp_is_empty!8977 tp!538112))))

(declare-fun res!842465 () Bool)

(assert (=> start!188980 (=> (not res!842465) (not e!1204288))))

(assert (=> start!188980 (= res!842465 (subseq!407 l1!1329 l2!1298))))

(assert (=> start!188980 e!1204288))

(declare-fun e!1204287 () Bool)

(assert (=> start!188980 e!1204287))

(assert (=> start!188980 e!1204286))

(assert (=> start!188980 e!1204285))

(declare-fun b!1887230 () Bool)

(declare-fun res!842467 () Bool)

(assert (=> b!1887230 (=> (not res!842467) (not e!1204288))))

(assert (=> b!1887230 (= res!842467 (not (subseq!407 (t!175138 l1!1329) (t!175138 l2!1298))))))

(declare-fun b!1887231 () Bool)

(declare-fun l3!256 () List!21139)

(assert (=> b!1887231 (= e!1204288 (not (subseq!407 l1!1329 l3!256)))))

(assert (=> b!1887231 (subseq!407 l1!1329 (t!175138 l3!256))))

(declare-datatypes ((Unit!35486 0))(
  ( (Unit!35487) )
))
(declare-fun lt!723662 () Unit!35486)

(declare-fun lemmaSubSeqTransitive!6 (List!21139 List!21139 List!21139) Unit!35486)

(assert (=> b!1887231 (= lt!723662 (lemmaSubSeqTransitive!6 l1!1329 (t!175138 l2!1298) (t!175138 l3!256)))))

(declare-fun b!1887232 () Bool)

(declare-fun tp!538111 () Bool)

(assert (=> b!1887232 (= e!1204287 (and tp_is_empty!8977 tp!538111))))

(declare-fun b!1887233 () Bool)

(declare-fun res!842462 () Bool)

(assert (=> b!1887233 (=> (not res!842462) (not e!1204288))))

(assert (=> b!1887233 (= res!842462 (subseq!407 (t!175138 l2!1298) (t!175138 l3!256)))))

(declare-fun b!1887234 () Bool)

(declare-fun res!842466 () Bool)

(assert (=> b!1887234 (=> (not res!842466) (not e!1204288))))

(assert (=> b!1887234 (= res!842466 (subseq!407 l2!1298 l3!256))))

(declare-fun b!1887235 () Bool)

(declare-fun res!842468 () Bool)

(assert (=> b!1887235 (=> (not res!842468) (not e!1204288))))

(get-info :version)

(assert (=> b!1887235 (= res!842468 (and (or (not ((_ is Cons!21057) l1!1329)) (not ((_ is Cons!21057) l2!1298)) (not ((_ is Cons!21057) l3!256)) (= (h!26458 l2!1298) (h!26458 l3!256))) ((_ is Cons!21057) l1!1329) ((_ is Cons!21057) l2!1298) ((_ is Cons!21057) l3!256) (= (h!26458 l2!1298) (h!26458 l3!256))))))

(declare-fun b!1887236 () Bool)

(declare-fun res!842464 () Bool)

(assert (=> b!1887236 (=> (not res!842464) (not e!1204288))))

(assert (=> b!1887236 (= res!842464 (= (h!26458 l1!1329) (h!26458 l2!1298)))))

(assert (= (and start!188980 res!842465) b!1887234))

(assert (= (and b!1887234 res!842466) b!1887235))

(assert (= (and b!1887235 res!842468) b!1887233))

(assert (= (and b!1887233 res!842462) b!1887236))

(assert (= (and b!1887236 res!842464) b!1887230))

(assert (= (and b!1887230 res!842467) b!1887227))

(assert (= (and b!1887227 res!842463) b!1887231))

(assert (= (and start!188980 ((_ is Cons!21057) l1!1329)) b!1887232))

(assert (= (and start!188980 ((_ is Cons!21057) l2!1298)) b!1887228))

(assert (= (and start!188980 ((_ is Cons!21057) l3!256)) b!1887229))

(declare-fun m!2319315 () Bool)

(assert (=> b!1887227 m!2319315))

(declare-fun m!2319317 () Bool)

(assert (=> b!1887230 m!2319317))

(declare-fun m!2319319 () Bool)

(assert (=> start!188980 m!2319319))

(declare-fun m!2319321 () Bool)

(assert (=> b!1887234 m!2319321))

(declare-fun m!2319323 () Bool)

(assert (=> b!1887231 m!2319323))

(declare-fun m!2319325 () Bool)

(assert (=> b!1887231 m!2319325))

(declare-fun m!2319327 () Bool)

(assert (=> b!1887231 m!2319327))

(declare-fun m!2319329 () Bool)

(assert (=> b!1887233 m!2319329))

(check-sat tp_is_empty!8977 (not start!188980) (not b!1887229) (not b!1887228) (not b!1887231) (not b!1887234) (not b!1887227) (not b!1887230) (not b!1887232) (not b!1887233))
(check-sat)
(get-model)

(declare-fun b!1887247 () Bool)

(declare-fun e!1204299 () Bool)

(assert (=> b!1887247 (= e!1204299 (subseq!407 (t!175138 l2!1298) (t!175138 l3!256)))))

(declare-fun d!578155 () Bool)

(declare-fun res!842480 () Bool)

(declare-fun e!1204298 () Bool)

(assert (=> d!578155 (=> res!842480 e!1204298)))

(assert (=> d!578155 (= res!842480 ((_ is Nil!21057) l2!1298))))

(assert (=> d!578155 (= (subseq!407 l2!1298 l3!256) e!1204298)))

(declare-fun b!1887246 () Bool)

(declare-fun e!1204300 () Bool)

(declare-fun e!1204297 () Bool)

(assert (=> b!1887246 (= e!1204300 e!1204297)))

(declare-fun res!842477 () Bool)

(assert (=> b!1887246 (=> res!842477 e!1204297)))

(assert (=> b!1887246 (= res!842477 e!1204299)))

(declare-fun res!842479 () Bool)

(assert (=> b!1887246 (=> (not res!842479) (not e!1204299))))

(assert (=> b!1887246 (= res!842479 (= (h!26458 l2!1298) (h!26458 l3!256)))))

(declare-fun b!1887248 () Bool)

(assert (=> b!1887248 (= e!1204297 (subseq!407 l2!1298 (t!175138 l3!256)))))

(declare-fun b!1887245 () Bool)

(assert (=> b!1887245 (= e!1204298 e!1204300)))

(declare-fun res!842478 () Bool)

(assert (=> b!1887245 (=> (not res!842478) (not e!1204300))))

(assert (=> b!1887245 (= res!842478 ((_ is Cons!21057) l3!256))))

(assert (= (and d!578155 (not res!842480)) b!1887245))

(assert (= (and b!1887245 res!842478) b!1887246))

(assert (= (and b!1887246 res!842479) b!1887247))

(assert (= (and b!1887246 (not res!842477)) b!1887248))

(assert (=> b!1887247 m!2319329))

(declare-fun m!2319331 () Bool)

(assert (=> b!1887248 m!2319331))

(assert (=> b!1887234 d!578155))

(declare-fun b!1887259 () Bool)

(declare-fun e!1204311 () Bool)

(assert (=> b!1887259 (= e!1204311 (subseq!407 (t!175138 l1!1329) (t!175138 l2!1298)))))

(declare-fun d!578159 () Bool)

(declare-fun res!842492 () Bool)

(declare-fun e!1204310 () Bool)

(assert (=> d!578159 (=> res!842492 e!1204310)))

(assert (=> d!578159 (= res!842492 ((_ is Nil!21057) l1!1329))))

(assert (=> d!578159 (= (subseq!407 l1!1329 l2!1298) e!1204310)))

(declare-fun b!1887258 () Bool)

(declare-fun e!1204312 () Bool)

(declare-fun e!1204309 () Bool)

(assert (=> b!1887258 (= e!1204312 e!1204309)))

(declare-fun res!842489 () Bool)

(assert (=> b!1887258 (=> res!842489 e!1204309)))

(assert (=> b!1887258 (= res!842489 e!1204311)))

(declare-fun res!842491 () Bool)

(assert (=> b!1887258 (=> (not res!842491) (not e!1204311))))

(assert (=> b!1887258 (= res!842491 (= (h!26458 l1!1329) (h!26458 l2!1298)))))

(declare-fun b!1887260 () Bool)

(assert (=> b!1887260 (= e!1204309 (subseq!407 l1!1329 (t!175138 l2!1298)))))

(declare-fun b!1887257 () Bool)

(assert (=> b!1887257 (= e!1204310 e!1204312)))

(declare-fun res!842490 () Bool)

(assert (=> b!1887257 (=> (not res!842490) (not e!1204312))))

(assert (=> b!1887257 (= res!842490 ((_ is Cons!21057) l2!1298))))

(assert (= (and d!578159 (not res!842492)) b!1887257))

(assert (= (and b!1887257 res!842490) b!1887258))

(assert (= (and b!1887258 res!842491) b!1887259))

(assert (= (and b!1887258 (not res!842489)) b!1887260))

(assert (=> b!1887259 m!2319317))

(assert (=> b!1887260 m!2319315))

(assert (=> start!188980 d!578159))

(declare-fun b!1887263 () Bool)

(declare-fun e!1204315 () Bool)

(assert (=> b!1887263 (= e!1204315 (subseq!407 (t!175138 (t!175138 l2!1298)) (t!175138 (t!175138 l3!256))))))

(declare-fun d!578161 () Bool)

(declare-fun res!842496 () Bool)

(declare-fun e!1204314 () Bool)

(assert (=> d!578161 (=> res!842496 e!1204314)))

(assert (=> d!578161 (= res!842496 ((_ is Nil!21057) (t!175138 l2!1298)))))

(assert (=> d!578161 (= (subseq!407 (t!175138 l2!1298) (t!175138 l3!256)) e!1204314)))

(declare-fun b!1887262 () Bool)

(declare-fun e!1204316 () Bool)

(declare-fun e!1204313 () Bool)

(assert (=> b!1887262 (= e!1204316 e!1204313)))

(declare-fun res!842493 () Bool)

(assert (=> b!1887262 (=> res!842493 e!1204313)))

(assert (=> b!1887262 (= res!842493 e!1204315)))

(declare-fun res!842495 () Bool)

(assert (=> b!1887262 (=> (not res!842495) (not e!1204315))))

(assert (=> b!1887262 (= res!842495 (= (h!26458 (t!175138 l2!1298)) (h!26458 (t!175138 l3!256))))))

(declare-fun b!1887264 () Bool)

(assert (=> b!1887264 (= e!1204313 (subseq!407 (t!175138 l2!1298) (t!175138 (t!175138 l3!256))))))

(declare-fun b!1887261 () Bool)

(assert (=> b!1887261 (= e!1204314 e!1204316)))

(declare-fun res!842494 () Bool)

(assert (=> b!1887261 (=> (not res!842494) (not e!1204316))))

(assert (=> b!1887261 (= res!842494 ((_ is Cons!21057) (t!175138 l3!256)))))

(assert (= (and d!578161 (not res!842496)) b!1887261))

(assert (= (and b!1887261 res!842494) b!1887262))

(assert (= (and b!1887262 res!842495) b!1887263))

(assert (= (and b!1887262 (not res!842493)) b!1887264))

(declare-fun m!2319333 () Bool)

(assert (=> b!1887263 m!2319333))

(declare-fun m!2319335 () Bool)

(assert (=> b!1887264 m!2319335))

(assert (=> b!1887233 d!578161))

(declare-fun b!1887267 () Bool)

(declare-fun e!1204319 () Bool)

(assert (=> b!1887267 (= e!1204319 (subseq!407 (t!175138 (t!175138 l1!1329)) (t!175138 (t!175138 l2!1298))))))

(declare-fun d!578163 () Bool)

(declare-fun res!842500 () Bool)

(declare-fun e!1204318 () Bool)

(assert (=> d!578163 (=> res!842500 e!1204318)))

(assert (=> d!578163 (= res!842500 ((_ is Nil!21057) (t!175138 l1!1329)))))

(assert (=> d!578163 (= (subseq!407 (t!175138 l1!1329) (t!175138 l2!1298)) e!1204318)))

(declare-fun b!1887266 () Bool)

(declare-fun e!1204320 () Bool)

(declare-fun e!1204317 () Bool)

(assert (=> b!1887266 (= e!1204320 e!1204317)))

(declare-fun res!842497 () Bool)

(assert (=> b!1887266 (=> res!842497 e!1204317)))

(assert (=> b!1887266 (= res!842497 e!1204319)))

(declare-fun res!842499 () Bool)

(assert (=> b!1887266 (=> (not res!842499) (not e!1204319))))

(assert (=> b!1887266 (= res!842499 (= (h!26458 (t!175138 l1!1329)) (h!26458 (t!175138 l2!1298))))))

(declare-fun b!1887268 () Bool)

(assert (=> b!1887268 (= e!1204317 (subseq!407 (t!175138 l1!1329) (t!175138 (t!175138 l2!1298))))))

(declare-fun b!1887265 () Bool)

(assert (=> b!1887265 (= e!1204318 e!1204320)))

(declare-fun res!842498 () Bool)

(assert (=> b!1887265 (=> (not res!842498) (not e!1204320))))

(assert (=> b!1887265 (= res!842498 ((_ is Cons!21057) (t!175138 l2!1298)))))

(assert (= (and d!578163 (not res!842500)) b!1887265))

(assert (= (and b!1887265 res!842498) b!1887266))

(assert (= (and b!1887266 res!842499) b!1887267))

(assert (= (and b!1887266 (not res!842497)) b!1887268))

(declare-fun m!2319337 () Bool)

(assert (=> b!1887267 m!2319337))

(declare-fun m!2319339 () Bool)

(assert (=> b!1887268 m!2319339))

(assert (=> b!1887230 d!578163))

(declare-fun b!1887271 () Bool)

(declare-fun e!1204323 () Bool)

(assert (=> b!1887271 (= e!1204323 (subseq!407 (t!175138 l1!1329) (t!175138 l3!256)))))

(declare-fun d!578165 () Bool)

(declare-fun res!842504 () Bool)

(declare-fun e!1204322 () Bool)

(assert (=> d!578165 (=> res!842504 e!1204322)))

(assert (=> d!578165 (= res!842504 ((_ is Nil!21057) l1!1329))))

(assert (=> d!578165 (= (subseq!407 l1!1329 l3!256) e!1204322)))

(declare-fun b!1887270 () Bool)

(declare-fun e!1204324 () Bool)

(declare-fun e!1204321 () Bool)

(assert (=> b!1887270 (= e!1204324 e!1204321)))

(declare-fun res!842501 () Bool)

(assert (=> b!1887270 (=> res!842501 e!1204321)))

(assert (=> b!1887270 (= res!842501 e!1204323)))

(declare-fun res!842503 () Bool)

(assert (=> b!1887270 (=> (not res!842503) (not e!1204323))))

(assert (=> b!1887270 (= res!842503 (= (h!26458 l1!1329) (h!26458 l3!256)))))

(declare-fun b!1887272 () Bool)

(assert (=> b!1887272 (= e!1204321 (subseq!407 l1!1329 (t!175138 l3!256)))))

(declare-fun b!1887269 () Bool)

(assert (=> b!1887269 (= e!1204322 e!1204324)))

(declare-fun res!842502 () Bool)

(assert (=> b!1887269 (=> (not res!842502) (not e!1204324))))

(assert (=> b!1887269 (= res!842502 ((_ is Cons!21057) l3!256))))

(assert (= (and d!578165 (not res!842504)) b!1887269))

(assert (= (and b!1887269 res!842502) b!1887270))

(assert (= (and b!1887270 res!842503) b!1887271))

(assert (= (and b!1887270 (not res!842501)) b!1887272))

(declare-fun m!2319341 () Bool)

(assert (=> b!1887271 m!2319341))

(assert (=> b!1887272 m!2319325))

(assert (=> b!1887231 d!578165))

(declare-fun b!1887275 () Bool)

(declare-fun e!1204327 () Bool)

(assert (=> b!1887275 (= e!1204327 (subseq!407 (t!175138 l1!1329) (t!175138 (t!175138 l3!256))))))

(declare-fun d!578167 () Bool)

(declare-fun res!842508 () Bool)

(declare-fun e!1204326 () Bool)

(assert (=> d!578167 (=> res!842508 e!1204326)))

(assert (=> d!578167 (= res!842508 ((_ is Nil!21057) l1!1329))))

(assert (=> d!578167 (= (subseq!407 l1!1329 (t!175138 l3!256)) e!1204326)))

(declare-fun b!1887274 () Bool)

(declare-fun e!1204328 () Bool)

(declare-fun e!1204325 () Bool)

(assert (=> b!1887274 (= e!1204328 e!1204325)))

(declare-fun res!842505 () Bool)

(assert (=> b!1887274 (=> res!842505 e!1204325)))

(assert (=> b!1887274 (= res!842505 e!1204327)))

(declare-fun res!842507 () Bool)

(assert (=> b!1887274 (=> (not res!842507) (not e!1204327))))

(assert (=> b!1887274 (= res!842507 (= (h!26458 l1!1329) (h!26458 (t!175138 l3!256))))))

(declare-fun b!1887276 () Bool)

(assert (=> b!1887276 (= e!1204325 (subseq!407 l1!1329 (t!175138 (t!175138 l3!256))))))

(declare-fun b!1887273 () Bool)

(assert (=> b!1887273 (= e!1204326 e!1204328)))

(declare-fun res!842506 () Bool)

(assert (=> b!1887273 (=> (not res!842506) (not e!1204328))))

(assert (=> b!1887273 (= res!842506 ((_ is Cons!21057) (t!175138 l3!256)))))

(assert (= (and d!578167 (not res!842508)) b!1887273))

(assert (= (and b!1887273 res!842506) b!1887274))

(assert (= (and b!1887274 res!842507) b!1887275))

(assert (= (and b!1887274 (not res!842505)) b!1887276))

(declare-fun m!2319343 () Bool)

(assert (=> b!1887275 m!2319343))

(declare-fun m!2319345 () Bool)

(assert (=> b!1887276 m!2319345))

(assert (=> b!1887231 d!578167))

(declare-fun d!578169 () Bool)

(assert (=> d!578169 (subseq!407 l1!1329 (t!175138 l3!256))))

(declare-fun lt!723665 () Unit!35486)

(declare-fun choose!11811 (List!21139 List!21139 List!21139) Unit!35486)

(assert (=> d!578169 (= lt!723665 (choose!11811 l1!1329 (t!175138 l2!1298) (t!175138 l3!256)))))

(assert (=> d!578169 (subseq!407 l1!1329 (t!175138 l2!1298))))

(assert (=> d!578169 (= (lemmaSubSeqTransitive!6 l1!1329 (t!175138 l2!1298) (t!175138 l3!256)) lt!723665)))

(declare-fun bs!412985 () Bool)

(assert (= bs!412985 d!578169))

(assert (=> bs!412985 m!2319325))

(declare-fun m!2319359 () Bool)

(assert (=> bs!412985 m!2319359))

(assert (=> bs!412985 m!2319315))

(assert (=> b!1887231 d!578169))

(declare-fun b!1887299 () Bool)

(declare-fun e!1204351 () Bool)

(assert (=> b!1887299 (= e!1204351 (subseq!407 (t!175138 l1!1329) (t!175138 (t!175138 l2!1298))))))

(declare-fun d!578181 () Bool)

(declare-fun res!842532 () Bool)

(declare-fun e!1204350 () Bool)

(assert (=> d!578181 (=> res!842532 e!1204350)))

(assert (=> d!578181 (= res!842532 ((_ is Nil!21057) l1!1329))))

(assert (=> d!578181 (= (subseq!407 l1!1329 (t!175138 l2!1298)) e!1204350)))

(declare-fun b!1887298 () Bool)

(declare-fun e!1204352 () Bool)

(declare-fun e!1204349 () Bool)

(assert (=> b!1887298 (= e!1204352 e!1204349)))

(declare-fun res!842529 () Bool)

(assert (=> b!1887298 (=> res!842529 e!1204349)))

(assert (=> b!1887298 (= res!842529 e!1204351)))

(declare-fun res!842531 () Bool)

(assert (=> b!1887298 (=> (not res!842531) (not e!1204351))))

(assert (=> b!1887298 (= res!842531 (= (h!26458 l1!1329) (h!26458 (t!175138 l2!1298))))))

(declare-fun b!1887300 () Bool)

(assert (=> b!1887300 (= e!1204349 (subseq!407 l1!1329 (t!175138 (t!175138 l2!1298))))))

(declare-fun b!1887297 () Bool)

(assert (=> b!1887297 (= e!1204350 e!1204352)))

(declare-fun res!842530 () Bool)

(assert (=> b!1887297 (=> (not res!842530) (not e!1204352))))

(assert (=> b!1887297 (= res!842530 ((_ is Cons!21057) (t!175138 l2!1298)))))

(assert (= (and d!578181 (not res!842532)) b!1887297))

(assert (= (and b!1887297 res!842530) b!1887298))

(assert (= (and b!1887298 res!842531) b!1887299))

(assert (= (and b!1887298 (not res!842529)) b!1887300))

(assert (=> b!1887299 m!2319339))

(declare-fun m!2319361 () Bool)

(assert (=> b!1887300 m!2319361))

(assert (=> b!1887227 d!578181))

(declare-fun b!1887305 () Bool)

(declare-fun e!1204355 () Bool)

(declare-fun tp!538115 () Bool)

(assert (=> b!1887305 (= e!1204355 (and tp_is_empty!8977 tp!538115))))

(assert (=> b!1887228 (= tp!538110 e!1204355)))

(assert (= (and b!1887228 ((_ is Cons!21057) (t!175138 l2!1298))) b!1887305))

(declare-fun b!1887306 () Bool)

(declare-fun e!1204356 () Bool)

(declare-fun tp!538116 () Bool)

(assert (=> b!1887306 (= e!1204356 (and tp_is_empty!8977 tp!538116))))

(assert (=> b!1887229 (= tp!538112 e!1204356)))

(assert (= (and b!1887229 ((_ is Cons!21057) (t!175138 l3!256))) b!1887306))

(declare-fun b!1887307 () Bool)

(declare-fun e!1204357 () Bool)

(declare-fun tp!538117 () Bool)

(assert (=> b!1887307 (= e!1204357 (and tp_is_empty!8977 tp!538117))))

(assert (=> b!1887232 (= tp!538111 e!1204357)))

(assert (= (and b!1887232 ((_ is Cons!21057) (t!175138 l1!1329))) b!1887307))

(check-sat tp_is_empty!8977 (not b!1887300) (not b!1887264) (not b!1887247) (not b!1887305) (not b!1887260) (not b!1887272) (not b!1887306) (not b!1887299) (not b!1887271) (not b!1887259) (not b!1887307) (not d!578169) (not b!1887248) (not b!1887263) (not b!1887275) (not b!1887276) (not b!1887268) (not b!1887267))
(check-sat)
