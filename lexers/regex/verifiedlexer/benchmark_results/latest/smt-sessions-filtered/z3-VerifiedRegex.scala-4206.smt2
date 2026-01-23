; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228180 () Bool)

(assert start!228180)

(declare-fun res!988666 () Bool)

(declare-fun e!1482651 () Bool)

(assert (=> start!228180 (=> (not res!988666) (not e!1482651))))

(declare-datatypes ((C!13692 0))(
  ( (C!13693 (val!7902 Int)) )
))
(declare-datatypes ((List!27649 0))(
  ( (Nil!27551) (Cons!27551 (h!32952 C!13692) (t!207243 List!27649)) )
))
(declare-datatypes ((IArray!18005 0))(
  ( (IArray!18006 (innerList!9060 List!27649)) )
))
(declare-datatypes ((Conc!9000 0))(
  ( (Node!9000 (left!20894 Conc!9000) (right!21224 Conc!9000) (csize!18230 Int) (cheight!9211 Int)) (Leaf!13207 (xs!11942 IArray!18005) (csize!18231 Int)) (Empty!9000) )
))
(declare-datatypes ((BalanceConc!17732 0))(
  ( (BalanceConc!17733 (c!366706 Conc!9000)) )
))
(declare-fun input!5503 () BalanceConc!17732)

(declare-fun totalInput!803 () BalanceConc!17732)

(declare-fun isSuffix!799 (List!27649 List!27649) Bool)

(declare-fun list!10913 (BalanceConc!17732) List!27649)

(assert (=> start!228180 (= res!988666 (isSuffix!799 (list!10913 input!5503) (list!10913 totalInput!803)))))

(assert (=> start!228180 e!1482651))

(declare-fun e!1482650 () Bool)

(declare-fun inv!37290 (BalanceConc!17732) Bool)

(assert (=> start!228180 (and (inv!37290 input!5503) e!1482650)))

(declare-fun e!1482649 () Bool)

(assert (=> start!228180 (and (inv!37290 totalInput!803) e!1482649)))

(declare-fun b!2313125 () Bool)

(declare-fun lt!857811 () Int)

(declare-fun lt!857812 () Int)

(assert (=> b!2313125 (= e!1482651 (or (< lt!857811 0) (> lt!857811 lt!857812)))))

(declare-fun size!21764 (BalanceConc!17732) Int)

(assert (=> b!2313125 (= lt!857811 (- lt!857812 (size!21764 input!5503)))))

(assert (=> b!2313125 (= lt!857812 (size!21764 totalInput!803))))

(declare-fun b!2313126 () Bool)

(declare-fun tp!734166 () Bool)

(declare-fun inv!37291 (Conc!9000) Bool)

(assert (=> b!2313126 (= e!1482650 (and (inv!37291 (c!366706 input!5503)) tp!734166))))

(declare-fun b!2313127 () Bool)

(declare-fun tp!734167 () Bool)

(assert (=> b!2313127 (= e!1482649 (and (inv!37291 (c!366706 totalInput!803)) tp!734167))))

(assert (= (and start!228180 res!988666) b!2313125))

(assert (= start!228180 b!2313126))

(assert (= start!228180 b!2313127))

(declare-fun m!2740443 () Bool)

(assert (=> start!228180 m!2740443))

(declare-fun m!2740445 () Bool)

(assert (=> start!228180 m!2740445))

(declare-fun m!2740447 () Bool)

(assert (=> start!228180 m!2740447))

(assert (=> start!228180 m!2740443))

(declare-fun m!2740449 () Bool)

(assert (=> start!228180 m!2740449))

(declare-fun m!2740451 () Bool)

(assert (=> start!228180 m!2740451))

(assert (=> start!228180 m!2740447))

(declare-fun m!2740453 () Bool)

(assert (=> b!2313125 m!2740453))

(declare-fun m!2740455 () Bool)

(assert (=> b!2313125 m!2740455))

(declare-fun m!2740457 () Bool)

(assert (=> b!2313126 m!2740457))

(declare-fun m!2740459 () Bool)

(assert (=> b!2313127 m!2740459))

(check-sat (not b!2313127) (not b!2313125) (not start!228180) (not b!2313126))
(check-sat)
(get-model)

(declare-fun d!684289 () Bool)

(declare-fun c!366709 () Bool)

(get-info :version)

(assert (=> d!684289 (= c!366709 ((_ is Node!9000) (c!366706 totalInput!803)))))

(declare-fun e!1482656 () Bool)

(assert (=> d!684289 (= (inv!37291 (c!366706 totalInput!803)) e!1482656)))

(declare-fun b!2313134 () Bool)

(declare-fun inv!37292 (Conc!9000) Bool)

(assert (=> b!2313134 (= e!1482656 (inv!37292 (c!366706 totalInput!803)))))

(declare-fun b!2313135 () Bool)

(declare-fun e!1482657 () Bool)

(assert (=> b!2313135 (= e!1482656 e!1482657)))

(declare-fun res!988669 () Bool)

(assert (=> b!2313135 (= res!988669 (not ((_ is Leaf!13207) (c!366706 totalInput!803))))))

(assert (=> b!2313135 (=> res!988669 e!1482657)))

(declare-fun b!2313136 () Bool)

(declare-fun inv!37293 (Conc!9000) Bool)

(assert (=> b!2313136 (= e!1482657 (inv!37293 (c!366706 totalInput!803)))))

(assert (= (and d!684289 c!366709) b!2313134))

(assert (= (and d!684289 (not c!366709)) b!2313135))

(assert (= (and b!2313135 (not res!988669)) b!2313136))

(declare-fun m!2740461 () Bool)

(assert (=> b!2313134 m!2740461))

(declare-fun m!2740463 () Bool)

(assert (=> b!2313136 m!2740463))

(assert (=> b!2313127 d!684289))

(declare-fun d!684293 () Bool)

(declare-fun lt!857819 () Int)

(declare-fun size!21765 (List!27649) Int)

(assert (=> d!684293 (= lt!857819 (size!21765 (list!10913 input!5503)))))

(declare-fun size!21766 (Conc!9000) Int)

(assert (=> d!684293 (= lt!857819 (size!21766 (c!366706 input!5503)))))

(assert (=> d!684293 (= (size!21764 input!5503) lt!857819)))

(declare-fun bs!458706 () Bool)

(assert (= bs!458706 d!684293))

(assert (=> bs!458706 m!2740447))

(assert (=> bs!458706 m!2740447))

(declare-fun m!2740473 () Bool)

(assert (=> bs!458706 m!2740473))

(declare-fun m!2740475 () Bool)

(assert (=> bs!458706 m!2740475))

(assert (=> b!2313125 d!684293))

(declare-fun d!684299 () Bool)

(declare-fun lt!857820 () Int)

(assert (=> d!684299 (= lt!857820 (size!21765 (list!10913 totalInput!803)))))

(assert (=> d!684299 (= lt!857820 (size!21766 (c!366706 totalInput!803)))))

(assert (=> d!684299 (= (size!21764 totalInput!803) lt!857820)))

(declare-fun bs!458707 () Bool)

(assert (= bs!458707 d!684299))

(assert (=> bs!458707 m!2740443))

(assert (=> bs!458707 m!2740443))

(declare-fun m!2740477 () Bool)

(assert (=> bs!458707 m!2740477))

(declare-fun m!2740479 () Bool)

(assert (=> bs!458707 m!2740479))

(assert (=> b!2313125 d!684299))

(declare-fun d!684301 () Bool)

(declare-fun list!10914 (Conc!9000) List!27649)

(assert (=> d!684301 (= (list!10913 input!5503) (list!10914 (c!366706 input!5503)))))

(declare-fun bs!458709 () Bool)

(assert (= bs!458709 d!684301))

(declare-fun m!2740483 () Bool)

(assert (=> bs!458709 m!2740483))

(assert (=> start!228180 d!684301))

(declare-fun d!684305 () Bool)

(declare-fun isBalanced!2707 (Conc!9000) Bool)

(assert (=> d!684305 (= (inv!37290 totalInput!803) (isBalanced!2707 (c!366706 totalInput!803)))))

(declare-fun bs!458711 () Bool)

(assert (= bs!458711 d!684305))

(declare-fun m!2740487 () Bool)

(assert (=> bs!458711 m!2740487))

(assert (=> start!228180 d!684305))

(declare-fun d!684309 () Bool)

(declare-fun e!1482662 () Bool)

(assert (=> d!684309 e!1482662))

(declare-fun res!988674 () Bool)

(assert (=> d!684309 (=> res!988674 e!1482662)))

(declare-fun lt!857825 () Bool)

(assert (=> d!684309 (= res!988674 (not lt!857825))))

(declare-fun drop!1494 (List!27649 Int) List!27649)

(assert (=> d!684309 (= lt!857825 (= (list!10913 input!5503) (drop!1494 (list!10913 totalInput!803) (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503))))))))

(assert (=> d!684309 (= (isSuffix!799 (list!10913 input!5503) (list!10913 totalInput!803)) lt!857825)))

(declare-fun b!2313141 () Bool)

(assert (=> b!2313141 (= e!1482662 (>= (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503))))))

(assert (= (and d!684309 (not res!988674)) b!2313141))

(assert (=> d!684309 m!2740443))

(assert (=> d!684309 m!2740477))

(assert (=> d!684309 m!2740447))

(assert (=> d!684309 m!2740473))

(assert (=> d!684309 m!2740443))

(declare-fun m!2740489 () Bool)

(assert (=> d!684309 m!2740489))

(assert (=> b!2313141 m!2740443))

(assert (=> b!2313141 m!2740477))

(assert (=> b!2313141 m!2740447))

(assert (=> b!2313141 m!2740473))

(assert (=> start!228180 d!684309))

(declare-fun d!684311 () Bool)

(assert (=> d!684311 (= (list!10913 totalInput!803) (list!10914 (c!366706 totalInput!803)))))

(declare-fun bs!458712 () Bool)

(assert (= bs!458712 d!684311))

(declare-fun m!2740493 () Bool)

(assert (=> bs!458712 m!2740493))

(assert (=> start!228180 d!684311))

(declare-fun d!684315 () Bool)

(assert (=> d!684315 (= (inv!37290 input!5503) (isBalanced!2707 (c!366706 input!5503)))))

(declare-fun bs!458713 () Bool)

(assert (= bs!458713 d!684315))

(declare-fun m!2740495 () Bool)

(assert (=> bs!458713 m!2740495))

(assert (=> start!228180 d!684315))

(declare-fun d!684317 () Bool)

(declare-fun c!366710 () Bool)

(assert (=> d!684317 (= c!366710 ((_ is Node!9000) (c!366706 input!5503)))))

(declare-fun e!1482664 () Bool)

(assert (=> d!684317 (= (inv!37291 (c!366706 input!5503)) e!1482664)))

(declare-fun b!2313143 () Bool)

(assert (=> b!2313143 (= e!1482664 (inv!37292 (c!366706 input!5503)))))

(declare-fun b!2313144 () Bool)

(declare-fun e!1482665 () Bool)

(assert (=> b!2313144 (= e!1482664 e!1482665)))

(declare-fun res!988676 () Bool)

(assert (=> b!2313144 (= res!988676 (not ((_ is Leaf!13207) (c!366706 input!5503))))))

(assert (=> b!2313144 (=> res!988676 e!1482665)))

(declare-fun b!2313145 () Bool)

(assert (=> b!2313145 (= e!1482665 (inv!37293 (c!366706 input!5503)))))

(assert (= (and d!684317 c!366710) b!2313143))

(assert (= (and d!684317 (not c!366710)) b!2313144))

(assert (= (and b!2313144 (not res!988676)) b!2313145))

(declare-fun m!2740501 () Bool)

(assert (=> b!2313143 m!2740501))

(declare-fun m!2740503 () Bool)

(assert (=> b!2313145 m!2740503))

(assert (=> b!2313126 d!684317))

(declare-fun tp!734175 () Bool)

(declare-fun b!2313154 () Bool)

(declare-fun tp!734176 () Bool)

(declare-fun e!1482671 () Bool)

(assert (=> b!2313154 (= e!1482671 (and (inv!37291 (left!20894 (c!366706 totalInput!803))) tp!734175 (inv!37291 (right!21224 (c!366706 totalInput!803))) tp!734176))))

(declare-fun b!2313156 () Bool)

(declare-fun e!1482670 () Bool)

(declare-fun tp!734174 () Bool)

(assert (=> b!2313156 (= e!1482670 tp!734174)))

(declare-fun b!2313155 () Bool)

(declare-fun inv!37294 (IArray!18005) Bool)

(assert (=> b!2313155 (= e!1482671 (and (inv!37294 (xs!11942 (c!366706 totalInput!803))) e!1482670))))

(assert (=> b!2313127 (= tp!734167 (and (inv!37291 (c!366706 totalInput!803)) e!1482671))))

(assert (= (and b!2313127 ((_ is Node!9000) (c!366706 totalInput!803))) b!2313154))

(assert (= b!2313155 b!2313156))

(assert (= (and b!2313127 ((_ is Leaf!13207) (c!366706 totalInput!803))) b!2313155))

(declare-fun m!2740505 () Bool)

(assert (=> b!2313154 m!2740505))

(declare-fun m!2740507 () Bool)

(assert (=> b!2313154 m!2740507))

(declare-fun m!2740509 () Bool)

(assert (=> b!2313155 m!2740509))

(assert (=> b!2313127 m!2740459))

(declare-fun tp!734178 () Bool)

(declare-fun tp!734179 () Bool)

(declare-fun b!2313157 () Bool)

(declare-fun e!1482673 () Bool)

(assert (=> b!2313157 (= e!1482673 (and (inv!37291 (left!20894 (c!366706 input!5503))) tp!734178 (inv!37291 (right!21224 (c!366706 input!5503))) tp!734179))))

(declare-fun b!2313159 () Bool)

(declare-fun e!1482672 () Bool)

(declare-fun tp!734177 () Bool)

(assert (=> b!2313159 (= e!1482672 tp!734177)))

(declare-fun b!2313158 () Bool)

(assert (=> b!2313158 (= e!1482673 (and (inv!37294 (xs!11942 (c!366706 input!5503))) e!1482672))))

(assert (=> b!2313126 (= tp!734166 (and (inv!37291 (c!366706 input!5503)) e!1482673))))

(assert (= (and b!2313126 ((_ is Node!9000) (c!366706 input!5503))) b!2313157))

(assert (= b!2313158 b!2313159))

(assert (= (and b!2313126 ((_ is Leaf!13207) (c!366706 input!5503))) b!2313158))

(declare-fun m!2740511 () Bool)

(assert (=> b!2313157 m!2740511))

(declare-fun m!2740513 () Bool)

(assert (=> b!2313157 m!2740513))

(declare-fun m!2740515 () Bool)

(assert (=> b!2313158 m!2740515))

(assert (=> b!2313126 m!2740457))

(check-sat (not b!2313159) (not b!2313157) (not b!2313145) (not b!2313136) (not b!2313158) (not d!684311) (not b!2313154) (not d!684301) (not d!684293) (not b!2313134) (not b!2313141) (not d!684315) (not b!2313155) (not b!2313143) (not b!2313156) (not d!684299) (not b!2313127) (not d!684309) (not b!2313126) (not d!684305))
(check-sat)
(get-model)

(declare-fun d!684325 () Bool)

(declare-fun res!988693 () Bool)

(declare-fun e!1482695 () Bool)

(assert (=> d!684325 (=> res!988693 e!1482695)))

(assert (=> d!684325 (= res!988693 (not ((_ is Node!9000) (c!366706 totalInput!803))))))

(assert (=> d!684325 (= (isBalanced!2707 (c!366706 totalInput!803)) e!1482695)))

(declare-fun b!2313198 () Bool)

(declare-fun res!988696 () Bool)

(declare-fun e!1482694 () Bool)

(assert (=> b!2313198 (=> (not res!988696) (not e!1482694))))

(assert (=> b!2313198 (= res!988696 (isBalanced!2707 (right!21224 (c!366706 totalInput!803))))))

(declare-fun b!2313199 () Bool)

(declare-fun res!988698 () Bool)

(assert (=> b!2313199 (=> (not res!988698) (not e!1482694))))

(declare-fun height!1299 (Conc!9000) Int)

(assert (=> b!2313199 (= res!988698 (<= (- (height!1299 (left!20894 (c!366706 totalInput!803))) (height!1299 (right!21224 (c!366706 totalInput!803)))) 1))))

(declare-fun b!2313200 () Bool)

(declare-fun res!988697 () Bool)

(assert (=> b!2313200 (=> (not res!988697) (not e!1482694))))

(declare-fun isEmpty!15749 (Conc!9000) Bool)

(assert (=> b!2313200 (= res!988697 (not (isEmpty!15749 (left!20894 (c!366706 totalInput!803)))))))

(declare-fun b!2313201 () Bool)

(declare-fun res!988695 () Bool)

(assert (=> b!2313201 (=> (not res!988695) (not e!1482694))))

(assert (=> b!2313201 (= res!988695 (isBalanced!2707 (left!20894 (c!366706 totalInput!803))))))

(declare-fun b!2313202 () Bool)

(assert (=> b!2313202 (= e!1482695 e!1482694)))

(declare-fun res!988694 () Bool)

(assert (=> b!2313202 (=> (not res!988694) (not e!1482694))))

(assert (=> b!2313202 (= res!988694 (<= (- 1) (- (height!1299 (left!20894 (c!366706 totalInput!803))) (height!1299 (right!21224 (c!366706 totalInput!803))))))))

(declare-fun b!2313203 () Bool)

(assert (=> b!2313203 (= e!1482694 (not (isEmpty!15749 (right!21224 (c!366706 totalInput!803)))))))

(assert (= (and d!684325 (not res!988693)) b!2313202))

(assert (= (and b!2313202 res!988694) b!2313199))

(assert (= (and b!2313199 res!988698) b!2313201))

(assert (= (and b!2313201 res!988695) b!2313198))

(assert (= (and b!2313198 res!988696) b!2313200))

(assert (= (and b!2313200 res!988697) b!2313203))

(declare-fun m!2740537 () Bool)

(assert (=> b!2313203 m!2740537))

(declare-fun m!2740539 () Bool)

(assert (=> b!2313202 m!2740539))

(declare-fun m!2740541 () Bool)

(assert (=> b!2313202 m!2740541))

(declare-fun m!2740543 () Bool)

(assert (=> b!2313201 m!2740543))

(declare-fun m!2740545 () Bool)

(assert (=> b!2313198 m!2740545))

(declare-fun m!2740547 () Bool)

(assert (=> b!2313200 m!2740547))

(assert (=> b!2313199 m!2740539))

(assert (=> b!2313199 m!2740541))

(assert (=> d!684305 d!684325))

(declare-fun b!2313213 () Bool)

(declare-fun e!1482700 () List!27649)

(declare-fun e!1482701 () List!27649)

(assert (=> b!2313213 (= e!1482700 e!1482701)))

(declare-fun c!366720 () Bool)

(assert (=> b!2313213 (= c!366720 ((_ is Leaf!13207) (c!366706 input!5503)))))

(declare-fun d!684327 () Bool)

(declare-fun c!366719 () Bool)

(assert (=> d!684327 (= c!366719 ((_ is Empty!9000) (c!366706 input!5503)))))

(assert (=> d!684327 (= (list!10914 (c!366706 input!5503)) e!1482700)))

(declare-fun b!2313215 () Bool)

(declare-fun ++!6746 (List!27649 List!27649) List!27649)

(assert (=> b!2313215 (= e!1482701 (++!6746 (list!10914 (left!20894 (c!366706 input!5503))) (list!10914 (right!21224 (c!366706 input!5503)))))))

(declare-fun b!2313214 () Bool)

(declare-fun list!10916 (IArray!18005) List!27649)

(assert (=> b!2313214 (= e!1482701 (list!10916 (xs!11942 (c!366706 input!5503))))))

(declare-fun b!2313212 () Bool)

(assert (=> b!2313212 (= e!1482700 Nil!27551)))

(assert (= (and d!684327 c!366719) b!2313212))

(assert (= (and d!684327 (not c!366719)) b!2313213))

(assert (= (and b!2313213 c!366720) b!2313214))

(assert (= (and b!2313213 (not c!366720)) b!2313215))

(declare-fun m!2740549 () Bool)

(assert (=> b!2313215 m!2740549))

(declare-fun m!2740551 () Bool)

(assert (=> b!2313215 m!2740551))

(assert (=> b!2313215 m!2740549))

(assert (=> b!2313215 m!2740551))

(declare-fun m!2740553 () Bool)

(assert (=> b!2313215 m!2740553))

(declare-fun m!2740555 () Bool)

(assert (=> b!2313214 m!2740555))

(assert (=> d!684301 d!684327))

(assert (=> b!2313127 d!684289))

(declare-fun d!684329 () Bool)

(declare-fun lt!857829 () Int)

(assert (=> d!684329 (>= lt!857829 0)))

(declare-fun e!1482704 () Int)

(assert (=> d!684329 (= lt!857829 e!1482704)))

(declare-fun c!366723 () Bool)

(assert (=> d!684329 (= c!366723 ((_ is Nil!27551) (list!10913 input!5503)))))

(assert (=> d!684329 (= (size!21765 (list!10913 input!5503)) lt!857829)))

(declare-fun b!2313220 () Bool)

(assert (=> b!2313220 (= e!1482704 0)))

(declare-fun b!2313221 () Bool)

(assert (=> b!2313221 (= e!1482704 (+ 1 (size!21765 (t!207243 (list!10913 input!5503)))))))

(assert (= (and d!684329 c!366723) b!2313220))

(assert (= (and d!684329 (not c!366723)) b!2313221))

(declare-fun m!2740557 () Bool)

(assert (=> b!2313221 m!2740557))

(assert (=> d!684293 d!684329))

(assert (=> d!684293 d!684301))

(declare-fun d!684331 () Bool)

(declare-fun lt!857832 () Int)

(assert (=> d!684331 (= lt!857832 (size!21765 (list!10914 (c!366706 input!5503))))))

(assert (=> d!684331 (= lt!857832 (ite ((_ is Empty!9000) (c!366706 input!5503)) 0 (ite ((_ is Leaf!13207) (c!366706 input!5503)) (csize!18231 (c!366706 input!5503)) (csize!18230 (c!366706 input!5503)))))))

(assert (=> d!684331 (= (size!21766 (c!366706 input!5503)) lt!857832)))

(declare-fun bs!458716 () Bool)

(assert (= bs!458716 d!684331))

(assert (=> bs!458716 m!2740483))

(assert (=> bs!458716 m!2740483))

(declare-fun m!2740567 () Bool)

(assert (=> bs!458716 m!2740567))

(assert (=> d!684293 d!684331))

(declare-fun d!684339 () Bool)

(declare-fun lt!857833 () Int)

(assert (=> d!684339 (>= lt!857833 0)))

(declare-fun e!1482709 () Int)

(assert (=> d!684339 (= lt!857833 e!1482709)))

(declare-fun c!366726 () Bool)

(assert (=> d!684339 (= c!366726 ((_ is Nil!27551) (list!10913 totalInput!803)))))

(assert (=> d!684339 (= (size!21765 (list!10913 totalInput!803)) lt!857833)))

(declare-fun b!2313228 () Bool)

(assert (=> b!2313228 (= e!1482709 0)))

(declare-fun b!2313229 () Bool)

(assert (=> b!2313229 (= e!1482709 (+ 1 (size!21765 (t!207243 (list!10913 totalInput!803)))))))

(assert (= (and d!684339 c!366726) b!2313228))

(assert (= (and d!684339 (not c!366726)) b!2313229))

(declare-fun m!2740569 () Bool)

(assert (=> b!2313229 m!2740569))

(assert (=> d!684299 d!684339))

(assert (=> d!684299 d!684311))

(declare-fun d!684341 () Bool)

(declare-fun lt!857834 () Int)

(assert (=> d!684341 (= lt!857834 (size!21765 (list!10914 (c!366706 totalInput!803))))))

(assert (=> d!684341 (= lt!857834 (ite ((_ is Empty!9000) (c!366706 totalInput!803)) 0 (ite ((_ is Leaf!13207) (c!366706 totalInput!803)) (csize!18231 (c!366706 totalInput!803)) (csize!18230 (c!366706 totalInput!803)))))))

(assert (=> d!684341 (= (size!21766 (c!366706 totalInput!803)) lt!857834)))

(declare-fun bs!458717 () Bool)

(assert (= bs!458717 d!684341))

(assert (=> bs!458717 m!2740493))

(assert (=> bs!458717 m!2740493))

(declare-fun m!2740571 () Bool)

(assert (=> bs!458717 m!2740571))

(assert (=> d!684299 d!684341))

(assert (=> b!2313141 d!684339))

(assert (=> b!2313141 d!684329))

(declare-fun d!684343 () Bool)

(declare-fun res!988711 () Bool)

(declare-fun e!1482714 () Bool)

(assert (=> d!684343 (=> (not res!988711) (not e!1482714))))

(assert (=> d!684343 (= res!988711 (<= (size!21765 (list!10916 (xs!11942 (c!366706 input!5503)))) 512))))

(assert (=> d!684343 (= (inv!37293 (c!366706 input!5503)) e!1482714)))

(declare-fun b!2313240 () Bool)

(declare-fun res!988712 () Bool)

(assert (=> b!2313240 (=> (not res!988712) (not e!1482714))))

(assert (=> b!2313240 (= res!988712 (= (csize!18231 (c!366706 input!5503)) (size!21765 (list!10916 (xs!11942 (c!366706 input!5503))))))))

(declare-fun b!2313241 () Bool)

(assert (=> b!2313241 (= e!1482714 (and (> (csize!18231 (c!366706 input!5503)) 0) (<= (csize!18231 (c!366706 input!5503)) 512)))))

(assert (= (and d!684343 res!988711) b!2313240))

(assert (= (and b!2313240 res!988712) b!2313241))

(assert (=> d!684343 m!2740555))

(assert (=> d!684343 m!2740555))

(declare-fun m!2740573 () Bool)

(assert (=> d!684343 m!2740573))

(assert (=> b!2313240 m!2740555))

(assert (=> b!2313240 m!2740555))

(assert (=> b!2313240 m!2740573))

(assert (=> b!2313145 d!684343))

(declare-fun d!684345 () Bool)

(declare-fun c!366727 () Bool)

(assert (=> d!684345 (= c!366727 ((_ is Node!9000) (left!20894 (c!366706 input!5503))))))

(declare-fun e!1482715 () Bool)

(assert (=> d!684345 (= (inv!37291 (left!20894 (c!366706 input!5503))) e!1482715)))

(declare-fun b!2313242 () Bool)

(assert (=> b!2313242 (= e!1482715 (inv!37292 (left!20894 (c!366706 input!5503))))))

(declare-fun b!2313243 () Bool)

(declare-fun e!1482716 () Bool)

(assert (=> b!2313243 (= e!1482715 e!1482716)))

(declare-fun res!988713 () Bool)

(assert (=> b!2313243 (= res!988713 (not ((_ is Leaf!13207) (left!20894 (c!366706 input!5503)))))))

(assert (=> b!2313243 (=> res!988713 e!1482716)))

(declare-fun b!2313244 () Bool)

(assert (=> b!2313244 (= e!1482716 (inv!37293 (left!20894 (c!366706 input!5503))))))

(assert (= (and d!684345 c!366727) b!2313242))

(assert (= (and d!684345 (not c!366727)) b!2313243))

(assert (= (and b!2313243 (not res!988713)) b!2313244))

(declare-fun m!2740575 () Bool)

(assert (=> b!2313242 m!2740575))

(declare-fun m!2740577 () Bool)

(assert (=> b!2313244 m!2740577))

(assert (=> b!2313157 d!684345))

(declare-fun d!684347 () Bool)

(declare-fun c!366728 () Bool)

(assert (=> d!684347 (= c!366728 ((_ is Node!9000) (right!21224 (c!366706 input!5503))))))

(declare-fun e!1482717 () Bool)

(assert (=> d!684347 (= (inv!37291 (right!21224 (c!366706 input!5503))) e!1482717)))

(declare-fun b!2313245 () Bool)

(assert (=> b!2313245 (= e!1482717 (inv!37292 (right!21224 (c!366706 input!5503))))))

(declare-fun b!2313246 () Bool)

(declare-fun e!1482718 () Bool)

(assert (=> b!2313246 (= e!1482717 e!1482718)))

(declare-fun res!988714 () Bool)

(assert (=> b!2313246 (= res!988714 (not ((_ is Leaf!13207) (right!21224 (c!366706 input!5503)))))))

(assert (=> b!2313246 (=> res!988714 e!1482718)))

(declare-fun b!2313247 () Bool)

(assert (=> b!2313247 (= e!1482718 (inv!37293 (right!21224 (c!366706 input!5503))))))

(assert (= (and d!684347 c!366728) b!2313245))

(assert (= (and d!684347 (not c!366728)) b!2313246))

(assert (= (and b!2313246 (not res!988714)) b!2313247))

(declare-fun m!2740579 () Bool)

(assert (=> b!2313245 m!2740579))

(declare-fun m!2740581 () Bool)

(assert (=> b!2313247 m!2740581))

(assert (=> b!2313157 d!684347))

(declare-fun d!684349 () Bool)

(assert (=> d!684349 (= (inv!37294 (xs!11942 (c!366706 input!5503))) (<= (size!21765 (innerList!9060 (xs!11942 (c!366706 input!5503)))) 2147483647))))

(declare-fun bs!458718 () Bool)

(assert (= bs!458718 d!684349))

(declare-fun m!2740583 () Bool)

(assert (=> bs!458718 m!2740583))

(assert (=> b!2313158 d!684349))

(declare-fun d!684351 () Bool)

(declare-fun res!988715 () Bool)

(declare-fun e!1482721 () Bool)

(assert (=> d!684351 (=> res!988715 e!1482721)))

(assert (=> d!684351 (= res!988715 (not ((_ is Node!9000) (c!366706 input!5503))))))

(assert (=> d!684351 (= (isBalanced!2707 (c!366706 input!5503)) e!1482721)))

(declare-fun b!2313251 () Bool)

(declare-fun res!988721 () Bool)

(declare-fun e!1482720 () Bool)

(assert (=> b!2313251 (=> (not res!988721) (not e!1482720))))

(assert (=> b!2313251 (= res!988721 (isBalanced!2707 (right!21224 (c!366706 input!5503))))))

(declare-fun b!2313252 () Bool)

(declare-fun res!988723 () Bool)

(assert (=> b!2313252 (=> (not res!988723) (not e!1482720))))

(assert (=> b!2313252 (= res!988723 (<= (- (height!1299 (left!20894 (c!366706 input!5503))) (height!1299 (right!21224 (c!366706 input!5503)))) 1))))

(declare-fun b!2313253 () Bool)

(declare-fun res!988722 () Bool)

(assert (=> b!2313253 (=> (not res!988722) (not e!1482720))))

(assert (=> b!2313253 (= res!988722 (not (isEmpty!15749 (left!20894 (c!366706 input!5503)))))))

(declare-fun b!2313254 () Bool)

(declare-fun res!988720 () Bool)

(assert (=> b!2313254 (=> (not res!988720) (not e!1482720))))

(assert (=> b!2313254 (= res!988720 (isBalanced!2707 (left!20894 (c!366706 input!5503))))))

(declare-fun b!2313255 () Bool)

(assert (=> b!2313255 (= e!1482721 e!1482720)))

(declare-fun res!988718 () Bool)

(assert (=> b!2313255 (=> (not res!988718) (not e!1482720))))

(assert (=> b!2313255 (= res!988718 (<= (- 1) (- (height!1299 (left!20894 (c!366706 input!5503))) (height!1299 (right!21224 (c!366706 input!5503))))))))

(declare-fun b!2313256 () Bool)

(assert (=> b!2313256 (= e!1482720 (not (isEmpty!15749 (right!21224 (c!366706 input!5503)))))))

(assert (= (and d!684351 (not res!988715)) b!2313255))

(assert (= (and b!2313255 res!988718) b!2313252))

(assert (= (and b!2313252 res!988723) b!2313254))

(assert (= (and b!2313254 res!988720) b!2313251))

(assert (= (and b!2313251 res!988721) b!2313253))

(assert (= (and b!2313253 res!988722) b!2313256))

(declare-fun m!2740589 () Bool)

(assert (=> b!2313256 m!2740589))

(declare-fun m!2740593 () Bool)

(assert (=> b!2313255 m!2740593))

(declare-fun m!2740597 () Bool)

(assert (=> b!2313255 m!2740597))

(declare-fun m!2740599 () Bool)

(assert (=> b!2313254 m!2740599))

(declare-fun m!2740601 () Bool)

(assert (=> b!2313251 m!2740601))

(declare-fun m!2740603 () Bool)

(assert (=> b!2313253 m!2740603))

(assert (=> b!2313252 m!2740593))

(assert (=> b!2313252 m!2740597))

(assert (=> d!684315 d!684351))

(declare-fun d!684354 () Bool)

(declare-fun c!366729 () Bool)

(assert (=> d!684354 (= c!366729 ((_ is Node!9000) (left!20894 (c!366706 totalInput!803))))))

(declare-fun e!1482722 () Bool)

(assert (=> d!684354 (= (inv!37291 (left!20894 (c!366706 totalInput!803))) e!1482722)))

(declare-fun b!2313257 () Bool)

(assert (=> b!2313257 (= e!1482722 (inv!37292 (left!20894 (c!366706 totalInput!803))))))

(declare-fun b!2313258 () Bool)

(declare-fun e!1482723 () Bool)

(assert (=> b!2313258 (= e!1482722 e!1482723)))

(declare-fun res!988724 () Bool)

(assert (=> b!2313258 (= res!988724 (not ((_ is Leaf!13207) (left!20894 (c!366706 totalInput!803)))))))

(assert (=> b!2313258 (=> res!988724 e!1482723)))

(declare-fun b!2313259 () Bool)

(assert (=> b!2313259 (= e!1482723 (inv!37293 (left!20894 (c!366706 totalInput!803))))))

(assert (= (and d!684354 c!366729) b!2313257))

(assert (= (and d!684354 (not c!366729)) b!2313258))

(assert (= (and b!2313258 (not res!988724)) b!2313259))

(declare-fun m!2740607 () Bool)

(assert (=> b!2313257 m!2740607))

(declare-fun m!2740609 () Bool)

(assert (=> b!2313259 m!2740609))

(assert (=> b!2313154 d!684354))

(declare-fun d!684357 () Bool)

(declare-fun c!366730 () Bool)

(assert (=> d!684357 (= c!366730 ((_ is Node!9000) (right!21224 (c!366706 totalInput!803))))))

(declare-fun e!1482724 () Bool)

(assert (=> d!684357 (= (inv!37291 (right!21224 (c!366706 totalInput!803))) e!1482724)))

(declare-fun b!2313260 () Bool)

(assert (=> b!2313260 (= e!1482724 (inv!37292 (right!21224 (c!366706 totalInput!803))))))

(declare-fun b!2313261 () Bool)

(declare-fun e!1482725 () Bool)

(assert (=> b!2313261 (= e!1482724 e!1482725)))

(declare-fun res!988725 () Bool)

(assert (=> b!2313261 (= res!988725 (not ((_ is Leaf!13207) (right!21224 (c!366706 totalInput!803)))))))

(assert (=> b!2313261 (=> res!988725 e!1482725)))

(declare-fun b!2313262 () Bool)

(assert (=> b!2313262 (= e!1482725 (inv!37293 (right!21224 (c!366706 totalInput!803))))))

(assert (= (and d!684357 c!366730) b!2313260))

(assert (= (and d!684357 (not c!366730)) b!2313261))

(assert (= (and b!2313261 (not res!988725)) b!2313262))

(declare-fun m!2740611 () Bool)

(assert (=> b!2313260 m!2740611))

(declare-fun m!2740613 () Bool)

(assert (=> b!2313262 m!2740613))

(assert (=> b!2313154 d!684357))

(declare-fun b!2313264 () Bool)

(declare-fun e!1482726 () List!27649)

(declare-fun e!1482727 () List!27649)

(assert (=> b!2313264 (= e!1482726 e!1482727)))

(declare-fun c!366732 () Bool)

(assert (=> b!2313264 (= c!366732 ((_ is Leaf!13207) (c!366706 totalInput!803)))))

(declare-fun d!684359 () Bool)

(declare-fun c!366731 () Bool)

(assert (=> d!684359 (= c!366731 ((_ is Empty!9000) (c!366706 totalInput!803)))))

(assert (=> d!684359 (= (list!10914 (c!366706 totalInput!803)) e!1482726)))

(declare-fun b!2313266 () Bool)

(assert (=> b!2313266 (= e!1482727 (++!6746 (list!10914 (left!20894 (c!366706 totalInput!803))) (list!10914 (right!21224 (c!366706 totalInput!803)))))))

(declare-fun b!2313265 () Bool)

(assert (=> b!2313265 (= e!1482727 (list!10916 (xs!11942 (c!366706 totalInput!803))))))

(declare-fun b!2313263 () Bool)

(assert (=> b!2313263 (= e!1482726 Nil!27551)))

(assert (= (and d!684359 c!366731) b!2313263))

(assert (= (and d!684359 (not c!366731)) b!2313264))

(assert (= (and b!2313264 c!366732) b!2313265))

(assert (= (and b!2313264 (not c!366732)) b!2313266))

(declare-fun m!2740615 () Bool)

(assert (=> b!2313266 m!2740615))

(declare-fun m!2740617 () Bool)

(assert (=> b!2313266 m!2740617))

(assert (=> b!2313266 m!2740615))

(assert (=> b!2313266 m!2740617))

(declare-fun m!2740619 () Bool)

(assert (=> b!2313266 m!2740619))

(declare-fun m!2740621 () Bool)

(assert (=> b!2313265 m!2740621))

(assert (=> d!684311 d!684359))

(assert (=> b!2313126 d!684317))

(declare-fun d!684361 () Bool)

(assert (=> d!684361 (= (inv!37294 (xs!11942 (c!366706 totalInput!803))) (<= (size!21765 (innerList!9060 (xs!11942 (c!366706 totalInput!803)))) 2147483647))))

(declare-fun bs!458720 () Bool)

(assert (= bs!458720 d!684361))

(declare-fun m!2740625 () Bool)

(assert (=> bs!458720 m!2740625))

(assert (=> b!2313155 d!684361))

(declare-fun d!684365 () Bool)

(declare-fun res!988738 () Bool)

(declare-fun e!1482733 () Bool)

(assert (=> d!684365 (=> (not res!988738) (not e!1482733))))

(assert (=> d!684365 (= res!988738 (= (csize!18230 (c!366706 input!5503)) (+ (size!21766 (left!20894 (c!366706 input!5503))) (size!21766 (right!21224 (c!366706 input!5503))))))))

(assert (=> d!684365 (= (inv!37292 (c!366706 input!5503)) e!1482733)))

(declare-fun b!2313279 () Bool)

(declare-fun res!988739 () Bool)

(assert (=> b!2313279 (=> (not res!988739) (not e!1482733))))

(assert (=> b!2313279 (= res!988739 (and (not (= (left!20894 (c!366706 input!5503)) Empty!9000)) (not (= (right!21224 (c!366706 input!5503)) Empty!9000))))))

(declare-fun b!2313280 () Bool)

(declare-fun res!988740 () Bool)

(assert (=> b!2313280 (=> (not res!988740) (not e!1482733))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2313280 (= res!988740 (= (cheight!9211 (c!366706 input!5503)) (+ (max!0 (height!1299 (left!20894 (c!366706 input!5503))) (height!1299 (right!21224 (c!366706 input!5503)))) 1)))))

(declare-fun b!2313281 () Bool)

(assert (=> b!2313281 (= e!1482733 (<= 0 (cheight!9211 (c!366706 input!5503))))))

(assert (= (and d!684365 res!988738) b!2313279))

(assert (= (and b!2313279 res!988739) b!2313280))

(assert (= (and b!2313280 res!988740) b!2313281))

(declare-fun m!2740631 () Bool)

(assert (=> d!684365 m!2740631))

(declare-fun m!2740633 () Bool)

(assert (=> d!684365 m!2740633))

(assert (=> b!2313280 m!2740593))

(assert (=> b!2313280 m!2740597))

(assert (=> b!2313280 m!2740593))

(assert (=> b!2313280 m!2740597))

(declare-fun m!2740635 () Bool)

(assert (=> b!2313280 m!2740635))

(assert (=> b!2313143 d!684365))

(declare-fun b!2313318 () Bool)

(declare-fun e!1482757 () List!27649)

(assert (=> b!2313318 (= e!1482757 (drop!1494 (t!207243 (list!10913 totalInput!803)) (- (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503))) 1)))))

(declare-fun b!2313319 () Bool)

(declare-fun e!1482758 () List!27649)

(assert (=> b!2313319 (= e!1482758 e!1482757)))

(declare-fun c!366750 () Bool)

(assert (=> b!2313319 (= c!366750 (<= (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503))) 0))))

(declare-fun bm!137418 () Bool)

(declare-fun call!137423 () Int)

(assert (=> bm!137418 (= call!137423 (size!21765 (list!10913 totalInput!803)))))

(declare-fun b!2313320 () Bool)

(declare-fun e!1482756 () Int)

(assert (=> b!2313320 (= e!1482756 (- call!137423 (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503)))))))

(declare-fun b!2313321 () Bool)

(assert (=> b!2313321 (= e!1482758 Nil!27551)))

(declare-fun b!2313322 () Bool)

(declare-fun e!1482755 () Int)

(assert (=> b!2313322 (= e!1482755 call!137423)))

(declare-fun b!2313323 () Bool)

(assert (=> b!2313323 (= e!1482757 (list!10913 totalInput!803))))

(declare-fun b!2313324 () Bool)

(assert (=> b!2313324 (= e!1482756 0)))

(declare-fun d!684369 () Bool)

(declare-fun e!1482754 () Bool)

(assert (=> d!684369 e!1482754))

(declare-fun res!988745 () Bool)

(assert (=> d!684369 (=> (not res!988745) (not e!1482754))))

(declare-fun lt!857839 () List!27649)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3724 (List!27649) (InoxSet C!13692))

(assert (=> d!684369 (= res!988745 (= ((_ map implies) (content!3724 lt!857839) (content!3724 (list!10913 totalInput!803))) ((as const (InoxSet C!13692)) true)))))

(assert (=> d!684369 (= lt!857839 e!1482758)))

(declare-fun c!366752 () Bool)

(assert (=> d!684369 (= c!366752 ((_ is Nil!27551) (list!10913 totalInput!803)))))

(assert (=> d!684369 (= (drop!1494 (list!10913 totalInput!803) (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503)))) lt!857839)))

(declare-fun b!2313325 () Bool)

(assert (=> b!2313325 (= e!1482754 (= (size!21765 lt!857839) e!1482755))))

(declare-fun c!366749 () Bool)

(assert (=> b!2313325 (= c!366749 (<= (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503))) 0))))

(declare-fun b!2313326 () Bool)

(assert (=> b!2313326 (= e!1482755 e!1482756)))

(declare-fun c!366751 () Bool)

(assert (=> b!2313326 (= c!366751 (>= (- (size!21765 (list!10913 totalInput!803)) (size!21765 (list!10913 input!5503))) call!137423))))

(assert (= (and d!684369 c!366752) b!2313321))

(assert (= (and d!684369 (not c!366752)) b!2313319))

(assert (= (and b!2313319 c!366750) b!2313323))

(assert (= (and b!2313319 (not c!366750)) b!2313318))

(assert (= (and d!684369 res!988745) b!2313325))

(assert (= (and b!2313325 c!366749) b!2313322))

(assert (= (and b!2313325 (not c!366749)) b!2313326))

(assert (= (and b!2313326 c!366751) b!2313324))

(assert (= (and b!2313326 (not c!366751)) b!2313320))

(assert (= (or b!2313322 b!2313326 b!2313320) bm!137418))

(declare-fun m!2740637 () Bool)

(assert (=> b!2313318 m!2740637))

(assert (=> bm!137418 m!2740443))

(assert (=> bm!137418 m!2740477))

(declare-fun m!2740639 () Bool)

(assert (=> d!684369 m!2740639))

(assert (=> d!684369 m!2740443))

(declare-fun m!2740641 () Bool)

(assert (=> d!684369 m!2740641))

(declare-fun m!2740643 () Bool)

(assert (=> b!2313325 m!2740643))

(assert (=> d!684309 d!684369))

(assert (=> d!684309 d!684339))

(assert (=> d!684309 d!684329))

(declare-fun d!684371 () Bool)

(declare-fun res!988747 () Bool)

(declare-fun e!1482764 () Bool)

(assert (=> d!684371 (=> (not res!988747) (not e!1482764))))

(assert (=> d!684371 (= res!988747 (<= (size!21765 (list!10916 (xs!11942 (c!366706 totalInput!803)))) 512))))

(assert (=> d!684371 (= (inv!37293 (c!366706 totalInput!803)) e!1482764)))

(declare-fun b!2313336 () Bool)

(declare-fun res!988748 () Bool)

(assert (=> b!2313336 (=> (not res!988748) (not e!1482764))))

(assert (=> b!2313336 (= res!988748 (= (csize!18231 (c!366706 totalInput!803)) (size!21765 (list!10916 (xs!11942 (c!366706 totalInput!803))))))))

(declare-fun b!2313337 () Bool)

(assert (=> b!2313337 (= e!1482764 (and (> (csize!18231 (c!366706 totalInput!803)) 0) (<= (csize!18231 (c!366706 totalInput!803)) 512)))))

(assert (= (and d!684371 res!988747) b!2313336))

(assert (= (and b!2313336 res!988748) b!2313337))

(assert (=> d!684371 m!2740621))

(assert (=> d!684371 m!2740621))

(declare-fun m!2740645 () Bool)

(assert (=> d!684371 m!2740645))

(assert (=> b!2313336 m!2740621))

(assert (=> b!2313336 m!2740621))

(assert (=> b!2313336 m!2740645))

(assert (=> b!2313136 d!684371))

(declare-fun d!684373 () Bool)

(declare-fun res!988749 () Bool)

(declare-fun e!1482765 () Bool)

(assert (=> d!684373 (=> (not res!988749) (not e!1482765))))

(assert (=> d!684373 (= res!988749 (= (csize!18230 (c!366706 totalInput!803)) (+ (size!21766 (left!20894 (c!366706 totalInput!803))) (size!21766 (right!21224 (c!366706 totalInput!803))))))))

(assert (=> d!684373 (= (inv!37292 (c!366706 totalInput!803)) e!1482765)))

(declare-fun b!2313338 () Bool)

(declare-fun res!988750 () Bool)

(assert (=> b!2313338 (=> (not res!988750) (not e!1482765))))

(assert (=> b!2313338 (= res!988750 (and (not (= (left!20894 (c!366706 totalInput!803)) Empty!9000)) (not (= (right!21224 (c!366706 totalInput!803)) Empty!9000))))))

(declare-fun b!2313339 () Bool)

(declare-fun res!988751 () Bool)

(assert (=> b!2313339 (=> (not res!988751) (not e!1482765))))

(assert (=> b!2313339 (= res!988751 (= (cheight!9211 (c!366706 totalInput!803)) (+ (max!0 (height!1299 (left!20894 (c!366706 totalInput!803))) (height!1299 (right!21224 (c!366706 totalInput!803)))) 1)))))

(declare-fun b!2313340 () Bool)

(assert (=> b!2313340 (= e!1482765 (<= 0 (cheight!9211 (c!366706 totalInput!803))))))

(assert (= (and d!684373 res!988749) b!2313338))

(assert (= (and b!2313338 res!988750) b!2313339))

(assert (= (and b!2313339 res!988751) b!2313340))

(declare-fun m!2740655 () Bool)

(assert (=> d!684373 m!2740655))

(declare-fun m!2740657 () Bool)

(assert (=> d!684373 m!2740657))

(assert (=> b!2313339 m!2740539))

(assert (=> b!2313339 m!2740541))

(assert (=> b!2313339 m!2740539))

(assert (=> b!2313339 m!2740541))

(declare-fun m!2740659 () Bool)

(assert (=> b!2313339 m!2740659))

(assert (=> b!2313134 d!684373))

(declare-fun b!2313345 () Bool)

(declare-fun e!1482768 () Bool)

(declare-fun tp_is_empty!10757 () Bool)

(declare-fun tp!734194 () Bool)

(assert (=> b!2313345 (= e!1482768 (and tp_is_empty!10757 tp!734194))))

(assert (=> b!2313156 (= tp!734174 e!1482768)))

(assert (= (and b!2313156 ((_ is Cons!27551) (innerList!9060 (xs!11942 (c!366706 totalInput!803))))) b!2313345))

(declare-fun tp!734197 () Bool)

(declare-fun b!2313346 () Bool)

(declare-fun tp!734196 () Bool)

(declare-fun e!1482770 () Bool)

(assert (=> b!2313346 (= e!1482770 (and (inv!37291 (left!20894 (left!20894 (c!366706 input!5503)))) tp!734196 (inv!37291 (right!21224 (left!20894 (c!366706 input!5503)))) tp!734197))))

(declare-fun b!2313348 () Bool)

(declare-fun e!1482769 () Bool)

(declare-fun tp!734195 () Bool)

(assert (=> b!2313348 (= e!1482769 tp!734195)))

(declare-fun b!2313347 () Bool)

(assert (=> b!2313347 (= e!1482770 (and (inv!37294 (xs!11942 (left!20894 (c!366706 input!5503)))) e!1482769))))

(assert (=> b!2313157 (= tp!734178 (and (inv!37291 (left!20894 (c!366706 input!5503))) e!1482770))))

(assert (= (and b!2313157 ((_ is Node!9000) (left!20894 (c!366706 input!5503)))) b!2313346))

(assert (= b!2313347 b!2313348))

(assert (= (and b!2313157 ((_ is Leaf!13207) (left!20894 (c!366706 input!5503)))) b!2313347))

(declare-fun m!2740661 () Bool)

(assert (=> b!2313346 m!2740661))

(declare-fun m!2740663 () Bool)

(assert (=> b!2313346 m!2740663))

(declare-fun m!2740665 () Bool)

(assert (=> b!2313347 m!2740665))

(assert (=> b!2313157 m!2740511))

(declare-fun b!2313353 () Bool)

(declare-fun tp!734199 () Bool)

(declare-fun tp!734200 () Bool)

(declare-fun e!1482774 () Bool)

(assert (=> b!2313353 (= e!1482774 (and (inv!37291 (left!20894 (right!21224 (c!366706 input!5503)))) tp!734199 (inv!37291 (right!21224 (right!21224 (c!366706 input!5503)))) tp!734200))))

(declare-fun b!2313355 () Bool)

(declare-fun e!1482773 () Bool)

(declare-fun tp!734198 () Bool)

(assert (=> b!2313355 (= e!1482773 tp!734198)))

(declare-fun b!2313354 () Bool)

(assert (=> b!2313354 (= e!1482774 (and (inv!37294 (xs!11942 (right!21224 (c!366706 input!5503)))) e!1482773))))

(assert (=> b!2313157 (= tp!734179 (and (inv!37291 (right!21224 (c!366706 input!5503))) e!1482774))))

(assert (= (and b!2313157 ((_ is Node!9000) (right!21224 (c!366706 input!5503)))) b!2313353))

(assert (= b!2313354 b!2313355))

(assert (= (and b!2313157 ((_ is Leaf!13207) (right!21224 (c!366706 input!5503)))) b!2313354))

(declare-fun m!2740667 () Bool)

(assert (=> b!2313353 m!2740667))

(declare-fun m!2740669 () Bool)

(assert (=> b!2313353 m!2740669))

(declare-fun m!2740671 () Bool)

(assert (=> b!2313354 m!2740671))

(assert (=> b!2313157 m!2740513))

(declare-fun tp!734203 () Bool)

(declare-fun e!1482776 () Bool)

(declare-fun b!2313356 () Bool)

(declare-fun tp!734202 () Bool)

(assert (=> b!2313356 (= e!1482776 (and (inv!37291 (left!20894 (left!20894 (c!366706 totalInput!803)))) tp!734202 (inv!37291 (right!21224 (left!20894 (c!366706 totalInput!803)))) tp!734203))))

(declare-fun b!2313358 () Bool)

(declare-fun e!1482775 () Bool)

(declare-fun tp!734201 () Bool)

(assert (=> b!2313358 (= e!1482775 tp!734201)))

(declare-fun b!2313357 () Bool)

(assert (=> b!2313357 (= e!1482776 (and (inv!37294 (xs!11942 (left!20894 (c!366706 totalInput!803)))) e!1482775))))

(assert (=> b!2313154 (= tp!734175 (and (inv!37291 (left!20894 (c!366706 totalInput!803))) e!1482776))))

(assert (= (and b!2313154 ((_ is Node!9000) (left!20894 (c!366706 totalInput!803)))) b!2313356))

(assert (= b!2313357 b!2313358))

(assert (= (and b!2313154 ((_ is Leaf!13207) (left!20894 (c!366706 totalInput!803)))) b!2313357))

(declare-fun m!2740673 () Bool)

(assert (=> b!2313356 m!2740673))

(declare-fun m!2740675 () Bool)

(assert (=> b!2313356 m!2740675))

(declare-fun m!2740677 () Bool)

(assert (=> b!2313357 m!2740677))

(assert (=> b!2313154 m!2740505))

(declare-fun b!2313359 () Bool)

(declare-fun tp!734205 () Bool)

(declare-fun e!1482778 () Bool)

(declare-fun tp!734206 () Bool)

(assert (=> b!2313359 (= e!1482778 (and (inv!37291 (left!20894 (right!21224 (c!366706 totalInput!803)))) tp!734205 (inv!37291 (right!21224 (right!21224 (c!366706 totalInput!803)))) tp!734206))))

(declare-fun b!2313361 () Bool)

(declare-fun e!1482777 () Bool)

(declare-fun tp!734204 () Bool)

(assert (=> b!2313361 (= e!1482777 tp!734204)))

(declare-fun b!2313360 () Bool)

(assert (=> b!2313360 (= e!1482778 (and (inv!37294 (xs!11942 (right!21224 (c!366706 totalInput!803)))) e!1482777))))

(assert (=> b!2313154 (= tp!734176 (and (inv!37291 (right!21224 (c!366706 totalInput!803))) e!1482778))))

(assert (= (and b!2313154 ((_ is Node!9000) (right!21224 (c!366706 totalInput!803)))) b!2313359))

(assert (= b!2313360 b!2313361))

(assert (= (and b!2313154 ((_ is Leaf!13207) (right!21224 (c!366706 totalInput!803)))) b!2313360))

(declare-fun m!2740679 () Bool)

(assert (=> b!2313359 m!2740679))

(declare-fun m!2740681 () Bool)

(assert (=> b!2313359 m!2740681))

(declare-fun m!2740683 () Bool)

(assert (=> b!2313360 m!2740683))

(assert (=> b!2313154 m!2740507))

(declare-fun b!2313362 () Bool)

(declare-fun e!1482779 () Bool)

(declare-fun tp!734207 () Bool)

(assert (=> b!2313362 (= e!1482779 (and tp_is_empty!10757 tp!734207))))

(assert (=> b!2313159 (= tp!734177 e!1482779)))

(assert (= (and b!2313159 ((_ is Cons!27551) (innerList!9060 (xs!11942 (c!366706 input!5503))))) b!2313362))

(check-sat (not b!2313361) (not b!2313360) (not b!2313339) (not b!2313214) (not b!2313240) (not b!2313325) (not d!684331) (not d!684373) (not b!2313348) (not b!2313203) (not b!2313202) (not b!2313266) (not b!2313245) (not d!684343) (not b!2313201) (not b!2313157) (not b!2313256) (not d!684341) (not b!2313252) (not b!2313358) (not b!2313215) (not b!2313251) (not b!2313221) (not b!2313200) (not d!684349) (not b!2313244) (not b!2313362) (not b!2313280) (not b!2313260) (not b!2313355) (not b!2313357) (not d!684369) (not b!2313259) (not b!2313262) (not b!2313346) (not b!2313356) (not b!2313254) (not b!2313318) (not b!2313336) tp_is_empty!10757 (not b!2313353) (not b!2313253) (not b!2313154) (not b!2313255) (not b!2313347) (not b!2313359) (not b!2313345) (not b!2313242) (not b!2313354) (not b!2313247) (not b!2313229) (not b!2313199) (not b!2313265) (not bm!137418) (not d!684371) (not d!684361) (not d!684365) (not b!2313257) (not b!2313198))
(check-sat)
