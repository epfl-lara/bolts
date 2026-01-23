; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189068 () Bool)

(assert start!189068)

(declare-fun b!1888329 () Bool)

(declare-fun res!843238 () Bool)

(declare-fun e!1205076 () Bool)

(assert (=> b!1888329 (=> (not res!843238) (not e!1205076))))

(declare-datatypes ((B!1757 0))(
  ( (B!1758 (val!6164 Int)) )
))
(declare-datatypes ((List!21157 0))(
  ( (Nil!21075) (Cons!21075 (h!26476 B!1757) (t!175156 List!21157)) )
))
(declare-fun l2!1298 () List!21157)

(declare-fun l3!256 () List!21157)

(declare-fun subseq!423 (List!21157 List!21157) Bool)

(assert (=> b!1888329 (= res!843238 (not (subseq!423 (t!175156 l2!1298) (t!175156 l3!256))))))

(declare-fun res!843239 () Bool)

(assert (=> start!189068 (=> (not res!843239) (not e!1205076))))

(declare-fun l1!1329 () List!21157)

(assert (=> start!189068 (= res!843239 (subseq!423 l1!1329 l2!1298))))

(assert (=> start!189068 e!1205076))

(declare-fun e!1205077 () Bool)

(assert (=> start!189068 e!1205077))

(declare-fun e!1205075 () Bool)

(assert (=> start!189068 e!1205075))

(declare-fun e!1205078 () Bool)

(assert (=> start!189068 e!1205078))

(declare-fun b!1888330 () Bool)

(declare-fun tp_is_empty!9013 () Bool)

(declare-fun tp!538353 () Bool)

(assert (=> b!1888330 (= e!1205075 (and tp_is_empty!9013 tp!538353))))

(declare-fun b!1888331 () Bool)

(declare-fun res!843236 () Bool)

(assert (=> b!1888331 (=> (not res!843236) (not e!1205076))))

(assert (=> b!1888331 (= res!843236 (= (h!26476 l1!1329) (h!26476 l2!1298)))))

(declare-fun b!1888332 () Bool)

(declare-fun tp!538354 () Bool)

(assert (=> b!1888332 (= e!1205078 (and tp_is_empty!9013 tp!538354))))

(declare-fun b!1888333 () Bool)

(declare-fun size!16721 (List!21157) Int)

(assert (=> b!1888333 (= e!1205076 (>= (size!16721 (t!175156 l3!256)) (size!16721 l3!256)))))

(declare-fun lt!723792 () Int)

(assert (=> b!1888333 (= lt!723792 (size!16721 l2!1298))))

(declare-fun lt!723791 () Int)

(assert (=> b!1888333 (= lt!723791 (size!16721 l1!1329))))

(declare-fun b!1888334 () Bool)

(declare-fun res!843235 () Bool)

(assert (=> b!1888334 (=> (not res!843235) (not e!1205076))))

(get-info :version)

(assert (=> b!1888334 (= res!843235 (and (or (not ((_ is Cons!21075) l1!1329)) (not ((_ is Cons!21075) l2!1298)) (not ((_ is Cons!21075) l3!256)) (= (h!26476 l2!1298) (h!26476 l3!256))) ((_ is Cons!21075) l1!1329) ((_ is Cons!21075) l2!1298) ((_ is Cons!21075) l3!256) (= (h!26476 l2!1298) (h!26476 l3!256))))))

(declare-fun b!1888335 () Bool)

(declare-fun res!843240 () Bool)

(assert (=> b!1888335 (=> (not res!843240) (not e!1205076))))

(assert (=> b!1888335 (= res!843240 (subseq!423 l2!1298 l3!256))))

(declare-fun b!1888336 () Bool)

(declare-fun res!843237 () Bool)

(assert (=> b!1888336 (=> (not res!843237) (not e!1205076))))

(assert (=> b!1888336 (= res!843237 (subseq!423 l2!1298 (t!175156 l3!256)))))

(declare-fun b!1888337 () Bool)

(declare-fun res!843234 () Bool)

(assert (=> b!1888337 (=> (not res!843234) (not e!1205076))))

(assert (=> b!1888337 (= res!843234 (not (subseq!423 (t!175156 l1!1329) l2!1298)))))

(declare-fun b!1888338 () Bool)

(declare-fun tp!538352 () Bool)

(assert (=> b!1888338 (= e!1205077 (and tp_is_empty!9013 tp!538352))))

(assert (= (and start!189068 res!843239) b!1888335))

(assert (= (and b!1888335 res!843240) b!1888334))

(assert (= (and b!1888334 res!843235) b!1888329))

(assert (= (and b!1888329 res!843238) b!1888331))

(assert (= (and b!1888331 res!843236) b!1888337))

(assert (= (and b!1888337 res!843234) b!1888336))

(assert (= (and b!1888336 res!843237) b!1888333))

(assert (= (and start!189068 ((_ is Cons!21075) l1!1329)) b!1888338))

(assert (= (and start!189068 ((_ is Cons!21075) l2!1298)) b!1888330))

(assert (= (and start!189068 ((_ is Cons!21075) l3!256)) b!1888332))

(declare-fun m!2319805 () Bool)

(assert (=> b!1888335 m!2319805))

(declare-fun m!2319807 () Bool)

(assert (=> b!1888337 m!2319807))

(declare-fun m!2319809 () Bool)

(assert (=> b!1888329 m!2319809))

(declare-fun m!2319811 () Bool)

(assert (=> start!189068 m!2319811))

(declare-fun m!2319813 () Bool)

(assert (=> b!1888336 m!2319813))

(declare-fun m!2319815 () Bool)

(assert (=> b!1888333 m!2319815))

(declare-fun m!2319817 () Bool)

(assert (=> b!1888333 m!2319817))

(declare-fun m!2319819 () Bool)

(assert (=> b!1888333 m!2319819))

(declare-fun m!2319821 () Bool)

(assert (=> b!1888333 m!2319821))

(check-sat (not start!189068) (not b!1888333) (not b!1888330) (not b!1888332) (not b!1888338) (not b!1888337) (not b!1888335) (not b!1888336) (not b!1888329) tp_is_empty!9013)
(check-sat)
(get-model)

(declare-fun b!1888355 () Bool)

(declare-fun e!1205096 () Bool)

(declare-fun e!1205097 () Bool)

(assert (=> b!1888355 (= e!1205096 e!1205097)))

(declare-fun res!843260 () Bool)

(assert (=> b!1888355 (=> (not res!843260) (not e!1205097))))

(assert (=> b!1888355 (= res!843260 ((_ is Cons!21075) l2!1298))))

(declare-fun b!1888357 () Bool)

(declare-fun e!1205098 () Bool)

(assert (=> b!1888357 (= e!1205098 (subseq!423 (t!175156 (t!175156 l1!1329)) (t!175156 l2!1298)))))

(declare-fun b!1888358 () Bool)

(declare-fun e!1205095 () Bool)

(assert (=> b!1888358 (= e!1205095 (subseq!423 (t!175156 l1!1329) (t!175156 l2!1298)))))

(declare-fun b!1888356 () Bool)

(assert (=> b!1888356 (= e!1205097 e!1205095)))

(declare-fun res!843259 () Bool)

(assert (=> b!1888356 (=> res!843259 e!1205095)))

(assert (=> b!1888356 (= res!843259 e!1205098)))

(declare-fun res!843257 () Bool)

(assert (=> b!1888356 (=> (not res!843257) (not e!1205098))))

(assert (=> b!1888356 (= res!843257 (= (h!26476 (t!175156 l1!1329)) (h!26476 l2!1298)))))

(declare-fun d!578388 () Bool)

(declare-fun res!843258 () Bool)

(assert (=> d!578388 (=> res!843258 e!1205096)))

(assert (=> d!578388 (= res!843258 ((_ is Nil!21075) (t!175156 l1!1329)))))

(assert (=> d!578388 (= (subseq!423 (t!175156 l1!1329) l2!1298) e!1205096)))

(assert (= (and d!578388 (not res!843258)) b!1888355))

(assert (= (and b!1888355 res!843260) b!1888356))

(assert (= (and b!1888356 res!843257) b!1888357))

(assert (= (and b!1888356 (not res!843259)) b!1888358))

(declare-fun m!2319823 () Bool)

(assert (=> b!1888357 m!2319823))

(declare-fun m!2319825 () Bool)

(assert (=> b!1888358 m!2319825))

(assert (=> b!1888337 d!578388))

(declare-fun b!1888363 () Bool)

(declare-fun e!1205104 () Bool)

(declare-fun e!1205105 () Bool)

(assert (=> b!1888363 (= e!1205104 e!1205105)))

(declare-fun res!843268 () Bool)

(assert (=> b!1888363 (=> (not res!843268) (not e!1205105))))

(assert (=> b!1888363 (= res!843268 ((_ is Cons!21075) (t!175156 l3!256)))))

(declare-fun b!1888365 () Bool)

(declare-fun e!1205106 () Bool)

(assert (=> b!1888365 (= e!1205106 (subseq!423 (t!175156 l2!1298) (t!175156 (t!175156 l3!256))))))

(declare-fun b!1888366 () Bool)

(declare-fun e!1205103 () Bool)

(assert (=> b!1888366 (= e!1205103 (subseq!423 l2!1298 (t!175156 (t!175156 l3!256))))))

(declare-fun b!1888364 () Bool)

(assert (=> b!1888364 (= e!1205105 e!1205103)))

(declare-fun res!843267 () Bool)

(assert (=> b!1888364 (=> res!843267 e!1205103)))

(assert (=> b!1888364 (= res!843267 e!1205106)))

(declare-fun res!843265 () Bool)

(assert (=> b!1888364 (=> (not res!843265) (not e!1205106))))

(assert (=> b!1888364 (= res!843265 (= (h!26476 l2!1298) (h!26476 (t!175156 l3!256))))))

(declare-fun d!578392 () Bool)

(declare-fun res!843266 () Bool)

(assert (=> d!578392 (=> res!843266 e!1205104)))

(assert (=> d!578392 (= res!843266 ((_ is Nil!21075) l2!1298))))

(assert (=> d!578392 (= (subseq!423 l2!1298 (t!175156 l3!256)) e!1205104)))

(assert (= (and d!578392 (not res!843266)) b!1888363))

(assert (= (and b!1888363 res!843268) b!1888364))

(assert (= (and b!1888364 res!843265) b!1888365))

(assert (= (and b!1888364 (not res!843267)) b!1888366))

(declare-fun m!2319831 () Bool)

(assert (=> b!1888365 m!2319831))

(declare-fun m!2319833 () Bool)

(assert (=> b!1888366 m!2319833))

(assert (=> b!1888336 d!578392))

(declare-fun b!1888371 () Bool)

(declare-fun e!1205112 () Bool)

(declare-fun e!1205113 () Bool)

(assert (=> b!1888371 (= e!1205112 e!1205113)))

(declare-fun res!843276 () Bool)

(assert (=> b!1888371 (=> (not res!843276) (not e!1205113))))

(assert (=> b!1888371 (= res!843276 ((_ is Cons!21075) l3!256))))

(declare-fun b!1888373 () Bool)

(declare-fun e!1205114 () Bool)

(assert (=> b!1888373 (= e!1205114 (subseq!423 (t!175156 l2!1298) (t!175156 l3!256)))))

(declare-fun b!1888374 () Bool)

(declare-fun e!1205111 () Bool)

(assert (=> b!1888374 (= e!1205111 (subseq!423 l2!1298 (t!175156 l3!256)))))

(declare-fun b!1888372 () Bool)

(assert (=> b!1888372 (= e!1205113 e!1205111)))

(declare-fun res!843275 () Bool)

(assert (=> b!1888372 (=> res!843275 e!1205111)))

(assert (=> b!1888372 (= res!843275 e!1205114)))

(declare-fun res!843273 () Bool)

(assert (=> b!1888372 (=> (not res!843273) (not e!1205114))))

(assert (=> b!1888372 (= res!843273 (= (h!26476 l2!1298) (h!26476 l3!256)))))

(declare-fun d!578396 () Bool)

(declare-fun res!843274 () Bool)

(assert (=> d!578396 (=> res!843274 e!1205112)))

(assert (=> d!578396 (= res!843274 ((_ is Nil!21075) l2!1298))))

(assert (=> d!578396 (= (subseq!423 l2!1298 l3!256) e!1205112)))

(assert (= (and d!578396 (not res!843274)) b!1888371))

(assert (= (and b!1888371 res!843276) b!1888372))

(assert (= (and b!1888372 res!843273) b!1888373))

(assert (= (and b!1888372 (not res!843275)) b!1888374))

(assert (=> b!1888373 m!2319809))

(assert (=> b!1888374 m!2319813))

(assert (=> b!1888335 d!578396))

(declare-fun b!1888379 () Bool)

(declare-fun e!1205120 () Bool)

(declare-fun e!1205121 () Bool)

(assert (=> b!1888379 (= e!1205120 e!1205121)))

(declare-fun res!843284 () Bool)

(assert (=> b!1888379 (=> (not res!843284) (not e!1205121))))

(assert (=> b!1888379 (= res!843284 ((_ is Cons!21075) (t!175156 l3!256)))))

(declare-fun b!1888381 () Bool)

(declare-fun e!1205122 () Bool)

(assert (=> b!1888381 (= e!1205122 (subseq!423 (t!175156 (t!175156 l2!1298)) (t!175156 (t!175156 l3!256))))))

(declare-fun b!1888382 () Bool)

(declare-fun e!1205119 () Bool)

(assert (=> b!1888382 (= e!1205119 (subseq!423 (t!175156 l2!1298) (t!175156 (t!175156 l3!256))))))

(declare-fun b!1888380 () Bool)

(assert (=> b!1888380 (= e!1205121 e!1205119)))

(declare-fun res!843283 () Bool)

(assert (=> b!1888380 (=> res!843283 e!1205119)))

(assert (=> b!1888380 (= res!843283 e!1205122)))

(declare-fun res!843281 () Bool)

(assert (=> b!1888380 (=> (not res!843281) (not e!1205122))))

(assert (=> b!1888380 (= res!843281 (= (h!26476 (t!175156 l2!1298)) (h!26476 (t!175156 l3!256))))))

(declare-fun d!578400 () Bool)

(declare-fun res!843282 () Bool)

(assert (=> d!578400 (=> res!843282 e!1205120)))

(assert (=> d!578400 (= res!843282 ((_ is Nil!21075) (t!175156 l2!1298)))))

(assert (=> d!578400 (= (subseq!423 (t!175156 l2!1298) (t!175156 l3!256)) e!1205120)))

(assert (= (and d!578400 (not res!843282)) b!1888379))

(assert (= (and b!1888379 res!843284) b!1888380))

(assert (= (and b!1888380 res!843281) b!1888381))

(assert (= (and b!1888380 (not res!843283)) b!1888382))

(declare-fun m!2319841 () Bool)

(assert (=> b!1888381 m!2319841))

(assert (=> b!1888382 m!2319831))

(assert (=> b!1888329 d!578400))

(declare-fun b!1888387 () Bool)

(declare-fun e!1205128 () Bool)

(declare-fun e!1205129 () Bool)

(assert (=> b!1888387 (= e!1205128 e!1205129)))

(declare-fun res!843292 () Bool)

(assert (=> b!1888387 (=> (not res!843292) (not e!1205129))))

(assert (=> b!1888387 (= res!843292 ((_ is Cons!21075) l2!1298))))

(declare-fun b!1888389 () Bool)

(declare-fun e!1205130 () Bool)

(assert (=> b!1888389 (= e!1205130 (subseq!423 (t!175156 l1!1329) (t!175156 l2!1298)))))

(declare-fun b!1888390 () Bool)

(declare-fun e!1205127 () Bool)

(assert (=> b!1888390 (= e!1205127 (subseq!423 l1!1329 (t!175156 l2!1298)))))

(declare-fun b!1888388 () Bool)

(assert (=> b!1888388 (= e!1205129 e!1205127)))

(declare-fun res!843291 () Bool)

(assert (=> b!1888388 (=> res!843291 e!1205127)))

(assert (=> b!1888388 (= res!843291 e!1205130)))

(declare-fun res!843289 () Bool)

(assert (=> b!1888388 (=> (not res!843289) (not e!1205130))))

(assert (=> b!1888388 (= res!843289 (= (h!26476 l1!1329) (h!26476 l2!1298)))))

(declare-fun d!578404 () Bool)

(declare-fun res!843290 () Bool)

(assert (=> d!578404 (=> res!843290 e!1205128)))

(assert (=> d!578404 (= res!843290 ((_ is Nil!21075) l1!1329))))

(assert (=> d!578404 (= (subseq!423 l1!1329 l2!1298) e!1205128)))

(assert (= (and d!578404 (not res!843290)) b!1888387))

(assert (= (and b!1888387 res!843292) b!1888388))

(assert (= (and b!1888388 res!843289) b!1888389))

(assert (= (and b!1888388 (not res!843291)) b!1888390))

(assert (=> b!1888389 m!2319825))

(declare-fun m!2319845 () Bool)

(assert (=> b!1888390 m!2319845))

(assert (=> start!189068 d!578404))

(declare-fun d!578408 () Bool)

(declare-fun lt!723797 () Int)

(assert (=> d!578408 (>= lt!723797 0)))

(declare-fun e!1205139 () Int)

(assert (=> d!578408 (= lt!723797 e!1205139)))

(declare-fun c!308175 () Bool)

(assert (=> d!578408 (= c!308175 ((_ is Nil!21075) (t!175156 l3!256)))))

(assert (=> d!578408 (= (size!16721 (t!175156 l3!256)) lt!723797)))

(declare-fun b!1888403 () Bool)

(assert (=> b!1888403 (= e!1205139 0)))

(declare-fun b!1888405 () Bool)

(assert (=> b!1888405 (= e!1205139 (+ 1 (size!16721 (t!175156 (t!175156 l3!256)))))))

(assert (= (and d!578408 c!308175) b!1888403))

(assert (= (and d!578408 (not c!308175)) b!1888405))

(declare-fun m!2319849 () Bool)

(assert (=> b!1888405 m!2319849))

(assert (=> b!1888333 d!578408))

(declare-fun d!578414 () Bool)

(declare-fun lt!723800 () Int)

(assert (=> d!578414 (>= lt!723800 0)))

(declare-fun e!1205142 () Int)

(assert (=> d!578414 (= lt!723800 e!1205142)))

(declare-fun c!308178 () Bool)

(assert (=> d!578414 (= c!308178 ((_ is Nil!21075) l3!256))))

(assert (=> d!578414 (= (size!16721 l3!256) lt!723800)))

(declare-fun b!1888409 () Bool)

(assert (=> b!1888409 (= e!1205142 0)))

(declare-fun b!1888410 () Bool)

(assert (=> b!1888410 (= e!1205142 (+ 1 (size!16721 (t!175156 l3!256))))))

(assert (= (and d!578414 c!308178) b!1888409))

(assert (= (and d!578414 (not c!308178)) b!1888410))

(assert (=> b!1888410 m!2319815))

(assert (=> b!1888333 d!578414))

(declare-fun d!578418 () Bool)

(declare-fun lt!723802 () Int)

(assert (=> d!578418 (>= lt!723802 0)))

(declare-fun e!1205144 () Int)

(assert (=> d!578418 (= lt!723802 e!1205144)))

(declare-fun c!308180 () Bool)

(assert (=> d!578418 (= c!308180 ((_ is Nil!21075) l2!1298))))

(assert (=> d!578418 (= (size!16721 l2!1298) lt!723802)))

(declare-fun b!1888413 () Bool)

(assert (=> b!1888413 (= e!1205144 0)))

(declare-fun b!1888414 () Bool)

(assert (=> b!1888414 (= e!1205144 (+ 1 (size!16721 (t!175156 l2!1298))))))

(assert (= (and d!578418 c!308180) b!1888413))

(assert (= (and d!578418 (not c!308180)) b!1888414))

(declare-fun m!2319853 () Bool)

(assert (=> b!1888414 m!2319853))

(assert (=> b!1888333 d!578418))

(declare-fun d!578422 () Bool)

(declare-fun lt!723804 () Int)

(assert (=> d!578422 (>= lt!723804 0)))

(declare-fun e!1205146 () Int)

(assert (=> d!578422 (= lt!723804 e!1205146)))

(declare-fun c!308182 () Bool)

(assert (=> d!578422 (= c!308182 ((_ is Nil!21075) l1!1329))))

(assert (=> d!578422 (= (size!16721 l1!1329) lt!723804)))

(declare-fun b!1888417 () Bool)

(assert (=> b!1888417 (= e!1205146 0)))

(declare-fun b!1888418 () Bool)

(assert (=> b!1888418 (= e!1205146 (+ 1 (size!16721 (t!175156 l1!1329))))))

(assert (= (and d!578422 c!308182) b!1888417))

(assert (= (and d!578422 (not c!308182)) b!1888418))

(declare-fun m!2319857 () Bool)

(assert (=> b!1888418 m!2319857))

(assert (=> b!1888333 d!578422))

(declare-fun b!1888427 () Bool)

(declare-fun e!1205151 () Bool)

(declare-fun tp!538359 () Bool)

(assert (=> b!1888427 (= e!1205151 (and tp_is_empty!9013 tp!538359))))

(assert (=> b!1888332 (= tp!538354 e!1205151)))

(assert (= (and b!1888332 ((_ is Cons!21075) (t!175156 l3!256))) b!1888427))

(declare-fun b!1888430 () Bool)

(declare-fun e!1205154 () Bool)

(declare-fun tp!538362 () Bool)

(assert (=> b!1888430 (= e!1205154 (and tp_is_empty!9013 tp!538362))))

(assert (=> b!1888330 (= tp!538353 e!1205154)))

(assert (= (and b!1888330 ((_ is Cons!21075) (t!175156 l2!1298))) b!1888430))

(declare-fun b!1888432 () Bool)

(declare-fun e!1205156 () Bool)

(declare-fun tp!538364 () Bool)

(assert (=> b!1888432 (= e!1205156 (and tp_is_empty!9013 tp!538364))))

(assert (=> b!1888338 (= tp!538352 e!1205156)))

(assert (= (and b!1888338 ((_ is Cons!21075) (t!175156 l1!1329))) b!1888432))

(check-sat (not b!1888374) (not b!1888366) (not b!1888373) (not b!1888427) (not b!1888357) (not b!1888358) (not b!1888381) (not b!1888390) tp_is_empty!9013 (not b!1888389) (not b!1888414) (not b!1888430) (not b!1888382) (not b!1888432) (not b!1888410) (not b!1888365) (not b!1888418) (not b!1888405))
(check-sat)
