; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407514 () Bool)

(assert start!407514)

(declare-datatypes ((T!79224 0))(
  ( (T!79225 (val!15188 Int)) )
))
(declare-fun t!3481 () T!79224)

(declare-datatypes ((List!47317 0))(
  ( (Nil!47193) (Cons!47193 (h!52613 T!79224) (t!352844 List!47317)) )
))
(declare-datatypes ((IArray!28415 0))(
  ( (IArray!28416 (innerList!14265 List!47317)) )
))
(declare-datatypes ((Conc!14205 0))(
  ( (Node!14205 (left!34968 Conc!14205) (right!35298 Conc!14205) (csize!28640 Int) (cheight!14416 Int)) (Leaf!21961 (xs!17511 IArray!28415) (csize!28641 Int)) (Empty!14205) )
))
(declare-datatypes ((BalanceConc!28004 0))(
  ( (BalanceConc!28005 (c!722383 Conc!14205)) )
))
(declare-fun inv!61981 (BalanceConc!28004) Bool)

(declare-fun LeafFrom!2 (T!79224) Conc!14205)

(assert (=> start!407514 (not (inv!61981 (BalanceConc!28005 (LeafFrom!2 t!3481))))))

(declare-fun tp_is_empty!22789 () Bool)

(assert (=> start!407514 tp_is_empty!22789))

(declare-fun bs!598735 () Bool)

(assert (= bs!598735 start!407514))

(declare-fun m!4839483 () Bool)

(assert (=> bs!598735 m!4839483))

(declare-fun m!4839485 () Bool)

(assert (=> bs!598735 m!4839485))

(check-sat (not start!407514) tp_is_empty!22789)
(check-sat)
(get-model)

(declare-fun d!1250946 () Bool)

(declare-fun isBalanced!3770 (Conc!14205) Bool)

(assert (=> d!1250946 (= (inv!61981 (BalanceConc!28005 (LeafFrom!2 t!3481))) (isBalanced!3770 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481)))))))

(declare-fun bs!598738 () Bool)

(assert (= bs!598738 d!1250946))

(declare-fun m!4839491 () Bool)

(assert (=> bs!598738 m!4839491))

(assert (=> start!407514 d!1250946))

(declare-fun d!1250950 () Bool)

(declare-fun fill!207 (Int T!79224) IArray!28415)

(assert (=> d!1250950 (= (LeafFrom!2 t!3481) (Leaf!21961 (fill!207 1 t!3481) 1))))

(declare-fun bs!598739 () Bool)

(assert (= bs!598739 d!1250950))

(declare-fun m!4839493 () Bool)

(assert (=> bs!598739 m!4839493))

(assert (=> start!407514 d!1250950))

(check-sat (not d!1250950) (not d!1250946) tp_is_empty!22789)
(check-sat)
(get-model)

(declare-fun d!1250954 () Bool)

(declare-fun lt!1509581 () IArray!28415)

(declare-fun fill!208 (Int T!79224) List!47317)

(assert (=> d!1250954 (= lt!1509581 (IArray!28416 (fill!208 1 t!3481)))))

(declare-fun choose!25961 (Int T!79224) IArray!28415)

(assert (=> d!1250954 (= lt!1509581 (choose!25961 1 t!3481))))

(assert (=> d!1250954 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1250954 (= (fill!207 1 t!3481) lt!1509581)))

(declare-fun bs!598740 () Bool)

(assert (= bs!598740 d!1250954))

(declare-fun m!4839495 () Bool)

(assert (=> bs!598740 m!4839495))

(declare-fun m!4839497 () Bool)

(assert (=> bs!598740 m!4839497))

(assert (=> d!1250950 d!1250954))

(declare-fun d!1250956 () Bool)

(declare-fun res!1749063 () Bool)

(declare-fun e!2642965 () Bool)

(assert (=> d!1250956 (=> res!1749063 e!2642965)))

(get-info :version)

(assert (=> d!1250956 (= res!1749063 (not ((_ is Node!14205) (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481))))))))

(assert (=> d!1250956 (= (isBalanced!3770 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481)))) e!2642965)))

(declare-fun b!4254911 () Bool)

(declare-fun e!2642966 () Bool)

(assert (=> b!4254911 (= e!2642965 e!2642966)))

(declare-fun res!1749065 () Bool)

(assert (=> b!4254911 (=> (not res!1749065) (not e!2642966))))

(declare-fun height!1834 (Conc!14205) Int)

(assert (=> b!4254911 (= res!1749065 (<= (- 1) (- (height!1834 (left!34968 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481))))) (height!1834 (right!35298 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481))))))))))

(declare-fun b!4254912 () Bool)

(declare-fun res!1749064 () Bool)

(assert (=> b!4254912 (=> (not res!1749064) (not e!2642966))))

(assert (=> b!4254912 (= res!1749064 (<= (- (height!1834 (left!34968 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481))))) (height!1834 (right!35298 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481)))))) 1))))

(declare-fun b!4254913 () Bool)

(declare-fun res!1749062 () Bool)

(assert (=> b!4254913 (=> (not res!1749062) (not e!2642966))))

(assert (=> b!4254913 (= res!1749062 (isBalanced!3770 (left!34968 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481))))))))

(declare-fun b!4254914 () Bool)

(declare-fun res!1749061 () Bool)

(assert (=> b!4254914 (=> (not res!1749061) (not e!2642966))))

(declare-fun isEmpty!27933 (Conc!14205) Bool)

(assert (=> b!4254914 (= res!1749061 (not (isEmpty!27933 (left!34968 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481)))))))))

(declare-fun b!4254915 () Bool)

(declare-fun res!1749060 () Bool)

(assert (=> b!4254915 (=> (not res!1749060) (not e!2642966))))

(assert (=> b!4254915 (= res!1749060 (isBalanced!3770 (right!35298 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481))))))))

(declare-fun b!4254916 () Bool)

(assert (=> b!4254916 (= e!2642966 (not (isEmpty!27933 (right!35298 (c!722383 (BalanceConc!28005 (LeafFrom!2 t!3481)))))))))

(assert (= (and d!1250956 (not res!1749063)) b!4254911))

(assert (= (and b!4254911 res!1749065) b!4254912))

(assert (= (and b!4254912 res!1749064) b!4254913))

(assert (= (and b!4254913 res!1749062) b!4254915))

(assert (= (and b!4254915 res!1749060) b!4254914))

(assert (= (and b!4254914 res!1749061) b!4254916))

(declare-fun m!4839515 () Bool)

(assert (=> b!4254916 m!4839515))

(declare-fun m!4839517 () Bool)

(assert (=> b!4254913 m!4839517))

(declare-fun m!4839519 () Bool)

(assert (=> b!4254915 m!4839519))

(declare-fun m!4839521 () Bool)

(assert (=> b!4254912 m!4839521))

(declare-fun m!4839523 () Bool)

(assert (=> b!4254912 m!4839523))

(assert (=> b!4254911 m!4839521))

(assert (=> b!4254911 m!4839523))

(declare-fun m!4839525 () Bool)

(assert (=> b!4254914 m!4839525))

(assert (=> d!1250946 d!1250956))

(check-sat (not b!4254914) tp_is_empty!22789 (not b!4254912) (not b!4254913) (not d!1250954) (not b!4254911) (not b!4254916) (not b!4254915))
(check-sat)
