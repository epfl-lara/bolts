; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229030 () Bool)

(assert start!229030)

(declare-fun res!991337 () Bool)

(declare-fun e!1487387 () Bool)

(assert (=> start!229030 (=> (not res!991337) (not e!1487387))))

(declare-datatypes ((T!43852 0))(
  ( (T!43853 (val!7972 Int)) )
))
(declare-datatypes ((List!27758 0))(
  ( (Nil!27660) (Cons!27660 (h!33061 T!43852) (t!207414 List!27758)) )
))
(declare-datatypes ((IArray!18135 0))(
  ( (IArray!18136 (innerList!9125 List!27758)) )
))
(declare-datatypes ((Conc!9065 0))(
  ( (Node!9065 (left!20994 Conc!9065) (right!21324 Conc!9065) (csize!18360 Int) (cheight!9276 Int)) (Leaf!13307 (xs!12025 IArray!18135) (csize!18361 Int)) (Empty!9065) )
))
(declare-fun acc!252 () Conc!9065)

(declare-fun isBalanced!2759 (Conc!9065) Bool)

(assert (=> start!229030 (= res!991337 (isBalanced!2759 acc!252))))

(assert (=> start!229030 e!1487387))

(declare-fun e!1487384 () Bool)

(declare-fun inv!37599 (Conc!9065) Bool)

(assert (=> start!229030 (and (inv!37599 acc!252) e!1487384)))

(declare-fun arr!18 () IArray!18135)

(declare-fun e!1487385 () Bool)

(declare-fun inv!37600 (IArray!18135) Bool)

(assert (=> start!229030 (and (inv!37600 arr!18) e!1487385)))

(declare-fun b!2320594 () Bool)

(declare-fun e!1487386 () Bool)

(assert (=> b!2320594 (= e!1487387 e!1487386)))

(declare-fun res!991338 () Bool)

(assert (=> b!2320594 (=> (not res!991338) (not e!1487386))))

(declare-fun lt!860337 () Int)

(assert (=> b!2320594 (= res!991338 (and (<= lt!860337 512) (not (= lt!860337 0))))))

(declare-fun size!21912 (IArray!18135) Int)

(assert (=> b!2320594 (= lt!860337 (size!21912 arr!18))))

(declare-fun b!2320595 () Bool)

(declare-fun tp!736409 () Bool)

(assert (=> b!2320595 (= e!1487385 tp!736409)))

(declare-fun b!2320596 () Bool)

(assert (=> b!2320596 (= e!1487386 (not (inv!37599 (Leaf!13307 arr!18 lt!860337))))))

(declare-fun b!2320597 () Bool)

(declare-fun e!1487383 () Bool)

(declare-fun tp!736410 () Bool)

(assert (=> b!2320597 (= e!1487383 tp!736410)))

(declare-fun tp!736408 () Bool)

(declare-fun tp!736411 () Bool)

(declare-fun b!2320598 () Bool)

(assert (=> b!2320598 (= e!1487384 (and (inv!37599 (left!20994 acc!252)) tp!736408 (inv!37599 (right!21324 acc!252)) tp!736411))))

(declare-fun b!2320599 () Bool)

(assert (=> b!2320599 (= e!1487384 (and (inv!37600 (xs!12025 acc!252)) e!1487383))))

(assert (= (and start!229030 res!991337) b!2320594))

(assert (= (and b!2320594 res!991338) b!2320596))

(get-info :version)

(assert (= (and start!229030 ((_ is Node!9065) acc!252)) b!2320598))

(assert (= b!2320599 b!2320597))

(assert (= (and start!229030 ((_ is Leaf!13307) acc!252)) b!2320599))

(assert (= start!229030 b!2320595))

(declare-fun m!2749563 () Bool)

(assert (=> b!2320598 m!2749563))

(declare-fun m!2749565 () Bool)

(assert (=> b!2320598 m!2749565))

(declare-fun m!2749567 () Bool)

(assert (=> start!229030 m!2749567))

(declare-fun m!2749569 () Bool)

(assert (=> start!229030 m!2749569))

(declare-fun m!2749571 () Bool)

(assert (=> start!229030 m!2749571))

(declare-fun m!2749573 () Bool)

(assert (=> b!2320594 m!2749573))

(declare-fun m!2749575 () Bool)

(assert (=> b!2320596 m!2749575))

(declare-fun m!2749577 () Bool)

(assert (=> b!2320599 m!2749577))

(check-sat (not b!2320599) (not start!229030) (not b!2320594) (not b!2320597) (not b!2320595) (not b!2320598) (not b!2320596))
(check-sat)
(get-model)

(declare-fun d!686374 () Bool)

(declare-fun lt!860340 () Int)

(declare-fun size!21913 (List!27758) Int)

(declare-fun list!10998 (IArray!18135) List!27758)

(assert (=> d!686374 (= lt!860340 (size!21913 (list!10998 arr!18)))))

(declare-fun choose!13589 (IArray!18135) Int)

(assert (=> d!686374 (= lt!860340 (choose!13589 arr!18))))

(assert (=> d!686374 (= (size!21912 arr!18) lt!860340)))

(declare-fun bs!459016 () Bool)

(assert (= bs!459016 d!686374))

(declare-fun m!2749579 () Bool)

(assert (=> bs!459016 m!2749579))

(assert (=> bs!459016 m!2749579))

(declare-fun m!2749581 () Bool)

(assert (=> bs!459016 m!2749581))

(declare-fun m!2749583 () Bool)

(assert (=> bs!459016 m!2749583))

(assert (=> b!2320594 d!686374))

(declare-fun d!686378 () Bool)

(assert (=> d!686378 (= (inv!37600 (xs!12025 acc!252)) (<= (size!21913 (innerList!9125 (xs!12025 acc!252))) 2147483647))))

(declare-fun bs!459017 () Bool)

(assert (= bs!459017 d!686378))

(declare-fun m!2749585 () Bool)

(assert (=> bs!459017 m!2749585))

(assert (=> b!2320599 d!686378))

(declare-fun b!2320636 () Bool)

(declare-fun res!991372 () Bool)

(declare-fun e!1487405 () Bool)

(assert (=> b!2320636 (=> (not res!991372) (not e!1487405))))

(declare-fun isEmpty!15785 (Conc!9065) Bool)

(assert (=> b!2320636 (= res!991372 (not (isEmpty!15785 (left!20994 acc!252))))))

(declare-fun b!2320637 () Bool)

(assert (=> b!2320637 (= e!1487405 (not (isEmpty!15785 (right!21324 acc!252))))))

(declare-fun b!2320638 () Bool)

(declare-fun res!991369 () Bool)

(assert (=> b!2320638 (=> (not res!991369) (not e!1487405))))

(assert (=> b!2320638 (= res!991369 (isBalanced!2759 (left!20994 acc!252)))))

(declare-fun d!686380 () Bool)

(declare-fun res!991371 () Bool)

(declare-fun e!1487404 () Bool)

(assert (=> d!686380 (=> res!991371 e!1487404)))

(assert (=> d!686380 (= res!991371 (not ((_ is Node!9065) acc!252)))))

(assert (=> d!686380 (= (isBalanced!2759 acc!252) e!1487404)))

(declare-fun b!2320639 () Bool)

(assert (=> b!2320639 (= e!1487404 e!1487405)))

(declare-fun res!991370 () Bool)

(assert (=> b!2320639 (=> (not res!991370) (not e!1487405))))

(declare-fun height!1325 (Conc!9065) Int)

(assert (=> b!2320639 (= res!991370 (<= (- 1) (- (height!1325 (left!20994 acc!252)) (height!1325 (right!21324 acc!252)))))))

(declare-fun b!2320640 () Bool)

(declare-fun res!991367 () Bool)

(assert (=> b!2320640 (=> (not res!991367) (not e!1487405))))

(assert (=> b!2320640 (= res!991367 (<= (- (height!1325 (left!20994 acc!252)) (height!1325 (right!21324 acc!252))) 1))))

(declare-fun b!2320641 () Bool)

(declare-fun res!991368 () Bool)

(assert (=> b!2320641 (=> (not res!991368) (not e!1487405))))

(assert (=> b!2320641 (= res!991368 (isBalanced!2759 (right!21324 acc!252)))))

(assert (= (and d!686380 (not res!991371)) b!2320639))

(assert (= (and b!2320639 res!991370) b!2320640))

(assert (= (and b!2320640 res!991367) b!2320638))

(assert (= (and b!2320638 res!991369) b!2320641))

(assert (= (and b!2320641 res!991368) b!2320636))

(assert (= (and b!2320636 res!991372) b!2320637))

(declare-fun m!2749595 () Bool)

(assert (=> b!2320639 m!2749595))

(declare-fun m!2749597 () Bool)

(assert (=> b!2320639 m!2749597))

(declare-fun m!2749599 () Bool)

(assert (=> b!2320641 m!2749599))

(assert (=> b!2320640 m!2749595))

(assert (=> b!2320640 m!2749597))

(declare-fun m!2749601 () Bool)

(assert (=> b!2320637 m!2749601))

(declare-fun m!2749603 () Bool)

(assert (=> b!2320636 m!2749603))

(declare-fun m!2749605 () Bool)

(assert (=> b!2320638 m!2749605))

(assert (=> start!229030 d!686380))

(declare-fun d!686386 () Bool)

(declare-fun c!368078 () Bool)

(assert (=> d!686386 (= c!368078 ((_ is Node!9065) acc!252))))

(declare-fun e!1487415 () Bool)

(assert (=> d!686386 (= (inv!37599 acc!252) e!1487415)))

(declare-fun b!2320658 () Bool)

(declare-fun inv!37603 (Conc!9065) Bool)

(assert (=> b!2320658 (= e!1487415 (inv!37603 acc!252))))

(declare-fun b!2320660 () Bool)

(declare-fun e!1487417 () Bool)

(assert (=> b!2320660 (= e!1487415 e!1487417)))

(declare-fun res!991383 () Bool)

(assert (=> b!2320660 (= res!991383 (not ((_ is Leaf!13307) acc!252)))))

(assert (=> b!2320660 (=> res!991383 e!1487417)))

(declare-fun b!2320662 () Bool)

(declare-fun inv!37604 (Conc!9065) Bool)

(assert (=> b!2320662 (= e!1487417 (inv!37604 acc!252))))

(assert (= (and d!686386 c!368078) b!2320658))

(assert (= (and d!686386 (not c!368078)) b!2320660))

(assert (= (and b!2320660 (not res!991383)) b!2320662))

(declare-fun m!2749627 () Bool)

(assert (=> b!2320658 m!2749627))

(declare-fun m!2749631 () Bool)

(assert (=> b!2320662 m!2749631))

(assert (=> start!229030 d!686386))

(declare-fun d!686396 () Bool)

(assert (=> d!686396 (= (inv!37600 arr!18) (<= (size!21913 (innerList!9125 arr!18)) 2147483647))))

(declare-fun bs!459019 () Bool)

(assert (= bs!459019 d!686396))

(declare-fun m!2749633 () Bool)

(assert (=> bs!459019 m!2749633))

(assert (=> start!229030 d!686396))

(declare-fun d!686398 () Bool)

(declare-fun c!368079 () Bool)

(assert (=> d!686398 (= c!368079 ((_ is Node!9065) (left!20994 acc!252)))))

(declare-fun e!1487418 () Bool)

(assert (=> d!686398 (= (inv!37599 (left!20994 acc!252)) e!1487418)))

(declare-fun b!2320663 () Bool)

(assert (=> b!2320663 (= e!1487418 (inv!37603 (left!20994 acc!252)))))

(declare-fun b!2320664 () Bool)

(declare-fun e!1487419 () Bool)

(assert (=> b!2320664 (= e!1487418 e!1487419)))

(declare-fun res!991384 () Bool)

(assert (=> b!2320664 (= res!991384 (not ((_ is Leaf!13307) (left!20994 acc!252))))))

(assert (=> b!2320664 (=> res!991384 e!1487419)))

(declare-fun b!2320665 () Bool)

(assert (=> b!2320665 (= e!1487419 (inv!37604 (left!20994 acc!252)))))

(assert (= (and d!686398 c!368079) b!2320663))

(assert (= (and d!686398 (not c!368079)) b!2320664))

(assert (= (and b!2320664 (not res!991384)) b!2320665))

(declare-fun m!2749635 () Bool)

(assert (=> b!2320663 m!2749635))

(declare-fun m!2749637 () Bool)

(assert (=> b!2320665 m!2749637))

(assert (=> b!2320598 d!686398))

(declare-fun d!686400 () Bool)

(declare-fun c!368080 () Bool)

(assert (=> d!686400 (= c!368080 ((_ is Node!9065) (right!21324 acc!252)))))

(declare-fun e!1487420 () Bool)

(assert (=> d!686400 (= (inv!37599 (right!21324 acc!252)) e!1487420)))

(declare-fun b!2320666 () Bool)

(assert (=> b!2320666 (= e!1487420 (inv!37603 (right!21324 acc!252)))))

(declare-fun b!2320667 () Bool)

(declare-fun e!1487421 () Bool)

(assert (=> b!2320667 (= e!1487420 e!1487421)))

(declare-fun res!991385 () Bool)

(assert (=> b!2320667 (= res!991385 (not ((_ is Leaf!13307) (right!21324 acc!252))))))

(assert (=> b!2320667 (=> res!991385 e!1487421)))

(declare-fun b!2320668 () Bool)

(assert (=> b!2320668 (= e!1487421 (inv!37604 (right!21324 acc!252)))))

(assert (= (and d!686400 c!368080) b!2320666))

(assert (= (and d!686400 (not c!368080)) b!2320667))

(assert (= (and b!2320667 (not res!991385)) b!2320668))

(declare-fun m!2749639 () Bool)

(assert (=> b!2320666 m!2749639))

(declare-fun m!2749641 () Bool)

(assert (=> b!2320668 m!2749641))

(assert (=> b!2320598 d!686400))

(declare-fun d!686402 () Bool)

(declare-fun c!368081 () Bool)

(assert (=> d!686402 (= c!368081 ((_ is Node!9065) (Leaf!13307 arr!18 lt!860337)))))

(declare-fun e!1487422 () Bool)

(assert (=> d!686402 (= (inv!37599 (Leaf!13307 arr!18 lt!860337)) e!1487422)))

(declare-fun b!2320669 () Bool)

(assert (=> b!2320669 (= e!1487422 (inv!37603 (Leaf!13307 arr!18 lt!860337)))))

(declare-fun b!2320670 () Bool)

(declare-fun e!1487423 () Bool)

(assert (=> b!2320670 (= e!1487422 e!1487423)))

(declare-fun res!991386 () Bool)

(assert (=> b!2320670 (= res!991386 (not ((_ is Leaf!13307) (Leaf!13307 arr!18 lt!860337))))))

(assert (=> b!2320670 (=> res!991386 e!1487423)))

(declare-fun b!2320671 () Bool)

(assert (=> b!2320671 (= e!1487423 (inv!37604 (Leaf!13307 arr!18 lt!860337)))))

(assert (= (and d!686402 c!368081) b!2320669))

(assert (= (and d!686402 (not c!368081)) b!2320670))

(assert (= (and b!2320670 (not res!991386)) b!2320671))

(declare-fun m!2749643 () Bool)

(assert (=> b!2320669 m!2749643))

(declare-fun m!2749645 () Bool)

(assert (=> b!2320671 m!2749645))

(assert (=> b!2320596 d!686402))

(declare-fun b!2320676 () Bool)

(declare-fun e!1487426 () Bool)

(declare-fun tp_is_empty!10815 () Bool)

(declare-fun tp!736414 () Bool)

(assert (=> b!2320676 (= e!1487426 (and tp_is_empty!10815 tp!736414))))

(assert (=> b!2320595 (= tp!736409 e!1487426)))

(assert (= (and b!2320595 ((_ is Cons!27660) (innerList!9125 arr!18))) b!2320676))

(declare-fun b!2320698 () Bool)

(declare-fun tp!736432 () Bool)

(declare-fun tp!736431 () Bool)

(declare-fun e!1487438 () Bool)

(assert (=> b!2320698 (= e!1487438 (and (inv!37599 (left!20994 (left!20994 acc!252))) tp!736431 (inv!37599 (right!21324 (left!20994 acc!252))) tp!736432))))

(declare-fun b!2320700 () Bool)

(declare-fun e!1487439 () Bool)

(declare-fun tp!736430 () Bool)

(assert (=> b!2320700 (= e!1487439 tp!736430)))

(declare-fun b!2320699 () Bool)

(assert (=> b!2320699 (= e!1487438 (and (inv!37600 (xs!12025 (left!20994 acc!252))) e!1487439))))

(assert (=> b!2320598 (= tp!736408 (and (inv!37599 (left!20994 acc!252)) e!1487438))))

(assert (= (and b!2320598 ((_ is Node!9065) (left!20994 acc!252))) b!2320698))

(assert (= b!2320699 b!2320700))

(assert (= (and b!2320598 ((_ is Leaf!13307) (left!20994 acc!252))) b!2320699))

(declare-fun m!2749655 () Bool)

(assert (=> b!2320698 m!2749655))

(declare-fun m!2749657 () Bool)

(assert (=> b!2320698 m!2749657))

(declare-fun m!2749659 () Bool)

(assert (=> b!2320699 m!2749659))

(assert (=> b!2320598 m!2749563))

(declare-fun b!2320701 () Bool)

(declare-fun tp!736434 () Bool)

(declare-fun tp!736435 () Bool)

(declare-fun e!1487440 () Bool)

(assert (=> b!2320701 (= e!1487440 (and (inv!37599 (left!20994 (right!21324 acc!252))) tp!736434 (inv!37599 (right!21324 (right!21324 acc!252))) tp!736435))))

(declare-fun b!2320703 () Bool)

(declare-fun e!1487441 () Bool)

(declare-fun tp!736433 () Bool)

(assert (=> b!2320703 (= e!1487441 tp!736433)))

(declare-fun b!2320702 () Bool)

(assert (=> b!2320702 (= e!1487440 (and (inv!37600 (xs!12025 (right!21324 acc!252))) e!1487441))))

(assert (=> b!2320598 (= tp!736411 (and (inv!37599 (right!21324 acc!252)) e!1487440))))

(assert (= (and b!2320598 ((_ is Node!9065) (right!21324 acc!252))) b!2320701))

(assert (= b!2320702 b!2320703))

(assert (= (and b!2320598 ((_ is Leaf!13307) (right!21324 acc!252))) b!2320702))

(declare-fun m!2749661 () Bool)

(assert (=> b!2320701 m!2749661))

(declare-fun m!2749663 () Bool)

(assert (=> b!2320701 m!2749663))

(declare-fun m!2749665 () Bool)

(assert (=> b!2320702 m!2749665))

(assert (=> b!2320598 m!2749565))

(declare-fun b!2320704 () Bool)

(declare-fun e!1487442 () Bool)

(declare-fun tp!736436 () Bool)

(assert (=> b!2320704 (= e!1487442 (and tp_is_empty!10815 tp!736436))))

(assert (=> b!2320597 (= tp!736410 e!1487442)))

(assert (= (and b!2320597 ((_ is Cons!27660) (innerList!9125 (xs!12025 acc!252)))) b!2320704))

(check-sat (not b!2320701) (not b!2320669) (not b!2320662) (not b!2320665) (not b!2320640) (not d!686378) (not b!2320637) (not b!2320703) (not b!2320598) (not b!2320699) (not d!686396) (not b!2320666) (not b!2320704) (not b!2320676) (not b!2320638) (not b!2320698) (not b!2320700) (not b!2320702) (not b!2320668) (not b!2320639) (not b!2320636) (not d!686374) (not b!2320658) (not b!2320663) (not b!2320671) (not b!2320641) tp_is_empty!10815)
(check-sat)
(get-model)

(declare-fun d!686406 () Bool)

(assert (=> d!686406 (= (inv!37600 (xs!12025 (left!20994 acc!252))) (<= (size!21913 (innerList!9125 (xs!12025 (left!20994 acc!252)))) 2147483647))))

(declare-fun bs!459022 () Bool)

(assert (= bs!459022 d!686406))

(declare-fun m!2749679 () Bool)

(assert (=> bs!459022 m!2749679))

(assert (=> b!2320699 d!686406))

(declare-fun d!686408 () Bool)

(declare-fun lt!860346 () Bool)

(declare-fun isEmpty!15787 (List!27758) Bool)

(declare-fun list!11000 (Conc!9065) List!27758)

(assert (=> d!686408 (= lt!860346 (isEmpty!15787 (list!11000 (left!20994 acc!252))))))

(declare-fun size!21915 (Conc!9065) Int)

(assert (=> d!686408 (= lt!860346 (= (size!21915 (left!20994 acc!252)) 0))))

(assert (=> d!686408 (= (isEmpty!15785 (left!20994 acc!252)) lt!860346)))

(declare-fun bs!459023 () Bool)

(assert (= bs!459023 d!686408))

(declare-fun m!2749681 () Bool)

(assert (=> bs!459023 m!2749681))

(assert (=> bs!459023 m!2749681))

(declare-fun m!2749683 () Bool)

(assert (=> bs!459023 m!2749683))

(declare-fun m!2749685 () Bool)

(assert (=> bs!459023 m!2749685))

(assert (=> b!2320636 d!686408))

(declare-fun d!686410 () Bool)

(declare-fun lt!860349 () Int)

(assert (=> d!686410 (>= lt!860349 0)))

(declare-fun e!1487450 () Int)

(assert (=> d!686410 (= lt!860349 e!1487450)))

(declare-fun c!368084 () Bool)

(assert (=> d!686410 (= c!368084 ((_ is Nil!27660) (list!10998 arr!18)))))

(assert (=> d!686410 (= (size!21913 (list!10998 arr!18)) lt!860349)))

(declare-fun b!2320716 () Bool)

(assert (=> b!2320716 (= e!1487450 0)))

(declare-fun b!2320717 () Bool)

(assert (=> b!2320717 (= e!1487450 (+ 1 (size!21913 (t!207414 (list!10998 arr!18)))))))

(assert (= (and d!686410 c!368084) b!2320716))

(assert (= (and d!686410 (not c!368084)) b!2320717))

(declare-fun m!2749687 () Bool)

(assert (=> b!2320717 m!2749687))

(assert (=> d!686374 d!686410))

(declare-fun d!686412 () Bool)

(assert (=> d!686412 (= (list!10998 arr!18) (innerList!9125 arr!18))))

(assert (=> d!686374 d!686412))

(declare-fun d!686414 () Bool)

(declare-fun _$1!10201 () Int)

(assert (=> d!686414 (= _$1!10201 (size!21913 (list!10998 arr!18)))))

(assert (=> d!686414 true))

(assert (=> d!686414 (= (choose!13589 arr!18) _$1!10201)))

(declare-fun bs!459024 () Bool)

(assert (= bs!459024 d!686414))

(assert (=> bs!459024 m!2749579))

(assert (=> bs!459024 m!2749579))

(assert (=> bs!459024 m!2749581))

(assert (=> d!686374 d!686414))

(declare-fun d!686416 () Bool)

(declare-fun res!991391 () Bool)

(declare-fun e!1487453 () Bool)

(assert (=> d!686416 (=> (not res!991391) (not e!1487453))))

(assert (=> d!686416 (= res!991391 (<= (size!21913 (list!10998 (xs!12025 (Leaf!13307 arr!18 lt!860337)))) 512))))

(assert (=> d!686416 (= (inv!37604 (Leaf!13307 arr!18 lt!860337)) e!1487453)))

(declare-fun b!2320722 () Bool)

(declare-fun res!991392 () Bool)

(assert (=> b!2320722 (=> (not res!991392) (not e!1487453))))

(assert (=> b!2320722 (= res!991392 (= (csize!18361 (Leaf!13307 arr!18 lt!860337)) (size!21913 (list!10998 (xs!12025 (Leaf!13307 arr!18 lt!860337))))))))

(declare-fun b!2320723 () Bool)

(assert (=> b!2320723 (= e!1487453 (and (> (csize!18361 (Leaf!13307 arr!18 lt!860337)) 0) (<= (csize!18361 (Leaf!13307 arr!18 lt!860337)) 512)))))

(assert (= (and d!686416 res!991391) b!2320722))

(assert (= (and b!2320722 res!991392) b!2320723))

(declare-fun m!2749689 () Bool)

(assert (=> d!686416 m!2749689))

(assert (=> d!686416 m!2749689))

(declare-fun m!2749691 () Bool)

(assert (=> d!686416 m!2749691))

(assert (=> b!2320722 m!2749689))

(assert (=> b!2320722 m!2749689))

(assert (=> b!2320722 m!2749691))

(assert (=> b!2320671 d!686416))

(declare-fun d!686418 () Bool)

(declare-fun c!368085 () Bool)

(assert (=> d!686418 (= c!368085 ((_ is Node!9065) (left!20994 (left!20994 acc!252))))))

(declare-fun e!1487454 () Bool)

(assert (=> d!686418 (= (inv!37599 (left!20994 (left!20994 acc!252))) e!1487454)))

(declare-fun b!2320724 () Bool)

(assert (=> b!2320724 (= e!1487454 (inv!37603 (left!20994 (left!20994 acc!252))))))

(declare-fun b!2320725 () Bool)

(declare-fun e!1487455 () Bool)

(assert (=> b!2320725 (= e!1487454 e!1487455)))

(declare-fun res!991393 () Bool)

(assert (=> b!2320725 (= res!991393 (not ((_ is Leaf!13307) (left!20994 (left!20994 acc!252)))))))

(assert (=> b!2320725 (=> res!991393 e!1487455)))

(declare-fun b!2320726 () Bool)

(assert (=> b!2320726 (= e!1487455 (inv!37604 (left!20994 (left!20994 acc!252))))))

(assert (= (and d!686418 c!368085) b!2320724))

(assert (= (and d!686418 (not c!368085)) b!2320725))

(assert (= (and b!2320725 (not res!991393)) b!2320726))

(declare-fun m!2749693 () Bool)

(assert (=> b!2320724 m!2749693))

(declare-fun m!2749695 () Bool)

(assert (=> b!2320726 m!2749695))

(assert (=> b!2320698 d!686418))

(declare-fun d!686420 () Bool)

(declare-fun c!368086 () Bool)

(assert (=> d!686420 (= c!368086 ((_ is Node!9065) (right!21324 (left!20994 acc!252))))))

(declare-fun e!1487456 () Bool)

(assert (=> d!686420 (= (inv!37599 (right!21324 (left!20994 acc!252))) e!1487456)))

(declare-fun b!2320727 () Bool)

(assert (=> b!2320727 (= e!1487456 (inv!37603 (right!21324 (left!20994 acc!252))))))

(declare-fun b!2320728 () Bool)

(declare-fun e!1487457 () Bool)

(assert (=> b!2320728 (= e!1487456 e!1487457)))

(declare-fun res!991394 () Bool)

(assert (=> b!2320728 (= res!991394 (not ((_ is Leaf!13307) (right!21324 (left!20994 acc!252)))))))

(assert (=> b!2320728 (=> res!991394 e!1487457)))

(declare-fun b!2320729 () Bool)

(assert (=> b!2320729 (= e!1487457 (inv!37604 (right!21324 (left!20994 acc!252))))))

(assert (= (and d!686420 c!368086) b!2320727))

(assert (= (and d!686420 (not c!368086)) b!2320728))

(assert (= (and b!2320728 (not res!991394)) b!2320729))

(declare-fun m!2749697 () Bool)

(assert (=> b!2320727 m!2749697))

(declare-fun m!2749699 () Bool)

(assert (=> b!2320729 m!2749699))

(assert (=> b!2320698 d!686420))

(declare-fun d!686422 () Bool)

(declare-fun res!991401 () Bool)

(declare-fun e!1487460 () Bool)

(assert (=> d!686422 (=> (not res!991401) (not e!1487460))))

(assert (=> d!686422 (= res!991401 (= (csize!18360 acc!252) (+ (size!21915 (left!20994 acc!252)) (size!21915 (right!21324 acc!252)))))))

(assert (=> d!686422 (= (inv!37603 acc!252) e!1487460)))

(declare-fun b!2320736 () Bool)

(declare-fun res!991402 () Bool)

(assert (=> b!2320736 (=> (not res!991402) (not e!1487460))))

(assert (=> b!2320736 (= res!991402 (and (not (= (left!20994 acc!252) Empty!9065)) (not (= (right!21324 acc!252) Empty!9065))))))

(declare-fun b!2320737 () Bool)

(declare-fun res!991403 () Bool)

(assert (=> b!2320737 (=> (not res!991403) (not e!1487460))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2320737 (= res!991403 (= (cheight!9276 acc!252) (+ (max!0 (height!1325 (left!20994 acc!252)) (height!1325 (right!21324 acc!252))) 1)))))

(declare-fun b!2320738 () Bool)

(assert (=> b!2320738 (= e!1487460 (<= 0 (cheight!9276 acc!252)))))

(assert (= (and d!686422 res!991401) b!2320736))

(assert (= (and b!2320736 res!991402) b!2320737))

(assert (= (and b!2320737 res!991403) b!2320738))

(assert (=> d!686422 m!2749685))

(declare-fun m!2749701 () Bool)

(assert (=> d!686422 m!2749701))

(assert (=> b!2320737 m!2749595))

(assert (=> b!2320737 m!2749597))

(assert (=> b!2320737 m!2749595))

(assert (=> b!2320737 m!2749597))

(declare-fun m!2749703 () Bool)

(assert (=> b!2320737 m!2749703))

(assert (=> b!2320658 d!686422))

(assert (=> b!2320598 d!686398))

(assert (=> b!2320598 d!686400))

(declare-fun d!686424 () Bool)

(declare-fun res!991404 () Bool)

(declare-fun e!1487461 () Bool)

(assert (=> d!686424 (=> (not res!991404) (not e!1487461))))

(assert (=> d!686424 (= res!991404 (= (csize!18360 (Leaf!13307 arr!18 lt!860337)) (+ (size!21915 (left!20994 (Leaf!13307 arr!18 lt!860337))) (size!21915 (right!21324 (Leaf!13307 arr!18 lt!860337))))))))

(assert (=> d!686424 (= (inv!37603 (Leaf!13307 arr!18 lt!860337)) e!1487461)))

(declare-fun b!2320739 () Bool)

(declare-fun res!991405 () Bool)

(assert (=> b!2320739 (=> (not res!991405) (not e!1487461))))

(assert (=> b!2320739 (= res!991405 (and (not (= (left!20994 (Leaf!13307 arr!18 lt!860337)) Empty!9065)) (not (= (right!21324 (Leaf!13307 arr!18 lt!860337)) Empty!9065))))))

(declare-fun b!2320740 () Bool)

(declare-fun res!991406 () Bool)

(assert (=> b!2320740 (=> (not res!991406) (not e!1487461))))

(assert (=> b!2320740 (= res!991406 (= (cheight!9276 (Leaf!13307 arr!18 lt!860337)) (+ (max!0 (height!1325 (left!20994 (Leaf!13307 arr!18 lt!860337))) (height!1325 (right!21324 (Leaf!13307 arr!18 lt!860337)))) 1)))))

(declare-fun b!2320741 () Bool)

(assert (=> b!2320741 (= e!1487461 (<= 0 (cheight!9276 (Leaf!13307 arr!18 lt!860337))))))

(assert (= (and d!686424 res!991404) b!2320739))

(assert (= (and b!2320739 res!991405) b!2320740))

(assert (= (and b!2320740 res!991406) b!2320741))

(declare-fun m!2749705 () Bool)

(assert (=> d!686424 m!2749705))

(declare-fun m!2749707 () Bool)

(assert (=> d!686424 m!2749707))

(declare-fun m!2749709 () Bool)

(assert (=> b!2320740 m!2749709))

(declare-fun m!2749711 () Bool)

(assert (=> b!2320740 m!2749711))

(assert (=> b!2320740 m!2749709))

(assert (=> b!2320740 m!2749711))

(declare-fun m!2749713 () Bool)

(assert (=> b!2320740 m!2749713))

(assert (=> b!2320669 d!686424))

(declare-fun d!686426 () Bool)

(declare-fun res!991407 () Bool)

(declare-fun e!1487462 () Bool)

(assert (=> d!686426 (=> (not res!991407) (not e!1487462))))

(assert (=> d!686426 (= res!991407 (<= (size!21913 (list!10998 (xs!12025 (right!21324 acc!252)))) 512))))

(assert (=> d!686426 (= (inv!37604 (right!21324 acc!252)) e!1487462)))

(declare-fun b!2320742 () Bool)

(declare-fun res!991408 () Bool)

(assert (=> b!2320742 (=> (not res!991408) (not e!1487462))))

(assert (=> b!2320742 (= res!991408 (= (csize!18361 (right!21324 acc!252)) (size!21913 (list!10998 (xs!12025 (right!21324 acc!252))))))))

(declare-fun b!2320743 () Bool)

(assert (=> b!2320743 (= e!1487462 (and (> (csize!18361 (right!21324 acc!252)) 0) (<= (csize!18361 (right!21324 acc!252)) 512)))))

(assert (= (and d!686426 res!991407) b!2320742))

(assert (= (and b!2320742 res!991408) b!2320743))

(declare-fun m!2749715 () Bool)

(assert (=> d!686426 m!2749715))

(assert (=> d!686426 m!2749715))

(declare-fun m!2749717 () Bool)

(assert (=> d!686426 m!2749717))

(assert (=> b!2320742 m!2749715))

(assert (=> b!2320742 m!2749715))

(assert (=> b!2320742 m!2749717))

(assert (=> b!2320668 d!686426))

(declare-fun d!686428 () Bool)

(declare-fun lt!860350 () Int)

(assert (=> d!686428 (>= lt!860350 0)))

(declare-fun e!1487463 () Int)

(assert (=> d!686428 (= lt!860350 e!1487463)))

(declare-fun c!368087 () Bool)

(assert (=> d!686428 (= c!368087 ((_ is Nil!27660) (innerList!9125 (xs!12025 acc!252))))))

(assert (=> d!686428 (= (size!21913 (innerList!9125 (xs!12025 acc!252))) lt!860350)))

(declare-fun b!2320744 () Bool)

(assert (=> b!2320744 (= e!1487463 0)))

(declare-fun b!2320745 () Bool)

(assert (=> b!2320745 (= e!1487463 (+ 1 (size!21913 (t!207414 (innerList!9125 (xs!12025 acc!252))))))))

(assert (= (and d!686428 c!368087) b!2320744))

(assert (= (and d!686428 (not c!368087)) b!2320745))

(declare-fun m!2749719 () Bool)

(assert (=> b!2320745 m!2749719))

(assert (=> d!686378 d!686428))

(declare-fun d!686430 () Bool)

(declare-fun res!991409 () Bool)

(declare-fun e!1487464 () Bool)

(assert (=> d!686430 (=> (not res!991409) (not e!1487464))))

(assert (=> d!686430 (= res!991409 (= (csize!18360 (right!21324 acc!252)) (+ (size!21915 (left!20994 (right!21324 acc!252))) (size!21915 (right!21324 (right!21324 acc!252))))))))

(assert (=> d!686430 (= (inv!37603 (right!21324 acc!252)) e!1487464)))

(declare-fun b!2320746 () Bool)

(declare-fun res!991410 () Bool)

(assert (=> b!2320746 (=> (not res!991410) (not e!1487464))))

(assert (=> b!2320746 (= res!991410 (and (not (= (left!20994 (right!21324 acc!252)) Empty!9065)) (not (= (right!21324 (right!21324 acc!252)) Empty!9065))))))

(declare-fun b!2320747 () Bool)

(declare-fun res!991411 () Bool)

(assert (=> b!2320747 (=> (not res!991411) (not e!1487464))))

(assert (=> b!2320747 (= res!991411 (= (cheight!9276 (right!21324 acc!252)) (+ (max!0 (height!1325 (left!20994 (right!21324 acc!252))) (height!1325 (right!21324 (right!21324 acc!252)))) 1)))))

(declare-fun b!2320748 () Bool)

(assert (=> b!2320748 (= e!1487464 (<= 0 (cheight!9276 (right!21324 acc!252))))))

(assert (= (and d!686430 res!991409) b!2320746))

(assert (= (and b!2320746 res!991410) b!2320747))

(assert (= (and b!2320747 res!991411) b!2320748))

(declare-fun m!2749721 () Bool)

(assert (=> d!686430 m!2749721))

(declare-fun m!2749723 () Bool)

(assert (=> d!686430 m!2749723))

(declare-fun m!2749725 () Bool)

(assert (=> b!2320747 m!2749725))

(declare-fun m!2749727 () Bool)

(assert (=> b!2320747 m!2749727))

(assert (=> b!2320747 m!2749725))

(assert (=> b!2320747 m!2749727))

(declare-fun m!2749729 () Bool)

(assert (=> b!2320747 m!2749729))

(assert (=> b!2320666 d!686430))

(declare-fun d!686432 () Bool)

(declare-fun res!991412 () Bool)

(declare-fun e!1487465 () Bool)

(assert (=> d!686432 (=> (not res!991412) (not e!1487465))))

(assert (=> d!686432 (= res!991412 (<= (size!21913 (list!10998 (xs!12025 (left!20994 acc!252)))) 512))))

(assert (=> d!686432 (= (inv!37604 (left!20994 acc!252)) e!1487465)))

(declare-fun b!2320749 () Bool)

(declare-fun res!991413 () Bool)

(assert (=> b!2320749 (=> (not res!991413) (not e!1487465))))

(assert (=> b!2320749 (= res!991413 (= (csize!18361 (left!20994 acc!252)) (size!21913 (list!10998 (xs!12025 (left!20994 acc!252))))))))

(declare-fun b!2320750 () Bool)

(assert (=> b!2320750 (= e!1487465 (and (> (csize!18361 (left!20994 acc!252)) 0) (<= (csize!18361 (left!20994 acc!252)) 512)))))

(assert (= (and d!686432 res!991412) b!2320749))

(assert (= (and b!2320749 res!991413) b!2320750))

(declare-fun m!2749731 () Bool)

(assert (=> d!686432 m!2749731))

(assert (=> d!686432 m!2749731))

(declare-fun m!2749733 () Bool)

(assert (=> d!686432 m!2749733))

(assert (=> b!2320749 m!2749731))

(assert (=> b!2320749 m!2749731))

(assert (=> b!2320749 m!2749733))

(assert (=> b!2320665 d!686432))

(declare-fun b!2320751 () Bool)

(declare-fun res!991419 () Bool)

(declare-fun e!1487467 () Bool)

(assert (=> b!2320751 (=> (not res!991419) (not e!1487467))))

(assert (=> b!2320751 (= res!991419 (not (isEmpty!15785 (left!20994 (right!21324 acc!252)))))))

(declare-fun b!2320752 () Bool)

(assert (=> b!2320752 (= e!1487467 (not (isEmpty!15785 (right!21324 (right!21324 acc!252)))))))

(declare-fun b!2320753 () Bool)

(declare-fun res!991416 () Bool)

(assert (=> b!2320753 (=> (not res!991416) (not e!1487467))))

(assert (=> b!2320753 (= res!991416 (isBalanced!2759 (left!20994 (right!21324 acc!252))))))

(declare-fun d!686434 () Bool)

(declare-fun res!991418 () Bool)

(declare-fun e!1487466 () Bool)

(assert (=> d!686434 (=> res!991418 e!1487466)))

(assert (=> d!686434 (= res!991418 (not ((_ is Node!9065) (right!21324 acc!252))))))

(assert (=> d!686434 (= (isBalanced!2759 (right!21324 acc!252)) e!1487466)))

(declare-fun b!2320754 () Bool)

(assert (=> b!2320754 (= e!1487466 e!1487467)))

(declare-fun res!991417 () Bool)

(assert (=> b!2320754 (=> (not res!991417) (not e!1487467))))

(assert (=> b!2320754 (= res!991417 (<= (- 1) (- (height!1325 (left!20994 (right!21324 acc!252))) (height!1325 (right!21324 (right!21324 acc!252))))))))

(declare-fun b!2320755 () Bool)

(declare-fun res!991414 () Bool)

(assert (=> b!2320755 (=> (not res!991414) (not e!1487467))))

(assert (=> b!2320755 (= res!991414 (<= (- (height!1325 (left!20994 (right!21324 acc!252))) (height!1325 (right!21324 (right!21324 acc!252)))) 1))))

(declare-fun b!2320756 () Bool)

(declare-fun res!991415 () Bool)

(assert (=> b!2320756 (=> (not res!991415) (not e!1487467))))

(assert (=> b!2320756 (= res!991415 (isBalanced!2759 (right!21324 (right!21324 acc!252))))))

(assert (= (and d!686434 (not res!991418)) b!2320754))

(assert (= (and b!2320754 res!991417) b!2320755))

(assert (= (and b!2320755 res!991414) b!2320753))

(assert (= (and b!2320753 res!991416) b!2320756))

(assert (= (and b!2320756 res!991415) b!2320751))

(assert (= (and b!2320751 res!991419) b!2320752))

(assert (=> b!2320754 m!2749725))

(assert (=> b!2320754 m!2749727))

(declare-fun m!2749735 () Bool)

(assert (=> b!2320756 m!2749735))

(assert (=> b!2320755 m!2749725))

(assert (=> b!2320755 m!2749727))

(declare-fun m!2749737 () Bool)

(assert (=> b!2320752 m!2749737))

(declare-fun m!2749739 () Bool)

(assert (=> b!2320751 m!2749739))

(declare-fun m!2749741 () Bool)

(assert (=> b!2320753 m!2749741))

(assert (=> b!2320641 d!686434))

(declare-fun d!686436 () Bool)

(declare-fun lt!860351 () Int)

(assert (=> d!686436 (>= lt!860351 0)))

(declare-fun e!1487468 () Int)

(assert (=> d!686436 (= lt!860351 e!1487468)))

(declare-fun c!368088 () Bool)

(assert (=> d!686436 (= c!368088 ((_ is Nil!27660) (innerList!9125 arr!18)))))

(assert (=> d!686436 (= (size!21913 (innerList!9125 arr!18)) lt!860351)))

(declare-fun b!2320757 () Bool)

(assert (=> b!2320757 (= e!1487468 0)))

(declare-fun b!2320758 () Bool)

(assert (=> b!2320758 (= e!1487468 (+ 1 (size!21913 (t!207414 (innerList!9125 arr!18)))))))

(assert (= (and d!686436 c!368088) b!2320757))

(assert (= (and d!686436 (not c!368088)) b!2320758))

(declare-fun m!2749743 () Bool)

(assert (=> b!2320758 m!2749743))

(assert (=> d!686396 d!686436))

(declare-fun d!686438 () Bool)

(assert (=> d!686438 (= (height!1325 (left!20994 acc!252)) (ite ((_ is Empty!9065) (left!20994 acc!252)) 0 (ite ((_ is Leaf!13307) (left!20994 acc!252)) 1 (cheight!9276 (left!20994 acc!252)))))))

(assert (=> b!2320640 d!686438))

(declare-fun d!686440 () Bool)

(assert (=> d!686440 (= (height!1325 (right!21324 acc!252)) (ite ((_ is Empty!9065) (right!21324 acc!252)) 0 (ite ((_ is Leaf!13307) (right!21324 acc!252)) 1 (cheight!9276 (right!21324 acc!252)))))))

(assert (=> b!2320640 d!686440))

(declare-fun d!686442 () Bool)

(declare-fun res!991420 () Bool)

(declare-fun e!1487469 () Bool)

(assert (=> d!686442 (=> (not res!991420) (not e!1487469))))

(assert (=> d!686442 (= res!991420 (= (csize!18360 (left!20994 acc!252)) (+ (size!21915 (left!20994 (left!20994 acc!252))) (size!21915 (right!21324 (left!20994 acc!252))))))))

(assert (=> d!686442 (= (inv!37603 (left!20994 acc!252)) e!1487469)))

(declare-fun b!2320759 () Bool)

(declare-fun res!991421 () Bool)

(assert (=> b!2320759 (=> (not res!991421) (not e!1487469))))

(assert (=> b!2320759 (= res!991421 (and (not (= (left!20994 (left!20994 acc!252)) Empty!9065)) (not (= (right!21324 (left!20994 acc!252)) Empty!9065))))))

(declare-fun b!2320760 () Bool)

(declare-fun res!991422 () Bool)

(assert (=> b!2320760 (=> (not res!991422) (not e!1487469))))

(assert (=> b!2320760 (= res!991422 (= (cheight!9276 (left!20994 acc!252)) (+ (max!0 (height!1325 (left!20994 (left!20994 acc!252))) (height!1325 (right!21324 (left!20994 acc!252)))) 1)))))

(declare-fun b!2320761 () Bool)

(assert (=> b!2320761 (= e!1487469 (<= 0 (cheight!9276 (left!20994 acc!252))))))

(assert (= (and d!686442 res!991420) b!2320759))

(assert (= (and b!2320759 res!991421) b!2320760))

(assert (= (and b!2320760 res!991422) b!2320761))

(declare-fun m!2749745 () Bool)

(assert (=> d!686442 m!2749745))

(declare-fun m!2749747 () Bool)

(assert (=> d!686442 m!2749747))

(declare-fun m!2749749 () Bool)

(assert (=> b!2320760 m!2749749))

(declare-fun m!2749751 () Bool)

(assert (=> b!2320760 m!2749751))

(assert (=> b!2320760 m!2749749))

(assert (=> b!2320760 m!2749751))

(declare-fun m!2749753 () Bool)

(assert (=> b!2320760 m!2749753))

(assert (=> b!2320663 d!686442))

(declare-fun d!686444 () Bool)

(assert (=> d!686444 (= (inv!37600 (xs!12025 (right!21324 acc!252))) (<= (size!21913 (innerList!9125 (xs!12025 (right!21324 acc!252)))) 2147483647))))

(declare-fun bs!459025 () Bool)

(assert (= bs!459025 d!686444))

(declare-fun m!2749755 () Bool)

(assert (=> bs!459025 m!2749755))

(assert (=> b!2320702 d!686444))

(assert (=> b!2320639 d!686438))

(assert (=> b!2320639 d!686440))

(declare-fun d!686446 () Bool)

(declare-fun res!991423 () Bool)

(declare-fun e!1487470 () Bool)

(assert (=> d!686446 (=> (not res!991423) (not e!1487470))))

(assert (=> d!686446 (= res!991423 (<= (size!21913 (list!10998 (xs!12025 acc!252))) 512))))

(assert (=> d!686446 (= (inv!37604 acc!252) e!1487470)))

(declare-fun b!2320762 () Bool)

(declare-fun res!991424 () Bool)

(assert (=> b!2320762 (=> (not res!991424) (not e!1487470))))

(assert (=> b!2320762 (= res!991424 (= (csize!18361 acc!252) (size!21913 (list!10998 (xs!12025 acc!252)))))))

(declare-fun b!2320763 () Bool)

(assert (=> b!2320763 (= e!1487470 (and (> (csize!18361 acc!252) 0) (<= (csize!18361 acc!252) 512)))))

(assert (= (and d!686446 res!991423) b!2320762))

(assert (= (and b!2320762 res!991424) b!2320763))

(declare-fun m!2749757 () Bool)

(assert (=> d!686446 m!2749757))

(assert (=> d!686446 m!2749757))

(declare-fun m!2749759 () Bool)

(assert (=> d!686446 m!2749759))

(assert (=> b!2320762 m!2749757))

(assert (=> b!2320762 m!2749757))

(assert (=> b!2320762 m!2749759))

(assert (=> b!2320662 d!686446))

(declare-fun d!686448 () Bool)

(declare-fun c!368089 () Bool)

(assert (=> d!686448 (= c!368089 ((_ is Node!9065) (left!20994 (right!21324 acc!252))))))

(declare-fun e!1487471 () Bool)

(assert (=> d!686448 (= (inv!37599 (left!20994 (right!21324 acc!252))) e!1487471)))

(declare-fun b!2320764 () Bool)

(assert (=> b!2320764 (= e!1487471 (inv!37603 (left!20994 (right!21324 acc!252))))))

(declare-fun b!2320765 () Bool)

(declare-fun e!1487472 () Bool)

(assert (=> b!2320765 (= e!1487471 e!1487472)))

(declare-fun res!991425 () Bool)

(assert (=> b!2320765 (= res!991425 (not ((_ is Leaf!13307) (left!20994 (right!21324 acc!252)))))))

(assert (=> b!2320765 (=> res!991425 e!1487472)))

(declare-fun b!2320766 () Bool)

(assert (=> b!2320766 (= e!1487472 (inv!37604 (left!20994 (right!21324 acc!252))))))

(assert (= (and d!686448 c!368089) b!2320764))

(assert (= (and d!686448 (not c!368089)) b!2320765))

(assert (= (and b!2320765 (not res!991425)) b!2320766))

(declare-fun m!2749761 () Bool)

(assert (=> b!2320764 m!2749761))

(declare-fun m!2749763 () Bool)

(assert (=> b!2320766 m!2749763))

(assert (=> b!2320701 d!686448))

(declare-fun d!686450 () Bool)

(declare-fun c!368090 () Bool)

(assert (=> d!686450 (= c!368090 ((_ is Node!9065) (right!21324 (right!21324 acc!252))))))

(declare-fun e!1487473 () Bool)

(assert (=> d!686450 (= (inv!37599 (right!21324 (right!21324 acc!252))) e!1487473)))

(declare-fun b!2320767 () Bool)

(assert (=> b!2320767 (= e!1487473 (inv!37603 (right!21324 (right!21324 acc!252))))))

(declare-fun b!2320768 () Bool)

(declare-fun e!1487474 () Bool)

(assert (=> b!2320768 (= e!1487473 e!1487474)))

(declare-fun res!991426 () Bool)

(assert (=> b!2320768 (= res!991426 (not ((_ is Leaf!13307) (right!21324 (right!21324 acc!252)))))))

(assert (=> b!2320768 (=> res!991426 e!1487474)))

(declare-fun b!2320769 () Bool)

(assert (=> b!2320769 (= e!1487474 (inv!37604 (right!21324 (right!21324 acc!252))))))

(assert (= (and d!686450 c!368090) b!2320767))

(assert (= (and d!686450 (not c!368090)) b!2320768))

(assert (= (and b!2320768 (not res!991426)) b!2320769))

(declare-fun m!2749765 () Bool)

(assert (=> b!2320767 m!2749765))

(declare-fun m!2749767 () Bool)

(assert (=> b!2320769 m!2749767))

(assert (=> b!2320701 d!686450))

(declare-fun b!2320770 () Bool)

(declare-fun res!991432 () Bool)

(declare-fun e!1487476 () Bool)

(assert (=> b!2320770 (=> (not res!991432) (not e!1487476))))

(assert (=> b!2320770 (= res!991432 (not (isEmpty!15785 (left!20994 (left!20994 acc!252)))))))

(declare-fun b!2320771 () Bool)

(assert (=> b!2320771 (= e!1487476 (not (isEmpty!15785 (right!21324 (left!20994 acc!252)))))))

(declare-fun b!2320772 () Bool)

(declare-fun res!991429 () Bool)

(assert (=> b!2320772 (=> (not res!991429) (not e!1487476))))

(assert (=> b!2320772 (= res!991429 (isBalanced!2759 (left!20994 (left!20994 acc!252))))))

(declare-fun d!686452 () Bool)

(declare-fun res!991431 () Bool)

(declare-fun e!1487475 () Bool)

(assert (=> d!686452 (=> res!991431 e!1487475)))

(assert (=> d!686452 (= res!991431 (not ((_ is Node!9065) (left!20994 acc!252))))))

(assert (=> d!686452 (= (isBalanced!2759 (left!20994 acc!252)) e!1487475)))

(declare-fun b!2320773 () Bool)

(assert (=> b!2320773 (= e!1487475 e!1487476)))

(declare-fun res!991430 () Bool)

(assert (=> b!2320773 (=> (not res!991430) (not e!1487476))))

(assert (=> b!2320773 (= res!991430 (<= (- 1) (- (height!1325 (left!20994 (left!20994 acc!252))) (height!1325 (right!21324 (left!20994 acc!252))))))))

(declare-fun b!2320774 () Bool)

(declare-fun res!991427 () Bool)

(assert (=> b!2320774 (=> (not res!991427) (not e!1487476))))

(assert (=> b!2320774 (= res!991427 (<= (- (height!1325 (left!20994 (left!20994 acc!252))) (height!1325 (right!21324 (left!20994 acc!252)))) 1))))

(declare-fun b!2320775 () Bool)

(declare-fun res!991428 () Bool)

(assert (=> b!2320775 (=> (not res!991428) (not e!1487476))))

(assert (=> b!2320775 (= res!991428 (isBalanced!2759 (right!21324 (left!20994 acc!252))))))

(assert (= (and d!686452 (not res!991431)) b!2320773))

(assert (= (and b!2320773 res!991430) b!2320774))

(assert (= (and b!2320774 res!991427) b!2320772))

(assert (= (and b!2320772 res!991429) b!2320775))

(assert (= (and b!2320775 res!991428) b!2320770))

(assert (= (and b!2320770 res!991432) b!2320771))

(assert (=> b!2320773 m!2749749))

(assert (=> b!2320773 m!2749751))

(declare-fun m!2749769 () Bool)

(assert (=> b!2320775 m!2749769))

(assert (=> b!2320774 m!2749749))

(assert (=> b!2320774 m!2749751))

(declare-fun m!2749771 () Bool)

(assert (=> b!2320771 m!2749771))

(declare-fun m!2749773 () Bool)

(assert (=> b!2320770 m!2749773))

(declare-fun m!2749775 () Bool)

(assert (=> b!2320772 m!2749775))

(assert (=> b!2320638 d!686452))

(declare-fun d!686454 () Bool)

(declare-fun lt!860352 () Bool)

(assert (=> d!686454 (= lt!860352 (isEmpty!15787 (list!11000 (right!21324 acc!252))))))

(assert (=> d!686454 (= lt!860352 (= (size!21915 (right!21324 acc!252)) 0))))

(assert (=> d!686454 (= (isEmpty!15785 (right!21324 acc!252)) lt!860352)))

(declare-fun bs!459026 () Bool)

(assert (= bs!459026 d!686454))

(declare-fun m!2749777 () Bool)

(assert (=> bs!459026 m!2749777))

(assert (=> bs!459026 m!2749777))

(declare-fun m!2749779 () Bool)

(assert (=> bs!459026 m!2749779))

(assert (=> bs!459026 m!2749701))

(assert (=> b!2320637 d!686454))

(declare-fun b!2320776 () Bool)

(declare-fun e!1487477 () Bool)

(declare-fun tp!736444 () Bool)

(assert (=> b!2320776 (= e!1487477 (and tp_is_empty!10815 tp!736444))))

(assert (=> b!2320676 (= tp!736414 e!1487477)))

(assert (= (and b!2320676 ((_ is Cons!27660) (t!207414 (innerList!9125 arr!18)))) b!2320776))

(declare-fun tp!736447 () Bool)

(declare-fun e!1487478 () Bool)

(declare-fun tp!736446 () Bool)

(declare-fun b!2320777 () Bool)

(assert (=> b!2320777 (= e!1487478 (and (inv!37599 (left!20994 (left!20994 (left!20994 acc!252)))) tp!736446 (inv!37599 (right!21324 (left!20994 (left!20994 acc!252)))) tp!736447))))

(declare-fun b!2320779 () Bool)

(declare-fun e!1487479 () Bool)

(declare-fun tp!736445 () Bool)

(assert (=> b!2320779 (= e!1487479 tp!736445)))

(declare-fun b!2320778 () Bool)

(assert (=> b!2320778 (= e!1487478 (and (inv!37600 (xs!12025 (left!20994 (left!20994 acc!252)))) e!1487479))))

(assert (=> b!2320698 (= tp!736431 (and (inv!37599 (left!20994 (left!20994 acc!252))) e!1487478))))

(assert (= (and b!2320698 ((_ is Node!9065) (left!20994 (left!20994 acc!252)))) b!2320777))

(assert (= b!2320778 b!2320779))

(assert (= (and b!2320698 ((_ is Leaf!13307) (left!20994 (left!20994 acc!252)))) b!2320778))

(declare-fun m!2749781 () Bool)

(assert (=> b!2320777 m!2749781))

(declare-fun m!2749783 () Bool)

(assert (=> b!2320777 m!2749783))

(declare-fun m!2749785 () Bool)

(assert (=> b!2320778 m!2749785))

(assert (=> b!2320698 m!2749655))

(declare-fun e!1487480 () Bool)

(declare-fun tp!736449 () Bool)

(declare-fun b!2320780 () Bool)

(declare-fun tp!736450 () Bool)

(assert (=> b!2320780 (= e!1487480 (and (inv!37599 (left!20994 (right!21324 (left!20994 acc!252)))) tp!736449 (inv!37599 (right!21324 (right!21324 (left!20994 acc!252)))) tp!736450))))

(declare-fun b!2320782 () Bool)

(declare-fun e!1487481 () Bool)

(declare-fun tp!736448 () Bool)

(assert (=> b!2320782 (= e!1487481 tp!736448)))

(declare-fun b!2320781 () Bool)

(assert (=> b!2320781 (= e!1487480 (and (inv!37600 (xs!12025 (right!21324 (left!20994 acc!252)))) e!1487481))))

(assert (=> b!2320698 (= tp!736432 (and (inv!37599 (right!21324 (left!20994 acc!252))) e!1487480))))

(assert (= (and b!2320698 ((_ is Node!9065) (right!21324 (left!20994 acc!252)))) b!2320780))

(assert (= b!2320781 b!2320782))

(assert (= (and b!2320698 ((_ is Leaf!13307) (right!21324 (left!20994 acc!252)))) b!2320781))

(declare-fun m!2749787 () Bool)

(assert (=> b!2320780 m!2749787))

(declare-fun m!2749789 () Bool)

(assert (=> b!2320780 m!2749789))

(declare-fun m!2749791 () Bool)

(assert (=> b!2320781 m!2749791))

(assert (=> b!2320698 m!2749657))

(declare-fun b!2320783 () Bool)

(declare-fun e!1487482 () Bool)

(declare-fun tp!736451 () Bool)

(assert (=> b!2320783 (= e!1487482 (and tp_is_empty!10815 tp!736451))))

(assert (=> b!2320703 (= tp!736433 e!1487482)))

(assert (= (and b!2320703 ((_ is Cons!27660) (innerList!9125 (xs!12025 (right!21324 acc!252))))) b!2320783))

(declare-fun b!2320784 () Bool)

(declare-fun e!1487483 () Bool)

(declare-fun tp!736452 () Bool)

(assert (=> b!2320784 (= e!1487483 (and tp_is_empty!10815 tp!736452))))

(assert (=> b!2320704 (= tp!736436 e!1487483)))

(assert (= (and b!2320704 ((_ is Cons!27660) (t!207414 (innerList!9125 (xs!12025 acc!252))))) b!2320784))

(declare-fun b!2320785 () Bool)

(declare-fun e!1487484 () Bool)

(declare-fun tp!736455 () Bool)

(declare-fun tp!736454 () Bool)

(assert (=> b!2320785 (= e!1487484 (and (inv!37599 (left!20994 (left!20994 (right!21324 acc!252)))) tp!736454 (inv!37599 (right!21324 (left!20994 (right!21324 acc!252)))) tp!736455))))

(declare-fun b!2320787 () Bool)

(declare-fun e!1487485 () Bool)

(declare-fun tp!736453 () Bool)

(assert (=> b!2320787 (= e!1487485 tp!736453)))

(declare-fun b!2320786 () Bool)

(assert (=> b!2320786 (= e!1487484 (and (inv!37600 (xs!12025 (left!20994 (right!21324 acc!252)))) e!1487485))))

(assert (=> b!2320701 (= tp!736434 (and (inv!37599 (left!20994 (right!21324 acc!252))) e!1487484))))

(assert (= (and b!2320701 ((_ is Node!9065) (left!20994 (right!21324 acc!252)))) b!2320785))

(assert (= b!2320786 b!2320787))

(assert (= (and b!2320701 ((_ is Leaf!13307) (left!20994 (right!21324 acc!252)))) b!2320786))

(declare-fun m!2749793 () Bool)

(assert (=> b!2320785 m!2749793))

(declare-fun m!2749795 () Bool)

(assert (=> b!2320785 m!2749795))

(declare-fun m!2749797 () Bool)

(assert (=> b!2320786 m!2749797))

(assert (=> b!2320701 m!2749661))

(declare-fun e!1487486 () Bool)

(declare-fun tp!736458 () Bool)

(declare-fun b!2320788 () Bool)

(declare-fun tp!736457 () Bool)

(assert (=> b!2320788 (= e!1487486 (and (inv!37599 (left!20994 (right!21324 (right!21324 acc!252)))) tp!736457 (inv!37599 (right!21324 (right!21324 (right!21324 acc!252)))) tp!736458))))

(declare-fun b!2320790 () Bool)

(declare-fun e!1487487 () Bool)

(declare-fun tp!736456 () Bool)

(assert (=> b!2320790 (= e!1487487 tp!736456)))

(declare-fun b!2320789 () Bool)

(assert (=> b!2320789 (= e!1487486 (and (inv!37600 (xs!12025 (right!21324 (right!21324 acc!252)))) e!1487487))))

(assert (=> b!2320701 (= tp!736435 (and (inv!37599 (right!21324 (right!21324 acc!252))) e!1487486))))

(assert (= (and b!2320701 ((_ is Node!9065) (right!21324 (right!21324 acc!252)))) b!2320788))

(assert (= b!2320789 b!2320790))

(assert (= (and b!2320701 ((_ is Leaf!13307) (right!21324 (right!21324 acc!252)))) b!2320789))

(declare-fun m!2749799 () Bool)

(assert (=> b!2320788 m!2749799))

(declare-fun m!2749801 () Bool)

(assert (=> b!2320788 m!2749801))

(declare-fun m!2749803 () Bool)

(assert (=> b!2320789 m!2749803))

(assert (=> b!2320701 m!2749663))

(declare-fun b!2320795 () Bool)

(declare-fun e!1487490 () Bool)

(declare-fun tp!736459 () Bool)

(assert (=> b!2320795 (= e!1487490 (and tp_is_empty!10815 tp!736459))))

(assert (=> b!2320700 (= tp!736430 e!1487490)))

(assert (= (and b!2320700 ((_ is Cons!27660) (innerList!9125 (xs!12025 (left!20994 acc!252))))) b!2320795))

(check-sat (not b!2320790) (not b!2320767) (not b!2320783) (not b!2320786) (not d!686442) (not b!2320784) (not b!2320780) (not b!2320776) (not b!2320751) (not b!2320788) (not b!2320724) (not b!2320758) (not b!2320747) (not b!2320737) (not b!2320701) (not b!2320766) (not d!686406) (not b!2320756) (not b!2320770) (not b!2320722) (not b!2320726) (not b!2320775) (not d!686426) (not b!2320742) (not b!2320771) (not b!2320740) (not d!686414) (not b!2320779) (not b!2320782) (not b!2320777) (not b!2320774) (not b!2320787) (not b!2320729) (not b!2320764) (not b!2320754) (not b!2320781) (not b!2320773) (not d!686424) (not d!686444) (not b!2320789) (not d!686454) (not b!2320749) (not b!2320698) (not b!2320727) (not b!2320785) (not b!2320769) (not b!2320745) (not b!2320795) (not d!686430) (not b!2320760) (not d!686432) (not b!2320762) (not d!686422) (not d!686446) (not b!2320753) (not b!2320717) tp_is_empty!10815 (not b!2320752) (not b!2320778) (not b!2320772) (not d!686416) (not d!686408) (not b!2320755))
(check-sat)
