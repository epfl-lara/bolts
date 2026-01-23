; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183018 () Bool)

(assert start!183018)

(declare-fun b!1839362 () Bool)

(declare-fun e!1175397 () Bool)

(declare-fun tp_is_empty!8269 () Bool)

(declare-fun tp!520182 () Bool)

(assert (=> b!1839362 (= e!1175397 (and tp_is_empty!8269 tp!520182))))

(declare-fun res!826602 () Bool)

(declare-fun e!1175396 () Bool)

(assert (=> start!183018 (=> (not res!826602) (not e!1175396))))

(declare-datatypes ((B!1521 0))(
  ( (B!1522 (val!5708 Int)) )
))
(declare-datatypes ((List!20308 0))(
  ( (Nil!20238) (Cons!20238 (h!25639 B!1521) (t!171737 List!20308)) )
))
(declare-fun p!2031 () List!20308)

(declare-fun l!3477 () List!20308)

(declare-fun isPrefix!1847 (List!20308 List!20308) Bool)

(assert (=> start!183018 (= res!826602 (isPrefix!1847 p!2031 l!3477))))

(assert (=> start!183018 e!1175396))

(declare-fun e!1175398 () Bool)

(assert (=> start!183018 e!1175398))

(assert (=> start!183018 e!1175397))

(declare-fun b!1839360 () Bool)

(get-info :version)

(assert (=> b!1839360 (= e!1175396 (and ((_ is Cons!20238) p!2031) (= l!3477 Nil!20238)))))

(declare-fun b!1839359 () Bool)

(declare-fun res!826601 () Bool)

(assert (=> b!1839359 (=> (not res!826601) (not e!1175396))))

(declare-fun size!16038 (List!20308) Int)

(assert (=> b!1839359 (= res!826601 (<= (+ 1 (size!16038 p!2031)) (size!16038 l!3477)))))

(declare-fun b!1839361 () Bool)

(declare-fun tp!520181 () Bool)

(assert (=> b!1839361 (= e!1175398 (and tp_is_empty!8269 tp!520181))))

(assert (= (and start!183018 res!826602) b!1839359))

(assert (= (and b!1839359 res!826601) b!1839360))

(assert (= (and start!183018 ((_ is Cons!20238) p!2031)) b!1839361))

(assert (= (and start!183018 ((_ is Cons!20238) l!3477)) b!1839362))

(declare-fun m!2267015 () Bool)

(assert (=> start!183018 m!2267015))

(declare-fun m!2267017 () Bool)

(assert (=> b!1839359 m!2267017))

(declare-fun m!2267019 () Bool)

(assert (=> b!1839359 m!2267019))

(check-sat (not b!1839361) (not start!183018) (not b!1839362) tp_is_empty!8269 (not b!1839359))
(check-sat)
(get-model)

(declare-fun d!562448 () Bool)

(declare-fun e!1175418 () Bool)

(assert (=> d!562448 e!1175418))

(declare-fun res!826625 () Bool)

(assert (=> d!562448 (=> res!826625 e!1175418)))

(declare-fun lt!713738 () Bool)

(assert (=> d!562448 (= res!826625 (not lt!713738))))

(declare-fun e!1175417 () Bool)

(assert (=> d!562448 (= lt!713738 e!1175417)))

(declare-fun res!826626 () Bool)

(assert (=> d!562448 (=> res!826626 e!1175417)))

(assert (=> d!562448 (= res!826626 ((_ is Nil!20238) p!2031))))

(assert (=> d!562448 (= (isPrefix!1847 p!2031 l!3477) lt!713738)))

(declare-fun b!1839387 () Bool)

(declare-fun e!1175416 () Bool)

(assert (=> b!1839387 (= e!1175417 e!1175416)))

(declare-fun res!826624 () Bool)

(assert (=> b!1839387 (=> (not res!826624) (not e!1175416))))

(assert (=> b!1839387 (= res!826624 (not ((_ is Nil!20238) l!3477)))))

(declare-fun b!1839389 () Bool)

(declare-fun tail!2760 (List!20308) List!20308)

(assert (=> b!1839389 (= e!1175416 (isPrefix!1847 (tail!2760 p!2031) (tail!2760 l!3477)))))

(declare-fun b!1839390 () Bool)

(assert (=> b!1839390 (= e!1175418 (>= (size!16038 l!3477) (size!16038 p!2031)))))

(declare-fun b!1839388 () Bool)

(declare-fun res!826623 () Bool)

(assert (=> b!1839388 (=> (not res!826623) (not e!1175416))))

(declare-fun head!4298 (List!20308) B!1521)

(assert (=> b!1839388 (= res!826623 (= (head!4298 p!2031) (head!4298 l!3477)))))

(assert (= (and d!562448 (not res!826626)) b!1839387))

(assert (= (and b!1839387 res!826624) b!1839388))

(assert (= (and b!1839388 res!826623) b!1839389))

(assert (= (and d!562448 (not res!826625)) b!1839390))

(declare-fun m!2267031 () Bool)

(assert (=> b!1839389 m!2267031))

(declare-fun m!2267033 () Bool)

(assert (=> b!1839389 m!2267033))

(assert (=> b!1839389 m!2267031))

(assert (=> b!1839389 m!2267033))

(declare-fun m!2267035 () Bool)

(assert (=> b!1839389 m!2267035))

(assert (=> b!1839390 m!2267019))

(assert (=> b!1839390 m!2267017))

(declare-fun m!2267037 () Bool)

(assert (=> b!1839388 m!2267037))

(declare-fun m!2267039 () Bool)

(assert (=> b!1839388 m!2267039))

(assert (=> start!183018 d!562448))

(declare-fun d!562452 () Bool)

(declare-fun lt!713743 () Int)

(assert (=> d!562452 (>= lt!713743 0)))

(declare-fun e!1175427 () Int)

(assert (=> d!562452 (= lt!713743 e!1175427)))

(declare-fun c!300232 () Bool)

(assert (=> d!562452 (= c!300232 ((_ is Nil!20238) p!2031))))

(assert (=> d!562452 (= (size!16038 p!2031) lt!713743)))

(declare-fun b!1839405 () Bool)

(assert (=> b!1839405 (= e!1175427 0)))

(declare-fun b!1839406 () Bool)

(assert (=> b!1839406 (= e!1175427 (+ 1 (size!16038 (t!171737 p!2031))))))

(assert (= (and d!562452 c!300232) b!1839405))

(assert (= (and d!562452 (not c!300232)) b!1839406))

(declare-fun m!2267045 () Bool)

(assert (=> b!1839406 m!2267045))

(assert (=> b!1839359 d!562452))

(declare-fun d!562456 () Bool)

(declare-fun lt!713744 () Int)

(assert (=> d!562456 (>= lt!713744 0)))

(declare-fun e!1175428 () Int)

(assert (=> d!562456 (= lt!713744 e!1175428)))

(declare-fun c!300233 () Bool)

(assert (=> d!562456 (= c!300233 ((_ is Nil!20238) l!3477))))

(assert (=> d!562456 (= (size!16038 l!3477) lt!713744)))

(declare-fun b!1839407 () Bool)

(assert (=> b!1839407 (= e!1175428 0)))

(declare-fun b!1839408 () Bool)

(assert (=> b!1839408 (= e!1175428 (+ 1 (size!16038 (t!171737 l!3477))))))

(assert (= (and d!562456 c!300233) b!1839407))

(assert (= (and d!562456 (not c!300233)) b!1839408))

(declare-fun m!2267047 () Bool)

(assert (=> b!1839408 m!2267047))

(assert (=> b!1839359 d!562456))

(declare-fun b!1839413 () Bool)

(declare-fun e!1175431 () Bool)

(declare-fun tp!520189 () Bool)

(assert (=> b!1839413 (= e!1175431 (and tp_is_empty!8269 tp!520189))))

(assert (=> b!1839362 (= tp!520182 e!1175431)))

(assert (= (and b!1839362 ((_ is Cons!20238) (t!171737 l!3477))) b!1839413))

(declare-fun b!1839414 () Bool)

(declare-fun e!1175432 () Bool)

(declare-fun tp!520190 () Bool)

(assert (=> b!1839414 (= e!1175432 (and tp_is_empty!8269 tp!520190))))

(assert (=> b!1839361 (= tp!520181 e!1175432)))

(assert (= (and b!1839361 ((_ is Cons!20238) (t!171737 p!2031))) b!1839414))

(check-sat (not b!1839414) (not b!1839406) (not b!1839388) tp_is_empty!8269 (not b!1839413) (not b!1839389) (not b!1839408) (not b!1839390))
(check-sat)
