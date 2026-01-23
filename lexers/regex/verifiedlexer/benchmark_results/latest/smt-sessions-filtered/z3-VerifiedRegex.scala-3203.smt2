; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186664 () Bool)

(assert start!186664)

(declare-fun b!1865738 () Bool)

(declare-fun e!1190917 () Bool)

(declare-datatypes ((T!33116 0))(
  ( (T!33117 (val!5942 Int)) )
))
(declare-datatypes ((List!20759 0))(
  ( (Nil!20677) (Cons!20677 (h!26078 T!33116) (t!172876 List!20759)) )
))
(declare-datatypes ((IArray!13749 0))(
  ( (IArray!13750 (innerList!6932 List!20759)) )
))
(declare-datatypes ((Conc!6872 0))(
  ( (Node!6872 (left!16661 Conc!6872) (right!16991 Conc!6872) (csize!13974 Int) (cheight!7083 Int)) (Leaf!10076 (xs!9754 IArray!13749) (csize!13975 Int)) (Empty!6872) )
))
(declare-fun t!4595 () Conc!6872)

(declare-fun e!1190915 () Bool)

(declare-fun inv!27352 (IArray!13749) Bool)

(assert (=> b!1865738 (= e!1190917 (and (inv!27352 (xs!9754 t!4595)) e!1190915))))

(declare-fun b!1865739 () Bool)

(declare-fun e!1190916 () Bool)

(declare-fun inv!27353 (Conc!6872) Bool)

(assert (=> b!1865739 (= e!1190916 (not (inv!27353 Empty!6872)))))

(declare-fun b!1865740 () Bool)

(declare-fun res!835451 () Bool)

(assert (=> b!1865740 (=> (not res!835451) (not e!1190916))))

(declare-fun isEmpty!12895 (Conc!6872) Bool)

(assert (=> b!1865740 (= res!835451 (not (isEmpty!12895 t!4595)))))

(declare-fun res!835450 () Bool)

(assert (=> start!186664 (=> (not res!835450) (not e!1190916))))

(declare-fun isBalanced!2173 (Conc!6872) Bool)

(assert (=> start!186664 (= res!835450 (isBalanced!2173 t!4595))))

(assert (=> start!186664 e!1190916))

(assert (=> start!186664 (and (inv!27353 t!4595) e!1190917)))

(declare-fun tp!531228 () Bool)

(declare-fun tp!531227 () Bool)

(declare-fun b!1865741 () Bool)

(assert (=> b!1865741 (= e!1190917 (and (inv!27353 (left!16661 t!4595)) tp!531227 (inv!27353 (right!16991 t!4595)) tp!531228))))

(declare-fun b!1865742 () Bool)

(declare-fun tp!531226 () Bool)

(assert (=> b!1865742 (= e!1190915 tp!531226)))

(declare-fun b!1865743 () Bool)

(declare-fun res!835449 () Bool)

(assert (=> b!1865743 (=> (not res!835449) (not e!1190916))))

(get-info :version)

(assert (=> b!1865743 (= res!835449 (and ((_ is Leaf!10076) t!4595) (= (csize!13975 t!4595) 1)))))

(assert (= (and start!186664 res!835450) b!1865740))

(assert (= (and b!1865740 res!835451) b!1865743))

(assert (= (and b!1865743 res!835449) b!1865739))

(assert (= (and start!186664 ((_ is Node!6872) t!4595)) b!1865741))

(assert (= b!1865738 b!1865742))

(assert (= (and start!186664 ((_ is Leaf!10076) t!4595)) b!1865738))

(declare-fun m!2290441 () Bool)

(assert (=> b!1865740 m!2290441))

(declare-fun m!2290443 () Bool)

(assert (=> b!1865739 m!2290443))

(declare-fun m!2290445 () Bool)

(assert (=> b!1865741 m!2290445))

(declare-fun m!2290447 () Bool)

(assert (=> b!1865741 m!2290447))

(declare-fun m!2290449 () Bool)

(assert (=> start!186664 m!2290449))

(declare-fun m!2290451 () Bool)

(assert (=> start!186664 m!2290451))

(declare-fun m!2290453 () Bool)

(assert (=> b!1865738 m!2290453))

(check-sat (not start!186664) (not b!1865742) (not b!1865741) (not b!1865738) (not b!1865740) (not b!1865739))
(check-sat)
(get-model)

(declare-fun d!569596 () Bool)

(declare-fun size!16383 (List!20759) Int)

(assert (=> d!569596 (= (inv!27352 (xs!9754 t!4595)) (<= (size!16383 (innerList!6932 (xs!9754 t!4595))) 2147483647))))

(declare-fun bs!411694 () Bool)

(assert (= bs!411694 d!569596))

(declare-fun m!2290455 () Bool)

(assert (=> bs!411694 m!2290455))

(assert (=> b!1865738 d!569596))

(declare-fun d!569598 () Bool)

(declare-fun c!303898 () Bool)

(assert (=> d!569598 (= c!303898 ((_ is Node!6872) Empty!6872))))

(declare-fun e!1190922 () Bool)

(assert (=> d!569598 (= (inv!27353 Empty!6872) e!1190922)))

(declare-fun b!1865750 () Bool)

(declare-fun inv!27354 (Conc!6872) Bool)

(assert (=> b!1865750 (= e!1190922 (inv!27354 Empty!6872))))

(declare-fun b!1865751 () Bool)

(declare-fun e!1190923 () Bool)

(assert (=> b!1865751 (= e!1190922 e!1190923)))

(declare-fun res!835454 () Bool)

(assert (=> b!1865751 (= res!835454 (not ((_ is Leaf!10076) Empty!6872)))))

(assert (=> b!1865751 (=> res!835454 e!1190923)))

(declare-fun b!1865752 () Bool)

(declare-fun inv!27355 (Conc!6872) Bool)

(assert (=> b!1865752 (= e!1190923 (inv!27355 Empty!6872))))

(assert (= (and d!569598 c!303898) b!1865750))

(assert (= (and d!569598 (not c!303898)) b!1865751))

(assert (= (and b!1865751 (not res!835454)) b!1865752))

(declare-fun m!2290463 () Bool)

(assert (=> b!1865750 m!2290463))

(declare-fun m!2290465 () Bool)

(assert (=> b!1865752 m!2290465))

(assert (=> b!1865739 d!569598))

(declare-fun d!569604 () Bool)

(declare-fun lt!718537 () Bool)

(declare-fun isEmpty!12897 (List!20759) Bool)

(declare-fun list!8454 (Conc!6872) List!20759)

(assert (=> d!569604 (= lt!718537 (isEmpty!12897 (list!8454 t!4595)))))

(declare-fun size!16385 (Conc!6872) Int)

(assert (=> d!569604 (= lt!718537 (= (size!16385 t!4595) 0))))

(assert (=> d!569604 (= (isEmpty!12895 t!4595) lt!718537)))

(declare-fun bs!411696 () Bool)

(assert (= bs!411696 d!569604))

(declare-fun m!2290467 () Bool)

(assert (=> bs!411696 m!2290467))

(assert (=> bs!411696 m!2290467))

(declare-fun m!2290469 () Bool)

(assert (=> bs!411696 m!2290469))

(declare-fun m!2290471 () Bool)

(assert (=> bs!411696 m!2290471))

(assert (=> b!1865740 d!569604))

(declare-fun b!1865792 () Bool)

(declare-fun res!835486 () Bool)

(declare-fun e!1190943 () Bool)

(assert (=> b!1865792 (=> (not res!835486) (not e!1190943))))

(assert (=> b!1865792 (= res!835486 (not (isEmpty!12895 (left!16661 t!4595))))))

(declare-fun b!1865793 () Bool)

(declare-fun res!835487 () Bool)

(assert (=> b!1865793 (=> (not res!835487) (not e!1190943))))

(declare-fun height!1058 (Conc!6872) Int)

(assert (=> b!1865793 (= res!835487 (<= (- (height!1058 (left!16661 t!4595)) (height!1058 (right!16991 t!4595))) 1))))

(declare-fun b!1865794 () Bool)

(declare-fun res!835489 () Bool)

(assert (=> b!1865794 (=> (not res!835489) (not e!1190943))))

(assert (=> b!1865794 (= res!835489 (isBalanced!2173 (right!16991 t!4595)))))

(declare-fun d!569606 () Bool)

(declare-fun res!835488 () Bool)

(declare-fun e!1190942 () Bool)

(assert (=> d!569606 (=> res!835488 e!1190942)))

(assert (=> d!569606 (= res!835488 (not ((_ is Node!6872) t!4595)))))

(assert (=> d!569606 (= (isBalanced!2173 t!4595) e!1190942)))

(declare-fun b!1865795 () Bool)

(assert (=> b!1865795 (= e!1190942 e!1190943)))

(declare-fun res!835484 () Bool)

(assert (=> b!1865795 (=> (not res!835484) (not e!1190943))))

(assert (=> b!1865795 (= res!835484 (<= (- 1) (- (height!1058 (left!16661 t!4595)) (height!1058 (right!16991 t!4595)))))))

(declare-fun b!1865796 () Bool)

(assert (=> b!1865796 (= e!1190943 (not (isEmpty!12895 (right!16991 t!4595))))))

(declare-fun b!1865797 () Bool)

(declare-fun res!835485 () Bool)

(assert (=> b!1865797 (=> (not res!835485) (not e!1190943))))

(assert (=> b!1865797 (= res!835485 (isBalanced!2173 (left!16661 t!4595)))))

(assert (= (and d!569606 (not res!835488)) b!1865795))

(assert (= (and b!1865795 res!835484) b!1865793))

(assert (= (and b!1865793 res!835487) b!1865797))

(assert (= (and b!1865797 res!835485) b!1865794))

(assert (= (and b!1865794 res!835489) b!1865792))

(assert (= (and b!1865792 res!835486) b!1865796))

(declare-fun m!2290485 () Bool)

(assert (=> b!1865794 m!2290485))

(declare-fun m!2290487 () Bool)

(assert (=> b!1865796 m!2290487))

(declare-fun m!2290489 () Bool)

(assert (=> b!1865797 m!2290489))

(declare-fun m!2290491 () Bool)

(assert (=> b!1865793 m!2290491))

(declare-fun m!2290493 () Bool)

(assert (=> b!1865793 m!2290493))

(assert (=> b!1865795 m!2290491))

(assert (=> b!1865795 m!2290493))

(declare-fun m!2290495 () Bool)

(assert (=> b!1865792 m!2290495))

(assert (=> start!186664 d!569606))

(declare-fun d!569614 () Bool)

(declare-fun c!303904 () Bool)

(assert (=> d!569614 (= c!303904 ((_ is Node!6872) t!4595))))

(declare-fun e!1190944 () Bool)

(assert (=> d!569614 (= (inv!27353 t!4595) e!1190944)))

(declare-fun b!1865798 () Bool)

(assert (=> b!1865798 (= e!1190944 (inv!27354 t!4595))))

(declare-fun b!1865799 () Bool)

(declare-fun e!1190945 () Bool)

(assert (=> b!1865799 (= e!1190944 e!1190945)))

(declare-fun res!835490 () Bool)

(assert (=> b!1865799 (= res!835490 (not ((_ is Leaf!10076) t!4595)))))

(assert (=> b!1865799 (=> res!835490 e!1190945)))

(declare-fun b!1865800 () Bool)

(assert (=> b!1865800 (= e!1190945 (inv!27355 t!4595))))

(assert (= (and d!569614 c!303904) b!1865798))

(assert (= (and d!569614 (not c!303904)) b!1865799))

(assert (= (and b!1865799 (not res!835490)) b!1865800))

(declare-fun m!2290497 () Bool)

(assert (=> b!1865798 m!2290497))

(declare-fun m!2290499 () Bool)

(assert (=> b!1865800 m!2290499))

(assert (=> start!186664 d!569614))

(declare-fun d!569616 () Bool)

(declare-fun c!303905 () Bool)

(assert (=> d!569616 (= c!303905 ((_ is Node!6872) (left!16661 t!4595)))))

(declare-fun e!1190946 () Bool)

(assert (=> d!569616 (= (inv!27353 (left!16661 t!4595)) e!1190946)))

(declare-fun b!1865801 () Bool)

(assert (=> b!1865801 (= e!1190946 (inv!27354 (left!16661 t!4595)))))

(declare-fun b!1865802 () Bool)

(declare-fun e!1190947 () Bool)

(assert (=> b!1865802 (= e!1190946 e!1190947)))

(declare-fun res!835491 () Bool)

(assert (=> b!1865802 (= res!835491 (not ((_ is Leaf!10076) (left!16661 t!4595))))))

(assert (=> b!1865802 (=> res!835491 e!1190947)))

(declare-fun b!1865803 () Bool)

(assert (=> b!1865803 (= e!1190947 (inv!27355 (left!16661 t!4595)))))

(assert (= (and d!569616 c!303905) b!1865801))

(assert (= (and d!569616 (not c!303905)) b!1865802))

(assert (= (and b!1865802 (not res!835491)) b!1865803))

(declare-fun m!2290501 () Bool)

(assert (=> b!1865801 m!2290501))

(declare-fun m!2290503 () Bool)

(assert (=> b!1865803 m!2290503))

(assert (=> b!1865741 d!569616))

(declare-fun d!569618 () Bool)

(declare-fun c!303906 () Bool)

(assert (=> d!569618 (= c!303906 ((_ is Node!6872) (right!16991 t!4595)))))

(declare-fun e!1190948 () Bool)

(assert (=> d!569618 (= (inv!27353 (right!16991 t!4595)) e!1190948)))

(declare-fun b!1865804 () Bool)

(assert (=> b!1865804 (= e!1190948 (inv!27354 (right!16991 t!4595)))))

(declare-fun b!1865805 () Bool)

(declare-fun e!1190949 () Bool)

(assert (=> b!1865805 (= e!1190948 e!1190949)))

(declare-fun res!835492 () Bool)

(assert (=> b!1865805 (= res!835492 (not ((_ is Leaf!10076) (right!16991 t!4595))))))

(assert (=> b!1865805 (=> res!835492 e!1190949)))

(declare-fun b!1865806 () Bool)

(assert (=> b!1865806 (= e!1190949 (inv!27355 (right!16991 t!4595)))))

(assert (= (and d!569618 c!303906) b!1865804))

(assert (= (and d!569618 (not c!303906)) b!1865805))

(assert (= (and b!1865805 (not res!835492)) b!1865806))

(declare-fun m!2290505 () Bool)

(assert (=> b!1865804 m!2290505))

(declare-fun m!2290507 () Bool)

(assert (=> b!1865806 m!2290507))

(assert (=> b!1865741 d!569618))

(declare-fun b!1865817 () Bool)

(declare-fun e!1190954 () Bool)

(declare-fun tp_is_empty!8661 () Bool)

(declare-fun tp!531231 () Bool)

(assert (=> b!1865817 (= e!1190954 (and tp_is_empty!8661 tp!531231))))

(assert (=> b!1865742 (= tp!531226 e!1190954)))

(assert (= (and b!1865742 ((_ is Cons!20677) (innerList!6932 (xs!9754 t!4595)))) b!1865817))

(declare-fun b!1865829 () Bool)

(declare-fun e!1190961 () Bool)

(declare-fun tp!531240 () Bool)

(declare-fun tp!531238 () Bool)

(assert (=> b!1865829 (= e!1190961 (and (inv!27353 (left!16661 (left!16661 t!4595))) tp!531240 (inv!27353 (right!16991 (left!16661 t!4595))) tp!531238))))

(declare-fun b!1865831 () Bool)

(declare-fun e!1190962 () Bool)

(declare-fun tp!531239 () Bool)

(assert (=> b!1865831 (= e!1190962 tp!531239)))

(declare-fun b!1865830 () Bool)

(assert (=> b!1865830 (= e!1190961 (and (inv!27352 (xs!9754 (left!16661 t!4595))) e!1190962))))

(assert (=> b!1865741 (= tp!531227 (and (inv!27353 (left!16661 t!4595)) e!1190961))))

(assert (= (and b!1865741 ((_ is Node!6872) (left!16661 t!4595))) b!1865829))

(assert (= b!1865830 b!1865831))

(assert (= (and b!1865741 ((_ is Leaf!10076) (left!16661 t!4595))) b!1865830))

(declare-fun m!2290525 () Bool)

(assert (=> b!1865829 m!2290525))

(declare-fun m!2290527 () Bool)

(assert (=> b!1865829 m!2290527))

(declare-fun m!2290529 () Bool)

(assert (=> b!1865830 m!2290529))

(assert (=> b!1865741 m!2290445))

(declare-fun b!1865832 () Bool)

(declare-fun tp!531241 () Bool)

(declare-fun tp!531243 () Bool)

(declare-fun e!1190963 () Bool)

(assert (=> b!1865832 (= e!1190963 (and (inv!27353 (left!16661 (right!16991 t!4595))) tp!531243 (inv!27353 (right!16991 (right!16991 t!4595))) tp!531241))))

(declare-fun b!1865834 () Bool)

(declare-fun e!1190964 () Bool)

(declare-fun tp!531242 () Bool)

(assert (=> b!1865834 (= e!1190964 tp!531242)))

(declare-fun b!1865833 () Bool)

(assert (=> b!1865833 (= e!1190963 (and (inv!27352 (xs!9754 (right!16991 t!4595))) e!1190964))))

(assert (=> b!1865741 (= tp!531228 (and (inv!27353 (right!16991 t!4595)) e!1190963))))

(assert (= (and b!1865741 ((_ is Node!6872) (right!16991 t!4595))) b!1865832))

(assert (= b!1865833 b!1865834))

(assert (= (and b!1865741 ((_ is Leaf!10076) (right!16991 t!4595))) b!1865833))

(declare-fun m!2290533 () Bool)

(assert (=> b!1865832 m!2290533))

(declare-fun m!2290535 () Bool)

(assert (=> b!1865832 m!2290535))

(declare-fun m!2290537 () Bool)

(assert (=> b!1865833 m!2290537))

(assert (=> b!1865741 m!2290447))

(check-sat (not b!1865794) (not d!569604) (not b!1865752) (not b!1865829) (not b!1865798) (not b!1865796) (not b!1865803) tp_is_empty!8661 (not b!1865832) (not b!1865804) (not b!1865806) (not b!1865833) (not b!1865831) (not b!1865800) (not b!1865795) (not b!1865792) (not b!1865797) (not b!1865834) (not b!1865830) (not b!1865750) (not b!1865741) (not d!569596) (not b!1865801) (not b!1865817) (not b!1865793))
(check-sat)
