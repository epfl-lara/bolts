; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407534 () Bool)

(assert start!407534)

(declare-fun res!1749071 () Bool)

(declare-fun e!2642972 () Bool)

(assert (=> start!407534 (=> res!1749071 e!2642972)))

(declare-datatypes ((T!79238 0))(
  ( (T!79239 (val!15190 Int)) )
))
(declare-datatypes ((List!47319 0))(
  ( (Nil!47195) (Cons!47195 (h!52615 T!79238) (t!352848 List!47319)) )
))
(declare-datatypes ((IArray!28419 0))(
  ( (IArray!28420 (innerList!14267 List!47319)) )
))
(declare-datatypes ((Conc!14207 0))(
  ( (Node!14207 (left!34971 Conc!14207) (right!35301 Conc!14207) (csize!28644 Int) (cheight!14418 Int)) (Leaf!21964 (xs!17513 IArray!28419) (csize!28645 Int)) (Empty!14207) )
))
(declare-fun lt!1509590 () Conc!14207)

(declare-fun t!3481 () T!79238)

(declare-datatypes ((BalanceConc!28008 0))(
  ( (BalanceConc!28009 (c!722385 Conc!14207)) )
))
(declare-fun list!16995 (BalanceConc!28008) List!47319)

(assert (=> start!407534 (= res!1749071 (not (= (list!16995 (BalanceConc!28009 lt!1509590)) (Cons!47195 t!3481 Nil!47195))))))

(declare-fun LeafFrom!4 (T!79238) Conc!14207)

(assert (=> start!407534 (= lt!1509590 (LeafFrom!4 t!3481))))

(assert (=> start!407534 e!2642972))

(declare-fun tp_is_empty!22793 () Bool)

(assert (=> start!407534 tp_is_empty!22793))

(declare-fun b!4254922 () Bool)

(declare-fun isBalanced!3772 (Conc!14207) Bool)

(assert (=> b!4254922 (= e!2642972 (not (isBalanced!3772 lt!1509590)))))

(assert (= (and start!407534 (not res!1749071)) b!4254922))

(declare-fun m!4839533 () Bool)

(assert (=> start!407534 m!4839533))

(declare-fun m!4839535 () Bool)

(assert (=> start!407534 m!4839535))

(declare-fun m!4839537 () Bool)

(assert (=> b!4254922 m!4839537))

(check-sat (not b!4254922) (not start!407534) tp_is_empty!22793)
(check-sat)
(get-model)

(declare-fun b!4254953 () Bool)

(declare-fun res!1749105 () Bool)

(declare-fun e!2642983 () Bool)

(assert (=> b!4254953 (=> (not res!1749105) (not e!2642983))))

(declare-fun isEmpty!27935 (Conc!14207) Bool)

(assert (=> b!4254953 (= res!1749105 (not (isEmpty!27935 (left!34971 lt!1509590))))))

(declare-fun b!4254954 () Bool)

(assert (=> b!4254954 (= e!2642983 (not (isEmpty!27935 (right!35301 lt!1509590))))))

(declare-fun d!1250963 () Bool)

(declare-fun res!1749102 () Bool)

(declare-fun e!2642984 () Bool)

(assert (=> d!1250963 (=> res!1749102 e!2642984)))

(get-info :version)

(assert (=> d!1250963 (= res!1749102 (not ((_ is Node!14207) lt!1509590)))))

(assert (=> d!1250963 (= (isBalanced!3772 lt!1509590) e!2642984)))

(declare-fun b!4254955 () Bool)

(assert (=> b!4254955 (= e!2642984 e!2642983)))

(declare-fun res!1749104 () Bool)

(assert (=> b!4254955 (=> (not res!1749104) (not e!2642983))))

(declare-fun height!1836 (Conc!14207) Int)

(assert (=> b!4254955 (= res!1749104 (<= (- 1) (- (height!1836 (left!34971 lt!1509590)) (height!1836 (right!35301 lt!1509590)))))))

(declare-fun b!4254956 () Bool)

(declare-fun res!1749107 () Bool)

(assert (=> b!4254956 (=> (not res!1749107) (not e!2642983))))

(assert (=> b!4254956 (= res!1749107 (<= (- (height!1836 (left!34971 lt!1509590)) (height!1836 (right!35301 lt!1509590))) 1))))

(declare-fun b!4254957 () Bool)

(declare-fun res!1749103 () Bool)

(assert (=> b!4254957 (=> (not res!1749103) (not e!2642983))))

(assert (=> b!4254957 (= res!1749103 (isBalanced!3772 (right!35301 lt!1509590)))))

(declare-fun b!4254958 () Bool)

(declare-fun res!1749106 () Bool)

(assert (=> b!4254958 (=> (not res!1749106) (not e!2642983))))

(assert (=> b!4254958 (= res!1749106 (isBalanced!3772 (left!34971 lt!1509590)))))

(assert (= (and d!1250963 (not res!1749102)) b!4254955))

(assert (= (and b!4254955 res!1749104) b!4254956))

(assert (= (and b!4254956 res!1749107) b!4254958))

(assert (= (and b!4254958 res!1749106) b!4254957))

(assert (= (and b!4254957 res!1749103) b!4254953))

(assert (= (and b!4254953 res!1749105) b!4254954))

(declare-fun m!4839553 () Bool)

(assert (=> b!4254956 m!4839553))

(declare-fun m!4839555 () Bool)

(assert (=> b!4254956 m!4839555))

(declare-fun m!4839557 () Bool)

(assert (=> b!4254954 m!4839557))

(declare-fun m!4839559 () Bool)

(assert (=> b!4254953 m!4839559))

(assert (=> b!4254955 m!4839553))

(assert (=> b!4254955 m!4839555))

(declare-fun m!4839561 () Bool)

(assert (=> b!4254958 m!4839561))

(declare-fun m!4839563 () Bool)

(assert (=> b!4254957 m!4839563))

(assert (=> b!4254922 d!1250963))

(declare-fun d!1250969 () Bool)

(declare-fun list!16997 (Conc!14207) List!47319)

(assert (=> d!1250969 (= (list!16995 (BalanceConc!28009 lt!1509590)) (list!16997 (c!722385 (BalanceConc!28009 lt!1509590))))))

(declare-fun bs!598746 () Bool)

(assert (= bs!598746 d!1250969))

(declare-fun m!4839567 () Bool)

(assert (=> bs!598746 m!4839567))

(assert (=> start!407534 d!1250969))

(declare-fun d!1250971 () Bool)

(declare-fun fill!211 (Int T!79238) IArray!28419)

(assert (=> d!1250971 (= (LeafFrom!4 t!3481) (Leaf!21964 (fill!211 1 t!3481) 1))))

(declare-fun bs!598747 () Bool)

(assert (= bs!598747 d!1250971))

(declare-fun m!4839569 () Bool)

(assert (=> bs!598747 m!4839569))

(assert (=> start!407534 d!1250971))

(check-sat (not b!4254955) (not b!4254956) (not b!4254958) tp_is_empty!22793 (not d!1250969) (not b!4254957) (not b!4254954) (not d!1250971) (not b!4254953))
(check-sat)
(get-model)

(declare-fun b!4254959 () Bool)

(declare-fun res!1749111 () Bool)

(declare-fun e!2642985 () Bool)

(assert (=> b!4254959 (=> (not res!1749111) (not e!2642985))))

(assert (=> b!4254959 (= res!1749111 (not (isEmpty!27935 (left!34971 (left!34971 lt!1509590)))))))

(declare-fun b!4254960 () Bool)

(assert (=> b!4254960 (= e!2642985 (not (isEmpty!27935 (right!35301 (left!34971 lt!1509590)))))))

(declare-fun d!1250975 () Bool)

(declare-fun res!1749108 () Bool)

(declare-fun e!2642986 () Bool)

(assert (=> d!1250975 (=> res!1749108 e!2642986)))

(assert (=> d!1250975 (= res!1749108 (not ((_ is Node!14207) (left!34971 lt!1509590))))))

(assert (=> d!1250975 (= (isBalanced!3772 (left!34971 lt!1509590)) e!2642986)))

(declare-fun b!4254961 () Bool)

(assert (=> b!4254961 (= e!2642986 e!2642985)))

(declare-fun res!1749110 () Bool)

(assert (=> b!4254961 (=> (not res!1749110) (not e!2642985))))

(assert (=> b!4254961 (= res!1749110 (<= (- 1) (- (height!1836 (left!34971 (left!34971 lt!1509590))) (height!1836 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun b!4254962 () Bool)

(declare-fun res!1749113 () Bool)

(assert (=> b!4254962 (=> (not res!1749113) (not e!2642985))))

(assert (=> b!4254962 (= res!1749113 (<= (- (height!1836 (left!34971 (left!34971 lt!1509590))) (height!1836 (right!35301 (left!34971 lt!1509590)))) 1))))

(declare-fun b!4254963 () Bool)

(declare-fun res!1749109 () Bool)

(assert (=> b!4254963 (=> (not res!1749109) (not e!2642985))))

(assert (=> b!4254963 (= res!1749109 (isBalanced!3772 (right!35301 (left!34971 lt!1509590))))))

(declare-fun b!4254964 () Bool)

(declare-fun res!1749112 () Bool)

(assert (=> b!4254964 (=> (not res!1749112) (not e!2642985))))

(assert (=> b!4254964 (= res!1749112 (isBalanced!3772 (left!34971 (left!34971 lt!1509590))))))

(assert (= (and d!1250975 (not res!1749108)) b!4254961))

(assert (= (and b!4254961 res!1749110) b!4254962))

(assert (= (and b!4254962 res!1749113) b!4254964))

(assert (= (and b!4254964 res!1749112) b!4254963))

(assert (= (and b!4254963 res!1749109) b!4254959))

(assert (= (and b!4254959 res!1749111) b!4254960))

(declare-fun m!4839571 () Bool)

(assert (=> b!4254962 m!4839571))

(declare-fun m!4839573 () Bool)

(assert (=> b!4254962 m!4839573))

(declare-fun m!4839575 () Bool)

(assert (=> b!4254960 m!4839575))

(declare-fun m!4839577 () Bool)

(assert (=> b!4254959 m!4839577))

(assert (=> b!4254961 m!4839571))

(assert (=> b!4254961 m!4839573))

(declare-fun m!4839579 () Bool)

(assert (=> b!4254964 m!4839579))

(declare-fun m!4839581 () Bool)

(assert (=> b!4254963 m!4839581))

(assert (=> b!4254958 d!1250975))

(declare-fun b!4254965 () Bool)

(declare-fun res!1749117 () Bool)

(declare-fun e!2642987 () Bool)

(assert (=> b!4254965 (=> (not res!1749117) (not e!2642987))))

(assert (=> b!4254965 (= res!1749117 (not (isEmpty!27935 (left!34971 (right!35301 lt!1509590)))))))

(declare-fun b!4254966 () Bool)

(assert (=> b!4254966 (= e!2642987 (not (isEmpty!27935 (right!35301 (right!35301 lt!1509590)))))))

(declare-fun d!1250977 () Bool)

(declare-fun res!1749114 () Bool)

(declare-fun e!2642988 () Bool)

(assert (=> d!1250977 (=> res!1749114 e!2642988)))

(assert (=> d!1250977 (= res!1749114 (not ((_ is Node!14207) (right!35301 lt!1509590))))))

(assert (=> d!1250977 (= (isBalanced!3772 (right!35301 lt!1509590)) e!2642988)))

(declare-fun b!4254967 () Bool)

(assert (=> b!4254967 (= e!2642988 e!2642987)))

(declare-fun res!1749116 () Bool)

(assert (=> b!4254967 (=> (not res!1749116) (not e!2642987))))

(assert (=> b!4254967 (= res!1749116 (<= (- 1) (- (height!1836 (left!34971 (right!35301 lt!1509590))) (height!1836 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun b!4254968 () Bool)

(declare-fun res!1749119 () Bool)

(assert (=> b!4254968 (=> (not res!1749119) (not e!2642987))))

(assert (=> b!4254968 (= res!1749119 (<= (- (height!1836 (left!34971 (right!35301 lt!1509590))) (height!1836 (right!35301 (right!35301 lt!1509590)))) 1))))

(declare-fun b!4254969 () Bool)

(declare-fun res!1749115 () Bool)

(assert (=> b!4254969 (=> (not res!1749115) (not e!2642987))))

(assert (=> b!4254969 (= res!1749115 (isBalanced!3772 (right!35301 (right!35301 lt!1509590))))))

(declare-fun b!4254970 () Bool)

(declare-fun res!1749118 () Bool)

(assert (=> b!4254970 (=> (not res!1749118) (not e!2642987))))

(assert (=> b!4254970 (= res!1749118 (isBalanced!3772 (left!34971 (right!35301 lt!1509590))))))

(assert (= (and d!1250977 (not res!1749114)) b!4254967))

(assert (= (and b!4254967 res!1749116) b!4254968))

(assert (= (and b!4254968 res!1749119) b!4254970))

(assert (= (and b!4254970 res!1749118) b!4254969))

(assert (= (and b!4254969 res!1749115) b!4254965))

(assert (= (and b!4254965 res!1749117) b!4254966))

(declare-fun m!4839583 () Bool)

(assert (=> b!4254968 m!4839583))

(declare-fun m!4839585 () Bool)

(assert (=> b!4254968 m!4839585))

(declare-fun m!4839587 () Bool)

(assert (=> b!4254966 m!4839587))

(declare-fun m!4839589 () Bool)

(assert (=> b!4254965 m!4839589))

(assert (=> b!4254967 m!4839583))

(assert (=> b!4254967 m!4839585))

(declare-fun m!4839591 () Bool)

(assert (=> b!4254970 m!4839591))

(declare-fun m!4839593 () Bool)

(assert (=> b!4254969 m!4839593))

(assert (=> b!4254957 d!1250977))

(declare-fun b!4254986 () Bool)

(declare-fun e!2642995 () List!47319)

(declare-fun e!2642996 () List!47319)

(assert (=> b!4254986 (= e!2642995 e!2642996)))

(declare-fun c!722391 () Bool)

(assert (=> b!4254986 (= c!722391 ((_ is Leaf!21964) (c!722385 (BalanceConc!28009 lt!1509590))))))

(declare-fun d!1250979 () Bool)

(declare-fun c!722390 () Bool)

(assert (=> d!1250979 (= c!722390 ((_ is Empty!14207) (c!722385 (BalanceConc!28009 lt!1509590))))))

(assert (=> d!1250979 (= (list!16997 (c!722385 (BalanceConc!28009 lt!1509590))) e!2642995)))

(declare-fun b!4254988 () Bool)

(declare-fun ++!11998 (List!47319 List!47319) List!47319)

(assert (=> b!4254988 (= e!2642996 (++!11998 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun b!4254987 () Bool)

(declare-fun list!16999 (IArray!28419) List!47319)

(assert (=> b!4254987 (= e!2642996 (list!16999 (xs!17513 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(declare-fun b!4254985 () Bool)

(assert (=> b!4254985 (= e!2642995 Nil!47195)))

(assert (= (and d!1250979 c!722390) b!4254985))

(assert (= (and d!1250979 (not c!722390)) b!4254986))

(assert (= (and b!4254986 c!722391) b!4254987))

(assert (= (and b!4254986 (not c!722391)) b!4254988))

(declare-fun m!4839611 () Bool)

(assert (=> b!4254988 m!4839611))

(declare-fun m!4839613 () Bool)

(assert (=> b!4254988 m!4839613))

(assert (=> b!4254988 m!4839611))

(assert (=> b!4254988 m!4839613))

(declare-fun m!4839615 () Bool)

(assert (=> b!4254988 m!4839615))

(declare-fun m!4839617 () Bool)

(assert (=> b!4254987 m!4839617))

(assert (=> d!1250969 d!1250979))

(declare-fun d!1250989 () Bool)

(assert (=> d!1250989 (= (height!1836 (left!34971 lt!1509590)) (ite ((_ is Empty!14207) (left!34971 lt!1509590)) 0 (ite ((_ is Leaf!21964) (left!34971 lt!1509590)) 1 (cheight!14418 (left!34971 lt!1509590)))))))

(assert (=> b!4254956 d!1250989))

(declare-fun d!1250991 () Bool)

(assert (=> d!1250991 (= (height!1836 (right!35301 lt!1509590)) (ite ((_ is Empty!14207) (right!35301 lt!1509590)) 0 (ite ((_ is Leaf!21964) (right!35301 lt!1509590)) 1 (cheight!14418 (right!35301 lt!1509590)))))))

(assert (=> b!4254956 d!1250991))

(assert (=> b!4254955 d!1250989))

(assert (=> b!4254955 d!1250991))

(declare-fun d!1250993 () Bool)

(declare-fun lt!1509596 () IArray!28419)

(declare-fun fill!213 (Int T!79238) List!47319)

(assert (=> d!1250993 (= lt!1509596 (IArray!28420 (fill!213 1 t!3481)))))

(declare-fun choose!25964 (Int T!79238) IArray!28419)

(assert (=> d!1250993 (= lt!1509596 (choose!25964 1 t!3481))))

(assert (=> d!1250993 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1250993 (= (fill!211 1 t!3481) lt!1509596)))

(declare-fun bs!598749 () Bool)

(assert (= bs!598749 d!1250993))

(declare-fun m!4839627 () Bool)

(assert (=> bs!598749 m!4839627))

(declare-fun m!4839629 () Bool)

(assert (=> bs!598749 m!4839629))

(assert (=> d!1250971 d!1250993))

(declare-fun d!1250997 () Bool)

(declare-fun lt!1509603 () Bool)

(declare-fun isEmpty!27937 (List!47319) Bool)

(assert (=> d!1250997 (= lt!1509603 (isEmpty!27937 (list!16997 (right!35301 lt!1509590))))))

(declare-fun size!34536 (Conc!14207) Int)

(assert (=> d!1250997 (= lt!1509603 (= (size!34536 (right!35301 lt!1509590)) 0))))

(assert (=> d!1250997 (= (isEmpty!27935 (right!35301 lt!1509590)) lt!1509603)))

(declare-fun bs!598752 () Bool)

(assert (= bs!598752 d!1250997))

(declare-fun m!4839655 () Bool)

(assert (=> bs!598752 m!4839655))

(assert (=> bs!598752 m!4839655))

(declare-fun m!4839657 () Bool)

(assert (=> bs!598752 m!4839657))

(declare-fun m!4839659 () Bool)

(assert (=> bs!598752 m!4839659))

(assert (=> b!4254954 d!1250997))

(declare-fun d!1251003 () Bool)

(declare-fun lt!1509604 () Bool)

(assert (=> d!1251003 (= lt!1509604 (isEmpty!27937 (list!16997 (left!34971 lt!1509590))))))

(assert (=> d!1251003 (= lt!1509604 (= (size!34536 (left!34971 lt!1509590)) 0))))

(assert (=> d!1251003 (= (isEmpty!27935 (left!34971 lt!1509590)) lt!1509604)))

(declare-fun bs!598753 () Bool)

(assert (= bs!598753 d!1251003))

(declare-fun m!4839661 () Bool)

(assert (=> bs!598753 m!4839661))

(assert (=> bs!598753 m!4839661))

(declare-fun m!4839663 () Bool)

(assert (=> bs!598753 m!4839663))

(declare-fun m!4839665 () Bool)

(assert (=> bs!598753 m!4839665))

(assert (=> b!4254953 d!1251003))

(check-sat (not b!4254959) (not b!4254970) (not b!4254964) (not b!4254968) (not b!4254967) (not b!4254963) (not b!4254961) (not d!1250997) (not d!1250993) (not b!4254966) (not d!1251003) (not b!4254969) tp_is_empty!22793 (not b!4254988) (not b!4254965) (not b!4254962) (not b!4254987) (not b!4254960))
(check-sat)
(get-model)

(declare-fun d!1251007 () Bool)

(assert (=> d!1251007 (= (height!1836 (left!34971 (right!35301 lt!1509590))) (ite ((_ is Empty!14207) (left!34971 (right!35301 lt!1509590))) 0 (ite ((_ is Leaf!21964) (left!34971 (right!35301 lt!1509590))) 1 (cheight!14418 (left!34971 (right!35301 lt!1509590))))))))

(assert (=> b!4254967 d!1251007))

(declare-fun d!1251009 () Bool)

(assert (=> d!1251009 (= (height!1836 (right!35301 (right!35301 lt!1509590))) (ite ((_ is Empty!14207) (right!35301 (right!35301 lt!1509590))) 0 (ite ((_ is Leaf!21964) (right!35301 (right!35301 lt!1509590))) 1 (cheight!14418 (right!35301 (right!35301 lt!1509590))))))))

(assert (=> b!4254967 d!1251009))

(declare-fun d!1251011 () Bool)

(declare-fun lt!1509605 () Bool)

(assert (=> d!1251011 (= lt!1509605 (isEmpty!27937 (list!16997 (right!35301 (right!35301 lt!1509590)))))))

(assert (=> d!1251011 (= lt!1509605 (= (size!34536 (right!35301 (right!35301 lt!1509590))) 0))))

(assert (=> d!1251011 (= (isEmpty!27935 (right!35301 (right!35301 lt!1509590))) lt!1509605)))

(declare-fun bs!598754 () Bool)

(assert (= bs!598754 d!1251011))

(declare-fun m!4839667 () Bool)

(assert (=> bs!598754 m!4839667))

(assert (=> bs!598754 m!4839667))

(declare-fun m!4839669 () Bool)

(assert (=> bs!598754 m!4839669))

(declare-fun m!4839671 () Bool)

(assert (=> bs!598754 m!4839671))

(assert (=> b!4254966 d!1251011))

(declare-fun d!1251013 () Bool)

(assert (=> d!1251013 (= (isEmpty!27937 (list!16997 (left!34971 lt!1509590))) ((_ is Nil!47195) (list!16997 (left!34971 lt!1509590))))))

(assert (=> d!1251003 d!1251013))

(declare-fun b!4255008 () Bool)

(declare-fun e!2643005 () List!47319)

(declare-fun e!2643006 () List!47319)

(assert (=> b!4255008 (= e!2643005 e!2643006)))

(declare-fun c!722399 () Bool)

(assert (=> b!4255008 (= c!722399 ((_ is Leaf!21964) (left!34971 lt!1509590)))))

(declare-fun d!1251015 () Bool)

(declare-fun c!722398 () Bool)

(assert (=> d!1251015 (= c!722398 ((_ is Empty!14207) (left!34971 lt!1509590)))))

(assert (=> d!1251015 (= (list!16997 (left!34971 lt!1509590)) e!2643005)))

(declare-fun b!4255010 () Bool)

(assert (=> b!4255010 (= e!2643006 (++!11998 (list!16997 (left!34971 (left!34971 lt!1509590))) (list!16997 (right!35301 (left!34971 lt!1509590)))))))

(declare-fun b!4255009 () Bool)

(assert (=> b!4255009 (= e!2643006 (list!16999 (xs!17513 (left!34971 lt!1509590))))))

(declare-fun b!4255007 () Bool)

(assert (=> b!4255007 (= e!2643005 Nil!47195)))

(assert (= (and d!1251015 c!722398) b!4255007))

(assert (= (and d!1251015 (not c!722398)) b!4255008))

(assert (= (and b!4255008 c!722399) b!4255009))

(assert (= (and b!4255008 (not c!722399)) b!4255010))

(declare-fun m!4839673 () Bool)

(assert (=> b!4255010 m!4839673))

(declare-fun m!4839675 () Bool)

(assert (=> b!4255010 m!4839675))

(assert (=> b!4255010 m!4839673))

(assert (=> b!4255010 m!4839675))

(declare-fun m!4839677 () Bool)

(assert (=> b!4255010 m!4839677))

(declare-fun m!4839679 () Bool)

(assert (=> b!4255009 m!4839679))

(assert (=> d!1251003 d!1251015))

(declare-fun d!1251017 () Bool)

(declare-fun lt!1509610 () Int)

(declare-fun size!34538 (List!47319) Int)

(assert (=> d!1251017 (= lt!1509610 (size!34538 (list!16997 (left!34971 lt!1509590))))))

(assert (=> d!1251017 (= lt!1509610 (ite ((_ is Empty!14207) (left!34971 lt!1509590)) 0 (ite ((_ is Leaf!21964) (left!34971 lt!1509590)) (csize!28645 (left!34971 lt!1509590)) (csize!28644 (left!34971 lt!1509590)))))))

(assert (=> d!1251017 (= (size!34536 (left!34971 lt!1509590)) lt!1509610)))

(declare-fun bs!598755 () Bool)

(assert (= bs!598755 d!1251017))

(assert (=> bs!598755 m!4839661))

(assert (=> bs!598755 m!4839661))

(declare-fun m!4839681 () Bool)

(assert (=> bs!598755 m!4839681))

(assert (=> d!1251003 d!1251017))

(declare-fun b!4255019 () Bool)

(declare-fun res!1749139 () Bool)

(declare-fun e!2643011 () Bool)

(assert (=> b!4255019 (=> (not res!1749139) (not e!2643011))))

(assert (=> b!4255019 (= res!1749139 (not (isEmpty!27935 (left!34971 (left!34971 (right!35301 lt!1509590))))))))

(declare-fun b!4255020 () Bool)

(assert (=> b!4255020 (= e!2643011 (not (isEmpty!27935 (right!35301 (left!34971 (right!35301 lt!1509590))))))))

(declare-fun d!1251019 () Bool)

(declare-fun res!1749136 () Bool)

(declare-fun e!2643012 () Bool)

(assert (=> d!1251019 (=> res!1749136 e!2643012)))

(assert (=> d!1251019 (= res!1749136 (not ((_ is Node!14207) (left!34971 (right!35301 lt!1509590)))))))

(assert (=> d!1251019 (= (isBalanced!3772 (left!34971 (right!35301 lt!1509590))) e!2643012)))

(declare-fun b!4255021 () Bool)

(assert (=> b!4255021 (= e!2643012 e!2643011)))

(declare-fun res!1749138 () Bool)

(assert (=> b!4255021 (=> (not res!1749138) (not e!2643011))))

(assert (=> b!4255021 (= res!1749138 (<= (- 1) (- (height!1836 (left!34971 (left!34971 (right!35301 lt!1509590)))) (height!1836 (right!35301 (left!34971 (right!35301 lt!1509590)))))))))

(declare-fun b!4255022 () Bool)

(declare-fun res!1749141 () Bool)

(assert (=> b!4255022 (=> (not res!1749141) (not e!2643011))))

(assert (=> b!4255022 (= res!1749141 (<= (- (height!1836 (left!34971 (left!34971 (right!35301 lt!1509590)))) (height!1836 (right!35301 (left!34971 (right!35301 lt!1509590))))) 1))))

(declare-fun b!4255023 () Bool)

(declare-fun res!1749137 () Bool)

(assert (=> b!4255023 (=> (not res!1749137) (not e!2643011))))

(assert (=> b!4255023 (= res!1749137 (isBalanced!3772 (right!35301 (left!34971 (right!35301 lt!1509590)))))))

(declare-fun b!4255024 () Bool)

(declare-fun res!1749140 () Bool)

(assert (=> b!4255024 (=> (not res!1749140) (not e!2643011))))

(assert (=> b!4255024 (= res!1749140 (isBalanced!3772 (left!34971 (left!34971 (right!35301 lt!1509590)))))))

(assert (= (and d!1251019 (not res!1749136)) b!4255021))

(assert (= (and b!4255021 res!1749138) b!4255022))

(assert (= (and b!4255022 res!1749141) b!4255024))

(assert (= (and b!4255024 res!1749140) b!4255023))

(assert (= (and b!4255023 res!1749137) b!4255019))

(assert (= (and b!4255019 res!1749139) b!4255020))

(declare-fun m!4839683 () Bool)

(assert (=> b!4255022 m!4839683))

(declare-fun m!4839685 () Bool)

(assert (=> b!4255022 m!4839685))

(declare-fun m!4839687 () Bool)

(assert (=> b!4255020 m!4839687))

(declare-fun m!4839689 () Bool)

(assert (=> b!4255019 m!4839689))

(assert (=> b!4255021 m!4839683))

(assert (=> b!4255021 m!4839685))

(declare-fun m!4839691 () Bool)

(assert (=> b!4255024 m!4839691))

(declare-fun m!4839693 () Bool)

(assert (=> b!4255023 m!4839693))

(assert (=> b!4254970 d!1251019))

(declare-fun d!1251021 () Bool)

(declare-fun lt!1509611 () Bool)

(assert (=> d!1251021 (= lt!1509611 (isEmpty!27937 (list!16997 (right!35301 (left!34971 lt!1509590)))))))

(assert (=> d!1251021 (= lt!1509611 (= (size!34536 (right!35301 (left!34971 lt!1509590))) 0))))

(assert (=> d!1251021 (= (isEmpty!27935 (right!35301 (left!34971 lt!1509590))) lt!1509611)))

(declare-fun bs!598756 () Bool)

(assert (= bs!598756 d!1251021))

(assert (=> bs!598756 m!4839675))

(assert (=> bs!598756 m!4839675))

(declare-fun m!4839695 () Bool)

(assert (=> bs!598756 m!4839695))

(declare-fun m!4839697 () Bool)

(assert (=> bs!598756 m!4839697))

(assert (=> b!4254960 d!1251021))

(declare-fun b!4255025 () Bool)

(declare-fun res!1749145 () Bool)

(declare-fun e!2643013 () Bool)

(assert (=> b!4255025 (=> (not res!1749145) (not e!2643013))))

(assert (=> b!4255025 (= res!1749145 (not (isEmpty!27935 (left!34971 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun b!4255026 () Bool)

(assert (=> b!4255026 (= e!2643013 (not (isEmpty!27935 (right!35301 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun d!1251023 () Bool)

(declare-fun res!1749142 () Bool)

(declare-fun e!2643014 () Bool)

(assert (=> d!1251023 (=> res!1749142 e!2643014)))

(assert (=> d!1251023 (= res!1749142 (not ((_ is Node!14207) (right!35301 (right!35301 lt!1509590)))))))

(assert (=> d!1251023 (= (isBalanced!3772 (right!35301 (right!35301 lt!1509590))) e!2643014)))

(declare-fun b!4255027 () Bool)

(assert (=> b!4255027 (= e!2643014 e!2643013)))

(declare-fun res!1749144 () Bool)

(assert (=> b!4255027 (=> (not res!1749144) (not e!2643013))))

(assert (=> b!4255027 (= res!1749144 (<= (- 1) (- (height!1836 (left!34971 (right!35301 (right!35301 lt!1509590)))) (height!1836 (right!35301 (right!35301 (right!35301 lt!1509590)))))))))

(declare-fun b!4255028 () Bool)

(declare-fun res!1749147 () Bool)

(assert (=> b!4255028 (=> (not res!1749147) (not e!2643013))))

(assert (=> b!4255028 (= res!1749147 (<= (- (height!1836 (left!34971 (right!35301 (right!35301 lt!1509590)))) (height!1836 (right!35301 (right!35301 (right!35301 lt!1509590))))) 1))))

(declare-fun b!4255029 () Bool)

(declare-fun res!1749143 () Bool)

(assert (=> b!4255029 (=> (not res!1749143) (not e!2643013))))

(assert (=> b!4255029 (= res!1749143 (isBalanced!3772 (right!35301 (right!35301 (right!35301 lt!1509590)))))))

(declare-fun b!4255030 () Bool)

(declare-fun res!1749146 () Bool)

(assert (=> b!4255030 (=> (not res!1749146) (not e!2643013))))

(assert (=> b!4255030 (= res!1749146 (isBalanced!3772 (left!34971 (right!35301 (right!35301 lt!1509590)))))))

(assert (= (and d!1251023 (not res!1749142)) b!4255027))

(assert (= (and b!4255027 res!1749144) b!4255028))

(assert (= (and b!4255028 res!1749147) b!4255030))

(assert (= (and b!4255030 res!1749146) b!4255029))

(assert (= (and b!4255029 res!1749143) b!4255025))

(assert (= (and b!4255025 res!1749145) b!4255026))

(declare-fun m!4839699 () Bool)

(assert (=> b!4255028 m!4839699))

(declare-fun m!4839701 () Bool)

(assert (=> b!4255028 m!4839701))

(declare-fun m!4839703 () Bool)

(assert (=> b!4255026 m!4839703))

(declare-fun m!4839705 () Bool)

(assert (=> b!4255025 m!4839705))

(assert (=> b!4255027 m!4839699))

(assert (=> b!4255027 m!4839701))

(declare-fun m!4839707 () Bool)

(assert (=> b!4255030 m!4839707))

(declare-fun m!4839711 () Bool)

(assert (=> b!4255029 m!4839711))

(assert (=> b!4254969 d!1251023))

(declare-fun d!1251025 () Bool)

(declare-fun lt!1509613 () Bool)

(assert (=> d!1251025 (= lt!1509613 (isEmpty!27937 (list!16997 (left!34971 (left!34971 lt!1509590)))))))

(assert (=> d!1251025 (= lt!1509613 (= (size!34536 (left!34971 (left!34971 lt!1509590))) 0))))

(assert (=> d!1251025 (= (isEmpty!27935 (left!34971 (left!34971 lt!1509590))) lt!1509613)))

(declare-fun bs!598757 () Bool)

(assert (= bs!598757 d!1251025))

(assert (=> bs!598757 m!4839673))

(assert (=> bs!598757 m!4839673))

(declare-fun m!4839721 () Bool)

(assert (=> bs!598757 m!4839721))

(declare-fun m!4839725 () Bool)

(assert (=> bs!598757 m!4839725))

(assert (=> b!4254959 d!1251025))

(declare-fun d!1251027 () Bool)

(declare-fun e!2643029 () Bool)

(assert (=> d!1251027 e!2643029))

(declare-fun res!1749154 () Bool)

(assert (=> d!1251027 (=> (not res!1749154) (not e!2643029))))

(declare-fun lt!1509619 () List!47319)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7414 (List!47319) (InoxSet T!79238))

(assert (=> d!1251027 (= res!1749154 (= (content!7414 lt!1509619) (ite (<= 1 0) ((as const (Array T!79238 Bool)) false) (store ((as const (Array T!79238 Bool)) false) t!3481 true))))))

(declare-fun e!2643030 () List!47319)

(assert (=> d!1251027 (= lt!1509619 e!2643030)))

(declare-fun c!722411 () Bool)

(assert (=> d!1251027 (= c!722411 (<= 1 0))))

(assert (=> d!1251027 (= (fill!213 1 t!3481) lt!1509619)))

(declare-fun b!4255055 () Bool)

(assert (=> b!4255055 (= e!2643030 Nil!47195)))

(declare-fun b!4255056 () Bool)

(assert (=> b!4255056 (= e!2643030 (Cons!47195 t!3481 (fill!213 (- 1 1) t!3481)))))

(declare-fun b!4255057 () Bool)

(assert (=> b!4255057 (= e!2643029 (= (size!34538 lt!1509619) (ite (<= 1 0) 0 1)))))

(assert (= (and d!1251027 c!722411) b!4255055))

(assert (= (and d!1251027 (not c!722411)) b!4255056))

(assert (= (and d!1251027 res!1749154) b!4255057))

(declare-fun m!4839751 () Bool)

(assert (=> d!1251027 m!4839751))

(declare-fun m!4839753 () Bool)

(assert (=> d!1251027 m!4839753))

(declare-fun m!4839755 () Bool)

(assert (=> b!4255056 m!4839755))

(declare-fun m!4839757 () Bool)

(assert (=> b!4255057 m!4839757))

(assert (=> d!1250993 d!1251027))

(declare-fun d!1251037 () Bool)

(declare-fun _$14!693 () IArray!28419)

(assert (=> d!1251037 (= _$14!693 (IArray!28420 (fill!213 1 t!3481)))))

(declare-fun e!2643035 () Bool)

(declare-fun inv!61986 (IArray!28419) Bool)

(assert (=> d!1251037 (and (inv!61986 _$14!693) e!2643035)))

(assert (=> d!1251037 (= (choose!25964 1 t!3481) _$14!693)))

(declare-fun b!4255063 () Bool)

(declare-fun tp!1306025 () Bool)

(assert (=> b!4255063 (= e!2643035 tp!1306025)))

(assert (= d!1251037 b!4255063))

(assert (=> d!1251037 m!4839627))

(declare-fun m!4839767 () Bool)

(assert (=> d!1251037 m!4839767))

(assert (=> d!1250993 d!1251037))

(declare-fun d!1251041 () Bool)

(assert (=> d!1251041 (= (isEmpty!27937 (list!16997 (right!35301 lt!1509590))) ((_ is Nil!47195) (list!16997 (right!35301 lt!1509590))))))

(assert (=> d!1250997 d!1251041))

(declare-fun b!4255067 () Bool)

(declare-fun e!2643038 () List!47319)

(declare-fun e!2643039 () List!47319)

(assert (=> b!4255067 (= e!2643038 e!2643039)))

(declare-fun c!722414 () Bool)

(assert (=> b!4255067 (= c!722414 ((_ is Leaf!21964) (right!35301 lt!1509590)))))

(declare-fun d!1251043 () Bool)

(declare-fun c!722413 () Bool)

(assert (=> d!1251043 (= c!722413 ((_ is Empty!14207) (right!35301 lt!1509590)))))

(assert (=> d!1251043 (= (list!16997 (right!35301 lt!1509590)) e!2643038)))

(declare-fun b!4255069 () Bool)

(assert (=> b!4255069 (= e!2643039 (++!11998 (list!16997 (left!34971 (right!35301 lt!1509590))) (list!16997 (right!35301 (right!35301 lt!1509590)))))))

(declare-fun b!4255068 () Bool)

(assert (=> b!4255068 (= e!2643039 (list!16999 (xs!17513 (right!35301 lt!1509590))))))

(declare-fun b!4255066 () Bool)

(assert (=> b!4255066 (= e!2643038 Nil!47195)))

(assert (= (and d!1251043 c!722413) b!4255066))

(assert (= (and d!1251043 (not c!722413)) b!4255067))

(assert (= (and b!4255067 c!722414) b!4255068))

(assert (= (and b!4255067 (not c!722414)) b!4255069))

(declare-fun m!4839769 () Bool)

(assert (=> b!4255069 m!4839769))

(assert (=> b!4255069 m!4839667))

(assert (=> b!4255069 m!4839769))

(assert (=> b!4255069 m!4839667))

(declare-fun m!4839771 () Bool)

(assert (=> b!4255069 m!4839771))

(declare-fun m!4839773 () Bool)

(assert (=> b!4255068 m!4839773))

(assert (=> d!1250997 d!1251043))

(declare-fun d!1251045 () Bool)

(declare-fun lt!1509621 () Int)

(assert (=> d!1251045 (= lt!1509621 (size!34538 (list!16997 (right!35301 lt!1509590))))))

(assert (=> d!1251045 (= lt!1509621 (ite ((_ is Empty!14207) (right!35301 lt!1509590)) 0 (ite ((_ is Leaf!21964) (right!35301 lt!1509590)) (csize!28645 (right!35301 lt!1509590)) (csize!28644 (right!35301 lt!1509590)))))))

(assert (=> d!1251045 (= (size!34536 (right!35301 lt!1509590)) lt!1509621)))

(declare-fun bs!598759 () Bool)

(assert (= bs!598759 d!1251045))

(assert (=> bs!598759 m!4839655))

(assert (=> bs!598759 m!4839655))

(declare-fun m!4839775 () Bool)

(assert (=> bs!598759 m!4839775))

(assert (=> d!1250997 d!1251045))

(assert (=> b!4254968 d!1251007))

(assert (=> b!4254968 d!1251009))

(declare-fun b!4255070 () Bool)

(declare-fun res!1749159 () Bool)

(declare-fun e!2643040 () Bool)

(assert (=> b!4255070 (=> (not res!1749159) (not e!2643040))))

(assert (=> b!4255070 (= res!1749159 (not (isEmpty!27935 (left!34971 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun b!4255071 () Bool)

(assert (=> b!4255071 (= e!2643040 (not (isEmpty!27935 (right!35301 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun d!1251047 () Bool)

(declare-fun res!1749156 () Bool)

(declare-fun e!2643041 () Bool)

(assert (=> d!1251047 (=> res!1749156 e!2643041)))

(assert (=> d!1251047 (= res!1749156 (not ((_ is Node!14207) (right!35301 (left!34971 lt!1509590)))))))

(assert (=> d!1251047 (= (isBalanced!3772 (right!35301 (left!34971 lt!1509590))) e!2643041)))

(declare-fun b!4255072 () Bool)

(assert (=> b!4255072 (= e!2643041 e!2643040)))

(declare-fun res!1749158 () Bool)

(assert (=> b!4255072 (=> (not res!1749158) (not e!2643040))))

(assert (=> b!4255072 (= res!1749158 (<= (- 1) (- (height!1836 (left!34971 (right!35301 (left!34971 lt!1509590)))) (height!1836 (right!35301 (right!35301 (left!34971 lt!1509590)))))))))

(declare-fun b!4255073 () Bool)

(declare-fun res!1749161 () Bool)

(assert (=> b!4255073 (=> (not res!1749161) (not e!2643040))))

(assert (=> b!4255073 (= res!1749161 (<= (- (height!1836 (left!34971 (right!35301 (left!34971 lt!1509590)))) (height!1836 (right!35301 (right!35301 (left!34971 lt!1509590))))) 1))))

(declare-fun b!4255074 () Bool)

(declare-fun res!1749157 () Bool)

(assert (=> b!4255074 (=> (not res!1749157) (not e!2643040))))

(assert (=> b!4255074 (= res!1749157 (isBalanced!3772 (right!35301 (right!35301 (left!34971 lt!1509590)))))))

(declare-fun b!4255075 () Bool)

(declare-fun res!1749160 () Bool)

(assert (=> b!4255075 (=> (not res!1749160) (not e!2643040))))

(assert (=> b!4255075 (= res!1749160 (isBalanced!3772 (left!34971 (right!35301 (left!34971 lt!1509590)))))))

(assert (= (and d!1251047 (not res!1749156)) b!4255072))

(assert (= (and b!4255072 res!1749158) b!4255073))

(assert (= (and b!4255073 res!1749161) b!4255075))

(assert (= (and b!4255075 res!1749160) b!4255074))

(assert (= (and b!4255074 res!1749157) b!4255070))

(assert (= (and b!4255070 res!1749159) b!4255071))

(declare-fun m!4839781 () Bool)

(assert (=> b!4255073 m!4839781))

(declare-fun m!4839785 () Bool)

(assert (=> b!4255073 m!4839785))

(declare-fun m!4839789 () Bool)

(assert (=> b!4255071 m!4839789))

(declare-fun m!4839791 () Bool)

(assert (=> b!4255070 m!4839791))

(assert (=> b!4255072 m!4839781))

(assert (=> b!4255072 m!4839785))

(declare-fun m!4839793 () Bool)

(assert (=> b!4255075 m!4839793))

(declare-fun m!4839795 () Bool)

(assert (=> b!4255074 m!4839795))

(assert (=> b!4254963 d!1251047))

(declare-fun d!1251053 () Bool)

(assert (=> d!1251053 (= (height!1836 (left!34971 (left!34971 lt!1509590))) (ite ((_ is Empty!14207) (left!34971 (left!34971 lt!1509590))) 0 (ite ((_ is Leaf!21964) (left!34971 (left!34971 lt!1509590))) 1 (cheight!14418 (left!34971 (left!34971 lt!1509590))))))))

(assert (=> b!4254962 d!1251053))

(declare-fun d!1251055 () Bool)

(assert (=> d!1251055 (= (height!1836 (right!35301 (left!34971 lt!1509590))) (ite ((_ is Empty!14207) (right!35301 (left!34971 lt!1509590))) 0 (ite ((_ is Leaf!21964) (right!35301 (left!34971 lt!1509590))) 1 (cheight!14418 (right!35301 (left!34971 lt!1509590))))))))

(assert (=> b!4254962 d!1251055))

(assert (=> b!4254961 d!1251053))

(assert (=> b!4254961 d!1251055))

(declare-fun d!1251057 () Bool)

(declare-fun lt!1509623 () Bool)

(assert (=> d!1251057 (= lt!1509623 (isEmpty!27937 (list!16997 (left!34971 (right!35301 lt!1509590)))))))

(assert (=> d!1251057 (= lt!1509623 (= (size!34536 (left!34971 (right!35301 lt!1509590))) 0))))

(assert (=> d!1251057 (= (isEmpty!27935 (left!34971 (right!35301 lt!1509590))) lt!1509623)))

(declare-fun bs!598761 () Bool)

(assert (= bs!598761 d!1251057))

(assert (=> bs!598761 m!4839769))

(assert (=> bs!598761 m!4839769))

(declare-fun m!4839797 () Bool)

(assert (=> bs!598761 m!4839797))

(declare-fun m!4839799 () Bool)

(assert (=> bs!598761 m!4839799))

(assert (=> b!4254965 d!1251057))

(declare-fun b!4255102 () Bool)

(declare-fun e!2643053 () List!47319)

(assert (=> b!4255102 (= e!2643053 (Cons!47195 (h!52615 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (++!11998 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255104 () Bool)

(declare-fun e!2643054 () Bool)

(declare-fun lt!1509630 () List!47319)

(assert (=> b!4255104 (= e!2643054 (or (not (= (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))) Nil!47195)) (= lt!1509630 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255101 () Bool)

(assert (=> b!4255101 (= e!2643053 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(declare-fun b!4255103 () Bool)

(declare-fun res!1749178 () Bool)

(assert (=> b!4255103 (=> (not res!1749178) (not e!2643054))))

(assert (=> b!4255103 (= res!1749178 (= (size!34538 lt!1509630) (+ (size!34538 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (size!34538 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun d!1251059 () Bool)

(assert (=> d!1251059 e!2643054))

(declare-fun res!1749179 () Bool)

(assert (=> d!1251059 (=> (not res!1749179) (not e!2643054))))

(assert (=> d!1251059 (= res!1749179 (= (content!7414 lt!1509630) ((_ map or) (content!7414 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (content!7414 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(assert (=> d!1251059 (= lt!1509630 e!2643053)))

(declare-fun c!722419 () Bool)

(assert (=> d!1251059 (= c!722419 ((_ is Nil!47195) (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251059 (= (++!11998 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) lt!1509630)))

(assert (= (and d!1251059 c!722419) b!4255101))

(assert (= (and d!1251059 (not c!722419)) b!4255102))

(assert (= (and d!1251059 res!1749179) b!4255103))

(assert (= (and b!4255103 res!1749178) b!4255104))

(assert (=> b!4255102 m!4839613))

(declare-fun m!4839839 () Bool)

(assert (=> b!4255102 m!4839839))

(declare-fun m!4839841 () Bool)

(assert (=> b!4255103 m!4839841))

(assert (=> b!4255103 m!4839611))

(declare-fun m!4839843 () Bool)

(assert (=> b!4255103 m!4839843))

(assert (=> b!4255103 m!4839613))

(declare-fun m!4839845 () Bool)

(assert (=> b!4255103 m!4839845))

(declare-fun m!4839847 () Bool)

(assert (=> d!1251059 m!4839847))

(assert (=> d!1251059 m!4839611))

(declare-fun m!4839849 () Bool)

(assert (=> d!1251059 m!4839849))

(assert (=> d!1251059 m!4839613))

(declare-fun m!4839851 () Bool)

(assert (=> d!1251059 m!4839851))

(assert (=> b!4254988 d!1251059))

(declare-fun b!4255112 () Bool)

(declare-fun e!2643057 () List!47319)

(declare-fun e!2643058 () List!47319)

(assert (=> b!4255112 (= e!2643057 e!2643058)))

(declare-fun c!722421 () Bool)

(assert (=> b!4255112 (= c!722421 ((_ is Leaf!21964) (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(declare-fun d!1251083 () Bool)

(declare-fun c!722420 () Bool)

(assert (=> d!1251083 (= c!722420 ((_ is Empty!14207) (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(assert (=> d!1251083 (= (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))) e!2643057)))

(declare-fun b!4255114 () Bool)

(assert (=> b!4255114 (= e!2643058 (++!11998 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255113 () Bool)

(assert (=> b!4255113 (= e!2643058 (list!16999 (xs!17513 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun b!4255111 () Bool)

(assert (=> b!4255111 (= e!2643057 Nil!47195)))

(assert (= (and d!1251083 c!722420) b!4255111))

(assert (= (and d!1251083 (not c!722420)) b!4255112))

(assert (= (and b!4255112 c!722421) b!4255113))

(assert (= (and b!4255112 (not c!722421)) b!4255114))

(declare-fun m!4839865 () Bool)

(assert (=> b!4255114 m!4839865))

(declare-fun m!4839867 () Bool)

(assert (=> b!4255114 m!4839867))

(assert (=> b!4255114 m!4839865))

(assert (=> b!4255114 m!4839867))

(declare-fun m!4839869 () Bool)

(assert (=> b!4255114 m!4839869))

(declare-fun m!4839875 () Bool)

(assert (=> b!4255113 m!4839875))

(assert (=> b!4254988 d!1251083))

(declare-fun b!4255116 () Bool)

(declare-fun e!2643059 () List!47319)

(declare-fun e!2643060 () List!47319)

(assert (=> b!4255116 (= e!2643059 e!2643060)))

(declare-fun c!722423 () Bool)

(assert (=> b!4255116 (= c!722423 ((_ is Leaf!21964) (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(declare-fun d!1251089 () Bool)

(declare-fun c!722422 () Bool)

(assert (=> d!1251089 (= c!722422 ((_ is Empty!14207) (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(assert (=> d!1251089 (= (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))) e!2643059)))

(declare-fun b!4255118 () Bool)

(assert (=> b!4255118 (= e!2643060 (++!11998 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255117 () Bool)

(assert (=> b!4255117 (= e!2643060 (list!16999 (xs!17513 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun b!4255115 () Bool)

(assert (=> b!4255115 (= e!2643059 Nil!47195)))

(assert (= (and d!1251089 c!722422) b!4255115))

(assert (= (and d!1251089 (not c!722422)) b!4255116))

(assert (= (and b!4255116 c!722423) b!4255117))

(assert (= (and b!4255116 (not c!722423)) b!4255118))

(declare-fun m!4839877 () Bool)

(assert (=> b!4255118 m!4839877))

(declare-fun m!4839879 () Bool)

(assert (=> b!4255118 m!4839879))

(assert (=> b!4255118 m!4839877))

(assert (=> b!4255118 m!4839879))

(declare-fun m!4839881 () Bool)

(assert (=> b!4255118 m!4839881))

(declare-fun m!4839885 () Bool)

(assert (=> b!4255117 m!4839885))

(assert (=> b!4254988 d!1251089))

(declare-fun b!4255123 () Bool)

(declare-fun res!1749189 () Bool)

(declare-fun e!2643063 () Bool)

(assert (=> b!4255123 (=> (not res!1749189) (not e!2643063))))

(assert (=> b!4255123 (= res!1749189 (not (isEmpty!27935 (left!34971 (left!34971 (left!34971 lt!1509590))))))))

(declare-fun b!4255124 () Bool)

(assert (=> b!4255124 (= e!2643063 (not (isEmpty!27935 (right!35301 (left!34971 (left!34971 lt!1509590))))))))

(declare-fun d!1251093 () Bool)

(declare-fun res!1749186 () Bool)

(declare-fun e!2643064 () Bool)

(assert (=> d!1251093 (=> res!1749186 e!2643064)))

(assert (=> d!1251093 (= res!1749186 (not ((_ is Node!14207) (left!34971 (left!34971 lt!1509590)))))))

(assert (=> d!1251093 (= (isBalanced!3772 (left!34971 (left!34971 lt!1509590))) e!2643064)))

(declare-fun b!4255125 () Bool)

(assert (=> b!4255125 (= e!2643064 e!2643063)))

(declare-fun res!1749188 () Bool)

(assert (=> b!4255125 (=> (not res!1749188) (not e!2643063))))

(assert (=> b!4255125 (= res!1749188 (<= (- 1) (- (height!1836 (left!34971 (left!34971 (left!34971 lt!1509590)))) (height!1836 (right!35301 (left!34971 (left!34971 lt!1509590)))))))))

(declare-fun b!4255126 () Bool)

(declare-fun res!1749191 () Bool)

(assert (=> b!4255126 (=> (not res!1749191) (not e!2643063))))

(assert (=> b!4255126 (= res!1749191 (<= (- (height!1836 (left!34971 (left!34971 (left!34971 lt!1509590)))) (height!1836 (right!35301 (left!34971 (left!34971 lt!1509590))))) 1))))

(declare-fun b!4255127 () Bool)

(declare-fun res!1749187 () Bool)

(assert (=> b!4255127 (=> (not res!1749187) (not e!2643063))))

(assert (=> b!4255127 (= res!1749187 (isBalanced!3772 (right!35301 (left!34971 (left!34971 lt!1509590)))))))

(declare-fun b!4255128 () Bool)

(declare-fun res!1749190 () Bool)

(assert (=> b!4255128 (=> (not res!1749190) (not e!2643063))))

(assert (=> b!4255128 (= res!1749190 (isBalanced!3772 (left!34971 (left!34971 (left!34971 lt!1509590)))))))

(assert (= (and d!1251093 (not res!1749186)) b!4255125))

(assert (= (and b!4255125 res!1749188) b!4255126))

(assert (= (and b!4255126 res!1749191) b!4255128))

(assert (= (and b!4255128 res!1749190) b!4255127))

(assert (= (and b!4255127 res!1749187) b!4255123))

(assert (= (and b!4255123 res!1749189) b!4255124))

(declare-fun m!4839891 () Bool)

(assert (=> b!4255126 m!4839891))

(declare-fun m!4839893 () Bool)

(assert (=> b!4255126 m!4839893))

(declare-fun m!4839895 () Bool)

(assert (=> b!4255124 m!4839895))

(declare-fun m!4839897 () Bool)

(assert (=> b!4255123 m!4839897))

(assert (=> b!4255125 m!4839891))

(assert (=> b!4255125 m!4839893))

(declare-fun m!4839899 () Bool)

(assert (=> b!4255128 m!4839899))

(declare-fun m!4839901 () Bool)

(assert (=> b!4255127 m!4839901))

(assert (=> b!4254964 d!1251093))

(declare-fun d!1251099 () Bool)

(assert (=> d!1251099 (= (list!16999 (xs!17513 (c!722385 (BalanceConc!28009 lt!1509590)))) (innerList!14267 (xs!17513 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(assert (=> b!4254987 d!1251099))

(check-sat (not b!4255022) (not d!1251059) (not b!4255071) (not b!4255123) (not b!4255128) (not b!4255009) (not b!4255072) (not b!4255028) (not b!4255026) (not b!4255020) (not b!4255069) (not b!4255070) (not b!4255114) (not b!4255074) (not b!4255127) (not b!4255118) (not d!1251027) (not b!4255068) (not d!1251017) (not b!4255125) (not d!1251011) (not d!1251021) (not b!4255030) (not d!1251057) (not b!4255124) (not d!1251025) (not b!4255024) (not b!4255025) (not b!4255019) (not b!4255117) (not b!4255075) (not b!4255063) tp_is_empty!22793 (not b!4255057) (not b!4255021) (not b!4255073) (not b!4255126) (not b!4255103) (not b!4255029) (not b!4255010) (not b!4255113) (not b!4255027) (not d!1251037) (not b!4255056) (not d!1251045) (not b!4255023) (not b!4255102))
(check-sat)
(get-model)

(declare-fun d!1251101 () Bool)

(declare-fun lt!1509633 () Bool)

(assert (=> d!1251101 (= lt!1509633 (isEmpty!27937 (list!16997 (left!34971 (right!35301 (left!34971 lt!1509590))))))))

(assert (=> d!1251101 (= lt!1509633 (= (size!34536 (left!34971 (right!35301 (left!34971 lt!1509590)))) 0))))

(assert (=> d!1251101 (= (isEmpty!27935 (left!34971 (right!35301 (left!34971 lt!1509590)))) lt!1509633)))

(declare-fun bs!598766 () Bool)

(assert (= bs!598766 d!1251101))

(declare-fun m!4839915 () Bool)

(assert (=> bs!598766 m!4839915))

(assert (=> bs!598766 m!4839915))

(declare-fun m!4839917 () Bool)

(assert (=> bs!598766 m!4839917))

(declare-fun m!4839919 () Bool)

(assert (=> bs!598766 m!4839919))

(assert (=> b!4255070 d!1251101))

(declare-fun d!1251103 () Bool)

(declare-fun lt!1509636 () Int)

(assert (=> d!1251103 (>= lt!1509636 0)))

(declare-fun e!2643069 () Int)

(assert (=> d!1251103 (= lt!1509636 e!2643069)))

(declare-fun c!722428 () Bool)

(assert (=> d!1251103 (= c!722428 ((_ is Nil!47195) (list!16997 (left!34971 lt!1509590))))))

(assert (=> d!1251103 (= (size!34538 (list!16997 (left!34971 lt!1509590))) lt!1509636)))

(declare-fun b!4255139 () Bool)

(assert (=> b!4255139 (= e!2643069 0)))

(declare-fun b!4255140 () Bool)

(assert (=> b!4255140 (= e!2643069 (+ 1 (size!34538 (t!352848 (list!16997 (left!34971 lt!1509590))))))))

(assert (= (and d!1251103 c!722428) b!4255139))

(assert (= (and d!1251103 (not c!722428)) b!4255140))

(declare-fun m!4839921 () Bool)

(assert (=> b!4255140 m!4839921))

(assert (=> d!1251017 d!1251103))

(assert (=> d!1251017 d!1251015))

(declare-fun b!4255141 () Bool)

(declare-fun res!1749201 () Bool)

(declare-fun e!2643070 () Bool)

(assert (=> b!4255141 (=> (not res!1749201) (not e!2643070))))

(assert (=> b!4255141 (= res!1749201 (not (isEmpty!27935 (left!34971 (left!34971 (right!35301 (right!35301 lt!1509590)))))))))

(declare-fun b!4255142 () Bool)

(assert (=> b!4255142 (= e!2643070 (not (isEmpty!27935 (right!35301 (left!34971 (right!35301 (right!35301 lt!1509590)))))))))

(declare-fun d!1251105 () Bool)

(declare-fun res!1749198 () Bool)

(declare-fun e!2643071 () Bool)

(assert (=> d!1251105 (=> res!1749198 e!2643071)))

(assert (=> d!1251105 (= res!1749198 (not ((_ is Node!14207) (left!34971 (right!35301 (right!35301 lt!1509590))))))))

(assert (=> d!1251105 (= (isBalanced!3772 (left!34971 (right!35301 (right!35301 lt!1509590)))) e!2643071)))

(declare-fun b!4255143 () Bool)

(assert (=> b!4255143 (= e!2643071 e!2643070)))

(declare-fun res!1749200 () Bool)

(assert (=> b!4255143 (=> (not res!1749200) (not e!2643070))))

(assert (=> b!4255143 (= res!1749200 (<= (- 1) (- (height!1836 (left!34971 (left!34971 (right!35301 (right!35301 lt!1509590))))) (height!1836 (right!35301 (left!34971 (right!35301 (right!35301 lt!1509590))))))))))

(declare-fun b!4255144 () Bool)

(declare-fun res!1749203 () Bool)

(assert (=> b!4255144 (=> (not res!1749203) (not e!2643070))))

(assert (=> b!4255144 (= res!1749203 (<= (- (height!1836 (left!34971 (left!34971 (right!35301 (right!35301 lt!1509590))))) (height!1836 (right!35301 (left!34971 (right!35301 (right!35301 lt!1509590)))))) 1))))

(declare-fun b!4255145 () Bool)

(declare-fun res!1749199 () Bool)

(assert (=> b!4255145 (=> (not res!1749199) (not e!2643070))))

(assert (=> b!4255145 (= res!1749199 (isBalanced!3772 (right!35301 (left!34971 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun b!4255146 () Bool)

(declare-fun res!1749202 () Bool)

(assert (=> b!4255146 (=> (not res!1749202) (not e!2643070))))

(assert (=> b!4255146 (= res!1749202 (isBalanced!3772 (left!34971 (left!34971 (right!35301 (right!35301 lt!1509590))))))))

(assert (= (and d!1251105 (not res!1749198)) b!4255143))

(assert (= (and b!4255143 res!1749200) b!4255144))

(assert (= (and b!4255144 res!1749203) b!4255146))

(assert (= (and b!4255146 res!1749202) b!4255145))

(assert (= (and b!4255145 res!1749199) b!4255141))

(assert (= (and b!4255141 res!1749201) b!4255142))

(declare-fun m!4839923 () Bool)

(assert (=> b!4255144 m!4839923))

(declare-fun m!4839925 () Bool)

(assert (=> b!4255144 m!4839925))

(declare-fun m!4839927 () Bool)

(assert (=> b!4255142 m!4839927))

(declare-fun m!4839929 () Bool)

(assert (=> b!4255141 m!4839929))

(assert (=> b!4255143 m!4839923))

(assert (=> b!4255143 m!4839925))

(declare-fun m!4839931 () Bool)

(assert (=> b!4255146 m!4839931))

(declare-fun m!4839933 () Bool)

(assert (=> b!4255145 m!4839933))

(assert (=> b!4255030 d!1251105))

(declare-fun b!4255147 () Bool)

(declare-fun res!1749207 () Bool)

(declare-fun e!2643072 () Bool)

(assert (=> b!4255147 (=> (not res!1749207) (not e!2643072))))

(assert (=> b!4255147 (= res!1749207 (not (isEmpty!27935 (left!34971 (right!35301 (right!35301 (right!35301 lt!1509590)))))))))

(declare-fun b!4255148 () Bool)

(assert (=> b!4255148 (= e!2643072 (not (isEmpty!27935 (right!35301 (right!35301 (right!35301 (right!35301 lt!1509590)))))))))

(declare-fun d!1251107 () Bool)

(declare-fun res!1749204 () Bool)

(declare-fun e!2643073 () Bool)

(assert (=> d!1251107 (=> res!1749204 e!2643073)))

(assert (=> d!1251107 (= res!1749204 (not ((_ is Node!14207) (right!35301 (right!35301 (right!35301 lt!1509590))))))))

(assert (=> d!1251107 (= (isBalanced!3772 (right!35301 (right!35301 (right!35301 lt!1509590)))) e!2643073)))

(declare-fun b!4255149 () Bool)

(assert (=> b!4255149 (= e!2643073 e!2643072)))

(declare-fun res!1749206 () Bool)

(assert (=> b!4255149 (=> (not res!1749206) (not e!2643072))))

(assert (=> b!4255149 (= res!1749206 (<= (- 1) (- (height!1836 (left!34971 (right!35301 (right!35301 (right!35301 lt!1509590))))) (height!1836 (right!35301 (right!35301 (right!35301 (right!35301 lt!1509590))))))))))

(declare-fun b!4255150 () Bool)

(declare-fun res!1749209 () Bool)

(assert (=> b!4255150 (=> (not res!1749209) (not e!2643072))))

(assert (=> b!4255150 (= res!1749209 (<= (- (height!1836 (left!34971 (right!35301 (right!35301 (right!35301 lt!1509590))))) (height!1836 (right!35301 (right!35301 (right!35301 (right!35301 lt!1509590)))))) 1))))

(declare-fun b!4255151 () Bool)

(declare-fun res!1749205 () Bool)

(assert (=> b!4255151 (=> (not res!1749205) (not e!2643072))))

(assert (=> b!4255151 (= res!1749205 (isBalanced!3772 (right!35301 (right!35301 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun b!4255152 () Bool)

(declare-fun res!1749208 () Bool)

(assert (=> b!4255152 (=> (not res!1749208) (not e!2643072))))

(assert (=> b!4255152 (= res!1749208 (isBalanced!3772 (left!34971 (right!35301 (right!35301 (right!35301 lt!1509590))))))))

(assert (= (and d!1251107 (not res!1749204)) b!4255149))

(assert (= (and b!4255149 res!1749206) b!4255150))

(assert (= (and b!4255150 res!1749209) b!4255152))

(assert (= (and b!4255152 res!1749208) b!4255151))

(assert (= (and b!4255151 res!1749205) b!4255147))

(assert (= (and b!4255147 res!1749207) b!4255148))

(declare-fun m!4839935 () Bool)

(assert (=> b!4255150 m!4839935))

(declare-fun m!4839937 () Bool)

(assert (=> b!4255150 m!4839937))

(declare-fun m!4839939 () Bool)

(assert (=> b!4255148 m!4839939))

(declare-fun m!4839941 () Bool)

(assert (=> b!4255147 m!4839941))

(assert (=> b!4255149 m!4839935))

(assert (=> b!4255149 m!4839937))

(declare-fun m!4839943 () Bool)

(assert (=> b!4255152 m!4839943))

(declare-fun m!4839945 () Bool)

(assert (=> b!4255151 m!4839945))

(assert (=> b!4255029 d!1251107))

(declare-fun b!4255154 () Bool)

(declare-fun e!2643074 () List!47319)

(assert (=> b!4255154 (= e!2643074 (Cons!47195 (h!52615 (list!16997 (left!34971 (right!35301 lt!1509590)))) (++!11998 (t!352848 (list!16997 (left!34971 (right!35301 lt!1509590)))) (list!16997 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun b!4255156 () Bool)

(declare-fun e!2643075 () Bool)

(declare-fun lt!1509637 () List!47319)

(assert (=> b!4255156 (= e!2643075 (or (not (= (list!16997 (right!35301 (right!35301 lt!1509590))) Nil!47195)) (= lt!1509637 (list!16997 (left!34971 (right!35301 lt!1509590))))))))

(declare-fun b!4255153 () Bool)

(assert (=> b!4255153 (= e!2643074 (list!16997 (right!35301 (right!35301 lt!1509590))))))

(declare-fun b!4255155 () Bool)

(declare-fun res!1749210 () Bool)

(assert (=> b!4255155 (=> (not res!1749210) (not e!2643075))))

(assert (=> b!4255155 (= res!1749210 (= (size!34538 lt!1509637) (+ (size!34538 (list!16997 (left!34971 (right!35301 lt!1509590)))) (size!34538 (list!16997 (right!35301 (right!35301 lt!1509590)))))))))

(declare-fun d!1251109 () Bool)

(assert (=> d!1251109 e!2643075))

(declare-fun res!1749211 () Bool)

(assert (=> d!1251109 (=> (not res!1749211) (not e!2643075))))

(assert (=> d!1251109 (= res!1749211 (= (content!7414 lt!1509637) ((_ map or) (content!7414 (list!16997 (left!34971 (right!35301 lt!1509590)))) (content!7414 (list!16997 (right!35301 (right!35301 lt!1509590)))))))))

(assert (=> d!1251109 (= lt!1509637 e!2643074)))

(declare-fun c!722429 () Bool)

(assert (=> d!1251109 (= c!722429 ((_ is Nil!47195) (list!16997 (left!34971 (right!35301 lt!1509590)))))))

(assert (=> d!1251109 (= (++!11998 (list!16997 (left!34971 (right!35301 lt!1509590))) (list!16997 (right!35301 (right!35301 lt!1509590)))) lt!1509637)))

(assert (= (and d!1251109 c!722429) b!4255153))

(assert (= (and d!1251109 (not c!722429)) b!4255154))

(assert (= (and d!1251109 res!1749211) b!4255155))

(assert (= (and b!4255155 res!1749210) b!4255156))

(assert (=> b!4255154 m!4839667))

(declare-fun m!4839947 () Bool)

(assert (=> b!4255154 m!4839947))

(declare-fun m!4839949 () Bool)

(assert (=> b!4255155 m!4839949))

(assert (=> b!4255155 m!4839769))

(declare-fun m!4839951 () Bool)

(assert (=> b!4255155 m!4839951))

(assert (=> b!4255155 m!4839667))

(declare-fun m!4839953 () Bool)

(assert (=> b!4255155 m!4839953))

(declare-fun m!4839955 () Bool)

(assert (=> d!1251109 m!4839955))

(assert (=> d!1251109 m!4839769))

(declare-fun m!4839957 () Bool)

(assert (=> d!1251109 m!4839957))

(assert (=> d!1251109 m!4839667))

(declare-fun m!4839959 () Bool)

(assert (=> d!1251109 m!4839959))

(assert (=> b!4255069 d!1251109))

(declare-fun b!4255158 () Bool)

(declare-fun e!2643076 () List!47319)

(declare-fun e!2643077 () List!47319)

(assert (=> b!4255158 (= e!2643076 e!2643077)))

(declare-fun c!722431 () Bool)

(assert (=> b!4255158 (= c!722431 ((_ is Leaf!21964) (left!34971 (right!35301 lt!1509590))))))

(declare-fun d!1251111 () Bool)

(declare-fun c!722430 () Bool)

(assert (=> d!1251111 (= c!722430 ((_ is Empty!14207) (left!34971 (right!35301 lt!1509590))))))

(assert (=> d!1251111 (= (list!16997 (left!34971 (right!35301 lt!1509590))) e!2643076)))

(declare-fun b!4255160 () Bool)

(assert (=> b!4255160 (= e!2643077 (++!11998 (list!16997 (left!34971 (left!34971 (right!35301 lt!1509590)))) (list!16997 (right!35301 (left!34971 (right!35301 lt!1509590))))))))

(declare-fun b!4255159 () Bool)

(assert (=> b!4255159 (= e!2643077 (list!16999 (xs!17513 (left!34971 (right!35301 lt!1509590)))))))

(declare-fun b!4255157 () Bool)

(assert (=> b!4255157 (= e!2643076 Nil!47195)))

(assert (= (and d!1251111 c!722430) b!4255157))

(assert (= (and d!1251111 (not c!722430)) b!4255158))

(assert (= (and b!4255158 c!722431) b!4255159))

(assert (= (and b!4255158 (not c!722431)) b!4255160))

(declare-fun m!4839961 () Bool)

(assert (=> b!4255160 m!4839961))

(declare-fun m!4839963 () Bool)

(assert (=> b!4255160 m!4839963))

(assert (=> b!4255160 m!4839961))

(assert (=> b!4255160 m!4839963))

(declare-fun m!4839965 () Bool)

(assert (=> b!4255160 m!4839965))

(declare-fun m!4839967 () Bool)

(assert (=> b!4255159 m!4839967))

(assert (=> b!4255069 d!1251111))

(declare-fun b!4255162 () Bool)

(declare-fun e!2643078 () List!47319)

(declare-fun e!2643079 () List!47319)

(assert (=> b!4255162 (= e!2643078 e!2643079)))

(declare-fun c!722433 () Bool)

(assert (=> b!4255162 (= c!722433 ((_ is Leaf!21964) (right!35301 (right!35301 lt!1509590))))))

(declare-fun d!1251113 () Bool)

(declare-fun c!722432 () Bool)

(assert (=> d!1251113 (= c!722432 ((_ is Empty!14207) (right!35301 (right!35301 lt!1509590))))))

(assert (=> d!1251113 (= (list!16997 (right!35301 (right!35301 lt!1509590))) e!2643078)))

(declare-fun b!4255164 () Bool)

(assert (=> b!4255164 (= e!2643079 (++!11998 (list!16997 (left!34971 (right!35301 (right!35301 lt!1509590)))) (list!16997 (right!35301 (right!35301 (right!35301 lt!1509590))))))))

(declare-fun b!4255163 () Bool)

(assert (=> b!4255163 (= e!2643079 (list!16999 (xs!17513 (right!35301 (right!35301 lt!1509590)))))))

(declare-fun b!4255161 () Bool)

(assert (=> b!4255161 (= e!2643078 Nil!47195)))

(assert (= (and d!1251113 c!722432) b!4255161))

(assert (= (and d!1251113 (not c!722432)) b!4255162))

(assert (= (and b!4255162 c!722433) b!4255163))

(assert (= (and b!4255162 (not c!722433)) b!4255164))

(declare-fun m!4839969 () Bool)

(assert (=> b!4255164 m!4839969))

(declare-fun m!4839971 () Bool)

(assert (=> b!4255164 m!4839971))

(assert (=> b!4255164 m!4839969))

(assert (=> b!4255164 m!4839971))

(declare-fun m!4839973 () Bool)

(assert (=> b!4255164 m!4839973))

(declare-fun m!4839975 () Bool)

(assert (=> b!4255163 m!4839975))

(assert (=> b!4255069 d!1251113))

(declare-fun d!1251115 () Bool)

(declare-fun c!722436 () Bool)

(assert (=> d!1251115 (= c!722436 ((_ is Nil!47195) lt!1509630))))

(declare-fun e!2643082 () (InoxSet T!79238))

(assert (=> d!1251115 (= (content!7414 lt!1509630) e!2643082)))

(declare-fun b!4255169 () Bool)

(assert (=> b!4255169 (= e!2643082 ((as const (Array T!79238 Bool)) false))))

(declare-fun b!4255170 () Bool)

(assert (=> b!4255170 (= e!2643082 ((_ map or) (store ((as const (Array T!79238 Bool)) false) (h!52615 lt!1509630) true) (content!7414 (t!352848 lt!1509630))))))

(assert (= (and d!1251115 c!722436) b!4255169))

(assert (= (and d!1251115 (not c!722436)) b!4255170))

(declare-fun m!4839977 () Bool)

(assert (=> b!4255170 m!4839977))

(declare-fun m!4839979 () Bool)

(assert (=> b!4255170 m!4839979))

(assert (=> d!1251059 d!1251115))

(declare-fun d!1251117 () Bool)

(declare-fun c!722437 () Bool)

(assert (=> d!1251117 (= c!722437 ((_ is Nil!47195) (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun e!2643083 () (InoxSet T!79238))

(assert (=> d!1251117 (= (content!7414 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) e!2643083)))

(declare-fun b!4255171 () Bool)

(assert (=> b!4255171 (= e!2643083 ((as const (Array T!79238 Bool)) false))))

(declare-fun b!4255172 () Bool)

(assert (=> b!4255172 (= e!2643083 ((_ map or) (store ((as const (Array T!79238 Bool)) false) (h!52615 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) true) (content!7414 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(assert (= (and d!1251117 c!722437) b!4255171))

(assert (= (and d!1251117 (not c!722437)) b!4255172))

(declare-fun m!4839981 () Bool)

(assert (=> b!4255172 m!4839981))

(declare-fun m!4839983 () Bool)

(assert (=> b!4255172 m!4839983))

(assert (=> d!1251059 d!1251117))

(declare-fun d!1251119 () Bool)

(declare-fun c!722438 () Bool)

(assert (=> d!1251119 (= c!722438 ((_ is Nil!47195) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun e!2643084 () (InoxSet T!79238))

(assert (=> d!1251119 (= (content!7414 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) e!2643084)))

(declare-fun b!4255173 () Bool)

(assert (=> b!4255173 (= e!2643084 ((as const (Array T!79238 Bool)) false))))

(declare-fun b!4255174 () Bool)

(assert (=> b!4255174 (= e!2643084 ((_ map or) (store ((as const (Array T!79238 Bool)) false) (h!52615 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) true) (content!7414 (t!352848 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(assert (= (and d!1251119 c!722438) b!4255173))

(assert (= (and d!1251119 (not c!722438)) b!4255174))

(declare-fun m!4839985 () Bool)

(assert (=> b!4255174 m!4839985))

(declare-fun m!4839987 () Bool)

(assert (=> b!4255174 m!4839987))

(assert (=> d!1251059 d!1251119))

(declare-fun d!1251121 () Bool)

(assert (=> d!1251121 (= (isEmpty!27937 (list!16997 (right!35301 (left!34971 lt!1509590)))) ((_ is Nil!47195) (list!16997 (right!35301 (left!34971 lt!1509590)))))))

(assert (=> d!1251021 d!1251121))

(declare-fun b!4255176 () Bool)

(declare-fun e!2643085 () List!47319)

(declare-fun e!2643086 () List!47319)

(assert (=> b!4255176 (= e!2643085 e!2643086)))

(declare-fun c!722440 () Bool)

(assert (=> b!4255176 (= c!722440 ((_ is Leaf!21964) (right!35301 (left!34971 lt!1509590))))))

(declare-fun d!1251123 () Bool)

(declare-fun c!722439 () Bool)

(assert (=> d!1251123 (= c!722439 ((_ is Empty!14207) (right!35301 (left!34971 lt!1509590))))))

(assert (=> d!1251123 (= (list!16997 (right!35301 (left!34971 lt!1509590))) e!2643085)))

(declare-fun b!4255178 () Bool)

(assert (=> b!4255178 (= e!2643086 (++!11998 (list!16997 (left!34971 (right!35301 (left!34971 lt!1509590)))) (list!16997 (right!35301 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun b!4255177 () Bool)

(assert (=> b!4255177 (= e!2643086 (list!16999 (xs!17513 (right!35301 (left!34971 lt!1509590)))))))

(declare-fun b!4255175 () Bool)

(assert (=> b!4255175 (= e!2643085 Nil!47195)))

(assert (= (and d!1251123 c!722439) b!4255175))

(assert (= (and d!1251123 (not c!722439)) b!4255176))

(assert (= (and b!4255176 c!722440) b!4255177))

(assert (= (and b!4255176 (not c!722440)) b!4255178))

(assert (=> b!4255178 m!4839915))

(declare-fun m!4839989 () Bool)

(assert (=> b!4255178 m!4839989))

(assert (=> b!4255178 m!4839915))

(assert (=> b!4255178 m!4839989))

(declare-fun m!4839991 () Bool)

(assert (=> b!4255178 m!4839991))

(declare-fun m!4839993 () Bool)

(assert (=> b!4255177 m!4839993))

(assert (=> d!1251021 d!1251123))

(declare-fun d!1251125 () Bool)

(declare-fun lt!1509638 () Int)

(assert (=> d!1251125 (= lt!1509638 (size!34538 (list!16997 (right!35301 (left!34971 lt!1509590)))))))

(assert (=> d!1251125 (= lt!1509638 (ite ((_ is Empty!14207) (right!35301 (left!34971 lt!1509590))) 0 (ite ((_ is Leaf!21964) (right!35301 (left!34971 lt!1509590))) (csize!28645 (right!35301 (left!34971 lt!1509590))) (csize!28644 (right!35301 (left!34971 lt!1509590))))))))

(assert (=> d!1251125 (= (size!34536 (right!35301 (left!34971 lt!1509590))) lt!1509638)))

(declare-fun bs!598767 () Bool)

(assert (= bs!598767 d!1251125))

(assert (=> bs!598767 m!4839675))

(assert (=> bs!598767 m!4839675))

(declare-fun m!4839995 () Bool)

(assert (=> bs!598767 m!4839995))

(assert (=> d!1251021 d!1251125))

(declare-fun d!1251127 () Bool)

(declare-fun lt!1509639 () Bool)

(assert (=> d!1251127 (= lt!1509639 (isEmpty!27937 (list!16997 (right!35301 (left!34971 (right!35301 lt!1509590))))))))

(assert (=> d!1251127 (= lt!1509639 (= (size!34536 (right!35301 (left!34971 (right!35301 lt!1509590)))) 0))))

(assert (=> d!1251127 (= (isEmpty!27935 (right!35301 (left!34971 (right!35301 lt!1509590)))) lt!1509639)))

(declare-fun bs!598768 () Bool)

(assert (= bs!598768 d!1251127))

(assert (=> bs!598768 m!4839963))

(assert (=> bs!598768 m!4839963))

(declare-fun m!4839997 () Bool)

(assert (=> bs!598768 m!4839997))

(declare-fun m!4839999 () Bool)

(assert (=> bs!598768 m!4839999))

(assert (=> b!4255020 d!1251127))

(assert (=> d!1251037 d!1251027))

(declare-fun d!1251129 () Bool)

(assert (=> d!1251129 (= (inv!61986 _$14!693) (<= (size!34538 (innerList!14267 _$14!693)) 2147483647))))

(declare-fun bs!598769 () Bool)

(assert (= bs!598769 d!1251129))

(declare-fun m!4840001 () Bool)

(assert (=> bs!598769 m!4840001))

(assert (=> d!1251037 d!1251129))

(declare-fun d!1251131 () Bool)

(assert (=> d!1251131 (= (height!1836 (left!34971 (left!34971 (right!35301 lt!1509590)))) (ite ((_ is Empty!14207) (left!34971 (left!34971 (right!35301 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (left!34971 (left!34971 (right!35301 lt!1509590)))) 1 (cheight!14418 (left!34971 (left!34971 (right!35301 lt!1509590)))))))))

(assert (=> b!4255021 d!1251131))

(declare-fun d!1251133 () Bool)

(assert (=> d!1251133 (= (height!1836 (right!35301 (left!34971 (right!35301 lt!1509590)))) (ite ((_ is Empty!14207) (right!35301 (left!34971 (right!35301 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (right!35301 (left!34971 (right!35301 lt!1509590)))) 1 (cheight!14418 (right!35301 (left!34971 (right!35301 lt!1509590)))))))))

(assert (=> b!4255021 d!1251133))

(declare-fun d!1251135 () Bool)

(assert (=> d!1251135 (= (height!1836 (left!34971 (right!35301 (left!34971 lt!1509590)))) (ite ((_ is Empty!14207) (left!34971 (right!35301 (left!34971 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (left!34971 (right!35301 (left!34971 lt!1509590)))) 1 (cheight!14418 (left!34971 (right!35301 (left!34971 lt!1509590)))))))))

(assert (=> b!4255073 d!1251135))

(declare-fun d!1251137 () Bool)

(assert (=> d!1251137 (= (height!1836 (right!35301 (right!35301 (left!34971 lt!1509590)))) (ite ((_ is Empty!14207) (right!35301 (right!35301 (left!34971 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (right!35301 (right!35301 (left!34971 lt!1509590)))) 1 (cheight!14418 (right!35301 (right!35301 (left!34971 lt!1509590)))))))))

(assert (=> b!4255073 d!1251137))

(declare-fun d!1251139 () Bool)

(declare-fun c!722441 () Bool)

(assert (=> d!1251139 (= c!722441 ((_ is Nil!47195) lt!1509619))))

(declare-fun e!2643087 () (InoxSet T!79238))

(assert (=> d!1251139 (= (content!7414 lt!1509619) e!2643087)))

(declare-fun b!4255179 () Bool)

(assert (=> b!4255179 (= e!2643087 ((as const (Array T!79238 Bool)) false))))

(declare-fun b!4255180 () Bool)

(assert (=> b!4255180 (= e!2643087 ((_ map or) (store ((as const (Array T!79238 Bool)) false) (h!52615 lt!1509619) true) (content!7414 (t!352848 lt!1509619))))))

(assert (= (and d!1251139 c!722441) b!4255179))

(assert (= (and d!1251139 (not c!722441)) b!4255180))

(declare-fun m!4840003 () Bool)

(assert (=> b!4255180 m!4840003))

(declare-fun m!4840005 () Bool)

(assert (=> b!4255180 m!4840005))

(assert (=> d!1251027 d!1251139))

(declare-fun d!1251141 () Bool)

(declare-fun lt!1509640 () Bool)

(assert (=> d!1251141 (= lt!1509640 (isEmpty!27937 (list!16997 (left!34971 (left!34971 (right!35301 lt!1509590))))))))

(assert (=> d!1251141 (= lt!1509640 (= (size!34536 (left!34971 (left!34971 (right!35301 lt!1509590)))) 0))))

(assert (=> d!1251141 (= (isEmpty!27935 (left!34971 (left!34971 (right!35301 lt!1509590)))) lt!1509640)))

(declare-fun bs!598770 () Bool)

(assert (= bs!598770 d!1251141))

(assert (=> bs!598770 m!4839961))

(assert (=> bs!598770 m!4839961))

(declare-fun m!4840007 () Bool)

(assert (=> bs!598770 m!4840007))

(declare-fun m!4840009 () Bool)

(assert (=> bs!598770 m!4840009))

(assert (=> b!4255019 d!1251141))

(declare-fun d!1251143 () Bool)

(declare-fun lt!1509641 () Bool)

(assert (=> d!1251143 (= lt!1509641 (isEmpty!27937 (list!16997 (right!35301 (right!35301 (left!34971 lt!1509590))))))))

(assert (=> d!1251143 (= lt!1509641 (= (size!34536 (right!35301 (right!35301 (left!34971 lt!1509590)))) 0))))

(assert (=> d!1251143 (= (isEmpty!27935 (right!35301 (right!35301 (left!34971 lt!1509590)))) lt!1509641)))

(declare-fun bs!598771 () Bool)

(assert (= bs!598771 d!1251143))

(assert (=> bs!598771 m!4839989))

(assert (=> bs!598771 m!4839989))

(declare-fun m!4840011 () Bool)

(assert (=> bs!598771 m!4840011))

(declare-fun m!4840013 () Bool)

(assert (=> bs!598771 m!4840013))

(assert (=> b!4255071 d!1251143))

(assert (=> b!4255072 d!1251135))

(assert (=> b!4255072 d!1251137))

(declare-fun d!1251145 () Bool)

(declare-fun lt!1509642 () Bool)

(assert (=> d!1251145 (= lt!1509642 (isEmpty!27937 (list!16997 (left!34971 (right!35301 (right!35301 lt!1509590))))))))

(assert (=> d!1251145 (= lt!1509642 (= (size!34536 (left!34971 (right!35301 (right!35301 lt!1509590)))) 0))))

(assert (=> d!1251145 (= (isEmpty!27935 (left!34971 (right!35301 (right!35301 lt!1509590)))) lt!1509642)))

(declare-fun bs!598772 () Bool)

(assert (= bs!598772 d!1251145))

(assert (=> bs!598772 m!4839969))

(assert (=> bs!598772 m!4839969))

(declare-fun m!4840015 () Bool)

(assert (=> bs!598772 m!4840015))

(declare-fun m!4840017 () Bool)

(assert (=> bs!598772 m!4840017))

(assert (=> b!4255025 d!1251145))

(declare-fun b!4255182 () Bool)

(declare-fun e!2643088 () List!47319)

(assert (=> b!4255182 (= e!2643088 (Cons!47195 (h!52615 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) (++!11998 (t!352848 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255184 () Bool)

(declare-fun e!2643089 () Bool)

(declare-fun lt!1509643 () List!47319)

(assert (=> b!4255184 (= e!2643089 (or (not (= (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) Nil!47195)) (= lt!1509643 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255181 () Bool)

(assert (=> b!4255181 (= e!2643088 (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun b!4255183 () Bool)

(declare-fun res!1749212 () Bool)

(assert (=> b!4255183 (=> (not res!1749212) (not e!2643089))))

(assert (=> b!4255183 (= res!1749212 (= (size!34538 lt!1509643) (+ (size!34538 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) (size!34538 (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))))

(declare-fun d!1251147 () Bool)

(assert (=> d!1251147 e!2643089))

(declare-fun res!1749213 () Bool)

(assert (=> d!1251147 (=> (not res!1749213) (not e!2643089))))

(assert (=> d!1251147 (= res!1749213 (= (content!7414 lt!1509643) ((_ map or) (content!7414 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) (content!7414 (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))))

(assert (=> d!1251147 (= lt!1509643 e!2643088)))

(declare-fun c!722442 () Bool)

(assert (=> d!1251147 (= c!722442 ((_ is Nil!47195) (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(assert (=> d!1251147 (= (++!11998 (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) lt!1509643)))

(assert (= (and d!1251147 c!722442) b!4255181))

(assert (= (and d!1251147 (not c!722442)) b!4255182))

(assert (= (and d!1251147 res!1749213) b!4255183))

(assert (= (and b!4255183 res!1749212) b!4255184))

(assert (=> b!4255182 m!4839879))

(declare-fun m!4840019 () Bool)

(assert (=> b!4255182 m!4840019))

(declare-fun m!4840021 () Bool)

(assert (=> b!4255183 m!4840021))

(assert (=> b!4255183 m!4839877))

(declare-fun m!4840023 () Bool)

(assert (=> b!4255183 m!4840023))

(assert (=> b!4255183 m!4839879))

(declare-fun m!4840025 () Bool)

(assert (=> b!4255183 m!4840025))

(declare-fun m!4840027 () Bool)

(assert (=> d!1251147 m!4840027))

(assert (=> d!1251147 m!4839877))

(declare-fun m!4840029 () Bool)

(assert (=> d!1251147 m!4840029))

(assert (=> d!1251147 m!4839879))

(declare-fun m!4840031 () Bool)

(assert (=> d!1251147 m!4840031))

(assert (=> b!4255118 d!1251147))

(declare-fun b!4255186 () Bool)

(declare-fun e!2643090 () List!47319)

(declare-fun e!2643091 () List!47319)

(assert (=> b!4255186 (= e!2643090 e!2643091)))

(declare-fun c!722444 () Bool)

(assert (=> b!4255186 (= c!722444 ((_ is Leaf!21964) (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun d!1251149 () Bool)

(declare-fun c!722443 () Bool)

(assert (=> d!1251149 (= c!722443 ((_ is Empty!14207) (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251149 (= (list!16997 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) e!2643090)))

(declare-fun b!4255188 () Bool)

(assert (=> b!4255188 (= e!2643091 (++!11998 (list!16997 (left!34971 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255187 () Bool)

(assert (=> b!4255187 (= e!2643091 (list!16999 (xs!17513 (left!34971 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255185 () Bool)

(assert (=> b!4255185 (= e!2643090 Nil!47195)))

(assert (= (and d!1251149 c!722443) b!4255185))

(assert (= (and d!1251149 (not c!722443)) b!4255186))

(assert (= (and b!4255186 c!722444) b!4255187))

(assert (= (and b!4255186 (not c!722444)) b!4255188))

(declare-fun m!4840033 () Bool)

(assert (=> b!4255188 m!4840033))

(declare-fun m!4840035 () Bool)

(assert (=> b!4255188 m!4840035))

(assert (=> b!4255188 m!4840033))

(assert (=> b!4255188 m!4840035))

(declare-fun m!4840037 () Bool)

(assert (=> b!4255188 m!4840037))

(declare-fun m!4840039 () Bool)

(assert (=> b!4255187 m!4840039))

(assert (=> b!4255118 d!1251149))

(declare-fun b!4255190 () Bool)

(declare-fun e!2643092 () List!47319)

(declare-fun e!2643093 () List!47319)

(assert (=> b!4255190 (= e!2643092 e!2643093)))

(declare-fun c!722446 () Bool)

(assert (=> b!4255190 (= c!722446 ((_ is Leaf!21964) (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun d!1251151 () Bool)

(declare-fun c!722445 () Bool)

(assert (=> d!1251151 (= c!722445 ((_ is Empty!14207) (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251151 (= (list!16997 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) e!2643092)))

(declare-fun b!4255192 () Bool)

(assert (=> b!4255192 (= e!2643093 (++!11998 (list!16997 (left!34971 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255191 () Bool)

(assert (=> b!4255191 (= e!2643093 (list!16999 (xs!17513 (right!35301 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255189 () Bool)

(assert (=> b!4255189 (= e!2643092 Nil!47195)))

(assert (= (and d!1251151 c!722445) b!4255189))

(assert (= (and d!1251151 (not c!722445)) b!4255190))

(assert (= (and b!4255190 c!722446) b!4255191))

(assert (= (and b!4255190 (not c!722446)) b!4255192))

(declare-fun m!4840041 () Bool)

(assert (=> b!4255192 m!4840041))

(declare-fun m!4840043 () Bool)

(assert (=> b!4255192 m!4840043))

(assert (=> b!4255192 m!4840041))

(assert (=> b!4255192 m!4840043))

(declare-fun m!4840045 () Bool)

(assert (=> b!4255192 m!4840045))

(declare-fun m!4840047 () Bool)

(assert (=> b!4255191 m!4840047))

(assert (=> b!4255118 d!1251151))

(declare-fun b!4255194 () Bool)

(declare-fun e!2643094 () List!47319)

(assert (=> b!4255194 (= e!2643094 (Cons!47195 (h!52615 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (++!11998 (t!352848 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255196 () Bool)

(declare-fun e!2643095 () Bool)

(declare-fun lt!1509644 () List!47319)

(assert (=> b!4255196 (= e!2643095 (or (not (= (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))) Nil!47195)) (= lt!1509644 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255193 () Bool)

(assert (=> b!4255193 (= e!2643094 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590)))))))

(declare-fun b!4255195 () Bool)

(declare-fun res!1749214 () Bool)

(assert (=> b!4255195 (=> (not res!1749214) (not e!2643095))))

(assert (=> b!4255195 (= res!1749214 (= (size!34538 lt!1509644) (+ (size!34538 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (size!34538 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun d!1251153 () Bool)

(assert (=> d!1251153 e!2643095))

(declare-fun res!1749215 () Bool)

(assert (=> d!1251153 (=> (not res!1749215) (not e!2643095))))

(assert (=> d!1251153 (= res!1749215 (= (content!7414 lt!1509644) ((_ map or) (content!7414 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (content!7414 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(assert (=> d!1251153 (= lt!1509644 e!2643094)))

(declare-fun c!722447 () Bool)

(assert (=> d!1251153 (= c!722447 ((_ is Nil!47195) (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(assert (=> d!1251153 (= (++!11998 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) lt!1509644)))

(assert (= (and d!1251153 c!722447) b!4255193))

(assert (= (and d!1251153 (not c!722447)) b!4255194))

(assert (= (and d!1251153 res!1749215) b!4255195))

(assert (= (and b!4255195 res!1749214) b!4255196))

(assert (=> b!4255194 m!4839613))

(declare-fun m!4840049 () Bool)

(assert (=> b!4255194 m!4840049))

(declare-fun m!4840051 () Bool)

(assert (=> b!4255195 m!4840051))

(declare-fun m!4840053 () Bool)

(assert (=> b!4255195 m!4840053))

(assert (=> b!4255195 m!4839613))

(assert (=> b!4255195 m!4839845))

(declare-fun m!4840055 () Bool)

(assert (=> d!1251153 m!4840055))

(assert (=> d!1251153 m!4839983))

(assert (=> d!1251153 m!4839613))

(assert (=> d!1251153 m!4839851))

(assert (=> b!4255102 d!1251153))

(declare-fun b!4255197 () Bool)

(declare-fun res!1749219 () Bool)

(declare-fun e!2643096 () Bool)

(assert (=> b!4255197 (=> (not res!1749219) (not e!2643096))))

(assert (=> b!4255197 (= res!1749219 (not (isEmpty!27935 (left!34971 (left!34971 (left!34971 (left!34971 lt!1509590)))))))))

(declare-fun b!4255198 () Bool)

(assert (=> b!4255198 (= e!2643096 (not (isEmpty!27935 (right!35301 (left!34971 (left!34971 (left!34971 lt!1509590)))))))))

(declare-fun d!1251155 () Bool)

(declare-fun res!1749216 () Bool)

(declare-fun e!2643097 () Bool)

(assert (=> d!1251155 (=> res!1749216 e!2643097)))

(assert (=> d!1251155 (= res!1749216 (not ((_ is Node!14207) (left!34971 (left!34971 (left!34971 lt!1509590))))))))

(assert (=> d!1251155 (= (isBalanced!3772 (left!34971 (left!34971 (left!34971 lt!1509590)))) e!2643097)))

(declare-fun b!4255199 () Bool)

(assert (=> b!4255199 (= e!2643097 e!2643096)))

(declare-fun res!1749218 () Bool)

(assert (=> b!4255199 (=> (not res!1749218) (not e!2643096))))

(assert (=> b!4255199 (= res!1749218 (<= (- 1) (- (height!1836 (left!34971 (left!34971 (left!34971 (left!34971 lt!1509590))))) (height!1836 (right!35301 (left!34971 (left!34971 (left!34971 lt!1509590))))))))))

(declare-fun b!4255200 () Bool)

(declare-fun res!1749221 () Bool)

(assert (=> b!4255200 (=> (not res!1749221) (not e!2643096))))

(assert (=> b!4255200 (= res!1749221 (<= (- (height!1836 (left!34971 (left!34971 (left!34971 (left!34971 lt!1509590))))) (height!1836 (right!35301 (left!34971 (left!34971 (left!34971 lt!1509590)))))) 1))))

(declare-fun b!4255201 () Bool)

(declare-fun res!1749217 () Bool)

(assert (=> b!4255201 (=> (not res!1749217) (not e!2643096))))

(assert (=> b!4255201 (= res!1749217 (isBalanced!3772 (right!35301 (left!34971 (left!34971 (left!34971 lt!1509590))))))))

(declare-fun b!4255202 () Bool)

(declare-fun res!1749220 () Bool)

(assert (=> b!4255202 (=> (not res!1749220) (not e!2643096))))

(assert (=> b!4255202 (= res!1749220 (isBalanced!3772 (left!34971 (left!34971 (left!34971 (left!34971 lt!1509590))))))))

(assert (= (and d!1251155 (not res!1749216)) b!4255199))

(assert (= (and b!4255199 res!1749218) b!4255200))

(assert (= (and b!4255200 res!1749221) b!4255202))

(assert (= (and b!4255202 res!1749220) b!4255201))

(assert (= (and b!4255201 res!1749217) b!4255197))

(assert (= (and b!4255197 res!1749219) b!4255198))

(declare-fun m!4840057 () Bool)

(assert (=> b!4255200 m!4840057))

(declare-fun m!4840059 () Bool)

(assert (=> b!4255200 m!4840059))

(declare-fun m!4840061 () Bool)

(assert (=> b!4255198 m!4840061))

(declare-fun m!4840063 () Bool)

(assert (=> b!4255197 m!4840063))

(assert (=> b!4255199 m!4840057))

(assert (=> b!4255199 m!4840059))

(declare-fun m!4840065 () Bool)

(assert (=> b!4255202 m!4840065))

(declare-fun m!4840067 () Bool)

(assert (=> b!4255201 m!4840067))

(assert (=> b!4255128 d!1251155))

(declare-fun d!1251157 () Bool)

(assert (=> d!1251157 (= (list!16999 (xs!17513 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) (innerList!14267 (xs!17513 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> b!4255117 d!1251157))

(declare-fun d!1251159 () Bool)

(assert (=> d!1251159 (= (list!16999 (xs!17513 (right!35301 lt!1509590))) (innerList!14267 (xs!17513 (right!35301 lt!1509590))))))

(assert (=> b!4255068 d!1251159))

(declare-fun b!4255204 () Bool)

(declare-fun e!2643098 () List!47319)

(assert (=> b!4255204 (= e!2643098 (Cons!47195 (h!52615 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (++!11998 (t!352848 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255206 () Bool)

(declare-fun e!2643099 () Bool)

(declare-fun lt!1509645 () List!47319)

(assert (=> b!4255206 (= e!2643099 (or (not (= (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) Nil!47195)) (= lt!1509645 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255203 () Bool)

(assert (=> b!4255203 (= e!2643098 (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun b!4255205 () Bool)

(declare-fun res!1749222 () Bool)

(assert (=> b!4255205 (=> (not res!1749222) (not e!2643099))))

(assert (=> b!4255205 (= res!1749222 (= (size!34538 lt!1509645) (+ (size!34538 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (size!34538 (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))))

(declare-fun d!1251161 () Bool)

(assert (=> d!1251161 e!2643099))

(declare-fun res!1749223 () Bool)

(assert (=> d!1251161 (=> (not res!1749223) (not e!2643099))))

(assert (=> d!1251161 (= res!1749223 (= (content!7414 lt!1509645) ((_ map or) (content!7414 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (content!7414 (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))))

(assert (=> d!1251161 (= lt!1509645 e!2643098)))

(declare-fun c!722448 () Bool)

(assert (=> d!1251161 (= c!722448 ((_ is Nil!47195) (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(assert (=> d!1251161 (= (++!11998 (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) lt!1509645)))

(assert (= (and d!1251161 c!722448) b!4255203))

(assert (= (and d!1251161 (not c!722448)) b!4255204))

(assert (= (and d!1251161 res!1749223) b!4255205))

(assert (= (and b!4255205 res!1749222) b!4255206))

(assert (=> b!4255204 m!4839867))

(declare-fun m!4840069 () Bool)

(assert (=> b!4255204 m!4840069))

(declare-fun m!4840071 () Bool)

(assert (=> b!4255205 m!4840071))

(assert (=> b!4255205 m!4839865))

(declare-fun m!4840073 () Bool)

(assert (=> b!4255205 m!4840073))

(assert (=> b!4255205 m!4839867))

(declare-fun m!4840075 () Bool)

(assert (=> b!4255205 m!4840075))

(declare-fun m!4840077 () Bool)

(assert (=> d!1251161 m!4840077))

(assert (=> d!1251161 m!4839865))

(declare-fun m!4840079 () Bool)

(assert (=> d!1251161 m!4840079))

(assert (=> d!1251161 m!4839867))

(declare-fun m!4840081 () Bool)

(assert (=> d!1251161 m!4840081))

(assert (=> b!4255114 d!1251161))

(declare-fun b!4255208 () Bool)

(declare-fun e!2643100 () List!47319)

(declare-fun e!2643101 () List!47319)

(assert (=> b!4255208 (= e!2643100 e!2643101)))

(declare-fun c!722450 () Bool)

(assert (=> b!4255208 (= c!722450 ((_ is Leaf!21964) (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun d!1251163 () Bool)

(declare-fun c!722449 () Bool)

(assert (=> d!1251163 (= c!722449 ((_ is Empty!14207) (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251163 (= (list!16997 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) e!2643100)))

(declare-fun b!4255210 () Bool)

(assert (=> b!4255210 (= e!2643101 (++!11998 (list!16997 (left!34971 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255209 () Bool)

(assert (=> b!4255209 (= e!2643101 (list!16999 (xs!17513 (left!34971 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255207 () Bool)

(assert (=> b!4255207 (= e!2643100 Nil!47195)))

(assert (= (and d!1251163 c!722449) b!4255207))

(assert (= (and d!1251163 (not c!722449)) b!4255208))

(assert (= (and b!4255208 c!722450) b!4255209))

(assert (= (and b!4255208 (not c!722450)) b!4255210))

(declare-fun m!4840083 () Bool)

(assert (=> b!4255210 m!4840083))

(declare-fun m!4840085 () Bool)

(assert (=> b!4255210 m!4840085))

(assert (=> b!4255210 m!4840083))

(assert (=> b!4255210 m!4840085))

(declare-fun m!4840087 () Bool)

(assert (=> b!4255210 m!4840087))

(declare-fun m!4840089 () Bool)

(assert (=> b!4255209 m!4840089))

(assert (=> b!4255114 d!1251163))

(declare-fun b!4255212 () Bool)

(declare-fun e!2643102 () List!47319)

(declare-fun e!2643103 () List!47319)

(assert (=> b!4255212 (= e!2643102 e!2643103)))

(declare-fun c!722452 () Bool)

(assert (=> b!4255212 (= c!722452 ((_ is Leaf!21964) (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(declare-fun d!1251165 () Bool)

(declare-fun c!722451 () Bool)

(assert (=> d!1251165 (= c!722451 ((_ is Empty!14207) (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251165 (= (list!16997 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) e!2643102)))

(declare-fun b!4255214 () Bool)

(assert (=> b!4255214 (= e!2643103 (++!11998 (list!16997 (left!34971 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))) (list!16997 (right!35301 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(declare-fun b!4255213 () Bool)

(assert (=> b!4255213 (= e!2643103 (list!16999 (xs!17513 (right!35301 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590)))))))))

(declare-fun b!4255211 () Bool)

(assert (=> b!4255211 (= e!2643102 Nil!47195)))

(assert (= (and d!1251165 c!722451) b!4255211))

(assert (= (and d!1251165 (not c!722451)) b!4255212))

(assert (= (and b!4255212 c!722452) b!4255213))

(assert (= (and b!4255212 (not c!722452)) b!4255214))

(declare-fun m!4840091 () Bool)

(assert (=> b!4255214 m!4840091))

(declare-fun m!4840093 () Bool)

(assert (=> b!4255214 m!4840093))

(assert (=> b!4255214 m!4840091))

(assert (=> b!4255214 m!4840093))

(declare-fun m!4840095 () Bool)

(assert (=> b!4255214 m!4840095))

(declare-fun m!4840097 () Bool)

(assert (=> b!4255213 m!4840097))

(assert (=> b!4255114 d!1251165))

(declare-fun d!1251167 () Bool)

(assert (=> d!1251167 (= (height!1836 (left!34971 (right!35301 (right!35301 lt!1509590)))) (ite ((_ is Empty!14207) (left!34971 (right!35301 (right!35301 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (left!34971 (right!35301 (right!35301 lt!1509590)))) 1 (cheight!14418 (left!34971 (right!35301 (right!35301 lt!1509590)))))))))

(assert (=> b!4255028 d!1251167))

(declare-fun d!1251169 () Bool)

(assert (=> d!1251169 (= (height!1836 (right!35301 (right!35301 (right!35301 lt!1509590)))) (ite ((_ is Empty!14207) (right!35301 (right!35301 (right!35301 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (right!35301 (right!35301 (right!35301 lt!1509590)))) 1 (cheight!14418 (right!35301 (right!35301 (right!35301 lt!1509590)))))))))

(assert (=> b!4255028 d!1251169))

(declare-fun d!1251171 () Bool)

(declare-fun lt!1509646 () Int)

(assert (=> d!1251171 (>= lt!1509646 0)))

(declare-fun e!2643104 () Int)

(assert (=> d!1251171 (= lt!1509646 e!2643104)))

(declare-fun c!722453 () Bool)

(assert (=> d!1251171 (= c!722453 ((_ is Nil!47195) lt!1509630))))

(assert (=> d!1251171 (= (size!34538 lt!1509630) lt!1509646)))

(declare-fun b!4255215 () Bool)

(assert (=> b!4255215 (= e!2643104 0)))

(declare-fun b!4255216 () Bool)

(assert (=> b!4255216 (= e!2643104 (+ 1 (size!34538 (t!352848 lt!1509630))))))

(assert (= (and d!1251171 c!722453) b!4255215))

(assert (= (and d!1251171 (not c!722453)) b!4255216))

(declare-fun m!4840099 () Bool)

(assert (=> b!4255216 m!4840099))

(assert (=> b!4255103 d!1251171))

(declare-fun d!1251173 () Bool)

(declare-fun lt!1509647 () Int)

(assert (=> d!1251173 (>= lt!1509647 0)))

(declare-fun e!2643105 () Int)

(assert (=> d!1251173 (= lt!1509647 e!2643105)))

(declare-fun c!722454 () Bool)

(assert (=> d!1251173 (= c!722454 ((_ is Nil!47195) (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251173 (= (size!34538 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) lt!1509647)))

(declare-fun b!4255217 () Bool)

(assert (=> b!4255217 (= e!2643105 0)))

(declare-fun b!4255218 () Bool)

(assert (=> b!4255218 (= e!2643105 (+ 1 (size!34538 (t!352848 (list!16997 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(assert (= (and d!1251173 c!722454) b!4255217))

(assert (= (and d!1251173 (not c!722454)) b!4255218))

(assert (=> b!4255218 m!4840053))

(assert (=> b!4255103 d!1251173))

(declare-fun d!1251175 () Bool)

(declare-fun lt!1509648 () Int)

(assert (=> d!1251175 (>= lt!1509648 0)))

(declare-fun e!2643106 () Int)

(assert (=> d!1251175 (= lt!1509648 e!2643106)))

(declare-fun c!722455 () Bool)

(assert (=> d!1251175 (= c!722455 ((_ is Nil!47195) (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> d!1251175 (= (size!34538 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))) lt!1509648)))

(declare-fun b!4255219 () Bool)

(assert (=> b!4255219 (= e!2643106 0)))

(declare-fun b!4255220 () Bool)

(assert (=> b!4255220 (= e!2643106 (+ 1 (size!34538 (t!352848 (list!16997 (right!35301 (c!722385 (BalanceConc!28009 lt!1509590))))))))))

(assert (= (and d!1251175 c!722455) b!4255219))

(assert (= (and d!1251175 (not c!722455)) b!4255220))

(declare-fun m!4840101 () Bool)

(assert (=> b!4255220 m!4840101))

(assert (=> b!4255103 d!1251175))

(declare-fun d!1251177 () Bool)

(declare-fun lt!1509649 () Bool)

(assert (=> d!1251177 (= lt!1509649 (isEmpty!27937 (list!16997 (right!35301 (right!35301 (right!35301 lt!1509590))))))))

(assert (=> d!1251177 (= lt!1509649 (= (size!34536 (right!35301 (right!35301 (right!35301 lt!1509590)))) 0))))

(assert (=> d!1251177 (= (isEmpty!27935 (right!35301 (right!35301 (right!35301 lt!1509590)))) lt!1509649)))

(declare-fun bs!598773 () Bool)

(assert (= bs!598773 d!1251177))

(assert (=> bs!598773 m!4839971))

(assert (=> bs!598773 m!4839971))

(declare-fun m!4840103 () Bool)

(assert (=> bs!598773 m!4840103))

(declare-fun m!4840105 () Bool)

(assert (=> bs!598773 m!4840105))

(assert (=> b!4255026 d!1251177))

(assert (=> b!4255027 d!1251167))

(assert (=> b!4255027 d!1251169))

(declare-fun d!1251179 () Bool)

(assert (=> d!1251179 (= (list!16999 (xs!17513 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))) (innerList!14267 (xs!17513 (left!34971 (c!722385 (BalanceConc!28009 lt!1509590))))))))

(assert (=> b!4255113 d!1251179))

(declare-fun b!4255222 () Bool)

(declare-fun e!2643107 () List!47319)

(assert (=> b!4255222 (= e!2643107 (Cons!47195 (h!52615 (list!16997 (left!34971 (left!34971 lt!1509590)))) (++!11998 (t!352848 (list!16997 (left!34971 (left!34971 lt!1509590)))) (list!16997 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun b!4255224 () Bool)

(declare-fun e!2643108 () Bool)

(declare-fun lt!1509650 () List!47319)

(assert (=> b!4255224 (= e!2643108 (or (not (= (list!16997 (right!35301 (left!34971 lt!1509590))) Nil!47195)) (= lt!1509650 (list!16997 (left!34971 (left!34971 lt!1509590))))))))

(declare-fun b!4255221 () Bool)

(assert (=> b!4255221 (= e!2643107 (list!16997 (right!35301 (left!34971 lt!1509590))))))

(declare-fun b!4255223 () Bool)

(declare-fun res!1749224 () Bool)

(assert (=> b!4255223 (=> (not res!1749224) (not e!2643108))))

(assert (=> b!4255223 (= res!1749224 (= (size!34538 lt!1509650) (+ (size!34538 (list!16997 (left!34971 (left!34971 lt!1509590)))) (size!34538 (list!16997 (right!35301 (left!34971 lt!1509590)))))))))

(declare-fun d!1251181 () Bool)

(assert (=> d!1251181 e!2643108))

(declare-fun res!1749225 () Bool)

(assert (=> d!1251181 (=> (not res!1749225) (not e!2643108))))

(assert (=> d!1251181 (= res!1749225 (= (content!7414 lt!1509650) ((_ map or) (content!7414 (list!16997 (left!34971 (left!34971 lt!1509590)))) (content!7414 (list!16997 (right!35301 (left!34971 lt!1509590)))))))))

(assert (=> d!1251181 (= lt!1509650 e!2643107)))

(declare-fun c!722456 () Bool)

(assert (=> d!1251181 (= c!722456 ((_ is Nil!47195) (list!16997 (left!34971 (left!34971 lt!1509590)))))))

(assert (=> d!1251181 (= (++!11998 (list!16997 (left!34971 (left!34971 lt!1509590))) (list!16997 (right!35301 (left!34971 lt!1509590)))) lt!1509650)))

(assert (= (and d!1251181 c!722456) b!4255221))

(assert (= (and d!1251181 (not c!722456)) b!4255222))

(assert (= (and d!1251181 res!1749225) b!4255223))

(assert (= (and b!4255223 res!1749224) b!4255224))

(assert (=> b!4255222 m!4839675))

(declare-fun m!4840107 () Bool)

(assert (=> b!4255222 m!4840107))

(declare-fun m!4840109 () Bool)

(assert (=> b!4255223 m!4840109))

(assert (=> b!4255223 m!4839673))

(declare-fun m!4840111 () Bool)

(assert (=> b!4255223 m!4840111))

(assert (=> b!4255223 m!4839675))

(assert (=> b!4255223 m!4839995))

(declare-fun m!4840113 () Bool)

(assert (=> d!1251181 m!4840113))

(assert (=> d!1251181 m!4839673))

(declare-fun m!4840115 () Bool)

(assert (=> d!1251181 m!4840115))

(assert (=> d!1251181 m!4839675))

(declare-fun m!4840117 () Bool)

(assert (=> d!1251181 m!4840117))

(assert (=> b!4255010 d!1251181))

(declare-fun b!4255226 () Bool)

(declare-fun e!2643109 () List!47319)

(declare-fun e!2643110 () List!47319)

(assert (=> b!4255226 (= e!2643109 e!2643110)))

(declare-fun c!722458 () Bool)

(assert (=> b!4255226 (= c!722458 ((_ is Leaf!21964) (left!34971 (left!34971 lt!1509590))))))

(declare-fun d!1251183 () Bool)

(declare-fun c!722457 () Bool)

(assert (=> d!1251183 (= c!722457 ((_ is Empty!14207) (left!34971 (left!34971 lt!1509590))))))

(assert (=> d!1251183 (= (list!16997 (left!34971 (left!34971 lt!1509590))) e!2643109)))

(declare-fun b!4255228 () Bool)

(assert (=> b!4255228 (= e!2643110 (++!11998 (list!16997 (left!34971 (left!34971 (left!34971 lt!1509590)))) (list!16997 (right!35301 (left!34971 (left!34971 lt!1509590))))))))

(declare-fun b!4255227 () Bool)

(assert (=> b!4255227 (= e!2643110 (list!16999 (xs!17513 (left!34971 (left!34971 lt!1509590)))))))

(declare-fun b!4255225 () Bool)

(assert (=> b!4255225 (= e!2643109 Nil!47195)))

(assert (= (and d!1251183 c!722457) b!4255225))

(assert (= (and d!1251183 (not c!722457)) b!4255226))

(assert (= (and b!4255226 c!722458) b!4255227))

(assert (= (and b!4255226 (not c!722458)) b!4255228))

(declare-fun m!4840119 () Bool)

(assert (=> b!4255228 m!4840119))

(declare-fun m!4840121 () Bool)

(assert (=> b!4255228 m!4840121))

(assert (=> b!4255228 m!4840119))

(assert (=> b!4255228 m!4840121))

(declare-fun m!4840123 () Bool)

(assert (=> b!4255228 m!4840123))

(declare-fun m!4840125 () Bool)

(assert (=> b!4255227 m!4840125))

(assert (=> b!4255010 d!1251183))

(assert (=> b!4255010 d!1251123))

(declare-fun d!1251185 () Bool)

(declare-fun lt!1509651 () Bool)

(assert (=> d!1251185 (= lt!1509651 (isEmpty!27937 (list!16997 (right!35301 (left!34971 (left!34971 lt!1509590))))))))

(assert (=> d!1251185 (= lt!1509651 (= (size!34536 (right!35301 (left!34971 (left!34971 lt!1509590)))) 0))))

(assert (=> d!1251185 (= (isEmpty!27935 (right!35301 (left!34971 (left!34971 lt!1509590)))) lt!1509651)))

(declare-fun bs!598774 () Bool)

(assert (= bs!598774 d!1251185))

(assert (=> bs!598774 m!4840121))

(assert (=> bs!598774 m!4840121))

(declare-fun m!4840127 () Bool)

(assert (=> bs!598774 m!4840127))

(declare-fun m!4840129 () Bool)

(assert (=> bs!598774 m!4840129))

(assert (=> b!4255124 d!1251185))

(declare-fun d!1251187 () Bool)

(assert (=> d!1251187 (= (list!16999 (xs!17513 (left!34971 lt!1509590))) (innerList!14267 (xs!17513 (left!34971 lt!1509590))))))

(assert (=> b!4255009 d!1251187))

(declare-fun d!1251189 () Bool)

(assert (=> d!1251189 (= (height!1836 (left!34971 (left!34971 (left!34971 lt!1509590)))) (ite ((_ is Empty!14207) (left!34971 (left!34971 (left!34971 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (left!34971 (left!34971 (left!34971 lt!1509590)))) 1 (cheight!14418 (left!34971 (left!34971 (left!34971 lt!1509590)))))))))

(assert (=> b!4255125 d!1251189))

(declare-fun d!1251191 () Bool)

(assert (=> d!1251191 (= (height!1836 (right!35301 (left!34971 (left!34971 lt!1509590)))) (ite ((_ is Empty!14207) (right!35301 (left!34971 (left!34971 lt!1509590)))) 0 (ite ((_ is Leaf!21964) (right!35301 (left!34971 (left!34971 lt!1509590)))) 1 (cheight!14418 (right!35301 (left!34971 (left!34971 lt!1509590)))))))))

(assert (=> b!4255125 d!1251191))

(declare-fun d!1251193 () Bool)

(assert (=> d!1251193 (= (isEmpty!27937 (list!16997 (right!35301 (right!35301 lt!1509590)))) ((_ is Nil!47195) (list!16997 (right!35301 (right!35301 lt!1509590)))))))

(assert (=> d!1251011 d!1251193))

(assert (=> d!1251011 d!1251113))

(declare-fun d!1251195 () Bool)

(declare-fun lt!1509652 () Int)

(assert (=> d!1251195 (= lt!1509652 (size!34538 (list!16997 (right!35301 (right!35301 lt!1509590)))))))

(assert (=> d!1251195 (= lt!1509652 (ite ((_ is Empty!14207) (right!35301 (right!35301 lt!1509590))) 0 (ite ((_ is Leaf!21964) (right!35301 (right!35301 lt!1509590))) (csize!28645 (right!35301 (right!35301 lt!1509590))) (csize!28644 (right!35301 (right!35301 lt!1509590))))))))

(assert (=> d!1251195 (= (size!34536 (right!35301 (right!35301 lt!1509590))) lt!1509652)))

(declare-fun bs!598775 () Bool)

(assert (= bs!598775 d!1251195))

(assert (=> bs!598775 m!4839667))

(assert (=> bs!598775 m!4839667))

(assert (=> bs!598775 m!4839953))

(assert (=> d!1251011 d!1251195))

(declare-fun d!1251197 () Bool)

(declare-fun lt!1509653 () Bool)

(assert (=> d!1251197 (= lt!1509653 (isEmpty!27937 (list!16997 (left!34971 (left!34971 (left!34971 lt!1509590))))))))

(assert (=> d!1251197 (= lt!1509653 (= (size!34536 (left!34971 (left!34971 (left!34971 lt!1509590)))) 0))))

(assert (=> d!1251197 (= (isEmpty!27935 (left!34971 (left!34971 (left!34971 lt!1509590)))) lt!1509653)))

(declare-fun bs!598776 () Bool)

(assert (= bs!598776 d!1251197))

(assert (=> bs!598776 m!4840119))

(assert (=> bs!598776 m!4840119))

(declare-fun m!4840131 () Bool)

(assert (=> bs!598776 m!4840131))

(declare-fun m!4840133 () Bool)

(assert (=> bs!598776 m!4840133))

(assert (=> b!4255123 d!1251197))

(declare-fun b!4255229 () Bool)

(declare-fun res!1749229 () Bool)

(declare-fun e!2643111 () Bool)

(assert (=> b!4255229 (=> (not res!1749229) (not e!2643111))))

(assert (=> b!4255229 (= res!1749229 (not (isEmpty!27935 (left!34971 (right!35301 (left!34971 (left!34971 lt!1509590)))))))))

(declare-fun b!4255230 () Bool)

(assert (=> b!4255230 (= e!2643111 (not (isEmpty!27935 (right!35301 (right!35301 (left!34971 (left!34971 lt!1509590)))))))))

(declare-fun d!1251199 () Bool)

(declare-fun res!1749226 () Bool)

(declare-fun e!2643112 () Bool)

(assert (=> d!1251199 (=> res!1749226 e!2643112)))

(assert (=> d!1251199 (= res!1749226 (not ((_ is Node!14207) (right!35301 (left!34971 (left!34971 lt!1509590))))))))

(assert (=> d!1251199 (= (isBalanced!3772 (right!35301 (left!34971 (left!34971 lt!1509590)))) e!2643112)))

(declare-fun b!4255231 () Bool)

(assert (=> b!4255231 (= e!2643112 e!2643111)))

(declare-fun res!1749228 () Bool)

(assert (=> b!4255231 (=> (not res!1749228) (not e!2643111))))

(assert (=> b!4255231 (= res!1749228 (<= (- 1) (- (height!1836 (left!34971 (right!35301 (left!34971 (left!34971 lt!1509590))))) (height!1836 (right!35301 (right!35301 (left!34971 (left!34971 lt!1509590))))))))))

(declare-fun b!4255232 () Bool)

(declare-fun res!1749231 () Bool)

(assert (=> b!4255232 (=> (not res!1749231) (not e!2643111))))

(assert (=> b!4255232 (= res!1749231 (<= (- (height!1836 (left!34971 (right!35301 (left!34971 (left!34971 lt!1509590))))) (height!1836 (right!35301 (right!35301 (left!34971 (left!34971 lt!1509590)))))) 1))))

(declare-fun b!4255233 () Bool)

(declare-fun res!1749227 () Bool)

(assert (=> b!4255233 (=> (not res!1749227) (not e!2643111))))

(assert (=> b!4255233 (= res!1749227 (isBalanced!3772 (right!35301 (right!35301 (left!34971 (left!34971 lt!1509590))))))))

(declare-fun b!4255234 () Bool)

(declare-fun res!1749230 () Bool)

(assert (=> b!4255234 (=> (not res!1749230) (not e!2643111))))

(assert (=> b!4255234 (= res!1749230 (isBalanced!3772 (left!34971 (right!35301 (left!34971 (left!34971 lt!1509590))))))))

(assert (= (and d!1251199 (not res!1749226)) b!4255231))

(assert (= (and b!4255231 res!1749228) b!4255232))

(assert (= (and b!4255232 res!1749231) b!4255234))

(assert (= (and b!4255234 res!1749230) b!4255233))

(assert (= (and b!4255233 res!1749227) b!4255229))

(assert (= (and b!4255229 res!1749229) b!4255230))

(declare-fun m!4840135 () Bool)

(assert (=> b!4255232 m!4840135))

(declare-fun m!4840137 () Bool)

(assert (=> b!4255232 m!4840137))

(declare-fun m!4840139 () Bool)

(assert (=> b!4255230 m!4840139))

(declare-fun m!4840141 () Bool)

(assert (=> b!4255229 m!4840141))

(assert (=> b!4255231 m!4840135))

(assert (=> b!4255231 m!4840137))

(declare-fun m!4840143 () Bool)

(assert (=> b!4255234 m!4840143))

(declare-fun m!4840145 () Bool)

(assert (=> b!4255233 m!4840145))

(assert (=> b!4255127 d!1251199))

(declare-fun d!1251203 () Bool)

(declare-fun lt!1509654 () Int)

(assert (=> d!1251203 (>= lt!1509654 0)))

(declare-fun e!2643115 () Int)

(assert (=> d!1251203 (= lt!1509654 e!2643115)))

(declare-fun c!722459 () Bool)

(assert (=> d!1251203 (= c!722459 ((_ is Nil!47195) lt!1509619))))

(assert (=> d!1251203 (= (size!34538 lt!1509619) lt!1509654)))

(declare-fun b!4255241 () Bool)

(assert (=> b!4255241 (= e!2643115 0)))

(declare-fun b!4255242 () Bool)

(assert (=> b!4255242 (= e!2643115 (+ 1 (size!34538 (t!352848 lt!1509619))))))

(assert (= (and d!1251203 c!722459) b!4255241))

(assert (= (and d!1251203 (not c!722459)) b!4255242))

(declare-fun m!4840147 () Bool)

(assert (=> b!4255242 m!4840147))

(assert (=> b!4255057 d!1251203))

(declare-fun d!1251205 () Bool)

(declare-fun e!2643116 () Bool)

(assert (=> d!1251205 e!2643116))

(declare-fun res!1749238 () Bool)

(assert (=> d!1251205 (=> (not res!1749238) (not e!2643116))))

(declare-fun lt!1509655 () List!47319)

(assert (=> d!1251205 (= res!1749238 (= (content!7414 lt!1509655) (ite (<= (- 1 1) 0) ((as const (Array T!79238 Bool)) false) (store ((as const (Array T!79238 Bool)) false) t!3481 true))))))

(declare-fun e!2643117 () List!47319)

(assert (=> d!1251205 (= lt!1509655 e!2643117)))

(declare-fun c!722460 () Bool)

(assert (=> d!1251205 (= c!722460 (<= (- 1 1) 0))))

(assert (=> d!1251205 (= (fill!213 (- 1 1) t!3481) lt!1509655)))

(declare-fun b!4255243 () Bool)

(assert (=> b!4255243 (= e!2643117 Nil!47195)))

(declare-fun b!4255244 () Bool)

(assert (=> b!4255244 (= e!2643117 (Cons!47195 t!3481 (fill!213 (- (- 1 1) 1) t!3481)))))

(declare-fun b!4255245 () Bool)

(assert (=> b!4255245 (= e!2643116 (= (size!34538 lt!1509655) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!1251205 c!722460) b!4255243))

(assert (= (and d!1251205 (not c!722460)) b!4255244))

(assert (= (and d!1251205 res!1749238) b!4255245))

(declare-fun m!4840149 () Bool)

(assert (=> d!1251205 m!4840149))

(assert (=> d!1251205 m!4839753))

(declare-fun m!4840151 () Bool)

(assert (=> b!4255244 m!4840151))

(declare-fun m!4840153 () Bool)

(assert (=> b!4255245 m!4840153))

(assert (=> b!4255056 d!1251205))

(declare-fun d!1251207 () Bool)

(assert (=> d!1251207 (= (isEmpty!27937 (list!16997 (left!34971 (right!35301 lt!1509590)))) ((_ is Nil!47195) (list!16997 (left!34971 (right!35301 lt!1509590)))))))

(assert (=> d!1251057 d!1251207))

(assert (=> d!1251057 d!1251111))

(declare-fun d!1251209 () Bool)

(declare-fun lt!1509656 () Int)

(assert (=> d!1251209 (= lt!1509656 (size!34538 (list!16997 (left!34971 (right!35301 lt!1509590)))))))

(assert (=> d!1251209 (= lt!1509656 (ite ((_ is Empty!14207) (left!34971 (right!35301 lt!1509590))) 0 (ite ((_ is Leaf!21964) (left!34971 (right!35301 lt!1509590))) (csize!28645 (left!34971 (right!35301 lt!1509590))) (csize!28644 (left!34971 (right!35301 lt!1509590))))))))

(assert (=> d!1251209 (= (size!34536 (left!34971 (right!35301 lt!1509590))) lt!1509656)))

(declare-fun bs!598777 () Bool)

(assert (= bs!598777 d!1251209))

(assert (=> bs!598777 m!4839769))

(assert (=> bs!598777 m!4839769))

(assert (=> bs!598777 m!4839951))

(assert (=> d!1251057 d!1251209))

(assert (=> b!4255126 d!1251189))

(assert (=> b!4255126 d!1251191))

(declare-fun b!4255246 () Bool)

(declare-fun res!1749242 () Bool)

(declare-fun e!2643118 () Bool)

(assert (=> b!4255246 (=> (not res!1749242) (not e!2643118))))

(assert (=> b!4255246 (= res!1749242 (not (isEmpty!27935 (left!34971 (right!35301 (left!34971 (right!35301 lt!1509590)))))))))

(declare-fun b!4255247 () Bool)

(assert (=> b!4255247 (= e!2643118 (not (isEmpty!27935 (right!35301 (right!35301 (left!34971 (right!35301 lt!1509590)))))))))

(declare-fun d!1251211 () Bool)

(declare-fun res!1749239 () Bool)

(declare-fun e!2643119 () Bool)

(assert (=> d!1251211 (=> res!1749239 e!2643119)))

(assert (=> d!1251211 (= res!1749239 (not ((_ is Node!14207) (right!35301 (left!34971 (right!35301 lt!1509590))))))))

(assert (=> d!1251211 (= (isBalanced!3772 (right!35301 (left!34971 (right!35301 lt!1509590)))) e!2643119)))

(declare-fun b!4255248 () Bool)

(assert (=> b!4255248 (= e!2643119 e!2643118)))

(declare-fun res!1749241 () Bool)

(assert (=> b!4255248 (=> (not res!1749241) (not e!2643118))))

(assert (=> b!4255248 (= res!1749241 (<= (- 1) (- (height!1836 (left!34971 (right!35301 (left!34971 (right!35301 lt!1509590))))) (height!1836 (right!35301 (right!35301 (left!34971 (right!35301 lt!1509590))))))))))

(declare-fun b!4255249 () Bool)

(declare-fun res!1749244 () Bool)

(assert (=> b!4255249 (=> (not res!1749244) (not e!2643118))))

(assert (=> b!4255249 (= res!1749244 (<= (- (height!1836 (left!34971 (right!35301 (left!34971 (right!35301 lt!1509590))))) (height!1836 (right!35301 (right!35301 (left!34971 (right!35301 lt!1509590)))))) 1))))

(declare-fun b!4255250 () Bool)

(declare-fun res!1749240 () Bool)

(assert (=> b!4255250 (=> (not res!1749240) (not e!2643118))))

(assert (=> b!4255250 (= res!1749240 (isBalanced!3772 (right!35301 (right!35301 (left!34971 (right!35301 lt!1509590))))))))

(declare-fun b!4255251 () Bool)

(declare-fun res!1749243 () Bool)

(assert (=> b!4255251 (=> (not res!1749243) (not e!2643118))))

(assert (=> b!4255251 (= res!1749243 (isBalanced!3772 (left!34971 (right!35301 (left!34971 (right!35301 lt!1509590))))))))

(assert (= (and d!1251211 (not res!1749239)) b!4255248))

(assert (= (and b!4255248 res!1749241) b!4255249))

(assert (= (and b!4255249 res!1749244) b!4255251))

(assert (= (and b!4255251 res!1749243) b!4255250))

(assert (= (and b!4255250 res!1749240) b!4255246))

(assert (= (and b!4255246 res!1749242) b!4255247))

(declare-fun m!4840167 () Bool)

(assert (=> b!4255249 m!4840167))

(declare-fun m!4840169 () Bool)

(assert (=> b!4255249 m!4840169))

(declare-fun m!4840171 () Bool)

(assert (=> b!4255247 m!4840171))

(declare-fun m!4840173 () Bool)

(assert (=> b!4255246 m!4840173))

(assert (=> b!4255248 m!4840167))

(assert (=> b!4255248 m!4840169))

(declare-fun m!4840175 () Bool)

(assert (=> b!4255251 m!4840175))

(declare-fun m!4840177 () Bool)

(assert (=> b!4255250 m!4840177))

(assert (=> b!4255023 d!1251211))

(declare-fun b!4255258 () Bool)

(declare-fun res!1749254 () Bool)

(declare-fun e!2643122 () Bool)

(assert (=> b!4255258 (=> (not res!1749254) (not e!2643122))))

(assert (=> b!4255258 (= res!1749254 (not (isEmpty!27935 (left!34971 (left!34971 (right!35301 (left!34971 lt!1509590)))))))))

(declare-fun b!4255259 () Bool)

(assert (=> b!4255259 (= e!2643122 (not (isEmpty!27935 (right!35301 (left!34971 (right!35301 (left!34971 lt!1509590)))))))))

(declare-fun d!1251215 () Bool)

(declare-fun res!1749251 () Bool)

(declare-fun e!2643123 () Bool)

(assert (=> d!1251215 (=> res!1749251 e!2643123)))

(assert (=> d!1251215 (= res!1749251 (not ((_ is Node!14207) (left!34971 (right!35301 (left!34971 lt!1509590))))))))

(assert (=> d!1251215 (= (isBalanced!3772 (left!34971 (right!35301 (left!34971 lt!1509590)))) e!2643123)))

(declare-fun b!4255260 () Bool)

(assert (=> b!4255260 (= e!2643123 e!2643122)))

(declare-fun res!1749253 () Bool)

(assert (=> b!4255260 (=> (not res!1749253) (not e!2643122))))

(assert (=> b!4255260 (= res!1749253 (<= (- 1) (- (height!1836 (left!34971 (left!34971 (right!35301 (left!34971 lt!1509590))))) (height!1836 (right!35301 (left!34971 (right!35301 (left!34971 lt!1509590))))))))))

(declare-fun b!4255261 () Bool)

(declare-fun res!1749256 () Bool)

(assert (=> b!4255261 (=> (not res!1749256) (not e!2643122))))

(assert (=> b!4255261 (= res!1749256 (<= (- (height!1836 (left!34971 (left!34971 (right!35301 (left!34971 lt!1509590))))) (height!1836 (right!35301 (left!34971 (right!35301 (left!34971 lt!1509590)))))) 1))))

(declare-fun b!4255262 () Bool)

(declare-fun res!1749252 () Bool)

(assert (=> b!4255262 (=> (not res!1749252) (not e!2643122))))

(assert (=> b!4255262 (= res!1749252 (isBalanced!3772 (right!35301 (left!34971 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun b!4255263 () Bool)

(declare-fun res!1749255 () Bool)

(assert (=> b!4255263 (=> (not res!1749255) (not e!2643122))))

(assert (=> b!4255263 (= res!1749255 (isBalanced!3772 (left!34971 (left!34971 (right!35301 (left!34971 lt!1509590))))))))

(assert (= (and d!1251215 (not res!1749251)) b!4255260))

(assert (= (and b!4255260 res!1749253) b!4255261))

(assert (= (and b!4255261 res!1749256) b!4255263))

(assert (= (and b!4255263 res!1749255) b!4255262))

(assert (= (and b!4255262 res!1749252) b!4255258))

(assert (= (and b!4255258 res!1749254) b!4255259))

(declare-fun m!4840191 () Bool)

(assert (=> b!4255261 m!4840191))

(declare-fun m!4840193 () Bool)

(assert (=> b!4255261 m!4840193))

(declare-fun m!4840195 () Bool)

(assert (=> b!4255259 m!4840195))

(declare-fun m!4840197 () Bool)

(assert (=> b!4255258 m!4840197))

(assert (=> b!4255260 m!4840191))

(assert (=> b!4255260 m!4840193))

(declare-fun m!4840199 () Bool)

(assert (=> b!4255263 m!4840199))

(declare-fun m!4840201 () Bool)

(assert (=> b!4255262 m!4840201))

(assert (=> b!4255075 d!1251215))

(declare-fun b!4255268 () Bool)

(declare-fun res!1749260 () Bool)

(declare-fun e!2643126 () Bool)

(assert (=> b!4255268 (=> (not res!1749260) (not e!2643126))))

(assert (=> b!4255268 (= res!1749260 (not (isEmpty!27935 (left!34971 (right!35301 (right!35301 (left!34971 lt!1509590)))))))))

(declare-fun b!4255269 () Bool)

(assert (=> b!4255269 (= e!2643126 (not (isEmpty!27935 (right!35301 (right!35301 (right!35301 (left!34971 lt!1509590)))))))))

(declare-fun d!1251221 () Bool)

(declare-fun res!1749257 () Bool)

(declare-fun e!2643127 () Bool)

(assert (=> d!1251221 (=> res!1749257 e!2643127)))

(assert (=> d!1251221 (= res!1749257 (not ((_ is Node!14207) (right!35301 (right!35301 (left!34971 lt!1509590))))))))

(assert (=> d!1251221 (= (isBalanced!3772 (right!35301 (right!35301 (left!34971 lt!1509590)))) e!2643127)))

(declare-fun b!4255270 () Bool)

(assert (=> b!4255270 (= e!2643127 e!2643126)))

(declare-fun res!1749259 () Bool)

(assert (=> b!4255270 (=> (not res!1749259) (not e!2643126))))

(assert (=> b!4255270 (= res!1749259 (<= (- 1) (- (height!1836 (left!34971 (right!35301 (right!35301 (left!34971 lt!1509590))))) (height!1836 (right!35301 (right!35301 (right!35301 (left!34971 lt!1509590))))))))))

(declare-fun b!4255271 () Bool)

(declare-fun res!1749262 () Bool)

(assert (=> b!4255271 (=> (not res!1749262) (not e!2643126))))

(assert (=> b!4255271 (= res!1749262 (<= (- (height!1836 (left!34971 (right!35301 (right!35301 (left!34971 lt!1509590))))) (height!1836 (right!35301 (right!35301 (right!35301 (left!34971 lt!1509590)))))) 1))))

(declare-fun b!4255272 () Bool)

(declare-fun res!1749258 () Bool)

(assert (=> b!4255272 (=> (not res!1749258) (not e!2643126))))

(assert (=> b!4255272 (= res!1749258 (isBalanced!3772 (right!35301 (right!35301 (right!35301 (left!34971 lt!1509590))))))))

(declare-fun b!4255273 () Bool)

(declare-fun res!1749261 () Bool)

(assert (=> b!4255273 (=> (not res!1749261) (not e!2643126))))

(assert (=> b!4255273 (= res!1749261 (isBalanced!3772 (left!34971 (right!35301 (right!35301 (left!34971 lt!1509590))))))))

(assert (= (and d!1251221 (not res!1749257)) b!4255270))

(assert (= (and b!4255270 res!1749259) b!4255271))

(assert (= (and b!4255271 res!1749262) b!4255273))

(assert (= (and b!4255273 res!1749261) b!4255272))

(assert (= (and b!4255272 res!1749258) b!4255268))

(assert (= (and b!4255268 res!1749260) b!4255269))

(declare-fun m!4840209 () Bool)

(assert (=> b!4255271 m!4840209))

(declare-fun m!4840211 () Bool)

(assert (=> b!4255271 m!4840211))

(declare-fun m!4840215 () Bool)

(assert (=> b!4255269 m!4840215))

(declare-fun m!4840217 () Bool)

(assert (=> b!4255268 m!4840217))

(assert (=> b!4255270 m!4840209))

(assert (=> b!4255270 m!4840211))

(declare-fun m!4840219 () Bool)

(assert (=> b!4255273 m!4840219))

(declare-fun m!4840221 () Bool)

(assert (=> b!4255272 m!4840221))

(assert (=> b!4255074 d!1251221))

(assert (=> b!4255022 d!1251131))

(assert (=> b!4255022 d!1251133))

(declare-fun d!1251225 () Bool)

(assert (=> d!1251225 (= (isEmpty!27937 (list!16997 (left!34971 (left!34971 lt!1509590)))) ((_ is Nil!47195) (list!16997 (left!34971 (left!34971 lt!1509590)))))))

(assert (=> d!1251025 d!1251225))

(assert (=> d!1251025 d!1251183))

(declare-fun d!1251227 () Bool)

(declare-fun lt!1509658 () Int)

(assert (=> d!1251227 (= lt!1509658 (size!34538 (list!16997 (left!34971 (left!34971 lt!1509590)))))))

(assert (=> d!1251227 (= lt!1509658 (ite ((_ is Empty!14207) (left!34971 (left!34971 lt!1509590))) 0 (ite ((_ is Leaf!21964) (left!34971 (left!34971 lt!1509590))) (csize!28645 (left!34971 (left!34971 lt!1509590))) (csize!28644 (left!34971 (left!34971 lt!1509590))))))))

(assert (=> d!1251227 (= (size!34536 (left!34971 (left!34971 lt!1509590))) lt!1509658)))

(declare-fun bs!598779 () Bool)

(assert (= bs!598779 d!1251227))

(assert (=> bs!598779 m!4839673))

(assert (=> bs!598779 m!4839673))

(assert (=> bs!598779 m!4840111))

(assert (=> d!1251025 d!1251227))

(declare-fun d!1251231 () Bool)

(declare-fun lt!1509659 () Int)

(assert (=> d!1251231 (>= lt!1509659 0)))

(declare-fun e!2643128 () Int)

(assert (=> d!1251231 (= lt!1509659 e!2643128)))

(declare-fun c!722463 () Bool)

(assert (=> d!1251231 (= c!722463 ((_ is Nil!47195) (list!16997 (right!35301 lt!1509590))))))

(assert (=> d!1251231 (= (size!34538 (list!16997 (right!35301 lt!1509590))) lt!1509659)))

(declare-fun b!4255274 () Bool)

(assert (=> b!4255274 (= e!2643128 0)))

(declare-fun b!4255275 () Bool)

(assert (=> b!4255275 (= e!2643128 (+ 1 (size!34538 (t!352848 (list!16997 (right!35301 lt!1509590))))))))

(assert (= (and d!1251231 c!722463) b!4255274))

(assert (= (and d!1251231 (not c!722463)) b!4255275))

(declare-fun m!4840225 () Bool)

(assert (=> b!4255275 m!4840225))

(assert (=> d!1251045 d!1251231))

(assert (=> d!1251045 d!1251043))

(declare-fun b!4255280 () Bool)

(declare-fun res!1749266 () Bool)

(declare-fun e!2643131 () Bool)

(assert (=> b!4255280 (=> (not res!1749266) (not e!2643131))))

(assert (=> b!4255280 (= res!1749266 (not (isEmpty!27935 (left!34971 (left!34971 (left!34971 (right!35301 lt!1509590)))))))))

(declare-fun b!4255281 () Bool)

(assert (=> b!4255281 (= e!2643131 (not (isEmpty!27935 (right!35301 (left!34971 (left!34971 (right!35301 lt!1509590)))))))))

(declare-fun d!1251235 () Bool)

(declare-fun res!1749263 () Bool)

(declare-fun e!2643132 () Bool)

(assert (=> d!1251235 (=> res!1749263 e!2643132)))

(assert (=> d!1251235 (= res!1749263 (not ((_ is Node!14207) (left!34971 (left!34971 (right!35301 lt!1509590))))))))

(assert (=> d!1251235 (= (isBalanced!3772 (left!34971 (left!34971 (right!35301 lt!1509590)))) e!2643132)))

(declare-fun b!4255282 () Bool)

(assert (=> b!4255282 (= e!2643132 e!2643131)))

(declare-fun res!1749265 () Bool)

(assert (=> b!4255282 (=> (not res!1749265) (not e!2643131))))

(assert (=> b!4255282 (= res!1749265 (<= (- 1) (- (height!1836 (left!34971 (left!34971 (left!34971 (right!35301 lt!1509590))))) (height!1836 (right!35301 (left!34971 (left!34971 (right!35301 lt!1509590))))))))))

(declare-fun b!4255283 () Bool)

(declare-fun res!1749268 () Bool)

(assert (=> b!4255283 (=> (not res!1749268) (not e!2643131))))

(assert (=> b!4255283 (= res!1749268 (<= (- (height!1836 (left!34971 (left!34971 (left!34971 (right!35301 lt!1509590))))) (height!1836 (right!35301 (left!34971 (left!34971 (right!35301 lt!1509590)))))) 1))))

(declare-fun b!4255284 () Bool)

(declare-fun res!1749264 () Bool)

(assert (=> b!4255284 (=> (not res!1749264) (not e!2643131))))

(assert (=> b!4255284 (= res!1749264 (isBalanced!3772 (right!35301 (left!34971 (left!34971 (right!35301 lt!1509590))))))))

(declare-fun b!4255285 () Bool)

(declare-fun res!1749267 () Bool)

(assert (=> b!4255285 (=> (not res!1749267) (not e!2643131))))

(assert (=> b!4255285 (= res!1749267 (isBalanced!3772 (left!34971 (left!34971 (left!34971 (right!35301 lt!1509590))))))))

(assert (= (and d!1251235 (not res!1749263)) b!4255282))

(assert (= (and b!4255282 res!1749265) b!4255283))

(assert (= (and b!4255283 res!1749268) b!4255285))

(assert (= (and b!4255285 res!1749267) b!4255284))

(assert (= (and b!4255284 res!1749264) b!4255280))

(assert (= (and b!4255280 res!1749266) b!4255281))

(declare-fun m!4840235 () Bool)

(assert (=> b!4255283 m!4840235))

(declare-fun m!4840237 () Bool)

(assert (=> b!4255283 m!4840237))

(declare-fun m!4840239 () Bool)

(assert (=> b!4255281 m!4840239))

(declare-fun m!4840241 () Bool)

(assert (=> b!4255280 m!4840241))

(assert (=> b!4255282 m!4840235))

(assert (=> b!4255282 m!4840237))

(declare-fun m!4840245 () Bool)

(assert (=> b!4255285 m!4840245))

(declare-fun m!4840247 () Bool)

(assert (=> b!4255284 m!4840247))

(assert (=> b!4255024 d!1251235))

(declare-fun b!4255290 () Bool)

(declare-fun e!2643135 () Bool)

(declare-fun tp!1306031 () Bool)

(assert (=> b!4255290 (= e!2643135 (and tp_is_empty!22793 tp!1306031))))

(assert (=> b!4255063 (= tp!1306025 e!2643135)))

(assert (= (and b!4255063 ((_ is Cons!47195) (innerList!14267 _$14!693))) b!4255290))

(check-sat (not b!4255170) (not d!1251143) tp_is_empty!22793 (not b!4255142) (not b!4255143) (not b!4255214) (not b!4255230) (not b!4255172) (not b!4255232) (not b!4255273) (not d!1251177) (not b!4255216) (not b!4255223) (not b!4255258) (not b!4255150) (not b!4255145) (not b!4255275) (not b!4255213) (not b!4255245) (not b!4255192) (not b!4255244) (not b!4255270) (not b!4255248) (not b!4255198) (not b!4255250) (not b!4255155) (not d!1251145) (not b!4255282) (not b!4255233) (not d!1251181) (not b!4255272) (not b!4255147) (not b!4255202) (not b!4255231) (not b!4255146) (not b!4255242) (not b!4255177) (not b!4255290) (not b!4255210) (not d!1251129) (not b!4255180) (not b!4255151) (not d!1251195) (not b!4255148) (not b!4255271) (not d!1251185) (not b!4255268) (not b!4255201) (not b!4255209) (not b!4255188) (not b!4255204) (not b!4255159) (not b!4255246) (not b!4255174) (not d!1251227) (not d!1251161) (not b!4255263) (not b!4255200) (not b!4255284) (not b!4255140) (not b!4255218) (not b!4255191) (not d!1251209) (not b!4255222) (not d!1251147) (not b!4255228) (not b!4255141) (not d!1251125) (not b!4255280) (not b!4255259) (not b!4255269) (not b!4255195) (not b!4255283) (not d!1251109) (not b!4255260) (not d!1251127) (not b!4255205) (not b!4255227) (not b!4255261) (not b!4255285) (not b!4255154) (not b!4255199) (not b!4255247) (not d!1251141) (not b!4255164) (not b!4255178) (not b!4255149) (not b!4255249) (not d!1251153) (not b!4255144) (not b!4255281) (not b!4255262) (not b!4255229) (not b!4255194) (not b!4255182) (not d!1251205) (not b!4255152) (not d!1251101) (not b!4255160) (not b!4255183) (not d!1251197) (not b!4255251) (not b!4255187) (not b!4255234) (not b!4255197) (not b!4255220) (not b!4255163))
(check-sat)
