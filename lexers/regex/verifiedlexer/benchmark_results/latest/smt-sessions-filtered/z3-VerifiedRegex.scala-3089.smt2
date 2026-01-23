; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183474 () Bool)

(assert start!183474)

(declare-fun b_free!51505 () Bool)

(declare-fun b_next!52209 () Bool)

(assert (=> start!183474 (= b_free!51505 (not b_next!52209))))

(declare-fun tp!520798 () Bool)

(declare-fun b_and!143631 () Bool)

(assert (=> start!183474 (= tp!520798 b_and!143631)))

(declare-fun res!827592 () Bool)

(declare-fun e!1176965 () Bool)

(assert (=> start!183474 (=> (not res!827592) (not e!1176965))))

(declare-datatypes ((T!31864 0))(
  ( (T!31865 (val!5752 Int)) )
))
(declare-datatypes ((List!20352 0))(
  ( (Nil!20282) (Cons!20282 (h!25683 T!31864) (t!171805 List!20352)) )
))
(declare-datatypes ((IArray!13419 0))(
  ( (IArray!13420 (innerList!6767 List!20352)) )
))
(declare-datatypes ((Conc!6707 0))(
  ( (Node!6707 (left!16214 Conc!6707) (right!16544 Conc!6707) (csize!13644 Int) (cheight!6918 Int)) (Leaf!9797 (xs!9583 IArray!13419) (csize!13645 Int)) (Empty!6707) )
))
(declare-fun t!3734 () Conc!6707)

(get-info :version)

(assert (=> start!183474 (= res!827592 (and (not ((_ is Empty!6707) t!3734)) (not ((_ is Leaf!9797) t!3734))))))

(assert (=> start!183474 e!1176965))

(declare-fun e!1176964 () Bool)

(declare-fun inv!26503 (Conc!6707) Bool)

(assert (=> start!183474 (and (inv!26503 t!3734) e!1176964)))

(assert (=> start!183474 tp!520798))

(declare-fun tp!520799 () Bool)

(declare-fun b!1841760 () Bool)

(declare-fun tp!520797 () Bool)

(assert (=> b!1841760 (= e!1176964 (and (inv!26503 (left!16214 t!3734)) tp!520797 (inv!26503 (right!16544 t!3734)) tp!520799))))

(declare-fun b!1841762 () Bool)

(declare-fun e!1176966 () Bool)

(declare-fun tp!520800 () Bool)

(assert (=> b!1841762 (= e!1176966 tp!520800)))

(declare-fun b!1841759 () Bool)

(declare-fun height!1023 (Conc!6707) Int)

(assert (=> b!1841759 (= e!1176965 (>= (height!1023 (left!16214 t!3734)) (height!1023 t!3734)))))

(declare-datatypes ((Unit!34991 0))(
  ( (Unit!34992) )
))
(declare-fun lt!714330 () Unit!34991)

(declare-fun p!1470 () Int)

(declare-fun lemmaExistsConcat!4 (List!20352 List!20352 Int) Unit!34991)

(declare-fun list!8248 (Conc!6707) List!20352)

(assert (=> b!1841759 (= lt!714330 (lemmaExistsConcat!4 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)) p!1470))))

(declare-fun b!1841761 () Bool)

(declare-fun inv!26504 (IArray!13419) Bool)

(assert (=> b!1841761 (= e!1176964 (and (inv!26504 (xs!9583 t!3734)) e!1176966))))

(assert (= (and start!183474 res!827592) b!1841759))

(assert (= (and start!183474 ((_ is Node!6707) t!3734)) b!1841760))

(assert (= b!1841761 b!1841762))

(assert (= (and start!183474 ((_ is Leaf!9797) t!3734)) b!1841761))

(declare-fun m!2269303 () Bool)

(assert (=> start!183474 m!2269303))

(declare-fun m!2269305 () Bool)

(assert (=> b!1841760 m!2269305))

(declare-fun m!2269307 () Bool)

(assert (=> b!1841760 m!2269307))

(declare-fun m!2269309 () Bool)

(assert (=> b!1841759 m!2269309))

(declare-fun m!2269311 () Bool)

(assert (=> b!1841759 m!2269311))

(declare-fun m!2269313 () Bool)

(assert (=> b!1841759 m!2269313))

(declare-fun m!2269315 () Bool)

(assert (=> b!1841759 m!2269315))

(assert (=> b!1841759 m!2269311))

(assert (=> b!1841759 m!2269315))

(declare-fun m!2269317 () Bool)

(assert (=> b!1841759 m!2269317))

(declare-fun m!2269319 () Bool)

(assert (=> b!1841761 m!2269319))

(check-sat (not b!1841760) (not b_next!52209) b_and!143631 (not b!1841762) (not b!1841761) (not start!183474) (not b!1841759))
(check-sat b_and!143631 (not b_next!52209))
(get-model)

(declare-fun d!563204 () Bool)

(declare-fun size!16079 (List!20352) Int)

(assert (=> d!563204 (= (inv!26504 (xs!9583 t!3734)) (<= (size!16079 (innerList!6767 (xs!9583 t!3734))) 2147483647))))

(declare-fun bs!408636 () Bool)

(assert (= bs!408636 d!563204))

(declare-fun m!2269321 () Bool)

(assert (=> bs!408636 m!2269321))

(assert (=> b!1841761 d!563204))

(declare-fun d!563208 () Bool)

(assert (=> d!563208 (= (height!1023 t!3734) (ite ((_ is Empty!6707) t!3734) 0 (ite ((_ is Leaf!9797) t!3734) 1 (cheight!6918 t!3734))))))

(assert (=> b!1841759 d!563208))

(declare-fun d!563212 () Bool)

(declare-fun e!1176972 () Bool)

(declare-fun exists!659 (List!20352 Int) Bool)

(declare-fun ++!5516 (List!20352 List!20352) List!20352)

(assert (=> d!563212 (= (exists!659 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))) p!1470) e!1176972)))

(declare-fun res!827598 () Bool)

(assert (=> d!563212 (=> res!827598 e!1176972)))

(assert (=> d!563212 (= res!827598 (exists!659 (list!8248 (left!16214 t!3734)) p!1470))))

(declare-fun lt!714336 () Unit!34991)

(declare-fun choose!11591 (List!20352 List!20352 Int) Unit!34991)

(assert (=> d!563212 (= lt!714336 (choose!11591 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)) p!1470))))

(assert (=> d!563212 (= (lemmaExistsConcat!4 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)) p!1470) lt!714336)))

(declare-fun b!1841768 () Bool)

(assert (=> b!1841768 (= e!1176972 (exists!659 (list!8248 (right!16544 t!3734)) p!1470))))

(assert (= (and d!563212 (not res!827598)) b!1841768))

(assert (=> d!563212 m!2269311))

(assert (=> d!563212 m!2269315))

(declare-fun m!2269333 () Bool)

(assert (=> d!563212 m!2269333))

(assert (=> d!563212 m!2269333))

(declare-fun m!2269335 () Bool)

(assert (=> d!563212 m!2269335))

(assert (=> d!563212 m!2269311))

(declare-fun m!2269337 () Bool)

(assert (=> d!563212 m!2269337))

(assert (=> d!563212 m!2269311))

(assert (=> d!563212 m!2269315))

(declare-fun m!2269339 () Bool)

(assert (=> d!563212 m!2269339))

(assert (=> b!1841768 m!2269315))

(declare-fun m!2269341 () Bool)

(assert (=> b!1841768 m!2269341))

(assert (=> b!1841759 d!563212))

(declare-fun d!563218 () Bool)

(assert (=> d!563218 (= (height!1023 (left!16214 t!3734)) (ite ((_ is Empty!6707) (left!16214 t!3734)) 0 (ite ((_ is Leaf!9797) (left!16214 t!3734)) 1 (cheight!6918 (left!16214 t!3734)))))))

(assert (=> b!1841759 d!563218))

(declare-fun b!1841794 () Bool)

(declare-fun e!1176985 () List!20352)

(declare-fun e!1176986 () List!20352)

(assert (=> b!1841794 (= e!1176985 e!1176986)))

(declare-fun c!300603 () Bool)

(assert (=> b!1841794 (= c!300603 ((_ is Leaf!9797) (right!16544 t!3734)))))

(declare-fun d!563220 () Bool)

(declare-fun c!300602 () Bool)

(assert (=> d!563220 (= c!300602 ((_ is Empty!6707) (right!16544 t!3734)))))

(assert (=> d!563220 (= (list!8248 (right!16544 t!3734)) e!1176985)))

(declare-fun b!1841796 () Bool)

(assert (=> b!1841796 (= e!1176986 (++!5516 (list!8248 (left!16214 (right!16544 t!3734))) (list!8248 (right!16544 (right!16544 t!3734)))))))

(declare-fun b!1841795 () Bool)

(declare-fun list!8249 (IArray!13419) List!20352)

(assert (=> b!1841795 (= e!1176986 (list!8249 (xs!9583 (right!16544 t!3734))))))

(declare-fun b!1841793 () Bool)

(assert (=> b!1841793 (= e!1176985 Nil!20282)))

(assert (= (and d!563220 c!300602) b!1841793))

(assert (= (and d!563220 (not c!300602)) b!1841794))

(assert (= (and b!1841794 c!300603) b!1841795))

(assert (= (and b!1841794 (not c!300603)) b!1841796))

(declare-fun m!2269359 () Bool)

(assert (=> b!1841796 m!2269359))

(declare-fun m!2269361 () Bool)

(assert (=> b!1841796 m!2269361))

(assert (=> b!1841796 m!2269359))

(assert (=> b!1841796 m!2269361))

(declare-fun m!2269363 () Bool)

(assert (=> b!1841796 m!2269363))

(declare-fun m!2269365 () Bool)

(assert (=> b!1841795 m!2269365))

(assert (=> b!1841759 d!563220))

(declare-fun b!1841798 () Bool)

(declare-fun e!1176987 () List!20352)

(declare-fun e!1176988 () List!20352)

(assert (=> b!1841798 (= e!1176987 e!1176988)))

(declare-fun c!300605 () Bool)

(assert (=> b!1841798 (= c!300605 ((_ is Leaf!9797) (left!16214 t!3734)))))

(declare-fun d!563226 () Bool)

(declare-fun c!300604 () Bool)

(assert (=> d!563226 (= c!300604 ((_ is Empty!6707) (left!16214 t!3734)))))

(assert (=> d!563226 (= (list!8248 (left!16214 t!3734)) e!1176987)))

(declare-fun b!1841800 () Bool)

(assert (=> b!1841800 (= e!1176988 (++!5516 (list!8248 (left!16214 (left!16214 t!3734))) (list!8248 (right!16544 (left!16214 t!3734)))))))

(declare-fun b!1841799 () Bool)

(assert (=> b!1841799 (= e!1176988 (list!8249 (xs!9583 (left!16214 t!3734))))))

(declare-fun b!1841797 () Bool)

(assert (=> b!1841797 (= e!1176987 Nil!20282)))

(assert (= (and d!563226 c!300604) b!1841797))

(assert (= (and d!563226 (not c!300604)) b!1841798))

(assert (= (and b!1841798 c!300605) b!1841799))

(assert (= (and b!1841798 (not c!300605)) b!1841800))

(declare-fun m!2269367 () Bool)

(assert (=> b!1841800 m!2269367))

(declare-fun m!2269369 () Bool)

(assert (=> b!1841800 m!2269369))

(assert (=> b!1841800 m!2269367))

(assert (=> b!1841800 m!2269369))

(declare-fun m!2269371 () Bool)

(assert (=> b!1841800 m!2269371))

(declare-fun m!2269373 () Bool)

(assert (=> b!1841799 m!2269373))

(assert (=> b!1841759 d!563226))

(declare-fun d!563228 () Bool)

(declare-fun c!300613 () Bool)

(assert (=> d!563228 (= c!300613 ((_ is Node!6707) t!3734))))

(declare-fun e!1177003 () Bool)

(assert (=> d!563228 (= (inv!26503 t!3734) e!1177003)))

(declare-fun b!1841822 () Bool)

(declare-fun inv!26505 (Conc!6707) Bool)

(assert (=> b!1841822 (= e!1177003 (inv!26505 t!3734))))

(declare-fun b!1841823 () Bool)

(declare-fun e!1177004 () Bool)

(assert (=> b!1841823 (= e!1177003 e!1177004)))

(declare-fun res!827606 () Bool)

(assert (=> b!1841823 (= res!827606 (not ((_ is Leaf!9797) t!3734)))))

(assert (=> b!1841823 (=> res!827606 e!1177004)))

(declare-fun b!1841824 () Bool)

(declare-fun inv!26506 (Conc!6707) Bool)

(assert (=> b!1841824 (= e!1177004 (inv!26506 t!3734))))

(assert (= (and d!563228 c!300613) b!1841822))

(assert (= (and d!563228 (not c!300613)) b!1841823))

(assert (= (and b!1841823 (not res!827606)) b!1841824))

(declare-fun m!2269387 () Bool)

(assert (=> b!1841822 m!2269387))

(declare-fun m!2269389 () Bool)

(assert (=> b!1841824 m!2269389))

(assert (=> start!183474 d!563228))

(declare-fun d!563236 () Bool)

(declare-fun c!300614 () Bool)

(assert (=> d!563236 (= c!300614 ((_ is Node!6707) (left!16214 t!3734)))))

(declare-fun e!1177005 () Bool)

(assert (=> d!563236 (= (inv!26503 (left!16214 t!3734)) e!1177005)))

(declare-fun b!1841825 () Bool)

(assert (=> b!1841825 (= e!1177005 (inv!26505 (left!16214 t!3734)))))

(declare-fun b!1841826 () Bool)

(declare-fun e!1177006 () Bool)

(assert (=> b!1841826 (= e!1177005 e!1177006)))

(declare-fun res!827607 () Bool)

(assert (=> b!1841826 (= res!827607 (not ((_ is Leaf!9797) (left!16214 t!3734))))))

(assert (=> b!1841826 (=> res!827607 e!1177006)))

(declare-fun b!1841827 () Bool)

(assert (=> b!1841827 (= e!1177006 (inv!26506 (left!16214 t!3734)))))

(assert (= (and d!563236 c!300614) b!1841825))

(assert (= (and d!563236 (not c!300614)) b!1841826))

(assert (= (and b!1841826 (not res!827607)) b!1841827))

(declare-fun m!2269391 () Bool)

(assert (=> b!1841825 m!2269391))

(declare-fun m!2269393 () Bool)

(assert (=> b!1841827 m!2269393))

(assert (=> b!1841760 d!563236))

(declare-fun d!563238 () Bool)

(declare-fun c!300615 () Bool)

(assert (=> d!563238 (= c!300615 ((_ is Node!6707) (right!16544 t!3734)))))

(declare-fun e!1177007 () Bool)

(assert (=> d!563238 (= (inv!26503 (right!16544 t!3734)) e!1177007)))

(declare-fun b!1841828 () Bool)

(assert (=> b!1841828 (= e!1177007 (inv!26505 (right!16544 t!3734)))))

(declare-fun b!1841829 () Bool)

(declare-fun e!1177008 () Bool)

(assert (=> b!1841829 (= e!1177007 e!1177008)))

(declare-fun res!827608 () Bool)

(assert (=> b!1841829 (= res!827608 (not ((_ is Leaf!9797) (right!16544 t!3734))))))

(assert (=> b!1841829 (=> res!827608 e!1177008)))

(declare-fun b!1841830 () Bool)

(assert (=> b!1841830 (= e!1177008 (inv!26506 (right!16544 t!3734)))))

(assert (= (and d!563238 c!300615) b!1841828))

(assert (= (and d!563238 (not c!300615)) b!1841829))

(assert (= (and b!1841829 (not res!827608)) b!1841830))

(declare-fun m!2269397 () Bool)

(assert (=> b!1841828 m!2269397))

(declare-fun m!2269399 () Bool)

(assert (=> b!1841830 m!2269399))

(assert (=> b!1841760 d!563238))

(declare-fun b!1841843 () Bool)

(declare-fun e!1177015 () Bool)

(declare-fun tp_is_empty!8351 () Bool)

(declare-fun tp!520809 () Bool)

(assert (=> b!1841843 (= e!1177015 (and tp_is_empty!8351 tp!520809))))

(assert (=> b!1841762 (= tp!520800 e!1177015)))

(assert (= (and b!1841762 ((_ is Cons!20282) (innerList!6767 (xs!9583 t!3734)))) b!1841843))

(declare-fun tp!520824 () Bool)

(declare-fun e!1177024 () Bool)

(declare-fun b!1841858 () Bool)

(declare-fun tp!520823 () Bool)

(assert (=> b!1841858 (= e!1177024 (and (inv!26503 (left!16214 (left!16214 t!3734))) tp!520824 (inv!26503 (right!16544 (left!16214 t!3734))) tp!520823))))

(declare-fun b!1841860 () Bool)

(declare-fun e!1177025 () Bool)

(declare-fun tp!520822 () Bool)

(assert (=> b!1841860 (= e!1177025 tp!520822)))

(declare-fun b!1841859 () Bool)

(assert (=> b!1841859 (= e!1177024 (and (inv!26504 (xs!9583 (left!16214 t!3734))) e!1177025))))

(assert (=> b!1841760 (= tp!520797 (and (inv!26503 (left!16214 t!3734)) e!1177024))))

(assert (= (and b!1841760 ((_ is Node!6707) (left!16214 t!3734))) b!1841858))

(assert (= b!1841859 b!1841860))

(assert (= (and b!1841760 ((_ is Leaf!9797) (left!16214 t!3734))) b!1841859))

(declare-fun m!2269413 () Bool)

(assert (=> b!1841858 m!2269413))

(declare-fun m!2269415 () Bool)

(assert (=> b!1841858 m!2269415))

(declare-fun m!2269417 () Bool)

(assert (=> b!1841859 m!2269417))

(assert (=> b!1841760 m!2269305))

(declare-fun e!1177028 () Bool)

(declare-fun tp!520828 () Bool)

(declare-fun tp!520829 () Bool)

(declare-fun b!1841865 () Bool)

(assert (=> b!1841865 (= e!1177028 (and (inv!26503 (left!16214 (right!16544 t!3734))) tp!520829 (inv!26503 (right!16544 (right!16544 t!3734))) tp!520828))))

(declare-fun b!1841867 () Bool)

(declare-fun e!1177029 () Bool)

(declare-fun tp!520827 () Bool)

(assert (=> b!1841867 (= e!1177029 tp!520827)))

(declare-fun b!1841866 () Bool)

(assert (=> b!1841866 (= e!1177028 (and (inv!26504 (xs!9583 (right!16544 t!3734))) e!1177029))))

(assert (=> b!1841760 (= tp!520799 (and (inv!26503 (right!16544 t!3734)) e!1177028))))

(assert (= (and b!1841760 ((_ is Node!6707) (right!16544 t!3734))) b!1841865))

(assert (= b!1841866 b!1841867))

(assert (= (and b!1841760 ((_ is Leaf!9797) (right!16544 t!3734))) b!1841866))

(declare-fun m!2269419 () Bool)

(assert (=> b!1841865 m!2269419))

(declare-fun m!2269421 () Bool)

(assert (=> b!1841865 m!2269421))

(declare-fun m!2269423 () Bool)

(assert (=> b!1841866 m!2269423))

(assert (=> b!1841760 m!2269307))

(check-sat (not b!1841760) (not b_next!52209) b_and!143631 (not b!1841825) (not b!1841830) (not b!1841800) (not b!1841822) (not b!1841865) (not b!1841768) (not b!1841828) (not b!1841866) (not b!1841824) (not b!1841795) tp_is_empty!8351 (not b!1841860) (not b!1841796) (not d!563204) (not b!1841843) (not b!1841827) (not b!1841859) (not b!1841867) (not b!1841799) (not d!563212) (not b!1841858))
(check-sat b_and!143631 (not b_next!52209))
(get-model)

(declare-fun d!563240 () Bool)

(declare-fun res!827615 () Bool)

(declare-fun e!1177033 () Bool)

(assert (=> d!563240 (=> (not res!827615) (not e!1177033))))

(declare-fun size!16081 (Conc!6707) Int)

(assert (=> d!563240 (= res!827615 (= (csize!13644 (left!16214 t!3734)) (+ (size!16081 (left!16214 (left!16214 t!3734))) (size!16081 (right!16544 (left!16214 t!3734))))))))

(assert (=> d!563240 (= (inv!26505 (left!16214 t!3734)) e!1177033)))

(declare-fun b!1841875 () Bool)

(declare-fun res!827616 () Bool)

(assert (=> b!1841875 (=> (not res!827616) (not e!1177033))))

(assert (=> b!1841875 (= res!827616 (and (not (= (left!16214 (left!16214 t!3734)) Empty!6707)) (not (= (right!16544 (left!16214 t!3734)) Empty!6707))))))

(declare-fun b!1841876 () Bool)

(declare-fun res!827617 () Bool)

(assert (=> b!1841876 (=> (not res!827617) (not e!1177033))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1841876 (= res!827617 (= (cheight!6918 (left!16214 t!3734)) (+ (max!0 (height!1023 (left!16214 (left!16214 t!3734))) (height!1023 (right!16544 (left!16214 t!3734)))) 1)))))

(declare-fun b!1841877 () Bool)

(assert (=> b!1841877 (= e!1177033 (<= 0 (cheight!6918 (left!16214 t!3734))))))

(assert (= (and d!563240 res!827615) b!1841875))

(assert (= (and b!1841875 res!827616) b!1841876))

(assert (= (and b!1841876 res!827617) b!1841877))

(declare-fun m!2269425 () Bool)

(assert (=> d!563240 m!2269425))

(declare-fun m!2269427 () Bool)

(assert (=> d!563240 m!2269427))

(declare-fun m!2269429 () Bool)

(assert (=> b!1841876 m!2269429))

(declare-fun m!2269431 () Bool)

(assert (=> b!1841876 m!2269431))

(assert (=> b!1841876 m!2269429))

(assert (=> b!1841876 m!2269431))

(declare-fun m!2269433 () Bool)

(assert (=> b!1841876 m!2269433))

(assert (=> b!1841825 d!563240))

(declare-fun d!563242 () Bool)

(assert (=> d!563242 true))

(declare-fun order!13081 () Int)

(declare-fun lambda!72319 () Int)

(declare-fun dynLambda!10082 (Int Int) Int)

(assert (=> d!563242 (< (dynLambda!10082 order!13081 p!1470) (dynLambda!10082 order!13081 lambda!72319))))

(declare-fun forall!4360 (List!20352 Int) Bool)

(assert (=> d!563242 (= (exists!659 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))) p!1470) (not (forall!4360 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))) lambda!72319)))))

(declare-fun bs!408638 () Bool)

(assert (= bs!408638 d!563242))

(assert (=> bs!408638 m!2269333))

(declare-fun m!2269435 () Bool)

(assert (=> bs!408638 m!2269435))

(assert (=> d!563212 d!563242))

(declare-fun d!563244 () Bool)

(declare-fun e!1177039 () Bool)

(assert (=> d!563244 e!1177039))

(declare-fun res!827623 () Bool)

(assert (=> d!563244 (=> (not res!827623) (not e!1177039))))

(declare-fun lt!714339 () List!20352)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3020 (List!20352) (InoxSet T!31864))

(assert (=> d!563244 (= res!827623 (= (content!3020 lt!714339) ((_ map or) (content!3020 (list!8248 (left!16214 t!3734))) (content!3020 (list!8248 (right!16544 t!3734))))))))

(declare-fun e!1177038 () List!20352)

(assert (=> d!563244 (= lt!714339 e!1177038)))

(declare-fun c!300618 () Bool)

(assert (=> d!563244 (= c!300618 ((_ is Nil!20282) (list!8248 (left!16214 t!3734))))))

(assert (=> d!563244 (= (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))) lt!714339)))

(declare-fun b!1841890 () Bool)

(declare-fun res!827622 () Bool)

(assert (=> b!1841890 (=> (not res!827622) (not e!1177039))))

(assert (=> b!1841890 (= res!827622 (= (size!16079 lt!714339) (+ (size!16079 (list!8248 (left!16214 t!3734))) (size!16079 (list!8248 (right!16544 t!3734))))))))

(declare-fun b!1841891 () Bool)

(assert (=> b!1841891 (= e!1177039 (or (not (= (list!8248 (right!16544 t!3734)) Nil!20282)) (= lt!714339 (list!8248 (left!16214 t!3734)))))))

(declare-fun b!1841888 () Bool)

(assert (=> b!1841888 (= e!1177038 (list!8248 (right!16544 t!3734)))))

(declare-fun b!1841889 () Bool)

(assert (=> b!1841889 (= e!1177038 (Cons!20282 (h!25683 (list!8248 (left!16214 t!3734))) (++!5516 (t!171805 (list!8248 (left!16214 t!3734))) (list!8248 (right!16544 t!3734)))))))

(assert (= (and d!563244 c!300618) b!1841888))

(assert (= (and d!563244 (not c!300618)) b!1841889))

(assert (= (and d!563244 res!827623) b!1841890))

(assert (= (and b!1841890 res!827622) b!1841891))

(declare-fun m!2269437 () Bool)

(assert (=> d!563244 m!2269437))

(assert (=> d!563244 m!2269311))

(declare-fun m!2269439 () Bool)

(assert (=> d!563244 m!2269439))

(assert (=> d!563244 m!2269315))

(declare-fun m!2269441 () Bool)

(assert (=> d!563244 m!2269441))

(declare-fun m!2269443 () Bool)

(assert (=> b!1841890 m!2269443))

(assert (=> b!1841890 m!2269311))

(declare-fun m!2269445 () Bool)

(assert (=> b!1841890 m!2269445))

(assert (=> b!1841890 m!2269315))

(declare-fun m!2269447 () Bool)

(assert (=> b!1841890 m!2269447))

(assert (=> b!1841889 m!2269315))

(declare-fun m!2269449 () Bool)

(assert (=> b!1841889 m!2269449))

(assert (=> d!563212 d!563244))

(declare-fun bs!408639 () Bool)

(declare-fun d!563246 () Bool)

(assert (= bs!408639 (and d!563246 d!563242)))

(declare-fun lambda!72320 () Int)

(assert (=> bs!408639 (= lambda!72320 lambda!72319)))

(assert (=> d!563246 true))

(assert (=> d!563246 (< (dynLambda!10082 order!13081 p!1470) (dynLambda!10082 order!13081 lambda!72320))))

(assert (=> d!563246 (= (exists!659 (list!8248 (left!16214 t!3734)) p!1470) (not (forall!4360 (list!8248 (left!16214 t!3734)) lambda!72320)))))

(declare-fun bs!408640 () Bool)

(assert (= bs!408640 d!563246))

(assert (=> bs!408640 m!2269311))

(declare-fun m!2269451 () Bool)

(assert (=> bs!408640 m!2269451))

(assert (=> d!563212 d!563246))

(declare-fun d!563248 () Bool)

(declare-fun e!1177042 () Bool)

(assert (=> d!563248 (= (exists!659 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))) p!1470) e!1177042)))

(declare-fun res!827626 () Bool)

(assert (=> d!563248 (=> res!827626 e!1177042)))

(assert (=> d!563248 (= res!827626 (exists!659 (list!8248 (left!16214 t!3734)) p!1470))))

(assert (=> d!563248 true))

(declare-fun _$80!38 () Unit!34991)

(assert (=> d!563248 (= (choose!11591 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)) p!1470) _$80!38)))

(declare-fun b!1841894 () Bool)

(assert (=> b!1841894 (= e!1177042 (exists!659 (list!8248 (right!16544 t!3734)) p!1470))))

(assert (= (and d!563248 (not res!827626)) b!1841894))

(assert (=> d!563248 m!2269311))

(assert (=> d!563248 m!2269315))

(assert (=> d!563248 m!2269333))

(assert (=> d!563248 m!2269333))

(assert (=> d!563248 m!2269335))

(assert (=> d!563248 m!2269311))

(assert (=> d!563248 m!2269337))

(assert (=> b!1841894 m!2269315))

(assert (=> b!1841894 m!2269341))

(assert (=> d!563212 d!563248))

(declare-fun d!563250 () Bool)

(declare-fun res!827631 () Bool)

(declare-fun e!1177045 () Bool)

(assert (=> d!563250 (=> (not res!827631) (not e!1177045))))

(assert (=> d!563250 (= res!827631 (<= (size!16079 (list!8249 (xs!9583 t!3734))) 512))))

(assert (=> d!563250 (= (inv!26506 t!3734) e!1177045)))

(declare-fun b!1841899 () Bool)

(declare-fun res!827632 () Bool)

(assert (=> b!1841899 (=> (not res!827632) (not e!1177045))))

(assert (=> b!1841899 (= res!827632 (= (csize!13645 t!3734) (size!16079 (list!8249 (xs!9583 t!3734)))))))

(declare-fun b!1841900 () Bool)

(assert (=> b!1841900 (= e!1177045 (and (> (csize!13645 t!3734) 0) (<= (csize!13645 t!3734) 512)))))

(assert (= (and d!563250 res!827631) b!1841899))

(assert (= (and b!1841899 res!827632) b!1841900))

(declare-fun m!2269453 () Bool)

(assert (=> d!563250 m!2269453))

(assert (=> d!563250 m!2269453))

(declare-fun m!2269455 () Bool)

(assert (=> d!563250 m!2269455))

(assert (=> b!1841899 m!2269453))

(assert (=> b!1841899 m!2269453))

(assert (=> b!1841899 m!2269455))

(assert (=> b!1841824 d!563250))

(declare-fun d!563252 () Bool)

(assert (=> d!563252 (= (inv!26504 (xs!9583 (right!16544 t!3734))) (<= (size!16079 (innerList!6767 (xs!9583 (right!16544 t!3734)))) 2147483647))))

(declare-fun bs!408641 () Bool)

(assert (= bs!408641 d!563252))

(declare-fun m!2269457 () Bool)

(assert (=> bs!408641 m!2269457))

(assert (=> b!1841866 d!563252))

(assert (=> b!1841760 d!563236))

(assert (=> b!1841760 d!563238))

(declare-fun d!563254 () Bool)

(assert (=> d!563254 (= (list!8249 (xs!9583 (right!16544 t!3734))) (innerList!6767 (xs!9583 (right!16544 t!3734))))))

(assert (=> b!1841795 d!563254))

(declare-fun d!563256 () Bool)

(declare-fun res!827633 () Bool)

(declare-fun e!1177046 () Bool)

(assert (=> d!563256 (=> (not res!827633) (not e!1177046))))

(assert (=> d!563256 (= res!827633 (= (csize!13644 t!3734) (+ (size!16081 (left!16214 t!3734)) (size!16081 (right!16544 t!3734)))))))

(assert (=> d!563256 (= (inv!26505 t!3734) e!1177046)))

(declare-fun b!1841901 () Bool)

(declare-fun res!827634 () Bool)

(assert (=> b!1841901 (=> (not res!827634) (not e!1177046))))

(assert (=> b!1841901 (= res!827634 (and (not (= (left!16214 t!3734) Empty!6707)) (not (= (right!16544 t!3734) Empty!6707))))))

(declare-fun b!1841902 () Bool)

(declare-fun res!827635 () Bool)

(assert (=> b!1841902 (=> (not res!827635) (not e!1177046))))

(assert (=> b!1841902 (= res!827635 (= (cheight!6918 t!3734) (+ (max!0 (height!1023 (left!16214 t!3734)) (height!1023 (right!16544 t!3734))) 1)))))

(declare-fun b!1841903 () Bool)

(assert (=> b!1841903 (= e!1177046 (<= 0 (cheight!6918 t!3734)))))

(assert (= (and d!563256 res!827633) b!1841901))

(assert (= (and b!1841901 res!827634) b!1841902))

(assert (= (and b!1841902 res!827635) b!1841903))

(declare-fun m!2269459 () Bool)

(assert (=> d!563256 m!2269459))

(declare-fun m!2269461 () Bool)

(assert (=> d!563256 m!2269461))

(assert (=> b!1841902 m!2269309))

(declare-fun m!2269463 () Bool)

(assert (=> b!1841902 m!2269463))

(assert (=> b!1841902 m!2269309))

(assert (=> b!1841902 m!2269463))

(declare-fun m!2269465 () Bool)

(assert (=> b!1841902 m!2269465))

(assert (=> b!1841822 d!563256))

(declare-fun d!563258 () Bool)

(assert (=> d!563258 (= (inv!26504 (xs!9583 (left!16214 t!3734))) (<= (size!16079 (innerList!6767 (xs!9583 (left!16214 t!3734)))) 2147483647))))

(declare-fun bs!408642 () Bool)

(assert (= bs!408642 d!563258))

(declare-fun m!2269467 () Bool)

(assert (=> bs!408642 m!2269467))

(assert (=> b!1841859 d!563258))

(declare-fun d!563260 () Bool)

(declare-fun c!300619 () Bool)

(assert (=> d!563260 (= c!300619 ((_ is Node!6707) (left!16214 (left!16214 t!3734))))))

(declare-fun e!1177047 () Bool)

(assert (=> d!563260 (= (inv!26503 (left!16214 (left!16214 t!3734))) e!1177047)))

(declare-fun b!1841904 () Bool)

(assert (=> b!1841904 (= e!1177047 (inv!26505 (left!16214 (left!16214 t!3734))))))

(declare-fun b!1841905 () Bool)

(declare-fun e!1177048 () Bool)

(assert (=> b!1841905 (= e!1177047 e!1177048)))

(declare-fun res!827636 () Bool)

(assert (=> b!1841905 (= res!827636 (not ((_ is Leaf!9797) (left!16214 (left!16214 t!3734)))))))

(assert (=> b!1841905 (=> res!827636 e!1177048)))

(declare-fun b!1841906 () Bool)

(assert (=> b!1841906 (= e!1177048 (inv!26506 (left!16214 (left!16214 t!3734))))))

(assert (= (and d!563260 c!300619) b!1841904))

(assert (= (and d!563260 (not c!300619)) b!1841905))

(assert (= (and b!1841905 (not res!827636)) b!1841906))

(declare-fun m!2269469 () Bool)

(assert (=> b!1841904 m!2269469))

(declare-fun m!2269471 () Bool)

(assert (=> b!1841906 m!2269471))

(assert (=> b!1841858 d!563260))

(declare-fun d!563262 () Bool)

(declare-fun c!300620 () Bool)

(assert (=> d!563262 (= c!300620 ((_ is Node!6707) (right!16544 (left!16214 t!3734))))))

(declare-fun e!1177049 () Bool)

(assert (=> d!563262 (= (inv!26503 (right!16544 (left!16214 t!3734))) e!1177049)))

(declare-fun b!1841907 () Bool)

(assert (=> b!1841907 (= e!1177049 (inv!26505 (right!16544 (left!16214 t!3734))))))

(declare-fun b!1841908 () Bool)

(declare-fun e!1177050 () Bool)

(assert (=> b!1841908 (= e!1177049 e!1177050)))

(declare-fun res!827637 () Bool)

(assert (=> b!1841908 (= res!827637 (not ((_ is Leaf!9797) (right!16544 (left!16214 t!3734)))))))

(assert (=> b!1841908 (=> res!827637 e!1177050)))

(declare-fun b!1841909 () Bool)

(assert (=> b!1841909 (= e!1177050 (inv!26506 (right!16544 (left!16214 t!3734))))))

(assert (= (and d!563262 c!300620) b!1841907))

(assert (= (and d!563262 (not c!300620)) b!1841908))

(assert (= (and b!1841908 (not res!827637)) b!1841909))

(declare-fun m!2269473 () Bool)

(assert (=> b!1841907 m!2269473))

(declare-fun m!2269475 () Bool)

(assert (=> b!1841909 m!2269475))

(assert (=> b!1841858 d!563262))

(declare-fun d!563264 () Bool)

(declare-fun res!827638 () Bool)

(declare-fun e!1177051 () Bool)

(assert (=> d!563264 (=> (not res!827638) (not e!1177051))))

(assert (=> d!563264 (= res!827638 (<= (size!16079 (list!8249 (xs!9583 (right!16544 t!3734)))) 512))))

(assert (=> d!563264 (= (inv!26506 (right!16544 t!3734)) e!1177051)))

(declare-fun b!1841910 () Bool)

(declare-fun res!827639 () Bool)

(assert (=> b!1841910 (=> (not res!827639) (not e!1177051))))

(assert (=> b!1841910 (= res!827639 (= (csize!13645 (right!16544 t!3734)) (size!16079 (list!8249 (xs!9583 (right!16544 t!3734))))))))

(declare-fun b!1841911 () Bool)

(assert (=> b!1841911 (= e!1177051 (and (> (csize!13645 (right!16544 t!3734)) 0) (<= (csize!13645 (right!16544 t!3734)) 512)))))

(assert (= (and d!563264 res!827638) b!1841910))

(assert (= (and b!1841910 res!827639) b!1841911))

(assert (=> d!563264 m!2269365))

(assert (=> d!563264 m!2269365))

(declare-fun m!2269477 () Bool)

(assert (=> d!563264 m!2269477))

(assert (=> b!1841910 m!2269365))

(assert (=> b!1841910 m!2269365))

(assert (=> b!1841910 m!2269477))

(assert (=> b!1841830 d!563264))

(declare-fun d!563266 () Bool)

(declare-fun c!300621 () Bool)

(assert (=> d!563266 (= c!300621 ((_ is Node!6707) (left!16214 (right!16544 t!3734))))))

(declare-fun e!1177052 () Bool)

(assert (=> d!563266 (= (inv!26503 (left!16214 (right!16544 t!3734))) e!1177052)))

(declare-fun b!1841912 () Bool)

(assert (=> b!1841912 (= e!1177052 (inv!26505 (left!16214 (right!16544 t!3734))))))

(declare-fun b!1841913 () Bool)

(declare-fun e!1177053 () Bool)

(assert (=> b!1841913 (= e!1177052 e!1177053)))

(declare-fun res!827640 () Bool)

(assert (=> b!1841913 (= res!827640 (not ((_ is Leaf!9797) (left!16214 (right!16544 t!3734)))))))

(assert (=> b!1841913 (=> res!827640 e!1177053)))

(declare-fun b!1841914 () Bool)

(assert (=> b!1841914 (= e!1177053 (inv!26506 (left!16214 (right!16544 t!3734))))))

(assert (= (and d!563266 c!300621) b!1841912))

(assert (= (and d!563266 (not c!300621)) b!1841913))

(assert (= (and b!1841913 (not res!827640)) b!1841914))

(declare-fun m!2269479 () Bool)

(assert (=> b!1841912 m!2269479))

(declare-fun m!2269481 () Bool)

(assert (=> b!1841914 m!2269481))

(assert (=> b!1841865 d!563266))

(declare-fun d!563270 () Bool)

(declare-fun c!300622 () Bool)

(assert (=> d!563270 (= c!300622 ((_ is Node!6707) (right!16544 (right!16544 t!3734))))))

(declare-fun e!1177054 () Bool)

(assert (=> d!563270 (= (inv!26503 (right!16544 (right!16544 t!3734))) e!1177054)))

(declare-fun b!1841915 () Bool)

(assert (=> b!1841915 (= e!1177054 (inv!26505 (right!16544 (right!16544 t!3734))))))

(declare-fun b!1841916 () Bool)

(declare-fun e!1177055 () Bool)

(assert (=> b!1841916 (= e!1177054 e!1177055)))

(declare-fun res!827641 () Bool)

(assert (=> b!1841916 (= res!827641 (not ((_ is Leaf!9797) (right!16544 (right!16544 t!3734)))))))

(assert (=> b!1841916 (=> res!827641 e!1177055)))

(declare-fun b!1841917 () Bool)

(assert (=> b!1841917 (= e!1177055 (inv!26506 (right!16544 (right!16544 t!3734))))))

(assert (= (and d!563270 c!300622) b!1841915))

(assert (= (and d!563270 (not c!300622)) b!1841916))

(assert (= (and b!1841916 (not res!827641)) b!1841917))

(declare-fun m!2269483 () Bool)

(assert (=> b!1841915 m!2269483))

(declare-fun m!2269485 () Bool)

(assert (=> b!1841917 m!2269485))

(assert (=> b!1841865 d!563270))

(declare-fun bs!408643 () Bool)

(declare-fun d!563272 () Bool)

(assert (= bs!408643 (and d!563272 d!563242)))

(declare-fun lambda!72321 () Int)

(assert (=> bs!408643 (= lambda!72321 lambda!72319)))

(declare-fun bs!408644 () Bool)

(assert (= bs!408644 (and d!563272 d!563246)))

(assert (=> bs!408644 (= lambda!72321 lambda!72320)))

(assert (=> d!563272 true))

(assert (=> d!563272 (< (dynLambda!10082 order!13081 p!1470) (dynLambda!10082 order!13081 lambda!72321))))

(assert (=> d!563272 (= (exists!659 (list!8248 (right!16544 t!3734)) p!1470) (not (forall!4360 (list!8248 (right!16544 t!3734)) lambda!72321)))))

(declare-fun bs!408645 () Bool)

(assert (= bs!408645 d!563272))

(assert (=> bs!408645 m!2269315))

(declare-fun m!2269487 () Bool)

(assert (=> bs!408645 m!2269487))

(assert (=> b!1841768 d!563272))

(declare-fun d!563276 () Bool)

(declare-fun e!1177057 () Bool)

(assert (=> d!563276 e!1177057))

(declare-fun res!827643 () Bool)

(assert (=> d!563276 (=> (not res!827643) (not e!1177057))))

(declare-fun lt!714340 () List!20352)

(assert (=> d!563276 (= res!827643 (= (content!3020 lt!714340) ((_ map or) (content!3020 (list!8248 (left!16214 (right!16544 t!3734)))) (content!3020 (list!8248 (right!16544 (right!16544 t!3734)))))))))

(declare-fun e!1177056 () List!20352)

(assert (=> d!563276 (= lt!714340 e!1177056)))

(declare-fun c!300623 () Bool)

(assert (=> d!563276 (= c!300623 ((_ is Nil!20282) (list!8248 (left!16214 (right!16544 t!3734)))))))

(assert (=> d!563276 (= (++!5516 (list!8248 (left!16214 (right!16544 t!3734))) (list!8248 (right!16544 (right!16544 t!3734)))) lt!714340)))

(declare-fun b!1841920 () Bool)

(declare-fun res!827642 () Bool)

(assert (=> b!1841920 (=> (not res!827642) (not e!1177057))))

(assert (=> b!1841920 (= res!827642 (= (size!16079 lt!714340) (+ (size!16079 (list!8248 (left!16214 (right!16544 t!3734)))) (size!16079 (list!8248 (right!16544 (right!16544 t!3734)))))))))

(declare-fun b!1841921 () Bool)

(assert (=> b!1841921 (= e!1177057 (or (not (= (list!8248 (right!16544 (right!16544 t!3734))) Nil!20282)) (= lt!714340 (list!8248 (left!16214 (right!16544 t!3734))))))))

(declare-fun b!1841918 () Bool)

(assert (=> b!1841918 (= e!1177056 (list!8248 (right!16544 (right!16544 t!3734))))))

(declare-fun b!1841919 () Bool)

(assert (=> b!1841919 (= e!1177056 (Cons!20282 (h!25683 (list!8248 (left!16214 (right!16544 t!3734)))) (++!5516 (t!171805 (list!8248 (left!16214 (right!16544 t!3734)))) (list!8248 (right!16544 (right!16544 t!3734))))))))

(assert (= (and d!563276 c!300623) b!1841918))

(assert (= (and d!563276 (not c!300623)) b!1841919))

(assert (= (and d!563276 res!827643) b!1841920))

(assert (= (and b!1841920 res!827642) b!1841921))

(declare-fun m!2269489 () Bool)

(assert (=> d!563276 m!2269489))

(assert (=> d!563276 m!2269359))

(declare-fun m!2269491 () Bool)

(assert (=> d!563276 m!2269491))

(assert (=> d!563276 m!2269361))

(declare-fun m!2269493 () Bool)

(assert (=> d!563276 m!2269493))

(declare-fun m!2269495 () Bool)

(assert (=> b!1841920 m!2269495))

(assert (=> b!1841920 m!2269359))

(declare-fun m!2269497 () Bool)

(assert (=> b!1841920 m!2269497))

(assert (=> b!1841920 m!2269361))

(declare-fun m!2269499 () Bool)

(assert (=> b!1841920 m!2269499))

(assert (=> b!1841919 m!2269361))

(declare-fun m!2269501 () Bool)

(assert (=> b!1841919 m!2269501))

(assert (=> b!1841796 d!563276))

(declare-fun b!1841925 () Bool)

(declare-fun e!1177060 () List!20352)

(declare-fun e!1177061 () List!20352)

(assert (=> b!1841925 (= e!1177060 e!1177061)))

(declare-fun c!300625 () Bool)

(assert (=> b!1841925 (= c!300625 ((_ is Leaf!9797) (left!16214 (right!16544 t!3734))))))

(declare-fun d!563278 () Bool)

(declare-fun c!300624 () Bool)

(assert (=> d!563278 (= c!300624 ((_ is Empty!6707) (left!16214 (right!16544 t!3734))))))

(assert (=> d!563278 (= (list!8248 (left!16214 (right!16544 t!3734))) e!1177060)))

(declare-fun b!1841927 () Bool)

(assert (=> b!1841927 (= e!1177061 (++!5516 (list!8248 (left!16214 (left!16214 (right!16544 t!3734)))) (list!8248 (right!16544 (left!16214 (right!16544 t!3734))))))))

(declare-fun b!1841926 () Bool)

(assert (=> b!1841926 (= e!1177061 (list!8249 (xs!9583 (left!16214 (right!16544 t!3734)))))))

(declare-fun b!1841924 () Bool)

(assert (=> b!1841924 (= e!1177060 Nil!20282)))

(assert (= (and d!563278 c!300624) b!1841924))

(assert (= (and d!563278 (not c!300624)) b!1841925))

(assert (= (and b!1841925 c!300625) b!1841926))

(assert (= (and b!1841925 (not c!300625)) b!1841927))

(declare-fun m!2269503 () Bool)

(assert (=> b!1841927 m!2269503))

(declare-fun m!2269505 () Bool)

(assert (=> b!1841927 m!2269505))

(assert (=> b!1841927 m!2269503))

(assert (=> b!1841927 m!2269505))

(declare-fun m!2269507 () Bool)

(assert (=> b!1841927 m!2269507))

(declare-fun m!2269509 () Bool)

(assert (=> b!1841926 m!2269509))

(assert (=> b!1841796 d!563278))

(declare-fun b!1841931 () Bool)

(declare-fun e!1177062 () List!20352)

(declare-fun e!1177063 () List!20352)

(assert (=> b!1841931 (= e!1177062 e!1177063)))

(declare-fun c!300627 () Bool)

(assert (=> b!1841931 (= c!300627 ((_ is Leaf!9797) (right!16544 (right!16544 t!3734))))))

(declare-fun d!563280 () Bool)

(declare-fun c!300626 () Bool)

(assert (=> d!563280 (= c!300626 ((_ is Empty!6707) (right!16544 (right!16544 t!3734))))))

(assert (=> d!563280 (= (list!8248 (right!16544 (right!16544 t!3734))) e!1177062)))

(declare-fun b!1841933 () Bool)

(assert (=> b!1841933 (= e!1177063 (++!5516 (list!8248 (left!16214 (right!16544 (right!16544 t!3734)))) (list!8248 (right!16544 (right!16544 (right!16544 t!3734))))))))

(declare-fun b!1841932 () Bool)

(assert (=> b!1841932 (= e!1177063 (list!8249 (xs!9583 (right!16544 (right!16544 t!3734)))))))

(declare-fun b!1841930 () Bool)

(assert (=> b!1841930 (= e!1177062 Nil!20282)))

(assert (= (and d!563280 c!300626) b!1841930))

(assert (= (and d!563280 (not c!300626)) b!1841931))

(assert (= (and b!1841931 c!300627) b!1841932))

(assert (= (and b!1841931 (not c!300627)) b!1841933))

(declare-fun m!2269511 () Bool)

(assert (=> b!1841933 m!2269511))

(declare-fun m!2269513 () Bool)

(assert (=> b!1841933 m!2269513))

(assert (=> b!1841933 m!2269511))

(assert (=> b!1841933 m!2269513))

(declare-fun m!2269515 () Bool)

(assert (=> b!1841933 m!2269515))

(declare-fun m!2269517 () Bool)

(assert (=> b!1841932 m!2269517))

(assert (=> b!1841796 d!563280))

(declare-fun d!563282 () Bool)

(declare-fun res!827648 () Bool)

(declare-fun e!1177064 () Bool)

(assert (=> d!563282 (=> (not res!827648) (not e!1177064))))

(assert (=> d!563282 (= res!827648 (= (csize!13644 (right!16544 t!3734)) (+ (size!16081 (left!16214 (right!16544 t!3734))) (size!16081 (right!16544 (right!16544 t!3734))))))))

(assert (=> d!563282 (= (inv!26505 (right!16544 t!3734)) e!1177064)))

(declare-fun b!1841934 () Bool)

(declare-fun res!827649 () Bool)

(assert (=> b!1841934 (=> (not res!827649) (not e!1177064))))

(assert (=> b!1841934 (= res!827649 (and (not (= (left!16214 (right!16544 t!3734)) Empty!6707)) (not (= (right!16544 (right!16544 t!3734)) Empty!6707))))))

(declare-fun b!1841935 () Bool)

(declare-fun res!827650 () Bool)

(assert (=> b!1841935 (=> (not res!827650) (not e!1177064))))

(assert (=> b!1841935 (= res!827650 (= (cheight!6918 (right!16544 t!3734)) (+ (max!0 (height!1023 (left!16214 (right!16544 t!3734))) (height!1023 (right!16544 (right!16544 t!3734)))) 1)))))

(declare-fun b!1841936 () Bool)

(assert (=> b!1841936 (= e!1177064 (<= 0 (cheight!6918 (right!16544 t!3734))))))

(assert (= (and d!563282 res!827648) b!1841934))

(assert (= (and b!1841934 res!827649) b!1841935))

(assert (= (and b!1841935 res!827650) b!1841936))

(declare-fun m!2269519 () Bool)

(assert (=> d!563282 m!2269519))

(declare-fun m!2269521 () Bool)

(assert (=> d!563282 m!2269521))

(declare-fun m!2269523 () Bool)

(assert (=> b!1841935 m!2269523))

(declare-fun m!2269525 () Bool)

(assert (=> b!1841935 m!2269525))

(assert (=> b!1841935 m!2269523))

(assert (=> b!1841935 m!2269525))

(declare-fun m!2269527 () Bool)

(assert (=> b!1841935 m!2269527))

(assert (=> b!1841828 d!563282))

(declare-fun d!563284 () Bool)

(declare-fun e!1177067 () Bool)

(assert (=> d!563284 e!1177067))

(declare-fun res!827654 () Bool)

(assert (=> d!563284 (=> (not res!827654) (not e!1177067))))

(declare-fun lt!714341 () List!20352)

(assert (=> d!563284 (= res!827654 (= (content!3020 lt!714341) ((_ map or) (content!3020 (list!8248 (left!16214 (left!16214 t!3734)))) (content!3020 (list!8248 (right!16544 (left!16214 t!3734)))))))))

(declare-fun e!1177066 () List!20352)

(assert (=> d!563284 (= lt!714341 e!1177066)))

(declare-fun c!300628 () Bool)

(assert (=> d!563284 (= c!300628 ((_ is Nil!20282) (list!8248 (left!16214 (left!16214 t!3734)))))))

(assert (=> d!563284 (= (++!5516 (list!8248 (left!16214 (left!16214 t!3734))) (list!8248 (right!16544 (left!16214 t!3734)))) lt!714341)))

(declare-fun b!1841941 () Bool)

(declare-fun res!827653 () Bool)

(assert (=> b!1841941 (=> (not res!827653) (not e!1177067))))

(assert (=> b!1841941 (= res!827653 (= (size!16079 lt!714341) (+ (size!16079 (list!8248 (left!16214 (left!16214 t!3734)))) (size!16079 (list!8248 (right!16544 (left!16214 t!3734)))))))))

(declare-fun b!1841942 () Bool)

(assert (=> b!1841942 (= e!1177067 (or (not (= (list!8248 (right!16544 (left!16214 t!3734))) Nil!20282)) (= lt!714341 (list!8248 (left!16214 (left!16214 t!3734))))))))

(declare-fun b!1841939 () Bool)

(assert (=> b!1841939 (= e!1177066 (list!8248 (right!16544 (left!16214 t!3734))))))

(declare-fun b!1841940 () Bool)

(assert (=> b!1841940 (= e!1177066 (Cons!20282 (h!25683 (list!8248 (left!16214 (left!16214 t!3734)))) (++!5516 (t!171805 (list!8248 (left!16214 (left!16214 t!3734)))) (list!8248 (right!16544 (left!16214 t!3734))))))))

(assert (= (and d!563284 c!300628) b!1841939))

(assert (= (and d!563284 (not c!300628)) b!1841940))

(assert (= (and d!563284 res!827654) b!1841941))

(assert (= (and b!1841941 res!827653) b!1841942))

(declare-fun m!2269533 () Bool)

(assert (=> d!563284 m!2269533))

(assert (=> d!563284 m!2269367))

(declare-fun m!2269535 () Bool)

(assert (=> d!563284 m!2269535))

(assert (=> d!563284 m!2269369))

(declare-fun m!2269537 () Bool)

(assert (=> d!563284 m!2269537))

(declare-fun m!2269539 () Bool)

(assert (=> b!1841941 m!2269539))

(assert (=> b!1841941 m!2269367))

(declare-fun m!2269541 () Bool)

(assert (=> b!1841941 m!2269541))

(assert (=> b!1841941 m!2269369))

(declare-fun m!2269543 () Bool)

(assert (=> b!1841941 m!2269543))

(assert (=> b!1841940 m!2269369))

(declare-fun m!2269545 () Bool)

(assert (=> b!1841940 m!2269545))

(assert (=> b!1841800 d!563284))

(declare-fun b!1841944 () Bool)

(declare-fun e!1177068 () List!20352)

(declare-fun e!1177069 () List!20352)

(assert (=> b!1841944 (= e!1177068 e!1177069)))

(declare-fun c!300630 () Bool)

(assert (=> b!1841944 (= c!300630 ((_ is Leaf!9797) (left!16214 (left!16214 t!3734))))))

(declare-fun d!563288 () Bool)

(declare-fun c!300629 () Bool)

(assert (=> d!563288 (= c!300629 ((_ is Empty!6707) (left!16214 (left!16214 t!3734))))))

(assert (=> d!563288 (= (list!8248 (left!16214 (left!16214 t!3734))) e!1177068)))

(declare-fun b!1841946 () Bool)

(assert (=> b!1841946 (= e!1177069 (++!5516 (list!8248 (left!16214 (left!16214 (left!16214 t!3734)))) (list!8248 (right!16544 (left!16214 (left!16214 t!3734))))))))

(declare-fun b!1841945 () Bool)

(assert (=> b!1841945 (= e!1177069 (list!8249 (xs!9583 (left!16214 (left!16214 t!3734)))))))

(declare-fun b!1841943 () Bool)

(assert (=> b!1841943 (= e!1177068 Nil!20282)))

(assert (= (and d!563288 c!300629) b!1841943))

(assert (= (and d!563288 (not c!300629)) b!1841944))

(assert (= (and b!1841944 c!300630) b!1841945))

(assert (= (and b!1841944 (not c!300630)) b!1841946))

(declare-fun m!2269547 () Bool)

(assert (=> b!1841946 m!2269547))

(declare-fun m!2269549 () Bool)

(assert (=> b!1841946 m!2269549))

(assert (=> b!1841946 m!2269547))

(assert (=> b!1841946 m!2269549))

(declare-fun m!2269551 () Bool)

(assert (=> b!1841946 m!2269551))

(declare-fun m!2269553 () Bool)

(assert (=> b!1841945 m!2269553))

(assert (=> b!1841800 d!563288))

(declare-fun b!1841948 () Bool)

(declare-fun e!1177070 () List!20352)

(declare-fun e!1177071 () List!20352)

(assert (=> b!1841948 (= e!1177070 e!1177071)))

(declare-fun c!300632 () Bool)

(assert (=> b!1841948 (= c!300632 ((_ is Leaf!9797) (right!16544 (left!16214 t!3734))))))

(declare-fun d!563290 () Bool)

(declare-fun c!300631 () Bool)

(assert (=> d!563290 (= c!300631 ((_ is Empty!6707) (right!16544 (left!16214 t!3734))))))

(assert (=> d!563290 (= (list!8248 (right!16544 (left!16214 t!3734))) e!1177070)))

(declare-fun b!1841950 () Bool)

(assert (=> b!1841950 (= e!1177071 (++!5516 (list!8248 (left!16214 (right!16544 (left!16214 t!3734)))) (list!8248 (right!16544 (right!16544 (left!16214 t!3734))))))))

(declare-fun b!1841949 () Bool)

(assert (=> b!1841949 (= e!1177071 (list!8249 (xs!9583 (right!16544 (left!16214 t!3734)))))))

(declare-fun b!1841947 () Bool)

(assert (=> b!1841947 (= e!1177070 Nil!20282)))

(assert (= (and d!563290 c!300631) b!1841947))

(assert (= (and d!563290 (not c!300631)) b!1841948))

(assert (= (and b!1841948 c!300632) b!1841949))

(assert (= (and b!1841948 (not c!300632)) b!1841950))

(declare-fun m!2269555 () Bool)

(assert (=> b!1841950 m!2269555))

(declare-fun m!2269557 () Bool)

(assert (=> b!1841950 m!2269557))

(assert (=> b!1841950 m!2269555))

(assert (=> b!1841950 m!2269557))

(declare-fun m!2269559 () Bool)

(assert (=> b!1841950 m!2269559))

(declare-fun m!2269561 () Bool)

(assert (=> b!1841949 m!2269561))

(assert (=> b!1841800 d!563290))

(declare-fun d!563292 () Bool)

(declare-fun lt!714347 () Int)

(assert (=> d!563292 (>= lt!714347 0)))

(declare-fun e!1177077 () Int)

(assert (=> d!563292 (= lt!714347 e!1177077)))

(declare-fun c!300638 () Bool)

(assert (=> d!563292 (= c!300638 ((_ is Nil!20282) (innerList!6767 (xs!9583 t!3734))))))

(assert (=> d!563292 (= (size!16079 (innerList!6767 (xs!9583 t!3734))) lt!714347)))

(declare-fun b!1841961 () Bool)

(assert (=> b!1841961 (= e!1177077 0)))

(declare-fun b!1841962 () Bool)

(assert (=> b!1841962 (= e!1177077 (+ 1 (size!16079 (t!171805 (innerList!6767 (xs!9583 t!3734))))))))

(assert (= (and d!563292 c!300638) b!1841961))

(assert (= (and d!563292 (not c!300638)) b!1841962))

(declare-fun m!2269565 () Bool)

(assert (=> b!1841962 m!2269565))

(assert (=> d!563204 d!563292))

(declare-fun d!563296 () Bool)

(assert (=> d!563296 (= (list!8249 (xs!9583 (left!16214 t!3734))) (innerList!6767 (xs!9583 (left!16214 t!3734))))))

(assert (=> b!1841799 d!563296))

(declare-fun d!563298 () Bool)

(declare-fun res!827655 () Bool)

(declare-fun e!1177078 () Bool)

(assert (=> d!563298 (=> (not res!827655) (not e!1177078))))

(assert (=> d!563298 (= res!827655 (<= (size!16079 (list!8249 (xs!9583 (left!16214 t!3734)))) 512))))

(assert (=> d!563298 (= (inv!26506 (left!16214 t!3734)) e!1177078)))

(declare-fun b!1841963 () Bool)

(declare-fun res!827656 () Bool)

(assert (=> b!1841963 (=> (not res!827656) (not e!1177078))))

(assert (=> b!1841963 (= res!827656 (= (csize!13645 (left!16214 t!3734)) (size!16079 (list!8249 (xs!9583 (left!16214 t!3734))))))))

(declare-fun b!1841964 () Bool)

(assert (=> b!1841964 (= e!1177078 (and (> (csize!13645 (left!16214 t!3734)) 0) (<= (csize!13645 (left!16214 t!3734)) 512)))))

(assert (= (and d!563298 res!827655) b!1841963))

(assert (= (and b!1841963 res!827656) b!1841964))

(assert (=> d!563298 m!2269373))

(assert (=> d!563298 m!2269373))

(declare-fun m!2269567 () Bool)

(assert (=> d!563298 m!2269567))

(assert (=> b!1841963 m!2269373))

(assert (=> b!1841963 m!2269373))

(assert (=> b!1841963 m!2269567))

(assert (=> b!1841827 d!563298))

(declare-fun e!1177079 () Bool)

(declare-fun b!1841965 () Bool)

(declare-fun tp!520832 () Bool)

(declare-fun tp!520833 () Bool)

(assert (=> b!1841965 (= e!1177079 (and (inv!26503 (left!16214 (left!16214 (left!16214 t!3734)))) tp!520833 (inv!26503 (right!16544 (left!16214 (left!16214 t!3734)))) tp!520832))))

(declare-fun b!1841967 () Bool)

(declare-fun e!1177080 () Bool)

(declare-fun tp!520831 () Bool)

(assert (=> b!1841967 (= e!1177080 tp!520831)))

(declare-fun b!1841966 () Bool)

(assert (=> b!1841966 (= e!1177079 (and (inv!26504 (xs!9583 (left!16214 (left!16214 t!3734)))) e!1177080))))

(assert (=> b!1841858 (= tp!520824 (and (inv!26503 (left!16214 (left!16214 t!3734))) e!1177079))))

(assert (= (and b!1841858 ((_ is Node!6707) (left!16214 (left!16214 t!3734)))) b!1841965))

(assert (= b!1841966 b!1841967))

(assert (= (and b!1841858 ((_ is Leaf!9797) (left!16214 (left!16214 t!3734)))) b!1841966))

(declare-fun m!2269569 () Bool)

(assert (=> b!1841965 m!2269569))

(declare-fun m!2269571 () Bool)

(assert (=> b!1841965 m!2269571))

(declare-fun m!2269573 () Bool)

(assert (=> b!1841966 m!2269573))

(assert (=> b!1841858 m!2269413))

(declare-fun b!1841968 () Bool)

(declare-fun e!1177081 () Bool)

(declare-fun tp!520836 () Bool)

(declare-fun tp!520835 () Bool)

(assert (=> b!1841968 (= e!1177081 (and (inv!26503 (left!16214 (right!16544 (left!16214 t!3734)))) tp!520836 (inv!26503 (right!16544 (right!16544 (left!16214 t!3734)))) tp!520835))))

(declare-fun b!1841970 () Bool)

(declare-fun e!1177082 () Bool)

(declare-fun tp!520834 () Bool)

(assert (=> b!1841970 (= e!1177082 tp!520834)))

(declare-fun b!1841969 () Bool)

(assert (=> b!1841969 (= e!1177081 (and (inv!26504 (xs!9583 (right!16544 (left!16214 t!3734)))) e!1177082))))

(assert (=> b!1841858 (= tp!520823 (and (inv!26503 (right!16544 (left!16214 t!3734))) e!1177081))))

(assert (= (and b!1841858 ((_ is Node!6707) (right!16544 (left!16214 t!3734)))) b!1841968))

(assert (= b!1841969 b!1841970))

(assert (= (and b!1841858 ((_ is Leaf!9797) (right!16544 (left!16214 t!3734)))) b!1841969))

(declare-fun m!2269575 () Bool)

(assert (=> b!1841968 m!2269575))

(declare-fun m!2269577 () Bool)

(assert (=> b!1841968 m!2269577))

(declare-fun m!2269579 () Bool)

(assert (=> b!1841969 m!2269579))

(assert (=> b!1841858 m!2269415))

(declare-fun b!1841971 () Bool)

(declare-fun e!1177083 () Bool)

(declare-fun tp!520837 () Bool)

(assert (=> b!1841971 (= e!1177083 (and tp_is_empty!8351 tp!520837))))

(assert (=> b!1841860 (= tp!520822 e!1177083)))

(assert (= (and b!1841860 ((_ is Cons!20282) (innerList!6767 (xs!9583 (left!16214 t!3734))))) b!1841971))

(declare-fun tp!520840 () Bool)

(declare-fun tp!520839 () Bool)

(declare-fun b!1841972 () Bool)

(declare-fun e!1177084 () Bool)

(assert (=> b!1841972 (= e!1177084 (and (inv!26503 (left!16214 (left!16214 (right!16544 t!3734)))) tp!520840 (inv!26503 (right!16544 (left!16214 (right!16544 t!3734)))) tp!520839))))

(declare-fun b!1841974 () Bool)

(declare-fun e!1177085 () Bool)

(declare-fun tp!520838 () Bool)

(assert (=> b!1841974 (= e!1177085 tp!520838)))

(declare-fun b!1841973 () Bool)

(assert (=> b!1841973 (= e!1177084 (and (inv!26504 (xs!9583 (left!16214 (right!16544 t!3734)))) e!1177085))))

(assert (=> b!1841865 (= tp!520829 (and (inv!26503 (left!16214 (right!16544 t!3734))) e!1177084))))

(assert (= (and b!1841865 ((_ is Node!6707) (left!16214 (right!16544 t!3734)))) b!1841972))

(assert (= b!1841973 b!1841974))

(assert (= (and b!1841865 ((_ is Leaf!9797) (left!16214 (right!16544 t!3734)))) b!1841973))

(declare-fun m!2269581 () Bool)

(assert (=> b!1841972 m!2269581))

(declare-fun m!2269583 () Bool)

(assert (=> b!1841972 m!2269583))

(declare-fun m!2269585 () Bool)

(assert (=> b!1841973 m!2269585))

(assert (=> b!1841865 m!2269419))

(declare-fun e!1177088 () Bool)

(declare-fun b!1841979 () Bool)

(declare-fun tp!520842 () Bool)

(declare-fun tp!520843 () Bool)

(assert (=> b!1841979 (= e!1177088 (and (inv!26503 (left!16214 (right!16544 (right!16544 t!3734)))) tp!520843 (inv!26503 (right!16544 (right!16544 (right!16544 t!3734)))) tp!520842))))

(declare-fun b!1841981 () Bool)

(declare-fun e!1177089 () Bool)

(declare-fun tp!520841 () Bool)

(assert (=> b!1841981 (= e!1177089 tp!520841)))

(declare-fun b!1841980 () Bool)

(assert (=> b!1841980 (= e!1177088 (and (inv!26504 (xs!9583 (right!16544 (right!16544 t!3734)))) e!1177089))))

(assert (=> b!1841865 (= tp!520828 (and (inv!26503 (right!16544 (right!16544 t!3734))) e!1177088))))

(assert (= (and b!1841865 ((_ is Node!6707) (right!16544 (right!16544 t!3734)))) b!1841979))

(assert (= b!1841980 b!1841981))

(assert (= (and b!1841865 ((_ is Leaf!9797) (right!16544 (right!16544 t!3734)))) b!1841980))

(declare-fun m!2269587 () Bool)

(assert (=> b!1841979 m!2269587))

(declare-fun m!2269589 () Bool)

(assert (=> b!1841979 m!2269589))

(declare-fun m!2269591 () Bool)

(assert (=> b!1841980 m!2269591))

(assert (=> b!1841865 m!2269421))

(declare-fun b!1841984 () Bool)

(declare-fun e!1177090 () Bool)

(declare-fun tp!520844 () Bool)

(assert (=> b!1841984 (= e!1177090 (and tp_is_empty!8351 tp!520844))))

(assert (=> b!1841843 (= tp!520809 e!1177090)))

(assert (= (and b!1841843 ((_ is Cons!20282) (t!171805 (innerList!6767 (xs!9583 t!3734))))) b!1841984))

(declare-fun b!1841985 () Bool)

(declare-fun e!1177091 () Bool)

(declare-fun tp!520845 () Bool)

(assert (=> b!1841985 (= e!1177091 (and tp_is_empty!8351 tp!520845))))

(assert (=> b!1841867 (= tp!520827 e!1177091)))

(assert (= (and b!1841867 ((_ is Cons!20282) (innerList!6767 (xs!9583 (right!16544 t!3734))))) b!1841985))

(check-sat (not b_next!52209) (not b!1841945) (not b!1841971) (not b!1841962) (not b!1841899) (not b!1841966) (not b!1841984) (not b!1841941) (not b!1841933) (not d!563258) (not d!563252) b_and!143631 (not b!1841974) (not d!563248) (not d!563242) (not b!1841889) (not b!1841949) (not b!1841894) (not b!1841890) (not b!1841926) (not b!1841914) (not b!1841970) (not b!1841902) (not d!563282) (not b!1841985) (not b!1841910) (not b!1841915) (not b!1841972) (not b!1841907) (not b!1841965) (not b!1841979) (not b!1841980) (not b!1841865) (not b!1841876) (not d!563240) (not b!1841932) (not b!1841968) (not b!1841940) (not b!1841973) (not d!563250) (not d!563298) (not d!563246) (not d!563256) (not d!563244) (not b!1841909) (not d!563276) (not b!1841858) (not d!563284) (not b!1841927) (not b!1841912) (not b!1841935) tp_is_empty!8351 (not b!1841967) (not b!1841969) (not b!1841946) (not b!1841981) (not d!563264) (not b!1841920) (not d!563272) (not b!1841919) (not b!1841906) (not b!1841963) (not b!1841904) (not b!1841917) (not b!1841950))
(check-sat b_and!143631 (not b_next!52209))
(get-model)

(declare-fun d!563344 () Bool)

(declare-fun lt!714353 () Int)

(assert (=> d!563344 (>= lt!714353 0)))

(declare-fun e!1177137 () Int)

(assert (=> d!563344 (= lt!714353 e!1177137)))

(declare-fun c!300656 () Bool)

(assert (=> d!563344 (= c!300656 ((_ is Nil!20282) (innerList!6767 (xs!9583 (right!16544 t!3734)))))))

(assert (=> d!563344 (= (size!16079 (innerList!6767 (xs!9583 (right!16544 t!3734)))) lt!714353)))

(declare-fun b!1842067 () Bool)

(assert (=> b!1842067 (= e!1177137 0)))

(declare-fun b!1842068 () Bool)

(assert (=> b!1842068 (= e!1177137 (+ 1 (size!16079 (t!171805 (innerList!6767 (xs!9583 (right!16544 t!3734)))))))))

(assert (= (and d!563344 c!300656) b!1842067))

(assert (= (and d!563344 (not c!300656)) b!1842068))

(declare-fun m!2269749 () Bool)

(assert (=> b!1842068 m!2269749))

(assert (=> d!563252 d!563344))

(declare-fun d!563346 () Bool)

(assert (=> d!563346 (= (max!0 (height!1023 (left!16214 (right!16544 t!3734))) (height!1023 (right!16544 (right!16544 t!3734)))) (ite (< (height!1023 (left!16214 (right!16544 t!3734))) (height!1023 (right!16544 (right!16544 t!3734)))) (height!1023 (right!16544 (right!16544 t!3734))) (height!1023 (left!16214 (right!16544 t!3734)))))))

(assert (=> b!1841935 d!563346))

(declare-fun d!563348 () Bool)

(assert (=> d!563348 (= (height!1023 (left!16214 (right!16544 t!3734))) (ite ((_ is Empty!6707) (left!16214 (right!16544 t!3734))) 0 (ite ((_ is Leaf!9797) (left!16214 (right!16544 t!3734))) 1 (cheight!6918 (left!16214 (right!16544 t!3734))))))))

(assert (=> b!1841935 d!563348))

(declare-fun d!563350 () Bool)

(assert (=> d!563350 (= (height!1023 (right!16544 (right!16544 t!3734))) (ite ((_ is Empty!6707) (right!16544 (right!16544 t!3734))) 0 (ite ((_ is Leaf!9797) (right!16544 (right!16544 t!3734))) 1 (cheight!6918 (right!16544 (right!16544 t!3734))))))))

(assert (=> b!1841935 d!563350))

(declare-fun d!563352 () Bool)

(declare-fun c!300657 () Bool)

(assert (=> d!563352 (= c!300657 ((_ is Node!6707) (left!16214 (left!16214 (left!16214 t!3734)))))))

(declare-fun e!1177138 () Bool)

(assert (=> d!563352 (= (inv!26503 (left!16214 (left!16214 (left!16214 t!3734)))) e!1177138)))

(declare-fun b!1842069 () Bool)

(assert (=> b!1842069 (= e!1177138 (inv!26505 (left!16214 (left!16214 (left!16214 t!3734)))))))

(declare-fun b!1842070 () Bool)

(declare-fun e!1177139 () Bool)

(assert (=> b!1842070 (= e!1177138 e!1177139)))

(declare-fun res!827693 () Bool)

(assert (=> b!1842070 (= res!827693 (not ((_ is Leaf!9797) (left!16214 (left!16214 (left!16214 t!3734))))))))

(assert (=> b!1842070 (=> res!827693 e!1177139)))

(declare-fun b!1842071 () Bool)

(assert (=> b!1842071 (= e!1177139 (inv!26506 (left!16214 (left!16214 (left!16214 t!3734)))))))

(assert (= (and d!563352 c!300657) b!1842069))

(assert (= (and d!563352 (not c!300657)) b!1842070))

(assert (= (and b!1842070 (not res!827693)) b!1842071))

(declare-fun m!2269751 () Bool)

(assert (=> b!1842069 m!2269751))

(declare-fun m!2269753 () Bool)

(assert (=> b!1842071 m!2269753))

(assert (=> b!1841965 d!563352))

(declare-fun d!563354 () Bool)

(declare-fun c!300658 () Bool)

(assert (=> d!563354 (= c!300658 ((_ is Node!6707) (right!16544 (left!16214 (left!16214 t!3734)))))))

(declare-fun e!1177140 () Bool)

(assert (=> d!563354 (= (inv!26503 (right!16544 (left!16214 (left!16214 t!3734)))) e!1177140)))

(declare-fun b!1842072 () Bool)

(assert (=> b!1842072 (= e!1177140 (inv!26505 (right!16544 (left!16214 (left!16214 t!3734)))))))

(declare-fun b!1842073 () Bool)

(declare-fun e!1177141 () Bool)

(assert (=> b!1842073 (= e!1177140 e!1177141)))

(declare-fun res!827694 () Bool)

(assert (=> b!1842073 (= res!827694 (not ((_ is Leaf!9797) (right!16544 (left!16214 (left!16214 t!3734))))))))

(assert (=> b!1842073 (=> res!827694 e!1177141)))

(declare-fun b!1842074 () Bool)

(assert (=> b!1842074 (= e!1177141 (inv!26506 (right!16544 (left!16214 (left!16214 t!3734)))))))

(assert (= (and d!563354 c!300658) b!1842072))

(assert (= (and d!563354 (not c!300658)) b!1842073))

(assert (= (and b!1842073 (not res!827694)) b!1842074))

(declare-fun m!2269755 () Bool)

(assert (=> b!1842072 m!2269755))

(declare-fun m!2269757 () Bool)

(assert (=> b!1842074 m!2269757))

(assert (=> b!1841965 d!563354))

(declare-fun d!563356 () Bool)

(declare-fun lt!714354 () Int)

(assert (=> d!563356 (>= lt!714354 0)))

(declare-fun e!1177142 () Int)

(assert (=> d!563356 (= lt!714354 e!1177142)))

(declare-fun c!300659 () Bool)

(assert (=> d!563356 (= c!300659 ((_ is Nil!20282) lt!714339))))

(assert (=> d!563356 (= (size!16079 lt!714339) lt!714354)))

(declare-fun b!1842075 () Bool)

(assert (=> b!1842075 (= e!1177142 0)))

(declare-fun b!1842076 () Bool)

(assert (=> b!1842076 (= e!1177142 (+ 1 (size!16079 (t!171805 lt!714339))))))

(assert (= (and d!563356 c!300659) b!1842075))

(assert (= (and d!563356 (not c!300659)) b!1842076))

(declare-fun m!2269759 () Bool)

(assert (=> b!1842076 m!2269759))

(assert (=> b!1841890 d!563356))

(declare-fun d!563358 () Bool)

(declare-fun lt!714355 () Int)

(assert (=> d!563358 (>= lt!714355 0)))

(declare-fun e!1177143 () Int)

(assert (=> d!563358 (= lt!714355 e!1177143)))

(declare-fun c!300660 () Bool)

(assert (=> d!563358 (= c!300660 ((_ is Nil!20282) (list!8248 (left!16214 t!3734))))))

(assert (=> d!563358 (= (size!16079 (list!8248 (left!16214 t!3734))) lt!714355)))

(declare-fun b!1842077 () Bool)

(assert (=> b!1842077 (= e!1177143 0)))

(declare-fun b!1842078 () Bool)

(assert (=> b!1842078 (= e!1177143 (+ 1 (size!16079 (t!171805 (list!8248 (left!16214 t!3734))))))))

(assert (= (and d!563358 c!300660) b!1842077))

(assert (= (and d!563358 (not c!300660)) b!1842078))

(declare-fun m!2269761 () Bool)

(assert (=> b!1842078 m!2269761))

(assert (=> b!1841890 d!563358))

(declare-fun d!563360 () Bool)

(declare-fun lt!714356 () Int)

(assert (=> d!563360 (>= lt!714356 0)))

(declare-fun e!1177144 () Int)

(assert (=> d!563360 (= lt!714356 e!1177144)))

(declare-fun c!300661 () Bool)

(assert (=> d!563360 (= c!300661 ((_ is Nil!20282) (list!8248 (right!16544 t!3734))))))

(assert (=> d!563360 (= (size!16079 (list!8248 (right!16544 t!3734))) lt!714356)))

(declare-fun b!1842079 () Bool)

(assert (=> b!1842079 (= e!1177144 0)))

(declare-fun b!1842080 () Bool)

(assert (=> b!1842080 (= e!1177144 (+ 1 (size!16079 (t!171805 (list!8248 (right!16544 t!3734))))))))

(assert (= (and d!563360 c!300661) b!1842079))

(assert (= (and d!563360 (not c!300661)) b!1842080))

(declare-fun m!2269763 () Bool)

(assert (=> b!1842080 m!2269763))

(assert (=> b!1841890 d!563360))

(declare-fun d!563362 () Bool)

(declare-fun lt!714357 () Int)

(assert (=> d!563362 (>= lt!714357 0)))

(declare-fun e!1177145 () Int)

(assert (=> d!563362 (= lt!714357 e!1177145)))

(declare-fun c!300662 () Bool)

(assert (=> d!563362 (= c!300662 ((_ is Nil!20282) (t!171805 (innerList!6767 (xs!9583 t!3734)))))))

(assert (=> d!563362 (= (size!16079 (t!171805 (innerList!6767 (xs!9583 t!3734)))) lt!714357)))

(declare-fun b!1842081 () Bool)

(assert (=> b!1842081 (= e!1177145 0)))

(declare-fun b!1842082 () Bool)

(assert (=> b!1842082 (= e!1177145 (+ 1 (size!16079 (t!171805 (t!171805 (innerList!6767 (xs!9583 t!3734)))))))))

(assert (= (and d!563362 c!300662) b!1842081))

(assert (= (and d!563362 (not c!300662)) b!1842082))

(declare-fun m!2269765 () Bool)

(assert (=> b!1842082 m!2269765))

(assert (=> b!1841962 d!563362))

(declare-fun d!563364 () Bool)

(declare-fun res!827695 () Bool)

(declare-fun e!1177146 () Bool)

(assert (=> d!563364 (=> (not res!827695) (not e!1177146))))

(assert (=> d!563364 (= res!827695 (<= (size!16079 (list!8249 (xs!9583 (left!16214 (right!16544 t!3734))))) 512))))

(assert (=> d!563364 (= (inv!26506 (left!16214 (right!16544 t!3734))) e!1177146)))

(declare-fun b!1842083 () Bool)

(declare-fun res!827696 () Bool)

(assert (=> b!1842083 (=> (not res!827696) (not e!1177146))))

(assert (=> b!1842083 (= res!827696 (= (csize!13645 (left!16214 (right!16544 t!3734))) (size!16079 (list!8249 (xs!9583 (left!16214 (right!16544 t!3734)))))))))

(declare-fun b!1842084 () Bool)

(assert (=> b!1842084 (= e!1177146 (and (> (csize!13645 (left!16214 (right!16544 t!3734))) 0) (<= (csize!13645 (left!16214 (right!16544 t!3734))) 512)))))

(assert (= (and d!563364 res!827695) b!1842083))

(assert (= (and b!1842083 res!827696) b!1842084))

(assert (=> d!563364 m!2269509))

(assert (=> d!563364 m!2269509))

(declare-fun m!2269767 () Bool)

(assert (=> d!563364 m!2269767))

(assert (=> b!1842083 m!2269509))

(assert (=> b!1842083 m!2269509))

(assert (=> b!1842083 m!2269767))

(assert (=> b!1841914 d!563364))

(declare-fun d!563366 () Bool)

(declare-fun lt!714360 () Int)

(assert (=> d!563366 (= lt!714360 (size!16079 (list!8248 (left!16214 (right!16544 t!3734)))))))

(assert (=> d!563366 (= lt!714360 (ite ((_ is Empty!6707) (left!16214 (right!16544 t!3734))) 0 (ite ((_ is Leaf!9797) (left!16214 (right!16544 t!3734))) (csize!13645 (left!16214 (right!16544 t!3734))) (csize!13644 (left!16214 (right!16544 t!3734))))))))

(assert (=> d!563366 (= (size!16081 (left!16214 (right!16544 t!3734))) lt!714360)))

(declare-fun bs!408654 () Bool)

(assert (= bs!408654 d!563366))

(assert (=> bs!408654 m!2269359))

(assert (=> bs!408654 m!2269359))

(assert (=> bs!408654 m!2269497))

(assert (=> d!563282 d!563366))

(declare-fun d!563368 () Bool)

(declare-fun lt!714361 () Int)

(assert (=> d!563368 (= lt!714361 (size!16079 (list!8248 (right!16544 (right!16544 t!3734)))))))

(assert (=> d!563368 (= lt!714361 (ite ((_ is Empty!6707) (right!16544 (right!16544 t!3734))) 0 (ite ((_ is Leaf!9797) (right!16544 (right!16544 t!3734))) (csize!13645 (right!16544 (right!16544 t!3734))) (csize!13644 (right!16544 (right!16544 t!3734))))))))

(assert (=> d!563368 (= (size!16081 (right!16544 (right!16544 t!3734))) lt!714361)))

(declare-fun bs!408655 () Bool)

(assert (= bs!408655 d!563368))

(assert (=> bs!408655 m!2269361))

(assert (=> bs!408655 m!2269361))

(assert (=> bs!408655 m!2269499))

(assert (=> d!563282 d!563368))

(declare-fun d!563370 () Bool)

(assert (=> d!563370 (= (list!8249 (xs!9583 (left!16214 (left!16214 t!3734)))) (innerList!6767 (xs!9583 (left!16214 (left!16214 t!3734)))))))

(assert (=> b!1841945 d!563370))

(declare-fun d!563372 () Bool)

(declare-fun e!1177148 () Bool)

(assert (=> d!563372 e!1177148))

(declare-fun res!827698 () Bool)

(assert (=> d!563372 (=> (not res!827698) (not e!1177148))))

(declare-fun lt!714362 () List!20352)

(assert (=> d!563372 (= res!827698 (= (content!3020 lt!714362) ((_ map or) (content!3020 (t!171805 (list!8248 (left!16214 (right!16544 t!3734))))) (content!3020 (list!8248 (right!16544 (right!16544 t!3734)))))))))

(declare-fun e!1177147 () List!20352)

(assert (=> d!563372 (= lt!714362 e!1177147)))

(declare-fun c!300663 () Bool)

(assert (=> d!563372 (= c!300663 ((_ is Nil!20282) (t!171805 (list!8248 (left!16214 (right!16544 t!3734))))))))

(assert (=> d!563372 (= (++!5516 (t!171805 (list!8248 (left!16214 (right!16544 t!3734)))) (list!8248 (right!16544 (right!16544 t!3734)))) lt!714362)))

(declare-fun b!1842087 () Bool)

(declare-fun res!827697 () Bool)

(assert (=> b!1842087 (=> (not res!827697) (not e!1177148))))

(assert (=> b!1842087 (= res!827697 (= (size!16079 lt!714362) (+ (size!16079 (t!171805 (list!8248 (left!16214 (right!16544 t!3734))))) (size!16079 (list!8248 (right!16544 (right!16544 t!3734)))))))))

(declare-fun b!1842088 () Bool)

(assert (=> b!1842088 (= e!1177148 (or (not (= (list!8248 (right!16544 (right!16544 t!3734))) Nil!20282)) (= lt!714362 (t!171805 (list!8248 (left!16214 (right!16544 t!3734)))))))))

(declare-fun b!1842085 () Bool)

(assert (=> b!1842085 (= e!1177147 (list!8248 (right!16544 (right!16544 t!3734))))))

(declare-fun b!1842086 () Bool)

(assert (=> b!1842086 (= e!1177147 (Cons!20282 (h!25683 (t!171805 (list!8248 (left!16214 (right!16544 t!3734))))) (++!5516 (t!171805 (t!171805 (list!8248 (left!16214 (right!16544 t!3734))))) (list!8248 (right!16544 (right!16544 t!3734))))))))

(assert (= (and d!563372 c!300663) b!1842085))

(assert (= (and d!563372 (not c!300663)) b!1842086))

(assert (= (and d!563372 res!827698) b!1842087))

(assert (= (and b!1842087 res!827697) b!1842088))

(declare-fun m!2269769 () Bool)

(assert (=> d!563372 m!2269769))

(declare-fun m!2269771 () Bool)

(assert (=> d!563372 m!2269771))

(assert (=> d!563372 m!2269361))

(assert (=> d!563372 m!2269493))

(declare-fun m!2269773 () Bool)

(assert (=> b!1842087 m!2269773))

(declare-fun m!2269775 () Bool)

(assert (=> b!1842087 m!2269775))

(assert (=> b!1842087 m!2269361))

(assert (=> b!1842087 m!2269499))

(assert (=> b!1842086 m!2269361))

(declare-fun m!2269777 () Bool)

(assert (=> b!1842086 m!2269777))

(assert (=> b!1841919 d!563372))

(declare-fun d!563374 () Bool)

(declare-fun e!1177150 () Bool)

(assert (=> d!563374 e!1177150))

(declare-fun res!827700 () Bool)

(assert (=> d!563374 (=> (not res!827700) (not e!1177150))))

(declare-fun lt!714363 () List!20352)

(assert (=> d!563374 (= res!827700 (= (content!3020 lt!714363) ((_ map or) (content!3020 (list!8248 (left!16214 (right!16544 (left!16214 t!3734))))) (content!3020 (list!8248 (right!16544 (right!16544 (left!16214 t!3734))))))))))

(declare-fun e!1177149 () List!20352)

(assert (=> d!563374 (= lt!714363 e!1177149)))

(declare-fun c!300664 () Bool)

(assert (=> d!563374 (= c!300664 ((_ is Nil!20282) (list!8248 (left!16214 (right!16544 (left!16214 t!3734))))))))

(assert (=> d!563374 (= (++!5516 (list!8248 (left!16214 (right!16544 (left!16214 t!3734)))) (list!8248 (right!16544 (right!16544 (left!16214 t!3734))))) lt!714363)))

(declare-fun b!1842091 () Bool)

(declare-fun res!827699 () Bool)

(assert (=> b!1842091 (=> (not res!827699) (not e!1177150))))

(assert (=> b!1842091 (= res!827699 (= (size!16079 lt!714363) (+ (size!16079 (list!8248 (left!16214 (right!16544 (left!16214 t!3734))))) (size!16079 (list!8248 (right!16544 (right!16544 (left!16214 t!3734))))))))))

(declare-fun b!1842092 () Bool)

(assert (=> b!1842092 (= e!1177150 (or (not (= (list!8248 (right!16544 (right!16544 (left!16214 t!3734)))) Nil!20282)) (= lt!714363 (list!8248 (left!16214 (right!16544 (left!16214 t!3734)))))))))

(declare-fun b!1842089 () Bool)

(assert (=> b!1842089 (= e!1177149 (list!8248 (right!16544 (right!16544 (left!16214 t!3734)))))))

(declare-fun b!1842090 () Bool)

(assert (=> b!1842090 (= e!1177149 (Cons!20282 (h!25683 (list!8248 (left!16214 (right!16544 (left!16214 t!3734))))) (++!5516 (t!171805 (list!8248 (left!16214 (right!16544 (left!16214 t!3734))))) (list!8248 (right!16544 (right!16544 (left!16214 t!3734)))))))))

(assert (= (and d!563374 c!300664) b!1842089))

(assert (= (and d!563374 (not c!300664)) b!1842090))

(assert (= (and d!563374 res!827700) b!1842091))

(assert (= (and b!1842091 res!827699) b!1842092))

(declare-fun m!2269779 () Bool)

(assert (=> d!563374 m!2269779))

(assert (=> d!563374 m!2269555))

(declare-fun m!2269781 () Bool)

(assert (=> d!563374 m!2269781))

(assert (=> d!563374 m!2269557))

(declare-fun m!2269783 () Bool)

(assert (=> d!563374 m!2269783))

(declare-fun m!2269785 () Bool)

(assert (=> b!1842091 m!2269785))

(assert (=> b!1842091 m!2269555))

(declare-fun m!2269787 () Bool)

(assert (=> b!1842091 m!2269787))

(assert (=> b!1842091 m!2269557))

(declare-fun m!2269789 () Bool)

(assert (=> b!1842091 m!2269789))

(assert (=> b!1842090 m!2269557))

(declare-fun m!2269791 () Bool)

(assert (=> b!1842090 m!2269791))

(assert (=> b!1841950 d!563374))

(declare-fun b!1842094 () Bool)

(declare-fun e!1177151 () List!20352)

(declare-fun e!1177152 () List!20352)

(assert (=> b!1842094 (= e!1177151 e!1177152)))

(declare-fun c!300666 () Bool)

(assert (=> b!1842094 (= c!300666 ((_ is Leaf!9797) (left!16214 (right!16544 (left!16214 t!3734)))))))

(declare-fun d!563376 () Bool)

(declare-fun c!300665 () Bool)

(assert (=> d!563376 (= c!300665 ((_ is Empty!6707) (left!16214 (right!16544 (left!16214 t!3734)))))))

(assert (=> d!563376 (= (list!8248 (left!16214 (right!16544 (left!16214 t!3734)))) e!1177151)))

(declare-fun b!1842096 () Bool)

(assert (=> b!1842096 (= e!1177152 (++!5516 (list!8248 (left!16214 (left!16214 (right!16544 (left!16214 t!3734))))) (list!8248 (right!16544 (left!16214 (right!16544 (left!16214 t!3734)))))))))

(declare-fun b!1842095 () Bool)

(assert (=> b!1842095 (= e!1177152 (list!8249 (xs!9583 (left!16214 (right!16544 (left!16214 t!3734))))))))

(declare-fun b!1842093 () Bool)

(assert (=> b!1842093 (= e!1177151 Nil!20282)))

(assert (= (and d!563376 c!300665) b!1842093))

(assert (= (and d!563376 (not c!300665)) b!1842094))

(assert (= (and b!1842094 c!300666) b!1842095))

(assert (= (and b!1842094 (not c!300666)) b!1842096))

(declare-fun m!2269793 () Bool)

(assert (=> b!1842096 m!2269793))

(declare-fun m!2269795 () Bool)

(assert (=> b!1842096 m!2269795))

(assert (=> b!1842096 m!2269793))

(assert (=> b!1842096 m!2269795))

(declare-fun m!2269797 () Bool)

(assert (=> b!1842096 m!2269797))

(declare-fun m!2269799 () Bool)

(assert (=> b!1842095 m!2269799))

(assert (=> b!1841950 d!563376))

(declare-fun b!1842098 () Bool)

(declare-fun e!1177153 () List!20352)

(declare-fun e!1177154 () List!20352)

(assert (=> b!1842098 (= e!1177153 e!1177154)))

(declare-fun c!300668 () Bool)

(assert (=> b!1842098 (= c!300668 ((_ is Leaf!9797) (right!16544 (right!16544 (left!16214 t!3734)))))))

(declare-fun d!563378 () Bool)

(declare-fun c!300667 () Bool)

(assert (=> d!563378 (= c!300667 ((_ is Empty!6707) (right!16544 (right!16544 (left!16214 t!3734)))))))

(assert (=> d!563378 (= (list!8248 (right!16544 (right!16544 (left!16214 t!3734)))) e!1177153)))

(declare-fun b!1842100 () Bool)

(assert (=> b!1842100 (= e!1177154 (++!5516 (list!8248 (left!16214 (right!16544 (right!16544 (left!16214 t!3734))))) (list!8248 (right!16544 (right!16544 (right!16544 (left!16214 t!3734)))))))))

(declare-fun b!1842099 () Bool)

(assert (=> b!1842099 (= e!1177154 (list!8249 (xs!9583 (right!16544 (right!16544 (left!16214 t!3734))))))))

(declare-fun b!1842097 () Bool)

(assert (=> b!1842097 (= e!1177153 Nil!20282)))

(assert (= (and d!563378 c!300667) b!1842097))

(assert (= (and d!563378 (not c!300667)) b!1842098))

(assert (= (and b!1842098 c!300668) b!1842099))

(assert (= (and b!1842098 (not c!300668)) b!1842100))

(declare-fun m!2269801 () Bool)

(assert (=> b!1842100 m!2269801))

(declare-fun m!2269803 () Bool)

(assert (=> b!1842100 m!2269803))

(assert (=> b!1842100 m!2269801))

(assert (=> b!1842100 m!2269803))

(declare-fun m!2269805 () Bool)

(assert (=> b!1842100 m!2269805))

(declare-fun m!2269807 () Bool)

(assert (=> b!1842099 m!2269807))

(assert (=> b!1841950 d!563378))

(declare-fun d!563380 () Bool)

(assert (=> d!563380 (= (inv!26504 (xs!9583 (right!16544 (right!16544 t!3734)))) (<= (size!16079 (innerList!6767 (xs!9583 (right!16544 (right!16544 t!3734))))) 2147483647))))

(declare-fun bs!408656 () Bool)

(assert (= bs!408656 d!563380))

(declare-fun m!2269809 () Bool)

(assert (=> bs!408656 m!2269809))

(assert (=> b!1841980 d!563380))

(declare-fun d!563382 () Bool)

(declare-fun res!827705 () Bool)

(declare-fun e!1177159 () Bool)

(assert (=> d!563382 (=> res!827705 e!1177159)))

(assert (=> d!563382 (= res!827705 ((_ is Nil!20282) (list!8248 (left!16214 t!3734))))))

(assert (=> d!563382 (= (forall!4360 (list!8248 (left!16214 t!3734)) lambda!72320) e!1177159)))

(declare-fun b!1842105 () Bool)

(declare-fun e!1177160 () Bool)

(assert (=> b!1842105 (= e!1177159 e!1177160)))

(declare-fun res!827706 () Bool)

(assert (=> b!1842105 (=> (not res!827706) (not e!1177160))))

(declare-fun dynLambda!10084 (Int T!31864) Bool)

(assert (=> b!1842105 (= res!827706 (dynLambda!10084 lambda!72320 (h!25683 (list!8248 (left!16214 t!3734)))))))

(declare-fun b!1842106 () Bool)

(assert (=> b!1842106 (= e!1177160 (forall!4360 (t!171805 (list!8248 (left!16214 t!3734))) lambda!72320))))

(assert (= (and d!563382 (not res!827705)) b!1842105))

(assert (= (and b!1842105 res!827706) b!1842106))

(declare-fun b_lambda!61053 () Bool)

(assert (=> (not b_lambda!61053) (not b!1842105)))

(declare-fun m!2269811 () Bool)

(assert (=> b!1842105 m!2269811))

(declare-fun m!2269813 () Bool)

(assert (=> b!1842106 m!2269813))

(assert (=> d!563246 d!563382))

(declare-fun d!563384 () Bool)

(declare-fun res!827707 () Bool)

(declare-fun e!1177161 () Bool)

(assert (=> d!563384 (=> (not res!827707) (not e!1177161))))

(assert (=> d!563384 (= res!827707 (= (csize!13644 (left!16214 (right!16544 t!3734))) (+ (size!16081 (left!16214 (left!16214 (right!16544 t!3734)))) (size!16081 (right!16544 (left!16214 (right!16544 t!3734)))))))))

(assert (=> d!563384 (= (inv!26505 (left!16214 (right!16544 t!3734))) e!1177161)))

(declare-fun b!1842107 () Bool)

(declare-fun res!827708 () Bool)

(assert (=> b!1842107 (=> (not res!827708) (not e!1177161))))

(assert (=> b!1842107 (= res!827708 (and (not (= (left!16214 (left!16214 (right!16544 t!3734))) Empty!6707)) (not (= (right!16544 (left!16214 (right!16544 t!3734))) Empty!6707))))))

(declare-fun b!1842108 () Bool)

(declare-fun res!827709 () Bool)

(assert (=> b!1842108 (=> (not res!827709) (not e!1177161))))

(assert (=> b!1842108 (= res!827709 (= (cheight!6918 (left!16214 (right!16544 t!3734))) (+ (max!0 (height!1023 (left!16214 (left!16214 (right!16544 t!3734)))) (height!1023 (right!16544 (left!16214 (right!16544 t!3734))))) 1)))))

(declare-fun b!1842109 () Bool)

(assert (=> b!1842109 (= e!1177161 (<= 0 (cheight!6918 (left!16214 (right!16544 t!3734)))))))

(assert (= (and d!563384 res!827707) b!1842107))

(assert (= (and b!1842107 res!827708) b!1842108))

(assert (= (and b!1842108 res!827709) b!1842109))

(declare-fun m!2269815 () Bool)

(assert (=> d!563384 m!2269815))

(declare-fun m!2269817 () Bool)

(assert (=> d!563384 m!2269817))

(declare-fun m!2269819 () Bool)

(assert (=> b!1842108 m!2269819))

(declare-fun m!2269821 () Bool)

(assert (=> b!1842108 m!2269821))

(assert (=> b!1842108 m!2269819))

(assert (=> b!1842108 m!2269821))

(declare-fun m!2269823 () Bool)

(assert (=> b!1842108 m!2269823))

(assert (=> b!1841912 d!563384))

(declare-fun d!563386 () Bool)

(assert (=> d!563386 (= (inv!26504 (xs!9583 (right!16544 (left!16214 t!3734)))) (<= (size!16079 (innerList!6767 (xs!9583 (right!16544 (left!16214 t!3734))))) 2147483647))))

(declare-fun bs!408657 () Bool)

(assert (= bs!408657 d!563386))

(declare-fun m!2269825 () Bool)

(assert (=> bs!408657 m!2269825))

(assert (=> b!1841969 d!563386))

(declare-fun d!563388 () Bool)

(assert (=> d!563388 (= (inv!26504 (xs!9583 (left!16214 (right!16544 t!3734)))) (<= (size!16079 (innerList!6767 (xs!9583 (left!16214 (right!16544 t!3734))))) 2147483647))))

(declare-fun bs!408658 () Bool)

(assert (= bs!408658 d!563388))

(declare-fun m!2269827 () Bool)

(assert (=> bs!408658 m!2269827))

(assert (=> b!1841973 d!563388))

(declare-fun d!563390 () Bool)

(declare-fun c!300671 () Bool)

(assert (=> d!563390 (= c!300671 ((_ is Nil!20282) lt!714340))))

(declare-fun e!1177164 () (InoxSet T!31864))

(assert (=> d!563390 (= (content!3020 lt!714340) e!1177164)))

(declare-fun b!1842114 () Bool)

(assert (=> b!1842114 (= e!1177164 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842115 () Bool)

(assert (=> b!1842115 (= e!1177164 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 lt!714340) true) (content!3020 (t!171805 lt!714340))))))

(assert (= (and d!563390 c!300671) b!1842114))

(assert (= (and d!563390 (not c!300671)) b!1842115))

(declare-fun m!2269829 () Bool)

(assert (=> b!1842115 m!2269829))

(declare-fun m!2269831 () Bool)

(assert (=> b!1842115 m!2269831))

(assert (=> d!563276 d!563390))

(declare-fun d!563392 () Bool)

(declare-fun c!300672 () Bool)

(assert (=> d!563392 (= c!300672 ((_ is Nil!20282) (list!8248 (left!16214 (right!16544 t!3734)))))))

(declare-fun e!1177165 () (InoxSet T!31864))

(assert (=> d!563392 (= (content!3020 (list!8248 (left!16214 (right!16544 t!3734)))) e!1177165)))

(declare-fun b!1842116 () Bool)

(assert (=> b!1842116 (= e!1177165 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842117 () Bool)

(assert (=> b!1842117 (= e!1177165 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 (list!8248 (left!16214 (right!16544 t!3734)))) true) (content!3020 (t!171805 (list!8248 (left!16214 (right!16544 t!3734)))))))))

(assert (= (and d!563392 c!300672) b!1842116))

(assert (= (and d!563392 (not c!300672)) b!1842117))

(declare-fun m!2269833 () Bool)

(assert (=> b!1842117 m!2269833))

(assert (=> b!1842117 m!2269771))

(assert (=> d!563276 d!563392))

(declare-fun d!563394 () Bool)

(declare-fun c!300673 () Bool)

(assert (=> d!563394 (= c!300673 ((_ is Nil!20282) (list!8248 (right!16544 (right!16544 t!3734)))))))

(declare-fun e!1177166 () (InoxSet T!31864))

(assert (=> d!563394 (= (content!3020 (list!8248 (right!16544 (right!16544 t!3734)))) e!1177166)))

(declare-fun b!1842118 () Bool)

(assert (=> b!1842118 (= e!1177166 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842119 () Bool)

(assert (=> b!1842119 (= e!1177166 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 (list!8248 (right!16544 (right!16544 t!3734)))) true) (content!3020 (t!171805 (list!8248 (right!16544 (right!16544 t!3734)))))))))

(assert (= (and d!563394 c!300673) b!1842118))

(assert (= (and d!563394 (not c!300673)) b!1842119))

(declare-fun m!2269835 () Bool)

(assert (=> b!1842119 m!2269835))

(declare-fun m!2269837 () Bool)

(assert (=> b!1842119 m!2269837))

(assert (=> d!563276 d!563394))

(declare-fun d!563396 () Bool)

(declare-fun e!1177168 () Bool)

(assert (=> d!563396 e!1177168))

(declare-fun res!827711 () Bool)

(assert (=> d!563396 (=> (not res!827711) (not e!1177168))))

(declare-fun lt!714364 () List!20352)

(assert (=> d!563396 (= res!827711 (= (content!3020 lt!714364) ((_ map or) (content!3020 (t!171805 (list!8248 (left!16214 (left!16214 t!3734))))) (content!3020 (list!8248 (right!16544 (left!16214 t!3734)))))))))

(declare-fun e!1177167 () List!20352)

(assert (=> d!563396 (= lt!714364 e!1177167)))

(declare-fun c!300674 () Bool)

(assert (=> d!563396 (= c!300674 ((_ is Nil!20282) (t!171805 (list!8248 (left!16214 (left!16214 t!3734))))))))

(assert (=> d!563396 (= (++!5516 (t!171805 (list!8248 (left!16214 (left!16214 t!3734)))) (list!8248 (right!16544 (left!16214 t!3734)))) lt!714364)))

(declare-fun b!1842122 () Bool)

(declare-fun res!827710 () Bool)

(assert (=> b!1842122 (=> (not res!827710) (not e!1177168))))

(assert (=> b!1842122 (= res!827710 (= (size!16079 lt!714364) (+ (size!16079 (t!171805 (list!8248 (left!16214 (left!16214 t!3734))))) (size!16079 (list!8248 (right!16544 (left!16214 t!3734)))))))))

(declare-fun b!1842123 () Bool)

(assert (=> b!1842123 (= e!1177168 (or (not (= (list!8248 (right!16544 (left!16214 t!3734))) Nil!20282)) (= lt!714364 (t!171805 (list!8248 (left!16214 (left!16214 t!3734)))))))))

(declare-fun b!1842120 () Bool)

(assert (=> b!1842120 (= e!1177167 (list!8248 (right!16544 (left!16214 t!3734))))))

(declare-fun b!1842121 () Bool)

(assert (=> b!1842121 (= e!1177167 (Cons!20282 (h!25683 (t!171805 (list!8248 (left!16214 (left!16214 t!3734))))) (++!5516 (t!171805 (t!171805 (list!8248 (left!16214 (left!16214 t!3734))))) (list!8248 (right!16544 (left!16214 t!3734))))))))

(assert (= (and d!563396 c!300674) b!1842120))

(assert (= (and d!563396 (not c!300674)) b!1842121))

(assert (= (and d!563396 res!827711) b!1842122))

(assert (= (and b!1842122 res!827710) b!1842123))

(declare-fun m!2269839 () Bool)

(assert (=> d!563396 m!2269839))

(declare-fun m!2269841 () Bool)

(assert (=> d!563396 m!2269841))

(assert (=> d!563396 m!2269369))

(assert (=> d!563396 m!2269537))

(declare-fun m!2269843 () Bool)

(assert (=> b!1842122 m!2269843))

(declare-fun m!2269845 () Bool)

(assert (=> b!1842122 m!2269845))

(assert (=> b!1842122 m!2269369))

(assert (=> b!1842122 m!2269543))

(assert (=> b!1842121 m!2269369))

(declare-fun m!2269847 () Bool)

(assert (=> b!1842121 m!2269847))

(assert (=> b!1841940 d!563396))

(declare-fun d!563398 () Bool)

(declare-fun c!300675 () Bool)

(assert (=> d!563398 (= c!300675 ((_ is Nil!20282) lt!714339))))

(declare-fun e!1177169 () (InoxSet T!31864))

(assert (=> d!563398 (= (content!3020 lt!714339) e!1177169)))

(declare-fun b!1842124 () Bool)

(assert (=> b!1842124 (= e!1177169 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842125 () Bool)

(assert (=> b!1842125 (= e!1177169 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 lt!714339) true) (content!3020 (t!171805 lt!714339))))))

(assert (= (and d!563398 c!300675) b!1842124))

(assert (= (and d!563398 (not c!300675)) b!1842125))

(declare-fun m!2269849 () Bool)

(assert (=> b!1842125 m!2269849))

(declare-fun m!2269851 () Bool)

(assert (=> b!1842125 m!2269851))

(assert (=> d!563244 d!563398))

(declare-fun d!563400 () Bool)

(declare-fun c!300676 () Bool)

(assert (=> d!563400 (= c!300676 ((_ is Nil!20282) (list!8248 (left!16214 t!3734))))))

(declare-fun e!1177170 () (InoxSet T!31864))

(assert (=> d!563400 (= (content!3020 (list!8248 (left!16214 t!3734))) e!1177170)))

(declare-fun b!1842126 () Bool)

(assert (=> b!1842126 (= e!1177170 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842127 () Bool)

(assert (=> b!1842127 (= e!1177170 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 (list!8248 (left!16214 t!3734))) true) (content!3020 (t!171805 (list!8248 (left!16214 t!3734))))))))

(assert (= (and d!563400 c!300676) b!1842126))

(assert (= (and d!563400 (not c!300676)) b!1842127))

(declare-fun m!2269853 () Bool)

(assert (=> b!1842127 m!2269853))

(declare-fun m!2269855 () Bool)

(assert (=> b!1842127 m!2269855))

(assert (=> d!563244 d!563400))

(declare-fun d!563402 () Bool)

(declare-fun c!300677 () Bool)

(assert (=> d!563402 (= c!300677 ((_ is Nil!20282) (list!8248 (right!16544 t!3734))))))

(declare-fun e!1177171 () (InoxSet T!31864))

(assert (=> d!563402 (= (content!3020 (list!8248 (right!16544 t!3734))) e!1177171)))

(declare-fun b!1842128 () Bool)

(assert (=> b!1842128 (= e!1177171 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842129 () Bool)

(assert (=> b!1842129 (= e!1177171 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 (list!8248 (right!16544 t!3734))) true) (content!3020 (t!171805 (list!8248 (right!16544 t!3734))))))))

(assert (= (and d!563402 c!300677) b!1842128))

(assert (= (and d!563402 (not c!300677)) b!1842129))

(declare-fun m!2269857 () Bool)

(assert (=> b!1842129 m!2269857))

(declare-fun m!2269859 () Bool)

(assert (=> b!1842129 m!2269859))

(assert (=> d!563244 d!563402))

(declare-fun d!563404 () Bool)

(assert (=> d!563404 (= (list!8249 (xs!9583 (left!16214 (right!16544 t!3734)))) (innerList!6767 (xs!9583 (left!16214 (right!16544 t!3734)))))))

(assert (=> b!1841926 d!563404))

(declare-fun d!563406 () Bool)

(declare-fun e!1177173 () Bool)

(assert (=> d!563406 e!1177173))

(declare-fun res!827713 () Bool)

(assert (=> d!563406 (=> (not res!827713) (not e!1177173))))

(declare-fun lt!714365 () List!20352)

(assert (=> d!563406 (= res!827713 (= (content!3020 lt!714365) ((_ map or) (content!3020 (list!8248 (left!16214 (right!16544 (right!16544 t!3734))))) (content!3020 (list!8248 (right!16544 (right!16544 (right!16544 t!3734))))))))))

(declare-fun e!1177172 () List!20352)

(assert (=> d!563406 (= lt!714365 e!1177172)))

(declare-fun c!300678 () Bool)

(assert (=> d!563406 (= c!300678 ((_ is Nil!20282) (list!8248 (left!16214 (right!16544 (right!16544 t!3734))))))))

(assert (=> d!563406 (= (++!5516 (list!8248 (left!16214 (right!16544 (right!16544 t!3734)))) (list!8248 (right!16544 (right!16544 (right!16544 t!3734))))) lt!714365)))

(declare-fun b!1842132 () Bool)

(declare-fun res!827712 () Bool)

(assert (=> b!1842132 (=> (not res!827712) (not e!1177173))))

(assert (=> b!1842132 (= res!827712 (= (size!16079 lt!714365) (+ (size!16079 (list!8248 (left!16214 (right!16544 (right!16544 t!3734))))) (size!16079 (list!8248 (right!16544 (right!16544 (right!16544 t!3734))))))))))

(declare-fun b!1842133 () Bool)

(assert (=> b!1842133 (= e!1177173 (or (not (= (list!8248 (right!16544 (right!16544 (right!16544 t!3734)))) Nil!20282)) (= lt!714365 (list!8248 (left!16214 (right!16544 (right!16544 t!3734)))))))))

(declare-fun b!1842130 () Bool)

(assert (=> b!1842130 (= e!1177172 (list!8248 (right!16544 (right!16544 (right!16544 t!3734)))))))

(declare-fun b!1842131 () Bool)

(assert (=> b!1842131 (= e!1177172 (Cons!20282 (h!25683 (list!8248 (left!16214 (right!16544 (right!16544 t!3734))))) (++!5516 (t!171805 (list!8248 (left!16214 (right!16544 (right!16544 t!3734))))) (list!8248 (right!16544 (right!16544 (right!16544 t!3734)))))))))

(assert (= (and d!563406 c!300678) b!1842130))

(assert (= (and d!563406 (not c!300678)) b!1842131))

(assert (= (and d!563406 res!827713) b!1842132))

(assert (= (and b!1842132 res!827712) b!1842133))

(declare-fun m!2269861 () Bool)

(assert (=> d!563406 m!2269861))

(assert (=> d!563406 m!2269511))

(declare-fun m!2269863 () Bool)

(assert (=> d!563406 m!2269863))

(assert (=> d!563406 m!2269513))

(declare-fun m!2269865 () Bool)

(assert (=> d!563406 m!2269865))

(declare-fun m!2269867 () Bool)

(assert (=> b!1842132 m!2269867))

(assert (=> b!1842132 m!2269511))

(declare-fun m!2269869 () Bool)

(assert (=> b!1842132 m!2269869))

(assert (=> b!1842132 m!2269513))

(declare-fun m!2269871 () Bool)

(assert (=> b!1842132 m!2269871))

(assert (=> b!1842131 m!2269513))

(declare-fun m!2269873 () Bool)

(assert (=> b!1842131 m!2269873))

(assert (=> b!1841933 d!563406))

(declare-fun b!1842135 () Bool)

(declare-fun e!1177174 () List!20352)

(declare-fun e!1177175 () List!20352)

(assert (=> b!1842135 (= e!1177174 e!1177175)))

(declare-fun c!300680 () Bool)

(assert (=> b!1842135 (= c!300680 ((_ is Leaf!9797) (left!16214 (right!16544 (right!16544 t!3734)))))))

(declare-fun d!563408 () Bool)

(declare-fun c!300679 () Bool)

(assert (=> d!563408 (= c!300679 ((_ is Empty!6707) (left!16214 (right!16544 (right!16544 t!3734)))))))

(assert (=> d!563408 (= (list!8248 (left!16214 (right!16544 (right!16544 t!3734)))) e!1177174)))

(declare-fun b!1842137 () Bool)

(assert (=> b!1842137 (= e!1177175 (++!5516 (list!8248 (left!16214 (left!16214 (right!16544 (right!16544 t!3734))))) (list!8248 (right!16544 (left!16214 (right!16544 (right!16544 t!3734)))))))))

(declare-fun b!1842136 () Bool)

(assert (=> b!1842136 (= e!1177175 (list!8249 (xs!9583 (left!16214 (right!16544 (right!16544 t!3734))))))))

(declare-fun b!1842134 () Bool)

(assert (=> b!1842134 (= e!1177174 Nil!20282)))

(assert (= (and d!563408 c!300679) b!1842134))

(assert (= (and d!563408 (not c!300679)) b!1842135))

(assert (= (and b!1842135 c!300680) b!1842136))

(assert (= (and b!1842135 (not c!300680)) b!1842137))

(declare-fun m!2269875 () Bool)

(assert (=> b!1842137 m!2269875))

(declare-fun m!2269877 () Bool)

(assert (=> b!1842137 m!2269877))

(assert (=> b!1842137 m!2269875))

(assert (=> b!1842137 m!2269877))

(declare-fun m!2269879 () Bool)

(assert (=> b!1842137 m!2269879))

(declare-fun m!2269881 () Bool)

(assert (=> b!1842136 m!2269881))

(assert (=> b!1841933 d!563408))

(declare-fun b!1842139 () Bool)

(declare-fun e!1177176 () List!20352)

(declare-fun e!1177177 () List!20352)

(assert (=> b!1842139 (= e!1177176 e!1177177)))

(declare-fun c!300682 () Bool)

(assert (=> b!1842139 (= c!300682 ((_ is Leaf!9797) (right!16544 (right!16544 (right!16544 t!3734)))))))

(declare-fun d!563410 () Bool)

(declare-fun c!300681 () Bool)

(assert (=> d!563410 (= c!300681 ((_ is Empty!6707) (right!16544 (right!16544 (right!16544 t!3734)))))))

(assert (=> d!563410 (= (list!8248 (right!16544 (right!16544 (right!16544 t!3734)))) e!1177176)))

(declare-fun b!1842141 () Bool)

(assert (=> b!1842141 (= e!1177177 (++!5516 (list!8248 (left!16214 (right!16544 (right!16544 (right!16544 t!3734))))) (list!8248 (right!16544 (right!16544 (right!16544 (right!16544 t!3734)))))))))

(declare-fun b!1842140 () Bool)

(assert (=> b!1842140 (= e!1177177 (list!8249 (xs!9583 (right!16544 (right!16544 (right!16544 t!3734))))))))

(declare-fun b!1842138 () Bool)

(assert (=> b!1842138 (= e!1177176 Nil!20282)))

(assert (= (and d!563410 c!300681) b!1842138))

(assert (= (and d!563410 (not c!300681)) b!1842139))

(assert (= (and b!1842139 c!300682) b!1842140))

(assert (= (and b!1842139 (not c!300682)) b!1842141))

(declare-fun m!2269883 () Bool)

(assert (=> b!1842141 m!2269883))

(declare-fun m!2269885 () Bool)

(assert (=> b!1842141 m!2269885))

(assert (=> b!1842141 m!2269883))

(assert (=> b!1842141 m!2269885))

(declare-fun m!2269887 () Bool)

(assert (=> b!1842141 m!2269887))

(declare-fun m!2269889 () Bool)

(assert (=> b!1842140 m!2269889))

(assert (=> b!1841933 d!563410))

(declare-fun d!563412 () Bool)

(declare-fun lt!714366 () Int)

(assert (=> d!563412 (>= lt!714366 0)))

(declare-fun e!1177178 () Int)

(assert (=> d!563412 (= lt!714366 e!1177178)))

(declare-fun c!300683 () Bool)

(assert (=> d!563412 (= c!300683 ((_ is Nil!20282) (list!8249 (xs!9583 (right!16544 t!3734)))))))

(assert (=> d!563412 (= (size!16079 (list!8249 (xs!9583 (right!16544 t!3734)))) lt!714366)))

(declare-fun b!1842142 () Bool)

(assert (=> b!1842142 (= e!1177178 0)))

(declare-fun b!1842143 () Bool)

(assert (=> b!1842143 (= e!1177178 (+ 1 (size!16079 (t!171805 (list!8249 (xs!9583 (right!16544 t!3734)))))))))

(assert (= (and d!563412 c!300683) b!1842142))

(assert (= (and d!563412 (not c!300683)) b!1842143))

(declare-fun m!2269891 () Bool)

(assert (=> b!1842143 m!2269891))

(assert (=> b!1841910 d!563412))

(assert (=> b!1841910 d!563254))

(declare-fun d!563414 () Bool)

(assert (=> d!563414 (= (max!0 (height!1023 (left!16214 (left!16214 t!3734))) (height!1023 (right!16544 (left!16214 t!3734)))) (ite (< (height!1023 (left!16214 (left!16214 t!3734))) (height!1023 (right!16544 (left!16214 t!3734)))) (height!1023 (right!16544 (left!16214 t!3734))) (height!1023 (left!16214 (left!16214 t!3734)))))))

(assert (=> b!1841876 d!563414))

(declare-fun d!563416 () Bool)

(assert (=> d!563416 (= (height!1023 (left!16214 (left!16214 t!3734))) (ite ((_ is Empty!6707) (left!16214 (left!16214 t!3734))) 0 (ite ((_ is Leaf!9797) (left!16214 (left!16214 t!3734))) 1 (cheight!6918 (left!16214 (left!16214 t!3734))))))))

(assert (=> b!1841876 d!563416))

(declare-fun d!563418 () Bool)

(assert (=> d!563418 (= (height!1023 (right!16544 (left!16214 t!3734))) (ite ((_ is Empty!6707) (right!16544 (left!16214 t!3734))) 0 (ite ((_ is Leaf!9797) (right!16544 (left!16214 t!3734))) 1 (cheight!6918 (right!16544 (left!16214 t!3734))))))))

(assert (=> b!1841876 d!563418))

(declare-fun d!563420 () Bool)

(declare-fun res!827714 () Bool)

(declare-fun e!1177179 () Bool)

(assert (=> d!563420 (=> (not res!827714) (not e!1177179))))

(assert (=> d!563420 (= res!827714 (<= (size!16079 (list!8249 (xs!9583 (left!16214 (left!16214 t!3734))))) 512))))

(assert (=> d!563420 (= (inv!26506 (left!16214 (left!16214 t!3734))) e!1177179)))

(declare-fun b!1842144 () Bool)

(declare-fun res!827715 () Bool)

(assert (=> b!1842144 (=> (not res!827715) (not e!1177179))))

(assert (=> b!1842144 (= res!827715 (= (csize!13645 (left!16214 (left!16214 t!3734))) (size!16079 (list!8249 (xs!9583 (left!16214 (left!16214 t!3734)))))))))

(declare-fun b!1842145 () Bool)

(assert (=> b!1842145 (= e!1177179 (and (> (csize!13645 (left!16214 (left!16214 t!3734))) 0) (<= (csize!13645 (left!16214 (left!16214 t!3734))) 512)))))

(assert (= (and d!563420 res!827714) b!1842144))

(assert (= (and b!1842144 res!827715) b!1842145))

(assert (=> d!563420 m!2269553))

(assert (=> d!563420 m!2269553))

(declare-fun m!2269893 () Bool)

(assert (=> d!563420 m!2269893))

(assert (=> b!1842144 m!2269553))

(assert (=> b!1842144 m!2269553))

(assert (=> b!1842144 m!2269893))

(assert (=> b!1841906 d!563420))

(assert (=> d!563248 d!563242))

(assert (=> d!563248 d!563244))

(assert (=> d!563248 d!563246))

(declare-fun d!563422 () Bool)

(declare-fun lt!714367 () Int)

(assert (=> d!563422 (= lt!714367 (size!16079 (list!8248 (left!16214 (left!16214 t!3734)))))))

(assert (=> d!563422 (= lt!714367 (ite ((_ is Empty!6707) (left!16214 (left!16214 t!3734))) 0 (ite ((_ is Leaf!9797) (left!16214 (left!16214 t!3734))) (csize!13645 (left!16214 (left!16214 t!3734))) (csize!13644 (left!16214 (left!16214 t!3734))))))))

(assert (=> d!563422 (= (size!16081 (left!16214 (left!16214 t!3734))) lt!714367)))

(declare-fun bs!408659 () Bool)

(assert (= bs!408659 d!563422))

(assert (=> bs!408659 m!2269367))

(assert (=> bs!408659 m!2269367))

(assert (=> bs!408659 m!2269541))

(assert (=> d!563240 d!563422))

(declare-fun d!563424 () Bool)

(declare-fun lt!714368 () Int)

(assert (=> d!563424 (= lt!714368 (size!16079 (list!8248 (right!16544 (left!16214 t!3734)))))))

(assert (=> d!563424 (= lt!714368 (ite ((_ is Empty!6707) (right!16544 (left!16214 t!3734))) 0 (ite ((_ is Leaf!9797) (right!16544 (left!16214 t!3734))) (csize!13645 (right!16544 (left!16214 t!3734))) (csize!13644 (right!16544 (left!16214 t!3734))))))))

(assert (=> d!563424 (= (size!16081 (right!16544 (left!16214 t!3734))) lt!714368)))

(declare-fun bs!408660 () Bool)

(assert (= bs!408660 d!563424))

(assert (=> bs!408660 m!2269369))

(assert (=> bs!408660 m!2269369))

(assert (=> bs!408660 m!2269543))

(assert (=> d!563240 d!563424))

(declare-fun d!563426 () Bool)

(declare-fun lt!714369 () Int)

(assert (=> d!563426 (>= lt!714369 0)))

(declare-fun e!1177180 () Int)

(assert (=> d!563426 (= lt!714369 e!1177180)))

(declare-fun c!300684 () Bool)

(assert (=> d!563426 (= c!300684 ((_ is Nil!20282) (list!8249 (xs!9583 t!3734))))))

(assert (=> d!563426 (= (size!16079 (list!8249 (xs!9583 t!3734))) lt!714369)))

(declare-fun b!1842146 () Bool)

(assert (=> b!1842146 (= e!1177180 0)))

(declare-fun b!1842147 () Bool)

(assert (=> b!1842147 (= e!1177180 (+ 1 (size!16079 (t!171805 (list!8249 (xs!9583 t!3734))))))))

(assert (= (and d!563426 c!300684) b!1842146))

(assert (= (and d!563426 (not c!300684)) b!1842147))

(declare-fun m!2269895 () Bool)

(assert (=> b!1842147 m!2269895))

(assert (=> d!563250 d!563426))

(declare-fun d!563428 () Bool)

(assert (=> d!563428 (= (list!8249 (xs!9583 t!3734)) (innerList!6767 (xs!9583 t!3734)))))

(assert (=> d!563250 d!563428))

(declare-fun d!563430 () Bool)

(declare-fun c!300685 () Bool)

(assert (=> d!563430 (= c!300685 ((_ is Nil!20282) lt!714341))))

(declare-fun e!1177181 () (InoxSet T!31864))

(assert (=> d!563430 (= (content!3020 lt!714341) e!1177181)))

(declare-fun b!1842148 () Bool)

(assert (=> b!1842148 (= e!1177181 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842149 () Bool)

(assert (=> b!1842149 (= e!1177181 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 lt!714341) true) (content!3020 (t!171805 lt!714341))))))

(assert (= (and d!563430 c!300685) b!1842148))

(assert (= (and d!563430 (not c!300685)) b!1842149))

(declare-fun m!2269897 () Bool)

(assert (=> b!1842149 m!2269897))

(declare-fun m!2269899 () Bool)

(assert (=> b!1842149 m!2269899))

(assert (=> d!563284 d!563430))

(declare-fun d!563432 () Bool)

(declare-fun c!300686 () Bool)

(assert (=> d!563432 (= c!300686 ((_ is Nil!20282) (list!8248 (left!16214 (left!16214 t!3734)))))))

(declare-fun e!1177182 () (InoxSet T!31864))

(assert (=> d!563432 (= (content!3020 (list!8248 (left!16214 (left!16214 t!3734)))) e!1177182)))

(declare-fun b!1842150 () Bool)

(assert (=> b!1842150 (= e!1177182 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842151 () Bool)

(assert (=> b!1842151 (= e!1177182 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 (list!8248 (left!16214 (left!16214 t!3734)))) true) (content!3020 (t!171805 (list!8248 (left!16214 (left!16214 t!3734)))))))))

(assert (= (and d!563432 c!300686) b!1842150))

(assert (= (and d!563432 (not c!300686)) b!1842151))

(declare-fun m!2269901 () Bool)

(assert (=> b!1842151 m!2269901))

(assert (=> b!1842151 m!2269841))

(assert (=> d!563284 d!563432))

(declare-fun d!563434 () Bool)

(declare-fun c!300687 () Bool)

(assert (=> d!563434 (= c!300687 ((_ is Nil!20282) (list!8248 (right!16544 (left!16214 t!3734)))))))

(declare-fun e!1177183 () (InoxSet T!31864))

(assert (=> d!563434 (= (content!3020 (list!8248 (right!16544 (left!16214 t!3734)))) e!1177183)))

(declare-fun b!1842152 () Bool)

(assert (=> b!1842152 (= e!1177183 ((as const (Array T!31864 Bool)) false))))

(declare-fun b!1842153 () Bool)

(assert (=> b!1842153 (= e!1177183 ((_ map or) (store ((as const (Array T!31864 Bool)) false) (h!25683 (list!8248 (right!16544 (left!16214 t!3734)))) true) (content!3020 (t!171805 (list!8248 (right!16544 (left!16214 t!3734)))))))))

(assert (= (and d!563434 c!300687) b!1842152))

(assert (= (and d!563434 (not c!300687)) b!1842153))

(declare-fun m!2269903 () Bool)

(assert (=> b!1842153 m!2269903))

(declare-fun m!2269905 () Bool)

(assert (=> b!1842153 m!2269905))

(assert (=> d!563284 d!563434))

(declare-fun d!563436 () Bool)

(assert (=> d!563436 (= (inv!26504 (xs!9583 (left!16214 (left!16214 t!3734)))) (<= (size!16079 (innerList!6767 (xs!9583 (left!16214 (left!16214 t!3734))))) 2147483647))))

(declare-fun bs!408661 () Bool)

(assert (= bs!408661 d!563436))

(declare-fun m!2269907 () Bool)

(assert (=> bs!408661 m!2269907))

(assert (=> b!1841966 d!563436))

(assert (=> b!1841858 d!563260))

(assert (=> b!1841858 d!563262))

(assert (=> b!1841899 d!563426))

(assert (=> b!1841899 d!563428))

(declare-fun d!563438 () Bool)

(assert (=> d!563438 (= (max!0 (height!1023 (left!16214 t!3734)) (height!1023 (right!16544 t!3734))) (ite (< (height!1023 (left!16214 t!3734)) (height!1023 (right!16544 t!3734))) (height!1023 (right!16544 t!3734)) (height!1023 (left!16214 t!3734))))))

(assert (=> b!1841902 d!563438))

(assert (=> b!1841902 d!563218))

(declare-fun d!563440 () Bool)

(assert (=> d!563440 (= (height!1023 (right!16544 t!3734)) (ite ((_ is Empty!6707) (right!16544 t!3734)) 0 (ite ((_ is Leaf!9797) (right!16544 t!3734)) 1 (cheight!6918 (right!16544 t!3734)))))))

(assert (=> b!1841902 d!563440))

(assert (=> d!563264 d!563412))

(assert (=> d!563264 d!563254))

(declare-fun d!563442 () Bool)

(declare-fun res!827716 () Bool)

(declare-fun e!1177184 () Bool)

(assert (=> d!563442 (=> (not res!827716) (not e!1177184))))

(assert (=> d!563442 (= res!827716 (= (csize!13644 (left!16214 (left!16214 t!3734))) (+ (size!16081 (left!16214 (left!16214 (left!16214 t!3734)))) (size!16081 (right!16544 (left!16214 (left!16214 t!3734)))))))))

(assert (=> d!563442 (= (inv!26505 (left!16214 (left!16214 t!3734))) e!1177184)))

(declare-fun b!1842154 () Bool)

(declare-fun res!827717 () Bool)

(assert (=> b!1842154 (=> (not res!827717) (not e!1177184))))

(assert (=> b!1842154 (= res!827717 (and (not (= (left!16214 (left!16214 (left!16214 t!3734))) Empty!6707)) (not (= (right!16544 (left!16214 (left!16214 t!3734))) Empty!6707))))))

(declare-fun b!1842155 () Bool)

(declare-fun res!827718 () Bool)

(assert (=> b!1842155 (=> (not res!827718) (not e!1177184))))

(assert (=> b!1842155 (= res!827718 (= (cheight!6918 (left!16214 (left!16214 t!3734))) (+ (max!0 (height!1023 (left!16214 (left!16214 (left!16214 t!3734)))) (height!1023 (right!16544 (left!16214 (left!16214 t!3734))))) 1)))))

(declare-fun b!1842156 () Bool)

(assert (=> b!1842156 (= e!1177184 (<= 0 (cheight!6918 (left!16214 (left!16214 t!3734)))))))

(assert (= (and d!563442 res!827716) b!1842154))

(assert (= (and b!1842154 res!827717) b!1842155))

(assert (= (and b!1842155 res!827718) b!1842156))

(declare-fun m!2269909 () Bool)

(assert (=> d!563442 m!2269909))

(declare-fun m!2269911 () Bool)

(assert (=> d!563442 m!2269911))

(declare-fun m!2269913 () Bool)

(assert (=> b!1842155 m!2269913))

(declare-fun m!2269915 () Bool)

(assert (=> b!1842155 m!2269915))

(assert (=> b!1842155 m!2269913))

(assert (=> b!1842155 m!2269915))

(declare-fun m!2269917 () Bool)

(assert (=> b!1842155 m!2269917))

(assert (=> b!1841904 d!563442))

(declare-fun d!563444 () Bool)

(declare-fun res!827719 () Bool)

(declare-fun e!1177185 () Bool)

(assert (=> d!563444 (=> res!827719 e!1177185)))

(assert (=> d!563444 (= res!827719 ((_ is Nil!20282) (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)))))))

(assert (=> d!563444 (= (forall!4360 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))) lambda!72319) e!1177185)))

(declare-fun b!1842157 () Bool)

(declare-fun e!1177186 () Bool)

(assert (=> b!1842157 (= e!1177185 e!1177186)))

(declare-fun res!827720 () Bool)

(assert (=> b!1842157 (=> (not res!827720) (not e!1177186))))

(assert (=> b!1842157 (= res!827720 (dynLambda!10084 lambda!72319 (h!25683 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))))))))

(declare-fun b!1842158 () Bool)

(assert (=> b!1842158 (= e!1177186 (forall!4360 (t!171805 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)))) lambda!72319))))

(assert (= (and d!563444 (not res!827719)) b!1842157))

(assert (= (and b!1842157 res!827720) b!1842158))

(declare-fun b_lambda!61055 () Bool)

(assert (=> (not b_lambda!61055) (not b!1842157)))

(declare-fun m!2269919 () Bool)

(assert (=> b!1842157 m!2269919))

(declare-fun m!2269921 () Bool)

(assert (=> b!1842158 m!2269921))

(assert (=> d!563242 d!563444))

(declare-fun d!563446 () Bool)

(declare-fun e!1177188 () Bool)

(assert (=> d!563446 e!1177188))

(declare-fun res!827722 () Bool)

(assert (=> d!563446 (=> (not res!827722) (not e!1177188))))

(declare-fun lt!714370 () List!20352)

(assert (=> d!563446 (= res!827722 (= (content!3020 lt!714370) ((_ map or) (content!3020 (list!8248 (left!16214 (left!16214 (left!16214 t!3734))))) (content!3020 (list!8248 (right!16544 (left!16214 (left!16214 t!3734))))))))))

(declare-fun e!1177187 () List!20352)

(assert (=> d!563446 (= lt!714370 e!1177187)))

(declare-fun c!300688 () Bool)

(assert (=> d!563446 (= c!300688 ((_ is Nil!20282) (list!8248 (left!16214 (left!16214 (left!16214 t!3734))))))))

(assert (=> d!563446 (= (++!5516 (list!8248 (left!16214 (left!16214 (left!16214 t!3734)))) (list!8248 (right!16544 (left!16214 (left!16214 t!3734))))) lt!714370)))

(declare-fun b!1842161 () Bool)

(declare-fun res!827721 () Bool)

(assert (=> b!1842161 (=> (not res!827721) (not e!1177188))))

(assert (=> b!1842161 (= res!827721 (= (size!16079 lt!714370) (+ (size!16079 (list!8248 (left!16214 (left!16214 (left!16214 t!3734))))) (size!16079 (list!8248 (right!16544 (left!16214 (left!16214 t!3734))))))))))

(declare-fun b!1842162 () Bool)

(assert (=> b!1842162 (= e!1177188 (or (not (= (list!8248 (right!16544 (left!16214 (left!16214 t!3734)))) Nil!20282)) (= lt!714370 (list!8248 (left!16214 (left!16214 (left!16214 t!3734)))))))))

(declare-fun b!1842159 () Bool)

(assert (=> b!1842159 (= e!1177187 (list!8248 (right!16544 (left!16214 (left!16214 t!3734)))))))

(declare-fun b!1842160 () Bool)

(assert (=> b!1842160 (= e!1177187 (Cons!20282 (h!25683 (list!8248 (left!16214 (left!16214 (left!16214 t!3734))))) (++!5516 (t!171805 (list!8248 (left!16214 (left!16214 (left!16214 t!3734))))) (list!8248 (right!16544 (left!16214 (left!16214 t!3734)))))))))

(assert (= (and d!563446 c!300688) b!1842159))

(assert (= (and d!563446 (not c!300688)) b!1842160))

(assert (= (and d!563446 res!827722) b!1842161))

(assert (= (and b!1842161 res!827721) b!1842162))

(declare-fun m!2269923 () Bool)

(assert (=> d!563446 m!2269923))

(assert (=> d!563446 m!2269547))

(declare-fun m!2269925 () Bool)

(assert (=> d!563446 m!2269925))

(assert (=> d!563446 m!2269549))

(declare-fun m!2269927 () Bool)

(assert (=> d!563446 m!2269927))

(declare-fun m!2269929 () Bool)

(assert (=> b!1842161 m!2269929))

(assert (=> b!1842161 m!2269547))

(declare-fun m!2269931 () Bool)

(assert (=> b!1842161 m!2269931))

(assert (=> b!1842161 m!2269549))

(declare-fun m!2269933 () Bool)

(assert (=> b!1842161 m!2269933))

(assert (=> b!1842160 m!2269549))

(declare-fun m!2269935 () Bool)

(assert (=> b!1842160 m!2269935))

(assert (=> b!1841946 d!563446))

(declare-fun b!1842164 () Bool)

(declare-fun e!1177189 () List!20352)

(declare-fun e!1177190 () List!20352)

(assert (=> b!1842164 (= e!1177189 e!1177190)))

(declare-fun c!300690 () Bool)

(assert (=> b!1842164 (= c!300690 ((_ is Leaf!9797) (left!16214 (left!16214 (left!16214 t!3734)))))))

(declare-fun d!563448 () Bool)

(declare-fun c!300689 () Bool)

(assert (=> d!563448 (= c!300689 ((_ is Empty!6707) (left!16214 (left!16214 (left!16214 t!3734)))))))

(assert (=> d!563448 (= (list!8248 (left!16214 (left!16214 (left!16214 t!3734)))) e!1177189)))

(declare-fun b!1842166 () Bool)

(assert (=> b!1842166 (= e!1177190 (++!5516 (list!8248 (left!16214 (left!16214 (left!16214 (left!16214 t!3734))))) (list!8248 (right!16544 (left!16214 (left!16214 (left!16214 t!3734)))))))))

(declare-fun b!1842165 () Bool)

(assert (=> b!1842165 (= e!1177190 (list!8249 (xs!9583 (left!16214 (left!16214 (left!16214 t!3734))))))))

(declare-fun b!1842163 () Bool)

(assert (=> b!1842163 (= e!1177189 Nil!20282)))

(assert (= (and d!563448 c!300689) b!1842163))

(assert (= (and d!563448 (not c!300689)) b!1842164))

(assert (= (and b!1842164 c!300690) b!1842165))

(assert (= (and b!1842164 (not c!300690)) b!1842166))

(declare-fun m!2269937 () Bool)

(assert (=> b!1842166 m!2269937))

(declare-fun m!2269939 () Bool)

(assert (=> b!1842166 m!2269939))

(assert (=> b!1842166 m!2269937))

(assert (=> b!1842166 m!2269939))

(declare-fun m!2269941 () Bool)

(assert (=> b!1842166 m!2269941))

(declare-fun m!2269943 () Bool)

(assert (=> b!1842165 m!2269943))

(assert (=> b!1841946 d!563448))

(declare-fun b!1842168 () Bool)

(declare-fun e!1177191 () List!20352)

(declare-fun e!1177192 () List!20352)

(assert (=> b!1842168 (= e!1177191 e!1177192)))

(declare-fun c!300692 () Bool)

(assert (=> b!1842168 (= c!300692 ((_ is Leaf!9797) (right!16544 (left!16214 (left!16214 t!3734)))))))

(declare-fun d!563450 () Bool)

(declare-fun c!300691 () Bool)

(assert (=> d!563450 (= c!300691 ((_ is Empty!6707) (right!16544 (left!16214 (left!16214 t!3734)))))))

(assert (=> d!563450 (= (list!8248 (right!16544 (left!16214 (left!16214 t!3734)))) e!1177191)))

(declare-fun b!1842170 () Bool)

(assert (=> b!1842170 (= e!1177192 (++!5516 (list!8248 (left!16214 (right!16544 (left!16214 (left!16214 t!3734))))) (list!8248 (right!16544 (right!16544 (left!16214 (left!16214 t!3734)))))))))

(declare-fun b!1842169 () Bool)

(assert (=> b!1842169 (= e!1177192 (list!8249 (xs!9583 (right!16544 (left!16214 (left!16214 t!3734))))))))

(declare-fun b!1842167 () Bool)

(assert (=> b!1842167 (= e!1177191 Nil!20282)))

(assert (= (and d!563450 c!300691) b!1842167))

(assert (= (and d!563450 (not c!300691)) b!1842168))

(assert (= (and b!1842168 c!300692) b!1842169))

(assert (= (and b!1842168 (not c!300692)) b!1842170))

(declare-fun m!2269945 () Bool)

(assert (=> b!1842170 m!2269945))

(declare-fun m!2269947 () Bool)

(assert (=> b!1842170 m!2269947))

(assert (=> b!1842170 m!2269945))

(assert (=> b!1842170 m!2269947))

(declare-fun m!2269949 () Bool)

(assert (=> b!1842170 m!2269949))

(declare-fun m!2269951 () Bool)

(assert (=> b!1842169 m!2269951))

(assert (=> b!1841946 d!563450))

(declare-fun d!563452 () Bool)

(declare-fun e!1177194 () Bool)

(assert (=> d!563452 e!1177194))

(declare-fun res!827724 () Bool)

(assert (=> d!563452 (=> (not res!827724) (not e!1177194))))

(declare-fun lt!714371 () List!20352)

(assert (=> d!563452 (= res!827724 (= (content!3020 lt!714371) ((_ map or) (content!3020 (t!171805 (list!8248 (left!16214 t!3734)))) (content!3020 (list!8248 (right!16544 t!3734))))))))

(declare-fun e!1177193 () List!20352)

(assert (=> d!563452 (= lt!714371 e!1177193)))

(declare-fun c!300693 () Bool)

(assert (=> d!563452 (= c!300693 ((_ is Nil!20282) (t!171805 (list!8248 (left!16214 t!3734)))))))

(assert (=> d!563452 (= (++!5516 (t!171805 (list!8248 (left!16214 t!3734))) (list!8248 (right!16544 t!3734))) lt!714371)))

(declare-fun b!1842173 () Bool)

(declare-fun res!827723 () Bool)

(assert (=> b!1842173 (=> (not res!827723) (not e!1177194))))

(assert (=> b!1842173 (= res!827723 (= (size!16079 lt!714371) (+ (size!16079 (t!171805 (list!8248 (left!16214 t!3734)))) (size!16079 (list!8248 (right!16544 t!3734))))))))

(declare-fun b!1842174 () Bool)

(assert (=> b!1842174 (= e!1177194 (or (not (= (list!8248 (right!16544 t!3734)) Nil!20282)) (= lt!714371 (t!171805 (list!8248 (left!16214 t!3734))))))))

(declare-fun b!1842171 () Bool)

(assert (=> b!1842171 (= e!1177193 (list!8248 (right!16544 t!3734)))))

(declare-fun b!1842172 () Bool)

(assert (=> b!1842172 (= e!1177193 (Cons!20282 (h!25683 (t!171805 (list!8248 (left!16214 t!3734)))) (++!5516 (t!171805 (t!171805 (list!8248 (left!16214 t!3734)))) (list!8248 (right!16544 t!3734)))))))

(assert (= (and d!563452 c!300693) b!1842171))

(assert (= (and d!563452 (not c!300693)) b!1842172))

(assert (= (and d!563452 res!827724) b!1842173))

(assert (= (and b!1842173 res!827723) b!1842174))

(declare-fun m!2269953 () Bool)

(assert (=> d!563452 m!2269953))

(assert (=> d!563452 m!2269855))

(assert (=> d!563452 m!2269315))

(assert (=> d!563452 m!2269441))

(declare-fun m!2269955 () Bool)

(assert (=> b!1842173 m!2269955))

(assert (=> b!1842173 m!2269761))

(assert (=> b!1842173 m!2269315))

(assert (=> b!1842173 m!2269447))

(assert (=> b!1842172 m!2269315))

(declare-fun m!2269957 () Bool)

(assert (=> b!1842172 m!2269957))

(assert (=> b!1841889 d!563452))

(assert (=> b!1841894 d!563272))

(declare-fun d!563454 () Bool)

(declare-fun res!827725 () Bool)

(declare-fun e!1177195 () Bool)

(assert (=> d!563454 (=> res!827725 e!1177195)))

(assert (=> d!563454 (= res!827725 ((_ is Nil!20282) (list!8248 (right!16544 t!3734))))))

(assert (=> d!563454 (= (forall!4360 (list!8248 (right!16544 t!3734)) lambda!72321) e!1177195)))

(declare-fun b!1842175 () Bool)

(declare-fun e!1177196 () Bool)

(assert (=> b!1842175 (= e!1177195 e!1177196)))

(declare-fun res!827726 () Bool)

(assert (=> b!1842175 (=> (not res!827726) (not e!1177196))))

(assert (=> b!1842175 (= res!827726 (dynLambda!10084 lambda!72321 (h!25683 (list!8248 (right!16544 t!3734)))))))

(declare-fun b!1842176 () Bool)

(assert (=> b!1842176 (= e!1177196 (forall!4360 (t!171805 (list!8248 (right!16544 t!3734))) lambda!72321))))

(assert (= (and d!563454 (not res!827725)) b!1842175))

(assert (= (and b!1842175 res!827726) b!1842176))

(declare-fun b_lambda!61057 () Bool)

(assert (=> (not b_lambda!61057) (not b!1842175)))

(declare-fun m!2269959 () Bool)

(assert (=> b!1842175 m!2269959))

(declare-fun m!2269961 () Bool)

(assert (=> b!1842176 m!2269961))

(assert (=> d!563272 d!563454))

(declare-fun d!563456 () Bool)

(declare-fun res!827727 () Bool)

(declare-fun e!1177197 () Bool)

(assert (=> d!563456 (=> (not res!827727) (not e!1177197))))

(assert (=> d!563456 (= res!827727 (<= (size!16079 (list!8249 (xs!9583 (right!16544 (left!16214 t!3734))))) 512))))

(assert (=> d!563456 (= (inv!26506 (right!16544 (left!16214 t!3734))) e!1177197)))

(declare-fun b!1842177 () Bool)

(declare-fun res!827728 () Bool)

(assert (=> b!1842177 (=> (not res!827728) (not e!1177197))))

(assert (=> b!1842177 (= res!827728 (= (csize!13645 (right!16544 (left!16214 t!3734))) (size!16079 (list!8249 (xs!9583 (right!16544 (left!16214 t!3734)))))))))

(declare-fun b!1842178 () Bool)

(assert (=> b!1842178 (= e!1177197 (and (> (csize!13645 (right!16544 (left!16214 t!3734))) 0) (<= (csize!13645 (right!16544 (left!16214 t!3734))) 512)))))

(assert (= (and d!563456 res!827727) b!1842177))

(assert (= (and b!1842177 res!827728) b!1842178))

(assert (=> d!563456 m!2269561))

(assert (=> d!563456 m!2269561))

(declare-fun m!2269963 () Bool)

(assert (=> d!563456 m!2269963))

(assert (=> b!1842177 m!2269561))

(assert (=> b!1842177 m!2269561))

(assert (=> b!1842177 m!2269963))

(assert (=> b!1841909 d!563456))

(declare-fun d!563458 () Bool)

(declare-fun lt!714372 () Int)

(assert (=> d!563458 (= lt!714372 (size!16079 (list!8248 (left!16214 t!3734))))))

(assert (=> d!563458 (= lt!714372 (ite ((_ is Empty!6707) (left!16214 t!3734)) 0 (ite ((_ is Leaf!9797) (left!16214 t!3734)) (csize!13645 (left!16214 t!3734)) (csize!13644 (left!16214 t!3734)))))))

(assert (=> d!563458 (= (size!16081 (left!16214 t!3734)) lt!714372)))

(declare-fun bs!408662 () Bool)

(assert (= bs!408662 d!563458))

(assert (=> bs!408662 m!2269311))

(assert (=> bs!408662 m!2269311))

(assert (=> bs!408662 m!2269445))

(assert (=> d!563256 d!563458))

(declare-fun d!563460 () Bool)

(declare-fun lt!714373 () Int)

(assert (=> d!563460 (= lt!714373 (size!16079 (list!8248 (right!16544 t!3734))))))

(assert (=> d!563460 (= lt!714373 (ite ((_ is Empty!6707) (right!16544 t!3734)) 0 (ite ((_ is Leaf!9797) (right!16544 t!3734)) (csize!13645 (right!16544 t!3734)) (csize!13644 (right!16544 t!3734)))))))

(assert (=> d!563460 (= (size!16081 (right!16544 t!3734)) lt!714373)))

(declare-fun bs!408663 () Bool)

(assert (= bs!408663 d!563460))

(assert (=> bs!408663 m!2269315))

(assert (=> bs!408663 m!2269315))

(assert (=> bs!408663 m!2269447))

(assert (=> d!563256 d!563460))

(declare-fun d!563462 () Bool)

(declare-fun c!300694 () Bool)

(assert (=> d!563462 (= c!300694 ((_ is Node!6707) (left!16214 (right!16544 (right!16544 t!3734)))))))

(declare-fun e!1177198 () Bool)

(assert (=> d!563462 (= (inv!26503 (left!16214 (right!16544 (right!16544 t!3734)))) e!1177198)))

(declare-fun b!1842179 () Bool)

(assert (=> b!1842179 (= e!1177198 (inv!26505 (left!16214 (right!16544 (right!16544 t!3734)))))))

(declare-fun b!1842180 () Bool)

(declare-fun e!1177199 () Bool)

(assert (=> b!1842180 (= e!1177198 e!1177199)))

(declare-fun res!827729 () Bool)

(assert (=> b!1842180 (= res!827729 (not ((_ is Leaf!9797) (left!16214 (right!16544 (right!16544 t!3734))))))))

(assert (=> b!1842180 (=> res!827729 e!1177199)))

(declare-fun b!1842181 () Bool)

(assert (=> b!1842181 (= e!1177199 (inv!26506 (left!16214 (right!16544 (right!16544 t!3734)))))))

(assert (= (and d!563462 c!300694) b!1842179))

(assert (= (and d!563462 (not c!300694)) b!1842180))

(assert (= (and b!1842180 (not res!827729)) b!1842181))

(declare-fun m!2269965 () Bool)

(assert (=> b!1842179 m!2269965))

(declare-fun m!2269967 () Bool)

(assert (=> b!1842181 m!2269967))

(assert (=> b!1841979 d!563462))

(declare-fun d!563464 () Bool)

(declare-fun c!300695 () Bool)

(assert (=> d!563464 (= c!300695 ((_ is Node!6707) (right!16544 (right!16544 (right!16544 t!3734)))))))

(declare-fun e!1177200 () Bool)

(assert (=> d!563464 (= (inv!26503 (right!16544 (right!16544 (right!16544 t!3734)))) e!1177200)))

(declare-fun b!1842182 () Bool)

(assert (=> b!1842182 (= e!1177200 (inv!26505 (right!16544 (right!16544 (right!16544 t!3734)))))))

(declare-fun b!1842183 () Bool)

(declare-fun e!1177201 () Bool)

(assert (=> b!1842183 (= e!1177200 e!1177201)))

(declare-fun res!827730 () Bool)

(assert (=> b!1842183 (= res!827730 (not ((_ is Leaf!9797) (right!16544 (right!16544 (right!16544 t!3734))))))))

(assert (=> b!1842183 (=> res!827730 e!1177201)))

(declare-fun b!1842184 () Bool)

(assert (=> b!1842184 (= e!1177201 (inv!26506 (right!16544 (right!16544 (right!16544 t!3734)))))))

(assert (= (and d!563464 c!300695) b!1842182))

(assert (= (and d!563464 (not c!300695)) b!1842183))

(assert (= (and b!1842183 (not res!827730)) b!1842184))

(declare-fun m!2269969 () Bool)

(assert (=> b!1842182 m!2269969))

(declare-fun m!2269971 () Bool)

(assert (=> b!1842184 m!2269971))

(assert (=> b!1841979 d!563464))

(declare-fun d!563466 () Bool)

(declare-fun lt!714374 () Int)

(assert (=> d!563466 (>= lt!714374 0)))

(declare-fun e!1177202 () Int)

(assert (=> d!563466 (= lt!714374 e!1177202)))

(declare-fun c!300696 () Bool)

(assert (=> d!563466 (= c!300696 ((_ is Nil!20282) lt!714340))))

(assert (=> d!563466 (= (size!16079 lt!714340) lt!714374)))

(declare-fun b!1842185 () Bool)

(assert (=> b!1842185 (= e!1177202 0)))

(declare-fun b!1842186 () Bool)

(assert (=> b!1842186 (= e!1177202 (+ 1 (size!16079 (t!171805 lt!714340))))))

(assert (= (and d!563466 c!300696) b!1842185))

(assert (= (and d!563466 (not c!300696)) b!1842186))

(declare-fun m!2269973 () Bool)

(assert (=> b!1842186 m!2269973))

(assert (=> b!1841920 d!563466))

(declare-fun d!563468 () Bool)

(declare-fun lt!714375 () Int)

(assert (=> d!563468 (>= lt!714375 0)))

(declare-fun e!1177203 () Int)

(assert (=> d!563468 (= lt!714375 e!1177203)))

(declare-fun c!300697 () Bool)

(assert (=> d!563468 (= c!300697 ((_ is Nil!20282) (list!8248 (left!16214 (right!16544 t!3734)))))))

(assert (=> d!563468 (= (size!16079 (list!8248 (left!16214 (right!16544 t!3734)))) lt!714375)))

(declare-fun b!1842187 () Bool)

(assert (=> b!1842187 (= e!1177203 0)))

(declare-fun b!1842188 () Bool)

(assert (=> b!1842188 (= e!1177203 (+ 1 (size!16079 (t!171805 (list!8248 (left!16214 (right!16544 t!3734)))))))))

(assert (= (and d!563468 c!300697) b!1842187))

(assert (= (and d!563468 (not c!300697)) b!1842188))

(assert (=> b!1842188 m!2269775))

(assert (=> b!1841920 d!563468))

(declare-fun d!563470 () Bool)

(declare-fun lt!714376 () Int)

(assert (=> d!563470 (>= lt!714376 0)))

(declare-fun e!1177204 () Int)

(assert (=> d!563470 (= lt!714376 e!1177204)))

(declare-fun c!300698 () Bool)

(assert (=> d!563470 (= c!300698 ((_ is Nil!20282) (list!8248 (right!16544 (right!16544 t!3734)))))))

(assert (=> d!563470 (= (size!16079 (list!8248 (right!16544 (right!16544 t!3734)))) lt!714376)))

(declare-fun b!1842189 () Bool)

(assert (=> b!1842189 (= e!1177204 0)))

(declare-fun b!1842190 () Bool)

(assert (=> b!1842190 (= e!1177204 (+ 1 (size!16079 (t!171805 (list!8248 (right!16544 (right!16544 t!3734)))))))))

(assert (= (and d!563470 c!300698) b!1842189))

(assert (= (and d!563470 (not c!300698)) b!1842190))

(declare-fun m!2269975 () Bool)

(assert (=> b!1842190 m!2269975))

(assert (=> b!1841920 d!563470))

(declare-fun d!563472 () Bool)

(declare-fun res!827731 () Bool)

(declare-fun e!1177205 () Bool)

(assert (=> d!563472 (=> (not res!827731) (not e!1177205))))

(assert (=> d!563472 (= res!827731 (<= (size!16079 (list!8249 (xs!9583 (right!16544 (right!16544 t!3734))))) 512))))

(assert (=> d!563472 (= (inv!26506 (right!16544 (right!16544 t!3734))) e!1177205)))

(declare-fun b!1842191 () Bool)

(declare-fun res!827732 () Bool)

(assert (=> b!1842191 (=> (not res!827732) (not e!1177205))))

(assert (=> b!1842191 (= res!827732 (= (csize!13645 (right!16544 (right!16544 t!3734))) (size!16079 (list!8249 (xs!9583 (right!16544 (right!16544 t!3734)))))))))

(declare-fun b!1842192 () Bool)

(assert (=> b!1842192 (= e!1177205 (and (> (csize!13645 (right!16544 (right!16544 t!3734))) 0) (<= (csize!13645 (right!16544 (right!16544 t!3734))) 512)))))

(assert (= (and d!563472 res!827731) b!1842191))

(assert (= (and b!1842191 res!827732) b!1842192))

(assert (=> d!563472 m!2269517))

(assert (=> d!563472 m!2269517))

(declare-fun m!2269977 () Bool)

(assert (=> d!563472 m!2269977))

(assert (=> b!1842191 m!2269517))

(assert (=> b!1842191 m!2269517))

(assert (=> b!1842191 m!2269977))

(assert (=> b!1841917 d!563472))

(declare-fun d!563474 () Bool)

(declare-fun c!300699 () Bool)

(assert (=> d!563474 (= c!300699 ((_ is Node!6707) (left!16214 (right!16544 (left!16214 t!3734)))))))

(declare-fun e!1177206 () Bool)

(assert (=> d!563474 (= (inv!26503 (left!16214 (right!16544 (left!16214 t!3734)))) e!1177206)))

(declare-fun b!1842193 () Bool)

(assert (=> b!1842193 (= e!1177206 (inv!26505 (left!16214 (right!16544 (left!16214 t!3734)))))))

(declare-fun b!1842194 () Bool)

(declare-fun e!1177207 () Bool)

(assert (=> b!1842194 (= e!1177206 e!1177207)))

(declare-fun res!827733 () Bool)

(assert (=> b!1842194 (= res!827733 (not ((_ is Leaf!9797) (left!16214 (right!16544 (left!16214 t!3734))))))))

(assert (=> b!1842194 (=> res!827733 e!1177207)))

(declare-fun b!1842195 () Bool)

(assert (=> b!1842195 (= e!1177207 (inv!26506 (left!16214 (right!16544 (left!16214 t!3734)))))))

(assert (= (and d!563474 c!300699) b!1842193))

(assert (= (and d!563474 (not c!300699)) b!1842194))

(assert (= (and b!1842194 (not res!827733)) b!1842195))

(declare-fun m!2269979 () Bool)

(assert (=> b!1842193 m!2269979))

(declare-fun m!2269981 () Bool)

(assert (=> b!1842195 m!2269981))

(assert (=> b!1841968 d!563474))

(declare-fun d!563476 () Bool)

(declare-fun c!300700 () Bool)

(assert (=> d!563476 (= c!300700 ((_ is Node!6707) (right!16544 (right!16544 (left!16214 t!3734)))))))

(declare-fun e!1177208 () Bool)

(assert (=> d!563476 (= (inv!26503 (right!16544 (right!16544 (left!16214 t!3734)))) e!1177208)))

(declare-fun b!1842196 () Bool)

(assert (=> b!1842196 (= e!1177208 (inv!26505 (right!16544 (right!16544 (left!16214 t!3734)))))))

(declare-fun b!1842197 () Bool)

(declare-fun e!1177209 () Bool)

(assert (=> b!1842197 (= e!1177208 e!1177209)))

(declare-fun res!827734 () Bool)

(assert (=> b!1842197 (= res!827734 (not ((_ is Leaf!9797) (right!16544 (right!16544 (left!16214 t!3734))))))))

(assert (=> b!1842197 (=> res!827734 e!1177209)))

(declare-fun b!1842198 () Bool)

(assert (=> b!1842198 (= e!1177209 (inv!26506 (right!16544 (right!16544 (left!16214 t!3734)))))))

(assert (= (and d!563476 c!300700) b!1842196))

(assert (= (and d!563476 (not c!300700)) b!1842197))

(assert (= (and b!1842197 (not res!827734)) b!1842198))

(declare-fun m!2269983 () Bool)

(assert (=> b!1842196 m!2269983))

(declare-fun m!2269985 () Bool)

(assert (=> b!1842198 m!2269985))

(assert (=> b!1841968 d!563476))

(declare-fun d!563478 () Bool)

(assert (=> d!563478 (= (list!8249 (xs!9583 (right!16544 (left!16214 t!3734)))) (innerList!6767 (xs!9583 (right!16544 (left!16214 t!3734)))))))

(assert (=> b!1841949 d!563478))

(declare-fun d!563480 () Bool)

(declare-fun res!827735 () Bool)

(declare-fun e!1177210 () Bool)

(assert (=> d!563480 (=> (not res!827735) (not e!1177210))))

(assert (=> d!563480 (= res!827735 (= (csize!13644 (right!16544 (left!16214 t!3734))) (+ (size!16081 (left!16214 (right!16544 (left!16214 t!3734)))) (size!16081 (right!16544 (right!16544 (left!16214 t!3734)))))))))

(assert (=> d!563480 (= (inv!26505 (right!16544 (left!16214 t!3734))) e!1177210)))

(declare-fun b!1842199 () Bool)

(declare-fun res!827736 () Bool)

(assert (=> b!1842199 (=> (not res!827736) (not e!1177210))))

(assert (=> b!1842199 (= res!827736 (and (not (= (left!16214 (right!16544 (left!16214 t!3734))) Empty!6707)) (not (= (right!16544 (right!16544 (left!16214 t!3734))) Empty!6707))))))

(declare-fun b!1842200 () Bool)

(declare-fun res!827737 () Bool)

(assert (=> b!1842200 (=> (not res!827737) (not e!1177210))))

(assert (=> b!1842200 (= res!827737 (= (cheight!6918 (right!16544 (left!16214 t!3734))) (+ (max!0 (height!1023 (left!16214 (right!16544 (left!16214 t!3734)))) (height!1023 (right!16544 (right!16544 (left!16214 t!3734))))) 1)))))

(declare-fun b!1842201 () Bool)

(assert (=> b!1842201 (= e!1177210 (<= 0 (cheight!6918 (right!16544 (left!16214 t!3734)))))))

(assert (= (and d!563480 res!827735) b!1842199))

(assert (= (and b!1842199 res!827736) b!1842200))

(assert (= (and b!1842200 res!827737) b!1842201))

(declare-fun m!2269987 () Bool)

(assert (=> d!563480 m!2269987))

(declare-fun m!2269989 () Bool)

(assert (=> d!563480 m!2269989))

(declare-fun m!2269991 () Bool)

(assert (=> b!1842200 m!2269991))

(declare-fun m!2269993 () Bool)

(assert (=> b!1842200 m!2269993))

(assert (=> b!1842200 m!2269991))

(assert (=> b!1842200 m!2269993))

(declare-fun m!2269995 () Bool)

(assert (=> b!1842200 m!2269995))

(assert (=> b!1841907 d!563480))

(declare-fun d!563482 () Bool)

(declare-fun e!1177212 () Bool)

(assert (=> d!563482 e!1177212))

(declare-fun res!827739 () Bool)

(assert (=> d!563482 (=> (not res!827739) (not e!1177212))))

(declare-fun lt!714377 () List!20352)

(assert (=> d!563482 (= res!827739 (= (content!3020 lt!714377) ((_ map or) (content!3020 (list!8248 (left!16214 (left!16214 (right!16544 t!3734))))) (content!3020 (list!8248 (right!16544 (left!16214 (right!16544 t!3734))))))))))

(declare-fun e!1177211 () List!20352)

(assert (=> d!563482 (= lt!714377 e!1177211)))

(declare-fun c!300701 () Bool)

(assert (=> d!563482 (= c!300701 ((_ is Nil!20282) (list!8248 (left!16214 (left!16214 (right!16544 t!3734))))))))

(assert (=> d!563482 (= (++!5516 (list!8248 (left!16214 (left!16214 (right!16544 t!3734)))) (list!8248 (right!16544 (left!16214 (right!16544 t!3734))))) lt!714377)))

(declare-fun b!1842204 () Bool)

(declare-fun res!827738 () Bool)

(assert (=> b!1842204 (=> (not res!827738) (not e!1177212))))

(assert (=> b!1842204 (= res!827738 (= (size!16079 lt!714377) (+ (size!16079 (list!8248 (left!16214 (left!16214 (right!16544 t!3734))))) (size!16079 (list!8248 (right!16544 (left!16214 (right!16544 t!3734))))))))))

(declare-fun b!1842205 () Bool)

(assert (=> b!1842205 (= e!1177212 (or (not (= (list!8248 (right!16544 (left!16214 (right!16544 t!3734)))) Nil!20282)) (= lt!714377 (list!8248 (left!16214 (left!16214 (right!16544 t!3734)))))))))

(declare-fun b!1842202 () Bool)

(assert (=> b!1842202 (= e!1177211 (list!8248 (right!16544 (left!16214 (right!16544 t!3734)))))))

(declare-fun b!1842203 () Bool)

(assert (=> b!1842203 (= e!1177211 (Cons!20282 (h!25683 (list!8248 (left!16214 (left!16214 (right!16544 t!3734))))) (++!5516 (t!171805 (list!8248 (left!16214 (left!16214 (right!16544 t!3734))))) (list!8248 (right!16544 (left!16214 (right!16544 t!3734)))))))))

(assert (= (and d!563482 c!300701) b!1842202))

(assert (= (and d!563482 (not c!300701)) b!1842203))

(assert (= (and d!563482 res!827739) b!1842204))

(assert (= (and b!1842204 res!827738) b!1842205))

(declare-fun m!2269997 () Bool)

(assert (=> d!563482 m!2269997))

(assert (=> d!563482 m!2269503))

(declare-fun m!2269999 () Bool)

(assert (=> d!563482 m!2269999))

(assert (=> d!563482 m!2269505))

(declare-fun m!2270001 () Bool)

(assert (=> d!563482 m!2270001))

(declare-fun m!2270003 () Bool)

(assert (=> b!1842204 m!2270003))

(assert (=> b!1842204 m!2269503))

(declare-fun m!2270005 () Bool)

(assert (=> b!1842204 m!2270005))

(assert (=> b!1842204 m!2269505))

(declare-fun m!2270007 () Bool)

(assert (=> b!1842204 m!2270007))

(assert (=> b!1842203 m!2269505))

(declare-fun m!2270009 () Bool)

(assert (=> b!1842203 m!2270009))

(assert (=> b!1841927 d!563482))

(declare-fun b!1842207 () Bool)

(declare-fun e!1177213 () List!20352)

(declare-fun e!1177214 () List!20352)

(assert (=> b!1842207 (= e!1177213 e!1177214)))

(declare-fun c!300703 () Bool)

(assert (=> b!1842207 (= c!300703 ((_ is Leaf!9797) (left!16214 (left!16214 (right!16544 t!3734)))))))

(declare-fun d!563484 () Bool)

(declare-fun c!300702 () Bool)

(assert (=> d!563484 (= c!300702 ((_ is Empty!6707) (left!16214 (left!16214 (right!16544 t!3734)))))))

(assert (=> d!563484 (= (list!8248 (left!16214 (left!16214 (right!16544 t!3734)))) e!1177213)))

(declare-fun b!1842209 () Bool)

(assert (=> b!1842209 (= e!1177214 (++!5516 (list!8248 (left!16214 (left!16214 (left!16214 (right!16544 t!3734))))) (list!8248 (right!16544 (left!16214 (left!16214 (right!16544 t!3734)))))))))

(declare-fun b!1842208 () Bool)

(assert (=> b!1842208 (= e!1177214 (list!8249 (xs!9583 (left!16214 (left!16214 (right!16544 t!3734))))))))

(declare-fun b!1842206 () Bool)

(assert (=> b!1842206 (= e!1177213 Nil!20282)))

(assert (= (and d!563484 c!300702) b!1842206))

(assert (= (and d!563484 (not c!300702)) b!1842207))

(assert (= (and b!1842207 c!300703) b!1842208))

(assert (= (and b!1842207 (not c!300703)) b!1842209))

(declare-fun m!2270011 () Bool)

(assert (=> b!1842209 m!2270011))

(declare-fun m!2270013 () Bool)

(assert (=> b!1842209 m!2270013))

(assert (=> b!1842209 m!2270011))

(assert (=> b!1842209 m!2270013))

(declare-fun m!2270015 () Bool)

(assert (=> b!1842209 m!2270015))

(declare-fun m!2270017 () Bool)

(assert (=> b!1842208 m!2270017))

(assert (=> b!1841927 d!563484))

(declare-fun b!1842211 () Bool)

(declare-fun e!1177215 () List!20352)

(declare-fun e!1177216 () List!20352)

(assert (=> b!1842211 (= e!1177215 e!1177216)))

(declare-fun c!300705 () Bool)

(assert (=> b!1842211 (= c!300705 ((_ is Leaf!9797) (right!16544 (left!16214 (right!16544 t!3734)))))))

(declare-fun d!563486 () Bool)

(declare-fun c!300704 () Bool)

(assert (=> d!563486 (= c!300704 ((_ is Empty!6707) (right!16544 (left!16214 (right!16544 t!3734)))))))

(assert (=> d!563486 (= (list!8248 (right!16544 (left!16214 (right!16544 t!3734)))) e!1177215)))

(declare-fun b!1842213 () Bool)

(assert (=> b!1842213 (= e!1177216 (++!5516 (list!8248 (left!16214 (right!16544 (left!16214 (right!16544 t!3734))))) (list!8248 (right!16544 (right!16544 (left!16214 (right!16544 t!3734)))))))))

(declare-fun b!1842212 () Bool)

(assert (=> b!1842212 (= e!1177216 (list!8249 (xs!9583 (right!16544 (left!16214 (right!16544 t!3734))))))))

(declare-fun b!1842210 () Bool)

(assert (=> b!1842210 (= e!1177215 Nil!20282)))

(assert (= (and d!563486 c!300704) b!1842210))

(assert (= (and d!563486 (not c!300704)) b!1842211))

(assert (= (and b!1842211 c!300705) b!1842212))

(assert (= (and b!1842211 (not c!300705)) b!1842213))

(declare-fun m!2270019 () Bool)

(assert (=> b!1842213 m!2270019))

(declare-fun m!2270021 () Bool)

(assert (=> b!1842213 m!2270021))

(assert (=> b!1842213 m!2270019))

(assert (=> b!1842213 m!2270021))

(declare-fun m!2270023 () Bool)

(assert (=> b!1842213 m!2270023))

(declare-fun m!2270025 () Bool)

(assert (=> b!1842212 m!2270025))

(assert (=> b!1841927 d!563486))

(assert (=> b!1841865 d!563266))

(assert (=> b!1841865 d!563270))

(declare-fun d!563488 () Bool)

(declare-fun lt!714378 () Int)

(assert (=> d!563488 (>= lt!714378 0)))

(declare-fun e!1177217 () Int)

(assert (=> d!563488 (= lt!714378 e!1177217)))

(declare-fun c!300706 () Bool)

(assert (=> d!563488 (= c!300706 ((_ is Nil!20282) (innerList!6767 (xs!9583 (left!16214 t!3734)))))))

(assert (=> d!563488 (= (size!16079 (innerList!6767 (xs!9583 (left!16214 t!3734)))) lt!714378)))

(declare-fun b!1842214 () Bool)

(assert (=> b!1842214 (= e!1177217 0)))

(declare-fun b!1842215 () Bool)

(assert (=> b!1842215 (= e!1177217 (+ 1 (size!16079 (t!171805 (innerList!6767 (xs!9583 (left!16214 t!3734)))))))))

(assert (= (and d!563488 c!300706) b!1842214))

(assert (= (and d!563488 (not c!300706)) b!1842215))

(declare-fun m!2270027 () Bool)

(assert (=> b!1842215 m!2270027))

(assert (=> d!563258 d!563488))

(declare-fun d!563490 () Bool)

(declare-fun res!827740 () Bool)

(declare-fun e!1177218 () Bool)

(assert (=> d!563490 (=> (not res!827740) (not e!1177218))))

(assert (=> d!563490 (= res!827740 (= (csize!13644 (right!16544 (right!16544 t!3734))) (+ (size!16081 (left!16214 (right!16544 (right!16544 t!3734)))) (size!16081 (right!16544 (right!16544 (right!16544 t!3734)))))))))

(assert (=> d!563490 (= (inv!26505 (right!16544 (right!16544 t!3734))) e!1177218)))

(declare-fun b!1842216 () Bool)

(declare-fun res!827741 () Bool)

(assert (=> b!1842216 (=> (not res!827741) (not e!1177218))))

(assert (=> b!1842216 (= res!827741 (and (not (= (left!16214 (right!16544 (right!16544 t!3734))) Empty!6707)) (not (= (right!16544 (right!16544 (right!16544 t!3734))) Empty!6707))))))

(declare-fun b!1842217 () Bool)

(declare-fun res!827742 () Bool)

(assert (=> b!1842217 (=> (not res!827742) (not e!1177218))))

(assert (=> b!1842217 (= res!827742 (= (cheight!6918 (right!16544 (right!16544 t!3734))) (+ (max!0 (height!1023 (left!16214 (right!16544 (right!16544 t!3734)))) (height!1023 (right!16544 (right!16544 (right!16544 t!3734))))) 1)))))

(declare-fun b!1842218 () Bool)

(assert (=> b!1842218 (= e!1177218 (<= 0 (cheight!6918 (right!16544 (right!16544 t!3734)))))))

(assert (= (and d!563490 res!827740) b!1842216))

(assert (= (and b!1842216 res!827741) b!1842217))

(assert (= (and b!1842217 res!827742) b!1842218))

(declare-fun m!2270029 () Bool)

(assert (=> d!563490 m!2270029))

(declare-fun m!2270031 () Bool)

(assert (=> d!563490 m!2270031))

(declare-fun m!2270033 () Bool)

(assert (=> b!1842217 m!2270033))

(declare-fun m!2270035 () Bool)

(assert (=> b!1842217 m!2270035))

(assert (=> b!1842217 m!2270033))

(assert (=> b!1842217 m!2270035))

(declare-fun m!2270037 () Bool)

(assert (=> b!1842217 m!2270037))

(assert (=> b!1841915 d!563490))

(declare-fun d!563492 () Bool)

(declare-fun lt!714379 () Int)

(assert (=> d!563492 (>= lt!714379 0)))

(declare-fun e!1177219 () Int)

(assert (=> d!563492 (= lt!714379 e!1177219)))

(declare-fun c!300707 () Bool)

(assert (=> d!563492 (= c!300707 ((_ is Nil!20282) (list!8249 (xs!9583 (left!16214 t!3734)))))))

(assert (=> d!563492 (= (size!16079 (list!8249 (xs!9583 (left!16214 t!3734)))) lt!714379)))

(declare-fun b!1842219 () Bool)

(assert (=> b!1842219 (= e!1177219 0)))

(declare-fun b!1842220 () Bool)

(assert (=> b!1842220 (= e!1177219 (+ 1 (size!16079 (t!171805 (list!8249 (xs!9583 (left!16214 t!3734)))))))))

(assert (= (and d!563492 c!300707) b!1842219))

(assert (= (and d!563492 (not c!300707)) b!1842220))

(declare-fun m!2270039 () Bool)

(assert (=> b!1842220 m!2270039))

(assert (=> b!1841963 d!563492))

(assert (=> b!1841963 d!563296))

(declare-fun d!563494 () Bool)

(assert (=> d!563494 (= (list!8249 (xs!9583 (right!16544 (right!16544 t!3734)))) (innerList!6767 (xs!9583 (right!16544 (right!16544 t!3734)))))))

(assert (=> b!1841932 d!563494))

(assert (=> d!563298 d!563492))

(assert (=> d!563298 d!563296))

(declare-fun d!563496 () Bool)

(declare-fun lt!714380 () Int)

(assert (=> d!563496 (>= lt!714380 0)))

(declare-fun e!1177220 () Int)

(assert (=> d!563496 (= lt!714380 e!1177220)))

(declare-fun c!300708 () Bool)

(assert (=> d!563496 (= c!300708 ((_ is Nil!20282) lt!714341))))

(assert (=> d!563496 (= (size!16079 lt!714341) lt!714380)))

(declare-fun b!1842221 () Bool)

(assert (=> b!1842221 (= e!1177220 0)))

(declare-fun b!1842222 () Bool)

(assert (=> b!1842222 (= e!1177220 (+ 1 (size!16079 (t!171805 lt!714341))))))

(assert (= (and d!563496 c!300708) b!1842221))

(assert (= (and d!563496 (not c!300708)) b!1842222))

(declare-fun m!2270041 () Bool)

(assert (=> b!1842222 m!2270041))

(assert (=> b!1841941 d!563496))

(declare-fun d!563498 () Bool)

(declare-fun lt!714381 () Int)

(assert (=> d!563498 (>= lt!714381 0)))

(declare-fun e!1177221 () Int)

(assert (=> d!563498 (= lt!714381 e!1177221)))

(declare-fun c!300709 () Bool)

(assert (=> d!563498 (= c!300709 ((_ is Nil!20282) (list!8248 (left!16214 (left!16214 t!3734)))))))

(assert (=> d!563498 (= (size!16079 (list!8248 (left!16214 (left!16214 t!3734)))) lt!714381)))

(declare-fun b!1842223 () Bool)

(assert (=> b!1842223 (= e!1177221 0)))

(declare-fun b!1842224 () Bool)

(assert (=> b!1842224 (= e!1177221 (+ 1 (size!16079 (t!171805 (list!8248 (left!16214 (left!16214 t!3734)))))))))

(assert (= (and d!563498 c!300709) b!1842223))

(assert (= (and d!563498 (not c!300709)) b!1842224))

(assert (=> b!1842224 m!2269845))

(assert (=> b!1841941 d!563498))

(declare-fun d!563500 () Bool)

(declare-fun lt!714382 () Int)

(assert (=> d!563500 (>= lt!714382 0)))

(declare-fun e!1177222 () Int)

(assert (=> d!563500 (= lt!714382 e!1177222)))

(declare-fun c!300710 () Bool)

(assert (=> d!563500 (= c!300710 ((_ is Nil!20282) (list!8248 (right!16544 (left!16214 t!3734)))))))

(assert (=> d!563500 (= (size!16079 (list!8248 (right!16544 (left!16214 t!3734)))) lt!714382)))

(declare-fun b!1842225 () Bool)

(assert (=> b!1842225 (= e!1177222 0)))

(declare-fun b!1842226 () Bool)

(assert (=> b!1842226 (= e!1177222 (+ 1 (size!16079 (t!171805 (list!8248 (right!16544 (left!16214 t!3734)))))))))

(assert (= (and d!563500 c!300710) b!1842225))

(assert (= (and d!563500 (not c!300710)) b!1842226))

(declare-fun m!2270043 () Bool)

(assert (=> b!1842226 m!2270043))

(assert (=> b!1841941 d!563500))

(declare-fun d!563502 () Bool)

(declare-fun c!300711 () Bool)

(assert (=> d!563502 (= c!300711 ((_ is Node!6707) (left!16214 (left!16214 (right!16544 t!3734)))))))

(declare-fun e!1177223 () Bool)

(assert (=> d!563502 (= (inv!26503 (left!16214 (left!16214 (right!16544 t!3734)))) e!1177223)))

(declare-fun b!1842227 () Bool)

(assert (=> b!1842227 (= e!1177223 (inv!26505 (left!16214 (left!16214 (right!16544 t!3734)))))))

(declare-fun b!1842228 () Bool)

(declare-fun e!1177224 () Bool)

(assert (=> b!1842228 (= e!1177223 e!1177224)))

(declare-fun res!827743 () Bool)

(assert (=> b!1842228 (= res!827743 (not ((_ is Leaf!9797) (left!16214 (left!16214 (right!16544 t!3734))))))))

(assert (=> b!1842228 (=> res!827743 e!1177224)))

(declare-fun b!1842229 () Bool)

(assert (=> b!1842229 (= e!1177224 (inv!26506 (left!16214 (left!16214 (right!16544 t!3734)))))))

(assert (= (and d!563502 c!300711) b!1842227))

(assert (= (and d!563502 (not c!300711)) b!1842228))

(assert (= (and b!1842228 (not res!827743)) b!1842229))

(declare-fun m!2270045 () Bool)

(assert (=> b!1842227 m!2270045))

(declare-fun m!2270047 () Bool)

(assert (=> b!1842229 m!2270047))

(assert (=> b!1841972 d!563502))

(declare-fun d!563504 () Bool)

(declare-fun c!300712 () Bool)

(assert (=> d!563504 (= c!300712 ((_ is Node!6707) (right!16544 (left!16214 (right!16544 t!3734)))))))

(declare-fun e!1177225 () Bool)

(assert (=> d!563504 (= (inv!26503 (right!16544 (left!16214 (right!16544 t!3734)))) e!1177225)))

(declare-fun b!1842230 () Bool)

(assert (=> b!1842230 (= e!1177225 (inv!26505 (right!16544 (left!16214 (right!16544 t!3734)))))))

(declare-fun b!1842231 () Bool)

(declare-fun e!1177226 () Bool)

(assert (=> b!1842231 (= e!1177225 e!1177226)))

(declare-fun res!827744 () Bool)

(assert (=> b!1842231 (= res!827744 (not ((_ is Leaf!9797) (right!16544 (left!16214 (right!16544 t!3734))))))))

(assert (=> b!1842231 (=> res!827744 e!1177226)))

(declare-fun b!1842232 () Bool)

(assert (=> b!1842232 (= e!1177226 (inv!26506 (right!16544 (left!16214 (right!16544 t!3734)))))))

(assert (= (and d!563504 c!300712) b!1842230))

(assert (= (and d!563504 (not c!300712)) b!1842231))

(assert (= (and b!1842231 (not res!827744)) b!1842232))

(declare-fun m!2270049 () Bool)

(assert (=> b!1842230 m!2270049))

(declare-fun m!2270051 () Bool)

(assert (=> b!1842232 m!2270051))

(assert (=> b!1841972 d!563504))

(declare-fun b!1842233 () Bool)

(declare-fun e!1177227 () Bool)

(declare-fun tp!520861 () Bool)

(assert (=> b!1842233 (= e!1177227 (and tp_is_empty!8351 tp!520861))))

(assert (=> b!1841974 (= tp!520838 e!1177227)))

(assert (= (and b!1841974 ((_ is Cons!20282) (innerList!6767 (xs!9583 (left!16214 (right!16544 t!3734)))))) b!1842233))

(declare-fun b!1842234 () Bool)

(declare-fun e!1177228 () Bool)

(declare-fun tp!520864 () Bool)

(declare-fun tp!520863 () Bool)

(assert (=> b!1842234 (= e!1177228 (and (inv!26503 (left!16214 (left!16214 (left!16214 (left!16214 t!3734))))) tp!520864 (inv!26503 (right!16544 (left!16214 (left!16214 (left!16214 t!3734))))) tp!520863))))

(declare-fun b!1842236 () Bool)

(declare-fun e!1177229 () Bool)

(declare-fun tp!520862 () Bool)

(assert (=> b!1842236 (= e!1177229 tp!520862)))

(declare-fun b!1842235 () Bool)

(assert (=> b!1842235 (= e!1177228 (and (inv!26504 (xs!9583 (left!16214 (left!16214 (left!16214 t!3734))))) e!1177229))))

(assert (=> b!1841965 (= tp!520833 (and (inv!26503 (left!16214 (left!16214 (left!16214 t!3734)))) e!1177228))))

(assert (= (and b!1841965 ((_ is Node!6707) (left!16214 (left!16214 (left!16214 t!3734))))) b!1842234))

(assert (= b!1842235 b!1842236))

(assert (= (and b!1841965 ((_ is Leaf!9797) (left!16214 (left!16214 (left!16214 t!3734))))) b!1842235))

(declare-fun m!2270053 () Bool)

(assert (=> b!1842234 m!2270053))

(declare-fun m!2270055 () Bool)

(assert (=> b!1842234 m!2270055))

(declare-fun m!2270057 () Bool)

(assert (=> b!1842235 m!2270057))

(assert (=> b!1841965 m!2269569))

(declare-fun tp!520867 () Bool)

(declare-fun tp!520866 () Bool)

(declare-fun b!1842237 () Bool)

(declare-fun e!1177230 () Bool)

(assert (=> b!1842237 (= e!1177230 (and (inv!26503 (left!16214 (right!16544 (left!16214 (left!16214 t!3734))))) tp!520867 (inv!26503 (right!16544 (right!16544 (left!16214 (left!16214 t!3734))))) tp!520866))))

(declare-fun b!1842239 () Bool)

(declare-fun e!1177231 () Bool)

(declare-fun tp!520865 () Bool)

(assert (=> b!1842239 (= e!1177231 tp!520865)))

(declare-fun b!1842238 () Bool)

(assert (=> b!1842238 (= e!1177230 (and (inv!26504 (xs!9583 (right!16544 (left!16214 (left!16214 t!3734))))) e!1177231))))

(assert (=> b!1841965 (= tp!520832 (and (inv!26503 (right!16544 (left!16214 (left!16214 t!3734)))) e!1177230))))

(assert (= (and b!1841965 ((_ is Node!6707) (right!16544 (left!16214 (left!16214 t!3734))))) b!1842237))

(assert (= b!1842238 b!1842239))

(assert (= (and b!1841965 ((_ is Leaf!9797) (right!16544 (left!16214 (left!16214 t!3734))))) b!1842238))

(declare-fun m!2270059 () Bool)

(assert (=> b!1842237 m!2270059))

(declare-fun m!2270061 () Bool)

(assert (=> b!1842237 m!2270061))

(declare-fun m!2270063 () Bool)

(assert (=> b!1842238 m!2270063))

(assert (=> b!1841965 m!2269571))

(declare-fun b!1842240 () Bool)

(declare-fun e!1177232 () Bool)

(declare-fun tp!520868 () Bool)

(assert (=> b!1842240 (= e!1177232 (and tp_is_empty!8351 tp!520868))))

(assert (=> b!1841970 (= tp!520834 e!1177232)))

(assert (= (and b!1841970 ((_ is Cons!20282) (innerList!6767 (xs!9583 (right!16544 (left!16214 t!3734)))))) b!1842240))

(declare-fun b!1842241 () Bool)

(declare-fun e!1177233 () Bool)

(declare-fun tp!520869 () Bool)

(assert (=> b!1842241 (= e!1177233 (and tp_is_empty!8351 tp!520869))))

(assert (=> b!1841967 (= tp!520831 e!1177233)))

(assert (= (and b!1841967 ((_ is Cons!20282) (innerList!6767 (xs!9583 (left!16214 (left!16214 t!3734)))))) b!1842241))

(declare-fun b!1842242 () Bool)

(declare-fun e!1177234 () Bool)

(declare-fun tp!520870 () Bool)

(assert (=> b!1842242 (= e!1177234 (and tp_is_empty!8351 tp!520870))))

(assert (=> b!1841985 (= tp!520845 e!1177234)))

(assert (= (and b!1841985 ((_ is Cons!20282) (t!171805 (innerList!6767 (xs!9583 (right!16544 t!3734)))))) b!1842242))

(declare-fun e!1177235 () Bool)

(declare-fun tp!520873 () Bool)

(declare-fun b!1842243 () Bool)

(declare-fun tp!520872 () Bool)

(assert (=> b!1842243 (= e!1177235 (and (inv!26503 (left!16214 (left!16214 (right!16544 (right!16544 t!3734))))) tp!520873 (inv!26503 (right!16544 (left!16214 (right!16544 (right!16544 t!3734))))) tp!520872))))

(declare-fun b!1842245 () Bool)

(declare-fun e!1177236 () Bool)

(declare-fun tp!520871 () Bool)

(assert (=> b!1842245 (= e!1177236 tp!520871)))

(declare-fun b!1842244 () Bool)

(assert (=> b!1842244 (= e!1177235 (and (inv!26504 (xs!9583 (left!16214 (right!16544 (right!16544 t!3734))))) e!1177236))))

(assert (=> b!1841979 (= tp!520843 (and (inv!26503 (left!16214 (right!16544 (right!16544 t!3734)))) e!1177235))))

(assert (= (and b!1841979 ((_ is Node!6707) (left!16214 (right!16544 (right!16544 t!3734))))) b!1842243))

(assert (= b!1842244 b!1842245))

(assert (= (and b!1841979 ((_ is Leaf!9797) (left!16214 (right!16544 (right!16544 t!3734))))) b!1842244))

(declare-fun m!2270065 () Bool)

(assert (=> b!1842243 m!2270065))

(declare-fun m!2270067 () Bool)

(assert (=> b!1842243 m!2270067))

(declare-fun m!2270069 () Bool)

(assert (=> b!1842244 m!2270069))

(assert (=> b!1841979 m!2269587))

(declare-fun b!1842246 () Bool)

(declare-fun tp!520875 () Bool)

(declare-fun e!1177237 () Bool)

(declare-fun tp!520876 () Bool)

(assert (=> b!1842246 (= e!1177237 (and (inv!26503 (left!16214 (right!16544 (right!16544 (right!16544 t!3734))))) tp!520876 (inv!26503 (right!16544 (right!16544 (right!16544 (right!16544 t!3734))))) tp!520875))))

(declare-fun b!1842248 () Bool)

(declare-fun e!1177238 () Bool)

(declare-fun tp!520874 () Bool)

(assert (=> b!1842248 (= e!1177238 tp!520874)))

(declare-fun b!1842247 () Bool)

(assert (=> b!1842247 (= e!1177237 (and (inv!26504 (xs!9583 (right!16544 (right!16544 (right!16544 t!3734))))) e!1177238))))

(assert (=> b!1841979 (= tp!520842 (and (inv!26503 (right!16544 (right!16544 (right!16544 t!3734)))) e!1177237))))

(assert (= (and b!1841979 ((_ is Node!6707) (right!16544 (right!16544 (right!16544 t!3734))))) b!1842246))

(assert (= b!1842247 b!1842248))

(assert (= (and b!1841979 ((_ is Leaf!9797) (right!16544 (right!16544 (right!16544 t!3734))))) b!1842247))

(declare-fun m!2270071 () Bool)

(assert (=> b!1842246 m!2270071))

(declare-fun m!2270073 () Bool)

(assert (=> b!1842246 m!2270073))

(declare-fun m!2270075 () Bool)

(assert (=> b!1842247 m!2270075))

(assert (=> b!1841979 m!2269589))

(declare-fun b!1842249 () Bool)

(declare-fun e!1177239 () Bool)

(declare-fun tp!520877 () Bool)

(assert (=> b!1842249 (= e!1177239 (and tp_is_empty!8351 tp!520877))))

(assert (=> b!1841981 (= tp!520841 e!1177239)))

(assert (= (and b!1841981 ((_ is Cons!20282) (innerList!6767 (xs!9583 (right!16544 (right!16544 t!3734)))))) b!1842249))

(declare-fun e!1177240 () Bool)

(declare-fun tp!520880 () Bool)

(declare-fun b!1842250 () Bool)

(declare-fun tp!520879 () Bool)

(assert (=> b!1842250 (= e!1177240 (and (inv!26503 (left!16214 (left!16214 (right!16544 (left!16214 t!3734))))) tp!520880 (inv!26503 (right!16544 (left!16214 (right!16544 (left!16214 t!3734))))) tp!520879))))

(declare-fun b!1842252 () Bool)

(declare-fun e!1177241 () Bool)

(declare-fun tp!520878 () Bool)

(assert (=> b!1842252 (= e!1177241 tp!520878)))

(declare-fun b!1842251 () Bool)

(assert (=> b!1842251 (= e!1177240 (and (inv!26504 (xs!9583 (left!16214 (right!16544 (left!16214 t!3734))))) e!1177241))))

(assert (=> b!1841968 (= tp!520836 (and (inv!26503 (left!16214 (right!16544 (left!16214 t!3734)))) e!1177240))))

(assert (= (and b!1841968 ((_ is Node!6707) (left!16214 (right!16544 (left!16214 t!3734))))) b!1842250))

(assert (= b!1842251 b!1842252))

(assert (= (and b!1841968 ((_ is Leaf!9797) (left!16214 (right!16544 (left!16214 t!3734))))) b!1842251))

(declare-fun m!2270077 () Bool)

(assert (=> b!1842250 m!2270077))

(declare-fun m!2270079 () Bool)

(assert (=> b!1842250 m!2270079))

(declare-fun m!2270081 () Bool)

(assert (=> b!1842251 m!2270081))

(assert (=> b!1841968 m!2269575))

(declare-fun e!1177242 () Bool)

(declare-fun b!1842253 () Bool)

(declare-fun tp!520883 () Bool)

(declare-fun tp!520882 () Bool)

(assert (=> b!1842253 (= e!1177242 (and (inv!26503 (left!16214 (right!16544 (right!16544 (left!16214 t!3734))))) tp!520883 (inv!26503 (right!16544 (right!16544 (right!16544 (left!16214 t!3734))))) tp!520882))))

(declare-fun b!1842255 () Bool)

(declare-fun e!1177243 () Bool)

(declare-fun tp!520881 () Bool)

(assert (=> b!1842255 (= e!1177243 tp!520881)))

(declare-fun b!1842254 () Bool)

(assert (=> b!1842254 (= e!1177242 (and (inv!26504 (xs!9583 (right!16544 (right!16544 (left!16214 t!3734))))) e!1177243))))

(assert (=> b!1841968 (= tp!520835 (and (inv!26503 (right!16544 (right!16544 (left!16214 t!3734)))) e!1177242))))

(assert (= (and b!1841968 ((_ is Node!6707) (right!16544 (right!16544 (left!16214 t!3734))))) b!1842253))

(assert (= b!1842254 b!1842255))

(assert (= (and b!1841968 ((_ is Leaf!9797) (right!16544 (right!16544 (left!16214 t!3734))))) b!1842254))

(declare-fun m!2270083 () Bool)

(assert (=> b!1842253 m!2270083))

(declare-fun m!2270085 () Bool)

(assert (=> b!1842253 m!2270085))

(declare-fun m!2270087 () Bool)

(assert (=> b!1842254 m!2270087))

(assert (=> b!1841968 m!2269577))

(declare-fun b!1842256 () Bool)

(declare-fun e!1177244 () Bool)

(declare-fun tp!520884 () Bool)

(assert (=> b!1842256 (= e!1177244 (and tp_is_empty!8351 tp!520884))))

(assert (=> b!1841984 (= tp!520844 e!1177244)))

(assert (= (and b!1841984 ((_ is Cons!20282) (t!171805 (t!171805 (innerList!6767 (xs!9583 t!3734)))))) b!1842256))

(declare-fun b!1842257 () Bool)

(declare-fun e!1177245 () Bool)

(declare-fun tp!520885 () Bool)

(assert (=> b!1842257 (= e!1177245 (and tp_is_empty!8351 tp!520885))))

(assert (=> b!1841971 (= tp!520837 e!1177245)))

(assert (= (and b!1841971 ((_ is Cons!20282) (t!171805 (innerList!6767 (xs!9583 (left!16214 t!3734)))))) b!1842257))

(declare-fun e!1177246 () Bool)

(declare-fun tp!520887 () Bool)

(declare-fun b!1842258 () Bool)

(declare-fun tp!520888 () Bool)

(assert (=> b!1842258 (= e!1177246 (and (inv!26503 (left!16214 (left!16214 (left!16214 (right!16544 t!3734))))) tp!520888 (inv!26503 (right!16544 (left!16214 (left!16214 (right!16544 t!3734))))) tp!520887))))

(declare-fun b!1842260 () Bool)

(declare-fun e!1177247 () Bool)

(declare-fun tp!520886 () Bool)

(assert (=> b!1842260 (= e!1177247 tp!520886)))

(declare-fun b!1842259 () Bool)

(assert (=> b!1842259 (= e!1177246 (and (inv!26504 (xs!9583 (left!16214 (left!16214 (right!16544 t!3734))))) e!1177247))))

(assert (=> b!1841972 (= tp!520840 (and (inv!26503 (left!16214 (left!16214 (right!16544 t!3734)))) e!1177246))))

(assert (= (and b!1841972 ((_ is Node!6707) (left!16214 (left!16214 (right!16544 t!3734))))) b!1842258))

(assert (= b!1842259 b!1842260))

(assert (= (and b!1841972 ((_ is Leaf!9797) (left!16214 (left!16214 (right!16544 t!3734))))) b!1842259))

(declare-fun m!2270089 () Bool)

(assert (=> b!1842258 m!2270089))

(declare-fun m!2270091 () Bool)

(assert (=> b!1842258 m!2270091))

(declare-fun m!2270093 () Bool)

(assert (=> b!1842259 m!2270093))

(assert (=> b!1841972 m!2269581))

(declare-fun tp!520890 () Bool)

(declare-fun tp!520891 () Bool)

(declare-fun b!1842261 () Bool)

(declare-fun e!1177248 () Bool)

(assert (=> b!1842261 (= e!1177248 (and (inv!26503 (left!16214 (right!16544 (left!16214 (right!16544 t!3734))))) tp!520891 (inv!26503 (right!16544 (right!16544 (left!16214 (right!16544 t!3734))))) tp!520890))))

(declare-fun b!1842263 () Bool)

(declare-fun e!1177249 () Bool)

(declare-fun tp!520889 () Bool)

(assert (=> b!1842263 (= e!1177249 tp!520889)))

(declare-fun b!1842262 () Bool)

(assert (=> b!1842262 (= e!1177248 (and (inv!26504 (xs!9583 (right!16544 (left!16214 (right!16544 t!3734))))) e!1177249))))

(assert (=> b!1841972 (= tp!520839 (and (inv!26503 (right!16544 (left!16214 (right!16544 t!3734)))) e!1177248))))

(assert (= (and b!1841972 ((_ is Node!6707) (right!16544 (left!16214 (right!16544 t!3734))))) b!1842261))

(assert (= b!1842262 b!1842263))

(assert (= (and b!1841972 ((_ is Leaf!9797) (right!16544 (left!16214 (right!16544 t!3734))))) b!1842262))

(declare-fun m!2270095 () Bool)

(assert (=> b!1842261 m!2270095))

(declare-fun m!2270097 () Bool)

(assert (=> b!1842261 m!2270097))

(declare-fun m!2270099 () Bool)

(assert (=> b!1842262 m!2270099))

(assert (=> b!1841972 m!2269583))

(declare-fun b_lambda!61059 () Bool)

(assert (= b_lambda!61053 (or d!563246 b_lambda!61059)))

(declare-fun bs!408664 () Bool)

(declare-fun d!563506 () Bool)

(assert (= bs!408664 (and d!563506 d!563246)))

(assert (=> bs!408664 (= (dynLambda!10084 lambda!72320 (h!25683 (list!8248 (left!16214 t!3734)))) (not (dynLambda!10084 p!1470 (h!25683 (list!8248 (left!16214 t!3734))))))))

(declare-fun b_lambda!61065 () Bool)

(assert (=> (not b_lambda!61065) (not bs!408664)))

(declare-fun t!171812 () Bool)

(declare-fun tb!112801 () Bool)

(assert (=> (and start!183474 (= p!1470 p!1470) t!171812) tb!112801))

(declare-fun result!135748 () Bool)

(assert (=> tb!112801 (= result!135748 true)))

(assert (=> bs!408664 t!171812))

(declare-fun b_and!143633 () Bool)

(assert (= b_and!143631 (and (=> t!171812 result!135748) b_and!143633)))

(declare-fun m!2270101 () Bool)

(assert (=> bs!408664 m!2270101))

(assert (=> b!1842105 d!563506))

(declare-fun b_lambda!61061 () Bool)

(assert (= b_lambda!61057 (or d!563272 b_lambda!61061)))

(declare-fun bs!408665 () Bool)

(declare-fun d!563508 () Bool)

(assert (= bs!408665 (and d!563508 d!563272)))

(assert (=> bs!408665 (= (dynLambda!10084 lambda!72321 (h!25683 (list!8248 (right!16544 t!3734)))) (not (dynLambda!10084 p!1470 (h!25683 (list!8248 (right!16544 t!3734))))))))

(declare-fun b_lambda!61067 () Bool)

(assert (=> (not b_lambda!61067) (not bs!408665)))

(declare-fun t!171814 () Bool)

(declare-fun tb!112803 () Bool)

(assert (=> (and start!183474 (= p!1470 p!1470) t!171814) tb!112803))

(declare-fun result!135750 () Bool)

(assert (=> tb!112803 (= result!135750 true)))

(assert (=> bs!408665 t!171814))

(declare-fun b_and!143635 () Bool)

(assert (= b_and!143633 (and (=> t!171814 result!135750) b_and!143635)))

(declare-fun m!2270103 () Bool)

(assert (=> bs!408665 m!2270103))

(assert (=> b!1842175 d!563508))

(declare-fun b_lambda!61063 () Bool)

(assert (= b_lambda!61055 (or d!563242 b_lambda!61063)))

(declare-fun bs!408666 () Bool)

(declare-fun d!563510 () Bool)

(assert (= bs!408666 (and d!563510 d!563242)))

(assert (=> bs!408666 (= (dynLambda!10084 lambda!72319 (h!25683 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734))))) (not (dynLambda!10084 p!1470 (h!25683 (++!5516 (list!8248 (left!16214 t!3734)) (list!8248 (right!16544 t!3734)))))))))

(declare-fun b_lambda!61069 () Bool)

(assert (=> (not b_lambda!61069) (not bs!408666)))

(declare-fun t!171816 () Bool)

(declare-fun tb!112805 () Bool)

(assert (=> (and start!183474 (= p!1470 p!1470) t!171816) tb!112805))

(declare-fun result!135752 () Bool)

(assert (=> tb!112805 (= result!135752 true)))

(assert (=> bs!408666 t!171816))

(declare-fun b_and!143637 () Bool)

(assert (= b_and!143635 (and (=> t!171816 result!135752) b_and!143637)))

(declare-fun m!2270105 () Bool)

(assert (=> bs!408666 m!2270105))

(assert (=> b!1842157 d!563510))

(check-sat (not b!1842074) (not d!563456) (not b!1842117) (not b!1842196) (not b!1842122) (not b!1842212) (not b!1842160) (not b!1842071) (not b!1842151) (not b_next!52209) (not b!1842076) b_and!143637 (not b_lambda!61067) (not b_lambda!61061) (not b!1842172) (not d!563388) (not b!1842125) (not b!1842226) (not b!1842121) (not b!1842086) (not b!1842209) (not b!1842149) (not b!1842129) (not b!1842198) (not b!1842100) (not d!563374) (not b!1842217) (not b!1842251) (not b!1842234) (not b!1842227) (not d!563490) (not b_lambda!61069) (not b!1842242) (not b!1842253) (not b_lambda!61059) (not b!1842143) (not b!1842257) (not b!1842252) (not b!1842184) (not b!1842191) (not b_lambda!61065) (not b!1841972) (not b!1842244) (not b!1842254) (not b!1842182) (not d!563368) (not b!1841965) (not b!1842082) (not b!1842137) (not d!563436) (not b!1841979) (not b!1842127) (not b!1842195) (not b!1841968) (not b!1842245) (not b!1842115) (not b!1842247) (not b!1842249) (not b!1842158) (not b!1842190) (not b!1842166) (not d!563446) (not d!563372) (not b!1842240) (not d!563380) (not b!1842200) (not b!1842230) (not b!1842238) (not b!1842258) (not b!1842165) (not b!1842078) (not d!563422) (not b!1842188) (not b!1842144) (not b!1842083) (not b!1842170) (not b!1842263) (not b!1842179) (not d!563442) (not b!1842106) (not b!1842155) (not b!1842136) (not b!1842087) (not b!1842176) (not b_lambda!61063) (not d!563396) (not b!1842099) (not b!1842204) (not b!1842222) (not b!1842259) (not b!1842246) (not b!1842248) (not b!1842186) (not d!563472) (not d!563420) (not b!1842119) (not b!1842224) (not b!1842255) (not b!1842080) (not b!1842208) (not b!1842161) (not b!1842256) (not d!563364) (not b!1842237) (not d!563482) tp_is_empty!8351 (not b!1842095) (not d!563384) (not b!1842203) (not b!1842090) (not b!1842215) (not d!563406) (not b!1842241) (not d!563366) (not b!1842213) (not b!1842132) (not b!1842235) (not b!1842131) (not b!1842153) (not d!563424) (not b!1842229) (not b!1842147) (not b!1842091) (not b!1842177) (not b!1842069) (not b!1842173) (not b!1842262) (not b!1842140) (not b!1842108) (not b!1842233) (not b!1842232) (not d!563386) (not b!1842193) (not d!563480) (not b!1842220) (not b!1842169) (not d!563458) (not b!1842260) (not b!1842261) (not b!1842181) (not b!1842243) (not d!563460) (not b!1842239) (not b!1842096) (not b!1842072) (not b!1842250) (not b!1842141) (not b!1842236) (not d!563452) (not b!1842068))
(check-sat b_and!143637 (not b_next!52209))
