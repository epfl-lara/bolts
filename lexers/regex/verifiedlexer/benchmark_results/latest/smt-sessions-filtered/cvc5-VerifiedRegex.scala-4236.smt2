; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228740 () Bool)

(assert start!228740)

(declare-fun b!2317770 () Bool)

(declare-fun e!1485831 () Bool)

(declare-fun tp!735981 () Bool)

(assert (=> b!2317770 (= e!1485831 tp!735981)))

(declare-datatypes ((T!43780 0))(
  ( (T!43781 (val!7961 Int)) )
))
(declare-datatypes ((List!27747 0))(
  ( (Nil!27649) (Cons!27649 (h!33050 T!43780) (t!207375 List!27747)) )
))
(declare-datatypes ((IArray!18113 0))(
  ( (IArray!18114 (innerList!9114 List!27747)) )
))
(declare-datatypes ((Conc!9054 0))(
  ( (Node!9054 (left!20978 Conc!9054) (right!21308 Conc!9054) (csize!18338 Int) (cheight!9265 Int)) (Leaf!13291 (xs!12006 IArray!18113) (csize!18339 Int)) (Empty!9054) )
))
(declare-fun acc!252 () Conc!9054)

(declare-fun tp!735982 () Bool)

(declare-fun tp!735983 () Bool)

(declare-fun e!1485832 () Bool)

(declare-fun b!2317771 () Bool)

(declare-fun inv!37546 (Conc!9054) Bool)

(assert (=> b!2317771 (= e!1485832 (and (inv!37546 (left!20978 acc!252)) tp!735982 (inv!37546 (right!21308 acc!252)) tp!735983))))

(declare-fun b!2317772 () Bool)

(declare-fun e!1485836 () Bool)

(declare-fun tp!735980 () Bool)

(assert (=> b!2317772 (= e!1485836 tp!735980)))

(declare-fun b!2317773 () Bool)

(declare-fun e!1485833 () Bool)

(declare-fun lt!859572 () Conc!9054)

(declare-fun isBalanced!2748 (Conc!9054) Bool)

(assert (=> b!2317773 (= e!1485833 (isBalanced!2748 lt!859572))))

(declare-fun res!990263 () Bool)

(declare-fun e!1485835 () Bool)

(assert (=> start!228740 (=> (not res!990263) (not e!1485835))))

(assert (=> start!228740 (= res!990263 (isBalanced!2748 acc!252))))

(assert (=> start!228740 e!1485835))

(assert (=> start!228740 (and (inv!37546 acc!252) e!1485832)))

(declare-fun arr!18 () IArray!18113)

(declare-fun inv!37547 (IArray!18113) Bool)

(assert (=> start!228740 (and (inv!37547 arr!18) e!1485831)))

(declare-fun b!2317774 () Bool)

(declare-fun e!1485830 () Bool)

(assert (=> b!2317774 (= e!1485830 (not e!1485833))))

(declare-fun res!990264 () Bool)

(assert (=> b!2317774 (=> res!990264 e!1485833)))

(declare-fun lt!859574 () List!27747)

(declare-fun lt!859567 () List!27747)

(assert (=> b!2317774 (= res!990264 (not (= lt!859574 lt!859567)))))

(declare-fun lt!859565 () List!27747)

(assert (=> b!2317774 (= lt!859565 lt!859574)))

(declare-fun lt!859573 () List!27747)

(declare-fun lt!859569 () List!27747)

(declare-fun lt!859570 () List!27747)

(declare-fun ++!6801 (List!27747 List!27747) List!27747)

(assert (=> b!2317774 (= lt!859574 (++!6801 lt!859570 (++!6801 lt!859569 lt!859573)))))

(declare-datatypes ((Unit!40504 0))(
  ( (Unit!40505) )
))
(declare-fun lt!859564 () Unit!40504)

(declare-fun lemmaConcatAssociativity!1450 (List!27747 List!27747 List!27747) Unit!40504)

(assert (=> b!2317774 (= lt!859564 (lemmaConcatAssociativity!1450 lt!859570 lt!859569 lt!859573))))

(declare-fun b!2317775 () Bool)

(declare-fun e!1485834 () Bool)

(assert (=> b!2317775 (= e!1485834 e!1485830)))

(declare-fun res!990262 () Bool)

(assert (=> b!2317775 (=> (not res!990262) (not e!1485830))))

(assert (=> b!2317775 (= res!990262 (= lt!859565 lt!859567))))

(declare-fun list!10978 (Conc!9054) List!27747)

(assert (=> b!2317775 (= lt!859567 (list!10978 lt!859572))))

(assert (=> b!2317775 (= lt!859565 (++!6801 (++!6801 lt!859570 lt!859569) lt!859573))))

(declare-fun lt!859571 () IArray!18113)

(declare-fun list!10979 (IArray!18113) List!27747)

(assert (=> b!2317775 (= lt!859573 (list!10979 lt!859571))))

(declare-fun lt!859568 () Conc!9054)

(assert (=> b!2317775 (= lt!859569 (list!10978 lt!859568))))

(assert (=> b!2317775 (= lt!859570 (list!10978 acc!252))))

(declare-fun fromArray!26 (IArray!18113 Conc!9054) Conc!9054)

(declare-fun ++!6802 (Conc!9054 Conc!9054) Conc!9054)

(assert (=> b!2317775 (= lt!859572 (fromArray!26 lt!859571 (++!6802 acc!252 lt!859568)))))

(declare-fun lt!859566 () Int)

(declare-fun slice!680 (IArray!18113 Int Int) IArray!18113)

(assert (=> b!2317775 (= lt!859571 (slice!680 arr!18 512 lt!859566))))

(assert (=> b!2317775 (= lt!859568 (Leaf!13291 (slice!680 arr!18 0 512) 512))))

(declare-fun b!2317776 () Bool)

(assert (=> b!2317776 (= e!1485832 (and (inv!37547 (xs!12006 acc!252)) e!1485836))))

(declare-fun b!2317777 () Bool)

(assert (=> b!2317777 (= e!1485835 e!1485834)))

(declare-fun res!990261 () Bool)

(assert (=> b!2317777 (=> (not res!990261) (not e!1485834))))

(assert (=> b!2317777 (= res!990261 (> lt!859566 512))))

(declare-fun size!21885 (IArray!18113) Int)

(assert (=> b!2317777 (= lt!859566 (size!21885 arr!18))))

(assert (= (and start!228740 res!990263) b!2317777))

(assert (= (and b!2317777 res!990261) b!2317775))

(assert (= (and b!2317775 res!990262) b!2317774))

(assert (= (and b!2317774 (not res!990264)) b!2317773))

(assert (= (and start!228740 (is-Node!9054 acc!252)) b!2317771))

(assert (= b!2317776 b!2317772))

(assert (= (and start!228740 (is-Leaf!13291 acc!252)) b!2317776))

(assert (= start!228740 b!2317770))

(declare-fun m!2745431 () Bool)

(assert (=> b!2317775 m!2745431))

(declare-fun m!2745433 () Bool)

(assert (=> b!2317775 m!2745433))

(declare-fun m!2745435 () Bool)

(assert (=> b!2317775 m!2745435))

(declare-fun m!2745437 () Bool)

(assert (=> b!2317775 m!2745437))

(assert (=> b!2317775 m!2745437))

(declare-fun m!2745439 () Bool)

(assert (=> b!2317775 m!2745439))

(declare-fun m!2745441 () Bool)

(assert (=> b!2317775 m!2745441))

(declare-fun m!2745443 () Bool)

(assert (=> b!2317775 m!2745443))

(declare-fun m!2745445 () Bool)

(assert (=> b!2317775 m!2745445))

(declare-fun m!2745447 () Bool)

(assert (=> b!2317775 m!2745447))

(assert (=> b!2317775 m!2745445))

(declare-fun m!2745449 () Bool)

(assert (=> b!2317775 m!2745449))

(declare-fun m!2745451 () Bool)

(assert (=> b!2317773 m!2745451))

(declare-fun m!2745453 () Bool)

(assert (=> b!2317777 m!2745453))

(declare-fun m!2745455 () Bool)

(assert (=> b!2317776 m!2745455))

(declare-fun m!2745457 () Bool)

(assert (=> start!228740 m!2745457))

(declare-fun m!2745459 () Bool)

(assert (=> start!228740 m!2745459))

(declare-fun m!2745461 () Bool)

(assert (=> start!228740 m!2745461))

(declare-fun m!2745463 () Bool)

(assert (=> b!2317774 m!2745463))

(assert (=> b!2317774 m!2745463))

(declare-fun m!2745465 () Bool)

(assert (=> b!2317774 m!2745465))

(declare-fun m!2745467 () Bool)

(assert (=> b!2317774 m!2745467))

(declare-fun m!2745469 () Bool)

(assert (=> b!2317771 m!2745469))

(declare-fun m!2745471 () Bool)

(assert (=> b!2317771 m!2745471))

(push 1)

(assert (not b!2317773))

(assert (not b!2317777))

(assert (not start!228740))

(assert (not b!2317770))

(assert (not b!2317776))

(assert (not b!2317774))

(assert (not b!2317771))

(assert (not b!2317775))

(assert (not b!2317772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2317814 () Bool)

(declare-fun e!1485863 () Bool)

(declare-fun e!1485862 () Bool)

(assert (=> b!2317814 (= e!1485863 e!1485862)))

(declare-fun res!990292 () Bool)

(assert (=> b!2317814 (=> (not res!990292) (not e!1485862))))

(declare-fun height!1317 (Conc!9054) Int)

(assert (=> b!2317814 (= res!990292 (<= (- 1) (- (height!1317 (left!20978 acc!252)) (height!1317 (right!21308 acc!252)))))))

(declare-fun b!2317815 () Bool)

(declare-fun res!990291 () Bool)

(assert (=> b!2317815 (=> (not res!990291) (not e!1485862))))

(assert (=> b!2317815 (= res!990291 (isBalanced!2748 (left!20978 acc!252)))))

(declare-fun b!2317816 () Bool)

(declare-fun isEmpty!15771 (Conc!9054) Bool)

(assert (=> b!2317816 (= e!1485862 (not (isEmpty!15771 (right!21308 acc!252))))))

(declare-fun b!2317817 () Bool)

(declare-fun res!990294 () Bool)

(assert (=> b!2317817 (=> (not res!990294) (not e!1485862))))

(assert (=> b!2317817 (= res!990294 (<= (- (height!1317 (left!20978 acc!252)) (height!1317 (right!21308 acc!252))) 1))))

(declare-fun b!2317818 () Bool)

(declare-fun res!990289 () Bool)

(assert (=> b!2317818 (=> (not res!990289) (not e!1485862))))

(assert (=> b!2317818 (= res!990289 (not (isEmpty!15771 (left!20978 acc!252))))))

(declare-fun d!685117 () Bool)

(declare-fun res!990290 () Bool)

(assert (=> d!685117 (=> res!990290 e!1485863)))

(assert (=> d!685117 (= res!990290 (not (is-Node!9054 acc!252)))))

(assert (=> d!685117 (= (isBalanced!2748 acc!252) e!1485863)))

(declare-fun b!2317819 () Bool)

(declare-fun res!990293 () Bool)

(assert (=> b!2317819 (=> (not res!990293) (not e!1485862))))

(assert (=> b!2317819 (= res!990293 (isBalanced!2748 (right!21308 acc!252)))))

(assert (= (and d!685117 (not res!990290)) b!2317814))

(assert (= (and b!2317814 res!990292) b!2317817))

(assert (= (and b!2317817 res!990294) b!2317815))

(assert (= (and b!2317815 res!990291) b!2317819))

(assert (= (and b!2317819 res!990293) b!2317818))

(assert (= (and b!2317818 res!990289) b!2317816))

(declare-fun m!2745515 () Bool)

(assert (=> b!2317818 m!2745515))

(declare-fun m!2745517 () Bool)

(assert (=> b!2317819 m!2745517))

(declare-fun m!2745519 () Bool)

(assert (=> b!2317814 m!2745519))

(declare-fun m!2745521 () Bool)

(assert (=> b!2317814 m!2745521))

(assert (=> b!2317817 m!2745519))

(assert (=> b!2317817 m!2745521))

(declare-fun m!2745523 () Bool)

(assert (=> b!2317815 m!2745523))

(declare-fun m!2745525 () Bool)

(assert (=> b!2317816 m!2745525))

(assert (=> start!228740 d!685117))

(declare-fun d!685121 () Bool)

(declare-fun c!367431 () Bool)

(assert (=> d!685121 (= c!367431 (is-Node!9054 acc!252))))

(declare-fun e!1485874 () Bool)

(assert (=> d!685121 (= (inv!37546 acc!252) e!1485874)))

(declare-fun b!2317838 () Bool)

(declare-fun inv!37550 (Conc!9054) Bool)

(assert (=> b!2317838 (= e!1485874 (inv!37550 acc!252))))

(declare-fun b!2317839 () Bool)

(declare-fun e!1485875 () Bool)

(assert (=> b!2317839 (= e!1485874 e!1485875)))

(declare-fun res!990303 () Bool)

(assert (=> b!2317839 (= res!990303 (not (is-Leaf!13291 acc!252)))))

(assert (=> b!2317839 (=> res!990303 e!1485875)))

(declare-fun b!2317840 () Bool)

(declare-fun inv!37551 (Conc!9054) Bool)

(assert (=> b!2317840 (= e!1485875 (inv!37551 acc!252))))

(assert (= (and d!685121 c!367431) b!2317838))

(assert (= (and d!685121 (not c!367431)) b!2317839))

(assert (= (and b!2317839 (not res!990303)) b!2317840))

(declare-fun m!2745537 () Bool)

(assert (=> b!2317838 m!2745537))

(declare-fun m!2745541 () Bool)

(assert (=> b!2317840 m!2745541))

(assert (=> start!228740 d!685121))

(declare-fun d!685123 () Bool)

(declare-fun size!21887 (List!27747) Int)

(assert (=> d!685123 (= (inv!37547 arr!18) (<= (size!21887 (innerList!9114 arr!18)) 2147483647))))

(declare-fun bs!458892 () Bool)

(assert (= bs!458892 d!685123))

(declare-fun m!2745559 () Bool)

(assert (=> bs!458892 m!2745559))

(assert (=> start!228740 d!685123))

(declare-fun d!685129 () Bool)

(declare-fun c!367433 () Bool)

(assert (=> d!685129 (= c!367433 (is-Node!9054 (left!20978 acc!252)))))

(declare-fun e!1485878 () Bool)

(assert (=> d!685129 (= (inv!37546 (left!20978 acc!252)) e!1485878)))

(declare-fun b!2317845 () Bool)

(assert (=> b!2317845 (= e!1485878 (inv!37550 (left!20978 acc!252)))))

(declare-fun b!2317846 () Bool)

(declare-fun e!1485879 () Bool)

(assert (=> b!2317846 (= e!1485878 e!1485879)))

(declare-fun res!990306 () Bool)

(assert (=> b!2317846 (= res!990306 (not (is-Leaf!13291 (left!20978 acc!252))))))

(assert (=> b!2317846 (=> res!990306 e!1485879)))

(declare-fun b!2317847 () Bool)

(assert (=> b!2317847 (= e!1485879 (inv!37551 (left!20978 acc!252)))))

(assert (= (and d!685129 c!367433) b!2317845))

(assert (= (and d!685129 (not c!367433)) b!2317846))

(assert (= (and b!2317846 (not res!990306)) b!2317847))

(declare-fun m!2745561 () Bool)

(assert (=> b!2317845 m!2745561))

(declare-fun m!2745563 () Bool)

(assert (=> b!2317847 m!2745563))

(assert (=> b!2317771 d!685129))

(declare-fun d!685131 () Bool)

(declare-fun c!367434 () Bool)

(assert (=> d!685131 (= c!367434 (is-Node!9054 (right!21308 acc!252)))))

(declare-fun e!1485880 () Bool)

(assert (=> d!685131 (= (inv!37546 (right!21308 acc!252)) e!1485880)))

(declare-fun b!2317848 () Bool)

(assert (=> b!2317848 (= e!1485880 (inv!37550 (right!21308 acc!252)))))

(declare-fun b!2317849 () Bool)

(declare-fun e!1485881 () Bool)

(assert (=> b!2317849 (= e!1485880 e!1485881)))

(declare-fun res!990307 () Bool)

(assert (=> b!2317849 (= res!990307 (not (is-Leaf!13291 (right!21308 acc!252))))))

(assert (=> b!2317849 (=> res!990307 e!1485881)))

(declare-fun b!2317850 () Bool)

(assert (=> b!2317850 (= e!1485881 (inv!37551 (right!21308 acc!252)))))

(assert (= (and d!685131 c!367434) b!2317848))

(assert (= (and d!685131 (not c!367434)) b!2317849))

(assert (= (and b!2317849 (not res!990307)) b!2317850))

(declare-fun m!2745565 () Bool)

(assert (=> b!2317848 m!2745565))

(declare-fun m!2745567 () Bool)

(assert (=> b!2317850 m!2745567))

(assert (=> b!2317771 d!685131))

(declare-fun d!685133 () Bool)

(assert (=> d!685133 (= (inv!37547 (xs!12006 acc!252)) (<= (size!21887 (innerList!9114 (xs!12006 acc!252))) 2147483647))))

(declare-fun bs!458893 () Bool)

(assert (= bs!458893 d!685133))

(declare-fun m!2745569 () Bool)

(assert (=> bs!458893 m!2745569))

(assert (=> b!2317776 d!685133))

(declare-fun b!2317861 () Bool)

(declare-fun res!990313 () Bool)

(declare-fun e!1485886 () Bool)

(assert (=> b!2317861 (=> (not res!990313) (not e!1485886))))

(declare-fun lt!859617 () List!27747)

(assert (=> b!2317861 (= res!990313 (= (size!21887 lt!859617) (+ (size!21887 lt!859570) (size!21887 (++!6801 lt!859569 lt!859573)))))))

(declare-fun b!2317862 () Bool)

(assert (=> b!2317862 (= e!1485886 (or (not (= (++!6801 lt!859569 lt!859573) Nil!27649)) (= lt!859617 lt!859570)))))

(declare-fun e!1485887 () List!27747)

(declare-fun b!2317860 () Bool)

(assert (=> b!2317860 (= e!1485887 (Cons!27649 (h!33050 lt!859570) (++!6801 (t!207375 lt!859570) (++!6801 lt!859569 lt!859573))))))

(declare-fun d!685135 () Bool)

(assert (=> d!685135 e!1485886))

(declare-fun res!990312 () Bool)

(assert (=> d!685135 (=> (not res!990312) (not e!1485886))))

(declare-fun content!3733 (List!27747) (Set T!43780))

(assert (=> d!685135 (= res!990312 (= (content!3733 lt!859617) (set.union (content!3733 lt!859570) (content!3733 (++!6801 lt!859569 lt!859573)))))))

(assert (=> d!685135 (= lt!859617 e!1485887)))

(declare-fun c!367437 () Bool)

(assert (=> d!685135 (= c!367437 (is-Nil!27649 lt!859570))))

(assert (=> d!685135 (= (++!6801 lt!859570 (++!6801 lt!859569 lt!859573)) lt!859617)))

(declare-fun b!2317859 () Bool)

(assert (=> b!2317859 (= e!1485887 (++!6801 lt!859569 lt!859573))))

(assert (= (and d!685135 c!367437) b!2317859))

(assert (= (and d!685135 (not c!367437)) b!2317860))

(assert (= (and d!685135 res!990312) b!2317861))

(assert (= (and b!2317861 res!990313) b!2317862))

(declare-fun m!2745575 () Bool)

(assert (=> b!2317861 m!2745575))

(declare-fun m!2745577 () Bool)

(assert (=> b!2317861 m!2745577))

(assert (=> b!2317861 m!2745463))

(declare-fun m!2745579 () Bool)

(assert (=> b!2317861 m!2745579))

(assert (=> b!2317860 m!2745463))

(declare-fun m!2745581 () Bool)

(assert (=> b!2317860 m!2745581))

(declare-fun m!2745583 () Bool)

(assert (=> d!685135 m!2745583))

(declare-fun m!2745585 () Bool)

(assert (=> d!685135 m!2745585))

(assert (=> d!685135 m!2745463))

(declare-fun m!2745587 () Bool)

(assert (=> d!685135 m!2745587))

(assert (=> b!2317774 d!685135))

(declare-fun b!2317865 () Bool)

(declare-fun res!990315 () Bool)

(declare-fun e!1485888 () Bool)

(assert (=> b!2317865 (=> (not res!990315) (not e!1485888))))

(declare-fun lt!859618 () List!27747)

(assert (=> b!2317865 (= res!990315 (= (size!21887 lt!859618) (+ (size!21887 lt!859569) (size!21887 lt!859573))))))

(declare-fun b!2317866 () Bool)

(assert (=> b!2317866 (= e!1485888 (or (not (= lt!859573 Nil!27649)) (= lt!859618 lt!859569)))))

(declare-fun b!2317864 () Bool)

(declare-fun e!1485889 () List!27747)

(assert (=> b!2317864 (= e!1485889 (Cons!27649 (h!33050 lt!859569) (++!6801 (t!207375 lt!859569) lt!859573)))))

(declare-fun d!685141 () Bool)

(assert (=> d!685141 e!1485888))

(declare-fun res!990314 () Bool)

(assert (=> d!685141 (=> (not res!990314) (not e!1485888))))

(assert (=> d!685141 (= res!990314 (= (content!3733 lt!859618) (set.union (content!3733 lt!859569) (content!3733 lt!859573))))))

(assert (=> d!685141 (= lt!859618 e!1485889)))

(declare-fun c!367438 () Bool)

(assert (=> d!685141 (= c!367438 (is-Nil!27649 lt!859569))))

(assert (=> d!685141 (= (++!6801 lt!859569 lt!859573) lt!859618)))

(declare-fun b!2317863 () Bool)

(assert (=> b!2317863 (= e!1485889 lt!859573)))

(assert (= (and d!685141 c!367438) b!2317863))

(assert (= (and d!685141 (not c!367438)) b!2317864))

(assert (= (and d!685141 res!990314) b!2317865))

(assert (= (and b!2317865 res!990315) b!2317866))

(declare-fun m!2745589 () Bool)

(assert (=> b!2317865 m!2745589))

(declare-fun m!2745591 () Bool)

(assert (=> b!2317865 m!2745591))

(declare-fun m!2745593 () Bool)

(assert (=> b!2317865 m!2745593))

(declare-fun m!2745595 () Bool)

(assert (=> b!2317864 m!2745595))

(declare-fun m!2745597 () Bool)

(assert (=> d!685141 m!2745597))

(declare-fun m!2745599 () Bool)

(assert (=> d!685141 m!2745599))

(declare-fun m!2745601 () Bool)

(assert (=> d!685141 m!2745601))

(assert (=> b!2317774 d!685141))

(declare-fun d!685143 () Bool)

(assert (=> d!685143 (= (++!6801 (++!6801 lt!859570 lt!859569) lt!859573) (++!6801 lt!859570 (++!6801 lt!859569 lt!859573)))))

(declare-fun lt!859621 () Unit!40504)

(declare-fun choose!13571 (List!27747 List!27747 List!27747) Unit!40504)

(assert (=> d!685143 (= lt!859621 (choose!13571 lt!859570 lt!859569 lt!859573))))

(assert (=> d!685143 (= (lemmaConcatAssociativity!1450 lt!859570 lt!859569 lt!859573) lt!859621)))

(declare-fun bs!458896 () Bool)

(assert (= bs!458896 d!685143))

(declare-fun m!2745603 () Bool)

(assert (=> bs!458896 m!2745603))

(assert (=> bs!458896 m!2745437))

(assert (=> bs!458896 m!2745463))

(assert (=> bs!458896 m!2745465))

(assert (=> bs!458896 m!2745437))

(assert (=> bs!458896 m!2745439))

(assert (=> bs!458896 m!2745463))

(assert (=> b!2317774 d!685143))

(declare-fun d!685145 () Bool)

(declare-fun lt!859624 () IArray!18113)

(declare-fun slice!682 (List!27747 Int Int) List!27747)

(assert (=> d!685145 (= lt!859624 (IArray!18114 (slice!682 (list!10979 arr!18) 512 lt!859566)))))

(declare-fun choose!13572 (IArray!18113 Int Int) IArray!18113)

(assert (=> d!685145 (= lt!859624 (choose!13572 arr!18 512 lt!859566))))

(declare-fun e!1485904 () Bool)

(assert (=> d!685145 e!1485904))

(declare-fun res!990339 () Bool)

(assert (=> d!685145 (=> (not res!990339) (not e!1485904))))

(assert (=> d!685145 (= res!990339 (and (<= 0 512) (<= 512 lt!859566)))))

(assert (=> d!685145 (= (slice!680 arr!18 512 lt!859566) lt!859624)))

(declare-fun b!2317896 () Bool)

(assert (=> b!2317896 (= e!1485904 (<= lt!859566 (size!21885 arr!18)))))

(assert (= (and d!685145 res!990339) b!2317896))

(declare-fun m!2745623 () Bool)

(assert (=> d!685145 m!2745623))

(assert (=> d!685145 m!2745623))

(declare-fun m!2745625 () Bool)

(assert (=> d!685145 m!2745625))

(declare-fun m!2745627 () Bool)

(assert (=> d!685145 m!2745627))

(assert (=> b!2317896 m!2745453))

(assert (=> b!2317775 d!685145))

(declare-fun b!2317899 () Bool)

(declare-fun res!990341 () Bool)

(declare-fun e!1485905 () Bool)

(assert (=> b!2317899 (=> (not res!990341) (not e!1485905))))

(declare-fun lt!859627 () List!27747)

(assert (=> b!2317899 (= res!990341 (= (size!21887 lt!859627) (+ (size!21887 lt!859570) (size!21887 lt!859569))))))

(declare-fun b!2317900 () Bool)

(assert (=> b!2317900 (= e!1485905 (or (not (= lt!859569 Nil!27649)) (= lt!859627 lt!859570)))))

(declare-fun b!2317898 () Bool)

(declare-fun e!1485906 () List!27747)

(assert (=> b!2317898 (= e!1485906 (Cons!27649 (h!33050 lt!859570) (++!6801 (t!207375 lt!859570) lt!859569)))))

(declare-fun d!685153 () Bool)

(assert (=> d!685153 e!1485905))

(declare-fun res!990340 () Bool)

(assert (=> d!685153 (=> (not res!990340) (not e!1485905))))

(assert (=> d!685153 (= res!990340 (= (content!3733 lt!859627) (set.union (content!3733 lt!859570) (content!3733 lt!859569))))))

(assert (=> d!685153 (= lt!859627 e!1485906)))

(declare-fun c!367442 () Bool)

(assert (=> d!685153 (= c!367442 (is-Nil!27649 lt!859570))))

(assert (=> d!685153 (= (++!6801 lt!859570 lt!859569) lt!859627)))

(declare-fun b!2317897 () Bool)

(assert (=> b!2317897 (= e!1485906 lt!859569)))

(assert (= (and d!685153 c!367442) b!2317897))

(assert (= (and d!685153 (not c!367442)) b!2317898))

(assert (= (and d!685153 res!990340) b!2317899))

(assert (= (and b!2317899 res!990341) b!2317900))

(declare-fun m!2745629 () Bool)

(assert (=> b!2317899 m!2745629))

(assert (=> b!2317899 m!2745577))

(assert (=> b!2317899 m!2745591))

(declare-fun m!2745631 () Bool)

(assert (=> b!2317898 m!2745631))

(declare-fun m!2745633 () Bool)

(assert (=> d!685153 m!2745633))

(assert (=> d!685153 m!2745585))

(assert (=> d!685153 m!2745599))

(assert (=> b!2317775 d!685153))

(declare-fun d!685155 () Bool)

(assert (=> d!685155 (= (list!10979 lt!859571) (innerList!9114 lt!859571))))

(assert (=> b!2317775 d!685155))

(declare-fun b!2317923 () Bool)

(declare-fun e!1485918 () List!27747)

(assert (=> b!2317923 (= e!1485918 (list!10979 (xs!12006 acc!252)))))

(declare-fun b!2317924 () Bool)

(assert (=> b!2317924 (= e!1485918 (++!6801 (list!10978 (left!20978 acc!252)) (list!10978 (right!21308 acc!252))))))

(declare-fun b!2317922 () Bool)

(declare-fun e!1485917 () List!27747)

(assert (=> b!2317922 (= e!1485917 e!1485918)))

(declare-fun c!367450 () Bool)

(assert (=> b!2317922 (= c!367450 (is-Leaf!13291 acc!252))))

(declare-fun d!685159 () Bool)

(declare-fun c!367449 () Bool)

(assert (=> d!685159 (= c!367449 (is-Empty!9054 acc!252))))

(assert (=> d!685159 (= (list!10978 acc!252) e!1485917)))

(declare-fun b!2317921 () Bool)

(assert (=> b!2317921 (= e!1485917 Nil!27649)))

(assert (= (and d!685159 c!367449) b!2317921))

(assert (= (and d!685159 (not c!367449)) b!2317922))

(assert (= (and b!2317922 c!367450) b!2317923))

(assert (= (and b!2317922 (not c!367450)) b!2317924))

(declare-fun m!2745661 () Bool)

(assert (=> b!2317923 m!2745661))

(declare-fun m!2745663 () Bool)

(assert (=> b!2317924 m!2745663))

(declare-fun m!2745665 () Bool)

(assert (=> b!2317924 m!2745665))

(assert (=> b!2317924 m!2745663))

(assert (=> b!2317924 m!2745665))

(declare-fun m!2745667 () Bool)

(assert (=> b!2317924 m!2745667))

(assert (=> b!2317775 d!685159))

(declare-fun b!2317935 () Bool)

(declare-fun e!1485924 () List!27747)

(assert (=> b!2317935 (= e!1485924 (list!10979 (xs!12006 lt!859572)))))

(declare-fun b!2317936 () Bool)

(assert (=> b!2317936 (= e!1485924 (++!6801 (list!10978 (left!20978 lt!859572)) (list!10978 (right!21308 lt!859572))))))

(declare-fun b!2317934 () Bool)

(declare-fun e!1485923 () List!27747)

(assert (=> b!2317934 (= e!1485923 e!1485924)))

(declare-fun c!367456 () Bool)

(assert (=> b!2317934 (= c!367456 (is-Leaf!13291 lt!859572))))

(declare-fun d!685167 () Bool)

(declare-fun c!367455 () Bool)

(assert (=> d!685167 (= c!367455 (is-Empty!9054 lt!859572))))

(assert (=> d!685167 (= (list!10978 lt!859572) e!1485923)))

(declare-fun b!2317933 () Bool)

(assert (=> b!2317933 (= e!1485923 Nil!27649)))

(assert (= (and d!685167 c!367455) b!2317933))

(assert (= (and d!685167 (not c!367455)) b!2317934))

(assert (= (and b!2317934 c!367456) b!2317935))

(assert (= (and b!2317934 (not c!367456)) b!2317936))

(declare-fun m!2745669 () Bool)

(assert (=> b!2317935 m!2745669))

(declare-fun m!2745671 () Bool)

(assert (=> b!2317936 m!2745671))

(declare-fun m!2745673 () Bool)

(assert (=> b!2317936 m!2745673))

(assert (=> b!2317936 m!2745671))

(assert (=> b!2317936 m!2745673))

(declare-fun m!2745675 () Bool)

(assert (=> b!2317936 m!2745675))

(assert (=> b!2317775 d!685167))

(declare-fun b!2317951 () Bool)

(declare-fun e!1485935 () Conc!9054)

(declare-fun call!137986 () Conc!9054)

(declare-fun call!137985 () Int)

(assert (=> b!2317951 (= e!1485935 (fromArray!26 (slice!680 lt!859571 512 call!137985) call!137986))))

(declare-fun lt!859655 () Conc!9054)

(assert (=> b!2317951 (= lt!859655 (Leaf!13291 (slice!680 lt!859571 0 512) 512))))

(declare-fun lt!859663 () Conc!9054)

(assert (=> b!2317951 (= lt!859663 (fromArray!26 (slice!680 lt!859571 512 call!137985) call!137986))))

(declare-fun lt!859653 () List!27747)

(assert (=> b!2317951 (= lt!859653 (list!10978 (++!6802 acc!252 lt!859568)))))

(declare-fun lt!859658 () List!27747)

(assert (=> b!2317951 (= lt!859658 (list!10978 lt!859655))))

(declare-fun lt!859656 () List!27747)

(assert (=> b!2317951 (= lt!859656 (list!10979 (slice!680 lt!859571 512 call!137985)))))

(declare-fun lt!859660 () Unit!40504)

(assert (=> b!2317951 (= lt!859660 (lemmaConcatAssociativity!1450 lt!859653 lt!859658 lt!859656))))

(assert (=> b!2317951 (= (++!6801 (++!6801 lt!859653 lt!859658) lt!859656) (++!6801 lt!859653 (++!6801 lt!859658 lt!859656)))))

(declare-fun lt!859659 () Unit!40504)

(assert (=> b!2317951 (= lt!859659 lt!859660)))

(declare-fun lt!859657 () List!27747)

(assert (=> b!2317951 (= lt!859657 (list!10979 lt!859571))))

(declare-fun lt!859654 () Int)

(assert (=> b!2317951 (= lt!859654 512)))

(declare-fun lt!859664 () Unit!40504)

(declare-fun sliceSplit!15 (List!27747 Int) Unit!40504)

(assert (=> b!2317951 (= lt!859664 (sliceSplit!15 lt!859657 lt!859654))))

(assert (=> b!2317951 (= (++!6801 (slice!682 lt!859657 0 lt!859654) (slice!682 lt!859657 lt!859654 (size!21887 lt!859657))) lt!859657)))

(declare-fun lt!859662 () Unit!40504)

(assert (=> b!2317951 (= lt!859662 lt!859664)))

(declare-fun bm!137980 () Bool)

(assert (=> bm!137980 (= call!137985 (size!21885 lt!859571))))

(declare-fun c!367463 () Bool)

(declare-fun bm!137981 () Bool)

(assert (=> bm!137981 (= call!137986 (++!6802 (++!6802 acc!252 lt!859568) (ite c!367463 (Leaf!13291 lt!859571 call!137985) lt!859655)))))

(declare-fun d!685169 () Bool)

(declare-fun e!1485933 () Bool)

(assert (=> d!685169 e!1485933))

(declare-fun res!990352 () Bool)

(assert (=> d!685169 (=> (not res!990352) (not e!1485933))))

(declare-fun lt!859661 () Conc!9054)

(assert (=> d!685169 (= res!990352 (isBalanced!2748 lt!859661))))

(assert (=> d!685169 (= lt!859661 e!1485935)))

(assert (=> d!685169 (= c!367463 (<= (size!21885 lt!859571) 512))))

(assert (=> d!685169 (isBalanced!2748 (++!6802 acc!252 lt!859568))))

(assert (=> d!685169 (= (fromArray!26 lt!859571 (++!6802 acc!252 lt!859568)) lt!859661)))

(declare-fun b!2317952 () Bool)

(assert (=> b!2317952 (= e!1485933 (= (list!10978 lt!859661) (++!6801 (list!10978 (++!6802 acc!252 lt!859568)) (list!10979 lt!859571))))))

(declare-fun b!2317953 () Bool)

(declare-fun e!1485934 () Conc!9054)

(assert (=> b!2317953 (= e!1485935 e!1485934)))

(declare-fun c!367464 () Bool)

(assert (=> b!2317953 (= c!367464 (= call!137985 0))))

(declare-fun b!2317954 () Bool)

(assert (=> b!2317954 (= e!1485934 call!137986)))

(declare-fun b!2317955 () Bool)

(assert (=> b!2317955 (= e!1485934 (++!6802 acc!252 lt!859568))))

(assert (= (and d!685169 c!367463) b!2317953))

(assert (= (and d!685169 (not c!367463)) b!2317951))

(assert (= (and b!2317953 c!367464) b!2317955))

(assert (= (and b!2317953 (not c!367464)) b!2317954))

(assert (= (or b!2317953 b!2317954 b!2317951) bm!137980))

(assert (= (or b!2317954 b!2317951) bm!137981))

(assert (= (and d!685169 res!990352) b!2317952))

(assert (=> bm!137981 m!2745445))

(declare-fun m!2745685 () Bool)

(assert (=> bm!137981 m!2745685))

(declare-fun m!2745687 () Bool)

(assert (=> d!685169 m!2745687))

(declare-fun m!2745689 () Bool)

(assert (=> d!685169 m!2745689))

(assert (=> d!685169 m!2745445))

(declare-fun m!2745691 () Bool)

(assert (=> d!685169 m!2745691))

(assert (=> bm!137980 m!2745689))

(declare-fun m!2745693 () Bool)

(assert (=> b!2317952 m!2745693))

(assert (=> b!2317952 m!2745445))

(declare-fun m!2745695 () Bool)

(assert (=> b!2317952 m!2745695))

(assert (=> b!2317952 m!2745441))

(assert (=> b!2317952 m!2745695))

(assert (=> b!2317952 m!2745441))

(declare-fun m!2745697 () Bool)

(assert (=> b!2317952 m!2745697))

(declare-fun m!2745699 () Bool)

(assert (=> b!2317951 m!2745699))

(declare-fun m!2745701 () Bool)

(assert (=> b!2317951 m!2745701))

(declare-fun m!2745703 () Bool)

(assert (=> b!2317951 m!2745703))

(declare-fun m!2745705 () Bool)

(assert (=> b!2317951 m!2745705))

(assert (=> b!2317951 m!2745441))

(declare-fun m!2745707 () Bool)

(assert (=> b!2317951 m!2745707))

(declare-fun m!2745709 () Bool)

(assert (=> b!2317951 m!2745709))

(declare-fun m!2745711 () Bool)

(assert (=> b!2317951 m!2745711))

(assert (=> b!2317951 m!2745709))

(assert (=> b!2317951 m!2745707))

(assert (=> b!2317951 m!2745711))

(declare-fun m!2745713 () Bool)

(assert (=> b!2317951 m!2745713))

(assert (=> b!2317951 m!2745703))

(declare-fun m!2745715 () Bool)

(assert (=> b!2317951 m!2745715))

(assert (=> b!2317951 m!2745699))

(declare-fun m!2745717 () Bool)

(assert (=> b!2317951 m!2745717))

(declare-fun m!2745719 () Bool)

(assert (=> b!2317951 m!2745719))

(assert (=> b!2317951 m!2745445))

(assert (=> b!2317951 m!2745695))

(declare-fun m!2745721 () Bool)

(assert (=> b!2317951 m!2745721))

(declare-fun m!2745723 () Bool)

(assert (=> b!2317951 m!2745723))

(declare-fun m!2745725 () Bool)

(assert (=> b!2317951 m!2745725))

(assert (=> b!2317951 m!2745723))

(assert (=> b!2317951 m!2745703))

(declare-fun m!2745727 () Bool)

(assert (=> b!2317951 m!2745727))

(assert (=> b!2317775 d!685169))

(declare-fun b!2317958 () Bool)

(declare-fun res!990354 () Bool)

(declare-fun e!1485936 () Bool)

(assert (=> b!2317958 (=> (not res!990354) (not e!1485936))))

(declare-fun lt!859665 () List!27747)

(assert (=> b!2317958 (= res!990354 (= (size!21887 lt!859665) (+ (size!21887 (++!6801 lt!859570 lt!859569)) (size!21887 lt!859573))))))

(declare-fun b!2317959 () Bool)

(assert (=> b!2317959 (= e!1485936 (or (not (= lt!859573 Nil!27649)) (= lt!859665 (++!6801 lt!859570 lt!859569))))))

(declare-fun e!1485937 () List!27747)

(declare-fun b!2317957 () Bool)

(assert (=> b!2317957 (= e!1485937 (Cons!27649 (h!33050 (++!6801 lt!859570 lt!859569)) (++!6801 (t!207375 (++!6801 lt!859570 lt!859569)) lt!859573)))))

(declare-fun d!685173 () Bool)

(assert (=> d!685173 e!1485936))

(declare-fun res!990353 () Bool)

(assert (=> d!685173 (=> (not res!990353) (not e!1485936))))

(assert (=> d!685173 (= res!990353 (= (content!3733 lt!859665) (set.union (content!3733 (++!6801 lt!859570 lt!859569)) (content!3733 lt!859573))))))

(assert (=> d!685173 (= lt!859665 e!1485937)))

(declare-fun c!367465 () Bool)

(assert (=> d!685173 (= c!367465 (is-Nil!27649 (++!6801 lt!859570 lt!859569)))))

(assert (=> d!685173 (= (++!6801 (++!6801 lt!859570 lt!859569) lt!859573) lt!859665)))

(declare-fun b!2317956 () Bool)

(assert (=> b!2317956 (= e!1485937 lt!859573)))

(assert (= (and d!685173 c!367465) b!2317956))

(assert (= (and d!685173 (not c!367465)) b!2317957))

(assert (= (and d!685173 res!990353) b!2317958))

(assert (= (and b!2317958 res!990354) b!2317959))

(declare-fun m!2745729 () Bool)

(assert (=> b!2317958 m!2745729))

(assert (=> b!2317958 m!2745437))

(declare-fun m!2745731 () Bool)

(assert (=> b!2317958 m!2745731))

(assert (=> b!2317958 m!2745593))

(declare-fun m!2745733 () Bool)

(assert (=> b!2317957 m!2745733))

(declare-fun m!2745735 () Bool)

(assert (=> d!685173 m!2745735))

(assert (=> d!685173 m!2745437))

(declare-fun m!2745737 () Bool)

(assert (=> d!685173 m!2745737))

(assert (=> d!685173 m!2745601))

(assert (=> b!2317775 d!685173))

(declare-fun d!685175 () Bool)

(declare-fun lt!859668 () IArray!18113)

(assert (=> d!685175 (= lt!859668 (IArray!18114 (slice!682 (list!10979 arr!18) 0 512)))))

(assert (=> d!685175 (= lt!859668 (choose!13572 arr!18 0 512))))

(declare-fun e!1485940 () Bool)

(assert (=> d!685175 e!1485940))

(declare-fun res!990357 () Bool)

(assert (=> d!685175 (=> (not res!990357) (not e!1485940))))

(assert (=> d!685175 (= res!990357 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!685175 (= (slice!680 arr!18 0 512) lt!859668)))

(declare-fun b!2317964 () Bool)

(assert (=> b!2317964 (= e!1485940 (<= 512 (size!21885 arr!18)))))

(assert (= (and d!685175 res!990357) b!2317964))

(assert (=> d!685175 m!2745623))

(assert (=> d!685175 m!2745623))

(declare-fun m!2745739 () Bool)

(assert (=> d!685175 m!2745739))

(declare-fun m!2745741 () Bool)

(assert (=> d!685175 m!2745741))

(assert (=> b!2317964 m!2745453))

(assert (=> b!2317775 d!685175))

(declare-fun b!2317973 () Bool)

(declare-fun e!1485946 () List!27747)

(assert (=> b!2317973 (= e!1485946 (list!10979 (xs!12006 lt!859568)))))

(declare-fun b!2317974 () Bool)

(assert (=> b!2317974 (= e!1485946 (++!6801 (list!10978 (left!20978 lt!859568)) (list!10978 (right!21308 lt!859568))))))

(declare-fun b!2317972 () Bool)

(declare-fun e!1485945 () List!27747)

(assert (=> b!2317972 (= e!1485945 e!1485946)))

(declare-fun c!367471 () Bool)

(assert (=> b!2317972 (= c!367471 (is-Leaf!13291 lt!859568))))

(declare-fun d!685177 () Bool)

(declare-fun c!367470 () Bool)

(assert (=> d!685177 (= c!367470 (is-Empty!9054 lt!859568))))

(assert (=> d!685177 (= (list!10978 lt!859568) e!1485945)))

(declare-fun b!2317971 () Bool)

(assert (=> b!2317971 (= e!1485945 Nil!27649)))

(assert (= (and d!685177 c!367470) b!2317971))

(assert (= (and d!685177 (not c!367470)) b!2317972))

(assert (= (and b!2317972 c!367471) b!2317973))

(assert (= (and b!2317972 (not c!367471)) b!2317974))

(declare-fun m!2745743 () Bool)

(assert (=> b!2317973 m!2745743))

(declare-fun m!2745745 () Bool)

(assert (=> b!2317974 m!2745745))

(declare-fun m!2745747 () Bool)

(assert (=> b!2317974 m!2745747))

(assert (=> b!2317974 m!2745745))

(assert (=> b!2317974 m!2745747))

(declare-fun m!2745749 () Bool)

(assert (=> b!2317974 m!2745749))

(assert (=> b!2317775 d!685177))

(declare-fun b!2318049 () Bool)

(declare-fun e!1485984 () Conc!9054)

(declare-fun call!138057 () Conc!9054)

(assert (=> b!2318049 (= e!1485984 call!138057)))

(declare-fun b!2318050 () Bool)

(declare-fun e!1485987 () Conc!9054)

(declare-fun call!138053 () Conc!9054)

(assert (=> b!2318050 (= e!1485987 call!138053)))

(declare-fun b!2318051 () Bool)

(declare-fun e!1485981 () Conc!9054)

(declare-fun call!138058 () Conc!9054)

(assert (=> b!2318051 (= e!1485981 call!138058)))

(declare-fun b!2318052 () Bool)

(assert (=> b!2318052 (= e!1485981 call!138058)))

(declare-fun bm!138046 () Bool)

(declare-fun call!138064 () Conc!9054)

(assert (=> bm!138046 (= call!138057 call!138064)))

(declare-fun c!367501 () Bool)

(declare-fun c!367504 () Bool)

(declare-fun bm!138047 () Bool)

(declare-fun call!138061 () Conc!9054)

(declare-fun c!367503 () Bool)

(assert (=> bm!138047 (= call!138061 (++!6802 (ite c!367504 (ite c!367503 (right!21308 acc!252) (right!21308 (right!21308 acc!252))) acc!252) (ite c!367504 lt!859568 (ite c!367501 (left!20978 lt!859568) (left!20978 (left!20978 lt!859568))))))))

(declare-fun b!2318053 () Bool)

(declare-fun e!1485988 () Conc!9054)

(declare-fun e!1485990 () Conc!9054)

(assert (=> b!2318053 (= e!1485988 e!1485990)))

(declare-fun c!367507 () Bool)

(assert (=> b!2318053 (= c!367507 (= lt!859568 Empty!9054))))

(declare-fun call!138052 () Int)

(declare-fun bm!138048 () Bool)

(assert (=> bm!138048 (= call!138052 (height!1317 (ite c!367504 (right!21308 acc!252) lt!859568)))))

(declare-fun c!367500 () Bool)

(declare-fun c!367502 () Bool)

(declare-fun bm!138049 () Bool)

(declare-fun lt!859686 () Conc!9054)

(declare-fun lt!859685 () Conc!9054)

(declare-fun c!367506 () Bool)

(declare-fun <>!207 (Conc!9054 Conc!9054) Conc!9054)

(assert (=> bm!138049 (= call!138053 (<>!207 (ite c!367500 acc!252 (ite c!367504 (ite c!367506 (left!20978 (right!21308 acc!252)) (left!20978 acc!252)) (ite c!367502 lt!859686 (right!21308 (left!20978 lt!859568))))) (ite c!367500 lt!859568 (ite c!367504 (ite c!367506 lt!859685 (left!20978 (right!21308 acc!252))) (ite c!367502 (right!21308 (left!20978 lt!859568)) (right!21308 lt!859568))))))))

(declare-fun bm!138050 () Bool)

(declare-fun call!138056 () Conc!9054)

(assert (=> bm!138050 (= call!138058 call!138056)))

(declare-fun bm!138051 () Bool)

(declare-fun call!138062 () Conc!9054)

(assert (=> bm!138051 (= call!138062 call!138053)))

(declare-fun b!2318054 () Bool)

(declare-fun call!138054 () Int)

(assert (=> b!2318054 (= c!367503 (>= call!138054 call!138052))))

(declare-fun e!1485982 () Conc!9054)

(declare-fun e!1485986 () Conc!9054)

(assert (=> b!2318054 (= e!1485982 e!1485986)))

(declare-fun b!2318055 () Bool)

(declare-fun e!1485985 () Bool)

(assert (=> b!2318055 (= e!1485985 (isBalanced!2748 lt!859568))))

(declare-fun b!2318056 () Bool)

(declare-fun res!990377 () Bool)

(declare-fun e!1485983 () Bool)

(assert (=> b!2318056 (=> (not res!990377) (not e!1485983))))

(declare-fun lt!859684 () Conc!9054)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2318056 (= res!990377 (<= (height!1317 lt!859684) (+ (max!0 (height!1317 acc!252) (height!1317 lt!859568)) 1)))))

(declare-fun b!2318057 () Bool)

(declare-fun call!138065 () Int)

(declare-fun call!138063 () Int)

(assert (=> b!2318057 (= c!367501 (>= call!138065 call!138063))))

(assert (=> b!2318057 (= e!1485982 e!1485984)))

(declare-fun call!138066 () Conc!9054)

(declare-fun call!138055 () Conc!9054)

(declare-fun call!138060 () Conc!9054)

(declare-fun call!138051 () Conc!9054)

(declare-fun bm!138052 () Bool)

(assert (=> bm!138052 (= call!138064 (<>!207 (ite c!367504 (ite (or c!367503 c!367506) (left!20978 acc!252) call!138066) (ite c!367501 call!138051 (ite c!367502 call!138060 lt!859686))) (ite c!367504 (ite c!367503 call!138055 (ite c!367506 call!138066 lt!859685)) (ite (or c!367501 c!367502) (right!21308 lt!859568) call!138060))))))

(declare-fun b!2318058 () Bool)

(declare-fun e!1485989 () Conc!9054)

(assert (=> b!2318058 (= e!1485984 e!1485989)))

(assert (=> b!2318058 (= lt!859686 call!138051)))

(assert (=> b!2318058 (= c!367502 (= call!138054 (- call!138052 3)))))

(declare-fun bm!138053 () Bool)

(assert (=> bm!138053 (= call!138051 call!138061)))

(declare-fun b!2318059 () Bool)

(declare-fun lt!859683 () Int)

(assert (=> b!2318059 (= c!367500 (and (<= (- 1) lt!859683) (<= lt!859683 1)))))

(assert (=> b!2318059 (= lt!859683 (- (height!1317 lt!859568) (height!1317 acc!252)))))

(assert (=> b!2318059 (= e!1485990 e!1485987)))

(declare-fun bm!138054 () Bool)

(assert (=> bm!138054 (= call!138060 call!138062)))

(declare-fun bm!138055 () Bool)

(assert (=> bm!138055 (= call!138065 (height!1317 (ite c!367504 acc!252 (right!21308 lt!859568))))))

(declare-fun b!2318060 () Bool)

(assert (=> b!2318060 (= e!1485987 e!1485982)))

(assert (=> b!2318060 (= c!367504 (< lt!859683 (- 1)))))

(declare-fun bm!138056 () Bool)

(assert (=> bm!138056 (= call!138066 call!138062)))

(declare-fun bm!138057 () Bool)

(assert (=> bm!138057 (= call!138054 (height!1317 (ite c!367504 (left!20978 acc!252) lt!859686)))))

(declare-fun b!2318061 () Bool)

(assert (=> b!2318061 (= e!1485986 e!1485981)))

(assert (=> b!2318061 (= lt!859685 call!138055)))

(assert (=> b!2318061 (= c!367506 (= call!138063 (- call!138065 3)))))

(declare-fun b!2318062 () Bool)

(assert (=> b!2318062 (= e!1485986 call!138056)))

(declare-fun b!2318063 () Bool)

(assert (=> b!2318063 (= e!1485990 acc!252)))

(declare-fun bm!138058 () Bool)

(declare-fun call!138059 () Conc!9054)

(assert (=> bm!138058 (= call!138059 call!138057)))

(declare-fun b!2318064 () Bool)

(assert (=> b!2318064 (= e!1485989 call!138059)))

(declare-fun b!2318065 () Bool)

(declare-fun res!990376 () Bool)

(assert (=> b!2318065 (=> (not res!990376) (not e!1485983))))

(assert (=> b!2318065 (= res!990376 (isBalanced!2748 lt!859684))))

(declare-fun bm!138059 () Bool)

(assert (=> bm!138059 (= call!138055 call!138061)))

(declare-fun bm!138060 () Bool)

(assert (=> bm!138060 (= call!138063 (height!1317 (ite c!367504 lt!859685 (left!20978 lt!859568))))))

(declare-fun bm!138061 () Bool)

(assert (=> bm!138061 (= call!138056 call!138064)))

(declare-fun d!685179 () Bool)

(assert (=> d!685179 e!1485983))

(declare-fun res!990378 () Bool)

(assert (=> d!685179 (=> (not res!990378) (not e!1485983))))

(declare-fun appendAssocInst!601 (Conc!9054 Conc!9054) Bool)

(assert (=> d!685179 (= res!990378 (appendAssocInst!601 acc!252 lt!859568))))

(assert (=> d!685179 (= lt!859684 e!1485988)))

(declare-fun c!367505 () Bool)

(assert (=> d!685179 (= c!367505 (= acc!252 Empty!9054))))

(assert (=> d!685179 e!1485985))

(declare-fun res!990379 () Bool)

(assert (=> d!685179 (=> (not res!990379) (not e!1485985))))

(assert (=> d!685179 (= res!990379 (isBalanced!2748 acc!252))))

(assert (=> d!685179 (= (++!6802 acc!252 lt!859568) lt!859684)))

(declare-fun b!2318066 () Bool)

(assert (=> b!2318066 (= e!1485983 (= (list!10978 lt!859684) (++!6801 (list!10978 acc!252) (list!10978 lt!859568))))))

(declare-fun b!2318067 () Bool)

(assert (=> b!2318067 (= e!1485989 call!138059)))

(declare-fun b!2318068 () Bool)

(assert (=> b!2318068 (= e!1485988 lt!859568)))

(declare-fun b!2318069 () Bool)

(declare-fun res!990380 () Bool)

(assert (=> b!2318069 (=> (not res!990380) (not e!1485983))))

(assert (=> b!2318069 (= res!990380 (>= (height!1317 lt!859684) (max!0 (height!1317 acc!252) (height!1317 lt!859568))))))

(assert (= (and d!685179 res!990379) b!2318055))

(assert (= (and d!685179 c!367505) b!2318068))

(assert (= (and d!685179 (not c!367505)) b!2318053))

(assert (= (and b!2318053 c!367507) b!2318063))

(assert (= (and b!2318053 (not c!367507)) b!2318059))

(assert (= (and b!2318059 c!367500) b!2318050))

(assert (= (and b!2318059 (not c!367500)) b!2318060))

(assert (= (and b!2318060 c!367504) b!2318054))

(assert (= (and b!2318060 (not c!367504)) b!2318057))

(assert (= (and b!2318054 c!367503) b!2318062))

(assert (= (and b!2318054 (not c!367503)) b!2318061))

(assert (= (and b!2318061 c!367506) b!2318051))

(assert (= (and b!2318061 (not c!367506)) b!2318052))

(assert (= (or b!2318051 b!2318052) bm!138056))

(assert (= (or b!2318051 b!2318052) bm!138050))

(assert (= (or b!2318062 b!2318061) bm!138059))

(assert (= (or b!2318062 bm!138050) bm!138061))

(assert (= (and b!2318057 c!367501) b!2318049))

(assert (= (and b!2318057 (not c!367501)) b!2318058))

(assert (= (and b!2318058 c!367502) b!2318064))

(assert (= (and b!2318058 (not c!367502)) b!2318067))

(assert (= (or b!2318064 b!2318067) bm!138054))

(assert (= (or b!2318064 b!2318067) bm!138058))

(assert (= (or b!2318049 b!2318058) bm!138053))

(assert (= (or b!2318049 bm!138058) bm!138046))

(assert (= (or bm!138056 bm!138054) bm!138051))

(assert (= (or b!2318054 b!2318058) bm!138057))

(assert (= (or b!2318061 b!2318057) bm!138055))

(assert (= (or b!2318061 b!2318057) bm!138060))

(assert (= (or bm!138061 bm!138046) bm!138052))

(assert (= (or bm!138059 bm!138053) bm!138047))

(assert (= (or b!2318054 b!2318058) bm!138048))

(assert (= (or b!2318050 bm!138051) bm!138049))

(assert (= (and d!685179 res!990378) b!2318065))

(assert (= (and b!2318065 res!990376) b!2318056))

(assert (= (and b!2318056 res!990377) b!2318069))

(assert (= (and b!2318069 res!990380) b!2318066))

(declare-fun m!2745751 () Bool)

(assert (=> b!2318059 m!2745751))

(declare-fun m!2745753 () Bool)

(assert (=> b!2318059 m!2745753))

(declare-fun m!2745755 () Bool)

(assert (=> bm!138049 m!2745755))

(declare-fun m!2745757 () Bool)

(assert (=> b!2318069 m!2745757))

(assert (=> b!2318069 m!2745753))

(assert (=> b!2318069 m!2745751))

(assert (=> b!2318069 m!2745753))

(assert (=> b!2318069 m!2745751))

(declare-fun m!2745759 () Bool)

(assert (=> b!2318069 m!2745759))

(declare-fun m!2745761 () Bool)

(assert (=> b!2318065 m!2745761))

(declare-fun m!2745763 () Bool)

(assert (=> d!685179 m!2745763))

(assert (=> d!685179 m!2745457))

(declare-fun m!2745765 () Bool)

(assert (=> bm!138055 m!2745765))

(declare-fun m!2745767 () Bool)

(assert (=> bm!138052 m!2745767))

(declare-fun m!2745769 () Bool)

(assert (=> bm!138057 m!2745769))

(declare-fun m!2745771 () Bool)

(assert (=> bm!138060 m!2745771))

(declare-fun m!2745773 () Bool)

(assert (=> bm!138048 m!2745773))

(declare-fun m!2745775 () Bool)

(assert (=> b!2318055 m!2745775))

(declare-fun m!2745777 () Bool)

(assert (=> bm!138047 m!2745777))

(declare-fun m!2745779 () Bool)

(assert (=> b!2318066 m!2745779))

(assert (=> b!2318066 m!2745435))

(assert (=> b!2318066 m!2745443))

(assert (=> b!2318066 m!2745435))

(assert (=> b!2318066 m!2745443))

(declare-fun m!2745781 () Bool)

(assert (=> b!2318066 m!2745781))

(assert (=> b!2318056 m!2745757))

(assert (=> b!2318056 m!2745753))

(assert (=> b!2318056 m!2745751))

(assert (=> b!2318056 m!2745753))

(assert (=> b!2318056 m!2745751))

(assert (=> b!2318056 m!2745759))

(assert (=> b!2317775 d!685179))

(declare-fun b!2318091 () Bool)

(declare-fun e!1486002 () Bool)

(declare-fun e!1486001 () Bool)

(assert (=> b!2318091 (= e!1486002 e!1486001)))

(declare-fun res!990389 () Bool)

(assert (=> b!2318091 (=> (not res!990389) (not e!1486001))))

(assert (=> b!2318091 (= res!990389 (<= (- 1) (- (height!1317 (left!20978 lt!859572)) (height!1317 (right!21308 lt!859572)))))))

(declare-fun b!2318092 () Bool)

(declare-fun res!990388 () Bool)

(assert (=> b!2318092 (=> (not res!990388) (not e!1486001))))

(assert (=> b!2318092 (= res!990388 (isBalanced!2748 (left!20978 lt!859572)))))

(declare-fun b!2318093 () Bool)

(assert (=> b!2318093 (= e!1486001 (not (isEmpty!15771 (right!21308 lt!859572))))))

(declare-fun b!2318094 () Bool)

(declare-fun res!990391 () Bool)

(assert (=> b!2318094 (=> (not res!990391) (not e!1486001))))

(assert (=> b!2318094 (= res!990391 (<= (- (height!1317 (left!20978 lt!859572)) (height!1317 (right!21308 lt!859572))) 1))))

(declare-fun b!2318095 () Bool)

(declare-fun res!990386 () Bool)

(assert (=> b!2318095 (=> (not res!990386) (not e!1486001))))

(assert (=> b!2318095 (= res!990386 (not (isEmpty!15771 (left!20978 lt!859572))))))

(declare-fun d!685181 () Bool)

(declare-fun res!990387 () Bool)

(assert (=> d!685181 (=> res!990387 e!1486002)))

(assert (=> d!685181 (= res!990387 (not (is-Node!9054 lt!859572)))))

(assert (=> d!685181 (= (isBalanced!2748 lt!859572) e!1486002)))

(declare-fun b!2318096 () Bool)

(declare-fun res!990390 () Bool)

(assert (=> b!2318096 (=> (not res!990390) (not e!1486001))))

(assert (=> b!2318096 (= res!990390 (isBalanced!2748 (right!21308 lt!859572)))))

(assert (= (and d!685181 (not res!990387)) b!2318091))

(assert (= (and b!2318091 res!990389) b!2318094))

(assert (= (and b!2318094 res!990391) b!2318092))

(assert (= (and b!2318092 res!990388) b!2318096))

(assert (= (and b!2318096 res!990390) b!2318095))

(assert (= (and b!2318095 res!990386) b!2318093))

(declare-fun m!2745783 () Bool)

(assert (=> b!2318095 m!2745783))

(declare-fun m!2745785 () Bool)

(assert (=> b!2318096 m!2745785))

(declare-fun m!2745787 () Bool)

(assert (=> b!2318091 m!2745787))

(declare-fun m!2745789 () Bool)

(assert (=> b!2318091 m!2745789))

(assert (=> b!2318094 m!2745787))

(assert (=> b!2318094 m!2745789))

(declare-fun m!2745791 () Bool)

(assert (=> b!2318092 m!2745791))

(declare-fun m!2745793 () Bool)

(assert (=> b!2318093 m!2745793))

(assert (=> b!2317773 d!685181))

(declare-fun d!685183 () Bool)

(declare-fun lt!859693 () Int)

(assert (=> d!685183 (= lt!859693 (size!21887 (list!10979 arr!18)))))

(declare-fun choose!13575 (IArray!18113) Int)

(assert (=> d!685183 (= lt!859693 (choose!13575 arr!18))))

(assert (=> d!685183 (= (size!21885 arr!18) lt!859693)))

(declare-fun bs!458899 () Bool)

(assert (= bs!458899 d!685183))

(assert (=> bs!458899 m!2745623))

(assert (=> bs!458899 m!2745623))

(declare-fun m!2745795 () Bool)

(assert (=> bs!458899 m!2745795))

(declare-fun m!2745797 () Bool)

(assert (=> bs!458899 m!2745797))

(assert (=> b!2317777 d!685183))

(declare-fun b!2318101 () Bool)

(declare-fun e!1486005 () Bool)

(declare-fun tp_is_empty!10799 () Bool)

(declare-fun tp!735998 () Bool)

(assert (=> b!2318101 (= e!1486005 (and tp_is_empty!10799 tp!735998))))

(assert (=> b!2317770 (= tp!735981 e!1486005)))

(assert (= (and b!2317770 (is-Cons!27649 (innerList!9114 arr!18))) b!2318101))

(declare-fun tp!736007 () Bool)

(declare-fun tp!736005 () Bool)

(declare-fun b!2318110 () Bool)

(declare-fun e!1486010 () Bool)

(assert (=> b!2318110 (= e!1486010 (and (inv!37546 (left!20978 (left!20978 acc!252))) tp!736007 (inv!37546 (right!21308 (left!20978 acc!252))) tp!736005))))

(declare-fun b!2318112 () Bool)

(declare-fun e!1486011 () Bool)

(declare-fun tp!736006 () Bool)

(assert (=> b!2318112 (= e!1486011 tp!736006)))

(declare-fun b!2318111 () Bool)

(assert (=> b!2318111 (= e!1486010 (and (inv!37547 (xs!12006 (left!20978 acc!252))) e!1486011))))

(assert (=> b!2317771 (= tp!735982 (and (inv!37546 (left!20978 acc!252)) e!1486010))))

(assert (= (and b!2317771 (is-Node!9054 (left!20978 acc!252))) b!2318110))

(assert (= b!2318111 b!2318112))

(assert (= (and b!2317771 (is-Leaf!13291 (left!20978 acc!252))) b!2318111))

(declare-fun m!2745821 () Bool)

(assert (=> b!2318110 m!2745821))

(declare-fun m!2745823 () Bool)

(assert (=> b!2318110 m!2745823))

(declare-fun m!2745825 () Bool)

(assert (=> b!2318111 m!2745825))

(assert (=> b!2317771 m!2745469))

(declare-fun b!2318113 () Bool)

(declare-fun tp!736010 () Bool)

(declare-fun e!1486012 () Bool)

(declare-fun tp!736008 () Bool)

(assert (=> b!2318113 (= e!1486012 (and (inv!37546 (left!20978 (right!21308 acc!252))) tp!736010 (inv!37546 (right!21308 (right!21308 acc!252))) tp!736008))))

(declare-fun b!2318115 () Bool)

(declare-fun e!1486013 () Bool)

(declare-fun tp!736009 () Bool)

(assert (=> b!2318115 (= e!1486013 tp!736009)))

(declare-fun b!2318114 () Bool)

(assert (=> b!2318114 (= e!1486012 (and (inv!37547 (xs!12006 (right!21308 acc!252))) e!1486013))))

(assert (=> b!2317771 (= tp!735983 (and (inv!37546 (right!21308 acc!252)) e!1486012))))

(assert (= (and b!2317771 (is-Node!9054 (right!21308 acc!252))) b!2318113))

(assert (= b!2318114 b!2318115))

(assert (= (and b!2317771 (is-Leaf!13291 (right!21308 acc!252))) b!2318114))

(declare-fun m!2745835 () Bool)

(assert (=> b!2318113 m!2745835))

(declare-fun m!2745837 () Bool)

(assert (=> b!2318113 m!2745837))

(declare-fun m!2745839 () Bool)

(assert (=> b!2318114 m!2745839))

(assert (=> b!2317771 m!2745471))

(declare-fun b!2318116 () Bool)

(declare-fun e!1486014 () Bool)

(declare-fun tp!736011 () Bool)

(assert (=> b!2318116 (= e!1486014 (and tp_is_empty!10799 tp!736011))))

(assert (=> b!2317772 (= tp!735980 e!1486014)))

(assert (= (and b!2317772 (is-Cons!27649 (innerList!9114 (xs!12006 acc!252)))) b!2318116))

(push 1)

(assert (not b!2317896))

(assert (not b!2318116))

(assert (not b!2317974))

(assert (not b!2317838))

(assert (not b!2317848))

(assert (not d!685145))

(assert (not b!2317936))

(assert (not d!685175))

(assert (not b!2318110))

(assert (not b!2318069))

(assert (not b!2317847))

(assert (not b!2317815))

(assert (not b!2318094))

(assert (not b!2317951))

(assert (not b!2317898))

(assert (not d!685143))

(assert (not b!2317850))

(assert (not d!685135))

(assert (not b!2318093))

(assert (not b!2317935))

(assert (not d!685133))

(assert (not b!2317818))

(assert (not b!2317771))

(assert (not b!2318115))

(assert (not b!2318056))

(assert (not d!685183))

(assert (not b!2318113))

(assert (not b!2318096))

(assert (not bm!138048))

(assert (not b!2317964))

(assert (not b!2317924))

(assert (not b!2318095))

(assert (not d!685173))

(assert (not b!2318059))

(assert (not bm!138055))

(assert (not bm!138049))

(assert (not b!2317860))

(assert (not b!2317973))

(assert (not bm!138057))

(assert (not b!2318101))

(assert (not b!2318091))

(assert (not b!2317923))

(assert (not b!2318066))

(assert (not b!2317957))

(assert (not bm!137980))

(assert (not bm!138052))

(assert (not b!2317864))

(assert (not d!685179))

(assert (not b!2318065))

(assert (not b!2317816))

(assert (not b!2317861))

(assert (not b!2317840))

(assert (not b!2318111))

(assert (not b!2317814))

(assert (not bm!138047))

(assert (not d!685141))

(assert (not d!685123))

(assert (not b!2318112))

(assert (not b!2317845))

(assert (not b!2317958))

(assert tp_is_empty!10799)

(assert (not b!2318114))

(assert (not b!2317865))

(assert (not b!2318055))

(assert (not d!685169))

(assert (not b!2317899))

(assert (not d!685153))

(assert (not b!2317817))

(assert (not bm!137981))

(assert (not b!2317819))

(assert (not bm!138060))

(assert (not b!2317952))

(assert (not b!2318092))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

