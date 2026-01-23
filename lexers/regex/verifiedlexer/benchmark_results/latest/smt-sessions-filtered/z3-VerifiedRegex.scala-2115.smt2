; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107076 () Bool)

(assert start!107076)

(declare-fun b!1202510 () Bool)

(declare-fun e!771589 () Bool)

(declare-datatypes ((T!21824 0))(
  ( (T!21825 (val!3894 Int)) )
))
(declare-datatypes ((List!12073 0))(
  ( (Nil!12049) (Cons!12049 (h!17450 T!21824) (t!112471 List!12073)) )
))
(declare-datatypes ((IArray!7969 0))(
  ( (IArray!7970 (innerList!4042 List!12073)) )
))
(declare-datatypes ((Conc!3982 0))(
  ( (Node!3982 (left!10521 Conc!3982) (right!10851 Conc!3982) (csize!8194 Int) (cheight!4193 Int)) (Leaf!6098 (xs!6691 IArray!7969) (csize!8195 Int)) (Empty!3982) )
))
(declare-fun t!4115 () Conc!3982)

(declare-fun e!771588 () Bool)

(declare-fun inv!16148 (IArray!7969) Bool)

(assert (=> b!1202510 (= e!771589 (and (inv!16148 (xs!6691 t!4115)) e!771588))))

(declare-fun bm!83834 () Bool)

(declare-fun call!83839 () List!12073)

(declare-fun call!83840 () List!12073)

(assert (=> bm!83834 (= call!83839 call!83840)))

(declare-fun b!1202511 () Bool)

(declare-fun e!771590 () Bool)

(declare-fun lt!411244 () List!12073)

(declare-fun e!771587 () List!12073)

(assert (=> b!1202511 (= e!771590 (= lt!411244 e!771587))))

(declare-fun c!200661 () Bool)

(declare-fun until!31 () Int)

(declare-fun lt!411246 () Int)

(assert (=> b!1202511 (= c!200661 (<= until!31 lt!411246))))

(declare-fun b!1202512 () Bool)

(declare-fun tp!341414 () Bool)

(declare-fun tp!341413 () Bool)

(declare-fun inv!16149 (Conc!3982) Bool)

(assert (=> b!1202512 (= e!771589 (and (inv!16149 (left!10521 t!4115)) tp!341414 (inv!16149 (right!10851 t!4115)) tp!341413))))

(declare-fun from!553 () Int)

(declare-fun b!1202513 () Bool)

(declare-fun e!771586 () Bool)

(declare-fun lt!411243 () Conc!3982)

(declare-fun list!4497 (Conc!3982) List!12073)

(declare-fun slice!486 (List!12073 Int Int) List!12073)

(assert (=> b!1202513 (= e!771586 (= (list!4497 lt!411243) (slice!486 (list!4497 t!4115) from!553 until!31)))))

(declare-fun b!1202514 () Bool)

(assert (=> b!1202514 (= e!771587 call!83839)))

(declare-fun b!1202515 () Bool)

(declare-fun e!771591 () Bool)

(assert (=> b!1202515 (= e!771591 e!771586)))

(declare-fun res!541803 () Bool)

(assert (=> b!1202515 (=> (not res!541803) (not e!771586))))

(declare-fun isBalanced!1167 (Conc!3982) Bool)

(assert (=> b!1202515 (= res!541803 (isBalanced!1167 lt!411243))))

(declare-fun lt!411247 () Int)

(declare-fun ++!3091 (Conc!3982 Conc!3982) Conc!3982)

(declare-fun slice!487 (Conc!3982 Int Int) Conc!3982)

(assert (=> b!1202515 (= lt!411243 (++!3091 (slice!487 (left!10521 t!4115) from!553 lt!411247) (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))

(declare-fun b!1202516 () Bool)

(declare-fun res!541804 () Bool)

(declare-fun e!771592 () Bool)

(assert (=> b!1202516 (=> (not res!541804) (not e!771592))))

(get-info :version)

(assert (=> b!1202516 (= res!541804 (and (not (= from!553 until!31)) (not ((_ is Leaf!6098) t!4115)) ((_ is Node!3982) t!4115)))))

(declare-fun b!1202517 () Bool)

(declare-fun tp!341415 () Bool)

(assert (=> b!1202517 (= e!771588 tp!341415)))

(declare-fun b!1202518 () Bool)

(declare-fun res!541805 () Bool)

(assert (=> b!1202518 (=> (not res!541805) (not e!771592))))

(declare-fun size!9584 (Conc!3982) Int)

(assert (=> b!1202518 (= res!541805 (<= until!31 (size!9584 t!4115)))))

(declare-fun b!1202519 () Bool)

(assert (=> b!1202519 (= e!771592 (not e!771591))))

(declare-fun res!541802 () Bool)

(assert (=> b!1202519 (=> res!541802 e!771591)))

(assert (=> b!1202519 (= res!541802 (or (<= lt!411247 from!553) (<= until!31 lt!411247)))))

(assert (=> b!1202519 (= lt!411247 (size!9584 (left!10521 t!4115)))))

(assert (=> b!1202519 e!771590))

(declare-fun c!200662 () Bool)

(assert (=> b!1202519 (= c!200662 (<= lt!411246 from!553))))

(declare-fun lt!411242 () List!12073)

(declare-fun lt!411248 () List!12073)

(declare-fun ++!3092 (List!12073 List!12073) List!12073)

(assert (=> b!1202519 (= lt!411244 (slice!486 (++!3092 lt!411248 lt!411242) from!553 until!31))))

(declare-fun size!9585 (List!12073) Int)

(assert (=> b!1202519 (= lt!411246 (size!9585 lt!411248))))

(declare-datatypes ((Unit!18468 0))(
  ( (Unit!18469) )
))
(declare-fun lt!411245 () Unit!18468)

(declare-fun sliceLemma!45 (List!12073 List!12073 Int Int) Unit!18468)

(assert (=> b!1202519 (= lt!411245 (sliceLemma!45 lt!411248 lt!411242 from!553 until!31))))

(assert (=> b!1202519 (= lt!411242 (list!4497 (right!10851 t!4115)))))

(assert (=> b!1202519 (= lt!411248 (list!4497 (left!10521 t!4115)))))

(declare-fun b!1202520 () Bool)

(assert (=> b!1202520 (= e!771587 (++!3092 (slice!486 lt!411248 from!553 lt!411246) call!83839))))

(declare-fun b!1202521 () Bool)

(assert (=> b!1202521 (= e!771590 (= lt!411244 call!83840))))

(declare-fun res!541801 () Bool)

(assert (=> start!107076 (=> (not res!541801) (not e!771592))))

(assert (=> start!107076 (= res!541801 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!107076 e!771592))

(assert (=> start!107076 true))

(assert (=> start!107076 (and (inv!16149 t!4115) e!771589)))

(declare-fun bm!83835 () Bool)

(assert (=> bm!83835 (= call!83840 (slice!486 (ite c!200662 lt!411242 (ite c!200661 lt!411248 lt!411242)) (ite c!200662 (- from!553 lt!411246) (ite c!200661 from!553 0)) (ite c!200662 (- until!31 lt!411246) (ite c!200661 until!31 (- until!31 lt!411246)))))))

(declare-fun b!1202522 () Bool)

(declare-fun res!541806 () Bool)

(assert (=> b!1202522 (=> (not res!541806) (not e!771592))))

(assert (=> b!1202522 (= res!541806 (isBalanced!1167 t!4115))))

(assert (= (and start!107076 res!541801) b!1202518))

(assert (= (and b!1202518 res!541805) b!1202522))

(assert (= (and b!1202522 res!541806) b!1202516))

(assert (= (and b!1202516 res!541804) b!1202519))

(assert (= (and b!1202519 c!200662) b!1202521))

(assert (= (and b!1202519 (not c!200662)) b!1202511))

(assert (= (and b!1202511 c!200661) b!1202514))

(assert (= (and b!1202511 (not c!200661)) b!1202520))

(assert (= (or b!1202514 b!1202520) bm!83834))

(assert (= (or b!1202521 bm!83834) bm!83835))

(assert (= (and b!1202519 (not res!541802)) b!1202515))

(assert (= (and b!1202515 res!541803) b!1202513))

(assert (= (and start!107076 ((_ is Node!3982) t!4115)) b!1202512))

(assert (= b!1202510 b!1202517))

(assert (= (and start!107076 ((_ is Leaf!6098) t!4115)) b!1202510))

(declare-fun m!1378347 () Bool)

(assert (=> bm!83835 m!1378347))

(declare-fun m!1378349 () Bool)

(assert (=> b!1202513 m!1378349))

(declare-fun m!1378351 () Bool)

(assert (=> b!1202513 m!1378351))

(assert (=> b!1202513 m!1378351))

(declare-fun m!1378353 () Bool)

(assert (=> b!1202513 m!1378353))

(declare-fun m!1378355 () Bool)

(assert (=> b!1202520 m!1378355))

(assert (=> b!1202520 m!1378355))

(declare-fun m!1378357 () Bool)

(assert (=> b!1202520 m!1378357))

(declare-fun m!1378359 () Bool)

(assert (=> b!1202512 m!1378359))

(declare-fun m!1378361 () Bool)

(assert (=> b!1202512 m!1378361))

(declare-fun m!1378363 () Bool)

(assert (=> start!107076 m!1378363))

(declare-fun m!1378365 () Bool)

(assert (=> b!1202522 m!1378365))

(declare-fun m!1378367 () Bool)

(assert (=> b!1202515 m!1378367))

(declare-fun m!1378369 () Bool)

(assert (=> b!1202515 m!1378369))

(declare-fun m!1378371 () Bool)

(assert (=> b!1202515 m!1378371))

(assert (=> b!1202515 m!1378369))

(assert (=> b!1202515 m!1378371))

(declare-fun m!1378373 () Bool)

(assert (=> b!1202515 m!1378373))

(declare-fun m!1378375 () Bool)

(assert (=> b!1202510 m!1378375))

(declare-fun m!1378377 () Bool)

(assert (=> b!1202518 m!1378377))

(declare-fun m!1378379 () Bool)

(assert (=> b!1202519 m!1378379))

(declare-fun m!1378381 () Bool)

(assert (=> b!1202519 m!1378381))

(declare-fun m!1378383 () Bool)

(assert (=> b!1202519 m!1378383))

(declare-fun m!1378385 () Bool)

(assert (=> b!1202519 m!1378385))

(assert (=> b!1202519 m!1378383))

(declare-fun m!1378387 () Bool)

(assert (=> b!1202519 m!1378387))

(declare-fun m!1378389 () Bool)

(assert (=> b!1202519 m!1378389))

(declare-fun m!1378391 () Bool)

(assert (=> b!1202519 m!1378391))

(check-sat (not b!1202512) (not b!1202517) (not start!107076) (not b!1202519) (not b!1202515) (not bm!83835) (not b!1202513) (not b!1202522) (not b!1202518) (not b!1202510) (not b!1202520))
(check-sat)
(get-model)

(declare-fun d!343958 () Bool)

(declare-fun lt!411251 () Int)

(assert (=> d!343958 (= lt!411251 (size!9585 (list!4497 (left!10521 t!4115))))))

(assert (=> d!343958 (= lt!411251 (ite ((_ is Empty!3982) (left!10521 t!4115)) 0 (ite ((_ is Leaf!6098) (left!10521 t!4115)) (csize!8195 (left!10521 t!4115)) (csize!8194 (left!10521 t!4115)))))))

(assert (=> d!343958 (= (size!9584 (left!10521 t!4115)) lt!411251)))

(declare-fun bs!288333 () Bool)

(assert (= bs!288333 d!343958))

(assert (=> bs!288333 m!1378379))

(assert (=> bs!288333 m!1378379))

(declare-fun m!1378393 () Bool)

(assert (=> bs!288333 m!1378393))

(assert (=> b!1202519 d!343958))

(declare-fun b!1202532 () Bool)

(declare-fun e!771598 () List!12073)

(assert (=> b!1202532 (= e!771598 (Cons!12049 (h!17450 lt!411248) (++!3092 (t!112471 lt!411248) lt!411242)))))

(declare-fun d!343960 () Bool)

(declare-fun e!771597 () Bool)

(assert (=> d!343960 e!771597))

(declare-fun res!541812 () Bool)

(assert (=> d!343960 (=> (not res!541812) (not e!771597))))

(declare-fun lt!411254 () List!12073)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1696 (List!12073) (InoxSet T!21824))

(assert (=> d!343960 (= res!541812 (= (content!1696 lt!411254) ((_ map or) (content!1696 lt!411248) (content!1696 lt!411242))))))

(assert (=> d!343960 (= lt!411254 e!771598)))

(declare-fun c!200665 () Bool)

(assert (=> d!343960 (= c!200665 ((_ is Nil!12049) lt!411248))))

(assert (=> d!343960 (= (++!3092 lt!411248 lt!411242) lt!411254)))

(declare-fun b!1202533 () Bool)

(declare-fun res!541811 () Bool)

(assert (=> b!1202533 (=> (not res!541811) (not e!771597))))

(assert (=> b!1202533 (= res!541811 (= (size!9585 lt!411254) (+ (size!9585 lt!411248) (size!9585 lt!411242))))))

(declare-fun b!1202531 () Bool)

(assert (=> b!1202531 (= e!771598 lt!411242)))

(declare-fun b!1202534 () Bool)

(assert (=> b!1202534 (= e!771597 (or (not (= lt!411242 Nil!12049)) (= lt!411254 lt!411248)))))

(assert (= (and d!343960 c!200665) b!1202531))

(assert (= (and d!343960 (not c!200665)) b!1202532))

(assert (= (and d!343960 res!541812) b!1202533))

(assert (= (and b!1202533 res!541811) b!1202534))

(declare-fun m!1378395 () Bool)

(assert (=> b!1202532 m!1378395))

(declare-fun m!1378397 () Bool)

(assert (=> d!343960 m!1378397))

(declare-fun m!1378399 () Bool)

(assert (=> d!343960 m!1378399))

(declare-fun m!1378401 () Bool)

(assert (=> d!343960 m!1378401))

(declare-fun m!1378403 () Bool)

(assert (=> b!1202533 m!1378403))

(assert (=> b!1202533 m!1378391))

(declare-fun m!1378405 () Bool)

(assert (=> b!1202533 m!1378405))

(assert (=> b!1202519 d!343960))

(declare-fun d!343962 () Bool)

(declare-fun take!135 (List!12073 Int) List!12073)

(declare-fun drop!607 (List!12073 Int) List!12073)

(assert (=> d!343962 (= (slice!486 (++!3092 lt!411248 lt!411242) from!553 until!31) (take!135 (drop!607 (++!3092 lt!411248 lt!411242) from!553) (- until!31 from!553)))))

(declare-fun bs!288334 () Bool)

(assert (= bs!288334 d!343962))

(assert (=> bs!288334 m!1378383))

(declare-fun m!1378407 () Bool)

(assert (=> bs!288334 m!1378407))

(assert (=> bs!288334 m!1378407))

(declare-fun m!1378409 () Bool)

(assert (=> bs!288334 m!1378409))

(assert (=> b!1202519 d!343962))

(declare-fun b!1202546 () Bool)

(declare-fun e!771604 () List!12073)

(assert (=> b!1202546 (= e!771604 (++!3092 (list!4497 (left!10521 (right!10851 t!4115))) (list!4497 (right!10851 (right!10851 t!4115)))))))

(declare-fun d!343964 () Bool)

(declare-fun c!200670 () Bool)

(assert (=> d!343964 (= c!200670 ((_ is Empty!3982) (right!10851 t!4115)))))

(declare-fun e!771603 () List!12073)

(assert (=> d!343964 (= (list!4497 (right!10851 t!4115)) e!771603)))

(declare-fun b!1202543 () Bool)

(assert (=> b!1202543 (= e!771603 Nil!12049)))

(declare-fun b!1202545 () Bool)

(declare-fun list!4498 (IArray!7969) List!12073)

(assert (=> b!1202545 (= e!771604 (list!4498 (xs!6691 (right!10851 t!4115))))))

(declare-fun b!1202544 () Bool)

(assert (=> b!1202544 (= e!771603 e!771604)))

(declare-fun c!200671 () Bool)

(assert (=> b!1202544 (= c!200671 ((_ is Leaf!6098) (right!10851 t!4115)))))

(assert (= (and d!343964 c!200670) b!1202543))

(assert (= (and d!343964 (not c!200670)) b!1202544))

(assert (= (and b!1202544 c!200671) b!1202545))

(assert (= (and b!1202544 (not c!200671)) b!1202546))

(declare-fun m!1378411 () Bool)

(assert (=> b!1202546 m!1378411))

(declare-fun m!1378413 () Bool)

(assert (=> b!1202546 m!1378413))

(assert (=> b!1202546 m!1378411))

(assert (=> b!1202546 m!1378413))

(declare-fun m!1378415 () Bool)

(assert (=> b!1202546 m!1378415))

(declare-fun m!1378417 () Bool)

(assert (=> b!1202545 m!1378417))

(assert (=> b!1202519 d!343964))

(declare-fun bm!83842 () Bool)

(declare-fun c!200681 () Bool)

(declare-fun c!200683 () Bool)

(assert (=> bm!83842 (= c!200681 c!200683)))

(declare-fun call!83849 () List!12073)

(declare-fun call!83847 () List!12073)

(assert (=> bm!83842 (= call!83849 call!83847)))

(declare-fun b!1202591 () Bool)

(declare-fun e!771627 () List!12073)

(declare-fun e!771626 () List!12073)

(assert (=> b!1202591 (= e!771627 e!771626)))

(declare-fun call!83848 () Int)

(assert (=> b!1202591 (= c!200683 (<= until!31 call!83848))))

(declare-fun d!343968 () Bool)

(assert (=> d!343968 (= (slice!486 (++!3092 lt!411248 lt!411242) from!553 until!31) e!771627)))

(declare-fun c!200682 () Bool)

(assert (=> d!343968 (= c!200682 (<= (size!9585 lt!411248) from!553))))

(declare-fun lt!411260 () Unit!18468)

(declare-fun choose!7739 (List!12073 List!12073 Int Int) Unit!18468)

(assert (=> d!343968 (= lt!411260 (choose!7739 lt!411248 lt!411242 from!553 until!31))))

(declare-fun e!771625 () Bool)

(assert (=> d!343968 e!771625))

(declare-fun res!541839 () Bool)

(assert (=> d!343968 (=> (not res!541839) (not e!771625))))

(assert (=> d!343968 (= res!541839 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!343968 (= (sliceLemma!45 lt!411248 lt!411242 from!553 until!31) lt!411260)))

(declare-fun bm!83843 () Bool)

(declare-fun e!771628 () Int)

(assert (=> bm!83843 (= call!83847 (slice!486 (ite c!200682 lt!411242 lt!411248) (ite c!200682 (- from!553 call!83848) from!553) (ite c!200682 (- until!31 call!83848) e!771628)))))

(declare-fun b!1202592 () Bool)

(assert (=> b!1202592 (= e!771628 call!83848)))

(declare-fun b!1202593 () Bool)

(assert (=> b!1202593 (= e!771625 (<= until!31 (+ (size!9585 lt!411248) (size!9585 lt!411242))))))

(declare-fun b!1202594 () Bool)

(assert (=> b!1202594 (= e!771626 call!83849)))

(declare-fun bm!83844 () Bool)

(assert (=> bm!83844 (= call!83848 (size!9585 lt!411248))))

(declare-fun b!1202595 () Bool)

(assert (=> b!1202595 (= e!771628 until!31)))

(declare-fun b!1202596 () Bool)

(assert (=> b!1202596 (= e!771627 call!83847)))

(declare-fun b!1202597 () Bool)

(assert (=> b!1202597 (= e!771626 (++!3092 call!83849 (slice!486 lt!411242 0 (- until!31 call!83848))))))

(assert (= (and d!343968 res!541839) b!1202593))

(assert (= (and d!343968 c!200682) b!1202596))

(assert (= (and d!343968 (not c!200682)) b!1202591))

(assert (= (and b!1202591 c!200683) b!1202594))

(assert (= (and b!1202591 (not c!200683)) b!1202597))

(assert (= (or b!1202594 b!1202597) bm!83842))

(assert (= (and bm!83842 c!200681) b!1202595))

(assert (= (and bm!83842 (not c!200681)) b!1202592))

(assert (= (or b!1202596 b!1202591 b!1202592 b!1202597) bm!83844))

(assert (= (or b!1202596 bm!83842) bm!83843))

(declare-fun m!1378447 () Bool)

(assert (=> b!1202597 m!1378447))

(assert (=> b!1202597 m!1378447))

(declare-fun m!1378449 () Bool)

(assert (=> b!1202597 m!1378449))

(assert (=> bm!83844 m!1378391))

(assert (=> b!1202593 m!1378391))

(assert (=> b!1202593 m!1378405))

(declare-fun m!1378451 () Bool)

(assert (=> bm!83843 m!1378451))

(assert (=> d!343968 m!1378383))

(assert (=> d!343968 m!1378383))

(assert (=> d!343968 m!1378387))

(assert (=> d!343968 m!1378391))

(declare-fun m!1378453 () Bool)

(assert (=> d!343968 m!1378453))

(assert (=> b!1202519 d!343968))

(declare-fun b!1202601 () Bool)

(declare-fun e!771630 () List!12073)

(assert (=> b!1202601 (= e!771630 (++!3092 (list!4497 (left!10521 (left!10521 t!4115))) (list!4497 (right!10851 (left!10521 t!4115)))))))

(declare-fun d!343976 () Bool)

(declare-fun c!200684 () Bool)

(assert (=> d!343976 (= c!200684 ((_ is Empty!3982) (left!10521 t!4115)))))

(declare-fun e!771629 () List!12073)

(assert (=> d!343976 (= (list!4497 (left!10521 t!4115)) e!771629)))

(declare-fun b!1202598 () Bool)

(assert (=> b!1202598 (= e!771629 Nil!12049)))

(declare-fun b!1202600 () Bool)

(assert (=> b!1202600 (= e!771630 (list!4498 (xs!6691 (left!10521 t!4115))))))

(declare-fun b!1202599 () Bool)

(assert (=> b!1202599 (= e!771629 e!771630)))

(declare-fun c!200685 () Bool)

(assert (=> b!1202599 (= c!200685 ((_ is Leaf!6098) (left!10521 t!4115)))))

(assert (= (and d!343976 c!200684) b!1202598))

(assert (= (and d!343976 (not c!200684)) b!1202599))

(assert (= (and b!1202599 c!200685) b!1202600))

(assert (= (and b!1202599 (not c!200685)) b!1202601))

(declare-fun m!1378459 () Bool)

(assert (=> b!1202601 m!1378459))

(declare-fun m!1378461 () Bool)

(assert (=> b!1202601 m!1378461))

(assert (=> b!1202601 m!1378459))

(assert (=> b!1202601 m!1378461))

(declare-fun m!1378463 () Bool)

(assert (=> b!1202601 m!1378463))

(declare-fun m!1378465 () Bool)

(assert (=> b!1202600 m!1378465))

(assert (=> b!1202519 d!343976))

(declare-fun d!343980 () Bool)

(declare-fun lt!411263 () Int)

(assert (=> d!343980 (>= lt!411263 0)))

(declare-fun e!771633 () Int)

(assert (=> d!343980 (= lt!411263 e!771633)))

(declare-fun c!200688 () Bool)

(assert (=> d!343980 (= c!200688 ((_ is Nil!12049) lt!411248))))

(assert (=> d!343980 (= (size!9585 lt!411248) lt!411263)))

(declare-fun b!1202606 () Bool)

(assert (=> b!1202606 (= e!771633 0)))

(declare-fun b!1202607 () Bool)

(assert (=> b!1202607 (= e!771633 (+ 1 (size!9585 (t!112471 lt!411248))))))

(assert (= (and d!343980 c!200688) b!1202606))

(assert (= (and d!343980 (not c!200688)) b!1202607))

(declare-fun m!1378467 () Bool)

(assert (=> b!1202607 m!1378467))

(assert (=> b!1202519 d!343980))

(declare-fun d!343982 () Bool)

(declare-fun lt!411264 () Int)

(assert (=> d!343982 (= lt!411264 (size!9585 (list!4497 t!4115)))))

(assert (=> d!343982 (= lt!411264 (ite ((_ is Empty!3982) t!4115) 0 (ite ((_ is Leaf!6098) t!4115) (csize!8195 t!4115) (csize!8194 t!4115))))))

(assert (=> d!343982 (= (size!9584 t!4115) lt!411264)))

(declare-fun bs!288337 () Bool)

(assert (= bs!288337 d!343982))

(assert (=> bs!288337 m!1378351))

(assert (=> bs!288337 m!1378351))

(declare-fun m!1378469 () Bool)

(assert (=> bs!288337 m!1378469))

(assert (=> b!1202518 d!343982))

(declare-fun b!1202617 () Bool)

(declare-fun e!771639 () List!12073)

(assert (=> b!1202617 (= e!771639 (++!3092 (list!4497 (left!10521 lt!411243)) (list!4497 (right!10851 lt!411243))))))

(declare-fun d!343984 () Bool)

(declare-fun c!200691 () Bool)

(assert (=> d!343984 (= c!200691 ((_ is Empty!3982) lt!411243))))

(declare-fun e!771638 () List!12073)

(assert (=> d!343984 (= (list!4497 lt!411243) e!771638)))

(declare-fun b!1202614 () Bool)

(assert (=> b!1202614 (= e!771638 Nil!12049)))

(declare-fun b!1202616 () Bool)

(assert (=> b!1202616 (= e!771639 (list!4498 (xs!6691 lt!411243)))))

(declare-fun b!1202615 () Bool)

(assert (=> b!1202615 (= e!771638 e!771639)))

(declare-fun c!200692 () Bool)

(assert (=> b!1202615 (= c!200692 ((_ is Leaf!6098) lt!411243))))

(assert (= (and d!343984 c!200691) b!1202614))

(assert (= (and d!343984 (not c!200691)) b!1202615))

(assert (= (and b!1202615 c!200692) b!1202616))

(assert (= (and b!1202615 (not c!200692)) b!1202617))

(declare-fun m!1378471 () Bool)

(assert (=> b!1202617 m!1378471))

(declare-fun m!1378473 () Bool)

(assert (=> b!1202617 m!1378473))

(assert (=> b!1202617 m!1378471))

(assert (=> b!1202617 m!1378473))

(declare-fun m!1378475 () Bool)

(assert (=> b!1202617 m!1378475))

(declare-fun m!1378477 () Bool)

(assert (=> b!1202616 m!1378477))

(assert (=> b!1202513 d!343984))

(declare-fun d!343986 () Bool)

(assert (=> d!343986 (= (slice!486 (list!4497 t!4115) from!553 until!31) (take!135 (drop!607 (list!4497 t!4115) from!553) (- until!31 from!553)))))

(declare-fun bs!288338 () Bool)

(assert (= bs!288338 d!343986))

(assert (=> bs!288338 m!1378351))

(declare-fun m!1378479 () Bool)

(assert (=> bs!288338 m!1378479))

(assert (=> bs!288338 m!1378479))

(declare-fun m!1378481 () Bool)

(assert (=> bs!288338 m!1378481))

(assert (=> b!1202513 d!343986))

(declare-fun b!1202621 () Bool)

(declare-fun e!771641 () List!12073)

(assert (=> b!1202621 (= e!771641 (++!3092 (list!4497 (left!10521 t!4115)) (list!4497 (right!10851 t!4115))))))

(declare-fun d!343988 () Bool)

(declare-fun c!200693 () Bool)

(assert (=> d!343988 (= c!200693 ((_ is Empty!3982) t!4115))))

(declare-fun e!771640 () List!12073)

(assert (=> d!343988 (= (list!4497 t!4115) e!771640)))

(declare-fun b!1202618 () Bool)

(assert (=> b!1202618 (= e!771640 Nil!12049)))

(declare-fun b!1202620 () Bool)

(assert (=> b!1202620 (= e!771641 (list!4498 (xs!6691 t!4115)))))

(declare-fun b!1202619 () Bool)

(assert (=> b!1202619 (= e!771640 e!771641)))

(declare-fun c!200694 () Bool)

(assert (=> b!1202619 (= c!200694 ((_ is Leaf!6098) t!4115))))

(assert (= (and d!343988 c!200693) b!1202618))

(assert (= (and d!343988 (not c!200693)) b!1202619))

(assert (= (and b!1202619 c!200694) b!1202620))

(assert (= (and b!1202619 (not c!200694)) b!1202621))

(assert (=> b!1202621 m!1378379))

(assert (=> b!1202621 m!1378389))

(assert (=> b!1202621 m!1378379))

(assert (=> b!1202621 m!1378389))

(declare-fun m!1378483 () Bool)

(assert (=> b!1202621 m!1378483))

(declare-fun m!1378485 () Bool)

(assert (=> b!1202620 m!1378485))

(assert (=> b!1202513 d!343988))

(declare-fun b!1202626 () Bool)

(declare-fun e!771645 () List!12073)

(assert (=> b!1202626 (= e!771645 (Cons!12049 (h!17450 (slice!486 lt!411248 from!553 lt!411246)) (++!3092 (t!112471 (slice!486 lt!411248 from!553 lt!411246)) call!83839)))))

(declare-fun d!343990 () Bool)

(declare-fun e!771644 () Bool)

(assert (=> d!343990 e!771644))

(declare-fun res!541844 () Bool)

(assert (=> d!343990 (=> (not res!541844) (not e!771644))))

(declare-fun lt!411265 () List!12073)

(assert (=> d!343990 (= res!541844 (= (content!1696 lt!411265) ((_ map or) (content!1696 (slice!486 lt!411248 from!553 lt!411246)) (content!1696 call!83839))))))

(assert (=> d!343990 (= lt!411265 e!771645)))

(declare-fun c!200696 () Bool)

(assert (=> d!343990 (= c!200696 ((_ is Nil!12049) (slice!486 lt!411248 from!553 lt!411246)))))

(assert (=> d!343990 (= (++!3092 (slice!486 lt!411248 from!553 lt!411246) call!83839) lt!411265)))

(declare-fun b!1202627 () Bool)

(declare-fun res!541843 () Bool)

(assert (=> b!1202627 (=> (not res!541843) (not e!771644))))

(assert (=> b!1202627 (= res!541843 (= (size!9585 lt!411265) (+ (size!9585 (slice!486 lt!411248 from!553 lt!411246)) (size!9585 call!83839))))))

(declare-fun b!1202625 () Bool)

(assert (=> b!1202625 (= e!771645 call!83839)))

(declare-fun b!1202628 () Bool)

(assert (=> b!1202628 (= e!771644 (or (not (= call!83839 Nil!12049)) (= lt!411265 (slice!486 lt!411248 from!553 lt!411246))))))

(assert (= (and d!343990 c!200696) b!1202625))

(assert (= (and d!343990 (not c!200696)) b!1202626))

(assert (= (and d!343990 res!541844) b!1202627))

(assert (= (and b!1202627 res!541843) b!1202628))

(declare-fun m!1378491 () Bool)

(assert (=> b!1202626 m!1378491))

(declare-fun m!1378493 () Bool)

(assert (=> d!343990 m!1378493))

(assert (=> d!343990 m!1378355))

(declare-fun m!1378495 () Bool)

(assert (=> d!343990 m!1378495))

(declare-fun m!1378497 () Bool)

(assert (=> d!343990 m!1378497))

(declare-fun m!1378499 () Bool)

(assert (=> b!1202627 m!1378499))

(assert (=> b!1202627 m!1378355))

(declare-fun m!1378501 () Bool)

(assert (=> b!1202627 m!1378501))

(declare-fun m!1378503 () Bool)

(assert (=> b!1202627 m!1378503))

(assert (=> b!1202520 d!343990))

(declare-fun d!343994 () Bool)

(assert (=> d!343994 (= (slice!486 lt!411248 from!553 lt!411246) (take!135 (drop!607 lt!411248 from!553) (- lt!411246 from!553)))))

(declare-fun bs!288339 () Bool)

(assert (= bs!288339 d!343994))

(declare-fun m!1378509 () Bool)

(assert (=> bs!288339 m!1378509))

(assert (=> bs!288339 m!1378509))

(declare-fun m!1378515 () Bool)

(assert (=> bs!288339 m!1378515))

(assert (=> b!1202520 d!343994))

(declare-fun b!1202647 () Bool)

(declare-fun e!771652 () Bool)

(declare-fun e!771653 () Bool)

(assert (=> b!1202647 (= e!771652 e!771653)))

(declare-fun res!541865 () Bool)

(assert (=> b!1202647 (=> (not res!541865) (not e!771653))))

(declare-fun height!576 (Conc!3982) Int)

(assert (=> b!1202647 (= res!541865 (<= (- 1) (- (height!576 (left!10521 lt!411243)) (height!576 (right!10851 lt!411243)))))))

(declare-fun b!1202648 () Bool)

(declare-fun isEmpty!7273 (Conc!3982) Bool)

(assert (=> b!1202648 (= e!771653 (not (isEmpty!7273 (right!10851 lt!411243))))))

(declare-fun b!1202649 () Bool)

(declare-fun res!541868 () Bool)

(assert (=> b!1202649 (=> (not res!541868) (not e!771653))))

(assert (=> b!1202649 (= res!541868 (<= (- (height!576 (left!10521 lt!411243)) (height!576 (right!10851 lt!411243))) 1))))

(declare-fun b!1202650 () Bool)

(declare-fun res!541867 () Bool)

(assert (=> b!1202650 (=> (not res!541867) (not e!771653))))

(assert (=> b!1202650 (= res!541867 (not (isEmpty!7273 (left!10521 lt!411243))))))

(declare-fun b!1202651 () Bool)

(declare-fun res!541863 () Bool)

(assert (=> b!1202651 (=> (not res!541863) (not e!771653))))

(assert (=> b!1202651 (= res!541863 (isBalanced!1167 (left!10521 lt!411243)))))

(declare-fun b!1202652 () Bool)

(declare-fun res!541864 () Bool)

(assert (=> b!1202652 (=> (not res!541864) (not e!771653))))

(assert (=> b!1202652 (= res!541864 (isBalanced!1167 (right!10851 lt!411243)))))

(declare-fun d!343996 () Bool)

(declare-fun res!541866 () Bool)

(assert (=> d!343996 (=> res!541866 e!771652)))

(assert (=> d!343996 (= res!541866 (not ((_ is Node!3982) lt!411243)))))

(assert (=> d!343996 (= (isBalanced!1167 lt!411243) e!771652)))

(assert (= (and d!343996 (not res!541866)) b!1202647))

(assert (= (and b!1202647 res!541865) b!1202649))

(assert (= (and b!1202649 res!541868) b!1202651))

(assert (= (and b!1202651 res!541863) b!1202652))

(assert (= (and b!1202652 res!541864) b!1202650))

(assert (= (and b!1202650 res!541867) b!1202648))

(declare-fun m!1378521 () Bool)

(assert (=> b!1202647 m!1378521))

(declare-fun m!1378523 () Bool)

(assert (=> b!1202647 m!1378523))

(declare-fun m!1378525 () Bool)

(assert (=> b!1202652 m!1378525))

(declare-fun m!1378527 () Bool)

(assert (=> b!1202651 m!1378527))

(assert (=> b!1202649 m!1378521))

(assert (=> b!1202649 m!1378523))

(declare-fun m!1378529 () Bool)

(assert (=> b!1202650 m!1378529))

(declare-fun m!1378531 () Bool)

(assert (=> b!1202648 m!1378531))

(assert (=> b!1202515 d!343996))

(declare-fun call!83941 () Int)

(declare-fun bm!83925 () Bool)

(declare-fun c!200743 () Bool)

(assert (=> bm!83925 (= call!83941 (height!576 (ite c!200743 (slice!487 (left!10521 t!4115) from!553 lt!411247) (left!10521 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))))

(declare-fun c!200740 () Bool)

(declare-fun lt!411287 () Conc!3982)

(declare-fun bm!83926 () Bool)

(declare-fun lt!411288 () Conc!3982)

(declare-fun c!200739 () Bool)

(declare-fun c!200742 () Bool)

(declare-fun c!200741 () Bool)

(declare-fun call!83936 () Conc!3982)

(declare-fun call!83934 () Conc!3982)

(declare-fun call!83939 () Conc!3982)

(declare-fun <>!85 (Conc!3982 Conc!3982) Conc!3982)

(assert (=> bm!83926 (= call!83939 (<>!85 (ite c!200742 (slice!487 (left!10521 t!4115) from!553 lt!411247) (ite c!200743 (ite c!200741 (left!10521 (slice!487 (left!10521 t!4115) from!553 lt!411247)) call!83934) (ite c!200740 call!83936 (ite c!200739 lt!411287 (right!10851 (left!10521 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)))))))) (ite c!200742 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)) (ite c!200743 (ite c!200741 call!83934 lt!411288) (ite c!200740 (right!10851 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))) (ite c!200739 (right!10851 (left!10521 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)))) (right!10851 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)))))))))))

(declare-fun bm!83927 () Bool)

(declare-fun call!83945 () Conc!3982)

(declare-fun call!83938 () Conc!3982)

(assert (=> bm!83927 (= call!83945 call!83938)))

(declare-fun e!771704 () Bool)

(declare-fun lt!411286 () Conc!3982)

(declare-fun b!1202759 () Bool)

(assert (=> b!1202759 (= e!771704 (= (list!4497 lt!411286) (++!3092 (list!4497 (slice!487 (left!10521 t!4115) from!553 lt!411247)) (list!4497 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))))

(declare-fun b!1202760 () Bool)

(declare-fun c!200737 () Bool)

(declare-fun call!83935 () Int)

(declare-fun call!83933 () Int)

(assert (=> b!1202760 (= c!200737 (>= call!83935 call!83933))))

(declare-fun e!771709 () Conc!3982)

(declare-fun e!771708 () Conc!3982)

(assert (=> b!1202760 (= e!771709 e!771708)))

(declare-fun b!1202761 () Bool)

(declare-fun e!771713 () Conc!3982)

(assert (=> b!1202761 (= e!771713 call!83945)))

(declare-fun b!1202762 () Bool)

(declare-fun e!771707 () Conc!3982)

(declare-fun call!83942 () Conc!3982)

(assert (=> b!1202762 (= e!771707 call!83942)))

(declare-fun bm!83928 () Bool)

(declare-fun call!83930 () Conc!3982)

(assert (=> bm!83928 (= call!83934 call!83930)))

(declare-fun b!1202763 () Bool)

(assert (=> b!1202763 (= e!771708 call!83930)))

(declare-fun b!1202764 () Bool)

(declare-fun res!541896 () Bool)

(assert (=> b!1202764 (=> (not res!541896) (not e!771704))))

(assert (=> b!1202764 (= res!541896 (isBalanced!1167 lt!411286))))

(declare-fun b!1202765 () Bool)

(declare-fun e!771712 () Conc!3982)

(assert (=> b!1202765 (= e!771712 e!771709)))

(declare-fun lt!411289 () Int)

(assert (=> b!1202765 (= c!200743 (< lt!411289 (- 1)))))

(declare-fun b!1202766 () Bool)

(declare-fun e!771705 () Conc!3982)

(declare-fun e!771711 () Conc!3982)

(assert (=> b!1202766 (= e!771705 e!771711)))

(declare-fun c!200744 () Bool)

(assert (=> b!1202766 (= c!200744 (= (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)) Empty!3982))))

(declare-fun b!1202767 () Bool)

(assert (=> b!1202767 (= e!771707 call!83942)))

(declare-fun bm!83929 () Bool)

(declare-fun call!83940 () Conc!3982)

(assert (=> bm!83929 (= call!83940 call!83945)))

(declare-fun d!344000 () Bool)

(assert (=> d!344000 e!771704))

(declare-fun res!541898 () Bool)

(assert (=> d!344000 (=> (not res!541898) (not e!771704))))

(declare-fun appendAssocInst!233 (Conc!3982 Conc!3982) Bool)

(assert (=> d!344000 (= res!541898 (appendAssocInst!233 (slice!487 (left!10521 t!4115) from!553 lt!411247) (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))

(assert (=> d!344000 (= lt!411286 e!771705)))

(declare-fun c!200738 () Bool)

(assert (=> d!344000 (= c!200738 (= (slice!487 (left!10521 t!4115) from!553 lt!411247) Empty!3982))))

(declare-fun e!771706 () Bool)

(assert (=> d!344000 e!771706))

(declare-fun res!541894 () Bool)

(assert (=> d!344000 (=> (not res!541894) (not e!771706))))

(assert (=> d!344000 (= res!541894 (isBalanced!1167 (slice!487 (left!10521 t!4115) from!553 lt!411247)))))

(assert (=> d!344000 (= (++!3091 (slice!487 (left!10521 t!4115) from!553 lt!411247) (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))) lt!411286)))

(declare-fun b!1202758 () Bool)

(declare-fun res!541895 () Bool)

(assert (=> b!1202758 (=> (not res!541895) (not e!771704))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1202758 (= res!541895 (>= (height!576 lt!411286) (max!0 (height!576 (slice!487 (left!10521 t!4115) from!553 lt!411247)) (height!576 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))))

(declare-fun b!1202768 () Bool)

(assert (=> b!1202768 (= e!771712 call!83939)))

(declare-fun bm!83930 () Bool)

(declare-fun call!83931 () Conc!3982)

(assert (=> bm!83930 (= call!83936 call!83931)))

(declare-fun bm!83931 () Bool)

(declare-fun call!83932 () Conc!3982)

(declare-fun call!83937 () Conc!3982)

(assert (=> bm!83931 (= call!83932 (<>!85 (ite c!200743 (ite c!200737 (left!10521 (slice!487 (left!10521 t!4115) from!553 lt!411247)) (ite c!200741 (left!10521 (right!10851 (slice!487 (left!10521 t!4115) from!553 lt!411247))) (left!10521 (slice!487 (left!10521 t!4115) from!553 lt!411247)))) (ite c!200739 call!83940 lt!411287)) (ite c!200743 (ite c!200737 call!83937 (ite c!200741 lt!411288 (left!10521 (right!10851 (slice!487 (left!10521 t!4115) from!553 lt!411247))))) (ite c!200739 (right!10851 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))) call!83940))))))

(declare-fun bm!83932 () Bool)

(assert (=> bm!83932 (= call!83931 (++!3091 (ite c!200743 (ite c!200737 (right!10851 (slice!487 (left!10521 t!4115) from!553 lt!411247)) (right!10851 (right!10851 (slice!487 (left!10521 t!4115) from!553 lt!411247)))) (slice!487 (left!10521 t!4115) from!553 lt!411247)) (ite c!200743 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)) (ite c!200740 (left!10521 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))) (left!10521 (left!10521 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))))))

(declare-fun b!1202769 () Bool)

(declare-fun e!771710 () Conc!3982)

(assert (=> b!1202769 (= e!771708 e!771710)))

(assert (=> b!1202769 (= lt!411288 call!83937)))

(declare-fun call!83944 () Int)

(assert (=> b!1202769 (= c!200741 (= call!83944 (- call!83941 3)))))

(declare-fun b!1202770 () Bool)

(assert (=> b!1202770 (= c!200742 (and (<= (- 1) lt!411289) (<= lt!411289 1)))))

(assert (=> b!1202770 (= lt!411289 (- (height!576 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))) (height!576 (slice!487 (left!10521 t!4115) from!553 lt!411247))))))

(assert (=> b!1202770 (= e!771711 e!771712)))

(declare-fun bm!83933 () Bool)

(assert (=> bm!83933 (= call!83942 call!83932)))

(declare-fun bm!83934 () Bool)

(assert (=> bm!83934 (= call!83935 (height!576 (ite c!200743 (left!10521 (slice!487 (left!10521 t!4115) from!553 lt!411247)) lt!411287)))))

(declare-fun b!1202771 () Bool)

(assert (=> b!1202771 (= c!200740 (>= call!83944 call!83941))))

(assert (=> b!1202771 (= e!771709 e!771713)))

(declare-fun b!1202772 () Bool)

(declare-fun res!541897 () Bool)

(assert (=> b!1202772 (=> (not res!541897) (not e!771704))))

(assert (=> b!1202772 (= res!541897 (<= (height!576 lt!411286) (+ (max!0 (height!576 (slice!487 (left!10521 t!4115) from!553 lt!411247)) (height!576 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)))) 1)))))

(declare-fun bm!83935 () Bool)

(assert (=> bm!83935 (= call!83930 call!83932)))

(declare-fun bm!83936 () Bool)

(declare-fun call!83943 () Conc!3982)

(assert (=> bm!83936 (= call!83943 call!83938)))

(declare-fun b!1202773 () Bool)

(assert (=> b!1202773 (= e!771705 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)))))

(declare-fun b!1202774 () Bool)

(assert (=> b!1202774 (= e!771711 (slice!487 (left!10521 t!4115) from!553 lt!411247))))

(declare-fun bm!83937 () Bool)

(assert (=> bm!83937 (= call!83937 call!83931)))

(declare-fun b!1202775 () Bool)

(assert (=> b!1202775 (= e!771710 call!83943)))

(declare-fun bm!83938 () Bool)

(assert (=> bm!83938 (= call!83938 call!83939)))

(declare-fun b!1202776 () Bool)

(assert (=> b!1202776 (= e!771706 (isBalanced!1167 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))

(declare-fun b!1202777 () Bool)

(assert (=> b!1202777 (= e!771710 call!83943)))

(declare-fun bm!83939 () Bool)

(assert (=> bm!83939 (= call!83933 (height!576 (ite c!200743 (right!10851 (slice!487 (left!10521 t!4115) from!553 lt!411247)) (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)))))))

(declare-fun bm!83940 () Bool)

(assert (=> bm!83940 (= call!83944 (height!576 (ite c!200743 lt!411288 (right!10851 (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247))))))))

(declare-fun b!1202778 () Bool)

(assert (=> b!1202778 (= e!771713 e!771707)))

(assert (=> b!1202778 (= lt!411287 call!83936)))

(assert (=> b!1202778 (= c!200739 (= call!83935 (- call!83933 3)))))

(assert (= (and d!344000 res!541894) b!1202776))

(assert (= (and d!344000 c!200738) b!1202773))

(assert (= (and d!344000 (not c!200738)) b!1202766))

(assert (= (and b!1202766 c!200744) b!1202774))

(assert (= (and b!1202766 (not c!200744)) b!1202770))

(assert (= (and b!1202770 c!200742) b!1202768))

(assert (= (and b!1202770 (not c!200742)) b!1202765))

(assert (= (and b!1202765 c!200743) b!1202760))

(assert (= (and b!1202765 (not c!200743)) b!1202771))

(assert (= (and b!1202760 c!200737) b!1202763))

(assert (= (and b!1202760 (not c!200737)) b!1202769))

(assert (= (and b!1202769 c!200741) b!1202777))

(assert (= (and b!1202769 (not c!200741)) b!1202775))

(assert (= (or b!1202777 b!1202775) bm!83928))

(assert (= (or b!1202777 b!1202775) bm!83936))

(assert (= (or b!1202763 b!1202769) bm!83937))

(assert (= (or b!1202763 bm!83928) bm!83935))

(assert (= (and b!1202771 c!200740) b!1202761))

(assert (= (and b!1202771 (not c!200740)) b!1202778))

(assert (= (and b!1202778 c!200739) b!1202767))

(assert (= (and b!1202778 (not c!200739)) b!1202762))

(assert (= (or b!1202767 b!1202762) bm!83929))

(assert (= (or b!1202767 b!1202762) bm!83933))

(assert (= (or b!1202761 b!1202778) bm!83930))

(assert (= (or b!1202761 bm!83929) bm!83927))

(assert (= (or b!1202760 b!1202778) bm!83939))

(assert (= (or bm!83935 bm!83933) bm!83931))

(assert (= (or b!1202760 b!1202778) bm!83934))

(assert (= (or bm!83937 bm!83930) bm!83932))

(assert (= (or b!1202769 b!1202771) bm!83925))

(assert (= (or bm!83936 bm!83927) bm!83938))

(assert (= (or b!1202769 b!1202771) bm!83940))

(assert (= (or b!1202768 bm!83938) bm!83926))

(assert (= (and d!344000 res!541898) b!1202764))

(assert (= (and b!1202764 res!541896) b!1202772))

(assert (= (and b!1202772 res!541897) b!1202758))

(assert (= (and b!1202758 res!541895) b!1202759))

(assert (=> d!344000 m!1378369))

(assert (=> d!344000 m!1378371))

(declare-fun m!1378571 () Bool)

(assert (=> d!344000 m!1378571))

(assert (=> d!344000 m!1378369))

(declare-fun m!1378573 () Bool)

(assert (=> d!344000 m!1378573))

(declare-fun m!1378575 () Bool)

(assert (=> b!1202772 m!1378575))

(assert (=> b!1202772 m!1378369))

(declare-fun m!1378577 () Bool)

(assert (=> b!1202772 m!1378577))

(assert (=> b!1202772 m!1378371))

(declare-fun m!1378579 () Bool)

(assert (=> b!1202772 m!1378579))

(assert (=> b!1202772 m!1378577))

(assert (=> b!1202772 m!1378579))

(declare-fun m!1378581 () Bool)

(assert (=> b!1202772 m!1378581))

(assert (=> b!1202758 m!1378575))

(assert (=> b!1202758 m!1378369))

(assert (=> b!1202758 m!1378577))

(assert (=> b!1202758 m!1378371))

(assert (=> b!1202758 m!1378579))

(assert (=> b!1202758 m!1378577))

(assert (=> b!1202758 m!1378579))

(assert (=> b!1202758 m!1378581))

(declare-fun m!1378583 () Bool)

(assert (=> b!1202764 m!1378583))

(assert (=> b!1202776 m!1378371))

(declare-fun m!1378585 () Bool)

(assert (=> b!1202776 m!1378585))

(declare-fun m!1378587 () Bool)

(assert (=> bm!83939 m!1378587))

(declare-fun m!1378589 () Bool)

(assert (=> bm!83934 m!1378589))

(declare-fun m!1378591 () Bool)

(assert (=> bm!83926 m!1378591))

(declare-fun m!1378593 () Bool)

(assert (=> bm!83940 m!1378593))

(declare-fun m!1378595 () Bool)

(assert (=> bm!83925 m!1378595))

(assert (=> b!1202770 m!1378371))

(assert (=> b!1202770 m!1378579))

(assert (=> b!1202770 m!1378369))

(assert (=> b!1202770 m!1378577))

(declare-fun m!1378597 () Bool)

(assert (=> bm!83931 m!1378597))

(declare-fun m!1378599 () Bool)

(assert (=> bm!83932 m!1378599))

(declare-fun m!1378601 () Bool)

(assert (=> b!1202759 m!1378601))

(assert (=> b!1202759 m!1378369))

(declare-fun m!1378603 () Bool)

(assert (=> b!1202759 m!1378603))

(assert (=> b!1202759 m!1378371))

(declare-fun m!1378605 () Bool)

(assert (=> b!1202759 m!1378605))

(assert (=> b!1202759 m!1378603))

(assert (=> b!1202759 m!1378605))

(declare-fun m!1378607 () Bool)

(assert (=> b!1202759 m!1378607))

(assert (=> b!1202515 d!344000))

(declare-fun bm!83986 () Bool)

(declare-fun c!200830 () Bool)

(declare-fun c!200826 () Bool)

(assert (=> bm!83986 (= c!200830 c!200826)))

(declare-fun call!83995 () List!12073)

(declare-fun call!83993 () List!12073)

(assert (=> bm!83986 (= call!83995 call!83993)))

(declare-fun b!1202985 () Bool)

(declare-fun e!771827 () Bool)

(assert (=> b!1202985 (= e!771827 (isBalanced!1167 (left!10521 t!4115)))))

(declare-fun b!1202986 () Bool)

(declare-fun e!771834 () Conc!3982)

(declare-fun call!83992 () Conc!3982)

(assert (=> b!1202986 (= e!771834 call!83992)))

(declare-fun b!1202987 () Bool)

(declare-fun e!771832 () Conc!3982)

(declare-fun e!771830 () Conc!3982)

(assert (=> b!1202987 (= e!771832 e!771830)))

(declare-fun c!200829 () Bool)

(assert (=> b!1202987 (= c!200829 ((_ is Leaf!6098) (left!10521 t!4115)))))

(declare-fun b!1202988 () Bool)

(declare-fun e!771829 () Conc!3982)

(assert (=> b!1202988 (= e!771829 Empty!3982)))

(declare-fun b!1202989 () Bool)

(declare-fun slice!489 (IArray!7969 Int Int) IArray!7969)

(assert (=> b!1202989 (= e!771829 (Leaf!6098 (slice!489 (xs!6691 (left!10521 t!4115)) from!553 lt!411247) (- lt!411247 from!553)))))

(declare-fun call!83996 () Int)

(declare-fun e!771833 () List!12073)

(declare-fun lt!411332 () List!12073)

(declare-fun b!1202990 () Bool)

(assert (=> b!1202990 (= e!771833 (++!3092 (slice!486 lt!411332 from!553 call!83996) call!83995))))

(declare-fun bm!83987 () Bool)

(declare-fun c!200827 () Bool)

(declare-fun c!200834 () Bool)

(assert (=> bm!83987 (= c!200827 c!200834)))

(declare-fun call!83994 () Conc!3982)

(assert (=> bm!83987 (= call!83992 call!83994)))

(declare-fun b!1202991 () Bool)

(declare-fun e!771825 () Conc!3982)

(assert (=> b!1202991 (= e!771825 e!771834)))

(declare-fun call!83991 () Int)

(assert (=> b!1202991 (= c!200834 (<= lt!411247 call!83991))))

(declare-fun b!1202992 () Bool)

(assert (=> b!1202992 (= e!771832 Empty!3982)))

(declare-fun b!1202993 () Bool)

(declare-fun e!771831 () List!12073)

(assert (=> b!1202993 (= e!771831 call!83993)))

(declare-fun bm!83988 () Bool)

(assert (=> bm!83988 (= call!83991 (size!9584 (left!10521 (left!10521 t!4115))))))

(declare-fun b!1202994 () Bool)

(declare-fun e!771828 () Int)

(assert (=> b!1202994 (= e!771828 (- lt!411247 call!83991))))

(declare-fun b!1202995 () Bool)

(declare-fun e!771824 () Int)

(assert (=> b!1202995 (= e!771824 lt!411247)))

(declare-fun b!1202996 () Bool)

(assert (=> b!1202996 (= e!771834 (++!3091 (slice!487 (left!10521 (left!10521 t!4115)) from!553 call!83991) call!83992))))

(declare-fun d!344004 () Bool)

(declare-fun e!771826 () Bool)

(assert (=> d!344004 e!771826))

(declare-fun res!541924 () Bool)

(assert (=> d!344004 (=> (not res!541924) (not e!771826))))

(declare-fun lt!411331 () Conc!3982)

(assert (=> d!344004 (= res!541924 (isBalanced!1167 lt!411331))))

(assert (=> d!344004 (= lt!411331 e!771832)))

(declare-fun c!200828 () Bool)

(assert (=> d!344004 (= c!200828 (= from!553 lt!411247))))

(assert (=> d!344004 e!771827))

(declare-fun res!541926 () Bool)

(assert (=> d!344004 (=> (not res!541926) (not e!771827))))

(assert (=> d!344004 (= res!541926 (and (<= 0 from!553) (<= from!553 lt!411247)))))

(assert (=> d!344004 (= (slice!487 (left!10521 t!4115) from!553 lt!411247) lt!411331)))

(declare-fun b!1202997 () Bool)

(assert (=> b!1202997 (= e!771833 call!83995)))

(declare-fun b!1202998 () Bool)

(assert (=> b!1202998 (= e!771828 lt!411247)))

(declare-fun b!1202999 () Bool)

(assert (=> b!1202999 (= e!771826 (= (list!4497 lt!411331) (slice!486 (list!4497 (left!10521 t!4115)) from!553 lt!411247)))))

(declare-fun bm!83989 () Bool)

(assert (=> bm!83989 (= call!83996 (size!9585 lt!411332))))

(declare-fun b!1203000 () Bool)

(declare-fun res!541925 () Bool)

(assert (=> b!1203000 (=> (not res!541925) (not e!771827))))

(assert (=> b!1203000 (= res!541925 (<= lt!411247 (size!9584 (left!10521 t!4115))))))

(declare-fun b!1203001 () Bool)

(declare-fun c!200831 () Bool)

(assert (=> b!1203001 (= c!200831 (= (- lt!411247 from!553) 0))))

(assert (=> b!1203001 (= e!771830 e!771829)))

(declare-fun b!1203002 () Bool)

(assert (=> b!1203002 (= e!771831 e!771833)))

(assert (=> b!1203002 (= c!200826 (<= lt!411247 call!83996))))

(declare-fun bm!83990 () Bool)

(declare-fun c!200832 () Bool)

(declare-fun lt!411335 () List!12073)

(assert (=> bm!83990 (= call!83993 (slice!486 (ite c!200832 lt!411335 (ite c!200826 lt!411332 lt!411335)) (ite c!200832 (- from!553 call!83996) (ite c!200826 from!553 0)) (ite c!200832 (- lt!411247 call!83996) e!771824)))))

(declare-fun b!1203003 () Bool)

(assert (=> b!1203003 (= e!771824 (- lt!411247 call!83996))))

(declare-fun b!1203004 () Bool)

(assert (=> b!1203004 (= e!771825 call!83994)))

(declare-fun b!1203005 () Bool)

(declare-fun c!200833 () Bool)

(assert (=> b!1203005 (= c!200833 (<= (size!9584 (left!10521 (left!10521 t!4115))) from!553))))

(declare-fun lt!411334 () Unit!18468)

(declare-fun lt!411333 () Unit!18468)

(assert (=> b!1203005 (= lt!411334 lt!411333)))

(assert (=> b!1203005 (= (slice!486 (++!3092 lt!411332 lt!411335) from!553 lt!411247) e!771831)))

(assert (=> b!1203005 (= c!200832 (<= (size!9585 lt!411332) from!553))))

(assert (=> b!1203005 (= lt!411333 (sliceLemma!45 lt!411332 lt!411335 from!553 lt!411247))))

(assert (=> b!1203005 (= lt!411335 (list!4497 (right!10851 (left!10521 t!4115))))))

(assert (=> b!1203005 (= lt!411332 (list!4497 (left!10521 (left!10521 t!4115))))))

(assert (=> b!1203005 (= e!771830 e!771825)))

(declare-fun bm!83991 () Bool)

(assert (=> bm!83991 (= call!83994 (slice!487 (ite c!200833 (right!10851 (left!10521 t!4115)) (ite c!200834 (left!10521 (left!10521 t!4115)) (right!10851 (left!10521 t!4115)))) (ite c!200833 (- from!553 call!83991) (ite c!200834 from!553 0)) (ite c!200833 (- lt!411247 call!83991) e!771828)))))

(assert (= (and d!344004 res!541926) b!1203000))

(assert (= (and b!1203000 res!541925) b!1202985))

(assert (= (and d!344004 c!200828) b!1202992))

(assert (= (and d!344004 (not c!200828)) b!1202987))

(assert (= (and b!1202987 c!200829) b!1203001))

(assert (= (and b!1202987 (not c!200829)) b!1203005))

(assert (= (and b!1203001 c!200831) b!1202988))

(assert (= (and b!1203001 (not c!200831)) b!1202989))

(assert (= (and b!1203005 c!200832) b!1202993))

(assert (= (and b!1203005 (not c!200832)) b!1203002))

(assert (= (and b!1203002 c!200826) b!1202997))

(assert (= (and b!1203002 (not c!200826)) b!1202990))

(assert (= (or b!1202997 b!1202990) bm!83986))

(assert (= (and bm!83986 c!200830) b!1202995))

(assert (= (and bm!83986 (not c!200830)) b!1203003))

(assert (= (or b!1202993 b!1203002 b!1203003 b!1202990) bm!83989))

(assert (= (or b!1202993 bm!83986) bm!83990))

(assert (= (and b!1203005 c!200833) b!1203004))

(assert (= (and b!1203005 (not c!200833)) b!1202991))

(assert (= (and b!1202991 c!200834) b!1202986))

(assert (= (and b!1202991 (not c!200834)) b!1202996))

(assert (= (or b!1202986 b!1202996) bm!83987))

(assert (= (and bm!83987 c!200827) b!1202998))

(assert (= (and bm!83987 (not c!200827)) b!1202994))

(assert (= (or b!1203004 b!1202994 b!1202996 b!1202991) bm!83988))

(assert (= (or b!1203004 bm!83987) bm!83991))

(assert (= (and d!344004 res!541924) b!1202999))

(declare-fun m!1378757 () Bool)

(assert (=> b!1202985 m!1378757))

(declare-fun m!1378759 () Bool)

(assert (=> b!1202990 m!1378759))

(assert (=> b!1202990 m!1378759))

(declare-fun m!1378761 () Bool)

(assert (=> b!1202990 m!1378761))

(declare-fun m!1378763 () Bool)

(assert (=> bm!83989 m!1378763))

(declare-fun m!1378765 () Bool)

(assert (=> bm!83990 m!1378765))

(declare-fun m!1378767 () Bool)

(assert (=> bm!83988 m!1378767))

(assert (=> b!1203000 m!1378385))

(declare-fun m!1378769 () Bool)

(assert (=> d!344004 m!1378769))

(declare-fun m!1378771 () Bool)

(assert (=> b!1202989 m!1378771))

(declare-fun m!1378773 () Bool)

(assert (=> bm!83991 m!1378773))

(assert (=> b!1203005 m!1378461))

(assert (=> b!1203005 m!1378763))

(assert (=> b!1203005 m!1378459))

(declare-fun m!1378775 () Bool)

(assert (=> b!1203005 m!1378775))

(declare-fun m!1378777 () Bool)

(assert (=> b!1203005 m!1378777))

(assert (=> b!1203005 m!1378767))

(declare-fun m!1378779 () Bool)

(assert (=> b!1203005 m!1378779))

(assert (=> b!1203005 m!1378775))

(declare-fun m!1378781 () Bool)

(assert (=> b!1202999 m!1378781))

(assert (=> b!1202999 m!1378379))

(assert (=> b!1202999 m!1378379))

(declare-fun m!1378783 () Bool)

(assert (=> b!1202999 m!1378783))

(declare-fun m!1378785 () Bool)

(assert (=> b!1202996 m!1378785))

(assert (=> b!1202996 m!1378785))

(declare-fun m!1378787 () Bool)

(assert (=> b!1202996 m!1378787))

(assert (=> b!1202515 d!344004))

(declare-fun bm!83992 () Bool)

(declare-fun c!200839 () Bool)

(declare-fun c!200835 () Bool)

(assert (=> bm!83992 (= c!200839 c!200835)))

(declare-fun call!84001 () List!12073)

(declare-fun call!83999 () List!12073)

(assert (=> bm!83992 (= call!84001 call!83999)))

(declare-fun b!1203006 () Bool)

(declare-fun e!771838 () Bool)

(assert (=> b!1203006 (= e!771838 (isBalanced!1167 (right!10851 t!4115)))))

(declare-fun b!1203007 () Bool)

(declare-fun e!771845 () Conc!3982)

(declare-fun call!83998 () Conc!3982)

(assert (=> b!1203007 (= e!771845 call!83998)))

(declare-fun b!1203008 () Bool)

(declare-fun e!771843 () Conc!3982)

(declare-fun e!771841 () Conc!3982)

(assert (=> b!1203008 (= e!771843 e!771841)))

(declare-fun c!200838 () Bool)

(assert (=> b!1203008 (= c!200838 ((_ is Leaf!6098) (right!10851 t!4115)))))

(declare-fun b!1203009 () Bool)

(declare-fun e!771840 () Conc!3982)

(assert (=> b!1203009 (= e!771840 Empty!3982)))

(declare-fun b!1203010 () Bool)

(assert (=> b!1203010 (= e!771840 (Leaf!6098 (slice!489 (xs!6691 (right!10851 t!4115)) 0 (- until!31 lt!411247)) (- (- until!31 lt!411247) 0)))))

(declare-fun lt!411337 () List!12073)

(declare-fun e!771844 () List!12073)

(declare-fun call!84002 () Int)

(declare-fun b!1203011 () Bool)

(assert (=> b!1203011 (= e!771844 (++!3092 (slice!486 lt!411337 0 call!84002) call!84001))))

(declare-fun bm!83993 () Bool)

(declare-fun c!200836 () Bool)

(declare-fun c!200843 () Bool)

(assert (=> bm!83993 (= c!200836 c!200843)))

(declare-fun call!84000 () Conc!3982)

(assert (=> bm!83993 (= call!83998 call!84000)))

(declare-fun b!1203012 () Bool)

(declare-fun e!771836 () Conc!3982)

(assert (=> b!1203012 (= e!771836 e!771845)))

(declare-fun call!83997 () Int)

(assert (=> b!1203012 (= c!200843 (<= (- until!31 lt!411247) call!83997))))

(declare-fun b!1203013 () Bool)

(assert (=> b!1203013 (= e!771843 Empty!3982)))

(declare-fun b!1203014 () Bool)

(declare-fun e!771842 () List!12073)

(assert (=> b!1203014 (= e!771842 call!83999)))

(declare-fun bm!83994 () Bool)

(assert (=> bm!83994 (= call!83997 (size!9584 (left!10521 (right!10851 t!4115))))))

(declare-fun b!1203015 () Bool)

(declare-fun e!771839 () Int)

(assert (=> b!1203015 (= e!771839 (- (- until!31 lt!411247) call!83997))))

(declare-fun b!1203016 () Bool)

(declare-fun e!771835 () Int)

(assert (=> b!1203016 (= e!771835 (- until!31 lt!411247))))

(declare-fun b!1203017 () Bool)

(assert (=> b!1203017 (= e!771845 (++!3091 (slice!487 (left!10521 (right!10851 t!4115)) 0 call!83997) call!83998))))

(declare-fun d!344036 () Bool)

(declare-fun e!771837 () Bool)

(assert (=> d!344036 e!771837))

(declare-fun res!541927 () Bool)

(assert (=> d!344036 (=> (not res!541927) (not e!771837))))

(declare-fun lt!411336 () Conc!3982)

(assert (=> d!344036 (= res!541927 (isBalanced!1167 lt!411336))))

(assert (=> d!344036 (= lt!411336 e!771843)))

(declare-fun c!200837 () Bool)

(assert (=> d!344036 (= c!200837 (= 0 (- until!31 lt!411247)))))

(assert (=> d!344036 e!771838))

(declare-fun res!541929 () Bool)

(assert (=> d!344036 (=> (not res!541929) (not e!771838))))

(assert (=> d!344036 (= res!541929 (and (<= 0 0) (<= 0 (- until!31 lt!411247))))))

(assert (=> d!344036 (= (slice!487 (right!10851 t!4115) 0 (- until!31 lt!411247)) lt!411336)))

(declare-fun b!1203018 () Bool)

(assert (=> b!1203018 (= e!771844 call!84001)))

(declare-fun b!1203019 () Bool)

(assert (=> b!1203019 (= e!771839 (- until!31 lt!411247))))

(declare-fun b!1203020 () Bool)

(assert (=> b!1203020 (= e!771837 (= (list!4497 lt!411336) (slice!486 (list!4497 (right!10851 t!4115)) 0 (- until!31 lt!411247))))))

(declare-fun bm!83995 () Bool)

(assert (=> bm!83995 (= call!84002 (size!9585 lt!411337))))

(declare-fun b!1203021 () Bool)

(declare-fun res!541928 () Bool)

(assert (=> b!1203021 (=> (not res!541928) (not e!771838))))

(assert (=> b!1203021 (= res!541928 (<= (- until!31 lt!411247) (size!9584 (right!10851 t!4115))))))

(declare-fun b!1203022 () Bool)

(declare-fun c!200840 () Bool)

(assert (=> b!1203022 (= c!200840 (= (- (- until!31 lt!411247) 0) 0))))

(assert (=> b!1203022 (= e!771841 e!771840)))

(declare-fun b!1203023 () Bool)

(assert (=> b!1203023 (= e!771842 e!771844)))

(assert (=> b!1203023 (= c!200835 (<= (- until!31 lt!411247) call!84002))))

(declare-fun lt!411340 () List!12073)

(declare-fun bm!83996 () Bool)

(declare-fun c!200841 () Bool)

(assert (=> bm!83996 (= call!83999 (slice!486 (ite c!200841 lt!411340 (ite c!200835 lt!411337 lt!411340)) (ite c!200841 (- 0 call!84002) (ite c!200835 0 0)) (ite c!200841 (- (- until!31 lt!411247) call!84002) e!771835)))))

(declare-fun b!1203024 () Bool)

(assert (=> b!1203024 (= e!771835 (- (- until!31 lt!411247) call!84002))))

(declare-fun b!1203025 () Bool)

(assert (=> b!1203025 (= e!771836 call!84000)))

(declare-fun b!1203026 () Bool)

(declare-fun c!200842 () Bool)

(assert (=> b!1203026 (= c!200842 (<= (size!9584 (left!10521 (right!10851 t!4115))) 0))))

(declare-fun lt!411339 () Unit!18468)

(declare-fun lt!411338 () Unit!18468)

(assert (=> b!1203026 (= lt!411339 lt!411338)))

(assert (=> b!1203026 (= (slice!486 (++!3092 lt!411337 lt!411340) 0 (- until!31 lt!411247)) e!771842)))

(assert (=> b!1203026 (= c!200841 (<= (size!9585 lt!411337) 0))))

(assert (=> b!1203026 (= lt!411338 (sliceLemma!45 lt!411337 lt!411340 0 (- until!31 lt!411247)))))

(assert (=> b!1203026 (= lt!411340 (list!4497 (right!10851 (right!10851 t!4115))))))

(assert (=> b!1203026 (= lt!411337 (list!4497 (left!10521 (right!10851 t!4115))))))

(assert (=> b!1203026 (= e!771841 e!771836)))

(declare-fun bm!83997 () Bool)

(assert (=> bm!83997 (= call!84000 (slice!487 (ite c!200842 (right!10851 (right!10851 t!4115)) (ite c!200843 (left!10521 (right!10851 t!4115)) (right!10851 (right!10851 t!4115)))) (ite c!200842 (- 0 call!83997) (ite c!200843 0 0)) (ite c!200842 (- (- until!31 lt!411247) call!83997) e!771839)))))

(assert (= (and d!344036 res!541929) b!1203021))

(assert (= (and b!1203021 res!541928) b!1203006))

(assert (= (and d!344036 c!200837) b!1203013))

(assert (= (and d!344036 (not c!200837)) b!1203008))

(assert (= (and b!1203008 c!200838) b!1203022))

(assert (= (and b!1203008 (not c!200838)) b!1203026))

(assert (= (and b!1203022 c!200840) b!1203009))

(assert (= (and b!1203022 (not c!200840)) b!1203010))

(assert (= (and b!1203026 c!200841) b!1203014))

(assert (= (and b!1203026 (not c!200841)) b!1203023))

(assert (= (and b!1203023 c!200835) b!1203018))

(assert (= (and b!1203023 (not c!200835)) b!1203011))

(assert (= (or b!1203018 b!1203011) bm!83992))

(assert (= (and bm!83992 c!200839) b!1203016))

(assert (= (and bm!83992 (not c!200839)) b!1203024))

(assert (= (or b!1203014 b!1203023 b!1203024 b!1203011) bm!83995))

(assert (= (or b!1203014 bm!83992) bm!83996))

(assert (= (and b!1203026 c!200842) b!1203025))

(assert (= (and b!1203026 (not c!200842)) b!1203012))

(assert (= (and b!1203012 c!200843) b!1203007))

(assert (= (and b!1203012 (not c!200843)) b!1203017))

(assert (= (or b!1203007 b!1203017) bm!83993))

(assert (= (and bm!83993 c!200836) b!1203019))

(assert (= (and bm!83993 (not c!200836)) b!1203015))

(assert (= (or b!1203025 b!1203015 b!1203017 b!1203012) bm!83994))

(assert (= (or b!1203025 bm!83993) bm!83997))

(assert (= (and d!344036 res!541927) b!1203020))

(declare-fun m!1378789 () Bool)

(assert (=> b!1203006 m!1378789))

(declare-fun m!1378791 () Bool)

(assert (=> b!1203011 m!1378791))

(assert (=> b!1203011 m!1378791))

(declare-fun m!1378793 () Bool)

(assert (=> b!1203011 m!1378793))

(declare-fun m!1378795 () Bool)

(assert (=> bm!83995 m!1378795))

(declare-fun m!1378797 () Bool)

(assert (=> bm!83996 m!1378797))

(declare-fun m!1378799 () Bool)

(assert (=> bm!83994 m!1378799))

(declare-fun m!1378801 () Bool)

(assert (=> b!1203021 m!1378801))

(declare-fun m!1378803 () Bool)

(assert (=> d!344036 m!1378803))

(declare-fun m!1378805 () Bool)

(assert (=> b!1203010 m!1378805))

(declare-fun m!1378807 () Bool)

(assert (=> bm!83997 m!1378807))

(assert (=> b!1203026 m!1378413))

(assert (=> b!1203026 m!1378795))

(assert (=> b!1203026 m!1378411))

(declare-fun m!1378809 () Bool)

(assert (=> b!1203026 m!1378809))

(declare-fun m!1378811 () Bool)

(assert (=> b!1203026 m!1378811))

(assert (=> b!1203026 m!1378799))

(declare-fun m!1378813 () Bool)

(assert (=> b!1203026 m!1378813))

(assert (=> b!1203026 m!1378809))

(declare-fun m!1378815 () Bool)

(assert (=> b!1203020 m!1378815))

(assert (=> b!1203020 m!1378389))

(assert (=> b!1203020 m!1378389))

(declare-fun m!1378817 () Bool)

(assert (=> b!1203020 m!1378817))

(declare-fun m!1378819 () Bool)

(assert (=> b!1203017 m!1378819))

(assert (=> b!1203017 m!1378819))

(declare-fun m!1378821 () Bool)

(assert (=> b!1203017 m!1378821))

(assert (=> b!1202515 d!344036))

(declare-fun d!344038 () Bool)

(declare-fun c!200846 () Bool)

(assert (=> d!344038 (= c!200846 ((_ is Node!3982) t!4115))))

(declare-fun e!771850 () Bool)

(assert (=> d!344038 (= (inv!16149 t!4115) e!771850)))

(declare-fun b!1203033 () Bool)

(declare-fun inv!16152 (Conc!3982) Bool)

(assert (=> b!1203033 (= e!771850 (inv!16152 t!4115))))

(declare-fun b!1203034 () Bool)

(declare-fun e!771851 () Bool)

(assert (=> b!1203034 (= e!771850 e!771851)))

(declare-fun res!541932 () Bool)

(assert (=> b!1203034 (= res!541932 (not ((_ is Leaf!6098) t!4115)))))

(assert (=> b!1203034 (=> res!541932 e!771851)))

(declare-fun b!1203035 () Bool)

(declare-fun inv!16153 (Conc!3982) Bool)

(assert (=> b!1203035 (= e!771851 (inv!16153 t!4115))))

(assert (= (and d!344038 c!200846) b!1203033))

(assert (= (and d!344038 (not c!200846)) b!1203034))

(assert (= (and b!1203034 (not res!541932)) b!1203035))

(declare-fun m!1378823 () Bool)

(assert (=> b!1203033 m!1378823))

(declare-fun m!1378825 () Bool)

(assert (=> b!1203035 m!1378825))

(assert (=> start!107076 d!344038))

(declare-fun d!344040 () Bool)

(assert (=> d!344040 (= (inv!16148 (xs!6691 t!4115)) (<= (size!9585 (innerList!4042 (xs!6691 t!4115))) 2147483647))))

(declare-fun bs!288345 () Bool)

(assert (= bs!288345 d!344040))

(declare-fun m!1378827 () Bool)

(assert (=> bs!288345 m!1378827))

(assert (=> b!1202510 d!344040))

(declare-fun d!344042 () Bool)

(declare-fun c!200847 () Bool)

(assert (=> d!344042 (= c!200847 ((_ is Node!3982) (left!10521 t!4115)))))

(declare-fun e!771852 () Bool)

(assert (=> d!344042 (= (inv!16149 (left!10521 t!4115)) e!771852)))

(declare-fun b!1203036 () Bool)

(assert (=> b!1203036 (= e!771852 (inv!16152 (left!10521 t!4115)))))

(declare-fun b!1203037 () Bool)

(declare-fun e!771853 () Bool)

(assert (=> b!1203037 (= e!771852 e!771853)))

(declare-fun res!541933 () Bool)

(assert (=> b!1203037 (= res!541933 (not ((_ is Leaf!6098) (left!10521 t!4115))))))

(assert (=> b!1203037 (=> res!541933 e!771853)))

(declare-fun b!1203038 () Bool)

(assert (=> b!1203038 (= e!771853 (inv!16153 (left!10521 t!4115)))))

(assert (= (and d!344042 c!200847) b!1203036))

(assert (= (and d!344042 (not c!200847)) b!1203037))

(assert (= (and b!1203037 (not res!541933)) b!1203038))

(declare-fun m!1378829 () Bool)

(assert (=> b!1203036 m!1378829))

(declare-fun m!1378831 () Bool)

(assert (=> b!1203038 m!1378831))

(assert (=> b!1202512 d!344042))

(declare-fun d!344044 () Bool)

(declare-fun c!200848 () Bool)

(assert (=> d!344044 (= c!200848 ((_ is Node!3982) (right!10851 t!4115)))))

(declare-fun e!771854 () Bool)

(assert (=> d!344044 (= (inv!16149 (right!10851 t!4115)) e!771854)))

(declare-fun b!1203039 () Bool)

(assert (=> b!1203039 (= e!771854 (inv!16152 (right!10851 t!4115)))))

(declare-fun b!1203040 () Bool)

(declare-fun e!771855 () Bool)

(assert (=> b!1203040 (= e!771854 e!771855)))

(declare-fun res!541934 () Bool)

(assert (=> b!1203040 (= res!541934 (not ((_ is Leaf!6098) (right!10851 t!4115))))))

(assert (=> b!1203040 (=> res!541934 e!771855)))

(declare-fun b!1203041 () Bool)

(assert (=> b!1203041 (= e!771855 (inv!16153 (right!10851 t!4115)))))

(assert (= (and d!344044 c!200848) b!1203039))

(assert (= (and d!344044 (not c!200848)) b!1203040))

(assert (= (and b!1203040 (not res!541934)) b!1203041))

(declare-fun m!1378833 () Bool)

(assert (=> b!1203039 m!1378833))

(declare-fun m!1378835 () Bool)

(assert (=> b!1203041 m!1378835))

(assert (=> b!1202512 d!344044))

(declare-fun b!1203042 () Bool)

(declare-fun e!771856 () Bool)

(declare-fun e!771857 () Bool)

(assert (=> b!1203042 (= e!771856 e!771857)))

(declare-fun res!541937 () Bool)

(assert (=> b!1203042 (=> (not res!541937) (not e!771857))))

(assert (=> b!1203042 (= res!541937 (<= (- 1) (- (height!576 (left!10521 t!4115)) (height!576 (right!10851 t!4115)))))))

(declare-fun b!1203043 () Bool)

(assert (=> b!1203043 (= e!771857 (not (isEmpty!7273 (right!10851 t!4115))))))

(declare-fun b!1203044 () Bool)

(declare-fun res!541940 () Bool)

(assert (=> b!1203044 (=> (not res!541940) (not e!771857))))

(assert (=> b!1203044 (= res!541940 (<= (- (height!576 (left!10521 t!4115)) (height!576 (right!10851 t!4115))) 1))))

(declare-fun b!1203045 () Bool)

(declare-fun res!541939 () Bool)

(assert (=> b!1203045 (=> (not res!541939) (not e!771857))))

(assert (=> b!1203045 (= res!541939 (not (isEmpty!7273 (left!10521 t!4115))))))

(declare-fun b!1203046 () Bool)

(declare-fun res!541935 () Bool)

(assert (=> b!1203046 (=> (not res!541935) (not e!771857))))

(assert (=> b!1203046 (= res!541935 (isBalanced!1167 (left!10521 t!4115)))))

(declare-fun b!1203047 () Bool)

(declare-fun res!541936 () Bool)

(assert (=> b!1203047 (=> (not res!541936) (not e!771857))))

(assert (=> b!1203047 (= res!541936 (isBalanced!1167 (right!10851 t!4115)))))

(declare-fun d!344046 () Bool)

(declare-fun res!541938 () Bool)

(assert (=> d!344046 (=> res!541938 e!771856)))

(assert (=> d!344046 (= res!541938 (not ((_ is Node!3982) t!4115)))))

(assert (=> d!344046 (= (isBalanced!1167 t!4115) e!771856)))

(assert (= (and d!344046 (not res!541938)) b!1203042))

(assert (= (and b!1203042 res!541937) b!1203044))

(assert (= (and b!1203044 res!541940) b!1203046))

(assert (= (and b!1203046 res!541935) b!1203047))

(assert (= (and b!1203047 res!541936) b!1203045))

(assert (= (and b!1203045 res!541939) b!1203043))

(declare-fun m!1378837 () Bool)

(assert (=> b!1203042 m!1378837))

(declare-fun m!1378839 () Bool)

(assert (=> b!1203042 m!1378839))

(assert (=> b!1203047 m!1378789))

(assert (=> b!1203046 m!1378757))

(assert (=> b!1203044 m!1378837))

(assert (=> b!1203044 m!1378839))

(declare-fun m!1378841 () Bool)

(assert (=> b!1203045 m!1378841))

(declare-fun m!1378843 () Bool)

(assert (=> b!1203043 m!1378843))

(assert (=> b!1202522 d!344046))

(declare-fun d!344048 () Bool)

(assert (=> d!344048 (= (slice!486 (ite c!200662 lt!411242 (ite c!200661 lt!411248 lt!411242)) (ite c!200662 (- from!553 lt!411246) (ite c!200661 from!553 0)) (ite c!200662 (- until!31 lt!411246) (ite c!200661 until!31 (- until!31 lt!411246)))) (take!135 (drop!607 (ite c!200662 lt!411242 (ite c!200661 lt!411248 lt!411242)) (ite c!200662 (- from!553 lt!411246) (ite c!200661 from!553 0))) (- (ite c!200662 (- until!31 lt!411246) (ite c!200661 until!31 (- until!31 lt!411246))) (ite c!200662 (- from!553 lt!411246) (ite c!200661 from!553 0)))))))

(declare-fun bs!288346 () Bool)

(assert (= bs!288346 d!344048))

(declare-fun m!1378845 () Bool)

(assert (=> bs!288346 m!1378845))

(assert (=> bs!288346 m!1378845))

(declare-fun m!1378847 () Bool)

(assert (=> bs!288346 m!1378847))

(assert (=> bm!83835 d!344048))

(declare-fun e!771862 () Bool)

(declare-fun b!1203056 () Bool)

(declare-fun tp!341437 () Bool)

(declare-fun tp!341438 () Bool)

(assert (=> b!1203056 (= e!771862 (and (inv!16149 (left!10521 (left!10521 t!4115))) tp!341437 (inv!16149 (right!10851 (left!10521 t!4115))) tp!341438))))

(declare-fun b!1203058 () Bool)

(declare-fun e!771863 () Bool)

(declare-fun tp!341439 () Bool)

(assert (=> b!1203058 (= e!771863 tp!341439)))

(declare-fun b!1203057 () Bool)

(assert (=> b!1203057 (= e!771862 (and (inv!16148 (xs!6691 (left!10521 t!4115))) e!771863))))

(assert (=> b!1202512 (= tp!341414 (and (inv!16149 (left!10521 t!4115)) e!771862))))

(assert (= (and b!1202512 ((_ is Node!3982) (left!10521 t!4115))) b!1203056))

(assert (= b!1203057 b!1203058))

(assert (= (and b!1202512 ((_ is Leaf!6098) (left!10521 t!4115))) b!1203057))

(declare-fun m!1378849 () Bool)

(assert (=> b!1203056 m!1378849))

(declare-fun m!1378851 () Bool)

(assert (=> b!1203056 m!1378851))

(declare-fun m!1378853 () Bool)

(assert (=> b!1203057 m!1378853))

(assert (=> b!1202512 m!1378359))

(declare-fun e!771864 () Bool)

(declare-fun tp!341440 () Bool)

(declare-fun tp!341441 () Bool)

(declare-fun b!1203059 () Bool)

(assert (=> b!1203059 (= e!771864 (and (inv!16149 (left!10521 (right!10851 t!4115))) tp!341440 (inv!16149 (right!10851 (right!10851 t!4115))) tp!341441))))

(declare-fun b!1203061 () Bool)

(declare-fun e!771865 () Bool)

(declare-fun tp!341442 () Bool)

(assert (=> b!1203061 (= e!771865 tp!341442)))

(declare-fun b!1203060 () Bool)

(assert (=> b!1203060 (= e!771864 (and (inv!16148 (xs!6691 (right!10851 t!4115))) e!771865))))

(assert (=> b!1202512 (= tp!341413 (and (inv!16149 (right!10851 t!4115)) e!771864))))

(assert (= (and b!1202512 ((_ is Node!3982) (right!10851 t!4115))) b!1203059))

(assert (= b!1203060 b!1203061))

(assert (= (and b!1202512 ((_ is Leaf!6098) (right!10851 t!4115))) b!1203060))

(declare-fun m!1378855 () Bool)

(assert (=> b!1203059 m!1378855))

(declare-fun m!1378857 () Bool)

(assert (=> b!1203059 m!1378857))

(declare-fun m!1378859 () Bool)

(assert (=> b!1203060 m!1378859))

(assert (=> b!1202512 m!1378361))

(declare-fun b!1203066 () Bool)

(declare-fun e!771868 () Bool)

(declare-fun tp_is_empty!5991 () Bool)

(declare-fun tp!341445 () Bool)

(assert (=> b!1203066 (= e!771868 (and tp_is_empty!5991 tp!341445))))

(assert (=> b!1202517 (= tp!341415 e!771868)))

(assert (= (and b!1202517 ((_ is Cons!12049) (innerList!4042 (xs!6691 t!4115)))) b!1203066))

(check-sat (not d!343960) (not b!1202649) (not b!1203038) (not b!1202620) (not bm!83940) (not b!1203056) (not bm!83995) (not b!1202545) (not b!1203060) (not bm!83990) (not b!1202996) (not b!1202651) (not b!1202647) (not b!1203045) (not b!1202990) (not bm!83939) (not b!1203047) (not b!1202989) (not b!1202617) (not b!1202593) (not b!1203033) (not b!1202532) (not b!1202764) (not bm!83988) (not bm!83843) (not b!1203011) (not b!1203035) (not b!1202759) (not b!1202616) (not b!1203046) (not b!1203000) (not b!1203057) (not b!1203006) (not b!1202776) (not b!1203020) (not d!343968) (not bm!83934) (not bm!83991) (not b!1203039) (not b!1203059) (not b!1202512) (not d!344040) tp_is_empty!5991 (not bm!83994) (not b!1203061) (not b!1202626) (not bm!83926) (not d!344004) (not b!1202600) (not b!1202652) (not b!1202601) (not b!1202758) (not b!1203026) (not b!1203058) (not d!343994) (not bm!83989) (not b!1203041) (not b!1202533) (not b!1202607) (not b!1202650) (not d!344036) (not b!1202546) (not bm!83931) (not b!1202627) (not b!1202597) (not b!1202772) (not b!1202648) (not b!1202999) (not d!343958) (not d!343990) (not bm!83996) (not b!1203066) (not d!343962) (not b!1202621) (not b!1203005) (not bm!83997) (not b!1203044) (not bm!83925) (not b!1202985) (not b!1202770) (not d!343986) (not b!1203010) (not b!1203042) (not b!1203036) (not b!1203043) (not bm!83932) (not d!343982) (not bm!83844) (not d!344048) (not b!1203021) (not b!1203017) (not d!344000))
(check-sat)
