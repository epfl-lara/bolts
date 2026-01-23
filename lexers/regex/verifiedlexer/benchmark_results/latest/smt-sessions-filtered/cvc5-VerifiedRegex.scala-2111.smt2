; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!106754 () Bool)

(assert start!106754)

(declare-fun c!199596 () Bool)

(declare-datatypes ((T!21766 0))(
  ( (T!21767 (val!3885 Int)) )
))
(declare-datatypes ((List!12064 0))(
  ( (Nil!12040) (Cons!12040 (h!17441 T!21766) (t!112422 List!12064)) )
))
(declare-fun lt!410600 () List!12064)

(declare-fun from!553 () Int)

(declare-fun c!199595 () Bool)

(declare-fun until!31 () Int)

(declare-fun lt!410599 () List!12064)

(declare-fun lt!410597 () Int)

(declare-fun call!83389 () List!12064)

(declare-fun bm!83384 () Bool)

(declare-fun slice!468 (List!12064 Int Int) List!12064)

(assert (=> bm!83384 (= call!83389 (slice!468 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)) (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597)))))))

(declare-datatypes ((IArray!7951 0))(
  ( (IArray!7952 (innerList!4033 List!12064)) )
))
(declare-datatypes ((Conc!3973 0))(
  ( (Node!3973 (left!10508 Conc!3973) (right!10838 Conc!3973) (csize!8176 Int) (cheight!4184 Int)) (Leaf!6085 (xs!6680 IArray!7951) (csize!8177 Int)) (Empty!3973) )
))
(declare-fun t!4115 () Conc!3973)

(declare-fun tp!341123 () Bool)

(declare-fun b!1199153 () Bool)

(declare-fun e!769845 () Bool)

(declare-fun tp!341122 () Bool)

(declare-fun inv!16102 (Conc!3973) Bool)

(assert (=> b!1199153 (= e!769845 (and (inv!16102 (left!10508 t!4115)) tp!341122 (inv!16102 (right!10838 t!4115)) tp!341123))))

(declare-fun b!1199154 () Bool)

(declare-fun e!769843 () Bool)

(declare-fun lt!410598 () List!12064)

(assert (=> b!1199154 (= e!769843 (= lt!410598 call!83389))))

(declare-fun b!1199155 () Bool)

(declare-fun res!540903 () Bool)

(declare-fun e!769846 () Bool)

(assert (=> b!1199155 (=> (not res!540903) (not e!769846))))

(declare-fun isBalanced!1158 (Conc!3973) Bool)

(assert (=> b!1199155 (= res!540903 (isBalanced!1158 t!4115))))

(declare-fun b!1199156 () Bool)

(declare-fun e!769841 () Bool)

(declare-fun tp!341124 () Bool)

(assert (=> b!1199156 (= e!769841 tp!341124)))

(declare-fun b!1199157 () Bool)

(declare-fun res!540902 () Bool)

(assert (=> b!1199157 (=> (not res!540902) (not e!769846))))

(declare-fun size!9564 (Conc!3973) Int)

(assert (=> b!1199157 (= res!540902 (<= until!31 (size!9564 t!4115)))))

(declare-fun b!1199158 () Bool)

(declare-fun res!540900 () Bool)

(assert (=> b!1199158 (=> (not res!540900) (not e!769846))))

(assert (=> b!1199158 (= res!540900 (and (not (= from!553 until!31)) (not (is-Leaf!6085 t!4115)) (is-Node!3973 t!4115)))))

(declare-fun res!540899 () Bool)

(assert (=> start!106754 (=> (not res!540899) (not e!769846))))

(assert (=> start!106754 (= res!540899 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106754 e!769846))

(assert (=> start!106754 true))

(assert (=> start!106754 (and (inv!16102 t!4115) e!769845)))

(declare-fun b!1199159 () Bool)

(declare-fun inv!16103 (IArray!7951) Bool)

(assert (=> b!1199159 (= e!769845 (and (inv!16103 (xs!6680 t!4115)) e!769841))))

(declare-fun b!1199160 () Bool)

(declare-fun e!769844 () List!12064)

(declare-fun call!83390 () List!12064)

(assert (=> b!1199160 (= e!769844 call!83390)))

(declare-fun bm!83385 () Bool)

(assert (=> bm!83385 (= call!83390 call!83389)))

(declare-fun b!1199161 () Bool)

(declare-fun e!769842 () Bool)

(declare-fun ConcPrimitiveSize!5 (Conc!3973) Int)

(assert (=> b!1199161 (= e!769842 (< (ConcPrimitiveSize!5 (left!10508 t!4115)) (ConcPrimitiveSize!5 t!4115)))))

(declare-fun b!1199162 () Bool)

(assert (=> b!1199162 (= e!769846 (not e!769842))))

(declare-fun res!540901 () Bool)

(assert (=> b!1199162 (=> res!540901 e!769842)))

(declare-fun lt!410601 () Int)

(assert (=> b!1199162 (= res!540901 (or (<= lt!410601 from!553) (> until!31 lt!410601)))))

(assert (=> b!1199162 (= lt!410601 (size!9564 (left!10508 t!4115)))))

(assert (=> b!1199162 e!769843))

(assert (=> b!1199162 (= c!199596 (<= lt!410597 from!553))))

(declare-fun ++!3077 (List!12064 List!12064) List!12064)

(assert (=> b!1199162 (= lt!410598 (slice!468 (++!3077 lt!410599 lt!410600) from!553 until!31))))

(declare-fun size!9565 (List!12064) Int)

(assert (=> b!1199162 (= lt!410597 (size!9565 lt!410599))))

(declare-datatypes ((Unit!18450 0))(
  ( (Unit!18451) )
))
(declare-fun lt!410602 () Unit!18450)

(declare-fun sliceLemma!36 (List!12064 List!12064 Int Int) Unit!18450)

(assert (=> b!1199162 (= lt!410602 (sliceLemma!36 lt!410599 lt!410600 from!553 until!31))))

(declare-fun list!4480 (Conc!3973) List!12064)

(assert (=> b!1199162 (= lt!410600 (list!4480 (right!10838 t!4115)))))

(assert (=> b!1199162 (= lt!410599 (list!4480 (left!10508 t!4115)))))

(declare-fun b!1199163 () Bool)

(assert (=> b!1199163 (= e!769843 (= lt!410598 e!769844))))

(assert (=> b!1199163 (= c!199595 (<= until!31 lt!410597))))

(declare-fun b!1199164 () Bool)

(assert (=> b!1199164 (= e!769844 (++!3077 (slice!468 lt!410599 from!553 lt!410597) call!83390))))

(assert (= (and start!106754 res!540899) b!1199157))

(assert (= (and b!1199157 res!540902) b!1199155))

(assert (= (and b!1199155 res!540903) b!1199158))

(assert (= (and b!1199158 res!540900) b!1199162))

(assert (= (and b!1199162 c!199596) b!1199154))

(assert (= (and b!1199162 (not c!199596)) b!1199163))

(assert (= (and b!1199163 c!199595) b!1199160))

(assert (= (and b!1199163 (not c!199595)) b!1199164))

(assert (= (or b!1199160 b!1199164) bm!83385))

(assert (= (or b!1199154 bm!83385) bm!83384))

(assert (= (and b!1199162 (not res!540901)) b!1199161))

(assert (= (and start!106754 (is-Node!3973 t!4115)) b!1199153))

(assert (= b!1199159 b!1199156))

(assert (= (and start!106754 (is-Leaf!6085 t!4115)) b!1199159))

(declare-fun m!1374519 () Bool)

(assert (=> b!1199164 m!1374519))

(assert (=> b!1199164 m!1374519))

(declare-fun m!1374521 () Bool)

(assert (=> b!1199164 m!1374521))

(declare-fun m!1374523 () Bool)

(assert (=> b!1199162 m!1374523))

(declare-fun m!1374525 () Bool)

(assert (=> b!1199162 m!1374525))

(declare-fun m!1374527 () Bool)

(assert (=> b!1199162 m!1374527))

(declare-fun m!1374529 () Bool)

(assert (=> b!1199162 m!1374529))

(declare-fun m!1374531 () Bool)

(assert (=> b!1199162 m!1374531))

(declare-fun m!1374533 () Bool)

(assert (=> b!1199162 m!1374533))

(declare-fun m!1374535 () Bool)

(assert (=> b!1199162 m!1374535))

(assert (=> b!1199162 m!1374531))

(declare-fun m!1374537 () Bool)

(assert (=> bm!83384 m!1374537))

(declare-fun m!1374539 () Bool)

(assert (=> b!1199157 m!1374539))

(declare-fun m!1374541 () Bool)

(assert (=> b!1199155 m!1374541))

(declare-fun m!1374543 () Bool)

(assert (=> start!106754 m!1374543))

(declare-fun m!1374545 () Bool)

(assert (=> b!1199153 m!1374545))

(declare-fun m!1374547 () Bool)

(assert (=> b!1199153 m!1374547))

(declare-fun m!1374549 () Bool)

(assert (=> b!1199161 m!1374549))

(declare-fun m!1374551 () Bool)

(assert (=> b!1199161 m!1374551))

(declare-fun m!1374553 () Bool)

(assert (=> b!1199159 m!1374553))

(push 1)

(assert (not b!1199157))

(assert (not bm!83384))

(assert (not b!1199164))

(assert (not b!1199156))

(assert (not b!1199161))

(assert (not start!106754))

(assert (not b!1199155))

(assert (not b!1199153))

(assert (not b!1199162))

(assert (not b!1199159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!83398 () Bool)

(declare-fun call!83403 () Int)

(declare-fun c!199616 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!83398 (= call!83403 (BigIntAbs!0 (ite c!199616 (cheight!4184 (left!10508 t!4115)) (csize!8177 (left!10508 t!4115)))))))

(declare-fun d!342838 () Bool)

(declare-fun lt!410627 () Int)

(assert (=> d!342838 (>= lt!410627 0)))

(declare-fun e!769877 () Int)

(assert (=> d!342838 (= lt!410627 e!769877)))

(assert (=> d!342838 (= c!199616 (is-Node!3973 (left!10508 t!4115)))))

(assert (=> d!342838 (= (ConcPrimitiveSize!5 (left!10508 t!4115)) lt!410627)))

(declare-fun b!1199225 () Bool)

(declare-fun e!769878 () Int)

(assert (=> b!1199225 (= e!769877 e!769878)))

(declare-fun c!199615 () Bool)

(assert (=> b!1199225 (= c!199615 (is-Leaf!6085 (left!10508 t!4115)))))

(declare-fun b!1199226 () Bool)

(declare-fun IArrayPrimitiveSize!5 (IArray!7951) Int)

(assert (=> b!1199226 (= e!769878 (+ 1 (IArrayPrimitiveSize!5 (xs!6680 (left!10508 t!4115))) call!83403))))

(declare-fun b!1199227 () Bool)

(assert (=> b!1199227 (= e!769877 (+ 1 (ConcPrimitiveSize!5 (left!10508 (left!10508 t!4115))) (ConcPrimitiveSize!5 (right!10838 (left!10508 t!4115))) (BigIntAbs!0 (csize!8176 (left!10508 t!4115))) call!83403))))

(declare-fun b!1199228 () Bool)

(assert (=> b!1199228 (= e!769878 0)))

(assert (= (and d!342838 c!199616) b!1199227))

(assert (= (and d!342838 (not c!199616)) b!1199225))

(assert (= (and b!1199225 c!199615) b!1199226))

(assert (= (and b!1199225 (not c!199615)) b!1199228))

(assert (= (or b!1199227 b!1199226) bm!83398))

(declare-fun m!1374611 () Bool)

(assert (=> bm!83398 m!1374611))

(declare-fun m!1374613 () Bool)

(assert (=> b!1199226 m!1374613))

(declare-fun m!1374615 () Bool)

(assert (=> b!1199227 m!1374615))

(declare-fun m!1374617 () Bool)

(assert (=> b!1199227 m!1374617))

(declare-fun m!1374619 () Bool)

(assert (=> b!1199227 m!1374619))

(assert (=> b!1199161 d!342838))

(declare-fun bm!83399 () Bool)

(declare-fun call!83404 () Int)

(declare-fun c!199618 () Bool)

(assert (=> bm!83399 (= call!83404 (BigIntAbs!0 (ite c!199618 (cheight!4184 t!4115) (csize!8177 t!4115))))))

(declare-fun d!342844 () Bool)

(declare-fun lt!410628 () Int)

(assert (=> d!342844 (>= lt!410628 0)))

(declare-fun e!769879 () Int)

(assert (=> d!342844 (= lt!410628 e!769879)))

(assert (=> d!342844 (= c!199618 (is-Node!3973 t!4115))))

(assert (=> d!342844 (= (ConcPrimitiveSize!5 t!4115) lt!410628)))

(declare-fun b!1199229 () Bool)

(declare-fun e!769880 () Int)

(assert (=> b!1199229 (= e!769879 e!769880)))

(declare-fun c!199617 () Bool)

(assert (=> b!1199229 (= c!199617 (is-Leaf!6085 t!4115))))

(declare-fun b!1199230 () Bool)

(assert (=> b!1199230 (= e!769880 (+ 1 (IArrayPrimitiveSize!5 (xs!6680 t!4115)) call!83404))))

(declare-fun b!1199231 () Bool)

(assert (=> b!1199231 (= e!769879 (+ 1 (ConcPrimitiveSize!5 (left!10508 t!4115)) (ConcPrimitiveSize!5 (right!10838 t!4115)) (BigIntAbs!0 (csize!8176 t!4115)) call!83404))))

(declare-fun b!1199232 () Bool)

(assert (=> b!1199232 (= e!769880 0)))

(assert (= (and d!342844 c!199618) b!1199231))

(assert (= (and d!342844 (not c!199618)) b!1199229))

(assert (= (and b!1199229 c!199617) b!1199230))

(assert (= (and b!1199229 (not c!199617)) b!1199232))

(assert (= (or b!1199231 b!1199230) bm!83399))

(declare-fun m!1374621 () Bool)

(assert (=> bm!83399 m!1374621))

(declare-fun m!1374623 () Bool)

(assert (=> b!1199230 m!1374623))

(assert (=> b!1199231 m!1374549))

(declare-fun m!1374625 () Bool)

(assert (=> b!1199231 m!1374625))

(declare-fun m!1374627 () Bool)

(assert (=> b!1199231 m!1374627))

(assert (=> b!1199161 d!342844))

(declare-fun d!342846 () Bool)

(declare-fun lt!410634 () Int)

(assert (=> d!342846 (= lt!410634 (size!9565 (list!4480 t!4115)))))

(assert (=> d!342846 (= lt!410634 (ite (is-Empty!3973 t!4115) 0 (ite (is-Leaf!6085 t!4115) (csize!8177 t!4115) (csize!8176 t!4115))))))

(assert (=> d!342846 (= (size!9564 t!4115) lt!410634)))

(declare-fun bs!288219 () Bool)

(assert (= bs!288219 d!342846))

(declare-fun m!1374633 () Bool)

(assert (=> bs!288219 m!1374633))

(assert (=> bs!288219 m!1374633))

(declare-fun m!1374635 () Bool)

(assert (=> bs!288219 m!1374635))

(assert (=> b!1199157 d!342846))

(declare-fun d!342850 () Bool)

(declare-fun take!126 (List!12064 Int) List!12064)

(declare-fun drop!598 (List!12064 Int) List!12064)

(assert (=> d!342850 (= (slice!468 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)) (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597)))) (take!126 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)))))))

(declare-fun bs!288220 () Bool)

(assert (= bs!288220 d!342850))

(declare-fun m!1374637 () Bool)

(assert (=> bs!288220 m!1374637))

(assert (=> bs!288220 m!1374637))

(declare-fun m!1374639 () Bool)

(assert (=> bs!288220 m!1374639))

(assert (=> bm!83384 d!342850))

(declare-fun d!342852 () Bool)

(declare-fun c!199623 () Bool)

(assert (=> d!342852 (= c!199623 (is-Node!3973 t!4115))))

(declare-fun e!769889 () Bool)

(assert (=> d!342852 (= (inv!16102 t!4115) e!769889)))

(declare-fun b!1199245 () Bool)

(declare-fun inv!16106 (Conc!3973) Bool)

(assert (=> b!1199245 (= e!769889 (inv!16106 t!4115))))

(declare-fun b!1199246 () Bool)

(declare-fun e!769890 () Bool)

(assert (=> b!1199246 (= e!769889 e!769890)))

(declare-fun res!540923 () Bool)

(assert (=> b!1199246 (= res!540923 (not (is-Leaf!6085 t!4115)))))

(assert (=> b!1199246 (=> res!540923 e!769890)))

(declare-fun b!1199247 () Bool)

(declare-fun inv!16107 (Conc!3973) Bool)

(assert (=> b!1199247 (= e!769890 (inv!16107 t!4115))))

(assert (= (and d!342852 c!199623) b!1199245))

(assert (= (and d!342852 (not c!199623)) b!1199246))

(assert (= (and b!1199246 (not res!540923)) b!1199247))

(declare-fun m!1374641 () Bool)

(assert (=> b!1199245 m!1374641))

(declare-fun m!1374643 () Bool)

(assert (=> b!1199247 m!1374643))

(assert (=> start!106754 d!342852))

(declare-fun d!342854 () Bool)

(declare-fun lt!410635 () Int)

(assert (=> d!342854 (= lt!410635 (size!9565 (list!4480 (left!10508 t!4115))))))

(assert (=> d!342854 (= lt!410635 (ite (is-Empty!3973 (left!10508 t!4115)) 0 (ite (is-Leaf!6085 (left!10508 t!4115)) (csize!8177 (left!10508 t!4115)) (csize!8176 (left!10508 t!4115)))))))

(assert (=> d!342854 (= (size!9564 (left!10508 t!4115)) lt!410635)))

(declare-fun bs!288221 () Bool)

(assert (= bs!288221 d!342854))

(assert (=> bs!288221 m!1374523))

(assert (=> bs!288221 m!1374523))

(declare-fun m!1374645 () Bool)

(assert (=> bs!288221 m!1374645))

(assert (=> b!1199162 d!342854))

(declare-fun bm!83406 () Bool)

(declare-fun c!199634 () Bool)

(declare-fun c!199633 () Bool)

(assert (=> bm!83406 (= c!199634 c!199633)))

(declare-fun call!83411 () List!12064)

(declare-fun call!83412 () List!12064)

(assert (=> bm!83406 (= call!83411 call!83412)))

(declare-fun b!1199270 () Bool)

(declare-fun e!769905 () List!12064)

(assert (=> b!1199270 (= e!769905 call!83412)))

(declare-fun b!1199271 () Bool)

(declare-fun e!769906 () List!12064)

(assert (=> b!1199271 (= e!769905 e!769906)))

(declare-fun call!83413 () Int)

(assert (=> b!1199271 (= c!199633 (<= until!31 call!83413))))

(declare-fun b!1199272 () Bool)

(declare-fun e!769908 () Int)

(assert (=> b!1199272 (= e!769908 until!31)))

(declare-fun e!769907 () Bool)

(declare-fun b!1199274 () Bool)

(assert (=> b!1199274 (= e!769907 (<= until!31 (+ (size!9565 lt!410599) (size!9565 lt!410600))))))

(declare-fun bm!83407 () Bool)

(assert (=> bm!83407 (= call!83413 (size!9565 lt!410599))))

(declare-fun b!1199275 () Bool)

(assert (=> b!1199275 (= e!769908 call!83413)))

(declare-fun c!199632 () Bool)

(declare-fun bm!83408 () Bool)

(assert (=> bm!83408 (= call!83412 (slice!468 (ite c!199632 lt!410600 lt!410599) (ite c!199632 (- from!553 call!83413) from!553) (ite c!199632 (- until!31 call!83413) e!769908)))))

(declare-fun b!1199276 () Bool)

(assert (=> b!1199276 (= e!769906 (++!3077 call!83411 (slice!468 lt!410600 0 (- until!31 call!83413))))))

(declare-fun b!1199273 () Bool)

(assert (=> b!1199273 (= e!769906 call!83411)))

(declare-fun d!342856 () Bool)

(assert (=> d!342856 (= (slice!468 (++!3077 lt!410599 lt!410600) from!553 until!31) e!769905)))

(assert (=> d!342856 (= c!199632 (<= (size!9565 lt!410599) from!553))))

(declare-fun lt!410638 () Unit!18450)

(declare-fun choose!7729 (List!12064 List!12064 Int Int) Unit!18450)

(assert (=> d!342856 (= lt!410638 (choose!7729 lt!410599 lt!410600 from!553 until!31))))

(assert (=> d!342856 e!769907))

(declare-fun res!540930 () Bool)

(assert (=> d!342856 (=> (not res!540930) (not e!769907))))

(assert (=> d!342856 (= res!540930 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!342856 (= (sliceLemma!36 lt!410599 lt!410600 from!553 until!31) lt!410638)))

(assert (= (and d!342856 res!540930) b!1199274))

(assert (= (and d!342856 c!199632) b!1199270))

(assert (= (and d!342856 (not c!199632)) b!1199271))

(assert (= (and b!1199271 c!199633) b!1199273))

(assert (= (and b!1199271 (not c!199633)) b!1199276))

(assert (= (or b!1199273 b!1199276) bm!83406))

(assert (= (and bm!83406 c!199634) b!1199272))

(assert (= (and bm!83406 (not c!199634)) b!1199275))

(assert (= (or b!1199270 b!1199271 b!1199276 b!1199275) bm!83407))

(assert (= (or b!1199270 bm!83406) bm!83408))

(declare-fun m!1374655 () Bool)

(assert (=> bm!83408 m!1374655))

(declare-fun m!1374657 () Bool)

(assert (=> b!1199276 m!1374657))

(assert (=> b!1199276 m!1374657))

(declare-fun m!1374659 () Bool)

(assert (=> b!1199276 m!1374659))

(assert (=> bm!83407 m!1374527))

(assert (=> d!342856 m!1374531))

(assert (=> d!342856 m!1374531))

(assert (=> d!342856 m!1374533))

(assert (=> d!342856 m!1374527))

(declare-fun m!1374661 () Bool)

(assert (=> d!342856 m!1374661))

(assert (=> b!1199274 m!1374527))

(declare-fun m!1374663 () Bool)

(assert (=> b!1199274 m!1374663))

(assert (=> b!1199162 d!342856))

(declare-fun b!1199298 () Bool)

(declare-fun e!769916 () List!12064)

(assert (=> b!1199298 (= e!769916 (++!3077 (list!4480 (left!10508 (left!10508 t!4115))) (list!4480 (right!10838 (left!10508 t!4115)))))))

(declare-fun b!1199297 () Bool)

(declare-fun list!4482 (IArray!7951) List!12064)

(assert (=> b!1199297 (= e!769916 (list!4482 (xs!6680 (left!10508 t!4115))))))

(declare-fun b!1199296 () Bool)

(declare-fun e!769915 () List!12064)

(assert (=> b!1199296 (= e!769915 e!769916)))

(declare-fun c!199640 () Bool)

(assert (=> b!1199296 (= c!199640 (is-Leaf!6085 (left!10508 t!4115)))))

(declare-fun d!342862 () Bool)

(declare-fun c!199639 () Bool)

(assert (=> d!342862 (= c!199639 (is-Empty!3973 (left!10508 t!4115)))))

(assert (=> d!342862 (= (list!4480 (left!10508 t!4115)) e!769915)))

(declare-fun b!1199295 () Bool)

(assert (=> b!1199295 (= e!769915 Nil!12040)))

(assert (= (and d!342862 c!199639) b!1199295))

(assert (= (and d!342862 (not c!199639)) b!1199296))

(assert (= (and b!1199296 c!199640) b!1199297))

(assert (= (and b!1199296 (not c!199640)) b!1199298))

(declare-fun m!1374665 () Bool)

(assert (=> b!1199298 m!1374665))

(declare-fun m!1374667 () Bool)

(assert (=> b!1199298 m!1374667))

(assert (=> b!1199298 m!1374665))

(assert (=> b!1199298 m!1374667))

(declare-fun m!1374669 () Bool)

(assert (=> b!1199298 m!1374669))

(declare-fun m!1374671 () Bool)

(assert (=> b!1199297 m!1374671))

(assert (=> b!1199162 d!342862))

(declare-fun b!1199302 () Bool)

(declare-fun e!769918 () List!12064)

(assert (=> b!1199302 (= e!769918 (++!3077 (list!4480 (left!10508 (right!10838 t!4115))) (list!4480 (right!10838 (right!10838 t!4115)))))))

(declare-fun b!1199301 () Bool)

(assert (=> b!1199301 (= e!769918 (list!4482 (xs!6680 (right!10838 t!4115))))))

(declare-fun b!1199300 () Bool)

(declare-fun e!769917 () List!12064)

(assert (=> b!1199300 (= e!769917 e!769918)))

(declare-fun c!199642 () Bool)

(assert (=> b!1199300 (= c!199642 (is-Leaf!6085 (right!10838 t!4115)))))

(declare-fun d!342864 () Bool)

(declare-fun c!199641 () Bool)

(assert (=> d!342864 (= c!199641 (is-Empty!3973 (right!10838 t!4115)))))

(assert (=> d!342864 (= (list!4480 (right!10838 t!4115)) e!769917)))

(declare-fun b!1199299 () Bool)

(assert (=> b!1199299 (= e!769917 Nil!12040)))

(assert (= (and d!342864 c!199641) b!1199299))

(assert (= (and d!342864 (not c!199641)) b!1199300))

(assert (= (and b!1199300 c!199642) b!1199301))

(assert (= (and b!1199300 (not c!199642)) b!1199302))

(declare-fun m!1374673 () Bool)

(assert (=> b!1199302 m!1374673))

(declare-fun m!1374675 () Bool)

(assert (=> b!1199302 m!1374675))

(assert (=> b!1199302 m!1374673))

(assert (=> b!1199302 m!1374675))

(declare-fun m!1374677 () Bool)

(assert (=> b!1199302 m!1374677))

(declare-fun m!1374679 () Bool)

(assert (=> b!1199301 m!1374679))

(assert (=> b!1199162 d!342864))

(declare-fun d!342866 () Bool)

(declare-fun lt!410641 () Int)

(assert (=> d!342866 (>= lt!410641 0)))

(declare-fun e!769923 () Int)

(assert (=> d!342866 (= lt!410641 e!769923)))

(declare-fun c!199645 () Bool)

(assert (=> d!342866 (= c!199645 (is-Nil!12040 lt!410599))))

(assert (=> d!342866 (= (size!9565 lt!410599) lt!410641)))

(declare-fun b!1199313 () Bool)

(assert (=> b!1199313 (= e!769923 0)))

(declare-fun b!1199314 () Bool)

(assert (=> b!1199314 (= e!769923 (+ 1 (size!9565 (t!112422 lt!410599))))))

(assert (= (and d!342866 c!199645) b!1199313))

(assert (= (and d!342866 (not c!199645)) b!1199314))

(declare-fun m!1374681 () Bool)

(assert (=> b!1199314 m!1374681))

(assert (=> b!1199162 d!342866))

(declare-fun d!342868 () Bool)

(assert (=> d!342868 (= (slice!468 (++!3077 lt!410599 lt!410600) from!553 until!31) (take!126 (drop!598 (++!3077 lt!410599 lt!410600) from!553) (- until!31 from!553)))))

(declare-fun bs!288222 () Bool)

(assert (= bs!288222 d!342868))

(assert (=> bs!288222 m!1374531))

(declare-fun m!1374685 () Bool)

(assert (=> bs!288222 m!1374685))

(assert (=> bs!288222 m!1374685))

(declare-fun m!1374689 () Bool)

(assert (=> bs!288222 m!1374689))

(assert (=> b!1199162 d!342868))

(declare-fun b!1199323 () Bool)

(declare-fun e!769928 () List!12064)

(assert (=> b!1199323 (= e!769928 lt!410600)))

(declare-fun d!342870 () Bool)

(declare-fun e!769929 () Bool)

(assert (=> d!342870 e!769929))

(declare-fun res!540952 () Bool)

(assert (=> d!342870 (=> (not res!540952) (not e!769929))))

(declare-fun lt!410644 () List!12064)

(declare-fun content!1687 (List!12064) (Set T!21766))

(assert (=> d!342870 (= res!540952 (= (content!1687 lt!410644) (set.union (content!1687 lt!410599) (content!1687 lt!410600))))))

(assert (=> d!342870 (= lt!410644 e!769928)))

(declare-fun c!199648 () Bool)

(assert (=> d!342870 (= c!199648 (is-Nil!12040 lt!410599))))

(assert (=> d!342870 (= (++!3077 lt!410599 lt!410600) lt!410644)))

(declare-fun b!1199325 () Bool)

(declare-fun res!540951 () Bool)

(assert (=> b!1199325 (=> (not res!540951) (not e!769929))))

(assert (=> b!1199325 (= res!540951 (= (size!9565 lt!410644) (+ (size!9565 lt!410599) (size!9565 lt!410600))))))

(declare-fun b!1199326 () Bool)

(assert (=> b!1199326 (= e!769929 (or (not (= lt!410600 Nil!12040)) (= lt!410644 lt!410599)))))

(declare-fun b!1199324 () Bool)

(assert (=> b!1199324 (= e!769928 (Cons!12040 (h!17441 lt!410599) (++!3077 (t!112422 lt!410599) lt!410600)))))

(assert (= (and d!342870 c!199648) b!1199323))

(assert (= (and d!342870 (not c!199648)) b!1199324))

(assert (= (and d!342870 res!540952) b!1199325))

(assert (= (and b!1199325 res!540951) b!1199326))

(declare-fun m!1374699 () Bool)

(assert (=> d!342870 m!1374699))

(declare-fun m!1374701 () Bool)

(assert (=> d!342870 m!1374701))

(declare-fun m!1374703 () Bool)

(assert (=> d!342870 m!1374703))

(declare-fun m!1374705 () Bool)

(assert (=> b!1199325 m!1374705))

(assert (=> b!1199325 m!1374527))

(assert (=> b!1199325 m!1374663))

(declare-fun m!1374707 () Bool)

(assert (=> b!1199324 m!1374707))

(assert (=> b!1199162 d!342870))

(declare-fun d!342874 () Bool)

(declare-fun c!199649 () Bool)

(assert (=> d!342874 (= c!199649 (is-Node!3973 (left!10508 t!4115)))))

(declare-fun e!769930 () Bool)

(assert (=> d!342874 (= (inv!16102 (left!10508 t!4115)) e!769930)))

(declare-fun b!1199327 () Bool)

(assert (=> b!1199327 (= e!769930 (inv!16106 (left!10508 t!4115)))))

(declare-fun b!1199328 () Bool)

(declare-fun e!769931 () Bool)

(assert (=> b!1199328 (= e!769930 e!769931)))

(declare-fun res!540953 () Bool)

(assert (=> b!1199328 (= res!540953 (not (is-Leaf!6085 (left!10508 t!4115))))))

(assert (=> b!1199328 (=> res!540953 e!769931)))

(declare-fun b!1199329 () Bool)

(assert (=> b!1199329 (= e!769931 (inv!16107 (left!10508 t!4115)))))

(assert (= (and d!342874 c!199649) b!1199327))

(assert (= (and d!342874 (not c!199649)) b!1199328))

(assert (= (and b!1199328 (not res!540953)) b!1199329))

(declare-fun m!1374709 () Bool)

(assert (=> b!1199327 m!1374709))

(declare-fun m!1374711 () Bool)

(assert (=> b!1199329 m!1374711))

(assert (=> b!1199153 d!342874))

(declare-fun d!342876 () Bool)

(declare-fun c!199650 () Bool)

(assert (=> d!342876 (= c!199650 (is-Node!3973 (right!10838 t!4115)))))

(declare-fun e!769932 () Bool)

(assert (=> d!342876 (= (inv!16102 (right!10838 t!4115)) e!769932)))

(declare-fun b!1199330 () Bool)

(assert (=> b!1199330 (= e!769932 (inv!16106 (right!10838 t!4115)))))

(declare-fun b!1199331 () Bool)

(declare-fun e!769933 () Bool)

(assert (=> b!1199331 (= e!769932 e!769933)))

(declare-fun res!540954 () Bool)

(assert (=> b!1199331 (= res!540954 (not (is-Leaf!6085 (right!10838 t!4115))))))

(assert (=> b!1199331 (=> res!540954 e!769933)))

(declare-fun b!1199332 () Bool)

(assert (=> b!1199332 (= e!769933 (inv!16107 (right!10838 t!4115)))))

(assert (= (and d!342876 c!199650) b!1199330))

(assert (= (and d!342876 (not c!199650)) b!1199331))

(assert (= (and b!1199331 (not res!540954)) b!1199332))

(declare-fun m!1374713 () Bool)

(assert (=> b!1199330 m!1374713))

(declare-fun m!1374715 () Bool)

(assert (=> b!1199332 m!1374715))

(assert (=> b!1199153 d!342876))

(declare-fun d!342878 () Bool)

(assert (=> d!342878 (= (inv!16103 (xs!6680 t!4115)) (<= (size!9565 (innerList!4033 (xs!6680 t!4115))) 2147483647))))

(declare-fun bs!288223 () Bool)

(assert (= bs!288223 d!342878))

(declare-fun m!1374717 () Bool)

(assert (=> bs!288223 m!1374717))

(assert (=> b!1199159 d!342878))

(declare-fun b!1199337 () Bool)

(declare-fun e!769936 () List!12064)

(assert (=> b!1199337 (= e!769936 call!83390)))

(declare-fun d!342880 () Bool)

(declare-fun e!769937 () Bool)

(assert (=> d!342880 e!769937))

(declare-fun res!540956 () Bool)

(assert (=> d!342880 (=> (not res!540956) (not e!769937))))

(declare-fun lt!410647 () List!12064)

(assert (=> d!342880 (= res!540956 (= (content!1687 lt!410647) (set.union (content!1687 (slice!468 lt!410599 from!553 lt!410597)) (content!1687 call!83390))))))

(assert (=> d!342880 (= lt!410647 e!769936)))

(declare-fun c!199653 () Bool)

(assert (=> d!342880 (= c!199653 (is-Nil!12040 (slice!468 lt!410599 from!553 lt!410597)))))

(assert (=> d!342880 (= (++!3077 (slice!468 lt!410599 from!553 lt!410597) call!83390) lt!410647)))

(declare-fun b!1199339 () Bool)

(declare-fun res!540955 () Bool)

(assert (=> b!1199339 (=> (not res!540955) (not e!769937))))

(assert (=> b!1199339 (= res!540955 (= (size!9565 lt!410647) (+ (size!9565 (slice!468 lt!410599 from!553 lt!410597)) (size!9565 call!83390))))))

(declare-fun b!1199340 () Bool)

(assert (=> b!1199340 (= e!769937 (or (not (= call!83390 Nil!12040)) (= lt!410647 (slice!468 lt!410599 from!553 lt!410597))))))

(declare-fun b!1199338 () Bool)

(assert (=> b!1199338 (= e!769936 (Cons!12040 (h!17441 (slice!468 lt!410599 from!553 lt!410597)) (++!3077 (t!112422 (slice!468 lt!410599 from!553 lt!410597)) call!83390)))))

(assert (= (and d!342880 c!199653) b!1199337))

(assert (= (and d!342880 (not c!199653)) b!1199338))

(assert (= (and d!342880 res!540956) b!1199339))

(assert (= (and b!1199339 res!540955) b!1199340))

(declare-fun m!1374719 () Bool)

(assert (=> d!342880 m!1374719))

(assert (=> d!342880 m!1374519))

(declare-fun m!1374721 () Bool)

(assert (=> d!342880 m!1374721))

(declare-fun m!1374723 () Bool)

(assert (=> d!342880 m!1374723))

(declare-fun m!1374725 () Bool)

(assert (=> b!1199339 m!1374725))

(assert (=> b!1199339 m!1374519))

(declare-fun m!1374727 () Bool)

(assert (=> b!1199339 m!1374727))

(declare-fun m!1374729 () Bool)

(assert (=> b!1199339 m!1374729))

(declare-fun m!1374731 () Bool)

(assert (=> b!1199338 m!1374731))

(assert (=> b!1199164 d!342880))

(declare-fun d!342882 () Bool)

(assert (=> d!342882 (= (slice!468 lt!410599 from!553 lt!410597) (take!126 (drop!598 lt!410599 from!553) (- lt!410597 from!553)))))

(declare-fun bs!288224 () Bool)

(assert (= bs!288224 d!342882))

(declare-fun m!1374733 () Bool)

(assert (=> bs!288224 m!1374733))

(assert (=> bs!288224 m!1374733))

(declare-fun m!1374735 () Bool)

(assert (=> bs!288224 m!1374735))

(assert (=> b!1199164 d!342882))

(declare-fun b!1199361 () Bool)

(declare-fun res!540980 () Bool)

(declare-fun e!769947 () Bool)

(assert (=> b!1199361 (=> (not res!540980) (not e!769947))))

(assert (=> b!1199361 (= res!540980 (isBalanced!1158 (right!10838 t!4115)))))

(declare-fun d!342884 () Bool)

(declare-fun res!540977 () Bool)

(declare-fun e!769946 () Bool)

(assert (=> d!342884 (=> res!540977 e!769946)))

(assert (=> d!342884 (= res!540977 (not (is-Node!3973 t!4115)))))

(assert (=> d!342884 (= (isBalanced!1158 t!4115) e!769946)))

(declare-fun b!1199362 () Bool)

(declare-fun isEmpty!7258 (Conc!3973) Bool)

(assert (=> b!1199362 (= e!769947 (not (isEmpty!7258 (right!10838 t!4115))))))

(declare-fun b!1199363 () Bool)

(assert (=> b!1199363 (= e!769946 e!769947)))

(declare-fun res!540976 () Bool)

(assert (=> b!1199363 (=> (not res!540976) (not e!769947))))

(declare-fun height!567 (Conc!3973) Int)

(assert (=> b!1199363 (= res!540976 (<= (- 1) (- (height!567 (left!10508 t!4115)) (height!567 (right!10838 t!4115)))))))

(declare-fun b!1199364 () Bool)

(declare-fun res!540979 () Bool)

(assert (=> b!1199364 (=> (not res!540979) (not e!769947))))

(assert (=> b!1199364 (= res!540979 (<= (- (height!567 (left!10508 t!4115)) (height!567 (right!10838 t!4115))) 1))))

(declare-fun b!1199365 () Bool)

(declare-fun res!540978 () Bool)

(assert (=> b!1199365 (=> (not res!540978) (not e!769947))))

(assert (=> b!1199365 (= res!540978 (not (isEmpty!7258 (left!10508 t!4115))))))

(declare-fun b!1199366 () Bool)

(declare-fun res!540975 () Bool)

(assert (=> b!1199366 (=> (not res!540975) (not e!769947))))

(assert (=> b!1199366 (= res!540975 (isBalanced!1158 (left!10508 t!4115)))))

(assert (= (and d!342884 (not res!540977)) b!1199363))

(assert (= (and b!1199363 res!540976) b!1199364))

(assert (= (and b!1199364 res!540979) b!1199366))

(assert (= (and b!1199366 res!540975) b!1199361))

(assert (= (and b!1199361 res!540980) b!1199365))

(assert (= (and b!1199365 res!540978) b!1199362))

(declare-fun m!1374751 () Bool)

(assert (=> b!1199364 m!1374751))

(declare-fun m!1374753 () Bool)

(assert (=> b!1199364 m!1374753))

(declare-fun m!1374755 () Bool)

(assert (=> b!1199361 m!1374755))

(declare-fun m!1374757 () Bool)

(assert (=> b!1199366 m!1374757))

(declare-fun m!1374759 () Bool)

(assert (=> b!1199362 m!1374759))

(declare-fun m!1374761 () Bool)

(assert (=> b!1199365 m!1374761))

(assert (=> b!1199363 m!1374751))

(assert (=> b!1199363 m!1374753))

(assert (=> b!1199155 d!342884))

(declare-fun tp!341141 () Bool)

(declare-fun tp!341140 () Bool)

(declare-fun b!1199375 () Bool)

(declare-fun e!769953 () Bool)

(assert (=> b!1199375 (= e!769953 (and (inv!16102 (left!10508 (left!10508 t!4115))) tp!341140 (inv!16102 (right!10838 (left!10508 t!4115))) tp!341141))))

(declare-fun b!1199377 () Bool)

(declare-fun e!769952 () Bool)

(declare-fun tp!341142 () Bool)

(assert (=> b!1199377 (= e!769952 tp!341142)))

(declare-fun b!1199376 () Bool)

(assert (=> b!1199376 (= e!769953 (and (inv!16103 (xs!6680 (left!10508 t!4115))) e!769952))))

(assert (=> b!1199153 (= tp!341122 (and (inv!16102 (left!10508 t!4115)) e!769953))))

(assert (= (and b!1199153 (is-Node!3973 (left!10508 t!4115))) b!1199375))

(assert (= b!1199376 b!1199377))

(assert (= (and b!1199153 (is-Leaf!6085 (left!10508 t!4115))) b!1199376))

(declare-fun m!1374763 () Bool)

(assert (=> b!1199375 m!1374763))

(declare-fun m!1374765 () Bool)

(assert (=> b!1199375 m!1374765))

(declare-fun m!1374767 () Bool)

(assert (=> b!1199376 m!1374767))

(assert (=> b!1199153 m!1374545))

(declare-fun b!1199378 () Bool)

(declare-fun tp!341144 () Bool)

(declare-fun e!769955 () Bool)

(declare-fun tp!341143 () Bool)

(assert (=> b!1199378 (= e!769955 (and (inv!16102 (left!10508 (right!10838 t!4115))) tp!341143 (inv!16102 (right!10838 (right!10838 t!4115))) tp!341144))))

(declare-fun b!1199380 () Bool)

(declare-fun e!769954 () Bool)

(declare-fun tp!341145 () Bool)

(assert (=> b!1199380 (= e!769954 tp!341145)))

(declare-fun b!1199379 () Bool)

(assert (=> b!1199379 (= e!769955 (and (inv!16103 (xs!6680 (right!10838 t!4115))) e!769954))))

(assert (=> b!1199153 (= tp!341123 (and (inv!16102 (right!10838 t!4115)) e!769955))))

(assert (= (and b!1199153 (is-Node!3973 (right!10838 t!4115))) b!1199378))

(assert (= b!1199379 b!1199380))

(assert (= (and b!1199153 (is-Leaf!6085 (right!10838 t!4115))) b!1199379))

(declare-fun m!1374769 () Bool)

(assert (=> b!1199378 m!1374769))

(declare-fun m!1374771 () Bool)

(assert (=> b!1199378 m!1374771))

(declare-fun m!1374773 () Bool)

(assert (=> b!1199379 m!1374773))

(assert (=> b!1199153 m!1374547))

(declare-fun b!1199385 () Bool)

(declare-fun e!769958 () Bool)

(declare-fun tp_is_empty!5973 () Bool)

(declare-fun tp!341148 () Bool)

(assert (=> b!1199385 (= e!769958 (and tp_is_empty!5973 tp!341148))))

(assert (=> b!1199156 (= tp!341124 e!769958)))

(assert (= (and b!1199156 (is-Cons!12040 (innerList!4033 (xs!6680 t!4115)))) b!1199385))

(push 1)

(assert (not b!1199230))

(assert (not b!1199376))

(assert (not d!342850))

(assert (not b!1199379))

(assert (not b!1199226))

(assert tp_is_empty!5973)

(assert (not d!342880))

(assert (not b!1199302))

(assert (not b!1199324))

(assert (not b!1199365))

(assert (not bm!83408))

(assert (not b!1199363))

(assert (not b!1199231))

(assert (not b!1199377))

(assert (not b!1199327))

(assert (not b!1199227))

(assert (not d!342870))

(assert (not d!342882))

(assert (not d!342856))

(assert (not b!1199338))

(assert (not b!1199314))

(assert (not b!1199364))

(assert (not b!1199380))

(assert (not d!342878))

(assert (not bm!83407))

(assert (not b!1199153))

(assert (not b!1199325))

(assert (not b!1199366))

(assert (not b!1199339))

(assert (not b!1199301))

(assert (not d!342854))

(assert (not bm!83399))

(assert (not b!1199245))

(assert (not b!1199378))

(assert (not b!1199375))

(assert (not bm!83398))

(assert (not b!1199274))

(assert (not b!1199330))

(assert (not b!1199247))

(assert (not b!1199361))

(assert (not b!1199362))

(assert (not b!1199297))

(assert (not d!342868))

(assert (not b!1199329))

(assert (not d!342846))

(assert (not b!1199332))

(assert (not b!1199385))

(assert (not b!1199276))

(assert (not b!1199298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!342906 () Bool)

(declare-fun lt!410659 () Int)

(assert (=> d!342906 (>= lt!410659 0)))

(declare-fun ListPrimitiveSize!77 (List!12064) Int)

(assert (=> d!342906 (= lt!410659 (+ 1 (ListPrimitiveSize!77 (innerList!4033 (xs!6680 (left!10508 t!4115))))))))

(assert (=> d!342906 (= (IArrayPrimitiveSize!5 (xs!6680 (left!10508 t!4115))) lt!410659)))

(declare-fun bs!288229 () Bool)

(assert (= bs!288229 d!342906))

(declare-fun m!1374843 () Bool)

(assert (=> bs!288229 m!1374843))

(assert (=> b!1199226 d!342906))

(assert (=> b!1199153 d!342874))

(assert (=> b!1199153 d!342876))

(declare-fun b!1199455 () Bool)

(declare-fun e!769997 () List!12064)

(assert (=> b!1199455 (= e!769997 (slice!468 lt!410600 0 (- until!31 call!83413)))))

(declare-fun d!342908 () Bool)

(declare-fun e!769998 () Bool)

(assert (=> d!342908 e!769998))

(declare-fun res!540988 () Bool)

(assert (=> d!342908 (=> (not res!540988) (not e!769998))))

(declare-fun lt!410660 () List!12064)

(assert (=> d!342908 (= res!540988 (= (content!1687 lt!410660) (set.union (content!1687 call!83411) (content!1687 (slice!468 lt!410600 0 (- until!31 call!83413))))))))

(assert (=> d!342908 (= lt!410660 e!769997)))

(declare-fun c!199677 () Bool)

(assert (=> d!342908 (= c!199677 (is-Nil!12040 call!83411))))

(assert (=> d!342908 (= (++!3077 call!83411 (slice!468 lt!410600 0 (- until!31 call!83413))) lt!410660)))

(declare-fun b!1199457 () Bool)

(declare-fun res!540987 () Bool)

(assert (=> b!1199457 (=> (not res!540987) (not e!769998))))

(assert (=> b!1199457 (= res!540987 (= (size!9565 lt!410660) (+ (size!9565 call!83411) (size!9565 (slice!468 lt!410600 0 (- until!31 call!83413))))))))

(declare-fun b!1199458 () Bool)

(assert (=> b!1199458 (= e!769998 (or (not (= (slice!468 lt!410600 0 (- until!31 call!83413)) Nil!12040)) (= lt!410660 call!83411)))))

(declare-fun b!1199456 () Bool)

(assert (=> b!1199456 (= e!769997 (Cons!12040 (h!17441 call!83411) (++!3077 (t!112422 call!83411) (slice!468 lt!410600 0 (- until!31 call!83413)))))))

(assert (= (and d!342908 c!199677) b!1199455))

(assert (= (and d!342908 (not c!199677)) b!1199456))

(assert (= (and d!342908 res!540988) b!1199457))

(assert (= (and b!1199457 res!540987) b!1199458))

(declare-fun m!1374845 () Bool)

(assert (=> d!342908 m!1374845))

(declare-fun m!1374847 () Bool)

(assert (=> d!342908 m!1374847))

(assert (=> d!342908 m!1374657))

(declare-fun m!1374849 () Bool)

(assert (=> d!342908 m!1374849))

(declare-fun m!1374851 () Bool)

(assert (=> b!1199457 m!1374851))

(declare-fun m!1374853 () Bool)

(assert (=> b!1199457 m!1374853))

(assert (=> b!1199457 m!1374657))

(declare-fun m!1374855 () Bool)

(assert (=> b!1199457 m!1374855))

(assert (=> b!1199456 m!1374657))

(declare-fun m!1374857 () Bool)

(assert (=> b!1199456 m!1374857))

(assert (=> b!1199276 d!342908))

(declare-fun d!342910 () Bool)

(assert (=> d!342910 (= (slice!468 lt!410600 0 (- until!31 call!83413)) (take!126 (drop!598 lt!410600 0) (- (- until!31 call!83413) 0)))))

(declare-fun bs!288230 () Bool)

(assert (= bs!288230 d!342910))

(declare-fun m!1374859 () Bool)

(assert (=> bs!288230 m!1374859))

(assert (=> bs!288230 m!1374859))

(declare-fun m!1374861 () Bool)

(assert (=> bs!288230 m!1374861))

(assert (=> b!1199276 d!342910))

(declare-fun d!342912 () Bool)

(declare-fun res!540995 () Bool)

(declare-fun e!770001 () Bool)

(assert (=> d!342912 (=> (not res!540995) (not e!770001))))

(assert (=> d!342912 (= res!540995 (= (csize!8176 (left!10508 t!4115)) (+ (size!9564 (left!10508 (left!10508 t!4115))) (size!9564 (right!10838 (left!10508 t!4115))))))))

(assert (=> d!342912 (= (inv!16106 (left!10508 t!4115)) e!770001)))

(declare-fun b!1199465 () Bool)

(declare-fun res!540996 () Bool)

(assert (=> b!1199465 (=> (not res!540996) (not e!770001))))

(assert (=> b!1199465 (= res!540996 (and (not (= (left!10508 (left!10508 t!4115)) Empty!3973)) (not (= (right!10838 (left!10508 t!4115)) Empty!3973))))))

(declare-fun b!1199466 () Bool)

(declare-fun res!540997 () Bool)

(assert (=> b!1199466 (=> (not res!540997) (not e!770001))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1199466 (= res!540997 (= (cheight!4184 (left!10508 t!4115)) (+ (max!0 (height!567 (left!10508 (left!10508 t!4115))) (height!567 (right!10838 (left!10508 t!4115)))) 1)))))

(declare-fun b!1199467 () Bool)

(assert (=> b!1199467 (= e!770001 (<= 0 (cheight!4184 (left!10508 t!4115))))))

(assert (= (and d!342912 res!540995) b!1199465))

(assert (= (and b!1199465 res!540996) b!1199466))

(assert (= (and b!1199466 res!540997) b!1199467))

(declare-fun m!1374863 () Bool)

(assert (=> d!342912 m!1374863))

(declare-fun m!1374865 () Bool)

(assert (=> d!342912 m!1374865))

(declare-fun m!1374867 () Bool)

(assert (=> b!1199466 m!1374867))

(declare-fun m!1374869 () Bool)

(assert (=> b!1199466 m!1374869))

(assert (=> b!1199466 m!1374867))

(assert (=> b!1199466 m!1374869))

(declare-fun m!1374871 () Bool)

(assert (=> b!1199466 m!1374871))

(assert (=> b!1199327 d!342912))

(declare-fun d!342914 () Bool)

(declare-fun lt!410661 () Int)

(assert (=> d!342914 (>= lt!410661 0)))

(declare-fun e!770002 () Int)

(assert (=> d!342914 (= lt!410661 e!770002)))

(declare-fun c!199678 () Bool)

(assert (=> d!342914 (= c!199678 (is-Nil!12040 (innerList!4033 (xs!6680 t!4115))))))

(assert (=> d!342914 (= (size!9565 (innerList!4033 (xs!6680 t!4115))) lt!410661)))

(declare-fun b!1199468 () Bool)

(assert (=> b!1199468 (= e!770002 0)))

(declare-fun b!1199469 () Bool)

(assert (=> b!1199469 (= e!770002 (+ 1 (size!9565 (t!112422 (innerList!4033 (xs!6680 t!4115))))))))

(assert (= (and d!342914 c!199678) b!1199468))

(assert (= (and d!342914 (not c!199678)) b!1199469))

(declare-fun m!1374873 () Bool)

(assert (=> b!1199469 m!1374873))

(assert (=> d!342878 d!342914))

(declare-fun d!342916 () Bool)

(assert (=> d!342916 (= (BigIntAbs!0 (ite c!199618 (cheight!4184 t!4115) (csize!8177 t!4115))) (ite (>= (ite c!199618 (cheight!4184 t!4115) (csize!8177 t!4115)) 0) (ite c!199618 (cheight!4184 t!4115) (csize!8177 t!4115)) (- (ite c!199618 (cheight!4184 t!4115) (csize!8177 t!4115)))))))

(assert (=> bm!83399 d!342916))

(declare-fun bm!83418 () Bool)

(declare-fun call!83423 () Int)

(declare-fun c!199680 () Bool)

(assert (=> bm!83418 (= call!83423 (BigIntAbs!0 (ite c!199680 (cheight!4184 (left!10508 (left!10508 t!4115))) (csize!8177 (left!10508 (left!10508 t!4115))))))))

(declare-fun d!342918 () Bool)

(declare-fun lt!410662 () Int)

(assert (=> d!342918 (>= lt!410662 0)))

(declare-fun e!770003 () Int)

(assert (=> d!342918 (= lt!410662 e!770003)))

(assert (=> d!342918 (= c!199680 (is-Node!3973 (left!10508 (left!10508 t!4115))))))

(assert (=> d!342918 (= (ConcPrimitiveSize!5 (left!10508 (left!10508 t!4115))) lt!410662)))

(declare-fun b!1199470 () Bool)

(declare-fun e!770004 () Int)

(assert (=> b!1199470 (= e!770003 e!770004)))

(declare-fun c!199679 () Bool)

(assert (=> b!1199470 (= c!199679 (is-Leaf!6085 (left!10508 (left!10508 t!4115))))))

(declare-fun b!1199471 () Bool)

(assert (=> b!1199471 (= e!770004 (+ 1 (IArrayPrimitiveSize!5 (xs!6680 (left!10508 (left!10508 t!4115)))) call!83423))))

(declare-fun b!1199472 () Bool)

(assert (=> b!1199472 (= e!770003 (+ 1 (ConcPrimitiveSize!5 (left!10508 (left!10508 (left!10508 t!4115)))) (ConcPrimitiveSize!5 (right!10838 (left!10508 (left!10508 t!4115)))) (BigIntAbs!0 (csize!8176 (left!10508 (left!10508 t!4115)))) call!83423))))

(declare-fun b!1199473 () Bool)

(assert (=> b!1199473 (= e!770004 0)))

(assert (= (and d!342918 c!199680) b!1199472))

(assert (= (and d!342918 (not c!199680)) b!1199470))

(assert (= (and b!1199470 c!199679) b!1199471))

(assert (= (and b!1199470 (not c!199679)) b!1199473))

(assert (= (or b!1199472 b!1199471) bm!83418))

(declare-fun m!1374875 () Bool)

(assert (=> bm!83418 m!1374875))

(declare-fun m!1374877 () Bool)

(assert (=> b!1199471 m!1374877))

(declare-fun m!1374879 () Bool)

(assert (=> b!1199472 m!1374879))

(declare-fun m!1374881 () Bool)

(assert (=> b!1199472 m!1374881))

(declare-fun m!1374883 () Bool)

(assert (=> b!1199472 m!1374883))

(assert (=> b!1199227 d!342918))

(declare-fun bm!83419 () Bool)

(declare-fun call!83424 () Int)

(declare-fun c!199682 () Bool)

(assert (=> bm!83419 (= call!83424 (BigIntAbs!0 (ite c!199682 (cheight!4184 (right!10838 (left!10508 t!4115))) (csize!8177 (right!10838 (left!10508 t!4115))))))))

(declare-fun d!342920 () Bool)

(declare-fun lt!410663 () Int)

(assert (=> d!342920 (>= lt!410663 0)))

(declare-fun e!770005 () Int)

(assert (=> d!342920 (= lt!410663 e!770005)))

(assert (=> d!342920 (= c!199682 (is-Node!3973 (right!10838 (left!10508 t!4115))))))

(assert (=> d!342920 (= (ConcPrimitiveSize!5 (right!10838 (left!10508 t!4115))) lt!410663)))

(declare-fun b!1199474 () Bool)

(declare-fun e!770006 () Int)

(assert (=> b!1199474 (= e!770005 e!770006)))

(declare-fun c!199681 () Bool)

(assert (=> b!1199474 (= c!199681 (is-Leaf!6085 (right!10838 (left!10508 t!4115))))))

(declare-fun b!1199475 () Bool)

(assert (=> b!1199475 (= e!770006 (+ 1 (IArrayPrimitiveSize!5 (xs!6680 (right!10838 (left!10508 t!4115)))) call!83424))))

(declare-fun b!1199476 () Bool)

(assert (=> b!1199476 (= e!770005 (+ 1 (ConcPrimitiveSize!5 (left!10508 (right!10838 (left!10508 t!4115)))) (ConcPrimitiveSize!5 (right!10838 (right!10838 (left!10508 t!4115)))) (BigIntAbs!0 (csize!8176 (right!10838 (left!10508 t!4115)))) call!83424))))

(declare-fun b!1199477 () Bool)

(assert (=> b!1199477 (= e!770006 0)))

(assert (= (and d!342920 c!199682) b!1199476))

(assert (= (and d!342920 (not c!199682)) b!1199474))

(assert (= (and b!1199474 c!199681) b!1199475))

(assert (= (and b!1199474 (not c!199681)) b!1199477))

(assert (= (or b!1199476 b!1199475) bm!83419))

(declare-fun m!1374885 () Bool)

(assert (=> bm!83419 m!1374885))

(declare-fun m!1374887 () Bool)

(assert (=> b!1199475 m!1374887))

(declare-fun m!1374889 () Bool)

(assert (=> b!1199476 m!1374889))

(declare-fun m!1374891 () Bool)

(assert (=> b!1199476 m!1374891))

(declare-fun m!1374893 () Bool)

(assert (=> b!1199476 m!1374893))

(assert (=> b!1199227 d!342920))

(declare-fun d!342922 () Bool)

(assert (=> d!342922 (= (BigIntAbs!0 (csize!8176 (left!10508 t!4115))) (ite (>= (csize!8176 (left!10508 t!4115)) 0) (csize!8176 (left!10508 t!4115)) (- (csize!8176 (left!10508 t!4115)))))))

(assert (=> b!1199227 d!342922))

(declare-fun b!1199478 () Bool)

(declare-fun res!541003 () Bool)

(declare-fun e!770008 () Bool)

(assert (=> b!1199478 (=> (not res!541003) (not e!770008))))

(assert (=> b!1199478 (= res!541003 (isBalanced!1158 (right!10838 (right!10838 t!4115))))))

(declare-fun d!342924 () Bool)

(declare-fun res!541000 () Bool)

(declare-fun e!770007 () Bool)

(assert (=> d!342924 (=> res!541000 e!770007)))

(assert (=> d!342924 (= res!541000 (not (is-Node!3973 (right!10838 t!4115))))))

(assert (=> d!342924 (= (isBalanced!1158 (right!10838 t!4115)) e!770007)))

(declare-fun b!1199479 () Bool)

(assert (=> b!1199479 (= e!770008 (not (isEmpty!7258 (right!10838 (right!10838 t!4115)))))))

(declare-fun b!1199480 () Bool)

(assert (=> b!1199480 (= e!770007 e!770008)))

(declare-fun res!540999 () Bool)

(assert (=> b!1199480 (=> (not res!540999) (not e!770008))))

(assert (=> b!1199480 (= res!540999 (<= (- 1) (- (height!567 (left!10508 (right!10838 t!4115))) (height!567 (right!10838 (right!10838 t!4115))))))))

(declare-fun b!1199481 () Bool)

(declare-fun res!541002 () Bool)

(assert (=> b!1199481 (=> (not res!541002) (not e!770008))))

(assert (=> b!1199481 (= res!541002 (<= (- (height!567 (left!10508 (right!10838 t!4115))) (height!567 (right!10838 (right!10838 t!4115)))) 1))))

(declare-fun b!1199482 () Bool)

(declare-fun res!541001 () Bool)

(assert (=> b!1199482 (=> (not res!541001) (not e!770008))))

(assert (=> b!1199482 (= res!541001 (not (isEmpty!7258 (left!10508 (right!10838 t!4115)))))))

(declare-fun b!1199483 () Bool)

(declare-fun res!540998 () Bool)

(assert (=> b!1199483 (=> (not res!540998) (not e!770008))))

(assert (=> b!1199483 (= res!540998 (isBalanced!1158 (left!10508 (right!10838 t!4115))))))

(assert (= (and d!342924 (not res!541000)) b!1199480))

(assert (= (and b!1199480 res!540999) b!1199481))

(assert (= (and b!1199481 res!541002) b!1199483))

(assert (= (and b!1199483 res!540998) b!1199478))

(assert (= (and b!1199478 res!541003) b!1199482))

(assert (= (and b!1199482 res!541001) b!1199479))

(declare-fun m!1374895 () Bool)

(assert (=> b!1199481 m!1374895))

(declare-fun m!1374897 () Bool)

(assert (=> b!1199481 m!1374897))

(declare-fun m!1374899 () Bool)

(assert (=> b!1199478 m!1374899))

(declare-fun m!1374901 () Bool)

(assert (=> b!1199483 m!1374901))

(declare-fun m!1374903 () Bool)

(assert (=> b!1199479 m!1374903))

(declare-fun m!1374905 () Bool)

(assert (=> b!1199482 m!1374905))

(assert (=> b!1199480 m!1374895))

(assert (=> b!1199480 m!1374897))

(assert (=> b!1199361 d!342924))

(declare-fun d!342926 () Bool)

(declare-fun c!199683 () Bool)

(assert (=> d!342926 (= c!199683 (is-Node!3973 (left!10508 (right!10838 t!4115))))))

(declare-fun e!770009 () Bool)

(assert (=> d!342926 (= (inv!16102 (left!10508 (right!10838 t!4115))) e!770009)))

(declare-fun b!1199484 () Bool)

(assert (=> b!1199484 (= e!770009 (inv!16106 (left!10508 (right!10838 t!4115))))))

(declare-fun b!1199485 () Bool)

(declare-fun e!770010 () Bool)

(assert (=> b!1199485 (= e!770009 e!770010)))

(declare-fun res!541004 () Bool)

(assert (=> b!1199485 (= res!541004 (not (is-Leaf!6085 (left!10508 (right!10838 t!4115)))))))

(assert (=> b!1199485 (=> res!541004 e!770010)))

(declare-fun b!1199486 () Bool)

(assert (=> b!1199486 (= e!770010 (inv!16107 (left!10508 (right!10838 t!4115))))))

(assert (= (and d!342926 c!199683) b!1199484))

(assert (= (and d!342926 (not c!199683)) b!1199485))

(assert (= (and b!1199485 (not res!541004)) b!1199486))

(declare-fun m!1374907 () Bool)

(assert (=> b!1199484 m!1374907))

(declare-fun m!1374909 () Bool)

(assert (=> b!1199486 m!1374909))

(assert (=> b!1199378 d!342926))

(declare-fun d!342928 () Bool)

(declare-fun c!199684 () Bool)

(assert (=> d!342928 (= c!199684 (is-Node!3973 (right!10838 (right!10838 t!4115))))))

(declare-fun e!770011 () Bool)

(assert (=> d!342928 (= (inv!16102 (right!10838 (right!10838 t!4115))) e!770011)))

(declare-fun b!1199487 () Bool)

(assert (=> b!1199487 (= e!770011 (inv!16106 (right!10838 (right!10838 t!4115))))))

(declare-fun b!1199488 () Bool)

(declare-fun e!770012 () Bool)

(assert (=> b!1199488 (= e!770011 e!770012)))

(declare-fun res!541005 () Bool)

(assert (=> b!1199488 (= res!541005 (not (is-Leaf!6085 (right!10838 (right!10838 t!4115)))))))

(assert (=> b!1199488 (=> res!541005 e!770012)))

(declare-fun b!1199489 () Bool)

(assert (=> b!1199489 (= e!770012 (inv!16107 (right!10838 (right!10838 t!4115))))))

(assert (= (and d!342928 c!199684) b!1199487))

(assert (= (and d!342928 (not c!199684)) b!1199488))

(assert (= (and b!1199488 (not res!541005)) b!1199489))

(declare-fun m!1374911 () Bool)

(assert (=> b!1199487 m!1374911))

(declare-fun m!1374913 () Bool)

(assert (=> b!1199489 m!1374913))

(assert (=> b!1199378 d!342928))

(declare-fun b!1199490 () Bool)

(declare-fun e!770013 () List!12064)

(assert (=> b!1199490 (= e!770013 lt!410600)))

(declare-fun d!342930 () Bool)

(declare-fun e!770014 () Bool)

(assert (=> d!342930 e!770014))

(declare-fun res!541007 () Bool)

(assert (=> d!342930 (=> (not res!541007) (not e!770014))))

(declare-fun lt!410664 () List!12064)

(assert (=> d!342930 (= res!541007 (= (content!1687 lt!410664) (set.union (content!1687 (t!112422 lt!410599)) (content!1687 lt!410600))))))

(assert (=> d!342930 (= lt!410664 e!770013)))

(declare-fun c!199685 () Bool)

(assert (=> d!342930 (= c!199685 (is-Nil!12040 (t!112422 lt!410599)))))

(assert (=> d!342930 (= (++!3077 (t!112422 lt!410599) lt!410600) lt!410664)))

(declare-fun b!1199492 () Bool)

(declare-fun res!541006 () Bool)

(assert (=> b!1199492 (=> (not res!541006) (not e!770014))))

(assert (=> b!1199492 (= res!541006 (= (size!9565 lt!410664) (+ (size!9565 (t!112422 lt!410599)) (size!9565 lt!410600))))))

(declare-fun b!1199493 () Bool)

(assert (=> b!1199493 (= e!770014 (or (not (= lt!410600 Nil!12040)) (= lt!410664 (t!112422 lt!410599))))))

(declare-fun b!1199491 () Bool)

(assert (=> b!1199491 (= e!770013 (Cons!12040 (h!17441 (t!112422 lt!410599)) (++!3077 (t!112422 (t!112422 lt!410599)) lt!410600)))))

(assert (= (and d!342930 c!199685) b!1199490))

(assert (= (and d!342930 (not c!199685)) b!1199491))

(assert (= (and d!342930 res!541007) b!1199492))

(assert (= (and b!1199492 res!541006) b!1199493))

(declare-fun m!1374915 () Bool)

(assert (=> d!342930 m!1374915))

(declare-fun m!1374917 () Bool)

(assert (=> d!342930 m!1374917))

(assert (=> d!342930 m!1374703))

(declare-fun m!1374919 () Bool)

(assert (=> b!1199492 m!1374919))

(assert (=> b!1199492 m!1374681))

(assert (=> b!1199492 m!1374663))

(declare-fun m!1374921 () Bool)

(assert (=> b!1199491 m!1374921))

(assert (=> b!1199324 d!342930))

(declare-fun d!342932 () Bool)

(declare-fun res!541008 () Bool)

(declare-fun e!770015 () Bool)

(assert (=> d!342932 (=> (not res!541008) (not e!770015))))

(assert (=> d!342932 (= res!541008 (= (csize!8176 t!4115) (+ (size!9564 (left!10508 t!4115)) (size!9564 (right!10838 t!4115)))))))

(assert (=> d!342932 (= (inv!16106 t!4115) e!770015)))

(declare-fun b!1199494 () Bool)

(declare-fun res!541009 () Bool)

(assert (=> b!1199494 (=> (not res!541009) (not e!770015))))

(assert (=> b!1199494 (= res!541009 (and (not (= (left!10508 t!4115) Empty!3973)) (not (= (right!10838 t!4115) Empty!3973))))))

(declare-fun b!1199495 () Bool)

(declare-fun res!541010 () Bool)

(assert (=> b!1199495 (=> (not res!541010) (not e!770015))))

(assert (=> b!1199495 (= res!541010 (= (cheight!4184 t!4115) (+ (max!0 (height!567 (left!10508 t!4115)) (height!567 (right!10838 t!4115))) 1)))))

(declare-fun b!1199496 () Bool)

(assert (=> b!1199496 (= e!770015 (<= 0 (cheight!4184 t!4115)))))

(assert (= (and d!342932 res!541008) b!1199494))

(assert (= (and b!1199494 res!541009) b!1199495))

(assert (= (and b!1199495 res!541010) b!1199496))

(assert (=> d!342932 m!1374535))

(declare-fun m!1374923 () Bool)

(assert (=> d!342932 m!1374923))

(assert (=> b!1199495 m!1374751))

(assert (=> b!1199495 m!1374753))

(assert (=> b!1199495 m!1374751))

(assert (=> b!1199495 m!1374753))

(declare-fun m!1374925 () Bool)

(assert (=> b!1199495 m!1374925))

(assert (=> b!1199245 d!342932))

(declare-fun d!342934 () Bool)

(declare-fun res!541015 () Bool)

(declare-fun e!770018 () Bool)

(assert (=> d!342934 (=> (not res!541015) (not e!770018))))

(assert (=> d!342934 (= res!541015 (<= (size!9565 (list!4482 (xs!6680 (left!10508 t!4115)))) 512))))

(assert (=> d!342934 (= (inv!16107 (left!10508 t!4115)) e!770018)))

(declare-fun b!1199501 () Bool)

(declare-fun res!541016 () Bool)

(assert (=> b!1199501 (=> (not res!541016) (not e!770018))))

(assert (=> b!1199501 (= res!541016 (= (csize!8177 (left!10508 t!4115)) (size!9565 (list!4482 (xs!6680 (left!10508 t!4115))))))))

(declare-fun b!1199502 () Bool)

(assert (=> b!1199502 (= e!770018 (and (> (csize!8177 (left!10508 t!4115)) 0) (<= (csize!8177 (left!10508 t!4115)) 512)))))

(assert (= (and d!342934 res!541015) b!1199501))

(assert (= (and b!1199501 res!541016) b!1199502))

(assert (=> d!342934 m!1374671))

(assert (=> d!342934 m!1374671))

(declare-fun m!1374927 () Bool)

(assert (=> d!342934 m!1374927))

(assert (=> b!1199501 m!1374671))

(assert (=> b!1199501 m!1374671))

(assert (=> b!1199501 m!1374927))

(assert (=> b!1199329 d!342934))

(declare-fun d!342936 () Bool)

(declare-fun c!199688 () Bool)

(assert (=> d!342936 (= c!199688 (is-Nil!12040 lt!410647))))

(declare-fun e!770021 () (Set T!21766))

(assert (=> d!342936 (= (content!1687 lt!410647) e!770021)))

(declare-fun b!1199507 () Bool)

(assert (=> b!1199507 (= e!770021 (as set.empty (Set T!21766)))))

(declare-fun b!1199508 () Bool)

(assert (=> b!1199508 (= e!770021 (set.union (set.insert (h!17441 lt!410647) (as set.empty (Set T!21766))) (content!1687 (t!112422 lt!410647))))))

(assert (= (and d!342936 c!199688) b!1199507))

(assert (= (and d!342936 (not c!199688)) b!1199508))

(declare-fun m!1374929 () Bool)

(assert (=> b!1199508 m!1374929))

(declare-fun m!1374931 () Bool)

(assert (=> b!1199508 m!1374931))

(assert (=> d!342880 d!342936))

(declare-fun d!342938 () Bool)

(declare-fun c!199689 () Bool)

(assert (=> d!342938 (= c!199689 (is-Nil!12040 (slice!468 lt!410599 from!553 lt!410597)))))

(declare-fun e!770022 () (Set T!21766))

(assert (=> d!342938 (= (content!1687 (slice!468 lt!410599 from!553 lt!410597)) e!770022)))

(declare-fun b!1199509 () Bool)

(assert (=> b!1199509 (= e!770022 (as set.empty (Set T!21766)))))

(declare-fun b!1199510 () Bool)

(assert (=> b!1199510 (= e!770022 (set.union (set.insert (h!17441 (slice!468 lt!410599 from!553 lt!410597)) (as set.empty (Set T!21766))) (content!1687 (t!112422 (slice!468 lt!410599 from!553 lt!410597)))))))

(assert (= (and d!342938 c!199689) b!1199509))

(assert (= (and d!342938 (not c!199689)) b!1199510))

(declare-fun m!1374933 () Bool)

(assert (=> b!1199510 m!1374933))

(declare-fun m!1374935 () Bool)

(assert (=> b!1199510 m!1374935))

(assert (=> d!342880 d!342938))

(declare-fun d!342940 () Bool)

(declare-fun c!199690 () Bool)

(assert (=> d!342940 (= c!199690 (is-Nil!12040 call!83390))))

(declare-fun e!770023 () (Set T!21766))

(assert (=> d!342940 (= (content!1687 call!83390) e!770023)))

(declare-fun b!1199511 () Bool)

(assert (=> b!1199511 (= e!770023 (as set.empty (Set T!21766)))))

(declare-fun b!1199512 () Bool)

(assert (=> b!1199512 (= e!770023 (set.union (set.insert (h!17441 call!83390) (as set.empty (Set T!21766))) (content!1687 (t!112422 call!83390))))))

(assert (= (and d!342940 c!199690) b!1199511))

(assert (= (and d!342940 (not c!199690)) b!1199512))

(declare-fun m!1374937 () Bool)

(assert (=> b!1199512 m!1374937))

(declare-fun m!1374939 () Bool)

(assert (=> b!1199512 m!1374939))

(assert (=> d!342880 d!342940))

(declare-fun d!342942 () Bool)

(declare-fun c!199691 () Bool)

(assert (=> d!342942 (= c!199691 (is-Nil!12040 lt!410644))))

(declare-fun e!770024 () (Set T!21766))

(assert (=> d!342942 (= (content!1687 lt!410644) e!770024)))

(declare-fun b!1199513 () Bool)

(assert (=> b!1199513 (= e!770024 (as set.empty (Set T!21766)))))

(declare-fun b!1199514 () Bool)

(assert (=> b!1199514 (= e!770024 (set.union (set.insert (h!17441 lt!410644) (as set.empty (Set T!21766))) (content!1687 (t!112422 lt!410644))))))

(assert (= (and d!342942 c!199691) b!1199513))

(assert (= (and d!342942 (not c!199691)) b!1199514))

(declare-fun m!1374941 () Bool)

(assert (=> b!1199514 m!1374941))

(declare-fun m!1374943 () Bool)

(assert (=> b!1199514 m!1374943))

(assert (=> d!342870 d!342942))

(declare-fun d!342944 () Bool)

(declare-fun c!199692 () Bool)

(assert (=> d!342944 (= c!199692 (is-Nil!12040 lt!410599))))

(declare-fun e!770025 () (Set T!21766))

(assert (=> d!342944 (= (content!1687 lt!410599) e!770025)))

(declare-fun b!1199515 () Bool)

(assert (=> b!1199515 (= e!770025 (as set.empty (Set T!21766)))))

(declare-fun b!1199516 () Bool)

(assert (=> b!1199516 (= e!770025 (set.union (set.insert (h!17441 lt!410599) (as set.empty (Set T!21766))) (content!1687 (t!112422 lt!410599))))))

(assert (= (and d!342944 c!199692) b!1199515))

(assert (= (and d!342944 (not c!199692)) b!1199516))

(declare-fun m!1374945 () Bool)

(assert (=> b!1199516 m!1374945))

(assert (=> b!1199516 m!1374917))

(assert (=> d!342870 d!342944))

(declare-fun d!342946 () Bool)

(declare-fun c!199693 () Bool)

(assert (=> d!342946 (= c!199693 (is-Nil!12040 lt!410600))))

(declare-fun e!770026 () (Set T!21766))

(assert (=> d!342946 (= (content!1687 lt!410600) e!770026)))

(declare-fun b!1199517 () Bool)

(assert (=> b!1199517 (= e!770026 (as set.empty (Set T!21766)))))

(declare-fun b!1199518 () Bool)

(assert (=> b!1199518 (= e!770026 (set.union (set.insert (h!17441 lt!410600) (as set.empty (Set T!21766))) (content!1687 (t!112422 lt!410600))))))

(assert (= (and d!342946 c!199693) b!1199517))

(assert (= (and d!342946 (not c!199693)) b!1199518))

(declare-fun m!1374947 () Bool)

(assert (=> b!1199518 m!1374947))

(declare-fun m!1374949 () Bool)

(assert (=> b!1199518 m!1374949))

(assert (=> d!342870 d!342946))

(declare-fun b!1199533 () Bool)

(declare-fun e!770036 () Bool)

(declare-fun lt!410667 () List!12064)

(declare-fun e!770037 () Int)

(assert (=> b!1199533 (= e!770036 (= (size!9565 lt!410667) e!770037))))

(declare-fun c!199700 () Bool)

(assert (=> b!1199533 (= c!199700 (<= (- lt!410597 from!553) 0))))

(declare-fun b!1199534 () Bool)

(declare-fun e!770035 () Int)

(assert (=> b!1199534 (= e!770035 (size!9565 (drop!598 lt!410599 from!553)))))

(declare-fun e!770038 () List!12064)

(declare-fun b!1199535 () Bool)

(assert (=> b!1199535 (= e!770038 (Cons!12040 (h!17441 (drop!598 lt!410599 from!553)) (take!126 (t!112422 (drop!598 lt!410599 from!553)) (- (- lt!410597 from!553) 1))))))

(declare-fun b!1199536 () Bool)

(assert (=> b!1199536 (= e!770037 0)))

(declare-fun b!1199537 () Bool)

(assert (=> b!1199537 (= e!770037 e!770035)))

(declare-fun c!199702 () Bool)

(assert (=> b!1199537 (= c!199702 (>= (- lt!410597 from!553) (size!9565 (drop!598 lt!410599 from!553))))))

(declare-fun b!1199538 () Bool)

(assert (=> b!1199538 (= e!770038 Nil!12040)))

(declare-fun b!1199539 () Bool)

(assert (=> b!1199539 (= e!770035 (- lt!410597 from!553))))

(declare-fun d!342948 () Bool)

(assert (=> d!342948 e!770036))

(declare-fun res!541019 () Bool)

(assert (=> d!342948 (=> (not res!541019) (not e!770036))))

(assert (=> d!342948 (= res!541019 (set.subset (content!1687 lt!410667) (content!1687 (drop!598 lt!410599 from!553))))))

(assert (=> d!342948 (= lt!410667 e!770038)))

(declare-fun c!199701 () Bool)

(assert (=> d!342948 (= c!199701 (or (is-Nil!12040 (drop!598 lt!410599 from!553)) (<= (- lt!410597 from!553) 0)))))

(assert (=> d!342948 (= (take!126 (drop!598 lt!410599 from!553) (- lt!410597 from!553)) lt!410667)))

(assert (= (and d!342948 c!199701) b!1199538))

(assert (= (and d!342948 (not c!199701)) b!1199535))

(assert (= (and d!342948 res!541019) b!1199533))

(assert (= (and b!1199533 c!199700) b!1199536))

(assert (= (and b!1199533 (not c!199700)) b!1199537))

(assert (= (and b!1199537 c!199702) b!1199534))

(assert (= (and b!1199537 (not c!199702)) b!1199539))

(assert (=> b!1199537 m!1374733))

(declare-fun m!1374951 () Bool)

(assert (=> b!1199537 m!1374951))

(declare-fun m!1374953 () Bool)

(assert (=> b!1199533 m!1374953))

(assert (=> b!1199534 m!1374733))

(assert (=> b!1199534 m!1374951))

(declare-fun m!1374955 () Bool)

(assert (=> d!342948 m!1374955))

(assert (=> d!342948 m!1374733))

(declare-fun m!1374957 () Bool)

(assert (=> d!342948 m!1374957))

(declare-fun m!1374959 () Bool)

(assert (=> b!1199535 m!1374959))

(assert (=> d!342882 d!342948))

(declare-fun b!1199558 () Bool)

(declare-fun e!770052 () List!12064)

(declare-fun e!770049 () List!12064)

(assert (=> b!1199558 (= e!770052 e!770049)))

(declare-fun c!199713 () Bool)

(assert (=> b!1199558 (= c!199713 (<= from!553 0))))

(declare-fun b!1199559 () Bool)

(declare-fun e!770051 () Int)

(assert (=> b!1199559 (= e!770051 0)))

(declare-fun b!1199560 () Bool)

(assert (=> b!1199560 (= e!770049 (drop!598 (t!112422 lt!410599) (- from!553 1)))))

(declare-fun b!1199561 () Bool)

(declare-fun e!770053 () Int)

(assert (=> b!1199561 (= e!770053 e!770051)))

(declare-fun c!199712 () Bool)

(declare-fun call!83427 () Int)

(assert (=> b!1199561 (= c!199712 (>= from!553 call!83427))))

(declare-fun b!1199562 () Bool)

(assert (=> b!1199562 (= e!770052 Nil!12040)))

(declare-fun bm!83422 () Bool)

(assert (=> bm!83422 (= call!83427 (size!9565 lt!410599))))

(declare-fun b!1199563 () Bool)

(declare-fun e!770050 () Bool)

(declare-fun lt!410670 () List!12064)

(assert (=> b!1199563 (= e!770050 (= (size!9565 lt!410670) e!770053))))

(declare-fun c!199711 () Bool)

(assert (=> b!1199563 (= c!199711 (<= from!553 0))))

(declare-fun d!342950 () Bool)

(assert (=> d!342950 e!770050))

(declare-fun res!541022 () Bool)

(assert (=> d!342950 (=> (not res!541022) (not e!770050))))

(assert (=> d!342950 (= res!541022 (set.subset (content!1687 lt!410670) (content!1687 lt!410599)))))

(assert (=> d!342950 (= lt!410670 e!770052)))

(declare-fun c!199714 () Bool)

(assert (=> d!342950 (= c!199714 (is-Nil!12040 lt!410599))))

(assert (=> d!342950 (= (drop!598 lt!410599 from!553) lt!410670)))

(declare-fun b!1199564 () Bool)

(assert (=> b!1199564 (= e!770051 (- call!83427 from!553))))

(declare-fun b!1199565 () Bool)

(assert (=> b!1199565 (= e!770053 call!83427)))

(declare-fun b!1199566 () Bool)

(assert (=> b!1199566 (= e!770049 lt!410599)))

(assert (= (and d!342950 c!199714) b!1199562))

(assert (= (and d!342950 (not c!199714)) b!1199558))

(assert (= (and b!1199558 c!199713) b!1199566))

(assert (= (and b!1199558 (not c!199713)) b!1199560))

(assert (= (and d!342950 res!541022) b!1199563))

(assert (= (and b!1199563 c!199711) b!1199565))

(assert (= (and b!1199563 (not c!199711)) b!1199561))

(assert (= (and b!1199561 c!199712) b!1199559))

(assert (= (and b!1199561 (not c!199712)) b!1199564))

(assert (= (or b!1199565 b!1199561 b!1199564) bm!83422))

(declare-fun m!1374961 () Bool)

(assert (=> b!1199560 m!1374961))

(assert (=> bm!83422 m!1374527))

(declare-fun m!1374963 () Bool)

(assert (=> b!1199563 m!1374963))

(declare-fun m!1374965 () Bool)

(assert (=> d!342950 m!1374965))

(assert (=> d!342950 m!1374701))

(assert (=> d!342882 d!342950))

(declare-fun d!342952 () Bool)

(declare-fun c!199715 () Bool)

(assert (=> d!342952 (= c!199715 (is-Node!3973 (left!10508 (left!10508 t!4115))))))

(declare-fun e!770054 () Bool)

(assert (=> d!342952 (= (inv!16102 (left!10508 (left!10508 t!4115))) e!770054)))

(declare-fun b!1199567 () Bool)

(assert (=> b!1199567 (= e!770054 (inv!16106 (left!10508 (left!10508 t!4115))))))

(declare-fun b!1199568 () Bool)

(declare-fun e!770055 () Bool)

(assert (=> b!1199568 (= e!770054 e!770055)))

(declare-fun res!541023 () Bool)

(assert (=> b!1199568 (= res!541023 (not (is-Leaf!6085 (left!10508 (left!10508 t!4115)))))))

(assert (=> b!1199568 (=> res!541023 e!770055)))

(declare-fun b!1199569 () Bool)

(assert (=> b!1199569 (= e!770055 (inv!16107 (left!10508 (left!10508 t!4115))))))

(assert (= (and d!342952 c!199715) b!1199567))

(assert (= (and d!342952 (not c!199715)) b!1199568))

(assert (= (and b!1199568 (not res!541023)) b!1199569))

(declare-fun m!1374967 () Bool)

(assert (=> b!1199567 m!1374967))

(declare-fun m!1374969 () Bool)

(assert (=> b!1199569 m!1374969))

(assert (=> b!1199375 d!342952))

(declare-fun d!342954 () Bool)

(declare-fun c!199716 () Bool)

(assert (=> d!342954 (= c!199716 (is-Node!3973 (right!10838 (left!10508 t!4115))))))

(declare-fun e!770056 () Bool)

(assert (=> d!342954 (= (inv!16102 (right!10838 (left!10508 t!4115))) e!770056)))

(declare-fun b!1199570 () Bool)

(assert (=> b!1199570 (= e!770056 (inv!16106 (right!10838 (left!10508 t!4115))))))

(declare-fun b!1199571 () Bool)

(declare-fun e!770057 () Bool)

(assert (=> b!1199571 (= e!770056 e!770057)))

(declare-fun res!541024 () Bool)

(assert (=> b!1199571 (= res!541024 (not (is-Leaf!6085 (right!10838 (left!10508 t!4115)))))))

(assert (=> b!1199571 (=> res!541024 e!770057)))

(declare-fun b!1199572 () Bool)

(assert (=> b!1199572 (= e!770057 (inv!16107 (right!10838 (left!10508 t!4115))))))

(assert (= (and d!342954 c!199716) b!1199570))

(assert (= (and d!342954 (not c!199716)) b!1199571))

(assert (= (and b!1199571 (not res!541024)) b!1199572))

(declare-fun m!1374971 () Bool)

(assert (=> b!1199570 m!1374971))

(declare-fun m!1374973 () Bool)

(assert (=> b!1199572 m!1374973))

(assert (=> b!1199375 d!342954))

(declare-fun d!342956 () Bool)

(assert (=> d!342956 (= (height!567 (left!10508 t!4115)) (ite (is-Empty!3973 (left!10508 t!4115)) 0 (ite (is-Leaf!6085 (left!10508 t!4115)) 1 (cheight!4184 (left!10508 t!4115)))))))

(assert (=> b!1199363 d!342956))

(declare-fun d!342958 () Bool)

(assert (=> d!342958 (= (height!567 (right!10838 t!4115)) (ite (is-Empty!3973 (right!10838 t!4115)) 0 (ite (is-Leaf!6085 (right!10838 t!4115)) 1 (cheight!4184 (right!10838 t!4115)))))))

(assert (=> b!1199363 d!342958))

(assert (=> b!1199231 d!342838))

(declare-fun bm!83423 () Bool)

(declare-fun call!83428 () Int)

(declare-fun c!199718 () Bool)

(assert (=> bm!83423 (= call!83428 (BigIntAbs!0 (ite c!199718 (cheight!4184 (right!10838 t!4115)) (csize!8177 (right!10838 t!4115)))))))

(declare-fun d!342960 () Bool)

(declare-fun lt!410671 () Int)

(assert (=> d!342960 (>= lt!410671 0)))

(declare-fun e!770058 () Int)

(assert (=> d!342960 (= lt!410671 e!770058)))

(assert (=> d!342960 (= c!199718 (is-Node!3973 (right!10838 t!4115)))))

(assert (=> d!342960 (= (ConcPrimitiveSize!5 (right!10838 t!4115)) lt!410671)))

(declare-fun b!1199573 () Bool)

(declare-fun e!770059 () Int)

(assert (=> b!1199573 (= e!770058 e!770059)))

(declare-fun c!199717 () Bool)

(assert (=> b!1199573 (= c!199717 (is-Leaf!6085 (right!10838 t!4115)))))

(declare-fun b!1199574 () Bool)

(assert (=> b!1199574 (= e!770059 (+ 1 (IArrayPrimitiveSize!5 (xs!6680 (right!10838 t!4115))) call!83428))))

(declare-fun b!1199575 () Bool)

(assert (=> b!1199575 (= e!770058 (+ 1 (ConcPrimitiveSize!5 (left!10508 (right!10838 t!4115))) (ConcPrimitiveSize!5 (right!10838 (right!10838 t!4115))) (BigIntAbs!0 (csize!8176 (right!10838 t!4115))) call!83428))))

(declare-fun b!1199576 () Bool)

(assert (=> b!1199576 (= e!770059 0)))

(assert (= (and d!342960 c!199718) b!1199575))

(assert (= (and d!342960 (not c!199718)) b!1199573))

(assert (= (and b!1199573 c!199717) b!1199574))

(assert (= (and b!1199573 (not c!199717)) b!1199576))

(assert (= (or b!1199575 b!1199574) bm!83423))

(declare-fun m!1374975 () Bool)

(assert (=> bm!83423 m!1374975))

(declare-fun m!1374977 () Bool)

(assert (=> b!1199574 m!1374977))

(declare-fun m!1374979 () Bool)

(assert (=> b!1199575 m!1374979))

(declare-fun m!1374981 () Bool)

(assert (=> b!1199575 m!1374981))

(declare-fun m!1374983 () Bool)

(assert (=> b!1199575 m!1374983))

(assert (=> b!1199231 d!342960))

(declare-fun d!342962 () Bool)

(assert (=> d!342962 (= (BigIntAbs!0 (csize!8176 t!4115)) (ite (>= (csize!8176 t!4115) 0) (csize!8176 t!4115) (- (csize!8176 t!4115))))))

(assert (=> b!1199231 d!342962))

(declare-fun d!342964 () Bool)

(declare-fun res!541025 () Bool)

(declare-fun e!770060 () Bool)

(assert (=> d!342964 (=> (not res!541025) (not e!770060))))

(assert (=> d!342964 (= res!541025 (<= (size!9565 (list!4482 (xs!6680 t!4115))) 512))))

(assert (=> d!342964 (= (inv!16107 t!4115) e!770060)))

(declare-fun b!1199577 () Bool)

(declare-fun res!541026 () Bool)

(assert (=> b!1199577 (=> (not res!541026) (not e!770060))))

(assert (=> b!1199577 (= res!541026 (= (csize!8177 t!4115) (size!9565 (list!4482 (xs!6680 t!4115)))))))

(declare-fun b!1199578 () Bool)

(assert (=> b!1199578 (= e!770060 (and (> (csize!8177 t!4115) 0) (<= (csize!8177 t!4115) 512)))))

(assert (= (and d!342964 res!541025) b!1199577))

(assert (= (and b!1199577 res!541026) b!1199578))

(declare-fun m!1374985 () Bool)

(assert (=> d!342964 m!1374985))

(assert (=> d!342964 m!1374985))

(declare-fun m!1374987 () Bool)

(assert (=> d!342964 m!1374987))

(assert (=> b!1199577 m!1374985))

(assert (=> b!1199577 m!1374985))

(assert (=> b!1199577 m!1374987))

(assert (=> b!1199247 d!342964))

(declare-fun d!342966 () Bool)

(declare-fun lt!410674 () Bool)

(declare-fun isEmpty!7260 (List!12064) Bool)

(assert (=> d!342966 (= lt!410674 (isEmpty!7260 (list!4480 (right!10838 t!4115))))))

(assert (=> d!342966 (= lt!410674 (= (size!9564 (right!10838 t!4115)) 0))))

(assert (=> d!342966 (= (isEmpty!7258 (right!10838 t!4115)) lt!410674)))

(declare-fun bs!288231 () Bool)

(assert (= bs!288231 d!342966))

(assert (=> bs!288231 m!1374525))

(assert (=> bs!288231 m!1374525))

(declare-fun m!1374989 () Bool)

(assert (=> bs!288231 m!1374989))

(assert (=> bs!288231 m!1374923))

(assert (=> b!1199362 d!342966))

(declare-fun d!342968 () Bool)

(assert (=> d!342968 (= (inv!16103 (xs!6680 (right!10838 t!4115))) (<= (size!9565 (innerList!4033 (xs!6680 (right!10838 t!4115)))) 2147483647))))

(declare-fun bs!288232 () Bool)

(assert (= bs!288232 d!342968))

(declare-fun m!1374991 () Bool)

(assert (=> bs!288232 m!1374991))

(assert (=> b!1199379 d!342968))

(declare-fun d!342970 () Bool)

(declare-fun lt!410675 () Int)

(assert (=> d!342970 (>= lt!410675 0)))

(assert (=> d!342970 (= lt!410675 (+ 1 (ListPrimitiveSize!77 (innerList!4033 (xs!6680 t!4115)))))))

(assert (=> d!342970 (= (IArrayPrimitiveSize!5 (xs!6680 t!4115)) lt!410675)))

(declare-fun bs!288233 () Bool)

(assert (= bs!288233 d!342970))

(declare-fun m!1374993 () Bool)

(assert (=> bs!288233 m!1374993))

(assert (=> b!1199230 d!342970))

(declare-fun d!342972 () Bool)

(declare-fun lt!410676 () Int)

(assert (=> d!342972 (>= lt!410676 0)))

(declare-fun e!770061 () Int)

(assert (=> d!342972 (= lt!410676 e!770061)))

(declare-fun c!199719 () Bool)

(assert (=> d!342972 (= c!199719 (is-Nil!12040 lt!410644))))

(assert (=> d!342972 (= (size!9565 lt!410644) lt!410676)))

(declare-fun b!1199579 () Bool)

(assert (=> b!1199579 (= e!770061 0)))

(declare-fun b!1199580 () Bool)

(assert (=> b!1199580 (= e!770061 (+ 1 (size!9565 (t!112422 lt!410644))))))

(assert (= (and d!342972 c!199719) b!1199579))

(assert (= (and d!342972 (not c!199719)) b!1199580))

(declare-fun m!1374995 () Bool)

(assert (=> b!1199580 m!1374995))

(assert (=> b!1199325 d!342972))

(assert (=> b!1199325 d!342866))

(declare-fun d!342974 () Bool)

(declare-fun lt!410677 () Int)

(assert (=> d!342974 (>= lt!410677 0)))

(declare-fun e!770062 () Int)

(assert (=> d!342974 (= lt!410677 e!770062)))

(declare-fun c!199720 () Bool)

(assert (=> d!342974 (= c!199720 (is-Nil!12040 lt!410600))))

(assert (=> d!342974 (= (size!9565 lt!410600) lt!410677)))

(declare-fun b!1199581 () Bool)

(assert (=> b!1199581 (= e!770062 0)))

(declare-fun b!1199582 () Bool)

(assert (=> b!1199582 (= e!770062 (+ 1 (size!9565 (t!112422 lt!410600))))))

(assert (= (and d!342974 c!199720) b!1199581))

(assert (= (and d!342974 (not c!199720)) b!1199582))

(declare-fun m!1374997 () Bool)

(assert (=> b!1199582 m!1374997))

(assert (=> b!1199325 d!342974))

(declare-fun b!1199583 () Bool)

(declare-fun res!541032 () Bool)

(declare-fun e!770064 () Bool)

(assert (=> b!1199583 (=> (not res!541032) (not e!770064))))

(assert (=> b!1199583 (= res!541032 (isBalanced!1158 (right!10838 (left!10508 t!4115))))))

(declare-fun d!342976 () Bool)

(declare-fun res!541029 () Bool)

(declare-fun e!770063 () Bool)

(assert (=> d!342976 (=> res!541029 e!770063)))

(assert (=> d!342976 (= res!541029 (not (is-Node!3973 (left!10508 t!4115))))))

(assert (=> d!342976 (= (isBalanced!1158 (left!10508 t!4115)) e!770063)))

(declare-fun b!1199584 () Bool)

(assert (=> b!1199584 (= e!770064 (not (isEmpty!7258 (right!10838 (left!10508 t!4115)))))))

(declare-fun b!1199585 () Bool)

(assert (=> b!1199585 (= e!770063 e!770064)))

(declare-fun res!541028 () Bool)

(assert (=> b!1199585 (=> (not res!541028) (not e!770064))))

(assert (=> b!1199585 (= res!541028 (<= (- 1) (- (height!567 (left!10508 (left!10508 t!4115))) (height!567 (right!10838 (left!10508 t!4115))))))))

(declare-fun b!1199586 () Bool)

(declare-fun res!541031 () Bool)

(assert (=> b!1199586 (=> (not res!541031) (not e!770064))))

(assert (=> b!1199586 (= res!541031 (<= (- (height!567 (left!10508 (left!10508 t!4115))) (height!567 (right!10838 (left!10508 t!4115)))) 1))))

(declare-fun b!1199587 () Bool)

(declare-fun res!541030 () Bool)

(assert (=> b!1199587 (=> (not res!541030) (not e!770064))))

(assert (=> b!1199587 (= res!541030 (not (isEmpty!7258 (left!10508 (left!10508 t!4115)))))))

(declare-fun b!1199588 () Bool)

(declare-fun res!541027 () Bool)

(assert (=> b!1199588 (=> (not res!541027) (not e!770064))))

(assert (=> b!1199588 (= res!541027 (isBalanced!1158 (left!10508 (left!10508 t!4115))))))

(assert (= (and d!342976 (not res!541029)) b!1199585))

(assert (= (and b!1199585 res!541028) b!1199586))

(assert (= (and b!1199586 res!541031) b!1199588))

(assert (= (and b!1199588 res!541027) b!1199583))

(assert (= (and b!1199583 res!541032) b!1199587))

(assert (= (and b!1199587 res!541030) b!1199584))

(assert (=> b!1199586 m!1374867))

(assert (=> b!1199586 m!1374869))

(declare-fun m!1374999 () Bool)

(assert (=> b!1199583 m!1374999))

(declare-fun m!1375001 () Bool)

(assert (=> b!1199588 m!1375001))

(declare-fun m!1375003 () Bool)

(assert (=> b!1199584 m!1375003))

(declare-fun m!1375005 () Bool)

(assert (=> b!1199587 m!1375005))

(assert (=> b!1199585 m!1374867))

(assert (=> b!1199585 m!1374869))

(assert (=> b!1199366 d!342976))

(declare-fun d!342978 () Bool)

(declare-fun lt!410678 () Bool)

(assert (=> d!342978 (= lt!410678 (isEmpty!7260 (list!4480 (left!10508 t!4115))))))

(assert (=> d!342978 (= lt!410678 (= (size!9564 (left!10508 t!4115)) 0))))

(assert (=> d!342978 (= (isEmpty!7258 (left!10508 t!4115)) lt!410678)))

(declare-fun bs!288234 () Bool)

(assert (= bs!288234 d!342978))

(assert (=> bs!288234 m!1374523))

(assert (=> bs!288234 m!1374523))

(declare-fun m!1375007 () Bool)

(assert (=> bs!288234 m!1375007))

(assert (=> bs!288234 m!1374535))

(assert (=> b!1199365 d!342978))

(declare-fun d!342980 () Bool)

(assert (=> d!342980 (= (inv!16103 (xs!6680 (left!10508 t!4115))) (<= (size!9565 (innerList!4033 (xs!6680 (left!10508 t!4115)))) 2147483647))))

(declare-fun bs!288235 () Bool)

(assert (= bs!288235 d!342980))

(declare-fun m!1375009 () Bool)

(assert (=> bs!288235 m!1375009))

(assert (=> b!1199376 d!342980))

(assert (=> b!1199364 d!342956))

(assert (=> b!1199364 d!342958))

(declare-fun d!342982 () Bool)

(declare-fun lt!410679 () Int)

(assert (=> d!342982 (>= lt!410679 0)))

(declare-fun e!770065 () Int)

(assert (=> d!342982 (= lt!410679 e!770065)))

(declare-fun c!199721 () Bool)

(assert (=> d!342982 (= c!199721 (is-Nil!12040 (list!4480 (left!10508 t!4115))))))

(assert (=> d!342982 (= (size!9565 (list!4480 (left!10508 t!4115))) lt!410679)))

(declare-fun b!1199589 () Bool)

(assert (=> b!1199589 (= e!770065 0)))

(declare-fun b!1199590 () Bool)

(assert (=> b!1199590 (= e!770065 (+ 1 (size!9565 (t!112422 (list!4480 (left!10508 t!4115))))))))

(assert (= (and d!342982 c!199721) b!1199589))

(assert (= (and d!342982 (not c!199721)) b!1199590))

(declare-fun m!1375011 () Bool)

(assert (=> b!1199590 m!1375011))

(assert (=> d!342854 d!342982))

(assert (=> d!342854 d!342862))

(declare-fun b!1199591 () Bool)

(declare-fun e!770066 () List!12064)

(assert (=> b!1199591 (= e!770066 (list!4480 (right!10838 (right!10838 t!4115))))))

(declare-fun d!342984 () Bool)

(declare-fun e!770067 () Bool)

(assert (=> d!342984 e!770067))

(declare-fun res!541034 () Bool)

(assert (=> d!342984 (=> (not res!541034) (not e!770067))))

(declare-fun lt!410680 () List!12064)

(assert (=> d!342984 (= res!541034 (= (content!1687 lt!410680) (set.union (content!1687 (list!4480 (left!10508 (right!10838 t!4115)))) (content!1687 (list!4480 (right!10838 (right!10838 t!4115)))))))))

(assert (=> d!342984 (= lt!410680 e!770066)))

(declare-fun c!199722 () Bool)

(assert (=> d!342984 (= c!199722 (is-Nil!12040 (list!4480 (left!10508 (right!10838 t!4115)))))))

(assert (=> d!342984 (= (++!3077 (list!4480 (left!10508 (right!10838 t!4115))) (list!4480 (right!10838 (right!10838 t!4115)))) lt!410680)))

(declare-fun b!1199593 () Bool)

(declare-fun res!541033 () Bool)

(assert (=> b!1199593 (=> (not res!541033) (not e!770067))))

(assert (=> b!1199593 (= res!541033 (= (size!9565 lt!410680) (+ (size!9565 (list!4480 (left!10508 (right!10838 t!4115)))) (size!9565 (list!4480 (right!10838 (right!10838 t!4115)))))))))

(declare-fun b!1199594 () Bool)

(assert (=> b!1199594 (= e!770067 (or (not (= (list!4480 (right!10838 (right!10838 t!4115))) Nil!12040)) (= lt!410680 (list!4480 (left!10508 (right!10838 t!4115))))))))

(declare-fun b!1199592 () Bool)

(assert (=> b!1199592 (= e!770066 (Cons!12040 (h!17441 (list!4480 (left!10508 (right!10838 t!4115)))) (++!3077 (t!112422 (list!4480 (left!10508 (right!10838 t!4115)))) (list!4480 (right!10838 (right!10838 t!4115))))))))

(assert (= (and d!342984 c!199722) b!1199591))

(assert (= (and d!342984 (not c!199722)) b!1199592))

(assert (= (and d!342984 res!541034) b!1199593))

(assert (= (and b!1199593 res!541033) b!1199594))

(declare-fun m!1375013 () Bool)

(assert (=> d!342984 m!1375013))

(assert (=> d!342984 m!1374673))

(declare-fun m!1375015 () Bool)

(assert (=> d!342984 m!1375015))

(assert (=> d!342984 m!1374675))

(declare-fun m!1375017 () Bool)

(assert (=> d!342984 m!1375017))

(declare-fun m!1375019 () Bool)

(assert (=> b!1199593 m!1375019))

(assert (=> b!1199593 m!1374673))

(declare-fun m!1375021 () Bool)

(assert (=> b!1199593 m!1375021))

(assert (=> b!1199593 m!1374675))

(declare-fun m!1375023 () Bool)

(assert (=> b!1199593 m!1375023))

(assert (=> b!1199592 m!1374675))

(declare-fun m!1375025 () Bool)

(assert (=> b!1199592 m!1375025))

(assert (=> b!1199302 d!342984))

(declare-fun b!1199598 () Bool)

(declare-fun e!770069 () List!12064)

(assert (=> b!1199598 (= e!770069 (++!3077 (list!4480 (left!10508 (left!10508 (right!10838 t!4115)))) (list!4480 (right!10838 (left!10508 (right!10838 t!4115))))))))

(declare-fun b!1199597 () Bool)

(assert (=> b!1199597 (= e!770069 (list!4482 (xs!6680 (left!10508 (right!10838 t!4115)))))))

(declare-fun b!1199596 () Bool)

(declare-fun e!770068 () List!12064)

(assert (=> b!1199596 (= e!770068 e!770069)))

(declare-fun c!199724 () Bool)

(assert (=> b!1199596 (= c!199724 (is-Leaf!6085 (left!10508 (right!10838 t!4115))))))

(declare-fun d!342986 () Bool)

(declare-fun c!199723 () Bool)

(assert (=> d!342986 (= c!199723 (is-Empty!3973 (left!10508 (right!10838 t!4115))))))

(assert (=> d!342986 (= (list!4480 (left!10508 (right!10838 t!4115))) e!770068)))

(declare-fun b!1199595 () Bool)

(assert (=> b!1199595 (= e!770068 Nil!12040)))

(assert (= (and d!342986 c!199723) b!1199595))

(assert (= (and d!342986 (not c!199723)) b!1199596))

(assert (= (and b!1199596 c!199724) b!1199597))

(assert (= (and b!1199596 (not c!199724)) b!1199598))

(declare-fun m!1375027 () Bool)

(assert (=> b!1199598 m!1375027))

(declare-fun m!1375029 () Bool)

(assert (=> b!1199598 m!1375029))

(assert (=> b!1199598 m!1375027))

(assert (=> b!1199598 m!1375029))

(declare-fun m!1375031 () Bool)

(assert (=> b!1199598 m!1375031))

(declare-fun m!1375033 () Bool)

(assert (=> b!1199597 m!1375033))

(assert (=> b!1199302 d!342986))

(declare-fun b!1199602 () Bool)

(declare-fun e!770071 () List!12064)

(assert (=> b!1199602 (= e!770071 (++!3077 (list!4480 (left!10508 (right!10838 (right!10838 t!4115)))) (list!4480 (right!10838 (right!10838 (right!10838 t!4115))))))))

(declare-fun b!1199601 () Bool)

(assert (=> b!1199601 (= e!770071 (list!4482 (xs!6680 (right!10838 (right!10838 t!4115)))))))

(declare-fun b!1199600 () Bool)

(declare-fun e!770070 () List!12064)

(assert (=> b!1199600 (= e!770070 e!770071)))

(declare-fun c!199726 () Bool)

(assert (=> b!1199600 (= c!199726 (is-Leaf!6085 (right!10838 (right!10838 t!4115))))))

(declare-fun d!342988 () Bool)

(declare-fun c!199725 () Bool)

(assert (=> d!342988 (= c!199725 (is-Empty!3973 (right!10838 (right!10838 t!4115))))))

(assert (=> d!342988 (= (list!4480 (right!10838 (right!10838 t!4115))) e!770070)))

(declare-fun b!1199599 () Bool)

(assert (=> b!1199599 (= e!770070 Nil!12040)))

(assert (= (and d!342988 c!199725) b!1199599))

(assert (= (and d!342988 (not c!199725)) b!1199600))

(assert (= (and b!1199600 c!199726) b!1199601))

(assert (= (and b!1199600 (not c!199726)) b!1199602))

(declare-fun m!1375035 () Bool)

(assert (=> b!1199602 m!1375035))

(declare-fun m!1375037 () Bool)

(assert (=> b!1199602 m!1375037))

(assert (=> b!1199602 m!1375035))

(assert (=> b!1199602 m!1375037))

(declare-fun m!1375039 () Bool)

(assert (=> b!1199602 m!1375039))

(declare-fun m!1375041 () Bool)

(assert (=> b!1199601 m!1375041))

(assert (=> b!1199302 d!342988))

(declare-fun d!342990 () Bool)

(declare-fun lt!410681 () Int)

(assert (=> d!342990 (>= lt!410681 0)))

(declare-fun e!770072 () Int)

(assert (=> d!342990 (= lt!410681 e!770072)))

(declare-fun c!199727 () Bool)

(assert (=> d!342990 (= c!199727 (is-Nil!12040 (t!112422 lt!410599)))))

(assert (=> d!342990 (= (size!9565 (t!112422 lt!410599)) lt!410681)))

(declare-fun b!1199603 () Bool)

(assert (=> b!1199603 (= e!770072 0)))

(declare-fun b!1199604 () Bool)

(assert (=> b!1199604 (= e!770072 (+ 1 (size!9565 (t!112422 (t!112422 lt!410599)))))))

(assert (= (and d!342990 c!199727) b!1199603))

(assert (= (and d!342990 (not c!199727)) b!1199604))

(declare-fun m!1375043 () Bool)

(assert (=> b!1199604 m!1375043))

(assert (=> b!1199314 d!342990))

(declare-fun d!342992 () Bool)

(declare-fun lt!410682 () Int)

(assert (=> d!342992 (>= lt!410682 0)))

(declare-fun e!770073 () Int)

(assert (=> d!342992 (= lt!410682 e!770073)))

(declare-fun c!199728 () Bool)

(assert (=> d!342992 (= c!199728 (is-Nil!12040 lt!410647))))

(assert (=> d!342992 (= (size!9565 lt!410647) lt!410682)))

(declare-fun b!1199605 () Bool)

(assert (=> b!1199605 (= e!770073 0)))

(declare-fun b!1199606 () Bool)

(assert (=> b!1199606 (= e!770073 (+ 1 (size!9565 (t!112422 lt!410647))))))

(assert (= (and d!342992 c!199728) b!1199605))

(assert (= (and d!342992 (not c!199728)) b!1199606))

(declare-fun m!1375045 () Bool)

(assert (=> b!1199606 m!1375045))

(assert (=> b!1199339 d!342992))

(declare-fun d!342994 () Bool)

(declare-fun lt!410683 () Int)

(assert (=> d!342994 (>= lt!410683 0)))

(declare-fun e!770074 () Int)

(assert (=> d!342994 (= lt!410683 e!770074)))

(declare-fun c!199729 () Bool)

(assert (=> d!342994 (= c!199729 (is-Nil!12040 (slice!468 lt!410599 from!553 lt!410597)))))

(assert (=> d!342994 (= (size!9565 (slice!468 lt!410599 from!553 lt!410597)) lt!410683)))

(declare-fun b!1199607 () Bool)

(assert (=> b!1199607 (= e!770074 0)))

(declare-fun b!1199608 () Bool)

(assert (=> b!1199608 (= e!770074 (+ 1 (size!9565 (t!112422 (slice!468 lt!410599 from!553 lt!410597)))))))

(assert (= (and d!342994 c!199729) b!1199607))

(assert (= (and d!342994 (not c!199729)) b!1199608))

(declare-fun m!1375047 () Bool)

(assert (=> b!1199608 m!1375047))

(assert (=> b!1199339 d!342994))

(declare-fun d!342996 () Bool)

(declare-fun lt!410684 () Int)

(assert (=> d!342996 (>= lt!410684 0)))

(declare-fun e!770075 () Int)

(assert (=> d!342996 (= lt!410684 e!770075)))

(declare-fun c!199730 () Bool)

(assert (=> d!342996 (= c!199730 (is-Nil!12040 call!83390))))

(assert (=> d!342996 (= (size!9565 call!83390) lt!410684)))

(declare-fun b!1199609 () Bool)

(assert (=> b!1199609 (= e!770075 0)))

(declare-fun b!1199610 () Bool)

(assert (=> b!1199610 (= e!770075 (+ 1 (size!9565 (t!112422 call!83390))))))

(assert (= (and d!342996 c!199730) b!1199609))

(assert (= (and d!342996 (not c!199730)) b!1199610))

(declare-fun m!1375049 () Bool)

(assert (=> b!1199610 m!1375049))

(assert (=> b!1199339 d!342996))

(declare-fun d!342998 () Bool)

(assert (=> d!342998 (= (list!4482 (xs!6680 (right!10838 t!4115))) (innerList!4033 (xs!6680 (right!10838 t!4115))))))

(assert (=> b!1199301 d!342998))

(declare-fun b!1199611 () Bool)

(declare-fun e!770076 () List!12064)

(assert (=> b!1199611 (= e!770076 call!83390)))

(declare-fun d!343000 () Bool)

(declare-fun e!770077 () Bool)

(assert (=> d!343000 e!770077))

(declare-fun res!541036 () Bool)

(assert (=> d!343000 (=> (not res!541036) (not e!770077))))

(declare-fun lt!410685 () List!12064)

(assert (=> d!343000 (= res!541036 (= (content!1687 lt!410685) (set.union (content!1687 (t!112422 (slice!468 lt!410599 from!553 lt!410597))) (content!1687 call!83390))))))

(assert (=> d!343000 (= lt!410685 e!770076)))

(declare-fun c!199731 () Bool)

(assert (=> d!343000 (= c!199731 (is-Nil!12040 (t!112422 (slice!468 lt!410599 from!553 lt!410597))))))

(assert (=> d!343000 (= (++!3077 (t!112422 (slice!468 lt!410599 from!553 lt!410597)) call!83390) lt!410685)))

(declare-fun b!1199613 () Bool)

(declare-fun res!541035 () Bool)

(assert (=> b!1199613 (=> (not res!541035) (not e!770077))))

(assert (=> b!1199613 (= res!541035 (= (size!9565 lt!410685) (+ (size!9565 (t!112422 (slice!468 lt!410599 from!553 lt!410597))) (size!9565 call!83390))))))

(declare-fun b!1199614 () Bool)

(assert (=> b!1199614 (= e!770077 (or (not (= call!83390 Nil!12040)) (= lt!410685 (t!112422 (slice!468 lt!410599 from!553 lt!410597)))))))

(declare-fun b!1199612 () Bool)

(assert (=> b!1199612 (= e!770076 (Cons!12040 (h!17441 (t!112422 (slice!468 lt!410599 from!553 lt!410597))) (++!3077 (t!112422 (t!112422 (slice!468 lt!410599 from!553 lt!410597))) call!83390)))))

(assert (= (and d!343000 c!199731) b!1199611))

(assert (= (and d!343000 (not c!199731)) b!1199612))

(assert (= (and d!343000 res!541036) b!1199613))

(assert (= (and b!1199613 res!541035) b!1199614))

(declare-fun m!1375051 () Bool)

(assert (=> d!343000 m!1375051))

(assert (=> d!343000 m!1374935))

(assert (=> d!343000 m!1374723))

(declare-fun m!1375053 () Bool)

(assert (=> b!1199613 m!1375053))

(assert (=> b!1199613 m!1375047))

(assert (=> b!1199613 m!1374729))

(declare-fun m!1375055 () Bool)

(assert (=> b!1199612 m!1375055))

(assert (=> b!1199338 d!343000))

(assert (=> bm!83407 d!342866))

(declare-fun b!1199615 () Bool)

(declare-fun e!770078 () List!12064)

(assert (=> b!1199615 (= e!770078 (list!4480 (right!10838 (left!10508 t!4115))))))

(declare-fun d!343002 () Bool)

(declare-fun e!770079 () Bool)

(assert (=> d!343002 e!770079))

(declare-fun res!541038 () Bool)

(assert (=> d!343002 (=> (not res!541038) (not e!770079))))

(declare-fun lt!410686 () List!12064)

(assert (=> d!343002 (= res!541038 (= (content!1687 lt!410686) (set.union (content!1687 (list!4480 (left!10508 (left!10508 t!4115)))) (content!1687 (list!4480 (right!10838 (left!10508 t!4115)))))))))

(assert (=> d!343002 (= lt!410686 e!770078)))

(declare-fun c!199732 () Bool)

(assert (=> d!343002 (= c!199732 (is-Nil!12040 (list!4480 (left!10508 (left!10508 t!4115)))))))

(assert (=> d!343002 (= (++!3077 (list!4480 (left!10508 (left!10508 t!4115))) (list!4480 (right!10838 (left!10508 t!4115)))) lt!410686)))

(declare-fun b!1199617 () Bool)

(declare-fun res!541037 () Bool)

(assert (=> b!1199617 (=> (not res!541037) (not e!770079))))

(assert (=> b!1199617 (= res!541037 (= (size!9565 lt!410686) (+ (size!9565 (list!4480 (left!10508 (left!10508 t!4115)))) (size!9565 (list!4480 (right!10838 (left!10508 t!4115)))))))))

(declare-fun b!1199618 () Bool)

(assert (=> b!1199618 (= e!770079 (or (not (= (list!4480 (right!10838 (left!10508 t!4115))) Nil!12040)) (= lt!410686 (list!4480 (left!10508 (left!10508 t!4115))))))))

(declare-fun b!1199616 () Bool)

(assert (=> b!1199616 (= e!770078 (Cons!12040 (h!17441 (list!4480 (left!10508 (left!10508 t!4115)))) (++!3077 (t!112422 (list!4480 (left!10508 (left!10508 t!4115)))) (list!4480 (right!10838 (left!10508 t!4115))))))))

(assert (= (and d!343002 c!199732) b!1199615))

(assert (= (and d!343002 (not c!199732)) b!1199616))

(assert (= (and d!343002 res!541038) b!1199617))

(assert (= (and b!1199617 res!541037) b!1199618))

(declare-fun m!1375057 () Bool)

(assert (=> d!343002 m!1375057))

(assert (=> d!343002 m!1374665))

(declare-fun m!1375059 () Bool)

(assert (=> d!343002 m!1375059))

(assert (=> d!343002 m!1374667))

(declare-fun m!1375061 () Bool)

(assert (=> d!343002 m!1375061))

(declare-fun m!1375063 () Bool)

(assert (=> b!1199617 m!1375063))

(assert (=> b!1199617 m!1374665))

(declare-fun m!1375065 () Bool)

(assert (=> b!1199617 m!1375065))

(assert (=> b!1199617 m!1374667))

(declare-fun m!1375067 () Bool)

(assert (=> b!1199617 m!1375067))

(assert (=> b!1199616 m!1374667))

(declare-fun m!1375069 () Bool)

(assert (=> b!1199616 m!1375069))

(assert (=> b!1199298 d!343002))

(declare-fun b!1199622 () Bool)

(declare-fun e!770081 () List!12064)

(assert (=> b!1199622 (= e!770081 (++!3077 (list!4480 (left!10508 (left!10508 (left!10508 t!4115)))) (list!4480 (right!10838 (left!10508 (left!10508 t!4115))))))))

(declare-fun b!1199621 () Bool)

(assert (=> b!1199621 (= e!770081 (list!4482 (xs!6680 (left!10508 (left!10508 t!4115)))))))

(declare-fun b!1199620 () Bool)

(declare-fun e!770080 () List!12064)

(assert (=> b!1199620 (= e!770080 e!770081)))

(declare-fun c!199734 () Bool)

(assert (=> b!1199620 (= c!199734 (is-Leaf!6085 (left!10508 (left!10508 t!4115))))))

(declare-fun d!343004 () Bool)

(declare-fun c!199733 () Bool)

(assert (=> d!343004 (= c!199733 (is-Empty!3973 (left!10508 (left!10508 t!4115))))))

(assert (=> d!343004 (= (list!4480 (left!10508 (left!10508 t!4115))) e!770080)))

(declare-fun b!1199619 () Bool)

(assert (=> b!1199619 (= e!770080 Nil!12040)))

(assert (= (and d!343004 c!199733) b!1199619))

(assert (= (and d!343004 (not c!199733)) b!1199620))

(assert (= (and b!1199620 c!199734) b!1199621))

(assert (= (and b!1199620 (not c!199734)) b!1199622))

(declare-fun m!1375071 () Bool)

(assert (=> b!1199622 m!1375071))

(declare-fun m!1375073 () Bool)

(assert (=> b!1199622 m!1375073))

(assert (=> b!1199622 m!1375071))

(assert (=> b!1199622 m!1375073))

(declare-fun m!1375075 () Bool)

(assert (=> b!1199622 m!1375075))

(declare-fun m!1375077 () Bool)

(assert (=> b!1199621 m!1375077))

(assert (=> b!1199298 d!343004))

(declare-fun b!1199626 () Bool)

(declare-fun e!770083 () List!12064)

(assert (=> b!1199626 (= e!770083 (++!3077 (list!4480 (left!10508 (right!10838 (left!10508 t!4115)))) (list!4480 (right!10838 (right!10838 (left!10508 t!4115))))))))

(declare-fun b!1199625 () Bool)

(assert (=> b!1199625 (= e!770083 (list!4482 (xs!6680 (right!10838 (left!10508 t!4115)))))))

(declare-fun b!1199624 () Bool)

(declare-fun e!770082 () List!12064)

(assert (=> b!1199624 (= e!770082 e!770083)))

(declare-fun c!199736 () Bool)

(assert (=> b!1199624 (= c!199736 (is-Leaf!6085 (right!10838 (left!10508 t!4115))))))

(declare-fun d!343006 () Bool)

(declare-fun c!199735 () Bool)

(assert (=> d!343006 (= c!199735 (is-Empty!3973 (right!10838 (left!10508 t!4115))))))

(assert (=> d!343006 (= (list!4480 (right!10838 (left!10508 t!4115))) e!770082)))

(declare-fun b!1199623 () Bool)

(assert (=> b!1199623 (= e!770082 Nil!12040)))

(assert (= (and d!343006 c!199735) b!1199623))

(assert (= (and d!343006 (not c!199735)) b!1199624))

(assert (= (and b!1199624 c!199736) b!1199625))

(assert (= (and b!1199624 (not c!199736)) b!1199626))

(declare-fun m!1375079 () Bool)

(assert (=> b!1199626 m!1375079))

(declare-fun m!1375081 () Bool)

(assert (=> b!1199626 m!1375081))

(assert (=> b!1199626 m!1375079))

(assert (=> b!1199626 m!1375081))

(declare-fun m!1375083 () Bool)

(assert (=> b!1199626 m!1375083))

(declare-fun m!1375085 () Bool)

(assert (=> b!1199625 m!1375085))

(assert (=> b!1199298 d!343006))

(declare-fun b!1199627 () Bool)

(declare-fun e!770085 () Bool)

(declare-fun lt!410687 () List!12064)

(declare-fun e!770086 () Int)

(assert (=> b!1199627 (= e!770085 (= (size!9565 lt!410687) e!770086))))

(declare-fun c!199737 () Bool)

(assert (=> b!1199627 (= c!199737 (<= (- until!31 from!553) 0))))

(declare-fun e!770084 () Int)

(declare-fun b!1199628 () Bool)

(assert (=> b!1199628 (= e!770084 (size!9565 (drop!598 (++!3077 lt!410599 lt!410600) from!553)))))

(declare-fun e!770087 () List!12064)

(declare-fun b!1199629 () Bool)

(assert (=> b!1199629 (= e!770087 (Cons!12040 (h!17441 (drop!598 (++!3077 lt!410599 lt!410600) from!553)) (take!126 (t!112422 (drop!598 (++!3077 lt!410599 lt!410600) from!553)) (- (- until!31 from!553) 1))))))

(declare-fun b!1199630 () Bool)

(assert (=> b!1199630 (= e!770086 0)))

(declare-fun b!1199631 () Bool)

(assert (=> b!1199631 (= e!770086 e!770084)))

(declare-fun c!199739 () Bool)

(assert (=> b!1199631 (= c!199739 (>= (- until!31 from!553) (size!9565 (drop!598 (++!3077 lt!410599 lt!410600) from!553))))))

(declare-fun b!1199632 () Bool)

(assert (=> b!1199632 (= e!770087 Nil!12040)))

(declare-fun b!1199633 () Bool)

(assert (=> b!1199633 (= e!770084 (- until!31 from!553))))

(declare-fun d!343008 () Bool)

(assert (=> d!343008 e!770085))

(declare-fun res!541039 () Bool)

(assert (=> d!343008 (=> (not res!541039) (not e!770085))))

(assert (=> d!343008 (= res!541039 (set.subset (content!1687 lt!410687) (content!1687 (drop!598 (++!3077 lt!410599 lt!410600) from!553))))))

(assert (=> d!343008 (= lt!410687 e!770087)))

(declare-fun c!199738 () Bool)

(assert (=> d!343008 (= c!199738 (or (is-Nil!12040 (drop!598 (++!3077 lt!410599 lt!410600) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!343008 (= (take!126 (drop!598 (++!3077 lt!410599 lt!410600) from!553) (- until!31 from!553)) lt!410687)))

(assert (= (and d!343008 c!199738) b!1199632))

(assert (= (and d!343008 (not c!199738)) b!1199629))

(assert (= (and d!343008 res!541039) b!1199627))

(assert (= (and b!1199627 c!199737) b!1199630))

(assert (= (and b!1199627 (not c!199737)) b!1199631))

(assert (= (and b!1199631 c!199739) b!1199628))

(assert (= (and b!1199631 (not c!199739)) b!1199633))

(assert (=> b!1199631 m!1374685))

(declare-fun m!1375087 () Bool)

(assert (=> b!1199631 m!1375087))

(declare-fun m!1375089 () Bool)

(assert (=> b!1199627 m!1375089))

(assert (=> b!1199628 m!1374685))

(assert (=> b!1199628 m!1375087))

(declare-fun m!1375091 () Bool)

(assert (=> d!343008 m!1375091))

(assert (=> d!343008 m!1374685))

(declare-fun m!1375093 () Bool)

(assert (=> d!343008 m!1375093))

(declare-fun m!1375095 () Bool)

(assert (=> b!1199629 m!1375095))

(assert (=> d!342868 d!343008))

(declare-fun b!1199634 () Bool)

(declare-fun e!770091 () List!12064)

(declare-fun e!770088 () List!12064)

(assert (=> b!1199634 (= e!770091 e!770088)))

(declare-fun c!199742 () Bool)

(assert (=> b!1199634 (= c!199742 (<= from!553 0))))

(declare-fun b!1199635 () Bool)

(declare-fun e!770090 () Int)

(assert (=> b!1199635 (= e!770090 0)))

(declare-fun b!1199636 () Bool)

(assert (=> b!1199636 (= e!770088 (drop!598 (t!112422 (++!3077 lt!410599 lt!410600)) (- from!553 1)))))

(declare-fun b!1199637 () Bool)

(declare-fun e!770092 () Int)

(assert (=> b!1199637 (= e!770092 e!770090)))

(declare-fun c!199741 () Bool)

(declare-fun call!83429 () Int)

(assert (=> b!1199637 (= c!199741 (>= from!553 call!83429))))

(declare-fun b!1199638 () Bool)

(assert (=> b!1199638 (= e!770091 Nil!12040)))

(declare-fun bm!83424 () Bool)

(assert (=> bm!83424 (= call!83429 (size!9565 (++!3077 lt!410599 lt!410600)))))

(declare-fun b!1199639 () Bool)

(declare-fun e!770089 () Bool)

(declare-fun lt!410688 () List!12064)

(assert (=> b!1199639 (= e!770089 (= (size!9565 lt!410688) e!770092))))

(declare-fun c!199740 () Bool)

(assert (=> b!1199639 (= c!199740 (<= from!553 0))))

(declare-fun d!343010 () Bool)

(assert (=> d!343010 e!770089))

(declare-fun res!541040 () Bool)

(assert (=> d!343010 (=> (not res!541040) (not e!770089))))

(assert (=> d!343010 (= res!541040 (set.subset (content!1687 lt!410688) (content!1687 (++!3077 lt!410599 lt!410600))))))

(assert (=> d!343010 (= lt!410688 e!770091)))

(declare-fun c!199743 () Bool)

(assert (=> d!343010 (= c!199743 (is-Nil!12040 (++!3077 lt!410599 lt!410600)))))

(assert (=> d!343010 (= (drop!598 (++!3077 lt!410599 lt!410600) from!553) lt!410688)))

(declare-fun b!1199640 () Bool)

(assert (=> b!1199640 (= e!770090 (- call!83429 from!553))))

(declare-fun b!1199641 () Bool)

(assert (=> b!1199641 (= e!770092 call!83429)))

(declare-fun b!1199642 () Bool)

(assert (=> b!1199642 (= e!770088 (++!3077 lt!410599 lt!410600))))

(assert (= (and d!343010 c!199743) b!1199638))

(assert (= (and d!343010 (not c!199743)) b!1199634))

(assert (= (and b!1199634 c!199742) b!1199642))

(assert (= (and b!1199634 (not c!199742)) b!1199636))

(assert (= (and d!343010 res!541040) b!1199639))

(assert (= (and b!1199639 c!199740) b!1199641))

(assert (= (and b!1199639 (not c!199740)) b!1199637))

(assert (= (and b!1199637 c!199741) b!1199635))

(assert (= (and b!1199637 (not c!199741)) b!1199640))

(assert (= (or b!1199641 b!1199637 b!1199640) bm!83424))

(declare-fun m!1375097 () Bool)

(assert (=> b!1199636 m!1375097))

(assert (=> bm!83424 m!1374531))

(declare-fun m!1375099 () Bool)

(assert (=> bm!83424 m!1375099))

(declare-fun m!1375101 () Bool)

(assert (=> b!1199639 m!1375101))

(declare-fun m!1375103 () Bool)

(assert (=> d!343010 m!1375103))

(assert (=> d!343010 m!1374531))

(declare-fun m!1375105 () Bool)

(assert (=> d!343010 m!1375105))

(assert (=> d!342868 d!343010))

(declare-fun d!343012 () Bool)

(declare-fun res!541041 () Bool)

(declare-fun e!770093 () Bool)

(assert (=> d!343012 (=> (not res!541041) (not e!770093))))

(assert (=> d!343012 (= res!541041 (= (csize!8176 (right!10838 t!4115)) (+ (size!9564 (left!10508 (right!10838 t!4115))) (size!9564 (right!10838 (right!10838 t!4115))))))))

(assert (=> d!343012 (= (inv!16106 (right!10838 t!4115)) e!770093)))

(declare-fun b!1199643 () Bool)

(declare-fun res!541042 () Bool)

(assert (=> b!1199643 (=> (not res!541042) (not e!770093))))

(assert (=> b!1199643 (= res!541042 (and (not (= (left!10508 (right!10838 t!4115)) Empty!3973)) (not (= (right!10838 (right!10838 t!4115)) Empty!3973))))))

(declare-fun b!1199644 () Bool)

(declare-fun res!541043 () Bool)

(assert (=> b!1199644 (=> (not res!541043) (not e!770093))))

(assert (=> b!1199644 (= res!541043 (= (cheight!4184 (right!10838 t!4115)) (+ (max!0 (height!567 (left!10508 (right!10838 t!4115))) (height!567 (right!10838 (right!10838 t!4115)))) 1)))))

(declare-fun b!1199645 () Bool)

(assert (=> b!1199645 (= e!770093 (<= 0 (cheight!4184 (right!10838 t!4115))))))

(assert (= (and d!343012 res!541041) b!1199643))

(assert (= (and b!1199643 res!541042) b!1199644))

(assert (= (and b!1199644 res!541043) b!1199645))

(declare-fun m!1375107 () Bool)

(assert (=> d!343012 m!1375107))

(declare-fun m!1375109 () Bool)

(assert (=> d!343012 m!1375109))

(assert (=> b!1199644 m!1374895))

(assert (=> b!1199644 m!1374897))

(assert (=> b!1199644 m!1374895))

(assert (=> b!1199644 m!1374897))

(declare-fun m!1375111 () Bool)

(assert (=> b!1199644 m!1375111))

(assert (=> b!1199330 d!343012))

(assert (=> b!1199274 d!342866))

(assert (=> b!1199274 d!342974))

(declare-fun d!343014 () Bool)

(assert (=> d!343014 (= (list!4482 (xs!6680 (left!10508 t!4115))) (innerList!4033 (xs!6680 (left!10508 t!4115))))))

(assert (=> b!1199297 d!343014))

(declare-fun d!343016 () Bool)

(assert (=> d!343016 (= (BigIntAbs!0 (ite c!199616 (cheight!4184 (left!10508 t!4115)) (csize!8177 (left!10508 t!4115)))) (ite (>= (ite c!199616 (cheight!4184 (left!10508 t!4115)) (csize!8177 (left!10508 t!4115))) 0) (ite c!199616 (cheight!4184 (left!10508 t!4115)) (csize!8177 (left!10508 t!4115))) (- (ite c!199616 (cheight!4184 (left!10508 t!4115)) (csize!8177 (left!10508 t!4115))))))))

(assert (=> bm!83398 d!343016))

(assert (=> d!342856 d!342868))

(assert (=> d!342856 d!342870))

(assert (=> d!342856 d!342866))

(declare-fun b!1199659 () Bool)

(declare-fun e!770102 () Int)

(declare-fun call!83438 () Int)

(assert (=> b!1199659 (= e!770102 (- until!31 call!83438))))

(declare-fun bm!83431 () Bool)

(declare-fun c!199752 () Bool)

(declare-fun call!83437 () List!12064)

(declare-fun c!199751 () Bool)

(assert (=> bm!83431 (= call!83437 (slice!468 (ite c!199751 lt!410600 (ite c!199752 lt!410599 lt!410600)) (ite c!199751 (- from!553 call!83438) (ite c!199752 from!553 0)) (ite c!199751 (- until!31 call!83438) e!770102)))))

(declare-fun b!1199660 () Bool)

(declare-fun e!770101 () List!12064)

(assert (=> b!1199660 (= e!770101 call!83437)))

(declare-fun b!1199661 () Bool)

(assert (=> b!1199661 (= e!770102 until!31)))

(declare-fun bm!83432 () Bool)

(assert (=> bm!83432 (= call!83438 (size!9565 lt!410599))))

(declare-fun call!83436 () List!12064)

(declare-fun b!1199662 () Bool)

(declare-fun e!770100 () List!12064)

(assert (=> b!1199662 (= e!770100 (++!3077 (slice!468 lt!410599 from!553 call!83438) call!83436))))

(declare-fun d!343018 () Bool)

(assert (=> d!343018 (= (slice!468 (++!3077 lt!410599 lt!410600) from!553 until!31) e!770101)))

(assert (=> d!343018 (= c!199751 (<= (size!9565 lt!410599) from!553))))

(assert (=> d!343018 true))

(declare-fun _$8!203 () Unit!18450)

(assert (=> d!343018 (= (choose!7729 lt!410599 lt!410600 from!553 until!31) _$8!203)))

(declare-fun b!1199658 () Bool)

(assert (=> b!1199658 (= e!770101 e!770100)))

(assert (=> b!1199658 (= c!199752 (<= until!31 call!83438))))

(declare-fun b!1199663 () Bool)

(assert (=> b!1199663 (= e!770100 call!83436)))

(declare-fun bm!83433 () Bool)

(declare-fun c!199750 () Bool)

(assert (=> bm!83433 (= c!199750 c!199752)))

(assert (=> bm!83433 (= call!83436 call!83437)))

(assert (= (and d!343018 c!199751) b!1199660))

(assert (= (and d!343018 (not c!199751)) b!1199658))

(assert (= (and b!1199658 c!199752) b!1199663))

(assert (= (and b!1199658 (not c!199752)) b!1199662))

(assert (= (or b!1199663 b!1199662) bm!83433))

(assert (= (and bm!83433 c!199750) b!1199661))

(assert (= (and bm!83433 (not c!199750)) b!1199659))

(assert (= (or b!1199660 b!1199658 b!1199659 b!1199662) bm!83432))

(assert (= (or b!1199660 bm!83433) bm!83431))

(declare-fun m!1375113 () Bool)

(assert (=> bm!83431 m!1375113))

(assert (=> bm!83432 m!1374527))

(declare-fun m!1375115 () Bool)

(assert (=> b!1199662 m!1375115))

(assert (=> b!1199662 m!1375115))

(declare-fun m!1375117 () Bool)

(assert (=> b!1199662 m!1375117))

(assert (=> d!343018 m!1374531))

(assert (=> d!343018 m!1374531))

(assert (=> d!343018 m!1374533))

(assert (=> d!343018 m!1374527))

(assert (=> d!342856 d!343018))

(declare-fun d!343020 () Bool)

(declare-fun lt!410689 () Int)

(assert (=> d!343020 (>= lt!410689 0)))

(declare-fun e!770103 () Int)

(assert (=> d!343020 (= lt!410689 e!770103)))

(declare-fun c!199753 () Bool)

(assert (=> d!343020 (= c!199753 (is-Nil!12040 (list!4480 t!4115)))))

(assert (=> d!343020 (= (size!9565 (list!4480 t!4115)) lt!410689)))

(declare-fun b!1199664 () Bool)

(assert (=> b!1199664 (= e!770103 0)))

(declare-fun b!1199665 () Bool)

(assert (=> b!1199665 (= e!770103 (+ 1 (size!9565 (t!112422 (list!4480 t!4115)))))))

(assert (= (and d!343020 c!199753) b!1199664))

(assert (= (and d!343020 (not c!199753)) b!1199665))

(declare-fun m!1375119 () Bool)

(assert (=> b!1199665 m!1375119))

(assert (=> d!342846 d!343020))

(declare-fun b!1199669 () Bool)

(declare-fun e!770105 () List!12064)

(assert (=> b!1199669 (= e!770105 (++!3077 (list!4480 (left!10508 t!4115)) (list!4480 (right!10838 t!4115))))))

(declare-fun b!1199668 () Bool)

(assert (=> b!1199668 (= e!770105 (list!4482 (xs!6680 t!4115)))))

(declare-fun b!1199667 () Bool)

(declare-fun e!770104 () List!12064)

(assert (=> b!1199667 (= e!770104 e!770105)))

(declare-fun c!199755 () Bool)

(assert (=> b!1199667 (= c!199755 (is-Leaf!6085 t!4115))))

(declare-fun d!343022 () Bool)

(declare-fun c!199754 () Bool)

(assert (=> d!343022 (= c!199754 (is-Empty!3973 t!4115))))

(assert (=> d!343022 (= (list!4480 t!4115) e!770104)))

(declare-fun b!1199666 () Bool)

(assert (=> b!1199666 (= e!770104 Nil!12040)))

(assert (= (and d!343022 c!199754) b!1199666))

(assert (= (and d!343022 (not c!199754)) b!1199667))

(assert (= (and b!1199667 c!199755) b!1199668))

(assert (= (and b!1199667 (not c!199755)) b!1199669))

(assert (=> b!1199669 m!1374523))

(assert (=> b!1199669 m!1374525))

(assert (=> b!1199669 m!1374523))

(assert (=> b!1199669 m!1374525))

(declare-fun m!1375121 () Bool)

(assert (=> b!1199669 m!1375121))

(assert (=> b!1199668 m!1374985))

(assert (=> d!342846 d!343022))

(declare-fun d!343024 () Bool)

(assert (=> d!343024 (= (slice!468 (ite c!199632 lt!410600 lt!410599) (ite c!199632 (- from!553 call!83413) from!553) (ite c!199632 (- until!31 call!83413) e!769908)) (take!126 (drop!598 (ite c!199632 lt!410600 lt!410599) (ite c!199632 (- from!553 call!83413) from!553)) (- (ite c!199632 (- until!31 call!83413) e!769908) (ite c!199632 (- from!553 call!83413) from!553))))))

(declare-fun bs!288236 () Bool)

(assert (= bs!288236 d!343024))

(declare-fun m!1375123 () Bool)

(assert (=> bs!288236 m!1375123))

(assert (=> bs!288236 m!1375123))

(declare-fun m!1375125 () Bool)

(assert (=> bs!288236 m!1375125))

(assert (=> bm!83408 d!343024))

(declare-fun b!1199670 () Bool)

(declare-fun e!770107 () Bool)

(declare-fun lt!410690 () List!12064)

(declare-fun e!770108 () Int)

(assert (=> b!1199670 (= e!770107 (= (size!9565 lt!410690) e!770108))))

(declare-fun c!199756 () Bool)

(assert (=> b!1199670 (= c!199756 (<= (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) 0))))

(declare-fun e!770106 () Int)

(declare-fun b!1199671 () Bool)

(assert (=> b!1199671 (= e!770106 (size!9565 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)))))))

(declare-fun e!770109 () List!12064)

(declare-fun b!1199672 () Bool)

(assert (=> b!1199672 (= e!770109 (Cons!12040 (h!17441 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)))) (take!126 (t!112422 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)))) (- (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) 1))))))

(declare-fun b!1199673 () Bool)

(assert (=> b!1199673 (= e!770108 0)))

(declare-fun b!1199674 () Bool)

(assert (=> b!1199674 (= e!770108 e!770106)))

(declare-fun c!199758 () Bool)

(assert (=> b!1199674 (= c!199758 (>= (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) (size!9565 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))))))))

(declare-fun b!1199675 () Bool)

(assert (=> b!1199675 (= e!770109 Nil!12040)))

(declare-fun b!1199676 () Bool)

(assert (=> b!1199676 (= e!770106 (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))))))

(declare-fun d!343026 () Bool)

(assert (=> d!343026 e!770107))

(declare-fun res!541044 () Bool)

(assert (=> d!343026 (=> (not res!541044) (not e!770107))))

(assert (=> d!343026 (= res!541044 (set.subset (content!1687 lt!410690) (content!1687 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))))))))

(assert (=> d!343026 (= lt!410690 e!770109)))

(declare-fun c!199757 () Bool)

(assert (=> d!343026 (= c!199757 (or (is-Nil!12040 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)))) (<= (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) 0)))))

(assert (=> d!343026 (= (take!126 (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) (- (ite c!199596 (- until!31 lt!410597) (ite c!199595 until!31 (- until!31 lt!410597))) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)))) lt!410690)))

(assert (= (and d!343026 c!199757) b!1199675))

(assert (= (and d!343026 (not c!199757)) b!1199672))

(assert (= (and d!343026 res!541044) b!1199670))

(assert (= (and b!1199670 c!199756) b!1199673))

(assert (= (and b!1199670 (not c!199756)) b!1199674))

(assert (= (and b!1199674 c!199758) b!1199671))

(assert (= (and b!1199674 (not c!199758)) b!1199676))

(assert (=> b!1199674 m!1374637))

(declare-fun m!1375127 () Bool)

(assert (=> b!1199674 m!1375127))

(declare-fun m!1375129 () Bool)

(assert (=> b!1199670 m!1375129))

(assert (=> b!1199671 m!1374637))

(assert (=> b!1199671 m!1375127))

(declare-fun m!1375131 () Bool)

(assert (=> d!343026 m!1375131))

(assert (=> d!343026 m!1374637))

(declare-fun m!1375133 () Bool)

(assert (=> d!343026 m!1375133))

(declare-fun m!1375135 () Bool)

(assert (=> b!1199672 m!1375135))

(assert (=> d!342850 d!343026))

(declare-fun b!1199677 () Bool)

(declare-fun e!770113 () List!12064)

(declare-fun e!770110 () List!12064)

(assert (=> b!1199677 (= e!770113 e!770110)))

(declare-fun c!199761 () Bool)

(assert (=> b!1199677 (= c!199761 (<= (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)) 0))))

(declare-fun b!1199678 () Bool)

(declare-fun e!770112 () Int)

(assert (=> b!1199678 (= e!770112 0)))

(declare-fun b!1199679 () Bool)

(assert (=> b!1199679 (= e!770110 (drop!598 (t!112422 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600))) (- (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)) 1)))))

(declare-fun b!1199680 () Bool)

(declare-fun e!770114 () Int)

(assert (=> b!1199680 (= e!770114 e!770112)))

(declare-fun c!199760 () Bool)

(declare-fun call!83439 () Int)

(assert (=> b!1199680 (= c!199760 (>= (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)) call!83439))))

(declare-fun b!1199681 () Bool)

(assert (=> b!1199681 (= e!770113 Nil!12040)))

(declare-fun bm!83434 () Bool)

(assert (=> bm!83434 (= call!83439 (size!9565 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600))))))

(declare-fun b!1199682 () Bool)

(declare-fun e!770111 () Bool)

(declare-fun lt!410691 () List!12064)

(assert (=> b!1199682 (= e!770111 (= (size!9565 lt!410691) e!770114))))

(declare-fun c!199759 () Bool)

(assert (=> b!1199682 (= c!199759 (<= (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0)) 0))))

(declare-fun d!343028 () Bool)

(assert (=> d!343028 e!770111))

(declare-fun res!541045 () Bool)

(assert (=> d!343028 (=> (not res!541045) (not e!770111))))

(assert (=> d!343028 (= res!541045 (set.subset (content!1687 lt!410691) (content!1687 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)))))))

(assert (=> d!343028 (= lt!410691 e!770113)))

(declare-fun c!199762 () Bool)

(assert (=> d!343028 (= c!199762 (is-Nil!12040 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600))))))

(assert (=> d!343028 (= (drop!598 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)) (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))) lt!410691)))

(declare-fun b!1199683 () Bool)

(assert (=> b!1199683 (= e!770112 (- call!83439 (ite c!199596 (- from!553 lt!410597) (ite c!199595 from!553 0))))))

(declare-fun b!1199684 () Bool)

(assert (=> b!1199684 (= e!770114 call!83439)))

(declare-fun b!1199685 () Bool)

(assert (=> b!1199685 (= e!770110 (ite c!199596 lt!410600 (ite c!199595 lt!410599 lt!410600)))))

(assert (= (and d!343028 c!199762) b!1199681))

(assert (= (and d!343028 (not c!199762)) b!1199677))

(assert (= (and b!1199677 c!199761) b!1199685))

(assert (= (and b!1199677 (not c!199761)) b!1199679))

(assert (= (and d!343028 res!541045) b!1199682))

(assert (= (and b!1199682 c!199759) b!1199684))

(assert (= (and b!1199682 (not c!199759)) b!1199680))

(assert (= (and b!1199680 c!199760) b!1199678))

(assert (= (and b!1199680 (not c!199760)) b!1199683))

(assert (= (or b!1199684 b!1199680 b!1199683) bm!83434))

(declare-fun m!1375137 () Bool)

(assert (=> b!1199679 m!1375137))

(declare-fun m!1375139 () Bool)

(assert (=> bm!83434 m!1375139))

(declare-fun m!1375141 () Bool)

(assert (=> b!1199682 m!1375141))

(declare-fun m!1375143 () Bool)

(assert (=> d!343028 m!1375143))

(declare-fun m!1375145 () Bool)

(assert (=> d!343028 m!1375145))

(assert (=> d!342850 d!343028))

(declare-fun d!343030 () Bool)

(declare-fun res!541046 () Bool)

(declare-fun e!770115 () Bool)

(assert (=> d!343030 (=> (not res!541046) (not e!770115))))

(assert (=> d!343030 (= res!541046 (<= (size!9565 (list!4482 (xs!6680 (right!10838 t!4115)))) 512))))

(assert (=> d!343030 (= (inv!16107 (right!10838 t!4115)) e!770115)))

(declare-fun b!1199686 () Bool)

(declare-fun res!541047 () Bool)

(assert (=> b!1199686 (=> (not res!541047) (not e!770115))))

(assert (=> b!1199686 (= res!541047 (= (csize!8177 (right!10838 t!4115)) (size!9565 (list!4482 (xs!6680 (right!10838 t!4115))))))))

(declare-fun b!1199687 () Bool)

(assert (=> b!1199687 (= e!770115 (and (> (csize!8177 (right!10838 t!4115)) 0) (<= (csize!8177 (right!10838 t!4115)) 512)))))

(assert (= (and d!343030 res!541046) b!1199686))

(assert (= (and b!1199686 res!541047) b!1199687))

(assert (=> d!343030 m!1374679))

(assert (=> d!343030 m!1374679))

(declare-fun m!1375147 () Bool)

(assert (=> d!343030 m!1375147))

(assert (=> b!1199686 m!1374679))

(assert (=> b!1199686 m!1374679))

(assert (=> b!1199686 m!1375147))

(assert (=> b!1199332 d!343030))

(declare-fun b!1199688 () Bool)

(declare-fun e!770117 () Bool)

(declare-fun tp!341165 () Bool)

(declare-fun tp!341164 () Bool)

(assert (=> b!1199688 (= e!770117 (and (inv!16102 (left!10508 (left!10508 (right!10838 t!4115)))) tp!341164 (inv!16102 (right!10838 (left!10508 (right!10838 t!4115)))) tp!341165))))

(declare-fun b!1199690 () Bool)

(declare-fun e!770116 () Bool)

(declare-fun tp!341166 () Bool)

(assert (=> b!1199690 (= e!770116 tp!341166)))

(declare-fun b!1199689 () Bool)

(assert (=> b!1199689 (= e!770117 (and (inv!16103 (xs!6680 (left!10508 (right!10838 t!4115)))) e!770116))))

(assert (=> b!1199378 (= tp!341143 (and (inv!16102 (left!10508 (right!10838 t!4115))) e!770117))))

(assert (= (and b!1199378 (is-Node!3973 (left!10508 (right!10838 t!4115)))) b!1199688))

(assert (= b!1199689 b!1199690))

(assert (= (and b!1199378 (is-Leaf!6085 (left!10508 (right!10838 t!4115)))) b!1199689))

(declare-fun m!1375149 () Bool)

(assert (=> b!1199688 m!1375149))

(declare-fun m!1375151 () Bool)

(assert (=> b!1199688 m!1375151))

(declare-fun m!1375153 () Bool)

(assert (=> b!1199689 m!1375153))

(assert (=> b!1199378 m!1374769))

(declare-fun e!770119 () Bool)

(declare-fun b!1199691 () Bool)

(declare-fun tp!341167 () Bool)

(declare-fun tp!341168 () Bool)

(assert (=> b!1199691 (= e!770119 (and (inv!16102 (left!10508 (right!10838 (right!10838 t!4115)))) tp!341167 (inv!16102 (right!10838 (right!10838 (right!10838 t!4115)))) tp!341168))))

(declare-fun b!1199693 () Bool)

(declare-fun e!770118 () Bool)

(declare-fun tp!341169 () Bool)

(assert (=> b!1199693 (= e!770118 tp!341169)))

(declare-fun b!1199692 () Bool)

(assert (=> b!1199692 (= e!770119 (and (inv!16103 (xs!6680 (right!10838 (right!10838 t!4115)))) e!770118))))

(assert (=> b!1199378 (= tp!341144 (and (inv!16102 (right!10838 (right!10838 t!4115))) e!770119))))

(assert (= (and b!1199378 (is-Node!3973 (right!10838 (right!10838 t!4115)))) b!1199691))

(assert (= b!1199692 b!1199693))

(assert (= (and b!1199378 (is-Leaf!6085 (right!10838 (right!10838 t!4115)))) b!1199692))

(declare-fun m!1375155 () Bool)

(assert (=> b!1199691 m!1375155))

(declare-fun m!1375157 () Bool)

(assert (=> b!1199691 m!1375157))

(declare-fun m!1375159 () Bool)

(assert (=> b!1199692 m!1375159))

(assert (=> b!1199378 m!1374771))

(declare-fun b!1199694 () Bool)

(declare-fun e!770120 () Bool)

(declare-fun tp!341170 () Bool)

(assert (=> b!1199694 (= e!770120 (and tp_is_empty!5973 tp!341170))))

(assert (=> b!1199377 (= tp!341142 e!770120)))

(assert (= (and b!1199377 (is-Cons!12040 (innerList!4033 (xs!6680 (left!10508 t!4115))))) b!1199694))

(declare-fun b!1199695 () Bool)

(declare-fun e!770121 () Bool)

(declare-fun tp!341171 () Bool)

(assert (=> b!1199695 (= e!770121 (and tp_is_empty!5973 tp!341171))))

(assert (=> b!1199385 (= tp!341148 e!770121)))

(assert (= (and b!1199385 (is-Cons!12040 (t!112422 (innerList!4033 (xs!6680 t!4115))))) b!1199695))

(declare-fun tp!341173 () Bool)

(declare-fun b!1199696 () Bool)

(declare-fun e!770123 () Bool)

(declare-fun tp!341172 () Bool)

(assert (=> b!1199696 (= e!770123 (and (inv!16102 (left!10508 (left!10508 (left!10508 t!4115)))) tp!341172 (inv!16102 (right!10838 (left!10508 (left!10508 t!4115)))) tp!341173))))

(declare-fun b!1199698 () Bool)

(declare-fun e!770122 () Bool)

(declare-fun tp!341174 () Bool)

(assert (=> b!1199698 (= e!770122 tp!341174)))

(declare-fun b!1199697 () Bool)

(assert (=> b!1199697 (= e!770123 (and (inv!16103 (xs!6680 (left!10508 (left!10508 t!4115)))) e!770122))))

(assert (=> b!1199375 (= tp!341140 (and (inv!16102 (left!10508 (left!10508 t!4115))) e!770123))))

(assert (= (and b!1199375 (is-Node!3973 (left!10508 (left!10508 t!4115)))) b!1199696))

(assert (= b!1199697 b!1199698))

(assert (= (and b!1199375 (is-Leaf!6085 (left!10508 (left!10508 t!4115)))) b!1199697))

(declare-fun m!1375161 () Bool)

(assert (=> b!1199696 m!1375161))

(declare-fun m!1375163 () Bool)

(assert (=> b!1199696 m!1375163))

(declare-fun m!1375165 () Bool)

(assert (=> b!1199697 m!1375165))

(assert (=> b!1199375 m!1374763))

(declare-fun tp!341175 () Bool)

(declare-fun e!770125 () Bool)

(declare-fun b!1199699 () Bool)

(declare-fun tp!341176 () Bool)

(assert (=> b!1199699 (= e!770125 (and (inv!16102 (left!10508 (right!10838 (left!10508 t!4115)))) tp!341175 (inv!16102 (right!10838 (right!10838 (left!10508 t!4115)))) tp!341176))))

(declare-fun b!1199701 () Bool)

(declare-fun e!770124 () Bool)

(declare-fun tp!341177 () Bool)

(assert (=> b!1199701 (= e!770124 tp!341177)))

(declare-fun b!1199700 () Bool)

(assert (=> b!1199700 (= e!770125 (and (inv!16103 (xs!6680 (right!10838 (left!10508 t!4115)))) e!770124))))

(assert (=> b!1199375 (= tp!341141 (and (inv!16102 (right!10838 (left!10508 t!4115))) e!770125))))

(assert (= (and b!1199375 (is-Node!3973 (right!10838 (left!10508 t!4115)))) b!1199699))

(assert (= b!1199700 b!1199701))

(assert (= (and b!1199375 (is-Leaf!6085 (right!10838 (left!10508 t!4115)))) b!1199700))

(declare-fun m!1375167 () Bool)

(assert (=> b!1199699 m!1375167))

(declare-fun m!1375169 () Bool)

(assert (=> b!1199699 m!1375169))

(declare-fun m!1375171 () Bool)

(assert (=> b!1199700 m!1375171))

(assert (=> b!1199375 m!1374765))

(declare-fun b!1199702 () Bool)

(declare-fun e!770126 () Bool)

(declare-fun tp!341178 () Bool)

(assert (=> b!1199702 (= e!770126 (and tp_is_empty!5973 tp!341178))))

(assert (=> b!1199380 (= tp!341145 e!770126)))

(assert (= (and b!1199380 (is-Cons!12040 (innerList!4033 (xs!6680 (right!10838 t!4115))))) b!1199702))

(push 1)

(assert tp_is_empty!5973)

(assert (not b!1199690))

(assert (not b!1199602))

(assert (not d!342910))

(assert (not bm!83424))

(assert (not bm!83431))

(assert (not b!1199516))

(assert (not b!1199621))

(assert (not bm!83423))

(assert (not b!1199628))

(assert (not b!1199587))

(assert (not bm!83422))

(assert (not d!342978))

(assert (not d!342934))

(assert (not b!1199585))

(assert (not b!1199574))

(assert (not b!1199472))

(assert (not b!1199534))

(assert (not b!1199480))

(assert (not b!1199489))

(assert (not b!1199598))

(assert (not d!343024))

(assert (not b!1199700))

(assert (not bm!83432))

(assert (not b!1199679))

(assert (not b!1199469))

(assert (not b!1199689))

(assert (not b!1199698))

(assert (not b!1199560))

(assert (not b!1199508))

(assert (not b!1199606))

(assert (not d!342966))

(assert (not bm!83434))

(assert (not b!1199577))

(assert (not b!1199670))

(assert (not b!1199701))

(assert (not d!342964))

(assert (not b!1199583))

(assert (not b!1199495))

(assert (not d!343026))

(assert (not b!1199492))

(assert (not bm!83419))

(assert (not b!1199702))

(assert (not d!343018))

(assert (not bm!83418))

(assert (not b!1199481))

(assert (not b!1199588))

(assert (not d!342948))

(assert (not b!1199514))

(assert (not d!342912))

(assert (not b!1199699))

(assert (not b!1199626))

(assert (not b!1199478))

(assert (not b!1199697))

(assert (not d!343028))

(assert (not b!1199695))

(assert (not b!1199639))

(assert (not b!1199671))

(assert (not b!1199479))

(assert (not b!1199608))

(assert (not b!1199457))

(assert (not b!1199682))

(assert (not b!1199580))

(assert (not d!342908))

(assert (not b!1199644))

(assert (not b!1199636))

(assert (not b!1199613))

(assert (not b!1199512))

(assert (not b!1199590))

(assert (not b!1199575))

(assert (not b!1199501))

(assert (not b!1199669))

(assert (not b!1199668))

(assert (not b!1199471))

(assert (not b!1199487))

(assert (not b!1199693))

(assert (not b!1199466))

(assert (not b!1199629))

(assert (not b!1199597))

(assert (not b!1199533))

(assert (not b!1199483))

(assert (not b!1199378))

(assert (not b!1199696))

(assert (not b!1199694))

(assert (not b!1199375))

(assert (not d!342950))

(assert (not d!342968))

(assert (not b!1199665))

(assert (not d!343010))

(assert (not b!1199662))

(assert (not b!1199482))

(assert (not b!1199625))

(assert (not d!343002))

(assert (not b!1199582))

(assert (not b!1199674))

(assert (not b!1199572))

(assert (not d!343008))

(assert (not b!1199569))

(assert (not b!1199593))

(assert (not d!342906))

(assert (not b!1199672))

(assert (not b!1199622))

(assert (not b!1199491))

(assert (not b!1199592))

(assert (not b!1199484))

(assert (not b!1199486))

(assert (not b!1199616))

(assert (not d!342970))

(assert (not b!1199537))

(assert (not b!1199535))

(assert (not d!343012))

(assert (not b!1199584))

(assert (not d!342930))

(assert (not b!1199567))

(assert (not b!1199570))

(assert (not d!343000))

(assert (not b!1199586))

(assert (not b!1199692))

(assert (not b!1199691))

(assert (not b!1199475))

(assert (not d!343030))

(assert (not d!342932))

(assert (not b!1199631))

(assert (not b!1199518))

(assert (not b!1199510))

(assert (not b!1199563))

(assert (not b!1199686))

(assert (not b!1199601))

(assert (not b!1199604))

(assert (not b!1199612))

(assert (not b!1199627))

(assert (not b!1199617))

(assert (not b!1199476))

(assert (not d!342984))

(assert (not b!1199610))

(assert (not d!342980))

(assert (not b!1199688))

(assert (not b!1199456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

