; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200656 () Bool)

(assert start!200656)

(declare-fun b_free!56815 () Bool)

(declare-fun b_next!57519 () Bool)

(assert (=> start!200656 (= b_free!56815 (not b_next!57519))))

(declare-fun tp!604821 () Bool)

(declare-fun b_and!162607 () Bool)

(assert (=> start!200656 (= tp!604821 b_and!162607)))

(declare-fun b!2036610 () Bool)

(declare-fun res!892972 () Bool)

(declare-fun e!1286130 () Bool)

(assert (=> b!2036610 (=> (not res!892972) (not e!1286130))))

(declare-datatypes ((T!35962 0))(
  ( (T!35963 (val!6470 Int)) )
))
(declare-datatypes ((List!22353 0))(
  ( (Nil!22271) (Cons!22271 (h!27672 T!35962) (t!191264 List!22353)) )
))
(declare-datatypes ((IArray!14931 0))(
  ( (IArray!14932 (innerList!7523 List!22353)) )
))
(declare-datatypes ((Conc!7463 0))(
  ( (Node!7463 (left!17731 Conc!7463) (right!18061 Conc!7463) (csize!15156 Int) (cheight!7674 Int)) (Leaf!10936 (xs!10365 IArray!14931) (csize!15157 Int)) (Empty!7463) )
))
(declare-fun t!4319 () Conc!7463)

(declare-fun p!1489 () Int)

(declare-fun size!17411 (IArray!14931) Int)

(declare-fun filter!463 (IArray!14931 Int) IArray!14931)

(assert (=> b!2036610 (= res!892972 (= (size!17411 (filter!463 (xs!10365 t!4319) p!1489)) 0))))

(declare-fun b!2036611 () Bool)

(declare-fun e!1286129 () Bool)

(declare-fun list!9123 (Conc!7463) List!22353)

(declare-fun filter!464 (List!22353 Int) List!22353)

(assert (=> b!2036611 (= e!1286129 (not (= (list!9123 Empty!7463) (filter!464 (list!9123 t!4319) p!1489))))))

(declare-fun b!2036612 () Bool)

(assert (=> b!2036612 (= e!1286130 e!1286129)))

(declare-fun res!892973 () Bool)

(assert (=> b!2036612 (=> res!892973 e!1286129)))

(declare-fun isBalanced!2341 (Conc!7463) Bool)

(assert (=> b!2036612 (= res!892973 (not (isBalanced!2341 Empty!7463)))))

(declare-fun b!2036613 () Bool)

(declare-fun e!1286128 () Bool)

(declare-fun tp!604822 () Bool)

(assert (=> b!2036613 (= e!1286128 tp!604822)))

(declare-fun b!2036614 () Bool)

(declare-fun e!1286131 () Bool)

(declare-fun inv!29549 (IArray!14931) Bool)

(assert (=> b!2036614 (= e!1286131 (and (inv!29549 (xs!10365 t!4319)) e!1286128))))

(declare-fun tp!604823 () Bool)

(declare-fun b!2036615 () Bool)

(declare-fun tp!604824 () Bool)

(declare-fun inv!29550 (Conc!7463) Bool)

(assert (=> b!2036615 (= e!1286131 (and (inv!29550 (left!17731 t!4319)) tp!604823 (inv!29550 (right!18061 t!4319)) tp!604824))))

(declare-fun b!2036616 () Bool)

(declare-fun res!892974 () Bool)

(assert (=> b!2036616 (=> (not res!892974) (not e!1286130))))

(get-info :version)

(assert (=> b!2036616 (= res!892974 (and (not ((_ is Empty!7463) t!4319)) ((_ is Leaf!10936) t!4319)))))

(declare-fun res!892975 () Bool)

(assert (=> start!200656 (=> (not res!892975) (not e!1286130))))

(assert (=> start!200656 (= res!892975 (isBalanced!2341 t!4319))))

(assert (=> start!200656 e!1286130))

(assert (=> start!200656 (and (inv!29550 t!4319) e!1286131)))

(assert (=> start!200656 tp!604821))

(assert (= (and start!200656 res!892975) b!2036616))

(assert (= (and b!2036616 res!892974) b!2036610))

(assert (= (and b!2036610 res!892972) b!2036612))

(assert (= (and b!2036612 (not res!892973)) b!2036611))

(assert (= (and start!200656 ((_ is Node!7463) t!4319)) b!2036615))

(assert (= b!2036614 b!2036613))

(assert (= (and start!200656 ((_ is Leaf!10936) t!4319)) b!2036614))

(declare-fun m!2479299 () Bool)

(assert (=> b!2036615 m!2479299))

(declare-fun m!2479301 () Bool)

(assert (=> b!2036615 m!2479301))

(declare-fun m!2479303 () Bool)

(assert (=> b!2036611 m!2479303))

(declare-fun m!2479305 () Bool)

(assert (=> b!2036611 m!2479305))

(assert (=> b!2036611 m!2479305))

(declare-fun m!2479307 () Bool)

(assert (=> b!2036611 m!2479307))

(declare-fun m!2479309 () Bool)

(assert (=> b!2036612 m!2479309))

(declare-fun m!2479311 () Bool)

(assert (=> b!2036614 m!2479311))

(declare-fun m!2479313 () Bool)

(assert (=> start!200656 m!2479313))

(declare-fun m!2479315 () Bool)

(assert (=> start!200656 m!2479315))

(declare-fun m!2479317 () Bool)

(assert (=> b!2036610 m!2479317))

(assert (=> b!2036610 m!2479317))

(declare-fun m!2479319 () Bool)

(assert (=> b!2036610 m!2479319))

(check-sat (not b!2036610) (not b!2036615) (not b_next!57519) (not b!2036612) (not b!2036613) b_and!162607 (not b!2036611) (not start!200656) (not b!2036614))
(check-sat b_and!162607 (not b_next!57519))
(get-model)

(declare-fun d!623279 () Bool)

(declare-fun c!329816 () Bool)

(assert (=> d!623279 (= c!329816 ((_ is Node!7463) (left!17731 t!4319)))))

(declare-fun e!1286144 () Bool)

(assert (=> d!623279 (= (inv!29550 (left!17731 t!4319)) e!1286144)))

(declare-fun b!2036635 () Bool)

(declare-fun inv!29553 (Conc!7463) Bool)

(assert (=> b!2036635 (= e!1286144 (inv!29553 (left!17731 t!4319)))))

(declare-fun b!2036636 () Bool)

(declare-fun e!1286145 () Bool)

(assert (=> b!2036636 (= e!1286144 e!1286145)))

(declare-fun res!892982 () Bool)

(assert (=> b!2036636 (= res!892982 (not ((_ is Leaf!10936) (left!17731 t!4319))))))

(assert (=> b!2036636 (=> res!892982 e!1286145)))

(declare-fun b!2036637 () Bool)

(declare-fun inv!29554 (Conc!7463) Bool)

(assert (=> b!2036637 (= e!1286145 (inv!29554 (left!17731 t!4319)))))

(assert (= (and d!623279 c!329816) b!2036635))

(assert (= (and d!623279 (not c!329816)) b!2036636))

(assert (= (and b!2036636 (not res!892982)) b!2036637))

(declare-fun m!2479329 () Bool)

(assert (=> b!2036635 m!2479329))

(declare-fun m!2479331 () Bool)

(assert (=> b!2036637 m!2479331))

(assert (=> b!2036615 d!623279))

(declare-fun d!623285 () Bool)

(declare-fun c!329817 () Bool)

(assert (=> d!623285 (= c!329817 ((_ is Node!7463) (right!18061 t!4319)))))

(declare-fun e!1286146 () Bool)

(assert (=> d!623285 (= (inv!29550 (right!18061 t!4319)) e!1286146)))

(declare-fun b!2036638 () Bool)

(assert (=> b!2036638 (= e!1286146 (inv!29553 (right!18061 t!4319)))))

(declare-fun b!2036639 () Bool)

(declare-fun e!1286147 () Bool)

(assert (=> b!2036639 (= e!1286146 e!1286147)))

(declare-fun res!892983 () Bool)

(assert (=> b!2036639 (= res!892983 (not ((_ is Leaf!10936) (right!18061 t!4319))))))

(assert (=> b!2036639 (=> res!892983 e!1286147)))

(declare-fun b!2036640 () Bool)

(assert (=> b!2036640 (= e!1286147 (inv!29554 (right!18061 t!4319)))))

(assert (= (and d!623285 c!329817) b!2036638))

(assert (= (and d!623285 (not c!329817)) b!2036639))

(assert (= (and b!2036639 (not res!892983)) b!2036640))

(declare-fun m!2479333 () Bool)

(assert (=> b!2036638 m!2479333))

(declare-fun m!2479335 () Bool)

(assert (=> b!2036640 m!2479335))

(assert (=> b!2036615 d!623285))

(declare-fun d!623287 () Bool)

(declare-fun lt!764815 () Int)

(declare-fun size!17412 (List!22353) Int)

(declare-fun list!9124 (IArray!14931) List!22353)

(assert (=> d!623287 (= lt!764815 (size!17412 (list!9124 (filter!463 (xs!10365 t!4319) p!1489))))))

(declare-fun choose!12429 (IArray!14931) Int)

(assert (=> d!623287 (= lt!764815 (choose!12429 (filter!463 (xs!10365 t!4319) p!1489)))))

(assert (=> d!623287 (= (size!17411 (filter!463 (xs!10365 t!4319) p!1489)) lt!764815)))

(declare-fun bs!421353 () Bool)

(assert (= bs!421353 d!623287))

(assert (=> bs!421353 m!2479317))

(declare-fun m!2479337 () Bool)

(assert (=> bs!421353 m!2479337))

(assert (=> bs!421353 m!2479337))

(declare-fun m!2479339 () Bool)

(assert (=> bs!421353 m!2479339))

(assert (=> bs!421353 m!2479317))

(declare-fun m!2479341 () Bool)

(assert (=> bs!421353 m!2479341))

(assert (=> b!2036610 d!623287))

(declare-fun d!623289 () Bool)

(declare-fun lt!764818 () IArray!14931)

(assert (=> d!623289 (= lt!764818 (IArray!14932 (filter!464 (list!9124 (xs!10365 t!4319)) p!1489)))))

(declare-fun choose!12430 (IArray!14931 Int) IArray!14931)

(assert (=> d!623289 (= lt!764818 (choose!12430 (xs!10365 t!4319) p!1489))))

(assert (=> d!623289 (= (filter!463 (xs!10365 t!4319) p!1489) lt!764818)))

(declare-fun bs!421354 () Bool)

(assert (= bs!421354 d!623289))

(declare-fun m!2479343 () Bool)

(assert (=> bs!421354 m!2479343))

(assert (=> bs!421354 m!2479343))

(declare-fun m!2479345 () Bool)

(assert (=> bs!421354 m!2479345))

(declare-fun m!2479347 () Bool)

(assert (=> bs!421354 m!2479347))

(assert (=> b!2036610 d!623289))

(declare-fun d!623291 () Bool)

(assert (=> d!623291 (= (inv!29549 (xs!10365 t!4319)) (<= (size!17412 (innerList!7523 (xs!10365 t!4319))) 2147483647))))

(declare-fun bs!421355 () Bool)

(assert (= bs!421355 d!623291))

(declare-fun m!2479357 () Bool)

(assert (=> bs!421355 m!2479357))

(assert (=> b!2036614 d!623291))

(declare-fun b!2036692 () Bool)

(declare-fun e!1286169 () Bool)

(declare-fun e!1286168 () Bool)

(assert (=> b!2036692 (= e!1286169 e!1286168)))

(declare-fun res!893021 () Bool)

(assert (=> b!2036692 (=> (not res!893021) (not e!1286168))))

(declare-fun height!1163 (Conc!7463) Int)

(assert (=> b!2036692 (= res!893021 (<= (- 1) (- (height!1163 (left!17731 Empty!7463)) (height!1163 (right!18061 Empty!7463)))))))

(declare-fun b!2036694 () Bool)

(declare-fun res!893026 () Bool)

(assert (=> b!2036694 (=> (not res!893026) (not e!1286168))))

(assert (=> b!2036694 (= res!893026 (isBalanced!2341 (left!17731 Empty!7463)))))

(declare-fun b!2036695 () Bool)

(declare-fun isEmpty!13921 (Conc!7463) Bool)

(assert (=> b!2036695 (= e!1286168 (not (isEmpty!13921 (right!18061 Empty!7463))))))

(declare-fun b!2036696 () Bool)

(declare-fun res!893025 () Bool)

(assert (=> b!2036696 (=> (not res!893025) (not e!1286168))))

(assert (=> b!2036696 (= res!893025 (not (isEmpty!13921 (left!17731 Empty!7463))))))

(declare-fun b!2036697 () Bool)

(declare-fun res!893023 () Bool)

(assert (=> b!2036697 (=> (not res!893023) (not e!1286168))))

(assert (=> b!2036697 (= res!893023 (isBalanced!2341 (right!18061 Empty!7463)))))

(declare-fun b!2036693 () Bool)

(declare-fun res!893024 () Bool)

(assert (=> b!2036693 (=> (not res!893024) (not e!1286168))))

(assert (=> b!2036693 (= res!893024 (<= (- (height!1163 (left!17731 Empty!7463)) (height!1163 (right!18061 Empty!7463))) 1))))

(declare-fun d!623293 () Bool)

(declare-fun res!893022 () Bool)

(assert (=> d!623293 (=> res!893022 e!1286169)))

(assert (=> d!623293 (= res!893022 (not ((_ is Node!7463) Empty!7463)))))

(assert (=> d!623293 (= (isBalanced!2341 Empty!7463) e!1286169)))

(assert (= (and d!623293 (not res!893022)) b!2036692))

(assert (= (and b!2036692 res!893021) b!2036693))

(assert (= (and b!2036693 res!893024) b!2036694))

(assert (= (and b!2036694 res!893026) b!2036697))

(assert (= (and b!2036697 res!893023) b!2036696))

(assert (= (and b!2036696 res!893025) b!2036695))

(declare-fun m!2479387 () Bool)

(assert (=> b!2036695 m!2479387))

(declare-fun m!2479389 () Bool)

(assert (=> b!2036693 m!2479389))

(declare-fun m!2479391 () Bool)

(assert (=> b!2036693 m!2479391))

(declare-fun m!2479393 () Bool)

(assert (=> b!2036697 m!2479393))

(declare-fun m!2479395 () Bool)

(assert (=> b!2036694 m!2479395))

(declare-fun m!2479397 () Bool)

(assert (=> b!2036696 m!2479397))

(assert (=> b!2036692 m!2479389))

(assert (=> b!2036692 m!2479391))

(assert (=> b!2036612 d!623293))

(declare-fun b!2036698 () Bool)

(declare-fun e!1286171 () Bool)

(declare-fun e!1286170 () Bool)

(assert (=> b!2036698 (= e!1286171 e!1286170)))

(declare-fun res!893027 () Bool)

(assert (=> b!2036698 (=> (not res!893027) (not e!1286170))))

(assert (=> b!2036698 (= res!893027 (<= (- 1) (- (height!1163 (left!17731 t!4319)) (height!1163 (right!18061 t!4319)))))))

(declare-fun b!2036700 () Bool)

(declare-fun res!893032 () Bool)

(assert (=> b!2036700 (=> (not res!893032) (not e!1286170))))

(assert (=> b!2036700 (= res!893032 (isBalanced!2341 (left!17731 t!4319)))))

(declare-fun b!2036701 () Bool)

(assert (=> b!2036701 (= e!1286170 (not (isEmpty!13921 (right!18061 t!4319))))))

(declare-fun b!2036702 () Bool)

(declare-fun res!893031 () Bool)

(assert (=> b!2036702 (=> (not res!893031) (not e!1286170))))

(assert (=> b!2036702 (= res!893031 (not (isEmpty!13921 (left!17731 t!4319))))))

(declare-fun b!2036703 () Bool)

(declare-fun res!893029 () Bool)

(assert (=> b!2036703 (=> (not res!893029) (not e!1286170))))

(assert (=> b!2036703 (= res!893029 (isBalanced!2341 (right!18061 t!4319)))))

(declare-fun b!2036699 () Bool)

(declare-fun res!893030 () Bool)

(assert (=> b!2036699 (=> (not res!893030) (not e!1286170))))

(assert (=> b!2036699 (= res!893030 (<= (- (height!1163 (left!17731 t!4319)) (height!1163 (right!18061 t!4319))) 1))))

(declare-fun d!623303 () Bool)

(declare-fun res!893028 () Bool)

(assert (=> d!623303 (=> res!893028 e!1286171)))

(assert (=> d!623303 (= res!893028 (not ((_ is Node!7463) t!4319)))))

(assert (=> d!623303 (= (isBalanced!2341 t!4319) e!1286171)))

(assert (= (and d!623303 (not res!893028)) b!2036698))

(assert (= (and b!2036698 res!893027) b!2036699))

(assert (= (and b!2036699 res!893030) b!2036700))

(assert (= (and b!2036700 res!893032) b!2036703))

(assert (= (and b!2036703 res!893029) b!2036702))

(assert (= (and b!2036702 res!893031) b!2036701))

(declare-fun m!2479399 () Bool)

(assert (=> b!2036701 m!2479399))

(declare-fun m!2479401 () Bool)

(assert (=> b!2036699 m!2479401))

(declare-fun m!2479403 () Bool)

(assert (=> b!2036699 m!2479403))

(declare-fun m!2479405 () Bool)

(assert (=> b!2036703 m!2479405))

(declare-fun m!2479407 () Bool)

(assert (=> b!2036700 m!2479407))

(declare-fun m!2479409 () Bool)

(assert (=> b!2036702 m!2479409))

(assert (=> b!2036698 m!2479401))

(assert (=> b!2036698 m!2479403))

(assert (=> start!200656 d!623303))

(declare-fun d!623305 () Bool)

(declare-fun c!329825 () Bool)

(assert (=> d!623305 (= c!329825 ((_ is Node!7463) t!4319))))

(declare-fun e!1286172 () Bool)

(assert (=> d!623305 (= (inv!29550 t!4319) e!1286172)))

(declare-fun b!2036704 () Bool)

(assert (=> b!2036704 (= e!1286172 (inv!29553 t!4319))))

(declare-fun b!2036705 () Bool)

(declare-fun e!1286173 () Bool)

(assert (=> b!2036705 (= e!1286172 e!1286173)))

(declare-fun res!893033 () Bool)

(assert (=> b!2036705 (= res!893033 (not ((_ is Leaf!10936) t!4319)))))

(assert (=> b!2036705 (=> res!893033 e!1286173)))

(declare-fun b!2036706 () Bool)

(assert (=> b!2036706 (= e!1286173 (inv!29554 t!4319))))

(assert (= (and d!623305 c!329825) b!2036704))

(assert (= (and d!623305 (not c!329825)) b!2036705))

(assert (= (and b!2036705 (not res!893033)) b!2036706))

(declare-fun m!2479411 () Bool)

(assert (=> b!2036704 m!2479411))

(declare-fun m!2479413 () Bool)

(assert (=> b!2036706 m!2479413))

(assert (=> start!200656 d!623305))

(declare-fun b!2036729 () Bool)

(declare-fun e!1286185 () List!22353)

(assert (=> b!2036729 (= e!1286185 (list!9124 (xs!10365 Empty!7463)))))

(declare-fun d!623307 () Bool)

(declare-fun c!329834 () Bool)

(assert (=> d!623307 (= c!329834 ((_ is Empty!7463) Empty!7463))))

(declare-fun e!1286184 () List!22353)

(assert (=> d!623307 (= (list!9123 Empty!7463) e!1286184)))

(declare-fun b!2036728 () Bool)

(assert (=> b!2036728 (= e!1286184 e!1286185)))

(declare-fun c!329835 () Bool)

(assert (=> b!2036728 (= c!329835 ((_ is Leaf!10936) Empty!7463))))

(declare-fun b!2036730 () Bool)

(declare-fun ++!6045 (List!22353 List!22353) List!22353)

(assert (=> b!2036730 (= e!1286185 (++!6045 (list!9123 (left!17731 Empty!7463)) (list!9123 (right!18061 Empty!7463))))))

(declare-fun b!2036727 () Bool)

(assert (=> b!2036727 (= e!1286184 Nil!22271)))

(assert (= (and d!623307 c!329834) b!2036727))

(assert (= (and d!623307 (not c!329834)) b!2036728))

(assert (= (and b!2036728 c!329835) b!2036729))

(assert (= (and b!2036728 (not c!329835)) b!2036730))

(declare-fun m!2479415 () Bool)

(assert (=> b!2036729 m!2479415))

(declare-fun m!2479417 () Bool)

(assert (=> b!2036730 m!2479417))

(declare-fun m!2479419 () Bool)

(assert (=> b!2036730 m!2479419))

(assert (=> b!2036730 m!2479417))

(assert (=> b!2036730 m!2479419))

(declare-fun m!2479421 () Bool)

(assert (=> b!2036730 m!2479421))

(assert (=> b!2036611 d!623307))

(declare-fun b!2036757 () Bool)

(declare-fun e!1286201 () List!22353)

(assert (=> b!2036757 (= e!1286201 Nil!22271)))

(declare-fun b!2036758 () Bool)

(declare-fun e!1286199 () List!22353)

(declare-fun call!124938 () List!22353)

(assert (=> b!2036758 (= e!1286199 call!124938)))

(declare-fun bm!124933 () Bool)

(assert (=> bm!124933 (= call!124938 (filter!464 (t!191264 (list!9123 t!4319)) p!1489))))

(declare-fun b!2036759 () Bool)

(declare-fun res!893045 () Bool)

(declare-fun e!1286200 () Bool)

(assert (=> b!2036759 (=> (not res!893045) (not e!1286200))))

(declare-fun lt!764830 () List!22353)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3302 (List!22353) (InoxSet T!35962))

(assert (=> b!2036759 (= res!893045 (= ((_ map implies) (content!3302 lt!764830) (content!3302 (list!9123 t!4319))) ((as const (InoxSet T!35962)) true)))))

(declare-fun b!2036760 () Bool)

(assert (=> b!2036760 (= e!1286201 e!1286199)))

(declare-fun c!329845 () Bool)

(declare-fun dynLambda!11099 (Int T!35962) Bool)

(assert (=> b!2036760 (= c!329845 (dynLambda!11099 p!1489 (h!27672 (list!9123 t!4319))))))

(declare-fun d!623309 () Bool)

(assert (=> d!623309 e!1286200))

(declare-fun res!893044 () Bool)

(assert (=> d!623309 (=> (not res!893044) (not e!1286200))))

(assert (=> d!623309 (= res!893044 (<= (size!17412 lt!764830) (size!17412 (list!9123 t!4319))))))

(assert (=> d!623309 (= lt!764830 e!1286201)))

(declare-fun c!329844 () Bool)

(assert (=> d!623309 (= c!329844 ((_ is Nil!22271) (list!9123 t!4319)))))

(assert (=> d!623309 (= (filter!464 (list!9123 t!4319) p!1489) lt!764830)))

(declare-fun b!2036761 () Bool)

(assert (=> b!2036761 (= e!1286199 (Cons!22271 (h!27672 (list!9123 t!4319)) call!124938))))

(declare-fun b!2036762 () Bool)

(declare-fun forall!4750 (List!22353 Int) Bool)

(assert (=> b!2036762 (= e!1286200 (forall!4750 lt!764830 p!1489))))

(assert (= (and d!623309 c!329844) b!2036757))

(assert (= (and d!623309 (not c!329844)) b!2036760))

(assert (= (and b!2036760 c!329845) b!2036761))

(assert (= (and b!2036760 (not c!329845)) b!2036758))

(assert (= (or b!2036761 b!2036758) bm!124933))

(assert (= (and d!623309 res!893044) b!2036759))

(assert (= (and b!2036759 res!893045) b!2036762))

(declare-fun b_lambda!68759 () Bool)

(assert (=> (not b_lambda!68759) (not b!2036760)))

(declare-fun t!191272 () Bool)

(declare-fun tb!128835 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191272) tb!128835))

(declare-fun result!154116 () Bool)

(assert (=> tb!128835 (= result!154116 true)))

(assert (=> b!2036760 t!191272))

(declare-fun b_and!162611 () Bool)

(assert (= b_and!162607 (and (=> t!191272 result!154116) b_and!162611)))

(declare-fun m!2479457 () Bool)

(assert (=> d!623309 m!2479457))

(assert (=> d!623309 m!2479305))

(declare-fun m!2479459 () Bool)

(assert (=> d!623309 m!2479459))

(declare-fun m!2479461 () Bool)

(assert (=> b!2036762 m!2479461))

(declare-fun m!2479463 () Bool)

(assert (=> b!2036760 m!2479463))

(declare-fun m!2479465 () Bool)

(assert (=> bm!124933 m!2479465))

(declare-fun m!2479467 () Bool)

(assert (=> b!2036759 m!2479467))

(assert (=> b!2036759 m!2479305))

(declare-fun m!2479469 () Bool)

(assert (=> b!2036759 m!2479469))

(assert (=> b!2036611 d!623309))

(declare-fun b!2036769 () Bool)

(declare-fun e!1286205 () List!22353)

(assert (=> b!2036769 (= e!1286205 (list!9124 (xs!10365 t!4319)))))

(declare-fun d!623319 () Bool)

(declare-fun c!329846 () Bool)

(assert (=> d!623319 (= c!329846 ((_ is Empty!7463) t!4319))))

(declare-fun e!1286204 () List!22353)

(assert (=> d!623319 (= (list!9123 t!4319) e!1286204)))

(declare-fun b!2036768 () Bool)

(assert (=> b!2036768 (= e!1286204 e!1286205)))

(declare-fun c!329847 () Bool)

(assert (=> b!2036768 (= c!329847 ((_ is Leaf!10936) t!4319))))

(declare-fun b!2036770 () Bool)

(assert (=> b!2036770 (= e!1286205 (++!6045 (list!9123 (left!17731 t!4319)) (list!9123 (right!18061 t!4319))))))

(declare-fun b!2036767 () Bool)

(assert (=> b!2036767 (= e!1286204 Nil!22271)))

(assert (= (and d!623319 c!329846) b!2036767))

(assert (= (and d!623319 (not c!329846)) b!2036768))

(assert (= (and b!2036768 c!329847) b!2036769))

(assert (= (and b!2036768 (not c!329847)) b!2036770))

(assert (=> b!2036769 m!2479343))

(declare-fun m!2479471 () Bool)

(assert (=> b!2036770 m!2479471))

(declare-fun m!2479473 () Bool)

(assert (=> b!2036770 m!2479473))

(assert (=> b!2036770 m!2479471))

(assert (=> b!2036770 m!2479473))

(declare-fun m!2479475 () Bool)

(assert (=> b!2036770 m!2479475))

(assert (=> b!2036611 d!623319))

(declare-fun b!2036790 () Bool)

(declare-fun tp!604846 () Bool)

(declare-fun tp!604848 () Bool)

(declare-fun e!1286218 () Bool)

(assert (=> b!2036790 (= e!1286218 (and (inv!29550 (left!17731 (left!17731 t!4319))) tp!604846 (inv!29550 (right!18061 (left!17731 t!4319))) tp!604848))))

(declare-fun b!2036792 () Bool)

(declare-fun e!1286217 () Bool)

(declare-fun tp!604847 () Bool)

(assert (=> b!2036792 (= e!1286217 tp!604847)))

(declare-fun b!2036791 () Bool)

(assert (=> b!2036791 (= e!1286218 (and (inv!29549 (xs!10365 (left!17731 t!4319))) e!1286217))))

(assert (=> b!2036615 (= tp!604823 (and (inv!29550 (left!17731 t!4319)) e!1286218))))

(assert (= (and b!2036615 ((_ is Node!7463) (left!17731 t!4319))) b!2036790))

(assert (= b!2036791 b!2036792))

(assert (= (and b!2036615 ((_ is Leaf!10936) (left!17731 t!4319))) b!2036791))

(declare-fun m!2479489 () Bool)

(assert (=> b!2036790 m!2479489))

(declare-fun m!2479491 () Bool)

(assert (=> b!2036790 m!2479491))

(declare-fun m!2479493 () Bool)

(assert (=> b!2036791 m!2479493))

(assert (=> b!2036615 m!2479299))

(declare-fun tp!604849 () Bool)

(declare-fun b!2036793 () Bool)

(declare-fun tp!604851 () Bool)

(declare-fun e!1286220 () Bool)

(assert (=> b!2036793 (= e!1286220 (and (inv!29550 (left!17731 (right!18061 t!4319))) tp!604849 (inv!29550 (right!18061 (right!18061 t!4319))) tp!604851))))

(declare-fun b!2036795 () Bool)

(declare-fun e!1286219 () Bool)

(declare-fun tp!604850 () Bool)

(assert (=> b!2036795 (= e!1286219 tp!604850)))

(declare-fun b!2036794 () Bool)

(assert (=> b!2036794 (= e!1286220 (and (inv!29549 (xs!10365 (right!18061 t!4319))) e!1286219))))

(assert (=> b!2036615 (= tp!604824 (and (inv!29550 (right!18061 t!4319)) e!1286220))))

(assert (= (and b!2036615 ((_ is Node!7463) (right!18061 t!4319))) b!2036793))

(assert (= b!2036794 b!2036795))

(assert (= (and b!2036615 ((_ is Leaf!10936) (right!18061 t!4319))) b!2036794))

(declare-fun m!2479495 () Bool)

(assert (=> b!2036793 m!2479495))

(declare-fun m!2479497 () Bool)

(assert (=> b!2036793 m!2479497))

(declare-fun m!2479499 () Bool)

(assert (=> b!2036794 m!2479499))

(assert (=> b!2036615 m!2479301))

(declare-fun b!2036800 () Bool)

(declare-fun e!1286223 () Bool)

(declare-fun tp_is_empty!9265 () Bool)

(declare-fun tp!604854 () Bool)

(assert (=> b!2036800 (= e!1286223 (and tp_is_empty!9265 tp!604854))))

(assert (=> b!2036613 (= tp!604822 e!1286223)))

(assert (= (and b!2036613 ((_ is Cons!22271) (innerList!7523 (xs!10365 t!4319)))) b!2036800))

(declare-fun b_lambda!68763 () Bool)

(assert (= b_lambda!68759 (or (and start!200656 b_free!56815) b_lambda!68763)))

(check-sat (not b_next!57519) (not bm!124933) (not b!2036730) (not b!2036693) (not b!2036695) (not b!2036704) tp_is_empty!9265 (not d!623289) (not b!2036697) (not b!2036791) (not b!2036635) (not b!2036700) (not b!2036692) (not b!2036698) (not b!2036703) (not b!2036640) (not b!2036615) (not b!2036701) (not b!2036790) (not b!2036762) (not b!2036769) b_and!162611 (not b_lambda!68763) (not b!2036706) (not b!2036800) (not b!2036792) (not b!2036729) (not b!2036759) (not b!2036696) (not b!2036793) (not b!2036795) (not b!2036794) (not b!2036702) (not b!2036699) (not b!2036694) (not b!2036638) (not b!2036770) (not d!623291) (not d!623287) (not b!2036637) (not d!623309))
(check-sat b_and!162611 (not b_next!57519))
(get-model)

(declare-fun d!623321 () Bool)

(assert (not d!623321))

(assert (=> b!2036693 d!623321))

(declare-fun d!623323 () Bool)

(assert (not d!623323))

(assert (=> b!2036693 d!623323))

(declare-fun d!623325 () Bool)

(declare-fun lt!764833 () Int)

(assert (=> d!623325 (>= lt!764833 0)))

(declare-fun e!1286226 () Int)

(assert (=> d!623325 (= lt!764833 e!1286226)))

(declare-fun c!329850 () Bool)

(assert (=> d!623325 (= c!329850 ((_ is Nil!22271) lt!764830))))

(assert (=> d!623325 (= (size!17412 lt!764830) lt!764833)))

(declare-fun b!2036805 () Bool)

(assert (=> b!2036805 (= e!1286226 0)))

(declare-fun b!2036806 () Bool)

(assert (=> b!2036806 (= e!1286226 (+ 1 (size!17412 (t!191264 lt!764830))))))

(assert (= (and d!623325 c!329850) b!2036805))

(assert (= (and d!623325 (not c!329850)) b!2036806))

(declare-fun m!2479501 () Bool)

(assert (=> b!2036806 m!2479501))

(assert (=> d!623309 d!623325))

(declare-fun d!623327 () Bool)

(declare-fun lt!764834 () Int)

(assert (=> d!623327 (>= lt!764834 0)))

(declare-fun e!1286227 () Int)

(assert (=> d!623327 (= lt!764834 e!1286227)))

(declare-fun c!329851 () Bool)

(assert (=> d!623327 (= c!329851 ((_ is Nil!22271) (list!9123 t!4319)))))

(assert (=> d!623327 (= (size!17412 (list!9123 t!4319)) lt!764834)))

(declare-fun b!2036807 () Bool)

(assert (=> b!2036807 (= e!1286227 0)))

(declare-fun b!2036808 () Bool)

(assert (=> b!2036808 (= e!1286227 (+ 1 (size!17412 (t!191264 (list!9123 t!4319)))))))

(assert (= (and d!623327 c!329851) b!2036807))

(assert (= (and d!623327 (not c!329851)) b!2036808))

(declare-fun m!2479503 () Bool)

(assert (=> b!2036808 m!2479503))

(assert (=> d!623309 d!623327))

(assert (=> b!2036692 d!623321))

(assert (=> b!2036692 d!623323))

(declare-fun d!623329 () Bool)

(assert (not d!623329))

(assert (=> b!2036694 d!623329))

(declare-fun d!623331 () Bool)

(assert (not d!623331))

(assert (=> b!2036695 d!623331))

(declare-fun d!623333 () Bool)

(assert (not d!623333))

(assert (=> b!2036697 d!623333))

(assert (=> b!2036615 d!623279))

(assert (=> b!2036615 d!623285))

(declare-fun d!623335 () Bool)

(assert (not d!623335))

(assert (=> b!2036696 d!623335))

(declare-fun d!623337 () Bool)

(assert (=> d!623337 (= (inv!29549 (xs!10365 (right!18061 t!4319))) (<= (size!17412 (innerList!7523 (xs!10365 (right!18061 t!4319)))) 2147483647))))

(declare-fun bs!421359 () Bool)

(assert (= bs!421359 d!623337))

(declare-fun m!2479505 () Bool)

(assert (=> bs!421359 m!2479505))

(assert (=> b!2036794 d!623337))

(declare-fun d!623339 () Bool)

(declare-fun c!329852 () Bool)

(assert (=> d!623339 (= c!329852 ((_ is Node!7463) (left!17731 (right!18061 t!4319))))))

(declare-fun e!1286228 () Bool)

(assert (=> d!623339 (= (inv!29550 (left!17731 (right!18061 t!4319))) e!1286228)))

(declare-fun b!2036809 () Bool)

(assert (=> b!2036809 (= e!1286228 (inv!29553 (left!17731 (right!18061 t!4319))))))

(declare-fun b!2036810 () Bool)

(declare-fun e!1286229 () Bool)

(assert (=> b!2036810 (= e!1286228 e!1286229)))

(declare-fun res!893046 () Bool)

(assert (=> b!2036810 (= res!893046 (not ((_ is Leaf!10936) (left!17731 (right!18061 t!4319)))))))

(assert (=> b!2036810 (=> res!893046 e!1286229)))

(declare-fun b!2036811 () Bool)

(assert (=> b!2036811 (= e!1286229 (inv!29554 (left!17731 (right!18061 t!4319))))))

(assert (= (and d!623339 c!329852) b!2036809))

(assert (= (and d!623339 (not c!329852)) b!2036810))

(assert (= (and b!2036810 (not res!893046)) b!2036811))

(declare-fun m!2479507 () Bool)

(assert (=> b!2036809 m!2479507))

(declare-fun m!2479509 () Bool)

(assert (=> b!2036811 m!2479509))

(assert (=> b!2036793 d!623339))

(declare-fun d!623341 () Bool)

(declare-fun c!329853 () Bool)

(assert (=> d!623341 (= c!329853 ((_ is Node!7463) (right!18061 (right!18061 t!4319))))))

(declare-fun e!1286230 () Bool)

(assert (=> d!623341 (= (inv!29550 (right!18061 (right!18061 t!4319))) e!1286230)))

(declare-fun b!2036812 () Bool)

(assert (=> b!2036812 (= e!1286230 (inv!29553 (right!18061 (right!18061 t!4319))))))

(declare-fun b!2036813 () Bool)

(declare-fun e!1286231 () Bool)

(assert (=> b!2036813 (= e!1286230 e!1286231)))

(declare-fun res!893047 () Bool)

(assert (=> b!2036813 (= res!893047 (not ((_ is Leaf!10936) (right!18061 (right!18061 t!4319)))))))

(assert (=> b!2036813 (=> res!893047 e!1286231)))

(declare-fun b!2036814 () Bool)

(assert (=> b!2036814 (= e!1286231 (inv!29554 (right!18061 (right!18061 t!4319))))))

(assert (= (and d!623341 c!329853) b!2036812))

(assert (= (and d!623341 (not c!329853)) b!2036813))

(assert (= (and b!2036813 (not res!893047)) b!2036814))

(declare-fun m!2479511 () Bool)

(assert (=> b!2036812 m!2479511))

(declare-fun m!2479513 () Bool)

(assert (=> b!2036814 m!2479513))

(assert (=> b!2036793 d!623341))

(declare-fun d!623343 () Bool)

(assert (=> d!623343 (= (height!1163 (left!17731 t!4319)) (ite ((_ is Empty!7463) (left!17731 t!4319)) 0 (ite ((_ is Leaf!10936) (left!17731 t!4319)) 1 (cheight!7674 (left!17731 t!4319)))))))

(assert (=> b!2036699 d!623343))

(declare-fun d!623345 () Bool)

(assert (=> d!623345 (= (height!1163 (right!18061 t!4319)) (ite ((_ is Empty!7463) (right!18061 t!4319)) 0 (ite ((_ is Leaf!10936) (right!18061 t!4319)) 1 (cheight!7674 (right!18061 t!4319)))))))

(assert (=> b!2036699 d!623345))

(assert (=> b!2036698 d!623343))

(assert (=> b!2036698 d!623345))

(declare-fun b!2036815 () Bool)

(declare-fun e!1286233 () Bool)

(declare-fun e!1286232 () Bool)

(assert (=> b!2036815 (= e!1286233 e!1286232)))

(declare-fun res!893048 () Bool)

(assert (=> b!2036815 (=> (not res!893048) (not e!1286232))))

(assert (=> b!2036815 (= res!893048 (<= (- 1) (- (height!1163 (left!17731 (left!17731 t!4319))) (height!1163 (right!18061 (left!17731 t!4319))))))))

(declare-fun b!2036817 () Bool)

(declare-fun res!893053 () Bool)

(assert (=> b!2036817 (=> (not res!893053) (not e!1286232))))

(assert (=> b!2036817 (= res!893053 (isBalanced!2341 (left!17731 (left!17731 t!4319))))))

(declare-fun b!2036818 () Bool)

(assert (=> b!2036818 (= e!1286232 (not (isEmpty!13921 (right!18061 (left!17731 t!4319)))))))

(declare-fun b!2036819 () Bool)

(declare-fun res!893052 () Bool)

(assert (=> b!2036819 (=> (not res!893052) (not e!1286232))))

(assert (=> b!2036819 (= res!893052 (not (isEmpty!13921 (left!17731 (left!17731 t!4319)))))))

(declare-fun b!2036820 () Bool)

(declare-fun res!893050 () Bool)

(assert (=> b!2036820 (=> (not res!893050) (not e!1286232))))

(assert (=> b!2036820 (= res!893050 (isBalanced!2341 (right!18061 (left!17731 t!4319))))))

(declare-fun b!2036816 () Bool)

(declare-fun res!893051 () Bool)

(assert (=> b!2036816 (=> (not res!893051) (not e!1286232))))

(assert (=> b!2036816 (= res!893051 (<= (- (height!1163 (left!17731 (left!17731 t!4319))) (height!1163 (right!18061 (left!17731 t!4319)))) 1))))

(declare-fun d!623347 () Bool)

(declare-fun res!893049 () Bool)

(assert (=> d!623347 (=> res!893049 e!1286233)))

(assert (=> d!623347 (= res!893049 (not ((_ is Node!7463) (left!17731 t!4319))))))

(assert (=> d!623347 (= (isBalanced!2341 (left!17731 t!4319)) e!1286233)))

(assert (= (and d!623347 (not res!893049)) b!2036815))

(assert (= (and b!2036815 res!893048) b!2036816))

(assert (= (and b!2036816 res!893051) b!2036817))

(assert (= (and b!2036817 res!893053) b!2036820))

(assert (= (and b!2036820 res!893050) b!2036819))

(assert (= (and b!2036819 res!893052) b!2036818))

(declare-fun m!2479515 () Bool)

(assert (=> b!2036818 m!2479515))

(declare-fun m!2479517 () Bool)

(assert (=> b!2036816 m!2479517))

(declare-fun m!2479519 () Bool)

(assert (=> b!2036816 m!2479519))

(declare-fun m!2479521 () Bool)

(assert (=> b!2036820 m!2479521))

(declare-fun m!2479523 () Bool)

(assert (=> b!2036817 m!2479523))

(declare-fun m!2479525 () Bool)

(assert (=> b!2036819 m!2479525))

(assert (=> b!2036815 m!2479517))

(assert (=> b!2036815 m!2479519))

(assert (=> b!2036700 d!623347))

(declare-fun d!623349 () Bool)

(declare-fun res!893060 () Bool)

(declare-fun e!1286236 () Bool)

(assert (=> d!623349 (=> (not res!893060) (not e!1286236))))

(declare-fun size!17414 (Conc!7463) Int)

(assert (=> d!623349 (= res!893060 (= (csize!15156 (right!18061 t!4319)) (+ (size!17414 (left!17731 (right!18061 t!4319))) (size!17414 (right!18061 (right!18061 t!4319))))))))

(assert (=> d!623349 (= (inv!29553 (right!18061 t!4319)) e!1286236)))

(declare-fun b!2036827 () Bool)

(declare-fun res!893061 () Bool)

(assert (=> b!2036827 (=> (not res!893061) (not e!1286236))))

(assert (=> b!2036827 (= res!893061 (and (not (= (left!17731 (right!18061 t!4319)) Empty!7463)) (not (= (right!18061 (right!18061 t!4319)) Empty!7463))))))

(declare-fun b!2036828 () Bool)

(declare-fun res!893062 () Bool)

(assert (=> b!2036828 (=> (not res!893062) (not e!1286236))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2036828 (= res!893062 (= (cheight!7674 (right!18061 t!4319)) (+ (max!0 (height!1163 (left!17731 (right!18061 t!4319))) (height!1163 (right!18061 (right!18061 t!4319)))) 1)))))

(declare-fun b!2036829 () Bool)

(assert (=> b!2036829 (= e!1286236 (<= 0 (cheight!7674 (right!18061 t!4319))))))

(assert (= (and d!623349 res!893060) b!2036827))

(assert (= (and b!2036827 res!893061) b!2036828))

(assert (= (and b!2036828 res!893062) b!2036829))

(declare-fun m!2479527 () Bool)

(assert (=> d!623349 m!2479527))

(declare-fun m!2479529 () Bool)

(assert (=> d!623349 m!2479529))

(declare-fun m!2479531 () Bool)

(assert (=> b!2036828 m!2479531))

(declare-fun m!2479533 () Bool)

(assert (=> b!2036828 m!2479533))

(assert (=> b!2036828 m!2479531))

(assert (=> b!2036828 m!2479533))

(declare-fun m!2479535 () Bool)

(assert (=> b!2036828 m!2479535))

(assert (=> b!2036638 d!623349))

(declare-fun d!623351 () Bool)

(declare-fun lt!764837 () Bool)

(declare-fun isEmpty!13922 (List!22353) Bool)

(assert (=> d!623351 (= lt!764837 (isEmpty!13922 (list!9123 (right!18061 t!4319))))))

(assert (=> d!623351 (= lt!764837 (= (size!17414 (right!18061 t!4319)) 0))))

(assert (=> d!623351 (= (isEmpty!13921 (right!18061 t!4319)) lt!764837)))

(declare-fun bs!421360 () Bool)

(assert (= bs!421360 d!623351))

(assert (=> bs!421360 m!2479473))

(assert (=> bs!421360 m!2479473))

(declare-fun m!2479537 () Bool)

(assert (=> bs!421360 m!2479537))

(declare-fun m!2479539 () Bool)

(assert (=> bs!421360 m!2479539))

(assert (=> b!2036701 d!623351))

(declare-fun d!623353 () Bool)

(declare-fun res!893063 () Bool)

(declare-fun e!1286237 () Bool)

(assert (=> d!623353 (=> (not res!893063) (not e!1286237))))

(assert (=> d!623353 (= res!893063 (= (csize!15156 t!4319) (+ (size!17414 (left!17731 t!4319)) (size!17414 (right!18061 t!4319)))))))

(assert (=> d!623353 (= (inv!29553 t!4319) e!1286237)))

(declare-fun b!2036830 () Bool)

(declare-fun res!893064 () Bool)

(assert (=> b!2036830 (=> (not res!893064) (not e!1286237))))

(assert (=> b!2036830 (= res!893064 (and (not (= (left!17731 t!4319) Empty!7463)) (not (= (right!18061 t!4319) Empty!7463))))))

(declare-fun b!2036831 () Bool)

(declare-fun res!893065 () Bool)

(assert (=> b!2036831 (=> (not res!893065) (not e!1286237))))

(assert (=> b!2036831 (= res!893065 (= (cheight!7674 t!4319) (+ (max!0 (height!1163 (left!17731 t!4319)) (height!1163 (right!18061 t!4319))) 1)))))

(declare-fun b!2036832 () Bool)

(assert (=> b!2036832 (= e!1286237 (<= 0 (cheight!7674 t!4319)))))

(assert (= (and d!623353 res!893063) b!2036830))

(assert (= (and b!2036830 res!893064) b!2036831))

(assert (= (and b!2036831 res!893065) b!2036832))

(declare-fun m!2479541 () Bool)

(assert (=> d!623353 m!2479541))

(assert (=> d!623353 m!2479539))

(assert (=> b!2036831 m!2479401))

(assert (=> b!2036831 m!2479403))

(assert (=> b!2036831 m!2479401))

(assert (=> b!2036831 m!2479403))

(declare-fun m!2479543 () Bool)

(assert (=> b!2036831 m!2479543))

(assert (=> b!2036704 d!623353))

(declare-fun b!2036833 () Bool)

(declare-fun e!1286239 () Bool)

(declare-fun e!1286238 () Bool)

(assert (=> b!2036833 (= e!1286239 e!1286238)))

(declare-fun res!893066 () Bool)

(assert (=> b!2036833 (=> (not res!893066) (not e!1286238))))

(assert (=> b!2036833 (= res!893066 (<= (- 1) (- (height!1163 (left!17731 (right!18061 t!4319))) (height!1163 (right!18061 (right!18061 t!4319))))))))

(declare-fun b!2036835 () Bool)

(declare-fun res!893071 () Bool)

(assert (=> b!2036835 (=> (not res!893071) (not e!1286238))))

(assert (=> b!2036835 (= res!893071 (isBalanced!2341 (left!17731 (right!18061 t!4319))))))

(declare-fun b!2036836 () Bool)

(assert (=> b!2036836 (= e!1286238 (not (isEmpty!13921 (right!18061 (right!18061 t!4319)))))))

(declare-fun b!2036837 () Bool)

(declare-fun res!893070 () Bool)

(assert (=> b!2036837 (=> (not res!893070) (not e!1286238))))

(assert (=> b!2036837 (= res!893070 (not (isEmpty!13921 (left!17731 (right!18061 t!4319)))))))

(declare-fun b!2036838 () Bool)

(declare-fun res!893068 () Bool)

(assert (=> b!2036838 (=> (not res!893068) (not e!1286238))))

(assert (=> b!2036838 (= res!893068 (isBalanced!2341 (right!18061 (right!18061 t!4319))))))

(declare-fun b!2036834 () Bool)

(declare-fun res!893069 () Bool)

(assert (=> b!2036834 (=> (not res!893069) (not e!1286238))))

(assert (=> b!2036834 (= res!893069 (<= (- (height!1163 (left!17731 (right!18061 t!4319))) (height!1163 (right!18061 (right!18061 t!4319)))) 1))))

(declare-fun d!623355 () Bool)

(declare-fun res!893067 () Bool)

(assert (=> d!623355 (=> res!893067 e!1286239)))

(assert (=> d!623355 (= res!893067 (not ((_ is Node!7463) (right!18061 t!4319))))))

(assert (=> d!623355 (= (isBalanced!2341 (right!18061 t!4319)) e!1286239)))

(assert (= (and d!623355 (not res!893067)) b!2036833))

(assert (= (and b!2036833 res!893066) b!2036834))

(assert (= (and b!2036834 res!893069) b!2036835))

(assert (= (and b!2036835 res!893071) b!2036838))

(assert (= (and b!2036838 res!893068) b!2036837))

(assert (= (and b!2036837 res!893070) b!2036836))

(declare-fun m!2479545 () Bool)

(assert (=> b!2036836 m!2479545))

(assert (=> b!2036834 m!2479531))

(assert (=> b!2036834 m!2479533))

(declare-fun m!2479547 () Bool)

(assert (=> b!2036838 m!2479547))

(declare-fun m!2479549 () Bool)

(assert (=> b!2036835 m!2479549))

(declare-fun m!2479551 () Bool)

(assert (=> b!2036837 m!2479551))

(assert (=> b!2036833 m!2479531))

(assert (=> b!2036833 m!2479533))

(assert (=> b!2036703 d!623355))

(declare-fun b!2036839 () Bool)

(declare-fun e!1286242 () List!22353)

(assert (=> b!2036839 (= e!1286242 Nil!22271)))

(declare-fun b!2036840 () Bool)

(declare-fun e!1286240 () List!22353)

(declare-fun call!124939 () List!22353)

(assert (=> b!2036840 (= e!1286240 call!124939)))

(declare-fun bm!124934 () Bool)

(assert (=> bm!124934 (= call!124939 (filter!464 (t!191264 (t!191264 (list!9123 t!4319))) p!1489))))

(declare-fun b!2036841 () Bool)

(declare-fun res!893073 () Bool)

(declare-fun e!1286241 () Bool)

(assert (=> b!2036841 (=> (not res!893073) (not e!1286241))))

(declare-fun lt!764838 () List!22353)

(assert (=> b!2036841 (= res!893073 (= ((_ map implies) (content!3302 lt!764838) (content!3302 (t!191264 (list!9123 t!4319)))) ((as const (InoxSet T!35962)) true)))))

(declare-fun b!2036842 () Bool)

(assert (=> b!2036842 (= e!1286242 e!1286240)))

(declare-fun c!329855 () Bool)

(assert (=> b!2036842 (= c!329855 (dynLambda!11099 p!1489 (h!27672 (t!191264 (list!9123 t!4319)))))))

(declare-fun d!623357 () Bool)

(assert (=> d!623357 e!1286241))

(declare-fun res!893072 () Bool)

(assert (=> d!623357 (=> (not res!893072) (not e!1286241))))

(assert (=> d!623357 (= res!893072 (<= (size!17412 lt!764838) (size!17412 (t!191264 (list!9123 t!4319)))))))

(assert (=> d!623357 (= lt!764838 e!1286242)))

(declare-fun c!329854 () Bool)

(assert (=> d!623357 (= c!329854 ((_ is Nil!22271) (t!191264 (list!9123 t!4319))))))

(assert (=> d!623357 (= (filter!464 (t!191264 (list!9123 t!4319)) p!1489) lt!764838)))

(declare-fun b!2036843 () Bool)

(assert (=> b!2036843 (= e!1286240 (Cons!22271 (h!27672 (t!191264 (list!9123 t!4319))) call!124939))))

(declare-fun b!2036844 () Bool)

(assert (=> b!2036844 (= e!1286241 (forall!4750 lt!764838 p!1489))))

(assert (= (and d!623357 c!329854) b!2036839))

(assert (= (and d!623357 (not c!329854)) b!2036842))

(assert (= (and b!2036842 c!329855) b!2036843))

(assert (= (and b!2036842 (not c!329855)) b!2036840))

(assert (= (or b!2036843 b!2036840) bm!124934))

(assert (= (and d!623357 res!893072) b!2036841))

(assert (= (and b!2036841 res!893073) b!2036844))

(declare-fun b_lambda!68765 () Bool)

(assert (=> (not b_lambda!68765) (not b!2036842)))

(declare-fun t!191276 () Bool)

(declare-fun tb!128837 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191276) tb!128837))

(declare-fun result!154124 () Bool)

(assert (=> tb!128837 (= result!154124 true)))

(assert (=> b!2036842 t!191276))

(declare-fun b_and!162613 () Bool)

(assert (= b_and!162611 (and (=> t!191276 result!154124) b_and!162613)))

(declare-fun m!2479553 () Bool)

(assert (=> d!623357 m!2479553))

(assert (=> d!623357 m!2479503))

(declare-fun m!2479555 () Bool)

(assert (=> b!2036844 m!2479555))

(declare-fun m!2479557 () Bool)

(assert (=> b!2036842 m!2479557))

(declare-fun m!2479559 () Bool)

(assert (=> bm!124934 m!2479559))

(declare-fun m!2479561 () Bool)

(assert (=> b!2036841 m!2479561))

(declare-fun m!2479563 () Bool)

(assert (=> b!2036841 m!2479563))

(assert (=> bm!124933 d!623357))

(declare-fun d!623359 () Bool)

(declare-fun res!893078 () Bool)

(declare-fun e!1286245 () Bool)

(assert (=> d!623359 (=> (not res!893078) (not e!1286245))))

(assert (=> d!623359 (= res!893078 (<= (size!17412 (list!9124 (xs!10365 (right!18061 t!4319)))) 512))))

(assert (=> d!623359 (= (inv!29554 (right!18061 t!4319)) e!1286245)))

(declare-fun b!2036849 () Bool)

(declare-fun res!893079 () Bool)

(assert (=> b!2036849 (=> (not res!893079) (not e!1286245))))

(assert (=> b!2036849 (= res!893079 (= (csize!15157 (right!18061 t!4319)) (size!17412 (list!9124 (xs!10365 (right!18061 t!4319))))))))

(declare-fun b!2036850 () Bool)

(assert (=> b!2036850 (= e!1286245 (and (> (csize!15157 (right!18061 t!4319)) 0) (<= (csize!15157 (right!18061 t!4319)) 512)))))

(assert (= (and d!623359 res!893078) b!2036849))

(assert (= (and b!2036849 res!893079) b!2036850))

(declare-fun m!2479565 () Bool)

(assert (=> d!623359 m!2479565))

(assert (=> d!623359 m!2479565))

(declare-fun m!2479567 () Bool)

(assert (=> d!623359 m!2479567))

(assert (=> b!2036849 m!2479565))

(assert (=> b!2036849 m!2479565))

(assert (=> b!2036849 m!2479567))

(assert (=> b!2036640 d!623359))

(declare-fun d!623361 () Bool)

(declare-fun res!893080 () Bool)

(declare-fun e!1286246 () Bool)

(assert (=> d!623361 (=> (not res!893080) (not e!1286246))))

(assert (=> d!623361 (= res!893080 (<= (size!17412 (list!9124 (xs!10365 t!4319))) 512))))

(assert (=> d!623361 (= (inv!29554 t!4319) e!1286246)))

(declare-fun b!2036851 () Bool)

(declare-fun res!893081 () Bool)

(assert (=> b!2036851 (=> (not res!893081) (not e!1286246))))

(assert (=> b!2036851 (= res!893081 (= (csize!15157 t!4319) (size!17412 (list!9124 (xs!10365 t!4319)))))))

(declare-fun b!2036852 () Bool)

(assert (=> b!2036852 (= e!1286246 (and (> (csize!15157 t!4319) 0) (<= (csize!15157 t!4319) 512)))))

(assert (= (and d!623361 res!893080) b!2036851))

(assert (= (and b!2036851 res!893081) b!2036852))

(assert (=> d!623361 m!2479343))

(assert (=> d!623361 m!2479343))

(declare-fun m!2479569 () Bool)

(assert (=> d!623361 m!2479569))

(assert (=> b!2036851 m!2479343))

(assert (=> b!2036851 m!2479343))

(assert (=> b!2036851 m!2479569))

(assert (=> b!2036706 d!623361))

(declare-fun d!623363 () Bool)

(declare-fun lt!764839 () Bool)

(assert (=> d!623363 (= lt!764839 (isEmpty!13922 (list!9123 (left!17731 t!4319))))))

(assert (=> d!623363 (= lt!764839 (= (size!17414 (left!17731 t!4319)) 0))))

(assert (=> d!623363 (= (isEmpty!13921 (left!17731 t!4319)) lt!764839)))

(declare-fun bs!421361 () Bool)

(assert (= bs!421361 d!623363))

(assert (=> bs!421361 m!2479471))

(assert (=> bs!421361 m!2479471))

(declare-fun m!2479571 () Bool)

(assert (=> bs!421361 m!2479571))

(assert (=> bs!421361 m!2479541))

(assert (=> b!2036702 d!623363))

(declare-fun d!623365 () Bool)

(declare-fun lt!764840 () Int)

(assert (=> d!623365 (>= lt!764840 0)))

(declare-fun e!1286247 () Int)

(assert (=> d!623365 (= lt!764840 e!1286247)))

(declare-fun c!329856 () Bool)

(assert (=> d!623365 (= c!329856 ((_ is Nil!22271) (innerList!7523 (xs!10365 t!4319))))))

(assert (=> d!623365 (= (size!17412 (innerList!7523 (xs!10365 t!4319))) lt!764840)))

(declare-fun b!2036853 () Bool)

(assert (=> b!2036853 (= e!1286247 0)))

(declare-fun b!2036854 () Bool)

(assert (=> b!2036854 (= e!1286247 (+ 1 (size!17412 (t!191264 (innerList!7523 (xs!10365 t!4319))))))))

(assert (= (and d!623365 c!329856) b!2036853))

(assert (= (and d!623365 (not c!329856)) b!2036854))

(declare-fun m!2479573 () Bool)

(assert (=> b!2036854 m!2479573))

(assert (=> d!623291 d!623365))

(declare-fun d!623367 () Bool)

(declare-fun c!329859 () Bool)

(assert (=> d!623367 (= c!329859 ((_ is Nil!22271) lt!764830))))

(declare-fun e!1286250 () (InoxSet T!35962))

(assert (=> d!623367 (= (content!3302 lt!764830) e!1286250)))

(declare-fun b!2036859 () Bool)

(assert (=> b!2036859 (= e!1286250 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2036860 () Bool)

(assert (=> b!2036860 (= e!1286250 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 lt!764830) true) (content!3302 (t!191264 lt!764830))))))

(assert (= (and d!623367 c!329859) b!2036859))

(assert (= (and d!623367 (not c!329859)) b!2036860))

(declare-fun m!2479575 () Bool)

(assert (=> b!2036860 m!2479575))

(declare-fun m!2479577 () Bool)

(assert (=> b!2036860 m!2479577))

(assert (=> b!2036759 d!623367))

(declare-fun d!623369 () Bool)

(declare-fun c!329860 () Bool)

(assert (=> d!623369 (= c!329860 ((_ is Nil!22271) (list!9123 t!4319)))))

(declare-fun e!1286251 () (InoxSet T!35962))

(assert (=> d!623369 (= (content!3302 (list!9123 t!4319)) e!1286251)))

(declare-fun b!2036861 () Bool)

(assert (=> b!2036861 (= e!1286251 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2036862 () Bool)

(assert (=> b!2036862 (= e!1286251 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 (list!9123 t!4319)) true) (content!3302 (t!191264 (list!9123 t!4319)))))))

(assert (= (and d!623369 c!329860) b!2036861))

(assert (= (and d!623369 (not c!329860)) b!2036862))

(declare-fun m!2479579 () Bool)

(assert (=> b!2036862 m!2479579))

(assert (=> b!2036862 m!2479563))

(assert (=> b!2036759 d!623369))

(declare-fun d!623371 () Bool)

(declare-fun c!329861 () Bool)

(assert (=> d!623371 (= c!329861 ((_ is Node!7463) (left!17731 (left!17731 t!4319))))))

(declare-fun e!1286252 () Bool)

(assert (=> d!623371 (= (inv!29550 (left!17731 (left!17731 t!4319))) e!1286252)))

(declare-fun b!2036863 () Bool)

(assert (=> b!2036863 (= e!1286252 (inv!29553 (left!17731 (left!17731 t!4319))))))

(declare-fun b!2036864 () Bool)

(declare-fun e!1286253 () Bool)

(assert (=> b!2036864 (= e!1286252 e!1286253)))

(declare-fun res!893082 () Bool)

(assert (=> b!2036864 (= res!893082 (not ((_ is Leaf!10936) (left!17731 (left!17731 t!4319)))))))

(assert (=> b!2036864 (=> res!893082 e!1286253)))

(declare-fun b!2036865 () Bool)

(assert (=> b!2036865 (= e!1286253 (inv!29554 (left!17731 (left!17731 t!4319))))))

(assert (= (and d!623371 c!329861) b!2036863))

(assert (= (and d!623371 (not c!329861)) b!2036864))

(assert (= (and b!2036864 (not res!893082)) b!2036865))

(declare-fun m!2479581 () Bool)

(assert (=> b!2036863 m!2479581))

(declare-fun m!2479583 () Bool)

(assert (=> b!2036865 m!2479583))

(assert (=> b!2036790 d!623371))

(declare-fun d!623373 () Bool)

(declare-fun c!329862 () Bool)

(assert (=> d!623373 (= c!329862 ((_ is Node!7463) (right!18061 (left!17731 t!4319))))))

(declare-fun e!1286254 () Bool)

(assert (=> d!623373 (= (inv!29550 (right!18061 (left!17731 t!4319))) e!1286254)))

(declare-fun b!2036866 () Bool)

(assert (=> b!2036866 (= e!1286254 (inv!29553 (right!18061 (left!17731 t!4319))))))

(declare-fun b!2036867 () Bool)

(declare-fun e!1286255 () Bool)

(assert (=> b!2036867 (= e!1286254 e!1286255)))

(declare-fun res!893083 () Bool)

(assert (=> b!2036867 (= res!893083 (not ((_ is Leaf!10936) (right!18061 (left!17731 t!4319)))))))

(assert (=> b!2036867 (=> res!893083 e!1286255)))

(declare-fun b!2036868 () Bool)

(assert (=> b!2036868 (= e!1286255 (inv!29554 (right!18061 (left!17731 t!4319))))))

(assert (= (and d!623373 c!329862) b!2036866))

(assert (= (and d!623373 (not c!329862)) b!2036867))

(assert (= (and b!2036867 (not res!893083)) b!2036868))

(declare-fun m!2479585 () Bool)

(assert (=> b!2036866 m!2479585))

(declare-fun m!2479587 () Bool)

(assert (=> b!2036868 m!2479587))

(assert (=> b!2036790 d!623373))

(declare-fun d!623375 () Bool)

(assert (=> d!623375 (= (inv!29549 (xs!10365 (left!17731 t!4319))) (<= (size!17412 (innerList!7523 (xs!10365 (left!17731 t!4319)))) 2147483647))))

(declare-fun bs!421362 () Bool)

(assert (= bs!421362 d!623375))

(declare-fun m!2479589 () Bool)

(assert (=> bs!421362 m!2479589))

(assert (=> b!2036791 d!623375))

(declare-fun d!623377 () Bool)

(declare-fun res!893084 () Bool)

(declare-fun e!1286256 () Bool)

(assert (=> d!623377 (=> (not res!893084) (not e!1286256))))

(assert (=> d!623377 (= res!893084 (= (csize!15156 (left!17731 t!4319)) (+ (size!17414 (left!17731 (left!17731 t!4319))) (size!17414 (right!18061 (left!17731 t!4319))))))))

(assert (=> d!623377 (= (inv!29553 (left!17731 t!4319)) e!1286256)))

(declare-fun b!2036869 () Bool)

(declare-fun res!893085 () Bool)

(assert (=> b!2036869 (=> (not res!893085) (not e!1286256))))

(assert (=> b!2036869 (= res!893085 (and (not (= (left!17731 (left!17731 t!4319)) Empty!7463)) (not (= (right!18061 (left!17731 t!4319)) Empty!7463))))))

(declare-fun b!2036870 () Bool)

(declare-fun res!893086 () Bool)

(assert (=> b!2036870 (=> (not res!893086) (not e!1286256))))

(assert (=> b!2036870 (= res!893086 (= (cheight!7674 (left!17731 t!4319)) (+ (max!0 (height!1163 (left!17731 (left!17731 t!4319))) (height!1163 (right!18061 (left!17731 t!4319)))) 1)))))

(declare-fun b!2036871 () Bool)

(assert (=> b!2036871 (= e!1286256 (<= 0 (cheight!7674 (left!17731 t!4319))))))

(assert (= (and d!623377 res!893084) b!2036869))

(assert (= (and b!2036869 res!893085) b!2036870))

(assert (= (and b!2036870 res!893086) b!2036871))

(declare-fun m!2479591 () Bool)

(assert (=> d!623377 m!2479591))

(declare-fun m!2479593 () Bool)

(assert (=> d!623377 m!2479593))

(assert (=> b!2036870 m!2479517))

(assert (=> b!2036870 m!2479519))

(assert (=> b!2036870 m!2479517))

(assert (=> b!2036870 m!2479519))

(declare-fun m!2479595 () Bool)

(assert (=> b!2036870 m!2479595))

(assert (=> b!2036635 d!623377))

(declare-fun d!623379 () Bool)

(declare-fun res!893091 () Bool)

(declare-fun e!1286261 () Bool)

(assert (=> d!623379 (=> res!893091 e!1286261)))

(assert (=> d!623379 (= res!893091 ((_ is Nil!22271) lt!764830))))

(assert (=> d!623379 (= (forall!4750 lt!764830 p!1489) e!1286261)))

(declare-fun b!2036876 () Bool)

(declare-fun e!1286262 () Bool)

(assert (=> b!2036876 (= e!1286261 e!1286262)))

(declare-fun res!893092 () Bool)

(assert (=> b!2036876 (=> (not res!893092) (not e!1286262))))

(assert (=> b!2036876 (= res!893092 (dynLambda!11099 p!1489 (h!27672 lt!764830)))))

(declare-fun b!2036877 () Bool)

(assert (=> b!2036877 (= e!1286262 (forall!4750 (t!191264 lt!764830) p!1489))))

(assert (= (and d!623379 (not res!893091)) b!2036876))

(assert (= (and b!2036876 res!893092) b!2036877))

(declare-fun b_lambda!68767 () Bool)

(assert (=> (not b_lambda!68767) (not b!2036876)))

(declare-fun t!191278 () Bool)

(declare-fun tb!128839 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191278) tb!128839))

(declare-fun result!154126 () Bool)

(assert (=> tb!128839 (= result!154126 true)))

(assert (=> b!2036876 t!191278))

(declare-fun b_and!162615 () Bool)

(assert (= b_and!162613 (and (=> t!191278 result!154126) b_and!162615)))

(declare-fun m!2479597 () Bool)

(assert (=> b!2036876 m!2479597))

(declare-fun m!2479599 () Bool)

(assert (=> b!2036877 m!2479599))

(assert (=> b!2036762 d!623379))

(declare-fun b!2036886 () Bool)

(declare-fun e!1286267 () List!22353)

(assert (=> b!2036886 (= e!1286267 (list!9123 (right!18061 t!4319)))))

(declare-fun d!623381 () Bool)

(declare-fun e!1286268 () Bool)

(assert (=> d!623381 e!1286268))

(declare-fun res!893097 () Bool)

(assert (=> d!623381 (=> (not res!893097) (not e!1286268))))

(declare-fun lt!764843 () List!22353)

(assert (=> d!623381 (= res!893097 (= (content!3302 lt!764843) ((_ map or) (content!3302 (list!9123 (left!17731 t!4319))) (content!3302 (list!9123 (right!18061 t!4319))))))))

(assert (=> d!623381 (= lt!764843 e!1286267)))

(declare-fun c!329865 () Bool)

(assert (=> d!623381 (= c!329865 ((_ is Nil!22271) (list!9123 (left!17731 t!4319))))))

(assert (=> d!623381 (= (++!6045 (list!9123 (left!17731 t!4319)) (list!9123 (right!18061 t!4319))) lt!764843)))

(declare-fun b!2036887 () Bool)

(assert (=> b!2036887 (= e!1286267 (Cons!22271 (h!27672 (list!9123 (left!17731 t!4319))) (++!6045 (t!191264 (list!9123 (left!17731 t!4319))) (list!9123 (right!18061 t!4319)))))))

(declare-fun b!2036888 () Bool)

(declare-fun res!893098 () Bool)

(assert (=> b!2036888 (=> (not res!893098) (not e!1286268))))

(assert (=> b!2036888 (= res!893098 (= (size!17412 lt!764843) (+ (size!17412 (list!9123 (left!17731 t!4319))) (size!17412 (list!9123 (right!18061 t!4319))))))))

(declare-fun b!2036889 () Bool)

(assert (=> b!2036889 (= e!1286268 (or (not (= (list!9123 (right!18061 t!4319)) Nil!22271)) (= lt!764843 (list!9123 (left!17731 t!4319)))))))

(assert (= (and d!623381 c!329865) b!2036886))

(assert (= (and d!623381 (not c!329865)) b!2036887))

(assert (= (and d!623381 res!893097) b!2036888))

(assert (= (and b!2036888 res!893098) b!2036889))

(declare-fun m!2479601 () Bool)

(assert (=> d!623381 m!2479601))

(assert (=> d!623381 m!2479471))

(declare-fun m!2479603 () Bool)

(assert (=> d!623381 m!2479603))

(assert (=> d!623381 m!2479473))

(declare-fun m!2479605 () Bool)

(assert (=> d!623381 m!2479605))

(assert (=> b!2036887 m!2479473))

(declare-fun m!2479607 () Bool)

(assert (=> b!2036887 m!2479607))

(declare-fun m!2479609 () Bool)

(assert (=> b!2036888 m!2479609))

(assert (=> b!2036888 m!2479471))

(declare-fun m!2479611 () Bool)

(assert (=> b!2036888 m!2479611))

(assert (=> b!2036888 m!2479473))

(declare-fun m!2479613 () Bool)

(assert (=> b!2036888 m!2479613))

(assert (=> b!2036770 d!623381))

(declare-fun b!2036892 () Bool)

(declare-fun e!1286270 () List!22353)

(assert (=> b!2036892 (= e!1286270 (list!9124 (xs!10365 (left!17731 t!4319))))))

(declare-fun d!623383 () Bool)

(declare-fun c!329866 () Bool)

(assert (=> d!623383 (= c!329866 ((_ is Empty!7463) (left!17731 t!4319)))))

(declare-fun e!1286269 () List!22353)

(assert (=> d!623383 (= (list!9123 (left!17731 t!4319)) e!1286269)))

(declare-fun b!2036891 () Bool)

(assert (=> b!2036891 (= e!1286269 e!1286270)))

(declare-fun c!329867 () Bool)

(assert (=> b!2036891 (= c!329867 ((_ is Leaf!10936) (left!17731 t!4319)))))

(declare-fun b!2036893 () Bool)

(assert (=> b!2036893 (= e!1286270 (++!6045 (list!9123 (left!17731 (left!17731 t!4319))) (list!9123 (right!18061 (left!17731 t!4319)))))))

(declare-fun b!2036890 () Bool)

(assert (=> b!2036890 (= e!1286269 Nil!22271)))

(assert (= (and d!623383 c!329866) b!2036890))

(assert (= (and d!623383 (not c!329866)) b!2036891))

(assert (= (and b!2036891 c!329867) b!2036892))

(assert (= (and b!2036891 (not c!329867)) b!2036893))

(declare-fun m!2479615 () Bool)

(assert (=> b!2036892 m!2479615))

(declare-fun m!2479617 () Bool)

(assert (=> b!2036893 m!2479617))

(declare-fun m!2479619 () Bool)

(assert (=> b!2036893 m!2479619))

(assert (=> b!2036893 m!2479617))

(assert (=> b!2036893 m!2479619))

(declare-fun m!2479621 () Bool)

(assert (=> b!2036893 m!2479621))

(assert (=> b!2036770 d!623383))

(declare-fun b!2036896 () Bool)

(declare-fun e!1286272 () List!22353)

(assert (=> b!2036896 (= e!1286272 (list!9124 (xs!10365 (right!18061 t!4319))))))

(declare-fun d!623385 () Bool)

(declare-fun c!329868 () Bool)

(assert (=> d!623385 (= c!329868 ((_ is Empty!7463) (right!18061 t!4319)))))

(declare-fun e!1286271 () List!22353)

(assert (=> d!623385 (= (list!9123 (right!18061 t!4319)) e!1286271)))

(declare-fun b!2036895 () Bool)

(assert (=> b!2036895 (= e!1286271 e!1286272)))

(declare-fun c!329869 () Bool)

(assert (=> b!2036895 (= c!329869 ((_ is Leaf!10936) (right!18061 t!4319)))))

(declare-fun b!2036897 () Bool)

(assert (=> b!2036897 (= e!1286272 (++!6045 (list!9123 (left!17731 (right!18061 t!4319))) (list!9123 (right!18061 (right!18061 t!4319)))))))

(declare-fun b!2036894 () Bool)

(assert (=> b!2036894 (= e!1286271 Nil!22271)))

(assert (= (and d!623385 c!329868) b!2036894))

(assert (= (and d!623385 (not c!329868)) b!2036895))

(assert (= (and b!2036895 c!329869) b!2036896))

(assert (= (and b!2036895 (not c!329869)) b!2036897))

(assert (=> b!2036896 m!2479565))

(declare-fun m!2479623 () Bool)

(assert (=> b!2036897 m!2479623))

(declare-fun m!2479625 () Bool)

(assert (=> b!2036897 m!2479625))

(assert (=> b!2036897 m!2479623))

(assert (=> b!2036897 m!2479625))

(declare-fun m!2479627 () Bool)

(assert (=> b!2036897 m!2479627))

(assert (=> b!2036770 d!623385))

(declare-fun d!623387 () Bool)

(assert (not d!623387))

(assert (=> b!2036729 d!623387))

(declare-fun d!623389 () Bool)

(declare-fun lt!764844 () Int)

(assert (=> d!623389 (>= lt!764844 0)))

(declare-fun e!1286273 () Int)

(assert (=> d!623389 (= lt!764844 e!1286273)))

(declare-fun c!329870 () Bool)

(assert (=> d!623389 (= c!329870 ((_ is Nil!22271) (list!9124 (filter!463 (xs!10365 t!4319) p!1489))))))

(assert (=> d!623389 (= (size!17412 (list!9124 (filter!463 (xs!10365 t!4319) p!1489))) lt!764844)))

(declare-fun b!2036898 () Bool)

(assert (=> b!2036898 (= e!1286273 0)))

(declare-fun b!2036899 () Bool)

(assert (=> b!2036899 (= e!1286273 (+ 1 (size!17412 (t!191264 (list!9124 (filter!463 (xs!10365 t!4319) p!1489))))))))

(assert (= (and d!623389 c!329870) b!2036898))

(assert (= (and d!623389 (not c!329870)) b!2036899))

(declare-fun m!2479629 () Bool)

(assert (=> b!2036899 m!2479629))

(assert (=> d!623287 d!623389))

(declare-fun d!623391 () Bool)

(assert (=> d!623391 (= (list!9124 (filter!463 (xs!10365 t!4319) p!1489)) (innerList!7523 (filter!463 (xs!10365 t!4319) p!1489)))))

(assert (=> d!623287 d!623391))

(declare-fun d!623393 () Bool)

(declare-fun _$1!10159 () Int)

(assert (=> d!623393 (= _$1!10159 (size!17412 (list!9124 (filter!463 (xs!10365 t!4319) p!1489))))))

(assert (=> d!623393 true))

(assert (=> d!623393 (= (choose!12429 (filter!463 (xs!10365 t!4319) p!1489)) _$1!10159)))

(declare-fun bs!421363 () Bool)

(assert (= bs!421363 d!623393))

(assert (=> bs!421363 m!2479317))

(assert (=> bs!421363 m!2479337))

(assert (=> bs!421363 m!2479337))

(assert (=> bs!421363 m!2479339))

(assert (=> d!623287 d!623393))

(declare-fun d!623395 () Bool)

(assert (=> d!623395 (= (list!9124 (xs!10365 t!4319)) (innerList!7523 (xs!10365 t!4319)))))

(assert (=> b!2036769 d!623395))

(declare-fun b!2036900 () Bool)

(declare-fun e!1286276 () List!22353)

(assert (=> b!2036900 (= e!1286276 Nil!22271)))

(declare-fun b!2036901 () Bool)

(declare-fun e!1286274 () List!22353)

(declare-fun call!124940 () List!22353)

(assert (=> b!2036901 (= e!1286274 call!124940)))

(declare-fun bm!124935 () Bool)

(assert (=> bm!124935 (= call!124940 (filter!464 (t!191264 (list!9124 (xs!10365 t!4319))) p!1489))))

(declare-fun b!2036902 () Bool)

(declare-fun res!893100 () Bool)

(declare-fun e!1286275 () Bool)

(assert (=> b!2036902 (=> (not res!893100) (not e!1286275))))

(declare-fun lt!764845 () List!22353)

(assert (=> b!2036902 (= res!893100 (= ((_ map implies) (content!3302 lt!764845) (content!3302 (list!9124 (xs!10365 t!4319)))) ((as const (InoxSet T!35962)) true)))))

(declare-fun b!2036903 () Bool)

(assert (=> b!2036903 (= e!1286276 e!1286274)))

(declare-fun c!329872 () Bool)

(assert (=> b!2036903 (= c!329872 (dynLambda!11099 p!1489 (h!27672 (list!9124 (xs!10365 t!4319)))))))

(declare-fun d!623397 () Bool)

(assert (=> d!623397 e!1286275))

(declare-fun res!893099 () Bool)

(assert (=> d!623397 (=> (not res!893099) (not e!1286275))))

(assert (=> d!623397 (= res!893099 (<= (size!17412 lt!764845) (size!17412 (list!9124 (xs!10365 t!4319)))))))

(assert (=> d!623397 (= lt!764845 e!1286276)))

(declare-fun c!329871 () Bool)

(assert (=> d!623397 (= c!329871 ((_ is Nil!22271) (list!9124 (xs!10365 t!4319))))))

(assert (=> d!623397 (= (filter!464 (list!9124 (xs!10365 t!4319)) p!1489) lt!764845)))

(declare-fun b!2036904 () Bool)

(assert (=> b!2036904 (= e!1286274 (Cons!22271 (h!27672 (list!9124 (xs!10365 t!4319))) call!124940))))

(declare-fun b!2036905 () Bool)

(assert (=> b!2036905 (= e!1286275 (forall!4750 lt!764845 p!1489))))

(assert (= (and d!623397 c!329871) b!2036900))

(assert (= (and d!623397 (not c!329871)) b!2036903))

(assert (= (and b!2036903 c!329872) b!2036904))

(assert (= (and b!2036903 (not c!329872)) b!2036901))

(assert (= (or b!2036904 b!2036901) bm!124935))

(assert (= (and d!623397 res!893099) b!2036902))

(assert (= (and b!2036902 res!893100) b!2036905))

(declare-fun b_lambda!68769 () Bool)

(assert (=> (not b_lambda!68769) (not b!2036903)))

(declare-fun t!191280 () Bool)

(declare-fun tb!128841 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191280) tb!128841))

(declare-fun result!154128 () Bool)

(assert (=> tb!128841 (= result!154128 true)))

(assert (=> b!2036903 t!191280))

(declare-fun b_and!162617 () Bool)

(assert (= b_and!162615 (and (=> t!191280 result!154128) b_and!162617)))

(declare-fun m!2479631 () Bool)

(assert (=> d!623397 m!2479631))

(assert (=> d!623397 m!2479343))

(assert (=> d!623397 m!2479569))

(declare-fun m!2479633 () Bool)

(assert (=> b!2036905 m!2479633))

(declare-fun m!2479635 () Bool)

(assert (=> b!2036903 m!2479635))

(declare-fun m!2479637 () Bool)

(assert (=> bm!124935 m!2479637))

(declare-fun m!2479639 () Bool)

(assert (=> b!2036902 m!2479639))

(assert (=> b!2036902 m!2479343))

(declare-fun m!2479641 () Bool)

(assert (=> b!2036902 m!2479641))

(assert (=> d!623289 d!623397))

(assert (=> d!623289 d!623395))

(declare-fun d!623401 () Bool)

(declare-fun _$11!1062 () IArray!14931)

(assert (=> d!623401 (= _$11!1062 (IArray!14932 (filter!464 (list!9124 (xs!10365 t!4319)) p!1489)))))

(declare-fun e!1286279 () Bool)

(assert (=> d!623401 (and (inv!29549 _$11!1062) e!1286279)))

(assert (=> d!623401 (= (choose!12430 (xs!10365 t!4319) p!1489) _$11!1062)))

(declare-fun b!2036908 () Bool)

(declare-fun tp!604857 () Bool)

(assert (=> b!2036908 (= e!1286279 tp!604857)))

(assert (= d!623401 b!2036908))

(assert (=> d!623401 m!2479343))

(assert (=> d!623401 m!2479343))

(assert (=> d!623401 m!2479345))

(declare-fun m!2479643 () Bool)

(assert (=> d!623401 m!2479643))

(assert (=> d!623289 d!623401))

(declare-fun d!623409 () Bool)

(assert (not d!623409))

(assert (=> b!2036730 d!623409))

(declare-fun d!623411 () Bool)

(assert (not d!623411))

(assert (=> b!2036730 d!623411))

(declare-fun d!623413 () Bool)

(assert (not d!623413))

(assert (=> b!2036730 d!623413))

(declare-fun d!623415 () Bool)

(declare-fun res!893101 () Bool)

(declare-fun e!1286282 () Bool)

(assert (=> d!623415 (=> (not res!893101) (not e!1286282))))

(assert (=> d!623415 (= res!893101 (<= (size!17412 (list!9124 (xs!10365 (left!17731 t!4319)))) 512))))

(assert (=> d!623415 (= (inv!29554 (left!17731 t!4319)) e!1286282)))

(declare-fun b!2036913 () Bool)

(declare-fun res!893102 () Bool)

(assert (=> b!2036913 (=> (not res!893102) (not e!1286282))))

(assert (=> b!2036913 (= res!893102 (= (csize!15157 (left!17731 t!4319)) (size!17412 (list!9124 (xs!10365 (left!17731 t!4319))))))))

(declare-fun b!2036914 () Bool)

(assert (=> b!2036914 (= e!1286282 (and (> (csize!15157 (left!17731 t!4319)) 0) (<= (csize!15157 (left!17731 t!4319)) 512)))))

(assert (= (and d!623415 res!893101) b!2036913))

(assert (= (and b!2036913 res!893102) b!2036914))

(assert (=> d!623415 m!2479615))

(assert (=> d!623415 m!2479615))

(declare-fun m!2479645 () Bool)

(assert (=> d!623415 m!2479645))

(assert (=> b!2036913 m!2479615))

(assert (=> b!2036913 m!2479615))

(assert (=> b!2036913 m!2479645))

(assert (=> b!2036637 d!623415))

(declare-fun b!2036915 () Bool)

(declare-fun e!1286283 () Bool)

(declare-fun tp!604858 () Bool)

(assert (=> b!2036915 (= e!1286283 (and tp_is_empty!9265 tp!604858))))

(assert (=> b!2036800 (= tp!604854 e!1286283)))

(assert (= (and b!2036800 ((_ is Cons!22271) (t!191264 (innerList!7523 (xs!10365 t!4319))))) b!2036915))

(declare-fun b!2036916 () Bool)

(declare-fun e!1286284 () Bool)

(declare-fun tp!604859 () Bool)

(assert (=> b!2036916 (= e!1286284 (and tp_is_empty!9265 tp!604859))))

(assert (=> b!2036792 (= tp!604847 e!1286284)))

(assert (= (and b!2036792 ((_ is Cons!22271) (innerList!7523 (xs!10365 (left!17731 t!4319))))) b!2036916))

(declare-fun b!2036917 () Bool)

(declare-fun tp!604862 () Bool)

(declare-fun e!1286286 () Bool)

(declare-fun tp!604860 () Bool)

(assert (=> b!2036917 (= e!1286286 (and (inv!29550 (left!17731 (left!17731 (right!18061 t!4319)))) tp!604860 (inv!29550 (right!18061 (left!17731 (right!18061 t!4319)))) tp!604862))))

(declare-fun b!2036919 () Bool)

(declare-fun e!1286285 () Bool)

(declare-fun tp!604861 () Bool)

(assert (=> b!2036919 (= e!1286285 tp!604861)))

(declare-fun b!2036918 () Bool)

(assert (=> b!2036918 (= e!1286286 (and (inv!29549 (xs!10365 (left!17731 (right!18061 t!4319)))) e!1286285))))

(assert (=> b!2036793 (= tp!604849 (and (inv!29550 (left!17731 (right!18061 t!4319))) e!1286286))))

(assert (= (and b!2036793 ((_ is Node!7463) (left!17731 (right!18061 t!4319)))) b!2036917))

(assert (= b!2036918 b!2036919))

(assert (= (and b!2036793 ((_ is Leaf!10936) (left!17731 (right!18061 t!4319)))) b!2036918))

(declare-fun m!2479647 () Bool)

(assert (=> b!2036917 m!2479647))

(declare-fun m!2479649 () Bool)

(assert (=> b!2036917 m!2479649))

(declare-fun m!2479651 () Bool)

(assert (=> b!2036918 m!2479651))

(assert (=> b!2036793 m!2479495))

(declare-fun tp!604863 () Bool)

(declare-fun e!1286289 () Bool)

(declare-fun b!2036922 () Bool)

(declare-fun tp!604865 () Bool)

(assert (=> b!2036922 (= e!1286289 (and (inv!29550 (left!17731 (right!18061 (right!18061 t!4319)))) tp!604863 (inv!29550 (right!18061 (right!18061 (right!18061 t!4319)))) tp!604865))))

(declare-fun b!2036924 () Bool)

(declare-fun e!1286288 () Bool)

(declare-fun tp!604864 () Bool)

(assert (=> b!2036924 (= e!1286288 tp!604864)))

(declare-fun b!2036923 () Bool)

(assert (=> b!2036923 (= e!1286289 (and (inv!29549 (xs!10365 (right!18061 (right!18061 t!4319)))) e!1286288))))

(assert (=> b!2036793 (= tp!604851 (and (inv!29550 (right!18061 (right!18061 t!4319))) e!1286289))))

(assert (= (and b!2036793 ((_ is Node!7463) (right!18061 (right!18061 t!4319)))) b!2036922))

(assert (= b!2036923 b!2036924))

(assert (= (and b!2036793 ((_ is Leaf!10936) (right!18061 (right!18061 t!4319)))) b!2036923))

(declare-fun m!2479655 () Bool)

(assert (=> b!2036922 m!2479655))

(declare-fun m!2479657 () Bool)

(assert (=> b!2036922 m!2479657))

(declare-fun m!2479659 () Bool)

(assert (=> b!2036923 m!2479659))

(assert (=> b!2036793 m!2479497))

(declare-fun b!2036925 () Bool)

(declare-fun e!1286290 () Bool)

(declare-fun tp!604866 () Bool)

(assert (=> b!2036925 (= e!1286290 (and tp_is_empty!9265 tp!604866))))

(assert (=> b!2036795 (= tp!604850 e!1286290)))

(assert (= (and b!2036795 ((_ is Cons!22271) (innerList!7523 (xs!10365 (right!18061 t!4319))))) b!2036925))

(declare-fun tp!604869 () Bool)

(declare-fun e!1286292 () Bool)

(declare-fun b!2036926 () Bool)

(declare-fun tp!604867 () Bool)

(assert (=> b!2036926 (= e!1286292 (and (inv!29550 (left!17731 (left!17731 (left!17731 t!4319)))) tp!604867 (inv!29550 (right!18061 (left!17731 (left!17731 t!4319)))) tp!604869))))

(declare-fun b!2036928 () Bool)

(declare-fun e!1286291 () Bool)

(declare-fun tp!604868 () Bool)

(assert (=> b!2036928 (= e!1286291 tp!604868)))

(declare-fun b!2036927 () Bool)

(assert (=> b!2036927 (= e!1286292 (and (inv!29549 (xs!10365 (left!17731 (left!17731 t!4319)))) e!1286291))))

(assert (=> b!2036790 (= tp!604846 (and (inv!29550 (left!17731 (left!17731 t!4319))) e!1286292))))

(assert (= (and b!2036790 ((_ is Node!7463) (left!17731 (left!17731 t!4319)))) b!2036926))

(assert (= b!2036927 b!2036928))

(assert (= (and b!2036790 ((_ is Leaf!10936) (left!17731 (left!17731 t!4319)))) b!2036927))

(declare-fun m!2479661 () Bool)

(assert (=> b!2036926 m!2479661))

(declare-fun m!2479663 () Bool)

(assert (=> b!2036926 m!2479663))

(declare-fun m!2479665 () Bool)

(assert (=> b!2036927 m!2479665))

(assert (=> b!2036790 m!2479489))

(declare-fun b!2036929 () Bool)

(declare-fun e!1286294 () Bool)

(declare-fun tp!604870 () Bool)

(declare-fun tp!604872 () Bool)

(assert (=> b!2036929 (= e!1286294 (and (inv!29550 (left!17731 (right!18061 (left!17731 t!4319)))) tp!604870 (inv!29550 (right!18061 (right!18061 (left!17731 t!4319)))) tp!604872))))

(declare-fun b!2036931 () Bool)

(declare-fun e!1286293 () Bool)

(declare-fun tp!604871 () Bool)

(assert (=> b!2036931 (= e!1286293 tp!604871)))

(declare-fun b!2036930 () Bool)

(assert (=> b!2036930 (= e!1286294 (and (inv!29549 (xs!10365 (right!18061 (left!17731 t!4319)))) e!1286293))))

(assert (=> b!2036790 (= tp!604848 (and (inv!29550 (right!18061 (left!17731 t!4319))) e!1286294))))

(assert (= (and b!2036790 ((_ is Node!7463) (right!18061 (left!17731 t!4319)))) b!2036929))

(assert (= b!2036930 b!2036931))

(assert (= (and b!2036790 ((_ is Leaf!10936) (right!18061 (left!17731 t!4319)))) b!2036930))

(declare-fun m!2479667 () Bool)

(assert (=> b!2036929 m!2479667))

(declare-fun m!2479669 () Bool)

(assert (=> b!2036929 m!2479669))

(declare-fun m!2479671 () Bool)

(assert (=> b!2036930 m!2479671))

(assert (=> b!2036790 m!2479491))

(declare-fun b_lambda!68771 () Bool)

(assert (= b_lambda!68765 (or (and start!200656 b_free!56815) b_lambda!68771)))

(declare-fun b_lambda!68773 () Bool)

(assert (= b_lambda!68769 (or (and start!200656 b_free!56815) b_lambda!68773)))

(declare-fun b_lambda!68775 () Bool)

(assert (= b_lambda!68767 (or (and start!200656 b_free!56815) b_lambda!68775)))

(check-sat (not b!2036902) (not b!2036919) (not b!2036834) (not d!623377) (not d!623349) (not d!623393) (not b!2036828) (not b!2036849) b_and!162617 (not b!2036899) (not b!2036815) (not d!623397) (not b!2036820) (not b!2036851) (not b!2036893) (not b!2036854) (not b!2036924) (not d!623351) (not b!2036790) (not bm!124935) (not b!2036817) (not b!2036928) (not b!2036929) (not b!2036915) (not b_lambda!68773) (not b!2036860) (not b!2036862) (not b_lambda!68763) (not b!2036865) (not d!623381) (not b!2036897) (not b_next!57519) (not b!2036923) (not d!623401) (not b!2036908) (not bm!124934) (not b!2036814) (not d!623363) (not b!2036844) (not b!2036793) (not d!623361) (not b!2036888) (not d!623375) (not b!2036922) (not b!2036896) (not b!2036835) (not b!2036916) (not b!2036818) (not b!2036917) (not b!2036877) (not b!2036841) (not d!623357) (not b!2036863) (not b!2036918) (not b_lambda!68771) (not b!2036930) (not b!2036816) (not b!2036926) (not b!2036837) (not b!2036819) (not b!2036809) (not b!2036927) (not d!623415) (not b!2036925) (not b!2036870) (not b!2036836) (not b!2036811) (not d!623337) (not d!623359) (not b!2036913) (not d!623353) tp_is_empty!9265 (not b_lambda!68775) (not b!2036905) (not b!2036838) (not b!2036931) (not b!2036892) (not b!2036831) (not b!2036833) (not b!2036806) (not b!2036866) (not b!2036868) (not b!2036808) (not b!2036887) (not b!2036812))
(check-sat b_and!162617 (not b_next!57519))
(get-model)

(assert (=> d!623393 d!623389))

(assert (=> d!623393 d!623391))

(declare-fun b!2037051 () Bool)

(declare-fun e!1286362 () List!22353)

(assert (=> b!2037051 (= e!1286362 Nil!22271)))

(declare-fun b!2037052 () Bool)

(declare-fun e!1286360 () List!22353)

(declare-fun call!124943 () List!22353)

(assert (=> b!2037052 (= e!1286360 call!124943)))

(declare-fun bm!124938 () Bool)

(assert (=> bm!124938 (= call!124943 (filter!464 (t!191264 (t!191264 (list!9124 (xs!10365 t!4319)))) p!1489))))

(declare-fun b!2037053 () Bool)

(declare-fun res!893161 () Bool)

(declare-fun e!1286361 () Bool)

(assert (=> b!2037053 (=> (not res!893161) (not e!1286361))))

(declare-fun lt!764861 () List!22353)

(assert (=> b!2037053 (= res!893161 (= ((_ map implies) (content!3302 lt!764861) (content!3302 (t!191264 (list!9124 (xs!10365 t!4319))))) ((as const (InoxSet T!35962)) true)))))

(declare-fun b!2037054 () Bool)

(assert (=> b!2037054 (= e!1286362 e!1286360)))

(declare-fun c!329899 () Bool)

(assert (=> b!2037054 (= c!329899 (dynLambda!11099 p!1489 (h!27672 (t!191264 (list!9124 (xs!10365 t!4319))))))))

(declare-fun d!623497 () Bool)

(assert (=> d!623497 e!1286361))

(declare-fun res!893160 () Bool)

(assert (=> d!623497 (=> (not res!893160) (not e!1286361))))

(assert (=> d!623497 (= res!893160 (<= (size!17412 lt!764861) (size!17412 (t!191264 (list!9124 (xs!10365 t!4319))))))))

(assert (=> d!623497 (= lt!764861 e!1286362)))

(declare-fun c!329898 () Bool)

(assert (=> d!623497 (= c!329898 ((_ is Nil!22271) (t!191264 (list!9124 (xs!10365 t!4319)))))))

(assert (=> d!623497 (= (filter!464 (t!191264 (list!9124 (xs!10365 t!4319))) p!1489) lt!764861)))

(declare-fun b!2037055 () Bool)

(assert (=> b!2037055 (= e!1286360 (Cons!22271 (h!27672 (t!191264 (list!9124 (xs!10365 t!4319)))) call!124943))))

(declare-fun b!2037056 () Bool)

(assert (=> b!2037056 (= e!1286361 (forall!4750 lt!764861 p!1489))))

(assert (= (and d!623497 c!329898) b!2037051))

(assert (= (and d!623497 (not c!329898)) b!2037054))

(assert (= (and b!2037054 c!329899) b!2037055))

(assert (= (and b!2037054 (not c!329899)) b!2037052))

(assert (= (or b!2037055 b!2037052) bm!124938))

(assert (= (and d!623497 res!893160) b!2037053))

(assert (= (and b!2037053 res!893161) b!2037056))

(declare-fun b_lambda!68789 () Bool)

(assert (=> (not b_lambda!68789) (not b!2037054)))

(declare-fun t!191290 () Bool)

(declare-fun tb!128849 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191290) tb!128849))

(declare-fun result!154136 () Bool)

(assert (=> tb!128849 (= result!154136 true)))

(assert (=> b!2037054 t!191290))

(declare-fun b_and!162625 () Bool)

(assert (= b_and!162617 (and (=> t!191290 result!154136) b_and!162625)))

(declare-fun m!2479841 () Bool)

(assert (=> d!623497 m!2479841))

(declare-fun m!2479843 () Bool)

(assert (=> d!623497 m!2479843))

(declare-fun m!2479845 () Bool)

(assert (=> b!2037056 m!2479845))

(declare-fun m!2479847 () Bool)

(assert (=> b!2037054 m!2479847))

(declare-fun m!2479849 () Bool)

(assert (=> bm!124938 m!2479849))

(declare-fun m!2479851 () Bool)

(assert (=> b!2037053 m!2479851))

(declare-fun m!2479853 () Bool)

(assert (=> b!2037053 m!2479853))

(assert (=> bm!124935 d!623497))

(declare-fun d!623499 () Bool)

(declare-fun res!893162 () Bool)

(declare-fun e!1286363 () Bool)

(assert (=> d!623499 (=> (not res!893162) (not e!1286363))))

(assert (=> d!623499 (= res!893162 (<= (size!17412 (list!9124 (xs!10365 (left!17731 (right!18061 t!4319))))) 512))))

(assert (=> d!623499 (= (inv!29554 (left!17731 (right!18061 t!4319))) e!1286363)))

(declare-fun b!2037057 () Bool)

(declare-fun res!893163 () Bool)

(assert (=> b!2037057 (=> (not res!893163) (not e!1286363))))

(assert (=> b!2037057 (= res!893163 (= (csize!15157 (left!17731 (right!18061 t!4319))) (size!17412 (list!9124 (xs!10365 (left!17731 (right!18061 t!4319)))))))))

(declare-fun b!2037058 () Bool)

(assert (=> b!2037058 (= e!1286363 (and (> (csize!15157 (left!17731 (right!18061 t!4319))) 0) (<= (csize!15157 (left!17731 (right!18061 t!4319))) 512)))))

(assert (= (and d!623499 res!893162) b!2037057))

(assert (= (and b!2037057 res!893163) b!2037058))

(declare-fun m!2479855 () Bool)

(assert (=> d!623499 m!2479855))

(assert (=> d!623499 m!2479855))

(declare-fun m!2479857 () Bool)

(assert (=> d!623499 m!2479857))

(assert (=> b!2037057 m!2479855))

(assert (=> b!2037057 m!2479855))

(assert (=> b!2037057 m!2479857))

(assert (=> b!2036811 d!623499))

(declare-fun d!623501 () Bool)

(declare-fun lt!764862 () Bool)

(assert (=> d!623501 (= lt!764862 (isEmpty!13922 (list!9123 (right!18061 (right!18061 t!4319)))))))

(assert (=> d!623501 (= lt!764862 (= (size!17414 (right!18061 (right!18061 t!4319))) 0))))

(assert (=> d!623501 (= (isEmpty!13921 (right!18061 (right!18061 t!4319))) lt!764862)))

(declare-fun bs!421369 () Bool)

(assert (= bs!421369 d!623501))

(assert (=> bs!421369 m!2479625))

(assert (=> bs!421369 m!2479625))

(declare-fun m!2479859 () Bool)

(assert (=> bs!421369 m!2479859))

(assert (=> bs!421369 m!2479529))

(assert (=> b!2036836 d!623501))

(declare-fun d!623503 () Bool)

(declare-fun res!893164 () Bool)

(declare-fun e!1286364 () Bool)

(assert (=> d!623503 (=> (not res!893164) (not e!1286364))))

(assert (=> d!623503 (= res!893164 (<= (size!17412 (list!9124 (xs!10365 (right!18061 (left!17731 t!4319))))) 512))))

(assert (=> d!623503 (= (inv!29554 (right!18061 (left!17731 t!4319))) e!1286364)))

(declare-fun b!2037059 () Bool)

(declare-fun res!893165 () Bool)

(assert (=> b!2037059 (=> (not res!893165) (not e!1286364))))

(assert (=> b!2037059 (= res!893165 (= (csize!15157 (right!18061 (left!17731 t!4319))) (size!17412 (list!9124 (xs!10365 (right!18061 (left!17731 t!4319)))))))))

(declare-fun b!2037060 () Bool)

(assert (=> b!2037060 (= e!1286364 (and (> (csize!15157 (right!18061 (left!17731 t!4319))) 0) (<= (csize!15157 (right!18061 (left!17731 t!4319))) 512)))))

(assert (= (and d!623503 res!893164) b!2037059))

(assert (= (and b!2037059 res!893165) b!2037060))

(declare-fun m!2479861 () Bool)

(assert (=> d!623503 m!2479861))

(assert (=> d!623503 m!2479861))

(declare-fun m!2479863 () Bool)

(assert (=> d!623503 m!2479863))

(assert (=> b!2037059 m!2479861))

(assert (=> b!2037059 m!2479861))

(assert (=> b!2037059 m!2479863))

(assert (=> b!2036868 d!623503))

(declare-fun b!2037061 () Bool)

(declare-fun e!1286366 () Bool)

(declare-fun e!1286365 () Bool)

(assert (=> b!2037061 (= e!1286366 e!1286365)))

(declare-fun res!893166 () Bool)

(assert (=> b!2037061 (=> (not res!893166) (not e!1286365))))

(assert (=> b!2037061 (= res!893166 (<= (- 1) (- (height!1163 (left!17731 (right!18061 (right!18061 t!4319)))) (height!1163 (right!18061 (right!18061 (right!18061 t!4319)))))))))

(declare-fun b!2037063 () Bool)

(declare-fun res!893171 () Bool)

(assert (=> b!2037063 (=> (not res!893171) (not e!1286365))))

(assert (=> b!2037063 (= res!893171 (isBalanced!2341 (left!17731 (right!18061 (right!18061 t!4319)))))))

(declare-fun b!2037064 () Bool)

(assert (=> b!2037064 (= e!1286365 (not (isEmpty!13921 (right!18061 (right!18061 (right!18061 t!4319))))))))

(declare-fun b!2037065 () Bool)

(declare-fun res!893170 () Bool)

(assert (=> b!2037065 (=> (not res!893170) (not e!1286365))))

(assert (=> b!2037065 (= res!893170 (not (isEmpty!13921 (left!17731 (right!18061 (right!18061 t!4319))))))))

(declare-fun b!2037066 () Bool)

(declare-fun res!893168 () Bool)

(assert (=> b!2037066 (=> (not res!893168) (not e!1286365))))

(assert (=> b!2037066 (= res!893168 (isBalanced!2341 (right!18061 (right!18061 (right!18061 t!4319)))))))

(declare-fun b!2037062 () Bool)

(declare-fun res!893169 () Bool)

(assert (=> b!2037062 (=> (not res!893169) (not e!1286365))))

(assert (=> b!2037062 (= res!893169 (<= (- (height!1163 (left!17731 (right!18061 (right!18061 t!4319)))) (height!1163 (right!18061 (right!18061 (right!18061 t!4319))))) 1))))

(declare-fun d!623505 () Bool)

(declare-fun res!893167 () Bool)

(assert (=> d!623505 (=> res!893167 e!1286366)))

(assert (=> d!623505 (= res!893167 (not ((_ is Node!7463) (right!18061 (right!18061 t!4319)))))))

(assert (=> d!623505 (= (isBalanced!2341 (right!18061 (right!18061 t!4319))) e!1286366)))

(assert (= (and d!623505 (not res!893167)) b!2037061))

(assert (= (and b!2037061 res!893166) b!2037062))

(assert (= (and b!2037062 res!893169) b!2037063))

(assert (= (and b!2037063 res!893171) b!2037066))

(assert (= (and b!2037066 res!893168) b!2037065))

(assert (= (and b!2037065 res!893170) b!2037064))

(declare-fun m!2479865 () Bool)

(assert (=> b!2037064 m!2479865))

(declare-fun m!2479867 () Bool)

(assert (=> b!2037062 m!2479867))

(declare-fun m!2479869 () Bool)

(assert (=> b!2037062 m!2479869))

(declare-fun m!2479871 () Bool)

(assert (=> b!2037066 m!2479871))

(declare-fun m!2479873 () Bool)

(assert (=> b!2037063 m!2479873))

(declare-fun m!2479875 () Bool)

(assert (=> b!2037065 m!2479875))

(assert (=> b!2037061 m!2479867))

(assert (=> b!2037061 m!2479869))

(assert (=> b!2036838 d!623505))

(declare-fun d!623507 () Bool)

(assert (=> d!623507 (= (max!0 (height!1163 (left!17731 t!4319)) (height!1163 (right!18061 t!4319))) (ite (< (height!1163 (left!17731 t!4319)) (height!1163 (right!18061 t!4319))) (height!1163 (right!18061 t!4319)) (height!1163 (left!17731 t!4319))))))

(assert (=> b!2036831 d!623507))

(assert (=> b!2036831 d!623343))

(assert (=> b!2036831 d!623345))

(declare-fun d!623509 () Bool)

(assert (=> d!623509 (= (isEmpty!13922 (list!9123 (right!18061 t!4319))) ((_ is Nil!22271) (list!9123 (right!18061 t!4319))))))

(assert (=> d!623351 d!623509))

(assert (=> d!623351 d!623385))

(declare-fun d!623511 () Bool)

(declare-fun lt!764865 () Int)

(assert (=> d!623511 (= lt!764865 (size!17412 (list!9123 (right!18061 t!4319))))))

(assert (=> d!623511 (= lt!764865 (ite ((_ is Empty!7463) (right!18061 t!4319)) 0 (ite ((_ is Leaf!10936) (right!18061 t!4319)) (csize!15157 (right!18061 t!4319)) (csize!15156 (right!18061 t!4319)))))))

(assert (=> d!623511 (= (size!17414 (right!18061 t!4319)) lt!764865)))

(declare-fun bs!421370 () Bool)

(assert (= bs!421370 d!623511))

(assert (=> bs!421370 m!2479473))

(assert (=> bs!421370 m!2479473))

(assert (=> bs!421370 m!2479613))

(assert (=> d!623351 d!623511))

(declare-fun d!623513 () Bool)

(declare-fun res!893172 () Bool)

(declare-fun e!1286367 () Bool)

(assert (=> d!623513 (=> res!893172 e!1286367)))

(assert (=> d!623513 (= res!893172 ((_ is Nil!22271) lt!764845))))

(assert (=> d!623513 (= (forall!4750 lt!764845 p!1489) e!1286367)))

(declare-fun b!2037067 () Bool)

(declare-fun e!1286368 () Bool)

(assert (=> b!2037067 (= e!1286367 e!1286368)))

(declare-fun res!893173 () Bool)

(assert (=> b!2037067 (=> (not res!893173) (not e!1286368))))

(assert (=> b!2037067 (= res!893173 (dynLambda!11099 p!1489 (h!27672 lt!764845)))))

(declare-fun b!2037068 () Bool)

(assert (=> b!2037068 (= e!1286368 (forall!4750 (t!191264 lt!764845) p!1489))))

(assert (= (and d!623513 (not res!893172)) b!2037067))

(assert (= (and b!2037067 res!893173) b!2037068))

(declare-fun b_lambda!68791 () Bool)

(assert (=> (not b_lambda!68791) (not b!2037067)))

(declare-fun t!191293 () Bool)

(declare-fun tb!128851 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191293) tb!128851))

(declare-fun result!154138 () Bool)

(assert (=> tb!128851 (= result!154138 true)))

(assert (=> b!2037067 t!191293))

(declare-fun b_and!162627 () Bool)

(assert (= b_and!162625 (and (=> t!191293 result!154138) b_and!162627)))

(declare-fun m!2479877 () Bool)

(assert (=> b!2037067 m!2479877))

(declare-fun m!2479879 () Bool)

(assert (=> b!2037068 m!2479879))

(assert (=> b!2036905 d!623513))

(declare-fun d!623515 () Bool)

(declare-fun c!329900 () Bool)

(assert (=> d!623515 (= c!329900 ((_ is Nil!22271) lt!764838))))

(declare-fun e!1286369 () (InoxSet T!35962))

(assert (=> d!623515 (= (content!3302 lt!764838) e!1286369)))

(declare-fun b!2037069 () Bool)

(assert (=> b!2037069 (= e!1286369 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037070 () Bool)

(assert (=> b!2037070 (= e!1286369 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 lt!764838) true) (content!3302 (t!191264 lt!764838))))))

(assert (= (and d!623515 c!329900) b!2037069))

(assert (= (and d!623515 (not c!329900)) b!2037070))

(declare-fun m!2479881 () Bool)

(assert (=> b!2037070 m!2479881))

(declare-fun m!2479883 () Bool)

(assert (=> b!2037070 m!2479883))

(assert (=> b!2036841 d!623515))

(declare-fun d!623517 () Bool)

(declare-fun c!329901 () Bool)

(assert (=> d!623517 (= c!329901 ((_ is Nil!22271) (t!191264 (list!9123 t!4319))))))

(declare-fun e!1286370 () (InoxSet T!35962))

(assert (=> d!623517 (= (content!3302 (t!191264 (list!9123 t!4319))) e!1286370)))

(declare-fun b!2037071 () Bool)

(assert (=> b!2037071 (= e!1286370 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037072 () Bool)

(assert (=> b!2037072 (= e!1286370 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 (t!191264 (list!9123 t!4319))) true) (content!3302 (t!191264 (t!191264 (list!9123 t!4319))))))))

(assert (= (and d!623517 c!329901) b!2037071))

(assert (= (and d!623517 (not c!329901)) b!2037072))

(declare-fun m!2479885 () Bool)

(assert (=> b!2037072 m!2479885))

(declare-fun m!2479887 () Bool)

(assert (=> b!2037072 m!2479887))

(assert (=> b!2036841 d!623517))

(declare-fun d!623519 () Bool)

(declare-fun res!893174 () Bool)

(declare-fun e!1286371 () Bool)

(assert (=> d!623519 (=> (not res!893174) (not e!1286371))))

(assert (=> d!623519 (= res!893174 (= (csize!15156 (left!17731 (left!17731 t!4319))) (+ (size!17414 (left!17731 (left!17731 (left!17731 t!4319)))) (size!17414 (right!18061 (left!17731 (left!17731 t!4319)))))))))

(assert (=> d!623519 (= (inv!29553 (left!17731 (left!17731 t!4319))) e!1286371)))

(declare-fun b!2037073 () Bool)

(declare-fun res!893175 () Bool)

(assert (=> b!2037073 (=> (not res!893175) (not e!1286371))))

(assert (=> b!2037073 (= res!893175 (and (not (= (left!17731 (left!17731 (left!17731 t!4319))) Empty!7463)) (not (= (right!18061 (left!17731 (left!17731 t!4319))) Empty!7463))))))

(declare-fun b!2037074 () Bool)

(declare-fun res!893176 () Bool)

(assert (=> b!2037074 (=> (not res!893176) (not e!1286371))))

(assert (=> b!2037074 (= res!893176 (= (cheight!7674 (left!17731 (left!17731 t!4319))) (+ (max!0 (height!1163 (left!17731 (left!17731 (left!17731 t!4319)))) (height!1163 (right!18061 (left!17731 (left!17731 t!4319))))) 1)))))

(declare-fun b!2037075 () Bool)

(assert (=> b!2037075 (= e!1286371 (<= 0 (cheight!7674 (left!17731 (left!17731 t!4319)))))))

(assert (= (and d!623519 res!893174) b!2037073))

(assert (= (and b!2037073 res!893175) b!2037074))

(assert (= (and b!2037074 res!893176) b!2037075))

(declare-fun m!2479889 () Bool)

(assert (=> d!623519 m!2479889))

(declare-fun m!2479891 () Bool)

(assert (=> d!623519 m!2479891))

(declare-fun m!2479893 () Bool)

(assert (=> b!2037074 m!2479893))

(declare-fun m!2479895 () Bool)

(assert (=> b!2037074 m!2479895))

(assert (=> b!2037074 m!2479893))

(assert (=> b!2037074 m!2479895))

(declare-fun m!2479897 () Bool)

(assert (=> b!2037074 m!2479897))

(assert (=> b!2036863 d!623519))

(declare-fun d!623521 () Bool)

(declare-fun lt!764866 () Int)

(assert (=> d!623521 (>= lt!764866 0)))

(declare-fun e!1286372 () Int)

(assert (=> d!623521 (= lt!764866 e!1286372)))

(declare-fun c!329902 () Bool)

(assert (=> d!623521 (= c!329902 ((_ is Nil!22271) (innerList!7523 (xs!10365 (left!17731 t!4319)))))))

(assert (=> d!623521 (= (size!17412 (innerList!7523 (xs!10365 (left!17731 t!4319)))) lt!764866)))

(declare-fun b!2037076 () Bool)

(assert (=> b!2037076 (= e!1286372 0)))

(declare-fun b!2037077 () Bool)

(assert (=> b!2037077 (= e!1286372 (+ 1 (size!17412 (t!191264 (innerList!7523 (xs!10365 (left!17731 t!4319)))))))))

(assert (= (and d!623521 c!329902) b!2037076))

(assert (= (and d!623521 (not c!329902)) b!2037077))

(declare-fun m!2479899 () Bool)

(assert (=> b!2037077 m!2479899))

(assert (=> d!623375 d!623521))

(declare-fun d!623523 () Bool)

(declare-fun lt!764867 () Int)

(assert (=> d!623523 (>= lt!764867 0)))

(declare-fun e!1286373 () Int)

(assert (=> d!623523 (= lt!764867 e!1286373)))

(declare-fun c!329903 () Bool)

(assert (=> d!623523 (= c!329903 ((_ is Nil!22271) (list!9124 (xs!10365 (right!18061 t!4319)))))))

(assert (=> d!623523 (= (size!17412 (list!9124 (xs!10365 (right!18061 t!4319)))) lt!764867)))

(declare-fun b!2037078 () Bool)

(assert (=> b!2037078 (= e!1286373 0)))

(declare-fun b!2037079 () Bool)

(assert (=> b!2037079 (= e!1286373 (+ 1 (size!17412 (t!191264 (list!9124 (xs!10365 (right!18061 t!4319)))))))))

(assert (= (and d!623523 c!329903) b!2037078))

(assert (= (and d!623523 (not c!329903)) b!2037079))

(declare-fun m!2479901 () Bool)

(assert (=> b!2037079 m!2479901))

(assert (=> b!2036849 d!623523))

(declare-fun d!623525 () Bool)

(assert (=> d!623525 (= (list!9124 (xs!10365 (right!18061 t!4319))) (innerList!7523 (xs!10365 (right!18061 t!4319))))))

(assert (=> b!2036849 d!623525))

(declare-fun d!623527 () Bool)

(declare-fun res!893177 () Bool)

(declare-fun e!1286374 () Bool)

(assert (=> d!623527 (=> res!893177 e!1286374)))

(assert (=> d!623527 (= res!893177 ((_ is Nil!22271) (t!191264 lt!764830)))))

(assert (=> d!623527 (= (forall!4750 (t!191264 lt!764830) p!1489) e!1286374)))

(declare-fun b!2037080 () Bool)

(declare-fun e!1286375 () Bool)

(assert (=> b!2037080 (= e!1286374 e!1286375)))

(declare-fun res!893178 () Bool)

(assert (=> b!2037080 (=> (not res!893178) (not e!1286375))))

(assert (=> b!2037080 (= res!893178 (dynLambda!11099 p!1489 (h!27672 (t!191264 lt!764830))))))

(declare-fun b!2037081 () Bool)

(assert (=> b!2037081 (= e!1286375 (forall!4750 (t!191264 (t!191264 lt!764830)) p!1489))))

(assert (= (and d!623527 (not res!893177)) b!2037080))

(assert (= (and b!2037080 res!893178) b!2037081))

(declare-fun b_lambda!68793 () Bool)

(assert (=> (not b_lambda!68793) (not b!2037080)))

(declare-fun t!191295 () Bool)

(declare-fun tb!128853 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191295) tb!128853))

(declare-fun result!154140 () Bool)

(assert (=> tb!128853 (= result!154140 true)))

(assert (=> b!2037080 t!191295))

(declare-fun b_and!162629 () Bool)

(assert (= b_and!162627 (and (=> t!191295 result!154140) b_and!162629)))

(declare-fun m!2479903 () Bool)

(assert (=> b!2037080 m!2479903))

(declare-fun m!2479905 () Bool)

(assert (=> b!2037081 m!2479905))

(assert (=> b!2036877 d!623527))

(declare-fun d!623529 () Bool)

(declare-fun c!329904 () Bool)

(assert (=> d!623529 (= c!329904 ((_ is Nil!22271) (t!191264 lt!764830)))))

(declare-fun e!1286376 () (InoxSet T!35962))

(assert (=> d!623529 (= (content!3302 (t!191264 lt!764830)) e!1286376)))

(declare-fun b!2037082 () Bool)

(assert (=> b!2037082 (= e!1286376 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037083 () Bool)

(assert (=> b!2037083 (= e!1286376 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 (t!191264 lt!764830)) true) (content!3302 (t!191264 (t!191264 lt!764830)))))))

(assert (= (and d!623529 c!329904) b!2037082))

(assert (= (and d!623529 (not c!329904)) b!2037083))

(declare-fun m!2479907 () Bool)

(assert (=> b!2037083 m!2479907))

(declare-fun m!2479909 () Bool)

(assert (=> b!2037083 m!2479909))

(assert (=> b!2036860 d!623529))

(declare-fun d!623531 () Bool)

(declare-fun res!893179 () Bool)

(declare-fun e!1286377 () Bool)

(assert (=> d!623531 (=> (not res!893179) (not e!1286377))))

(assert (=> d!623531 (= res!893179 (<= (size!17412 (list!9124 (xs!10365 (left!17731 (left!17731 t!4319))))) 512))))

(assert (=> d!623531 (= (inv!29554 (left!17731 (left!17731 t!4319))) e!1286377)))

(declare-fun b!2037084 () Bool)

(declare-fun res!893180 () Bool)

(assert (=> b!2037084 (=> (not res!893180) (not e!1286377))))

(assert (=> b!2037084 (= res!893180 (= (csize!15157 (left!17731 (left!17731 t!4319))) (size!17412 (list!9124 (xs!10365 (left!17731 (left!17731 t!4319)))))))))

(declare-fun b!2037085 () Bool)

(assert (=> b!2037085 (= e!1286377 (and (> (csize!15157 (left!17731 (left!17731 t!4319))) 0) (<= (csize!15157 (left!17731 (left!17731 t!4319))) 512)))))

(assert (= (and d!623531 res!893179) b!2037084))

(assert (= (and b!2037084 res!893180) b!2037085))

(declare-fun m!2479911 () Bool)

(assert (=> d!623531 m!2479911))

(assert (=> d!623531 m!2479911))

(declare-fun m!2479913 () Bool)

(assert (=> d!623531 m!2479913))

(assert (=> b!2037084 m!2479911))

(assert (=> b!2037084 m!2479911))

(assert (=> b!2037084 m!2479913))

(assert (=> b!2036865 d!623531))

(assert (=> d!623359 d!623523))

(assert (=> d!623359 d!623525))

(declare-fun d!623533 () Bool)

(declare-fun lt!764868 () Int)

(assert (=> d!623533 (= lt!764868 (size!17412 (list!9123 (left!17731 (right!18061 t!4319)))))))

(assert (=> d!623533 (= lt!764868 (ite ((_ is Empty!7463) (left!17731 (right!18061 t!4319))) 0 (ite ((_ is Leaf!10936) (left!17731 (right!18061 t!4319))) (csize!15157 (left!17731 (right!18061 t!4319))) (csize!15156 (left!17731 (right!18061 t!4319))))))))

(assert (=> d!623533 (= (size!17414 (left!17731 (right!18061 t!4319))) lt!764868)))

(declare-fun bs!421371 () Bool)

(assert (= bs!421371 d!623533))

(assert (=> bs!421371 m!2479623))

(assert (=> bs!421371 m!2479623))

(declare-fun m!2479915 () Bool)

(assert (=> bs!421371 m!2479915))

(assert (=> d!623349 d!623533))

(declare-fun d!623535 () Bool)

(declare-fun lt!764869 () Int)

(assert (=> d!623535 (= lt!764869 (size!17412 (list!9123 (right!18061 (right!18061 t!4319)))))))

(assert (=> d!623535 (= lt!764869 (ite ((_ is Empty!7463) (right!18061 (right!18061 t!4319))) 0 (ite ((_ is Leaf!10936) (right!18061 (right!18061 t!4319))) (csize!15157 (right!18061 (right!18061 t!4319))) (csize!15156 (right!18061 (right!18061 t!4319))))))))

(assert (=> d!623535 (= (size!17414 (right!18061 (right!18061 t!4319))) lt!764869)))

(declare-fun bs!421372 () Bool)

(assert (= bs!421372 d!623535))

(assert (=> bs!421372 m!2479625))

(assert (=> bs!421372 m!2479625))

(declare-fun m!2479917 () Bool)

(assert (=> bs!421372 m!2479917))

(assert (=> d!623349 d!623535))

(declare-fun d!623537 () Bool)

(declare-fun lt!764870 () Int)

(assert (=> d!623537 (>= lt!764870 0)))

(declare-fun e!1286378 () Int)

(assert (=> d!623537 (= lt!764870 e!1286378)))

(declare-fun c!329905 () Bool)

(assert (=> d!623537 (= c!329905 ((_ is Nil!22271) (t!191264 (list!9124 (filter!463 (xs!10365 t!4319) p!1489)))))))

(assert (=> d!623537 (= (size!17412 (t!191264 (list!9124 (filter!463 (xs!10365 t!4319) p!1489)))) lt!764870)))

(declare-fun b!2037086 () Bool)

(assert (=> b!2037086 (= e!1286378 0)))

(declare-fun b!2037087 () Bool)

(assert (=> b!2037087 (= e!1286378 (+ 1 (size!17412 (t!191264 (t!191264 (list!9124 (filter!463 (xs!10365 t!4319) p!1489)))))))))

(assert (= (and d!623537 c!329905) b!2037086))

(assert (= (and d!623537 (not c!329905)) b!2037087))

(declare-fun m!2479919 () Bool)

(assert (=> b!2037087 m!2479919))

(assert (=> b!2036899 d!623537))

(declare-fun d!623539 () Bool)

(declare-fun lt!764871 () Int)

(assert (=> d!623539 (>= lt!764871 0)))

(declare-fun e!1286379 () Int)

(assert (=> d!623539 (= lt!764871 e!1286379)))

(declare-fun c!329906 () Bool)

(assert (=> d!623539 (= c!329906 ((_ is Nil!22271) (t!191264 (innerList!7523 (xs!10365 t!4319)))))))

(assert (=> d!623539 (= (size!17412 (t!191264 (innerList!7523 (xs!10365 t!4319)))) lt!764871)))

(declare-fun b!2037088 () Bool)

(assert (=> b!2037088 (= e!1286379 0)))

(declare-fun b!2037089 () Bool)

(assert (=> b!2037089 (= e!1286379 (+ 1 (size!17412 (t!191264 (t!191264 (innerList!7523 (xs!10365 t!4319)))))))))

(assert (= (and d!623539 c!329906) b!2037088))

(assert (= (and d!623539 (not c!329906)) b!2037089))

(declare-fun m!2479921 () Bool)

(assert (=> b!2037089 m!2479921))

(assert (=> b!2036854 d!623539))

(declare-fun d!623541 () Bool)

(declare-fun c!329907 () Bool)

(assert (=> d!623541 (= c!329907 ((_ is Node!7463) (left!17731 (right!18061 (left!17731 t!4319)))))))

(declare-fun e!1286380 () Bool)

(assert (=> d!623541 (= (inv!29550 (left!17731 (right!18061 (left!17731 t!4319)))) e!1286380)))

(declare-fun b!2037090 () Bool)

(assert (=> b!2037090 (= e!1286380 (inv!29553 (left!17731 (right!18061 (left!17731 t!4319)))))))

(declare-fun b!2037091 () Bool)

(declare-fun e!1286381 () Bool)

(assert (=> b!2037091 (= e!1286380 e!1286381)))

(declare-fun res!893181 () Bool)

(assert (=> b!2037091 (= res!893181 (not ((_ is Leaf!10936) (left!17731 (right!18061 (left!17731 t!4319))))))))

(assert (=> b!2037091 (=> res!893181 e!1286381)))

(declare-fun b!2037092 () Bool)

(assert (=> b!2037092 (= e!1286381 (inv!29554 (left!17731 (right!18061 (left!17731 t!4319)))))))

(assert (= (and d!623541 c!329907) b!2037090))

(assert (= (and d!623541 (not c!329907)) b!2037091))

(assert (= (and b!2037091 (not res!893181)) b!2037092))

(declare-fun m!2479923 () Bool)

(assert (=> b!2037090 m!2479923))

(declare-fun m!2479925 () Bool)

(assert (=> b!2037092 m!2479925))

(assert (=> b!2036929 d!623541))

(declare-fun d!623543 () Bool)

(declare-fun c!329908 () Bool)

(assert (=> d!623543 (= c!329908 ((_ is Node!7463) (right!18061 (right!18061 (left!17731 t!4319)))))))

(declare-fun e!1286382 () Bool)

(assert (=> d!623543 (= (inv!29550 (right!18061 (right!18061 (left!17731 t!4319)))) e!1286382)))

(declare-fun b!2037093 () Bool)

(assert (=> b!2037093 (= e!1286382 (inv!29553 (right!18061 (right!18061 (left!17731 t!4319)))))))

(declare-fun b!2037094 () Bool)

(declare-fun e!1286383 () Bool)

(assert (=> b!2037094 (= e!1286382 e!1286383)))

(declare-fun res!893182 () Bool)

(assert (=> b!2037094 (= res!893182 (not ((_ is Leaf!10936) (right!18061 (right!18061 (left!17731 t!4319))))))))

(assert (=> b!2037094 (=> res!893182 e!1286383)))

(declare-fun b!2037095 () Bool)

(assert (=> b!2037095 (= e!1286383 (inv!29554 (right!18061 (right!18061 (left!17731 t!4319)))))))

(assert (= (and d!623543 c!329908) b!2037093))

(assert (= (and d!623543 (not c!329908)) b!2037094))

(assert (= (and b!2037094 (not res!893182)) b!2037095))

(declare-fun m!2479927 () Bool)

(assert (=> b!2037093 m!2479927))

(declare-fun m!2479929 () Bool)

(assert (=> b!2037095 m!2479929))

(assert (=> b!2036929 d!623543))

(assert (=> b!2036790 d!623371))

(assert (=> b!2036790 d!623373))

(declare-fun d!623545 () Bool)

(declare-fun lt!764872 () Int)

(assert (=> d!623545 (>= lt!764872 0)))

(declare-fun e!1286384 () Int)

(assert (=> d!623545 (= lt!764872 e!1286384)))

(declare-fun c!329909 () Bool)

(assert (=> d!623545 (= c!329909 ((_ is Nil!22271) lt!764838))))

(assert (=> d!623545 (= (size!17412 lt!764838) lt!764872)))

(declare-fun b!2037096 () Bool)

(assert (=> b!2037096 (= e!1286384 0)))

(declare-fun b!2037097 () Bool)

(assert (=> b!2037097 (= e!1286384 (+ 1 (size!17412 (t!191264 lt!764838))))))

(assert (= (and d!623545 c!329909) b!2037096))

(assert (= (and d!623545 (not c!329909)) b!2037097))

(declare-fun m!2479931 () Bool)

(assert (=> b!2037097 m!2479931))

(assert (=> d!623357 d!623545))

(declare-fun d!623547 () Bool)

(declare-fun lt!764873 () Int)

(assert (=> d!623547 (>= lt!764873 0)))

(declare-fun e!1286385 () Int)

(assert (=> d!623547 (= lt!764873 e!1286385)))

(declare-fun c!329910 () Bool)

(assert (=> d!623547 (= c!329910 ((_ is Nil!22271) (t!191264 (list!9123 t!4319))))))

(assert (=> d!623547 (= (size!17412 (t!191264 (list!9123 t!4319))) lt!764873)))

(declare-fun b!2037098 () Bool)

(assert (=> b!2037098 (= e!1286385 0)))

(declare-fun b!2037099 () Bool)

(assert (=> b!2037099 (= e!1286385 (+ 1 (size!17412 (t!191264 (t!191264 (list!9123 t!4319))))))))

(assert (= (and d!623547 c!329910) b!2037098))

(assert (= (and d!623547 (not c!329910)) b!2037099))

(declare-fun m!2479933 () Bool)

(assert (=> b!2037099 m!2479933))

(assert (=> d!623357 d!623547))

(declare-fun d!623549 () Bool)

(assert (=> d!623549 (= (height!1163 (left!17731 (left!17731 t!4319))) (ite ((_ is Empty!7463) (left!17731 (left!17731 t!4319))) 0 (ite ((_ is Leaf!10936) (left!17731 (left!17731 t!4319))) 1 (cheight!7674 (left!17731 (left!17731 t!4319))))))))

(assert (=> b!2036815 d!623549))

(declare-fun d!623551 () Bool)

(assert (=> d!623551 (= (height!1163 (right!18061 (left!17731 t!4319))) (ite ((_ is Empty!7463) (right!18061 (left!17731 t!4319))) 0 (ite ((_ is Leaf!10936) (right!18061 (left!17731 t!4319))) 1 (cheight!7674 (right!18061 (left!17731 t!4319))))))))

(assert (=> b!2036815 d!623551))

(declare-fun d!623553 () Bool)

(assert (=> d!623553 (= (max!0 (height!1163 (left!17731 (right!18061 t!4319))) (height!1163 (right!18061 (right!18061 t!4319)))) (ite (< (height!1163 (left!17731 (right!18061 t!4319))) (height!1163 (right!18061 (right!18061 t!4319)))) (height!1163 (right!18061 (right!18061 t!4319))) (height!1163 (left!17731 (right!18061 t!4319)))))))

(assert (=> b!2036828 d!623553))

(declare-fun d!623555 () Bool)

(assert (=> d!623555 (= (height!1163 (left!17731 (right!18061 t!4319))) (ite ((_ is Empty!7463) (left!17731 (right!18061 t!4319))) 0 (ite ((_ is Leaf!10936) (left!17731 (right!18061 t!4319))) 1 (cheight!7674 (left!17731 (right!18061 t!4319))))))))

(assert (=> b!2036828 d!623555))

(declare-fun d!623557 () Bool)

(assert (=> d!623557 (= (height!1163 (right!18061 (right!18061 t!4319))) (ite ((_ is Empty!7463) (right!18061 (right!18061 t!4319))) 0 (ite ((_ is Leaf!10936) (right!18061 (right!18061 t!4319))) 1 (cheight!7674 (right!18061 (right!18061 t!4319))))))))

(assert (=> b!2036828 d!623557))

(declare-fun d!623559 () Bool)

(declare-fun c!329911 () Bool)

(assert (=> d!623559 (= c!329911 ((_ is Node!7463) (left!17731 (right!18061 (right!18061 t!4319)))))))

(declare-fun e!1286386 () Bool)

(assert (=> d!623559 (= (inv!29550 (left!17731 (right!18061 (right!18061 t!4319)))) e!1286386)))

(declare-fun b!2037100 () Bool)

(assert (=> b!2037100 (= e!1286386 (inv!29553 (left!17731 (right!18061 (right!18061 t!4319)))))))

(declare-fun b!2037101 () Bool)

(declare-fun e!1286387 () Bool)

(assert (=> b!2037101 (= e!1286386 e!1286387)))

(declare-fun res!893183 () Bool)

(assert (=> b!2037101 (= res!893183 (not ((_ is Leaf!10936) (left!17731 (right!18061 (right!18061 t!4319))))))))

(assert (=> b!2037101 (=> res!893183 e!1286387)))

(declare-fun b!2037102 () Bool)

(assert (=> b!2037102 (= e!1286387 (inv!29554 (left!17731 (right!18061 (right!18061 t!4319)))))))

(assert (= (and d!623559 c!329911) b!2037100))

(assert (= (and d!623559 (not c!329911)) b!2037101))

(assert (= (and b!2037101 (not res!893183)) b!2037102))

(declare-fun m!2479935 () Bool)

(assert (=> b!2037100 m!2479935))

(declare-fun m!2479937 () Bool)

(assert (=> b!2037102 m!2479937))

(assert (=> b!2036922 d!623559))

(declare-fun d!623561 () Bool)

(declare-fun c!329912 () Bool)

(assert (=> d!623561 (= c!329912 ((_ is Node!7463) (right!18061 (right!18061 (right!18061 t!4319)))))))

(declare-fun e!1286388 () Bool)

(assert (=> d!623561 (= (inv!29550 (right!18061 (right!18061 (right!18061 t!4319)))) e!1286388)))

(declare-fun b!2037103 () Bool)

(assert (=> b!2037103 (= e!1286388 (inv!29553 (right!18061 (right!18061 (right!18061 t!4319)))))))

(declare-fun b!2037104 () Bool)

(declare-fun e!1286389 () Bool)

(assert (=> b!2037104 (= e!1286388 e!1286389)))

(declare-fun res!893184 () Bool)

(assert (=> b!2037104 (= res!893184 (not ((_ is Leaf!10936) (right!18061 (right!18061 (right!18061 t!4319))))))))

(assert (=> b!2037104 (=> res!893184 e!1286389)))

(declare-fun b!2037105 () Bool)

(assert (=> b!2037105 (= e!1286389 (inv!29554 (right!18061 (right!18061 (right!18061 t!4319)))))))

(assert (= (and d!623561 c!329912) b!2037103))

(assert (= (and d!623561 (not c!329912)) b!2037104))

(assert (= (and b!2037104 (not res!893184)) b!2037105))

(declare-fun m!2479939 () Bool)

(assert (=> b!2037103 m!2479939))

(declare-fun m!2479941 () Bool)

(assert (=> b!2037105 m!2479941))

(assert (=> b!2036922 d!623561))

(assert (=> b!2036808 d!623547))

(declare-fun d!623563 () Bool)

(declare-fun c!329913 () Bool)

(assert (=> d!623563 (= c!329913 ((_ is Node!7463) (left!17731 (left!17731 (left!17731 t!4319)))))))

(declare-fun e!1286390 () Bool)

(assert (=> d!623563 (= (inv!29550 (left!17731 (left!17731 (left!17731 t!4319)))) e!1286390)))

(declare-fun b!2037106 () Bool)

(assert (=> b!2037106 (= e!1286390 (inv!29553 (left!17731 (left!17731 (left!17731 t!4319)))))))

(declare-fun b!2037107 () Bool)

(declare-fun e!1286391 () Bool)

(assert (=> b!2037107 (= e!1286390 e!1286391)))

(declare-fun res!893185 () Bool)

(assert (=> b!2037107 (= res!893185 (not ((_ is Leaf!10936) (left!17731 (left!17731 (left!17731 t!4319))))))))

(assert (=> b!2037107 (=> res!893185 e!1286391)))

(declare-fun b!2037108 () Bool)

(assert (=> b!2037108 (= e!1286391 (inv!29554 (left!17731 (left!17731 (left!17731 t!4319)))))))

(assert (= (and d!623563 c!329913) b!2037106))

(assert (= (and d!623563 (not c!329913)) b!2037107))

(assert (= (and b!2037107 (not res!893185)) b!2037108))

(declare-fun m!2479943 () Bool)

(assert (=> b!2037106 m!2479943))

(declare-fun m!2479945 () Bool)

(assert (=> b!2037108 m!2479945))

(assert (=> b!2036926 d!623563))

(declare-fun d!623565 () Bool)

(declare-fun c!329914 () Bool)

(assert (=> d!623565 (= c!329914 ((_ is Node!7463) (right!18061 (left!17731 (left!17731 t!4319)))))))

(declare-fun e!1286392 () Bool)

(assert (=> d!623565 (= (inv!29550 (right!18061 (left!17731 (left!17731 t!4319)))) e!1286392)))

(declare-fun b!2037109 () Bool)

(assert (=> b!2037109 (= e!1286392 (inv!29553 (right!18061 (left!17731 (left!17731 t!4319)))))))

(declare-fun b!2037110 () Bool)

(declare-fun e!1286393 () Bool)

(assert (=> b!2037110 (= e!1286392 e!1286393)))

(declare-fun res!893186 () Bool)

(assert (=> b!2037110 (= res!893186 (not ((_ is Leaf!10936) (right!18061 (left!17731 (left!17731 t!4319))))))))

(assert (=> b!2037110 (=> res!893186 e!1286393)))

(declare-fun b!2037111 () Bool)

(assert (=> b!2037111 (= e!1286393 (inv!29554 (right!18061 (left!17731 (left!17731 t!4319)))))))

(assert (= (and d!623565 c!329914) b!2037109))

(assert (= (and d!623565 (not c!329914)) b!2037110))

(assert (= (and b!2037110 (not res!893186)) b!2037111))

(declare-fun m!2479947 () Bool)

(assert (=> b!2037109 m!2479947))

(declare-fun m!2479949 () Bool)

(assert (=> b!2037111 m!2479949))

(assert (=> b!2036926 d!623565))

(declare-fun d!623567 () Bool)

(declare-fun lt!764874 () Int)

(assert (=> d!623567 (>= lt!764874 0)))

(declare-fun e!1286394 () Int)

(assert (=> d!623567 (= lt!764874 e!1286394)))

(declare-fun c!329915 () Bool)

(assert (=> d!623567 (= c!329915 ((_ is Nil!22271) lt!764843))))

(assert (=> d!623567 (= (size!17412 lt!764843) lt!764874)))

(declare-fun b!2037112 () Bool)

(assert (=> b!2037112 (= e!1286394 0)))

(declare-fun b!2037113 () Bool)

(assert (=> b!2037113 (= e!1286394 (+ 1 (size!17412 (t!191264 lt!764843))))))

(assert (= (and d!623567 c!329915) b!2037112))

(assert (= (and d!623567 (not c!329915)) b!2037113))

(declare-fun m!2479951 () Bool)

(assert (=> b!2037113 m!2479951))

(assert (=> b!2036888 d!623567))

(declare-fun d!623569 () Bool)

(declare-fun lt!764875 () Int)

(assert (=> d!623569 (>= lt!764875 0)))

(declare-fun e!1286395 () Int)

(assert (=> d!623569 (= lt!764875 e!1286395)))

(declare-fun c!329916 () Bool)

(assert (=> d!623569 (= c!329916 ((_ is Nil!22271) (list!9123 (left!17731 t!4319))))))

(assert (=> d!623569 (= (size!17412 (list!9123 (left!17731 t!4319))) lt!764875)))

(declare-fun b!2037114 () Bool)

(assert (=> b!2037114 (= e!1286395 0)))

(declare-fun b!2037115 () Bool)

(assert (=> b!2037115 (= e!1286395 (+ 1 (size!17412 (t!191264 (list!9123 (left!17731 t!4319))))))))

(assert (= (and d!623569 c!329916) b!2037114))

(assert (= (and d!623569 (not c!329916)) b!2037115))

(declare-fun m!2479953 () Bool)

(assert (=> b!2037115 m!2479953))

(assert (=> b!2036888 d!623569))

(declare-fun d!623571 () Bool)

(declare-fun lt!764876 () Int)

(assert (=> d!623571 (>= lt!764876 0)))

(declare-fun e!1286396 () Int)

(assert (=> d!623571 (= lt!764876 e!1286396)))

(declare-fun c!329917 () Bool)

(assert (=> d!623571 (= c!329917 ((_ is Nil!22271) (list!9123 (right!18061 t!4319))))))

(assert (=> d!623571 (= (size!17412 (list!9123 (right!18061 t!4319))) lt!764876)))

(declare-fun b!2037116 () Bool)

(assert (=> b!2037116 (= e!1286396 0)))

(declare-fun b!2037117 () Bool)

(assert (=> b!2037117 (= e!1286396 (+ 1 (size!17412 (t!191264 (list!9123 (right!18061 t!4319))))))))

(assert (= (and d!623571 c!329917) b!2037116))

(assert (= (and d!623571 (not c!329917)) b!2037117))

(declare-fun m!2479955 () Bool)

(assert (=> b!2037117 m!2479955))

(assert (=> b!2036888 d!623571))

(declare-fun b!2037118 () Bool)

(declare-fun e!1286398 () Bool)

(declare-fun e!1286397 () Bool)

(assert (=> b!2037118 (= e!1286398 e!1286397)))

(declare-fun res!893187 () Bool)

(assert (=> b!2037118 (=> (not res!893187) (not e!1286397))))

(assert (=> b!2037118 (= res!893187 (<= (- 1) (- (height!1163 (left!17731 (left!17731 (left!17731 t!4319)))) (height!1163 (right!18061 (left!17731 (left!17731 t!4319)))))))))

(declare-fun b!2037120 () Bool)

(declare-fun res!893192 () Bool)

(assert (=> b!2037120 (=> (not res!893192) (not e!1286397))))

(assert (=> b!2037120 (= res!893192 (isBalanced!2341 (left!17731 (left!17731 (left!17731 t!4319)))))))

(declare-fun b!2037121 () Bool)

(assert (=> b!2037121 (= e!1286397 (not (isEmpty!13921 (right!18061 (left!17731 (left!17731 t!4319))))))))

(declare-fun b!2037122 () Bool)

(declare-fun res!893191 () Bool)

(assert (=> b!2037122 (=> (not res!893191) (not e!1286397))))

(assert (=> b!2037122 (= res!893191 (not (isEmpty!13921 (left!17731 (left!17731 (left!17731 t!4319))))))))

(declare-fun b!2037123 () Bool)

(declare-fun res!893189 () Bool)

(assert (=> b!2037123 (=> (not res!893189) (not e!1286397))))

(assert (=> b!2037123 (= res!893189 (isBalanced!2341 (right!18061 (left!17731 (left!17731 t!4319)))))))

(declare-fun b!2037119 () Bool)

(declare-fun res!893190 () Bool)

(assert (=> b!2037119 (=> (not res!893190) (not e!1286397))))

(assert (=> b!2037119 (= res!893190 (<= (- (height!1163 (left!17731 (left!17731 (left!17731 t!4319)))) (height!1163 (right!18061 (left!17731 (left!17731 t!4319))))) 1))))

(declare-fun d!623573 () Bool)

(declare-fun res!893188 () Bool)

(assert (=> d!623573 (=> res!893188 e!1286398)))

(assert (=> d!623573 (= res!893188 (not ((_ is Node!7463) (left!17731 (left!17731 t!4319)))))))

(assert (=> d!623573 (= (isBalanced!2341 (left!17731 (left!17731 t!4319))) e!1286398)))

(assert (= (and d!623573 (not res!893188)) b!2037118))

(assert (= (and b!2037118 res!893187) b!2037119))

(assert (= (and b!2037119 res!893190) b!2037120))

(assert (= (and b!2037120 res!893192) b!2037123))

(assert (= (and b!2037123 res!893189) b!2037122))

(assert (= (and b!2037122 res!893191) b!2037121))

(declare-fun m!2479957 () Bool)

(assert (=> b!2037121 m!2479957))

(assert (=> b!2037119 m!2479893))

(assert (=> b!2037119 m!2479895))

(declare-fun m!2479959 () Bool)

(assert (=> b!2037123 m!2479959))

(declare-fun m!2479961 () Bool)

(assert (=> b!2037120 m!2479961))

(declare-fun m!2479963 () Bool)

(assert (=> b!2037122 m!2479963))

(assert (=> b!2037118 m!2479893))

(assert (=> b!2037118 m!2479895))

(assert (=> b!2036817 d!623573))

(assert (=> b!2036896 d!623525))

(declare-fun d!623575 () Bool)

(declare-fun lt!764877 () Bool)

(assert (=> d!623575 (= lt!764877 (isEmpty!13922 (list!9123 (left!17731 (left!17731 t!4319)))))))

(assert (=> d!623575 (= lt!764877 (= (size!17414 (left!17731 (left!17731 t!4319))) 0))))

(assert (=> d!623575 (= (isEmpty!13921 (left!17731 (left!17731 t!4319))) lt!764877)))

(declare-fun bs!421373 () Bool)

(assert (= bs!421373 d!623575))

(assert (=> bs!421373 m!2479617))

(assert (=> bs!421373 m!2479617))

(declare-fun m!2479965 () Bool)

(assert (=> bs!421373 m!2479965))

(assert (=> bs!421373 m!2479591))

(assert (=> b!2036819 d!623575))

(declare-fun d!623577 () Bool)

(declare-fun c!329918 () Bool)

(assert (=> d!623577 (= c!329918 ((_ is Node!7463) (left!17731 (left!17731 (right!18061 t!4319)))))))

(declare-fun e!1286399 () Bool)

(assert (=> d!623577 (= (inv!29550 (left!17731 (left!17731 (right!18061 t!4319)))) e!1286399)))

(declare-fun b!2037124 () Bool)

(assert (=> b!2037124 (= e!1286399 (inv!29553 (left!17731 (left!17731 (right!18061 t!4319)))))))

(declare-fun b!2037125 () Bool)

(declare-fun e!1286400 () Bool)

(assert (=> b!2037125 (= e!1286399 e!1286400)))

(declare-fun res!893193 () Bool)

(assert (=> b!2037125 (= res!893193 (not ((_ is Leaf!10936) (left!17731 (left!17731 (right!18061 t!4319))))))))

(assert (=> b!2037125 (=> res!893193 e!1286400)))

(declare-fun b!2037126 () Bool)

(assert (=> b!2037126 (= e!1286400 (inv!29554 (left!17731 (left!17731 (right!18061 t!4319)))))))

(assert (= (and d!623577 c!329918) b!2037124))

(assert (= (and d!623577 (not c!329918)) b!2037125))

(assert (= (and b!2037125 (not res!893193)) b!2037126))

(declare-fun m!2479967 () Bool)

(assert (=> b!2037124 m!2479967))

(declare-fun m!2479969 () Bool)

(assert (=> b!2037126 m!2479969))

(assert (=> b!2036917 d!623577))

(declare-fun d!623579 () Bool)

(declare-fun c!329919 () Bool)

(assert (=> d!623579 (= c!329919 ((_ is Node!7463) (right!18061 (left!17731 (right!18061 t!4319)))))))

(declare-fun e!1286401 () Bool)

(assert (=> d!623579 (= (inv!29550 (right!18061 (left!17731 (right!18061 t!4319)))) e!1286401)))

(declare-fun b!2037127 () Bool)

(assert (=> b!2037127 (= e!1286401 (inv!29553 (right!18061 (left!17731 (right!18061 t!4319)))))))

(declare-fun b!2037128 () Bool)

(declare-fun e!1286402 () Bool)

(assert (=> b!2037128 (= e!1286401 e!1286402)))

(declare-fun res!893194 () Bool)

(assert (=> b!2037128 (= res!893194 (not ((_ is Leaf!10936) (right!18061 (left!17731 (right!18061 t!4319))))))))

(assert (=> b!2037128 (=> res!893194 e!1286402)))

(declare-fun b!2037129 () Bool)

(assert (=> b!2037129 (= e!1286402 (inv!29554 (right!18061 (left!17731 (right!18061 t!4319)))))))

(assert (= (and d!623579 c!329919) b!2037127))

(assert (= (and d!623579 (not c!329919)) b!2037128))

(assert (= (and b!2037128 (not res!893194)) b!2037129))

(declare-fun m!2479971 () Bool)

(assert (=> b!2037127 m!2479971))

(declare-fun m!2479973 () Bool)

(assert (=> b!2037129 m!2479973))

(assert (=> b!2036917 d!623579))

(assert (=> b!2036833 d!623555))

(assert (=> b!2036833 d!623557))

(assert (=> b!2036862 d!623517))

(declare-fun b!2037130 () Bool)

(declare-fun e!1286404 () Bool)

(declare-fun e!1286403 () Bool)

(assert (=> b!2037130 (= e!1286404 e!1286403)))

(declare-fun res!893195 () Bool)

(assert (=> b!2037130 (=> (not res!893195) (not e!1286403))))

(assert (=> b!2037130 (= res!893195 (<= (- 1) (- (height!1163 (left!17731 (left!17731 (right!18061 t!4319)))) (height!1163 (right!18061 (left!17731 (right!18061 t!4319)))))))))

(declare-fun b!2037132 () Bool)

(declare-fun res!893200 () Bool)

(assert (=> b!2037132 (=> (not res!893200) (not e!1286403))))

(assert (=> b!2037132 (= res!893200 (isBalanced!2341 (left!17731 (left!17731 (right!18061 t!4319)))))))

(declare-fun b!2037133 () Bool)

(assert (=> b!2037133 (= e!1286403 (not (isEmpty!13921 (right!18061 (left!17731 (right!18061 t!4319))))))))

(declare-fun b!2037134 () Bool)

(declare-fun res!893199 () Bool)

(assert (=> b!2037134 (=> (not res!893199) (not e!1286403))))

(assert (=> b!2037134 (= res!893199 (not (isEmpty!13921 (left!17731 (left!17731 (right!18061 t!4319))))))))

(declare-fun b!2037135 () Bool)

(declare-fun res!893197 () Bool)

(assert (=> b!2037135 (=> (not res!893197) (not e!1286403))))

(assert (=> b!2037135 (= res!893197 (isBalanced!2341 (right!18061 (left!17731 (right!18061 t!4319)))))))

(declare-fun b!2037131 () Bool)

(declare-fun res!893198 () Bool)

(assert (=> b!2037131 (=> (not res!893198) (not e!1286403))))

(assert (=> b!2037131 (= res!893198 (<= (- (height!1163 (left!17731 (left!17731 (right!18061 t!4319)))) (height!1163 (right!18061 (left!17731 (right!18061 t!4319))))) 1))))

(declare-fun d!623581 () Bool)

(declare-fun res!893196 () Bool)

(assert (=> d!623581 (=> res!893196 e!1286404)))

(assert (=> d!623581 (= res!893196 (not ((_ is Node!7463) (left!17731 (right!18061 t!4319)))))))

(assert (=> d!623581 (= (isBalanced!2341 (left!17731 (right!18061 t!4319))) e!1286404)))

(assert (= (and d!623581 (not res!893196)) b!2037130))

(assert (= (and b!2037130 res!893195) b!2037131))

(assert (= (and b!2037131 res!893198) b!2037132))

(assert (= (and b!2037132 res!893200) b!2037135))

(assert (= (and b!2037135 res!893197) b!2037134))

(assert (= (and b!2037134 res!893199) b!2037133))

(declare-fun m!2479975 () Bool)

(assert (=> b!2037133 m!2479975))

(declare-fun m!2479977 () Bool)

(assert (=> b!2037131 m!2479977))

(declare-fun m!2479979 () Bool)

(assert (=> b!2037131 m!2479979))

(declare-fun m!2479981 () Bool)

(assert (=> b!2037135 m!2479981))

(declare-fun m!2479983 () Bool)

(assert (=> b!2037132 m!2479983))

(declare-fun m!2479985 () Bool)

(assert (=> b!2037134 m!2479985))

(assert (=> b!2037130 m!2479977))

(assert (=> b!2037130 m!2479979))

(assert (=> b!2036835 d!623581))

(declare-fun b!2037136 () Bool)

(declare-fun e!1286405 () List!22353)

(assert (=> b!2037136 (= e!1286405 (list!9123 (right!18061 (left!17731 t!4319))))))

(declare-fun d!623583 () Bool)

(declare-fun e!1286406 () Bool)

(assert (=> d!623583 e!1286406))

(declare-fun res!893201 () Bool)

(assert (=> d!623583 (=> (not res!893201) (not e!1286406))))

(declare-fun lt!764878 () List!22353)

(assert (=> d!623583 (= res!893201 (= (content!3302 lt!764878) ((_ map or) (content!3302 (list!9123 (left!17731 (left!17731 t!4319)))) (content!3302 (list!9123 (right!18061 (left!17731 t!4319)))))))))

(assert (=> d!623583 (= lt!764878 e!1286405)))

(declare-fun c!329920 () Bool)

(assert (=> d!623583 (= c!329920 ((_ is Nil!22271) (list!9123 (left!17731 (left!17731 t!4319)))))))

(assert (=> d!623583 (= (++!6045 (list!9123 (left!17731 (left!17731 t!4319))) (list!9123 (right!18061 (left!17731 t!4319)))) lt!764878)))

(declare-fun b!2037137 () Bool)

(assert (=> b!2037137 (= e!1286405 (Cons!22271 (h!27672 (list!9123 (left!17731 (left!17731 t!4319)))) (++!6045 (t!191264 (list!9123 (left!17731 (left!17731 t!4319)))) (list!9123 (right!18061 (left!17731 t!4319))))))))

(declare-fun b!2037138 () Bool)

(declare-fun res!893202 () Bool)

(assert (=> b!2037138 (=> (not res!893202) (not e!1286406))))

(assert (=> b!2037138 (= res!893202 (= (size!17412 lt!764878) (+ (size!17412 (list!9123 (left!17731 (left!17731 t!4319)))) (size!17412 (list!9123 (right!18061 (left!17731 t!4319)))))))))

(declare-fun b!2037139 () Bool)

(assert (=> b!2037139 (= e!1286406 (or (not (= (list!9123 (right!18061 (left!17731 t!4319))) Nil!22271)) (= lt!764878 (list!9123 (left!17731 (left!17731 t!4319))))))))

(assert (= (and d!623583 c!329920) b!2037136))

(assert (= (and d!623583 (not c!329920)) b!2037137))

(assert (= (and d!623583 res!893201) b!2037138))

(assert (= (and b!2037138 res!893202) b!2037139))

(declare-fun m!2479987 () Bool)

(assert (=> d!623583 m!2479987))

(assert (=> d!623583 m!2479617))

(declare-fun m!2479989 () Bool)

(assert (=> d!623583 m!2479989))

(assert (=> d!623583 m!2479619))

(declare-fun m!2479991 () Bool)

(assert (=> d!623583 m!2479991))

(assert (=> b!2037137 m!2479619))

(declare-fun m!2479993 () Bool)

(assert (=> b!2037137 m!2479993))

(declare-fun m!2479995 () Bool)

(assert (=> b!2037138 m!2479995))

(assert (=> b!2037138 m!2479617))

(declare-fun m!2479997 () Bool)

(assert (=> b!2037138 m!2479997))

(assert (=> b!2037138 m!2479619))

(declare-fun m!2479999 () Bool)

(assert (=> b!2037138 m!2479999))

(assert (=> b!2036893 d!623583))

(declare-fun b!2037142 () Bool)

(declare-fun e!1286408 () List!22353)

(assert (=> b!2037142 (= e!1286408 (list!9124 (xs!10365 (left!17731 (left!17731 t!4319)))))))

(declare-fun d!623585 () Bool)

(declare-fun c!329921 () Bool)

(assert (=> d!623585 (= c!329921 ((_ is Empty!7463) (left!17731 (left!17731 t!4319))))))

(declare-fun e!1286407 () List!22353)

(assert (=> d!623585 (= (list!9123 (left!17731 (left!17731 t!4319))) e!1286407)))

(declare-fun b!2037141 () Bool)

(assert (=> b!2037141 (= e!1286407 e!1286408)))

(declare-fun c!329922 () Bool)

(assert (=> b!2037141 (= c!329922 ((_ is Leaf!10936) (left!17731 (left!17731 t!4319))))))

(declare-fun b!2037143 () Bool)

(assert (=> b!2037143 (= e!1286408 (++!6045 (list!9123 (left!17731 (left!17731 (left!17731 t!4319)))) (list!9123 (right!18061 (left!17731 (left!17731 t!4319))))))))

(declare-fun b!2037140 () Bool)

(assert (=> b!2037140 (= e!1286407 Nil!22271)))

(assert (= (and d!623585 c!329921) b!2037140))

(assert (= (and d!623585 (not c!329921)) b!2037141))

(assert (= (and b!2037141 c!329922) b!2037142))

(assert (= (and b!2037141 (not c!329922)) b!2037143))

(assert (=> b!2037142 m!2479911))

(declare-fun m!2480001 () Bool)

(assert (=> b!2037143 m!2480001))

(declare-fun m!2480003 () Bool)

(assert (=> b!2037143 m!2480003))

(assert (=> b!2037143 m!2480001))

(assert (=> b!2037143 m!2480003))

(declare-fun m!2480005 () Bool)

(assert (=> b!2037143 m!2480005))

(assert (=> b!2036893 d!623585))

(declare-fun b!2037146 () Bool)

(declare-fun e!1286410 () List!22353)

(assert (=> b!2037146 (= e!1286410 (list!9124 (xs!10365 (right!18061 (left!17731 t!4319)))))))

(declare-fun d!623587 () Bool)

(declare-fun c!329923 () Bool)

(assert (=> d!623587 (= c!329923 ((_ is Empty!7463) (right!18061 (left!17731 t!4319))))))

(declare-fun e!1286409 () List!22353)

(assert (=> d!623587 (= (list!9123 (right!18061 (left!17731 t!4319))) e!1286409)))

(declare-fun b!2037145 () Bool)

(assert (=> b!2037145 (= e!1286409 e!1286410)))

(declare-fun c!329924 () Bool)

(assert (=> b!2037145 (= c!329924 ((_ is Leaf!10936) (right!18061 (left!17731 t!4319))))))

(declare-fun b!2037147 () Bool)

(assert (=> b!2037147 (= e!1286410 (++!6045 (list!9123 (left!17731 (right!18061 (left!17731 t!4319)))) (list!9123 (right!18061 (right!18061 (left!17731 t!4319))))))))

(declare-fun b!2037144 () Bool)

(assert (=> b!2037144 (= e!1286409 Nil!22271)))

(assert (= (and d!623587 c!329923) b!2037144))

(assert (= (and d!623587 (not c!329923)) b!2037145))

(assert (= (and b!2037145 c!329924) b!2037146))

(assert (= (and b!2037145 (not c!329924)) b!2037147))

(assert (=> b!2037146 m!2479861))

(declare-fun m!2480007 () Bool)

(assert (=> b!2037147 m!2480007))

(declare-fun m!2480009 () Bool)

(assert (=> b!2037147 m!2480009))

(assert (=> b!2037147 m!2480007))

(assert (=> b!2037147 m!2480009))

(declare-fun m!2480011 () Bool)

(assert (=> b!2037147 m!2480011))

(assert (=> b!2036893 d!623587))

(declare-fun d!623589 () Bool)

(declare-fun lt!764879 () Int)

(assert (=> d!623589 (>= lt!764879 0)))

(declare-fun e!1286411 () Int)

(assert (=> d!623589 (= lt!764879 e!1286411)))

(declare-fun c!329925 () Bool)

(assert (=> d!623589 (= c!329925 ((_ is Nil!22271) (list!9124 (xs!10365 (left!17731 t!4319)))))))

(assert (=> d!623589 (= (size!17412 (list!9124 (xs!10365 (left!17731 t!4319)))) lt!764879)))

(declare-fun b!2037148 () Bool)

(assert (=> b!2037148 (= e!1286411 0)))

(declare-fun b!2037149 () Bool)

(assert (=> b!2037149 (= e!1286411 (+ 1 (size!17412 (t!191264 (list!9124 (xs!10365 (left!17731 t!4319)))))))))

(assert (= (and d!623589 c!329925) b!2037148))

(assert (= (and d!623589 (not c!329925)) b!2037149))

(declare-fun m!2480013 () Bool)

(assert (=> b!2037149 m!2480013))

(assert (=> d!623415 d!623589))

(declare-fun d!623591 () Bool)

(assert (=> d!623591 (= (list!9124 (xs!10365 (left!17731 t!4319))) (innerList!7523 (xs!10365 (left!17731 t!4319))))))

(assert (=> d!623415 d!623591))

(declare-fun d!623593 () Bool)

(assert (=> d!623593 (= (isEmpty!13922 (list!9123 (left!17731 t!4319))) ((_ is Nil!22271) (list!9123 (left!17731 t!4319))))))

(assert (=> d!623363 d!623593))

(assert (=> d!623363 d!623383))

(declare-fun d!623595 () Bool)

(declare-fun lt!764880 () Int)

(assert (=> d!623595 (= lt!764880 (size!17412 (list!9123 (left!17731 t!4319))))))

(assert (=> d!623595 (= lt!764880 (ite ((_ is Empty!7463) (left!17731 t!4319)) 0 (ite ((_ is Leaf!10936) (left!17731 t!4319)) (csize!15157 (left!17731 t!4319)) (csize!15156 (left!17731 t!4319)))))))

(assert (=> d!623595 (= (size!17414 (left!17731 t!4319)) lt!764880)))

(declare-fun bs!421374 () Bool)

(assert (= bs!421374 d!623595))

(assert (=> bs!421374 m!2479471))

(assert (=> bs!421374 m!2479471))

(assert (=> bs!421374 m!2479611))

(assert (=> d!623363 d!623595))

(declare-fun d!623597 () Bool)

(declare-fun c!329926 () Bool)

(assert (=> d!623597 (= c!329926 ((_ is Nil!22271) lt!764843))))

(declare-fun e!1286412 () (InoxSet T!35962))

(assert (=> d!623597 (= (content!3302 lt!764843) e!1286412)))

(declare-fun b!2037150 () Bool)

(assert (=> b!2037150 (= e!1286412 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037151 () Bool)

(assert (=> b!2037151 (= e!1286412 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 lt!764843) true) (content!3302 (t!191264 lt!764843))))))

(assert (= (and d!623597 c!329926) b!2037150))

(assert (= (and d!623597 (not c!329926)) b!2037151))

(declare-fun m!2480015 () Bool)

(assert (=> b!2037151 m!2480015))

(declare-fun m!2480017 () Bool)

(assert (=> b!2037151 m!2480017))

(assert (=> d!623381 d!623597))

(declare-fun d!623599 () Bool)

(declare-fun c!329927 () Bool)

(assert (=> d!623599 (= c!329927 ((_ is Nil!22271) (list!9123 (left!17731 t!4319))))))

(declare-fun e!1286413 () (InoxSet T!35962))

(assert (=> d!623599 (= (content!3302 (list!9123 (left!17731 t!4319))) e!1286413)))

(declare-fun b!2037152 () Bool)

(assert (=> b!2037152 (= e!1286413 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037153 () Bool)

(assert (=> b!2037153 (= e!1286413 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 (list!9123 (left!17731 t!4319))) true) (content!3302 (t!191264 (list!9123 (left!17731 t!4319))))))))

(assert (= (and d!623599 c!329927) b!2037152))

(assert (= (and d!623599 (not c!329927)) b!2037153))

(declare-fun m!2480019 () Bool)

(assert (=> b!2037153 m!2480019))

(declare-fun m!2480021 () Bool)

(assert (=> b!2037153 m!2480021))

(assert (=> d!623381 d!623599))

(declare-fun d!623601 () Bool)

(declare-fun c!329928 () Bool)

(assert (=> d!623601 (= c!329928 ((_ is Nil!22271) (list!9123 (right!18061 t!4319))))))

(declare-fun e!1286414 () (InoxSet T!35962))

(assert (=> d!623601 (= (content!3302 (list!9123 (right!18061 t!4319))) e!1286414)))

(declare-fun b!2037154 () Bool)

(assert (=> b!2037154 (= e!1286414 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037155 () Bool)

(assert (=> b!2037155 (= e!1286414 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 (list!9123 (right!18061 t!4319))) true) (content!3302 (t!191264 (list!9123 (right!18061 t!4319))))))))

(assert (= (and d!623601 c!329928) b!2037154))

(assert (= (and d!623601 (not c!329928)) b!2037155))

(declare-fun m!2480023 () Bool)

(assert (=> b!2037155 m!2480023))

(declare-fun m!2480025 () Bool)

(assert (=> b!2037155 m!2480025))

(assert (=> d!623381 d!623601))

(declare-fun d!623603 () Bool)

(declare-fun c!329929 () Bool)

(assert (=> d!623603 (= c!329929 ((_ is Nil!22271) lt!764845))))

(declare-fun e!1286415 () (InoxSet T!35962))

(assert (=> d!623603 (= (content!3302 lt!764845) e!1286415)))

(declare-fun b!2037156 () Bool)

(assert (=> b!2037156 (= e!1286415 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037157 () Bool)

(assert (=> b!2037157 (= e!1286415 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 lt!764845) true) (content!3302 (t!191264 lt!764845))))))

(assert (= (and d!623603 c!329929) b!2037156))

(assert (= (and d!623603 (not c!329929)) b!2037157))

(declare-fun m!2480027 () Bool)

(assert (=> b!2037157 m!2480027))

(declare-fun m!2480029 () Bool)

(assert (=> b!2037157 m!2480029))

(assert (=> b!2036902 d!623603))

(declare-fun d!623605 () Bool)

(declare-fun c!329930 () Bool)

(assert (=> d!623605 (= c!329930 ((_ is Nil!22271) (list!9124 (xs!10365 t!4319))))))

(declare-fun e!1286416 () (InoxSet T!35962))

(assert (=> d!623605 (= (content!3302 (list!9124 (xs!10365 t!4319))) e!1286416)))

(declare-fun b!2037158 () Bool)

(assert (=> b!2037158 (= e!1286416 ((as const (Array T!35962 Bool)) false))))

(declare-fun b!2037159 () Bool)

(assert (=> b!2037159 (= e!1286416 ((_ map or) (store ((as const (Array T!35962 Bool)) false) (h!27672 (list!9124 (xs!10365 t!4319))) true) (content!3302 (t!191264 (list!9124 (xs!10365 t!4319))))))))

(assert (= (and d!623605 c!329930) b!2037158))

(assert (= (and d!623605 (not c!329930)) b!2037159))

(declare-fun m!2480031 () Bool)

(assert (=> b!2037159 m!2480031))

(assert (=> b!2037159 m!2479853))

(assert (=> b!2036902 d!623605))

(declare-fun d!623607 () Bool)

(declare-fun lt!764881 () Bool)

(assert (=> d!623607 (= lt!764881 (isEmpty!13922 (list!9123 (left!17731 (right!18061 t!4319)))))))

(assert (=> d!623607 (= lt!764881 (= (size!17414 (left!17731 (right!18061 t!4319))) 0))))

(assert (=> d!623607 (= (isEmpty!13921 (left!17731 (right!18061 t!4319))) lt!764881)))

(declare-fun bs!421375 () Bool)

(assert (= bs!421375 d!623607))

(assert (=> bs!421375 m!2479623))

(assert (=> bs!421375 m!2479623))

(declare-fun m!2480033 () Bool)

(assert (=> bs!421375 m!2480033))

(assert (=> bs!421375 m!2479527))

(assert (=> b!2036837 d!623607))

(declare-fun b!2037160 () Bool)

(declare-fun e!1286419 () List!22353)

(assert (=> b!2037160 (= e!1286419 Nil!22271)))

(declare-fun b!2037161 () Bool)

(declare-fun e!1286417 () List!22353)

(declare-fun call!124944 () List!22353)

(assert (=> b!2037161 (= e!1286417 call!124944)))

(declare-fun bm!124939 () Bool)

(assert (=> bm!124939 (= call!124944 (filter!464 (t!191264 (t!191264 (t!191264 (list!9123 t!4319)))) p!1489))))

(declare-fun b!2037162 () Bool)

(declare-fun res!893204 () Bool)

(declare-fun e!1286418 () Bool)

(assert (=> b!2037162 (=> (not res!893204) (not e!1286418))))

(declare-fun lt!764882 () List!22353)

(assert (=> b!2037162 (= res!893204 (= ((_ map implies) (content!3302 lt!764882) (content!3302 (t!191264 (t!191264 (list!9123 t!4319))))) ((as const (InoxSet T!35962)) true)))))

(declare-fun b!2037163 () Bool)

(assert (=> b!2037163 (= e!1286419 e!1286417)))

(declare-fun c!329932 () Bool)

(assert (=> b!2037163 (= c!329932 (dynLambda!11099 p!1489 (h!27672 (t!191264 (t!191264 (list!9123 t!4319))))))))

(declare-fun d!623609 () Bool)

(assert (=> d!623609 e!1286418))

(declare-fun res!893203 () Bool)

(assert (=> d!623609 (=> (not res!893203) (not e!1286418))))

(assert (=> d!623609 (= res!893203 (<= (size!17412 lt!764882) (size!17412 (t!191264 (t!191264 (list!9123 t!4319))))))))

(assert (=> d!623609 (= lt!764882 e!1286419)))

(declare-fun c!329931 () Bool)

(assert (=> d!623609 (= c!329931 ((_ is Nil!22271) (t!191264 (t!191264 (list!9123 t!4319)))))))

(assert (=> d!623609 (= (filter!464 (t!191264 (t!191264 (list!9123 t!4319))) p!1489) lt!764882)))

(declare-fun b!2037164 () Bool)

(assert (=> b!2037164 (= e!1286417 (Cons!22271 (h!27672 (t!191264 (t!191264 (list!9123 t!4319)))) call!124944))))

(declare-fun b!2037165 () Bool)

(assert (=> b!2037165 (= e!1286418 (forall!4750 lt!764882 p!1489))))

(assert (= (and d!623609 c!329931) b!2037160))

(assert (= (and d!623609 (not c!329931)) b!2037163))

(assert (= (and b!2037163 c!329932) b!2037164))

(assert (= (and b!2037163 (not c!329932)) b!2037161))

(assert (= (or b!2037164 b!2037161) bm!124939))

(assert (= (and d!623609 res!893203) b!2037162))

(assert (= (and b!2037162 res!893204) b!2037165))

(declare-fun b_lambda!68795 () Bool)

(assert (=> (not b_lambda!68795) (not b!2037163)))

(declare-fun t!191297 () Bool)

(declare-fun tb!128855 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191297) tb!128855))

(declare-fun result!154142 () Bool)

(assert (=> tb!128855 (= result!154142 true)))

(assert (=> b!2037163 t!191297))

(declare-fun b_and!162631 () Bool)

(assert (= b_and!162629 (and (=> t!191297 result!154142) b_and!162631)))

(declare-fun m!2480035 () Bool)

(assert (=> d!623609 m!2480035))

(assert (=> d!623609 m!2479933))

(declare-fun m!2480037 () Bool)

(assert (=> b!2037165 m!2480037))

(declare-fun m!2480039 () Bool)

(assert (=> b!2037163 m!2480039))

(declare-fun m!2480041 () Bool)

(assert (=> bm!124939 m!2480041))

(declare-fun m!2480043 () Bool)

(assert (=> b!2037162 m!2480043))

(assert (=> b!2037162 m!2479887))

(assert (=> bm!124934 d!623609))

(assert (=> b!2036913 d!623589))

(assert (=> b!2036913 d!623591))

(declare-fun d!623611 () Bool)

(declare-fun lt!764883 () Int)

(assert (=> d!623611 (>= lt!764883 0)))

(declare-fun e!1286420 () Int)

(assert (=> d!623611 (= lt!764883 e!1286420)))

(declare-fun c!329933 () Bool)

(assert (=> d!623611 (= c!329933 ((_ is Nil!22271) (t!191264 lt!764830)))))

(assert (=> d!623611 (= (size!17412 (t!191264 lt!764830)) lt!764883)))

(declare-fun b!2037166 () Bool)

(assert (=> b!2037166 (= e!1286420 0)))

(declare-fun b!2037167 () Bool)

(assert (=> b!2037167 (= e!1286420 (+ 1 (size!17412 (t!191264 (t!191264 lt!764830)))))))

(assert (= (and d!623611 c!329933) b!2037166))

(assert (= (and d!623611 (not c!329933)) b!2037167))

(declare-fun m!2480045 () Bool)

(assert (=> b!2037167 m!2480045))

(assert (=> b!2036806 d!623611))

(assert (=> b!2036793 d!623339))

(assert (=> b!2036793 d!623341))

(declare-fun d!623613 () Bool)

(declare-fun res!893205 () Bool)

(declare-fun e!1286421 () Bool)

(assert (=> d!623613 (=> res!893205 e!1286421)))

(assert (=> d!623613 (= res!893205 ((_ is Nil!22271) lt!764838))))

(assert (=> d!623613 (= (forall!4750 lt!764838 p!1489) e!1286421)))

(declare-fun b!2037168 () Bool)

(declare-fun e!1286422 () Bool)

(assert (=> b!2037168 (= e!1286421 e!1286422)))

(declare-fun res!893206 () Bool)

(assert (=> b!2037168 (=> (not res!893206) (not e!1286422))))

(assert (=> b!2037168 (= res!893206 (dynLambda!11099 p!1489 (h!27672 lt!764838)))))

(declare-fun b!2037169 () Bool)

(assert (=> b!2037169 (= e!1286422 (forall!4750 (t!191264 lt!764838) p!1489))))

(assert (= (and d!623613 (not res!893205)) b!2037168))

(assert (= (and b!2037168 res!893206) b!2037169))

(declare-fun b_lambda!68797 () Bool)

(assert (=> (not b_lambda!68797) (not b!2037168)))

(declare-fun t!191299 () Bool)

(declare-fun tb!128857 () Bool)

(assert (=> (and start!200656 (= p!1489 p!1489) t!191299) tb!128857))

(declare-fun result!154144 () Bool)

(assert (=> tb!128857 (= result!154144 true)))

(assert (=> b!2037168 t!191299))

(declare-fun b_and!162633 () Bool)

(assert (= b_and!162631 (and (=> t!191299 result!154144) b_and!162633)))

(declare-fun m!2480047 () Bool)

(assert (=> b!2037168 m!2480047))

(declare-fun m!2480049 () Bool)

(assert (=> b!2037169 m!2480049))

(assert (=> b!2036844 d!623613))

(declare-fun d!623615 () Bool)

(declare-fun lt!764884 () Int)

(assert (=> d!623615 (>= lt!764884 0)))

(declare-fun e!1286423 () Int)

(assert (=> d!623615 (= lt!764884 e!1286423)))

(declare-fun c!329934 () Bool)

(assert (=> d!623615 (= c!329934 ((_ is Nil!22271) lt!764845))))

(assert (=> d!623615 (= (size!17412 lt!764845) lt!764884)))

(declare-fun b!2037170 () Bool)

(assert (=> b!2037170 (= e!1286423 0)))

(declare-fun b!2037171 () Bool)

(assert (=> b!2037171 (= e!1286423 (+ 1 (size!17412 (t!191264 lt!764845))))))

(assert (= (and d!623615 c!329934) b!2037170))

(assert (= (and d!623615 (not c!329934)) b!2037171))

(declare-fun m!2480051 () Bool)

(assert (=> b!2037171 m!2480051))

(assert (=> d!623397 d!623615))

(declare-fun d!623617 () Bool)

(declare-fun lt!764885 () Int)

(assert (=> d!623617 (>= lt!764885 0)))

(declare-fun e!1286424 () Int)

(assert (=> d!623617 (= lt!764885 e!1286424)))

(declare-fun c!329935 () Bool)

(assert (=> d!623617 (= c!329935 ((_ is Nil!22271) (list!9124 (xs!10365 t!4319))))))

(assert (=> d!623617 (= (size!17412 (list!9124 (xs!10365 t!4319))) lt!764885)))

(declare-fun b!2037172 () Bool)

(assert (=> b!2037172 (= e!1286424 0)))

(declare-fun b!2037173 () Bool)

(assert (=> b!2037173 (= e!1286424 (+ 1 (size!17412 (t!191264 (list!9124 (xs!10365 t!4319))))))))

(assert (= (and d!623617 c!329935) b!2037172))

(assert (= (and d!623617 (not c!329935)) b!2037173))

(assert (=> b!2037173 m!2479843))

(assert (=> d!623397 d!623617))

(declare-fun d!623619 () Bool)

(declare-fun lt!764886 () Int)

(assert (=> d!623619 (>= lt!764886 0)))

(declare-fun e!1286425 () Int)

(assert (=> d!623619 (= lt!764886 e!1286425)))

(declare-fun c!329936 () Bool)

(assert (=> d!623619 (= c!329936 ((_ is Nil!22271) (innerList!7523 (xs!10365 (right!18061 t!4319)))))))

(assert (=> d!623619 (= (size!17412 (innerList!7523 (xs!10365 (right!18061 t!4319)))) lt!764886)))

(declare-fun b!2037174 () Bool)

(assert (=> b!2037174 (= e!1286425 0)))

(declare-fun b!2037175 () Bool)

(assert (=> b!2037175 (= e!1286425 (+ 1 (size!17412 (t!191264 (innerList!7523 (xs!10365 (right!18061 t!4319)))))))))

(assert (= (and d!623619 c!329936) b!2037174))

(assert (= (and d!623619 (not c!329936)) b!2037175))

(declare-fun m!2480053 () Bool)

(assert (=> b!2037175 m!2480053))

(assert (=> d!623337 d!623619))

(assert (=> d!623401 d!623397))

(assert (=> d!623401 d!623395))

(declare-fun d!623621 () Bool)

(assert (=> d!623621 (= (inv!29549 _$11!1062) (<= (size!17412 (innerList!7523 _$11!1062)) 2147483647))))

(declare-fun bs!421376 () Bool)

(assert (= bs!421376 d!623621))

(declare-fun m!2480055 () Bool)

(assert (=> bs!421376 m!2480055))

(assert (=> d!623401 d!623621))

(declare-fun d!623623 () Bool)

(declare-fun res!893207 () Bool)

(declare-fun e!1286426 () Bool)

(assert (=> d!623623 (=> (not res!893207) (not e!1286426))))

(assert (=> d!623623 (= res!893207 (= (csize!15156 (right!18061 (right!18061 t!4319))) (+ (size!17414 (left!17731 (right!18061 (right!18061 t!4319)))) (size!17414 (right!18061 (right!18061 (right!18061 t!4319)))))))))

(assert (=> d!623623 (= (inv!29553 (right!18061 (right!18061 t!4319))) e!1286426)))

(declare-fun b!2037176 () Bool)

(declare-fun res!893208 () Bool)

(assert (=> b!2037176 (=> (not res!893208) (not e!1286426))))

(assert (=> b!2037176 (= res!893208 (and (not (= (left!17731 (right!18061 (right!18061 t!4319))) Empty!7463)) (not (= (right!18061 (right!18061 (right!18061 t!4319))) Empty!7463))))))

(declare-fun b!2037177 () Bool)

(declare-fun res!893209 () Bool)

(assert (=> b!2037177 (=> (not res!893209) (not e!1286426))))

(assert (=> b!2037177 (= res!893209 (= (cheight!7674 (right!18061 (right!18061 t!4319))) (+ (max!0 (height!1163 (left!17731 (right!18061 (right!18061 t!4319)))) (height!1163 (right!18061 (right!18061 (right!18061 t!4319))))) 1)))))

(declare-fun b!2037178 () Bool)

(assert (=> b!2037178 (= e!1286426 (<= 0 (cheight!7674 (right!18061 (right!18061 t!4319)))))))

(assert (= (and d!623623 res!893207) b!2037176))

(assert (= (and b!2037176 res!893208) b!2037177))

(assert (= (and b!2037177 res!893209) b!2037178))

(declare-fun m!2480057 () Bool)

(assert (=> d!623623 m!2480057))

(declare-fun m!2480059 () Bool)

(assert (=> d!623623 m!2480059))

(assert (=> b!2037177 m!2479867))

(assert (=> b!2037177 m!2479869))

(assert (=> b!2037177 m!2479867))

(assert (=> b!2037177 m!2479869))

(declare-fun m!2480061 () Bool)

(assert (=> b!2037177 m!2480061))

(assert (=> b!2036812 d!623623))

(declare-fun d!623625 () Bool)

(assert (=> d!623625 (= (inv!29549 (xs!10365 (right!18061 (left!17731 t!4319)))) (<= (size!17412 (innerList!7523 (xs!10365 (right!18061 (left!17731 t!4319))))) 2147483647))))

(declare-fun bs!421377 () Bool)

(assert (= bs!421377 d!623625))

(declare-fun m!2480063 () Bool)

(assert (=> bs!421377 m!2480063))

(assert (=> b!2036930 d!623625))

(declare-fun d!623627 () Bool)

(declare-fun lt!764887 () Int)

(assert (=> d!623627 (= lt!764887 (size!17412 (list!9123 (left!17731 (left!17731 t!4319)))))))

(assert (=> d!623627 (= lt!764887 (ite ((_ is Empty!7463) (left!17731 (left!17731 t!4319))) 0 (ite ((_ is Leaf!10936) (left!17731 (left!17731 t!4319))) (csize!15157 (left!17731 (left!17731 t!4319))) (csize!15156 (left!17731 (left!17731 t!4319))))))))

(assert (=> d!623627 (= (size!17414 (left!17731 (left!17731 t!4319))) lt!764887)))

(declare-fun bs!421378 () Bool)

(assert (= bs!421378 d!623627))

(assert (=> bs!421378 m!2479617))

(assert (=> bs!421378 m!2479617))

(assert (=> bs!421378 m!2479997))

(assert (=> d!623377 d!623627))

(declare-fun d!623629 () Bool)

(declare-fun lt!764888 () Int)

(assert (=> d!623629 (= lt!764888 (size!17412 (list!9123 (right!18061 (left!17731 t!4319)))))))

(assert (=> d!623629 (= lt!764888 (ite ((_ is Empty!7463) (right!18061 (left!17731 t!4319))) 0 (ite ((_ is Leaf!10936) (right!18061 (left!17731 t!4319))) (csize!15157 (right!18061 (left!17731 t!4319))) (csize!15156 (right!18061 (left!17731 t!4319))))))))

(assert (=> d!623629 (= (size!17414 (right!18061 (left!17731 t!4319))) lt!764888)))

(declare-fun bs!421379 () Bool)

(assert (= bs!421379 d!623629))

(assert (=> bs!421379 m!2479619))

(assert (=> bs!421379 m!2479619))

(assert (=> bs!421379 m!2479999))

(assert (=> d!623377 d!623629))

(assert (=> d!623361 d!623617))

(assert (=> d!623361 d!623395))

(declare-fun d!623631 () Bool)

(declare-fun res!893210 () Bool)

(declare-fun e!1286427 () Bool)

(assert (=> d!623631 (=> (not res!893210) (not e!1286427))))

(assert (=> d!623631 (= res!893210 (<= (size!17412 (list!9124 (xs!10365 (right!18061 (right!18061 t!4319))))) 512))))

(assert (=> d!623631 (= (inv!29554 (right!18061 (right!18061 t!4319))) e!1286427)))

(declare-fun b!2037179 () Bool)

(declare-fun res!893211 () Bool)

(assert (=> b!2037179 (=> (not res!893211) (not e!1286427))))

(assert (=> b!2037179 (= res!893211 (= (csize!15157 (right!18061 (right!18061 t!4319))) (size!17412 (list!9124 (xs!10365 (right!18061 (right!18061 t!4319)))))))))

(declare-fun b!2037180 () Bool)

(assert (=> b!2037180 (= e!1286427 (and (> (csize!15157 (right!18061 (right!18061 t!4319))) 0) (<= (csize!15157 (right!18061 (right!18061 t!4319))) 512)))))

(assert (= (and d!623631 res!893210) b!2037179))

(assert (= (and b!2037179 res!893211) b!2037180))

(declare-fun m!2480065 () Bool)

(assert (=> d!623631 m!2480065))

(assert (=> d!623631 m!2480065))

(declare-fun m!2480067 () Bool)

(assert (=> d!623631 m!2480067))

(assert (=> b!2037179 m!2480065))

(assert (=> b!2037179 m!2480065))

(assert (=> b!2037179 m!2480067))

(assert (=> b!2036814 d!623631))

(declare-fun b!2037181 () Bool)

(declare-fun e!1286428 () List!22353)

(assert (=> b!2037181 (= e!1286428 (list!9123 (right!18061 t!4319)))))

(declare-fun d!623633 () Bool)

(declare-fun e!1286429 () Bool)

(assert (=> d!623633 e!1286429))

(declare-fun res!893212 () Bool)

(assert (=> d!623633 (=> (not res!893212) (not e!1286429))))

(declare-fun lt!764889 () List!22353)

(assert (=> d!623633 (= res!893212 (= (content!3302 lt!764889) ((_ map or) (content!3302 (t!191264 (list!9123 (left!17731 t!4319)))) (content!3302 (list!9123 (right!18061 t!4319))))))))

(assert (=> d!623633 (= lt!764889 e!1286428)))

(declare-fun c!329937 () Bool)

(assert (=> d!623633 (= c!329937 ((_ is Nil!22271) (t!191264 (list!9123 (left!17731 t!4319)))))))

(assert (=> d!623633 (= (++!6045 (t!191264 (list!9123 (left!17731 t!4319))) (list!9123 (right!18061 t!4319))) lt!764889)))

(declare-fun b!2037182 () Bool)

(assert (=> b!2037182 (= e!1286428 (Cons!22271 (h!27672 (t!191264 (list!9123 (left!17731 t!4319)))) (++!6045 (t!191264 (t!191264 (list!9123 (left!17731 t!4319)))) (list!9123 (right!18061 t!4319)))))))

(declare-fun b!2037183 () Bool)

(declare-fun res!893213 () Bool)

(assert (=> b!2037183 (=> (not res!893213) (not e!1286429))))

(assert (=> b!2037183 (= res!893213 (= (size!17412 lt!764889) (+ (size!17412 (t!191264 (list!9123 (left!17731 t!4319)))) (size!17412 (list!9123 (right!18061 t!4319))))))))

(declare-fun b!2037184 () Bool)

(assert (=> b!2037184 (= e!1286429 (or (not (= (list!9123 (right!18061 t!4319)) Nil!22271)) (= lt!764889 (t!191264 (list!9123 (left!17731 t!4319))))))))

(assert (= (and d!623633 c!329937) b!2037181))

(assert (= (and d!623633 (not c!329937)) b!2037182))

(assert (= (and d!623633 res!893212) b!2037183))

(assert (= (and b!2037183 res!893213) b!2037184))

(declare-fun m!2480069 () Bool)

(assert (=> d!623633 m!2480069))

(assert (=> d!623633 m!2480021))

(assert (=> d!623633 m!2479473))

(assert (=> d!623633 m!2479605))

(assert (=> b!2037182 m!2479473))

(declare-fun m!2480071 () Bool)

(assert (=> b!2037182 m!2480071))

(declare-fun m!2480073 () Bool)

(assert (=> b!2037183 m!2480073))

(assert (=> b!2037183 m!2479953))

(assert (=> b!2037183 m!2479473))

(assert (=> b!2037183 m!2479613))

(assert (=> b!2036887 d!623633))

(assert (=> b!2036816 d!623549))

(assert (=> b!2036816 d!623551))

(declare-fun d!623635 () Bool)

(declare-fun lt!764890 () Bool)

(assert (=> d!623635 (= lt!764890 (isEmpty!13922 (list!9123 (right!18061 (left!17731 t!4319)))))))

(assert (=> d!623635 (= lt!764890 (= (size!17414 (right!18061 (left!17731 t!4319))) 0))))

(assert (=> d!623635 (= (isEmpty!13921 (right!18061 (left!17731 t!4319))) lt!764890)))

(declare-fun bs!421380 () Bool)

(assert (= bs!421380 d!623635))

(assert (=> bs!421380 m!2479619))

(assert (=> bs!421380 m!2479619))

(declare-fun m!2480075 () Bool)

(assert (=> bs!421380 m!2480075))

(assert (=> bs!421380 m!2479593))

(assert (=> b!2036818 d!623635))

(declare-fun d!623637 () Bool)

(assert (=> d!623637 (= (max!0 (height!1163 (left!17731 (left!17731 t!4319))) (height!1163 (right!18061 (left!17731 t!4319)))) (ite (< (height!1163 (left!17731 (left!17731 t!4319))) (height!1163 (right!18061 (left!17731 t!4319)))) (height!1163 (right!18061 (left!17731 t!4319))) (height!1163 (left!17731 (left!17731 t!4319)))))))

(assert (=> b!2036870 d!623637))

(assert (=> b!2036870 d!623549))

(assert (=> b!2036870 d!623551))

(declare-fun b!2037185 () Bool)

(declare-fun e!1286430 () List!22353)

(assert (=> b!2037185 (= e!1286430 (list!9123 (right!18061 (right!18061 t!4319))))))

(declare-fun d!623639 () Bool)

(declare-fun e!1286431 () Bool)

(assert (=> d!623639 e!1286431))

(declare-fun res!893214 () Bool)

(assert (=> d!623639 (=> (not res!893214) (not e!1286431))))

(declare-fun lt!764891 () List!22353)

(assert (=> d!623639 (= res!893214 (= (content!3302 lt!764891) ((_ map or) (content!3302 (list!9123 (left!17731 (right!18061 t!4319)))) (content!3302 (list!9123 (right!18061 (right!18061 t!4319)))))))))

(assert (=> d!623639 (= lt!764891 e!1286430)))

(declare-fun c!329938 () Bool)

(assert (=> d!623639 (= c!329938 ((_ is Nil!22271) (list!9123 (left!17731 (right!18061 t!4319)))))))

(assert (=> d!623639 (= (++!6045 (list!9123 (left!17731 (right!18061 t!4319))) (list!9123 (right!18061 (right!18061 t!4319)))) lt!764891)))

(declare-fun b!2037186 () Bool)

(assert (=> b!2037186 (= e!1286430 (Cons!22271 (h!27672 (list!9123 (left!17731 (right!18061 t!4319)))) (++!6045 (t!191264 (list!9123 (left!17731 (right!18061 t!4319)))) (list!9123 (right!18061 (right!18061 t!4319))))))))

(declare-fun b!2037187 () Bool)

(declare-fun res!893215 () Bool)

(assert (=> b!2037187 (=> (not res!893215) (not e!1286431))))

(assert (=> b!2037187 (= res!893215 (= (size!17412 lt!764891) (+ (size!17412 (list!9123 (left!17731 (right!18061 t!4319)))) (size!17412 (list!9123 (right!18061 (right!18061 t!4319)))))))))

(declare-fun b!2037188 () Bool)

(assert (=> b!2037188 (= e!1286431 (or (not (= (list!9123 (right!18061 (right!18061 t!4319))) Nil!22271)) (= lt!764891 (list!9123 (left!17731 (right!18061 t!4319))))))))

(assert (= (and d!623639 c!329938) b!2037185))

(assert (= (and d!623639 (not c!329938)) b!2037186))

(assert (= (and d!623639 res!893214) b!2037187))

(assert (= (and b!2037187 res!893215) b!2037188))

(declare-fun m!2480077 () Bool)

(assert (=> d!623639 m!2480077))

(assert (=> d!623639 m!2479623))

(declare-fun m!2480079 () Bool)

(assert (=> d!623639 m!2480079))

(assert (=> d!623639 m!2479625))

(declare-fun m!2480081 () Bool)

(assert (=> d!623639 m!2480081))

(assert (=> b!2037186 m!2479625))

(declare-fun m!2480083 () Bool)

(assert (=> b!2037186 m!2480083))

(declare-fun m!2480085 () Bool)

(assert (=> b!2037187 m!2480085))

(assert (=> b!2037187 m!2479623))

(assert (=> b!2037187 m!2479915))

(assert (=> b!2037187 m!2479625))

(assert (=> b!2037187 m!2479917))

(assert (=> b!2036897 d!623639))

(declare-fun b!2037191 () Bool)

(declare-fun e!1286433 () List!22353)

(assert (=> b!2037191 (= e!1286433 (list!9124 (xs!10365 (left!17731 (right!18061 t!4319)))))))

(declare-fun d!623641 () Bool)

(declare-fun c!329939 () Bool)

(assert (=> d!623641 (= c!329939 ((_ is Empty!7463) (left!17731 (right!18061 t!4319))))))

(declare-fun e!1286432 () List!22353)

(assert (=> d!623641 (= (list!9123 (left!17731 (right!18061 t!4319))) e!1286432)))

(declare-fun b!2037190 () Bool)

(assert (=> b!2037190 (= e!1286432 e!1286433)))

(declare-fun c!329940 () Bool)

(assert (=> b!2037190 (= c!329940 ((_ is Leaf!10936) (left!17731 (right!18061 t!4319))))))

(declare-fun b!2037192 () Bool)

(assert (=> b!2037192 (= e!1286433 (++!6045 (list!9123 (left!17731 (left!17731 (right!18061 t!4319)))) (list!9123 (right!18061 (left!17731 (right!18061 t!4319))))))))

(declare-fun b!2037189 () Bool)

(assert (=> b!2037189 (= e!1286432 Nil!22271)))

(assert (= (and d!623641 c!329939) b!2037189))

(assert (= (and d!623641 (not c!329939)) b!2037190))

(assert (= (and b!2037190 c!329940) b!2037191))

(assert (= (and b!2037190 (not c!329940)) b!2037192))

(assert (=> b!2037191 m!2479855))

(declare-fun m!2480087 () Bool)

(assert (=> b!2037192 m!2480087))

(declare-fun m!2480089 () Bool)

(assert (=> b!2037192 m!2480089))

(assert (=> b!2037192 m!2480087))

(assert (=> b!2037192 m!2480089))

(declare-fun m!2480091 () Bool)

(assert (=> b!2037192 m!2480091))

(assert (=> b!2036897 d!623641))

(declare-fun b!2037195 () Bool)

(declare-fun e!1286435 () List!22353)

(assert (=> b!2037195 (= e!1286435 (list!9124 (xs!10365 (right!18061 (right!18061 t!4319)))))))

(declare-fun d!623643 () Bool)

(declare-fun c!329941 () Bool)

(assert (=> d!623643 (= c!329941 ((_ is Empty!7463) (right!18061 (right!18061 t!4319))))))

(declare-fun e!1286434 () List!22353)

(assert (=> d!623643 (= (list!9123 (right!18061 (right!18061 t!4319))) e!1286434)))

(declare-fun b!2037194 () Bool)

(assert (=> b!2037194 (= e!1286434 e!1286435)))

(declare-fun c!329942 () Bool)

(assert (=> b!2037194 (= c!329942 ((_ is Leaf!10936) (right!18061 (right!18061 t!4319))))))

(declare-fun b!2037196 () Bool)

(assert (=> b!2037196 (= e!1286435 (++!6045 (list!9123 (left!17731 (right!18061 (right!18061 t!4319)))) (list!9123 (right!18061 (right!18061 (right!18061 t!4319))))))))

(declare-fun b!2037193 () Bool)

(assert (=> b!2037193 (= e!1286434 Nil!22271)))

(assert (= (and d!623643 c!329941) b!2037193))

(assert (= (and d!623643 (not c!329941)) b!2037194))

(assert (= (and b!2037194 c!329942) b!2037195))

(assert (= (and b!2037194 (not c!329942)) b!2037196))

(assert (=> b!2037195 m!2480065))

(declare-fun m!2480093 () Bool)

(assert (=> b!2037196 m!2480093))

(declare-fun m!2480095 () Bool)

(assert (=> b!2037196 m!2480095))

(assert (=> b!2037196 m!2480093))

(assert (=> b!2037196 m!2480095))

(declare-fun m!2480097 () Bool)

(assert (=> b!2037196 m!2480097))

(assert (=> b!2036897 d!623643))

(assert (=> b!2036851 d!623617))

(assert (=> b!2036851 d!623395))

(declare-fun d!623645 () Bool)

(assert (=> d!623645 (= (inv!29549 (xs!10365 (left!17731 (left!17731 t!4319)))) (<= (size!17412 (innerList!7523 (xs!10365 (left!17731 (left!17731 t!4319))))) 2147483647))))

(declare-fun bs!421381 () Bool)

(assert (= bs!421381 d!623645))

(declare-fun m!2480099 () Bool)

(assert (=> bs!421381 m!2480099))

(assert (=> b!2036927 d!623645))

(declare-fun d!623647 () Bool)

(assert (=> d!623647 (= (inv!29549 (xs!10365 (right!18061 (right!18061 t!4319)))) (<= (size!17412 (innerList!7523 (xs!10365 (right!18061 (right!18061 t!4319))))) 2147483647))))

(declare-fun bs!421382 () Bool)

(assert (= bs!421382 d!623647))

(declare-fun m!2480101 () Bool)

(assert (=> bs!421382 m!2480101))

(assert (=> b!2036923 d!623647))

(assert (=> d!623353 d!623595))

(assert (=> d!623353 d!623511))

(declare-fun d!623649 () Bool)

(declare-fun res!893216 () Bool)

(declare-fun e!1286436 () Bool)

(assert (=> d!623649 (=> (not res!893216) (not e!1286436))))

(assert (=> d!623649 (= res!893216 (= (csize!15156 (left!17731 (right!18061 t!4319))) (+ (size!17414 (left!17731 (left!17731 (right!18061 t!4319)))) (size!17414 (right!18061 (left!17731 (right!18061 t!4319)))))))))

(assert (=> d!623649 (= (inv!29553 (left!17731 (right!18061 t!4319))) e!1286436)))

(declare-fun b!2037197 () Bool)

(declare-fun res!893217 () Bool)

(assert (=> b!2037197 (=> (not res!893217) (not e!1286436))))

(assert (=> b!2037197 (= res!893217 (and (not (= (left!17731 (left!17731 (right!18061 t!4319))) Empty!7463)) (not (= (right!18061 (left!17731 (right!18061 t!4319))) Empty!7463))))))

(declare-fun b!2037198 () Bool)

(declare-fun res!893218 () Bool)

(assert (=> b!2037198 (=> (not res!893218) (not e!1286436))))

(assert (=> b!2037198 (= res!893218 (= (cheight!7674 (left!17731 (right!18061 t!4319))) (+ (max!0 (height!1163 (left!17731 (left!17731 (right!18061 t!4319)))) (height!1163 (right!18061 (left!17731 (right!18061 t!4319))))) 1)))))

(declare-fun b!2037199 () Bool)

(assert (=> b!2037199 (= e!1286436 (<= 0 (cheight!7674 (left!17731 (right!18061 t!4319)))))))

(assert (= (and d!623649 res!893216) b!2037197))

(assert (= (and b!2037197 res!893217) b!2037198))

(assert (= (and b!2037198 res!893218) b!2037199))

(declare-fun m!2480103 () Bool)

(assert (=> d!623649 m!2480103))

(declare-fun m!2480105 () Bool)

(assert (=> d!623649 m!2480105))

(assert (=> b!2037198 m!2479977))

(assert (=> b!2037198 m!2479979))

(assert (=> b!2037198 m!2479977))

(assert (=> b!2037198 m!2479979))

(declare-fun m!2480107 () Bool)

(assert (=> b!2037198 m!2480107))

(assert (=> b!2036809 d!623649))

(assert (=> b!2036834 d!623555))

(assert (=> b!2036834 d!623557))

(declare-fun d!623651 () Bool)

(declare-fun res!893219 () Bool)

(declare-fun e!1286437 () Bool)

(assert (=> d!623651 (=> (not res!893219) (not e!1286437))))

(assert (=> d!623651 (= res!893219 (= (csize!15156 (right!18061 (left!17731 t!4319))) (+ (size!17414 (left!17731 (right!18061 (left!17731 t!4319)))) (size!17414 (right!18061 (right!18061 (left!17731 t!4319)))))))))

(assert (=> d!623651 (= (inv!29553 (right!18061 (left!17731 t!4319))) e!1286437)))

(declare-fun b!2037200 () Bool)

(declare-fun res!893220 () Bool)

(assert (=> b!2037200 (=> (not res!893220) (not e!1286437))))

(assert (=> b!2037200 (= res!893220 (and (not (= (left!17731 (right!18061 (left!17731 t!4319))) Empty!7463)) (not (= (right!18061 (right!18061 (left!17731 t!4319))) Empty!7463))))))

(declare-fun b!2037201 () Bool)

(declare-fun res!893221 () Bool)

(assert (=> b!2037201 (=> (not res!893221) (not e!1286437))))

(assert (=> b!2037201 (= res!893221 (= (cheight!7674 (right!18061 (left!17731 t!4319))) (+ (max!0 (height!1163 (left!17731 (right!18061 (left!17731 t!4319)))) (height!1163 (right!18061 (right!18061 (left!17731 t!4319))))) 1)))))

(declare-fun b!2037202 () Bool)

(assert (=> b!2037202 (= e!1286437 (<= 0 (cheight!7674 (right!18061 (left!17731 t!4319)))))))

(assert (= (and d!623651 res!893219) b!2037200))

(assert (= (and b!2037200 res!893220) b!2037201))

(assert (= (and b!2037201 res!893221) b!2037202))

(declare-fun m!2480109 () Bool)

(assert (=> d!623651 m!2480109))

(declare-fun m!2480111 () Bool)

(assert (=> d!623651 m!2480111))

(declare-fun m!2480113 () Bool)

(assert (=> b!2037201 m!2480113))

(declare-fun m!2480115 () Bool)

(assert (=> b!2037201 m!2480115))

(assert (=> b!2037201 m!2480113))

(assert (=> b!2037201 m!2480115))

(declare-fun m!2480117 () Bool)

(assert (=> b!2037201 m!2480117))

(assert (=> b!2036866 d!623651))

(assert (=> b!2036892 d!623591))

(declare-fun b!2037203 () Bool)

(declare-fun e!1286439 () Bool)

(declare-fun e!1286438 () Bool)

(assert (=> b!2037203 (= e!1286439 e!1286438)))

(declare-fun res!893222 () Bool)

(assert (=> b!2037203 (=> (not res!893222) (not e!1286438))))

(assert (=> b!2037203 (= res!893222 (<= (- 1) (- (height!1163 (left!17731 (right!18061 (left!17731 t!4319)))) (height!1163 (right!18061 (right!18061 (left!17731 t!4319)))))))))

(declare-fun b!2037205 () Bool)

(declare-fun res!893227 () Bool)

(assert (=> b!2037205 (=> (not res!893227) (not e!1286438))))

(assert (=> b!2037205 (= res!893227 (isBalanced!2341 (left!17731 (right!18061 (left!17731 t!4319)))))))

(declare-fun b!2037206 () Bool)

(assert (=> b!2037206 (= e!1286438 (not (isEmpty!13921 (right!18061 (right!18061 (left!17731 t!4319))))))))

(declare-fun b!2037207 () Bool)

(declare-fun res!893226 () Bool)

(assert (=> b!2037207 (=> (not res!893226) (not e!1286438))))

(assert (=> b!2037207 (= res!893226 (not (isEmpty!13921 (left!17731 (right!18061 (left!17731 t!4319))))))))

(declare-fun b!2037208 () Bool)

(declare-fun res!893224 () Bool)

(assert (=> b!2037208 (=> (not res!893224) (not e!1286438))))

(assert (=> b!2037208 (= res!893224 (isBalanced!2341 (right!18061 (right!18061 (left!17731 t!4319)))))))

(declare-fun b!2037204 () Bool)

(declare-fun res!893225 () Bool)

(assert (=> b!2037204 (=> (not res!893225) (not e!1286438))))

(assert (=> b!2037204 (= res!893225 (<= (- (height!1163 (left!17731 (right!18061 (left!17731 t!4319)))) (height!1163 (right!18061 (right!18061 (left!17731 t!4319))))) 1))))

(declare-fun d!623653 () Bool)

(declare-fun res!893223 () Bool)

(assert (=> d!623653 (=> res!893223 e!1286439)))

(assert (=> d!623653 (= res!893223 (not ((_ is Node!7463) (right!18061 (left!17731 t!4319)))))))

(assert (=> d!623653 (= (isBalanced!2341 (right!18061 (left!17731 t!4319))) e!1286439)))

(assert (= (and d!623653 (not res!893223)) b!2037203))

(assert (= (and b!2037203 res!893222) b!2037204))

(assert (= (and b!2037204 res!893225) b!2037205))

(assert (= (and b!2037205 res!893227) b!2037208))

(assert (= (and b!2037208 res!893224) b!2037207))

(assert (= (and b!2037207 res!893226) b!2037206))

(declare-fun m!2480119 () Bool)

(assert (=> b!2037206 m!2480119))

(assert (=> b!2037204 m!2480113))

(assert (=> b!2037204 m!2480115))

(declare-fun m!2480121 () Bool)

(assert (=> b!2037208 m!2480121))

(declare-fun m!2480123 () Bool)

(assert (=> b!2037205 m!2480123))

(declare-fun m!2480125 () Bool)

(assert (=> b!2037207 m!2480125))

(assert (=> b!2037203 m!2480113))

(assert (=> b!2037203 m!2480115))

(assert (=> b!2036820 d!623653))

(declare-fun d!623655 () Bool)

(assert (=> d!623655 (= (inv!29549 (xs!10365 (left!17731 (right!18061 t!4319)))) (<= (size!17412 (innerList!7523 (xs!10365 (left!17731 (right!18061 t!4319))))) 2147483647))))

(declare-fun bs!421383 () Bool)

(assert (= bs!421383 d!623655))

(declare-fun m!2480127 () Bool)

(assert (=> bs!421383 m!2480127))

(assert (=> b!2036918 d!623655))

(declare-fun b!2037209 () Bool)

(declare-fun e!1286440 () Bool)

(declare-fun tp!604891 () Bool)

(assert (=> b!2037209 (= e!1286440 (and tp_is_empty!9265 tp!604891))))

(assert (=> b!2036916 (= tp!604859 e!1286440)))

(assert (= (and b!2036916 ((_ is Cons!22271) (t!191264 (innerList!7523 (xs!10365 (left!17731 t!4319)))))) b!2037209))

(declare-fun tp!604892 () Bool)

(declare-fun e!1286442 () Bool)

(declare-fun tp!604894 () Bool)

(declare-fun b!2037210 () Bool)

(assert (=> b!2037210 (= e!1286442 (and (inv!29550 (left!17731 (left!17731 (right!18061 (left!17731 t!4319))))) tp!604892 (inv!29550 (right!18061 (left!17731 (right!18061 (left!17731 t!4319))))) tp!604894))))

(declare-fun b!2037212 () Bool)

(declare-fun e!1286441 () Bool)

(declare-fun tp!604893 () Bool)

(assert (=> b!2037212 (= e!1286441 tp!604893)))

(declare-fun b!2037211 () Bool)

(assert (=> b!2037211 (= e!1286442 (and (inv!29549 (xs!10365 (left!17731 (right!18061 (left!17731 t!4319))))) e!1286441))))

(assert (=> b!2036929 (= tp!604870 (and (inv!29550 (left!17731 (right!18061 (left!17731 t!4319)))) e!1286442))))

(assert (= (and b!2036929 ((_ is Node!7463) (left!17731 (right!18061 (left!17731 t!4319))))) b!2037210))

(assert (= b!2037211 b!2037212))

(assert (= (and b!2036929 ((_ is Leaf!10936) (left!17731 (right!18061 (left!17731 t!4319))))) b!2037211))

(declare-fun m!2480129 () Bool)

(assert (=> b!2037210 m!2480129))

(declare-fun m!2480131 () Bool)

(assert (=> b!2037210 m!2480131))

(declare-fun m!2480133 () Bool)

(assert (=> b!2037211 m!2480133))

(assert (=> b!2036929 m!2479667))

(declare-fun tp!604897 () Bool)

(declare-fun b!2037213 () Bool)

(declare-fun tp!604895 () Bool)

(declare-fun e!1286444 () Bool)

(assert (=> b!2037213 (= e!1286444 (and (inv!29550 (left!17731 (right!18061 (right!18061 (left!17731 t!4319))))) tp!604895 (inv!29550 (right!18061 (right!18061 (right!18061 (left!17731 t!4319))))) tp!604897))))

(declare-fun b!2037215 () Bool)

(declare-fun e!1286443 () Bool)

(declare-fun tp!604896 () Bool)

(assert (=> b!2037215 (= e!1286443 tp!604896)))

(declare-fun b!2037214 () Bool)

(assert (=> b!2037214 (= e!1286444 (and (inv!29549 (xs!10365 (right!18061 (right!18061 (left!17731 t!4319))))) e!1286443))))

(assert (=> b!2036929 (= tp!604872 (and (inv!29550 (right!18061 (right!18061 (left!17731 t!4319)))) e!1286444))))

(assert (= (and b!2036929 ((_ is Node!7463) (right!18061 (right!18061 (left!17731 t!4319))))) b!2037213))

(assert (= b!2037214 b!2037215))

(assert (= (and b!2036929 ((_ is Leaf!10936) (right!18061 (right!18061 (left!17731 t!4319))))) b!2037214))

(declare-fun m!2480135 () Bool)

(assert (=> b!2037213 m!2480135))

(declare-fun m!2480137 () Bool)

(assert (=> b!2037213 m!2480137))

(declare-fun m!2480139 () Bool)

(assert (=> b!2037214 m!2480139))

(assert (=> b!2036929 m!2479669))

(declare-fun b!2037216 () Bool)

(declare-fun e!1286445 () Bool)

(declare-fun tp!604898 () Bool)

(assert (=> b!2037216 (= e!1286445 (and tp_is_empty!9265 tp!604898))))

(assert (=> b!2036931 (= tp!604871 e!1286445)))

(assert (= (and b!2036931 ((_ is Cons!22271) (innerList!7523 (xs!10365 (right!18061 (left!17731 t!4319)))))) b!2037216))

(declare-fun b!2037217 () Bool)

(declare-fun e!1286446 () Bool)

(declare-fun tp!604899 () Bool)

(assert (=> b!2037217 (= e!1286446 (and tp_is_empty!9265 tp!604899))))

(assert (=> b!2036908 (= tp!604857 e!1286446)))

(assert (= (and b!2036908 ((_ is Cons!22271) (innerList!7523 _$11!1062))) b!2037217))

(declare-fun tp!604900 () Bool)

(declare-fun b!2037218 () Bool)

(declare-fun e!1286448 () Bool)

(declare-fun tp!604902 () Bool)

(assert (=> b!2037218 (= e!1286448 (and (inv!29550 (left!17731 (left!17731 (right!18061 (right!18061 t!4319))))) tp!604900 (inv!29550 (right!18061 (left!17731 (right!18061 (right!18061 t!4319))))) tp!604902))))

(declare-fun b!2037220 () Bool)

(declare-fun e!1286447 () Bool)

(declare-fun tp!604901 () Bool)

(assert (=> b!2037220 (= e!1286447 tp!604901)))

(declare-fun b!2037219 () Bool)

(assert (=> b!2037219 (= e!1286448 (and (inv!29549 (xs!10365 (left!17731 (right!18061 (right!18061 t!4319))))) e!1286447))))

(assert (=> b!2036922 (= tp!604863 (and (inv!29550 (left!17731 (right!18061 (right!18061 t!4319)))) e!1286448))))

(assert (= (and b!2036922 ((_ is Node!7463) (left!17731 (right!18061 (right!18061 t!4319))))) b!2037218))

(assert (= b!2037219 b!2037220))

(assert (= (and b!2036922 ((_ is Leaf!10936) (left!17731 (right!18061 (right!18061 t!4319))))) b!2037219))

(declare-fun m!2480141 () Bool)

(assert (=> b!2037218 m!2480141))

(declare-fun m!2480143 () Bool)

(assert (=> b!2037218 m!2480143))

(declare-fun m!2480145 () Bool)

(assert (=> b!2037219 m!2480145))

(assert (=> b!2036922 m!2479655))

(declare-fun e!1286450 () Bool)

(declare-fun tp!604905 () Bool)

(declare-fun tp!604903 () Bool)

(declare-fun b!2037221 () Bool)

(assert (=> b!2037221 (= e!1286450 (and (inv!29550 (left!17731 (right!18061 (right!18061 (right!18061 t!4319))))) tp!604903 (inv!29550 (right!18061 (right!18061 (right!18061 (right!18061 t!4319))))) tp!604905))))

(declare-fun b!2037223 () Bool)

(declare-fun e!1286449 () Bool)

(declare-fun tp!604904 () Bool)

(assert (=> b!2037223 (= e!1286449 tp!604904)))

(declare-fun b!2037222 () Bool)

(assert (=> b!2037222 (= e!1286450 (and (inv!29549 (xs!10365 (right!18061 (right!18061 (right!18061 t!4319))))) e!1286449))))

(assert (=> b!2036922 (= tp!604865 (and (inv!29550 (right!18061 (right!18061 (right!18061 t!4319)))) e!1286450))))

(assert (= (and b!2036922 ((_ is Node!7463) (right!18061 (right!18061 (right!18061 t!4319))))) b!2037221))

(assert (= b!2037222 b!2037223))

(assert (= (and b!2036922 ((_ is Leaf!10936) (right!18061 (right!18061 (right!18061 t!4319))))) b!2037222))

(declare-fun m!2480147 () Bool)

(assert (=> b!2037221 m!2480147))

(declare-fun m!2480149 () Bool)

(assert (=> b!2037221 m!2480149))

(declare-fun m!2480151 () Bool)

(assert (=> b!2037222 m!2480151))

(assert (=> b!2036922 m!2479657))

(declare-fun tp!604906 () Bool)

(declare-fun b!2037224 () Bool)

(declare-fun e!1286452 () Bool)

(declare-fun tp!604908 () Bool)

(assert (=> b!2037224 (= e!1286452 (and (inv!29550 (left!17731 (left!17731 (left!17731 (left!17731 t!4319))))) tp!604906 (inv!29550 (right!18061 (left!17731 (left!17731 (left!17731 t!4319))))) tp!604908))))

(declare-fun b!2037226 () Bool)

(declare-fun e!1286451 () Bool)

(declare-fun tp!604907 () Bool)

(assert (=> b!2037226 (= e!1286451 tp!604907)))

(declare-fun b!2037225 () Bool)

(assert (=> b!2037225 (= e!1286452 (and (inv!29549 (xs!10365 (left!17731 (left!17731 (left!17731 t!4319))))) e!1286451))))

(assert (=> b!2036926 (= tp!604867 (and (inv!29550 (left!17731 (left!17731 (left!17731 t!4319)))) e!1286452))))

(assert (= (and b!2036926 ((_ is Node!7463) (left!17731 (left!17731 (left!17731 t!4319))))) b!2037224))

(assert (= b!2037225 b!2037226))

(assert (= (and b!2036926 ((_ is Leaf!10936) (left!17731 (left!17731 (left!17731 t!4319))))) b!2037225))

(declare-fun m!2480153 () Bool)

(assert (=> b!2037224 m!2480153))

(declare-fun m!2480155 () Bool)

(assert (=> b!2037224 m!2480155))

(declare-fun m!2480157 () Bool)

(assert (=> b!2037225 m!2480157))

(assert (=> b!2036926 m!2479661))

(declare-fun tp!604909 () Bool)

(declare-fun e!1286454 () Bool)

(declare-fun b!2037227 () Bool)

(declare-fun tp!604911 () Bool)

(assert (=> b!2037227 (= e!1286454 (and (inv!29550 (left!17731 (right!18061 (left!17731 (left!17731 t!4319))))) tp!604909 (inv!29550 (right!18061 (right!18061 (left!17731 (left!17731 t!4319))))) tp!604911))))

(declare-fun b!2037229 () Bool)

(declare-fun e!1286453 () Bool)

(declare-fun tp!604910 () Bool)

(assert (=> b!2037229 (= e!1286453 tp!604910)))

(declare-fun b!2037228 () Bool)

(assert (=> b!2037228 (= e!1286454 (and (inv!29549 (xs!10365 (right!18061 (left!17731 (left!17731 t!4319))))) e!1286453))))

(assert (=> b!2036926 (= tp!604869 (and (inv!29550 (right!18061 (left!17731 (left!17731 t!4319)))) e!1286454))))

(assert (= (and b!2036926 ((_ is Node!7463) (right!18061 (left!17731 (left!17731 t!4319))))) b!2037227))

(assert (= b!2037228 b!2037229))

(assert (= (and b!2036926 ((_ is Leaf!10936) (right!18061 (left!17731 (left!17731 t!4319))))) b!2037228))

(declare-fun m!2480159 () Bool)

(assert (=> b!2037227 m!2480159))

(declare-fun m!2480161 () Bool)

(assert (=> b!2037227 m!2480161))

(declare-fun m!2480163 () Bool)

(assert (=> b!2037228 m!2480163))

(assert (=> b!2036926 m!2479663))

(declare-fun b!2037230 () Bool)

(declare-fun e!1286455 () Bool)

(declare-fun tp!604912 () Bool)

(assert (=> b!2037230 (= e!1286455 (and tp_is_empty!9265 tp!604912))))

(assert (=> b!2036928 (= tp!604868 e!1286455)))

(assert (= (and b!2036928 ((_ is Cons!22271) (innerList!7523 (xs!10365 (left!17731 (left!17731 t!4319)))))) b!2037230))

(declare-fun b!2037231 () Bool)

(declare-fun e!1286456 () Bool)

(declare-fun tp!604913 () Bool)

(assert (=> b!2037231 (= e!1286456 (and tp_is_empty!9265 tp!604913))))

(assert (=> b!2036924 (= tp!604864 e!1286456)))

(assert (= (and b!2036924 ((_ is Cons!22271) (innerList!7523 (xs!10365 (right!18061 (right!18061 t!4319)))))) b!2037231))

(declare-fun e!1286458 () Bool)

(declare-fun tp!604916 () Bool)

(declare-fun tp!604914 () Bool)

(declare-fun b!2037232 () Bool)

(assert (=> b!2037232 (= e!1286458 (and (inv!29550 (left!17731 (left!17731 (left!17731 (right!18061 t!4319))))) tp!604914 (inv!29550 (right!18061 (left!17731 (left!17731 (right!18061 t!4319))))) tp!604916))))

(declare-fun b!2037234 () Bool)

(declare-fun e!1286457 () Bool)

(declare-fun tp!604915 () Bool)

(assert (=> b!2037234 (= e!1286457 tp!604915)))

(declare-fun b!2037233 () Bool)

(assert (=> b!2037233 (= e!1286458 (and (inv!29549 (xs!10365 (left!17731 (left!17731 (right!18061 t!4319))))) e!1286457))))

(assert (=> b!2036917 (= tp!604860 (and (inv!29550 (left!17731 (left!17731 (right!18061 t!4319)))) e!1286458))))

(assert (= (and b!2036917 ((_ is Node!7463) (left!17731 (left!17731 (right!18061 t!4319))))) b!2037232))

(assert (= b!2037233 b!2037234))

(assert (= (and b!2036917 ((_ is Leaf!10936) (left!17731 (left!17731 (right!18061 t!4319))))) b!2037233))

(declare-fun m!2480165 () Bool)

(assert (=> b!2037232 m!2480165))

(declare-fun m!2480167 () Bool)

(assert (=> b!2037232 m!2480167))

(declare-fun m!2480169 () Bool)

(assert (=> b!2037233 m!2480169))

(assert (=> b!2036917 m!2479647))

(declare-fun b!2037235 () Bool)

(declare-fun tp!604919 () Bool)

(declare-fun tp!604917 () Bool)

(declare-fun e!1286460 () Bool)

(assert (=> b!2037235 (= e!1286460 (and (inv!29550 (left!17731 (right!18061 (left!17731 (right!18061 t!4319))))) tp!604917 (inv!29550 (right!18061 (right!18061 (left!17731 (right!18061 t!4319))))) tp!604919))))

(declare-fun b!2037237 () Bool)

(declare-fun e!1286459 () Bool)

(declare-fun tp!604918 () Bool)

(assert (=> b!2037237 (= e!1286459 tp!604918)))

(declare-fun b!2037236 () Bool)

(assert (=> b!2037236 (= e!1286460 (and (inv!29549 (xs!10365 (right!18061 (left!17731 (right!18061 t!4319))))) e!1286459))))

(assert (=> b!2036917 (= tp!604862 (and (inv!29550 (right!18061 (left!17731 (right!18061 t!4319)))) e!1286460))))

(assert (= (and b!2036917 ((_ is Node!7463) (right!18061 (left!17731 (right!18061 t!4319))))) b!2037235))

(assert (= b!2037236 b!2037237))

(assert (= (and b!2036917 ((_ is Leaf!10936) (right!18061 (left!17731 (right!18061 t!4319))))) b!2037236))

(declare-fun m!2480171 () Bool)

(assert (=> b!2037235 m!2480171))

(declare-fun m!2480173 () Bool)

(assert (=> b!2037235 m!2480173))

(declare-fun m!2480175 () Bool)

(assert (=> b!2037236 m!2480175))

(assert (=> b!2036917 m!2479649))

(declare-fun b!2037238 () Bool)

(declare-fun e!1286461 () Bool)

(declare-fun tp!604920 () Bool)

(assert (=> b!2037238 (= e!1286461 (and tp_is_empty!9265 tp!604920))))

(assert (=> b!2036915 (= tp!604858 e!1286461)))

(assert (= (and b!2036915 ((_ is Cons!22271) (t!191264 (t!191264 (innerList!7523 (xs!10365 t!4319)))))) b!2037238))

(declare-fun b!2037239 () Bool)

(declare-fun e!1286462 () Bool)

(declare-fun tp!604921 () Bool)

(assert (=> b!2037239 (= e!1286462 (and tp_is_empty!9265 tp!604921))))

(assert (=> b!2036919 (= tp!604861 e!1286462)))

(assert (= (and b!2036919 ((_ is Cons!22271) (innerList!7523 (xs!10365 (left!17731 (right!18061 t!4319)))))) b!2037239))

(declare-fun b!2037240 () Bool)

(declare-fun e!1286463 () Bool)

(declare-fun tp!604922 () Bool)

(assert (=> b!2037240 (= e!1286463 (and tp_is_empty!9265 tp!604922))))

(assert (=> b!2036925 (= tp!604866 e!1286463)))

(assert (= (and b!2036925 ((_ is Cons!22271) (t!191264 (innerList!7523 (xs!10365 (right!18061 t!4319)))))) b!2037240))

(declare-fun b_lambda!68799 () Bool)

(assert (= b_lambda!68793 (or (and start!200656 b_free!56815) b_lambda!68799)))

(declare-fun b_lambda!68801 () Bool)

(assert (= b_lambda!68791 (or (and start!200656 b_free!56815) b_lambda!68801)))

(declare-fun b_lambda!68803 () Bool)

(assert (= b_lambda!68789 (or (and start!200656 b_free!56815) b_lambda!68803)))

(declare-fun b_lambda!68805 () Bool)

(assert (= b_lambda!68797 (or (and start!200656 b_free!56815) b_lambda!68805)))

(declare-fun b_lambda!68807 () Bool)

(assert (= b_lambda!68795 (or (and start!200656 b_free!56815) b_lambda!68807)))

(check-sat (not b_next!57519) (not b!2037239) (not d!623651) (not b!2037208) (not b!2037062) (not b!2037159) (not d!623645) (not b!2037092) (not b!2037233) (not d!623633) (not b!2037108) (not d!623627) (not b!2037059) (not d!623655) (not b!2037120) (not b!2037095) (not b!2037182) (not b!2037081) (not b!2037089) (not b!2037146) (not d!623629) (not b!2037175) (not b!2037126) (not b!2037221) (not d!623647) (not b!2037169) (not b_lambda!68803) (not b!2037183) (not d!623621) (not b!2037119) (not b!2037147) (not b!2037167) (not bm!124939) (not b!2037211) (not b!2037077) (not b!2037201) (not b!2037179) (not d!623609) (not b!2037229) (not b!2037084) (not b!2036929) (not b_lambda!68773) (not d!623575) (not d!623497) (not b!2037138) (not b_lambda!68763) (not b!2037134) (not b!2037207) (not b!2037162) (not b!2037223) (not b!2037196) (not b!2037097) (not b!2037118) (not b!2037215) (not d!623533) (not b!2037218) (not b!2037100) (not b!2037113) (not d!623511) (not b_lambda!68807) (not b!2037214) (not b!2037219) (not bm!124938) (not b!2037122) (not b!2037212) (not d!623519) (not b!2037222) (not b_lambda!68799) (not b!2036922) (not b!2037153) (not b!2037079) (not b!2037220) (not b!2037083) (not b!2037206) (not b!2037238) (not b!2037117) (not b!2037115) (not b!2037228) (not d!623501) (not b!2037205) (not b!2037226) (not b!2037143) (not b!2037151) (not b!2037121) (not d!623639) (not d!623649) (not b!2037230) (not b!2037186) (not b!2037093) (not d!623535) (not b!2037109) (not b!2037129) (not b!2037195) (not b!2037131) (not b!2037227) (not b!2037232) (not b!2037057) (not b!2036917) (not b!2037225) (not b!2037099) (not b!2037102) (not b!2037105) (not b!2037127) (not b!2037171) (not b_lambda!68771) (not b!2037235) (not b_lambda!68805) (not b!2037087) (not b!2037217) (not d!623623) (not b!2037064) (not b!2037192) (not b!2036926) (not b!2037173) (not d!623607) (not b!2037209) (not b!2037137) (not b!2037133) (not b!2037240) (not b!2037155) (not b!2037157) (not b!2037124) (not b!2037210) (not b!2037056) b_and!162633 (not b!2037111) (not b!2037149) (not b!2037063) (not d!623635) (not b!2037237) (not b!2037066) (not d!623625) (not b!2037065) (not b!2037142) (not d!623499) (not b!2037216) (not d!623503) (not b!2037213) (not d!623583) (not b!2037072) (not b!2037123) (not b_lambda!68801) (not b!2037130) (not b!2037203) (not d!623595) tp_is_empty!9265 (not b!2037132) (not b!2037106) (not b!2037135) (not b_lambda!68775) (not b!2037068) (not b!2037090) (not b!2037234) (not b!2037053) (not b!2037187) (not b!2037074) (not b!2037103) (not b!2037061) (not b!2037224) (not b!2037191) (not b!2037198) (not b!2037204) (not b!2037177) (not b!2037236) (not b!2037165) (not b!2037070) (not d!623631) (not b!2037231) (not d!623531))
(check-sat b_and!162633 (not b_next!57519))
