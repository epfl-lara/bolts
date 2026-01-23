; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533670 () Bool)

(assert start!533670)

(declare-fun b!5045310 () Bool)

(declare-datatypes ((T!104278 0))(
  ( (T!104279 (val!23528 Int)) )
))
(declare-datatypes ((List!58438 0))(
  ( (Nil!58314) (Cons!58314 (h!64762 T!104278) (t!371041 List!58438)) )
))
(declare-datatypes ((tuple2!63258 0))(
  ( (tuple2!63259 (_1!34932 List!58438) (_2!34932 List!58438)) )
))
(declare-fun lt!2085135 () tuple2!63258)

(declare-fun call!351486 () tuple2!63258)

(assert (=> b!5045310 (= lt!2085135 call!351486)))

(declare-fun e!3150411 () tuple2!63258)

(declare-fun call!351487 () List!58438)

(assert (=> b!5045310 (= e!3150411 (tuple2!63259 (_1!34932 lt!2085135) call!351487))))

(declare-fun b!5045311 () Bool)

(declare-fun res!2149205 () Bool)

(declare-fun e!3150416 () Bool)

(assert (=> b!5045311 (=> (not res!2149205) (not e!3150416))))

(declare-fun i!618 () Int)

(assert (=> b!5045311 (= res!2149205 (<= 0 i!618))))

(declare-fun b!5045312 () Bool)

(declare-fun e!3150412 () Bool)

(declare-fun lt!2085133 () tuple2!63258)

(assert (=> b!5045312 (= e!3150412 (= lt!2085133 e!3150411))))

(declare-fun c!864812 () Bool)

(declare-fun lt!2085130 () Int)

(assert (=> b!5045312 (= c!864812 (< i!618 lt!2085130))))

(declare-fun tp!1411668 () Bool)

(declare-datatypes ((IArray!31113 0))(
  ( (IArray!31114 (innerList!15614 List!58438)) )
))
(declare-datatypes ((Conc!15526 0))(
  ( (Node!15526 (left!42718 Conc!15526) (right!43048 Conc!15526) (csize!31282 Int) (cheight!15737 Int)) (Leaf!25753 (xs!18852 IArray!31113) (csize!31283 Int)) (Empty!15526) )
))
(declare-fun t!4198 () Conc!15526)

(declare-fun tp!1411667 () Bool)

(declare-fun b!5045313 () Bool)

(declare-fun e!3150414 () Bool)

(declare-fun inv!77227 (Conc!15526) Bool)

(assert (=> b!5045313 (= e!3150414 (and (inv!77227 (left!42718 t!4198)) tp!1411667 (inv!77227 (right!43048 t!4198)) tp!1411668))))

(declare-fun b!5045315 () Bool)

(declare-fun e!3150413 () Bool)

(declare-fun ConcPrimitiveSize!36 (Conc!15526) Int)

(assert (=> b!5045315 (= e!3150413 (< (ConcPrimitiveSize!36 (left!42718 t!4198)) (ConcPrimitiveSize!36 t!4198)))))

(declare-fun b!5045316 () Bool)

(declare-fun lt!2085132 () tuple2!63258)

(assert (=> b!5045316 (= lt!2085132 call!351486)))

(assert (=> b!5045316 (= e!3150411 (tuple2!63259 call!351487 (_2!34932 lt!2085132)))))

(declare-fun lt!2085134 () List!58438)

(declare-fun bm!351481 () Bool)

(declare-fun lt!2085136 () List!58438)

(declare-fun ++!12739 (List!58438 List!58438) List!58438)

(assert (=> bm!351481 (= call!351487 (++!12739 (ite c!864812 (_2!34932 lt!2085135) lt!2085134) (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))

(declare-fun b!5045317 () Bool)

(declare-fun e!3150415 () Bool)

(declare-fun inv!77228 (IArray!31113) Bool)

(assert (=> b!5045317 (= e!3150414 (and (inv!77228 (xs!18852 t!4198)) e!3150415))))

(declare-fun b!5045318 () Bool)

(declare-fun res!2149204 () Bool)

(assert (=> b!5045318 (=> (not res!2149204) (not e!3150416))))

(declare-fun size!38932 (Conc!15526) Int)

(assert (=> b!5045318 (= res!2149204 (<= i!618 (size!38932 t!4198)))))

(declare-fun b!5045319 () Bool)

(assert (=> b!5045319 (= e!3150416 (not e!3150413))))

(declare-fun res!2149201 () Bool)

(assert (=> b!5045319 (=> res!2149201 e!3150413)))

(declare-fun lt!2085137 () Int)

(assert (=> b!5045319 (= res!2149201 (or (= lt!2085137 i!618) (>= i!618 lt!2085137)))))

(assert (=> b!5045319 (= lt!2085137 (size!38932 (left!42718 t!4198)))))

(assert (=> b!5045319 e!3150412))

(declare-fun c!864813 () Bool)

(assert (=> b!5045319 (= c!864813 (= lt!2085130 i!618))))

(declare-fun splitAtIndex!219 (List!58438 Int) tuple2!63258)

(assert (=> b!5045319 (= lt!2085133 (splitAtIndex!219 (++!12739 lt!2085134 lt!2085136) i!618))))

(declare-fun size!38933 (List!58438) Int)

(assert (=> b!5045319 (= lt!2085130 (size!38933 lt!2085134))))

(declare-datatypes ((Unit!149507 0))(
  ( (Unit!149508) )
))
(declare-fun lt!2085131 () Unit!149507)

(declare-fun splitAtLemma!74 (List!58438 List!58438 Int) Unit!149507)

(assert (=> b!5045319 (= lt!2085131 (splitAtLemma!74 lt!2085134 lt!2085136 i!618))))

(declare-fun list!18937 (Conc!15526) List!58438)

(assert (=> b!5045319 (= lt!2085136 (list!18937 (right!43048 t!4198)))))

(assert (=> b!5045319 (= lt!2085134 (list!18937 (left!42718 t!4198)))))

(declare-fun bm!351482 () Bool)

(assert (=> bm!351482 (= call!351486 (splitAtIndex!219 (ite c!864812 lt!2085134 lt!2085136) (ite c!864812 i!618 (- i!618 lt!2085130))))))

(declare-fun b!5045320 () Bool)

(declare-fun tp!1411669 () Bool)

(assert (=> b!5045320 (= e!3150415 tp!1411669)))

(declare-fun b!5045321 () Bool)

(declare-fun res!2149203 () Bool)

(assert (=> b!5045321 (=> (not res!2149203) (not e!3150416))))

(get-info :version)

(assert (=> b!5045321 (= res!2149203 (and (not ((_ is Empty!15526) t!4198)) (not ((_ is Leaf!25753) t!4198))))))

(declare-fun res!2149202 () Bool)

(assert (=> start!533670 (=> (not res!2149202) (not e!3150416))))

(declare-fun isBalanced!4388 (Conc!15526) Bool)

(assert (=> start!533670 (= res!2149202 (isBalanced!4388 t!4198))))

(assert (=> start!533670 e!3150416))

(assert (=> start!533670 (and (inv!77227 t!4198) e!3150414)))

(assert (=> start!533670 true))

(declare-fun b!5045314 () Bool)

(assert (=> b!5045314 (= e!3150412 (= lt!2085133 (tuple2!63259 lt!2085134 lt!2085136)))))

(assert (= (and start!533670 res!2149202) b!5045311))

(assert (= (and b!5045311 res!2149205) b!5045318))

(assert (= (and b!5045318 res!2149204) b!5045321))

(assert (= (and b!5045321 res!2149203) b!5045319))

(assert (= (and b!5045319 c!864813) b!5045314))

(assert (= (and b!5045319 (not c!864813)) b!5045312))

(assert (= (and b!5045312 c!864812) b!5045310))

(assert (= (and b!5045312 (not c!864812)) b!5045316))

(assert (= (or b!5045310 b!5045316) bm!351481))

(assert (= (or b!5045310 b!5045316) bm!351482))

(assert (= (and b!5045319 (not res!2149201)) b!5045315))

(assert (= (and start!533670 ((_ is Node!15526) t!4198)) b!5045313))

(assert (= b!5045317 b!5045320))

(assert (= (and start!533670 ((_ is Leaf!25753) t!4198)) b!5045317))

(declare-fun m!6080580 () Bool)

(assert (=> b!5045317 m!6080580))

(declare-fun m!6080582 () Bool)

(assert (=> bm!351482 m!6080582))

(declare-fun m!6080584 () Bool)

(assert (=> b!5045319 m!6080584))

(declare-fun m!6080586 () Bool)

(assert (=> b!5045319 m!6080586))

(declare-fun m!6080588 () Bool)

(assert (=> b!5045319 m!6080588))

(assert (=> b!5045319 m!6080586))

(declare-fun m!6080590 () Bool)

(assert (=> b!5045319 m!6080590))

(declare-fun m!6080592 () Bool)

(assert (=> b!5045319 m!6080592))

(declare-fun m!6080594 () Bool)

(assert (=> b!5045319 m!6080594))

(declare-fun m!6080596 () Bool)

(assert (=> b!5045319 m!6080596))

(declare-fun m!6080598 () Bool)

(assert (=> start!533670 m!6080598))

(declare-fun m!6080600 () Bool)

(assert (=> start!533670 m!6080600))

(declare-fun m!6080602 () Bool)

(assert (=> b!5045313 m!6080602))

(declare-fun m!6080604 () Bool)

(assert (=> b!5045313 m!6080604))

(declare-fun m!6080606 () Bool)

(assert (=> b!5045318 m!6080606))

(declare-fun m!6080608 () Bool)

(assert (=> b!5045315 m!6080608))

(declare-fun m!6080610 () Bool)

(assert (=> b!5045315 m!6080610))

(declare-fun m!6080612 () Bool)

(assert (=> bm!351481 m!6080612))

(check-sat (not b!5045318) (not bm!351482) (not b!5045320) (not b!5045317) (not bm!351481) (not b!5045319) (not b!5045313) (not b!5045315) (not start!533670))
(check-sat)
(get-model)

(declare-fun d!1623867 () Bool)

(declare-fun c!864816 () Bool)

(assert (=> d!1623867 (= c!864816 ((_ is Node!15526) (left!42718 t!4198)))))

(declare-fun e!3150421 () Bool)

(assert (=> d!1623867 (= (inv!77227 (left!42718 t!4198)) e!3150421)))

(declare-fun b!5045328 () Bool)

(declare-fun inv!77229 (Conc!15526) Bool)

(assert (=> b!5045328 (= e!3150421 (inv!77229 (left!42718 t!4198)))))

(declare-fun b!5045329 () Bool)

(declare-fun e!3150422 () Bool)

(assert (=> b!5045329 (= e!3150421 e!3150422)))

(declare-fun res!2149208 () Bool)

(assert (=> b!5045329 (= res!2149208 (not ((_ is Leaf!25753) (left!42718 t!4198))))))

(assert (=> b!5045329 (=> res!2149208 e!3150422)))

(declare-fun b!5045330 () Bool)

(declare-fun inv!77230 (Conc!15526) Bool)

(assert (=> b!5045330 (= e!3150422 (inv!77230 (left!42718 t!4198)))))

(assert (= (and d!1623867 c!864816) b!5045328))

(assert (= (and d!1623867 (not c!864816)) b!5045329))

(assert (= (and b!5045329 (not res!2149208)) b!5045330))

(declare-fun m!6080614 () Bool)

(assert (=> b!5045328 m!6080614))

(declare-fun m!6080616 () Bool)

(assert (=> b!5045330 m!6080616))

(assert (=> b!5045313 d!1623867))

(declare-fun d!1623869 () Bool)

(declare-fun c!864817 () Bool)

(assert (=> d!1623869 (= c!864817 ((_ is Node!15526) (right!43048 t!4198)))))

(declare-fun e!3150423 () Bool)

(assert (=> d!1623869 (= (inv!77227 (right!43048 t!4198)) e!3150423)))

(declare-fun b!5045331 () Bool)

(assert (=> b!5045331 (= e!3150423 (inv!77229 (right!43048 t!4198)))))

(declare-fun b!5045332 () Bool)

(declare-fun e!3150424 () Bool)

(assert (=> b!5045332 (= e!3150423 e!3150424)))

(declare-fun res!2149209 () Bool)

(assert (=> b!5045332 (= res!2149209 (not ((_ is Leaf!25753) (right!43048 t!4198))))))

(assert (=> b!5045332 (=> res!2149209 e!3150424)))

(declare-fun b!5045333 () Bool)

(assert (=> b!5045333 (= e!3150424 (inv!77230 (right!43048 t!4198)))))

(assert (= (and d!1623869 c!864817) b!5045331))

(assert (= (and d!1623869 (not c!864817)) b!5045332))

(assert (= (and b!5045332 (not res!2149209)) b!5045333))

(declare-fun m!6080618 () Bool)

(assert (=> b!5045331 m!6080618))

(declare-fun m!6080620 () Bool)

(assert (=> b!5045333 m!6080620))

(assert (=> b!5045313 d!1623869))

(declare-fun d!1623871 () Bool)

(assert (=> d!1623871 (= (inv!77228 (xs!18852 t!4198)) (<= (size!38933 (innerList!15614 (xs!18852 t!4198))) 2147483647))))

(declare-fun bs!1189124 () Bool)

(assert (= bs!1189124 d!1623871))

(declare-fun m!6080622 () Bool)

(assert (=> bs!1189124 m!6080622))

(assert (=> b!5045317 d!1623871))

(declare-fun b!5045356 () Bool)

(declare-fun res!2149227 () Bool)

(declare-fun e!3150434 () Bool)

(assert (=> b!5045356 (=> (not res!2149227) (not e!3150434))))

(declare-fun lt!2085140 () List!58438)

(assert (=> b!5045356 (= res!2149227 (= (size!38933 lt!2085140) (+ (size!38933 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) (size!38933 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))))

(declare-fun b!5045355 () Bool)

(declare-fun e!3150433 () List!58438)

(assert (=> b!5045355 (= e!3150433 (Cons!58314 (h!64762 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) (++!12739 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) (ite c!864812 lt!2085136 (_1!34932 lt!2085132)))))))

(declare-fun b!5045354 () Bool)

(assert (=> b!5045354 (= e!3150433 (ite c!864812 lt!2085136 (_1!34932 lt!2085132)))))

(declare-fun d!1623873 () Bool)

(assert (=> d!1623873 e!3150434))

(declare-fun res!2149226 () Bool)

(assert (=> d!1623873 (=> (not res!2149226) (not e!3150434))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10366 (List!58438) (InoxSet T!104278))

(assert (=> d!1623873 (= res!2149226 (= (content!10366 lt!2085140) ((_ map or) (content!10366 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) (content!10366 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))))

(assert (=> d!1623873 (= lt!2085140 e!3150433)))

(declare-fun c!864820 () Bool)

(assert (=> d!1623873 (= c!864820 ((_ is Nil!58314) (ite c!864812 (_2!34932 lt!2085135) lt!2085134)))))

(assert (=> d!1623873 (= (++!12739 (ite c!864812 (_2!34932 lt!2085135) lt!2085134) (ite c!864812 lt!2085136 (_1!34932 lt!2085132))) lt!2085140)))

(declare-fun b!5045357 () Bool)

(assert (=> b!5045357 (= e!3150434 (or (not (= (ite c!864812 lt!2085136 (_1!34932 lt!2085132)) Nil!58314)) (= lt!2085140 (ite c!864812 (_2!34932 lt!2085135) lt!2085134))))))

(assert (= (and d!1623873 c!864820) b!5045354))

(assert (= (and d!1623873 (not c!864820)) b!5045355))

(assert (= (and d!1623873 res!2149226) b!5045356))

(assert (= (and b!5045356 res!2149227) b!5045357))

(declare-fun m!6080624 () Bool)

(assert (=> b!5045356 m!6080624))

(declare-fun m!6080626 () Bool)

(assert (=> b!5045356 m!6080626))

(declare-fun m!6080628 () Bool)

(assert (=> b!5045356 m!6080628))

(declare-fun m!6080630 () Bool)

(assert (=> b!5045355 m!6080630))

(declare-fun m!6080632 () Bool)

(assert (=> d!1623873 m!6080632))

(declare-fun m!6080634 () Bool)

(assert (=> d!1623873 m!6080634))

(declare-fun m!6080636 () Bool)

(assert (=> d!1623873 m!6080636))

(assert (=> bm!351481 d!1623873))

(declare-fun b!5045385 () Bool)

(declare-fun res!2149241 () Bool)

(declare-fun e!3150450 () Bool)

(assert (=> b!5045385 (=> (not res!2149241) (not e!3150450))))

(declare-fun lt!2085145 () tuple2!63258)

(declare-fun take!834 (List!58438 Int) List!58438)

(assert (=> b!5045385 (= res!2149241 (= (_1!34932 lt!2085145) (take!834 (ite c!864812 lt!2085134 lt!2085136) (ite c!864812 i!618 (- i!618 lt!2085130)))))))

(declare-fun b!5045386 () Bool)

(declare-fun drop!2641 (List!58438 Int) List!58438)

(assert (=> b!5045386 (= e!3150450 (= (_2!34932 lt!2085145) (drop!2641 (ite c!864812 lt!2085134 lt!2085136) (ite c!864812 i!618 (- i!618 lt!2085130)))))))

(declare-fun b!5045387 () Bool)

(declare-fun lt!2085146 () tuple2!63258)

(assert (=> b!5045387 (= lt!2085146 (splitAtIndex!219 (t!371041 (ite c!864812 lt!2085134 lt!2085136)) (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1)))))

(declare-fun e!3150451 () tuple2!63258)

(assert (=> b!5045387 (= e!3150451 (tuple2!63259 (Cons!58314 (h!64762 (ite c!864812 lt!2085134 lt!2085136)) (_1!34932 lt!2085146)) (_2!34932 lt!2085146)))))

(declare-fun b!5045388 () Bool)

(assert (=> b!5045388 (= e!3150451 (tuple2!63259 Nil!58314 (ite c!864812 lt!2085134 lt!2085136)))))

(declare-fun b!5045389 () Bool)

(declare-fun e!3150449 () tuple2!63258)

(assert (=> b!5045389 (= e!3150449 e!3150451)))

(declare-fun c!864829 () Bool)

(assert (=> b!5045389 (= c!864829 (<= (ite c!864812 i!618 (- i!618 lt!2085130)) 0))))

(declare-fun b!5045390 () Bool)

(assert (=> b!5045390 (= e!3150449 (tuple2!63259 Nil!58314 Nil!58314))))

(declare-fun d!1623877 () Bool)

(assert (=> d!1623877 e!3150450))

(declare-fun res!2149242 () Bool)

(assert (=> d!1623877 (=> (not res!2149242) (not e!3150450))))

(assert (=> d!1623877 (= res!2149242 (= (++!12739 (_1!34932 lt!2085145) (_2!34932 lt!2085145)) (ite c!864812 lt!2085134 lt!2085136)))))

(assert (=> d!1623877 (= lt!2085145 e!3150449)))

(declare-fun c!864828 () Bool)

(assert (=> d!1623877 (= c!864828 ((_ is Nil!58314) (ite c!864812 lt!2085134 lt!2085136)))))

(assert (=> d!1623877 (= (splitAtIndex!219 (ite c!864812 lt!2085134 lt!2085136) (ite c!864812 i!618 (- i!618 lt!2085130))) lt!2085145)))

(assert (= (and d!1623877 c!864828) b!5045390))

(assert (= (and d!1623877 (not c!864828)) b!5045389))

(assert (= (and b!5045389 c!864829) b!5045388))

(assert (= (and b!5045389 (not c!864829)) b!5045387))

(assert (= (and d!1623877 res!2149242) b!5045385))

(assert (= (and b!5045385 res!2149241) b!5045386))

(declare-fun m!6080656 () Bool)

(assert (=> b!5045385 m!6080656))

(declare-fun m!6080658 () Bool)

(assert (=> b!5045386 m!6080658))

(declare-fun m!6080660 () Bool)

(assert (=> b!5045387 m!6080660))

(declare-fun m!6080662 () Bool)

(assert (=> d!1623877 m!6080662))

(assert (=> bm!351482 d!1623877))

(declare-fun b!5045418 () Bool)

(declare-fun res!2149262 () Bool)

(declare-fun e!3150465 () Bool)

(assert (=> b!5045418 (=> (not res!2149262) (not e!3150465))))

(assert (=> b!5045418 (= res!2149262 (isBalanced!4388 (left!42718 t!4198)))))

(declare-fun b!5045419 () Bool)

(declare-fun res!2149267 () Bool)

(assert (=> b!5045419 (=> (not res!2149267) (not e!3150465))))

(declare-fun isEmpty!31556 (Conc!15526) Bool)

(assert (=> b!5045419 (= res!2149267 (not (isEmpty!31556 (left!42718 t!4198))))))

(declare-fun b!5045420 () Bool)

(declare-fun res!2149266 () Bool)

(assert (=> b!5045420 (=> (not res!2149266) (not e!3150465))))

(declare-fun height!2105 (Conc!15526) Int)

(assert (=> b!5045420 (= res!2149266 (<= (- (height!2105 (left!42718 t!4198)) (height!2105 (right!43048 t!4198))) 1))))

(declare-fun b!5045421 () Bool)

(assert (=> b!5045421 (= e!3150465 (not (isEmpty!31556 (right!43048 t!4198))))))

(declare-fun b!5045422 () Bool)

(declare-fun res!2149265 () Bool)

(assert (=> b!5045422 (=> (not res!2149265) (not e!3150465))))

(assert (=> b!5045422 (= res!2149265 (isBalanced!4388 (right!43048 t!4198)))))

(declare-fun b!5045423 () Bool)

(declare-fun e!3150464 () Bool)

(assert (=> b!5045423 (= e!3150464 e!3150465)))

(declare-fun res!2149263 () Bool)

(assert (=> b!5045423 (=> (not res!2149263) (not e!3150465))))

(assert (=> b!5045423 (= res!2149263 (<= (- 1) (- (height!2105 (left!42718 t!4198)) (height!2105 (right!43048 t!4198)))))))

(declare-fun d!1623885 () Bool)

(declare-fun res!2149264 () Bool)

(assert (=> d!1623885 (=> res!2149264 e!3150464)))

(assert (=> d!1623885 (= res!2149264 (not ((_ is Node!15526) t!4198)))))

(assert (=> d!1623885 (= (isBalanced!4388 t!4198) e!3150464)))

(assert (= (and d!1623885 (not res!2149264)) b!5045423))

(assert (= (and b!5045423 res!2149263) b!5045420))

(assert (= (and b!5045420 res!2149266) b!5045418))

(assert (= (and b!5045418 res!2149262) b!5045422))

(assert (= (and b!5045422 res!2149265) b!5045419))

(assert (= (and b!5045419 res!2149267) b!5045421))

(declare-fun m!6080690 () Bool)

(assert (=> b!5045419 m!6080690))

(declare-fun m!6080692 () Bool)

(assert (=> b!5045423 m!6080692))

(declare-fun m!6080694 () Bool)

(assert (=> b!5045423 m!6080694))

(declare-fun m!6080696 () Bool)

(assert (=> b!5045422 m!6080696))

(declare-fun m!6080698 () Bool)

(assert (=> b!5045421 m!6080698))

(declare-fun m!6080700 () Bool)

(assert (=> b!5045418 m!6080700))

(assert (=> b!5045420 m!6080692))

(assert (=> b!5045420 m!6080694))

(assert (=> start!533670 d!1623885))

(declare-fun d!1623895 () Bool)

(declare-fun c!864835 () Bool)

(assert (=> d!1623895 (= c!864835 ((_ is Node!15526) t!4198))))

(declare-fun e!3150468 () Bool)

(assert (=> d!1623895 (= (inv!77227 t!4198) e!3150468)))

(declare-fun b!5045427 () Bool)

(assert (=> b!5045427 (= e!3150468 (inv!77229 t!4198))))

(declare-fun b!5045428 () Bool)

(declare-fun e!3150469 () Bool)

(assert (=> b!5045428 (= e!3150468 e!3150469)))

(declare-fun res!2149269 () Bool)

(assert (=> b!5045428 (= res!2149269 (not ((_ is Leaf!25753) t!4198)))))

(assert (=> b!5045428 (=> res!2149269 e!3150469)))

(declare-fun b!5045429 () Bool)

(assert (=> b!5045429 (= e!3150469 (inv!77230 t!4198))))

(assert (= (and d!1623895 c!864835) b!5045427))

(assert (= (and d!1623895 (not c!864835)) b!5045428))

(assert (= (and b!5045428 (not res!2149269)) b!5045429))

(declare-fun m!6080702 () Bool)

(assert (=> b!5045427 m!6080702))

(declare-fun m!6080704 () Bool)

(assert (=> b!5045429 m!6080704))

(assert (=> start!533670 d!1623895))

(declare-fun b!5045454 () Bool)

(declare-fun e!3150482 () Int)

(declare-fun call!351494 () Int)

(declare-fun IArrayPrimitiveSize!35 (IArray!31113) Int)

(assert (=> b!5045454 (= e!3150482 (+ 1 (IArrayPrimitiveSize!35 (xs!18852 (left!42718 t!4198))) call!351494))))

(declare-fun d!1623897 () Bool)

(declare-fun lt!2085159 () Int)

(assert (=> d!1623897 (>= lt!2085159 0)))

(declare-fun e!3150483 () Int)

(assert (=> d!1623897 (= lt!2085159 e!3150483)))

(declare-fun c!864848 () Bool)

(assert (=> d!1623897 (= c!864848 ((_ is Node!15526) (left!42718 t!4198)))))

(assert (=> d!1623897 (= (ConcPrimitiveSize!36 (left!42718 t!4198)) lt!2085159)))

(declare-fun b!5045455 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!5045455 (= e!3150483 (+ 1 (ConcPrimitiveSize!36 (left!42718 (left!42718 t!4198))) (ConcPrimitiveSize!36 (right!43048 (left!42718 t!4198))) (BigIntAbs!0 (csize!31282 (left!42718 t!4198))) call!351494))))

(declare-fun b!5045456 () Bool)

(assert (=> b!5045456 (= e!3150483 e!3150482)))

(declare-fun c!864849 () Bool)

(assert (=> b!5045456 (= c!864849 ((_ is Leaf!25753) (left!42718 t!4198)))))

(declare-fun b!5045457 () Bool)

(assert (=> b!5045457 (= e!3150482 0)))

(declare-fun bm!351489 () Bool)

(assert (=> bm!351489 (= call!351494 (BigIntAbs!0 (ite c!864848 (cheight!15737 (left!42718 t!4198)) (csize!31283 (left!42718 t!4198)))))))

(assert (= (and d!1623897 c!864848) b!5045455))

(assert (= (and d!1623897 (not c!864848)) b!5045456))

(assert (= (and b!5045456 c!864849) b!5045454))

(assert (= (and b!5045456 (not c!864849)) b!5045457))

(assert (= (or b!5045455 b!5045454) bm!351489))

(declare-fun m!6080724 () Bool)

(assert (=> b!5045454 m!6080724))

(declare-fun m!6080726 () Bool)

(assert (=> b!5045455 m!6080726))

(declare-fun m!6080728 () Bool)

(assert (=> b!5045455 m!6080728))

(declare-fun m!6080730 () Bool)

(assert (=> b!5045455 m!6080730))

(declare-fun m!6080732 () Bool)

(assert (=> bm!351489 m!6080732))

(assert (=> b!5045315 d!1623897))

(declare-fun b!5045462 () Bool)

(declare-fun e!3150486 () Int)

(declare-fun call!351495 () Int)

(assert (=> b!5045462 (= e!3150486 (+ 1 (IArrayPrimitiveSize!35 (xs!18852 t!4198)) call!351495))))

(declare-fun d!1623903 () Bool)

(declare-fun lt!2085162 () Int)

(assert (=> d!1623903 (>= lt!2085162 0)))

(declare-fun e!3150487 () Int)

(assert (=> d!1623903 (= lt!2085162 e!3150487)))

(declare-fun c!864852 () Bool)

(assert (=> d!1623903 (= c!864852 ((_ is Node!15526) t!4198))))

(assert (=> d!1623903 (= (ConcPrimitiveSize!36 t!4198) lt!2085162)))

(declare-fun b!5045463 () Bool)

(assert (=> b!5045463 (= e!3150487 (+ 1 (ConcPrimitiveSize!36 (left!42718 t!4198)) (ConcPrimitiveSize!36 (right!43048 t!4198)) (BigIntAbs!0 (csize!31282 t!4198)) call!351495))))

(declare-fun b!5045464 () Bool)

(assert (=> b!5045464 (= e!3150487 e!3150486)))

(declare-fun c!864853 () Bool)

(assert (=> b!5045464 (= c!864853 ((_ is Leaf!25753) t!4198))))

(declare-fun b!5045465 () Bool)

(assert (=> b!5045465 (= e!3150486 0)))

(declare-fun bm!351490 () Bool)

(assert (=> bm!351490 (= call!351495 (BigIntAbs!0 (ite c!864852 (cheight!15737 t!4198) (csize!31283 t!4198))))))

(assert (= (and d!1623903 c!864852) b!5045463))

(assert (= (and d!1623903 (not c!864852)) b!5045464))

(assert (= (and b!5045464 c!864853) b!5045462))

(assert (= (and b!5045464 (not c!864853)) b!5045465))

(assert (= (or b!5045463 b!5045462) bm!351490))

(declare-fun m!6080734 () Bool)

(assert (=> b!5045462 m!6080734))

(assert (=> b!5045463 m!6080608))

(declare-fun m!6080736 () Bool)

(assert (=> b!5045463 m!6080736))

(declare-fun m!6080738 () Bool)

(assert (=> b!5045463 m!6080738))

(declare-fun m!6080740 () Bool)

(assert (=> bm!351490 m!6080740))

(assert (=> b!5045315 d!1623903))

(declare-fun e!3150509 () Bool)

(declare-fun b!5045504 () Bool)

(assert (=> b!5045504 (= e!3150509 (<= i!618 (+ (size!38933 lt!2085134) (size!38933 lt!2085136))))))

(declare-fun b!5045505 () Bool)

(declare-fun e!3150510 () tuple2!63258)

(declare-fun e!3150512 () tuple2!63258)

(assert (=> b!5045505 (= e!3150510 e!3150512)))

(declare-fun c!864872 () Bool)

(assert (=> b!5045505 (= c!864872 (< i!618 (size!38933 lt!2085134)))))

(declare-fun b!5045506 () Bool)

(assert (=> b!5045506 (= e!3150510 (tuple2!63259 lt!2085134 lt!2085136))))

(declare-fun b!5045507 () Bool)

(declare-fun lt!2085180 () tuple2!63258)

(declare-fun call!351506 () tuple2!63258)

(assert (=> b!5045507 (= lt!2085180 call!351506)))

(declare-fun call!351507 () List!58438)

(assert (=> b!5045507 (= e!3150512 (tuple2!63259 (_1!34932 lt!2085180) call!351507))))

(declare-fun b!5045508 () Bool)

(declare-fun lt!2085179 () tuple2!63258)

(assert (=> b!5045508 (= lt!2085179 call!351506)))

(assert (=> b!5045508 (= e!3150512 (tuple2!63259 call!351507 (_2!34932 lt!2085179)))))

(declare-fun bm!351501 () Bool)

(declare-fun c!864871 () Bool)

(assert (=> bm!351501 (= c!864871 c!864872)))

(declare-fun e!3150511 () Int)

(assert (=> bm!351501 (= call!351506 (splitAtIndex!219 (ite c!864872 lt!2085134 lt!2085136) e!3150511))))

(declare-fun b!5045509 () Bool)

(assert (=> b!5045509 (= e!3150511 (- i!618 (size!38933 lt!2085134)))))

(declare-fun bm!351502 () Bool)

(assert (=> bm!351502 (= call!351507 (++!12739 (ite c!864872 (_2!34932 lt!2085180) lt!2085134) (ite c!864872 lt!2085136 (_1!34932 lt!2085179))))))

(declare-fun d!1623905 () Bool)

(assert (=> d!1623905 (= (splitAtIndex!219 (++!12739 lt!2085134 lt!2085136) i!618) e!3150510)))

(declare-fun c!864870 () Bool)

(assert (=> d!1623905 (= c!864870 (= (size!38933 lt!2085134) i!618))))

(declare-fun lt!2085181 () Unit!149507)

(declare-fun choose!37274 (List!58438 List!58438 Int) Unit!149507)

(assert (=> d!1623905 (= lt!2085181 (choose!37274 lt!2085134 lt!2085136 i!618))))

(assert (=> d!1623905 e!3150509))

(declare-fun res!2149275 () Bool)

(assert (=> d!1623905 (=> (not res!2149275) (not e!3150509))))

(assert (=> d!1623905 (= res!2149275 (<= 0 i!618))))

(assert (=> d!1623905 (= (splitAtLemma!74 lt!2085134 lt!2085136 i!618) lt!2085181)))

(declare-fun b!5045503 () Bool)

(assert (=> b!5045503 (= e!3150511 i!618)))

(assert (= (and d!1623905 res!2149275) b!5045504))

(assert (= (and d!1623905 c!864870) b!5045506))

(assert (= (and d!1623905 (not c!864870)) b!5045505))

(assert (= (and b!5045505 c!864872) b!5045507))

(assert (= (and b!5045505 (not c!864872)) b!5045508))

(assert (= (or b!5045507 b!5045508) bm!351502))

(assert (= (or b!5045507 b!5045508) bm!351501))

(assert (= (and bm!351501 c!864871) b!5045503))

(assert (= (and bm!351501 (not c!864871)) b!5045509))

(declare-fun m!6080752 () Bool)

(assert (=> bm!351501 m!6080752))

(assert (=> b!5045504 m!6080588))

(declare-fun m!6080754 () Bool)

(assert (=> b!5045504 m!6080754))

(assert (=> b!5045509 m!6080588))

(declare-fun m!6080756 () Bool)

(assert (=> bm!351502 m!6080756))

(assert (=> b!5045505 m!6080588))

(assert (=> d!1623905 m!6080586))

(assert (=> d!1623905 m!6080586))

(assert (=> d!1623905 m!6080590))

(assert (=> d!1623905 m!6080588))

(declare-fun m!6080758 () Bool)

(assert (=> d!1623905 m!6080758))

(assert (=> b!5045319 d!1623905))

(declare-fun d!1623911 () Bool)

(declare-fun lt!2085186 () Int)

(assert (=> d!1623911 (>= lt!2085186 0)))

(declare-fun e!3150525 () Int)

(assert (=> d!1623911 (= lt!2085186 e!3150525)))

(declare-fun c!864884 () Bool)

(assert (=> d!1623911 (= c!864884 ((_ is Nil!58314) lt!2085134))))

(assert (=> d!1623911 (= (size!38933 lt!2085134) lt!2085186)))

(declare-fun b!5045534 () Bool)

(assert (=> b!5045534 (= e!3150525 0)))

(declare-fun b!5045535 () Bool)

(assert (=> b!5045535 (= e!3150525 (+ 1 (size!38933 (t!371041 lt!2085134))))))

(assert (= (and d!1623911 c!864884) b!5045534))

(assert (= (and d!1623911 (not c!864884)) b!5045535))

(declare-fun m!6080788 () Bool)

(assert (=> b!5045535 m!6080788))

(assert (=> b!5045319 d!1623911))

(declare-fun d!1623921 () Bool)

(declare-fun c!864889 () Bool)

(assert (=> d!1623921 (= c!864889 ((_ is Empty!15526) (left!42718 t!4198)))))

(declare-fun e!3150530 () List!58438)

(assert (=> d!1623921 (= (list!18937 (left!42718 t!4198)) e!3150530)))

(declare-fun b!5045544 () Bool)

(assert (=> b!5045544 (= e!3150530 Nil!58314)))

(declare-fun b!5045545 () Bool)

(declare-fun e!3150531 () List!58438)

(assert (=> b!5045545 (= e!3150530 e!3150531)))

(declare-fun c!864890 () Bool)

(assert (=> b!5045545 (= c!864890 ((_ is Leaf!25753) (left!42718 t!4198)))))

(declare-fun b!5045547 () Bool)

(assert (=> b!5045547 (= e!3150531 (++!12739 (list!18937 (left!42718 (left!42718 t!4198))) (list!18937 (right!43048 (left!42718 t!4198)))))))

(declare-fun b!5045546 () Bool)

(declare-fun list!18939 (IArray!31113) List!58438)

(assert (=> b!5045546 (= e!3150531 (list!18939 (xs!18852 (left!42718 t!4198))))))

(assert (= (and d!1623921 c!864889) b!5045544))

(assert (= (and d!1623921 (not c!864889)) b!5045545))

(assert (= (and b!5045545 c!864890) b!5045546))

(assert (= (and b!5045545 (not c!864890)) b!5045547))

(declare-fun m!6080790 () Bool)

(assert (=> b!5045547 m!6080790))

(declare-fun m!6080792 () Bool)

(assert (=> b!5045547 m!6080792))

(assert (=> b!5045547 m!6080790))

(assert (=> b!5045547 m!6080792))

(declare-fun m!6080794 () Bool)

(assert (=> b!5045547 m!6080794))

(declare-fun m!6080796 () Bool)

(assert (=> b!5045546 m!6080796))

(assert (=> b!5045319 d!1623921))

(declare-fun d!1623923 () Bool)

(declare-fun c!864895 () Bool)

(assert (=> d!1623923 (= c!864895 ((_ is Empty!15526) (right!43048 t!4198)))))

(declare-fun e!3150536 () List!58438)

(assert (=> d!1623923 (= (list!18937 (right!43048 t!4198)) e!3150536)))

(declare-fun b!5045556 () Bool)

(assert (=> b!5045556 (= e!3150536 Nil!58314)))

(declare-fun b!5045557 () Bool)

(declare-fun e!3150537 () List!58438)

(assert (=> b!5045557 (= e!3150536 e!3150537)))

(declare-fun c!864896 () Bool)

(assert (=> b!5045557 (= c!864896 ((_ is Leaf!25753) (right!43048 t!4198)))))

(declare-fun b!5045559 () Bool)

(assert (=> b!5045559 (= e!3150537 (++!12739 (list!18937 (left!42718 (right!43048 t!4198))) (list!18937 (right!43048 (right!43048 t!4198)))))))

(declare-fun b!5045558 () Bool)

(assert (=> b!5045558 (= e!3150537 (list!18939 (xs!18852 (right!43048 t!4198))))))

(assert (= (and d!1623923 c!864895) b!5045556))

(assert (= (and d!1623923 (not c!864895)) b!5045557))

(assert (= (and b!5045557 c!864896) b!5045558))

(assert (= (and b!5045557 (not c!864896)) b!5045559))

(declare-fun m!6080798 () Bool)

(assert (=> b!5045559 m!6080798))

(declare-fun m!6080800 () Bool)

(assert (=> b!5045559 m!6080800))

(assert (=> b!5045559 m!6080798))

(assert (=> b!5045559 m!6080800))

(declare-fun m!6080802 () Bool)

(assert (=> b!5045559 m!6080802))

(declare-fun m!6080804 () Bool)

(assert (=> b!5045558 m!6080804))

(assert (=> b!5045319 d!1623923))

(declare-fun d!1623925 () Bool)

(declare-fun lt!2085195 () Int)

(assert (=> d!1623925 (= lt!2085195 (size!38933 (list!18937 (left!42718 t!4198))))))

(assert (=> d!1623925 (= lt!2085195 (ite ((_ is Empty!15526) (left!42718 t!4198)) 0 (ite ((_ is Leaf!25753) (left!42718 t!4198)) (csize!31283 (left!42718 t!4198)) (csize!31282 (left!42718 t!4198)))))))

(assert (=> d!1623925 (= (size!38932 (left!42718 t!4198)) lt!2085195)))

(declare-fun bs!1189128 () Bool)

(assert (= bs!1189128 d!1623925))

(assert (=> bs!1189128 m!6080584))

(assert (=> bs!1189128 m!6080584))

(declare-fun m!6080806 () Bool)

(assert (=> bs!1189128 m!6080806))

(assert (=> b!5045319 d!1623925))

(declare-fun b!5045570 () Bool)

(declare-fun res!2149284 () Bool)

(declare-fun e!3150544 () Bool)

(assert (=> b!5045570 (=> (not res!2149284) (not e!3150544))))

(declare-fun lt!2085196 () tuple2!63258)

(assert (=> b!5045570 (= res!2149284 (= (_1!34932 lt!2085196) (take!834 (++!12739 lt!2085134 lt!2085136) i!618)))))

(declare-fun b!5045571 () Bool)

(assert (=> b!5045571 (= e!3150544 (= (_2!34932 lt!2085196) (drop!2641 (++!12739 lt!2085134 lt!2085136) i!618)))))

(declare-fun b!5045572 () Bool)

(declare-fun lt!2085197 () tuple2!63258)

(assert (=> b!5045572 (= lt!2085197 (splitAtIndex!219 (t!371041 (++!12739 lt!2085134 lt!2085136)) (- i!618 1)))))

(declare-fun e!3150545 () tuple2!63258)

(assert (=> b!5045572 (= e!3150545 (tuple2!63259 (Cons!58314 (h!64762 (++!12739 lt!2085134 lt!2085136)) (_1!34932 lt!2085197)) (_2!34932 lt!2085197)))))

(declare-fun b!5045573 () Bool)

(assert (=> b!5045573 (= e!3150545 (tuple2!63259 Nil!58314 (++!12739 lt!2085134 lt!2085136)))))

(declare-fun b!5045574 () Bool)

(declare-fun e!3150543 () tuple2!63258)

(assert (=> b!5045574 (= e!3150543 e!3150545)))

(declare-fun c!864900 () Bool)

(assert (=> b!5045574 (= c!864900 (<= i!618 0))))

(declare-fun b!5045575 () Bool)

(assert (=> b!5045575 (= e!3150543 (tuple2!63259 Nil!58314 Nil!58314))))

(declare-fun d!1623927 () Bool)

(assert (=> d!1623927 e!3150544))

(declare-fun res!2149285 () Bool)

(assert (=> d!1623927 (=> (not res!2149285) (not e!3150544))))

(assert (=> d!1623927 (= res!2149285 (= (++!12739 (_1!34932 lt!2085196) (_2!34932 lt!2085196)) (++!12739 lt!2085134 lt!2085136)))))

(assert (=> d!1623927 (= lt!2085196 e!3150543)))

(declare-fun c!864899 () Bool)

(assert (=> d!1623927 (= c!864899 ((_ is Nil!58314) (++!12739 lt!2085134 lt!2085136)))))

(assert (=> d!1623927 (= (splitAtIndex!219 (++!12739 lt!2085134 lt!2085136) i!618) lt!2085196)))

(assert (= (and d!1623927 c!864899) b!5045575))

(assert (= (and d!1623927 (not c!864899)) b!5045574))

(assert (= (and b!5045574 c!864900) b!5045573))

(assert (= (and b!5045574 (not c!864900)) b!5045572))

(assert (= (and d!1623927 res!2149285) b!5045570))

(assert (= (and b!5045570 res!2149284) b!5045571))

(assert (=> b!5045570 m!6080586))

(declare-fun m!6080818 () Bool)

(assert (=> b!5045570 m!6080818))

(assert (=> b!5045571 m!6080586))

(declare-fun m!6080822 () Bool)

(assert (=> b!5045571 m!6080822))

(declare-fun m!6080828 () Bool)

(assert (=> b!5045572 m!6080828))

(declare-fun m!6080830 () Bool)

(assert (=> d!1623927 m!6080830))

(assert (=> b!5045319 d!1623927))

(declare-fun b!5045588 () Bool)

(declare-fun res!2149289 () Bool)

(declare-fun e!3150552 () Bool)

(assert (=> b!5045588 (=> (not res!2149289) (not e!3150552))))

(declare-fun lt!2085200 () List!58438)

(assert (=> b!5045588 (= res!2149289 (= (size!38933 lt!2085200) (+ (size!38933 lt!2085134) (size!38933 lt!2085136))))))

(declare-fun b!5045587 () Bool)

(declare-fun e!3150549 () List!58438)

(assert (=> b!5045587 (= e!3150549 (Cons!58314 (h!64762 lt!2085134) (++!12739 (t!371041 lt!2085134) lt!2085136)))))

(declare-fun b!5045586 () Bool)

(assert (=> b!5045586 (= e!3150549 lt!2085136)))

(declare-fun d!1623931 () Bool)

(assert (=> d!1623931 e!3150552))

(declare-fun res!2149288 () Bool)

(assert (=> d!1623931 (=> (not res!2149288) (not e!3150552))))

(assert (=> d!1623931 (= res!2149288 (= (content!10366 lt!2085200) ((_ map or) (content!10366 lt!2085134) (content!10366 lt!2085136))))))

(assert (=> d!1623931 (= lt!2085200 e!3150549)))

(declare-fun c!864903 () Bool)

(assert (=> d!1623931 (= c!864903 ((_ is Nil!58314) lt!2085134))))

(assert (=> d!1623931 (= (++!12739 lt!2085134 lt!2085136) lt!2085200)))

(declare-fun b!5045589 () Bool)

(assert (=> b!5045589 (= e!3150552 (or (not (= lt!2085136 Nil!58314)) (= lt!2085200 lt!2085134)))))

(assert (= (and d!1623931 c!864903) b!5045586))

(assert (= (and d!1623931 (not c!864903)) b!5045587))

(assert (= (and d!1623931 res!2149288) b!5045588))

(assert (= (and b!5045588 res!2149289) b!5045589))

(declare-fun m!6080832 () Bool)

(assert (=> b!5045588 m!6080832))

(assert (=> b!5045588 m!6080588))

(assert (=> b!5045588 m!6080754))

(declare-fun m!6080834 () Bool)

(assert (=> b!5045587 m!6080834))

(declare-fun m!6080836 () Bool)

(assert (=> d!1623931 m!6080836))

(declare-fun m!6080838 () Bool)

(assert (=> d!1623931 m!6080838))

(declare-fun m!6080840 () Bool)

(assert (=> d!1623931 m!6080840))

(assert (=> b!5045319 d!1623931))

(declare-fun d!1623933 () Bool)

(declare-fun lt!2085201 () Int)

(assert (=> d!1623933 (= lt!2085201 (size!38933 (list!18937 t!4198)))))

(assert (=> d!1623933 (= lt!2085201 (ite ((_ is Empty!15526) t!4198) 0 (ite ((_ is Leaf!25753) t!4198) (csize!31283 t!4198) (csize!31282 t!4198))))))

(assert (=> d!1623933 (= (size!38932 t!4198) lt!2085201)))

(declare-fun bs!1189129 () Bool)

(assert (= bs!1189129 d!1623933))

(declare-fun m!6080842 () Bool)

(assert (=> bs!1189129 m!6080842))

(assert (=> bs!1189129 m!6080842))

(declare-fun m!6080844 () Bool)

(assert (=> bs!1189129 m!6080844))

(assert (=> b!5045318 d!1623933))

(declare-fun tp!1411692 () Bool)

(declare-fun e!3150567 () Bool)

(declare-fun b!5045613 () Bool)

(declare-fun tp!1411691 () Bool)

(assert (=> b!5045613 (= e!3150567 (and (inv!77227 (left!42718 (left!42718 t!4198))) tp!1411691 (inv!77227 (right!43048 (left!42718 t!4198))) tp!1411692))))

(declare-fun b!5045615 () Bool)

(declare-fun e!3150566 () Bool)

(declare-fun tp!1411693 () Bool)

(assert (=> b!5045615 (= e!3150566 tp!1411693)))

(declare-fun b!5045614 () Bool)

(assert (=> b!5045614 (= e!3150567 (and (inv!77228 (xs!18852 (left!42718 t!4198))) e!3150566))))

(assert (=> b!5045313 (= tp!1411667 (and (inv!77227 (left!42718 t!4198)) e!3150567))))

(assert (= (and b!5045313 ((_ is Node!15526) (left!42718 t!4198))) b!5045613))

(assert (= b!5045614 b!5045615))

(assert (= (and b!5045313 ((_ is Leaf!25753) (left!42718 t!4198))) b!5045614))

(declare-fun m!6080858 () Bool)

(assert (=> b!5045613 m!6080858))

(declare-fun m!6080860 () Bool)

(assert (=> b!5045613 m!6080860))

(declare-fun m!6080862 () Bool)

(assert (=> b!5045614 m!6080862))

(assert (=> b!5045313 m!6080602))

(declare-fun tp!1411694 () Bool)

(declare-fun b!5045616 () Bool)

(declare-fun tp!1411695 () Bool)

(declare-fun e!3150569 () Bool)

(assert (=> b!5045616 (= e!3150569 (and (inv!77227 (left!42718 (right!43048 t!4198))) tp!1411694 (inv!77227 (right!43048 (right!43048 t!4198))) tp!1411695))))

(declare-fun b!5045618 () Bool)

(declare-fun e!3150568 () Bool)

(declare-fun tp!1411696 () Bool)

(assert (=> b!5045618 (= e!3150568 tp!1411696)))

(declare-fun b!5045617 () Bool)

(assert (=> b!5045617 (= e!3150569 (and (inv!77228 (xs!18852 (right!43048 t!4198))) e!3150568))))

(assert (=> b!5045313 (= tp!1411668 (and (inv!77227 (right!43048 t!4198)) e!3150569))))

(assert (= (and b!5045313 ((_ is Node!15526) (right!43048 t!4198))) b!5045616))

(assert (= b!5045617 b!5045618))

(assert (= (and b!5045313 ((_ is Leaf!25753) (right!43048 t!4198))) b!5045617))

(declare-fun m!6080864 () Bool)

(assert (=> b!5045616 m!6080864))

(declare-fun m!6080866 () Bool)

(assert (=> b!5045616 m!6080866))

(declare-fun m!6080868 () Bool)

(assert (=> b!5045617 m!6080868))

(assert (=> b!5045313 m!6080604))

(declare-fun b!5045623 () Bool)

(declare-fun e!3150572 () Bool)

(declare-fun tp_is_empty!36815 () Bool)

(declare-fun tp!1411699 () Bool)

(assert (=> b!5045623 (= e!3150572 (and tp_is_empty!36815 tp!1411699))))

(assert (=> b!5045320 (= tp!1411669 e!3150572)))

(assert (= (and b!5045320 ((_ is Cons!58314) (innerList!15614 (xs!18852 t!4198)))) b!5045623))

(check-sat (not b!5045558) (not b!5045559) (not b!5045463) (not b!5045418) (not b!5045588) (not b!5045387) (not b!5045617) (not b!5045419) (not d!1623927) (not b!5045546) (not b!5045385) (not b!5045509) (not b!5045328) (not b!5045313) (not b!5045547) (not b!5045462) (not d!1623905) (not b!5045613) (not b!5045423) (not d!1623931) (not d!1623873) tp_is_empty!36815 (not b!5045454) (not b!5045505) (not bm!351490) (not b!5045421) (not b!5045356) (not b!5045572) (not b!5045618) (not b!5045330) (not b!5045427) (not bm!351501) (not bm!351502) (not bm!351489) (not d!1623871) (not d!1623933) (not b!5045615) (not b!5045504) (not d!1623877) (not b!5045420) (not d!1623925) (not b!5045571) (not b!5045616) (not b!5045429) (not b!5045333) (not b!5045386) (not b!5045623) (not b!5045570) (not b!5045587) (not b!5045422) (not b!5045355) (not b!5045331) (not b!5045614) (not b!5045535) (not b!5045455))
(check-sat)
(get-model)

(declare-fun d!1623935 () Bool)

(declare-fun res!2149294 () Bool)

(declare-fun e!3150575 () Bool)

(assert (=> d!1623935 (=> (not res!2149294) (not e!3150575))))

(assert (=> d!1623935 (= res!2149294 (<= (size!38933 (list!18939 (xs!18852 (right!43048 t!4198)))) 512))))

(assert (=> d!1623935 (= (inv!77230 (right!43048 t!4198)) e!3150575)))

(declare-fun b!5045628 () Bool)

(declare-fun res!2149295 () Bool)

(assert (=> b!5045628 (=> (not res!2149295) (not e!3150575))))

(assert (=> b!5045628 (= res!2149295 (= (csize!31283 (right!43048 t!4198)) (size!38933 (list!18939 (xs!18852 (right!43048 t!4198))))))))

(declare-fun b!5045629 () Bool)

(assert (=> b!5045629 (= e!3150575 (and (> (csize!31283 (right!43048 t!4198)) 0) (<= (csize!31283 (right!43048 t!4198)) 512)))))

(assert (= (and d!1623935 res!2149294) b!5045628))

(assert (= (and b!5045628 res!2149295) b!5045629))

(assert (=> d!1623935 m!6080804))

(assert (=> d!1623935 m!6080804))

(declare-fun m!6080870 () Bool)

(assert (=> d!1623935 m!6080870))

(assert (=> b!5045628 m!6080804))

(assert (=> b!5045628 m!6080804))

(assert (=> b!5045628 m!6080870))

(assert (=> b!5045333 d!1623935))

(declare-fun b!5045632 () Bool)

(declare-fun res!2149297 () Bool)

(declare-fun e!3150577 () Bool)

(assert (=> b!5045632 (=> (not res!2149297) (not e!3150577))))

(declare-fun lt!2085202 () List!58438)

(assert (=> b!5045632 (= res!2149297 (= (size!38933 lt!2085202) (+ (size!38933 (t!371041 lt!2085134)) (size!38933 lt!2085136))))))

(declare-fun b!5045631 () Bool)

(declare-fun e!3150576 () List!58438)

(assert (=> b!5045631 (= e!3150576 (Cons!58314 (h!64762 (t!371041 lt!2085134)) (++!12739 (t!371041 (t!371041 lt!2085134)) lt!2085136)))))

(declare-fun b!5045630 () Bool)

(assert (=> b!5045630 (= e!3150576 lt!2085136)))

(declare-fun d!1623937 () Bool)

(assert (=> d!1623937 e!3150577))

(declare-fun res!2149296 () Bool)

(assert (=> d!1623937 (=> (not res!2149296) (not e!3150577))))

(assert (=> d!1623937 (= res!2149296 (= (content!10366 lt!2085202) ((_ map or) (content!10366 (t!371041 lt!2085134)) (content!10366 lt!2085136))))))

(assert (=> d!1623937 (= lt!2085202 e!3150576)))

(declare-fun c!864904 () Bool)

(assert (=> d!1623937 (= c!864904 ((_ is Nil!58314) (t!371041 lt!2085134)))))

(assert (=> d!1623937 (= (++!12739 (t!371041 lt!2085134) lt!2085136) lt!2085202)))

(declare-fun b!5045633 () Bool)

(assert (=> b!5045633 (= e!3150577 (or (not (= lt!2085136 Nil!58314)) (= lt!2085202 (t!371041 lt!2085134))))))

(assert (= (and d!1623937 c!864904) b!5045630))

(assert (= (and d!1623937 (not c!864904)) b!5045631))

(assert (= (and d!1623937 res!2149296) b!5045632))

(assert (= (and b!5045632 res!2149297) b!5045633))

(declare-fun m!6080872 () Bool)

(assert (=> b!5045632 m!6080872))

(assert (=> b!5045632 m!6080788))

(assert (=> b!5045632 m!6080754))

(declare-fun m!6080874 () Bool)

(assert (=> b!5045631 m!6080874))

(declare-fun m!6080876 () Bool)

(assert (=> d!1623937 m!6080876))

(declare-fun m!6080878 () Bool)

(assert (=> d!1623937 m!6080878))

(assert (=> d!1623937 m!6080840))

(assert (=> b!5045587 d!1623937))

(declare-fun d!1623939 () Bool)

(declare-fun res!2149304 () Bool)

(declare-fun e!3150580 () Bool)

(assert (=> d!1623939 (=> (not res!2149304) (not e!3150580))))

(assert (=> d!1623939 (= res!2149304 (= (csize!31282 (right!43048 t!4198)) (+ (size!38932 (left!42718 (right!43048 t!4198))) (size!38932 (right!43048 (right!43048 t!4198))))))))

(assert (=> d!1623939 (= (inv!77229 (right!43048 t!4198)) e!3150580)))

(declare-fun b!5045640 () Bool)

(declare-fun res!2149305 () Bool)

(assert (=> b!5045640 (=> (not res!2149305) (not e!3150580))))

(assert (=> b!5045640 (= res!2149305 (and (not (= (left!42718 (right!43048 t!4198)) Empty!15526)) (not (= (right!43048 (right!43048 t!4198)) Empty!15526))))))

(declare-fun b!5045641 () Bool)

(declare-fun res!2149306 () Bool)

(assert (=> b!5045641 (=> (not res!2149306) (not e!3150580))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5045641 (= res!2149306 (= (cheight!15737 (right!43048 t!4198)) (+ (max!0 (height!2105 (left!42718 (right!43048 t!4198))) (height!2105 (right!43048 (right!43048 t!4198)))) 1)))))

(declare-fun b!5045642 () Bool)

(assert (=> b!5045642 (= e!3150580 (<= 0 (cheight!15737 (right!43048 t!4198))))))

(assert (= (and d!1623939 res!2149304) b!5045640))

(assert (= (and b!5045640 res!2149305) b!5045641))

(assert (= (and b!5045641 res!2149306) b!5045642))

(declare-fun m!6080880 () Bool)

(assert (=> d!1623939 m!6080880))

(declare-fun m!6080882 () Bool)

(assert (=> d!1623939 m!6080882))

(declare-fun m!6080884 () Bool)

(assert (=> b!5045641 m!6080884))

(declare-fun m!6080886 () Bool)

(assert (=> b!5045641 m!6080886))

(assert (=> b!5045641 m!6080884))

(assert (=> b!5045641 m!6080886))

(declare-fun m!6080888 () Bool)

(assert (=> b!5045641 m!6080888))

(assert (=> b!5045331 d!1623939))

(declare-fun d!1623941 () Bool)

(declare-fun c!864905 () Bool)

(assert (=> d!1623941 (= c!864905 ((_ is Node!15526) (left!42718 (left!42718 t!4198))))))

(declare-fun e!3150581 () Bool)

(assert (=> d!1623941 (= (inv!77227 (left!42718 (left!42718 t!4198))) e!3150581)))

(declare-fun b!5045643 () Bool)

(assert (=> b!5045643 (= e!3150581 (inv!77229 (left!42718 (left!42718 t!4198))))))

(declare-fun b!5045644 () Bool)

(declare-fun e!3150582 () Bool)

(assert (=> b!5045644 (= e!3150581 e!3150582)))

(declare-fun res!2149307 () Bool)

(assert (=> b!5045644 (= res!2149307 (not ((_ is Leaf!25753) (left!42718 (left!42718 t!4198)))))))

(assert (=> b!5045644 (=> res!2149307 e!3150582)))

(declare-fun b!5045645 () Bool)

(assert (=> b!5045645 (= e!3150582 (inv!77230 (left!42718 (left!42718 t!4198))))))

(assert (= (and d!1623941 c!864905) b!5045643))

(assert (= (and d!1623941 (not c!864905)) b!5045644))

(assert (= (and b!5045644 (not res!2149307)) b!5045645))

(declare-fun m!6080890 () Bool)

(assert (=> b!5045643 m!6080890))

(declare-fun m!6080892 () Bool)

(assert (=> b!5045645 m!6080892))

(assert (=> b!5045613 d!1623941))

(declare-fun d!1623943 () Bool)

(declare-fun c!864906 () Bool)

(assert (=> d!1623943 (= c!864906 ((_ is Node!15526) (right!43048 (left!42718 t!4198))))))

(declare-fun e!3150583 () Bool)

(assert (=> d!1623943 (= (inv!77227 (right!43048 (left!42718 t!4198))) e!3150583)))

(declare-fun b!5045646 () Bool)

(assert (=> b!5045646 (= e!3150583 (inv!77229 (right!43048 (left!42718 t!4198))))))

(declare-fun b!5045647 () Bool)

(declare-fun e!3150584 () Bool)

(assert (=> b!5045647 (= e!3150583 e!3150584)))

(declare-fun res!2149308 () Bool)

(assert (=> b!5045647 (= res!2149308 (not ((_ is Leaf!25753) (right!43048 (left!42718 t!4198)))))))

(assert (=> b!5045647 (=> res!2149308 e!3150584)))

(declare-fun b!5045648 () Bool)

(assert (=> b!5045648 (= e!3150584 (inv!77230 (right!43048 (left!42718 t!4198))))))

(assert (= (and d!1623943 c!864906) b!5045646))

(assert (= (and d!1623943 (not c!864906)) b!5045647))

(assert (= (and b!5045647 (not res!2149308)) b!5045648))

(declare-fun m!6080894 () Bool)

(assert (=> b!5045646 m!6080894))

(declare-fun m!6080896 () Bool)

(assert (=> b!5045648 m!6080896))

(assert (=> b!5045613 d!1623943))

(declare-fun d!1623945 () Bool)

(declare-fun lt!2085203 () Int)

(assert (=> d!1623945 (>= lt!2085203 0)))

(declare-fun e!3150585 () Int)

(assert (=> d!1623945 (= lt!2085203 e!3150585)))

(declare-fun c!864907 () Bool)

(assert (=> d!1623945 (= c!864907 ((_ is Nil!58314) (t!371041 lt!2085134)))))

(assert (=> d!1623945 (= (size!38933 (t!371041 lt!2085134)) lt!2085203)))

(declare-fun b!5045649 () Bool)

(assert (=> b!5045649 (= e!3150585 0)))

(declare-fun b!5045650 () Bool)

(assert (=> b!5045650 (= e!3150585 (+ 1 (size!38933 (t!371041 (t!371041 lt!2085134)))))))

(assert (= (and d!1623945 c!864907) b!5045649))

(assert (= (and d!1623945 (not c!864907)) b!5045650))

(declare-fun m!6080898 () Bool)

(assert (=> b!5045650 m!6080898))

(assert (=> b!5045535 d!1623945))

(declare-fun d!1623947 () Bool)

(declare-fun lt!2085204 () Int)

(assert (=> d!1623947 (>= lt!2085204 0)))

(declare-fun e!3150586 () Int)

(assert (=> d!1623947 (= lt!2085204 e!3150586)))

(declare-fun c!864908 () Bool)

(assert (=> d!1623947 (= c!864908 ((_ is Nil!58314) lt!2085140))))

(assert (=> d!1623947 (= (size!38933 lt!2085140) lt!2085204)))

(declare-fun b!5045651 () Bool)

(assert (=> b!5045651 (= e!3150586 0)))

(declare-fun b!5045652 () Bool)

(assert (=> b!5045652 (= e!3150586 (+ 1 (size!38933 (t!371041 lt!2085140))))))

(assert (= (and d!1623947 c!864908) b!5045651))

(assert (= (and d!1623947 (not c!864908)) b!5045652))

(declare-fun m!6080900 () Bool)

(assert (=> b!5045652 m!6080900))

(assert (=> b!5045356 d!1623947))

(declare-fun d!1623949 () Bool)

(declare-fun lt!2085205 () Int)

(assert (=> d!1623949 (>= lt!2085205 0)))

(declare-fun e!3150587 () Int)

(assert (=> d!1623949 (= lt!2085205 e!3150587)))

(declare-fun c!864909 () Bool)

(assert (=> d!1623949 (= c!864909 ((_ is Nil!58314) (ite c!864812 (_2!34932 lt!2085135) lt!2085134)))))

(assert (=> d!1623949 (= (size!38933 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) lt!2085205)))

(declare-fun b!5045653 () Bool)

(assert (=> b!5045653 (= e!3150587 0)))

(declare-fun b!5045654 () Bool)

(assert (=> b!5045654 (= e!3150587 (+ 1 (size!38933 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)))))))

(assert (= (and d!1623949 c!864909) b!5045653))

(assert (= (and d!1623949 (not c!864909)) b!5045654))

(declare-fun m!6080902 () Bool)

(assert (=> b!5045654 m!6080902))

(assert (=> b!5045356 d!1623949))

(declare-fun d!1623951 () Bool)

(declare-fun lt!2085206 () Int)

(assert (=> d!1623951 (>= lt!2085206 0)))

(declare-fun e!3150588 () Int)

(assert (=> d!1623951 (= lt!2085206 e!3150588)))

(declare-fun c!864910 () Bool)

(assert (=> d!1623951 (= c!864910 ((_ is Nil!58314) (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))

(assert (=> d!1623951 (= (size!38933 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))) lt!2085206)))

(declare-fun b!5045655 () Bool)

(assert (=> b!5045655 (= e!3150588 0)))

(declare-fun b!5045656 () Bool)

(assert (=> b!5045656 (= e!3150588 (+ 1 (size!38933 (t!371041 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))))

(assert (= (and d!1623951 c!864910) b!5045655))

(assert (= (and d!1623951 (not c!864910)) b!5045656))

(declare-fun m!6080904 () Bool)

(assert (=> b!5045656 m!6080904))

(assert (=> b!5045356 d!1623951))

(declare-fun b!5045657 () Bool)

(declare-fun res!2149309 () Bool)

(declare-fun e!3150590 () Bool)

(assert (=> b!5045657 (=> (not res!2149309) (not e!3150590))))

(assert (=> b!5045657 (= res!2149309 (isBalanced!4388 (left!42718 (right!43048 t!4198))))))

(declare-fun b!5045658 () Bool)

(declare-fun res!2149314 () Bool)

(assert (=> b!5045658 (=> (not res!2149314) (not e!3150590))))

(assert (=> b!5045658 (= res!2149314 (not (isEmpty!31556 (left!42718 (right!43048 t!4198)))))))

(declare-fun b!5045659 () Bool)

(declare-fun res!2149313 () Bool)

(assert (=> b!5045659 (=> (not res!2149313) (not e!3150590))))

(assert (=> b!5045659 (= res!2149313 (<= (- (height!2105 (left!42718 (right!43048 t!4198))) (height!2105 (right!43048 (right!43048 t!4198)))) 1))))

(declare-fun b!5045660 () Bool)

(assert (=> b!5045660 (= e!3150590 (not (isEmpty!31556 (right!43048 (right!43048 t!4198)))))))

(declare-fun b!5045661 () Bool)

(declare-fun res!2149312 () Bool)

(assert (=> b!5045661 (=> (not res!2149312) (not e!3150590))))

(assert (=> b!5045661 (= res!2149312 (isBalanced!4388 (right!43048 (right!43048 t!4198))))))

(declare-fun b!5045662 () Bool)

(declare-fun e!3150589 () Bool)

(assert (=> b!5045662 (= e!3150589 e!3150590)))

(declare-fun res!2149310 () Bool)

(assert (=> b!5045662 (=> (not res!2149310) (not e!3150590))))

(assert (=> b!5045662 (= res!2149310 (<= (- 1) (- (height!2105 (left!42718 (right!43048 t!4198))) (height!2105 (right!43048 (right!43048 t!4198))))))))

(declare-fun d!1623953 () Bool)

(declare-fun res!2149311 () Bool)

(assert (=> d!1623953 (=> res!2149311 e!3150589)))

(assert (=> d!1623953 (= res!2149311 (not ((_ is Node!15526) (right!43048 t!4198))))))

(assert (=> d!1623953 (= (isBalanced!4388 (right!43048 t!4198)) e!3150589)))

(assert (= (and d!1623953 (not res!2149311)) b!5045662))

(assert (= (and b!5045662 res!2149310) b!5045659))

(assert (= (and b!5045659 res!2149313) b!5045657))

(assert (= (and b!5045657 res!2149309) b!5045661))

(assert (= (and b!5045661 res!2149312) b!5045658))

(assert (= (and b!5045658 res!2149314) b!5045660))

(declare-fun m!6080906 () Bool)

(assert (=> b!5045658 m!6080906))

(assert (=> b!5045662 m!6080884))

(assert (=> b!5045662 m!6080886))

(declare-fun m!6080908 () Bool)

(assert (=> b!5045661 m!6080908))

(declare-fun m!6080910 () Bool)

(assert (=> b!5045660 m!6080910))

(declare-fun m!6080912 () Bool)

(assert (=> b!5045657 m!6080912))

(assert (=> b!5045659 m!6080884))

(assert (=> b!5045659 m!6080886))

(assert (=> b!5045422 d!1623953))

(declare-fun b!5045681 () Bool)

(declare-fun e!3150604 () List!58438)

(assert (=> b!5045681 (= e!3150604 (ite c!864812 lt!2085134 lt!2085136))))

(declare-fun b!5045682 () Bool)

(declare-fun e!3150603 () List!58438)

(assert (=> b!5045682 (= e!3150603 Nil!58314)))

(declare-fun b!5045683 () Bool)

(declare-fun e!3150601 () Int)

(declare-fun call!351510 () Int)

(assert (=> b!5045683 (= e!3150601 call!351510)))

(declare-fun b!5045684 () Bool)

(assert (=> b!5045684 (= e!3150604 (drop!2641 (t!371041 (ite c!864812 lt!2085134 lt!2085136)) (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1)))))

(declare-fun b!5045685 () Bool)

(declare-fun e!3150602 () Int)

(assert (=> b!5045685 (= e!3150601 e!3150602)))

(declare-fun c!864922 () Bool)

(assert (=> b!5045685 (= c!864922 (>= (ite c!864812 i!618 (- i!618 lt!2085130)) call!351510))))

(declare-fun b!5045686 () Bool)

(declare-fun e!3150605 () Bool)

(declare-fun lt!2085209 () List!58438)

(assert (=> b!5045686 (= e!3150605 (= (size!38933 lt!2085209) e!3150601))))

(declare-fun c!864919 () Bool)

(assert (=> b!5045686 (= c!864919 (<= (ite c!864812 i!618 (- i!618 lt!2085130)) 0))))

(declare-fun b!5045687 () Bool)

(assert (=> b!5045687 (= e!3150602 0)))

(declare-fun d!1623955 () Bool)

(assert (=> d!1623955 e!3150605))

(declare-fun res!2149317 () Bool)

(assert (=> d!1623955 (=> (not res!2149317) (not e!3150605))))

(assert (=> d!1623955 (= res!2149317 (= ((_ map implies) (content!10366 lt!2085209) (content!10366 (ite c!864812 lt!2085134 lt!2085136))) ((as const (InoxSet T!104278)) true)))))

(assert (=> d!1623955 (= lt!2085209 e!3150603)))

(declare-fun c!864921 () Bool)

(assert (=> d!1623955 (= c!864921 ((_ is Nil!58314) (ite c!864812 lt!2085134 lt!2085136)))))

(assert (=> d!1623955 (= (drop!2641 (ite c!864812 lt!2085134 lt!2085136) (ite c!864812 i!618 (- i!618 lt!2085130))) lt!2085209)))

(declare-fun b!5045688 () Bool)

(assert (=> b!5045688 (= e!3150603 e!3150604)))

(declare-fun c!864920 () Bool)

(assert (=> b!5045688 (= c!864920 (<= (ite c!864812 i!618 (- i!618 lt!2085130)) 0))))

(declare-fun bm!351505 () Bool)

(assert (=> bm!351505 (= call!351510 (size!38933 (ite c!864812 lt!2085134 lt!2085136)))))

(declare-fun b!5045689 () Bool)

(assert (=> b!5045689 (= e!3150602 (- call!351510 (ite c!864812 i!618 (- i!618 lt!2085130))))))

(assert (= (and d!1623955 c!864921) b!5045682))

(assert (= (and d!1623955 (not c!864921)) b!5045688))

(assert (= (and b!5045688 c!864920) b!5045681))

(assert (= (and b!5045688 (not c!864920)) b!5045684))

(assert (= (and d!1623955 res!2149317) b!5045686))

(assert (= (and b!5045686 c!864919) b!5045683))

(assert (= (and b!5045686 (not c!864919)) b!5045685))

(assert (= (and b!5045685 c!864922) b!5045687))

(assert (= (and b!5045685 (not c!864922)) b!5045689))

(assert (= (or b!5045683 b!5045685 b!5045689) bm!351505))

(declare-fun m!6080914 () Bool)

(assert (=> b!5045684 m!6080914))

(declare-fun m!6080916 () Bool)

(assert (=> b!5045686 m!6080916))

(declare-fun m!6080918 () Bool)

(assert (=> d!1623955 m!6080918))

(declare-fun m!6080920 () Bool)

(assert (=> d!1623955 m!6080920))

(declare-fun m!6080922 () Bool)

(assert (=> bm!351505 m!6080922))

(assert (=> b!5045386 d!1623955))

(declare-fun b!5045690 () Bool)

(declare-fun e!3150606 () Int)

(declare-fun call!351511 () Int)

(assert (=> b!5045690 (= e!3150606 (+ 1 (IArrayPrimitiveSize!35 (xs!18852 (left!42718 (left!42718 t!4198)))) call!351511))))

(declare-fun d!1623957 () Bool)

(declare-fun lt!2085210 () Int)

(assert (=> d!1623957 (>= lt!2085210 0)))

(declare-fun e!3150607 () Int)

(assert (=> d!1623957 (= lt!2085210 e!3150607)))

(declare-fun c!864923 () Bool)

(assert (=> d!1623957 (= c!864923 ((_ is Node!15526) (left!42718 (left!42718 t!4198))))))

(assert (=> d!1623957 (= (ConcPrimitiveSize!36 (left!42718 (left!42718 t!4198))) lt!2085210)))

(declare-fun b!5045691 () Bool)

(assert (=> b!5045691 (= e!3150607 (+ 1 (ConcPrimitiveSize!36 (left!42718 (left!42718 (left!42718 t!4198)))) (ConcPrimitiveSize!36 (right!43048 (left!42718 (left!42718 t!4198)))) (BigIntAbs!0 (csize!31282 (left!42718 (left!42718 t!4198)))) call!351511))))

(declare-fun b!5045692 () Bool)

(assert (=> b!5045692 (= e!3150607 e!3150606)))

(declare-fun c!864924 () Bool)

(assert (=> b!5045692 (= c!864924 ((_ is Leaf!25753) (left!42718 (left!42718 t!4198))))))

(declare-fun b!5045693 () Bool)

(assert (=> b!5045693 (= e!3150606 0)))

(declare-fun bm!351506 () Bool)

(assert (=> bm!351506 (= call!351511 (BigIntAbs!0 (ite c!864923 (cheight!15737 (left!42718 (left!42718 t!4198))) (csize!31283 (left!42718 (left!42718 t!4198))))))))

(assert (= (and d!1623957 c!864923) b!5045691))

(assert (= (and d!1623957 (not c!864923)) b!5045692))

(assert (= (and b!5045692 c!864924) b!5045690))

(assert (= (and b!5045692 (not c!864924)) b!5045693))

(assert (= (or b!5045691 b!5045690) bm!351506))

(declare-fun m!6080924 () Bool)

(assert (=> b!5045690 m!6080924))

(declare-fun m!6080926 () Bool)

(assert (=> b!5045691 m!6080926))

(declare-fun m!6080928 () Bool)

(assert (=> b!5045691 m!6080928))

(declare-fun m!6080930 () Bool)

(assert (=> b!5045691 m!6080930))

(declare-fun m!6080932 () Bool)

(assert (=> bm!351506 m!6080932))

(assert (=> b!5045455 d!1623957))

(declare-fun b!5045694 () Bool)

(declare-fun e!3150608 () Int)

(declare-fun call!351512 () Int)

(assert (=> b!5045694 (= e!3150608 (+ 1 (IArrayPrimitiveSize!35 (xs!18852 (right!43048 (left!42718 t!4198)))) call!351512))))

(declare-fun d!1623959 () Bool)

(declare-fun lt!2085211 () Int)

(assert (=> d!1623959 (>= lt!2085211 0)))

(declare-fun e!3150609 () Int)

(assert (=> d!1623959 (= lt!2085211 e!3150609)))

(declare-fun c!864925 () Bool)

(assert (=> d!1623959 (= c!864925 ((_ is Node!15526) (right!43048 (left!42718 t!4198))))))

(assert (=> d!1623959 (= (ConcPrimitiveSize!36 (right!43048 (left!42718 t!4198))) lt!2085211)))

(declare-fun b!5045695 () Bool)

(assert (=> b!5045695 (= e!3150609 (+ 1 (ConcPrimitiveSize!36 (left!42718 (right!43048 (left!42718 t!4198)))) (ConcPrimitiveSize!36 (right!43048 (right!43048 (left!42718 t!4198)))) (BigIntAbs!0 (csize!31282 (right!43048 (left!42718 t!4198)))) call!351512))))

(declare-fun b!5045696 () Bool)

(assert (=> b!5045696 (= e!3150609 e!3150608)))

(declare-fun c!864926 () Bool)

(assert (=> b!5045696 (= c!864926 ((_ is Leaf!25753) (right!43048 (left!42718 t!4198))))))

(declare-fun b!5045697 () Bool)

(assert (=> b!5045697 (= e!3150608 0)))

(declare-fun bm!351507 () Bool)

(assert (=> bm!351507 (= call!351512 (BigIntAbs!0 (ite c!864925 (cheight!15737 (right!43048 (left!42718 t!4198))) (csize!31283 (right!43048 (left!42718 t!4198))))))))

(assert (= (and d!1623959 c!864925) b!5045695))

(assert (= (and d!1623959 (not c!864925)) b!5045696))

(assert (= (and b!5045696 c!864926) b!5045694))

(assert (= (and b!5045696 (not c!864926)) b!5045697))

(assert (= (or b!5045695 b!5045694) bm!351507))

(declare-fun m!6080934 () Bool)

(assert (=> b!5045694 m!6080934))

(declare-fun m!6080936 () Bool)

(assert (=> b!5045695 m!6080936))

(declare-fun m!6080938 () Bool)

(assert (=> b!5045695 m!6080938))

(declare-fun m!6080940 () Bool)

(assert (=> b!5045695 m!6080940))

(declare-fun m!6080942 () Bool)

(assert (=> bm!351507 m!6080942))

(assert (=> b!5045455 d!1623959))

(declare-fun d!1623961 () Bool)

(assert (=> d!1623961 (= (BigIntAbs!0 (csize!31282 (left!42718 t!4198))) (ite (>= (csize!31282 (left!42718 t!4198)) 0) (csize!31282 (left!42718 t!4198)) (- (csize!31282 (left!42718 t!4198)))))))

(assert (=> b!5045455 d!1623961))

(declare-fun d!1623963 () Bool)

(assert (=> d!1623963 (= (height!2105 (left!42718 t!4198)) (ite ((_ is Empty!15526) (left!42718 t!4198)) 0 (ite ((_ is Leaf!25753) (left!42718 t!4198)) 1 (cheight!15737 (left!42718 t!4198)))))))

(assert (=> b!5045420 d!1623963))

(declare-fun d!1623965 () Bool)

(assert (=> d!1623965 (= (height!2105 (right!43048 t!4198)) (ite ((_ is Empty!15526) (right!43048 t!4198)) 0 (ite ((_ is Leaf!25753) (right!43048 t!4198)) 1 (cheight!15737 (right!43048 t!4198)))))))

(assert (=> b!5045420 d!1623965))

(assert (=> b!5045509 d!1623911))

(declare-fun b!5045698 () Bool)

(declare-fun res!2149318 () Bool)

(declare-fun e!3150611 () Bool)

(assert (=> b!5045698 (=> (not res!2149318) (not e!3150611))))

(declare-fun lt!2085212 () tuple2!63258)

(assert (=> b!5045698 (= res!2149318 (= (_1!34932 lt!2085212) (take!834 (ite c!864872 lt!2085134 lt!2085136) e!3150511)))))

(declare-fun b!5045699 () Bool)

(assert (=> b!5045699 (= e!3150611 (= (_2!34932 lt!2085212) (drop!2641 (ite c!864872 lt!2085134 lt!2085136) e!3150511)))))

(declare-fun lt!2085213 () tuple2!63258)

(declare-fun b!5045700 () Bool)

(assert (=> b!5045700 (= lt!2085213 (splitAtIndex!219 (t!371041 (ite c!864872 lt!2085134 lt!2085136)) (- e!3150511 1)))))

(declare-fun e!3150612 () tuple2!63258)

(assert (=> b!5045700 (= e!3150612 (tuple2!63259 (Cons!58314 (h!64762 (ite c!864872 lt!2085134 lt!2085136)) (_1!34932 lt!2085213)) (_2!34932 lt!2085213)))))

(declare-fun b!5045701 () Bool)

(assert (=> b!5045701 (= e!3150612 (tuple2!63259 Nil!58314 (ite c!864872 lt!2085134 lt!2085136)))))

(declare-fun b!5045702 () Bool)

(declare-fun e!3150610 () tuple2!63258)

(assert (=> b!5045702 (= e!3150610 e!3150612)))

(declare-fun c!864928 () Bool)

(assert (=> b!5045702 (= c!864928 (<= e!3150511 0))))

(declare-fun b!5045703 () Bool)

(assert (=> b!5045703 (= e!3150610 (tuple2!63259 Nil!58314 Nil!58314))))

(declare-fun d!1623967 () Bool)

(assert (=> d!1623967 e!3150611))

(declare-fun res!2149319 () Bool)

(assert (=> d!1623967 (=> (not res!2149319) (not e!3150611))))

(assert (=> d!1623967 (= res!2149319 (= (++!12739 (_1!34932 lt!2085212) (_2!34932 lt!2085212)) (ite c!864872 lt!2085134 lt!2085136)))))

(assert (=> d!1623967 (= lt!2085212 e!3150610)))

(declare-fun c!864927 () Bool)

(assert (=> d!1623967 (= c!864927 ((_ is Nil!58314) (ite c!864872 lt!2085134 lt!2085136)))))

(assert (=> d!1623967 (= (splitAtIndex!219 (ite c!864872 lt!2085134 lt!2085136) e!3150511) lt!2085212)))

(assert (= (and d!1623967 c!864927) b!5045703))

(assert (= (and d!1623967 (not c!864927)) b!5045702))

(assert (= (and b!5045702 c!864928) b!5045701))

(assert (= (and b!5045702 (not c!864928)) b!5045700))

(assert (= (and d!1623967 res!2149319) b!5045698))

(assert (= (and b!5045698 res!2149318) b!5045699))

(declare-fun m!6080944 () Bool)

(assert (=> b!5045698 m!6080944))

(declare-fun m!6080946 () Bool)

(assert (=> b!5045699 m!6080946))

(declare-fun m!6080948 () Bool)

(assert (=> b!5045700 m!6080948))

(declare-fun m!6080950 () Bool)

(assert (=> d!1623967 m!6080950))

(assert (=> bm!351501 d!1623967))

(declare-fun d!1623969 () Bool)

(declare-fun lt!2085216 () Bool)

(declare-fun isEmpty!31557 (List!58438) Bool)

(assert (=> d!1623969 (= lt!2085216 (isEmpty!31557 (list!18937 (left!42718 t!4198))))))

(assert (=> d!1623969 (= lt!2085216 (= (size!38932 (left!42718 t!4198)) 0))))

(assert (=> d!1623969 (= (isEmpty!31556 (left!42718 t!4198)) lt!2085216)))

(declare-fun bs!1189130 () Bool)

(assert (= bs!1189130 d!1623969))

(assert (=> bs!1189130 m!6080584))

(assert (=> bs!1189130 m!6080584))

(declare-fun m!6080952 () Bool)

(assert (=> bs!1189130 m!6080952))

(assert (=> bs!1189130 m!6080594))

(assert (=> b!5045419 d!1623969))

(declare-fun d!1623971 () Bool)

(declare-fun res!2149320 () Bool)

(declare-fun e!3150613 () Bool)

(assert (=> d!1623971 (=> (not res!2149320) (not e!3150613))))

(assert (=> d!1623971 (= res!2149320 (= (csize!31282 t!4198) (+ (size!38932 (left!42718 t!4198)) (size!38932 (right!43048 t!4198)))))))

(assert (=> d!1623971 (= (inv!77229 t!4198) e!3150613)))

(declare-fun b!5045704 () Bool)

(declare-fun res!2149321 () Bool)

(assert (=> b!5045704 (=> (not res!2149321) (not e!3150613))))

(assert (=> b!5045704 (= res!2149321 (and (not (= (left!42718 t!4198) Empty!15526)) (not (= (right!43048 t!4198) Empty!15526))))))

(declare-fun b!5045705 () Bool)

(declare-fun res!2149322 () Bool)

(assert (=> b!5045705 (=> (not res!2149322) (not e!3150613))))

(assert (=> b!5045705 (= res!2149322 (= (cheight!15737 t!4198) (+ (max!0 (height!2105 (left!42718 t!4198)) (height!2105 (right!43048 t!4198))) 1)))))

(declare-fun b!5045706 () Bool)

(assert (=> b!5045706 (= e!3150613 (<= 0 (cheight!15737 t!4198)))))

(assert (= (and d!1623971 res!2149320) b!5045704))

(assert (= (and b!5045704 res!2149321) b!5045705))

(assert (= (and b!5045705 res!2149322) b!5045706))

(assert (=> d!1623971 m!6080594))

(declare-fun m!6080954 () Bool)

(assert (=> d!1623971 m!6080954))

(assert (=> b!5045705 m!6080692))

(assert (=> b!5045705 m!6080694))

(assert (=> b!5045705 m!6080692))

(assert (=> b!5045705 m!6080694))

(declare-fun m!6080956 () Bool)

(assert (=> b!5045705 m!6080956))

(assert (=> b!5045427 d!1623971))

(declare-fun d!1623973 () Bool)

(declare-fun lt!2085217 () Int)

(assert (=> d!1623973 (>= lt!2085217 0)))

(declare-fun e!3150614 () Int)

(assert (=> d!1623973 (= lt!2085217 e!3150614)))

(declare-fun c!864929 () Bool)

(assert (=> d!1623973 (= c!864929 ((_ is Nil!58314) (list!18937 t!4198)))))

(assert (=> d!1623973 (= (size!38933 (list!18937 t!4198)) lt!2085217)))

(declare-fun b!5045707 () Bool)

(assert (=> b!5045707 (= e!3150614 0)))

(declare-fun b!5045708 () Bool)

(assert (=> b!5045708 (= e!3150614 (+ 1 (size!38933 (t!371041 (list!18937 t!4198)))))))

(assert (= (and d!1623973 c!864929) b!5045707))

(assert (= (and d!1623973 (not c!864929)) b!5045708))

(declare-fun m!6080958 () Bool)

(assert (=> b!5045708 m!6080958))

(assert (=> d!1623933 d!1623973))

(declare-fun d!1623975 () Bool)

(declare-fun c!864930 () Bool)

(assert (=> d!1623975 (= c!864930 ((_ is Empty!15526) t!4198))))

(declare-fun e!3150615 () List!58438)

(assert (=> d!1623975 (= (list!18937 t!4198) e!3150615)))

(declare-fun b!5045709 () Bool)

(assert (=> b!5045709 (= e!3150615 Nil!58314)))

(declare-fun b!5045710 () Bool)

(declare-fun e!3150616 () List!58438)

(assert (=> b!5045710 (= e!3150615 e!3150616)))

(declare-fun c!864931 () Bool)

(assert (=> b!5045710 (= c!864931 ((_ is Leaf!25753) t!4198))))

(declare-fun b!5045712 () Bool)

(assert (=> b!5045712 (= e!3150616 (++!12739 (list!18937 (left!42718 t!4198)) (list!18937 (right!43048 t!4198))))))

(declare-fun b!5045711 () Bool)

(assert (=> b!5045711 (= e!3150616 (list!18939 (xs!18852 t!4198)))))

(assert (= (and d!1623975 c!864930) b!5045709))

(assert (= (and d!1623975 (not c!864930)) b!5045710))

(assert (= (and b!5045710 c!864931) b!5045711))

(assert (= (and b!5045710 (not c!864931)) b!5045712))

(assert (=> b!5045712 m!6080584))

(assert (=> b!5045712 m!6080592))

(assert (=> b!5045712 m!6080584))

(assert (=> b!5045712 m!6080592))

(declare-fun m!6080960 () Bool)

(assert (=> b!5045712 m!6080960))

(declare-fun m!6080962 () Bool)

(assert (=> b!5045711 m!6080962))

(assert (=> d!1623933 d!1623975))

(declare-fun d!1623977 () Bool)

(assert (=> d!1623977 (= (BigIntAbs!0 (ite c!864852 (cheight!15737 t!4198) (csize!31283 t!4198))) (ite (>= (ite c!864852 (cheight!15737 t!4198) (csize!31283 t!4198)) 0) (ite c!864852 (cheight!15737 t!4198) (csize!31283 t!4198)) (- (ite c!864852 (cheight!15737 t!4198) (csize!31283 t!4198)))))))

(assert (=> bm!351490 d!1623977))

(declare-fun d!1623979 () Bool)

(declare-fun c!864932 () Bool)

(assert (=> d!1623979 (= c!864932 ((_ is Node!15526) (left!42718 (right!43048 t!4198))))))

(declare-fun e!3150617 () Bool)

(assert (=> d!1623979 (= (inv!77227 (left!42718 (right!43048 t!4198))) e!3150617)))

(declare-fun b!5045713 () Bool)

(assert (=> b!5045713 (= e!3150617 (inv!77229 (left!42718 (right!43048 t!4198))))))

(declare-fun b!5045714 () Bool)

(declare-fun e!3150618 () Bool)

(assert (=> b!5045714 (= e!3150617 e!3150618)))

(declare-fun res!2149323 () Bool)

(assert (=> b!5045714 (= res!2149323 (not ((_ is Leaf!25753) (left!42718 (right!43048 t!4198)))))))

(assert (=> b!5045714 (=> res!2149323 e!3150618)))

(declare-fun b!5045715 () Bool)

(assert (=> b!5045715 (= e!3150618 (inv!77230 (left!42718 (right!43048 t!4198))))))

(assert (= (and d!1623979 c!864932) b!5045713))

(assert (= (and d!1623979 (not c!864932)) b!5045714))

(assert (= (and b!5045714 (not res!2149323)) b!5045715))

(declare-fun m!6080964 () Bool)

(assert (=> b!5045713 m!6080964))

(declare-fun m!6080966 () Bool)

(assert (=> b!5045715 m!6080966))

(assert (=> b!5045616 d!1623979))

(declare-fun d!1623981 () Bool)

(declare-fun c!864933 () Bool)

(assert (=> d!1623981 (= c!864933 ((_ is Node!15526) (right!43048 (right!43048 t!4198))))))

(declare-fun e!3150619 () Bool)

(assert (=> d!1623981 (= (inv!77227 (right!43048 (right!43048 t!4198))) e!3150619)))

(declare-fun b!5045716 () Bool)

(assert (=> b!5045716 (= e!3150619 (inv!77229 (right!43048 (right!43048 t!4198))))))

(declare-fun b!5045717 () Bool)

(declare-fun e!3150620 () Bool)

(assert (=> b!5045717 (= e!3150619 e!3150620)))

(declare-fun res!2149324 () Bool)

(assert (=> b!5045717 (= res!2149324 (not ((_ is Leaf!25753) (right!43048 (right!43048 t!4198)))))))

(assert (=> b!5045717 (=> res!2149324 e!3150620)))

(declare-fun b!5045718 () Bool)

(assert (=> b!5045718 (= e!3150620 (inv!77230 (right!43048 (right!43048 t!4198))))))

(assert (= (and d!1623981 c!864933) b!5045716))

(assert (= (and d!1623981 (not c!864933)) b!5045717))

(assert (= (and b!5045717 (not res!2149324)) b!5045718))

(declare-fun m!6080968 () Bool)

(assert (=> b!5045716 m!6080968))

(declare-fun m!6080970 () Bool)

(assert (=> b!5045718 m!6080970))

(assert (=> b!5045616 d!1623981))

(declare-fun b!5045721 () Bool)

(declare-fun res!2149326 () Bool)

(declare-fun e!3150622 () Bool)

(assert (=> b!5045721 (=> (not res!2149326) (not e!3150622))))

(declare-fun lt!2085218 () List!58438)

(assert (=> b!5045721 (= res!2149326 (= (size!38933 lt!2085218) (+ (size!38933 (_1!34932 lt!2085196)) (size!38933 (_2!34932 lt!2085196)))))))

(declare-fun b!5045720 () Bool)

(declare-fun e!3150621 () List!58438)

(assert (=> b!5045720 (= e!3150621 (Cons!58314 (h!64762 (_1!34932 lt!2085196)) (++!12739 (t!371041 (_1!34932 lt!2085196)) (_2!34932 lt!2085196))))))

(declare-fun b!5045719 () Bool)

(assert (=> b!5045719 (= e!3150621 (_2!34932 lt!2085196))))

(declare-fun d!1623983 () Bool)

(assert (=> d!1623983 e!3150622))

(declare-fun res!2149325 () Bool)

(assert (=> d!1623983 (=> (not res!2149325) (not e!3150622))))

(assert (=> d!1623983 (= res!2149325 (= (content!10366 lt!2085218) ((_ map or) (content!10366 (_1!34932 lt!2085196)) (content!10366 (_2!34932 lt!2085196)))))))

(assert (=> d!1623983 (= lt!2085218 e!3150621)))

(declare-fun c!864934 () Bool)

(assert (=> d!1623983 (= c!864934 ((_ is Nil!58314) (_1!34932 lt!2085196)))))

(assert (=> d!1623983 (= (++!12739 (_1!34932 lt!2085196) (_2!34932 lt!2085196)) lt!2085218)))

(declare-fun b!5045722 () Bool)

(assert (=> b!5045722 (= e!3150622 (or (not (= (_2!34932 lt!2085196) Nil!58314)) (= lt!2085218 (_1!34932 lt!2085196))))))

(assert (= (and d!1623983 c!864934) b!5045719))

(assert (= (and d!1623983 (not c!864934)) b!5045720))

(assert (= (and d!1623983 res!2149325) b!5045721))

(assert (= (and b!5045721 res!2149326) b!5045722))

(declare-fun m!6080972 () Bool)

(assert (=> b!5045721 m!6080972))

(declare-fun m!6080974 () Bool)

(assert (=> b!5045721 m!6080974))

(declare-fun m!6080976 () Bool)

(assert (=> b!5045721 m!6080976))

(declare-fun m!6080978 () Bool)

(assert (=> b!5045720 m!6080978))

(declare-fun m!6080980 () Bool)

(assert (=> d!1623983 m!6080980))

(declare-fun m!6080982 () Bool)

(assert (=> d!1623983 m!6080982))

(declare-fun m!6080984 () Bool)

(assert (=> d!1623983 m!6080984))

(assert (=> d!1623927 d!1623983))

(declare-fun d!1623985 () Bool)

(declare-fun res!2149327 () Bool)

(declare-fun e!3150623 () Bool)

(assert (=> d!1623985 (=> (not res!2149327) (not e!3150623))))

(assert (=> d!1623985 (= res!2149327 (<= (size!38933 (list!18939 (xs!18852 (left!42718 t!4198)))) 512))))

(assert (=> d!1623985 (= (inv!77230 (left!42718 t!4198)) e!3150623)))

(declare-fun b!5045723 () Bool)

(declare-fun res!2149328 () Bool)

(assert (=> b!5045723 (=> (not res!2149328) (not e!3150623))))

(assert (=> b!5045723 (= res!2149328 (= (csize!31283 (left!42718 t!4198)) (size!38933 (list!18939 (xs!18852 (left!42718 t!4198))))))))

(declare-fun b!5045724 () Bool)

(assert (=> b!5045724 (= e!3150623 (and (> (csize!31283 (left!42718 t!4198)) 0) (<= (csize!31283 (left!42718 t!4198)) 512)))))

(assert (= (and d!1623985 res!2149327) b!5045723))

(assert (= (and b!5045723 res!2149328) b!5045724))

(assert (=> d!1623985 m!6080796))

(assert (=> d!1623985 m!6080796))

(declare-fun m!6080986 () Bool)

(assert (=> d!1623985 m!6080986))

(assert (=> b!5045723 m!6080796))

(assert (=> b!5045723 m!6080796))

(assert (=> b!5045723 m!6080986))

(assert (=> b!5045330 d!1623985))

(assert (=> b!5045313 d!1623867))

(assert (=> b!5045313 d!1623869))

(declare-fun d!1623987 () Bool)

(declare-fun lt!2085221 () Int)

(assert (=> d!1623987 (>= lt!2085221 0)))

(declare-fun ListPrimitiveSize!382 (List!58438) Int)

(assert (=> d!1623987 (= lt!2085221 (+ 1 (ListPrimitiveSize!382 (innerList!15614 (xs!18852 t!4198)))))))

(assert (=> d!1623987 (= (IArrayPrimitiveSize!35 (xs!18852 t!4198)) lt!2085221)))

(declare-fun bs!1189131 () Bool)

(assert (= bs!1189131 d!1623987))

(declare-fun m!6080988 () Bool)

(assert (=> bs!1189131 m!6080988))

(assert (=> b!5045462 d!1623987))

(declare-fun d!1623989 () Bool)

(declare-fun res!2149329 () Bool)

(declare-fun e!3150624 () Bool)

(assert (=> d!1623989 (=> (not res!2149329) (not e!3150624))))

(assert (=> d!1623989 (= res!2149329 (= (csize!31282 (left!42718 t!4198)) (+ (size!38932 (left!42718 (left!42718 t!4198))) (size!38932 (right!43048 (left!42718 t!4198))))))))

(assert (=> d!1623989 (= (inv!77229 (left!42718 t!4198)) e!3150624)))

(declare-fun b!5045725 () Bool)

(declare-fun res!2149330 () Bool)

(assert (=> b!5045725 (=> (not res!2149330) (not e!3150624))))

(assert (=> b!5045725 (= res!2149330 (and (not (= (left!42718 (left!42718 t!4198)) Empty!15526)) (not (= (right!43048 (left!42718 t!4198)) Empty!15526))))))

(declare-fun b!5045726 () Bool)

(declare-fun res!2149331 () Bool)

(assert (=> b!5045726 (=> (not res!2149331) (not e!3150624))))

(assert (=> b!5045726 (= res!2149331 (= (cheight!15737 (left!42718 t!4198)) (+ (max!0 (height!2105 (left!42718 (left!42718 t!4198))) (height!2105 (right!43048 (left!42718 t!4198)))) 1)))))

(declare-fun b!5045727 () Bool)

(assert (=> b!5045727 (= e!3150624 (<= 0 (cheight!15737 (left!42718 t!4198))))))

(assert (= (and d!1623989 res!2149329) b!5045725))

(assert (= (and b!5045725 res!2149330) b!5045726))

(assert (= (and b!5045726 res!2149331) b!5045727))

(declare-fun m!6080990 () Bool)

(assert (=> d!1623989 m!6080990))

(declare-fun m!6080992 () Bool)

(assert (=> d!1623989 m!6080992))

(declare-fun m!6080994 () Bool)

(assert (=> b!5045726 m!6080994))

(declare-fun m!6080996 () Bool)

(assert (=> b!5045726 m!6080996))

(assert (=> b!5045726 m!6080994))

(assert (=> b!5045726 m!6080996))

(declare-fun m!6080998 () Bool)

(assert (=> b!5045726 m!6080998))

(assert (=> b!5045328 d!1623989))

(declare-fun d!1623991 () Bool)

(declare-fun lt!2085222 () Int)

(assert (=> d!1623991 (>= lt!2085222 0)))

(declare-fun e!3150625 () Int)

(assert (=> d!1623991 (= lt!2085222 e!3150625)))

(declare-fun c!864935 () Bool)

(assert (=> d!1623991 (= c!864935 ((_ is Nil!58314) (innerList!15614 (xs!18852 t!4198))))))

(assert (=> d!1623991 (= (size!38933 (innerList!15614 (xs!18852 t!4198))) lt!2085222)))

(declare-fun b!5045728 () Bool)

(assert (=> b!5045728 (= e!3150625 0)))

(declare-fun b!5045729 () Bool)

(assert (=> b!5045729 (= e!3150625 (+ 1 (size!38933 (t!371041 (innerList!15614 (xs!18852 t!4198))))))))

(assert (= (and d!1623991 c!864935) b!5045728))

(assert (= (and d!1623991 (not c!864935)) b!5045729))

(declare-fun m!6081000 () Bool)

(assert (=> b!5045729 m!6081000))

(assert (=> d!1623871 d!1623991))

(assert (=> b!5045504 d!1623911))

(declare-fun d!1623993 () Bool)

(declare-fun lt!2085223 () Int)

(assert (=> d!1623993 (>= lt!2085223 0)))

(declare-fun e!3150626 () Int)

(assert (=> d!1623993 (= lt!2085223 e!3150626)))

(declare-fun c!864936 () Bool)

(assert (=> d!1623993 (= c!864936 ((_ is Nil!58314) lt!2085136))))

(assert (=> d!1623993 (= (size!38933 lt!2085136) lt!2085223)))

(declare-fun b!5045730 () Bool)

(assert (=> b!5045730 (= e!3150626 0)))

(declare-fun b!5045731 () Bool)

(assert (=> b!5045731 (= e!3150626 (+ 1 (size!38933 (t!371041 lt!2085136))))))

(assert (= (and d!1623993 c!864936) b!5045730))

(assert (= (and d!1623993 (not c!864936)) b!5045731))

(declare-fun m!6081002 () Bool)

(assert (=> b!5045731 m!6081002))

(assert (=> b!5045504 d!1623993))

(declare-fun b!5045734 () Bool)

(declare-fun res!2149333 () Bool)

(declare-fun e!3150628 () Bool)

(assert (=> b!5045734 (=> (not res!2149333) (not e!3150628))))

(declare-fun lt!2085224 () List!58438)

(assert (=> b!5045734 (= res!2149333 (= (size!38933 lt!2085224) (+ (size!38933 (list!18937 (left!42718 (left!42718 t!4198)))) (size!38933 (list!18937 (right!43048 (left!42718 t!4198)))))))))

(declare-fun b!5045733 () Bool)

(declare-fun e!3150627 () List!58438)

(assert (=> b!5045733 (= e!3150627 (Cons!58314 (h!64762 (list!18937 (left!42718 (left!42718 t!4198)))) (++!12739 (t!371041 (list!18937 (left!42718 (left!42718 t!4198)))) (list!18937 (right!43048 (left!42718 t!4198))))))))

(declare-fun b!5045732 () Bool)

(assert (=> b!5045732 (= e!3150627 (list!18937 (right!43048 (left!42718 t!4198))))))

(declare-fun d!1623995 () Bool)

(assert (=> d!1623995 e!3150628))

(declare-fun res!2149332 () Bool)

(assert (=> d!1623995 (=> (not res!2149332) (not e!3150628))))

(assert (=> d!1623995 (= res!2149332 (= (content!10366 lt!2085224) ((_ map or) (content!10366 (list!18937 (left!42718 (left!42718 t!4198)))) (content!10366 (list!18937 (right!43048 (left!42718 t!4198)))))))))

(assert (=> d!1623995 (= lt!2085224 e!3150627)))

(declare-fun c!864937 () Bool)

(assert (=> d!1623995 (= c!864937 ((_ is Nil!58314) (list!18937 (left!42718 (left!42718 t!4198)))))))

(assert (=> d!1623995 (= (++!12739 (list!18937 (left!42718 (left!42718 t!4198))) (list!18937 (right!43048 (left!42718 t!4198)))) lt!2085224)))

(declare-fun b!5045735 () Bool)

(assert (=> b!5045735 (= e!3150628 (or (not (= (list!18937 (right!43048 (left!42718 t!4198))) Nil!58314)) (= lt!2085224 (list!18937 (left!42718 (left!42718 t!4198))))))))

(assert (= (and d!1623995 c!864937) b!5045732))

(assert (= (and d!1623995 (not c!864937)) b!5045733))

(assert (= (and d!1623995 res!2149332) b!5045734))

(assert (= (and b!5045734 res!2149333) b!5045735))

(declare-fun m!6081004 () Bool)

(assert (=> b!5045734 m!6081004))

(assert (=> b!5045734 m!6080790))

(declare-fun m!6081006 () Bool)

(assert (=> b!5045734 m!6081006))

(assert (=> b!5045734 m!6080792))

(declare-fun m!6081008 () Bool)

(assert (=> b!5045734 m!6081008))

(assert (=> b!5045733 m!6080792))

(declare-fun m!6081010 () Bool)

(assert (=> b!5045733 m!6081010))

(declare-fun m!6081012 () Bool)

(assert (=> d!1623995 m!6081012))

(assert (=> d!1623995 m!6080790))

(declare-fun m!6081014 () Bool)

(assert (=> d!1623995 m!6081014))

(assert (=> d!1623995 m!6080792))

(declare-fun m!6081016 () Bool)

(assert (=> d!1623995 m!6081016))

(assert (=> b!5045547 d!1623995))

(declare-fun d!1623997 () Bool)

(declare-fun c!864938 () Bool)

(assert (=> d!1623997 (= c!864938 ((_ is Empty!15526) (left!42718 (left!42718 t!4198))))))

(declare-fun e!3150629 () List!58438)

(assert (=> d!1623997 (= (list!18937 (left!42718 (left!42718 t!4198))) e!3150629)))

(declare-fun b!5045736 () Bool)

(assert (=> b!5045736 (= e!3150629 Nil!58314)))

(declare-fun b!5045737 () Bool)

(declare-fun e!3150630 () List!58438)

(assert (=> b!5045737 (= e!3150629 e!3150630)))

(declare-fun c!864939 () Bool)

(assert (=> b!5045737 (= c!864939 ((_ is Leaf!25753) (left!42718 (left!42718 t!4198))))))

(declare-fun b!5045739 () Bool)

(assert (=> b!5045739 (= e!3150630 (++!12739 (list!18937 (left!42718 (left!42718 (left!42718 t!4198)))) (list!18937 (right!43048 (left!42718 (left!42718 t!4198))))))))

(declare-fun b!5045738 () Bool)

(assert (=> b!5045738 (= e!3150630 (list!18939 (xs!18852 (left!42718 (left!42718 t!4198)))))))

(assert (= (and d!1623997 c!864938) b!5045736))

(assert (= (and d!1623997 (not c!864938)) b!5045737))

(assert (= (and b!5045737 c!864939) b!5045738))

(assert (= (and b!5045737 (not c!864939)) b!5045739))

(declare-fun m!6081018 () Bool)

(assert (=> b!5045739 m!6081018))

(declare-fun m!6081020 () Bool)

(assert (=> b!5045739 m!6081020))

(assert (=> b!5045739 m!6081018))

(assert (=> b!5045739 m!6081020))

(declare-fun m!6081022 () Bool)

(assert (=> b!5045739 m!6081022))

(declare-fun m!6081024 () Bool)

(assert (=> b!5045738 m!6081024))

(assert (=> b!5045547 d!1623997))

(declare-fun d!1623999 () Bool)

(declare-fun c!864940 () Bool)

(assert (=> d!1623999 (= c!864940 ((_ is Empty!15526) (right!43048 (left!42718 t!4198))))))

(declare-fun e!3150631 () List!58438)

(assert (=> d!1623999 (= (list!18937 (right!43048 (left!42718 t!4198))) e!3150631)))

(declare-fun b!5045740 () Bool)

(assert (=> b!5045740 (= e!3150631 Nil!58314)))

(declare-fun b!5045741 () Bool)

(declare-fun e!3150632 () List!58438)

(assert (=> b!5045741 (= e!3150631 e!3150632)))

(declare-fun c!864941 () Bool)

(assert (=> b!5045741 (= c!864941 ((_ is Leaf!25753) (right!43048 (left!42718 t!4198))))))

(declare-fun b!5045743 () Bool)

(assert (=> b!5045743 (= e!3150632 (++!12739 (list!18937 (left!42718 (right!43048 (left!42718 t!4198)))) (list!18937 (right!43048 (right!43048 (left!42718 t!4198))))))))

(declare-fun b!5045742 () Bool)

(assert (=> b!5045742 (= e!3150632 (list!18939 (xs!18852 (right!43048 (left!42718 t!4198)))))))

(assert (= (and d!1623999 c!864940) b!5045740))

(assert (= (and d!1623999 (not c!864940)) b!5045741))

(assert (= (and b!5045741 c!864941) b!5045742))

(assert (= (and b!5045741 (not c!864941)) b!5045743))

(declare-fun m!6081026 () Bool)

(assert (=> b!5045743 m!6081026))

(declare-fun m!6081028 () Bool)

(assert (=> b!5045743 m!6081028))

(assert (=> b!5045743 m!6081026))

(assert (=> b!5045743 m!6081028))

(declare-fun m!6081030 () Bool)

(assert (=> b!5045743 m!6081030))

(declare-fun m!6081032 () Bool)

(assert (=> b!5045742 m!6081032))

(assert (=> b!5045547 d!1623999))

(declare-fun b!5045746 () Bool)

(declare-fun res!2149335 () Bool)

(declare-fun e!3150634 () Bool)

(assert (=> b!5045746 (=> (not res!2149335) (not e!3150634))))

(declare-fun lt!2085225 () List!58438)

(assert (=> b!5045746 (= res!2149335 (= (size!38933 lt!2085225) (+ (size!38933 (list!18937 (left!42718 (right!43048 t!4198)))) (size!38933 (list!18937 (right!43048 (right!43048 t!4198)))))))))

(declare-fun b!5045745 () Bool)

(declare-fun e!3150633 () List!58438)

(assert (=> b!5045745 (= e!3150633 (Cons!58314 (h!64762 (list!18937 (left!42718 (right!43048 t!4198)))) (++!12739 (t!371041 (list!18937 (left!42718 (right!43048 t!4198)))) (list!18937 (right!43048 (right!43048 t!4198))))))))

(declare-fun b!5045744 () Bool)

(assert (=> b!5045744 (= e!3150633 (list!18937 (right!43048 (right!43048 t!4198))))))

(declare-fun d!1624001 () Bool)

(assert (=> d!1624001 e!3150634))

(declare-fun res!2149334 () Bool)

(assert (=> d!1624001 (=> (not res!2149334) (not e!3150634))))

(assert (=> d!1624001 (= res!2149334 (= (content!10366 lt!2085225) ((_ map or) (content!10366 (list!18937 (left!42718 (right!43048 t!4198)))) (content!10366 (list!18937 (right!43048 (right!43048 t!4198)))))))))

(assert (=> d!1624001 (= lt!2085225 e!3150633)))

(declare-fun c!864942 () Bool)

(assert (=> d!1624001 (= c!864942 ((_ is Nil!58314) (list!18937 (left!42718 (right!43048 t!4198)))))))

(assert (=> d!1624001 (= (++!12739 (list!18937 (left!42718 (right!43048 t!4198))) (list!18937 (right!43048 (right!43048 t!4198)))) lt!2085225)))

(declare-fun b!5045747 () Bool)

(assert (=> b!5045747 (= e!3150634 (or (not (= (list!18937 (right!43048 (right!43048 t!4198))) Nil!58314)) (= lt!2085225 (list!18937 (left!42718 (right!43048 t!4198))))))))

(assert (= (and d!1624001 c!864942) b!5045744))

(assert (= (and d!1624001 (not c!864942)) b!5045745))

(assert (= (and d!1624001 res!2149334) b!5045746))

(assert (= (and b!5045746 res!2149335) b!5045747))

(declare-fun m!6081034 () Bool)

(assert (=> b!5045746 m!6081034))

(assert (=> b!5045746 m!6080798))

(declare-fun m!6081036 () Bool)

(assert (=> b!5045746 m!6081036))

(assert (=> b!5045746 m!6080800))

(declare-fun m!6081038 () Bool)

(assert (=> b!5045746 m!6081038))

(assert (=> b!5045745 m!6080800))

(declare-fun m!6081040 () Bool)

(assert (=> b!5045745 m!6081040))

(declare-fun m!6081042 () Bool)

(assert (=> d!1624001 m!6081042))

(assert (=> d!1624001 m!6080798))

(declare-fun m!6081044 () Bool)

(assert (=> d!1624001 m!6081044))

(assert (=> d!1624001 m!6080800))

(declare-fun m!6081046 () Bool)

(assert (=> d!1624001 m!6081046))

(assert (=> b!5045559 d!1624001))

(declare-fun d!1624003 () Bool)

(declare-fun c!864943 () Bool)

(assert (=> d!1624003 (= c!864943 ((_ is Empty!15526) (left!42718 (right!43048 t!4198))))))

(declare-fun e!3150635 () List!58438)

(assert (=> d!1624003 (= (list!18937 (left!42718 (right!43048 t!4198))) e!3150635)))

(declare-fun b!5045748 () Bool)

(assert (=> b!5045748 (= e!3150635 Nil!58314)))

(declare-fun b!5045749 () Bool)

(declare-fun e!3150636 () List!58438)

(assert (=> b!5045749 (= e!3150635 e!3150636)))

(declare-fun c!864944 () Bool)

(assert (=> b!5045749 (= c!864944 ((_ is Leaf!25753) (left!42718 (right!43048 t!4198))))))

(declare-fun b!5045751 () Bool)

(assert (=> b!5045751 (= e!3150636 (++!12739 (list!18937 (left!42718 (left!42718 (right!43048 t!4198)))) (list!18937 (right!43048 (left!42718 (right!43048 t!4198))))))))

(declare-fun b!5045750 () Bool)

(assert (=> b!5045750 (= e!3150636 (list!18939 (xs!18852 (left!42718 (right!43048 t!4198)))))))

(assert (= (and d!1624003 c!864943) b!5045748))

(assert (= (and d!1624003 (not c!864943)) b!5045749))

(assert (= (and b!5045749 c!864944) b!5045750))

(assert (= (and b!5045749 (not c!864944)) b!5045751))

(declare-fun m!6081048 () Bool)

(assert (=> b!5045751 m!6081048))

(declare-fun m!6081050 () Bool)

(assert (=> b!5045751 m!6081050))

(assert (=> b!5045751 m!6081048))

(assert (=> b!5045751 m!6081050))

(declare-fun m!6081052 () Bool)

(assert (=> b!5045751 m!6081052))

(declare-fun m!6081054 () Bool)

(assert (=> b!5045750 m!6081054))

(assert (=> b!5045559 d!1624003))

(declare-fun d!1624005 () Bool)

(declare-fun c!864945 () Bool)

(assert (=> d!1624005 (= c!864945 ((_ is Empty!15526) (right!43048 (right!43048 t!4198))))))

(declare-fun e!3150637 () List!58438)

(assert (=> d!1624005 (= (list!18937 (right!43048 (right!43048 t!4198))) e!3150637)))

(declare-fun b!5045752 () Bool)

(assert (=> b!5045752 (= e!3150637 Nil!58314)))

(declare-fun b!5045753 () Bool)

(declare-fun e!3150638 () List!58438)

(assert (=> b!5045753 (= e!3150637 e!3150638)))

(declare-fun c!864946 () Bool)

(assert (=> b!5045753 (= c!864946 ((_ is Leaf!25753) (right!43048 (right!43048 t!4198))))))

(declare-fun b!5045755 () Bool)

(assert (=> b!5045755 (= e!3150638 (++!12739 (list!18937 (left!42718 (right!43048 (right!43048 t!4198)))) (list!18937 (right!43048 (right!43048 (right!43048 t!4198))))))))

(declare-fun b!5045754 () Bool)

(assert (=> b!5045754 (= e!3150638 (list!18939 (xs!18852 (right!43048 (right!43048 t!4198)))))))

(assert (= (and d!1624005 c!864945) b!5045752))

(assert (= (and d!1624005 (not c!864945)) b!5045753))

(assert (= (and b!5045753 c!864946) b!5045754))

(assert (= (and b!5045753 (not c!864946)) b!5045755))

(declare-fun m!6081056 () Bool)

(assert (=> b!5045755 m!6081056))

(declare-fun m!6081058 () Bool)

(assert (=> b!5045755 m!6081058))

(assert (=> b!5045755 m!6081056))

(assert (=> b!5045755 m!6081058))

(declare-fun m!6081060 () Bool)

(assert (=> b!5045755 m!6081060))

(declare-fun m!6081062 () Bool)

(assert (=> b!5045754 m!6081062))

(assert (=> b!5045559 d!1624005))

(declare-fun b!5045756 () Bool)

(declare-fun e!3150642 () List!58438)

(assert (=> b!5045756 (= e!3150642 (++!12739 lt!2085134 lt!2085136))))

(declare-fun b!5045757 () Bool)

(declare-fun e!3150641 () List!58438)

(assert (=> b!5045757 (= e!3150641 Nil!58314)))

(declare-fun b!5045758 () Bool)

(declare-fun e!3150639 () Int)

(declare-fun call!351513 () Int)

(assert (=> b!5045758 (= e!3150639 call!351513)))

(declare-fun b!5045759 () Bool)

(assert (=> b!5045759 (= e!3150642 (drop!2641 (t!371041 (++!12739 lt!2085134 lt!2085136)) (- i!618 1)))))

(declare-fun b!5045760 () Bool)

(declare-fun e!3150640 () Int)

(assert (=> b!5045760 (= e!3150639 e!3150640)))

(declare-fun c!864950 () Bool)

(assert (=> b!5045760 (= c!864950 (>= i!618 call!351513))))

(declare-fun b!5045761 () Bool)

(declare-fun e!3150643 () Bool)

(declare-fun lt!2085226 () List!58438)

(assert (=> b!5045761 (= e!3150643 (= (size!38933 lt!2085226) e!3150639))))

(declare-fun c!864947 () Bool)

(assert (=> b!5045761 (= c!864947 (<= i!618 0))))

(declare-fun b!5045762 () Bool)

(assert (=> b!5045762 (= e!3150640 0)))

(declare-fun d!1624007 () Bool)

(assert (=> d!1624007 e!3150643))

(declare-fun res!2149336 () Bool)

(assert (=> d!1624007 (=> (not res!2149336) (not e!3150643))))

(assert (=> d!1624007 (= res!2149336 (= ((_ map implies) (content!10366 lt!2085226) (content!10366 (++!12739 lt!2085134 lt!2085136))) ((as const (InoxSet T!104278)) true)))))

(assert (=> d!1624007 (= lt!2085226 e!3150641)))

(declare-fun c!864949 () Bool)

(assert (=> d!1624007 (= c!864949 ((_ is Nil!58314) (++!12739 lt!2085134 lt!2085136)))))

(assert (=> d!1624007 (= (drop!2641 (++!12739 lt!2085134 lt!2085136) i!618) lt!2085226)))

(declare-fun b!5045763 () Bool)

(assert (=> b!5045763 (= e!3150641 e!3150642)))

(declare-fun c!864948 () Bool)

(assert (=> b!5045763 (= c!864948 (<= i!618 0))))

(declare-fun bm!351508 () Bool)

(assert (=> bm!351508 (= call!351513 (size!38933 (++!12739 lt!2085134 lt!2085136)))))

(declare-fun b!5045764 () Bool)

(assert (=> b!5045764 (= e!3150640 (- call!351513 i!618))))

(assert (= (and d!1624007 c!864949) b!5045757))

(assert (= (and d!1624007 (not c!864949)) b!5045763))

(assert (= (and b!5045763 c!864948) b!5045756))

(assert (= (and b!5045763 (not c!864948)) b!5045759))

(assert (= (and d!1624007 res!2149336) b!5045761))

(assert (= (and b!5045761 c!864947) b!5045758))

(assert (= (and b!5045761 (not c!864947)) b!5045760))

(assert (= (and b!5045760 c!864950) b!5045762))

(assert (= (and b!5045760 (not c!864950)) b!5045764))

(assert (= (or b!5045758 b!5045760 b!5045764) bm!351508))

(declare-fun m!6081064 () Bool)

(assert (=> b!5045759 m!6081064))

(declare-fun m!6081066 () Bool)

(assert (=> b!5045761 m!6081066))

(declare-fun m!6081068 () Bool)

(assert (=> d!1624007 m!6081068))

(assert (=> d!1624007 m!6080586))

(declare-fun m!6081070 () Bool)

(assert (=> d!1624007 m!6081070))

(assert (=> bm!351508 m!6080586))

(declare-fun m!6081072 () Bool)

(assert (=> bm!351508 m!6081072))

(assert (=> b!5045571 d!1624007))

(declare-fun d!1624009 () Bool)

(declare-fun lt!2085227 () Int)

(assert (=> d!1624009 (>= lt!2085227 0)))

(declare-fun e!3150644 () Int)

(assert (=> d!1624009 (= lt!2085227 e!3150644)))

(declare-fun c!864951 () Bool)

(assert (=> d!1624009 (= c!864951 ((_ is Nil!58314) (list!18937 (left!42718 t!4198))))))

(assert (=> d!1624009 (= (size!38933 (list!18937 (left!42718 t!4198))) lt!2085227)))

(declare-fun b!5045765 () Bool)

(assert (=> b!5045765 (= e!3150644 0)))

(declare-fun b!5045766 () Bool)

(assert (=> b!5045766 (= e!3150644 (+ 1 (size!38933 (t!371041 (list!18937 (left!42718 t!4198))))))))

(assert (= (and d!1624009 c!864951) b!5045765))

(assert (= (and d!1624009 (not c!864951)) b!5045766))

(declare-fun m!6081074 () Bool)

(assert (=> b!5045766 m!6081074))

(assert (=> d!1623925 d!1624009))

(assert (=> d!1623925 d!1623921))

(declare-fun b!5045781 () Bool)

(declare-fun e!3150655 () Bool)

(declare-fun lt!2085230 () List!58438)

(declare-fun e!3150656 () Int)

(assert (=> b!5045781 (= e!3150655 (= (size!38933 lt!2085230) e!3150656))))

(declare-fun c!864959 () Bool)

(assert (=> b!5045781 (= c!864959 (<= i!618 0))))

(declare-fun b!5045782 () Bool)

(declare-fun e!3150653 () List!58438)

(assert (=> b!5045782 (= e!3150653 (Cons!58314 (h!64762 (++!12739 lt!2085134 lt!2085136)) (take!834 (t!371041 (++!12739 lt!2085134 lt!2085136)) (- i!618 1))))))

(declare-fun d!1624011 () Bool)

(assert (=> d!1624011 e!3150655))

(declare-fun res!2149339 () Bool)

(assert (=> d!1624011 (=> (not res!2149339) (not e!3150655))))

(assert (=> d!1624011 (= res!2149339 (= ((_ map implies) (content!10366 lt!2085230) (content!10366 (++!12739 lt!2085134 lt!2085136))) ((as const (InoxSet T!104278)) true)))))

(assert (=> d!1624011 (= lt!2085230 e!3150653)))

(declare-fun c!864958 () Bool)

(assert (=> d!1624011 (= c!864958 (or ((_ is Nil!58314) (++!12739 lt!2085134 lt!2085136)) (<= i!618 0)))))

(assert (=> d!1624011 (= (take!834 (++!12739 lt!2085134 lt!2085136) i!618) lt!2085230)))

(declare-fun b!5045783 () Bool)

(assert (=> b!5045783 (= e!3150653 Nil!58314)))

(declare-fun b!5045784 () Bool)

(assert (=> b!5045784 (= e!3150656 0)))

(declare-fun b!5045785 () Bool)

(declare-fun e!3150654 () Int)

(assert (=> b!5045785 (= e!3150654 (size!38933 (++!12739 lt!2085134 lt!2085136)))))

(declare-fun b!5045786 () Bool)

(assert (=> b!5045786 (= e!3150656 e!3150654)))

(declare-fun c!864960 () Bool)

(assert (=> b!5045786 (= c!864960 (>= i!618 (size!38933 (++!12739 lt!2085134 lt!2085136))))))

(declare-fun b!5045787 () Bool)

(assert (=> b!5045787 (= e!3150654 i!618)))

(assert (= (and d!1624011 c!864958) b!5045783))

(assert (= (and d!1624011 (not c!864958)) b!5045782))

(assert (= (and d!1624011 res!2149339) b!5045781))

(assert (= (and b!5045781 c!864959) b!5045784))

(assert (= (and b!5045781 (not c!864959)) b!5045786))

(assert (= (and b!5045786 c!864960) b!5045785))

(assert (= (and b!5045786 (not c!864960)) b!5045787))

(declare-fun m!6081076 () Bool)

(assert (=> d!1624011 m!6081076))

(assert (=> d!1624011 m!6080586))

(assert (=> d!1624011 m!6081070))

(declare-fun m!6081078 () Bool)

(assert (=> b!5045781 m!6081078))

(assert (=> b!5045785 m!6080586))

(assert (=> b!5045785 m!6081072))

(assert (=> b!5045786 m!6080586))

(assert (=> b!5045786 m!6081072))

(declare-fun m!6081080 () Bool)

(assert (=> b!5045782 m!6081080))

(assert (=> b!5045570 d!1624011))

(declare-fun d!1624015 () Bool)

(declare-fun lt!2085231 () Int)

(assert (=> d!1624015 (>= lt!2085231 0)))

(declare-fun e!3150657 () Int)

(assert (=> d!1624015 (= lt!2085231 e!3150657)))

(declare-fun c!864961 () Bool)

(assert (=> d!1624015 (= c!864961 ((_ is Nil!58314) lt!2085200))))

(assert (=> d!1624015 (= (size!38933 lt!2085200) lt!2085231)))

(declare-fun b!5045788 () Bool)

(assert (=> b!5045788 (= e!3150657 0)))

(declare-fun b!5045789 () Bool)

(assert (=> b!5045789 (= e!3150657 (+ 1 (size!38933 (t!371041 lt!2085200))))))

(assert (= (and d!1624015 c!864961) b!5045788))

(assert (= (and d!1624015 (not c!864961)) b!5045789))

(declare-fun m!6081082 () Bool)

(assert (=> b!5045789 m!6081082))

(assert (=> b!5045588 d!1624015))

(assert (=> b!5045588 d!1623911))

(assert (=> b!5045588 d!1623993))

(assert (=> d!1623905 d!1623927))

(assert (=> d!1623905 d!1623931))

(assert (=> d!1623905 d!1623911))

(declare-fun bm!351513 () Bool)

(declare-fun c!864975 () Bool)

(declare-fun c!864976 () Bool)

(assert (=> bm!351513 (= c!864975 c!864976)))

(declare-fun call!351519 () tuple2!63258)

(declare-fun e!3150678 () Int)

(assert (=> bm!351513 (= call!351519 (splitAtIndex!219 (ite c!864976 lt!2085134 lt!2085136) e!3150678))))

(declare-fun bm!351514 () Bool)

(declare-fun lt!2085239 () tuple2!63258)

(declare-fun call!351518 () List!58438)

(declare-fun lt!2085238 () tuple2!63258)

(assert (=> bm!351514 (= call!351518 (++!12739 (ite c!864976 (_2!34932 lt!2085238) lt!2085134) (ite c!864976 lt!2085136 (_1!34932 lt!2085239))))))

(declare-fun b!5045828 () Bool)

(declare-fun e!3150679 () tuple2!63258)

(assert (=> b!5045828 (= e!3150679 (tuple2!63259 lt!2085134 lt!2085136))))

(declare-fun b!5045829 () Bool)

(assert (=> b!5045829 (= e!3150678 i!618)))

(declare-fun b!5045830 () Bool)

(declare-fun e!3150677 () tuple2!63258)

(assert (=> b!5045830 (= e!3150679 e!3150677)))

(assert (=> b!5045830 (= c!864976 (< i!618 (size!38933 lt!2085134)))))

(declare-fun d!1624017 () Bool)

(assert (=> d!1624017 (= (splitAtIndex!219 (++!12739 lt!2085134 lt!2085136) i!618) e!3150679)))

(declare-fun c!864974 () Bool)

(assert (=> d!1624017 (= c!864974 (= (size!38933 lt!2085134) i!618))))

(assert (=> d!1624017 true))

(declare-fun _$9!245 () Unit!149507)

(assert (=> d!1624017 (= (choose!37274 lt!2085134 lt!2085136 i!618) _$9!245)))

(declare-fun b!5045831 () Bool)

(assert (=> b!5045831 (= lt!2085239 call!351519)))

(assert (=> b!5045831 (= e!3150677 (tuple2!63259 call!351518 (_2!34932 lt!2085239)))))

(declare-fun b!5045832 () Bool)

(assert (=> b!5045832 (= lt!2085238 call!351519)))

(assert (=> b!5045832 (= e!3150677 (tuple2!63259 (_1!34932 lt!2085238) call!351518))))

(declare-fun b!5045833 () Bool)

(assert (=> b!5045833 (= e!3150678 (- i!618 (size!38933 lt!2085134)))))

(assert (= (and d!1624017 c!864974) b!5045828))

(assert (= (and d!1624017 (not c!864974)) b!5045830))

(assert (= (and b!5045830 c!864976) b!5045832))

(assert (= (and b!5045830 (not c!864976)) b!5045831))

(assert (= (or b!5045832 b!5045831) bm!351514))

(assert (= (or b!5045832 b!5045831) bm!351513))

(assert (= (and bm!351513 c!864975) b!5045829))

(assert (= (and bm!351513 (not c!864975)) b!5045833))

(assert (=> b!5045830 m!6080588))

(declare-fun m!6081098 () Bool)

(assert (=> bm!351514 m!6081098))

(assert (=> d!1624017 m!6080586))

(assert (=> d!1624017 m!6080586))

(assert (=> d!1624017 m!6080590))

(assert (=> d!1624017 m!6080588))

(assert (=> b!5045833 m!6080588))

(declare-fun m!6081100 () Bool)

(assert (=> bm!351513 m!6081100))

(assert (=> d!1623905 d!1624017))

(declare-fun d!1624025 () Bool)

(assert (=> d!1624025 (= (BigIntAbs!0 (ite c!864848 (cheight!15737 (left!42718 t!4198)) (csize!31283 (left!42718 t!4198)))) (ite (>= (ite c!864848 (cheight!15737 (left!42718 t!4198)) (csize!31283 (left!42718 t!4198))) 0) (ite c!864848 (cheight!15737 (left!42718 t!4198)) (csize!31283 (left!42718 t!4198))) (- (ite c!864848 (cheight!15737 (left!42718 t!4198)) (csize!31283 (left!42718 t!4198))))))))

(assert (=> bm!351489 d!1624025))

(declare-fun d!1624027 () Bool)

(assert (=> d!1624027 (= (inv!77228 (xs!18852 (left!42718 t!4198))) (<= (size!38933 (innerList!15614 (xs!18852 (left!42718 t!4198)))) 2147483647))))

(declare-fun bs!1189132 () Bool)

(assert (= bs!1189132 d!1624027))

(declare-fun m!6081102 () Bool)

(assert (=> bs!1189132 m!6081102))

(assert (=> b!5045614 d!1624027))

(assert (=> b!5045423 d!1623963))

(assert (=> b!5045423 d!1623965))

(declare-fun b!5045834 () Bool)

(declare-fun res!2149354 () Bool)

(declare-fun e!3150681 () Bool)

(assert (=> b!5045834 (=> (not res!2149354) (not e!3150681))))

(declare-fun lt!2085240 () tuple2!63258)

(assert (=> b!5045834 (= res!2149354 (= (_1!34932 lt!2085240) (take!834 (t!371041 (ite c!864812 lt!2085134 lt!2085136)) (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1))))))

(declare-fun b!5045835 () Bool)

(assert (=> b!5045835 (= e!3150681 (= (_2!34932 lt!2085240) (drop!2641 (t!371041 (ite c!864812 lt!2085134 lt!2085136)) (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1))))))

(declare-fun b!5045836 () Bool)

(declare-fun lt!2085241 () tuple2!63258)

(assert (=> b!5045836 (= lt!2085241 (splitAtIndex!219 (t!371041 (t!371041 (ite c!864812 lt!2085134 lt!2085136))) (- (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1) 1)))))

(declare-fun e!3150682 () tuple2!63258)

(assert (=> b!5045836 (= e!3150682 (tuple2!63259 (Cons!58314 (h!64762 (t!371041 (ite c!864812 lt!2085134 lt!2085136))) (_1!34932 lt!2085241)) (_2!34932 lt!2085241)))))

(declare-fun b!5045837 () Bool)

(assert (=> b!5045837 (= e!3150682 (tuple2!63259 Nil!58314 (t!371041 (ite c!864812 lt!2085134 lt!2085136))))))

(declare-fun b!5045838 () Bool)

(declare-fun e!3150680 () tuple2!63258)

(assert (=> b!5045838 (= e!3150680 e!3150682)))

(declare-fun c!864978 () Bool)

(assert (=> b!5045838 (= c!864978 (<= (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1) 0))))

(declare-fun b!5045839 () Bool)

(assert (=> b!5045839 (= e!3150680 (tuple2!63259 Nil!58314 Nil!58314))))

(declare-fun d!1624029 () Bool)

(assert (=> d!1624029 e!3150681))

(declare-fun res!2149355 () Bool)

(assert (=> d!1624029 (=> (not res!2149355) (not e!3150681))))

(assert (=> d!1624029 (= res!2149355 (= (++!12739 (_1!34932 lt!2085240) (_2!34932 lt!2085240)) (t!371041 (ite c!864812 lt!2085134 lt!2085136))))))

(assert (=> d!1624029 (= lt!2085240 e!3150680)))

(declare-fun c!864977 () Bool)

(assert (=> d!1624029 (= c!864977 ((_ is Nil!58314) (t!371041 (ite c!864812 lt!2085134 lt!2085136))))))

(assert (=> d!1624029 (= (splitAtIndex!219 (t!371041 (ite c!864812 lt!2085134 lt!2085136)) (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1)) lt!2085240)))

(assert (= (and d!1624029 c!864977) b!5045839))

(assert (= (and d!1624029 (not c!864977)) b!5045838))

(assert (= (and b!5045838 c!864978) b!5045837))

(assert (= (and b!5045838 (not c!864978)) b!5045836))

(assert (= (and d!1624029 res!2149355) b!5045834))

(assert (= (and b!5045834 res!2149354) b!5045835))

(declare-fun m!6081104 () Bool)

(assert (=> b!5045834 m!6081104))

(assert (=> b!5045835 m!6080914))

(declare-fun m!6081106 () Bool)

(assert (=> b!5045836 m!6081106))

(declare-fun m!6081108 () Bool)

(assert (=> d!1624029 m!6081108))

(assert (=> b!5045387 d!1624029))

(declare-fun b!5045849 () Bool)

(declare-fun res!2149358 () Bool)

(declare-fun e!3150688 () Bool)

(assert (=> b!5045849 (=> (not res!2149358) (not e!3150688))))

(declare-fun lt!2085243 () List!58438)

(assert (=> b!5045849 (= res!2149358 (= (size!38933 lt!2085243) (+ (size!38933 (ite c!864872 (_2!34932 lt!2085180) lt!2085134)) (size!38933 (ite c!864872 lt!2085136 (_1!34932 lt!2085179))))))))

(declare-fun e!3150687 () List!58438)

(declare-fun b!5045848 () Bool)

(assert (=> b!5045848 (= e!3150687 (Cons!58314 (h!64762 (ite c!864872 (_2!34932 lt!2085180) lt!2085134)) (++!12739 (t!371041 (ite c!864872 (_2!34932 lt!2085180) lt!2085134)) (ite c!864872 lt!2085136 (_1!34932 lt!2085179)))))))

(declare-fun b!5045847 () Bool)

(assert (=> b!5045847 (= e!3150687 (ite c!864872 lt!2085136 (_1!34932 lt!2085179)))))

(declare-fun d!1624031 () Bool)

(assert (=> d!1624031 e!3150688))

(declare-fun res!2149357 () Bool)

(assert (=> d!1624031 (=> (not res!2149357) (not e!3150688))))

(assert (=> d!1624031 (= res!2149357 (= (content!10366 lt!2085243) ((_ map or) (content!10366 (ite c!864872 (_2!34932 lt!2085180) lt!2085134)) (content!10366 (ite c!864872 lt!2085136 (_1!34932 lt!2085179))))))))

(assert (=> d!1624031 (= lt!2085243 e!3150687)))

(declare-fun c!864982 () Bool)

(assert (=> d!1624031 (= c!864982 ((_ is Nil!58314) (ite c!864872 (_2!34932 lt!2085180) lt!2085134)))))

(assert (=> d!1624031 (= (++!12739 (ite c!864872 (_2!34932 lt!2085180) lt!2085134) (ite c!864872 lt!2085136 (_1!34932 lt!2085179))) lt!2085243)))

(declare-fun b!5045850 () Bool)

(assert (=> b!5045850 (= e!3150688 (or (not (= (ite c!864872 lt!2085136 (_1!34932 lt!2085179)) Nil!58314)) (= lt!2085243 (ite c!864872 (_2!34932 lt!2085180) lt!2085134))))))

(assert (= (and d!1624031 c!864982) b!5045847))

(assert (= (and d!1624031 (not c!864982)) b!5045848))

(assert (= (and d!1624031 res!2149357) b!5045849))

(assert (= (and b!5045849 res!2149358) b!5045850))

(declare-fun m!6081120 () Bool)

(assert (=> b!5045849 m!6081120))

(declare-fun m!6081122 () Bool)

(assert (=> b!5045849 m!6081122))

(declare-fun m!6081124 () Bool)

(assert (=> b!5045849 m!6081124))

(declare-fun m!6081126 () Bool)

(assert (=> b!5045848 m!6081126))

(declare-fun m!6081128 () Bool)

(assert (=> d!1624031 m!6081128))

(declare-fun m!6081130 () Bool)

(assert (=> d!1624031 m!6081130))

(declare-fun m!6081132 () Bool)

(assert (=> d!1624031 m!6081132))

(assert (=> bm!351502 d!1624031))

(declare-fun b!5045853 () Bool)

(declare-fun res!2149360 () Bool)

(declare-fun e!3150690 () Bool)

(assert (=> b!5045853 (=> (not res!2149360) (not e!3150690))))

(declare-fun lt!2085244 () List!58438)

(assert (=> b!5045853 (= res!2149360 (= (size!38933 lt!2085244) (+ (size!38933 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134))) (size!38933 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))))

(declare-fun b!5045852 () Bool)

(declare-fun e!3150689 () List!58438)

(assert (=> b!5045852 (= e!3150689 (Cons!58314 (h!64762 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134))) (++!12739 (t!371041 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134))) (ite c!864812 lt!2085136 (_1!34932 lt!2085132)))))))

(declare-fun b!5045851 () Bool)

(assert (=> b!5045851 (= e!3150689 (ite c!864812 lt!2085136 (_1!34932 lt!2085132)))))

(declare-fun d!1624035 () Bool)

(assert (=> d!1624035 e!3150690))

(declare-fun res!2149359 () Bool)

(assert (=> d!1624035 (=> (not res!2149359) (not e!3150690))))

(assert (=> d!1624035 (= res!2149359 (= (content!10366 lt!2085244) ((_ map or) (content!10366 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134))) (content!10366 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))))

(assert (=> d!1624035 (= lt!2085244 e!3150689)))

(declare-fun c!864983 () Bool)

(assert (=> d!1624035 (= c!864983 ((_ is Nil!58314) (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134))))))

(assert (=> d!1624035 (= (++!12739 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) (ite c!864812 lt!2085136 (_1!34932 lt!2085132))) lt!2085244)))

(declare-fun b!5045854 () Bool)

(assert (=> b!5045854 (= e!3150690 (or (not (= (ite c!864812 lt!2085136 (_1!34932 lt!2085132)) Nil!58314)) (= lt!2085244 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)))))))

(assert (= (and d!1624035 c!864983) b!5045851))

(assert (= (and d!1624035 (not c!864983)) b!5045852))

(assert (= (and d!1624035 res!2149359) b!5045853))

(assert (= (and b!5045853 res!2149360) b!5045854))

(declare-fun m!6081134 () Bool)

(assert (=> b!5045853 m!6081134))

(assert (=> b!5045853 m!6080902))

(assert (=> b!5045853 m!6080628))

(declare-fun m!6081136 () Bool)

(assert (=> b!5045852 m!6081136))

(declare-fun m!6081138 () Bool)

(assert (=> d!1624035 m!6081138))

(declare-fun m!6081140 () Bool)

(assert (=> d!1624035 m!6081140))

(assert (=> d!1624035 m!6080636))

(assert (=> b!5045355 d!1624035))

(declare-fun d!1624037 () Bool)

(declare-fun lt!2085245 () Bool)

(assert (=> d!1624037 (= lt!2085245 (isEmpty!31557 (list!18937 (right!43048 t!4198))))))

(assert (=> d!1624037 (= lt!2085245 (= (size!38932 (right!43048 t!4198)) 0))))

(assert (=> d!1624037 (= (isEmpty!31556 (right!43048 t!4198)) lt!2085245)))

(declare-fun bs!1189133 () Bool)

(assert (= bs!1189133 d!1624037))

(assert (=> bs!1189133 m!6080592))

(assert (=> bs!1189133 m!6080592))

(declare-fun m!6081142 () Bool)

(assert (=> bs!1189133 m!6081142))

(assert (=> bs!1189133 m!6080954))

(assert (=> b!5045421 d!1624037))

(declare-fun b!5045855 () Bool)

(declare-fun e!3150693 () Bool)

(declare-fun lt!2085246 () List!58438)

(declare-fun e!3150694 () Int)

(assert (=> b!5045855 (= e!3150693 (= (size!38933 lt!2085246) e!3150694))))

(declare-fun c!864985 () Bool)

(assert (=> b!5045855 (= c!864985 (<= (ite c!864812 i!618 (- i!618 lt!2085130)) 0))))

(declare-fun b!5045856 () Bool)

(declare-fun e!3150691 () List!58438)

(assert (=> b!5045856 (= e!3150691 (Cons!58314 (h!64762 (ite c!864812 lt!2085134 lt!2085136)) (take!834 (t!371041 (ite c!864812 lt!2085134 lt!2085136)) (- (ite c!864812 i!618 (- i!618 lt!2085130)) 1))))))

(declare-fun d!1624039 () Bool)

(assert (=> d!1624039 e!3150693))

(declare-fun res!2149361 () Bool)

(assert (=> d!1624039 (=> (not res!2149361) (not e!3150693))))

(assert (=> d!1624039 (= res!2149361 (= ((_ map implies) (content!10366 lt!2085246) (content!10366 (ite c!864812 lt!2085134 lt!2085136))) ((as const (InoxSet T!104278)) true)))))

(assert (=> d!1624039 (= lt!2085246 e!3150691)))

(declare-fun c!864984 () Bool)

(assert (=> d!1624039 (= c!864984 (or ((_ is Nil!58314) (ite c!864812 lt!2085134 lt!2085136)) (<= (ite c!864812 i!618 (- i!618 lt!2085130)) 0)))))

(assert (=> d!1624039 (= (take!834 (ite c!864812 lt!2085134 lt!2085136) (ite c!864812 i!618 (- i!618 lt!2085130))) lt!2085246)))

(declare-fun b!5045857 () Bool)

(assert (=> b!5045857 (= e!3150691 Nil!58314)))

(declare-fun b!5045858 () Bool)

(assert (=> b!5045858 (= e!3150694 0)))

(declare-fun b!5045859 () Bool)

(declare-fun e!3150692 () Int)

(assert (=> b!5045859 (= e!3150692 (size!38933 (ite c!864812 lt!2085134 lt!2085136)))))

(declare-fun b!5045860 () Bool)

(assert (=> b!5045860 (= e!3150694 e!3150692)))

(declare-fun c!864986 () Bool)

(assert (=> b!5045860 (= c!864986 (>= (ite c!864812 i!618 (- i!618 lt!2085130)) (size!38933 (ite c!864812 lt!2085134 lt!2085136))))))

(declare-fun b!5045861 () Bool)

(assert (=> b!5045861 (= e!3150692 (ite c!864812 i!618 (- i!618 lt!2085130)))))

(assert (= (and d!1624039 c!864984) b!5045857))

(assert (= (and d!1624039 (not c!864984)) b!5045856))

(assert (= (and d!1624039 res!2149361) b!5045855))

(assert (= (and b!5045855 c!864985) b!5045858))

(assert (= (and b!5045855 (not c!864985)) b!5045860))

(assert (= (and b!5045860 c!864986) b!5045859))

(assert (= (and b!5045860 (not c!864986)) b!5045861))

(declare-fun m!6081144 () Bool)

(assert (=> d!1624039 m!6081144))

(assert (=> d!1624039 m!6080920))

(declare-fun m!6081146 () Bool)

(assert (=> b!5045855 m!6081146))

(assert (=> b!5045859 m!6080922))

(assert (=> b!5045860 m!6080922))

(assert (=> b!5045856 m!6081104))

(assert (=> b!5045385 d!1624039))

(declare-fun d!1624041 () Bool)

(declare-fun lt!2085247 () Int)

(assert (=> d!1624041 (>= lt!2085247 0)))

(assert (=> d!1624041 (= lt!2085247 (+ 1 (ListPrimitiveSize!382 (innerList!15614 (xs!18852 (left!42718 t!4198))))))))

(assert (=> d!1624041 (= (IArrayPrimitiveSize!35 (xs!18852 (left!42718 t!4198))) lt!2085247)))

(declare-fun bs!1189134 () Bool)

(assert (= bs!1189134 d!1624041))

(declare-fun m!6081148 () Bool)

(assert (=> bs!1189134 m!6081148))

(assert (=> b!5045454 d!1624041))

(declare-fun d!1624043 () Bool)

(declare-fun res!2149362 () Bool)

(declare-fun e!3150695 () Bool)

(assert (=> d!1624043 (=> (not res!2149362) (not e!3150695))))

(assert (=> d!1624043 (= res!2149362 (<= (size!38933 (list!18939 (xs!18852 t!4198))) 512))))

(assert (=> d!1624043 (= (inv!77230 t!4198) e!3150695)))

(declare-fun b!5045862 () Bool)

(declare-fun res!2149363 () Bool)

(assert (=> b!5045862 (=> (not res!2149363) (not e!3150695))))

(assert (=> b!5045862 (= res!2149363 (= (csize!31283 t!4198) (size!38933 (list!18939 (xs!18852 t!4198)))))))

(declare-fun b!5045863 () Bool)

(assert (=> b!5045863 (= e!3150695 (and (> (csize!31283 t!4198) 0) (<= (csize!31283 t!4198) 512)))))

(assert (= (and d!1624043 res!2149362) b!5045862))

(assert (= (and b!5045862 res!2149363) b!5045863))

(assert (=> d!1624043 m!6080962))

(assert (=> d!1624043 m!6080962))

(declare-fun m!6081150 () Bool)

(assert (=> d!1624043 m!6081150))

(assert (=> b!5045862 m!6080962))

(assert (=> b!5045862 m!6080962))

(assert (=> b!5045862 m!6081150))

(assert (=> b!5045429 d!1624043))

(declare-fun d!1624045 () Bool)

(declare-fun c!864989 () Bool)

(assert (=> d!1624045 (= c!864989 ((_ is Nil!58314) lt!2085140))))

(declare-fun e!3150698 () (InoxSet T!104278))

(assert (=> d!1624045 (= (content!10366 lt!2085140) e!3150698)))

(declare-fun b!5045868 () Bool)

(assert (=> b!5045868 (= e!3150698 ((as const (Array T!104278 Bool)) false))))

(declare-fun b!5045869 () Bool)

(assert (=> b!5045869 (= e!3150698 ((_ map or) (store ((as const (Array T!104278 Bool)) false) (h!64762 lt!2085140) true) (content!10366 (t!371041 lt!2085140))))))

(assert (= (and d!1624045 c!864989) b!5045868))

(assert (= (and d!1624045 (not c!864989)) b!5045869))

(declare-fun m!6081152 () Bool)

(assert (=> b!5045869 m!6081152))

(declare-fun m!6081154 () Bool)

(assert (=> b!5045869 m!6081154))

(assert (=> d!1623873 d!1624045))

(declare-fun c!864990 () Bool)

(declare-fun d!1624047 () Bool)

(assert (=> d!1624047 (= c!864990 ((_ is Nil!58314) (ite c!864812 (_2!34932 lt!2085135) lt!2085134)))))

(declare-fun e!3150701 () (InoxSet T!104278))

(assert (=> d!1624047 (= (content!10366 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) e!3150701)))

(declare-fun b!5045874 () Bool)

(assert (=> b!5045874 (= e!3150701 ((as const (Array T!104278 Bool)) false))))

(declare-fun b!5045875 () Bool)

(assert (=> b!5045875 (= e!3150701 ((_ map or) (store ((as const (Array T!104278 Bool)) false) (h!64762 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)) true) (content!10366 (t!371041 (ite c!864812 (_2!34932 lt!2085135) lt!2085134)))))))

(assert (= (and d!1624047 c!864990) b!5045874))

(assert (= (and d!1624047 (not c!864990)) b!5045875))

(declare-fun m!6081156 () Bool)

(assert (=> b!5045875 m!6081156))

(assert (=> b!5045875 m!6081140))

(assert (=> d!1623873 d!1624047))

(declare-fun d!1624049 () Bool)

(declare-fun c!864991 () Bool)

(assert (=> d!1624049 (= c!864991 ((_ is Nil!58314) (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))

(declare-fun e!3150702 () (InoxSet T!104278))

(assert (=> d!1624049 (= (content!10366 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))) e!3150702)))

(declare-fun b!5045878 () Bool)

(assert (=> b!5045878 (= e!3150702 ((as const (Array T!104278 Bool)) false))))

(declare-fun b!5045879 () Bool)

(assert (=> b!5045879 (= e!3150702 ((_ map or) (store ((as const (Array T!104278 Bool)) false) (h!64762 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))) true) (content!10366 (t!371041 (ite c!864812 lt!2085136 (_1!34932 lt!2085132))))))))

(assert (= (and d!1624049 c!864991) b!5045878))

(assert (= (and d!1624049 (not c!864991)) b!5045879))

(declare-fun m!6081158 () Bool)

(assert (=> b!5045879 m!6081158))

(declare-fun m!6081160 () Bool)

(assert (=> b!5045879 m!6081160))

(assert (=> d!1623873 d!1624049))

(declare-fun b!5045880 () Bool)

(declare-fun res!2149370 () Bool)

(declare-fun e!3150704 () Bool)

(assert (=> b!5045880 (=> (not res!2149370) (not e!3150704))))

(assert (=> b!5045880 (= res!2149370 (isBalanced!4388 (left!42718 (left!42718 t!4198))))))

(declare-fun b!5045881 () Bool)

(declare-fun res!2149375 () Bool)

(assert (=> b!5045881 (=> (not res!2149375) (not e!3150704))))

(assert (=> b!5045881 (= res!2149375 (not (isEmpty!31556 (left!42718 (left!42718 t!4198)))))))

(declare-fun b!5045882 () Bool)

(declare-fun res!2149374 () Bool)

(assert (=> b!5045882 (=> (not res!2149374) (not e!3150704))))

(assert (=> b!5045882 (= res!2149374 (<= (- (height!2105 (left!42718 (left!42718 t!4198))) (height!2105 (right!43048 (left!42718 t!4198)))) 1))))

(declare-fun b!5045883 () Bool)

(assert (=> b!5045883 (= e!3150704 (not (isEmpty!31556 (right!43048 (left!42718 t!4198)))))))

(declare-fun b!5045884 () Bool)

(declare-fun res!2149373 () Bool)

(assert (=> b!5045884 (=> (not res!2149373) (not e!3150704))))

(assert (=> b!5045884 (= res!2149373 (isBalanced!4388 (right!43048 (left!42718 t!4198))))))

(declare-fun b!5045885 () Bool)

(declare-fun e!3150703 () Bool)

(assert (=> b!5045885 (= e!3150703 e!3150704)))

(declare-fun res!2149371 () Bool)

(assert (=> b!5045885 (=> (not res!2149371) (not e!3150704))))

(assert (=> b!5045885 (= res!2149371 (<= (- 1) (- (height!2105 (left!42718 (left!42718 t!4198))) (height!2105 (right!43048 (left!42718 t!4198))))))))

(declare-fun d!1624051 () Bool)

(declare-fun res!2149372 () Bool)

(assert (=> d!1624051 (=> res!2149372 e!3150703)))

(assert (=> d!1624051 (= res!2149372 (not ((_ is Node!15526) (left!42718 t!4198))))))

(assert (=> d!1624051 (= (isBalanced!4388 (left!42718 t!4198)) e!3150703)))

(assert (= (and d!1624051 (not res!2149372)) b!5045885))

(assert (= (and b!5045885 res!2149371) b!5045882))

(assert (= (and b!5045882 res!2149374) b!5045880))

(assert (= (and b!5045880 res!2149370) b!5045884))

(assert (= (and b!5045884 res!2149373) b!5045881))

(assert (= (and b!5045881 res!2149375) b!5045883))

(declare-fun m!6081162 () Bool)

(assert (=> b!5045881 m!6081162))

(assert (=> b!5045885 m!6080994))

(assert (=> b!5045885 m!6080996))

(declare-fun m!6081164 () Bool)

(assert (=> b!5045884 m!6081164))

(declare-fun m!6081166 () Bool)

(assert (=> b!5045883 m!6081166))

(declare-fun m!6081168 () Bool)

(assert (=> b!5045880 m!6081168))

(assert (=> b!5045882 m!6080994))

(assert (=> b!5045882 m!6080996))

(assert (=> b!5045418 d!1624051))

(declare-fun b!5045888 () Bool)

(declare-fun res!2149377 () Bool)

(declare-fun e!3150706 () Bool)

(assert (=> b!5045888 (=> (not res!2149377) (not e!3150706))))

(declare-fun lt!2085248 () List!58438)

(assert (=> b!5045888 (= res!2149377 (= (size!38933 lt!2085248) (+ (size!38933 (_1!34932 lt!2085145)) (size!38933 (_2!34932 lt!2085145)))))))

(declare-fun b!5045887 () Bool)

(declare-fun e!3150705 () List!58438)

(assert (=> b!5045887 (= e!3150705 (Cons!58314 (h!64762 (_1!34932 lt!2085145)) (++!12739 (t!371041 (_1!34932 lt!2085145)) (_2!34932 lt!2085145))))))

(declare-fun b!5045886 () Bool)

(assert (=> b!5045886 (= e!3150705 (_2!34932 lt!2085145))))

(declare-fun d!1624053 () Bool)

(assert (=> d!1624053 e!3150706))

(declare-fun res!2149376 () Bool)

(assert (=> d!1624053 (=> (not res!2149376) (not e!3150706))))

(assert (=> d!1624053 (= res!2149376 (= (content!10366 lt!2085248) ((_ map or) (content!10366 (_1!34932 lt!2085145)) (content!10366 (_2!34932 lt!2085145)))))))

(assert (=> d!1624053 (= lt!2085248 e!3150705)))

(declare-fun c!864992 () Bool)

(assert (=> d!1624053 (= c!864992 ((_ is Nil!58314) (_1!34932 lt!2085145)))))

(assert (=> d!1624053 (= (++!12739 (_1!34932 lt!2085145) (_2!34932 lt!2085145)) lt!2085248)))

(declare-fun b!5045889 () Bool)

(assert (=> b!5045889 (= e!3150706 (or (not (= (_2!34932 lt!2085145) Nil!58314)) (= lt!2085248 (_1!34932 lt!2085145))))))

(assert (= (and d!1624053 c!864992) b!5045886))

(assert (= (and d!1624053 (not c!864992)) b!5045887))

(assert (= (and d!1624053 res!2149376) b!5045888))

(assert (= (and b!5045888 res!2149377) b!5045889))

(declare-fun m!6081170 () Bool)

(assert (=> b!5045888 m!6081170))

(declare-fun m!6081172 () Bool)

(assert (=> b!5045888 m!6081172))

(declare-fun m!6081174 () Bool)

(assert (=> b!5045888 m!6081174))

(declare-fun m!6081176 () Bool)

(assert (=> b!5045887 m!6081176))

(declare-fun m!6081178 () Bool)

(assert (=> d!1624053 m!6081178))

(declare-fun m!6081180 () Bool)

(assert (=> d!1624053 m!6081180))

(declare-fun m!6081182 () Bool)

(assert (=> d!1624053 m!6081182))

(assert (=> d!1623877 d!1624053))

(declare-fun d!1624055 () Bool)

(assert (=> d!1624055 (= (inv!77228 (xs!18852 (right!43048 t!4198))) (<= (size!38933 (innerList!15614 (xs!18852 (right!43048 t!4198)))) 2147483647))))

(declare-fun bs!1189135 () Bool)

(assert (= bs!1189135 d!1624055))

(declare-fun m!6081184 () Bool)

(assert (=> bs!1189135 m!6081184))

(assert (=> b!5045617 d!1624055))

(assert (=> b!5045463 d!1623897))

(declare-fun b!5045890 () Bool)

(declare-fun e!3150707 () Int)

(declare-fun call!351520 () Int)

(assert (=> b!5045890 (= e!3150707 (+ 1 (IArrayPrimitiveSize!35 (xs!18852 (right!43048 t!4198))) call!351520))))

(declare-fun d!1624057 () Bool)

(declare-fun lt!2085249 () Int)

(assert (=> d!1624057 (>= lt!2085249 0)))

(declare-fun e!3150708 () Int)

(assert (=> d!1624057 (= lt!2085249 e!3150708)))

(declare-fun c!864993 () Bool)

(assert (=> d!1624057 (= c!864993 ((_ is Node!15526) (right!43048 t!4198)))))

(assert (=> d!1624057 (= (ConcPrimitiveSize!36 (right!43048 t!4198)) lt!2085249)))

(declare-fun b!5045891 () Bool)

(assert (=> b!5045891 (= e!3150708 (+ 1 (ConcPrimitiveSize!36 (left!42718 (right!43048 t!4198))) (ConcPrimitiveSize!36 (right!43048 (right!43048 t!4198))) (BigIntAbs!0 (csize!31282 (right!43048 t!4198))) call!351520))))

(declare-fun b!5045892 () Bool)

(assert (=> b!5045892 (= e!3150708 e!3150707)))

(declare-fun c!864994 () Bool)

(assert (=> b!5045892 (= c!864994 ((_ is Leaf!25753) (right!43048 t!4198)))))

(declare-fun b!5045893 () Bool)

(assert (=> b!5045893 (= e!3150707 0)))

(declare-fun bm!351515 () Bool)

(assert (=> bm!351515 (= call!351520 (BigIntAbs!0 (ite c!864993 (cheight!15737 (right!43048 t!4198)) (csize!31283 (right!43048 t!4198)))))))

(assert (= (and d!1624057 c!864993) b!5045891))

(assert (= (and d!1624057 (not c!864993)) b!5045892))

(assert (= (and b!5045892 c!864994) b!5045890))

(assert (= (and b!5045892 (not c!864994)) b!5045893))

(assert (= (or b!5045891 b!5045890) bm!351515))

(declare-fun m!6081186 () Bool)

(assert (=> b!5045890 m!6081186))

(declare-fun m!6081188 () Bool)

(assert (=> b!5045891 m!6081188))

(declare-fun m!6081190 () Bool)

(assert (=> b!5045891 m!6081190))

(declare-fun m!6081192 () Bool)

(assert (=> b!5045891 m!6081192))

(declare-fun m!6081194 () Bool)

(assert (=> bm!351515 m!6081194))

(assert (=> b!5045463 d!1624057))

(declare-fun d!1624059 () Bool)

(assert (=> d!1624059 (= (BigIntAbs!0 (csize!31282 t!4198)) (ite (>= (csize!31282 t!4198) 0) (csize!31282 t!4198) (- (csize!31282 t!4198))))))

(assert (=> b!5045463 d!1624059))

(declare-fun d!1624061 () Bool)

(declare-fun c!864995 () Bool)

(assert (=> d!1624061 (= c!864995 ((_ is Nil!58314) lt!2085200))))

(declare-fun e!3150709 () (InoxSet T!104278))

(assert (=> d!1624061 (= (content!10366 lt!2085200) e!3150709)))

(declare-fun b!5045894 () Bool)

(assert (=> b!5045894 (= e!3150709 ((as const (Array T!104278 Bool)) false))))

(declare-fun b!5045895 () Bool)

(assert (=> b!5045895 (= e!3150709 ((_ map or) (store ((as const (Array T!104278 Bool)) false) (h!64762 lt!2085200) true) (content!10366 (t!371041 lt!2085200))))))

(assert (= (and d!1624061 c!864995) b!5045894))

(assert (= (and d!1624061 (not c!864995)) b!5045895))

(declare-fun m!6081196 () Bool)

(assert (=> b!5045895 m!6081196))

(declare-fun m!6081198 () Bool)

(assert (=> b!5045895 m!6081198))

(assert (=> d!1623931 d!1624061))

(declare-fun d!1624063 () Bool)

(declare-fun c!864996 () Bool)

(assert (=> d!1624063 (= c!864996 ((_ is Nil!58314) lt!2085134))))

(declare-fun e!3150710 () (InoxSet T!104278))

(assert (=> d!1624063 (= (content!10366 lt!2085134) e!3150710)))

(declare-fun b!5045896 () Bool)

(assert (=> b!5045896 (= e!3150710 ((as const (Array T!104278 Bool)) false))))

(declare-fun b!5045897 () Bool)

(assert (=> b!5045897 (= e!3150710 ((_ map or) (store ((as const (Array T!104278 Bool)) false) (h!64762 lt!2085134) true) (content!10366 (t!371041 lt!2085134))))))

(assert (= (and d!1624063 c!864996) b!5045896))

(assert (= (and d!1624063 (not c!864996)) b!5045897))

(declare-fun m!6081200 () Bool)

(assert (=> b!5045897 m!6081200))

(assert (=> b!5045897 m!6080878))

(assert (=> d!1623931 d!1624063))

(declare-fun d!1624065 () Bool)

(declare-fun c!864997 () Bool)

(assert (=> d!1624065 (= c!864997 ((_ is Nil!58314) lt!2085136))))

(declare-fun e!3150711 () (InoxSet T!104278))

(assert (=> d!1624065 (= (content!10366 lt!2085136) e!3150711)))

(declare-fun b!5045898 () Bool)

(assert (=> b!5045898 (= e!3150711 ((as const (Array T!104278 Bool)) false))))

(declare-fun b!5045899 () Bool)

(assert (=> b!5045899 (= e!3150711 ((_ map or) (store ((as const (Array T!104278 Bool)) false) (h!64762 lt!2085136) true) (content!10366 (t!371041 lt!2085136))))))

(assert (= (and d!1624065 c!864997) b!5045898))

(assert (= (and d!1624065 (not c!864997)) b!5045899))

(declare-fun m!6081202 () Bool)

(assert (=> b!5045899 m!6081202))

(declare-fun m!6081204 () Bool)

(assert (=> b!5045899 m!6081204))

(assert (=> d!1623931 d!1624065))

(assert (=> b!5045505 d!1623911))

(declare-fun d!1624067 () Bool)

(assert (=> d!1624067 (= (list!18939 (xs!18852 (left!42718 t!4198))) (innerList!15614 (xs!18852 (left!42718 t!4198))))))

(assert (=> b!5045546 d!1624067))

(declare-fun b!5045903 () Bool)

(declare-fun res!2149381 () Bool)

(declare-fun e!3150714 () Bool)

(assert (=> b!5045903 (=> (not res!2149381) (not e!3150714))))

(declare-fun lt!2085250 () tuple2!63258)

(assert (=> b!5045903 (= res!2149381 (= (_1!34932 lt!2085250) (take!834 (t!371041 (++!12739 lt!2085134 lt!2085136)) (- i!618 1))))))

(declare-fun b!5045904 () Bool)

(assert (=> b!5045904 (= e!3150714 (= (_2!34932 lt!2085250) (drop!2641 (t!371041 (++!12739 lt!2085134 lt!2085136)) (- i!618 1))))))

(declare-fun b!5045905 () Bool)

(declare-fun lt!2085251 () tuple2!63258)

(assert (=> b!5045905 (= lt!2085251 (splitAtIndex!219 (t!371041 (t!371041 (++!12739 lt!2085134 lt!2085136))) (- (- i!618 1) 1)))))

(declare-fun e!3150715 () tuple2!63258)

(assert (=> b!5045905 (= e!3150715 (tuple2!63259 (Cons!58314 (h!64762 (t!371041 (++!12739 lt!2085134 lt!2085136))) (_1!34932 lt!2085251)) (_2!34932 lt!2085251)))))

(declare-fun b!5045906 () Bool)

(assert (=> b!5045906 (= e!3150715 (tuple2!63259 Nil!58314 (t!371041 (++!12739 lt!2085134 lt!2085136))))))

(declare-fun b!5045907 () Bool)

(declare-fun e!3150713 () tuple2!63258)

(assert (=> b!5045907 (= e!3150713 e!3150715)))

(declare-fun c!864999 () Bool)

(assert (=> b!5045907 (= c!864999 (<= (- i!618 1) 0))))

(declare-fun b!5045908 () Bool)

(assert (=> b!5045908 (= e!3150713 (tuple2!63259 Nil!58314 Nil!58314))))

(declare-fun d!1624069 () Bool)

(assert (=> d!1624069 e!3150714))

(declare-fun res!2149382 () Bool)

(assert (=> d!1624069 (=> (not res!2149382) (not e!3150714))))

(assert (=> d!1624069 (= res!2149382 (= (++!12739 (_1!34932 lt!2085250) (_2!34932 lt!2085250)) (t!371041 (++!12739 lt!2085134 lt!2085136))))))

(assert (=> d!1624069 (= lt!2085250 e!3150713)))

(declare-fun c!864998 () Bool)

(assert (=> d!1624069 (= c!864998 ((_ is Nil!58314) (t!371041 (++!12739 lt!2085134 lt!2085136))))))

(assert (=> d!1624069 (= (splitAtIndex!219 (t!371041 (++!12739 lt!2085134 lt!2085136)) (- i!618 1)) lt!2085250)))

(assert (= (and d!1624069 c!864998) b!5045908))

(assert (= (and d!1624069 (not c!864998)) b!5045907))

(assert (= (and b!5045907 c!864999) b!5045906))

(assert (= (and b!5045907 (not c!864999)) b!5045905))

(assert (= (and d!1624069 res!2149382) b!5045903))

(assert (= (and b!5045903 res!2149381) b!5045904))

(assert (=> b!5045903 m!6081080))

(assert (=> b!5045904 m!6081064))

(declare-fun m!6081216 () Bool)

(assert (=> b!5045905 m!6081216))

(declare-fun m!6081218 () Bool)

(assert (=> d!1624069 m!6081218))

(assert (=> b!5045572 d!1624069))

(declare-fun d!1624073 () Bool)

(assert (=> d!1624073 (= (list!18939 (xs!18852 (right!43048 t!4198))) (innerList!15614 (xs!18852 (right!43048 t!4198))))))

(assert (=> b!5045558 d!1624073))

(declare-fun tp!1411701 () Bool)

(declare-fun b!5045915 () Bool)

(declare-fun e!3150720 () Bool)

(declare-fun tp!1411700 () Bool)

(assert (=> b!5045915 (= e!3150720 (and (inv!77227 (left!42718 (left!42718 (left!42718 t!4198)))) tp!1411700 (inv!77227 (right!43048 (left!42718 (left!42718 t!4198)))) tp!1411701))))

(declare-fun b!5045917 () Bool)

(declare-fun e!3150719 () Bool)

(declare-fun tp!1411702 () Bool)

(assert (=> b!5045917 (= e!3150719 tp!1411702)))

(declare-fun b!5045916 () Bool)

(assert (=> b!5045916 (= e!3150720 (and (inv!77228 (xs!18852 (left!42718 (left!42718 t!4198)))) e!3150719))))

(assert (=> b!5045613 (= tp!1411691 (and (inv!77227 (left!42718 (left!42718 t!4198))) e!3150720))))

(assert (= (and b!5045613 ((_ is Node!15526) (left!42718 (left!42718 t!4198)))) b!5045915))

(assert (= b!5045916 b!5045917))

(assert (= (and b!5045613 ((_ is Leaf!25753) (left!42718 (left!42718 t!4198)))) b!5045916))

(declare-fun m!6081220 () Bool)

(assert (=> b!5045915 m!6081220))

(declare-fun m!6081222 () Bool)

(assert (=> b!5045915 m!6081222))

(declare-fun m!6081224 () Bool)

(assert (=> b!5045916 m!6081224))

(assert (=> b!5045613 m!6080858))

(declare-fun tp!1411703 () Bool)

(declare-fun tp!1411704 () Bool)

(declare-fun e!3150722 () Bool)

(declare-fun b!5045918 () Bool)

(assert (=> b!5045918 (= e!3150722 (and (inv!77227 (left!42718 (right!43048 (left!42718 t!4198)))) tp!1411703 (inv!77227 (right!43048 (right!43048 (left!42718 t!4198)))) tp!1411704))))

(declare-fun b!5045920 () Bool)

(declare-fun e!3150721 () Bool)

(declare-fun tp!1411705 () Bool)

(assert (=> b!5045920 (= e!3150721 tp!1411705)))

(declare-fun b!5045919 () Bool)

(assert (=> b!5045919 (= e!3150722 (and (inv!77228 (xs!18852 (right!43048 (left!42718 t!4198)))) e!3150721))))

(assert (=> b!5045613 (= tp!1411692 (and (inv!77227 (right!43048 (left!42718 t!4198))) e!3150722))))

(assert (= (and b!5045613 ((_ is Node!15526) (right!43048 (left!42718 t!4198)))) b!5045918))

(assert (= b!5045919 b!5045920))

(assert (= (and b!5045613 ((_ is Leaf!25753) (right!43048 (left!42718 t!4198)))) b!5045919))

(declare-fun m!6081226 () Bool)

(assert (=> b!5045918 m!6081226))

(declare-fun m!6081228 () Bool)

(assert (=> b!5045918 m!6081228))

(declare-fun m!6081230 () Bool)

(assert (=> b!5045919 m!6081230))

(assert (=> b!5045613 m!6080860))

(declare-fun b!5045921 () Bool)

(declare-fun e!3150723 () Bool)

(declare-fun tp!1411706 () Bool)

(assert (=> b!5045921 (= e!3150723 (and tp_is_empty!36815 tp!1411706))))

(assert (=> b!5045618 (= tp!1411696 e!3150723)))

(assert (= (and b!5045618 ((_ is Cons!58314) (innerList!15614 (xs!18852 (right!43048 t!4198))))) b!5045921))

(declare-fun tp!1411707 () Bool)

(declare-fun b!5045922 () Bool)

(declare-fun e!3150725 () Bool)

(declare-fun tp!1411708 () Bool)

(assert (=> b!5045922 (= e!3150725 (and (inv!77227 (left!42718 (left!42718 (right!43048 t!4198)))) tp!1411707 (inv!77227 (right!43048 (left!42718 (right!43048 t!4198)))) tp!1411708))))

(declare-fun b!5045924 () Bool)

(declare-fun e!3150724 () Bool)

(declare-fun tp!1411709 () Bool)

(assert (=> b!5045924 (= e!3150724 tp!1411709)))

(declare-fun b!5045923 () Bool)

(assert (=> b!5045923 (= e!3150725 (and (inv!77228 (xs!18852 (left!42718 (right!43048 t!4198)))) e!3150724))))

(assert (=> b!5045616 (= tp!1411694 (and (inv!77227 (left!42718 (right!43048 t!4198))) e!3150725))))

(assert (= (and b!5045616 ((_ is Node!15526) (left!42718 (right!43048 t!4198)))) b!5045922))

(assert (= b!5045923 b!5045924))

(assert (= (and b!5045616 ((_ is Leaf!25753) (left!42718 (right!43048 t!4198)))) b!5045923))

(declare-fun m!6081240 () Bool)

(assert (=> b!5045922 m!6081240))

(declare-fun m!6081242 () Bool)

(assert (=> b!5045922 m!6081242))

(declare-fun m!6081244 () Bool)

(assert (=> b!5045923 m!6081244))

(assert (=> b!5045616 m!6080864))

(declare-fun tp!1411710 () Bool)

(declare-fun e!3150727 () Bool)

(declare-fun tp!1411711 () Bool)

(declare-fun b!5045925 () Bool)

(assert (=> b!5045925 (= e!3150727 (and (inv!77227 (left!42718 (right!43048 (right!43048 t!4198)))) tp!1411710 (inv!77227 (right!43048 (right!43048 (right!43048 t!4198)))) tp!1411711))))

(declare-fun b!5045927 () Bool)

(declare-fun e!3150726 () Bool)

(declare-fun tp!1411712 () Bool)

(assert (=> b!5045927 (= e!3150726 tp!1411712)))

(declare-fun b!5045926 () Bool)

(assert (=> b!5045926 (= e!3150727 (and (inv!77228 (xs!18852 (right!43048 (right!43048 t!4198)))) e!3150726))))

(assert (=> b!5045616 (= tp!1411695 (and (inv!77227 (right!43048 (right!43048 t!4198))) e!3150727))))

(assert (= (and b!5045616 ((_ is Node!15526) (right!43048 (right!43048 t!4198)))) b!5045925))

(assert (= b!5045926 b!5045927))

(assert (= (and b!5045616 ((_ is Leaf!25753) (right!43048 (right!43048 t!4198)))) b!5045926))

(declare-fun m!6081246 () Bool)

(assert (=> b!5045925 m!6081246))

(declare-fun m!6081248 () Bool)

(assert (=> b!5045925 m!6081248))

(declare-fun m!6081250 () Bool)

(assert (=> b!5045926 m!6081250))

(assert (=> b!5045616 m!6080866))

(declare-fun b!5045928 () Bool)

(declare-fun e!3150728 () Bool)

(declare-fun tp!1411713 () Bool)

(assert (=> b!5045928 (= e!3150728 (and tp_is_empty!36815 tp!1411713))))

(assert (=> b!5045615 (= tp!1411693 e!3150728)))

(assert (= (and b!5045615 ((_ is Cons!58314) (innerList!15614 (xs!18852 (left!42718 t!4198))))) b!5045928))

(declare-fun b!5045929 () Bool)

(declare-fun e!3150729 () Bool)

(declare-fun tp!1411714 () Bool)

(assert (=> b!5045929 (= e!3150729 (and tp_is_empty!36815 tp!1411714))))

(assert (=> b!5045623 (= tp!1411699 e!3150729)))

(assert (= (and b!5045623 ((_ is Cons!58314) (t!371041 (innerList!15614 (xs!18852 t!4198))))) b!5045929))

(check-sat (not b!5045713) (not b!5045920) (not b!5045899) (not b!5045657) (not b!5045759) (not d!1624029) (not b!5045855) (not b!5045743) (not b!5045699) (not b!5045916) (not b!5045928) (not b!5045836) (not b!5045882) (not bm!351514) (not b!5045885) (not b!5045658) (not b!5045860) (not b!5045782) (not b!5045652) (not b!5045785) (not b!5045905) (not b!5045745) (not d!1623967) (not b!5045926) (not b!5045650) (not b!5045833) (not d!1623989) (not b!5045726) (not b!5045887) (not b!5045695) (not b!5045645) (not b!5045849) (not d!1623983) (not b!5045700) (not b!5045720) (not d!1623937) (not b!5045875) (not b!5045712) (not b!5045691) (not b!5045852) (not b!5045904) (not b!5045723) (not bm!351506) (not b!5045715) (not b!5045750) (not b!5045862) (not d!1624017) (not b!5045613) (not bm!351505) (not b!5045643) (not b!5045661) (not d!1624037) (not b!5045897) (not b!5045853) tp_is_empty!36815 (not d!1624043) (not bm!351513) (not b!5045848) (not b!5045881) (not b!5045729) (not d!1623939) (not b!5045646) (not b!5045869) (not b!5045721) (not b!5045880) (not b!5045656) (not b!5045895) (not b!5045631) (not b!5045786) (not b!5045718) (not b!5045742) (not b!5045761) (not d!1624053) (not b!5045694) (not b!5045641) (not b!5045766) (not d!1623987) (not b!5045883) (not b!5045923) (not b!5045903) (not b!5045711) (not b!5045731) (not b!5045919) (not b!5045921) (not bm!351508) (not bm!351515) (not d!1624027) (not b!5045927) (not b!5045925) (not b!5045917) (not b!5045662) (not b!5045891) (not b!5045690) (not b!5045859) (not b!5045879) (not b!5045686) (not d!1624031) (not bm!351507) (not d!1623995) (not b!5045888) (not d!1624001) (not b!5045654) (not d!1623985) (not b!5045924) (not b!5045915) (not b!5045616) (not b!5045628) (not d!1624069) (not b!5045754) (not b!5045781) (not b!5045751) (not b!5045716) (not b!5045733) (not b!5045660) (not b!5045884) (not b!5045890) (not d!1624039) (not b!5045738) (not b!5045834) (not b!5045684) (not b!5045918) (not d!1624007) (not b!5045929) (not d!1624055) (not b!5045659) (not d!1624041) (not b!5045739) (not b!5045698) (not b!5045755) (not b!5045648) (not b!5045789) (not d!1623935) (not b!5045632) (not d!1623971) (not b!5045856) (not b!5045835) (not b!5045830) (not b!5045708) (not b!5045746) (not d!1624035) (not d!1623955) (not b!5045922) (not d!1624011) (not b!5045705) (not d!1623969) (not b!5045734))
(check-sat)
