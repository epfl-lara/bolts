; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297446 () Bool)

(assert start!297446)

(declare-datatypes ((T!63102 0))(
  ( (T!63103 (val!11980 Int)) )
))
(declare-datatypes ((List!35729 0))(
  ( (Nil!35605) (Cons!35605 (h!41025 T!63102) (t!234820 List!35729)) )
))
(declare-datatypes ((IArray!21097 0))(
  ( (IArray!21098 (innerList!10606 List!35729)) )
))
(declare-datatypes ((Conc!10546 0))(
  ( (Node!10546 (left!27696 Conc!10546) (right!28026 Conc!10546) (csize!21322 Int) (cheight!10757 Int)) (Leaf!16697 (xs!13664 IArray!21097) (csize!21323 Int)) (Empty!10546) )
))
(declare-fun t!3671 () Conc!10546)

(declare-fun ConcPrimitiveSize!26 (Conc!10546) Int)

(assert (=> start!297446 (< (ConcPrimitiveSize!26 t!3671) 0)))

(declare-fun e!1978389 () Bool)

(declare-fun inv!48415 (Conc!10546) Bool)

(assert (=> start!297446 (and (inv!48415 t!3671) e!1978389)))

(declare-fun tp!1004576 () Bool)

(declare-fun b!3176308 () Bool)

(declare-fun tp!1004577 () Bool)

(assert (=> b!3176308 (= e!1978389 (and (inv!48415 (left!27696 t!3671)) tp!1004576 (inv!48415 (right!28026 t!3671)) tp!1004577))))

(declare-fun b!3176310 () Bool)

(declare-fun e!1978390 () Bool)

(declare-fun tp!1004578 () Bool)

(assert (=> b!3176310 (= e!1978390 tp!1004578)))

(declare-fun b!3176309 () Bool)

(declare-fun inv!48416 (IArray!21097) Bool)

(assert (=> b!3176309 (= e!1978389 (and (inv!48416 (xs!13664 t!3671)) e!1978390))))

(get-info :version)

(assert (= (and start!297446 ((_ is Node!10546) t!3671)) b!3176308))

(assert (= b!3176309 b!3176310))

(assert (= (and start!297446 ((_ is Leaf!16697) t!3671)) b!3176309))

(declare-fun m!3432753 () Bool)

(assert (=> start!297446 m!3432753))

(declare-fun m!3432755 () Bool)

(assert (=> start!297446 m!3432755))

(declare-fun m!3432757 () Bool)

(assert (=> b!3176308 m!3432757))

(declare-fun m!3432759 () Bool)

(assert (=> b!3176308 m!3432759))

(declare-fun m!3432761 () Bool)

(assert (=> b!3176309 m!3432761))

(check-sat (not b!3176308) (not start!297446) (not b!3176309) (not b!3176310))
(check-sat)
(get-model)

(declare-fun d!869563 () Bool)

(declare-fun c!533729 () Bool)

(assert (=> d!869563 (= c!533729 ((_ is Node!10546) (left!27696 t!3671)))))

(declare-fun e!1978403 () Bool)

(assert (=> d!869563 (= (inv!48415 (left!27696 t!3671)) e!1978403)))

(declare-fun b!3176329 () Bool)

(declare-fun inv!48417 (Conc!10546) Bool)

(assert (=> b!3176329 (= e!1978403 (inv!48417 (left!27696 t!3671)))))

(declare-fun b!3176330 () Bool)

(declare-fun e!1978404 () Bool)

(assert (=> b!3176330 (= e!1978403 e!1978404)))

(declare-fun res!1290608 () Bool)

(assert (=> b!3176330 (= res!1290608 (not ((_ is Leaf!16697) (left!27696 t!3671))))))

(assert (=> b!3176330 (=> res!1290608 e!1978404)))

(declare-fun b!3176331 () Bool)

(declare-fun inv!48418 (Conc!10546) Bool)

(assert (=> b!3176331 (= e!1978404 (inv!48418 (left!27696 t!3671)))))

(assert (= (and d!869563 c!533729) b!3176329))

(assert (= (and d!869563 (not c!533729)) b!3176330))

(assert (= (and b!3176330 (not res!1290608)) b!3176331))

(declare-fun m!3432771 () Bool)

(assert (=> b!3176329 m!3432771))

(declare-fun m!3432773 () Bool)

(assert (=> b!3176331 m!3432773))

(assert (=> b!3176308 d!869563))

(declare-fun d!869569 () Bool)

(declare-fun c!533730 () Bool)

(assert (=> d!869569 (= c!533730 ((_ is Node!10546) (right!28026 t!3671)))))

(declare-fun e!1978405 () Bool)

(assert (=> d!869569 (= (inv!48415 (right!28026 t!3671)) e!1978405)))

(declare-fun b!3176332 () Bool)

(assert (=> b!3176332 (= e!1978405 (inv!48417 (right!28026 t!3671)))))

(declare-fun b!3176333 () Bool)

(declare-fun e!1978406 () Bool)

(assert (=> b!3176333 (= e!1978405 e!1978406)))

(declare-fun res!1290609 () Bool)

(assert (=> b!3176333 (= res!1290609 (not ((_ is Leaf!16697) (right!28026 t!3671))))))

(assert (=> b!3176333 (=> res!1290609 e!1978406)))

(declare-fun b!3176334 () Bool)

(assert (=> b!3176334 (= e!1978406 (inv!48418 (right!28026 t!3671)))))

(assert (= (and d!869569 c!533730) b!3176332))

(assert (= (and d!869569 (not c!533730)) b!3176333))

(assert (= (and b!3176333 (not res!1290609)) b!3176334))

(declare-fun m!3432775 () Bool)

(assert (=> b!3176332 m!3432775))

(declare-fun m!3432777 () Bool)

(assert (=> b!3176334 m!3432777))

(assert (=> b!3176308 d!869569))

(declare-fun b!3176351 () Bool)

(declare-fun e!1978415 () Int)

(assert (=> b!3176351 (= e!1978415 0)))

(declare-fun b!3176352 () Bool)

(declare-fun call!230871 () Int)

(declare-fun IArrayPrimitiveSize!24 (IArray!21097) Int)

(assert (=> b!3176352 (= e!1978415 (+ 1 (IArrayPrimitiveSize!24 (xs!13664 t!3671)) call!230871))))

(declare-fun bm!230866 () Bool)

(declare-fun c!533739 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!230866 (= call!230871 (BigIntAbs!0 (ite c!533739 (cheight!10757 t!3671) (csize!21323 t!3671))))))

(declare-fun b!3176353 () Bool)

(declare-fun e!1978416 () Int)

(assert (=> b!3176353 (= e!1978416 e!1978415)))

(declare-fun c!533740 () Bool)

(assert (=> b!3176353 (= c!533740 ((_ is Leaf!16697) t!3671))))

(declare-fun d!869571 () Bool)

(declare-fun lt!1067989 () Int)

(assert (=> d!869571 (>= lt!1067989 0)))

(assert (=> d!869571 (= lt!1067989 e!1978416)))

(assert (=> d!869571 (= c!533739 ((_ is Node!10546) t!3671))))

(assert (=> d!869571 (= (ConcPrimitiveSize!26 t!3671) lt!1067989)))

(declare-fun b!3176354 () Bool)

(assert (=> b!3176354 (= e!1978416 (+ 1 (ConcPrimitiveSize!26 (left!27696 t!3671)) (ConcPrimitiveSize!26 (right!28026 t!3671)) (BigIntAbs!0 (csize!21322 t!3671)) call!230871))))

(assert (= (and d!869571 c!533739) b!3176354))

(assert (= (and d!869571 (not c!533739)) b!3176353))

(assert (= (and b!3176353 c!533740) b!3176352))

(assert (= (and b!3176353 (not c!533740)) b!3176351))

(assert (= (or b!3176354 b!3176352) bm!230866))

(declare-fun m!3432779 () Bool)

(assert (=> b!3176352 m!3432779))

(declare-fun m!3432781 () Bool)

(assert (=> bm!230866 m!3432781))

(declare-fun m!3432783 () Bool)

(assert (=> b!3176354 m!3432783))

(declare-fun m!3432785 () Bool)

(assert (=> b!3176354 m!3432785))

(declare-fun m!3432787 () Bool)

(assert (=> b!3176354 m!3432787))

(assert (=> start!297446 d!869571))

(declare-fun d!869573 () Bool)

(declare-fun c!533743 () Bool)

(assert (=> d!869573 (= c!533743 ((_ is Node!10546) t!3671))))

(declare-fun e!1978419 () Bool)

(assert (=> d!869573 (= (inv!48415 t!3671) e!1978419)))

(declare-fun b!3176359 () Bool)

(assert (=> b!3176359 (= e!1978419 (inv!48417 t!3671))))

(declare-fun b!3176360 () Bool)

(declare-fun e!1978420 () Bool)

(assert (=> b!3176360 (= e!1978419 e!1978420)))

(declare-fun res!1290610 () Bool)

(assert (=> b!3176360 (= res!1290610 (not ((_ is Leaf!16697) t!3671)))))

(assert (=> b!3176360 (=> res!1290610 e!1978420)))

(declare-fun b!3176361 () Bool)

(assert (=> b!3176361 (= e!1978420 (inv!48418 t!3671))))

(assert (= (and d!869573 c!533743) b!3176359))

(assert (= (and d!869573 (not c!533743)) b!3176360))

(assert (= (and b!3176360 (not res!1290610)) b!3176361))

(declare-fun m!3432789 () Bool)

(assert (=> b!3176359 m!3432789))

(declare-fun m!3432791 () Bool)

(assert (=> b!3176361 m!3432791))

(assert (=> start!297446 d!869573))

(declare-fun d!869575 () Bool)

(declare-fun size!26902 (List!35729) Int)

(assert (=> d!869575 (= (inv!48416 (xs!13664 t!3671)) (<= (size!26902 (innerList!10606 (xs!13664 t!3671))) 2147483647))))

(declare-fun bs!539738 () Bool)

(assert (= bs!539738 d!869575))

(declare-fun m!3432807 () Bool)

(assert (=> bs!539738 m!3432807))

(assert (=> b!3176309 d!869575))

(declare-fun b!3176369 () Bool)

(declare-fun e!1978425 () Bool)

(declare-fun tp_is_empty!17215 () Bool)

(declare-fun tp!1004581 () Bool)

(assert (=> b!3176369 (= e!1978425 (and tp_is_empty!17215 tp!1004581))))

(assert (=> b!3176310 (= tp!1004578 e!1978425)))

(assert (= (and b!3176310 ((_ is Cons!35605) (innerList!10606 (xs!13664 t!3671)))) b!3176369))

(declare-fun e!1978434 () Bool)

(declare-fun tp!1004594 () Bool)

(declare-fun b!3176386 () Bool)

(declare-fun tp!1004595 () Bool)

(assert (=> b!3176386 (= e!1978434 (and (inv!48415 (left!27696 (left!27696 t!3671))) tp!1004594 (inv!48415 (right!28026 (left!27696 t!3671))) tp!1004595))))

(declare-fun b!3176388 () Bool)

(declare-fun e!1978435 () Bool)

(declare-fun tp!1004596 () Bool)

(assert (=> b!3176388 (= e!1978435 tp!1004596)))

(declare-fun b!3176387 () Bool)

(assert (=> b!3176387 (= e!1978434 (and (inv!48416 (xs!13664 (left!27696 t!3671))) e!1978435))))

(assert (=> b!3176308 (= tp!1004576 (and (inv!48415 (left!27696 t!3671)) e!1978434))))

(assert (= (and b!3176308 ((_ is Node!10546) (left!27696 t!3671))) b!3176386))

(assert (= b!3176387 b!3176388))

(assert (= (and b!3176308 ((_ is Leaf!16697) (left!27696 t!3671))) b!3176387))

(declare-fun m!3432811 () Bool)

(assert (=> b!3176386 m!3432811))

(declare-fun m!3432813 () Bool)

(assert (=> b!3176386 m!3432813))

(declare-fun m!3432815 () Bool)

(assert (=> b!3176387 m!3432815))

(assert (=> b!3176308 m!3432757))

(declare-fun tp!1004597 () Bool)

(declare-fun b!3176389 () Bool)

(declare-fun tp!1004598 () Bool)

(declare-fun e!1978436 () Bool)

(assert (=> b!3176389 (= e!1978436 (and (inv!48415 (left!27696 (right!28026 t!3671))) tp!1004597 (inv!48415 (right!28026 (right!28026 t!3671))) tp!1004598))))

(declare-fun b!3176391 () Bool)

(declare-fun e!1978437 () Bool)

(declare-fun tp!1004599 () Bool)

(assert (=> b!3176391 (= e!1978437 tp!1004599)))

(declare-fun b!3176390 () Bool)

(assert (=> b!3176390 (= e!1978436 (and (inv!48416 (xs!13664 (right!28026 t!3671))) e!1978437))))

(assert (=> b!3176308 (= tp!1004577 (and (inv!48415 (right!28026 t!3671)) e!1978436))))

(assert (= (and b!3176308 ((_ is Node!10546) (right!28026 t!3671))) b!3176389))

(assert (= b!3176390 b!3176391))

(assert (= (and b!3176308 ((_ is Leaf!16697) (right!28026 t!3671))) b!3176390))

(declare-fun m!3432817 () Bool)

(assert (=> b!3176389 m!3432817))

(declare-fun m!3432819 () Bool)

(assert (=> b!3176389 m!3432819))

(declare-fun m!3432821 () Bool)

(assert (=> b!3176390 m!3432821))

(assert (=> b!3176308 m!3432759))

(check-sat (not b!3176369) (not b!3176388) (not b!3176329) (not b!3176308) (not b!3176389) (not b!3176391) (not b!3176352) (not b!3176331) (not b!3176361) (not b!3176359) (not b!3176386) (not bm!230866) (not b!3176387) (not b!3176390) tp_is_empty!17215 (not d!869575) (not b!3176354) (not b!3176334) (not b!3176332))
(check-sat)
