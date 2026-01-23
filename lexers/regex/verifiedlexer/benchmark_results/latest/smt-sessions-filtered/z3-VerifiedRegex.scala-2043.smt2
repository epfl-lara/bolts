; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104206 () Bool)

(assert start!104206)

(declare-fun b!1178418 () Bool)

(declare-fun res!532804 () Bool)

(declare-fun e!756142 () Bool)

(assert (=> b!1178418 (=> (not res!532804) (not e!756142))))

(declare-fun until!13 () Int)

(declare-datatypes ((T!20984 0))(
  ( (T!20985 (val!3752 Int)) )
))
(declare-datatypes ((List!11699 0))(
  ( (Nil!11675) (Cons!11675 (h!17076 T!20984) (t!111199 List!11699)) )
))
(declare-datatypes ((IArray!7659 0))(
  ( (IArray!7660 (innerList!3887 List!11699)) )
))
(declare-datatypes ((Conc!3827 0))(
  ( (Node!3827 (left!10198 Conc!3827) (right!10528 Conc!3827) (csize!7884 Int) (cheight!4038 Int)) (Leaf!5871 (xs!6532 IArray!7659) (csize!7885 Int)) (Empty!3827) )
))
(declare-datatypes ((BalanceConc!7676 0))(
  ( (BalanceConc!7677 (c!196475 Conc!3827)) )
))
(declare-fun thiss!5831 () BalanceConc!7676)

(declare-fun size!9247 (BalanceConc!7676) Int)

(assert (=> b!1178418 (= res!532804 (<= until!13 (size!9247 thiss!5831)))))

(declare-fun res!532803 () Bool)

(assert (=> start!104206 (=> (not res!532803) (not e!756142))))

(declare-fun from!529 () Int)

(assert (=> start!104206 (= res!532803 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> start!104206 e!756142))

(assert (=> start!104206 true))

(declare-fun e!756143 () Bool)

(declare-fun inv!15472 (BalanceConc!7676) Bool)

(assert (=> start!104206 (and (inv!15472 thiss!5831) e!756143)))

(declare-fun b!1178420 () Bool)

(declare-fun slice!397 (Conc!3827 Int Int) Conc!3827)

(assert (=> b!1178420 (= e!756142 (not (inv!15472 (BalanceConc!7677 (slice!397 (c!196475 thiss!5831) from!529 until!13)))))))

(declare-fun b!1178421 () Bool)

(declare-fun tp!335296 () Bool)

(declare-fun inv!15473 (Conc!3827) Bool)

(assert (=> b!1178421 (= e!756143 (and (inv!15473 (c!196475 thiss!5831)) tp!335296))))

(declare-fun b!1178419 () Bool)

(declare-fun res!532805 () Bool)

(assert (=> b!1178419 (=> (not res!532805) (not e!756142))))

(declare-fun isBalanced!1089 (Conc!3827) Bool)

(assert (=> b!1178419 (= res!532805 (isBalanced!1089 (c!196475 thiss!5831)))))

(assert (= (and start!104206 res!532803) b!1178418))

(assert (= (and b!1178418 res!532804) b!1178419))

(assert (= (and b!1178419 res!532805) b!1178420))

(assert (= start!104206 b!1178421))

(declare-fun m!1355137 () Bool)

(assert (=> b!1178420 m!1355137))

(declare-fun m!1355139 () Bool)

(assert (=> b!1178420 m!1355139))

(declare-fun m!1355141 () Bool)

(assert (=> b!1178419 m!1355141))

(declare-fun m!1355143 () Bool)

(assert (=> b!1178421 m!1355143))

(declare-fun m!1355145 () Bool)

(assert (=> b!1178418 m!1355145))

(declare-fun m!1355147 () Bool)

(assert (=> start!104206 m!1355147))

(check-sat (not b!1178418) (not b!1178420) (not start!104206) (not b!1178419) (not b!1178421))
(check-sat)
(get-model)

(declare-fun b!1178434 () Bool)

(declare-fun res!532819 () Bool)

(declare-fun e!756148 () Bool)

(assert (=> b!1178434 (=> (not res!532819) (not e!756148))))

(declare-fun isEmpty!7064 (Conc!3827) Bool)

(assert (=> b!1178434 (= res!532819 (not (isEmpty!7064 (left!10198 (c!196475 thiss!5831)))))))

(declare-fun d!337500 () Bool)

(declare-fun res!532823 () Bool)

(declare-fun e!756149 () Bool)

(assert (=> d!337500 (=> res!532823 e!756149)))

(get-info :version)

(assert (=> d!337500 (= res!532823 (not ((_ is Node!3827) (c!196475 thiss!5831))))))

(assert (=> d!337500 (= (isBalanced!1089 (c!196475 thiss!5831)) e!756149)))

(declare-fun b!1178435 () Bool)

(assert (=> b!1178435 (= e!756148 (not (isEmpty!7064 (right!10528 (c!196475 thiss!5831)))))))

(declare-fun b!1178436 () Bool)

(declare-fun res!532820 () Bool)

(assert (=> b!1178436 (=> (not res!532820) (not e!756148))))

(declare-fun height!524 (Conc!3827) Int)

(assert (=> b!1178436 (= res!532820 (<= (- (height!524 (left!10198 (c!196475 thiss!5831))) (height!524 (right!10528 (c!196475 thiss!5831)))) 1))))

(declare-fun b!1178437 () Bool)

(assert (=> b!1178437 (= e!756149 e!756148)))

(declare-fun res!532821 () Bool)

(assert (=> b!1178437 (=> (not res!532821) (not e!756148))))

(assert (=> b!1178437 (= res!532821 (<= (- 1) (- (height!524 (left!10198 (c!196475 thiss!5831))) (height!524 (right!10528 (c!196475 thiss!5831))))))))

(declare-fun b!1178438 () Bool)

(declare-fun res!532822 () Bool)

(assert (=> b!1178438 (=> (not res!532822) (not e!756148))))

(assert (=> b!1178438 (= res!532822 (isBalanced!1089 (left!10198 (c!196475 thiss!5831))))))

(declare-fun b!1178439 () Bool)

(declare-fun res!532818 () Bool)

(assert (=> b!1178439 (=> (not res!532818) (not e!756148))))

(assert (=> b!1178439 (= res!532818 (isBalanced!1089 (right!10528 (c!196475 thiss!5831))))))

(assert (= (and d!337500 (not res!532823)) b!1178437))

(assert (= (and b!1178437 res!532821) b!1178436))

(assert (= (and b!1178436 res!532820) b!1178438))

(assert (= (and b!1178438 res!532822) b!1178439))

(assert (= (and b!1178439 res!532818) b!1178434))

(assert (= (and b!1178434 res!532819) b!1178435))

(declare-fun m!1355155 () Bool)

(assert (=> b!1178437 m!1355155))

(declare-fun m!1355157 () Bool)

(assert (=> b!1178437 m!1355157))

(declare-fun m!1355159 () Bool)

(assert (=> b!1178439 m!1355159))

(assert (=> b!1178436 m!1355155))

(assert (=> b!1178436 m!1355157))

(declare-fun m!1355161 () Bool)

(assert (=> b!1178434 m!1355161))

(declare-fun m!1355163 () Bool)

(assert (=> b!1178435 m!1355163))

(declare-fun m!1355165 () Bool)

(assert (=> b!1178438 m!1355165))

(assert (=> b!1178419 d!337500))

(declare-fun d!337506 () Bool)

(assert (=> d!337506 (= (inv!15472 (BalanceConc!7677 (slice!397 (c!196475 thiss!5831) from!529 until!13))) (isBalanced!1089 (c!196475 (BalanceConc!7677 (slice!397 (c!196475 thiss!5831) from!529 until!13)))))))

(declare-fun bs!286772 () Bool)

(assert (= bs!286772 d!337506))

(declare-fun m!1355167 () Bool)

(assert (=> bs!286772 m!1355167))

(assert (=> b!1178420 d!337506))

(declare-fun b!1178563 () Bool)

(declare-fun e!756216 () Conc!3827)

(assert (=> b!1178563 (= e!756216 Empty!3827)))

(declare-fun b!1178564 () Bool)

(declare-fun c!196521 () Bool)

(assert (=> b!1178564 (= c!196521 (= (- until!13 from!529) 0))))

(declare-fun e!756212 () Conc!3827)

(assert (=> b!1178564 (= e!756212 e!756216)))

(declare-fun b!1178565 () Bool)

(declare-fun e!756217 () Int)

(declare-fun call!82535 () Int)

(assert (=> b!1178565 (= e!756217 call!82535)))

(declare-fun e!756221 () Bool)

(declare-fun lt!406239 () Conc!3827)

(declare-fun b!1178566 () Bool)

(declare-fun list!4317 (Conc!3827) List!11699)

(declare-fun slice!400 (List!11699 Int Int) List!11699)

(assert (=> b!1178566 (= e!756221 (= (list!4317 lt!406239) (slice!400 (list!4317 (c!196475 thiss!5831)) from!529 until!13)))))

(declare-fun bm!82530 () Bool)

(declare-fun lt!406240 () List!11699)

(declare-fun size!9250 (List!11699) Int)

(assert (=> bm!82530 (= call!82535 (size!9250 lt!406240))))

(declare-fun b!1178567 () Bool)

(declare-fun e!756218 () Conc!3827)

(declare-fun e!756213 () Conc!3827)

(assert (=> b!1178567 (= e!756218 e!756213)))

(declare-fun c!196529 () Bool)

(declare-fun call!82537 () Int)

(assert (=> b!1178567 (= c!196529 (<= until!13 call!82537))))

(declare-fun call!82540 () Conc!3827)

(declare-fun b!1178568 () Bool)

(declare-fun ++!3016 (Conc!3827 Conc!3827) Conc!3827)

(assert (=> b!1178568 (= e!756213 (++!3016 (slice!397 (left!10198 (c!196475 thiss!5831)) from!529 call!82537) call!82540))))

(declare-fun d!337508 () Bool)

(assert (=> d!337508 e!756221))

(declare-fun res!532858 () Bool)

(assert (=> d!337508 (=> (not res!532858) (not e!756221))))

(assert (=> d!337508 (= res!532858 (isBalanced!1089 lt!406239))))

(declare-fun e!756214 () Conc!3827)

(assert (=> d!337508 (= lt!406239 e!756214)))

(declare-fun c!196525 () Bool)

(assert (=> d!337508 (= c!196525 (= from!529 until!13))))

(declare-fun e!756211 () Bool)

(assert (=> d!337508 e!756211))

(declare-fun res!532859 () Bool)

(assert (=> d!337508 (=> (not res!532859) (not e!756211))))

(assert (=> d!337508 (= res!532859 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> d!337508 (= (slice!397 (c!196475 thiss!5831) from!529 until!13) lt!406239)))

(declare-fun b!1178569 () Bool)

(assert (=> b!1178569 (= e!756217 until!13)))

(declare-fun b!1178570 () Bool)

(declare-fun e!756215 () List!11699)

(declare-fun e!756219 () List!11699)

(assert (=> b!1178570 (= e!756215 e!756219)))

(declare-fun c!196528 () Bool)

(assert (=> b!1178570 (= c!196528 (<= until!13 call!82535))))

(declare-fun b!1178571 () Bool)

(assert (=> b!1178571 (= e!756214 e!756212)))

(declare-fun c!196523 () Bool)

(assert (=> b!1178571 (= c!196523 ((_ is Leaf!5871) (c!196475 thiss!5831)))))

(declare-fun b!1178572 () Bool)

(declare-fun c!196527 () Bool)

(declare-fun size!9251 (Conc!3827) Int)

(assert (=> b!1178572 (= c!196527 (<= (size!9251 (left!10198 (c!196475 thiss!5831))) from!529))))

(declare-datatypes ((Unit!18014 0))(
  ( (Unit!18015) )
))
(declare-fun lt!406242 () Unit!18014)

(declare-fun lt!406243 () Unit!18014)

(assert (=> b!1178572 (= lt!406242 lt!406243)))

(declare-fun lt!406241 () List!11699)

(declare-fun ++!3018 (List!11699 List!11699) List!11699)

(assert (=> b!1178572 (= (slice!400 (++!3018 lt!406240 lt!406241) from!529 until!13) e!756215)))

(declare-fun c!196526 () Bool)

(assert (=> b!1178572 (= c!196526 (<= (size!9250 lt!406240) from!529))))

(declare-fun sliceLemma!13 (List!11699 List!11699 Int Int) Unit!18014)

(assert (=> b!1178572 (= lt!406243 (sliceLemma!13 lt!406240 lt!406241 from!529 until!13))))

(assert (=> b!1178572 (= lt!406241 (list!4317 (right!10528 (c!196475 thiss!5831))))))

(assert (=> b!1178572 (= lt!406240 (list!4317 (left!10198 (c!196475 thiss!5831))))))

(assert (=> b!1178572 (= e!756212 e!756218)))

(declare-fun e!756220 () Int)

(declare-fun bm!82531 () Bool)

(declare-fun call!82536 () Conc!3827)

(assert (=> bm!82531 (= call!82536 (slice!397 (ite c!196527 (right!10528 (c!196475 thiss!5831)) (ite c!196529 (left!10198 (c!196475 thiss!5831)) (right!10528 (c!196475 thiss!5831)))) (ite c!196527 (- from!529 call!82537) (ite c!196529 from!529 0)) (ite c!196527 (- until!13 call!82537) e!756220)))))

(declare-fun b!1178573 () Bool)

(assert (=> b!1178573 (= e!756211 (isBalanced!1089 (c!196475 thiss!5831)))))

(declare-fun b!1178574 () Bool)

(assert (=> b!1178574 (= e!756220 (- until!13 call!82537))))

(declare-fun b!1178575 () Bool)

(declare-fun call!82538 () List!11699)

(assert (=> b!1178575 (= e!756219 (++!3018 call!82538 (slice!400 lt!406241 0 (- until!13 call!82535))))))

(declare-fun b!1178576 () Bool)

(assert (=> b!1178576 (= e!756218 call!82536)))

(declare-fun b!1178577 () Bool)

(assert (=> b!1178577 (= e!756219 call!82538)))

(declare-fun b!1178578 () Bool)

(declare-fun call!82539 () List!11699)

(assert (=> b!1178578 (= e!756215 call!82539)))

(declare-fun bm!82532 () Bool)

(declare-fun c!196522 () Bool)

(assert (=> bm!82532 (= c!196522 c!196529)))

(assert (=> bm!82532 (= call!82540 call!82536)))

(declare-fun b!1178579 () Bool)

(declare-fun slice!401 (IArray!7659 Int Int) IArray!7659)

(assert (=> b!1178579 (= e!756216 (Leaf!5871 (slice!401 (xs!6532 (c!196475 thiss!5831)) from!529 until!13) (- until!13 from!529)))))

(declare-fun bm!82533 () Bool)

(declare-fun c!196524 () Bool)

(assert (=> bm!82533 (= c!196524 c!196528)))

(assert (=> bm!82533 (= call!82538 call!82539)))

(declare-fun b!1178580 () Bool)

(declare-fun res!532857 () Bool)

(assert (=> b!1178580 (=> (not res!532857) (not e!756211))))

(assert (=> b!1178580 (= res!532857 (<= until!13 (size!9251 (c!196475 thiss!5831))))))

(declare-fun b!1178581 () Bool)

(assert (=> b!1178581 (= e!756220 until!13)))

(declare-fun bm!82534 () Bool)

(assert (=> bm!82534 (= call!82539 (slice!400 (ite c!196526 lt!406241 lt!406240) (ite c!196526 (- from!529 call!82535) from!529) (ite c!196526 (- until!13 call!82535) e!756217)))))

(declare-fun bm!82535 () Bool)

(assert (=> bm!82535 (= call!82537 (size!9251 (left!10198 (c!196475 thiss!5831))))))

(declare-fun b!1178582 () Bool)

(assert (=> b!1178582 (= e!756213 call!82540)))

(declare-fun b!1178583 () Bool)

(assert (=> b!1178583 (= e!756214 Empty!3827)))

(assert (= (and d!337508 res!532859) b!1178580))

(assert (= (and b!1178580 res!532857) b!1178573))

(assert (= (and d!337508 c!196525) b!1178583))

(assert (= (and d!337508 (not c!196525)) b!1178571))

(assert (= (and b!1178571 c!196523) b!1178564))

(assert (= (and b!1178571 (not c!196523)) b!1178572))

(assert (= (and b!1178564 c!196521) b!1178563))

(assert (= (and b!1178564 (not c!196521)) b!1178579))

(assert (= (and b!1178572 c!196526) b!1178578))

(assert (= (and b!1178572 (not c!196526)) b!1178570))

(assert (= (and b!1178570 c!196528) b!1178577))

(assert (= (and b!1178570 (not c!196528)) b!1178575))

(assert (= (or b!1178577 b!1178575) bm!82533))

(assert (= (and bm!82533 c!196524) b!1178569))

(assert (= (and bm!82533 (not c!196524)) b!1178565))

(assert (= (or b!1178578 b!1178575 b!1178565 b!1178570) bm!82530))

(assert (= (or b!1178578 bm!82533) bm!82534))

(assert (= (and b!1178572 c!196527) b!1178576))

(assert (= (and b!1178572 (not c!196527)) b!1178567))

(assert (= (and b!1178567 c!196529) b!1178582))

(assert (= (and b!1178567 (not c!196529)) b!1178568))

(assert (= (or b!1178582 b!1178568) bm!82532))

(assert (= (and bm!82532 c!196522) b!1178581))

(assert (= (and bm!82532 (not c!196522)) b!1178574))

(assert (= (or b!1178576 b!1178574 b!1178567 b!1178568) bm!82535))

(assert (= (or b!1178576 bm!82532) bm!82531))

(assert (= (and d!337508 res!532858) b!1178566))

(declare-fun m!1355219 () Bool)

(assert (=> d!337508 m!1355219))

(declare-fun m!1355221 () Bool)

(assert (=> b!1178572 m!1355221))

(declare-fun m!1355223 () Bool)

(assert (=> b!1178572 m!1355223))

(assert (=> b!1178572 m!1355223))

(declare-fun m!1355225 () Bool)

(assert (=> b!1178572 m!1355225))

(declare-fun m!1355227 () Bool)

(assert (=> b!1178572 m!1355227))

(declare-fun m!1355229 () Bool)

(assert (=> b!1178572 m!1355229))

(declare-fun m!1355231 () Bool)

(assert (=> b!1178572 m!1355231))

(declare-fun m!1355233 () Bool)

(assert (=> b!1178572 m!1355233))

(declare-fun m!1355235 () Bool)

(assert (=> b!1178575 m!1355235))

(assert (=> b!1178575 m!1355235))

(declare-fun m!1355237 () Bool)

(assert (=> b!1178575 m!1355237))

(declare-fun m!1355239 () Bool)

(assert (=> b!1178566 m!1355239))

(declare-fun m!1355241 () Bool)

(assert (=> b!1178566 m!1355241))

(assert (=> b!1178566 m!1355241))

(declare-fun m!1355243 () Bool)

(assert (=> b!1178566 m!1355243))

(assert (=> bm!82535 m!1355227))

(assert (=> b!1178573 m!1355141))

(declare-fun m!1355245 () Bool)

(assert (=> b!1178579 m!1355245))

(declare-fun m!1355247 () Bool)

(assert (=> b!1178580 m!1355247))

(assert (=> bm!82530 m!1355229))

(declare-fun m!1355249 () Bool)

(assert (=> bm!82534 m!1355249))

(declare-fun m!1355253 () Bool)

(assert (=> b!1178568 m!1355253))

(assert (=> b!1178568 m!1355253))

(declare-fun m!1355257 () Bool)

(assert (=> b!1178568 m!1355257))

(declare-fun m!1355259 () Bool)

(assert (=> bm!82531 m!1355259))

(assert (=> b!1178420 d!337508))

(declare-fun d!337516 () Bool)

(declare-fun c!196535 () Bool)

(assert (=> d!337516 (= c!196535 ((_ is Node!3827) (c!196475 thiss!5831)))))

(declare-fun e!756238 () Bool)

(assert (=> d!337516 (= (inv!15473 (c!196475 thiss!5831)) e!756238)))

(declare-fun b!1178610 () Bool)

(declare-fun inv!15477 (Conc!3827) Bool)

(assert (=> b!1178610 (= e!756238 (inv!15477 (c!196475 thiss!5831)))))

(declare-fun b!1178611 () Bool)

(declare-fun e!756239 () Bool)

(assert (=> b!1178611 (= e!756238 e!756239)))

(declare-fun res!532865 () Bool)

(assert (=> b!1178611 (= res!532865 (not ((_ is Leaf!5871) (c!196475 thiss!5831))))))

(assert (=> b!1178611 (=> res!532865 e!756239)))

(declare-fun b!1178612 () Bool)

(declare-fun inv!15478 (Conc!3827) Bool)

(assert (=> b!1178612 (= e!756239 (inv!15478 (c!196475 thiss!5831)))))

(assert (= (and d!337516 c!196535) b!1178610))

(assert (= (and d!337516 (not c!196535)) b!1178611))

(assert (= (and b!1178611 (not res!532865)) b!1178612))

(declare-fun m!1355267 () Bool)

(assert (=> b!1178610 m!1355267))

(declare-fun m!1355269 () Bool)

(assert (=> b!1178612 m!1355269))

(assert (=> b!1178421 d!337516))

(declare-fun d!337518 () Bool)

(assert (=> d!337518 (= (inv!15472 thiss!5831) (isBalanced!1089 (c!196475 thiss!5831)))))

(declare-fun bs!286774 () Bool)

(assert (= bs!286774 d!337518))

(assert (=> bs!286774 m!1355141))

(assert (=> start!104206 d!337518))

(declare-fun d!337520 () Bool)

(declare-fun lt!406246 () Int)

(declare-fun list!4318 (BalanceConc!7676) List!11699)

(assert (=> d!337520 (= lt!406246 (size!9250 (list!4318 thiss!5831)))))

(assert (=> d!337520 (= lt!406246 (size!9251 (c!196475 thiss!5831)))))

(assert (=> d!337520 (= (size!9247 thiss!5831) lt!406246)))

(declare-fun bs!286775 () Bool)

(assert (= bs!286775 d!337520))

(declare-fun m!1355271 () Bool)

(assert (=> bs!286775 m!1355271))

(assert (=> bs!286775 m!1355271))

(declare-fun m!1355273 () Bool)

(assert (=> bs!286775 m!1355273))

(assert (=> bs!286775 m!1355247))

(assert (=> b!1178418 d!337520))

(declare-fun e!756244 () Bool)

(declare-fun tp!335314 () Bool)

(declare-fun b!1178621 () Bool)

(declare-fun tp!335313 () Bool)

(assert (=> b!1178621 (= e!756244 (and (inv!15473 (left!10198 (c!196475 thiss!5831))) tp!335313 (inv!15473 (right!10528 (c!196475 thiss!5831))) tp!335314))))

(declare-fun b!1178623 () Bool)

(declare-fun e!756245 () Bool)

(declare-fun tp!335312 () Bool)

(assert (=> b!1178623 (= e!756245 tp!335312)))

(declare-fun b!1178622 () Bool)

(declare-fun inv!15479 (IArray!7659) Bool)

(assert (=> b!1178622 (= e!756244 (and (inv!15479 (xs!6532 (c!196475 thiss!5831))) e!756245))))

(assert (=> b!1178421 (= tp!335296 (and (inv!15473 (c!196475 thiss!5831)) e!756244))))

(assert (= (and b!1178421 ((_ is Node!3827) (c!196475 thiss!5831))) b!1178621))

(assert (= b!1178622 b!1178623))

(assert (= (and b!1178421 ((_ is Leaf!5871) (c!196475 thiss!5831))) b!1178622))

(declare-fun m!1355275 () Bool)

(assert (=> b!1178621 m!1355275))

(declare-fun m!1355277 () Bool)

(assert (=> b!1178621 m!1355277))

(declare-fun m!1355279 () Bool)

(assert (=> b!1178622 m!1355279))

(assert (=> b!1178421 m!1355143))

(check-sat (not d!337506) (not b!1178573) (not b!1178580) (not b!1178579) (not b!1178436) (not b!1178437) (not b!1178623) (not bm!82531) (not b!1178566) (not b!1178434) (not b!1178568) (not d!337508) (not b!1178421) (not b!1178575) (not b!1178612) (not bm!82534) (not bm!82530) (not bm!82535) (not b!1178438) (not b!1178610) (not b!1178621) (not b!1178622) (not b!1178435) (not d!337518) (not b!1178439) (not d!337520) (not b!1178572))
(check-sat)
