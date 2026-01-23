; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215542 () Bool)

(assert start!215542)

(declare-fun res!950798 () Bool)

(declare-fun e!1412776 () Bool)

(assert (=> start!215542 (=> (not res!950798) (not e!1412776))))

(declare-datatypes ((T!40606 0))(
  ( (T!40607 (val!7386 Int)) )
))
(declare-datatypes ((List!25950 0))(
  ( (Nil!25866) (Cons!25866 (h!31267 T!40606) (t!198694 List!25950)) )
))
(declare-datatypes ((IArray!16931 0))(
  ( (IArray!16932 (innerList!8523 List!25950)) )
))
(declare-datatypes ((Conc!8463 0))(
  ( (Node!8463 (left!19897 Conc!8463) (right!20227 Conc!8463) (csize!17156 Int) (cheight!8674 Int)) (Leaf!12394 (xs!11405 IArray!16931) (csize!17157 Int)) (Empty!8463) )
))
(declare-fun t!4663 () Conc!8463)

(declare-fun isBalanced!2621 (Conc!8463) Bool)

(assert (=> start!215542 (= res!950798 (isBalanced!2621 t!4663))))

(assert (=> start!215542 e!1412776))

(declare-fun e!1412775 () Bool)

(declare-fun inv!35041 (Conc!8463) Bool)

(assert (=> start!215542 (and (inv!35041 t!4663) e!1412775)))

(declare-fun b!2212278 () Bool)

(declare-fun e!1412777 () Bool)

(declare-fun tp!687479 () Bool)

(assert (=> b!2212278 (= e!1412777 tp!687479)))

(declare-fun b!2212279 () Bool)

(declare-fun res!950799 () Bool)

(assert (=> b!2212279 (=> (not res!950799) (not e!1412776))))

(declare-fun isEmpty!14815 (Conc!8463) Bool)

(assert (=> b!2212279 (= res!950799 (not (isEmpty!14815 t!4663)))))

(declare-fun b!2212280 () Bool)

(declare-fun inv!35042 (IArray!16931) Bool)

(assert (=> b!2212280 (= e!1412775 (and (inv!35042 (xs!11405 t!4663)) e!1412777))))

(declare-fun b!2212281 () Bool)

(declare-fun head!4726 (Conc!8463) T!40606)

(declare-fun head!4727 (List!25950) T!40606)

(declare-fun list!10040 (Conc!8463) List!25950)

(assert (=> b!2212281 (= e!1412776 (not (= (head!4726 (left!19897 t!4663)) (head!4727 (list!10040 t!4663)))))))

(declare-fun b!2212282 () Bool)

(declare-fun res!950797 () Bool)

(assert (=> b!2212282 (=> (not res!950797) (not e!1412776))))

(get-info :version)

(assert (=> b!2212282 (= res!950797 (and (not ((_ is Leaf!12394) t!4663)) ((_ is Node!8463) t!4663)))))

(declare-fun tp!687478 () Bool)

(declare-fun tp!687480 () Bool)

(declare-fun b!2212283 () Bool)

(assert (=> b!2212283 (= e!1412775 (and (inv!35041 (left!19897 t!4663)) tp!687480 (inv!35041 (right!20227 t!4663)) tp!687478))))

(assert (= (and start!215542 res!950798) b!2212279))

(assert (= (and b!2212279 res!950799) b!2212282))

(assert (= (and b!2212282 res!950797) b!2212281))

(assert (= (and start!215542 ((_ is Node!8463) t!4663)) b!2212283))

(assert (= b!2212280 b!2212278))

(assert (= (and start!215542 ((_ is Leaf!12394) t!4663)) b!2212280))

(declare-fun m!2654265 () Bool)

(assert (=> b!2212280 m!2654265))

(declare-fun m!2654267 () Bool)

(assert (=> b!2212279 m!2654267))

(declare-fun m!2654269 () Bool)

(assert (=> start!215542 m!2654269))

(declare-fun m!2654271 () Bool)

(assert (=> start!215542 m!2654271))

(declare-fun m!2654273 () Bool)

(assert (=> b!2212281 m!2654273))

(declare-fun m!2654275 () Bool)

(assert (=> b!2212281 m!2654275))

(assert (=> b!2212281 m!2654275))

(declare-fun m!2654277 () Bool)

(assert (=> b!2212281 m!2654277))

(declare-fun m!2654279 () Bool)

(assert (=> b!2212283 m!2654279))

(declare-fun m!2654281 () Bool)

(assert (=> b!2212283 m!2654281))

(check-sat (not b!2212280) (not b!2212283) (not b!2212279) (not b!2212281) (not b!2212278) (not start!215542))
(check-sat)
(get-model)

(declare-fun d!661377 () Bool)

(declare-fun size!20183 (List!25950) Int)

(assert (=> d!661377 (= (inv!35042 (xs!11405 t!4663)) (<= (size!20183 (innerList!8523 (xs!11405 t!4663))) 2147483647))))

(declare-fun bs!451473 () Bool)

(assert (= bs!451473 d!661377))

(declare-fun m!2654283 () Bool)

(assert (=> bs!451473 m!2654283))

(assert (=> b!2212280 d!661377))

(declare-fun d!661381 () Bool)

(declare-fun lt!826547 () Bool)

(declare-fun isEmpty!14816 (List!25950) Bool)

(assert (=> d!661381 (= lt!826547 (isEmpty!14816 (list!10040 t!4663)))))

(declare-fun size!20184 (Conc!8463) Int)

(assert (=> d!661381 (= lt!826547 (= (size!20184 t!4663) 0))))

(assert (=> d!661381 (= (isEmpty!14815 t!4663) lt!826547)))

(declare-fun bs!451474 () Bool)

(assert (= bs!451474 d!661381))

(assert (=> bs!451474 m!2654275))

(assert (=> bs!451474 m!2654275))

(declare-fun m!2654285 () Bool)

(assert (=> bs!451474 m!2654285))

(declare-fun m!2654287 () Bool)

(assert (=> bs!451474 m!2654287))

(assert (=> b!2212279 d!661381))

(declare-fun d!661383 () Bool)

(declare-fun c!353577 () Bool)

(assert (=> d!661383 (= c!353577 ((_ is Node!8463) (left!19897 t!4663)))))

(declare-fun e!1412785 () Bool)

(assert (=> d!661383 (= (inv!35041 (left!19897 t!4663)) e!1412785)))

(declare-fun b!2212296 () Bool)

(declare-fun inv!35043 (Conc!8463) Bool)

(assert (=> b!2212296 (= e!1412785 (inv!35043 (left!19897 t!4663)))))

(declare-fun b!2212297 () Bool)

(declare-fun e!1412786 () Bool)

(assert (=> b!2212297 (= e!1412785 e!1412786)))

(declare-fun res!950802 () Bool)

(assert (=> b!2212297 (= res!950802 (not ((_ is Leaf!12394) (left!19897 t!4663))))))

(assert (=> b!2212297 (=> res!950802 e!1412786)))

(declare-fun b!2212298 () Bool)

(declare-fun inv!35044 (Conc!8463) Bool)

(assert (=> b!2212298 (= e!1412786 (inv!35044 (left!19897 t!4663)))))

(assert (= (and d!661383 c!353577) b!2212296))

(assert (= (and d!661383 (not c!353577)) b!2212297))

(assert (= (and b!2212297 (not res!950802)) b!2212298))

(declare-fun m!2654299 () Bool)

(assert (=> b!2212296 m!2654299))

(declare-fun m!2654301 () Bool)

(assert (=> b!2212298 m!2654301))

(assert (=> b!2212283 d!661383))

(declare-fun d!661389 () Bool)

(declare-fun c!353578 () Bool)

(assert (=> d!661389 (= c!353578 ((_ is Node!8463) (right!20227 t!4663)))))

(declare-fun e!1412787 () Bool)

(assert (=> d!661389 (= (inv!35041 (right!20227 t!4663)) e!1412787)))

(declare-fun b!2212299 () Bool)

(assert (=> b!2212299 (= e!1412787 (inv!35043 (right!20227 t!4663)))))

(declare-fun b!2212300 () Bool)

(declare-fun e!1412788 () Bool)

(assert (=> b!2212300 (= e!1412787 e!1412788)))

(declare-fun res!950803 () Bool)

(assert (=> b!2212300 (= res!950803 (not ((_ is Leaf!12394) (right!20227 t!4663))))))

(assert (=> b!2212300 (=> res!950803 e!1412788)))

(declare-fun b!2212301 () Bool)

(assert (=> b!2212301 (= e!1412788 (inv!35044 (right!20227 t!4663)))))

(assert (= (and d!661389 c!353578) b!2212299))

(assert (= (and d!661389 (not c!353578)) b!2212300))

(assert (= (and b!2212300 (not res!950803)) b!2212301))

(declare-fun m!2654303 () Bool)

(assert (=> b!2212299 m!2654303))

(declare-fun m!2654305 () Bool)

(assert (=> b!2212301 m!2654305))

(assert (=> b!2212283 d!661389))

(declare-fun d!661391 () Bool)

(declare-fun lt!826553 () T!40606)

(assert (=> d!661391 (= lt!826553 (head!4727 (list!10040 (left!19897 t!4663))))))

(declare-fun e!1412797 () T!40606)

(assert (=> d!661391 (= lt!826553 e!1412797)))

(declare-fun c!353587 () Bool)

(assert (=> d!661391 (= c!353587 ((_ is Leaf!12394) (left!19897 t!4663)))))

(assert (=> d!661391 (isBalanced!2621 (left!19897 t!4663))))

(assert (=> d!661391 (= (head!4726 (left!19897 t!4663)) lt!826553)))

(declare-fun b!2212318 () Bool)

(declare-fun apply!6411 (IArray!16931 Int) T!40606)

(assert (=> b!2212318 (= e!1412797 (apply!6411 (xs!11405 (left!19897 t!4663)) 0))))

(declare-fun b!2212319 () Bool)

(assert (=> b!2212319 (= e!1412797 (head!4726 (left!19897 (left!19897 t!4663))))))

(assert (= (and d!661391 c!353587) b!2212318))

(assert (= (and d!661391 (not c!353587)) b!2212319))

(declare-fun m!2654313 () Bool)

(assert (=> d!661391 m!2654313))

(assert (=> d!661391 m!2654313))

(declare-fun m!2654315 () Bool)

(assert (=> d!661391 m!2654315))

(declare-fun m!2654317 () Bool)

(assert (=> d!661391 m!2654317))

(declare-fun m!2654319 () Bool)

(assert (=> b!2212318 m!2654319))

(declare-fun m!2654321 () Bool)

(assert (=> b!2212319 m!2654321))

(assert (=> b!2212281 d!661391))

(declare-fun d!661395 () Bool)

(assert (=> d!661395 (= (head!4727 (list!10040 t!4663)) (h!31267 (list!10040 t!4663)))))

(assert (=> b!2212281 d!661395))

(declare-fun b!2212349 () Bool)

(declare-fun e!1412809 () List!25950)

(declare-fun ++!6453 (List!25950 List!25950) List!25950)

(assert (=> b!2212349 (= e!1412809 (++!6453 (list!10040 (left!19897 t!4663)) (list!10040 (right!20227 t!4663))))))

(declare-fun b!2212348 () Bool)

(declare-fun list!10042 (IArray!16931) List!25950)

(assert (=> b!2212348 (= e!1412809 (list!10042 (xs!11405 t!4663)))))

(declare-fun d!661397 () Bool)

(declare-fun c!353592 () Bool)

(assert (=> d!661397 (= c!353592 ((_ is Empty!8463) t!4663))))

(declare-fun e!1412808 () List!25950)

(assert (=> d!661397 (= (list!10040 t!4663) e!1412808)))

(declare-fun b!2212346 () Bool)

(assert (=> b!2212346 (= e!1412808 Nil!25866)))

(declare-fun b!2212347 () Bool)

(assert (=> b!2212347 (= e!1412808 e!1412809)))

(declare-fun c!353593 () Bool)

(assert (=> b!2212347 (= c!353593 ((_ is Leaf!12394) t!4663))))

(assert (= (and d!661397 c!353592) b!2212346))

(assert (= (and d!661397 (not c!353592)) b!2212347))

(assert (= (and b!2212347 c!353593) b!2212348))

(assert (= (and b!2212347 (not c!353593)) b!2212349))

(assert (=> b!2212349 m!2654313))

(declare-fun m!2654333 () Bool)

(assert (=> b!2212349 m!2654333))

(assert (=> b!2212349 m!2654313))

(assert (=> b!2212349 m!2654333))

(declare-fun m!2654335 () Bool)

(assert (=> b!2212349 m!2654335))

(declare-fun m!2654337 () Bool)

(assert (=> b!2212348 m!2654337))

(assert (=> b!2212281 d!661397))

(declare-fun b!2212377 () Bool)

(declare-fun res!950842 () Bool)

(declare-fun e!1412824 () Bool)

(assert (=> b!2212377 (=> (not res!950842) (not e!1412824))))

(assert (=> b!2212377 (= res!950842 (isBalanced!2621 (left!19897 t!4663)))))

(declare-fun b!2212378 () Bool)

(declare-fun res!950844 () Bool)

(assert (=> b!2212378 (=> (not res!950844) (not e!1412824))))

(assert (=> b!2212378 (= res!950844 (not (isEmpty!14815 (left!19897 t!4663))))))

(declare-fun b!2212379 () Bool)

(assert (=> b!2212379 (= e!1412824 (not (isEmpty!14815 (right!20227 t!4663))))))

(declare-fun b!2212380 () Bool)

(declare-fun res!950839 () Bool)

(assert (=> b!2212380 (=> (not res!950839) (not e!1412824))))

(declare-fun height!1287 (Conc!8463) Int)

(assert (=> b!2212380 (= res!950839 (<= (- (height!1287 (left!19897 t!4663)) (height!1287 (right!20227 t!4663))) 1))))

(declare-fun b!2212381 () Bool)

(declare-fun e!1412825 () Bool)

(assert (=> b!2212381 (= e!1412825 e!1412824)))

(declare-fun res!950841 () Bool)

(assert (=> b!2212381 (=> (not res!950841) (not e!1412824))))

(assert (=> b!2212381 (= res!950841 (<= (- 1) (- (height!1287 (left!19897 t!4663)) (height!1287 (right!20227 t!4663)))))))

(declare-fun d!661401 () Bool)

(declare-fun res!950840 () Bool)

(assert (=> d!661401 (=> res!950840 e!1412825)))

(assert (=> d!661401 (= res!950840 (not ((_ is Node!8463) t!4663)))))

(assert (=> d!661401 (= (isBalanced!2621 t!4663) e!1412825)))

(declare-fun b!2212382 () Bool)

(declare-fun res!950843 () Bool)

(assert (=> b!2212382 (=> (not res!950843) (not e!1412824))))

(assert (=> b!2212382 (= res!950843 (isBalanced!2621 (right!20227 t!4663)))))

(assert (= (and d!661401 (not res!950840)) b!2212381))

(assert (= (and b!2212381 res!950841) b!2212380))

(assert (= (and b!2212380 res!950839) b!2212377))

(assert (= (and b!2212377 res!950842) b!2212382))

(assert (= (and b!2212382 res!950843) b!2212378))

(assert (= (and b!2212378 res!950844) b!2212379))

(declare-fun m!2654353 () Bool)

(assert (=> b!2212381 m!2654353))

(declare-fun m!2654355 () Bool)

(assert (=> b!2212381 m!2654355))

(declare-fun m!2654357 () Bool)

(assert (=> b!2212378 m!2654357))

(declare-fun m!2654359 () Bool)

(assert (=> b!2212379 m!2654359))

(declare-fun m!2654361 () Bool)

(assert (=> b!2212382 m!2654361))

(assert (=> b!2212377 m!2654317))

(assert (=> b!2212380 m!2654353))

(assert (=> b!2212380 m!2654355))

(assert (=> start!215542 d!661401))

(declare-fun d!661411 () Bool)

(declare-fun c!353599 () Bool)

(assert (=> d!661411 (= c!353599 ((_ is Node!8463) t!4663))))

(declare-fun e!1412826 () Bool)

(assert (=> d!661411 (= (inv!35041 t!4663) e!1412826)))

(declare-fun b!2212383 () Bool)

(assert (=> b!2212383 (= e!1412826 (inv!35043 t!4663))))

(declare-fun b!2212384 () Bool)

(declare-fun e!1412827 () Bool)

(assert (=> b!2212384 (= e!1412826 e!1412827)))

(declare-fun res!950845 () Bool)

(assert (=> b!2212384 (= res!950845 (not ((_ is Leaf!12394) t!4663)))))

(assert (=> b!2212384 (=> res!950845 e!1412827)))

(declare-fun b!2212385 () Bool)

(assert (=> b!2212385 (= e!1412827 (inv!35044 t!4663))))

(assert (= (and d!661411 c!353599) b!2212383))

(assert (= (and d!661411 (not c!353599)) b!2212384))

(assert (= (and b!2212384 (not res!950845)) b!2212385))

(declare-fun m!2654367 () Bool)

(assert (=> b!2212383 m!2654367))

(declare-fun m!2654369 () Bool)

(assert (=> b!2212385 m!2654369))

(assert (=> start!215542 d!661411))

(declare-fun b!2212395 () Bool)

(declare-fun e!1412833 () Bool)

(declare-fun tp_is_empty!9793 () Bool)

(declare-fun tp!687486 () Bool)

(assert (=> b!2212395 (= e!1412833 (and tp_is_empty!9793 tp!687486))))

(assert (=> b!2212278 (= tp!687479 e!1412833)))

(assert (= (and b!2212278 ((_ is Cons!25866) (innerList!8523 (xs!11405 t!4663)))) b!2212395))

(declare-fun tp!687503 () Bool)

(declare-fun e!1412845 () Bool)

(declare-fun b!2212415 () Bool)

(declare-fun tp!687502 () Bool)

(assert (=> b!2212415 (= e!1412845 (and (inv!35041 (left!19897 (left!19897 t!4663))) tp!687503 (inv!35041 (right!20227 (left!19897 t!4663))) tp!687502))))

(declare-fun b!2212417 () Bool)

(declare-fun e!1412844 () Bool)

(declare-fun tp!687504 () Bool)

(assert (=> b!2212417 (= e!1412844 tp!687504)))

(declare-fun b!2212416 () Bool)

(assert (=> b!2212416 (= e!1412845 (and (inv!35042 (xs!11405 (left!19897 t!4663))) e!1412844))))

(assert (=> b!2212283 (= tp!687480 (and (inv!35041 (left!19897 t!4663)) e!1412845))))

(assert (= (and b!2212283 ((_ is Node!8463) (left!19897 t!4663))) b!2212415))

(assert (= b!2212416 b!2212417))

(assert (= (and b!2212283 ((_ is Leaf!12394) (left!19897 t!4663))) b!2212416))

(declare-fun m!2654377 () Bool)

(assert (=> b!2212415 m!2654377))

(declare-fun m!2654379 () Bool)

(assert (=> b!2212415 m!2654379))

(declare-fun m!2654381 () Bool)

(assert (=> b!2212416 m!2654381))

(assert (=> b!2212283 m!2654279))

(declare-fun e!1412849 () Bool)

(declare-fun tp!687509 () Bool)

(declare-fun tp!687508 () Bool)

(declare-fun b!2212421 () Bool)

(assert (=> b!2212421 (= e!1412849 (and (inv!35041 (left!19897 (right!20227 t!4663))) tp!687509 (inv!35041 (right!20227 (right!20227 t!4663))) tp!687508))))

(declare-fun b!2212423 () Bool)

(declare-fun e!1412848 () Bool)

(declare-fun tp!687510 () Bool)

(assert (=> b!2212423 (= e!1412848 tp!687510)))

(declare-fun b!2212422 () Bool)

(assert (=> b!2212422 (= e!1412849 (and (inv!35042 (xs!11405 (right!20227 t!4663))) e!1412848))))

(assert (=> b!2212283 (= tp!687478 (and (inv!35041 (right!20227 t!4663)) e!1412849))))

(assert (= (and b!2212283 ((_ is Node!8463) (right!20227 t!4663))) b!2212421))

(assert (= b!2212422 b!2212423))

(assert (= (and b!2212283 ((_ is Leaf!12394) (right!20227 t!4663))) b!2212422))

(declare-fun m!2654389 () Bool)

(assert (=> b!2212421 m!2654389))

(declare-fun m!2654391 () Bool)

(assert (=> b!2212421 m!2654391))

(declare-fun m!2654393 () Bool)

(assert (=> b!2212422 m!2654393))

(assert (=> b!2212283 m!2654281))

(check-sat (not b!2212318) (not b!2212378) (not d!661381) (not b!2212319) (not b!2212423) (not b!2212298) (not b!2212349) tp_is_empty!9793 (not b!2212382) (not b!2212377) (not b!2212385) (not b!2212381) (not b!2212417) (not b!2212415) (not b!2212301) (not b!2212395) (not d!661391) (not b!2212416) (not b!2212283) (not b!2212421) (not b!2212348) (not b!2212422) (not d!661377) (not b!2212380) (not b!2212383) (not b!2212379) (not b!2212296) (not b!2212299))
(check-sat)
(get-model)

(declare-fun b!2212435 () Bool)

(declare-fun e!1412855 () Bool)

(declare-fun lt!826559 () List!25950)

(assert (=> b!2212435 (= e!1412855 (or (not (= (list!10040 (right!20227 t!4663)) Nil!25866)) (= lt!826559 (list!10040 (left!19897 t!4663)))))))

(declare-fun b!2212433 () Bool)

(declare-fun e!1412854 () List!25950)

(assert (=> b!2212433 (= e!1412854 (Cons!25866 (h!31267 (list!10040 (left!19897 t!4663))) (++!6453 (t!198694 (list!10040 (left!19897 t!4663))) (list!10040 (right!20227 t!4663)))))))

(declare-fun d!661413 () Bool)

(assert (=> d!661413 e!1412855))

(declare-fun res!950851 () Bool)

(assert (=> d!661413 (=> (not res!950851) (not e!1412855))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3517 (List!25950) (InoxSet T!40606))

(assert (=> d!661413 (= res!950851 (= (content!3517 lt!826559) ((_ map or) (content!3517 (list!10040 (left!19897 t!4663))) (content!3517 (list!10040 (right!20227 t!4663))))))))

(assert (=> d!661413 (= lt!826559 e!1412854)))

(declare-fun c!353602 () Bool)

(assert (=> d!661413 (= c!353602 ((_ is Nil!25866) (list!10040 (left!19897 t!4663))))))

(assert (=> d!661413 (= (++!6453 (list!10040 (left!19897 t!4663)) (list!10040 (right!20227 t!4663))) lt!826559)))

(declare-fun b!2212432 () Bool)

(assert (=> b!2212432 (= e!1412854 (list!10040 (right!20227 t!4663)))))

(declare-fun b!2212434 () Bool)

(declare-fun res!950850 () Bool)

(assert (=> b!2212434 (=> (not res!950850) (not e!1412855))))

(assert (=> b!2212434 (= res!950850 (= (size!20183 lt!826559) (+ (size!20183 (list!10040 (left!19897 t!4663))) (size!20183 (list!10040 (right!20227 t!4663))))))))

(assert (= (and d!661413 c!353602) b!2212432))

(assert (= (and d!661413 (not c!353602)) b!2212433))

(assert (= (and d!661413 res!950851) b!2212434))

(assert (= (and b!2212434 res!950850) b!2212435))

(assert (=> b!2212433 m!2654333))

(declare-fun m!2654395 () Bool)

(assert (=> b!2212433 m!2654395))

(declare-fun m!2654397 () Bool)

(assert (=> d!661413 m!2654397))

(assert (=> d!661413 m!2654313))

(declare-fun m!2654399 () Bool)

(assert (=> d!661413 m!2654399))

(assert (=> d!661413 m!2654333))

(declare-fun m!2654401 () Bool)

(assert (=> d!661413 m!2654401))

(declare-fun m!2654403 () Bool)

(assert (=> b!2212434 m!2654403))

(assert (=> b!2212434 m!2654313))

(declare-fun m!2654405 () Bool)

(assert (=> b!2212434 m!2654405))

(assert (=> b!2212434 m!2654333))

(declare-fun m!2654407 () Bool)

(assert (=> b!2212434 m!2654407))

(assert (=> b!2212349 d!661413))

(declare-fun b!2212439 () Bool)

(declare-fun e!1412857 () List!25950)

(assert (=> b!2212439 (= e!1412857 (++!6453 (list!10040 (left!19897 (left!19897 t!4663))) (list!10040 (right!20227 (left!19897 t!4663)))))))

(declare-fun b!2212438 () Bool)

(assert (=> b!2212438 (= e!1412857 (list!10042 (xs!11405 (left!19897 t!4663))))))

(declare-fun d!661415 () Bool)

(declare-fun c!353603 () Bool)

(assert (=> d!661415 (= c!353603 ((_ is Empty!8463) (left!19897 t!4663)))))

(declare-fun e!1412856 () List!25950)

(assert (=> d!661415 (= (list!10040 (left!19897 t!4663)) e!1412856)))

(declare-fun b!2212436 () Bool)

(assert (=> b!2212436 (= e!1412856 Nil!25866)))

(declare-fun b!2212437 () Bool)

(assert (=> b!2212437 (= e!1412856 e!1412857)))

(declare-fun c!353604 () Bool)

(assert (=> b!2212437 (= c!353604 ((_ is Leaf!12394) (left!19897 t!4663)))))

(assert (= (and d!661415 c!353603) b!2212436))

(assert (= (and d!661415 (not c!353603)) b!2212437))

(assert (= (and b!2212437 c!353604) b!2212438))

(assert (= (and b!2212437 (not c!353604)) b!2212439))

(declare-fun m!2654409 () Bool)

(assert (=> b!2212439 m!2654409))

(declare-fun m!2654411 () Bool)

(assert (=> b!2212439 m!2654411))

(assert (=> b!2212439 m!2654409))

(assert (=> b!2212439 m!2654411))

(declare-fun m!2654413 () Bool)

(assert (=> b!2212439 m!2654413))

(declare-fun m!2654415 () Bool)

(assert (=> b!2212438 m!2654415))

(assert (=> b!2212349 d!661415))

(declare-fun b!2212443 () Bool)

(declare-fun e!1412859 () List!25950)

(assert (=> b!2212443 (= e!1412859 (++!6453 (list!10040 (left!19897 (right!20227 t!4663))) (list!10040 (right!20227 (right!20227 t!4663)))))))

(declare-fun b!2212442 () Bool)

(assert (=> b!2212442 (= e!1412859 (list!10042 (xs!11405 (right!20227 t!4663))))))

(declare-fun d!661417 () Bool)

(declare-fun c!353605 () Bool)

(assert (=> d!661417 (= c!353605 ((_ is Empty!8463) (right!20227 t!4663)))))

(declare-fun e!1412858 () List!25950)

(assert (=> d!661417 (= (list!10040 (right!20227 t!4663)) e!1412858)))

(declare-fun b!2212440 () Bool)

(assert (=> b!2212440 (= e!1412858 Nil!25866)))

(declare-fun b!2212441 () Bool)

(assert (=> b!2212441 (= e!1412858 e!1412859)))

(declare-fun c!353606 () Bool)

(assert (=> b!2212441 (= c!353606 ((_ is Leaf!12394) (right!20227 t!4663)))))

(assert (= (and d!661417 c!353605) b!2212440))

(assert (= (and d!661417 (not c!353605)) b!2212441))

(assert (= (and b!2212441 c!353606) b!2212442))

(assert (= (and b!2212441 (not c!353606)) b!2212443))

(declare-fun m!2654417 () Bool)

(assert (=> b!2212443 m!2654417))

(declare-fun m!2654419 () Bool)

(assert (=> b!2212443 m!2654419))

(assert (=> b!2212443 m!2654417))

(assert (=> b!2212443 m!2654419))

(declare-fun m!2654421 () Bool)

(assert (=> b!2212443 m!2654421))

(declare-fun m!2654423 () Bool)

(assert (=> b!2212442 m!2654423))

(assert (=> b!2212349 d!661417))

(declare-fun d!661419 () Bool)

(declare-fun lt!826562 () Int)

(assert (=> d!661419 (>= lt!826562 0)))

(declare-fun e!1412862 () Int)

(assert (=> d!661419 (= lt!826562 e!1412862)))

(declare-fun c!353609 () Bool)

(assert (=> d!661419 (= c!353609 ((_ is Nil!25866) (innerList!8523 (xs!11405 t!4663))))))

(assert (=> d!661419 (= (size!20183 (innerList!8523 (xs!11405 t!4663))) lt!826562)))

(declare-fun b!2212448 () Bool)

(assert (=> b!2212448 (= e!1412862 0)))

(declare-fun b!2212449 () Bool)

(assert (=> b!2212449 (= e!1412862 (+ 1 (size!20183 (t!198694 (innerList!8523 (xs!11405 t!4663))))))))

(assert (= (and d!661419 c!353609) b!2212448))

(assert (= (and d!661419 (not c!353609)) b!2212449))

(declare-fun m!2654425 () Bool)

(assert (=> b!2212449 m!2654425))

(assert (=> d!661377 d!661419))

(declare-fun d!661421 () Bool)

(assert (=> d!661421 (= (list!10042 (xs!11405 t!4663)) (innerList!8523 (xs!11405 t!4663)))))

(assert (=> b!2212348 d!661421))

(declare-fun d!661423 () Bool)

(declare-fun res!950856 () Bool)

(declare-fun e!1412865 () Bool)

(assert (=> d!661423 (=> (not res!950856) (not e!1412865))))

(assert (=> d!661423 (= res!950856 (<= (size!20183 (list!10042 (xs!11405 (left!19897 t!4663)))) 512))))

(assert (=> d!661423 (= (inv!35044 (left!19897 t!4663)) e!1412865)))

(declare-fun b!2212454 () Bool)

(declare-fun res!950857 () Bool)

(assert (=> b!2212454 (=> (not res!950857) (not e!1412865))))

(assert (=> b!2212454 (= res!950857 (= (csize!17157 (left!19897 t!4663)) (size!20183 (list!10042 (xs!11405 (left!19897 t!4663))))))))

(declare-fun b!2212455 () Bool)

(assert (=> b!2212455 (= e!1412865 (and (> (csize!17157 (left!19897 t!4663)) 0) (<= (csize!17157 (left!19897 t!4663)) 512)))))

(assert (= (and d!661423 res!950856) b!2212454))

(assert (= (and b!2212454 res!950857) b!2212455))

(assert (=> d!661423 m!2654415))

(assert (=> d!661423 m!2654415))

(declare-fun m!2654427 () Bool)

(assert (=> d!661423 m!2654427))

(assert (=> b!2212454 m!2654415))

(assert (=> b!2212454 m!2654415))

(assert (=> b!2212454 m!2654427))

(assert (=> b!2212298 d!661423))

(declare-fun d!661425 () Bool)

(assert (=> d!661425 (= (inv!35042 (xs!11405 (right!20227 t!4663))) (<= (size!20183 (innerList!8523 (xs!11405 (right!20227 t!4663)))) 2147483647))))

(declare-fun bs!451477 () Bool)

(assert (= bs!451477 d!661425))

(declare-fun m!2654429 () Bool)

(assert (=> bs!451477 m!2654429))

(assert (=> b!2212422 d!661425))

(assert (=> b!2212283 d!661383))

(assert (=> b!2212283 d!661389))

(declare-fun d!661427 () Bool)

(assert (=> d!661427 (= (head!4727 (list!10040 (left!19897 t!4663))) (h!31267 (list!10040 (left!19897 t!4663))))))

(assert (=> d!661391 d!661427))

(assert (=> d!661391 d!661415))

(declare-fun b!2212456 () Bool)

(declare-fun res!950861 () Bool)

(declare-fun e!1412866 () Bool)

(assert (=> b!2212456 (=> (not res!950861) (not e!1412866))))

(assert (=> b!2212456 (= res!950861 (isBalanced!2621 (left!19897 (left!19897 t!4663))))))

(declare-fun b!2212457 () Bool)

(declare-fun res!950863 () Bool)

(assert (=> b!2212457 (=> (not res!950863) (not e!1412866))))

(assert (=> b!2212457 (= res!950863 (not (isEmpty!14815 (left!19897 (left!19897 t!4663)))))))

(declare-fun b!2212458 () Bool)

(assert (=> b!2212458 (= e!1412866 (not (isEmpty!14815 (right!20227 (left!19897 t!4663)))))))

(declare-fun b!2212459 () Bool)

(declare-fun res!950858 () Bool)

(assert (=> b!2212459 (=> (not res!950858) (not e!1412866))))

(assert (=> b!2212459 (= res!950858 (<= (- (height!1287 (left!19897 (left!19897 t!4663))) (height!1287 (right!20227 (left!19897 t!4663)))) 1))))

(declare-fun b!2212460 () Bool)

(declare-fun e!1412867 () Bool)

(assert (=> b!2212460 (= e!1412867 e!1412866)))

(declare-fun res!950860 () Bool)

(assert (=> b!2212460 (=> (not res!950860) (not e!1412866))))

(assert (=> b!2212460 (= res!950860 (<= (- 1) (- (height!1287 (left!19897 (left!19897 t!4663))) (height!1287 (right!20227 (left!19897 t!4663))))))))

(declare-fun d!661429 () Bool)

(declare-fun res!950859 () Bool)

(assert (=> d!661429 (=> res!950859 e!1412867)))

(assert (=> d!661429 (= res!950859 (not ((_ is Node!8463) (left!19897 t!4663))))))

(assert (=> d!661429 (= (isBalanced!2621 (left!19897 t!4663)) e!1412867)))

(declare-fun b!2212461 () Bool)

(declare-fun res!950862 () Bool)

(assert (=> b!2212461 (=> (not res!950862) (not e!1412866))))

(assert (=> b!2212461 (= res!950862 (isBalanced!2621 (right!20227 (left!19897 t!4663))))))

(assert (= (and d!661429 (not res!950859)) b!2212460))

(assert (= (and b!2212460 res!950860) b!2212459))

(assert (= (and b!2212459 res!950858) b!2212456))

(assert (= (and b!2212456 res!950861) b!2212461))

(assert (= (and b!2212461 res!950862) b!2212457))

(assert (= (and b!2212457 res!950863) b!2212458))

(declare-fun m!2654431 () Bool)

(assert (=> b!2212460 m!2654431))

(declare-fun m!2654433 () Bool)

(assert (=> b!2212460 m!2654433))

(declare-fun m!2654435 () Bool)

(assert (=> b!2212457 m!2654435))

(declare-fun m!2654437 () Bool)

(assert (=> b!2212458 m!2654437))

(declare-fun m!2654439 () Bool)

(assert (=> b!2212461 m!2654439))

(declare-fun m!2654441 () Bool)

(assert (=> b!2212456 m!2654441))

(assert (=> b!2212459 m!2654431))

(assert (=> b!2212459 m!2654433))

(assert (=> d!661391 d!661429))

(declare-fun d!661431 () Bool)

(declare-fun res!950870 () Bool)

(declare-fun e!1412870 () Bool)

(assert (=> d!661431 (=> (not res!950870) (not e!1412870))))

(assert (=> d!661431 (= res!950870 (= (csize!17156 (left!19897 t!4663)) (+ (size!20184 (left!19897 (left!19897 t!4663))) (size!20184 (right!20227 (left!19897 t!4663))))))))

(assert (=> d!661431 (= (inv!35043 (left!19897 t!4663)) e!1412870)))

(declare-fun b!2212468 () Bool)

(declare-fun res!950871 () Bool)

(assert (=> b!2212468 (=> (not res!950871) (not e!1412870))))

(assert (=> b!2212468 (= res!950871 (and (not (= (left!19897 (left!19897 t!4663)) Empty!8463)) (not (= (right!20227 (left!19897 t!4663)) Empty!8463))))))

(declare-fun b!2212469 () Bool)

(declare-fun res!950872 () Bool)

(assert (=> b!2212469 (=> (not res!950872) (not e!1412870))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2212469 (= res!950872 (= (cheight!8674 (left!19897 t!4663)) (+ (max!0 (height!1287 (left!19897 (left!19897 t!4663))) (height!1287 (right!20227 (left!19897 t!4663)))) 1)))))

(declare-fun b!2212470 () Bool)

(assert (=> b!2212470 (= e!1412870 (<= 0 (cheight!8674 (left!19897 t!4663))))))

(assert (= (and d!661431 res!950870) b!2212468))

(assert (= (and b!2212468 res!950871) b!2212469))

(assert (= (and b!2212469 res!950872) b!2212470))

(declare-fun m!2654443 () Bool)

(assert (=> d!661431 m!2654443))

(declare-fun m!2654445 () Bool)

(assert (=> d!661431 m!2654445))

(assert (=> b!2212469 m!2654431))

(assert (=> b!2212469 m!2654433))

(assert (=> b!2212469 m!2654431))

(assert (=> b!2212469 m!2654433))

(declare-fun m!2654447 () Bool)

(assert (=> b!2212469 m!2654447))

(assert (=> b!2212296 d!661431))

(declare-fun d!661433 () Bool)

(declare-fun c!353610 () Bool)

(assert (=> d!661433 (= c!353610 ((_ is Node!8463) (left!19897 (right!20227 t!4663))))))

(declare-fun e!1412871 () Bool)

(assert (=> d!661433 (= (inv!35041 (left!19897 (right!20227 t!4663))) e!1412871)))

(declare-fun b!2212471 () Bool)

(assert (=> b!2212471 (= e!1412871 (inv!35043 (left!19897 (right!20227 t!4663))))))

(declare-fun b!2212472 () Bool)

(declare-fun e!1412872 () Bool)

(assert (=> b!2212472 (= e!1412871 e!1412872)))

(declare-fun res!950873 () Bool)

(assert (=> b!2212472 (= res!950873 (not ((_ is Leaf!12394) (left!19897 (right!20227 t!4663)))))))

(assert (=> b!2212472 (=> res!950873 e!1412872)))

(declare-fun b!2212473 () Bool)

(assert (=> b!2212473 (= e!1412872 (inv!35044 (left!19897 (right!20227 t!4663))))))

(assert (= (and d!661433 c!353610) b!2212471))

(assert (= (and d!661433 (not c!353610)) b!2212472))

(assert (= (and b!2212472 (not res!950873)) b!2212473))

(declare-fun m!2654449 () Bool)

(assert (=> b!2212471 m!2654449))

(declare-fun m!2654451 () Bool)

(assert (=> b!2212473 m!2654451))

(assert (=> b!2212421 d!661433))

(declare-fun d!661435 () Bool)

(declare-fun c!353611 () Bool)

(assert (=> d!661435 (= c!353611 ((_ is Node!8463) (right!20227 (right!20227 t!4663))))))

(declare-fun e!1412873 () Bool)

(assert (=> d!661435 (= (inv!35041 (right!20227 (right!20227 t!4663))) e!1412873)))

(declare-fun b!2212474 () Bool)

(assert (=> b!2212474 (= e!1412873 (inv!35043 (right!20227 (right!20227 t!4663))))))

(declare-fun b!2212475 () Bool)

(declare-fun e!1412874 () Bool)

(assert (=> b!2212475 (= e!1412873 e!1412874)))

(declare-fun res!950874 () Bool)

(assert (=> b!2212475 (= res!950874 (not ((_ is Leaf!12394) (right!20227 (right!20227 t!4663)))))))

(assert (=> b!2212475 (=> res!950874 e!1412874)))

(declare-fun b!2212476 () Bool)

(assert (=> b!2212476 (= e!1412874 (inv!35044 (right!20227 (right!20227 t!4663))))))

(assert (= (and d!661435 c!353611) b!2212474))

(assert (= (and d!661435 (not c!353611)) b!2212475))

(assert (= (and b!2212475 (not res!950874)) b!2212476))

(declare-fun m!2654453 () Bool)

(assert (=> b!2212474 m!2654453))

(declare-fun m!2654455 () Bool)

(assert (=> b!2212476 m!2654455))

(assert (=> b!2212421 d!661435))

(declare-fun d!661437 () Bool)

(declare-fun res!950875 () Bool)

(declare-fun e!1412875 () Bool)

(assert (=> d!661437 (=> (not res!950875) (not e!1412875))))

(assert (=> d!661437 (= res!950875 (<= (size!20183 (list!10042 (xs!11405 t!4663))) 512))))

(assert (=> d!661437 (= (inv!35044 t!4663) e!1412875)))

(declare-fun b!2212477 () Bool)

(declare-fun res!950876 () Bool)

(assert (=> b!2212477 (=> (not res!950876) (not e!1412875))))

(assert (=> b!2212477 (= res!950876 (= (csize!17157 t!4663) (size!20183 (list!10042 (xs!11405 t!4663)))))))

(declare-fun b!2212478 () Bool)

(assert (=> b!2212478 (= e!1412875 (and (> (csize!17157 t!4663) 0) (<= (csize!17157 t!4663) 512)))))

(assert (= (and d!661437 res!950875) b!2212477))

(assert (= (and b!2212477 res!950876) b!2212478))

(assert (=> d!661437 m!2654337))

(assert (=> d!661437 m!2654337))

(declare-fun m!2654457 () Bool)

(assert (=> d!661437 m!2654457))

(assert (=> b!2212477 m!2654337))

(assert (=> b!2212477 m!2654337))

(assert (=> b!2212477 m!2654457))

(assert (=> b!2212385 d!661437))

(declare-fun d!661439 () Bool)

(declare-fun res!950877 () Bool)

(declare-fun e!1412876 () Bool)

(assert (=> d!661439 (=> (not res!950877) (not e!1412876))))

(assert (=> d!661439 (= res!950877 (= (csize!17156 t!4663) (+ (size!20184 (left!19897 t!4663)) (size!20184 (right!20227 t!4663)))))))

(assert (=> d!661439 (= (inv!35043 t!4663) e!1412876)))

(declare-fun b!2212479 () Bool)

(declare-fun res!950878 () Bool)

(assert (=> b!2212479 (=> (not res!950878) (not e!1412876))))

(assert (=> b!2212479 (= res!950878 (and (not (= (left!19897 t!4663) Empty!8463)) (not (= (right!20227 t!4663) Empty!8463))))))

(declare-fun b!2212480 () Bool)

(declare-fun res!950879 () Bool)

(assert (=> b!2212480 (=> (not res!950879) (not e!1412876))))

(assert (=> b!2212480 (= res!950879 (= (cheight!8674 t!4663) (+ (max!0 (height!1287 (left!19897 t!4663)) (height!1287 (right!20227 t!4663))) 1)))))

(declare-fun b!2212481 () Bool)

(assert (=> b!2212481 (= e!1412876 (<= 0 (cheight!8674 t!4663)))))

(assert (= (and d!661439 res!950877) b!2212479))

(assert (= (and b!2212479 res!950878) b!2212480))

(assert (= (and b!2212480 res!950879) b!2212481))

(declare-fun m!2654459 () Bool)

(assert (=> d!661439 m!2654459))

(declare-fun m!2654461 () Bool)

(assert (=> d!661439 m!2654461))

(assert (=> b!2212480 m!2654353))

(assert (=> b!2212480 m!2654355))

(assert (=> b!2212480 m!2654353))

(assert (=> b!2212480 m!2654355))

(declare-fun m!2654463 () Bool)

(assert (=> b!2212480 m!2654463))

(assert (=> b!2212383 d!661439))

(declare-fun d!661441 () Bool)

(declare-fun res!950880 () Bool)

(declare-fun e!1412877 () Bool)

(assert (=> d!661441 (=> (not res!950880) (not e!1412877))))

(assert (=> d!661441 (= res!950880 (<= (size!20183 (list!10042 (xs!11405 (right!20227 t!4663)))) 512))))

(assert (=> d!661441 (= (inv!35044 (right!20227 t!4663)) e!1412877)))

(declare-fun b!2212482 () Bool)

(declare-fun res!950881 () Bool)

(assert (=> b!2212482 (=> (not res!950881) (not e!1412877))))

(assert (=> b!2212482 (= res!950881 (= (csize!17157 (right!20227 t!4663)) (size!20183 (list!10042 (xs!11405 (right!20227 t!4663))))))))

(declare-fun b!2212483 () Bool)

(assert (=> b!2212483 (= e!1412877 (and (> (csize!17157 (right!20227 t!4663)) 0) (<= (csize!17157 (right!20227 t!4663)) 512)))))

(assert (= (and d!661441 res!950880) b!2212482))

(assert (= (and b!2212482 res!950881) b!2212483))

(assert (=> d!661441 m!2654423))

(assert (=> d!661441 m!2654423))

(declare-fun m!2654465 () Bool)

(assert (=> d!661441 m!2654465))

(assert (=> b!2212482 m!2654423))

(assert (=> b!2212482 m!2654423))

(assert (=> b!2212482 m!2654465))

(assert (=> b!2212301 d!661441))

(declare-fun d!661443 () Bool)

(assert (=> d!661443 (= (isEmpty!14816 (list!10040 t!4663)) ((_ is Nil!25866) (list!10040 t!4663)))))

(assert (=> d!661381 d!661443))

(assert (=> d!661381 d!661397))

(declare-fun d!661445 () Bool)

(declare-fun lt!826565 () Int)

(assert (=> d!661445 (= lt!826565 (size!20183 (list!10040 t!4663)))))

(assert (=> d!661445 (= lt!826565 (ite ((_ is Empty!8463) t!4663) 0 (ite ((_ is Leaf!12394) t!4663) (csize!17157 t!4663) (csize!17156 t!4663))))))

(assert (=> d!661445 (= (size!20184 t!4663) lt!826565)))

(declare-fun bs!451478 () Bool)

(assert (= bs!451478 d!661445))

(assert (=> bs!451478 m!2654275))

(assert (=> bs!451478 m!2654275))

(declare-fun m!2654467 () Bool)

(assert (=> bs!451478 m!2654467))

(assert (=> d!661381 d!661445))

(declare-fun d!661447 () Bool)

(assert (=> d!661447 (= (inv!35042 (xs!11405 (left!19897 t!4663))) (<= (size!20183 (innerList!8523 (xs!11405 (left!19897 t!4663)))) 2147483647))))

(declare-fun bs!451479 () Bool)

(assert (= bs!451479 d!661447))

(declare-fun m!2654469 () Bool)

(assert (=> bs!451479 m!2654469))

(assert (=> b!2212416 d!661447))

(declare-fun d!661449 () Bool)

(assert (=> d!661449 (= (height!1287 (left!19897 t!4663)) (ite ((_ is Empty!8463) (left!19897 t!4663)) 0 (ite ((_ is Leaf!12394) (left!19897 t!4663)) 1 (cheight!8674 (left!19897 t!4663)))))))

(assert (=> b!2212381 d!661449))

(declare-fun d!661453 () Bool)

(assert (=> d!661453 (= (height!1287 (right!20227 t!4663)) (ite ((_ is Empty!8463) (right!20227 t!4663)) 0 (ite ((_ is Leaf!12394) (right!20227 t!4663)) 1 (cheight!8674 (right!20227 t!4663)))))))

(assert (=> b!2212381 d!661453))

(declare-fun b!2212484 () Bool)

(declare-fun res!950885 () Bool)

(declare-fun e!1412878 () Bool)

(assert (=> b!2212484 (=> (not res!950885) (not e!1412878))))

(assert (=> b!2212484 (= res!950885 (isBalanced!2621 (left!19897 (right!20227 t!4663))))))

(declare-fun b!2212485 () Bool)

(declare-fun res!950887 () Bool)

(assert (=> b!2212485 (=> (not res!950887) (not e!1412878))))

(assert (=> b!2212485 (= res!950887 (not (isEmpty!14815 (left!19897 (right!20227 t!4663)))))))

(declare-fun b!2212486 () Bool)

(assert (=> b!2212486 (= e!1412878 (not (isEmpty!14815 (right!20227 (right!20227 t!4663)))))))

(declare-fun b!2212487 () Bool)

(declare-fun res!950882 () Bool)

(assert (=> b!2212487 (=> (not res!950882) (not e!1412878))))

(assert (=> b!2212487 (= res!950882 (<= (- (height!1287 (left!19897 (right!20227 t!4663))) (height!1287 (right!20227 (right!20227 t!4663)))) 1))))

(declare-fun b!2212488 () Bool)

(declare-fun e!1412879 () Bool)

(assert (=> b!2212488 (= e!1412879 e!1412878)))

(declare-fun res!950884 () Bool)

(assert (=> b!2212488 (=> (not res!950884) (not e!1412878))))

(assert (=> b!2212488 (= res!950884 (<= (- 1) (- (height!1287 (left!19897 (right!20227 t!4663))) (height!1287 (right!20227 (right!20227 t!4663))))))))

(declare-fun d!661455 () Bool)

(declare-fun res!950883 () Bool)

(assert (=> d!661455 (=> res!950883 e!1412879)))

(assert (=> d!661455 (= res!950883 (not ((_ is Node!8463) (right!20227 t!4663))))))

(assert (=> d!661455 (= (isBalanced!2621 (right!20227 t!4663)) e!1412879)))

(declare-fun b!2212489 () Bool)

(declare-fun res!950886 () Bool)

(assert (=> b!2212489 (=> (not res!950886) (not e!1412878))))

(assert (=> b!2212489 (= res!950886 (isBalanced!2621 (right!20227 (right!20227 t!4663))))))

(assert (= (and d!661455 (not res!950883)) b!2212488))

(assert (= (and b!2212488 res!950884) b!2212487))

(assert (= (and b!2212487 res!950882) b!2212484))

(assert (= (and b!2212484 res!950885) b!2212489))

(assert (= (and b!2212489 res!950886) b!2212485))

(assert (= (and b!2212485 res!950887) b!2212486))

(declare-fun m!2654475 () Bool)

(assert (=> b!2212488 m!2654475))

(declare-fun m!2654477 () Bool)

(assert (=> b!2212488 m!2654477))

(declare-fun m!2654481 () Bool)

(assert (=> b!2212485 m!2654481))

(declare-fun m!2654485 () Bool)

(assert (=> b!2212486 m!2654485))

(declare-fun m!2654487 () Bool)

(assert (=> b!2212489 m!2654487))

(declare-fun m!2654489 () Bool)

(assert (=> b!2212484 m!2654489))

(assert (=> b!2212487 m!2654475))

(assert (=> b!2212487 m!2654477))

(assert (=> b!2212382 d!661455))

(declare-fun d!661461 () Bool)

(declare-fun c!353614 () Bool)

(assert (=> d!661461 (= c!353614 ((_ is Node!8463) (left!19897 (left!19897 t!4663))))))

(declare-fun e!1412884 () Bool)

(assert (=> d!661461 (= (inv!35041 (left!19897 (left!19897 t!4663))) e!1412884)))

(declare-fun b!2212500 () Bool)

(assert (=> b!2212500 (= e!1412884 (inv!35043 (left!19897 (left!19897 t!4663))))))

(declare-fun b!2212501 () Bool)

(declare-fun e!1412885 () Bool)

(assert (=> b!2212501 (= e!1412884 e!1412885)))

(declare-fun res!950894 () Bool)

(assert (=> b!2212501 (= res!950894 (not ((_ is Leaf!12394) (left!19897 (left!19897 t!4663)))))))

(assert (=> b!2212501 (=> res!950894 e!1412885)))

(declare-fun b!2212502 () Bool)

(assert (=> b!2212502 (= e!1412885 (inv!35044 (left!19897 (left!19897 t!4663))))))

(assert (= (and d!661461 c!353614) b!2212500))

(assert (= (and d!661461 (not c!353614)) b!2212501))

(assert (= (and b!2212501 (not res!950894)) b!2212502))

(declare-fun m!2654491 () Bool)

(assert (=> b!2212500 m!2654491))

(declare-fun m!2654493 () Bool)

(assert (=> b!2212502 m!2654493))

(assert (=> b!2212415 d!661461))

(declare-fun d!661463 () Bool)

(declare-fun c!353615 () Bool)

(assert (=> d!661463 (= c!353615 ((_ is Node!8463) (right!20227 (left!19897 t!4663))))))

(declare-fun e!1412886 () Bool)

(assert (=> d!661463 (= (inv!35041 (right!20227 (left!19897 t!4663))) e!1412886)))

(declare-fun b!2212503 () Bool)

(assert (=> b!2212503 (= e!1412886 (inv!35043 (right!20227 (left!19897 t!4663))))))

(declare-fun b!2212504 () Bool)

(declare-fun e!1412887 () Bool)

(assert (=> b!2212504 (= e!1412886 e!1412887)))

(declare-fun res!950895 () Bool)

(assert (=> b!2212504 (= res!950895 (not ((_ is Leaf!12394) (right!20227 (left!19897 t!4663)))))))

(assert (=> b!2212504 (=> res!950895 e!1412887)))

(declare-fun b!2212505 () Bool)

(assert (=> b!2212505 (= e!1412887 (inv!35044 (right!20227 (left!19897 t!4663))))))

(assert (= (and d!661463 c!353615) b!2212503))

(assert (= (and d!661463 (not c!353615)) b!2212504))

(assert (= (and b!2212504 (not res!950895)) b!2212505))

(declare-fun m!2654497 () Bool)

(assert (=> b!2212503 m!2654497))

(declare-fun m!2654501 () Bool)

(assert (=> b!2212505 m!2654501))

(assert (=> b!2212415 d!661463))

(assert (=> b!2212380 d!661449))

(assert (=> b!2212380 d!661453))

(declare-fun d!661465 () Bool)

(declare-fun res!950896 () Bool)

(declare-fun e!1412888 () Bool)

(assert (=> d!661465 (=> (not res!950896) (not e!1412888))))

(assert (=> d!661465 (= res!950896 (= (csize!17156 (right!20227 t!4663)) (+ (size!20184 (left!19897 (right!20227 t!4663))) (size!20184 (right!20227 (right!20227 t!4663))))))))

(assert (=> d!661465 (= (inv!35043 (right!20227 t!4663)) e!1412888)))

(declare-fun b!2212506 () Bool)

(declare-fun res!950897 () Bool)

(assert (=> b!2212506 (=> (not res!950897) (not e!1412888))))

(assert (=> b!2212506 (= res!950897 (and (not (= (left!19897 (right!20227 t!4663)) Empty!8463)) (not (= (right!20227 (right!20227 t!4663)) Empty!8463))))))

(declare-fun b!2212507 () Bool)

(declare-fun res!950898 () Bool)

(assert (=> b!2212507 (=> (not res!950898) (not e!1412888))))

(assert (=> b!2212507 (= res!950898 (= (cheight!8674 (right!20227 t!4663)) (+ (max!0 (height!1287 (left!19897 (right!20227 t!4663))) (height!1287 (right!20227 (right!20227 t!4663)))) 1)))))

(declare-fun b!2212508 () Bool)

(assert (=> b!2212508 (= e!1412888 (<= 0 (cheight!8674 (right!20227 t!4663))))))

(assert (= (and d!661465 res!950896) b!2212506))

(assert (= (and b!2212506 res!950897) b!2212507))

(assert (= (and b!2212507 res!950898) b!2212508))

(declare-fun m!2654513 () Bool)

(assert (=> d!661465 m!2654513))

(declare-fun m!2654517 () Bool)

(assert (=> d!661465 m!2654517))

(assert (=> b!2212507 m!2654475))

(assert (=> b!2212507 m!2654477))

(assert (=> b!2212507 m!2654475))

(assert (=> b!2212507 m!2654477))

(declare-fun m!2654519 () Bool)

(assert (=> b!2212507 m!2654519))

(assert (=> b!2212299 d!661465))

(declare-fun d!661471 () Bool)

(declare-fun lt!826566 () Bool)

(assert (=> d!661471 (= lt!826566 (isEmpty!14816 (list!10040 (right!20227 t!4663))))))

(assert (=> d!661471 (= lt!826566 (= (size!20184 (right!20227 t!4663)) 0))))

(assert (=> d!661471 (= (isEmpty!14815 (right!20227 t!4663)) lt!826566)))

(declare-fun bs!451480 () Bool)

(assert (= bs!451480 d!661471))

(assert (=> bs!451480 m!2654333))

(assert (=> bs!451480 m!2654333))

(declare-fun m!2654525 () Bool)

(assert (=> bs!451480 m!2654525))

(assert (=> bs!451480 m!2654461))

(assert (=> b!2212379 d!661471))

(assert (=> b!2212377 d!661429))

(declare-fun d!661475 () Bool)

(declare-fun lt!826567 () T!40606)

(assert (=> d!661475 (= lt!826567 (head!4727 (list!10040 (left!19897 (left!19897 t!4663)))))))

(declare-fun e!1412893 () T!40606)

(assert (=> d!661475 (= lt!826567 e!1412893)))

(declare-fun c!353618 () Bool)

(assert (=> d!661475 (= c!353618 ((_ is Leaf!12394) (left!19897 (left!19897 t!4663))))))

(assert (=> d!661475 (isBalanced!2621 (left!19897 (left!19897 t!4663)))))

(assert (=> d!661475 (= (head!4726 (left!19897 (left!19897 t!4663))) lt!826567)))

(declare-fun b!2212515 () Bool)

(assert (=> b!2212515 (= e!1412893 (apply!6411 (xs!11405 (left!19897 (left!19897 t!4663))) 0))))

(declare-fun b!2212516 () Bool)

(assert (=> b!2212516 (= e!1412893 (head!4726 (left!19897 (left!19897 (left!19897 t!4663)))))))

(assert (= (and d!661475 c!353618) b!2212515))

(assert (= (and d!661475 (not c!353618)) b!2212516))

(assert (=> d!661475 m!2654409))

(assert (=> d!661475 m!2654409))

(declare-fun m!2654529 () Bool)

(assert (=> d!661475 m!2654529))

(assert (=> d!661475 m!2654441))

(declare-fun m!2654531 () Bool)

(assert (=> b!2212515 m!2654531))

(declare-fun m!2654533 () Bool)

(assert (=> b!2212516 m!2654533))

(assert (=> b!2212319 d!661475))

(declare-fun d!661479 () Bool)

(declare-fun lt!826568 () Bool)

(assert (=> d!661479 (= lt!826568 (isEmpty!14816 (list!10040 (left!19897 t!4663))))))

(assert (=> d!661479 (= lt!826568 (= (size!20184 (left!19897 t!4663)) 0))))

(assert (=> d!661479 (= (isEmpty!14815 (left!19897 t!4663)) lt!826568)))

(declare-fun bs!451482 () Bool)

(assert (= bs!451482 d!661479))

(assert (=> bs!451482 m!2654313))

(assert (=> bs!451482 m!2654313))

(declare-fun m!2654535 () Bool)

(assert (=> bs!451482 m!2654535))

(assert (=> bs!451482 m!2654459))

(assert (=> b!2212378 d!661479))

(declare-fun d!661481 () Bool)

(declare-fun lt!826571 () T!40606)

(declare-fun apply!6412 (List!25950 Int) T!40606)

(assert (=> d!661481 (= lt!826571 (apply!6412 (list!10042 (xs!11405 (left!19897 t!4663))) 0))))

(declare-fun choose!13057 (IArray!16931 Int) T!40606)

(assert (=> d!661481 (= lt!826571 (choose!13057 (xs!11405 (left!19897 t!4663)) 0))))

(declare-fun e!1412900 () Bool)

(assert (=> d!661481 e!1412900))

(declare-fun res!950905 () Bool)

(assert (=> d!661481 (=> (not res!950905) (not e!1412900))))

(assert (=> d!661481 (= res!950905 (<= 0 0))))

(assert (=> d!661481 (= (apply!6411 (xs!11405 (left!19897 t!4663)) 0) lt!826571)))

(declare-fun b!2212525 () Bool)

(declare-fun size!20187 (IArray!16931) Int)

(assert (=> b!2212525 (= e!1412900 (< 0 (size!20187 (xs!11405 (left!19897 t!4663)))))))

(assert (= (and d!661481 res!950905) b!2212525))

(assert (=> d!661481 m!2654415))

(assert (=> d!661481 m!2654415))

(declare-fun m!2654545 () Bool)

(assert (=> d!661481 m!2654545))

(declare-fun m!2654547 () Bool)

(assert (=> d!661481 m!2654547))

(declare-fun m!2654549 () Bool)

(assert (=> b!2212525 m!2654549))

(assert (=> b!2212318 d!661481))

(declare-fun tp!687512 () Bool)

(declare-fun b!2212526 () Bool)

(declare-fun e!1412902 () Bool)

(declare-fun tp!687511 () Bool)

(assert (=> b!2212526 (= e!1412902 (and (inv!35041 (left!19897 (left!19897 (left!19897 t!4663)))) tp!687512 (inv!35041 (right!20227 (left!19897 (left!19897 t!4663)))) tp!687511))))

(declare-fun b!2212528 () Bool)

(declare-fun e!1412901 () Bool)

(declare-fun tp!687513 () Bool)

(assert (=> b!2212528 (= e!1412901 tp!687513)))

(declare-fun b!2212527 () Bool)

(assert (=> b!2212527 (= e!1412902 (and (inv!35042 (xs!11405 (left!19897 (left!19897 t!4663)))) e!1412901))))

(assert (=> b!2212415 (= tp!687503 (and (inv!35041 (left!19897 (left!19897 t!4663))) e!1412902))))

(assert (= (and b!2212415 ((_ is Node!8463) (left!19897 (left!19897 t!4663)))) b!2212526))

(assert (= b!2212527 b!2212528))

(assert (= (and b!2212415 ((_ is Leaf!12394) (left!19897 (left!19897 t!4663)))) b!2212527))

(declare-fun m!2654551 () Bool)

(assert (=> b!2212526 m!2654551))

(declare-fun m!2654553 () Bool)

(assert (=> b!2212526 m!2654553))

(declare-fun m!2654555 () Bool)

(assert (=> b!2212527 m!2654555))

(assert (=> b!2212415 m!2654377))

(declare-fun tp!687514 () Bool)

(declare-fun tp!687515 () Bool)

(declare-fun e!1412906 () Bool)

(declare-fun b!2212533 () Bool)

(assert (=> b!2212533 (= e!1412906 (and (inv!35041 (left!19897 (right!20227 (left!19897 t!4663)))) tp!687515 (inv!35041 (right!20227 (right!20227 (left!19897 t!4663)))) tp!687514))))

(declare-fun b!2212535 () Bool)

(declare-fun e!1412905 () Bool)

(declare-fun tp!687516 () Bool)

(assert (=> b!2212535 (= e!1412905 tp!687516)))

(declare-fun b!2212534 () Bool)

(assert (=> b!2212534 (= e!1412906 (and (inv!35042 (xs!11405 (right!20227 (left!19897 t!4663)))) e!1412905))))

(assert (=> b!2212415 (= tp!687502 (and (inv!35041 (right!20227 (left!19897 t!4663))) e!1412906))))

(assert (= (and b!2212415 ((_ is Node!8463) (right!20227 (left!19897 t!4663)))) b!2212533))

(assert (= b!2212534 b!2212535))

(assert (= (and b!2212415 ((_ is Leaf!12394) (right!20227 (left!19897 t!4663)))) b!2212534))

(declare-fun m!2654557 () Bool)

(assert (=> b!2212533 m!2654557))

(declare-fun m!2654559 () Bool)

(assert (=> b!2212533 m!2654559))

(declare-fun m!2654561 () Bool)

(assert (=> b!2212534 m!2654561))

(assert (=> b!2212415 m!2654379))

(declare-fun b!2212536 () Bool)

(declare-fun e!1412909 () Bool)

(declare-fun tp!687517 () Bool)

(assert (=> b!2212536 (= e!1412909 (and tp_is_empty!9793 tp!687517))))

(assert (=> b!2212395 (= tp!687486 e!1412909)))

(assert (= (and b!2212395 ((_ is Cons!25866) (t!198694 (innerList!8523 (xs!11405 t!4663))))) b!2212536))

(declare-fun b!2212541 () Bool)

(declare-fun e!1412910 () Bool)

(declare-fun tp!687518 () Bool)

(assert (=> b!2212541 (= e!1412910 (and tp_is_empty!9793 tp!687518))))

(assert (=> b!2212423 (= tp!687510 e!1412910)))

(assert (= (and b!2212423 ((_ is Cons!25866) (innerList!8523 (xs!11405 (right!20227 t!4663))))) b!2212541))

(declare-fun tp!687520 () Bool)

(declare-fun e!1412912 () Bool)

(declare-fun b!2212542 () Bool)

(declare-fun tp!687519 () Bool)

(assert (=> b!2212542 (= e!1412912 (and (inv!35041 (left!19897 (left!19897 (right!20227 t!4663)))) tp!687520 (inv!35041 (right!20227 (left!19897 (right!20227 t!4663)))) tp!687519))))

(declare-fun b!2212544 () Bool)

(declare-fun e!1412911 () Bool)

(declare-fun tp!687521 () Bool)

(assert (=> b!2212544 (= e!1412911 tp!687521)))

(declare-fun b!2212543 () Bool)

(assert (=> b!2212543 (= e!1412912 (and (inv!35042 (xs!11405 (left!19897 (right!20227 t!4663)))) e!1412911))))

(assert (=> b!2212421 (= tp!687509 (and (inv!35041 (left!19897 (right!20227 t!4663))) e!1412912))))

(assert (= (and b!2212421 ((_ is Node!8463) (left!19897 (right!20227 t!4663)))) b!2212542))

(assert (= b!2212543 b!2212544))

(assert (= (and b!2212421 ((_ is Leaf!12394) (left!19897 (right!20227 t!4663)))) b!2212543))

(declare-fun m!2654563 () Bool)

(assert (=> b!2212542 m!2654563))

(declare-fun m!2654565 () Bool)

(assert (=> b!2212542 m!2654565))

(declare-fun m!2654567 () Bool)

(assert (=> b!2212543 m!2654567))

(assert (=> b!2212421 m!2654389))

(declare-fun tp!687522 () Bool)

(declare-fun tp!687523 () Bool)

(declare-fun b!2212545 () Bool)

(declare-fun e!1412914 () Bool)

(assert (=> b!2212545 (= e!1412914 (and (inv!35041 (left!19897 (right!20227 (right!20227 t!4663)))) tp!687523 (inv!35041 (right!20227 (right!20227 (right!20227 t!4663)))) tp!687522))))

(declare-fun b!2212547 () Bool)

(declare-fun e!1412913 () Bool)

(declare-fun tp!687524 () Bool)

(assert (=> b!2212547 (= e!1412913 tp!687524)))

(declare-fun b!2212546 () Bool)

(assert (=> b!2212546 (= e!1412914 (and (inv!35042 (xs!11405 (right!20227 (right!20227 t!4663)))) e!1412913))))

(assert (=> b!2212421 (= tp!687508 (and (inv!35041 (right!20227 (right!20227 t!4663))) e!1412914))))

(assert (= (and b!2212421 ((_ is Node!8463) (right!20227 (right!20227 t!4663)))) b!2212545))

(assert (= b!2212546 b!2212547))

(assert (= (and b!2212421 ((_ is Leaf!12394) (right!20227 (right!20227 t!4663)))) b!2212546))

(declare-fun m!2654569 () Bool)

(assert (=> b!2212545 m!2654569))

(declare-fun m!2654571 () Bool)

(assert (=> b!2212545 m!2654571))

(declare-fun m!2654573 () Bool)

(assert (=> b!2212546 m!2654573))

(assert (=> b!2212421 m!2654391))

(declare-fun b!2212548 () Bool)

(declare-fun e!1412915 () Bool)

(declare-fun tp!687525 () Bool)

(assert (=> b!2212548 (= e!1412915 (and tp_is_empty!9793 tp!687525))))

(assert (=> b!2212417 (= tp!687504 e!1412915)))

(assert (= (and b!2212417 ((_ is Cons!25866) (innerList!8523 (xs!11405 (left!19897 t!4663))))) b!2212548))

(check-sat (not b!2212527) (not b!2212449) (not b!2212489) (not b!2212526) (not b!2212534) (not d!661437) (not b!2212461) (not d!661471) tp_is_empty!9793 (not b!2212438) (not b!2212469) (not b!2212542) (not d!661425) (not d!661465) (not b!2212456) (not b!2212460) (not b!2212486) (not b!2212454) (not b!2212443) (not d!661431) (not b!2212528) (not d!661413) (not b!2212471) (not d!661445) (not b!2212525) (not b!2212500) (not b!2212459) (not b!2212485) (not b!2212415) (not d!661481) (not b!2212421) (not b!2212547) (not b!2212548) (not b!2212546) (not b!2212433) (not b!2212503) (not b!2212477) (not d!661475) (not b!2212439) (not b!2212544) (not b!2212535) (not b!2212516) (not b!2212545) (not b!2212476) (not b!2212442) (not b!2212515) (not d!661423) (not b!2212505) (not b!2212480) (not d!661439) (not b!2212536) (not b!2212434) (not b!2212474) (not b!2212458) (not b!2212543) (not b!2212502) (not b!2212473) (not b!2212533) (not d!661447) (not d!661479) (not b!2212488) (not b!2212457) (not b!2212484) (not b!2212507) (not b!2212482) (not b!2212541) (not b!2212487) (not d!661441))
(check-sat)
(get-model)

(declare-fun d!661525 () Bool)

(declare-fun lt!826587 () Int)

(assert (=> d!661525 (>= lt!826587 0)))

(declare-fun e!1412950 () Int)

(assert (=> d!661525 (= lt!826587 e!1412950)))

(declare-fun c!353630 () Bool)

(assert (=> d!661525 (= c!353630 ((_ is Nil!25866) (t!198694 (innerList!8523 (xs!11405 t!4663)))))))

(assert (=> d!661525 (= (size!20183 (t!198694 (innerList!8523 (xs!11405 t!4663)))) lt!826587)))

(declare-fun b!2212614 () Bool)

(assert (=> b!2212614 (= e!1412950 0)))

(declare-fun b!2212615 () Bool)

(assert (=> b!2212615 (= e!1412950 (+ 1 (size!20183 (t!198694 (t!198694 (innerList!8523 (xs!11405 t!4663)))))))))

(assert (= (and d!661525 c!353630) b!2212614))

(assert (= (and d!661525 (not c!353630)) b!2212615))

(declare-fun m!2654679 () Bool)

(assert (=> b!2212615 m!2654679))

(assert (=> b!2212449 d!661525))

(declare-fun d!661527 () Bool)

(declare-fun res!950946 () Bool)

(declare-fun e!1412951 () Bool)

(assert (=> d!661527 (=> (not res!950946) (not e!1412951))))

(assert (=> d!661527 (= res!950946 (<= (size!20183 (list!10042 (xs!11405 (left!19897 (left!19897 t!4663))))) 512))))

(assert (=> d!661527 (= (inv!35044 (left!19897 (left!19897 t!4663))) e!1412951)))

(declare-fun b!2212616 () Bool)

(declare-fun res!950947 () Bool)

(assert (=> b!2212616 (=> (not res!950947) (not e!1412951))))

(assert (=> b!2212616 (= res!950947 (= (csize!17157 (left!19897 (left!19897 t!4663))) (size!20183 (list!10042 (xs!11405 (left!19897 (left!19897 t!4663)))))))))

(declare-fun b!2212617 () Bool)

(assert (=> b!2212617 (= e!1412951 (and (> (csize!17157 (left!19897 (left!19897 t!4663))) 0) (<= (csize!17157 (left!19897 (left!19897 t!4663))) 512)))))

(assert (= (and d!661527 res!950946) b!2212616))

(assert (= (and b!2212616 res!950947) b!2212617))

(declare-fun m!2654681 () Bool)

(assert (=> d!661527 m!2654681))

(assert (=> d!661527 m!2654681))

(declare-fun m!2654683 () Bool)

(assert (=> d!661527 m!2654683))

(assert (=> b!2212616 m!2654681))

(assert (=> b!2212616 m!2654681))

(assert (=> b!2212616 m!2654683))

(assert (=> b!2212502 d!661527))

(declare-fun d!661529 () Bool)

(declare-fun lt!826588 () Int)

(assert (=> d!661529 (>= lt!826588 0)))

(declare-fun e!1412952 () Int)

(assert (=> d!661529 (= lt!826588 e!1412952)))

(declare-fun c!353631 () Bool)

(assert (=> d!661529 (= c!353631 ((_ is Nil!25866) (list!10042 (xs!11405 t!4663))))))

(assert (=> d!661529 (= (size!20183 (list!10042 (xs!11405 t!4663))) lt!826588)))

(declare-fun b!2212618 () Bool)

(assert (=> b!2212618 (= e!1412952 0)))

(declare-fun b!2212619 () Bool)

(assert (=> b!2212619 (= e!1412952 (+ 1 (size!20183 (t!198694 (list!10042 (xs!11405 t!4663))))))))

(assert (= (and d!661529 c!353631) b!2212618))

(assert (= (and d!661529 (not c!353631)) b!2212619))

(declare-fun m!2654685 () Bool)

(assert (=> b!2212619 m!2654685))

(assert (=> b!2212477 d!661529))

(assert (=> b!2212477 d!661421))

(declare-fun d!661531 () Bool)

(declare-fun res!950948 () Bool)

(declare-fun e!1412953 () Bool)

(assert (=> d!661531 (=> (not res!950948) (not e!1412953))))

(assert (=> d!661531 (= res!950948 (= (csize!17156 (left!19897 (left!19897 t!4663))) (+ (size!20184 (left!19897 (left!19897 (left!19897 t!4663)))) (size!20184 (right!20227 (left!19897 (left!19897 t!4663)))))))))

(assert (=> d!661531 (= (inv!35043 (left!19897 (left!19897 t!4663))) e!1412953)))

(declare-fun b!2212620 () Bool)

(declare-fun res!950949 () Bool)

(assert (=> b!2212620 (=> (not res!950949) (not e!1412953))))

(assert (=> b!2212620 (= res!950949 (and (not (= (left!19897 (left!19897 (left!19897 t!4663))) Empty!8463)) (not (= (right!20227 (left!19897 (left!19897 t!4663))) Empty!8463))))))

(declare-fun b!2212621 () Bool)

(declare-fun res!950950 () Bool)

(assert (=> b!2212621 (=> (not res!950950) (not e!1412953))))

(assert (=> b!2212621 (= res!950950 (= (cheight!8674 (left!19897 (left!19897 t!4663))) (+ (max!0 (height!1287 (left!19897 (left!19897 (left!19897 t!4663)))) (height!1287 (right!20227 (left!19897 (left!19897 t!4663))))) 1)))))

(declare-fun b!2212622 () Bool)

(assert (=> b!2212622 (= e!1412953 (<= 0 (cheight!8674 (left!19897 (left!19897 t!4663)))))))

(assert (= (and d!661531 res!950948) b!2212620))

(assert (= (and b!2212620 res!950949) b!2212621))

(assert (= (and b!2212621 res!950950) b!2212622))

(declare-fun m!2654687 () Bool)

(assert (=> d!661531 m!2654687))

(declare-fun m!2654689 () Bool)

(assert (=> d!661531 m!2654689))

(declare-fun m!2654691 () Bool)

(assert (=> b!2212621 m!2654691))

(declare-fun m!2654693 () Bool)

(assert (=> b!2212621 m!2654693))

(assert (=> b!2212621 m!2654691))

(assert (=> b!2212621 m!2654693))

(declare-fun m!2654695 () Bool)

(assert (=> b!2212621 m!2654695))

(assert (=> b!2212500 d!661531))

(declare-fun d!661533 () Bool)

(declare-fun res!950951 () Bool)

(declare-fun e!1412954 () Bool)

(assert (=> d!661533 (=> (not res!950951) (not e!1412954))))

(assert (=> d!661533 (= res!950951 (<= (size!20183 (list!10042 (xs!11405 (left!19897 (right!20227 t!4663))))) 512))))

(assert (=> d!661533 (= (inv!35044 (left!19897 (right!20227 t!4663))) e!1412954)))

(declare-fun b!2212623 () Bool)

(declare-fun res!950952 () Bool)

(assert (=> b!2212623 (=> (not res!950952) (not e!1412954))))

(assert (=> b!2212623 (= res!950952 (= (csize!17157 (left!19897 (right!20227 t!4663))) (size!20183 (list!10042 (xs!11405 (left!19897 (right!20227 t!4663)))))))))

(declare-fun b!2212624 () Bool)

(assert (=> b!2212624 (= e!1412954 (and (> (csize!17157 (left!19897 (right!20227 t!4663))) 0) (<= (csize!17157 (left!19897 (right!20227 t!4663))) 512)))))

(assert (= (and d!661533 res!950951) b!2212623))

(assert (= (and b!2212623 res!950952) b!2212624))

(declare-fun m!2654697 () Bool)

(assert (=> d!661533 m!2654697))

(assert (=> d!661533 m!2654697))

(declare-fun m!2654699 () Bool)

(assert (=> d!661533 m!2654699))

(assert (=> b!2212623 m!2654697))

(assert (=> b!2212623 m!2654697))

(assert (=> b!2212623 m!2654699))

(assert (=> b!2212473 d!661533))

(declare-fun d!661535 () Bool)

(declare-fun c!353632 () Bool)

(assert (=> d!661535 (= c!353632 ((_ is Node!8463) (left!19897 (left!19897 (left!19897 t!4663)))))))

(declare-fun e!1412955 () Bool)

(assert (=> d!661535 (= (inv!35041 (left!19897 (left!19897 (left!19897 t!4663)))) e!1412955)))

(declare-fun b!2212625 () Bool)

(assert (=> b!2212625 (= e!1412955 (inv!35043 (left!19897 (left!19897 (left!19897 t!4663)))))))

(declare-fun b!2212626 () Bool)

(declare-fun e!1412956 () Bool)

(assert (=> b!2212626 (= e!1412955 e!1412956)))

(declare-fun res!950953 () Bool)

(assert (=> b!2212626 (= res!950953 (not ((_ is Leaf!12394) (left!19897 (left!19897 (left!19897 t!4663))))))))

(assert (=> b!2212626 (=> res!950953 e!1412956)))

(declare-fun b!2212627 () Bool)

(assert (=> b!2212627 (= e!1412956 (inv!35044 (left!19897 (left!19897 (left!19897 t!4663)))))))

(assert (= (and d!661535 c!353632) b!2212625))

(assert (= (and d!661535 (not c!353632)) b!2212626))

(assert (= (and b!2212626 (not res!950953)) b!2212627))

(declare-fun m!2654701 () Bool)

(assert (=> b!2212625 m!2654701))

(declare-fun m!2654703 () Bool)

(assert (=> b!2212627 m!2654703))

(assert (=> b!2212526 d!661535))

(declare-fun d!661537 () Bool)

(declare-fun c!353633 () Bool)

(assert (=> d!661537 (= c!353633 ((_ is Node!8463) (right!20227 (left!19897 (left!19897 t!4663)))))))

(declare-fun e!1412957 () Bool)

(assert (=> d!661537 (= (inv!35041 (right!20227 (left!19897 (left!19897 t!4663)))) e!1412957)))

(declare-fun b!2212628 () Bool)

(assert (=> b!2212628 (= e!1412957 (inv!35043 (right!20227 (left!19897 (left!19897 t!4663)))))))

(declare-fun b!2212629 () Bool)

(declare-fun e!1412958 () Bool)

(assert (=> b!2212629 (= e!1412957 e!1412958)))

(declare-fun res!950954 () Bool)

(assert (=> b!2212629 (= res!950954 (not ((_ is Leaf!12394) (right!20227 (left!19897 (left!19897 t!4663))))))))

(assert (=> b!2212629 (=> res!950954 e!1412958)))

(declare-fun b!2212630 () Bool)

(assert (=> b!2212630 (= e!1412958 (inv!35044 (right!20227 (left!19897 (left!19897 t!4663)))))))

(assert (= (and d!661537 c!353633) b!2212628))

(assert (= (and d!661537 (not c!353633)) b!2212629))

(assert (= (and b!2212629 (not res!950954)) b!2212630))

(declare-fun m!2654705 () Bool)

(assert (=> b!2212628 m!2654705))

(declare-fun m!2654707 () Bool)

(assert (=> b!2212630 m!2654707))

(assert (=> b!2212526 d!661537))

(declare-fun d!661539 () Bool)

(declare-fun res!950955 () Bool)

(declare-fun e!1412959 () Bool)

(assert (=> d!661539 (=> (not res!950955) (not e!1412959))))

(assert (=> d!661539 (= res!950955 (= (csize!17156 (left!19897 (right!20227 t!4663))) (+ (size!20184 (left!19897 (left!19897 (right!20227 t!4663)))) (size!20184 (right!20227 (left!19897 (right!20227 t!4663)))))))))

(assert (=> d!661539 (= (inv!35043 (left!19897 (right!20227 t!4663))) e!1412959)))

(declare-fun b!2212631 () Bool)

(declare-fun res!950956 () Bool)

(assert (=> b!2212631 (=> (not res!950956) (not e!1412959))))

(assert (=> b!2212631 (= res!950956 (and (not (= (left!19897 (left!19897 (right!20227 t!4663))) Empty!8463)) (not (= (right!20227 (left!19897 (right!20227 t!4663))) Empty!8463))))))

(declare-fun b!2212632 () Bool)

(declare-fun res!950957 () Bool)

(assert (=> b!2212632 (=> (not res!950957) (not e!1412959))))

(assert (=> b!2212632 (= res!950957 (= (cheight!8674 (left!19897 (right!20227 t!4663))) (+ (max!0 (height!1287 (left!19897 (left!19897 (right!20227 t!4663)))) (height!1287 (right!20227 (left!19897 (right!20227 t!4663))))) 1)))))

(declare-fun b!2212633 () Bool)

(assert (=> b!2212633 (= e!1412959 (<= 0 (cheight!8674 (left!19897 (right!20227 t!4663)))))))

(assert (= (and d!661539 res!950955) b!2212631))

(assert (= (and b!2212631 res!950956) b!2212632))

(assert (= (and b!2212632 res!950957) b!2212633))

(declare-fun m!2654709 () Bool)

(assert (=> d!661539 m!2654709))

(declare-fun m!2654711 () Bool)

(assert (=> d!661539 m!2654711))

(declare-fun m!2654713 () Bool)

(assert (=> b!2212632 m!2654713))

(declare-fun m!2654715 () Bool)

(assert (=> b!2212632 m!2654715))

(assert (=> b!2212632 m!2654713))

(assert (=> b!2212632 m!2654715))

(declare-fun m!2654717 () Bool)

(assert (=> b!2212632 m!2654717))

(assert (=> b!2212471 d!661539))

(declare-fun b!2212637 () Bool)

(declare-fun e!1412961 () Bool)

(declare-fun lt!826589 () List!25950)

(assert (=> b!2212637 (= e!1412961 (or (not (= (list!10040 (right!20227 (left!19897 t!4663))) Nil!25866)) (= lt!826589 (list!10040 (left!19897 (left!19897 t!4663))))))))

(declare-fun b!2212635 () Bool)

(declare-fun e!1412960 () List!25950)

(assert (=> b!2212635 (= e!1412960 (Cons!25866 (h!31267 (list!10040 (left!19897 (left!19897 t!4663)))) (++!6453 (t!198694 (list!10040 (left!19897 (left!19897 t!4663)))) (list!10040 (right!20227 (left!19897 t!4663))))))))

(declare-fun d!661541 () Bool)

(assert (=> d!661541 e!1412961))

(declare-fun res!950959 () Bool)

(assert (=> d!661541 (=> (not res!950959) (not e!1412961))))

(assert (=> d!661541 (= res!950959 (= (content!3517 lt!826589) ((_ map or) (content!3517 (list!10040 (left!19897 (left!19897 t!4663)))) (content!3517 (list!10040 (right!20227 (left!19897 t!4663)))))))))

(assert (=> d!661541 (= lt!826589 e!1412960)))

(declare-fun c!353634 () Bool)

(assert (=> d!661541 (= c!353634 ((_ is Nil!25866) (list!10040 (left!19897 (left!19897 t!4663)))))))

(assert (=> d!661541 (= (++!6453 (list!10040 (left!19897 (left!19897 t!4663))) (list!10040 (right!20227 (left!19897 t!4663)))) lt!826589)))

(declare-fun b!2212634 () Bool)

(assert (=> b!2212634 (= e!1412960 (list!10040 (right!20227 (left!19897 t!4663))))))

(declare-fun b!2212636 () Bool)

(declare-fun res!950958 () Bool)

(assert (=> b!2212636 (=> (not res!950958) (not e!1412961))))

(assert (=> b!2212636 (= res!950958 (= (size!20183 lt!826589) (+ (size!20183 (list!10040 (left!19897 (left!19897 t!4663)))) (size!20183 (list!10040 (right!20227 (left!19897 t!4663)))))))))

(assert (= (and d!661541 c!353634) b!2212634))

(assert (= (and d!661541 (not c!353634)) b!2212635))

(assert (= (and d!661541 res!950959) b!2212636))

(assert (= (and b!2212636 res!950958) b!2212637))

(assert (=> b!2212635 m!2654411))

(declare-fun m!2654719 () Bool)

(assert (=> b!2212635 m!2654719))

(declare-fun m!2654721 () Bool)

(assert (=> d!661541 m!2654721))

(assert (=> d!661541 m!2654409))

(declare-fun m!2654723 () Bool)

(assert (=> d!661541 m!2654723))

(assert (=> d!661541 m!2654411))

(declare-fun m!2654725 () Bool)

(assert (=> d!661541 m!2654725))

(declare-fun m!2654727 () Bool)

(assert (=> b!2212636 m!2654727))

(assert (=> b!2212636 m!2654409))

(declare-fun m!2654729 () Bool)

(assert (=> b!2212636 m!2654729))

(assert (=> b!2212636 m!2654411))

(declare-fun m!2654731 () Bool)

(assert (=> b!2212636 m!2654731))

(assert (=> b!2212439 d!661541))

(declare-fun b!2212641 () Bool)

(declare-fun e!1412963 () List!25950)

(assert (=> b!2212641 (= e!1412963 (++!6453 (list!10040 (left!19897 (left!19897 (left!19897 t!4663)))) (list!10040 (right!20227 (left!19897 (left!19897 t!4663))))))))

(declare-fun b!2212640 () Bool)

(assert (=> b!2212640 (= e!1412963 (list!10042 (xs!11405 (left!19897 (left!19897 t!4663)))))))

(declare-fun d!661543 () Bool)

(declare-fun c!353635 () Bool)

(assert (=> d!661543 (= c!353635 ((_ is Empty!8463) (left!19897 (left!19897 t!4663))))))

(declare-fun e!1412962 () List!25950)

(assert (=> d!661543 (= (list!10040 (left!19897 (left!19897 t!4663))) e!1412962)))

(declare-fun b!2212638 () Bool)

(assert (=> b!2212638 (= e!1412962 Nil!25866)))

(declare-fun b!2212639 () Bool)

(assert (=> b!2212639 (= e!1412962 e!1412963)))

(declare-fun c!353636 () Bool)

(assert (=> b!2212639 (= c!353636 ((_ is Leaf!12394) (left!19897 (left!19897 t!4663))))))

(assert (= (and d!661543 c!353635) b!2212638))

(assert (= (and d!661543 (not c!353635)) b!2212639))

(assert (= (and b!2212639 c!353636) b!2212640))

(assert (= (and b!2212639 (not c!353636)) b!2212641))

(declare-fun m!2654733 () Bool)

(assert (=> b!2212641 m!2654733))

(declare-fun m!2654735 () Bool)

(assert (=> b!2212641 m!2654735))

(assert (=> b!2212641 m!2654733))

(assert (=> b!2212641 m!2654735))

(declare-fun m!2654737 () Bool)

(assert (=> b!2212641 m!2654737))

(assert (=> b!2212640 m!2654681))

(assert (=> b!2212439 d!661543))

(declare-fun b!2212645 () Bool)

(declare-fun e!1412965 () List!25950)

(assert (=> b!2212645 (= e!1412965 (++!6453 (list!10040 (left!19897 (right!20227 (left!19897 t!4663)))) (list!10040 (right!20227 (right!20227 (left!19897 t!4663))))))))

(declare-fun b!2212644 () Bool)

(assert (=> b!2212644 (= e!1412965 (list!10042 (xs!11405 (right!20227 (left!19897 t!4663)))))))

(declare-fun d!661545 () Bool)

(declare-fun c!353637 () Bool)

(assert (=> d!661545 (= c!353637 ((_ is Empty!8463) (right!20227 (left!19897 t!4663))))))

(declare-fun e!1412964 () List!25950)

(assert (=> d!661545 (= (list!10040 (right!20227 (left!19897 t!4663))) e!1412964)))

(declare-fun b!2212642 () Bool)

(assert (=> b!2212642 (= e!1412964 Nil!25866)))

(declare-fun b!2212643 () Bool)

(assert (=> b!2212643 (= e!1412964 e!1412965)))

(declare-fun c!353638 () Bool)

(assert (=> b!2212643 (= c!353638 ((_ is Leaf!12394) (right!20227 (left!19897 t!4663))))))

(assert (= (and d!661545 c!353637) b!2212642))

(assert (= (and d!661545 (not c!353637)) b!2212643))

(assert (= (and b!2212643 c!353638) b!2212644))

(assert (= (and b!2212643 (not c!353638)) b!2212645))

(declare-fun m!2654739 () Bool)

(assert (=> b!2212645 m!2654739))

(declare-fun m!2654741 () Bool)

(assert (=> b!2212645 m!2654741))

(assert (=> b!2212645 m!2654739))

(assert (=> b!2212645 m!2654741))

(declare-fun m!2654743 () Bool)

(assert (=> b!2212645 m!2654743))

(declare-fun m!2654745 () Bool)

(assert (=> b!2212644 m!2654745))

(assert (=> b!2212439 d!661545))

(assert (=> d!661437 d!661529))

(assert (=> d!661437 d!661421))

(declare-fun d!661547 () Bool)

(assert (=> d!661547 (= (isEmpty!14816 (list!10040 (left!19897 t!4663))) ((_ is Nil!25866) (list!10040 (left!19897 t!4663))))))

(assert (=> d!661479 d!661547))

(assert (=> d!661479 d!661415))

(declare-fun d!661549 () Bool)

(declare-fun lt!826590 () Int)

(assert (=> d!661549 (= lt!826590 (size!20183 (list!10040 (left!19897 t!4663))))))

(assert (=> d!661549 (= lt!826590 (ite ((_ is Empty!8463) (left!19897 t!4663)) 0 (ite ((_ is Leaf!12394) (left!19897 t!4663)) (csize!17157 (left!19897 t!4663)) (csize!17156 (left!19897 t!4663)))))))

(assert (=> d!661549 (= (size!20184 (left!19897 t!4663)) lt!826590)))

(declare-fun bs!451487 () Bool)

(assert (= bs!451487 d!661549))

(assert (=> bs!451487 m!2654313))

(assert (=> bs!451487 m!2654313))

(assert (=> bs!451487 m!2654405))

(assert (=> d!661479 d!661549))

(declare-fun d!661551 () Bool)

(assert (=> d!661551 (= (head!4727 (list!10040 (left!19897 (left!19897 t!4663)))) (h!31267 (list!10040 (left!19897 (left!19897 t!4663)))))))

(assert (=> d!661475 d!661551))

(assert (=> d!661475 d!661543))

(declare-fun b!2212646 () Bool)

(declare-fun res!950963 () Bool)

(declare-fun e!1412966 () Bool)

(assert (=> b!2212646 (=> (not res!950963) (not e!1412966))))

(assert (=> b!2212646 (= res!950963 (isBalanced!2621 (left!19897 (left!19897 (left!19897 t!4663)))))))

(declare-fun b!2212647 () Bool)

(declare-fun res!950965 () Bool)

(assert (=> b!2212647 (=> (not res!950965) (not e!1412966))))

(assert (=> b!2212647 (= res!950965 (not (isEmpty!14815 (left!19897 (left!19897 (left!19897 t!4663))))))))

(declare-fun b!2212648 () Bool)

(assert (=> b!2212648 (= e!1412966 (not (isEmpty!14815 (right!20227 (left!19897 (left!19897 t!4663))))))))

(declare-fun b!2212649 () Bool)

(declare-fun res!950960 () Bool)

(assert (=> b!2212649 (=> (not res!950960) (not e!1412966))))

(assert (=> b!2212649 (= res!950960 (<= (- (height!1287 (left!19897 (left!19897 (left!19897 t!4663)))) (height!1287 (right!20227 (left!19897 (left!19897 t!4663))))) 1))))

(declare-fun b!2212650 () Bool)

(declare-fun e!1412967 () Bool)

(assert (=> b!2212650 (= e!1412967 e!1412966)))

(declare-fun res!950962 () Bool)

(assert (=> b!2212650 (=> (not res!950962) (not e!1412966))))

(assert (=> b!2212650 (= res!950962 (<= (- 1) (- (height!1287 (left!19897 (left!19897 (left!19897 t!4663)))) (height!1287 (right!20227 (left!19897 (left!19897 t!4663)))))))))

(declare-fun d!661553 () Bool)

(declare-fun res!950961 () Bool)

(assert (=> d!661553 (=> res!950961 e!1412967)))

(assert (=> d!661553 (= res!950961 (not ((_ is Node!8463) (left!19897 (left!19897 t!4663)))))))

(assert (=> d!661553 (= (isBalanced!2621 (left!19897 (left!19897 t!4663))) e!1412967)))

(declare-fun b!2212651 () Bool)

(declare-fun res!950964 () Bool)

(assert (=> b!2212651 (=> (not res!950964) (not e!1412966))))

(assert (=> b!2212651 (= res!950964 (isBalanced!2621 (right!20227 (left!19897 (left!19897 t!4663)))))))

(assert (= (and d!661553 (not res!950961)) b!2212650))

(assert (= (and b!2212650 res!950962) b!2212649))

(assert (= (and b!2212649 res!950960) b!2212646))

(assert (= (and b!2212646 res!950963) b!2212651))

(assert (= (and b!2212651 res!950964) b!2212647))

(assert (= (and b!2212647 res!950965) b!2212648))

(assert (=> b!2212650 m!2654691))

(assert (=> b!2212650 m!2654693))

(declare-fun m!2654747 () Bool)

(assert (=> b!2212647 m!2654747))

(declare-fun m!2654749 () Bool)

(assert (=> b!2212648 m!2654749))

(declare-fun m!2654751 () Bool)

(assert (=> b!2212651 m!2654751))

(declare-fun m!2654753 () Bool)

(assert (=> b!2212646 m!2654753))

(assert (=> b!2212649 m!2654691))

(assert (=> b!2212649 m!2654693))

(assert (=> d!661475 d!661553))

(declare-fun d!661555 () Bool)

(assert (=> d!661555 (= (list!10042 (xs!11405 (right!20227 t!4663))) (innerList!8523 (xs!11405 (right!20227 t!4663))))))

(assert (=> b!2212442 d!661555))

(declare-fun d!661557 () Bool)

(assert (=> d!661557 (= (inv!35042 (xs!11405 (left!19897 (right!20227 t!4663)))) (<= (size!20183 (innerList!8523 (xs!11405 (left!19897 (right!20227 t!4663))))) 2147483647))))

(declare-fun bs!451488 () Bool)

(assert (= bs!451488 d!661557))

(declare-fun m!2654755 () Bool)

(assert (=> bs!451488 m!2654755))

(assert (=> b!2212543 d!661557))

(declare-fun d!661559 () Bool)

(declare-fun lt!826591 () Int)

(assert (=> d!661559 (>= lt!826591 0)))

(declare-fun e!1412968 () Int)

(assert (=> d!661559 (= lt!826591 e!1412968)))

(declare-fun c!353639 () Bool)

(assert (=> d!661559 (= c!353639 ((_ is Nil!25866) lt!826559))))

(assert (=> d!661559 (= (size!20183 lt!826559) lt!826591)))

(declare-fun b!2212652 () Bool)

(assert (=> b!2212652 (= e!1412968 0)))

(declare-fun b!2212653 () Bool)

(assert (=> b!2212653 (= e!1412968 (+ 1 (size!20183 (t!198694 lt!826559))))))

(assert (= (and d!661559 c!353639) b!2212652))

(assert (= (and d!661559 (not c!353639)) b!2212653))

(declare-fun m!2654757 () Bool)

(assert (=> b!2212653 m!2654757))

(assert (=> b!2212434 d!661559))

(declare-fun d!661561 () Bool)

(declare-fun lt!826592 () Int)

(assert (=> d!661561 (>= lt!826592 0)))

(declare-fun e!1412969 () Int)

(assert (=> d!661561 (= lt!826592 e!1412969)))

(declare-fun c!353640 () Bool)

(assert (=> d!661561 (= c!353640 ((_ is Nil!25866) (list!10040 (left!19897 t!4663))))))

(assert (=> d!661561 (= (size!20183 (list!10040 (left!19897 t!4663))) lt!826592)))

(declare-fun b!2212654 () Bool)

(assert (=> b!2212654 (= e!1412969 0)))

(declare-fun b!2212655 () Bool)

(assert (=> b!2212655 (= e!1412969 (+ 1 (size!20183 (t!198694 (list!10040 (left!19897 t!4663))))))))

(assert (= (and d!661561 c!353640) b!2212654))

(assert (= (and d!661561 (not c!353640)) b!2212655))

(declare-fun m!2654759 () Bool)

(assert (=> b!2212655 m!2654759))

(assert (=> b!2212434 d!661561))

(declare-fun d!661563 () Bool)

(declare-fun lt!826593 () Int)

(assert (=> d!661563 (>= lt!826593 0)))

(declare-fun e!1412970 () Int)

(assert (=> d!661563 (= lt!826593 e!1412970)))

(declare-fun c!353641 () Bool)

(assert (=> d!661563 (= c!353641 ((_ is Nil!25866) (list!10040 (right!20227 t!4663))))))

(assert (=> d!661563 (= (size!20183 (list!10040 (right!20227 t!4663))) lt!826593)))

(declare-fun b!2212656 () Bool)

(assert (=> b!2212656 (= e!1412970 0)))

(declare-fun b!2212657 () Bool)

(assert (=> b!2212657 (= e!1412970 (+ 1 (size!20183 (t!198694 (list!10040 (right!20227 t!4663))))))))

(assert (= (and d!661563 c!353641) b!2212656))

(assert (= (and d!661563 (not c!353641)) b!2212657))

(declare-fun m!2654761 () Bool)

(assert (=> b!2212657 m!2654761))

(assert (=> b!2212434 d!661563))

(declare-fun d!661565 () Bool)

(declare-fun lt!826594 () Int)

(assert (=> d!661565 (>= lt!826594 0)))

(declare-fun e!1412971 () Int)

(assert (=> d!661565 (= lt!826594 e!1412971)))

(declare-fun c!353642 () Bool)

(assert (=> d!661565 (= c!353642 ((_ is Nil!25866) (list!10040 t!4663)))))

(assert (=> d!661565 (= (size!20183 (list!10040 t!4663)) lt!826594)))

(declare-fun b!2212658 () Bool)

(assert (=> b!2212658 (= e!1412971 0)))

(declare-fun b!2212659 () Bool)

(assert (=> b!2212659 (= e!1412971 (+ 1 (size!20183 (t!198694 (list!10040 t!4663)))))))

(assert (= (and d!661565 c!353642) b!2212658))

(assert (= (and d!661565 (not c!353642)) b!2212659))

(declare-fun m!2654763 () Bool)

(assert (=> b!2212659 m!2654763))

(assert (=> d!661445 d!661565))

(assert (=> d!661445 d!661397))

(declare-fun d!661567 () Bool)

(declare-fun res!950966 () Bool)

(declare-fun e!1412972 () Bool)

(assert (=> d!661567 (=> (not res!950966) (not e!1412972))))

(assert (=> d!661567 (= res!950966 (<= (size!20183 (list!10042 (xs!11405 (right!20227 (left!19897 t!4663))))) 512))))

(assert (=> d!661567 (= (inv!35044 (right!20227 (left!19897 t!4663))) e!1412972)))

(declare-fun b!2212660 () Bool)

(declare-fun res!950967 () Bool)

(assert (=> b!2212660 (=> (not res!950967) (not e!1412972))))

(assert (=> b!2212660 (= res!950967 (= (csize!17157 (right!20227 (left!19897 t!4663))) (size!20183 (list!10042 (xs!11405 (right!20227 (left!19897 t!4663)))))))))

(declare-fun b!2212661 () Bool)

(assert (=> b!2212661 (= e!1412972 (and (> (csize!17157 (right!20227 (left!19897 t!4663))) 0) (<= (csize!17157 (right!20227 (left!19897 t!4663))) 512)))))

(assert (= (and d!661567 res!950966) b!2212660))

(assert (= (and b!2212660 res!950967) b!2212661))

(assert (=> d!661567 m!2654745))

(assert (=> d!661567 m!2654745))

(declare-fun m!2654765 () Bool)

(assert (=> d!661567 m!2654765))

(assert (=> b!2212660 m!2654745))

(assert (=> b!2212660 m!2654745))

(assert (=> b!2212660 m!2654765))

(assert (=> b!2212505 d!661567))

(declare-fun d!661569 () Bool)

(declare-fun res!950968 () Bool)

(declare-fun e!1412973 () Bool)

(assert (=> d!661569 (=> (not res!950968) (not e!1412973))))

(assert (=> d!661569 (= res!950968 (= (csize!17156 (right!20227 (left!19897 t!4663))) (+ (size!20184 (left!19897 (right!20227 (left!19897 t!4663)))) (size!20184 (right!20227 (right!20227 (left!19897 t!4663)))))))))

(assert (=> d!661569 (= (inv!35043 (right!20227 (left!19897 t!4663))) e!1412973)))

(declare-fun b!2212662 () Bool)

(declare-fun res!950969 () Bool)

(assert (=> b!2212662 (=> (not res!950969) (not e!1412973))))

(assert (=> b!2212662 (= res!950969 (and (not (= (left!19897 (right!20227 (left!19897 t!4663))) Empty!8463)) (not (= (right!20227 (right!20227 (left!19897 t!4663))) Empty!8463))))))

(declare-fun b!2212663 () Bool)

(declare-fun res!950970 () Bool)

(assert (=> b!2212663 (=> (not res!950970) (not e!1412973))))

(assert (=> b!2212663 (= res!950970 (= (cheight!8674 (right!20227 (left!19897 t!4663))) (+ (max!0 (height!1287 (left!19897 (right!20227 (left!19897 t!4663)))) (height!1287 (right!20227 (right!20227 (left!19897 t!4663))))) 1)))))

(declare-fun b!2212664 () Bool)

(assert (=> b!2212664 (= e!1412973 (<= 0 (cheight!8674 (right!20227 (left!19897 t!4663)))))))

(assert (= (and d!661569 res!950968) b!2212662))

(assert (= (and b!2212662 res!950969) b!2212663))

(assert (= (and b!2212663 res!950970) b!2212664))

(declare-fun m!2654767 () Bool)

(assert (=> d!661569 m!2654767))

(declare-fun m!2654769 () Bool)

(assert (=> d!661569 m!2654769))

(declare-fun m!2654771 () Bool)

(assert (=> b!2212663 m!2654771))

(declare-fun m!2654773 () Bool)

(assert (=> b!2212663 m!2654773))

(assert (=> b!2212663 m!2654771))

(assert (=> b!2212663 m!2654773))

(declare-fun m!2654775 () Bool)

(assert (=> b!2212663 m!2654775))

(assert (=> b!2212503 d!661569))

(declare-fun d!661571 () Bool)

(assert (=> d!661571 (= (max!0 (height!1287 (left!19897 t!4663)) (height!1287 (right!20227 t!4663))) (ite (< (height!1287 (left!19897 t!4663)) (height!1287 (right!20227 t!4663))) (height!1287 (right!20227 t!4663)) (height!1287 (left!19897 t!4663))))))

(assert (=> b!2212480 d!661571))

(assert (=> b!2212480 d!661449))

(assert (=> b!2212480 d!661453))

(assert (=> b!2212421 d!661433))

(assert (=> b!2212421 d!661435))

(declare-fun d!661573 () Bool)

(declare-fun res!950971 () Bool)

(declare-fun e!1412974 () Bool)

(assert (=> d!661573 (=> (not res!950971) (not e!1412974))))

(assert (=> d!661573 (= res!950971 (<= (size!20183 (list!10042 (xs!11405 (right!20227 (right!20227 t!4663))))) 512))))

(assert (=> d!661573 (= (inv!35044 (right!20227 (right!20227 t!4663))) e!1412974)))

(declare-fun b!2212665 () Bool)

(declare-fun res!950972 () Bool)

(assert (=> b!2212665 (=> (not res!950972) (not e!1412974))))

(assert (=> b!2212665 (= res!950972 (= (csize!17157 (right!20227 (right!20227 t!4663))) (size!20183 (list!10042 (xs!11405 (right!20227 (right!20227 t!4663)))))))))

(declare-fun b!2212666 () Bool)

(assert (=> b!2212666 (= e!1412974 (and (> (csize!17157 (right!20227 (right!20227 t!4663))) 0) (<= (csize!17157 (right!20227 (right!20227 t!4663))) 512)))))

(assert (= (and d!661573 res!950971) b!2212665))

(assert (= (and b!2212665 res!950972) b!2212666))

(declare-fun m!2654777 () Bool)

(assert (=> d!661573 m!2654777))

(assert (=> d!661573 m!2654777))

(declare-fun m!2654779 () Bool)

(assert (=> d!661573 m!2654779))

(assert (=> b!2212665 m!2654777))

(assert (=> b!2212665 m!2654777))

(assert (=> b!2212665 m!2654779))

(assert (=> b!2212476 d!661573))

(declare-fun d!661575 () Bool)

(declare-fun lt!826597 () Int)

(assert (=> d!661575 (= lt!826597 (size!20183 (list!10042 (xs!11405 (left!19897 t!4663)))))))

(declare-fun choose!13059 (IArray!16931) Int)

(assert (=> d!661575 (= lt!826597 (choose!13059 (xs!11405 (left!19897 t!4663))))))

(assert (=> d!661575 (= (size!20187 (xs!11405 (left!19897 t!4663))) lt!826597)))

(declare-fun bs!451489 () Bool)

(assert (= bs!451489 d!661575))

(assert (=> bs!451489 m!2654415))

(assert (=> bs!451489 m!2654415))

(assert (=> bs!451489 m!2654427))

(declare-fun m!2654781 () Bool)

(assert (=> bs!451489 m!2654781))

(assert (=> b!2212525 d!661575))

(declare-fun d!661577 () Bool)

(assert (=> d!661577 (= (height!1287 (left!19897 (left!19897 t!4663))) (ite ((_ is Empty!8463) (left!19897 (left!19897 t!4663))) 0 (ite ((_ is Leaf!12394) (left!19897 (left!19897 t!4663))) 1 (cheight!8674 (left!19897 (left!19897 t!4663))))))))

(assert (=> b!2212460 d!661577))

(declare-fun d!661579 () Bool)

(assert (=> d!661579 (= (height!1287 (right!20227 (left!19897 t!4663))) (ite ((_ is Empty!8463) (right!20227 (left!19897 t!4663))) 0 (ite ((_ is Leaf!12394) (right!20227 (left!19897 t!4663))) 1 (cheight!8674 (right!20227 (left!19897 t!4663))))))))

(assert (=> b!2212460 d!661579))

(declare-fun d!661581 () Bool)

(declare-fun lt!826598 () Int)

(assert (=> d!661581 (>= lt!826598 0)))

(declare-fun e!1412975 () Int)

(assert (=> d!661581 (= lt!826598 e!1412975)))

(declare-fun c!353643 () Bool)

(assert (=> d!661581 (= c!353643 ((_ is Nil!25866) (list!10042 (xs!11405 (left!19897 t!4663)))))))

(assert (=> d!661581 (= (size!20183 (list!10042 (xs!11405 (left!19897 t!4663)))) lt!826598)))

(declare-fun b!2212667 () Bool)

(assert (=> b!2212667 (= e!1412975 0)))

(declare-fun b!2212668 () Bool)

(assert (=> b!2212668 (= e!1412975 (+ 1 (size!20183 (t!198694 (list!10042 (xs!11405 (left!19897 t!4663)))))))))

(assert (= (and d!661581 c!353643) b!2212667))

(assert (= (and d!661581 (not c!353643)) b!2212668))

(declare-fun m!2654783 () Bool)

(assert (=> b!2212668 m!2654783))

(assert (=> d!661423 d!661581))

(declare-fun d!661583 () Bool)

(assert (=> d!661583 (= (list!10042 (xs!11405 (left!19897 t!4663))) (innerList!8523 (xs!11405 (left!19897 t!4663))))))

(assert (=> d!661423 d!661583))

(declare-fun d!661585 () Bool)

(declare-fun res!950973 () Bool)

(declare-fun e!1412976 () Bool)

(assert (=> d!661585 (=> (not res!950973) (not e!1412976))))

(assert (=> d!661585 (= res!950973 (= (csize!17156 (right!20227 (right!20227 t!4663))) (+ (size!20184 (left!19897 (right!20227 (right!20227 t!4663)))) (size!20184 (right!20227 (right!20227 (right!20227 t!4663)))))))))

(assert (=> d!661585 (= (inv!35043 (right!20227 (right!20227 t!4663))) e!1412976)))

(declare-fun b!2212669 () Bool)

(declare-fun res!950974 () Bool)

(assert (=> b!2212669 (=> (not res!950974) (not e!1412976))))

(assert (=> b!2212669 (= res!950974 (and (not (= (left!19897 (right!20227 (right!20227 t!4663))) Empty!8463)) (not (= (right!20227 (right!20227 (right!20227 t!4663))) Empty!8463))))))

(declare-fun b!2212670 () Bool)

(declare-fun res!950975 () Bool)

(assert (=> b!2212670 (=> (not res!950975) (not e!1412976))))

(assert (=> b!2212670 (= res!950975 (= (cheight!8674 (right!20227 (right!20227 t!4663))) (+ (max!0 (height!1287 (left!19897 (right!20227 (right!20227 t!4663)))) (height!1287 (right!20227 (right!20227 (right!20227 t!4663))))) 1)))))

(declare-fun b!2212671 () Bool)

(assert (=> b!2212671 (= e!1412976 (<= 0 (cheight!8674 (right!20227 (right!20227 t!4663)))))))

(assert (= (and d!661585 res!950973) b!2212669))

(assert (= (and b!2212669 res!950974) b!2212670))

(assert (= (and b!2212670 res!950975) b!2212671))

(declare-fun m!2654785 () Bool)

(assert (=> d!661585 m!2654785))

(declare-fun m!2654787 () Bool)

(assert (=> d!661585 m!2654787))

(declare-fun m!2654789 () Bool)

(assert (=> b!2212670 m!2654789))

(declare-fun m!2654791 () Bool)

(assert (=> b!2212670 m!2654791))

(assert (=> b!2212670 m!2654789))

(assert (=> b!2212670 m!2654791))

(declare-fun m!2654793 () Bool)

(assert (=> b!2212670 m!2654793))

(assert (=> b!2212474 d!661585))

(declare-fun d!661587 () Bool)

(declare-fun c!353644 () Bool)

(assert (=> d!661587 (= c!353644 ((_ is Node!8463) (left!19897 (right!20227 (left!19897 t!4663)))))))

(declare-fun e!1412977 () Bool)

(assert (=> d!661587 (= (inv!35041 (left!19897 (right!20227 (left!19897 t!4663)))) e!1412977)))

(declare-fun b!2212672 () Bool)

(assert (=> b!2212672 (= e!1412977 (inv!35043 (left!19897 (right!20227 (left!19897 t!4663)))))))

(declare-fun b!2212673 () Bool)

(declare-fun e!1412978 () Bool)

(assert (=> b!2212673 (= e!1412977 e!1412978)))

(declare-fun res!950976 () Bool)

(assert (=> b!2212673 (= res!950976 (not ((_ is Leaf!12394) (left!19897 (right!20227 (left!19897 t!4663))))))))

(assert (=> b!2212673 (=> res!950976 e!1412978)))

(declare-fun b!2212674 () Bool)

(assert (=> b!2212674 (= e!1412978 (inv!35044 (left!19897 (right!20227 (left!19897 t!4663)))))))

(assert (= (and d!661587 c!353644) b!2212672))

(assert (= (and d!661587 (not c!353644)) b!2212673))

(assert (= (and b!2212673 (not res!950976)) b!2212674))

(declare-fun m!2654795 () Bool)

(assert (=> b!2212672 m!2654795))

(declare-fun m!2654797 () Bool)

(assert (=> b!2212674 m!2654797))

(assert (=> b!2212533 d!661587))

(declare-fun d!661589 () Bool)

(declare-fun c!353645 () Bool)

(assert (=> d!661589 (= c!353645 ((_ is Node!8463) (right!20227 (right!20227 (left!19897 t!4663)))))))

(declare-fun e!1412979 () Bool)

(assert (=> d!661589 (= (inv!35041 (right!20227 (right!20227 (left!19897 t!4663)))) e!1412979)))

(declare-fun b!2212675 () Bool)

(assert (=> b!2212675 (= e!1412979 (inv!35043 (right!20227 (right!20227 (left!19897 t!4663)))))))

(declare-fun b!2212676 () Bool)

(declare-fun e!1412980 () Bool)

(assert (=> b!2212676 (= e!1412979 e!1412980)))

(declare-fun res!950977 () Bool)

(assert (=> b!2212676 (= res!950977 (not ((_ is Leaf!12394) (right!20227 (right!20227 (left!19897 t!4663))))))))

(assert (=> b!2212676 (=> res!950977 e!1412980)))

(declare-fun b!2212677 () Bool)

(assert (=> b!2212677 (= e!1412980 (inv!35044 (right!20227 (right!20227 (left!19897 t!4663)))))))

(assert (= (and d!661589 c!353645) b!2212675))

(assert (= (and d!661589 (not c!353645)) b!2212676))

(assert (= (and b!2212676 (not res!950977)) b!2212677))

(declare-fun m!2654799 () Bool)

(assert (=> b!2212675 m!2654799))

(declare-fun m!2654801 () Bool)

(assert (=> b!2212677 m!2654801))

(assert (=> b!2212533 d!661589))

(declare-fun d!661591 () Bool)

(assert (=> d!661591 (= (height!1287 (left!19897 (right!20227 t!4663))) (ite ((_ is Empty!8463) (left!19897 (right!20227 t!4663))) 0 (ite ((_ is Leaf!12394) (left!19897 (right!20227 t!4663))) 1 (cheight!8674 (left!19897 (right!20227 t!4663))))))))

(assert (=> b!2212488 d!661591))

(declare-fun d!661593 () Bool)

(assert (=> d!661593 (= (height!1287 (right!20227 (right!20227 t!4663))) (ite ((_ is Empty!8463) (right!20227 (right!20227 t!4663))) 0 (ite ((_ is Leaf!12394) (right!20227 (right!20227 t!4663))) 1 (cheight!8674 (right!20227 (right!20227 t!4663))))))))

(assert (=> b!2212488 d!661593))

(declare-fun d!661595 () Bool)

(declare-fun lt!826599 () Bool)

(assert (=> d!661595 (= lt!826599 (isEmpty!14816 (list!10040 (right!20227 (right!20227 t!4663)))))))

(assert (=> d!661595 (= lt!826599 (= (size!20184 (right!20227 (right!20227 t!4663))) 0))))

(assert (=> d!661595 (= (isEmpty!14815 (right!20227 (right!20227 t!4663))) lt!826599)))

(declare-fun bs!451490 () Bool)

(assert (= bs!451490 d!661595))

(assert (=> bs!451490 m!2654419))

(assert (=> bs!451490 m!2654419))

(declare-fun m!2654803 () Bool)

(assert (=> bs!451490 m!2654803))

(assert (=> bs!451490 m!2654517))

(assert (=> b!2212486 d!661595))

(declare-fun d!661597 () Bool)

(declare-fun lt!826600 () Bool)

(assert (=> d!661597 (= lt!826600 (isEmpty!14816 (list!10040 (right!20227 (left!19897 t!4663)))))))

(assert (=> d!661597 (= lt!826600 (= (size!20184 (right!20227 (left!19897 t!4663))) 0))))

(assert (=> d!661597 (= (isEmpty!14815 (right!20227 (left!19897 t!4663))) lt!826600)))

(declare-fun bs!451491 () Bool)

(assert (= bs!451491 d!661597))

(assert (=> bs!451491 m!2654411))

(assert (=> bs!451491 m!2654411))

(declare-fun m!2654805 () Bool)

(assert (=> bs!451491 m!2654805))

(assert (=> bs!451491 m!2654445))

(assert (=> b!2212458 d!661597))

(declare-fun d!661599 () Bool)

(declare-fun c!353646 () Bool)

(assert (=> d!661599 (= c!353646 ((_ is Node!8463) (left!19897 (right!20227 (right!20227 t!4663)))))))

(declare-fun e!1412981 () Bool)

(assert (=> d!661599 (= (inv!35041 (left!19897 (right!20227 (right!20227 t!4663)))) e!1412981)))

(declare-fun b!2212678 () Bool)

(assert (=> b!2212678 (= e!1412981 (inv!35043 (left!19897 (right!20227 (right!20227 t!4663)))))))

(declare-fun b!2212679 () Bool)

(declare-fun e!1412982 () Bool)

(assert (=> b!2212679 (= e!1412981 e!1412982)))

(declare-fun res!950978 () Bool)

(assert (=> b!2212679 (= res!950978 (not ((_ is Leaf!12394) (left!19897 (right!20227 (right!20227 t!4663))))))))

(assert (=> b!2212679 (=> res!950978 e!1412982)))

(declare-fun b!2212680 () Bool)

(assert (=> b!2212680 (= e!1412982 (inv!35044 (left!19897 (right!20227 (right!20227 t!4663)))))))

(assert (= (and d!661599 c!353646) b!2212678))

(assert (= (and d!661599 (not c!353646)) b!2212679))

(assert (= (and b!2212679 (not res!950978)) b!2212680))

(declare-fun m!2654807 () Bool)

(assert (=> b!2212678 m!2654807))

(declare-fun m!2654809 () Bool)

(assert (=> b!2212680 m!2654809))

(assert (=> b!2212545 d!661599))

(declare-fun d!661601 () Bool)

(declare-fun c!353647 () Bool)

(assert (=> d!661601 (= c!353647 ((_ is Node!8463) (right!20227 (right!20227 (right!20227 t!4663)))))))

(declare-fun e!1412983 () Bool)

(assert (=> d!661601 (= (inv!35041 (right!20227 (right!20227 (right!20227 t!4663)))) e!1412983)))

(declare-fun b!2212681 () Bool)

(assert (=> b!2212681 (= e!1412983 (inv!35043 (right!20227 (right!20227 (right!20227 t!4663)))))))

(declare-fun b!2212682 () Bool)

(declare-fun e!1412984 () Bool)

(assert (=> b!2212682 (= e!1412983 e!1412984)))

(declare-fun res!950979 () Bool)

(assert (=> b!2212682 (= res!950979 (not ((_ is Leaf!12394) (right!20227 (right!20227 (right!20227 t!4663))))))))

(assert (=> b!2212682 (=> res!950979 e!1412984)))

(declare-fun b!2212683 () Bool)

(assert (=> b!2212683 (= e!1412984 (inv!35044 (right!20227 (right!20227 (right!20227 t!4663)))))))

(assert (= (and d!661601 c!353647) b!2212681))

(assert (= (and d!661601 (not c!353647)) b!2212682))

(assert (= (and b!2212682 (not res!950979)) b!2212683))

(declare-fun m!2654811 () Bool)

(assert (=> b!2212681 m!2654811))

(declare-fun m!2654813 () Bool)

(assert (=> b!2212683 m!2654813))

(assert (=> b!2212545 d!661601))

(assert (=> b!2212456 d!661553))

(assert (=> b!2212454 d!661581))

(assert (=> b!2212454 d!661583))

(assert (=> d!661439 d!661549))

(declare-fun d!661603 () Bool)

(declare-fun lt!826601 () Int)

(assert (=> d!661603 (= lt!826601 (size!20183 (list!10040 (right!20227 t!4663))))))

(assert (=> d!661603 (= lt!826601 (ite ((_ is Empty!8463) (right!20227 t!4663)) 0 (ite ((_ is Leaf!12394) (right!20227 t!4663)) (csize!17157 (right!20227 t!4663)) (csize!17156 (right!20227 t!4663)))))))

(assert (=> d!661603 (= (size!20184 (right!20227 t!4663)) lt!826601)))

(declare-fun bs!451492 () Bool)

(assert (= bs!451492 d!661603))

(assert (=> bs!451492 m!2654333))

(assert (=> bs!451492 m!2654333))

(assert (=> bs!451492 m!2654407))

(assert (=> d!661439 d!661603))

(declare-fun d!661605 () Bool)

(assert (=> d!661605 (= (max!0 (height!1287 (left!19897 (left!19897 t!4663))) (height!1287 (right!20227 (left!19897 t!4663)))) (ite (< (height!1287 (left!19897 (left!19897 t!4663))) (height!1287 (right!20227 (left!19897 t!4663)))) (height!1287 (right!20227 (left!19897 t!4663))) (height!1287 (left!19897 (left!19897 t!4663)))))))

(assert (=> b!2212469 d!661605))

(assert (=> b!2212469 d!661577))

(assert (=> b!2212469 d!661579))

(declare-fun d!661607 () Bool)

(assert (=> d!661607 (= (isEmpty!14816 (list!10040 (right!20227 t!4663))) ((_ is Nil!25866) (list!10040 (right!20227 t!4663))))))

(assert (=> d!661471 d!661607))

(assert (=> d!661471 d!661417))

(assert (=> d!661471 d!661603))

(declare-fun b!2212684 () Bool)

(declare-fun res!950983 () Bool)

(declare-fun e!1412985 () Bool)

(assert (=> b!2212684 (=> (not res!950983) (not e!1412985))))

(assert (=> b!2212684 (= res!950983 (isBalanced!2621 (left!19897 (left!19897 (right!20227 t!4663)))))))

(declare-fun b!2212685 () Bool)

(declare-fun res!950985 () Bool)

(assert (=> b!2212685 (=> (not res!950985) (not e!1412985))))

(assert (=> b!2212685 (= res!950985 (not (isEmpty!14815 (left!19897 (left!19897 (right!20227 t!4663))))))))

(declare-fun b!2212686 () Bool)

(assert (=> b!2212686 (= e!1412985 (not (isEmpty!14815 (right!20227 (left!19897 (right!20227 t!4663))))))))

(declare-fun b!2212687 () Bool)

(declare-fun res!950980 () Bool)

(assert (=> b!2212687 (=> (not res!950980) (not e!1412985))))

(assert (=> b!2212687 (= res!950980 (<= (- (height!1287 (left!19897 (left!19897 (right!20227 t!4663)))) (height!1287 (right!20227 (left!19897 (right!20227 t!4663))))) 1))))

(declare-fun b!2212688 () Bool)

(declare-fun e!1412986 () Bool)

(assert (=> b!2212688 (= e!1412986 e!1412985)))

(declare-fun res!950982 () Bool)

(assert (=> b!2212688 (=> (not res!950982) (not e!1412985))))

(assert (=> b!2212688 (= res!950982 (<= (- 1) (- (height!1287 (left!19897 (left!19897 (right!20227 t!4663)))) (height!1287 (right!20227 (left!19897 (right!20227 t!4663)))))))))

(declare-fun d!661609 () Bool)

(declare-fun res!950981 () Bool)

(assert (=> d!661609 (=> res!950981 e!1412986)))

(assert (=> d!661609 (= res!950981 (not ((_ is Node!8463) (left!19897 (right!20227 t!4663)))))))

(assert (=> d!661609 (= (isBalanced!2621 (left!19897 (right!20227 t!4663))) e!1412986)))

(declare-fun b!2212689 () Bool)

(declare-fun res!950984 () Bool)

(assert (=> b!2212689 (=> (not res!950984) (not e!1412985))))

(assert (=> b!2212689 (= res!950984 (isBalanced!2621 (right!20227 (left!19897 (right!20227 t!4663)))))))

(assert (= (and d!661609 (not res!950981)) b!2212688))

(assert (= (and b!2212688 res!950982) b!2212687))

(assert (= (and b!2212687 res!950980) b!2212684))

(assert (= (and b!2212684 res!950983) b!2212689))

(assert (= (and b!2212689 res!950984) b!2212685))

(assert (= (and b!2212685 res!950985) b!2212686))

(assert (=> b!2212688 m!2654713))

(assert (=> b!2212688 m!2654715))

(declare-fun m!2654815 () Bool)

(assert (=> b!2212685 m!2654815))

(declare-fun m!2654817 () Bool)

(assert (=> b!2212686 m!2654817))

(declare-fun m!2654819 () Bool)

(assert (=> b!2212689 m!2654819))

(declare-fun m!2654821 () Bool)

(assert (=> b!2212684 m!2654821))

(assert (=> b!2212687 m!2654713))

(assert (=> b!2212687 m!2654715))

(assert (=> b!2212484 d!661609))

(declare-fun d!661611 () Bool)

(declare-fun lt!826602 () T!40606)

(assert (=> d!661611 (= lt!826602 (apply!6412 (list!10042 (xs!11405 (left!19897 (left!19897 t!4663)))) 0))))

(assert (=> d!661611 (= lt!826602 (choose!13057 (xs!11405 (left!19897 (left!19897 t!4663))) 0))))

(declare-fun e!1412987 () Bool)

(assert (=> d!661611 e!1412987))

(declare-fun res!950986 () Bool)

(assert (=> d!661611 (=> (not res!950986) (not e!1412987))))

(assert (=> d!661611 (= res!950986 (<= 0 0))))

(assert (=> d!661611 (= (apply!6411 (xs!11405 (left!19897 (left!19897 t!4663))) 0) lt!826602)))

(declare-fun b!2212690 () Bool)

(assert (=> b!2212690 (= e!1412987 (< 0 (size!20187 (xs!11405 (left!19897 (left!19897 t!4663))))))))

(assert (= (and d!661611 res!950986) b!2212690))

(assert (=> d!661611 m!2654681))

(assert (=> d!661611 m!2654681))

(declare-fun m!2654823 () Bool)

(assert (=> d!661611 m!2654823))

(declare-fun m!2654825 () Bool)

(assert (=> d!661611 m!2654825))

(declare-fun m!2654827 () Bool)

(assert (=> b!2212690 m!2654827))

(assert (=> b!2212515 d!661611))

(declare-fun d!661613 () Bool)

(declare-fun lt!826603 () Int)

(assert (=> d!661613 (= lt!826603 (size!20183 (list!10040 (left!19897 (left!19897 t!4663)))))))

(assert (=> d!661613 (= lt!826603 (ite ((_ is Empty!8463) (left!19897 (left!19897 t!4663))) 0 (ite ((_ is Leaf!12394) (left!19897 (left!19897 t!4663))) (csize!17157 (left!19897 (left!19897 t!4663))) (csize!17156 (left!19897 (left!19897 t!4663))))))))

(assert (=> d!661613 (= (size!20184 (left!19897 (left!19897 t!4663))) lt!826603)))

(declare-fun bs!451493 () Bool)

(assert (= bs!451493 d!661613))

(assert (=> bs!451493 m!2654409))

(assert (=> bs!451493 m!2654409))

(assert (=> bs!451493 m!2654729))

(assert (=> d!661431 d!661613))

(declare-fun d!661615 () Bool)

(declare-fun lt!826604 () Int)

(assert (=> d!661615 (= lt!826604 (size!20183 (list!10040 (right!20227 (left!19897 t!4663)))))))

(assert (=> d!661615 (= lt!826604 (ite ((_ is Empty!8463) (right!20227 (left!19897 t!4663))) 0 (ite ((_ is Leaf!12394) (right!20227 (left!19897 t!4663))) (csize!17157 (right!20227 (left!19897 t!4663))) (csize!17156 (right!20227 (left!19897 t!4663))))))))

(assert (=> d!661615 (= (size!20184 (right!20227 (left!19897 t!4663))) lt!826604)))

(declare-fun bs!451494 () Bool)

(assert (= bs!451494 d!661615))

(assert (=> bs!451494 m!2654411))

(assert (=> bs!451494 m!2654411))

(assert (=> bs!451494 m!2654731))

(assert (=> d!661431 d!661615))

(declare-fun d!661617 () Bool)

(declare-fun lt!826605 () Int)

(assert (=> d!661617 (>= lt!826605 0)))

(declare-fun e!1412988 () Int)

(assert (=> d!661617 (= lt!826605 e!1412988)))

(declare-fun c!353648 () Bool)

(assert (=> d!661617 (= c!353648 ((_ is Nil!25866) (innerList!8523 (xs!11405 (left!19897 t!4663)))))))

(assert (=> d!661617 (= (size!20183 (innerList!8523 (xs!11405 (left!19897 t!4663)))) lt!826605)))

(declare-fun b!2212691 () Bool)

(assert (=> b!2212691 (= e!1412988 0)))

(declare-fun b!2212692 () Bool)

(assert (=> b!2212692 (= e!1412988 (+ 1 (size!20183 (t!198694 (innerList!8523 (xs!11405 (left!19897 t!4663)))))))))

(assert (= (and d!661617 c!353648) b!2212691))

(assert (= (and d!661617 (not c!353648)) b!2212692))

(declare-fun m!2654829 () Bool)

(assert (=> b!2212692 m!2654829))

(assert (=> d!661447 d!661617))

(declare-fun d!661619 () Bool)

(declare-fun c!353651 () Bool)

(assert (=> d!661619 (= c!353651 ((_ is Nil!25866) lt!826559))))

(declare-fun e!1412991 () (InoxSet T!40606))

(assert (=> d!661619 (= (content!3517 lt!826559) e!1412991)))

(declare-fun b!2212697 () Bool)

(assert (=> b!2212697 (= e!1412991 ((as const (Array T!40606 Bool)) false))))

(declare-fun b!2212698 () Bool)

(assert (=> b!2212698 (= e!1412991 ((_ map or) (store ((as const (Array T!40606 Bool)) false) (h!31267 lt!826559) true) (content!3517 (t!198694 lt!826559))))))

(assert (= (and d!661619 c!353651) b!2212697))

(assert (= (and d!661619 (not c!353651)) b!2212698))

(declare-fun m!2654831 () Bool)

(assert (=> b!2212698 m!2654831))

(declare-fun m!2654833 () Bool)

(assert (=> b!2212698 m!2654833))

(assert (=> d!661413 d!661619))

(declare-fun d!661621 () Bool)

(declare-fun c!353652 () Bool)

(assert (=> d!661621 (= c!353652 ((_ is Nil!25866) (list!10040 (left!19897 t!4663))))))

(declare-fun e!1412992 () (InoxSet T!40606))

(assert (=> d!661621 (= (content!3517 (list!10040 (left!19897 t!4663))) e!1412992)))

(declare-fun b!2212699 () Bool)

(assert (=> b!2212699 (= e!1412992 ((as const (Array T!40606 Bool)) false))))

(declare-fun b!2212700 () Bool)

(assert (=> b!2212700 (= e!1412992 ((_ map or) (store ((as const (Array T!40606 Bool)) false) (h!31267 (list!10040 (left!19897 t!4663))) true) (content!3517 (t!198694 (list!10040 (left!19897 t!4663))))))))

(assert (= (and d!661621 c!353652) b!2212699))

(assert (= (and d!661621 (not c!353652)) b!2212700))

(declare-fun m!2654835 () Bool)

(assert (=> b!2212700 m!2654835))

(declare-fun m!2654837 () Bool)

(assert (=> b!2212700 m!2654837))

(assert (=> d!661413 d!661621))

(declare-fun d!661623 () Bool)

(declare-fun c!353653 () Bool)

(assert (=> d!661623 (= c!353653 ((_ is Nil!25866) (list!10040 (right!20227 t!4663))))))

(declare-fun e!1412993 () (InoxSet T!40606))

(assert (=> d!661623 (= (content!3517 (list!10040 (right!20227 t!4663))) e!1412993)))

(declare-fun b!2212701 () Bool)

(assert (=> b!2212701 (= e!1412993 ((as const (Array T!40606 Bool)) false))))

(declare-fun b!2212702 () Bool)

(assert (=> b!2212702 (= e!1412993 ((_ map or) (store ((as const (Array T!40606 Bool)) false) (h!31267 (list!10040 (right!20227 t!4663))) true) (content!3517 (t!198694 (list!10040 (right!20227 t!4663))))))))

(assert (= (and d!661623 c!353653) b!2212701))

(assert (= (and d!661623 (not c!353653)) b!2212702))

(declare-fun m!2654839 () Bool)

(assert (=> b!2212702 m!2654839))

(declare-fun m!2654841 () Bool)

(assert (=> b!2212702 m!2654841))

(assert (=> d!661413 d!661623))

(declare-fun d!661625 () Bool)

(declare-fun lt!826606 () Int)

(assert (=> d!661625 (>= lt!826606 0)))

(declare-fun e!1412994 () Int)

(assert (=> d!661625 (= lt!826606 e!1412994)))

(declare-fun c!353654 () Bool)

(assert (=> d!661625 (= c!353654 ((_ is Nil!25866) (list!10042 (xs!11405 (right!20227 t!4663)))))))

(assert (=> d!661625 (= (size!20183 (list!10042 (xs!11405 (right!20227 t!4663)))) lt!826606)))

(declare-fun b!2212703 () Bool)

(assert (=> b!2212703 (= e!1412994 0)))

(declare-fun b!2212704 () Bool)

(assert (=> b!2212704 (= e!1412994 (+ 1 (size!20183 (t!198694 (list!10042 (xs!11405 (right!20227 t!4663)))))))))

(assert (= (and d!661625 c!353654) b!2212703))

(assert (= (and d!661625 (not c!353654)) b!2212704))

(declare-fun m!2654843 () Bool)

(assert (=> b!2212704 m!2654843))

(assert (=> b!2212482 d!661625))

(assert (=> b!2212482 d!661555))

(declare-fun d!661627 () Bool)

(assert (=> d!661627 (= (inv!35042 (xs!11405 (left!19897 (left!19897 t!4663)))) (<= (size!20183 (innerList!8523 (xs!11405 (left!19897 (left!19897 t!4663))))) 2147483647))))

(declare-fun bs!451495 () Bool)

(assert (= bs!451495 d!661627))

(declare-fun m!2654845 () Bool)

(assert (=> bs!451495 m!2654845))

(assert (=> b!2212527 d!661627))

(assert (=> d!661441 d!661625))

(assert (=> d!661441 d!661555))

(assert (=> b!2212438 d!661583))

(declare-fun d!661629 () Bool)

(declare-fun c!353655 () Bool)

(assert (=> d!661629 (= c!353655 ((_ is Node!8463) (left!19897 (left!19897 (right!20227 t!4663)))))))

(declare-fun e!1412995 () Bool)

(assert (=> d!661629 (= (inv!35041 (left!19897 (left!19897 (right!20227 t!4663)))) e!1412995)))

(declare-fun b!2212705 () Bool)

(assert (=> b!2212705 (= e!1412995 (inv!35043 (left!19897 (left!19897 (right!20227 t!4663)))))))

(declare-fun b!2212706 () Bool)

(declare-fun e!1412996 () Bool)

(assert (=> b!2212706 (= e!1412995 e!1412996)))

(declare-fun res!950987 () Bool)

(assert (=> b!2212706 (= res!950987 (not ((_ is Leaf!12394) (left!19897 (left!19897 (right!20227 t!4663))))))))

(assert (=> b!2212706 (=> res!950987 e!1412996)))

(declare-fun b!2212707 () Bool)

(assert (=> b!2212707 (= e!1412996 (inv!35044 (left!19897 (left!19897 (right!20227 t!4663)))))))

(assert (= (and d!661629 c!353655) b!2212705))

(assert (= (and d!661629 (not c!353655)) b!2212706))

(assert (= (and b!2212706 (not res!950987)) b!2212707))

(declare-fun m!2654847 () Bool)

(assert (=> b!2212705 m!2654847))

(declare-fun m!2654849 () Bool)

(assert (=> b!2212707 m!2654849))

(assert (=> b!2212542 d!661629))

(declare-fun d!661631 () Bool)

(declare-fun c!353656 () Bool)

(assert (=> d!661631 (= c!353656 ((_ is Node!8463) (right!20227 (left!19897 (right!20227 t!4663)))))))

(declare-fun e!1412997 () Bool)

(assert (=> d!661631 (= (inv!35041 (right!20227 (left!19897 (right!20227 t!4663)))) e!1412997)))

(declare-fun b!2212708 () Bool)

(assert (=> b!2212708 (= e!1412997 (inv!35043 (right!20227 (left!19897 (right!20227 t!4663)))))))

(declare-fun b!2212709 () Bool)

(declare-fun e!1412998 () Bool)

(assert (=> b!2212709 (= e!1412997 e!1412998)))

(declare-fun res!950988 () Bool)

(assert (=> b!2212709 (= res!950988 (not ((_ is Leaf!12394) (right!20227 (left!19897 (right!20227 t!4663))))))))

(assert (=> b!2212709 (=> res!950988 e!1412998)))

(declare-fun b!2212710 () Bool)

(assert (=> b!2212710 (= e!1412998 (inv!35044 (right!20227 (left!19897 (right!20227 t!4663)))))))

(assert (= (and d!661631 c!353656) b!2212708))

(assert (= (and d!661631 (not c!353656)) b!2212709))

(assert (= (and b!2212709 (not res!950988)) b!2212710))

(declare-fun m!2654851 () Bool)

(assert (=> b!2212708 m!2654851))

(declare-fun m!2654853 () Bool)

(assert (=> b!2212710 m!2654853))

(assert (=> b!2212542 d!661631))

(declare-fun d!661633 () Bool)

(assert (=> d!661633 (= (max!0 (height!1287 (left!19897 (right!20227 t!4663))) (height!1287 (right!20227 (right!20227 t!4663)))) (ite (< (height!1287 (left!19897 (right!20227 t!4663))) (height!1287 (right!20227 (right!20227 t!4663)))) (height!1287 (right!20227 (right!20227 t!4663))) (height!1287 (left!19897 (right!20227 t!4663)))))))

(assert (=> b!2212507 d!661633))

(assert (=> b!2212507 d!661591))

(assert (=> b!2212507 d!661593))

(declare-fun b!2212714 () Bool)

(declare-fun e!1413000 () Bool)

(declare-fun lt!826607 () List!25950)

(assert (=> b!2212714 (= e!1413000 (or (not (= (list!10040 (right!20227 (right!20227 t!4663))) Nil!25866)) (= lt!826607 (list!10040 (left!19897 (right!20227 t!4663))))))))

(declare-fun b!2212712 () Bool)

(declare-fun e!1412999 () List!25950)

(assert (=> b!2212712 (= e!1412999 (Cons!25866 (h!31267 (list!10040 (left!19897 (right!20227 t!4663)))) (++!6453 (t!198694 (list!10040 (left!19897 (right!20227 t!4663)))) (list!10040 (right!20227 (right!20227 t!4663))))))))

(declare-fun d!661635 () Bool)

(assert (=> d!661635 e!1413000))

(declare-fun res!950990 () Bool)

(assert (=> d!661635 (=> (not res!950990) (not e!1413000))))

(assert (=> d!661635 (= res!950990 (= (content!3517 lt!826607) ((_ map or) (content!3517 (list!10040 (left!19897 (right!20227 t!4663)))) (content!3517 (list!10040 (right!20227 (right!20227 t!4663)))))))))

(assert (=> d!661635 (= lt!826607 e!1412999)))

(declare-fun c!353657 () Bool)

(assert (=> d!661635 (= c!353657 ((_ is Nil!25866) (list!10040 (left!19897 (right!20227 t!4663)))))))

(assert (=> d!661635 (= (++!6453 (list!10040 (left!19897 (right!20227 t!4663))) (list!10040 (right!20227 (right!20227 t!4663)))) lt!826607)))

(declare-fun b!2212711 () Bool)

(assert (=> b!2212711 (= e!1412999 (list!10040 (right!20227 (right!20227 t!4663))))))

(declare-fun b!2212713 () Bool)

(declare-fun res!950989 () Bool)

(assert (=> b!2212713 (=> (not res!950989) (not e!1413000))))

(assert (=> b!2212713 (= res!950989 (= (size!20183 lt!826607) (+ (size!20183 (list!10040 (left!19897 (right!20227 t!4663)))) (size!20183 (list!10040 (right!20227 (right!20227 t!4663)))))))))

(assert (= (and d!661635 c!353657) b!2212711))

(assert (= (and d!661635 (not c!353657)) b!2212712))

(assert (= (and d!661635 res!950990) b!2212713))

(assert (= (and b!2212713 res!950989) b!2212714))

(assert (=> b!2212712 m!2654419))

(declare-fun m!2654855 () Bool)

(assert (=> b!2212712 m!2654855))

(declare-fun m!2654857 () Bool)

(assert (=> d!661635 m!2654857))

(assert (=> d!661635 m!2654417))

(declare-fun m!2654859 () Bool)

(assert (=> d!661635 m!2654859))

(assert (=> d!661635 m!2654419))

(declare-fun m!2654861 () Bool)

(assert (=> d!661635 m!2654861))

(declare-fun m!2654863 () Bool)

(assert (=> b!2212713 m!2654863))

(assert (=> b!2212713 m!2654417))

(declare-fun m!2654865 () Bool)

(assert (=> b!2212713 m!2654865))

(assert (=> b!2212713 m!2654419))

(declare-fun m!2654867 () Bool)

(assert (=> b!2212713 m!2654867))

(assert (=> b!2212443 d!661635))

(declare-fun b!2212718 () Bool)

(declare-fun e!1413002 () List!25950)

(assert (=> b!2212718 (= e!1413002 (++!6453 (list!10040 (left!19897 (left!19897 (right!20227 t!4663)))) (list!10040 (right!20227 (left!19897 (right!20227 t!4663))))))))

(declare-fun b!2212717 () Bool)

(assert (=> b!2212717 (= e!1413002 (list!10042 (xs!11405 (left!19897 (right!20227 t!4663)))))))

(declare-fun d!661637 () Bool)

(declare-fun c!353658 () Bool)

(assert (=> d!661637 (= c!353658 ((_ is Empty!8463) (left!19897 (right!20227 t!4663))))))

(declare-fun e!1413001 () List!25950)

(assert (=> d!661637 (= (list!10040 (left!19897 (right!20227 t!4663))) e!1413001)))

(declare-fun b!2212715 () Bool)

(assert (=> b!2212715 (= e!1413001 Nil!25866)))

(declare-fun b!2212716 () Bool)

(assert (=> b!2212716 (= e!1413001 e!1413002)))

(declare-fun c!353659 () Bool)

(assert (=> b!2212716 (= c!353659 ((_ is Leaf!12394) (left!19897 (right!20227 t!4663))))))

(assert (= (and d!661637 c!353658) b!2212715))

(assert (= (and d!661637 (not c!353658)) b!2212716))

(assert (= (and b!2212716 c!353659) b!2212717))

(assert (= (and b!2212716 (not c!353659)) b!2212718))

(declare-fun m!2654869 () Bool)

(assert (=> b!2212718 m!2654869))

(declare-fun m!2654871 () Bool)

(assert (=> b!2212718 m!2654871))

(assert (=> b!2212718 m!2654869))

(assert (=> b!2212718 m!2654871))

(declare-fun m!2654873 () Bool)

(assert (=> b!2212718 m!2654873))

(assert (=> b!2212717 m!2654697))

(assert (=> b!2212443 d!661637))

(declare-fun b!2212722 () Bool)

(declare-fun e!1413004 () List!25950)

(assert (=> b!2212722 (= e!1413004 (++!6453 (list!10040 (left!19897 (right!20227 (right!20227 t!4663)))) (list!10040 (right!20227 (right!20227 (right!20227 t!4663))))))))

(declare-fun b!2212721 () Bool)

(assert (=> b!2212721 (= e!1413004 (list!10042 (xs!11405 (right!20227 (right!20227 t!4663)))))))

(declare-fun d!661639 () Bool)

(declare-fun c!353660 () Bool)

(assert (=> d!661639 (= c!353660 ((_ is Empty!8463) (right!20227 (right!20227 t!4663))))))

(declare-fun e!1413003 () List!25950)

(assert (=> d!661639 (= (list!10040 (right!20227 (right!20227 t!4663))) e!1413003)))

(declare-fun b!2212719 () Bool)

(assert (=> b!2212719 (= e!1413003 Nil!25866)))

(declare-fun b!2212720 () Bool)

(assert (=> b!2212720 (= e!1413003 e!1413004)))

(declare-fun c!353661 () Bool)

(assert (=> b!2212720 (= c!353661 ((_ is Leaf!12394) (right!20227 (right!20227 t!4663))))))

(assert (= (and d!661639 c!353660) b!2212719))

(assert (= (and d!661639 (not c!353660)) b!2212720))

(assert (= (and b!2212720 c!353661) b!2212721))

(assert (= (and b!2212720 (not c!353661)) b!2212722))

(declare-fun m!2654875 () Bool)

(assert (=> b!2212722 m!2654875))

(declare-fun m!2654877 () Bool)

(assert (=> b!2212722 m!2654877))

(assert (=> b!2212722 m!2654875))

(assert (=> b!2212722 m!2654877))

(declare-fun m!2654879 () Bool)

(assert (=> b!2212722 m!2654879))

(assert (=> b!2212721 m!2654777))

(assert (=> b!2212443 d!661639))

(declare-fun b!2212726 () Bool)

(declare-fun e!1413006 () Bool)

(declare-fun lt!826608 () List!25950)

(assert (=> b!2212726 (= e!1413006 (or (not (= (list!10040 (right!20227 t!4663)) Nil!25866)) (= lt!826608 (t!198694 (list!10040 (left!19897 t!4663))))))))

(declare-fun b!2212724 () Bool)

(declare-fun e!1413005 () List!25950)

(assert (=> b!2212724 (= e!1413005 (Cons!25866 (h!31267 (t!198694 (list!10040 (left!19897 t!4663)))) (++!6453 (t!198694 (t!198694 (list!10040 (left!19897 t!4663)))) (list!10040 (right!20227 t!4663)))))))

(declare-fun d!661641 () Bool)

(assert (=> d!661641 e!1413006))

(declare-fun res!950992 () Bool)

(assert (=> d!661641 (=> (not res!950992) (not e!1413006))))

(assert (=> d!661641 (= res!950992 (= (content!3517 lt!826608) ((_ map or) (content!3517 (t!198694 (list!10040 (left!19897 t!4663)))) (content!3517 (list!10040 (right!20227 t!4663))))))))

(assert (=> d!661641 (= lt!826608 e!1413005)))

(declare-fun c!353662 () Bool)

(assert (=> d!661641 (= c!353662 ((_ is Nil!25866) (t!198694 (list!10040 (left!19897 t!4663)))))))

(assert (=> d!661641 (= (++!6453 (t!198694 (list!10040 (left!19897 t!4663))) (list!10040 (right!20227 t!4663))) lt!826608)))

(declare-fun b!2212723 () Bool)

(assert (=> b!2212723 (= e!1413005 (list!10040 (right!20227 t!4663)))))

(declare-fun b!2212725 () Bool)

(declare-fun res!950991 () Bool)

(assert (=> b!2212725 (=> (not res!950991) (not e!1413006))))

(assert (=> b!2212725 (= res!950991 (= (size!20183 lt!826608) (+ (size!20183 (t!198694 (list!10040 (left!19897 t!4663)))) (size!20183 (list!10040 (right!20227 t!4663))))))))

(assert (= (and d!661641 c!353662) b!2212723))

(assert (= (and d!661641 (not c!353662)) b!2212724))

(assert (= (and d!661641 res!950992) b!2212725))

(assert (= (and b!2212725 res!950991) b!2212726))

(assert (=> b!2212724 m!2654333))

(declare-fun m!2654881 () Bool)

(assert (=> b!2212724 m!2654881))

(declare-fun m!2654883 () Bool)

(assert (=> d!661641 m!2654883))

(assert (=> d!661641 m!2654837))

(assert (=> d!661641 m!2654333))

(assert (=> d!661641 m!2654401))

(declare-fun m!2654885 () Bool)

(assert (=> b!2212725 m!2654885))

(assert (=> b!2212725 m!2654759))

(assert (=> b!2212725 m!2654333))

(assert (=> b!2212725 m!2654407))

(assert (=> b!2212433 d!661641))

(declare-fun d!661643 () Bool)

(declare-fun lt!826609 () Int)

(assert (=> d!661643 (>= lt!826609 0)))

(declare-fun e!1413007 () Int)

(assert (=> d!661643 (= lt!826609 e!1413007)))

(declare-fun c!353663 () Bool)

(assert (=> d!661643 (= c!353663 ((_ is Nil!25866) (innerList!8523 (xs!11405 (right!20227 t!4663)))))))

(assert (=> d!661643 (= (size!20183 (innerList!8523 (xs!11405 (right!20227 t!4663)))) lt!826609)))

(declare-fun b!2212727 () Bool)

(assert (=> b!2212727 (= e!1413007 0)))

(declare-fun b!2212728 () Bool)

(assert (=> b!2212728 (= e!1413007 (+ 1 (size!20183 (t!198694 (innerList!8523 (xs!11405 (right!20227 t!4663)))))))))

(assert (= (and d!661643 c!353663) b!2212727))

(assert (= (and d!661643 (not c!353663)) b!2212728))

(declare-fun m!2654887 () Bool)

(assert (=> b!2212728 m!2654887))

(assert (=> d!661425 d!661643))

(declare-fun d!661645 () Bool)

(assert (=> d!661645 (= (inv!35042 (xs!11405 (right!20227 (right!20227 t!4663)))) (<= (size!20183 (innerList!8523 (xs!11405 (right!20227 (right!20227 t!4663))))) 2147483647))))

(declare-fun bs!451496 () Bool)

(assert (= bs!451496 d!661645))

(declare-fun m!2654889 () Bool)

(assert (=> bs!451496 m!2654889))

(assert (=> b!2212546 d!661645))

(declare-fun b!2212729 () Bool)

(declare-fun res!950996 () Bool)

(declare-fun e!1413008 () Bool)

(assert (=> b!2212729 (=> (not res!950996) (not e!1413008))))

(assert (=> b!2212729 (= res!950996 (isBalanced!2621 (left!19897 (right!20227 (right!20227 t!4663)))))))

(declare-fun b!2212730 () Bool)

(declare-fun res!950998 () Bool)

(assert (=> b!2212730 (=> (not res!950998) (not e!1413008))))

(assert (=> b!2212730 (= res!950998 (not (isEmpty!14815 (left!19897 (right!20227 (right!20227 t!4663))))))))

(declare-fun b!2212731 () Bool)

(assert (=> b!2212731 (= e!1413008 (not (isEmpty!14815 (right!20227 (right!20227 (right!20227 t!4663))))))))

(declare-fun b!2212732 () Bool)

(declare-fun res!950993 () Bool)

(assert (=> b!2212732 (=> (not res!950993) (not e!1413008))))

(assert (=> b!2212732 (= res!950993 (<= (- (height!1287 (left!19897 (right!20227 (right!20227 t!4663)))) (height!1287 (right!20227 (right!20227 (right!20227 t!4663))))) 1))))

(declare-fun b!2212733 () Bool)

(declare-fun e!1413009 () Bool)

(assert (=> b!2212733 (= e!1413009 e!1413008)))

(declare-fun res!950995 () Bool)

(assert (=> b!2212733 (=> (not res!950995) (not e!1413008))))

(assert (=> b!2212733 (= res!950995 (<= (- 1) (- (height!1287 (left!19897 (right!20227 (right!20227 t!4663)))) (height!1287 (right!20227 (right!20227 (right!20227 t!4663)))))))))

(declare-fun d!661647 () Bool)

(declare-fun res!950994 () Bool)

(assert (=> d!661647 (=> res!950994 e!1413009)))

(assert (=> d!661647 (= res!950994 (not ((_ is Node!8463) (right!20227 (right!20227 t!4663)))))))

(assert (=> d!661647 (= (isBalanced!2621 (right!20227 (right!20227 t!4663))) e!1413009)))

(declare-fun b!2212734 () Bool)

(declare-fun res!950997 () Bool)

(assert (=> b!2212734 (=> (not res!950997) (not e!1413008))))

(assert (=> b!2212734 (= res!950997 (isBalanced!2621 (right!20227 (right!20227 (right!20227 t!4663)))))))

(assert (= (and d!661647 (not res!950994)) b!2212733))

(assert (= (and b!2212733 res!950995) b!2212732))

(assert (= (and b!2212732 res!950993) b!2212729))

(assert (= (and b!2212729 res!950996) b!2212734))

(assert (= (and b!2212734 res!950997) b!2212730))

(assert (= (and b!2212730 res!950998) b!2212731))

(assert (=> b!2212733 m!2654789))

(assert (=> b!2212733 m!2654791))

(declare-fun m!2654891 () Bool)

(assert (=> b!2212730 m!2654891))

(declare-fun m!2654893 () Bool)

(assert (=> b!2212731 m!2654893))

(declare-fun m!2654895 () Bool)

(assert (=> b!2212734 m!2654895))

(declare-fun m!2654897 () Bool)

(assert (=> b!2212729 m!2654897))

(assert (=> b!2212732 m!2654789))

(assert (=> b!2212732 m!2654791))

(assert (=> b!2212489 d!661647))

(declare-fun b!2212735 () Bool)

(declare-fun res!951002 () Bool)

(declare-fun e!1413010 () Bool)

(assert (=> b!2212735 (=> (not res!951002) (not e!1413010))))

(assert (=> b!2212735 (= res!951002 (isBalanced!2621 (left!19897 (right!20227 (left!19897 t!4663)))))))

(declare-fun b!2212736 () Bool)

(declare-fun res!951004 () Bool)

(assert (=> b!2212736 (=> (not res!951004) (not e!1413010))))

(assert (=> b!2212736 (= res!951004 (not (isEmpty!14815 (left!19897 (right!20227 (left!19897 t!4663))))))))

(declare-fun b!2212737 () Bool)

(assert (=> b!2212737 (= e!1413010 (not (isEmpty!14815 (right!20227 (right!20227 (left!19897 t!4663))))))))

(declare-fun b!2212738 () Bool)

(declare-fun res!950999 () Bool)

(assert (=> b!2212738 (=> (not res!950999) (not e!1413010))))

(assert (=> b!2212738 (= res!950999 (<= (- (height!1287 (left!19897 (right!20227 (left!19897 t!4663)))) (height!1287 (right!20227 (right!20227 (left!19897 t!4663))))) 1))))

(declare-fun b!2212739 () Bool)

(declare-fun e!1413011 () Bool)

(assert (=> b!2212739 (= e!1413011 e!1413010)))

(declare-fun res!951001 () Bool)

(assert (=> b!2212739 (=> (not res!951001) (not e!1413010))))

(assert (=> b!2212739 (= res!951001 (<= (- 1) (- (height!1287 (left!19897 (right!20227 (left!19897 t!4663)))) (height!1287 (right!20227 (right!20227 (left!19897 t!4663)))))))))

(declare-fun d!661649 () Bool)

(declare-fun res!951000 () Bool)

(assert (=> d!661649 (=> res!951000 e!1413011)))

(assert (=> d!661649 (= res!951000 (not ((_ is Node!8463) (right!20227 (left!19897 t!4663)))))))

(assert (=> d!661649 (= (isBalanced!2621 (right!20227 (left!19897 t!4663))) e!1413011)))

(declare-fun b!2212740 () Bool)

(declare-fun res!951003 () Bool)

(assert (=> b!2212740 (=> (not res!951003) (not e!1413010))))

(assert (=> b!2212740 (= res!951003 (isBalanced!2621 (right!20227 (right!20227 (left!19897 t!4663)))))))

(assert (= (and d!661649 (not res!951000)) b!2212739))

(assert (= (and b!2212739 res!951001) b!2212738))

(assert (= (and b!2212738 res!950999) b!2212735))

(assert (= (and b!2212735 res!951002) b!2212740))

(assert (= (and b!2212740 res!951003) b!2212736))

(assert (= (and b!2212736 res!951004) b!2212737))

(assert (=> b!2212739 m!2654771))

(assert (=> b!2212739 m!2654773))

(declare-fun m!2654899 () Bool)

(assert (=> b!2212736 m!2654899))

(declare-fun m!2654901 () Bool)

(assert (=> b!2212737 m!2654901))

(declare-fun m!2654903 () Bool)

(assert (=> b!2212740 m!2654903))

(declare-fun m!2654905 () Bool)

(assert (=> b!2212735 m!2654905))

(assert (=> b!2212738 m!2654771))

(assert (=> b!2212738 m!2654773))

(assert (=> b!2212461 d!661649))

(assert (=> b!2212487 d!661591))

(assert (=> b!2212487 d!661593))

(assert (=> b!2212459 d!661577))

(assert (=> b!2212459 d!661579))

(declare-fun d!661651 () Bool)

(declare-fun lt!826610 () Int)

(assert (=> d!661651 (= lt!826610 (size!20183 (list!10040 (left!19897 (right!20227 t!4663)))))))

(assert (=> d!661651 (= lt!826610 (ite ((_ is Empty!8463) (left!19897 (right!20227 t!4663))) 0 (ite ((_ is Leaf!12394) (left!19897 (right!20227 t!4663))) (csize!17157 (left!19897 (right!20227 t!4663))) (csize!17156 (left!19897 (right!20227 t!4663))))))))

(assert (=> d!661651 (= (size!20184 (left!19897 (right!20227 t!4663))) lt!826610)))

(declare-fun bs!451497 () Bool)

(assert (= bs!451497 d!661651))

(assert (=> bs!451497 m!2654417))

(assert (=> bs!451497 m!2654417))

(assert (=> bs!451497 m!2654865))

(assert (=> d!661465 d!661651))

(declare-fun d!661653 () Bool)

(declare-fun lt!826611 () Int)

(assert (=> d!661653 (= lt!826611 (size!20183 (list!10040 (right!20227 (right!20227 t!4663)))))))

(assert (=> d!661653 (= lt!826611 (ite ((_ is Empty!8463) (right!20227 (right!20227 t!4663))) 0 (ite ((_ is Leaf!12394) (right!20227 (right!20227 t!4663))) (csize!17157 (right!20227 (right!20227 t!4663))) (csize!17156 (right!20227 (right!20227 t!4663))))))))

(assert (=> d!661653 (= (size!20184 (right!20227 (right!20227 t!4663))) lt!826611)))

(declare-fun bs!451498 () Bool)

(assert (= bs!451498 d!661653))

(assert (=> bs!451498 m!2654419))

(assert (=> bs!451498 m!2654419))

(assert (=> bs!451498 m!2654867))

(assert (=> d!661465 d!661653))

(declare-fun d!661655 () Bool)

(assert (=> d!661655 (= (inv!35042 (xs!11405 (right!20227 (left!19897 t!4663)))) (<= (size!20183 (innerList!8523 (xs!11405 (right!20227 (left!19897 t!4663))))) 2147483647))))

(declare-fun bs!451499 () Bool)

(assert (= bs!451499 d!661655))

(declare-fun m!2654907 () Bool)

(assert (=> bs!451499 m!2654907))

(assert (=> b!2212534 d!661655))

(assert (=> b!2212415 d!661461))

(assert (=> b!2212415 d!661463))

(declare-fun d!661657 () Bool)

(declare-fun lt!826612 () Bool)

(assert (=> d!661657 (= lt!826612 (isEmpty!14816 (list!10040 (left!19897 (right!20227 t!4663)))))))

(assert (=> d!661657 (= lt!826612 (= (size!20184 (left!19897 (right!20227 t!4663))) 0))))

(assert (=> d!661657 (= (isEmpty!14815 (left!19897 (right!20227 t!4663))) lt!826612)))

(declare-fun bs!451500 () Bool)

(assert (= bs!451500 d!661657))

(assert (=> bs!451500 m!2654417))

(assert (=> bs!451500 m!2654417))

(declare-fun m!2654909 () Bool)

(assert (=> bs!451500 m!2654909))

(assert (=> bs!451500 m!2654513))

(assert (=> b!2212485 d!661657))

(declare-fun d!661659 () Bool)

(declare-fun lt!826613 () Bool)

(assert (=> d!661659 (= lt!826613 (isEmpty!14816 (list!10040 (left!19897 (left!19897 t!4663)))))))

(assert (=> d!661659 (= lt!826613 (= (size!20184 (left!19897 (left!19897 t!4663))) 0))))

(assert (=> d!661659 (= (isEmpty!14815 (left!19897 (left!19897 t!4663))) lt!826613)))

(declare-fun bs!451501 () Bool)

(assert (= bs!451501 d!661659))

(assert (=> bs!451501 m!2654409))

(assert (=> bs!451501 m!2654409))

(declare-fun m!2654911 () Bool)

(assert (=> bs!451501 m!2654911))

(assert (=> bs!451501 m!2654443))

(assert (=> b!2212457 d!661659))

(declare-fun d!661661 () Bool)

(declare-fun lt!826614 () T!40606)

(assert (=> d!661661 (= lt!826614 (head!4727 (list!10040 (left!19897 (left!19897 (left!19897 t!4663))))))))

(declare-fun e!1413012 () T!40606)

(assert (=> d!661661 (= lt!826614 e!1413012)))

(declare-fun c!353664 () Bool)

(assert (=> d!661661 (= c!353664 ((_ is Leaf!12394) (left!19897 (left!19897 (left!19897 t!4663)))))))

(assert (=> d!661661 (isBalanced!2621 (left!19897 (left!19897 (left!19897 t!4663))))))

(assert (=> d!661661 (= (head!4726 (left!19897 (left!19897 (left!19897 t!4663)))) lt!826614)))

(declare-fun b!2212741 () Bool)

(assert (=> b!2212741 (= e!1413012 (apply!6411 (xs!11405 (left!19897 (left!19897 (left!19897 t!4663)))) 0))))

(declare-fun b!2212742 () Bool)

(assert (=> b!2212742 (= e!1413012 (head!4726 (left!19897 (left!19897 (left!19897 (left!19897 t!4663))))))))

(assert (= (and d!661661 c!353664) b!2212741))

(assert (= (and d!661661 (not c!353664)) b!2212742))

(assert (=> d!661661 m!2654733))

(assert (=> d!661661 m!2654733))

(declare-fun m!2654913 () Bool)

(assert (=> d!661661 m!2654913))

(assert (=> d!661661 m!2654753))

(declare-fun m!2654915 () Bool)

(assert (=> b!2212741 m!2654915))

(declare-fun m!2654917 () Bool)

(assert (=> b!2212742 m!2654917))

(assert (=> b!2212516 d!661661))

(declare-fun d!661663 () Bool)

(declare-fun lt!826617 () T!40606)

(declare-fun contains!4295 (List!25950 T!40606) Bool)

(assert (=> d!661663 (contains!4295 (list!10042 (xs!11405 (left!19897 t!4663))) lt!826617)))

(declare-fun e!1413017 () T!40606)

(assert (=> d!661663 (= lt!826617 e!1413017)))

(declare-fun c!353667 () Bool)

(assert (=> d!661663 (= c!353667 (= 0 0))))

(declare-fun e!1413018 () Bool)

(assert (=> d!661663 e!1413018))

(declare-fun res!951007 () Bool)

(assert (=> d!661663 (=> (not res!951007) (not e!1413018))))

(assert (=> d!661663 (= res!951007 (<= 0 0))))

(assert (=> d!661663 (= (apply!6412 (list!10042 (xs!11405 (left!19897 t!4663))) 0) lt!826617)))

(declare-fun b!2212749 () Bool)

(assert (=> b!2212749 (= e!1413018 (< 0 (size!20183 (list!10042 (xs!11405 (left!19897 t!4663))))))))

(declare-fun b!2212750 () Bool)

(assert (=> b!2212750 (= e!1413017 (head!4727 (list!10042 (xs!11405 (left!19897 t!4663)))))))

(declare-fun b!2212751 () Bool)

(declare-fun tail!3212 (List!25950) List!25950)

(assert (=> b!2212751 (= e!1413017 (apply!6412 (tail!3212 (list!10042 (xs!11405 (left!19897 t!4663)))) (- 0 1)))))

(assert (= (and d!661663 res!951007) b!2212749))

(assert (= (and d!661663 c!353667) b!2212750))

(assert (= (and d!661663 (not c!353667)) b!2212751))

(assert (=> d!661663 m!2654415))

(declare-fun m!2654919 () Bool)

(assert (=> d!661663 m!2654919))

(assert (=> b!2212749 m!2654415))

(assert (=> b!2212749 m!2654427))

(assert (=> b!2212750 m!2654415))

(declare-fun m!2654921 () Bool)

(assert (=> b!2212750 m!2654921))

(assert (=> b!2212751 m!2654415))

(declare-fun m!2654923 () Bool)

(assert (=> b!2212751 m!2654923))

(assert (=> b!2212751 m!2654923))

(declare-fun m!2654925 () Bool)

(assert (=> b!2212751 m!2654925))

(assert (=> d!661481 d!661663))

(assert (=> d!661481 d!661583))

(declare-fun d!661665 () Bool)

(declare-fun _$3!423 () T!40606)

(assert (=> d!661665 (= _$3!423 (apply!6412 (list!10042 (xs!11405 (left!19897 t!4663))) 0))))

(assert (=> d!661665 tp_is_empty!9793))

(assert (=> d!661665 (= (choose!13057 (xs!11405 (left!19897 t!4663)) 0) _$3!423)))

(declare-fun bs!451502 () Bool)

(assert (= bs!451502 d!661665))

(assert (=> bs!451502 m!2654415))

(assert (=> bs!451502 m!2654415))

(assert (=> bs!451502 m!2654545))

(assert (=> d!661481 d!661665))

(declare-fun tp!687542 () Bool)

(declare-fun b!2212752 () Bool)

(declare-fun tp!687541 () Bool)

(declare-fun e!1413020 () Bool)

(assert (=> b!2212752 (= e!1413020 (and (inv!35041 (left!19897 (left!19897 (left!19897 (right!20227 t!4663))))) tp!687542 (inv!35041 (right!20227 (left!19897 (left!19897 (right!20227 t!4663))))) tp!687541))))

(declare-fun b!2212754 () Bool)

(declare-fun e!1413019 () Bool)

(declare-fun tp!687543 () Bool)

(assert (=> b!2212754 (= e!1413019 tp!687543)))

(declare-fun b!2212753 () Bool)

(assert (=> b!2212753 (= e!1413020 (and (inv!35042 (xs!11405 (left!19897 (left!19897 (right!20227 t!4663))))) e!1413019))))

(assert (=> b!2212542 (= tp!687520 (and (inv!35041 (left!19897 (left!19897 (right!20227 t!4663)))) e!1413020))))

(assert (= (and b!2212542 ((_ is Node!8463) (left!19897 (left!19897 (right!20227 t!4663))))) b!2212752))

(assert (= b!2212753 b!2212754))

(assert (= (and b!2212542 ((_ is Leaf!12394) (left!19897 (left!19897 (right!20227 t!4663))))) b!2212753))

(declare-fun m!2654927 () Bool)

(assert (=> b!2212752 m!2654927))

(declare-fun m!2654929 () Bool)

(assert (=> b!2212752 m!2654929))

(declare-fun m!2654931 () Bool)

(assert (=> b!2212753 m!2654931))

(assert (=> b!2212542 m!2654563))

(declare-fun b!2212755 () Bool)

(declare-fun tp!687545 () Bool)

(declare-fun tp!687544 () Bool)

(declare-fun e!1413022 () Bool)

(assert (=> b!2212755 (= e!1413022 (and (inv!35041 (left!19897 (right!20227 (left!19897 (right!20227 t!4663))))) tp!687545 (inv!35041 (right!20227 (right!20227 (left!19897 (right!20227 t!4663))))) tp!687544))))

(declare-fun b!2212757 () Bool)

(declare-fun e!1413021 () Bool)

(declare-fun tp!687546 () Bool)

(assert (=> b!2212757 (= e!1413021 tp!687546)))

(declare-fun b!2212756 () Bool)

(assert (=> b!2212756 (= e!1413022 (and (inv!35042 (xs!11405 (right!20227 (left!19897 (right!20227 t!4663))))) e!1413021))))

(assert (=> b!2212542 (= tp!687519 (and (inv!35041 (right!20227 (left!19897 (right!20227 t!4663)))) e!1413022))))

(assert (= (and b!2212542 ((_ is Node!8463) (right!20227 (left!19897 (right!20227 t!4663))))) b!2212755))

(assert (= b!2212756 b!2212757))

(assert (= (and b!2212542 ((_ is Leaf!12394) (right!20227 (left!19897 (right!20227 t!4663))))) b!2212756))

(declare-fun m!2654933 () Bool)

(assert (=> b!2212755 m!2654933))

(declare-fun m!2654935 () Bool)

(assert (=> b!2212755 m!2654935))

(declare-fun m!2654937 () Bool)

(assert (=> b!2212756 m!2654937))

(assert (=> b!2212542 m!2654565))

(declare-fun b!2212758 () Bool)

(declare-fun e!1413023 () Bool)

(declare-fun tp!687547 () Bool)

(assert (=> b!2212758 (= e!1413023 (and tp_is_empty!9793 tp!687547))))

(assert (=> b!2212547 (= tp!687524 e!1413023)))

(assert (= (and b!2212547 ((_ is Cons!25866) (innerList!8523 (xs!11405 (right!20227 (right!20227 t!4663)))))) b!2212758))

(declare-fun b!2212759 () Bool)

(declare-fun e!1413024 () Bool)

(declare-fun tp!687548 () Bool)

(assert (=> b!2212759 (= e!1413024 (and tp_is_empty!9793 tp!687548))))

(assert (=> b!2212541 (= tp!687518 e!1413024)))

(assert (= (and b!2212541 ((_ is Cons!25866) (t!198694 (innerList!8523 (xs!11405 (right!20227 t!4663)))))) b!2212759))

(declare-fun b!2212760 () Bool)

(declare-fun e!1413025 () Bool)

(declare-fun tp!687549 () Bool)

(assert (=> b!2212760 (= e!1413025 (and tp_is_empty!9793 tp!687549))))

(assert (=> b!2212536 (= tp!687517 e!1413025)))

(assert (= (and b!2212536 ((_ is Cons!25866) (t!198694 (t!198694 (innerList!8523 (xs!11405 t!4663)))))) b!2212760))

(declare-fun b!2212761 () Bool)

(declare-fun tp!687550 () Bool)

(declare-fun e!1413027 () Bool)

(declare-fun tp!687551 () Bool)

(assert (=> b!2212761 (= e!1413027 (and (inv!35041 (left!19897 (left!19897 (left!19897 (left!19897 t!4663))))) tp!687551 (inv!35041 (right!20227 (left!19897 (left!19897 (left!19897 t!4663))))) tp!687550))))

(declare-fun b!2212763 () Bool)

(declare-fun e!1413026 () Bool)

(declare-fun tp!687552 () Bool)

(assert (=> b!2212763 (= e!1413026 tp!687552)))

(declare-fun b!2212762 () Bool)

(assert (=> b!2212762 (= e!1413027 (and (inv!35042 (xs!11405 (left!19897 (left!19897 (left!19897 t!4663))))) e!1413026))))

(assert (=> b!2212526 (= tp!687512 (and (inv!35041 (left!19897 (left!19897 (left!19897 t!4663)))) e!1413027))))

(assert (= (and b!2212526 ((_ is Node!8463) (left!19897 (left!19897 (left!19897 t!4663))))) b!2212761))

(assert (= b!2212762 b!2212763))

(assert (= (and b!2212526 ((_ is Leaf!12394) (left!19897 (left!19897 (left!19897 t!4663))))) b!2212762))

(declare-fun m!2654939 () Bool)

(assert (=> b!2212761 m!2654939))

(declare-fun m!2654941 () Bool)

(assert (=> b!2212761 m!2654941))

(declare-fun m!2654943 () Bool)

(assert (=> b!2212762 m!2654943))

(assert (=> b!2212526 m!2654551))

(declare-fun tp!687554 () Bool)

(declare-fun tp!687553 () Bool)

(declare-fun e!1413029 () Bool)

(declare-fun b!2212764 () Bool)

(assert (=> b!2212764 (= e!1413029 (and (inv!35041 (left!19897 (right!20227 (left!19897 (left!19897 t!4663))))) tp!687554 (inv!35041 (right!20227 (right!20227 (left!19897 (left!19897 t!4663))))) tp!687553))))

(declare-fun b!2212766 () Bool)

(declare-fun e!1413028 () Bool)

(declare-fun tp!687555 () Bool)

(assert (=> b!2212766 (= e!1413028 tp!687555)))

(declare-fun b!2212765 () Bool)

(assert (=> b!2212765 (= e!1413029 (and (inv!35042 (xs!11405 (right!20227 (left!19897 (left!19897 t!4663))))) e!1413028))))

(assert (=> b!2212526 (= tp!687511 (and (inv!35041 (right!20227 (left!19897 (left!19897 t!4663)))) e!1413029))))

(assert (= (and b!2212526 ((_ is Node!8463) (right!20227 (left!19897 (left!19897 t!4663))))) b!2212764))

(assert (= b!2212765 b!2212766))

(assert (= (and b!2212526 ((_ is Leaf!12394) (right!20227 (left!19897 (left!19897 t!4663))))) b!2212765))

(declare-fun m!2654945 () Bool)

(assert (=> b!2212764 m!2654945))

(declare-fun m!2654947 () Bool)

(assert (=> b!2212764 m!2654947))

(declare-fun m!2654949 () Bool)

(assert (=> b!2212765 m!2654949))

(assert (=> b!2212526 m!2654553))

(declare-fun b!2212767 () Bool)

(declare-fun e!1413030 () Bool)

(declare-fun tp!687556 () Bool)

(assert (=> b!2212767 (= e!1413030 (and tp_is_empty!9793 tp!687556))))

(assert (=> b!2212528 (= tp!687513 e!1413030)))

(assert (= (and b!2212528 ((_ is Cons!25866) (innerList!8523 (xs!11405 (left!19897 (left!19897 t!4663)))))) b!2212767))

(declare-fun tp!687558 () Bool)

(declare-fun e!1413032 () Bool)

(declare-fun tp!687557 () Bool)

(declare-fun b!2212768 () Bool)

(assert (=> b!2212768 (= e!1413032 (and (inv!35041 (left!19897 (left!19897 (right!20227 (left!19897 t!4663))))) tp!687558 (inv!35041 (right!20227 (left!19897 (right!20227 (left!19897 t!4663))))) tp!687557))))

(declare-fun b!2212770 () Bool)

(declare-fun e!1413031 () Bool)

(declare-fun tp!687559 () Bool)

(assert (=> b!2212770 (= e!1413031 tp!687559)))

(declare-fun b!2212769 () Bool)

(assert (=> b!2212769 (= e!1413032 (and (inv!35042 (xs!11405 (left!19897 (right!20227 (left!19897 t!4663))))) e!1413031))))

(assert (=> b!2212533 (= tp!687515 (and (inv!35041 (left!19897 (right!20227 (left!19897 t!4663)))) e!1413032))))

(assert (= (and b!2212533 ((_ is Node!8463) (left!19897 (right!20227 (left!19897 t!4663))))) b!2212768))

(assert (= b!2212769 b!2212770))

(assert (= (and b!2212533 ((_ is Leaf!12394) (left!19897 (right!20227 (left!19897 t!4663))))) b!2212769))

(declare-fun m!2654951 () Bool)

(assert (=> b!2212768 m!2654951))

(declare-fun m!2654953 () Bool)

(assert (=> b!2212768 m!2654953))

(declare-fun m!2654955 () Bool)

(assert (=> b!2212769 m!2654955))

(assert (=> b!2212533 m!2654557))

(declare-fun e!1413034 () Bool)

(declare-fun b!2212771 () Bool)

(declare-fun tp!687560 () Bool)

(declare-fun tp!687561 () Bool)

(assert (=> b!2212771 (= e!1413034 (and (inv!35041 (left!19897 (right!20227 (right!20227 (left!19897 t!4663))))) tp!687561 (inv!35041 (right!20227 (right!20227 (right!20227 (left!19897 t!4663))))) tp!687560))))

(declare-fun b!2212773 () Bool)

(declare-fun e!1413033 () Bool)

(declare-fun tp!687562 () Bool)

(assert (=> b!2212773 (= e!1413033 tp!687562)))

(declare-fun b!2212772 () Bool)

(assert (=> b!2212772 (= e!1413034 (and (inv!35042 (xs!11405 (right!20227 (right!20227 (left!19897 t!4663))))) e!1413033))))

(assert (=> b!2212533 (= tp!687514 (and (inv!35041 (right!20227 (right!20227 (left!19897 t!4663)))) e!1413034))))

(assert (= (and b!2212533 ((_ is Node!8463) (right!20227 (right!20227 (left!19897 t!4663))))) b!2212771))

(assert (= b!2212772 b!2212773))

(assert (= (and b!2212533 ((_ is Leaf!12394) (right!20227 (right!20227 (left!19897 t!4663))))) b!2212772))

(declare-fun m!2654957 () Bool)

(assert (=> b!2212771 m!2654957))

(declare-fun m!2654959 () Bool)

(assert (=> b!2212771 m!2654959))

(declare-fun m!2654961 () Bool)

(assert (=> b!2212772 m!2654961))

(assert (=> b!2212533 m!2654559))

(declare-fun b!2212774 () Bool)

(declare-fun e!1413035 () Bool)

(declare-fun tp!687563 () Bool)

(assert (=> b!2212774 (= e!1413035 (and tp_is_empty!9793 tp!687563))))

(assert (=> b!2212544 (= tp!687521 e!1413035)))

(assert (= (and b!2212544 ((_ is Cons!25866) (innerList!8523 (xs!11405 (left!19897 (right!20227 t!4663)))))) b!2212774))

(declare-fun b!2212775 () Bool)

(declare-fun e!1413036 () Bool)

(declare-fun tp!687564 () Bool)

(assert (=> b!2212775 (= e!1413036 (and tp_is_empty!9793 tp!687564))))

(assert (=> b!2212535 (= tp!687516 e!1413036)))

(assert (= (and b!2212535 ((_ is Cons!25866) (innerList!8523 (xs!11405 (right!20227 (left!19897 t!4663)))))) b!2212775))

(declare-fun b!2212776 () Bool)

(declare-fun e!1413037 () Bool)

(declare-fun tp!687565 () Bool)

(assert (=> b!2212776 (= e!1413037 (and tp_is_empty!9793 tp!687565))))

(assert (=> b!2212548 (= tp!687525 e!1413037)))

(assert (= (and b!2212548 ((_ is Cons!25866) (t!198694 (innerList!8523 (xs!11405 (left!19897 t!4663)))))) b!2212776))

(declare-fun tp!687566 () Bool)

(declare-fun e!1413039 () Bool)

(declare-fun b!2212777 () Bool)

(declare-fun tp!687567 () Bool)

(assert (=> b!2212777 (= e!1413039 (and (inv!35041 (left!19897 (left!19897 (right!20227 (right!20227 t!4663))))) tp!687567 (inv!35041 (right!20227 (left!19897 (right!20227 (right!20227 t!4663))))) tp!687566))))

(declare-fun b!2212779 () Bool)

(declare-fun e!1413038 () Bool)

(declare-fun tp!687568 () Bool)

(assert (=> b!2212779 (= e!1413038 tp!687568)))

(declare-fun b!2212778 () Bool)

(assert (=> b!2212778 (= e!1413039 (and (inv!35042 (xs!11405 (left!19897 (right!20227 (right!20227 t!4663))))) e!1413038))))

(assert (=> b!2212545 (= tp!687523 (and (inv!35041 (left!19897 (right!20227 (right!20227 t!4663)))) e!1413039))))

(assert (= (and b!2212545 ((_ is Node!8463) (left!19897 (right!20227 (right!20227 t!4663))))) b!2212777))

(assert (= b!2212778 b!2212779))

(assert (= (and b!2212545 ((_ is Leaf!12394) (left!19897 (right!20227 (right!20227 t!4663))))) b!2212778))

(declare-fun m!2654963 () Bool)

(assert (=> b!2212777 m!2654963))

(declare-fun m!2654965 () Bool)

(assert (=> b!2212777 m!2654965))

(declare-fun m!2654967 () Bool)

(assert (=> b!2212778 m!2654967))

(assert (=> b!2212545 m!2654569))

(declare-fun tp!687569 () Bool)

(declare-fun b!2212780 () Bool)

(declare-fun e!1413041 () Bool)

(declare-fun tp!687570 () Bool)

(assert (=> b!2212780 (= e!1413041 (and (inv!35041 (left!19897 (right!20227 (right!20227 (right!20227 t!4663))))) tp!687570 (inv!35041 (right!20227 (right!20227 (right!20227 (right!20227 t!4663))))) tp!687569))))

(declare-fun b!2212782 () Bool)

(declare-fun e!1413040 () Bool)

(declare-fun tp!687571 () Bool)

(assert (=> b!2212782 (= e!1413040 tp!687571)))

(declare-fun b!2212781 () Bool)

(assert (=> b!2212781 (= e!1413041 (and (inv!35042 (xs!11405 (right!20227 (right!20227 (right!20227 t!4663))))) e!1413040))))

(assert (=> b!2212545 (= tp!687522 (and (inv!35041 (right!20227 (right!20227 (right!20227 t!4663)))) e!1413041))))

(assert (= (and b!2212545 ((_ is Node!8463) (right!20227 (right!20227 (right!20227 t!4663))))) b!2212780))

(assert (= b!2212781 b!2212782))

(assert (= (and b!2212545 ((_ is Leaf!12394) (right!20227 (right!20227 (right!20227 t!4663))))) b!2212781))

(declare-fun m!2654969 () Bool)

(assert (=> b!2212780 m!2654969))

(declare-fun m!2654971 () Bool)

(assert (=> b!2212780 m!2654971))

(declare-fun m!2654973 () Bool)

(assert (=> b!2212781 m!2654973))

(assert (=> b!2212545 m!2654571))

(check-sat (not b!2212750) (not b!2212760) (not b!2212542) (not b!2212644) (not b!2212772) (not b!2212625) (not b!2212741) (not b!2212777) (not d!661613) (not b!2212758) (not b!2212730) (not b!2212763) (not b!2212778) (not d!661665) (not d!661531) (not b!2212732) (not d!661567) (not b!2212665) (not b!2212729) (not d!661615) (not b!2212692) (not b!2212773) (not b!2212627) (not d!661541) (not d!661645) (not b!2212717) (not b!2212708) (not b!2212678) (not b!2212780) (not b!2212782) (not b!2212713) (not b!2212653) (not b!2212710) (not d!661575) (not b!2212742) (not b!2212765) (not b!2212645) (not b!2212764) (not b!2212737) (not b!2212762) (not b!2212774) (not b!2212751) (not b!2212683) (not b!2212526) (not b!2212700) (not d!661663) (not b!2212615) (not d!661651) (not b!2212655) (not d!661597) (not b!2212738) (not d!661657) (not b!2212736) (not b!2212781) (not b!2212749) (not b!2212754) (not d!661549) (not d!661573) (not b!2212684) (not b!2212705) (not b!2212616) (not b!2212702) (not b!2212767) (not d!661611) (not b!2212740) (not b!2212768) (not b!2212646) (not d!661659) (not b!2212651) (not b!2212621) (not b!2212731) (not b!2212725) (not b!2212728) (not b!2212670) (not b!2212776) (not b!2212672) (not b!2212657) (not b!2212641) (not b!2212680) (not d!661595) (not b!2212779) (not b!2212735) (not b!2212752) (not b!2212677) (not b!2212648) (not b!2212707) (not b!2212635) (not b!2212636) (not b!2212698) (not b!2212733) (not b!2212761) (not d!661635) (not b!2212689) (not b!2212757) (not b!2212756) (not b!2212753) (not b!2212734) (not b!2212674) (not b!2212619) (not b!2212724) (not b!2212688) (not d!661527) (not b!2212545) (not b!2212739) (not b!2212675) (not b!2212685) (not b!2212722) (not b!2212721) (not d!661603) (not b!2212640) (not b!2212704) tp_is_empty!9793 (not b!2212628) (not d!661585) (not b!2212690) (not d!661569) (not d!661557) (not b!2212623) (not d!661539) (not b!2212659) (not b!2212668) (not b!2212630) (not b!2212769) (not d!661627) (not b!2212681) (not b!2212650) (not b!2212771) (not b!2212770) (not b!2212533) (not b!2212632) (not b!2212718) (not b!2212647) (not b!2212686) (not b!2212687) (not b!2212775) (not d!661533) (not d!661653) (not d!661641) (not d!661661) (not b!2212663) (not b!2212759) (not b!2212712) (not b!2212649) (not d!661655) (not b!2212660) (not b!2212755) (not b!2212766))
(check-sat)
