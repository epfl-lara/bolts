; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130724 () Bool)

(assert start!130724)

(declare-fun res!643032 () Bool)

(declare-fun e!906473 () Bool)

(assert (=> start!130724 (=> (not res!643032) (not e!906473))))

(declare-datatypes ((T!25608 0))(
  ( (T!25609 (val!4510 Int)) )
))
(declare-datatypes ((List!14652 0))(
  ( (Nil!14586) (Cons!14586 (h!19987 T!25608) (t!124431 List!14652)) )
))
(declare-datatypes ((IArray!9815 0))(
  ( (IArray!9816 (innerList!4965 List!14652)) )
))
(declare-datatypes ((Conc!4905 0))(
  ( (Node!4905 (left!12476 Conc!4905) (right!12806 Conc!4905) (csize!10040 Int) (cheight!5116 Int)) (Leaf!7375 (xs!7632 IArray!9815) (csize!10041 Int)) (Empty!4905) )
))
(declare-datatypes ((BalanceConc!9750 0))(
  ( (BalanceConc!9751 (c!233402 Conc!4905)) )
))
(declare-fun thiss!5870 () BalanceConc!9750)

(declare-fun isEmpty!8986 (BalanceConc!9750) Bool)

(assert (=> start!130724 (= res!643032 (not (isEmpty!8986 thiss!5870)))))

(assert (=> start!130724 e!906473))

(declare-fun e!906474 () Bool)

(declare-fun inv!19279 (BalanceConc!9750) Bool)

(assert (=> start!130724 (and (inv!19279 thiss!5870) e!906474)))

(declare-fun b!1420129 () Bool)

(declare-fun res!643033 () Bool)

(assert (=> b!1420129 (=> (not res!643033) (not e!906473))))

(declare-fun isBalanced!1462 (Conc!4905) Bool)

(declare-fun tail!2120 (Conc!4905) Conc!4905)

(assert (=> b!1420129 (= res!643033 (isBalanced!1462 (tail!2120 (c!233402 thiss!5870))))))

(declare-fun b!1420130 () Bool)

(declare-fun list!5759 (BalanceConc!9750) List!14652)

(assert (=> b!1420130 (= e!906473 (= (list!5759 thiss!5870) Nil!14586))))

(declare-fun b!1420131 () Bool)

(declare-fun tp!402654 () Bool)

(declare-fun inv!19280 (Conc!4905) Bool)

(assert (=> b!1420131 (= e!906474 (and (inv!19280 (c!233402 thiss!5870)) tp!402654))))

(assert (= (and start!130724 res!643032) b!1420129))

(assert (= (and b!1420129 res!643033) b!1420130))

(assert (= start!130724 b!1420131))

(declare-fun m!1609721 () Bool)

(assert (=> start!130724 m!1609721))

(declare-fun m!1609723 () Bool)

(assert (=> start!130724 m!1609723))

(declare-fun m!1609725 () Bool)

(assert (=> b!1420129 m!1609725))

(assert (=> b!1420129 m!1609725))

(declare-fun m!1609727 () Bool)

(assert (=> b!1420129 m!1609727))

(declare-fun m!1609729 () Bool)

(assert (=> b!1420130 m!1609729))

(declare-fun m!1609731 () Bool)

(assert (=> b!1420131 m!1609731))

(check-sat (not b!1420131) (not b!1420129) (not start!130724) (not b!1420130))
(check-sat)
(get-model)

(declare-fun d!406820 () Bool)

(declare-fun c!233405 () Bool)

(get-info :version)

(assert (=> d!406820 (= c!233405 ((_ is Node!4905) (c!233402 thiss!5870)))))

(declare-fun e!906479 () Bool)

(assert (=> d!406820 (= (inv!19280 (c!233402 thiss!5870)) e!906479)))

(declare-fun b!1420138 () Bool)

(declare-fun inv!19281 (Conc!4905) Bool)

(assert (=> b!1420138 (= e!906479 (inv!19281 (c!233402 thiss!5870)))))

(declare-fun b!1420139 () Bool)

(declare-fun e!906480 () Bool)

(assert (=> b!1420139 (= e!906479 e!906480)))

(declare-fun res!643036 () Bool)

(assert (=> b!1420139 (= res!643036 (not ((_ is Leaf!7375) (c!233402 thiss!5870))))))

(assert (=> b!1420139 (=> res!643036 e!906480)))

(declare-fun b!1420140 () Bool)

(declare-fun inv!19282 (Conc!4905) Bool)

(assert (=> b!1420140 (= e!906480 (inv!19282 (c!233402 thiss!5870)))))

(assert (= (and d!406820 c!233405) b!1420138))

(assert (= (and d!406820 (not c!233405)) b!1420139))

(assert (= (and b!1420139 (not res!643036)) b!1420140))

(declare-fun m!1609735 () Bool)

(assert (=> b!1420138 m!1609735))

(declare-fun m!1609737 () Bool)

(assert (=> b!1420140 m!1609737))

(assert (=> b!1420131 d!406820))

(declare-fun b!1420162 () Bool)

(declare-fun e!906491 () Bool)

(declare-fun e!906492 () Bool)

(assert (=> b!1420162 (= e!906491 e!906492)))

(declare-fun res!643055 () Bool)

(assert (=> b!1420162 (=> (not res!643055) (not e!906492))))

(declare-fun height!716 (Conc!4905) Int)

(assert (=> b!1420162 (= res!643055 (<= (- 1) (- (height!716 (left!12476 (tail!2120 (c!233402 thiss!5870)))) (height!716 (right!12806 (tail!2120 (c!233402 thiss!5870)))))))))

(declare-fun b!1420163 () Bool)

(declare-fun res!643057 () Bool)

(assert (=> b!1420163 (=> (not res!643057) (not e!906492))))

(assert (=> b!1420163 (= res!643057 (<= (- (height!716 (left!12476 (tail!2120 (c!233402 thiss!5870)))) (height!716 (right!12806 (tail!2120 (c!233402 thiss!5870))))) 1))))

(declare-fun b!1420164 () Bool)

(declare-fun res!643052 () Bool)

(assert (=> b!1420164 (=> (not res!643052) (not e!906492))))

(declare-fun isEmpty!8987 (Conc!4905) Bool)

(assert (=> b!1420164 (= res!643052 (not (isEmpty!8987 (left!12476 (tail!2120 (c!233402 thiss!5870))))))))

(declare-fun b!1420165 () Bool)

(declare-fun res!643056 () Bool)

(assert (=> b!1420165 (=> (not res!643056) (not e!906492))))

(assert (=> b!1420165 (= res!643056 (isBalanced!1462 (right!12806 (tail!2120 (c!233402 thiss!5870)))))))

(declare-fun d!406826 () Bool)

(declare-fun res!643054 () Bool)

(assert (=> d!406826 (=> res!643054 e!906491)))

(assert (=> d!406826 (= res!643054 (not ((_ is Node!4905) (tail!2120 (c!233402 thiss!5870)))))))

(assert (=> d!406826 (= (isBalanced!1462 (tail!2120 (c!233402 thiss!5870))) e!906491)))

(declare-fun b!1420166 () Bool)

(declare-fun res!643053 () Bool)

(assert (=> b!1420166 (=> (not res!643053) (not e!906492))))

(assert (=> b!1420166 (= res!643053 (isBalanced!1462 (left!12476 (tail!2120 (c!233402 thiss!5870)))))))

(declare-fun b!1420167 () Bool)

(assert (=> b!1420167 (= e!906492 (not (isEmpty!8987 (right!12806 (tail!2120 (c!233402 thiss!5870))))))))

(assert (= (and d!406826 (not res!643054)) b!1420162))

(assert (= (and b!1420162 res!643055) b!1420163))

(assert (= (and b!1420163 res!643057) b!1420166))

(assert (= (and b!1420166 res!643053) b!1420165))

(assert (= (and b!1420165 res!643056) b!1420164))

(assert (= (and b!1420164 res!643052) b!1420167))

(declare-fun m!1609743 () Bool)

(assert (=> b!1420165 m!1609743))

(declare-fun m!1609745 () Bool)

(assert (=> b!1420163 m!1609745))

(declare-fun m!1609747 () Bool)

(assert (=> b!1420163 m!1609747))

(declare-fun m!1609749 () Bool)

(assert (=> b!1420164 m!1609749))

(declare-fun m!1609751 () Bool)

(assert (=> b!1420166 m!1609751))

(declare-fun m!1609753 () Bool)

(assert (=> b!1420167 m!1609753))

(assert (=> b!1420162 m!1609745))

(assert (=> b!1420162 m!1609747))

(assert (=> b!1420129 d!406826))

(declare-fun b!1420202 () Bool)

(declare-fun e!906509 () Conc!4905)

(declare-fun call!96971 () Conc!4905)

(assert (=> b!1420202 (= e!906509 call!96971)))

(declare-fun b!1420203 () Bool)

(declare-fun e!906512 () Bool)

(assert (=> b!1420203 (= e!906512 (isEmpty!8987 (left!12476 (c!233402 thiss!5870))))))

(declare-fun b!1420204 () Bool)

(declare-fun e!906513 () Conc!4905)

(assert (=> b!1420204 (= e!906513 e!906509)))

(declare-fun res!643081 () Bool)

(assert (=> b!1420204 (= res!643081 ((_ is Node!4905) (c!233402 thiss!5870)))))

(assert (=> b!1420204 (=> (not res!643081) (not e!906512))))

(declare-fun c!233415 () Bool)

(assert (=> b!1420204 (= c!233415 e!906512)))

(declare-fun b!1420205 () Bool)

(declare-datatypes ((Unit!21780 0))(
  ( (Unit!21781) )
))
(declare-fun lt!479424 () Unit!21780)

(declare-fun lt!479420 () Unit!21780)

(assert (=> b!1420205 (= lt!479424 lt!479420)))

(declare-fun call!96970 () List!14652)

(declare-fun lt!479422 () List!14652)

(declare-fun slice!544 (List!14652 Int Int) List!14652)

(declare-fun size!12037 (List!14652) Int)

(assert (=> b!1420205 (= call!96970 (slice!544 lt!479422 1 (size!12037 lt!479422)))))

(declare-fun sliceTailLemma!17 (List!14652) Unit!21780)

(assert (=> b!1420205 (= lt!479420 (sliceTailLemma!17 lt!479422))))

(declare-fun list!5760 (IArray!9815) List!14652)

(assert (=> b!1420205 (= lt!479422 (list!5760 (xs!7632 (c!233402 thiss!5870))))))

(declare-fun e!906511 () Conc!4905)

(declare-fun slice!545 (IArray!9815 Int Int) IArray!9815)

(assert (=> b!1420205 (= e!906511 (Leaf!7375 (slice!545 (xs!7632 (c!233402 thiss!5870)) 1 (csize!10041 (c!233402 thiss!5870))) (- (csize!10041 (c!233402 thiss!5870)) 1)))))

(declare-fun c!233417 () Bool)

(declare-fun lt!479417 () List!14652)

(declare-fun bm!96965 () Bool)

(declare-fun tail!2121 (List!14652) List!14652)

(assert (=> bm!96965 (= call!96970 (tail!2121 (ite c!233417 lt!479422 lt!479417)))))

(declare-fun d!406830 () Bool)

(declare-fun e!906510 () Bool)

(assert (=> d!406830 e!906510))

(declare-fun res!643080 () Bool)

(assert (=> d!406830 (=> (not res!643080) (not e!906510))))

(declare-fun lt!479421 () Conc!4905)

(assert (=> d!406830 (= res!643080 (isBalanced!1462 lt!479421))))

(assert (=> d!406830 (= lt!479421 e!906513)))

(assert (=> d!406830 (= c!233417 ((_ is Leaf!7375) (c!233402 thiss!5870)))))

(assert (=> d!406830 (isBalanced!1462 (c!233402 thiss!5870))))

(assert (=> d!406830 (= (tail!2120 (c!233402 thiss!5870)) lt!479421)))

(declare-fun bm!96966 () Bool)

(assert (=> bm!96966 (= call!96971 (tail!2120 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))))))

(declare-fun b!1420206 () Bool)

(assert (=> b!1420206 (= e!906511 Empty!4905)))

(declare-fun b!1420207 () Bool)

(declare-fun list!5761 (Conc!4905) List!14652)

(assert (=> b!1420207 (= e!906510 (= (list!5761 lt!479421) (tail!2121 (list!5761 (c!233402 thiss!5870)))))))

(declare-fun b!1420208 () Bool)

(declare-fun lt!479418 () Unit!21780)

(declare-fun lt!479419 () Unit!21780)

(assert (=> b!1420208 (= lt!479418 lt!479419)))

(declare-fun lt!479423 () List!14652)

(declare-fun ++!3830 (List!14652 List!14652) List!14652)

(assert (=> b!1420208 (= (tail!2121 (++!3830 lt!479417 lt!479423)) (++!3830 call!96970 lt!479423))))

(declare-fun lemmaTailOfConcatIsTailConcat!17 (List!14652 List!14652) Unit!21780)

(assert (=> b!1420208 (= lt!479419 (lemmaTailOfConcatIsTailConcat!17 lt!479417 lt!479423))))

(assert (=> b!1420208 (= lt!479423 (list!5761 (right!12806 (c!233402 thiss!5870))))))

(assert (=> b!1420208 (= lt!479417 (list!5761 (left!12476 (c!233402 thiss!5870))))))

(declare-fun ++!3831 (Conc!4905 Conc!4905) Conc!4905)

(assert (=> b!1420208 (= e!906509 (++!3831 call!96971 (right!12806 (c!233402 thiss!5870))))))

(declare-fun b!1420209 () Bool)

(assert (=> b!1420209 (= e!906513 e!906511)))

(declare-fun c!233416 () Bool)

(assert (=> b!1420209 (= c!233416 (= (csize!10041 (c!233402 thiss!5870)) 1))))

(assert (= (and d!406830 c!233417) b!1420209))

(assert (= (and d!406830 (not c!233417)) b!1420204))

(assert (= (and b!1420209 c!233416) b!1420206))

(assert (= (and b!1420209 (not c!233416)) b!1420205))

(assert (= (and b!1420204 res!643081) b!1420203))

(assert (= (and b!1420204 c!233415) b!1420202))

(assert (= (and b!1420204 (not c!233415)) b!1420208))

(assert (= (or b!1420202 b!1420208) bm!96966))

(assert (= (or b!1420205 b!1420208) bm!96965))

(assert (= (and d!406830 res!643080) b!1420207))

(declare-fun m!1609767 () Bool)

(assert (=> b!1420203 m!1609767))

(declare-fun m!1609769 () Bool)

(assert (=> bm!96965 m!1609769))

(declare-fun m!1609771 () Bool)

(assert (=> b!1420207 m!1609771))

(declare-fun m!1609773 () Bool)

(assert (=> b!1420207 m!1609773))

(assert (=> b!1420207 m!1609773))

(declare-fun m!1609775 () Bool)

(assert (=> b!1420207 m!1609775))

(declare-fun m!1609777 () Bool)

(assert (=> b!1420205 m!1609777))

(declare-fun m!1609779 () Bool)

(assert (=> b!1420205 m!1609779))

(declare-fun m!1609781 () Bool)

(assert (=> b!1420205 m!1609781))

(assert (=> b!1420205 m!1609779))

(declare-fun m!1609783 () Bool)

(assert (=> b!1420205 m!1609783))

(declare-fun m!1609785 () Bool)

(assert (=> b!1420205 m!1609785))

(declare-fun m!1609787 () Bool)

(assert (=> d!406830 m!1609787))

(declare-fun m!1609789 () Bool)

(assert (=> d!406830 m!1609789))

(declare-fun m!1609791 () Bool)

(assert (=> b!1420208 m!1609791))

(declare-fun m!1609793 () Bool)

(assert (=> b!1420208 m!1609793))

(declare-fun m!1609795 () Bool)

(assert (=> b!1420208 m!1609795))

(declare-fun m!1609797 () Bool)

(assert (=> b!1420208 m!1609797))

(assert (=> b!1420208 m!1609793))

(declare-fun m!1609799 () Bool)

(assert (=> b!1420208 m!1609799))

(declare-fun m!1609801 () Bool)

(assert (=> b!1420208 m!1609801))

(declare-fun m!1609803 () Bool)

(assert (=> b!1420208 m!1609803))

(declare-fun m!1609805 () Bool)

(assert (=> bm!96966 m!1609805))

(assert (=> b!1420129 d!406830))

(declare-fun d!406834 () Bool)

(declare-fun lt!479427 () Bool)

(declare-fun isEmpty!8988 (List!14652) Bool)

(assert (=> d!406834 (= lt!479427 (isEmpty!8988 (list!5759 thiss!5870)))))

(assert (=> d!406834 (= lt!479427 (isEmpty!8987 (c!233402 thiss!5870)))))

(assert (=> d!406834 (= (isEmpty!8986 thiss!5870) lt!479427)))

(declare-fun bs!339724 () Bool)

(assert (= bs!339724 d!406834))

(assert (=> bs!339724 m!1609729))

(assert (=> bs!339724 m!1609729))

(declare-fun m!1609807 () Bool)

(assert (=> bs!339724 m!1609807))

(declare-fun m!1609809 () Bool)

(assert (=> bs!339724 m!1609809))

(assert (=> start!130724 d!406834))

(declare-fun d!406836 () Bool)

(assert (=> d!406836 (= (inv!19279 thiss!5870) (isBalanced!1462 (c!233402 thiss!5870)))))

(declare-fun bs!339725 () Bool)

(assert (= bs!339725 d!406836))

(assert (=> bs!339725 m!1609789))

(assert (=> start!130724 d!406836))

(declare-fun d!406838 () Bool)

(assert (=> d!406838 (= (list!5759 thiss!5870) (list!5761 (c!233402 thiss!5870)))))

(declare-fun bs!339726 () Bool)

(assert (= bs!339726 d!406838))

(assert (=> bs!339726 m!1609773))

(assert (=> b!1420130 d!406838))

(declare-fun tp!402662 () Bool)

(declare-fun e!906518 () Bool)

(declare-fun tp!402661 () Bool)

(declare-fun b!1420218 () Bool)

(assert (=> b!1420218 (= e!906518 (and (inv!19280 (left!12476 (c!233402 thiss!5870))) tp!402662 (inv!19280 (right!12806 (c!233402 thiss!5870))) tp!402661))))

(declare-fun b!1420220 () Bool)

(declare-fun e!906519 () Bool)

(declare-fun tp!402663 () Bool)

(assert (=> b!1420220 (= e!906519 tp!402663)))

(declare-fun b!1420219 () Bool)

(declare-fun inv!19283 (IArray!9815) Bool)

(assert (=> b!1420219 (= e!906518 (and (inv!19283 (xs!7632 (c!233402 thiss!5870))) e!906519))))

(assert (=> b!1420131 (= tp!402654 (and (inv!19280 (c!233402 thiss!5870)) e!906518))))

(assert (= (and b!1420131 ((_ is Node!4905) (c!233402 thiss!5870))) b!1420218))

(assert (= b!1420219 b!1420220))

(assert (= (and b!1420131 ((_ is Leaf!7375) (c!233402 thiss!5870))) b!1420219))

(declare-fun m!1609811 () Bool)

(assert (=> b!1420218 m!1609811))

(declare-fun m!1609813 () Bool)

(assert (=> b!1420218 m!1609813))

(declare-fun m!1609815 () Bool)

(assert (=> b!1420219 m!1609815))

(assert (=> b!1420131 m!1609731))

(check-sat (not bm!96965) (not b!1420164) (not b!1420218) (not b!1420207) (not b!1420219) (not b!1420167) (not b!1420220) (not d!406834) (not b!1420208) (not b!1420131) (not b!1420203) (not b!1420162) (not b!1420140) (not b!1420165) (not d!406830) (not b!1420166) (not b!1420138) (not d!406836) (not b!1420205) (not bm!96966) (not b!1420163) (not d!406838))
(check-sat)
(get-model)

(declare-fun d!406842 () Bool)

(declare-fun lt!479457 () Bool)

(assert (=> d!406842 (= lt!479457 (isEmpty!8988 (list!5761 (left!12476 (tail!2120 (c!233402 thiss!5870))))))))

(declare-fun size!12039 (Conc!4905) Int)

(assert (=> d!406842 (= lt!479457 (= (size!12039 (left!12476 (tail!2120 (c!233402 thiss!5870)))) 0))))

(assert (=> d!406842 (= (isEmpty!8987 (left!12476 (tail!2120 (c!233402 thiss!5870)))) lt!479457)))

(declare-fun bs!339728 () Bool)

(assert (= bs!339728 d!406842))

(declare-fun m!1609859 () Bool)

(assert (=> bs!339728 m!1609859))

(assert (=> bs!339728 m!1609859))

(declare-fun m!1609861 () Bool)

(assert (=> bs!339728 m!1609861))

(declare-fun m!1609863 () Bool)

(assert (=> bs!339728 m!1609863))

(assert (=> b!1420164 d!406842))

(declare-fun d!406846 () Bool)

(assert (=> d!406846 (= (height!716 (left!12476 (tail!2120 (c!233402 thiss!5870)))) (ite ((_ is Empty!4905) (left!12476 (tail!2120 (c!233402 thiss!5870)))) 0 (ite ((_ is Leaf!7375) (left!12476 (tail!2120 (c!233402 thiss!5870)))) 1 (cheight!5116 (left!12476 (tail!2120 (c!233402 thiss!5870)))))))))

(assert (=> b!1420163 d!406846))

(declare-fun d!406848 () Bool)

(assert (=> d!406848 (= (height!716 (right!12806 (tail!2120 (c!233402 thiss!5870)))) (ite ((_ is Empty!4905) (right!12806 (tail!2120 (c!233402 thiss!5870)))) 0 (ite ((_ is Leaf!7375) (right!12806 (tail!2120 (c!233402 thiss!5870)))) 1 (cheight!5116 (right!12806 (tail!2120 (c!233402 thiss!5870)))))))))

(assert (=> b!1420163 d!406848))

(assert (=> b!1420131 d!406820))

(declare-fun d!406850 () Bool)

(assert (=> d!406850 (= (tail!2121 (ite c!233417 lt!479422 lt!479417)) (t!124431 (ite c!233417 lt!479422 lt!479417)))))

(assert (=> bm!96965 d!406850))

(declare-fun b!1420245 () Bool)

(declare-fun e!906535 () Bool)

(declare-fun e!906536 () Bool)

(assert (=> b!1420245 (= e!906535 e!906536)))

(declare-fun res!643091 () Bool)

(assert (=> b!1420245 (=> (not res!643091) (not e!906536))))

(assert (=> b!1420245 (= res!643091 (<= (- 1) (- (height!716 (left!12476 (right!12806 (tail!2120 (c!233402 thiss!5870))))) (height!716 (right!12806 (right!12806 (tail!2120 (c!233402 thiss!5870))))))))))

(declare-fun b!1420246 () Bool)

(declare-fun res!643093 () Bool)

(assert (=> b!1420246 (=> (not res!643093) (not e!906536))))

(assert (=> b!1420246 (= res!643093 (<= (- (height!716 (left!12476 (right!12806 (tail!2120 (c!233402 thiss!5870))))) (height!716 (right!12806 (right!12806 (tail!2120 (c!233402 thiss!5870)))))) 1))))

(declare-fun b!1420247 () Bool)

(declare-fun res!643088 () Bool)

(assert (=> b!1420247 (=> (not res!643088) (not e!906536))))

(assert (=> b!1420247 (= res!643088 (not (isEmpty!8987 (left!12476 (right!12806 (tail!2120 (c!233402 thiss!5870)))))))))

(declare-fun b!1420248 () Bool)

(declare-fun res!643092 () Bool)

(assert (=> b!1420248 (=> (not res!643092) (not e!906536))))

(assert (=> b!1420248 (= res!643092 (isBalanced!1462 (right!12806 (right!12806 (tail!2120 (c!233402 thiss!5870))))))))

(declare-fun d!406852 () Bool)

(declare-fun res!643090 () Bool)

(assert (=> d!406852 (=> res!643090 e!906535)))

(assert (=> d!406852 (= res!643090 (not ((_ is Node!4905) (right!12806 (tail!2120 (c!233402 thiss!5870))))))))

(assert (=> d!406852 (= (isBalanced!1462 (right!12806 (tail!2120 (c!233402 thiss!5870)))) e!906535)))

(declare-fun b!1420249 () Bool)

(declare-fun res!643089 () Bool)

(assert (=> b!1420249 (=> (not res!643089) (not e!906536))))

(assert (=> b!1420249 (= res!643089 (isBalanced!1462 (left!12476 (right!12806 (tail!2120 (c!233402 thiss!5870))))))))

(declare-fun b!1420250 () Bool)

(assert (=> b!1420250 (= e!906536 (not (isEmpty!8987 (right!12806 (right!12806 (tail!2120 (c!233402 thiss!5870)))))))))

(assert (= (and d!406852 (not res!643090)) b!1420245))

(assert (= (and b!1420245 res!643091) b!1420246))

(assert (= (and b!1420246 res!643093) b!1420249))

(assert (= (and b!1420249 res!643089) b!1420248))

(assert (= (and b!1420248 res!643092) b!1420247))

(assert (= (and b!1420247 res!643088) b!1420250))

(declare-fun m!1609865 () Bool)

(assert (=> b!1420248 m!1609865))

(declare-fun m!1609867 () Bool)

(assert (=> b!1420246 m!1609867))

(declare-fun m!1609869 () Bool)

(assert (=> b!1420246 m!1609869))

(declare-fun m!1609871 () Bool)

(assert (=> b!1420247 m!1609871))

(declare-fun m!1609873 () Bool)

(assert (=> b!1420249 m!1609873))

(declare-fun m!1609875 () Bool)

(assert (=> b!1420250 m!1609875))

(assert (=> b!1420245 m!1609867))

(assert (=> b!1420245 m!1609869))

(assert (=> b!1420165 d!406852))

(declare-fun d!406854 () Bool)

(declare-fun c!233427 () Bool)

(assert (=> d!406854 (= c!233427 ((_ is Node!4905) (left!12476 (c!233402 thiss!5870))))))

(declare-fun e!906537 () Bool)

(assert (=> d!406854 (= (inv!19280 (left!12476 (c!233402 thiss!5870))) e!906537)))

(declare-fun b!1420253 () Bool)

(assert (=> b!1420253 (= e!906537 (inv!19281 (left!12476 (c!233402 thiss!5870))))))

(declare-fun b!1420254 () Bool)

(declare-fun e!906538 () Bool)

(assert (=> b!1420254 (= e!906537 e!906538)))

(declare-fun res!643094 () Bool)

(assert (=> b!1420254 (= res!643094 (not ((_ is Leaf!7375) (left!12476 (c!233402 thiss!5870)))))))

(assert (=> b!1420254 (=> res!643094 e!906538)))

(declare-fun b!1420255 () Bool)

(assert (=> b!1420255 (= e!906538 (inv!19282 (left!12476 (c!233402 thiss!5870))))))

(assert (= (and d!406854 c!233427) b!1420253))

(assert (= (and d!406854 (not c!233427)) b!1420254))

(assert (= (and b!1420254 (not res!643094)) b!1420255))

(declare-fun m!1609877 () Bool)

(assert (=> b!1420253 m!1609877))

(declare-fun m!1609879 () Bool)

(assert (=> b!1420255 m!1609879))

(assert (=> b!1420218 d!406854))

(declare-fun d!406856 () Bool)

(declare-fun c!233428 () Bool)

(assert (=> d!406856 (= c!233428 ((_ is Node!4905) (right!12806 (c!233402 thiss!5870))))))

(declare-fun e!906541 () Bool)

(assert (=> d!406856 (= (inv!19280 (right!12806 (c!233402 thiss!5870))) e!906541)))

(declare-fun b!1420258 () Bool)

(assert (=> b!1420258 (= e!906541 (inv!19281 (right!12806 (c!233402 thiss!5870))))))

(declare-fun b!1420259 () Bool)

(declare-fun e!906542 () Bool)

(assert (=> b!1420259 (= e!906541 e!906542)))

(declare-fun res!643095 () Bool)

(assert (=> b!1420259 (= res!643095 (not ((_ is Leaf!7375) (right!12806 (c!233402 thiss!5870)))))))

(assert (=> b!1420259 (=> res!643095 e!906542)))

(declare-fun b!1420260 () Bool)

(assert (=> b!1420260 (= e!906542 (inv!19282 (right!12806 (c!233402 thiss!5870))))))

(assert (= (and d!406856 c!233428) b!1420258))

(assert (= (and d!406856 (not c!233428)) b!1420259))

(assert (= (and b!1420259 (not res!643095)) b!1420260))

(declare-fun m!1609881 () Bool)

(assert (=> b!1420258 m!1609881))

(declare-fun m!1609883 () Bool)

(assert (=> b!1420260 m!1609883))

(assert (=> b!1420218 d!406856))

(declare-fun b!1420278 () Bool)

(declare-fun e!906552 () List!14652)

(assert (=> b!1420278 (= e!906552 (list!5760 (xs!7632 (c!233402 thiss!5870))))))

(declare-fun b!1420277 () Bool)

(declare-fun e!906551 () List!14652)

(assert (=> b!1420277 (= e!906551 e!906552)))

(declare-fun c!233434 () Bool)

(assert (=> b!1420277 (= c!233434 ((_ is Leaf!7375) (c!233402 thiss!5870)))))

(declare-fun d!406858 () Bool)

(declare-fun c!233433 () Bool)

(assert (=> d!406858 (= c!233433 ((_ is Empty!4905) (c!233402 thiss!5870)))))

(assert (=> d!406858 (= (list!5761 (c!233402 thiss!5870)) e!906551)))

(declare-fun b!1420276 () Bool)

(assert (=> b!1420276 (= e!906551 Nil!14586)))

(declare-fun b!1420279 () Bool)

(assert (=> b!1420279 (= e!906552 (++!3830 (list!5761 (left!12476 (c!233402 thiss!5870))) (list!5761 (right!12806 (c!233402 thiss!5870)))))))

(assert (= (and d!406858 c!233433) b!1420276))

(assert (= (and d!406858 (not c!233433)) b!1420277))

(assert (= (and b!1420277 c!233434) b!1420278))

(assert (= (and b!1420277 (not c!233434)) b!1420279))

(assert (=> b!1420278 m!1609777))

(assert (=> b!1420279 m!1609801))

(assert (=> b!1420279 m!1609803))

(assert (=> b!1420279 m!1609801))

(assert (=> b!1420279 m!1609803))

(declare-fun m!1609885 () Bool)

(assert (=> b!1420279 m!1609885))

(assert (=> d!406838 d!406858))

(declare-fun b!1420280 () Bool)

(declare-fun e!906553 () Conc!4905)

(declare-fun call!96979 () Conc!4905)

(assert (=> b!1420280 (= e!906553 call!96979)))

(declare-fun b!1420281 () Bool)

(declare-fun e!906556 () Bool)

(assert (=> b!1420281 (= e!906556 (isEmpty!8987 (left!12476 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))))))

(declare-fun b!1420282 () Bool)

(declare-fun e!906557 () Conc!4905)

(assert (=> b!1420282 (= e!906557 e!906553)))

(declare-fun res!643097 () Bool)

(assert (=> b!1420282 (= res!643097 ((_ is Node!4905) (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))))))

(assert (=> b!1420282 (=> (not res!643097) (not e!906556))))

(declare-fun c!233435 () Bool)

(assert (=> b!1420282 (= c!233435 e!906556)))

(declare-fun b!1420283 () Bool)

(declare-fun lt!479465 () Unit!21780)

(declare-fun lt!479461 () Unit!21780)

(assert (=> b!1420283 (= lt!479465 lt!479461)))

(declare-fun call!96978 () List!14652)

(declare-fun lt!479463 () List!14652)

(assert (=> b!1420283 (= call!96978 (slice!544 lt!479463 1 (size!12037 lt!479463)))))

(assert (=> b!1420283 (= lt!479461 (sliceTailLemma!17 lt!479463))))

(assert (=> b!1420283 (= lt!479463 (list!5760 (xs!7632 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))))))

(declare-fun e!906555 () Conc!4905)

(assert (=> b!1420283 (= e!906555 (Leaf!7375 (slice!545 (xs!7632 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))) 1 (csize!10041 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))) (- (csize!10041 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))) 1)))))

(declare-fun bm!96973 () Bool)

(declare-fun c!233437 () Bool)

(declare-fun lt!479458 () List!14652)

(assert (=> bm!96973 (= call!96978 (tail!2121 (ite c!233437 lt!479463 lt!479458)))))

(declare-fun d!406860 () Bool)

(declare-fun e!906554 () Bool)

(assert (=> d!406860 e!906554))

(declare-fun res!643096 () Bool)

(assert (=> d!406860 (=> (not res!643096) (not e!906554))))

(declare-fun lt!479462 () Conc!4905)

(assert (=> d!406860 (= res!643096 (isBalanced!1462 lt!479462))))

(assert (=> d!406860 (= lt!479462 e!906557)))

(assert (=> d!406860 (= c!233437 ((_ is Leaf!7375) (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))))))

(assert (=> d!406860 (isBalanced!1462 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))))

(assert (=> d!406860 (= (tail!2120 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))) lt!479462)))

(declare-fun bm!96974 () Bool)

(assert (=> bm!96974 (= call!96979 (tail!2120 (ite c!233435 (right!12806 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))) (left!12476 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))))))))

(declare-fun b!1420284 () Bool)

(assert (=> b!1420284 (= e!906555 Empty!4905)))

(declare-fun b!1420285 () Bool)

(assert (=> b!1420285 (= e!906554 (= (list!5761 lt!479462) (tail!2121 (list!5761 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))))))))

(declare-fun b!1420286 () Bool)

(declare-fun lt!479459 () Unit!21780)

(declare-fun lt!479460 () Unit!21780)

(assert (=> b!1420286 (= lt!479459 lt!479460)))

(declare-fun lt!479464 () List!14652)

(assert (=> b!1420286 (= (tail!2121 (++!3830 lt!479458 lt!479464)) (++!3830 call!96978 lt!479464))))

(assert (=> b!1420286 (= lt!479460 (lemmaTailOfConcatIsTailConcat!17 lt!479458 lt!479464))))

(assert (=> b!1420286 (= lt!479464 (list!5761 (right!12806 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))))))

(assert (=> b!1420286 (= lt!479458 (list!5761 (left!12476 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))))))

(assert (=> b!1420286 (= e!906553 (++!3831 call!96979 (right!12806 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870))))))))

(declare-fun b!1420287 () Bool)

(assert (=> b!1420287 (= e!906557 e!906555)))

(declare-fun c!233436 () Bool)

(assert (=> b!1420287 (= c!233436 (= (csize!10041 (ite c!233415 (right!12806 (c!233402 thiss!5870)) (left!12476 (c!233402 thiss!5870)))) 1))))

(assert (= (and d!406860 c!233437) b!1420287))

(assert (= (and d!406860 (not c!233437)) b!1420282))

(assert (= (and b!1420287 c!233436) b!1420284))

(assert (= (and b!1420287 (not c!233436)) b!1420283))

(assert (= (and b!1420282 res!643097) b!1420281))

(assert (= (and b!1420282 c!233435) b!1420280))

(assert (= (and b!1420282 (not c!233435)) b!1420286))

(assert (= (or b!1420280 b!1420286) bm!96974))

(assert (= (or b!1420283 b!1420286) bm!96973))

(assert (= (and d!406860 res!643096) b!1420285))

(declare-fun m!1609893 () Bool)

(assert (=> b!1420281 m!1609893))

(declare-fun m!1609895 () Bool)

(assert (=> bm!96973 m!1609895))

(declare-fun m!1609897 () Bool)

(assert (=> b!1420285 m!1609897))

(declare-fun m!1609899 () Bool)

(assert (=> b!1420285 m!1609899))

(assert (=> b!1420285 m!1609899))

(declare-fun m!1609901 () Bool)

(assert (=> b!1420285 m!1609901))

(declare-fun m!1609903 () Bool)

(assert (=> b!1420283 m!1609903))

(declare-fun m!1609905 () Bool)

(assert (=> b!1420283 m!1609905))

(declare-fun m!1609907 () Bool)

(assert (=> b!1420283 m!1609907))

(assert (=> b!1420283 m!1609905))

(declare-fun m!1609909 () Bool)

(assert (=> b!1420283 m!1609909))

(declare-fun m!1609911 () Bool)

(assert (=> b!1420283 m!1609911))

(declare-fun m!1609913 () Bool)

(assert (=> d!406860 m!1609913))

(declare-fun m!1609915 () Bool)

(assert (=> d!406860 m!1609915))

(declare-fun m!1609917 () Bool)

(assert (=> b!1420286 m!1609917))

(declare-fun m!1609919 () Bool)

(assert (=> b!1420286 m!1609919))

(declare-fun m!1609921 () Bool)

(assert (=> b!1420286 m!1609921))

(declare-fun m!1609923 () Bool)

(assert (=> b!1420286 m!1609923))

(assert (=> b!1420286 m!1609919))

(declare-fun m!1609925 () Bool)

(assert (=> b!1420286 m!1609925))

(declare-fun m!1609927 () Bool)

(assert (=> b!1420286 m!1609927))

(declare-fun m!1609929 () Bool)

(assert (=> b!1420286 m!1609929))

(declare-fun m!1609931 () Bool)

(assert (=> bm!96974 m!1609931))

(assert (=> bm!96966 d!406860))

(declare-fun d!406862 () Bool)

(declare-fun res!643104 () Bool)

(declare-fun e!906560 () Bool)

(assert (=> d!406862 (=> (not res!643104) (not e!906560))))

(assert (=> d!406862 (= res!643104 (= (csize!10040 (c!233402 thiss!5870)) (+ (size!12039 (left!12476 (c!233402 thiss!5870))) (size!12039 (right!12806 (c!233402 thiss!5870))))))))

(assert (=> d!406862 (= (inv!19281 (c!233402 thiss!5870)) e!906560)))

(declare-fun b!1420294 () Bool)

(declare-fun res!643105 () Bool)

(assert (=> b!1420294 (=> (not res!643105) (not e!906560))))

(assert (=> b!1420294 (= res!643105 (and (not (= (left!12476 (c!233402 thiss!5870)) Empty!4905)) (not (= (right!12806 (c!233402 thiss!5870)) Empty!4905))))))

(declare-fun b!1420295 () Bool)

(declare-fun res!643106 () Bool)

(assert (=> b!1420295 (=> (not res!643106) (not e!906560))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1420295 (= res!643106 (= (cheight!5116 (c!233402 thiss!5870)) (+ (max!0 (height!716 (left!12476 (c!233402 thiss!5870))) (height!716 (right!12806 (c!233402 thiss!5870)))) 1)))))

(declare-fun b!1420296 () Bool)

(assert (=> b!1420296 (= e!906560 (<= 0 (cheight!5116 (c!233402 thiss!5870))))))

(assert (= (and d!406862 res!643104) b!1420294))

(assert (= (and b!1420294 res!643105) b!1420295))

(assert (= (and b!1420295 res!643106) b!1420296))

(declare-fun m!1609933 () Bool)

(assert (=> d!406862 m!1609933))

(declare-fun m!1609935 () Bool)

(assert (=> d!406862 m!1609935))

(declare-fun m!1609937 () Bool)

(assert (=> b!1420295 m!1609937))

(declare-fun m!1609939 () Bool)

(assert (=> b!1420295 m!1609939))

(assert (=> b!1420295 m!1609937))

(assert (=> b!1420295 m!1609939))

(declare-fun m!1609941 () Bool)

(assert (=> b!1420295 m!1609941))

(assert (=> b!1420138 d!406862))

(declare-fun b!1420299 () Bool)

(declare-fun e!906562 () List!14652)

(assert (=> b!1420299 (= e!906562 (list!5760 (xs!7632 lt!479421)))))

(declare-fun b!1420298 () Bool)

(declare-fun e!906561 () List!14652)

(assert (=> b!1420298 (= e!906561 e!906562)))

(declare-fun c!233439 () Bool)

(assert (=> b!1420298 (= c!233439 ((_ is Leaf!7375) lt!479421))))

(declare-fun d!406864 () Bool)

(declare-fun c!233438 () Bool)

(assert (=> d!406864 (= c!233438 ((_ is Empty!4905) lt!479421))))

(assert (=> d!406864 (= (list!5761 lt!479421) e!906561)))

(declare-fun b!1420297 () Bool)

(assert (=> b!1420297 (= e!906561 Nil!14586)))

(declare-fun b!1420300 () Bool)

(assert (=> b!1420300 (= e!906562 (++!3830 (list!5761 (left!12476 lt!479421)) (list!5761 (right!12806 lt!479421))))))

(assert (= (and d!406864 c!233438) b!1420297))

(assert (= (and d!406864 (not c!233438)) b!1420298))

(assert (= (and b!1420298 c!233439) b!1420299))

(assert (= (and b!1420298 (not c!233439)) b!1420300))

(declare-fun m!1609943 () Bool)

(assert (=> b!1420299 m!1609943))

(declare-fun m!1609945 () Bool)

(assert (=> b!1420300 m!1609945))

(declare-fun m!1609947 () Bool)

(assert (=> b!1420300 m!1609947))

(assert (=> b!1420300 m!1609945))

(assert (=> b!1420300 m!1609947))

(declare-fun m!1609949 () Bool)

(assert (=> b!1420300 m!1609949))

(assert (=> b!1420207 d!406864))

(declare-fun d!406866 () Bool)

(assert (=> d!406866 (= (tail!2121 (list!5761 (c!233402 thiss!5870))) (t!124431 (list!5761 (c!233402 thiss!5870))))))

(assert (=> b!1420207 d!406866))

(assert (=> b!1420207 d!406858))

(declare-fun d!406868 () Bool)

(assert (=> d!406868 (= (inv!19283 (xs!7632 (c!233402 thiss!5870))) (<= (size!12037 (innerList!4965 (xs!7632 (c!233402 thiss!5870)))) 2147483647))))

(declare-fun bs!339730 () Bool)

(assert (= bs!339730 d!406868))

(declare-fun m!1609951 () Bool)

(assert (=> bs!339730 m!1609951))

(assert (=> b!1420219 d!406868))

(declare-fun d!406870 () Bool)

(declare-fun res!643111 () Bool)

(declare-fun e!906565 () Bool)

(assert (=> d!406870 (=> (not res!643111) (not e!906565))))

(assert (=> d!406870 (= res!643111 (<= (size!12037 (list!5760 (xs!7632 (c!233402 thiss!5870)))) 512))))

(assert (=> d!406870 (= (inv!19282 (c!233402 thiss!5870)) e!906565)))

(declare-fun b!1420305 () Bool)

(declare-fun res!643112 () Bool)

(assert (=> b!1420305 (=> (not res!643112) (not e!906565))))

(assert (=> b!1420305 (= res!643112 (= (csize!10041 (c!233402 thiss!5870)) (size!12037 (list!5760 (xs!7632 (c!233402 thiss!5870))))))))

(declare-fun b!1420306 () Bool)

(assert (=> b!1420306 (= e!906565 (and (> (csize!10041 (c!233402 thiss!5870)) 0) (<= (csize!10041 (c!233402 thiss!5870)) 512)))))

(assert (= (and d!406870 res!643111) b!1420305))

(assert (= (and b!1420305 res!643112) b!1420306))

(assert (=> d!406870 m!1609777))

(assert (=> d!406870 m!1609777))

(declare-fun m!1609953 () Bool)

(assert (=> d!406870 m!1609953))

(assert (=> b!1420305 m!1609777))

(assert (=> b!1420305 m!1609777))

(assert (=> b!1420305 m!1609953))

(assert (=> b!1420140 d!406870))

(declare-fun b!1420307 () Bool)

(declare-fun e!906566 () Bool)

(declare-fun e!906567 () Bool)

(assert (=> b!1420307 (= e!906566 e!906567)))

(declare-fun res!643116 () Bool)

(assert (=> b!1420307 (=> (not res!643116) (not e!906567))))

(assert (=> b!1420307 (= res!643116 (<= (- 1) (- (height!716 (left!12476 lt!479421)) (height!716 (right!12806 lt!479421)))))))

(declare-fun b!1420308 () Bool)

(declare-fun res!643118 () Bool)

(assert (=> b!1420308 (=> (not res!643118) (not e!906567))))

(assert (=> b!1420308 (= res!643118 (<= (- (height!716 (left!12476 lt!479421)) (height!716 (right!12806 lt!479421))) 1))))

(declare-fun b!1420309 () Bool)

(declare-fun res!643113 () Bool)

(assert (=> b!1420309 (=> (not res!643113) (not e!906567))))

(assert (=> b!1420309 (= res!643113 (not (isEmpty!8987 (left!12476 lt!479421))))))

(declare-fun b!1420310 () Bool)

(declare-fun res!643117 () Bool)

(assert (=> b!1420310 (=> (not res!643117) (not e!906567))))

(assert (=> b!1420310 (= res!643117 (isBalanced!1462 (right!12806 lt!479421)))))

(declare-fun d!406872 () Bool)

(declare-fun res!643115 () Bool)

(assert (=> d!406872 (=> res!643115 e!906566)))

(assert (=> d!406872 (= res!643115 (not ((_ is Node!4905) lt!479421)))))

(assert (=> d!406872 (= (isBalanced!1462 lt!479421) e!906566)))

(declare-fun b!1420311 () Bool)

(declare-fun res!643114 () Bool)

(assert (=> b!1420311 (=> (not res!643114) (not e!906567))))

(assert (=> b!1420311 (= res!643114 (isBalanced!1462 (left!12476 lt!479421)))))

(declare-fun b!1420312 () Bool)

(assert (=> b!1420312 (= e!906567 (not (isEmpty!8987 (right!12806 lt!479421))))))

(assert (= (and d!406872 (not res!643115)) b!1420307))

(assert (= (and b!1420307 res!643116) b!1420308))

(assert (= (and b!1420308 res!643118) b!1420311))

(assert (= (and b!1420311 res!643114) b!1420310))

(assert (= (and b!1420310 res!643117) b!1420309))

(assert (= (and b!1420309 res!643113) b!1420312))

(declare-fun m!1609955 () Bool)

(assert (=> b!1420310 m!1609955))

(declare-fun m!1609957 () Bool)

(assert (=> b!1420308 m!1609957))

(declare-fun m!1609959 () Bool)

(assert (=> b!1420308 m!1609959))

(declare-fun m!1609961 () Bool)

(assert (=> b!1420309 m!1609961))

(declare-fun m!1609963 () Bool)

(assert (=> b!1420311 m!1609963))

(declare-fun m!1609965 () Bool)

(assert (=> b!1420312 m!1609965))

(assert (=> b!1420307 m!1609957))

(assert (=> b!1420307 m!1609959))

(assert (=> d!406830 d!406872))

(declare-fun b!1420313 () Bool)

(declare-fun e!906568 () Bool)

(declare-fun e!906569 () Bool)

(assert (=> b!1420313 (= e!906568 e!906569)))

(declare-fun res!643122 () Bool)

(assert (=> b!1420313 (=> (not res!643122) (not e!906569))))

(assert (=> b!1420313 (= res!643122 (<= (- 1) (- (height!716 (left!12476 (c!233402 thiss!5870))) (height!716 (right!12806 (c!233402 thiss!5870))))))))

(declare-fun b!1420314 () Bool)

(declare-fun res!643124 () Bool)

(assert (=> b!1420314 (=> (not res!643124) (not e!906569))))

(assert (=> b!1420314 (= res!643124 (<= (- (height!716 (left!12476 (c!233402 thiss!5870))) (height!716 (right!12806 (c!233402 thiss!5870)))) 1))))

(declare-fun b!1420315 () Bool)

(declare-fun res!643119 () Bool)

(assert (=> b!1420315 (=> (not res!643119) (not e!906569))))

(assert (=> b!1420315 (= res!643119 (not (isEmpty!8987 (left!12476 (c!233402 thiss!5870)))))))

(declare-fun b!1420316 () Bool)

(declare-fun res!643123 () Bool)

(assert (=> b!1420316 (=> (not res!643123) (not e!906569))))

(assert (=> b!1420316 (= res!643123 (isBalanced!1462 (right!12806 (c!233402 thiss!5870))))))

(declare-fun d!406874 () Bool)

(declare-fun res!643121 () Bool)

(assert (=> d!406874 (=> res!643121 e!906568)))

(assert (=> d!406874 (= res!643121 (not ((_ is Node!4905) (c!233402 thiss!5870))))))

(assert (=> d!406874 (= (isBalanced!1462 (c!233402 thiss!5870)) e!906568)))

(declare-fun b!1420317 () Bool)

(declare-fun res!643120 () Bool)

(assert (=> b!1420317 (=> (not res!643120) (not e!906569))))

(assert (=> b!1420317 (= res!643120 (isBalanced!1462 (left!12476 (c!233402 thiss!5870))))))

(declare-fun b!1420318 () Bool)

(assert (=> b!1420318 (= e!906569 (not (isEmpty!8987 (right!12806 (c!233402 thiss!5870)))))))

(assert (= (and d!406874 (not res!643121)) b!1420313))

(assert (= (and b!1420313 res!643122) b!1420314))

(assert (= (and b!1420314 res!643124) b!1420317))

(assert (= (and b!1420317 res!643120) b!1420316))

(assert (= (and b!1420316 res!643123) b!1420315))

(assert (= (and b!1420315 res!643119) b!1420318))

(declare-fun m!1609967 () Bool)

(assert (=> b!1420316 m!1609967))

(assert (=> b!1420314 m!1609937))

(assert (=> b!1420314 m!1609939))

(assert (=> b!1420315 m!1609767))

(declare-fun m!1609969 () Bool)

(assert (=> b!1420317 m!1609969))

(declare-fun m!1609971 () Bool)

(assert (=> b!1420318 m!1609971))

(assert (=> b!1420313 m!1609937))

(assert (=> b!1420313 m!1609939))

(assert (=> d!406830 d!406874))

(declare-fun b!1420319 () Bool)

(declare-fun e!906570 () Bool)

(declare-fun e!906571 () Bool)

(assert (=> b!1420319 (= e!906570 e!906571)))

(declare-fun res!643128 () Bool)

(assert (=> b!1420319 (=> (not res!643128) (not e!906571))))

(assert (=> b!1420319 (= res!643128 (<= (- 1) (- (height!716 (left!12476 (left!12476 (tail!2120 (c!233402 thiss!5870))))) (height!716 (right!12806 (left!12476 (tail!2120 (c!233402 thiss!5870))))))))))

(declare-fun b!1420320 () Bool)

(declare-fun res!643130 () Bool)

(assert (=> b!1420320 (=> (not res!643130) (not e!906571))))

(assert (=> b!1420320 (= res!643130 (<= (- (height!716 (left!12476 (left!12476 (tail!2120 (c!233402 thiss!5870))))) (height!716 (right!12806 (left!12476 (tail!2120 (c!233402 thiss!5870)))))) 1))))

(declare-fun b!1420321 () Bool)

(declare-fun res!643125 () Bool)

(assert (=> b!1420321 (=> (not res!643125) (not e!906571))))

(assert (=> b!1420321 (= res!643125 (not (isEmpty!8987 (left!12476 (left!12476 (tail!2120 (c!233402 thiss!5870)))))))))

(declare-fun b!1420322 () Bool)

(declare-fun res!643129 () Bool)

(assert (=> b!1420322 (=> (not res!643129) (not e!906571))))

(assert (=> b!1420322 (= res!643129 (isBalanced!1462 (right!12806 (left!12476 (tail!2120 (c!233402 thiss!5870))))))))

(declare-fun d!406876 () Bool)

(declare-fun res!643127 () Bool)

(assert (=> d!406876 (=> res!643127 e!906570)))

(assert (=> d!406876 (= res!643127 (not ((_ is Node!4905) (left!12476 (tail!2120 (c!233402 thiss!5870))))))))

(assert (=> d!406876 (= (isBalanced!1462 (left!12476 (tail!2120 (c!233402 thiss!5870)))) e!906570)))

(declare-fun b!1420323 () Bool)

(declare-fun res!643126 () Bool)

(assert (=> b!1420323 (=> (not res!643126) (not e!906571))))

(assert (=> b!1420323 (= res!643126 (isBalanced!1462 (left!12476 (left!12476 (tail!2120 (c!233402 thiss!5870))))))))

(declare-fun b!1420324 () Bool)

(assert (=> b!1420324 (= e!906571 (not (isEmpty!8987 (right!12806 (left!12476 (tail!2120 (c!233402 thiss!5870)))))))))

(assert (= (and d!406876 (not res!643127)) b!1420319))

(assert (= (and b!1420319 res!643128) b!1420320))

(assert (= (and b!1420320 res!643130) b!1420323))

(assert (= (and b!1420323 res!643126) b!1420322))

(assert (= (and b!1420322 res!643129) b!1420321))

(assert (= (and b!1420321 res!643125) b!1420324))

(declare-fun m!1609973 () Bool)

(assert (=> b!1420322 m!1609973))

(declare-fun m!1609975 () Bool)

(assert (=> b!1420320 m!1609975))

(declare-fun m!1609977 () Bool)

(assert (=> b!1420320 m!1609977))

(declare-fun m!1609979 () Bool)

(assert (=> b!1420321 m!1609979))

(declare-fun m!1609981 () Bool)

(assert (=> b!1420323 m!1609981))

(declare-fun m!1609983 () Bool)

(assert (=> b!1420324 m!1609983))

(assert (=> b!1420319 m!1609975))

(assert (=> b!1420319 m!1609977))

(assert (=> b!1420166 d!406876))

(declare-fun d!406878 () Bool)

(assert (=> d!406878 (= (isEmpty!8988 (list!5759 thiss!5870)) ((_ is Nil!14586) (list!5759 thiss!5870)))))

(assert (=> d!406834 d!406878))

(assert (=> d!406834 d!406838))

(declare-fun d!406880 () Bool)

(declare-fun lt!479466 () Bool)

(assert (=> d!406880 (= lt!479466 (isEmpty!8988 (list!5761 (c!233402 thiss!5870))))))

(assert (=> d!406880 (= lt!479466 (= (size!12039 (c!233402 thiss!5870)) 0))))

(assert (=> d!406880 (= (isEmpty!8987 (c!233402 thiss!5870)) lt!479466)))

(declare-fun bs!339731 () Bool)

(assert (= bs!339731 d!406880))

(assert (=> bs!339731 m!1609773))

(assert (=> bs!339731 m!1609773))

(declare-fun m!1609985 () Bool)

(assert (=> bs!339731 m!1609985))

(declare-fun m!1609987 () Bool)

(assert (=> bs!339731 m!1609987))

(assert (=> d!406834 d!406880))

(declare-fun d!406882 () Bool)

(declare-fun lt!479467 () Bool)

(assert (=> d!406882 (= lt!479467 (isEmpty!8988 (list!5761 (right!12806 (tail!2120 (c!233402 thiss!5870))))))))

(assert (=> d!406882 (= lt!479467 (= (size!12039 (right!12806 (tail!2120 (c!233402 thiss!5870)))) 0))))

(assert (=> d!406882 (= (isEmpty!8987 (right!12806 (tail!2120 (c!233402 thiss!5870)))) lt!479467)))

(declare-fun bs!339732 () Bool)

(assert (= bs!339732 d!406882))

(declare-fun m!1609989 () Bool)

(assert (=> bs!339732 m!1609989))

(assert (=> bs!339732 m!1609989))

(declare-fun m!1609991 () Bool)

(assert (=> bs!339732 m!1609991))

(declare-fun m!1609993 () Bool)

(assert (=> bs!339732 m!1609993))

(assert (=> b!1420167 d!406882))

(declare-fun b!1420335 () Bool)

(declare-fun res!643135 () Bool)

(declare-fun e!906576 () Bool)

(assert (=> b!1420335 (=> (not res!643135) (not e!906576))))

(declare-fun lt!479470 () List!14652)

(assert (=> b!1420335 (= res!643135 (= (size!12037 lt!479470) (+ (size!12037 call!96970) (size!12037 lt!479423))))))

(declare-fun b!1420336 () Bool)

(assert (=> b!1420336 (= e!906576 (or (not (= lt!479423 Nil!14586)) (= lt!479470 call!96970)))))

(declare-fun b!1420333 () Bool)

(declare-fun e!906577 () List!14652)

(assert (=> b!1420333 (= e!906577 lt!479423)))

(declare-fun d!406884 () Bool)

(assert (=> d!406884 e!906576))

(declare-fun res!643136 () Bool)

(assert (=> d!406884 (=> (not res!643136) (not e!906576))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2152 (List!14652) (InoxSet T!25608))

(assert (=> d!406884 (= res!643136 (= (content!2152 lt!479470) ((_ map or) (content!2152 call!96970) (content!2152 lt!479423))))))

(assert (=> d!406884 (= lt!479470 e!906577)))

(declare-fun c!233442 () Bool)

(assert (=> d!406884 (= c!233442 ((_ is Nil!14586) call!96970))))

(assert (=> d!406884 (= (++!3830 call!96970 lt!479423) lt!479470)))

(declare-fun b!1420334 () Bool)

(assert (=> b!1420334 (= e!906577 (Cons!14586 (h!19987 call!96970) (++!3830 (t!124431 call!96970) lt!479423)))))

(assert (= (and d!406884 c!233442) b!1420333))

(assert (= (and d!406884 (not c!233442)) b!1420334))

(assert (= (and d!406884 res!643136) b!1420335))

(assert (= (and b!1420335 res!643135) b!1420336))

(declare-fun m!1609995 () Bool)

(assert (=> b!1420335 m!1609995))

(declare-fun m!1609997 () Bool)

(assert (=> b!1420335 m!1609997))

(declare-fun m!1609999 () Bool)

(assert (=> b!1420335 m!1609999))

(declare-fun m!1610001 () Bool)

(assert (=> d!406884 m!1610001))

(declare-fun m!1610003 () Bool)

(assert (=> d!406884 m!1610003))

(declare-fun m!1610005 () Bool)

(assert (=> d!406884 m!1610005))

(declare-fun m!1610007 () Bool)

(assert (=> b!1420334 m!1610007))

(assert (=> b!1420208 d!406884))

(declare-fun d!406886 () Bool)

(assert (=> d!406886 (= (tail!2121 (++!3830 lt!479417 lt!479423)) (++!3830 (tail!2121 lt!479417) lt!479423))))

(declare-fun lt!479473 () Unit!21780)

(declare-fun choose!8747 (List!14652 List!14652) Unit!21780)

(assert (=> d!406886 (= lt!479473 (choose!8747 lt!479417 lt!479423))))

(assert (=> d!406886 (not (isEmpty!8988 lt!479417))))

(assert (=> d!406886 (= (lemmaTailOfConcatIsTailConcat!17 lt!479417 lt!479423) lt!479473)))

(declare-fun bs!339733 () Bool)

(assert (= bs!339733 d!406886))

(declare-fun m!1610009 () Bool)

(assert (=> bs!339733 m!1610009))

(assert (=> bs!339733 m!1609793))

(assert (=> bs!339733 m!1609795))

(declare-fun m!1610011 () Bool)

(assert (=> bs!339733 m!1610011))

(declare-fun m!1610013 () Bool)

(assert (=> bs!339733 m!1610013))

(assert (=> bs!339733 m!1609793))

(assert (=> bs!339733 m!1610011))

(declare-fun m!1610015 () Bool)

(assert (=> bs!339733 m!1610015))

(assert (=> b!1420208 d!406886))

(declare-fun bm!97007 () Bool)

(declare-fun call!97015 () Conc!4905)

(declare-fun call!97027 () Conc!4905)

(assert (=> bm!97007 (= call!97015 call!97027)))

(declare-fun lt!479482 () Conc!4905)

(declare-fun c!233459 () Bool)

(declare-fun call!97016 () Int)

(declare-fun bm!97008 () Bool)

(assert (=> bm!97008 (= call!97016 (height!716 (ite c!233459 lt!479482 (right!12806 (right!12806 (c!233402 thiss!5870))))))))

(declare-fun bm!97009 () Bool)

(declare-fun call!97024 () Conc!4905)

(declare-fun call!97013 () Conc!4905)

(assert (=> bm!97009 (= call!97024 call!97013)))

(declare-fun b!1420380 () Bool)

(declare-fun e!906602 () Bool)

(assert (=> b!1420380 (= e!906602 (isBalanced!1462 (right!12806 (c!233402 thiss!5870))))))

(declare-fun b!1420381 () Bool)

(declare-fun e!906600 () Conc!4905)

(assert (=> b!1420381 (= e!906600 call!97015)))

(declare-fun b!1420382 () Bool)

(declare-fun e!906606 () Conc!4905)

(declare-fun call!97025 () Conc!4905)

(assert (=> b!1420382 (= e!906606 call!97025)))

(declare-fun bm!97010 () Bool)

(declare-fun call!97017 () Conc!4905)

(assert (=> bm!97010 (= call!97017 call!97015)))

(declare-fun bm!97011 () Bool)

(declare-fun call!97022 () Conc!4905)

(assert (=> bm!97011 (= call!97022 call!97013)))

(declare-fun b!1420383 () Bool)

(declare-fun e!906599 () Conc!4905)

(declare-fun e!906601 () Conc!4905)

(assert (=> b!1420383 (= e!906599 e!906601)))

(declare-fun c!233461 () Bool)

(assert (=> b!1420383 (= c!233461 (= (right!12806 (c!233402 thiss!5870)) Empty!4905))))

(declare-fun b!1420384 () Bool)

(assert (=> b!1420384 (= e!906599 (right!12806 (c!233402 thiss!5870)))))

(declare-fun b!1420385 () Bool)

(declare-fun e!906604 () Conc!4905)

(assert (=> b!1420385 (= e!906604 call!97017)))

(declare-fun b!1420386 () Bool)

(assert (=> b!1420386 (= e!906601 call!96971)))

(declare-fun bm!97012 () Bool)

(declare-fun call!97026 () Conc!4905)

(assert (=> bm!97012 (= call!97026 call!97027)))

(declare-fun bm!97013 () Bool)

(declare-fun call!97018 () Conc!4905)

(assert (=> bm!97013 (= call!97027 call!97018)))

(declare-fun call!97020 () Int)

(declare-fun bm!97014 () Bool)

(assert (=> bm!97014 (= call!97020 (height!716 (ite c!233459 (right!12806 call!96971) (left!12476 (right!12806 (c!233402 thiss!5870))))))))

(declare-fun b!1420387 () Bool)

(declare-fun e!906605 () Conc!4905)

(declare-fun e!906598 () Conc!4905)

(assert (=> b!1420387 (= e!906605 e!906598)))

(declare-fun lt!479483 () Int)

(assert (=> b!1420387 (= c!233459 (< lt!479483 (- 1)))))

(declare-fun bm!97015 () Bool)

(declare-fun call!97019 () Conc!4905)

(assert (=> bm!97015 (= call!97025 call!97019)))

(declare-fun b!1420388 () Bool)

(assert (=> b!1420388 (= e!906606 call!97025)))

(declare-fun b!1420389 () Bool)

(assert (=> b!1420389 (= e!906605 call!97018)))

(declare-fun b!1420379 () Bool)

(declare-fun res!643147 () Bool)

(declare-fun e!906607 () Bool)

(assert (=> b!1420379 (=> (not res!643147) (not e!906607))))

(declare-fun lt!479484 () Conc!4905)

(assert (=> b!1420379 (= res!643147 (isBalanced!1462 lt!479484))))

(declare-fun d!406888 () Bool)

(assert (=> d!406888 e!906607))

(declare-fun res!643151 () Bool)

(assert (=> d!406888 (=> (not res!643151) (not e!906607))))

(declare-fun appendAssocInst!300 (Conc!4905 Conc!4905) Bool)

(assert (=> d!406888 (= res!643151 (appendAssocInst!300 call!96971 (right!12806 (c!233402 thiss!5870))))))

(assert (=> d!406888 (= lt!479484 e!906599)))

(declare-fun c!233463 () Bool)

(assert (=> d!406888 (= c!233463 (= call!96971 Empty!4905))))

(assert (=> d!406888 e!906602))

(declare-fun res!643150 () Bool)

(assert (=> d!406888 (=> (not res!643150) (not e!906602))))

(assert (=> d!406888 (= res!643150 (isBalanced!1462 call!96971))))

(assert (=> d!406888 (= (++!3831 call!96971 (right!12806 (c!233402 thiss!5870))) lt!479484)))

(declare-fun b!1420390 () Bool)

(declare-fun e!906603 () Conc!4905)

(assert (=> b!1420390 (= e!906603 call!97026)))

(declare-fun b!1420391 () Bool)

(declare-fun c!233460 () Bool)

(assert (=> b!1420391 (= c!233460 (and (<= (- 1) lt!479483) (<= lt!479483 1)))))

(assert (=> b!1420391 (= lt!479483 (- (height!716 (right!12806 (c!233402 thiss!5870))) (height!716 call!96971)))))

(assert (=> b!1420391 (= e!906601 e!906605)))

(declare-fun bm!97016 () Bool)

(declare-fun c!233465 () Bool)

(declare-fun c!233462 () Bool)

(assert (=> bm!97016 (= call!97013 (++!3831 (ite c!233459 (ite c!233462 (right!12806 call!96971) (right!12806 (right!12806 call!96971))) call!96971) (ite c!233459 (right!12806 (c!233402 thiss!5870)) (ite c!233465 (left!12476 (right!12806 (c!233402 thiss!5870))) (left!12476 (left!12476 (right!12806 (c!233402 thiss!5870))))))))))

(declare-fun b!1420392 () Bool)

(declare-fun res!643149 () Bool)

(assert (=> b!1420392 (=> (not res!643149) (not e!906607))))

(assert (=> b!1420392 (= res!643149 (<= (height!716 lt!479484) (+ (max!0 (height!716 call!96971) (height!716 (right!12806 (c!233402 thiss!5870)))) 1)))))

(declare-fun b!1420393 () Bool)

(assert (=> b!1420393 (= c!233465 (>= call!97016 call!97020))))

(assert (=> b!1420393 (= e!906598 e!906600)))

(declare-fun bm!97017 () Bool)

(declare-fun call!97012 () Int)

(assert (=> bm!97017 (= call!97012 (height!716 (ite c!233459 call!96971 (right!12806 (c!233402 thiss!5870)))))))

(declare-fun b!1420394 () Bool)

(assert (=> b!1420394 (= e!906603 e!906606)))

(assert (=> b!1420394 (= lt!479482 call!97022)))

(declare-fun c!233466 () Bool)

(assert (=> b!1420394 (= c!233466 (= call!97016 (- call!97012 3)))))

(declare-fun b!1420395 () Bool)

(declare-fun call!97014 () Int)

(assert (=> b!1420395 (= c!233462 (>= call!97014 call!97020))))

(assert (=> b!1420395 (= e!906598 e!906603)))

(declare-fun b!1420396 () Bool)

(declare-fun res!643148 () Bool)

(assert (=> b!1420396 (=> (not res!643148) (not e!906607))))

(assert (=> b!1420396 (= res!643148 (>= (height!716 lt!479484) (max!0 (height!716 call!96971) (height!716 (right!12806 (c!233402 thiss!5870))))))))

(declare-fun b!1420397 () Bool)

(assert (=> b!1420397 (= e!906607 (= (list!5761 lt!479484) (++!3830 (list!5761 call!96971) (list!5761 (right!12806 (c!233402 thiss!5870))))))))

(declare-fun lt!479485 () Conc!4905)

(declare-fun c!233464 () Bool)

(declare-fun call!97023 () Conc!4905)

(declare-fun bm!97018 () Bool)

(declare-fun <>!94 (Conc!4905 Conc!4905) Conc!4905)

(assert (=> bm!97018 (= call!97018 (<>!94 (ite c!233460 call!96971 (ite c!233459 (ite c!233462 (left!12476 call!96971) (ite c!233466 (left!12476 (right!12806 call!96971)) (left!12476 call!96971))) (ite c!233465 call!97024 (ite c!233464 call!97023 lt!479485)))) (ite c!233460 (right!12806 (c!233402 thiss!5870)) (ite c!233459 (ite c!233462 call!97022 (ite c!233466 lt!479482 (left!12476 (right!12806 call!96971)))) (ite (or c!233465 c!233464) (right!12806 (right!12806 (c!233402 thiss!5870))) call!97023)))))))

(declare-fun b!1420398 () Bool)

(assert (=> b!1420398 (= e!906600 e!906604)))

(assert (=> b!1420398 (= lt!479485 call!97024)))

(assert (=> b!1420398 (= c!233464 (= call!97014 (- call!97012 3)))))

(declare-fun bm!97019 () Bool)

(assert (=> bm!97019 (= call!97023 call!97019)))

(declare-fun call!97021 () Conc!4905)

(declare-fun bm!97020 () Bool)

(assert (=> bm!97020 (= call!97019 (<>!94 (ite c!233459 (ite c!233466 (left!12476 call!96971) call!97021) (ite c!233464 lt!479485 (right!12806 (left!12476 (right!12806 (c!233402 thiss!5870)))))) (ite c!233459 (ite c!233466 call!97021 lt!479482) (ite c!233464 (right!12806 (left!12476 (right!12806 (c!233402 thiss!5870)))) (right!12806 (right!12806 (c!233402 thiss!5870)))))))))

(declare-fun bm!97021 () Bool)

(assert (=> bm!97021 (= call!97021 call!97026)))

(declare-fun b!1420399 () Bool)

(assert (=> b!1420399 (= e!906604 call!97017)))

(declare-fun bm!97022 () Bool)

(assert (=> bm!97022 (= call!97014 (height!716 (ite c!233459 (left!12476 call!96971) lt!479485)))))

(assert (= (and d!406888 res!643150) b!1420380))

(assert (= (and d!406888 c!233463) b!1420384))

(assert (= (and d!406888 (not c!233463)) b!1420383))

(assert (= (and b!1420383 c!233461) b!1420386))

(assert (= (and b!1420383 (not c!233461)) b!1420391))

(assert (= (and b!1420391 c!233460) b!1420389))

(assert (= (and b!1420391 (not c!233460)) b!1420387))

(assert (= (and b!1420387 c!233459) b!1420395))

(assert (= (and b!1420387 (not c!233459)) b!1420393))

(assert (= (and b!1420395 c!233462) b!1420390))

(assert (= (and b!1420395 (not c!233462)) b!1420394))

(assert (= (and b!1420394 c!233466) b!1420388))

(assert (= (and b!1420394 (not c!233466)) b!1420382))

(assert (= (or b!1420388 b!1420382) bm!97021))

(assert (= (or b!1420388 b!1420382) bm!97015))

(assert (= (or b!1420390 b!1420394) bm!97011))

(assert (= (or b!1420390 bm!97021) bm!97012))

(assert (= (and b!1420393 c!233465) b!1420381))

(assert (= (and b!1420393 (not c!233465)) b!1420398))

(assert (= (and b!1420398 c!233464) b!1420385))

(assert (= (and b!1420398 (not c!233464)) b!1420399))

(assert (= (or b!1420385 b!1420399) bm!97019))

(assert (= (or b!1420385 b!1420399) bm!97010))

(assert (= (or b!1420381 b!1420398) bm!97009))

(assert (= (or b!1420381 bm!97010) bm!97007))

(assert (= (or bm!97011 bm!97009) bm!97016))

(assert (= (or bm!97015 bm!97019) bm!97020))

(assert (= (or b!1420394 b!1420393) bm!97008))

(assert (= (or b!1420395 b!1420393) bm!97014))

(assert (= (or bm!97012 bm!97007) bm!97013))

(assert (= (or b!1420395 b!1420398) bm!97022))

(assert (= (or b!1420394 b!1420398) bm!97017))

(assert (= (or b!1420389 bm!97013) bm!97018))

(assert (= (and d!406888 res!643151) b!1420379))

(assert (= (and b!1420379 res!643147) b!1420392))

(assert (= (and b!1420392 res!643149) b!1420396))

(assert (= (and b!1420396 res!643148) b!1420397))

(declare-fun m!1610017 () Bool)

(assert (=> d!406888 m!1610017))

(declare-fun m!1610019 () Bool)

(assert (=> d!406888 m!1610019))

(declare-fun m!1610021 () Bool)

(assert (=> bm!97022 m!1610021))

(declare-fun m!1610023 () Bool)

(assert (=> bm!97008 m!1610023))

(declare-fun m!1610025 () Bool)

(assert (=> b!1420392 m!1610025))

(declare-fun m!1610027 () Bool)

(assert (=> b!1420392 m!1610027))

(assert (=> b!1420392 m!1609939))

(assert (=> b!1420392 m!1610027))

(assert (=> b!1420392 m!1609939))

(declare-fun m!1610029 () Bool)

(assert (=> b!1420392 m!1610029))

(declare-fun m!1610031 () Bool)

(assert (=> bm!97017 m!1610031))

(declare-fun m!1610033 () Bool)

(assert (=> bm!97014 m!1610033))

(declare-fun m!1610035 () Bool)

(assert (=> bm!97018 m!1610035))

(declare-fun m!1610037 () Bool)

(assert (=> b!1420379 m!1610037))

(assert (=> b!1420391 m!1609939))

(assert (=> b!1420391 m!1610027))

(declare-fun m!1610039 () Bool)

(assert (=> bm!97020 m!1610039))

(assert (=> b!1420380 m!1609967))

(declare-fun m!1610041 () Bool)

(assert (=> bm!97016 m!1610041))

(declare-fun m!1610043 () Bool)

(assert (=> b!1420397 m!1610043))

(declare-fun m!1610045 () Bool)

(assert (=> b!1420397 m!1610045))

(assert (=> b!1420397 m!1609803))

(assert (=> b!1420397 m!1610045))

(assert (=> b!1420397 m!1609803))

(declare-fun m!1610047 () Bool)

(assert (=> b!1420397 m!1610047))

(assert (=> b!1420396 m!1610025))

(assert (=> b!1420396 m!1610027))

(assert (=> b!1420396 m!1609939))

(assert (=> b!1420396 m!1610027))

(assert (=> b!1420396 m!1609939))

(assert (=> b!1420396 m!1610029))

(assert (=> b!1420208 d!406888))

(declare-fun b!1420402 () Bool)

(declare-fun res!643152 () Bool)

(declare-fun e!906608 () Bool)

(assert (=> b!1420402 (=> (not res!643152) (not e!906608))))

(declare-fun lt!479486 () List!14652)

(assert (=> b!1420402 (= res!643152 (= (size!12037 lt!479486) (+ (size!12037 lt!479417) (size!12037 lt!479423))))))

(declare-fun b!1420403 () Bool)

(assert (=> b!1420403 (= e!906608 (or (not (= lt!479423 Nil!14586)) (= lt!479486 lt!479417)))))

(declare-fun b!1420400 () Bool)

(declare-fun e!906609 () List!14652)

(assert (=> b!1420400 (= e!906609 lt!479423)))

(declare-fun d!406890 () Bool)

(assert (=> d!406890 e!906608))

(declare-fun res!643153 () Bool)

(assert (=> d!406890 (=> (not res!643153) (not e!906608))))

(assert (=> d!406890 (= res!643153 (= (content!2152 lt!479486) ((_ map or) (content!2152 lt!479417) (content!2152 lt!479423))))))

(assert (=> d!406890 (= lt!479486 e!906609)))

(declare-fun c!233467 () Bool)

(assert (=> d!406890 (= c!233467 ((_ is Nil!14586) lt!479417))))

(assert (=> d!406890 (= (++!3830 lt!479417 lt!479423) lt!479486)))

(declare-fun b!1420401 () Bool)

(assert (=> b!1420401 (= e!906609 (Cons!14586 (h!19987 lt!479417) (++!3830 (t!124431 lt!479417) lt!479423)))))

(assert (= (and d!406890 c!233467) b!1420400))

(assert (= (and d!406890 (not c!233467)) b!1420401))

(assert (= (and d!406890 res!643153) b!1420402))

(assert (= (and b!1420402 res!643152) b!1420403))

(declare-fun m!1610049 () Bool)

(assert (=> b!1420402 m!1610049))

(declare-fun m!1610051 () Bool)

(assert (=> b!1420402 m!1610051))

(assert (=> b!1420402 m!1609999))

(declare-fun m!1610053 () Bool)

(assert (=> d!406890 m!1610053))

(declare-fun m!1610055 () Bool)

(assert (=> d!406890 m!1610055))

(assert (=> d!406890 m!1610005))

(declare-fun m!1610057 () Bool)

(assert (=> b!1420401 m!1610057))

(assert (=> b!1420208 d!406890))

(declare-fun b!1420406 () Bool)

(declare-fun e!906611 () List!14652)

(assert (=> b!1420406 (= e!906611 (list!5760 (xs!7632 (right!12806 (c!233402 thiss!5870)))))))

(declare-fun b!1420405 () Bool)

(declare-fun e!906610 () List!14652)

(assert (=> b!1420405 (= e!906610 e!906611)))

(declare-fun c!233469 () Bool)

(assert (=> b!1420405 (= c!233469 ((_ is Leaf!7375) (right!12806 (c!233402 thiss!5870))))))

(declare-fun d!406892 () Bool)

(declare-fun c!233468 () Bool)

(assert (=> d!406892 (= c!233468 ((_ is Empty!4905) (right!12806 (c!233402 thiss!5870))))))

(assert (=> d!406892 (= (list!5761 (right!12806 (c!233402 thiss!5870))) e!906610)))

(declare-fun b!1420404 () Bool)

(assert (=> b!1420404 (= e!906610 Nil!14586)))

(declare-fun b!1420407 () Bool)

(assert (=> b!1420407 (= e!906611 (++!3830 (list!5761 (left!12476 (right!12806 (c!233402 thiss!5870)))) (list!5761 (right!12806 (right!12806 (c!233402 thiss!5870))))))))

(assert (= (and d!406892 c!233468) b!1420404))

(assert (= (and d!406892 (not c!233468)) b!1420405))

(assert (= (and b!1420405 c!233469) b!1420406))

(assert (= (and b!1420405 (not c!233469)) b!1420407))

(declare-fun m!1610059 () Bool)

(assert (=> b!1420406 m!1610059))

(declare-fun m!1610061 () Bool)

(assert (=> b!1420407 m!1610061))

(declare-fun m!1610063 () Bool)

(assert (=> b!1420407 m!1610063))

(assert (=> b!1420407 m!1610061))

(assert (=> b!1420407 m!1610063))

(declare-fun m!1610065 () Bool)

(assert (=> b!1420407 m!1610065))

(assert (=> b!1420208 d!406892))

(declare-fun d!406894 () Bool)

(assert (=> d!406894 (= (tail!2121 (++!3830 lt!479417 lt!479423)) (t!124431 (++!3830 lt!479417 lt!479423)))))

(assert (=> b!1420208 d!406894))

(declare-fun b!1420410 () Bool)

(declare-fun e!906613 () List!14652)

(assert (=> b!1420410 (= e!906613 (list!5760 (xs!7632 (left!12476 (c!233402 thiss!5870)))))))

(declare-fun b!1420409 () Bool)

(declare-fun e!906612 () List!14652)

(assert (=> b!1420409 (= e!906612 e!906613)))

(declare-fun c!233471 () Bool)

(assert (=> b!1420409 (= c!233471 ((_ is Leaf!7375) (left!12476 (c!233402 thiss!5870))))))

(declare-fun d!406896 () Bool)

(declare-fun c!233470 () Bool)

(assert (=> d!406896 (= c!233470 ((_ is Empty!4905) (left!12476 (c!233402 thiss!5870))))))

(assert (=> d!406896 (= (list!5761 (left!12476 (c!233402 thiss!5870))) e!906612)))

(declare-fun b!1420408 () Bool)

(assert (=> b!1420408 (= e!906612 Nil!14586)))

(declare-fun b!1420411 () Bool)

(assert (=> b!1420411 (= e!906613 (++!3830 (list!5761 (left!12476 (left!12476 (c!233402 thiss!5870)))) (list!5761 (right!12806 (left!12476 (c!233402 thiss!5870))))))))

(assert (= (and d!406896 c!233470) b!1420408))

(assert (= (and d!406896 (not c!233470)) b!1420409))

(assert (= (and b!1420409 c!233471) b!1420410))

(assert (= (and b!1420409 (not c!233471)) b!1420411))

(declare-fun m!1610067 () Bool)

(assert (=> b!1420410 m!1610067))

(declare-fun m!1610069 () Bool)

(assert (=> b!1420411 m!1610069))

(declare-fun m!1610071 () Bool)

(assert (=> b!1420411 m!1610071))

(assert (=> b!1420411 m!1610069))

(assert (=> b!1420411 m!1610071))

(declare-fun m!1610073 () Bool)

(assert (=> b!1420411 m!1610073))

(assert (=> b!1420208 d!406896))

(assert (=> d!406836 d!406874))

(declare-fun d!406898 () Bool)

(declare-fun lt!479487 () Bool)

(assert (=> d!406898 (= lt!479487 (isEmpty!8988 (list!5761 (left!12476 (c!233402 thiss!5870)))))))

(assert (=> d!406898 (= lt!479487 (= (size!12039 (left!12476 (c!233402 thiss!5870))) 0))))

(assert (=> d!406898 (= (isEmpty!8987 (left!12476 (c!233402 thiss!5870))) lt!479487)))

(declare-fun bs!339734 () Bool)

(assert (= bs!339734 d!406898))

(assert (=> bs!339734 m!1609801))

(assert (=> bs!339734 m!1609801))

(declare-fun m!1610075 () Bool)

(assert (=> bs!339734 m!1610075))

(assert (=> bs!339734 m!1609933))

(assert (=> b!1420203 d!406898))

(declare-fun d!406900 () Bool)

(assert (=> d!406900 (= (list!5760 (xs!7632 (c!233402 thiss!5870))) (innerList!4965 (xs!7632 (c!233402 thiss!5870))))))

(assert (=> b!1420205 d!406900))

(declare-fun d!406902 () Bool)

(declare-fun lt!479490 () Int)

(assert (=> d!406902 (>= lt!479490 0)))

(declare-fun e!906616 () Int)

(assert (=> d!406902 (= lt!479490 e!906616)))

(declare-fun c!233474 () Bool)

(assert (=> d!406902 (= c!233474 ((_ is Nil!14586) lt!479422))))

(assert (=> d!406902 (= (size!12037 lt!479422) lt!479490)))

(declare-fun b!1420416 () Bool)

(assert (=> b!1420416 (= e!906616 0)))

(declare-fun b!1420417 () Bool)

(assert (=> b!1420417 (= e!906616 (+ 1 (size!12037 (t!124431 lt!479422))))))

(assert (= (and d!406902 c!233474) b!1420416))

(assert (= (and d!406902 (not c!233474)) b!1420417))

(declare-fun m!1610077 () Bool)

(assert (=> b!1420417 m!1610077))

(assert (=> b!1420205 d!406902))

(declare-fun d!406904 () Bool)

(declare-fun take!149 (List!14652 Int) List!14652)

(declare-fun drop!706 (List!14652 Int) List!14652)

(assert (=> d!406904 (= (slice!544 lt!479422 1 (size!12037 lt!479422)) (take!149 (drop!706 lt!479422 1) (- (size!12037 lt!479422) 1)))))

(declare-fun bs!339735 () Bool)

(assert (= bs!339735 d!406904))

(declare-fun m!1610079 () Bool)

(assert (=> bs!339735 m!1610079))

(assert (=> bs!339735 m!1610079))

(declare-fun m!1610081 () Bool)

(assert (=> bs!339735 m!1610081))

(assert (=> b!1420205 d!406904))

(declare-fun d!406906 () Bool)

(declare-fun lt!479493 () IArray!9815)

(assert (=> d!406906 (= lt!479493 (IArray!9816 (slice!544 (list!5760 (xs!7632 (c!233402 thiss!5870))) 1 (csize!10041 (c!233402 thiss!5870)))))))

(declare-fun choose!8748 (IArray!9815 Int Int) IArray!9815)

(assert (=> d!406906 (= lt!479493 (choose!8748 (xs!7632 (c!233402 thiss!5870)) 1 (csize!10041 (c!233402 thiss!5870))))))

(declare-fun e!906619 () Bool)

(assert (=> d!406906 e!906619))

(declare-fun res!643156 () Bool)

(assert (=> d!406906 (=> (not res!643156) (not e!906619))))

(assert (=> d!406906 (= res!643156 (and (<= 0 1) (<= 1 (csize!10041 (c!233402 thiss!5870)))))))

(assert (=> d!406906 (= (slice!545 (xs!7632 (c!233402 thiss!5870)) 1 (csize!10041 (c!233402 thiss!5870))) lt!479493)))

(declare-fun b!1420420 () Bool)

(declare-fun size!12040 (IArray!9815) Int)

(assert (=> b!1420420 (= e!906619 (<= (csize!10041 (c!233402 thiss!5870)) (size!12040 (xs!7632 (c!233402 thiss!5870)))))))

(assert (= (and d!406906 res!643156) b!1420420))

(assert (=> d!406906 m!1609777))

(assert (=> d!406906 m!1609777))

(declare-fun m!1610083 () Bool)

(assert (=> d!406906 m!1610083))

(declare-fun m!1610085 () Bool)

(assert (=> d!406906 m!1610085))

(declare-fun m!1610087 () Bool)

(assert (=> b!1420420 m!1610087))

(assert (=> b!1420205 d!406906))

(declare-fun d!406908 () Bool)

(assert (=> d!406908 (= (tail!2121 lt!479422) (slice!544 lt!479422 1 (size!12037 lt!479422)))))

(declare-fun lt!479496 () Unit!21780)

(declare-fun choose!8749 (List!14652) Unit!21780)

(assert (=> d!406908 (= lt!479496 (choose!8749 lt!479422))))

(assert (=> d!406908 (> (size!12037 lt!479422) 0)))

(assert (=> d!406908 (= (sliceTailLemma!17 lt!479422) lt!479496)))

(declare-fun bs!339736 () Bool)

(assert (= bs!339736 d!406908))

(declare-fun m!1610089 () Bool)

(assert (=> bs!339736 m!1610089))

(assert (=> bs!339736 m!1609779))

(assert (=> bs!339736 m!1609779))

(assert (=> bs!339736 m!1609783))

(declare-fun m!1610091 () Bool)

(assert (=> bs!339736 m!1610091))

(assert (=> b!1420205 d!406908))

(assert (=> b!1420162 d!406846))

(assert (=> b!1420162 d!406848))

(declare-fun tp!402674 () Bool)

(declare-fun e!906620 () Bool)

(declare-fun b!1420421 () Bool)

(declare-fun tp!402673 () Bool)

(assert (=> b!1420421 (= e!906620 (and (inv!19280 (left!12476 (left!12476 (c!233402 thiss!5870)))) tp!402674 (inv!19280 (right!12806 (left!12476 (c!233402 thiss!5870)))) tp!402673))))

(declare-fun b!1420423 () Bool)

(declare-fun e!906621 () Bool)

(declare-fun tp!402675 () Bool)

(assert (=> b!1420423 (= e!906621 tp!402675)))

(declare-fun b!1420422 () Bool)

(assert (=> b!1420422 (= e!906620 (and (inv!19283 (xs!7632 (left!12476 (c!233402 thiss!5870)))) e!906621))))

(assert (=> b!1420218 (= tp!402662 (and (inv!19280 (left!12476 (c!233402 thiss!5870))) e!906620))))

(assert (= (and b!1420218 ((_ is Node!4905) (left!12476 (c!233402 thiss!5870)))) b!1420421))

(assert (= b!1420422 b!1420423))

(assert (= (and b!1420218 ((_ is Leaf!7375) (left!12476 (c!233402 thiss!5870)))) b!1420422))

(declare-fun m!1610093 () Bool)

(assert (=> b!1420421 m!1610093))

(declare-fun m!1610095 () Bool)

(assert (=> b!1420421 m!1610095))

(declare-fun m!1610097 () Bool)

(assert (=> b!1420422 m!1610097))

(assert (=> b!1420218 m!1609811))

(declare-fun tp!402676 () Bool)

(declare-fun e!906622 () Bool)

(declare-fun b!1420424 () Bool)

(declare-fun tp!402677 () Bool)

(assert (=> b!1420424 (= e!906622 (and (inv!19280 (left!12476 (right!12806 (c!233402 thiss!5870)))) tp!402677 (inv!19280 (right!12806 (right!12806 (c!233402 thiss!5870)))) tp!402676))))

(declare-fun b!1420426 () Bool)

(declare-fun e!906623 () Bool)

(declare-fun tp!402678 () Bool)

(assert (=> b!1420426 (= e!906623 tp!402678)))

(declare-fun b!1420425 () Bool)

(assert (=> b!1420425 (= e!906622 (and (inv!19283 (xs!7632 (right!12806 (c!233402 thiss!5870)))) e!906623))))

(assert (=> b!1420218 (= tp!402661 (and (inv!19280 (right!12806 (c!233402 thiss!5870))) e!906622))))

(assert (= (and b!1420218 ((_ is Node!4905) (right!12806 (c!233402 thiss!5870)))) b!1420424))

(assert (= b!1420425 b!1420426))

(assert (= (and b!1420218 ((_ is Leaf!7375) (right!12806 (c!233402 thiss!5870)))) b!1420425))

(declare-fun m!1610099 () Bool)

(assert (=> b!1420424 m!1610099))

(declare-fun m!1610101 () Bool)

(assert (=> b!1420424 m!1610101))

(declare-fun m!1610103 () Bool)

(assert (=> b!1420425 m!1610103))

(assert (=> b!1420218 m!1609813))

(declare-fun b!1420431 () Bool)

(declare-fun e!906626 () Bool)

(declare-fun tp_is_empty!6825 () Bool)

(declare-fun tp!402681 () Bool)

(assert (=> b!1420431 (= e!906626 (and tp_is_empty!6825 tp!402681))))

(assert (=> b!1420220 (= tp!402663 e!906626)))

(assert (= (and b!1420220 ((_ is Cons!14586) (innerList!4965 (xs!7632 (c!233402 thiss!5870))))) b!1420431))

(check-sat (not b!1420321) (not d!406888) (not b!1420318) (not b!1420334) (not b!1420246) (not d!406882) (not b!1420260) (not bm!96973) (not b!1420245) (not b!1420286) (not b!1420278) (not d!406904) (not b!1420313) (not b!1420335) (not b!1420411) (not b!1420279) (not b!1420423) (not b!1420218) (not d!406884) (not b!1420285) (not bm!97022) (not b!1420247) (not b!1420406) (not b!1420300) (not b!1420420) (not b!1420396) (not b!1420309) (not bm!96974) (not b!1420425) (not d!406842) (not b!1420281) (not b!1420431) (not b!1420248) (not d!406886) (not b!1420320) (not bm!97020) (not b!1420379) (not b!1420323) (not b!1420253) (not b!1420421) (not b!1420424) (not b!1420324) (not b!1420283) (not b!1420255) (not d!406870) (not b!1420422) (not b!1420312) (not b!1420407) (not b!1420249) (not bm!97008) (not b!1420317) (not b!1420417) (not d!406860) (not b!1420410) (not b!1420402) (not b!1420305) (not d!406890) (not b!1420397) (not b!1420319) (not b!1420307) (not d!406868) (not b!1420308) (not b!1420315) (not b!1420310) (not b!1420401) (not d!406880) tp_is_empty!6825 (not b!1420316) (not b!1420392) (not bm!97018) (not d!406862) (not b!1420391) (not d!406908) (not b!1420380) (not b!1420426) (not b!1420258) (not b!1420311) (not d!406906) (not b!1420322) (not b!1420295) (not bm!97016) (not b!1420250) (not d!406898) (not b!1420299) (not bm!97017) (not b!1420314) (not bm!97014))
(check-sat)
