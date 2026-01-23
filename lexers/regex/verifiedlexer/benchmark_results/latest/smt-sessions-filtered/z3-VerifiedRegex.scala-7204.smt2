; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384212 () Bool)

(assert start!384212)

(declare-fun b!4071161 () Bool)

(declare-fun res!1662397 () Bool)

(declare-fun e!2526628 () Bool)

(assert (=> b!4071161 (=> (not res!1662397) (not e!2526628))))

(declare-datatypes ((B!2605 0))(
  ( (B!2606 (val!14088 Int)) )
))
(declare-datatypes ((List!43611 0))(
  ( (Nil!43487) (Cons!43487 (h!48907 B!2605) (t!337058 List!43611)) )
))
(declare-fun p!1991 () List!43611)

(get-info :version)

(assert (=> b!4071161 (= res!1662397 ((_ is Cons!43487) p!1991))))

(declare-fun b!4071162 () Bool)

(declare-fun l!3332 () List!43611)

(declare-fun isPrefix!4083 (List!43611 List!43611) Bool)

(declare-fun tail!6329 (List!43611) List!43611)

(assert (=> b!4071162 (= e!2526628 (not (isPrefix!4083 (t!337058 p!1991) (tail!6329 l!3332))))))

(declare-fun b!4071163 () Bool)

(declare-fun e!2526626 () Bool)

(declare-fun tp_is_empty!20773 () Bool)

(declare-fun tp!1231933 () Bool)

(assert (=> b!4071163 (= e!2526626 (and tp_is_empty!20773 tp!1231933))))

(declare-fun b!4071164 () Bool)

(declare-fun e!2526627 () Bool)

(declare-fun tp!1231934 () Bool)

(assert (=> b!4071164 (= e!2526627 (and tp_is_empty!20773 tp!1231934))))

(declare-fun res!1662398 () Bool)

(assert (=> start!384212 (=> (not res!1662398) (not e!2526628))))

(assert (=> start!384212 (= res!1662398 (isPrefix!4083 p!1991 l!3332))))

(assert (=> start!384212 e!2526628))

(assert (=> start!384212 e!2526626))

(assert (=> start!384212 e!2526627))

(assert (= (and start!384212 res!1662398) b!4071161))

(assert (= (and b!4071161 res!1662397) b!4071162))

(assert (= (and start!384212 ((_ is Cons!43487) p!1991)) b!4071163))

(assert (= (and start!384212 ((_ is Cons!43487) l!3332)) b!4071164))

(declare-fun m!4680407 () Bool)

(assert (=> b!4071162 m!4680407))

(assert (=> b!4071162 m!4680407))

(declare-fun m!4680409 () Bool)

(assert (=> b!4071162 m!4680409))

(declare-fun m!4680411 () Bool)

(assert (=> start!384212 m!4680411))

(check-sat (not b!4071164) (not b!4071163) tp_is_empty!20773 (not b!4071162) (not start!384212))
(check-sat)
(get-model)

(declare-fun b!4071195 () Bool)

(declare-fun e!2526652 () Bool)

(declare-fun e!2526653 () Bool)

(assert (=> b!4071195 (= e!2526652 e!2526653)))

(declare-fun res!1662426 () Bool)

(assert (=> b!4071195 (=> (not res!1662426) (not e!2526653))))

(assert (=> b!4071195 (= res!1662426 (not ((_ is Nil!43487) (tail!6329 l!3332))))))

(declare-fun b!4071196 () Bool)

(declare-fun res!1662424 () Bool)

(assert (=> b!4071196 (=> (not res!1662424) (not e!2526653))))

(declare-fun head!8595 (List!43611) B!2605)

(assert (=> b!4071196 (= res!1662424 (= (head!8595 (t!337058 p!1991)) (head!8595 (tail!6329 l!3332))))))

(declare-fun b!4071198 () Bool)

(declare-fun e!2526651 () Bool)

(declare-fun size!32512 (List!43611) Int)

(assert (=> b!4071198 (= e!2526651 (>= (size!32512 (tail!6329 l!3332)) (size!32512 (t!337058 p!1991))))))

(declare-fun b!4071197 () Bool)

(assert (=> b!4071197 (= e!2526653 (isPrefix!4083 (tail!6329 (t!337058 p!1991)) (tail!6329 (tail!6329 l!3332))))))

(declare-fun d!1210111 () Bool)

(assert (=> d!1210111 e!2526651))

(declare-fun res!1662425 () Bool)

(assert (=> d!1210111 (=> res!1662425 e!2526651)))

(declare-fun lt!1457440 () Bool)

(assert (=> d!1210111 (= res!1662425 (not lt!1457440))))

(assert (=> d!1210111 (= lt!1457440 e!2526652)))

(declare-fun res!1662423 () Bool)

(assert (=> d!1210111 (=> res!1662423 e!2526652)))

(assert (=> d!1210111 (= res!1662423 ((_ is Nil!43487) (t!337058 p!1991)))))

(assert (=> d!1210111 (= (isPrefix!4083 (t!337058 p!1991) (tail!6329 l!3332)) lt!1457440)))

(assert (= (and d!1210111 (not res!1662423)) b!4071195))

(assert (= (and b!4071195 res!1662426) b!4071196))

(assert (= (and b!4071196 res!1662424) b!4071197))

(assert (= (and d!1210111 (not res!1662425)) b!4071198))

(declare-fun m!4680439 () Bool)

(assert (=> b!4071196 m!4680439))

(assert (=> b!4071196 m!4680407))

(declare-fun m!4680441 () Bool)

(assert (=> b!4071196 m!4680441))

(assert (=> b!4071198 m!4680407))

(declare-fun m!4680443 () Bool)

(assert (=> b!4071198 m!4680443))

(declare-fun m!4680445 () Bool)

(assert (=> b!4071198 m!4680445))

(declare-fun m!4680447 () Bool)

(assert (=> b!4071197 m!4680447))

(assert (=> b!4071197 m!4680407))

(declare-fun m!4680449 () Bool)

(assert (=> b!4071197 m!4680449))

(assert (=> b!4071197 m!4680447))

(assert (=> b!4071197 m!4680449))

(declare-fun m!4680451 () Bool)

(assert (=> b!4071197 m!4680451))

(assert (=> b!4071162 d!1210111))

(declare-fun d!1210117 () Bool)

(assert (=> d!1210117 (= (tail!6329 l!3332) (t!337058 l!3332))))

(assert (=> b!4071162 d!1210117))

(declare-fun b!4071199 () Bool)

(declare-fun e!2526655 () Bool)

(declare-fun e!2526656 () Bool)

(assert (=> b!4071199 (= e!2526655 e!2526656)))

(declare-fun res!1662430 () Bool)

(assert (=> b!4071199 (=> (not res!1662430) (not e!2526656))))

(assert (=> b!4071199 (= res!1662430 (not ((_ is Nil!43487) l!3332)))))

(declare-fun b!4071200 () Bool)

(declare-fun res!1662428 () Bool)

(assert (=> b!4071200 (=> (not res!1662428) (not e!2526656))))

(assert (=> b!4071200 (= res!1662428 (= (head!8595 p!1991) (head!8595 l!3332)))))

(declare-fun b!4071202 () Bool)

(declare-fun e!2526654 () Bool)

(assert (=> b!4071202 (= e!2526654 (>= (size!32512 l!3332) (size!32512 p!1991)))))

(declare-fun b!4071201 () Bool)

(assert (=> b!4071201 (= e!2526656 (isPrefix!4083 (tail!6329 p!1991) (tail!6329 l!3332)))))

(declare-fun d!1210119 () Bool)

(assert (=> d!1210119 e!2526654))

(declare-fun res!1662429 () Bool)

(assert (=> d!1210119 (=> res!1662429 e!2526654)))

(declare-fun lt!1457441 () Bool)

(assert (=> d!1210119 (= res!1662429 (not lt!1457441))))

(assert (=> d!1210119 (= lt!1457441 e!2526655)))

(declare-fun res!1662427 () Bool)

(assert (=> d!1210119 (=> res!1662427 e!2526655)))

(assert (=> d!1210119 (= res!1662427 ((_ is Nil!43487) p!1991))))

(assert (=> d!1210119 (= (isPrefix!4083 p!1991 l!3332) lt!1457441)))

(assert (= (and d!1210119 (not res!1662427)) b!4071199))

(assert (= (and b!4071199 res!1662430) b!4071200))

(assert (= (and b!4071200 res!1662428) b!4071201))

(assert (= (and d!1210119 (not res!1662429)) b!4071202))

(declare-fun m!4680453 () Bool)

(assert (=> b!4071200 m!4680453))

(declare-fun m!4680455 () Bool)

(assert (=> b!4071200 m!4680455))

(declare-fun m!4680457 () Bool)

(assert (=> b!4071202 m!4680457))

(declare-fun m!4680459 () Bool)

(assert (=> b!4071202 m!4680459))

(declare-fun m!4680461 () Bool)

(assert (=> b!4071201 m!4680461))

(assert (=> b!4071201 m!4680407))

(assert (=> b!4071201 m!4680461))

(assert (=> b!4071201 m!4680407))

(declare-fun m!4680463 () Bool)

(assert (=> b!4071201 m!4680463))

(assert (=> start!384212 d!1210119))

(declare-fun b!4071207 () Bool)

(declare-fun e!2526659 () Bool)

(declare-fun tp!1231941 () Bool)

(assert (=> b!4071207 (= e!2526659 (and tp_is_empty!20773 tp!1231941))))

(assert (=> b!4071164 (= tp!1231934 e!2526659)))

(assert (= (and b!4071164 ((_ is Cons!43487) (t!337058 l!3332))) b!4071207))

(declare-fun b!4071208 () Bool)

(declare-fun e!2526660 () Bool)

(declare-fun tp!1231942 () Bool)

(assert (=> b!4071208 (= e!2526660 (and tp_is_empty!20773 tp!1231942))))

(assert (=> b!4071163 (= tp!1231933 e!2526660)))

(assert (= (and b!4071163 ((_ is Cons!43487) (t!337058 p!1991))) b!4071208))

(check-sat (not b!4071200) (not b!4071208) (not b!4071198) (not b!4071201) (not b!4071207) (not b!4071202) tp_is_empty!20773 (not b!4071196) (not b!4071197))
(check-sat)
(get-model)

(declare-fun d!1210137 () Bool)

(declare-fun lt!1457452 () Int)

(assert (=> d!1210137 (>= lt!1457452 0)))

(declare-fun e!2526677 () Int)

(assert (=> d!1210137 (= lt!1457452 e!2526677)))

(declare-fun c!702704 () Bool)

(assert (=> d!1210137 (= c!702704 ((_ is Nil!43487) l!3332))))

(assert (=> d!1210137 (= (size!32512 l!3332) lt!1457452)))

(declare-fun b!4071235 () Bool)

(assert (=> b!4071235 (= e!2526677 0)))

(declare-fun b!4071236 () Bool)

(assert (=> b!4071236 (= e!2526677 (+ 1 (size!32512 (t!337058 l!3332))))))

(assert (= (and d!1210137 c!702704) b!4071235))

(assert (= (and d!1210137 (not c!702704)) b!4071236))

(declare-fun m!4680493 () Bool)

(assert (=> b!4071236 m!4680493))

(assert (=> b!4071202 d!1210137))

(declare-fun d!1210149 () Bool)

(declare-fun lt!1457453 () Int)

(assert (=> d!1210149 (>= lt!1457453 0)))

(declare-fun e!2526678 () Int)

(assert (=> d!1210149 (= lt!1457453 e!2526678)))

(declare-fun c!702705 () Bool)

(assert (=> d!1210149 (= c!702705 ((_ is Nil!43487) p!1991))))

(assert (=> d!1210149 (= (size!32512 p!1991) lt!1457453)))

(declare-fun b!4071237 () Bool)

(assert (=> b!4071237 (= e!2526678 0)))

(declare-fun b!4071238 () Bool)

(assert (=> b!4071238 (= e!2526678 (+ 1 (size!32512 (t!337058 p!1991))))))

(assert (= (and d!1210149 c!702705) b!4071237))

(assert (= (and d!1210149 (not c!702705)) b!4071238))

(assert (=> b!4071238 m!4680445))

(assert (=> b!4071202 d!1210149))

(declare-fun d!1210151 () Bool)

(declare-fun lt!1457454 () Int)

(assert (=> d!1210151 (>= lt!1457454 0)))

(declare-fun e!2526679 () Int)

(assert (=> d!1210151 (= lt!1457454 e!2526679)))

(declare-fun c!702706 () Bool)

(assert (=> d!1210151 (= c!702706 ((_ is Nil!43487) (tail!6329 l!3332)))))

(assert (=> d!1210151 (= (size!32512 (tail!6329 l!3332)) lt!1457454)))

(declare-fun b!4071239 () Bool)

(assert (=> b!4071239 (= e!2526679 0)))

(declare-fun b!4071240 () Bool)

(assert (=> b!4071240 (= e!2526679 (+ 1 (size!32512 (t!337058 (tail!6329 l!3332)))))))

(assert (= (and d!1210151 c!702706) b!4071239))

(assert (= (and d!1210151 (not c!702706)) b!4071240))

(declare-fun m!4680495 () Bool)

(assert (=> b!4071240 m!4680495))

(assert (=> b!4071198 d!1210151))

(declare-fun d!1210153 () Bool)

(declare-fun lt!1457455 () Int)

(assert (=> d!1210153 (>= lt!1457455 0)))

(declare-fun e!2526680 () Int)

(assert (=> d!1210153 (= lt!1457455 e!2526680)))

(declare-fun c!702707 () Bool)

(assert (=> d!1210153 (= c!702707 ((_ is Nil!43487) (t!337058 p!1991)))))

(assert (=> d!1210153 (= (size!32512 (t!337058 p!1991)) lt!1457455)))

(declare-fun b!4071241 () Bool)

(assert (=> b!4071241 (= e!2526680 0)))

(declare-fun b!4071242 () Bool)

(assert (=> b!4071242 (= e!2526680 (+ 1 (size!32512 (t!337058 (t!337058 p!1991)))))))

(assert (= (and d!1210153 c!702707) b!4071241))

(assert (= (and d!1210153 (not c!702707)) b!4071242))

(declare-fun m!4680497 () Bool)

(assert (=> b!4071242 m!4680497))

(assert (=> b!4071198 d!1210153))

(declare-fun b!4071243 () Bool)

(declare-fun e!2526682 () Bool)

(declare-fun e!2526683 () Bool)

(assert (=> b!4071243 (= e!2526682 e!2526683)))

(declare-fun res!1662442 () Bool)

(assert (=> b!4071243 (=> (not res!1662442) (not e!2526683))))

(assert (=> b!4071243 (= res!1662442 (not ((_ is Nil!43487) (tail!6329 l!3332))))))

(declare-fun b!4071244 () Bool)

(declare-fun res!1662440 () Bool)

(assert (=> b!4071244 (=> (not res!1662440) (not e!2526683))))

(assert (=> b!4071244 (= res!1662440 (= (head!8595 (tail!6329 p!1991)) (head!8595 (tail!6329 l!3332))))))

(declare-fun b!4071246 () Bool)

(declare-fun e!2526681 () Bool)

(assert (=> b!4071246 (= e!2526681 (>= (size!32512 (tail!6329 l!3332)) (size!32512 (tail!6329 p!1991))))))

(declare-fun b!4071245 () Bool)

(assert (=> b!4071245 (= e!2526683 (isPrefix!4083 (tail!6329 (tail!6329 p!1991)) (tail!6329 (tail!6329 l!3332))))))

(declare-fun d!1210155 () Bool)

(assert (=> d!1210155 e!2526681))

(declare-fun res!1662441 () Bool)

(assert (=> d!1210155 (=> res!1662441 e!2526681)))

(declare-fun lt!1457456 () Bool)

(assert (=> d!1210155 (= res!1662441 (not lt!1457456))))

(assert (=> d!1210155 (= lt!1457456 e!2526682)))

(declare-fun res!1662439 () Bool)

(assert (=> d!1210155 (=> res!1662439 e!2526682)))

(assert (=> d!1210155 (= res!1662439 ((_ is Nil!43487) (tail!6329 p!1991)))))

(assert (=> d!1210155 (= (isPrefix!4083 (tail!6329 p!1991) (tail!6329 l!3332)) lt!1457456)))

(assert (= (and d!1210155 (not res!1662439)) b!4071243))

(assert (= (and b!4071243 res!1662442) b!4071244))

(assert (= (and b!4071244 res!1662440) b!4071245))

(assert (= (and d!1210155 (not res!1662441)) b!4071246))

(assert (=> b!4071244 m!4680461))

(declare-fun m!4680499 () Bool)

(assert (=> b!4071244 m!4680499))

(assert (=> b!4071244 m!4680407))

(assert (=> b!4071244 m!4680441))

(assert (=> b!4071246 m!4680407))

(assert (=> b!4071246 m!4680443))

(assert (=> b!4071246 m!4680461))

(declare-fun m!4680501 () Bool)

(assert (=> b!4071246 m!4680501))

(assert (=> b!4071245 m!4680461))

(declare-fun m!4680503 () Bool)

(assert (=> b!4071245 m!4680503))

(assert (=> b!4071245 m!4680407))

(assert (=> b!4071245 m!4680449))

(assert (=> b!4071245 m!4680503))

(assert (=> b!4071245 m!4680449))

(declare-fun m!4680505 () Bool)

(assert (=> b!4071245 m!4680505))

(assert (=> b!4071201 d!1210155))

(declare-fun d!1210157 () Bool)

(assert (=> d!1210157 (= (tail!6329 p!1991) (t!337058 p!1991))))

(assert (=> b!4071201 d!1210157))

(assert (=> b!4071201 d!1210117))

(declare-fun b!4071247 () Bool)

(declare-fun e!2526685 () Bool)

(declare-fun e!2526686 () Bool)

(assert (=> b!4071247 (= e!2526685 e!2526686)))

(declare-fun res!1662446 () Bool)

(assert (=> b!4071247 (=> (not res!1662446) (not e!2526686))))

(assert (=> b!4071247 (= res!1662446 (not ((_ is Nil!43487) (tail!6329 (tail!6329 l!3332)))))))

(declare-fun b!4071248 () Bool)

(declare-fun res!1662444 () Bool)

(assert (=> b!4071248 (=> (not res!1662444) (not e!2526686))))

(assert (=> b!4071248 (= res!1662444 (= (head!8595 (tail!6329 (t!337058 p!1991))) (head!8595 (tail!6329 (tail!6329 l!3332)))))))

(declare-fun b!4071250 () Bool)

(declare-fun e!2526684 () Bool)

(assert (=> b!4071250 (= e!2526684 (>= (size!32512 (tail!6329 (tail!6329 l!3332))) (size!32512 (tail!6329 (t!337058 p!1991)))))))

(declare-fun b!4071249 () Bool)

(assert (=> b!4071249 (= e!2526686 (isPrefix!4083 (tail!6329 (tail!6329 (t!337058 p!1991))) (tail!6329 (tail!6329 (tail!6329 l!3332)))))))

(declare-fun d!1210159 () Bool)

(assert (=> d!1210159 e!2526684))

(declare-fun res!1662445 () Bool)

(assert (=> d!1210159 (=> res!1662445 e!2526684)))

(declare-fun lt!1457457 () Bool)

(assert (=> d!1210159 (= res!1662445 (not lt!1457457))))

(assert (=> d!1210159 (= lt!1457457 e!2526685)))

(declare-fun res!1662443 () Bool)

(assert (=> d!1210159 (=> res!1662443 e!2526685)))

(assert (=> d!1210159 (= res!1662443 ((_ is Nil!43487) (tail!6329 (t!337058 p!1991))))))

(assert (=> d!1210159 (= (isPrefix!4083 (tail!6329 (t!337058 p!1991)) (tail!6329 (tail!6329 l!3332))) lt!1457457)))

(assert (= (and d!1210159 (not res!1662443)) b!4071247))

(assert (= (and b!4071247 res!1662446) b!4071248))

(assert (= (and b!4071248 res!1662444) b!4071249))

(assert (= (and d!1210159 (not res!1662445)) b!4071250))

(assert (=> b!4071248 m!4680447))

(declare-fun m!4680507 () Bool)

(assert (=> b!4071248 m!4680507))

(assert (=> b!4071248 m!4680449))

(declare-fun m!4680509 () Bool)

(assert (=> b!4071248 m!4680509))

(assert (=> b!4071250 m!4680449))

(declare-fun m!4680511 () Bool)

(assert (=> b!4071250 m!4680511))

(assert (=> b!4071250 m!4680447))

(declare-fun m!4680513 () Bool)

(assert (=> b!4071250 m!4680513))

(assert (=> b!4071249 m!4680447))

(declare-fun m!4680515 () Bool)

(assert (=> b!4071249 m!4680515))

(assert (=> b!4071249 m!4680449))

(declare-fun m!4680517 () Bool)

(assert (=> b!4071249 m!4680517))

(assert (=> b!4071249 m!4680515))

(assert (=> b!4071249 m!4680517))

(declare-fun m!4680519 () Bool)

(assert (=> b!4071249 m!4680519))

(assert (=> b!4071197 d!1210159))

(declare-fun d!1210161 () Bool)

(assert (=> d!1210161 (= (tail!6329 (t!337058 p!1991)) (t!337058 (t!337058 p!1991)))))

(assert (=> b!4071197 d!1210161))

(declare-fun d!1210163 () Bool)

(assert (=> d!1210163 (= (tail!6329 (tail!6329 l!3332)) (t!337058 (tail!6329 l!3332)))))

(assert (=> b!4071197 d!1210163))

(declare-fun d!1210165 () Bool)

(assert (=> d!1210165 (= (head!8595 p!1991) (h!48907 p!1991))))

(assert (=> b!4071200 d!1210165))

(declare-fun d!1210167 () Bool)

(assert (=> d!1210167 (= (head!8595 l!3332) (h!48907 l!3332))))

(assert (=> b!4071200 d!1210167))

(declare-fun d!1210169 () Bool)

(assert (=> d!1210169 (= (head!8595 (t!337058 p!1991)) (h!48907 (t!337058 p!1991)))))

(assert (=> b!4071196 d!1210169))

(declare-fun d!1210171 () Bool)

(assert (=> d!1210171 (= (head!8595 (tail!6329 l!3332)) (h!48907 (tail!6329 l!3332)))))

(assert (=> b!4071196 d!1210171))

(declare-fun b!4071251 () Bool)

(declare-fun e!2526687 () Bool)

(declare-fun tp!1231945 () Bool)

(assert (=> b!4071251 (= e!2526687 (and tp_is_empty!20773 tp!1231945))))

(assert (=> b!4071208 (= tp!1231942 e!2526687)))

(assert (= (and b!4071208 ((_ is Cons!43487) (t!337058 (t!337058 p!1991)))) b!4071251))

(declare-fun b!4071252 () Bool)

(declare-fun e!2526688 () Bool)

(declare-fun tp!1231946 () Bool)

(assert (=> b!4071252 (= e!2526688 (and tp_is_empty!20773 tp!1231946))))

(assert (=> b!4071207 (= tp!1231941 e!2526688)))

(assert (= (and b!4071207 ((_ is Cons!43487) (t!337058 (t!337058 l!3332)))) b!4071252))

(check-sat (not b!4071250) (not b!4071240) (not b!4071252) (not b!4071238) (not b!4071244) (not b!4071251) (not b!4071242) tp_is_empty!20773 (not b!4071249) (not b!4071246) (not b!4071236) (not b!4071248) (not b!4071245))
(check-sat)
