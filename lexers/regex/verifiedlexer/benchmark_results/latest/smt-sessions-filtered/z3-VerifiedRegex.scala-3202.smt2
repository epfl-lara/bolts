; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186640 () Bool)

(assert start!186640)

(declare-fun b!1865575 () Bool)

(declare-fun e!1190833 () Bool)

(declare-fun tp!531178 () Bool)

(assert (=> b!1865575 (= e!1190833 tp!531178)))

(declare-fun b!1865576 () Bool)

(declare-fun e!1190831 () Bool)

(declare-datatypes ((T!33102 0))(
  ( (T!33103 (val!5940 Int)) )
))
(declare-datatypes ((List!20757 0))(
  ( (Nil!20675) (Cons!20675 (h!26076 T!33102) (t!172870 List!20757)) )
))
(declare-datatypes ((IArray!13745 0))(
  ( (IArray!13746 (innerList!6930 List!20757)) )
))
(declare-datatypes ((Conc!6870 0))(
  ( (Node!6870 (left!16658 Conc!6870) (right!16988 Conc!6870) (csize!13970 Int) (cheight!7081 Int)) (Leaf!10073 (xs!9752 IArray!13745) (csize!13971 Int)) (Empty!6870) )
))
(declare-fun t!4595 () Conc!6870)

(declare-fun inv!27341 (IArray!13745) Bool)

(assert (=> b!1865576 (= e!1190831 (and (inv!27341 (xs!9752 t!4595)) e!1190833))))

(declare-fun b!1865577 () Bool)

(declare-fun tp!531180 () Bool)

(declare-fun tp!531179 () Bool)

(declare-fun inv!27342 (Conc!6870) Bool)

(assert (=> b!1865577 (= e!1190831 (and (inv!27342 (left!16658 t!4595)) tp!531179 (inv!27342 (right!16988 t!4595)) tp!531180))))

(declare-fun res!835386 () Bool)

(declare-fun e!1190832 () Bool)

(assert (=> start!186640 (=> (not res!835386) (not e!1190832))))

(declare-fun isBalanced!2171 (Conc!6870) Bool)

(assert (=> start!186640 (= res!835386 (isBalanced!2171 t!4595))))

(assert (=> start!186640 e!1190832))

(assert (=> start!186640 (and (inv!27342 t!4595) e!1190831)))

(declare-fun b!1865578 () Bool)

(declare-fun ConcPrimitiveSize!12 (Conc!6870) Int)

(assert (=> b!1865578 (= e!1190832 (< (ConcPrimitiveSize!12 t!4595) 0))))

(declare-fun b!1865579 () Bool)

(declare-fun res!835387 () Bool)

(assert (=> b!1865579 (=> (not res!835387) (not e!1190832))))

(declare-fun isEmpty!12891 (Conc!6870) Bool)

(assert (=> b!1865579 (= res!835387 (not (isEmpty!12891 t!4595)))))

(assert (= (and start!186640 res!835386) b!1865579))

(assert (= (and b!1865579 res!835387) b!1865578))

(get-info :version)

(assert (= (and start!186640 ((_ is Node!6870) t!4595)) b!1865577))

(assert (= b!1865576 b!1865575))

(assert (= (and start!186640 ((_ is Leaf!10073) t!4595)) b!1865576))

(declare-fun m!2290305 () Bool)

(assert (=> b!1865579 m!2290305))

(declare-fun m!2290307 () Bool)

(assert (=> b!1865578 m!2290307))

(declare-fun m!2290309 () Bool)

(assert (=> start!186640 m!2290309))

(declare-fun m!2290311 () Bool)

(assert (=> start!186640 m!2290311))

(declare-fun m!2290313 () Bool)

(assert (=> b!1865577 m!2290313))

(declare-fun m!2290315 () Bool)

(assert (=> b!1865577 m!2290315))

(declare-fun m!2290317 () Bool)

(assert (=> b!1865576 m!2290317))

(check-sat (not b!1865579) (not b!1865575) (not b!1865576) (not b!1865578) (not b!1865577) (not start!186640))
(check-sat)
(get-model)

(declare-fun d!569569 () Bool)

(declare-fun c!303880 () Bool)

(assert (=> d!569569 (= c!303880 ((_ is Node!6870) (left!16658 t!4595)))))

(declare-fun e!1190846 () Bool)

(assert (=> d!569569 (= (inv!27342 (left!16658 t!4595)) e!1190846)))

(declare-fun b!1865598 () Bool)

(declare-fun inv!27344 (Conc!6870) Bool)

(assert (=> b!1865598 (= e!1190846 (inv!27344 (left!16658 t!4595)))))

(declare-fun b!1865599 () Bool)

(declare-fun e!1190847 () Bool)

(assert (=> b!1865599 (= e!1190846 e!1190847)))

(declare-fun res!835394 () Bool)

(assert (=> b!1865599 (= res!835394 (not ((_ is Leaf!10073) (left!16658 t!4595))))))

(assert (=> b!1865599 (=> res!835394 e!1190847)))

(declare-fun b!1865600 () Bool)

(declare-fun inv!27346 (Conc!6870) Bool)

(assert (=> b!1865600 (= e!1190847 (inv!27346 (left!16658 t!4595)))))

(assert (= (and d!569569 c!303880) b!1865598))

(assert (= (and d!569569 (not c!303880)) b!1865599))

(assert (= (and b!1865599 (not res!835394)) b!1865600))

(declare-fun m!2290327 () Bool)

(assert (=> b!1865598 m!2290327))

(declare-fun m!2290329 () Bool)

(assert (=> b!1865600 m!2290329))

(assert (=> b!1865577 d!569569))

(declare-fun d!569575 () Bool)

(declare-fun c!303881 () Bool)

(assert (=> d!569575 (= c!303881 ((_ is Node!6870) (right!16988 t!4595)))))

(declare-fun e!1190848 () Bool)

(assert (=> d!569575 (= (inv!27342 (right!16988 t!4595)) e!1190848)))

(declare-fun b!1865601 () Bool)

(assert (=> b!1865601 (= e!1190848 (inv!27344 (right!16988 t!4595)))))

(declare-fun b!1865602 () Bool)

(declare-fun e!1190849 () Bool)

(assert (=> b!1865602 (= e!1190848 e!1190849)))

(declare-fun res!835395 () Bool)

(assert (=> b!1865602 (= res!835395 (not ((_ is Leaf!10073) (right!16988 t!4595))))))

(assert (=> b!1865602 (=> res!835395 e!1190849)))

(declare-fun b!1865603 () Bool)

(assert (=> b!1865603 (= e!1190849 (inv!27346 (right!16988 t!4595)))))

(assert (= (and d!569575 c!303881) b!1865601))

(assert (= (and d!569575 (not c!303881)) b!1865602))

(assert (= (and b!1865602 (not res!835395)) b!1865603))

(declare-fun m!2290331 () Bool)

(assert (=> b!1865601 m!2290331))

(declare-fun m!2290333 () Bool)

(assert (=> b!1865603 m!2290333))

(assert (=> b!1865577 d!569575))

(declare-fun b!1865628 () Bool)

(declare-fun res!835410 () Bool)

(declare-fun e!1190860 () Bool)

(assert (=> b!1865628 (=> (not res!835410) (not e!1190860))))

(assert (=> b!1865628 (= res!835410 (not (isEmpty!12891 (left!16658 t!4595))))))

(declare-fun b!1865629 () Bool)

(declare-fun res!835409 () Bool)

(assert (=> b!1865629 (=> (not res!835409) (not e!1190860))))

(assert (=> b!1865629 (= res!835409 (isBalanced!2171 (left!16658 t!4595)))))

(declare-fun b!1865630 () Bool)

(declare-fun e!1190861 () Bool)

(assert (=> b!1865630 (= e!1190861 e!1190860)))

(declare-fun res!835408 () Bool)

(assert (=> b!1865630 (=> (not res!835408) (not e!1190860))))

(declare-fun height!1056 (Conc!6870) Int)

(assert (=> b!1865630 (= res!835408 (<= (- 1) (- (height!1056 (left!16658 t!4595)) (height!1056 (right!16988 t!4595)))))))

(declare-fun b!1865631 () Bool)

(declare-fun res!835411 () Bool)

(assert (=> b!1865631 (=> (not res!835411) (not e!1190860))))

(assert (=> b!1865631 (= res!835411 (isBalanced!2171 (right!16988 t!4595)))))

(declare-fun d!569577 () Bool)

(declare-fun res!835413 () Bool)

(assert (=> d!569577 (=> res!835413 e!1190861)))

(assert (=> d!569577 (= res!835413 (not ((_ is Node!6870) t!4595)))))

(assert (=> d!569577 (= (isBalanced!2171 t!4595) e!1190861)))

(declare-fun b!1865632 () Bool)

(assert (=> b!1865632 (= e!1190860 (not (isEmpty!12891 (right!16988 t!4595))))))

(declare-fun b!1865633 () Bool)

(declare-fun res!835412 () Bool)

(assert (=> b!1865633 (=> (not res!835412) (not e!1190860))))

(assert (=> b!1865633 (= res!835412 (<= (- (height!1056 (left!16658 t!4595)) (height!1056 (right!16988 t!4595))) 1))))

(assert (= (and d!569577 (not res!835413)) b!1865630))

(assert (= (and b!1865630 res!835408) b!1865633))

(assert (= (and b!1865633 res!835412) b!1865629))

(assert (= (and b!1865629 res!835409) b!1865631))

(assert (= (and b!1865631 res!835411) b!1865628))

(assert (= (and b!1865628 res!835410) b!1865632))

(declare-fun m!2290347 () Bool)

(assert (=> b!1865630 m!2290347))

(declare-fun m!2290349 () Bool)

(assert (=> b!1865630 m!2290349))

(declare-fun m!2290351 () Bool)

(assert (=> b!1865629 m!2290351))

(declare-fun m!2290353 () Bool)

(assert (=> b!1865632 m!2290353))

(declare-fun m!2290355 () Bool)

(assert (=> b!1865628 m!2290355))

(assert (=> b!1865633 m!2290347))

(assert (=> b!1865633 m!2290349))

(declare-fun m!2290357 () Bool)

(assert (=> b!1865631 m!2290357))

(assert (=> start!186640 d!569577))

(declare-fun d!569583 () Bool)

(declare-fun c!303888 () Bool)

(assert (=> d!569583 (= c!303888 ((_ is Node!6870) t!4595))))

(declare-fun e!1190862 () Bool)

(assert (=> d!569583 (= (inv!27342 t!4595) e!1190862)))

(declare-fun b!1865634 () Bool)

(assert (=> b!1865634 (= e!1190862 (inv!27344 t!4595))))

(declare-fun b!1865635 () Bool)

(declare-fun e!1190863 () Bool)

(assert (=> b!1865635 (= e!1190862 e!1190863)))

(declare-fun res!835414 () Bool)

(assert (=> b!1865635 (= res!835414 (not ((_ is Leaf!10073) t!4595)))))

(assert (=> b!1865635 (=> res!835414 e!1190863)))

(declare-fun b!1865636 () Bool)

(assert (=> b!1865636 (= e!1190863 (inv!27346 t!4595))))

(assert (= (and d!569583 c!303888) b!1865634))

(assert (= (and d!569583 (not c!303888)) b!1865635))

(assert (= (and b!1865635 (not res!835414)) b!1865636))

(declare-fun m!2290359 () Bool)

(assert (=> b!1865634 m!2290359))

(declare-fun m!2290361 () Bool)

(assert (=> b!1865636 m!2290361))

(assert (=> start!186640 d!569583))

(declare-fun bm!115894 () Bool)

(declare-fun call!115899 () Int)

(declare-fun c!303894 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!115894 (= call!115899 (BigIntAbs!0 (ite c!303894 (cheight!7081 t!4595) (csize!13971 t!4595))))))

(declare-fun b!1865657 () Bool)

(declare-fun e!1190872 () Int)

(assert (=> b!1865657 (= e!1190872 0)))

(declare-fun b!1865658 () Bool)

(declare-fun IArrayPrimitiveSize!12 (IArray!13745) Int)

(assert (=> b!1865658 (= e!1190872 (+ 1 (IArrayPrimitiveSize!12 (xs!9752 t!4595)) call!115899))))

(declare-fun d!569585 () Bool)

(declare-fun lt!718525 () Int)

(assert (=> d!569585 (>= lt!718525 0)))

(declare-fun e!1190873 () Int)

(assert (=> d!569585 (= lt!718525 e!1190873)))

(assert (=> d!569585 (= c!303894 ((_ is Node!6870) t!4595))))

(assert (=> d!569585 (= (ConcPrimitiveSize!12 t!4595) lt!718525)))

(declare-fun b!1865659 () Bool)

(assert (=> b!1865659 (= e!1190873 (+ 1 (ConcPrimitiveSize!12 (left!16658 t!4595)) (ConcPrimitiveSize!12 (right!16988 t!4595)) (BigIntAbs!0 (csize!13970 t!4595)) call!115899))))

(declare-fun b!1865660 () Bool)

(assert (=> b!1865660 (= e!1190873 e!1190872)))

(declare-fun c!303893 () Bool)

(assert (=> b!1865660 (= c!303893 ((_ is Leaf!10073) t!4595))))

(assert (= (and d!569585 c!303894) b!1865659))

(assert (= (and d!569585 (not c!303894)) b!1865660))

(assert (= (and b!1865660 c!303893) b!1865658))

(assert (= (and b!1865660 (not c!303893)) b!1865657))

(assert (= (or b!1865659 b!1865658) bm!115894))

(declare-fun m!2290363 () Bool)

(assert (=> bm!115894 m!2290363))

(declare-fun m!2290365 () Bool)

(assert (=> b!1865658 m!2290365))

(declare-fun m!2290367 () Bool)

(assert (=> b!1865659 m!2290367))

(declare-fun m!2290369 () Bool)

(assert (=> b!1865659 m!2290369))

(declare-fun m!2290371 () Bool)

(assert (=> b!1865659 m!2290371))

(assert (=> b!1865578 d!569585))

(declare-fun d!569587 () Bool)

(declare-fun lt!718530 () Bool)

(declare-fun isEmpty!12892 (List!20757) Bool)

(declare-fun list!8451 (Conc!6870) List!20757)

(assert (=> d!569587 (= lt!718530 (isEmpty!12892 (list!8451 t!4595)))))

(declare-fun size!16380 (Conc!6870) Int)

(assert (=> d!569587 (= lt!718530 (= (size!16380 t!4595) 0))))

(assert (=> d!569587 (= (isEmpty!12891 t!4595) lt!718530)))

(declare-fun bs!411689 () Bool)

(assert (= bs!411689 d!569587))

(declare-fun m!2290389 () Bool)

(assert (=> bs!411689 m!2290389))

(assert (=> bs!411689 m!2290389))

(declare-fun m!2290391 () Bool)

(assert (=> bs!411689 m!2290391))

(declare-fun m!2290393 () Bool)

(assert (=> bs!411689 m!2290393))

(assert (=> b!1865579 d!569587))

(declare-fun d!569593 () Bool)

(declare-fun size!16381 (List!20757) Int)

(assert (=> d!569593 (= (inv!27341 (xs!9752 t!4595)) (<= (size!16381 (innerList!6930 (xs!9752 t!4595))) 2147483647))))

(declare-fun bs!411691 () Bool)

(assert (= bs!411691 d!569593))

(declare-fun m!2290401 () Bool)

(assert (=> bs!411691 m!2290401))

(assert (=> b!1865576 d!569593))

(declare-fun tp!531201 () Bool)

(declare-fun b!1865696 () Bool)

(declare-fun tp!531203 () Bool)

(declare-fun e!1190892 () Bool)

(assert (=> b!1865696 (= e!1190892 (and (inv!27342 (left!16658 (left!16658 t!4595))) tp!531203 (inv!27342 (right!16988 (left!16658 t!4595))) tp!531201))))

(declare-fun b!1865698 () Bool)

(declare-fun e!1190893 () Bool)

(declare-fun tp!531202 () Bool)

(assert (=> b!1865698 (= e!1190893 tp!531202)))

(declare-fun b!1865697 () Bool)

(assert (=> b!1865697 (= e!1190892 (and (inv!27341 (xs!9752 (left!16658 t!4595))) e!1190893))))

(assert (=> b!1865577 (= tp!531179 (and (inv!27342 (left!16658 t!4595)) e!1190892))))

(assert (= (and b!1865577 ((_ is Node!6870) (left!16658 t!4595))) b!1865696))

(assert (= b!1865697 b!1865698))

(assert (= (and b!1865577 ((_ is Leaf!10073) (left!16658 t!4595))) b!1865697))

(declare-fun m!2290415 () Bool)

(assert (=> b!1865696 m!2290415))

(declare-fun m!2290417 () Bool)

(assert (=> b!1865696 m!2290417))

(declare-fun m!2290419 () Bool)

(assert (=> b!1865697 m!2290419))

(assert (=> b!1865577 m!2290313))

(declare-fun tp!531205 () Bool)

(declare-fun tp!531207 () Bool)

(declare-fun e!1190895 () Bool)

(declare-fun b!1865700 () Bool)

(assert (=> b!1865700 (= e!1190895 (and (inv!27342 (left!16658 (right!16988 t!4595))) tp!531207 (inv!27342 (right!16988 (right!16988 t!4595))) tp!531205))))

(declare-fun b!1865702 () Bool)

(declare-fun e!1190896 () Bool)

(declare-fun tp!531206 () Bool)

(assert (=> b!1865702 (= e!1190896 tp!531206)))

(declare-fun b!1865701 () Bool)

(assert (=> b!1865701 (= e!1190895 (and (inv!27341 (xs!9752 (right!16988 t!4595))) e!1190896))))

(assert (=> b!1865577 (= tp!531180 (and (inv!27342 (right!16988 t!4595)) e!1190895))))

(assert (= (and b!1865577 ((_ is Node!6870) (right!16988 t!4595))) b!1865700))

(assert (= b!1865701 b!1865702))

(assert (= (and b!1865577 ((_ is Leaf!10073) (right!16988 t!4595))) b!1865701))

(declare-fun m!2290421 () Bool)

(assert (=> b!1865700 m!2290421))

(declare-fun m!2290423 () Bool)

(assert (=> b!1865700 m!2290423))

(declare-fun m!2290425 () Bool)

(assert (=> b!1865701 m!2290425))

(assert (=> b!1865577 m!2290315))

(declare-fun b!1865707 () Bool)

(declare-fun e!1190899 () Bool)

(declare-fun tp_is_empty!8659 () Bool)

(declare-fun tp!531210 () Bool)

(assert (=> b!1865707 (= e!1190899 (and tp_is_empty!8659 tp!531210))))

(assert (=> b!1865575 (= tp!531178 e!1190899)))

(assert (= (and b!1865575 ((_ is Cons!20675) (innerList!6930 (xs!9752 t!4595)))) b!1865707))

(check-sat tp_is_empty!8659 (not d!569587) (not b!1865659) (not b!1865702) (not b!1865601) (not b!1865696) (not b!1865633) (not b!1865577) (not b!1865698) (not b!1865658) (not bm!115894) (not b!1865630) (not b!1865701) (not d!569593) (not b!1865700) (not b!1865707) (not b!1865598) (not b!1865697) (not b!1865600) (not b!1865636) (not b!1865632) (not b!1865631) (not b!1865603) (not b!1865634) (not b!1865628) (not b!1865629))
(check-sat)
