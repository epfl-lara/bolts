; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182746 () Bool)

(assert start!182746)

(declare-fun b_free!51485 () Bool)

(declare-fun b_next!52189 () Bool)

(assert (=> start!182746 (= b_free!51485 (not b_next!52189))))

(declare-fun tp!519860 () Bool)

(declare-fun b_and!143603 () Bool)

(assert (=> start!182746 (= tp!519860 b_and!143603)))

(declare-datatypes ((T!31412 0))(
  ( (T!31413 (val!5665 Int)) )
))
(declare-datatypes ((List!20265 0))(
  ( (Nil!20195) (Cons!20195 (h!25596 T!31412) (t!171684 List!20265)) )
))
(declare-datatypes ((IArray!13381 0))(
  ( (IArray!13382 (innerList!6748 List!20265)) )
))
(declare-datatypes ((Conc!6688 0))(
  ( (Node!6688 (left!16141 Conc!6688) (right!16471 Conc!6688) (csize!13606 Int) (cheight!6899 Int)) (Leaf!9736 (xs!9564 IArray!13381) (csize!13607 Int)) (Empty!6688) )
))
(declare-datatypes ((BalanceConc!13320 0))(
  ( (BalanceConc!13321 (c!299854 Conc!6688)) )
))
(declare-fun thiss!5824 () BalanceConc!13320)

(declare-fun f!423 () Int)

(declare-datatypes ((B!1441 0))(
  ( (B!1442 (val!5666 Int)) )
))
(declare-datatypes ((List!20266 0))(
  ( (Nil!20196) (Cons!20196 (h!25597 B!1441) (t!171685 List!20266)) )
))
(declare-datatypes ((IArray!13383 0))(
  ( (IArray!13384 (innerList!6749 List!20266)) )
))
(declare-datatypes ((Conc!6689 0))(
  ( (Node!6689 (left!16142 Conc!6689) (right!16472 Conc!6689) (csize!13608 Int) (cheight!6900 Int)) (Leaf!9737 (xs!9565 IArray!13383) (csize!13609 Int)) (Empty!6689) )
))
(declare-datatypes ((BalanceConc!13322 0))(
  ( (BalanceConc!13323 (c!299855 Conc!6689)) )
))
(declare-fun inv!26303 (BalanceConc!13322) Bool)

(declare-fun map!4197 (Conc!6688 Int) Conc!6689)

(assert (=> start!182746 (not (inv!26303 (BalanceConc!13323 (map!4197 (c!299854 thiss!5824) f!423))))))

(declare-fun e!1174258 () Bool)

(declare-fun inv!26304 (BalanceConc!13320) Bool)

(assert (=> start!182746 (and (inv!26304 thiss!5824) e!1174258)))

(assert (=> start!182746 tp!519860))

(declare-fun b!1837676 () Bool)

(declare-fun tp!519859 () Bool)

(declare-fun inv!26305 (Conc!6688) Bool)

(assert (=> b!1837676 (= e!1174258 (and (inv!26305 (c!299854 thiss!5824)) tp!519859))))

(assert (= start!182746 b!1837676))

(declare-fun m!2265569 () Bool)

(assert (=> start!182746 m!2265569))

(declare-fun m!2265571 () Bool)

(assert (=> start!182746 m!2265571))

(declare-fun m!2265573 () Bool)

(assert (=> start!182746 m!2265573))

(declare-fun m!2265575 () Bool)

(assert (=> b!1837676 m!2265575))

(check-sat (not start!182746) (not b!1837676) b_and!143603 (not b_next!52189))
(check-sat b_and!143603 (not b_next!52189))
(get-model)

(declare-fun d!562022 () Bool)

(declare-fun isBalanced!2078 (Conc!6689) Bool)

(assert (=> d!562022 (= (inv!26303 (BalanceConc!13323 (map!4197 (c!299854 thiss!5824) f!423))) (isBalanced!2078 (c!299855 (BalanceConc!13323 (map!4197 (c!299854 thiss!5824) f!423)))))))

(declare-fun bs!408477 () Bool)

(assert (= bs!408477 d!562022))

(declare-fun m!2265579 () Bool)

(assert (=> bs!408477 m!2265579))

(assert (=> start!182746 d!562022))

(declare-fun b!1837702 () Bool)

(declare-datatypes ((Unit!34903 0))(
  ( (Unit!34904) )
))
(declare-fun lt!713206 () Unit!34903)

(declare-fun lemmaMapConcat!16 (List!20265 List!20265 Int) Unit!34903)

(declare-fun list!8211 (Conc!6688) List!20265)

(assert (=> b!1837702 (= lt!713206 (lemmaMapConcat!16 (list!8211 (left!16141 (c!299854 thiss!5824))) (list!8211 (right!16471 (c!299854 thiss!5824))) f!423))))

(declare-fun e!1174276 () Conc!6689)

(assert (=> b!1837702 (= e!1174276 (Node!6689 (map!4197 (left!16141 (c!299854 thiss!5824)) f!423) (map!4197 (right!16471 (c!299854 thiss!5824)) f!423) (csize!13606 (c!299854 thiss!5824)) (cheight!6899 (c!299854 thiss!5824))))))

(declare-fun b!1837703 () Bool)

(declare-fun e!1174275 () Conc!6689)

(assert (=> b!1837703 (= e!1174275 Empty!6689)))

(declare-fun b!1837704 () Bool)

(declare-fun map!4200 (IArray!13381 Int) IArray!13383)

(assert (=> b!1837704 (= e!1174276 (Leaf!9737 (map!4200 (xs!9564 (c!299854 thiss!5824)) f!423) (csize!13607 (c!299854 thiss!5824))))))

(declare-fun b!1837705 () Bool)

(declare-fun e!1174274 () Bool)

(declare-fun lt!713205 () Conc!6689)

(assert (=> b!1837705 (= e!1174274 (isBalanced!2078 lt!713205))))

(declare-fun b!1837706 () Bool)

(assert (=> b!1837706 (= e!1174275 e!1174276)))

(declare-fun c!299867 () Bool)

(get-info :version)

(assert (=> b!1837706 (= c!299867 ((_ is Leaf!9736) (c!299854 thiss!5824)))))

(declare-fun d!562024 () Bool)

(assert (=> d!562024 e!1174274))

(declare-fun res!826026 () Bool)

(assert (=> d!562024 (=> (not res!826026) (not e!1174274))))

(declare-fun list!8213 (Conc!6689) List!20266)

(declare-fun map!4201 (List!20265 Int) List!20266)

(assert (=> d!562024 (= res!826026 (= (list!8213 lt!713205) (map!4201 (list!8211 (c!299854 thiss!5824)) f!423)))))

(assert (=> d!562024 (= lt!713205 e!1174275)))

(declare-fun c!299866 () Bool)

(assert (=> d!562024 (= c!299866 ((_ is Empty!6688) (c!299854 thiss!5824)))))

(declare-fun isBalanced!2080 (Conc!6688) Bool)

(assert (=> d!562024 (isBalanced!2080 (c!299854 thiss!5824))))

(assert (=> d!562024 (= (map!4197 (c!299854 thiss!5824) f!423) lt!713205)))

(assert (= (and d!562024 c!299866) b!1837703))

(assert (= (and d!562024 (not c!299866)) b!1837706))

(assert (= (and b!1837706 c!299867) b!1837704))

(assert (= (and b!1837706 (not c!299867)) b!1837702))

(assert (= (and d!562024 res!826026) b!1837705))

(declare-fun m!2265603 () Bool)

(assert (=> b!1837702 m!2265603))

(declare-fun m!2265605 () Bool)

(assert (=> b!1837702 m!2265605))

(declare-fun m!2265607 () Bool)

(assert (=> b!1837702 m!2265607))

(assert (=> b!1837702 m!2265603))

(assert (=> b!1837702 m!2265607))

(declare-fun m!2265609 () Bool)

(assert (=> b!1837702 m!2265609))

(declare-fun m!2265611 () Bool)

(assert (=> b!1837702 m!2265611))

(declare-fun m!2265613 () Bool)

(assert (=> b!1837704 m!2265613))

(declare-fun m!2265615 () Bool)

(assert (=> b!1837705 m!2265615))

(declare-fun m!2265617 () Bool)

(assert (=> d!562024 m!2265617))

(declare-fun m!2265619 () Bool)

(assert (=> d!562024 m!2265619))

(assert (=> d!562024 m!2265619))

(declare-fun m!2265621 () Bool)

(assert (=> d!562024 m!2265621))

(declare-fun m!2265623 () Bool)

(assert (=> d!562024 m!2265623))

(assert (=> start!182746 d!562024))

(declare-fun d!562030 () Bool)

(assert (=> d!562030 (= (inv!26304 thiss!5824) (isBalanced!2080 (c!299854 thiss!5824)))))

(declare-fun bs!408479 () Bool)

(assert (= bs!408479 d!562030))

(assert (=> bs!408479 m!2265623))

(assert (=> start!182746 d!562030))

(declare-fun d!562032 () Bool)

(declare-fun c!299873 () Bool)

(assert (=> d!562032 (= c!299873 ((_ is Node!6688) (c!299854 thiss!5824)))))

(declare-fun e!1174293 () Bool)

(assert (=> d!562032 (= (inv!26305 (c!299854 thiss!5824)) e!1174293)))

(declare-fun b!1837733 () Bool)

(declare-fun inv!26307 (Conc!6688) Bool)

(assert (=> b!1837733 (= e!1174293 (inv!26307 (c!299854 thiss!5824)))))

(declare-fun b!1837734 () Bool)

(declare-fun e!1174294 () Bool)

(assert (=> b!1837734 (= e!1174293 e!1174294)))

(declare-fun res!826032 () Bool)

(assert (=> b!1837734 (= res!826032 (not ((_ is Leaf!9736) (c!299854 thiss!5824))))))

(assert (=> b!1837734 (=> res!826032 e!1174294)))

(declare-fun b!1837735 () Bool)

(declare-fun inv!26309 (Conc!6688) Bool)

(assert (=> b!1837735 (= e!1174294 (inv!26309 (c!299854 thiss!5824)))))

(assert (= (and d!562032 c!299873) b!1837733))

(assert (= (and d!562032 (not c!299873)) b!1837734))

(assert (= (and b!1837734 (not res!826032)) b!1837735))

(declare-fun m!2265635 () Bool)

(assert (=> b!1837733 m!2265635))

(declare-fun m!2265637 () Bool)

(assert (=> b!1837735 m!2265637))

(assert (=> b!1837676 d!562032))

(declare-fun tp!519876 () Bool)

(declare-fun e!1174299 () Bool)

(declare-fun tp!519877 () Bool)

(declare-fun b!1837744 () Bool)

(assert (=> b!1837744 (= e!1174299 (and (inv!26305 (left!16141 (c!299854 thiss!5824))) tp!519877 (inv!26305 (right!16471 (c!299854 thiss!5824))) tp!519876))))

(declare-fun b!1837746 () Bool)

(declare-fun e!1174300 () Bool)

(declare-fun tp!519878 () Bool)

(assert (=> b!1837746 (= e!1174300 tp!519878)))

(declare-fun b!1837745 () Bool)

(declare-fun inv!26311 (IArray!13381) Bool)

(assert (=> b!1837745 (= e!1174299 (and (inv!26311 (xs!9564 (c!299854 thiss!5824))) e!1174300))))

(assert (=> b!1837676 (= tp!519859 (and (inv!26305 (c!299854 thiss!5824)) e!1174299))))

(assert (= (and b!1837676 ((_ is Node!6688) (c!299854 thiss!5824))) b!1837744))

(assert (= b!1837745 b!1837746))

(assert (= (and b!1837676 ((_ is Leaf!9736) (c!299854 thiss!5824))) b!1837745))

(declare-fun m!2265639 () Bool)

(assert (=> b!1837744 m!2265639))

(declare-fun m!2265641 () Bool)

(assert (=> b!1837744 m!2265641))

(declare-fun m!2265643 () Bool)

(assert (=> b!1837745 m!2265643))

(assert (=> b!1837676 m!2265575))

(check-sat (not b!1837746) (not d!562022) b_and!143603 (not b!1837704) (not d!562030) (not b!1837744) (not b!1837702) (not b!1837735) (not b!1837745) (not b!1837733) (not d!562024) (not b!1837705) (not b_next!52189) (not b!1837676))
(check-sat b_and!143603 (not b_next!52189))
