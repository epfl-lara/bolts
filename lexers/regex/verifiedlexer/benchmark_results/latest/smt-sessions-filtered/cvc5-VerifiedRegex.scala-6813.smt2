; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!358506 () Bool)

(assert start!358506)

(declare-fun b!3831429 () Bool)

(declare-fun e!2366050 () Bool)

(declare-fun e!2366049 () Bool)

(assert (=> b!3831429 (= e!2366050 e!2366049)))

(declare-fun res!1551091 () Bool)

(assert (=> b!3831429 (=> res!1551091 e!2366049)))

(declare-fun lt!1330299 () Int)

(declare-fun lt!1330300 () Int)

(assert (=> b!3831429 (= res!1551091 (or (> lt!1330299 (+ 1 lt!1330300)) (< lt!1330299 lt!1330300)))))

(declare-datatypes ((T!69790 0))(
  ( (T!69791 (val!13305 Int)) )
))
(declare-datatypes ((List!40558 0))(
  ( (Nil!40434) (Cons!40434 (h!45854 T!69790) (t!309135 List!40558)) )
))
(declare-datatypes ((IArray!24865 0))(
  ( (IArray!24866 (innerList!12490 List!40558)) )
))
(declare-datatypes ((Conc!12430 0))(
  ( (Node!12430 (left!31291 Conc!12430) (right!31621 Conc!12430) (csize!25090 Int) (cheight!12641 Int)) (Leaf!19244 (xs!15732 IArray!24865) (csize!25091 Int)) (Empty!12430) )
))
(declare-fun lt!1330298 () Conc!12430)

(declare-fun height!1823 (Conc!12430) Int)

(assert (=> b!3831429 (= lt!1330299 (height!1823 lt!1330298))))

(declare-datatypes ((BalanceConc!24454 0))(
  ( (BalanceConc!24455 (c!668104 Conc!12430)) )
))
(declare-fun thiss!5815 () BalanceConc!24454)

(declare-fun ys!29 () BalanceConc!24454)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3831429 (= lt!1330300 (max!0 (height!1823 (c!668104 thiss!5815)) (height!1823 (c!668104 ys!29))))))

(declare-fun b!3831430 () Bool)

(declare-fun e!2366051 () Bool)

(declare-fun tp!1159291 () Bool)

(declare-fun inv!54538 (Conc!12430) Bool)

(assert (=> b!3831430 (= e!2366051 (and (inv!54538 (c!668104 thiss!5815)) tp!1159291))))

(declare-fun b!3831431 () Bool)

(declare-fun list!15067 (BalanceConc!24454) List!40558)

(declare-fun ++!10197 (List!40558 List!40558) List!40558)

(assert (=> b!3831431 (= e!2366049 (not (= (list!15067 (BalanceConc!24455 lt!1330298)) (++!10197 (list!15067 thiss!5815) (list!15067 ys!29)))))))

(declare-fun res!1551089 () Bool)

(declare-fun e!2366053 () Bool)

(assert (=> start!358506 (=> (not res!1551089) (not e!2366053))))

(declare-fun isBalanced!3609 (Conc!12430) Bool)

(assert (=> start!358506 (= res!1551089 (isBalanced!3609 (c!668104 thiss!5815)))))

(assert (=> start!358506 e!2366053))

(declare-fun inv!54539 (BalanceConc!24454) Bool)

(assert (=> start!358506 (and (inv!54539 thiss!5815) e!2366051)))

(declare-fun e!2366052 () Bool)

(assert (=> start!358506 (and (inv!54539 ys!29) e!2366052)))

(declare-fun b!3831432 () Bool)

(declare-fun tp!1159292 () Bool)

(assert (=> b!3831432 (= e!2366052 (and (inv!54538 (c!668104 ys!29)) tp!1159292))))

(declare-fun b!3831433 () Bool)

(declare-fun res!1551093 () Bool)

(assert (=> b!3831433 (=> (not res!1551093) (not e!2366053))))

(assert (=> b!3831433 (= res!1551093 (isBalanced!3609 (c!668104 ys!29)))))

(declare-fun b!3831434 () Bool)

(declare-fun res!1551090 () Bool)

(assert (=> b!3831434 (=> res!1551090 e!2366050)))

(assert (=> b!3831434 (= res!1551090 (not (isBalanced!3609 lt!1330298)))))

(declare-fun b!3831435 () Bool)

(assert (=> b!3831435 (= e!2366053 e!2366050)))

(declare-fun res!1551092 () Bool)

(assert (=> b!3831435 (=> res!1551092 e!2366050)))

(declare-fun appendAssocInst!878 (Conc!12430 Conc!12430) Bool)

(assert (=> b!3831435 (= res!1551092 (not (appendAssocInst!878 (c!668104 thiss!5815) (c!668104 ys!29))))))

(declare-fun ++!10198 (Conc!12430 Conc!12430) Conc!12430)

(assert (=> b!3831435 (= lt!1330298 (++!10198 (c!668104 thiss!5815) (c!668104 ys!29)))))

(assert (= (and start!358506 res!1551089) b!3831433))

(assert (= (and b!3831433 res!1551093) b!3831435))

(assert (= (and b!3831435 (not res!1551092)) b!3831434))

(assert (= (and b!3831434 (not res!1551090)) b!3831429))

(assert (= (and b!3831429 (not res!1551091)) b!3831431))

(assert (= start!358506 b!3831430))

(assert (= start!358506 b!3831432))

(declare-fun m!4386085 () Bool)

(assert (=> b!3831429 m!4386085))

(declare-fun m!4386087 () Bool)

(assert (=> b!3831429 m!4386087))

(declare-fun m!4386089 () Bool)

(assert (=> b!3831429 m!4386089))

(assert (=> b!3831429 m!4386087))

(assert (=> b!3831429 m!4386089))

(declare-fun m!4386091 () Bool)

(assert (=> b!3831429 m!4386091))

(declare-fun m!4386093 () Bool)

(assert (=> b!3831430 m!4386093))

(declare-fun m!4386095 () Bool)

(assert (=> b!3831431 m!4386095))

(declare-fun m!4386097 () Bool)

(assert (=> b!3831431 m!4386097))

(declare-fun m!4386099 () Bool)

(assert (=> b!3831431 m!4386099))

(assert (=> b!3831431 m!4386097))

(assert (=> b!3831431 m!4386099))

(declare-fun m!4386101 () Bool)

(assert (=> b!3831431 m!4386101))

(declare-fun m!4386103 () Bool)

(assert (=> b!3831433 m!4386103))

(declare-fun m!4386105 () Bool)

(assert (=> start!358506 m!4386105))

(declare-fun m!4386107 () Bool)

(assert (=> start!358506 m!4386107))

(declare-fun m!4386109 () Bool)

(assert (=> start!358506 m!4386109))

(declare-fun m!4386111 () Bool)

(assert (=> b!3831432 m!4386111))

(declare-fun m!4386113 () Bool)

(assert (=> b!3831435 m!4386113))

(declare-fun m!4386115 () Bool)

(assert (=> b!3831435 m!4386115))

(declare-fun m!4386117 () Bool)

(assert (=> b!3831434 m!4386117))

(push 1)

(assert (not b!3831431))

(assert (not start!358506))

(assert (not b!3831435))

(assert (not b!3831432))

(assert (not b!3831434))

(assert (not b!3831430))

(assert (not b!3831429))

(assert (not b!3831433))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1137462 () Bool)

(declare-fun c!668111 () Bool)

(assert (=> d!1137462 (= c!668111 (is-Node!12430 (c!668104 ys!29)))))

(declare-fun e!2366079 () Bool)

(assert (=> d!1137462 (= (inv!54538 (c!668104 ys!29)) e!2366079)))

(declare-fun b!3831475 () Bool)

(declare-fun inv!54542 (Conc!12430) Bool)

(assert (=> b!3831475 (= e!2366079 (inv!54542 (c!668104 ys!29)))))

(declare-fun b!3831476 () Bool)

(declare-fun e!2366080 () Bool)

(assert (=> b!3831476 (= e!2366079 e!2366080)))

(declare-fun res!1551117 () Bool)

(assert (=> b!3831476 (= res!1551117 (not (is-Leaf!19244 (c!668104 ys!29))))))

(assert (=> b!3831476 (=> res!1551117 e!2366080)))

(declare-fun b!3831477 () Bool)

(declare-fun inv!54543 (Conc!12430) Bool)

(assert (=> b!3831477 (= e!2366080 (inv!54543 (c!668104 ys!29)))))

(assert (= (and d!1137462 c!668111) b!3831475))

(assert (= (and d!1137462 (not c!668111)) b!3831476))

(assert (= (and b!3831476 (not res!1551117)) b!3831477))

(declare-fun m!4386173 () Bool)

(assert (=> b!3831475 m!4386173))

(declare-fun m!4386175 () Bool)

(assert (=> b!3831477 m!4386175))

(assert (=> b!3831432 d!1137462))

(declare-fun b!3831514 () Bool)

(declare-fun res!1551154 () Bool)

(declare-fun e!2366093 () Bool)

(assert (=> b!3831514 (=> (not res!1551154) (not e!2366093))))

(assert (=> b!3831514 (= res!1551154 (isBalanced!3609 (left!31291 (c!668104 thiss!5815))))))

(declare-fun b!3831515 () Bool)

(declare-fun e!2366094 () Bool)

(assert (=> b!3831515 (= e!2366094 e!2366093)))

(declare-fun res!1551158 () Bool)

(assert (=> b!3831515 (=> (not res!1551158) (not e!2366093))))

(assert (=> b!3831515 (= res!1551158 (<= (- 1) (- (height!1823 (left!31291 (c!668104 thiss!5815))) (height!1823 (right!31621 (c!668104 thiss!5815))))))))

(declare-fun d!1137470 () Bool)

(declare-fun res!1551155 () Bool)

(assert (=> d!1137470 (=> res!1551155 e!2366094)))

(assert (=> d!1137470 (= res!1551155 (not (is-Node!12430 (c!668104 thiss!5815))))))

(assert (=> d!1137470 (= (isBalanced!3609 (c!668104 thiss!5815)) e!2366094)))

(declare-fun b!3831516 () Bool)

(declare-fun res!1551159 () Bool)

(assert (=> b!3831516 (=> (not res!1551159) (not e!2366093))))

(assert (=> b!3831516 (= res!1551159 (<= (- (height!1823 (left!31291 (c!668104 thiss!5815))) (height!1823 (right!31621 (c!668104 thiss!5815)))) 1))))

(declare-fun b!3831517 () Bool)

(declare-fun isEmpty!23869 (Conc!12430) Bool)

(assert (=> b!3831517 (= e!2366093 (not (isEmpty!23869 (right!31621 (c!668104 thiss!5815)))))))

(declare-fun b!3831518 () Bool)

(declare-fun res!1551156 () Bool)

(assert (=> b!3831518 (=> (not res!1551156) (not e!2366093))))

(assert (=> b!3831518 (= res!1551156 (not (isEmpty!23869 (left!31291 (c!668104 thiss!5815)))))))

(declare-fun b!3831519 () Bool)

(declare-fun res!1551157 () Bool)

(assert (=> b!3831519 (=> (not res!1551157) (not e!2366093))))

(assert (=> b!3831519 (= res!1551157 (isBalanced!3609 (right!31621 (c!668104 thiss!5815))))))

(assert (= (and d!1137470 (not res!1551155)) b!3831515))

(assert (= (and b!3831515 res!1551158) b!3831516))

(assert (= (and b!3831516 res!1551159) b!3831514))

(assert (= (and b!3831514 res!1551154) b!3831519))

(assert (= (and b!3831519 res!1551157) b!3831518))

(assert (= (and b!3831518 res!1551156) b!3831517))

(declare-fun m!4386201 () Bool)

(assert (=> b!3831517 m!4386201))

(declare-fun m!4386203 () Bool)

(assert (=> b!3831518 m!4386203))

(declare-fun m!4386205 () Bool)

(assert (=> b!3831515 m!4386205))

(declare-fun m!4386207 () Bool)

(assert (=> b!3831515 m!4386207))

(assert (=> b!3831516 m!4386205))

(assert (=> b!3831516 m!4386207))

(declare-fun m!4386209 () Bool)

(assert (=> b!3831519 m!4386209))

(declare-fun m!4386211 () Bool)

(assert (=> b!3831514 m!4386211))

(assert (=> start!358506 d!1137470))

(declare-fun d!1137478 () Bool)

(assert (=> d!1137478 (= (inv!54539 thiss!5815) (isBalanced!3609 (c!668104 thiss!5815)))))

(declare-fun bs!582288 () Bool)

(assert (= bs!582288 d!1137478))

(assert (=> bs!582288 m!4386105))

(assert (=> start!358506 d!1137478))

(declare-fun d!1137484 () Bool)

(assert (=> d!1137484 (= (inv!54539 ys!29) (isBalanced!3609 (c!668104 ys!29)))))

(declare-fun bs!582289 () Bool)

(assert (= bs!582289 d!1137484))

(assert (=> bs!582289 m!4386103))

(assert (=> start!358506 d!1137484))

(declare-fun b!3831526 () Bool)

(declare-fun res!1551166 () Bool)

(declare-fun e!2366097 () Bool)

(assert (=> b!3831526 (=> (not res!1551166) (not e!2366097))))

(assert (=> b!3831526 (= res!1551166 (isBalanced!3609 (left!31291 (c!668104 ys!29))))))

(declare-fun b!3831527 () Bool)

(declare-fun e!2366098 () Bool)

(assert (=> b!3831527 (= e!2366098 e!2366097)))

(declare-fun res!1551170 () Bool)

(assert (=> b!3831527 (=> (not res!1551170) (not e!2366097))))

(assert (=> b!3831527 (= res!1551170 (<= (- 1) (- (height!1823 (left!31291 (c!668104 ys!29))) (height!1823 (right!31621 (c!668104 ys!29))))))))

(declare-fun d!1137486 () Bool)

(declare-fun res!1551167 () Bool)

(assert (=> d!1137486 (=> res!1551167 e!2366098)))

(assert (=> d!1137486 (= res!1551167 (not (is-Node!12430 (c!668104 ys!29))))))

(assert (=> d!1137486 (= (isBalanced!3609 (c!668104 ys!29)) e!2366098)))

(declare-fun b!3831528 () Bool)

(declare-fun res!1551171 () Bool)

(assert (=> b!3831528 (=> (not res!1551171) (not e!2366097))))

(assert (=> b!3831528 (= res!1551171 (<= (- (height!1823 (left!31291 (c!668104 ys!29))) (height!1823 (right!31621 (c!668104 ys!29)))) 1))))

(declare-fun b!3831529 () Bool)

(assert (=> b!3831529 (= e!2366097 (not (isEmpty!23869 (right!31621 (c!668104 ys!29)))))))

(declare-fun b!3831530 () Bool)

(declare-fun res!1551168 () Bool)

(assert (=> b!3831530 (=> (not res!1551168) (not e!2366097))))

(assert (=> b!3831530 (= res!1551168 (not (isEmpty!23869 (left!31291 (c!668104 ys!29)))))))

(declare-fun b!3831531 () Bool)

(declare-fun res!1551169 () Bool)

(assert (=> b!3831531 (=> (not res!1551169) (not e!2366097))))

(assert (=> b!3831531 (= res!1551169 (isBalanced!3609 (right!31621 (c!668104 ys!29))))))

(assert (= (and d!1137486 (not res!1551167)) b!3831527))

(assert (= (and b!3831527 res!1551170) b!3831528))

(assert (= (and b!3831528 res!1551171) b!3831526))

(assert (= (and b!3831526 res!1551166) b!3831531))

(assert (= (and b!3831531 res!1551169) b!3831530))

(assert (= (and b!3831530 res!1551168) b!3831529))

(declare-fun m!4386225 () Bool)

(assert (=> b!3831529 m!4386225))

(declare-fun m!4386227 () Bool)

(assert (=> b!3831530 m!4386227))

(declare-fun m!4386229 () Bool)

(assert (=> b!3831527 m!4386229))

(declare-fun m!4386231 () Bool)

(assert (=> b!3831527 m!4386231))

(assert (=> b!3831528 m!4386229))

(assert (=> b!3831528 m!4386231))

(declare-fun m!4386233 () Bool)

(assert (=> b!3831531 m!4386233))

(declare-fun m!4386235 () Bool)

(assert (=> b!3831526 m!4386235))

(assert (=> b!3831433 d!1137486))

(declare-fun d!1137488 () Bool)

(assert (=> d!1137488 (= (height!1823 lt!1330298) (ite (is-Empty!12430 lt!1330298) 0 (ite (is-Leaf!19244 lt!1330298) 1 (cheight!12641 lt!1330298))))))

(assert (=> b!3831429 d!1137488))

(declare-fun d!1137490 () Bool)

(assert (=> d!1137490 (= (max!0 (height!1823 (c!668104 thiss!5815)) (height!1823 (c!668104 ys!29))) (ite (< (height!1823 (c!668104 thiss!5815)) (height!1823 (c!668104 ys!29))) (height!1823 (c!668104 ys!29)) (height!1823 (c!668104 thiss!5815))))))

(assert (=> b!3831429 d!1137490))

(declare-fun d!1137494 () Bool)

(assert (=> d!1137494 (= (height!1823 (c!668104 thiss!5815)) (ite (is-Empty!12430 (c!668104 thiss!5815)) 0 (ite (is-Leaf!19244 (c!668104 thiss!5815)) 1 (cheight!12641 (c!668104 thiss!5815)))))))

(assert (=> b!3831429 d!1137494))

(declare-fun d!1137496 () Bool)

(assert (=> d!1137496 (= (height!1823 (c!668104 ys!29)) (ite (is-Empty!12430 (c!668104 ys!29)) 0 (ite (is-Leaf!19244 (c!668104 ys!29)) 1 (cheight!12641 (c!668104 ys!29)))))))

(assert (=> b!3831429 d!1137496))

(declare-fun b!3831541 () Bool)

(declare-fun res!1551175 () Bool)

(declare-fun e!2366105 () Bool)

(assert (=> b!3831541 (=> (not res!1551175) (not e!2366105))))

(assert (=> b!3831541 (= res!1551175 (isBalanced!3609 (left!31291 lt!1330298)))))

(declare-fun b!3831542 () Bool)

(declare-fun e!2366106 () Bool)

(assert (=> b!3831542 (= e!2366106 e!2366105)))

(declare-fun res!1551179 () Bool)

(assert (=> b!3831542 (=> (not res!1551179) (not e!2366105))))

(assert (=> b!3831542 (= res!1551179 (<= (- 1) (- (height!1823 (left!31291 lt!1330298)) (height!1823 (right!31621 lt!1330298)))))))

(declare-fun d!1137498 () Bool)

(declare-fun res!1551176 () Bool)

(assert (=> d!1137498 (=> res!1551176 e!2366106)))

(assert (=> d!1137498 (= res!1551176 (not (is-Node!12430 lt!1330298)))))

(assert (=> d!1137498 (= (isBalanced!3609 lt!1330298) e!2366106)))

(declare-fun b!3831543 () Bool)

(declare-fun res!1551180 () Bool)

(assert (=> b!3831543 (=> (not res!1551180) (not e!2366105))))

(assert (=> b!3831543 (= res!1551180 (<= (- (height!1823 (left!31291 lt!1330298)) (height!1823 (right!31621 lt!1330298))) 1))))

(declare-fun b!3831544 () Bool)

(assert (=> b!3831544 (= e!2366105 (not (isEmpty!23869 (right!31621 lt!1330298))))))

(declare-fun b!3831545 () Bool)

(declare-fun res!1551177 () Bool)

(assert (=> b!3831545 (=> (not res!1551177) (not e!2366105))))

(assert (=> b!3831545 (= res!1551177 (not (isEmpty!23869 (left!31291 lt!1330298))))))

(declare-fun b!3831546 () Bool)

(declare-fun res!1551178 () Bool)

(assert (=> b!3831546 (=> (not res!1551178) (not e!2366105))))

(assert (=> b!3831546 (= res!1551178 (isBalanced!3609 (right!31621 lt!1330298)))))

(assert (= (and d!1137498 (not res!1551176)) b!3831542))

(assert (= (and b!3831542 res!1551179) b!3831543))

(assert (= (and b!3831543 res!1551180) b!3831541))

(assert (= (and b!3831541 res!1551175) b!3831546))

(assert (= (and b!3831546 res!1551178) b!3831545))

(assert (= (and b!3831545 res!1551177) b!3831544))

(declare-fun m!4386241 () Bool)

(assert (=> b!3831544 m!4386241))

(declare-fun m!4386243 () Bool)

(assert (=> b!3831545 m!4386243))

(declare-fun m!4386245 () Bool)

(assert (=> b!3831542 m!4386245))

(declare-fun m!4386247 () Bool)

(assert (=> b!3831542 m!4386247))

(assert (=> b!3831543 m!4386245))

(assert (=> b!3831543 m!4386247))

(declare-fun m!4386249 () Bool)

(assert (=> b!3831546 m!4386249))

(declare-fun m!4386251 () Bool)

(assert (=> b!3831541 m!4386251))

(assert (=> b!3831434 d!1137498))

(declare-fun b!3831592 () Bool)

(declare-fun e!2366152 () Bool)

(declare-fun e!2366158 () Bool)

(assert (=> b!3831592 (= e!2366152 e!2366158)))

(declare-fun res!1551227 () Bool)

(assert (=> b!3831592 (=> (not res!1551227) (not e!2366158))))

(declare-fun appendAssoc!287 (List!40558 List!40558 List!40558) Bool)

(declare-fun list!15070 (Conc!12430) List!40558)

(assert (=> b!3831592 (= res!1551227 (appendAssoc!287 (list!15070 (c!668104 thiss!5815)) (list!15070 (left!31291 (left!31291 (c!668104 ys!29)))) (list!15070 (right!31621 (left!31291 (c!668104 ys!29))))))))

(declare-fun d!1137500 () Bool)

(declare-fun e!2366160 () Bool)

(assert (=> d!1137500 e!2366160))

(declare-fun res!1551229 () Bool)

(assert (=> d!1137500 (=> (not res!1551229) (not e!2366160))))

(declare-fun e!2366156 () Bool)

(assert (=> d!1137500 (= res!1551229 e!2366156)))

(declare-fun res!1551228 () Bool)

(assert (=> d!1137500 (=> res!1551228 e!2366156)))

(assert (=> d!1137500 (= res!1551228 (not (is-Node!12430 (c!668104 thiss!5815))))))

(assert (=> d!1137500 (= (appendAssocInst!878 (c!668104 thiss!5815) (c!668104 ys!29)) true)))

(declare-fun b!3831593 () Bool)

(declare-fun e!2366155 () Bool)

(declare-fun e!2366154 () Bool)

(assert (=> b!3831593 (= e!2366155 e!2366154)))

(declare-fun res!1551232 () Bool)

(assert (=> b!3831593 (=> res!1551232 e!2366154)))

(assert (=> b!3831593 (= res!1551232 (not (is-Node!12430 (right!31621 (c!668104 thiss!5815)))))))

(declare-fun b!3831594 () Bool)

(declare-fun e!2366159 () Bool)

(assert (=> b!3831594 (= e!2366160 e!2366159)))

(declare-fun res!1551233 () Bool)

(assert (=> b!3831594 (=> res!1551233 e!2366159)))

(assert (=> b!3831594 (= res!1551233 (not (is-Node!12430 (c!668104 ys!29))))))

(declare-fun b!3831595 () Bool)

(declare-fun e!2366153 () Bool)

(assert (=> b!3831595 (= e!2366154 e!2366153)))

(declare-fun res!1551234 () Bool)

(assert (=> b!3831595 (=> (not res!1551234) (not e!2366153))))

(assert (=> b!3831595 (= res!1551234 (appendAssoc!287 (list!15070 (left!31291 (right!31621 (c!668104 thiss!5815)))) (list!15070 (right!31621 (right!31621 (c!668104 thiss!5815)))) (list!15070 (c!668104 ys!29))))))

(declare-fun b!3831596 () Bool)

(declare-fun e!2366157 () Bool)

(assert (=> b!3831596 (= e!2366157 e!2366152)))

(declare-fun res!1551230 () Bool)

(assert (=> b!3831596 (=> res!1551230 e!2366152)))

(assert (=> b!3831596 (= res!1551230 (not (is-Node!12430 (left!31291 (c!668104 ys!29)))))))

(declare-fun b!3831597 () Bool)

(assert (=> b!3831597 (= e!2366153 (appendAssoc!287 (list!15070 (left!31291 (c!668104 thiss!5815))) (list!15070 (left!31291 (right!31621 (c!668104 thiss!5815)))) (++!10197 (list!15070 (right!31621 (right!31621 (c!668104 thiss!5815)))) (list!15070 (c!668104 ys!29)))))))

(declare-fun b!3831598 () Bool)

(assert (=> b!3831598 (= e!2366156 e!2366155)))

(declare-fun res!1551231 () Bool)

(assert (=> b!3831598 (=> (not res!1551231) (not e!2366155))))

(assert (=> b!3831598 (= res!1551231 (appendAssoc!287 (list!15070 (left!31291 (c!668104 thiss!5815))) (list!15070 (right!31621 (c!668104 thiss!5815))) (list!15070 (c!668104 ys!29))))))

(declare-fun b!3831599 () Bool)

(assert (=> b!3831599 (= e!2366159 e!2366157)))

(declare-fun res!1551226 () Bool)

(assert (=> b!3831599 (=> (not res!1551226) (not e!2366157))))

(assert (=> b!3831599 (= res!1551226 (appendAssoc!287 (list!15070 (c!668104 thiss!5815)) (list!15070 (left!31291 (c!668104 ys!29))) (list!15070 (right!31621 (c!668104 ys!29)))))))

(declare-fun b!3831600 () Bool)

(assert (=> b!3831600 (= e!2366158 (appendAssoc!287 (++!10197 (list!15070 (c!668104 thiss!5815)) (list!15070 (left!31291 (left!31291 (c!668104 ys!29))))) (list!15070 (right!31621 (left!31291 (c!668104 ys!29)))) (list!15070 (right!31621 (c!668104 ys!29)))))))

(assert (= (and d!1137500 (not res!1551228)) b!3831598))

(assert (= (and b!3831598 res!1551231) b!3831593))

(assert (= (and b!3831593 (not res!1551232)) b!3831595))

(assert (= (and b!3831595 res!1551234) b!3831597))

(assert (= (and d!1137500 res!1551229) b!3831594))

(assert (= (and b!3831594 (not res!1551233)) b!3831599))

(assert (= (and b!3831599 res!1551226) b!3831596))

(assert (= (and b!3831596 (not res!1551230)) b!3831592))

(assert (= (and b!3831592 res!1551227) b!3831600))

(declare-fun m!4386285 () Bool)

(assert (=> b!3831598 m!4386285))

(declare-fun m!4386287 () Bool)

(assert (=> b!3831598 m!4386287))

(declare-fun m!4386289 () Bool)

(assert (=> b!3831598 m!4386289))

(assert (=> b!3831598 m!4386285))

(assert (=> b!3831598 m!4386287))

(assert (=> b!3831598 m!4386289))

(declare-fun m!4386291 () Bool)

(assert (=> b!3831598 m!4386291))

(declare-fun m!4386293 () Bool)

(assert (=> b!3831599 m!4386293))

(declare-fun m!4386295 () Bool)

(assert (=> b!3831599 m!4386295))

(declare-fun m!4386297 () Bool)

(assert (=> b!3831599 m!4386297))

(assert (=> b!3831599 m!4386293))

(assert (=> b!3831599 m!4386295))

(assert (=> b!3831599 m!4386297))

(declare-fun m!4386299 () Bool)

(assert (=> b!3831599 m!4386299))

(assert (=> b!3831597 m!4386285))

(declare-fun m!4386301 () Bool)

(assert (=> b!3831597 m!4386301))

(assert (=> b!3831597 m!4386289))

(declare-fun m!4386303 () Bool)

(assert (=> b!3831597 m!4386303))

(assert (=> b!3831597 m!4386301))

(assert (=> b!3831597 m!4386289))

(assert (=> b!3831597 m!4386285))

(declare-fun m!4386305 () Bool)

(assert (=> b!3831597 m!4386305))

(assert (=> b!3831597 m!4386303))

(declare-fun m!4386307 () Bool)

(assert (=> b!3831597 m!4386307))

(assert (=> b!3831597 m!4386305))

(assert (=> b!3831592 m!4386293))

(declare-fun m!4386309 () Bool)

(assert (=> b!3831592 m!4386309))

(declare-fun m!4386311 () Bool)

(assert (=> b!3831592 m!4386311))

(assert (=> b!3831592 m!4386293))

(assert (=> b!3831592 m!4386309))

(assert (=> b!3831592 m!4386311))

(declare-fun m!4386313 () Bool)

(assert (=> b!3831592 m!4386313))

(assert (=> b!3831595 m!4386305))

(assert (=> b!3831595 m!4386301))

(assert (=> b!3831595 m!4386289))

(assert (=> b!3831595 m!4386305))

(assert (=> b!3831595 m!4386301))

(assert (=> b!3831595 m!4386289))

(declare-fun m!4386315 () Bool)

(assert (=> b!3831595 m!4386315))

(assert (=> b!3831600 m!4386293))

(assert (=> b!3831600 m!4386309))

(declare-fun m!4386317 () Bool)

(assert (=> b!3831600 m!4386317))

(assert (=> b!3831600 m!4386311))

(assert (=> b!3831600 m!4386317))

(assert (=> b!3831600 m!4386311))

(assert (=> b!3831600 m!4386297))

(declare-fun m!4386319 () Bool)

(assert (=> b!3831600 m!4386319))

(assert (=> b!3831600 m!4386293))

(assert (=> b!3831600 m!4386297))

(assert (=> b!3831600 m!4386309))

(assert (=> b!3831435 d!1137500))

(declare-fun b!3831706 () Bool)

(declare-fun e!2366212 () Conc!12430)

(assert (=> b!3831706 (= e!2366212 (c!668104 ys!29))))

(declare-fun b!3831707 () Bool)

(declare-fun res!1551263 () Bool)

(declare-fun e!2366213 () Bool)

(assert (=> b!3831707 (=> (not res!1551263) (not e!2366213))))

(declare-fun lt!1330336 () Conc!12430)

(assert (=> b!3831707 (= res!1551263 (<= (height!1823 lt!1330336) (+ (max!0 (height!1823 (c!668104 thiss!5815)) (height!1823 (c!668104 ys!29))) 1)))))

(declare-fun b!3831708 () Bool)

(declare-fun e!2366211 () Conc!12430)

(declare-fun e!2366215 () Conc!12430)

(assert (=> b!3831708 (= e!2366211 e!2366215)))

(declare-fun c!668159 () Bool)

(declare-fun lt!1330334 () Int)

(assert (=> b!3831708 (= c!668159 (< lt!1330334 (- 1)))))

(declare-fun b!3831710 () Bool)

(declare-fun c!668155 () Bool)

(declare-fun call!281673 () Int)

(declare-fun call!281671 () Int)

(assert (=> b!3831710 (= c!668155 (>= call!281673 call!281671))))

(declare-fun e!2366218 () Conc!12430)

(assert (=> b!3831710 (= e!2366215 e!2366218)))

(declare-fun b!3831711 () Bool)

(declare-fun e!2366216 () Conc!12430)

(declare-fun call!281667 () Conc!12430)

(assert (=> b!3831711 (= e!2366216 call!281667)))

(declare-fun bm!281656 () Bool)

(declare-fun lt!1330333 () Conc!12430)

(assert (=> bm!281656 (= call!281671 (height!1823 (ite c!668159 lt!1330333 (left!31291 (c!668104 ys!29)))))))

(declare-fun call!281663 () Conc!12430)

(declare-fun bm!281657 () Bool)

(declare-fun c!668156 () Bool)

(assert (=> bm!281657 (= call!281663 (++!10198 (ite c!668159 (ite c!668156 (right!31621 (c!668104 thiss!5815)) (right!31621 (right!31621 (c!668104 thiss!5815)))) (c!668104 thiss!5815)) (ite c!668159 (c!668104 ys!29) (ite c!668155 (left!31291 (c!668104 ys!29)) (left!31291 (left!31291 (c!668104 ys!29)))))))))

(declare-fun b!3831712 () Bool)

(declare-fun e!2366219 () Conc!12430)

(declare-fun call!281664 () Conc!12430)

(assert (=> b!3831712 (= e!2366219 call!281664)))

(declare-fun b!3831713 () Bool)

(declare-fun call!281662 () Conc!12430)

(assert (=> b!3831713 (= e!2366211 call!281662)))

(declare-fun b!3831714 () Bool)

(declare-fun c!668158 () Bool)

(assert (=> b!3831714 (= c!668158 (and (<= (- 1) lt!1330334) (<= lt!1330334 1)))))

(assert (=> b!3831714 (= lt!1330334 (- (height!1823 (c!668104 ys!29)) (height!1823 (c!668104 thiss!5815))))))

(declare-fun e!2366220 () Conc!12430)

(assert (=> b!3831714 (= e!2366220 e!2366211)))

(declare-fun bm!281658 () Bool)

(declare-fun call!281676 () Conc!12430)

(declare-fun call!281670 () Conc!12430)

(assert (=> bm!281658 (= call!281676 call!281670)))

(declare-fun bm!281659 () Bool)

(declare-fun call!281668 () Conc!12430)

(assert (=> bm!281659 (= call!281668 call!281663)))

(declare-fun b!3831715 () Bool)

(declare-fun e!2366217 () Bool)

(assert (=> b!3831715 (= e!2366217 (isBalanced!3609 (c!668104 ys!29)))))

(declare-fun d!1137504 () Bool)

(assert (=> d!1137504 e!2366213))

(declare-fun res!1551262 () Bool)

(assert (=> d!1137504 (=> (not res!1551262) (not e!2366213))))

(assert (=> d!1137504 (= res!1551262 (appendAssocInst!878 (c!668104 thiss!5815) (c!668104 ys!29)))))

(assert (=> d!1137504 (= lt!1330336 e!2366212)))

(declare-fun c!668162 () Bool)

(assert (=> d!1137504 (= c!668162 (= (c!668104 thiss!5815) Empty!12430))))

(assert (=> d!1137504 e!2366217))

(declare-fun res!1551261 () Bool)

(assert (=> d!1137504 (=> (not res!1551261) (not e!2366217))))

(assert (=> d!1137504 (= res!1551261 (isBalanced!3609 (c!668104 thiss!5815)))))

(assert (=> d!1137504 (= (++!10198 (c!668104 thiss!5815) (c!668104 ys!29)) lt!1330336)))

(declare-fun b!3831709 () Bool)

(assert (=> b!3831709 (= e!2366213 (= (list!15070 lt!1330336) (++!10197 (list!15070 (c!668104 thiss!5815)) (list!15070 (c!668104 ys!29)))))))

(declare-fun b!3831716 () Bool)

(declare-fun e!2366214 () Conc!12430)

(assert (=> b!3831716 (= e!2366219 e!2366214)))

(assert (=> b!3831716 (= lt!1330333 call!281668)))

(declare-fun c!668157 () Bool)

(declare-fun call!281672 () Int)

(assert (=> b!3831716 (= c!668157 (= call!281671 (- call!281672 3)))))

(declare-fun b!3831717 () Bool)

(declare-fun call!281666 () Conc!12430)

(assert (=> b!3831717 (= e!2366218 call!281666)))

(declare-fun bm!281660 () Bool)

(declare-fun call!281675 () Conc!12430)

(assert (=> bm!281660 (= call!281666 call!281675)))

(declare-fun b!3831718 () Bool)

(assert (=> b!3831718 (= e!2366214 call!281676)))

(declare-fun call!281669 () Int)

(declare-fun bm!281661 () Bool)

(assert (=> bm!281661 (= call!281669 (height!1823 (ite c!668159 (left!31291 (c!668104 thiss!5815)) (c!668104 ys!29))))))

(declare-fun c!668160 () Bool)

(declare-fun call!281665 () Conc!12430)

(declare-fun lt!1330335 () Conc!12430)

(declare-fun bm!281662 () Bool)

(declare-fun <>!364 (Conc!12430 Conc!12430) Conc!12430)

(assert (=> bm!281662 (= call!281662 (<>!364 (ite c!668158 (c!668104 thiss!5815) (ite c!668159 (ite c!668157 (left!31291 (c!668104 thiss!5815)) call!281665) (ite c!668160 lt!1330335 (right!31621 (left!31291 (c!668104 ys!29)))))) (ite c!668158 (c!668104 ys!29) (ite c!668159 (ite c!668157 call!281665 lt!1330333) (ite c!668160 (right!31621 (left!31291 (c!668104 ys!29))) (right!31621 (c!668104 ys!29)))))))))

(declare-fun b!3831719 () Bool)

(declare-fun res!1551264 () Bool)

(assert (=> b!3831719 (=> (not res!1551264) (not e!2366213))))

(assert (=> b!3831719 (= res!1551264 (isBalanced!3609 lt!1330336))))

(declare-fun bm!281663 () Bool)

(declare-fun call!281674 () Conc!12430)

(assert (=> bm!281663 (= call!281674 call!281670)))

(declare-fun bm!281664 () Bool)

(assert (=> bm!281664 (= call!281672 (height!1823 (ite c!668159 (c!668104 thiss!5815) lt!1330335)))))

(declare-fun b!3831720 () Bool)

(assert (=> b!3831720 (= e!2366214 call!281676)))

(declare-fun bm!281665 () Bool)

(assert (=> bm!281665 (= call!281670 call!281662)))

(declare-fun bm!281666 () Bool)

(assert (=> bm!281666 (= call!281673 (height!1823 (ite c!668159 (right!31621 (c!668104 thiss!5815)) (right!31621 (c!668104 ys!29)))))))

(declare-fun bm!281667 () Bool)

(declare-fun call!281661 () Conc!12430)

(assert (=> bm!281667 (= call!281661 call!281663)))

(declare-fun b!3831721 () Bool)

(assert (=> b!3831721 (= e!2366220 (c!668104 thiss!5815))))

(declare-fun bm!281668 () Bool)

(assert (=> bm!281668 (= call!281675 (<>!364 (ite c!668159 (ite c!668156 (left!31291 (c!668104 thiss!5815)) (ite c!668157 (left!31291 (right!31621 (c!668104 thiss!5815))) (left!31291 (c!668104 thiss!5815)))) (ite c!668155 call!281661 (ite c!668160 call!281674 lt!1330335))) (ite c!668159 (ite c!668156 call!281668 (ite c!668157 lt!1330333 (left!31291 (right!31621 (c!668104 thiss!5815))))) (ite (or c!668155 c!668160) (right!31621 (c!668104 ys!29)) call!281674))))))

(declare-fun b!3831722 () Bool)

(declare-fun res!1551260 () Bool)

(assert (=> b!3831722 (=> (not res!1551260) (not e!2366213))))

(assert (=> b!3831722 (= res!1551260 (>= (height!1823 lt!1330336) (max!0 (height!1823 (c!668104 thiss!5815)) (height!1823 (c!668104 ys!29)))))))

(declare-fun bm!281669 () Bool)

(assert (=> bm!281669 (= call!281664 call!281675)))

(declare-fun b!3831723 () Bool)

(assert (=> b!3831723 (= c!668156 (>= call!281669 call!281673))))

(assert (=> b!3831723 (= e!2366215 e!2366219)))

(declare-fun b!3831724 () Bool)

(assert (=> b!3831724 (= e!2366218 e!2366216)))

(assert (=> b!3831724 (= lt!1330335 call!281661)))

(assert (=> b!3831724 (= c!668160 (= call!281672 (- call!281669 3)))))

(declare-fun b!3831725 () Bool)

(assert (=> b!3831725 (= e!2366216 call!281667)))

(declare-fun bm!281670 () Bool)

(assert (=> bm!281670 (= call!281667 call!281666)))

(declare-fun bm!281671 () Bool)

(assert (=> bm!281671 (= call!281665 call!281664)))

(declare-fun b!3831726 () Bool)

(assert (=> b!3831726 (= e!2366212 e!2366220)))

(declare-fun c!668161 () Bool)

(assert (=> b!3831726 (= c!668161 (= (c!668104 ys!29) Empty!12430))))

(assert (= (and d!1137504 res!1551261) b!3831715))

(assert (= (and d!1137504 c!668162) b!3831706))

(assert (= (and d!1137504 (not c!668162)) b!3831726))

(assert (= (and b!3831726 c!668161) b!3831721))

(assert (= (and b!3831726 (not c!668161)) b!3831714))

(assert (= (and b!3831714 c!668158) b!3831713))

(assert (= (and b!3831714 (not c!668158)) b!3831708))

(assert (= (and b!3831708 c!668159) b!3831723))

(assert (= (and b!3831708 (not c!668159)) b!3831710))

(assert (= (and b!3831723 c!668156) b!3831712))

(assert (= (and b!3831723 (not c!668156)) b!3831716))

(assert (= (and b!3831716 c!668157) b!3831720))

(assert (= (and b!3831716 (not c!668157)) b!3831718))

(assert (= (or b!3831720 b!3831718) bm!281671))

(assert (= (or b!3831720 b!3831718) bm!281658))

(assert (= (or b!3831712 b!3831716) bm!281659))

(assert (= (or b!3831712 bm!281671) bm!281669))

(assert (= (and b!3831710 c!668155) b!3831717))

(assert (= (and b!3831710 (not c!668155)) b!3831724))

(assert (= (and b!3831724 c!668160) b!3831711))

(assert (= (and b!3831724 (not c!668160)) b!3831725))

(assert (= (or b!3831711 b!3831725) bm!281663))

(assert (= (or b!3831711 b!3831725) bm!281670))

(assert (= (or b!3831717 b!3831724) bm!281667))

(assert (= (or b!3831717 bm!281670) bm!281660))

(assert (= (or b!3831723 b!3831710) bm!281666))

(assert (= (or bm!281669 bm!281660) bm!281668))

(assert (= (or b!3831716 b!3831710) bm!281656))

(assert (= (or b!3831716 b!3831724) bm!281664))

(assert (= (or b!3831723 b!3831724) bm!281661))

(assert (= (or bm!281658 bm!281663) bm!281665))

(assert (= (or bm!281659 bm!281667) bm!281657))

(assert (= (or b!3831713 bm!281665) bm!281662))

(assert (= (and d!1137504 res!1551262) b!3831719))

(assert (= (and b!3831719 res!1551264) b!3831707))

(assert (= (and b!3831707 res!1551263) b!3831722))

(assert (= (and b!3831722 res!1551260) b!3831709))

(declare-fun m!4386347 () Bool)

(assert (=> bm!281661 m!4386347))

(assert (=> d!1137504 m!4386113))

(assert (=> d!1137504 m!4386105))

(assert (=> b!3831714 m!4386089))

(assert (=> b!3831714 m!4386087))

(declare-fun m!4386349 () Bool)

(assert (=> bm!281666 m!4386349))

(declare-fun m!4386351 () Bool)

(assert (=> b!3831722 m!4386351))

(assert (=> b!3831722 m!4386087))

(assert (=> b!3831722 m!4386089))

(assert (=> b!3831722 m!4386087))

(assert (=> b!3831722 m!4386089))

(assert (=> b!3831722 m!4386091))

(declare-fun m!4386353 () Bool)

(assert (=> bm!281656 m!4386353))

(declare-fun m!4386355 () Bool)

(assert (=> b!3831719 m!4386355))

(assert (=> b!3831707 m!4386351))

(assert (=> b!3831707 m!4386087))

(assert (=> b!3831707 m!4386089))

(assert (=> b!3831707 m!4386087))

(assert (=> b!3831707 m!4386089))

(assert (=> b!3831707 m!4386091))

(declare-fun m!4386357 () Bool)

(assert (=> bm!281657 m!4386357))

(declare-fun m!4386359 () Bool)

(assert (=> bm!281664 m!4386359))

(declare-fun m!4386361 () Bool)

(assert (=> bm!281662 m!4386361))

(declare-fun m!4386363 () Bool)

(assert (=> b!3831709 m!4386363))

(assert (=> b!3831709 m!4386293))

(assert (=> b!3831709 m!4386289))

(assert (=> b!3831709 m!4386293))

(assert (=> b!3831709 m!4386289))

(declare-fun m!4386365 () Bool)

(assert (=> b!3831709 m!4386365))

(assert (=> b!3831715 m!4386103))

(declare-fun m!4386367 () Bool)

(assert (=> bm!281668 m!4386367))

(assert (=> b!3831435 d!1137504))

(declare-fun d!1137516 () Bool)

(declare-fun c!668164 () Bool)

(assert (=> d!1137516 (= c!668164 (is-Node!12430 (c!668104 thiss!5815)))))

(declare-fun e!2366227 () Bool)

(assert (=> d!1137516 (= (inv!54538 (c!668104 thiss!5815)) e!2366227)))

(declare-fun b!3831738 () Bool)

(assert (=> b!3831738 (= e!2366227 (inv!54542 (c!668104 thiss!5815)))))

(declare-fun b!3831739 () Bool)

(declare-fun e!2366228 () Bool)

(assert (=> b!3831739 (= e!2366227 e!2366228)))

(declare-fun res!1551266 () Bool)

(assert (=> b!3831739 (= res!1551266 (not (is-Leaf!19244 (c!668104 thiss!5815))))))

(assert (=> b!3831739 (=> res!1551266 e!2366228)))

(declare-fun b!3831740 () Bool)

(assert (=> b!3831740 (= e!2366228 (inv!54543 (c!668104 thiss!5815)))))

(assert (= (and d!1137516 c!668164) b!3831738))

(assert (= (and d!1137516 (not c!668164)) b!3831739))

(assert (= (and b!3831739 (not res!1551266)) b!3831740))

(declare-fun m!4386369 () Bool)

(assert (=> b!3831738 m!4386369))

(declare-fun m!4386371 () Bool)

(assert (=> b!3831740 m!4386371))

(assert (=> b!3831430 d!1137516))

(declare-fun d!1137518 () Bool)

(assert (=> d!1137518 (= (list!15067 (BalanceConc!24455 lt!1330298)) (list!15070 (c!668104 (BalanceConc!24455 lt!1330298))))))

(declare-fun bs!582290 () Bool)

(assert (= bs!582290 d!1137518))

(declare-fun m!4386377 () Bool)

(assert (=> bs!582290 m!4386377))

(assert (=> b!3831431 d!1137518))

(declare-fun b!3831758 () Bool)

(declare-fun lt!1330339 () List!40558)

(declare-fun e!2366238 () Bool)

(assert (=> b!3831758 (= e!2366238 (or (not (= (list!15067 ys!29) Nil!40434)) (= lt!1330339 (list!15067 thiss!5815))))))

(declare-fun b!3831756 () Bool)

(declare-fun e!2366237 () List!40558)

(assert (=> b!3831756 (= e!2366237 (Cons!40434 (h!45854 (list!15067 thiss!5815)) (++!10197 (t!309135 (list!15067 thiss!5815)) (list!15067 ys!29))))))

(declare-fun b!3831755 () Bool)

(assert (=> b!3831755 (= e!2366237 (list!15067 ys!29))))

(declare-fun d!1137520 () Bool)

(assert (=> d!1137520 e!2366238))

(declare-fun res!1551272 () Bool)

(assert (=> d!1137520 (=> (not res!1551272) (not e!2366238))))

(declare-fun content!5998 (List!40558) (Set T!69790))

(assert (=> d!1137520 (= res!1551272 (= (content!5998 lt!1330339) (set.union (content!5998 (list!15067 thiss!5815)) (content!5998 (list!15067 ys!29)))))))

(assert (=> d!1137520 (= lt!1330339 e!2366237)))

(declare-fun c!668167 () Bool)

(assert (=> d!1137520 (= c!668167 (is-Nil!40434 (list!15067 thiss!5815)))))

(assert (=> d!1137520 (= (++!10197 (list!15067 thiss!5815) (list!15067 ys!29)) lt!1330339)))

(declare-fun b!3831757 () Bool)

(declare-fun res!1551271 () Bool)

(assert (=> b!3831757 (=> (not res!1551271) (not e!2366238))))

(declare-fun size!30480 (List!40558) Int)

(assert (=> b!3831757 (= res!1551271 (= (size!30480 lt!1330339) (+ (size!30480 (list!15067 thiss!5815)) (size!30480 (list!15067 ys!29)))))))

(assert (= (and d!1137520 c!668167) b!3831755))

(assert (= (and d!1137520 (not c!668167)) b!3831756))

(assert (= (and d!1137520 res!1551272) b!3831757))

(assert (= (and b!3831757 res!1551271) b!3831758))

(assert (=> b!3831756 m!4386099))

(declare-fun m!4386387 () Bool)

(assert (=> b!3831756 m!4386387))

(declare-fun m!4386389 () Bool)

(assert (=> d!1137520 m!4386389))

(assert (=> d!1137520 m!4386097))

(declare-fun m!4386391 () Bool)

(assert (=> d!1137520 m!4386391))

(assert (=> d!1137520 m!4386099))

(declare-fun m!4386393 () Bool)

(assert (=> d!1137520 m!4386393))

(declare-fun m!4386395 () Bool)

(assert (=> b!3831757 m!4386395))

(assert (=> b!3831757 m!4386097))

(declare-fun m!4386397 () Bool)

(assert (=> b!3831757 m!4386397))

(assert (=> b!3831757 m!4386099))

(declare-fun m!4386399 () Bool)

(assert (=> b!3831757 m!4386399))

(assert (=> b!3831431 d!1137520))

(declare-fun d!1137522 () Bool)

(assert (=> d!1137522 (= (list!15067 thiss!5815) (list!15070 (c!668104 thiss!5815)))))

(declare-fun bs!582291 () Bool)

(assert (= bs!582291 d!1137522))

(assert (=> bs!582291 m!4386293))

(assert (=> b!3831431 d!1137522))

(declare-fun d!1137524 () Bool)

(assert (=> d!1137524 (= (list!15067 ys!29) (list!15070 (c!668104 ys!29)))))

(declare-fun bs!582292 () Bool)

(assert (= bs!582292 d!1137524))

(assert (=> bs!582292 m!4386289))

(assert (=> b!3831431 d!1137524))

(declare-fun b!3831767 () Bool)

(declare-fun tp!1159318 () Bool)

(declare-fun e!2366243 () Bool)

(declare-fun tp!1159317 () Bool)

(assert (=> b!3831767 (= e!2366243 (and (inv!54538 (left!31291 (c!668104 ys!29))) tp!1159318 (inv!54538 (right!31621 (c!668104 ys!29))) tp!1159317))))

(declare-fun b!3831769 () Bool)

(declare-fun e!2366244 () Bool)

(declare-fun tp!1159319 () Bool)

(assert (=> b!3831769 (= e!2366244 tp!1159319)))

(declare-fun b!3831768 () Bool)

(declare-fun inv!54546 (IArray!24865) Bool)

(assert (=> b!3831768 (= e!2366243 (and (inv!54546 (xs!15732 (c!668104 ys!29))) e!2366244))))

(assert (=> b!3831432 (= tp!1159292 (and (inv!54538 (c!668104 ys!29)) e!2366243))))

(assert (= (and b!3831432 (is-Node!12430 (c!668104 ys!29))) b!3831767))

(assert (= b!3831768 b!3831769))

(assert (= (and b!3831432 (is-Leaf!19244 (c!668104 ys!29))) b!3831768))

(declare-fun m!4386401 () Bool)

(assert (=> b!3831767 m!4386401))

(declare-fun m!4386403 () Bool)

(assert (=> b!3831767 m!4386403))

(declare-fun m!4386405 () Bool)

(assert (=> b!3831768 m!4386405))

(assert (=> b!3831432 m!4386111))

(declare-fun tp!1159320 () Bool)

(declare-fun b!3831770 () Bool)

(declare-fun e!2366245 () Bool)

(declare-fun tp!1159321 () Bool)

(assert (=> b!3831770 (= e!2366245 (and (inv!54538 (left!31291 (c!668104 thiss!5815))) tp!1159321 (inv!54538 (right!31621 (c!668104 thiss!5815))) tp!1159320))))

(declare-fun b!3831772 () Bool)

(declare-fun e!2366246 () Bool)

(declare-fun tp!1159322 () Bool)

(assert (=> b!3831772 (= e!2366246 tp!1159322)))

(declare-fun b!3831771 () Bool)

(assert (=> b!3831771 (= e!2366245 (and (inv!54546 (xs!15732 (c!668104 thiss!5815))) e!2366246))))

(assert (=> b!3831430 (= tp!1159291 (and (inv!54538 (c!668104 thiss!5815)) e!2366245))))

(assert (= (and b!3831430 (is-Node!12430 (c!668104 thiss!5815))) b!3831770))

(assert (= b!3831771 b!3831772))

(assert (= (and b!3831430 (is-Leaf!19244 (c!668104 thiss!5815))) b!3831771))

(declare-fun m!4386407 () Bool)

(assert (=> b!3831770 m!4386407))

(declare-fun m!4386409 () Bool)

(assert (=> b!3831770 m!4386409))

(declare-fun m!4386411 () Bool)

(assert (=> b!3831771 m!4386411))

(assert (=> b!3831430 m!4386093))

(push 1)

(assert (not b!3831769))

(assert (not d!1137478))

(assert (not bm!281664))

(assert (not b!3831756))

(assert (not b!3831592))

(assert (not b!3831707))

(assert (not b!3831545))

(assert (not d!1137518))

(assert (not b!3831770))

(assert (not b!3831543))

(assert (not d!1137524))

(assert (not b!3831771))

(assert (not b!3831515))

(assert (not b!3831430))

(assert (not b!3831516))

(assert (not b!3831544))

(assert (not b!3831767))

(assert (not b!3831598))

(assert (not b!3831719))

(assert (not b!3831519))

(assert (not b!3831526))

(assert (not b!3831518))

(assert (not b!3831530))

(assert (not b!3831529))

(assert (not b!3831722))

(assert (not bm!281662))

(assert (not b!3831738))

(assert (not b!3831531))

(assert (not bm!281668))

(assert (not b!3831768))

(assert (not d!1137484))

(assert (not b!3831597))

(assert (not bm!281666))

(assert (not b!3831528))

(assert (not b!3831542))

(assert (not b!3831541))

(assert (not bm!281661))

(assert (not d!1137504))

(assert (not b!3831432))

(assert (not b!3831527))

(assert (not d!1137520))

(assert (not bm!281657))

(assert (not b!3831477))

(assert (not b!3831475))

(assert (not b!3831595))

(assert (not b!3831757))

(assert (not b!3831514))

(assert (not b!3831599))

(assert (not b!3831772))

(assert (not b!3831740))

(assert (not b!3831714))

(assert (not b!3831600))

(assert (not b!3831546))

(assert (not bm!281656))

(assert (not b!3831715))

(assert (not b!3831709))

(assert (not b!3831517))

(assert (not d!1137522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

