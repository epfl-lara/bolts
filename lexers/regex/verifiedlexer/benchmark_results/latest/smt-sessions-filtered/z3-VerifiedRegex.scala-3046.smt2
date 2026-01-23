; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!182730 () Bool)

(assert start!182730)

(declare-datatypes ((T!31398 0))(
  ( (T!31399 (val!5662 Int)) )
))
(declare-datatypes ((List!20262 0))(
  ( (Nil!20192) (Cons!20192 (h!25593 T!31398) (t!171679 List!20262)) )
))
(declare-datatypes ((IArray!13375 0))(
  ( (IArray!13376 (innerList!6745 List!20262)) )
))
(declare-datatypes ((Conc!6685 0))(
  ( (Node!6685 (left!16137 Conc!6685) (right!16467 Conc!6685) (csize!13600 Int) (cheight!6896 Int)) (Leaf!9732 (xs!9561 IArray!13375) (csize!13601 Int)) (Empty!6685) )
))
(declare-datatypes ((BalanceConc!13314 0))(
  ( (BalanceConc!13315 (c!299845 Conc!6685)) )
))
(declare-fun thiss!5824 () BalanceConc!13314)

(declare-fun isBalanced!2076 (Conc!6685) Bool)

(assert (=> start!182730 (not (isBalanced!2076 (c!299845 thiss!5824)))))

(declare-fun e!1174216 () Bool)

(declare-fun inv!26289 (BalanceConc!13314) Bool)

(assert (=> start!182730 (and (inv!26289 thiss!5824) e!1174216)))

(declare-fun b!1837594 () Bool)

(declare-fun tp!519830 () Bool)

(declare-fun inv!26290 (Conc!6685) Bool)

(assert (=> b!1837594 (= e!1174216 (and (inv!26290 (c!299845 thiss!5824)) tp!519830))))

(assert (= start!182730 b!1837594))

(declare-fun m!2265511 () Bool)

(assert (=> start!182730 m!2265511))

(declare-fun m!2265513 () Bool)

(assert (=> start!182730 m!2265513))

(declare-fun m!2265515 () Bool)

(assert (=> b!1837594 m!2265515))

(check-sat (not b!1837594) (not start!182730))
(check-sat)
(get-model)

(declare-fun d!562007 () Bool)

(declare-fun c!299851 () Bool)

(get-info :version)

(assert (=> d!562007 (= c!299851 ((_ is Node!6685) (c!299845 thiss!5824)))))

(declare-fun e!1174227 () Bool)

(assert (=> d!562007 (= (inv!26290 (c!299845 thiss!5824)) e!1174227)))

(declare-fun b!1837610 () Bool)

(declare-fun inv!26293 (Conc!6685) Bool)

(assert (=> b!1837610 (= e!1174227 (inv!26293 (c!299845 thiss!5824)))))

(declare-fun b!1837611 () Bool)

(declare-fun e!1174228 () Bool)

(assert (=> b!1837611 (= e!1174227 e!1174228)))

(declare-fun res!825984 () Bool)

(assert (=> b!1837611 (= res!825984 (not ((_ is Leaf!9732) (c!299845 thiss!5824))))))

(assert (=> b!1837611 (=> res!825984 e!1174228)))

(declare-fun b!1837612 () Bool)

(declare-fun inv!26294 (Conc!6685) Bool)

(assert (=> b!1837612 (= e!1174228 (inv!26294 (c!299845 thiss!5824)))))

(assert (= (and d!562007 c!299851) b!1837610))

(assert (= (and d!562007 (not c!299851)) b!1837611))

(assert (= (and b!1837611 (not res!825984)) b!1837612))

(declare-fun m!2265521 () Bool)

(assert (=> b!1837610 m!2265521))

(declare-fun m!2265523 () Bool)

(assert (=> b!1837612 m!2265523))

(assert (=> b!1837594 d!562007))

(declare-fun d!562011 () Bool)

(declare-fun res!826016 () Bool)

(declare-fun e!1174240 () Bool)

(assert (=> d!562011 (=> res!826016 e!1174240)))

(assert (=> d!562011 (= res!826016 (not ((_ is Node!6685) (c!299845 thiss!5824))))))

(assert (=> d!562011 (= (isBalanced!2076 (c!299845 thiss!5824)) e!1174240)))

(declare-fun b!1837643 () Bool)

(declare-fun res!826019 () Bool)

(declare-fun e!1174239 () Bool)

(assert (=> b!1837643 (=> (not res!826019) (not e!1174239))))

(declare-fun isEmpty!12753 (Conc!6685) Bool)

(assert (=> b!1837643 (= res!826019 (not (isEmpty!12753 (left!16137 (c!299845 thiss!5824)))))))

(declare-fun b!1837644 () Bool)

(assert (=> b!1837644 (= e!1174240 e!1174239)))

(declare-fun res!826018 () Bool)

(assert (=> b!1837644 (=> (not res!826018) (not e!1174239))))

(declare-fun height!1013 (Conc!6685) Int)

(assert (=> b!1837644 (= res!826018 (<= (- 1) (- (height!1013 (left!16137 (c!299845 thiss!5824))) (height!1013 (right!16467 (c!299845 thiss!5824))))))))

(declare-fun b!1837645 () Bool)

(declare-fun res!826017 () Bool)

(assert (=> b!1837645 (=> (not res!826017) (not e!1174239))))

(assert (=> b!1837645 (= res!826017 (<= (- (height!1013 (left!16137 (c!299845 thiss!5824))) (height!1013 (right!16467 (c!299845 thiss!5824)))) 1))))

(declare-fun b!1837646 () Bool)

(declare-fun res!826015 () Bool)

(assert (=> b!1837646 (=> (not res!826015) (not e!1174239))))

(assert (=> b!1837646 (= res!826015 (isBalanced!2076 (right!16467 (c!299845 thiss!5824))))))

(declare-fun b!1837647 () Bool)

(declare-fun res!826020 () Bool)

(assert (=> b!1837647 (=> (not res!826020) (not e!1174239))))

(assert (=> b!1837647 (= res!826020 (isBalanced!2076 (left!16137 (c!299845 thiss!5824))))))

(declare-fun b!1837648 () Bool)

(assert (=> b!1837648 (= e!1174239 (not (isEmpty!12753 (right!16467 (c!299845 thiss!5824)))))))

(assert (= (and d!562011 (not res!826016)) b!1837644))

(assert (= (and b!1837644 res!826018) b!1837645))

(assert (= (and b!1837645 res!826017) b!1837647))

(assert (= (and b!1837647 res!826020) b!1837646))

(assert (= (and b!1837646 res!826015) b!1837643))

(assert (= (and b!1837643 res!826019) b!1837648))

(declare-fun m!2265537 () Bool)

(assert (=> b!1837645 m!2265537))

(declare-fun m!2265539 () Bool)

(assert (=> b!1837645 m!2265539))

(assert (=> b!1837644 m!2265537))

(assert (=> b!1837644 m!2265539))

(declare-fun m!2265541 () Bool)

(assert (=> b!1837646 m!2265541))

(declare-fun m!2265543 () Bool)

(assert (=> b!1837648 m!2265543))

(declare-fun m!2265545 () Bool)

(assert (=> b!1837643 m!2265545))

(declare-fun m!2265547 () Bool)

(assert (=> b!1837647 m!2265547))

(assert (=> start!182730 d!562011))

(declare-fun d!562015 () Bool)

(assert (=> d!562015 (= (inv!26289 thiss!5824) (isBalanced!2076 (c!299845 thiss!5824)))))

(declare-fun bs!408473 () Bool)

(assert (= bs!408473 d!562015))

(assert (=> bs!408473 m!2265511))

(assert (=> start!182730 d!562015))

(declare-fun b!1837668 () Bool)

(declare-fun tp!519847 () Bool)

(declare-fun tp!519846 () Bool)

(declare-fun e!1174252 () Bool)

(assert (=> b!1837668 (= e!1174252 (and (inv!26290 (left!16137 (c!299845 thiss!5824))) tp!519847 (inv!26290 (right!16467 (c!299845 thiss!5824))) tp!519846))))

(declare-fun b!1837670 () Bool)

(declare-fun e!1174251 () Bool)

(declare-fun tp!519848 () Bool)

(assert (=> b!1837670 (= e!1174251 tp!519848)))

(declare-fun b!1837669 () Bool)

(declare-fun inv!26296 (IArray!13375) Bool)

(assert (=> b!1837669 (= e!1174252 (and (inv!26296 (xs!9561 (c!299845 thiss!5824))) e!1174251))))

(assert (=> b!1837594 (= tp!519830 (and (inv!26290 (c!299845 thiss!5824)) e!1174252))))

(assert (= (and b!1837594 ((_ is Node!6685) (c!299845 thiss!5824))) b!1837668))

(assert (= b!1837669 b!1837670))

(assert (= (and b!1837594 ((_ is Leaf!9732) (c!299845 thiss!5824))) b!1837669))

(declare-fun m!2265555 () Bool)

(assert (=> b!1837668 m!2265555))

(declare-fun m!2265557 () Bool)

(assert (=> b!1837668 m!2265557))

(declare-fun m!2265559 () Bool)

(assert (=> b!1837669 m!2265559))

(assert (=> b!1837594 m!2265515))

(check-sat (not b!1837646) (not b!1837612) (not b!1837643) (not b!1837610) (not b!1837645) (not b!1837648) (not b!1837594) (not b!1837668) (not b!1837669) (not d!562015) (not b!1837644) (not b!1837670) (not b!1837647))
(check-sat)
