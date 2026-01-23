; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106032 () Bool)

(assert start!106032)

(declare-fun b!1192404 () Bool)

(declare-fun res!538554 () Bool)

(declare-fun e!766359 () Bool)

(assert (=> b!1192404 (=> (not res!538554) (not e!766359))))

(declare-fun until!31 () Int)

(declare-datatypes ((T!21544 0))(
  ( (T!21545 (val!3854 Int)) )
))
(declare-datatypes ((List!12033 0))(
  ( (Nil!12009) (Cons!12009 (h!17410 T!21544) (t!112281 List!12033)) )
))
(declare-datatypes ((IArray!7889 0))(
  ( (IArray!7890 (innerList!4002 List!12033)) )
))
(declare-datatypes ((Conc!3942 0))(
  ( (Node!3942 (left!10461 Conc!3942) (right!10791 Conc!3942) (csize!8114 Int) (cheight!4153 Int)) (Leaf!6038 (xs!6647 IArray!7889) (csize!8115 Int)) (Empty!3942) )
))
(declare-fun t!4115 () Conc!3942)

(declare-fun size!9502 (Conc!3942) Int)

(assert (=> b!1192404 (= res!538554 (<= until!31 (size!9502 t!4115)))))

(declare-fun b!1192405 () Bool)

(declare-fun e!766358 () Bool)

(declare-fun e!766360 () Bool)

(declare-fun inv!15936 (IArray!7889) Bool)

(assert (=> b!1192405 (= e!766358 (and (inv!15936 (xs!6647 t!4115)) e!766360))))

(declare-fun b!1192406 () Bool)

(declare-fun e!766362 () List!12033)

(declare-fun call!82819 () List!12033)

(declare-fun call!82820 () List!12033)

(declare-fun ++!3044 (List!12033 List!12033) List!12033)

(assert (=> b!1192406 (= e!766362 (++!3044 call!82819 call!82820))))

(declare-fun bm!82814 () Bool)

(declare-fun from!553 () Int)

(declare-fun c!197962 () Bool)

(declare-fun lt!409540 () Int)

(declare-fun lt!409541 () List!12033)

(declare-fun slice!424 (List!12033 Int Int) List!12033)

(assert (=> bm!82814 (= call!82820 (slice!424 lt!409541 (ite c!197962 (- from!553 lt!409540) 0) (- until!31 lt!409540)))))

(declare-fun b!1192407 () Bool)

(declare-fun tp!340104 () Bool)

(assert (=> b!1192407 (= e!766360 tp!340104)))

(declare-fun res!538551 () Bool)

(assert (=> start!106032 (=> (not res!538551) (not e!766359))))

(assert (=> start!106032 (= res!538551 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106032 e!766359))

(assert (=> start!106032 true))

(declare-fun inv!15937 (Conc!3942) Bool)

(assert (=> start!106032 (and (inv!15937 t!4115) e!766358)))

(declare-fun b!1192408 () Bool)

(declare-fun res!538550 () Bool)

(assert (=> b!1192408 (=> (not res!538550) (not e!766359))))

(get-info :version)

(assert (=> b!1192408 (= res!538550 (and (not (= from!553 until!31)) (not ((_ is Leaf!6038) t!4115)) ((_ is Node!3942) t!4115)))))

(declare-fun tp!340105 () Bool)

(declare-fun b!1192409 () Bool)

(declare-fun tp!340103 () Bool)

(assert (=> b!1192409 (= e!766358 (and (inv!15937 (left!10461 t!4115)) tp!340105 (inv!15937 (right!10791 t!4115)) tp!340103))))

(declare-fun bm!82815 () Bool)

(declare-fun lt!409537 () List!12033)

(declare-fun c!197961 () Bool)

(assert (=> bm!82815 (= call!82819 (slice!424 lt!409537 from!553 (ite c!197961 until!31 lt!409540)))))

(declare-fun b!1192410 () Bool)

(declare-fun res!538553 () Bool)

(declare-fun e!766357 () Bool)

(assert (=> b!1192410 (=> res!538553 e!766357)))

(declare-fun isBalanced!1127 (Conc!3942) Bool)

(declare-fun slice!425 (Conc!3942 Int Int) Conc!3942)

(assert (=> b!1192410 (= res!538553 (not (isBalanced!1127 (slice!425 (left!10461 t!4115) from!553 until!31))))))

(declare-fun b!1192411 () Bool)

(declare-fun e!766361 () Bool)

(declare-fun lt!409538 () List!12033)

(assert (=> b!1192411 (= e!766361 (= lt!409538 call!82820))))

(declare-fun b!1192412 () Bool)

(assert (=> b!1192412 (= e!766359 (not e!766357))))

(declare-fun res!538549 () Bool)

(assert (=> b!1192412 (=> res!538549 e!766357)))

(declare-fun lt!409542 () Int)

(assert (=> b!1192412 (= res!538549 (or (<= lt!409542 from!553) (> until!31 lt!409542)))))

(assert (=> b!1192412 (= lt!409542 (size!9502 (left!10461 t!4115)))))

(assert (=> b!1192412 e!766361))

(assert (=> b!1192412 (= c!197962 (<= lt!409540 from!553))))

(assert (=> b!1192412 (= lt!409538 (slice!424 (++!3044 lt!409537 lt!409541) from!553 until!31))))

(declare-fun size!9503 (List!12033) Int)

(assert (=> b!1192412 (= lt!409540 (size!9503 lt!409537))))

(declare-datatypes ((Unit!18424 0))(
  ( (Unit!18425) )
))
(declare-fun lt!409539 () Unit!18424)

(declare-fun sliceLemma!23 (List!12033 List!12033 Int Int) Unit!18424)

(assert (=> b!1192412 (= lt!409539 (sliceLemma!23 lt!409537 lt!409541 from!553 until!31))))

(declare-fun list!4427 (Conc!3942) List!12033)

(assert (=> b!1192412 (= lt!409541 (list!4427 (right!10791 t!4115)))))

(assert (=> b!1192412 (= lt!409537 (list!4427 (left!10461 t!4115)))))

(declare-fun b!1192413 () Bool)

(declare-fun res!538552 () Bool)

(assert (=> b!1192413 (=> (not res!538552) (not e!766359))))

(assert (=> b!1192413 (= res!538552 (isBalanced!1127 t!4115))))

(declare-fun b!1192414 () Bool)

(assert (=> b!1192414 (= e!766357 (<= until!31 (size!9503 (list!4427 t!4115))))))

(declare-fun b!1192415 () Bool)

(assert (=> b!1192415 (= e!766362 call!82819)))

(declare-fun b!1192416 () Bool)

(assert (=> b!1192416 (= e!766361 (= lt!409538 e!766362))))

(assert (=> b!1192416 (= c!197961 (<= until!31 lt!409540))))

(assert (= (and start!106032 res!538551) b!1192404))

(assert (= (and b!1192404 res!538554) b!1192413))

(assert (= (and b!1192413 res!538552) b!1192408))

(assert (= (and b!1192408 res!538550) b!1192412))

(assert (= (and b!1192412 c!197962) b!1192411))

(assert (= (and b!1192412 (not c!197962)) b!1192416))

(assert (= (and b!1192416 c!197961) b!1192415))

(assert (= (and b!1192416 (not c!197961)) b!1192406))

(assert (= (or b!1192415 b!1192406) bm!82815))

(assert (= (or b!1192411 b!1192406) bm!82814))

(assert (= (and b!1192412 (not res!538549)) b!1192410))

(assert (= (and b!1192410 (not res!538553)) b!1192414))

(assert (= (and start!106032 ((_ is Node!3942) t!4115)) b!1192409))

(assert (= b!1192405 b!1192407))

(assert (= (and start!106032 ((_ is Leaf!6038) t!4115)) b!1192405))

(declare-fun m!1367263 () Bool)

(assert (=> bm!82815 m!1367263))

(declare-fun m!1367265 () Bool)

(assert (=> b!1192409 m!1367265))

(declare-fun m!1367267 () Bool)

(assert (=> b!1192409 m!1367267))

(declare-fun m!1367269 () Bool)

(assert (=> b!1192404 m!1367269))

(declare-fun m!1367271 () Bool)

(assert (=> b!1192412 m!1367271))

(declare-fun m!1367273 () Bool)

(assert (=> b!1192412 m!1367273))

(declare-fun m!1367275 () Bool)

(assert (=> b!1192412 m!1367275))

(declare-fun m!1367277 () Bool)

(assert (=> b!1192412 m!1367277))

(declare-fun m!1367279 () Bool)

(assert (=> b!1192412 m!1367279))

(assert (=> b!1192412 m!1367275))

(declare-fun m!1367281 () Bool)

(assert (=> b!1192412 m!1367281))

(declare-fun m!1367283 () Bool)

(assert (=> b!1192412 m!1367283))

(declare-fun m!1367285 () Bool)

(assert (=> b!1192410 m!1367285))

(assert (=> b!1192410 m!1367285))

(declare-fun m!1367287 () Bool)

(assert (=> b!1192410 m!1367287))

(declare-fun m!1367289 () Bool)

(assert (=> start!106032 m!1367289))

(declare-fun m!1367291 () Bool)

(assert (=> bm!82814 m!1367291))

(declare-fun m!1367293 () Bool)

(assert (=> b!1192406 m!1367293))

(declare-fun m!1367295 () Bool)

(assert (=> b!1192414 m!1367295))

(assert (=> b!1192414 m!1367295))

(declare-fun m!1367297 () Bool)

(assert (=> b!1192414 m!1367297))

(declare-fun m!1367299 () Bool)

(assert (=> b!1192413 m!1367299))

(declare-fun m!1367301 () Bool)

(assert (=> b!1192405 m!1367301))

(check-sat (not b!1192407) (not bm!82815) (not b!1192406) (not b!1192404) (not start!106032) (not b!1192413) (not b!1192405) (not b!1192410) (not b!1192414) (not bm!82814) (not b!1192412) (not b!1192409))
(check-sat)
(get-model)

(declare-fun b!1192428 () Bool)

(declare-fun e!766368 () Bool)

(declare-fun lt!409545 () List!12033)

(assert (=> b!1192428 (= e!766368 (or (not (= call!82820 Nil!12009)) (= lt!409545 call!82819)))))

(declare-fun d!340622 () Bool)

(assert (=> d!340622 e!766368))

(declare-fun res!538559 () Bool)

(assert (=> d!340622 (=> (not res!538559) (not e!766368))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1665 (List!12033) (InoxSet T!21544))

(assert (=> d!340622 (= res!538559 (= (content!1665 lt!409545) ((_ map or) (content!1665 call!82819) (content!1665 call!82820))))))

(declare-fun e!766367 () List!12033)

(assert (=> d!340622 (= lt!409545 e!766367)))

(declare-fun c!197965 () Bool)

(assert (=> d!340622 (= c!197965 ((_ is Nil!12009) call!82819))))

(assert (=> d!340622 (= (++!3044 call!82819 call!82820) lt!409545)))

(declare-fun b!1192426 () Bool)

(assert (=> b!1192426 (= e!766367 (Cons!12009 (h!17410 call!82819) (++!3044 (t!112281 call!82819) call!82820)))))

(declare-fun b!1192427 () Bool)

(declare-fun res!538560 () Bool)

(assert (=> b!1192427 (=> (not res!538560) (not e!766368))))

(assert (=> b!1192427 (= res!538560 (= (size!9503 lt!409545) (+ (size!9503 call!82819) (size!9503 call!82820))))))

(declare-fun b!1192425 () Bool)

(assert (=> b!1192425 (= e!766367 call!82820)))

(assert (= (and d!340622 c!197965) b!1192425))

(assert (= (and d!340622 (not c!197965)) b!1192426))

(assert (= (and d!340622 res!538559) b!1192427))

(assert (= (and b!1192427 res!538560) b!1192428))

(declare-fun m!1367303 () Bool)

(assert (=> d!340622 m!1367303))

(declare-fun m!1367305 () Bool)

(assert (=> d!340622 m!1367305))

(declare-fun m!1367307 () Bool)

(assert (=> d!340622 m!1367307))

(declare-fun m!1367309 () Bool)

(assert (=> b!1192426 m!1367309))

(declare-fun m!1367311 () Bool)

(assert (=> b!1192427 m!1367311))

(declare-fun m!1367313 () Bool)

(assert (=> b!1192427 m!1367313))

(declare-fun m!1367315 () Bool)

(assert (=> b!1192427 m!1367315))

(assert (=> b!1192406 d!340622))

(declare-fun d!340624 () Bool)

(declare-fun take!106 (List!12033 Int) List!12033)

(declare-fun drop!578 (List!12033 Int) List!12033)

(assert (=> d!340624 (= (slice!424 lt!409541 (ite c!197962 (- from!553 lt!409540) 0) (- until!31 lt!409540)) (take!106 (drop!578 lt!409541 (ite c!197962 (- from!553 lt!409540) 0)) (- (- until!31 lt!409540) (ite c!197962 (- from!553 lt!409540) 0))))))

(declare-fun bs!287939 () Bool)

(assert (= bs!287939 d!340624))

(declare-fun m!1367317 () Bool)

(assert (=> bs!287939 m!1367317))

(assert (=> bs!287939 m!1367317))

(declare-fun m!1367319 () Bool)

(assert (=> bs!287939 m!1367319))

(assert (=> bm!82814 d!340624))

(declare-fun b!1192441 () Bool)

(declare-fun res!538578 () Bool)

(declare-fun e!766374 () Bool)

(assert (=> b!1192441 (=> (not res!538578) (not e!766374))))

(assert (=> b!1192441 (= res!538578 (isBalanced!1127 (right!10791 (slice!425 (left!10461 t!4115) from!553 until!31))))))

(declare-fun b!1192443 () Bool)

(declare-fun res!538574 () Bool)

(assert (=> b!1192443 (=> (not res!538574) (not e!766374))))

(declare-fun height!539 (Conc!3942) Int)

(assert (=> b!1192443 (= res!538574 (<= (- (height!539 (left!10461 (slice!425 (left!10461 t!4115) from!553 until!31))) (height!539 (right!10791 (slice!425 (left!10461 t!4115) from!553 until!31)))) 1))))

(declare-fun b!1192444 () Bool)

(declare-fun res!538576 () Bool)

(assert (=> b!1192444 (=> (not res!538576) (not e!766374))))

(assert (=> b!1192444 (= res!538576 (isBalanced!1127 (left!10461 (slice!425 (left!10461 t!4115) from!553 until!31))))))

(declare-fun b!1192445 () Bool)

(declare-fun isEmpty!7220 (Conc!3942) Bool)

(assert (=> b!1192445 (= e!766374 (not (isEmpty!7220 (right!10791 (slice!425 (left!10461 t!4115) from!553 until!31)))))))

(declare-fun b!1192446 () Bool)

(declare-fun e!766373 () Bool)

(assert (=> b!1192446 (= e!766373 e!766374)))

(declare-fun res!538577 () Bool)

(assert (=> b!1192446 (=> (not res!538577) (not e!766374))))

(assert (=> b!1192446 (= res!538577 (<= (- 1) (- (height!539 (left!10461 (slice!425 (left!10461 t!4115) from!553 until!31))) (height!539 (right!10791 (slice!425 (left!10461 t!4115) from!553 until!31))))))))

(declare-fun b!1192442 () Bool)

(declare-fun res!538573 () Bool)

(assert (=> b!1192442 (=> (not res!538573) (not e!766374))))

(assert (=> b!1192442 (= res!538573 (not (isEmpty!7220 (left!10461 (slice!425 (left!10461 t!4115) from!553 until!31)))))))

(declare-fun d!340626 () Bool)

(declare-fun res!538575 () Bool)

(assert (=> d!340626 (=> res!538575 e!766373)))

(assert (=> d!340626 (= res!538575 (not ((_ is Node!3942) (slice!425 (left!10461 t!4115) from!553 until!31))))))

(assert (=> d!340626 (= (isBalanced!1127 (slice!425 (left!10461 t!4115) from!553 until!31)) e!766373)))

(assert (= (and d!340626 (not res!538575)) b!1192446))

(assert (= (and b!1192446 res!538577) b!1192443))

(assert (= (and b!1192443 res!538574) b!1192444))

(assert (= (and b!1192444 res!538576) b!1192441))

(assert (= (and b!1192441 res!538578) b!1192442))

(assert (= (and b!1192442 res!538573) b!1192445))

(declare-fun m!1367321 () Bool)

(assert (=> b!1192445 m!1367321))

(declare-fun m!1367323 () Bool)

(assert (=> b!1192446 m!1367323))

(declare-fun m!1367325 () Bool)

(assert (=> b!1192446 m!1367325))

(declare-fun m!1367327 () Bool)

(assert (=> b!1192444 m!1367327))

(declare-fun m!1367329 () Bool)

(assert (=> b!1192442 m!1367329))

(assert (=> b!1192443 m!1367323))

(assert (=> b!1192443 m!1367325))

(declare-fun m!1367331 () Bool)

(assert (=> b!1192441 m!1367331))

(assert (=> b!1192410 d!340626))

(declare-fun d!340630 () Bool)

(declare-fun e!766450 () Bool)

(assert (=> d!340630 e!766450))

(declare-fun res!538624 () Bool)

(assert (=> d!340630 (=> (not res!538624) (not e!766450))))

(declare-fun lt!409573 () Conc!3942)

(assert (=> d!340630 (= res!538624 (isBalanced!1127 lt!409573))))

(declare-fun e!766444 () Conc!3942)

(assert (=> d!340630 (= lt!409573 e!766444)))

(declare-fun c!198015 () Bool)

(assert (=> d!340630 (= c!198015 (= from!553 until!31))))

(declare-fun e!766448 () Bool)

(assert (=> d!340630 e!766448))

(declare-fun res!538623 () Bool)

(assert (=> d!340630 (=> (not res!538623) (not e!766448))))

(assert (=> d!340630 (= res!538623 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340630 (= (slice!425 (left!10461 t!4115) from!553 until!31) lt!409573)))

(declare-fun b!1192581 () Bool)

(declare-fun e!766449 () Conc!3942)

(declare-fun call!82845 () Conc!3942)

(assert (=> b!1192581 (= e!766449 call!82845)))

(declare-fun b!1192582 () Bool)

(assert (=> b!1192582 (= e!766450 (= (list!4427 lt!409573) (slice!424 (list!4427 (left!10461 t!4115)) from!553 until!31)))))

(declare-fun b!1192583 () Bool)

(declare-fun e!766446 () List!12033)

(declare-fun e!766443 () List!12033)

(assert (=> b!1192583 (= e!766446 e!766443)))

(declare-fun c!198017 () Bool)

(declare-fun call!82843 () Int)

(assert (=> b!1192583 (= c!198017 (<= until!31 call!82843))))

(declare-fun call!82842 () Int)

(declare-fun call!82846 () Conc!3942)

(declare-fun e!766451 () Conc!3942)

(declare-fun b!1192584 () Bool)

(declare-fun ++!3045 (Conc!3942 Conc!3942) Conc!3942)

(assert (=> b!1192584 (= e!766451 (++!3045 (slice!425 (left!10461 (left!10461 t!4115)) from!553 call!82842) call!82846))))

(declare-fun b!1192585 () Bool)

(assert (=> b!1192585 (= e!766444 Empty!3942)))

(declare-fun b!1192586 () Bool)

(declare-fun call!82844 () List!12033)

(assert (=> b!1192586 (= e!766443 call!82844)))

(declare-fun b!1192587 () Bool)

(declare-fun res!538625 () Bool)

(assert (=> b!1192587 (=> (not res!538625) (not e!766448))))

(assert (=> b!1192587 (= res!538625 (<= until!31 (size!9502 (left!10461 t!4115))))))

(declare-fun b!1192588 () Bool)

(assert (=> b!1192588 (= e!766448 (isBalanced!1127 (left!10461 t!4115)))))

(declare-fun bm!82837 () Bool)

(declare-fun c!198019 () Bool)

(declare-fun c!198014 () Bool)

(assert (=> bm!82837 (= c!198019 c!198014)))

(assert (=> bm!82837 (= call!82846 call!82845)))

(declare-fun bm!82838 () Bool)

(declare-fun lt!409571 () List!12033)

(assert (=> bm!82838 (= call!82843 (size!9503 lt!409571))))

(declare-fun e!766445 () Conc!3942)

(declare-fun b!1192589 () Bool)

(declare-fun slice!426 (IArray!7889 Int Int) IArray!7889)

(assert (=> b!1192589 (= e!766445 (Leaf!6038 (slice!426 (xs!6647 (left!10461 t!4115)) from!553 until!31) (- until!31 from!553)))))

(declare-fun b!1192590 () Bool)

(declare-fun e!766442 () Int)

(assert (=> b!1192590 (= e!766442 call!82843)))

(declare-fun b!1192591 () Bool)

(assert (=> b!1192591 (= e!766451 call!82846)))

(declare-fun b!1192592 () Bool)

(assert (=> b!1192592 (= e!766449 e!766451)))

(assert (=> b!1192592 (= c!198014 (<= until!31 call!82842))))

(declare-fun b!1192593 () Bool)

(declare-fun lt!409570 () List!12033)

(assert (=> b!1192593 (= e!766443 (++!3044 call!82844 (slice!424 lt!409570 0 (- until!31 call!82843))))))

(declare-fun b!1192594 () Bool)

(declare-fun call!82847 () List!12033)

(assert (=> b!1192594 (= e!766446 call!82847)))

(declare-fun b!1192595 () Bool)

(assert (=> b!1192595 (= e!766442 until!31)))

(declare-fun b!1192596 () Bool)

(declare-fun e!766447 () Conc!3942)

(assert (=> b!1192596 (= e!766444 e!766447)))

(declare-fun c!198013 () Bool)

(assert (=> b!1192596 (= c!198013 ((_ is Leaf!6038) (left!10461 t!4115)))))

(declare-fun c!198018 () Bool)

(declare-fun bm!82839 () Bool)

(assert (=> bm!82839 (= call!82847 (slice!424 (ite c!198018 lt!409570 lt!409571) (ite c!198018 (- from!553 call!82843) from!553) (ite c!198018 (- until!31 call!82843) e!766442)))))

(declare-fun bm!82840 () Bool)

(declare-fun c!198011 () Bool)

(declare-fun e!766452 () Int)

(assert (=> bm!82840 (= call!82845 (slice!425 (ite c!198011 (right!10791 (left!10461 t!4115)) (ite c!198014 (left!10461 (left!10461 t!4115)) (right!10791 (left!10461 t!4115)))) (ite c!198011 (- from!553 call!82842) (ite c!198014 from!553 0)) (ite c!198011 (- until!31 call!82842) e!766452)))))

(declare-fun b!1192597 () Bool)

(assert (=> b!1192597 (= e!766452 until!31)))

(declare-fun bm!82841 () Bool)

(declare-fun c!198012 () Bool)

(assert (=> bm!82841 (= c!198012 c!198017)))

(assert (=> bm!82841 (= call!82844 call!82847)))

(declare-fun b!1192598 () Bool)

(assert (=> b!1192598 (= e!766452 (- until!31 call!82842))))

(declare-fun b!1192599 () Bool)

(declare-fun c!198016 () Bool)

(assert (=> b!1192599 (= c!198016 (= (- until!31 from!553) 0))))

(assert (=> b!1192599 (= e!766447 e!766445)))

(declare-fun b!1192600 () Bool)

(assert (=> b!1192600 (= c!198011 (<= (size!9502 (left!10461 (left!10461 t!4115))) from!553))))

(declare-fun lt!409572 () Unit!18424)

(declare-fun lt!409574 () Unit!18424)

(assert (=> b!1192600 (= lt!409572 lt!409574)))

(assert (=> b!1192600 (= (slice!424 (++!3044 lt!409571 lt!409570) from!553 until!31) e!766446)))

(assert (=> b!1192600 (= c!198018 (<= (size!9503 lt!409571) from!553))))

(assert (=> b!1192600 (= lt!409574 (sliceLemma!23 lt!409571 lt!409570 from!553 until!31))))

(assert (=> b!1192600 (= lt!409570 (list!4427 (right!10791 (left!10461 t!4115))))))

(assert (=> b!1192600 (= lt!409571 (list!4427 (left!10461 (left!10461 t!4115))))))

(assert (=> b!1192600 (= e!766447 e!766449)))

(declare-fun b!1192601 () Bool)

(assert (=> b!1192601 (= e!766445 Empty!3942)))

(declare-fun bm!82842 () Bool)

(assert (=> bm!82842 (= call!82842 (size!9502 (left!10461 (left!10461 t!4115))))))

(assert (= (and d!340630 res!538623) b!1192587))

(assert (= (and b!1192587 res!538625) b!1192588))

(assert (= (and d!340630 c!198015) b!1192585))

(assert (= (and d!340630 (not c!198015)) b!1192596))

(assert (= (and b!1192596 c!198013) b!1192599))

(assert (= (and b!1192596 (not c!198013)) b!1192600))

(assert (= (and b!1192599 c!198016) b!1192601))

(assert (= (and b!1192599 (not c!198016)) b!1192589))

(assert (= (and b!1192600 c!198018) b!1192594))

(assert (= (and b!1192600 (not c!198018)) b!1192583))

(assert (= (and b!1192583 c!198017) b!1192586))

(assert (= (and b!1192583 (not c!198017)) b!1192593))

(assert (= (or b!1192586 b!1192593) bm!82841))

(assert (= (and bm!82841 c!198012) b!1192595))

(assert (= (and bm!82841 (not c!198012)) b!1192590))

(assert (= (or b!1192594 b!1192590 b!1192583 b!1192593) bm!82838))

(assert (= (or b!1192594 bm!82841) bm!82839))

(assert (= (and b!1192600 c!198011) b!1192581))

(assert (= (and b!1192600 (not c!198011)) b!1192592))

(assert (= (and b!1192592 c!198014) b!1192591))

(assert (= (and b!1192592 (not c!198014)) b!1192584))

(assert (= (or b!1192591 b!1192584) bm!82837))

(assert (= (and bm!82837 c!198019) b!1192597))

(assert (= (and bm!82837 (not c!198019)) b!1192598))

(assert (= (or b!1192581 b!1192592 b!1192584 b!1192598) bm!82842))

(assert (= (or b!1192581 bm!82837) bm!82840))

(assert (= (and d!340630 res!538624) b!1192582))

(declare-fun m!1367425 () Bool)

(assert (=> b!1192582 m!1367425))

(assert (=> b!1192582 m!1367271))

(assert (=> b!1192582 m!1367271))

(declare-fun m!1367427 () Bool)

(assert (=> b!1192582 m!1367427))

(declare-fun m!1367429 () Bool)

(assert (=> bm!82842 m!1367429))

(assert (=> b!1192587 m!1367279))

(declare-fun m!1367431 () Bool)

(assert (=> b!1192589 m!1367431))

(declare-fun m!1367433 () Bool)

(assert (=> bm!82838 m!1367433))

(declare-fun m!1367435 () Bool)

(assert (=> b!1192593 m!1367435))

(assert (=> b!1192593 m!1367435))

(declare-fun m!1367437 () Bool)

(assert (=> b!1192593 m!1367437))

(declare-fun m!1367439 () Bool)

(assert (=> bm!82840 m!1367439))

(declare-fun m!1367441 () Bool)

(assert (=> d!340630 m!1367441))

(declare-fun m!1367443 () Bool)

(assert (=> bm!82839 m!1367443))

(declare-fun m!1367445 () Bool)

(assert (=> b!1192584 m!1367445))

(assert (=> b!1192584 m!1367445))

(declare-fun m!1367447 () Bool)

(assert (=> b!1192584 m!1367447))

(declare-fun m!1367449 () Bool)

(assert (=> b!1192588 m!1367449))

(assert (=> b!1192600 m!1367433))

(declare-fun m!1367451 () Bool)

(assert (=> b!1192600 m!1367451))

(declare-fun m!1367453 () Bool)

(assert (=> b!1192600 m!1367453))

(declare-fun m!1367455 () Bool)

(assert (=> b!1192600 m!1367455))

(assert (=> b!1192600 m!1367429))

(declare-fun m!1367457 () Bool)

(assert (=> b!1192600 m!1367457))

(declare-fun m!1367459 () Bool)

(assert (=> b!1192600 m!1367459))

(assert (=> b!1192600 m!1367453))

(assert (=> b!1192410 d!340630))

(declare-fun d!340660 () Bool)

(assert (=> d!340660 (= (inv!15936 (xs!6647 t!4115)) (<= (size!9503 (innerList!4002 (xs!6647 t!4115))) 2147483647))))

(declare-fun bs!287945 () Bool)

(assert (= bs!287945 d!340660))

(declare-fun m!1367461 () Bool)

(assert (=> bs!287945 m!1367461))

(assert (=> b!1192405 d!340660))

(declare-fun d!340662 () Bool)

(declare-fun c!198022 () Bool)

(assert (=> d!340662 (= c!198022 ((_ is Node!3942) t!4115))))

(declare-fun e!766457 () Bool)

(assert (=> d!340662 (= (inv!15937 t!4115) e!766457)))

(declare-fun b!1192608 () Bool)

(declare-fun inv!15940 (Conc!3942) Bool)

(assert (=> b!1192608 (= e!766457 (inv!15940 t!4115))))

(declare-fun b!1192609 () Bool)

(declare-fun e!766458 () Bool)

(assert (=> b!1192609 (= e!766457 e!766458)))

(declare-fun res!538628 () Bool)

(assert (=> b!1192609 (= res!538628 (not ((_ is Leaf!6038) t!4115)))))

(assert (=> b!1192609 (=> res!538628 e!766458)))

(declare-fun b!1192610 () Bool)

(declare-fun inv!15941 (Conc!3942) Bool)

(assert (=> b!1192610 (= e!766458 (inv!15941 t!4115))))

(assert (= (and d!340662 c!198022) b!1192608))

(assert (= (and d!340662 (not c!198022)) b!1192609))

(assert (= (and b!1192609 (not res!538628)) b!1192610))

(declare-fun m!1367463 () Bool)

(assert (=> b!1192608 m!1367463))

(declare-fun m!1367465 () Bool)

(assert (=> b!1192610 m!1367465))

(assert (=> start!106032 d!340662))

(declare-fun d!340664 () Bool)

(declare-fun c!198023 () Bool)

(assert (=> d!340664 (= c!198023 ((_ is Node!3942) (left!10461 t!4115)))))

(declare-fun e!766459 () Bool)

(assert (=> d!340664 (= (inv!15937 (left!10461 t!4115)) e!766459)))

(declare-fun b!1192611 () Bool)

(assert (=> b!1192611 (= e!766459 (inv!15940 (left!10461 t!4115)))))

(declare-fun b!1192612 () Bool)

(declare-fun e!766460 () Bool)

(assert (=> b!1192612 (= e!766459 e!766460)))

(declare-fun res!538629 () Bool)

(assert (=> b!1192612 (= res!538629 (not ((_ is Leaf!6038) (left!10461 t!4115))))))

(assert (=> b!1192612 (=> res!538629 e!766460)))

(declare-fun b!1192613 () Bool)

(assert (=> b!1192613 (= e!766460 (inv!15941 (left!10461 t!4115)))))

(assert (= (and d!340664 c!198023) b!1192611))

(assert (= (and d!340664 (not c!198023)) b!1192612))

(assert (= (and b!1192612 (not res!538629)) b!1192613))

(declare-fun m!1367467 () Bool)

(assert (=> b!1192611 m!1367467))

(declare-fun m!1367469 () Bool)

(assert (=> b!1192613 m!1367469))

(assert (=> b!1192409 d!340664))

(declare-fun d!340666 () Bool)

(declare-fun c!198024 () Bool)

(assert (=> d!340666 (= c!198024 ((_ is Node!3942) (right!10791 t!4115)))))

(declare-fun e!766461 () Bool)

(assert (=> d!340666 (= (inv!15937 (right!10791 t!4115)) e!766461)))

(declare-fun b!1192614 () Bool)

(assert (=> b!1192614 (= e!766461 (inv!15940 (right!10791 t!4115)))))

(declare-fun b!1192615 () Bool)

(declare-fun e!766462 () Bool)

(assert (=> b!1192615 (= e!766461 e!766462)))

(declare-fun res!538630 () Bool)

(assert (=> b!1192615 (= res!538630 (not ((_ is Leaf!6038) (right!10791 t!4115))))))

(assert (=> b!1192615 (=> res!538630 e!766462)))

(declare-fun b!1192616 () Bool)

(assert (=> b!1192616 (= e!766462 (inv!15941 (right!10791 t!4115)))))

(assert (= (and d!340666 c!198024) b!1192614))

(assert (= (and d!340666 (not c!198024)) b!1192615))

(assert (= (and b!1192615 (not res!538630)) b!1192616))

(declare-fun m!1367471 () Bool)

(assert (=> b!1192614 m!1367471))

(declare-fun m!1367473 () Bool)

(assert (=> b!1192616 m!1367473))

(assert (=> b!1192409 d!340666))

(declare-fun d!340668 () Bool)

(assert (=> d!340668 (= (slice!424 lt!409537 from!553 (ite c!197961 until!31 lt!409540)) (take!106 (drop!578 lt!409537 from!553) (- (ite c!197961 until!31 lt!409540) from!553)))))

(declare-fun bs!287946 () Bool)

(assert (= bs!287946 d!340668))

(declare-fun m!1367475 () Bool)

(assert (=> bs!287946 m!1367475))

(assert (=> bs!287946 m!1367475))

(declare-fun m!1367477 () Bool)

(assert (=> bs!287946 m!1367477))

(assert (=> bm!82815 d!340668))

(declare-fun d!340670 () Bool)

(declare-fun lt!409577 () Int)

(assert (=> d!340670 (>= lt!409577 0)))

(declare-fun e!766465 () Int)

(assert (=> d!340670 (= lt!409577 e!766465)))

(declare-fun c!198027 () Bool)

(assert (=> d!340670 (= c!198027 ((_ is Nil!12009) (list!4427 t!4115)))))

(assert (=> d!340670 (= (size!9503 (list!4427 t!4115)) lt!409577)))

(declare-fun b!1192621 () Bool)

(assert (=> b!1192621 (= e!766465 0)))

(declare-fun b!1192622 () Bool)

(assert (=> b!1192622 (= e!766465 (+ 1 (size!9503 (t!112281 (list!4427 t!4115)))))))

(assert (= (and d!340670 c!198027) b!1192621))

(assert (= (and d!340670 (not c!198027)) b!1192622))

(declare-fun m!1367479 () Bool)

(assert (=> b!1192622 m!1367479))

(assert (=> b!1192414 d!340670))

(declare-fun b!1192632 () Bool)

(declare-fun e!766470 () List!12033)

(declare-fun e!766471 () List!12033)

(assert (=> b!1192632 (= e!766470 e!766471)))

(declare-fun c!198033 () Bool)

(assert (=> b!1192632 (= c!198033 ((_ is Leaf!6038) t!4115))))

(declare-fun d!340672 () Bool)

(declare-fun c!198032 () Bool)

(assert (=> d!340672 (= c!198032 ((_ is Empty!3942) t!4115))))

(assert (=> d!340672 (= (list!4427 t!4115) e!766470)))

(declare-fun b!1192631 () Bool)

(assert (=> b!1192631 (= e!766470 Nil!12009)))

(declare-fun b!1192633 () Bool)

(declare-fun list!4429 (IArray!7889) List!12033)

(assert (=> b!1192633 (= e!766471 (list!4429 (xs!6647 t!4115)))))

(declare-fun b!1192634 () Bool)

(assert (=> b!1192634 (= e!766471 (++!3044 (list!4427 (left!10461 t!4115)) (list!4427 (right!10791 t!4115))))))

(assert (= (and d!340672 c!198032) b!1192631))

(assert (= (and d!340672 (not c!198032)) b!1192632))

(assert (= (and b!1192632 c!198033) b!1192633))

(assert (= (and b!1192632 (not c!198033)) b!1192634))

(declare-fun m!1367481 () Bool)

(assert (=> b!1192633 m!1367481))

(assert (=> b!1192634 m!1367271))

(assert (=> b!1192634 m!1367281))

(assert (=> b!1192634 m!1367271))

(assert (=> b!1192634 m!1367281))

(declare-fun m!1367483 () Bool)

(assert (=> b!1192634 m!1367483))

(assert (=> b!1192414 d!340672))

(declare-fun d!340674 () Bool)

(declare-fun lt!409582 () Int)

(assert (=> d!340674 (= lt!409582 (size!9503 (list!4427 (left!10461 t!4115))))))

(assert (=> d!340674 (= lt!409582 (ite ((_ is Empty!3942) (left!10461 t!4115)) 0 (ite ((_ is Leaf!6038) (left!10461 t!4115)) (csize!8115 (left!10461 t!4115)) (csize!8114 (left!10461 t!4115)))))))

(assert (=> d!340674 (= (size!9502 (left!10461 t!4115)) lt!409582)))

(declare-fun bs!287947 () Bool)

(assert (= bs!287947 d!340674))

(assert (=> bs!287947 m!1367271))

(assert (=> bs!287947 m!1367271))

(declare-fun m!1367485 () Bool)

(assert (=> bs!287947 m!1367485))

(assert (=> b!1192412 d!340674))

(declare-fun d!340676 () Bool)

(declare-fun lt!409583 () Int)

(assert (=> d!340676 (>= lt!409583 0)))

(declare-fun e!766476 () Int)

(assert (=> d!340676 (= lt!409583 e!766476)))

(declare-fun c!198036 () Bool)

(assert (=> d!340676 (= c!198036 ((_ is Nil!12009) lt!409537))))

(assert (=> d!340676 (= (size!9503 lt!409537) lt!409583)))

(declare-fun b!1192643 () Bool)

(assert (=> b!1192643 (= e!766476 0)))

(declare-fun b!1192644 () Bool)

(assert (=> b!1192644 (= e!766476 (+ 1 (size!9503 (t!112281 lt!409537))))))

(assert (= (and d!340676 c!198036) b!1192643))

(assert (= (and d!340676 (not c!198036)) b!1192644))

(declare-fun m!1367487 () Bool)

(assert (=> b!1192644 m!1367487))

(assert (=> b!1192412 d!340676))

(declare-fun b!1192714 () Bool)

(declare-fun e!766516 () List!12033)

(declare-fun call!82873 () List!12033)

(assert (=> b!1192714 (= e!766516 call!82873)))

(declare-fun bm!82867 () Bool)

(declare-fun c!198069 () Bool)

(declare-fun call!82872 () Int)

(declare-fun e!766514 () Int)

(assert (=> bm!82867 (= call!82873 (slice!424 (ite c!198069 lt!409541 lt!409537) (ite c!198069 (- from!553 call!82872) from!553) (ite c!198069 (- until!31 call!82872) e!766514)))))

(declare-fun b!1192715 () Bool)

(declare-fun e!766517 () List!12033)

(declare-fun call!82874 () List!12033)

(assert (=> b!1192715 (= e!766517 call!82874)))

(declare-fun bm!82868 () Bool)

(assert (=> bm!82868 (= call!82872 (size!9503 lt!409537))))

(declare-fun b!1192716 () Bool)

(assert (=> b!1192716 (= e!766516 e!766517)))

(declare-fun c!198068 () Bool)

(assert (=> b!1192716 (= c!198068 (<= until!31 call!82872))))

(declare-fun bm!82869 () Bool)

(declare-fun c!198070 () Bool)

(assert (=> bm!82869 (= c!198070 c!198068)))

(assert (=> bm!82869 (= call!82874 call!82873)))

(declare-fun b!1192717 () Bool)

(assert (=> b!1192717 (= e!766517 (++!3044 call!82874 (slice!424 lt!409541 0 (- until!31 call!82872))))))

(declare-fun d!340678 () Bool)

(assert (=> d!340678 (= (slice!424 (++!3044 lt!409537 lt!409541) from!553 until!31) e!766516)))

(assert (=> d!340678 (= c!198069 (<= (size!9503 lt!409537) from!553))))

(declare-fun lt!409599 () Unit!18424)

(declare-fun choose!7708 (List!12033 List!12033 Int Int) Unit!18424)

(assert (=> d!340678 (= lt!409599 (choose!7708 lt!409537 lt!409541 from!553 until!31))))

(declare-fun e!766515 () Bool)

(assert (=> d!340678 e!766515))

(declare-fun res!538642 () Bool)

(assert (=> d!340678 (=> (not res!538642) (not e!766515))))

(assert (=> d!340678 (= res!538642 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340678 (= (sliceLemma!23 lt!409537 lt!409541 from!553 until!31) lt!409599)))

(declare-fun b!1192718 () Bool)

(assert (=> b!1192718 (= e!766514 until!31)))

(declare-fun b!1192719 () Bool)

(assert (=> b!1192719 (= e!766514 call!82872)))

(declare-fun b!1192720 () Bool)

(assert (=> b!1192720 (= e!766515 (<= until!31 (+ (size!9503 lt!409537) (size!9503 lt!409541))))))

(assert (= (and d!340678 res!538642) b!1192720))

(assert (= (and d!340678 c!198069) b!1192714))

(assert (= (and d!340678 (not c!198069)) b!1192716))

(assert (= (and b!1192716 c!198068) b!1192715))

(assert (= (and b!1192716 (not c!198068)) b!1192717))

(assert (= (or b!1192715 b!1192717) bm!82869))

(assert (= (and bm!82869 c!198070) b!1192718))

(assert (= (and bm!82869 (not c!198070)) b!1192719))

(assert (= (or b!1192714 b!1192716 b!1192717 b!1192719) bm!82868))

(assert (= (or b!1192714 bm!82869) bm!82867))

(assert (=> bm!82868 m!1367273))

(declare-fun m!1367519 () Bool)

(assert (=> bm!82867 m!1367519))

(declare-fun m!1367525 () Bool)

(assert (=> b!1192717 m!1367525))

(assert (=> b!1192717 m!1367525))

(declare-fun m!1367527 () Bool)

(assert (=> b!1192717 m!1367527))

(assert (=> b!1192720 m!1367273))

(declare-fun m!1367531 () Bool)

(assert (=> b!1192720 m!1367531))

(assert (=> d!340678 m!1367275))

(assert (=> d!340678 m!1367275))

(assert (=> d!340678 m!1367277))

(assert (=> d!340678 m!1367273))

(declare-fun m!1367535 () Bool)

(assert (=> d!340678 m!1367535))

(assert (=> b!1192412 d!340678))

(declare-fun b!1192728 () Bool)

(declare-fun e!766522 () List!12033)

(declare-fun e!766523 () List!12033)

(assert (=> b!1192728 (= e!766522 e!766523)))

(declare-fun c!198074 () Bool)

(assert (=> b!1192728 (= c!198074 ((_ is Leaf!6038) (left!10461 t!4115)))))

(declare-fun d!340686 () Bool)

(declare-fun c!198073 () Bool)

(assert (=> d!340686 (= c!198073 ((_ is Empty!3942) (left!10461 t!4115)))))

(assert (=> d!340686 (= (list!4427 (left!10461 t!4115)) e!766522)))

(declare-fun b!1192727 () Bool)

(assert (=> b!1192727 (= e!766522 Nil!12009)))

(declare-fun b!1192729 () Bool)

(assert (=> b!1192729 (= e!766523 (list!4429 (xs!6647 (left!10461 t!4115))))))

(declare-fun b!1192730 () Bool)

(assert (=> b!1192730 (= e!766523 (++!3044 (list!4427 (left!10461 (left!10461 t!4115))) (list!4427 (right!10791 (left!10461 t!4115)))))))

(assert (= (and d!340686 c!198073) b!1192727))

(assert (= (and d!340686 (not c!198073)) b!1192728))

(assert (= (and b!1192728 c!198074) b!1192729))

(assert (= (and b!1192728 (not c!198074)) b!1192730))

(declare-fun m!1367543 () Bool)

(assert (=> b!1192729 m!1367543))

(assert (=> b!1192730 m!1367451))

(assert (=> b!1192730 m!1367457))

(assert (=> b!1192730 m!1367451))

(assert (=> b!1192730 m!1367457))

(declare-fun m!1367549 () Bool)

(assert (=> b!1192730 m!1367549))

(assert (=> b!1192412 d!340686))

(declare-fun b!1192740 () Bool)

(declare-fun e!766527 () List!12033)

(declare-fun e!766528 () List!12033)

(assert (=> b!1192740 (= e!766527 e!766528)))

(declare-fun c!198079 () Bool)

(assert (=> b!1192740 (= c!198079 ((_ is Leaf!6038) (right!10791 t!4115)))))

(declare-fun d!340692 () Bool)

(declare-fun c!198078 () Bool)

(assert (=> d!340692 (= c!198078 ((_ is Empty!3942) (right!10791 t!4115)))))

(assert (=> d!340692 (= (list!4427 (right!10791 t!4115)) e!766527)))

(declare-fun b!1192739 () Bool)

(assert (=> b!1192739 (= e!766527 Nil!12009)))

(declare-fun b!1192741 () Bool)

(assert (=> b!1192741 (= e!766528 (list!4429 (xs!6647 (right!10791 t!4115))))))

(declare-fun b!1192742 () Bool)

(assert (=> b!1192742 (= e!766528 (++!3044 (list!4427 (left!10461 (right!10791 t!4115))) (list!4427 (right!10791 (right!10791 t!4115)))))))

(assert (= (and d!340692 c!198078) b!1192739))

(assert (= (and d!340692 (not c!198078)) b!1192740))

(assert (= (and b!1192740 c!198079) b!1192741))

(assert (= (and b!1192740 (not c!198079)) b!1192742))

(declare-fun m!1367551 () Bool)

(assert (=> b!1192741 m!1367551))

(declare-fun m!1367553 () Bool)

(assert (=> b!1192742 m!1367553))

(declare-fun m!1367555 () Bool)

(assert (=> b!1192742 m!1367555))

(assert (=> b!1192742 m!1367553))

(assert (=> b!1192742 m!1367555))

(declare-fun m!1367557 () Bool)

(assert (=> b!1192742 m!1367557))

(assert (=> b!1192412 d!340692))

(declare-fun d!340694 () Bool)

(assert (=> d!340694 (= (slice!424 (++!3044 lt!409537 lt!409541) from!553 until!31) (take!106 (drop!578 (++!3044 lt!409537 lt!409541) from!553) (- until!31 from!553)))))

(declare-fun bs!287949 () Bool)

(assert (= bs!287949 d!340694))

(assert (=> bs!287949 m!1367275))

(declare-fun m!1367559 () Bool)

(assert (=> bs!287949 m!1367559))

(assert (=> bs!287949 m!1367559))

(declare-fun m!1367561 () Bool)

(assert (=> bs!287949 m!1367561))

(assert (=> b!1192412 d!340694))

(declare-fun b!1192757 () Bool)

(declare-fun lt!409601 () List!12033)

(declare-fun e!766537 () Bool)

(assert (=> b!1192757 (= e!766537 (or (not (= lt!409541 Nil!12009)) (= lt!409601 lt!409537)))))

(declare-fun d!340696 () Bool)

(assert (=> d!340696 e!766537))

(declare-fun res!538645 () Bool)

(assert (=> d!340696 (=> (not res!538645) (not e!766537))))

(assert (=> d!340696 (= res!538645 (= (content!1665 lt!409601) ((_ map or) (content!1665 lt!409537) (content!1665 lt!409541))))))

(declare-fun e!766536 () List!12033)

(assert (=> d!340696 (= lt!409601 e!766536)))

(declare-fun c!198080 () Bool)

(assert (=> d!340696 (= c!198080 ((_ is Nil!12009) lt!409537))))

(assert (=> d!340696 (= (++!3044 lt!409537 lt!409541) lt!409601)))

(declare-fun b!1192755 () Bool)

(assert (=> b!1192755 (= e!766536 (Cons!12009 (h!17410 lt!409537) (++!3044 (t!112281 lt!409537) lt!409541)))))

(declare-fun b!1192756 () Bool)

(declare-fun res!538646 () Bool)

(assert (=> b!1192756 (=> (not res!538646) (not e!766537))))

(assert (=> b!1192756 (= res!538646 (= (size!9503 lt!409601) (+ (size!9503 lt!409537) (size!9503 lt!409541))))))

(declare-fun b!1192754 () Bool)

(assert (=> b!1192754 (= e!766536 lt!409541)))

(assert (= (and d!340696 c!198080) b!1192754))

(assert (= (and d!340696 (not c!198080)) b!1192755))

(assert (= (and d!340696 res!538645) b!1192756))

(assert (= (and b!1192756 res!538646) b!1192757))

(declare-fun m!1367563 () Bool)

(assert (=> d!340696 m!1367563))

(declare-fun m!1367565 () Bool)

(assert (=> d!340696 m!1367565))

(declare-fun m!1367567 () Bool)

(assert (=> d!340696 m!1367567))

(declare-fun m!1367569 () Bool)

(assert (=> b!1192755 m!1367569))

(declare-fun m!1367571 () Bool)

(assert (=> b!1192756 m!1367571))

(assert (=> b!1192756 m!1367273))

(assert (=> b!1192756 m!1367531))

(assert (=> b!1192412 d!340696))

(declare-fun b!1192761 () Bool)

(declare-fun res!538652 () Bool)

(declare-fun e!766541 () Bool)

(assert (=> b!1192761 (=> (not res!538652) (not e!766541))))

(assert (=> b!1192761 (= res!538652 (isBalanced!1127 (right!10791 t!4115)))))

(declare-fun b!1192763 () Bool)

(declare-fun res!538648 () Bool)

(assert (=> b!1192763 (=> (not res!538648) (not e!766541))))

(assert (=> b!1192763 (= res!538648 (<= (- (height!539 (left!10461 t!4115)) (height!539 (right!10791 t!4115))) 1))))

(declare-fun b!1192764 () Bool)

(declare-fun res!538650 () Bool)

(assert (=> b!1192764 (=> (not res!538650) (not e!766541))))

(assert (=> b!1192764 (= res!538650 (isBalanced!1127 (left!10461 t!4115)))))

(declare-fun b!1192765 () Bool)

(assert (=> b!1192765 (= e!766541 (not (isEmpty!7220 (right!10791 t!4115))))))

(declare-fun b!1192766 () Bool)

(declare-fun e!766540 () Bool)

(assert (=> b!1192766 (= e!766540 e!766541)))

(declare-fun res!538651 () Bool)

(assert (=> b!1192766 (=> (not res!538651) (not e!766541))))

(assert (=> b!1192766 (= res!538651 (<= (- 1) (- (height!539 (left!10461 t!4115)) (height!539 (right!10791 t!4115)))))))

(declare-fun b!1192762 () Bool)

(declare-fun res!538647 () Bool)

(assert (=> b!1192762 (=> (not res!538647) (not e!766541))))

(assert (=> b!1192762 (= res!538647 (not (isEmpty!7220 (left!10461 t!4115))))))

(declare-fun d!340698 () Bool)

(declare-fun res!538649 () Bool)

(assert (=> d!340698 (=> res!538649 e!766540)))

(assert (=> d!340698 (= res!538649 (not ((_ is Node!3942) t!4115)))))

(assert (=> d!340698 (= (isBalanced!1127 t!4115) e!766540)))

(assert (= (and d!340698 (not res!538649)) b!1192766))

(assert (= (and b!1192766 res!538651) b!1192763))

(assert (= (and b!1192763 res!538648) b!1192764))

(assert (= (and b!1192764 res!538650) b!1192761))

(assert (= (and b!1192761 res!538652) b!1192762))

(assert (= (and b!1192762 res!538647) b!1192765))

(declare-fun m!1367585 () Bool)

(assert (=> b!1192765 m!1367585))

(declare-fun m!1367587 () Bool)

(assert (=> b!1192766 m!1367587))

(declare-fun m!1367589 () Bool)

(assert (=> b!1192766 m!1367589))

(assert (=> b!1192764 m!1367449))

(declare-fun m!1367591 () Bool)

(assert (=> b!1192762 m!1367591))

(assert (=> b!1192763 m!1367587))

(assert (=> b!1192763 m!1367589))

(declare-fun m!1367593 () Bool)

(assert (=> b!1192761 m!1367593))

(assert (=> b!1192413 d!340698))

(declare-fun d!340700 () Bool)

(declare-fun lt!409602 () Int)

(assert (=> d!340700 (= lt!409602 (size!9503 (list!4427 t!4115)))))

(assert (=> d!340700 (= lt!409602 (ite ((_ is Empty!3942) t!4115) 0 (ite ((_ is Leaf!6038) t!4115) (csize!8115 t!4115) (csize!8114 t!4115))))))

(assert (=> d!340700 (= (size!9502 t!4115) lt!409602)))

(declare-fun bs!287950 () Bool)

(assert (= bs!287950 d!340700))

(assert (=> bs!287950 m!1367295))

(assert (=> bs!287950 m!1367295))

(assert (=> bs!287950 m!1367297))

(assert (=> b!1192404 d!340700))

(declare-fun tp!340129 () Bool)

(declare-fun e!766549 () Bool)

(declare-fun b!1192778 () Bool)

(declare-fun tp!340128 () Bool)

(assert (=> b!1192778 (= e!766549 (and (inv!15937 (left!10461 (left!10461 t!4115))) tp!340129 (inv!15937 (right!10791 (left!10461 t!4115))) tp!340128))))

(declare-fun b!1192780 () Bool)

(declare-fun e!766548 () Bool)

(declare-fun tp!340127 () Bool)

(assert (=> b!1192780 (= e!766548 tp!340127)))

(declare-fun b!1192779 () Bool)

(assert (=> b!1192779 (= e!766549 (and (inv!15936 (xs!6647 (left!10461 t!4115))) e!766548))))

(assert (=> b!1192409 (= tp!340105 (and (inv!15937 (left!10461 t!4115)) e!766549))))

(assert (= (and b!1192409 ((_ is Node!3942) (left!10461 t!4115))) b!1192778))

(assert (= b!1192779 b!1192780))

(assert (= (and b!1192409 ((_ is Leaf!6038) (left!10461 t!4115))) b!1192779))

(declare-fun m!1367595 () Bool)

(assert (=> b!1192778 m!1367595))

(declare-fun m!1367597 () Bool)

(assert (=> b!1192778 m!1367597))

(declare-fun m!1367599 () Bool)

(assert (=> b!1192779 m!1367599))

(assert (=> b!1192409 m!1367265))

(declare-fun b!1192781 () Bool)

(declare-fun e!766551 () Bool)

(declare-fun tp!340132 () Bool)

(declare-fun tp!340131 () Bool)

(assert (=> b!1192781 (= e!766551 (and (inv!15937 (left!10461 (right!10791 t!4115))) tp!340132 (inv!15937 (right!10791 (right!10791 t!4115))) tp!340131))))

(declare-fun b!1192783 () Bool)

(declare-fun e!766550 () Bool)

(declare-fun tp!340130 () Bool)

(assert (=> b!1192783 (= e!766550 tp!340130)))

(declare-fun b!1192782 () Bool)

(assert (=> b!1192782 (= e!766551 (and (inv!15936 (xs!6647 (right!10791 t!4115))) e!766550))))

(assert (=> b!1192409 (= tp!340103 (and (inv!15937 (right!10791 t!4115)) e!766551))))

(assert (= (and b!1192409 ((_ is Node!3942) (right!10791 t!4115))) b!1192781))

(assert (= b!1192782 b!1192783))

(assert (= (and b!1192409 ((_ is Leaf!6038) (right!10791 t!4115))) b!1192782))

(declare-fun m!1367601 () Bool)

(assert (=> b!1192781 m!1367601))

(declare-fun m!1367603 () Bool)

(assert (=> b!1192781 m!1367603))

(declare-fun m!1367605 () Bool)

(assert (=> b!1192782 m!1367605))

(assert (=> b!1192409 m!1367267))

(declare-fun b!1192788 () Bool)

(declare-fun e!766554 () Bool)

(declare-fun tp_is_empty!5919 () Bool)

(declare-fun tp!340135 () Bool)

(assert (=> b!1192788 (= e!766554 (and tp_is_empty!5919 tp!340135))))

(assert (=> b!1192407 (= tp!340104 e!766554)))

(assert (= (and b!1192407 ((_ is Cons!12009) (innerList!4002 (xs!6647 t!4115)))) b!1192788))

(check-sat (not b!1192593) (not b!1192783) (not b!1192441) (not b!1192427) (not b!1192644) tp_is_empty!5919 (not b!1192610) (not bm!82868) (not b!1192742) (not d!340694) (not b!1192443) (not b!1192446) (not d!340668) (not b!1192589) (not b!1192613) (not b!1192426) (not b!1192634) (not b!1192730) (not b!1192444) (not b!1192633) (not b!1192765) (not b!1192755) (not bm!82839) (not b!1192622) (not b!1192582) (not b!1192442) (not d!340674) (not d!340700) (not b!1192717) (not b!1192608) (not b!1192764) (not b!1192600) (not b!1192584) (not b!1192788) (not d!340624) (not b!1192781) (not d!340660) (not b!1192445) (not d!340696) (not d!340630) (not b!1192780) (not b!1192611) (not b!1192778) (not d!340678) (not b!1192779) (not b!1192763) (not bm!82838) (not d!340622) (not b!1192761) (not b!1192614) (not b!1192720) (not b!1192766) (not bm!82840) (not b!1192616) (not bm!82867) (not b!1192729) (not b!1192409) (not b!1192588) (not b!1192756) (not b!1192762) (not b!1192782) (not b!1192587) (not b!1192741) (not bm!82842))
(check-sat)
