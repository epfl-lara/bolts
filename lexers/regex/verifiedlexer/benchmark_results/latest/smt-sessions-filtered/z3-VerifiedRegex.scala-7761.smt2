; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407770 () Bool)

(assert start!407770)

(declare-fun b!4256323 () Bool)

(declare-fun e!2643676 () Bool)

(declare-datatypes ((T!79308 0))(
  ( (T!79309 (val!15206 Int)) )
))
(declare-datatypes ((List!47335 0))(
  ( (Nil!47211) (Cons!47211 (h!52631 T!79308) (t!352928 List!47335)) )
))
(declare-datatypes ((IArray!28443 0))(
  ( (IArray!28444 (innerList!14279 List!47335)) )
))
(declare-datatypes ((Conc!14219 0))(
  ( (Node!14219 (left!34988 Conc!14219) (right!35318 Conc!14219) (csize!28668 Int) (cheight!14430 Int)) (Leaf!21981 (xs!17525 IArray!28443) (csize!28669 Int)) (Empty!14219) )
))
(declare-fun t!4386 () Conc!14219)

(declare-fun height!1846 (Conc!14219) Int)

(assert (=> b!4256323 (= e!2643676 (< (height!1846 t!4386) 0))))

(declare-fun res!1749653 () Bool)

(assert (=> start!407770 (=> (not res!1749653) (not e!2643676))))

(declare-fun isBalanced!3782 (Conc!14219) Bool)

(assert (=> start!407770 (= res!1749653 (isBalanced!3782 t!4386))))

(assert (=> start!407770 e!2643676))

(declare-fun e!2643675 () Bool)

(declare-fun inv!62036 (Conc!14219) Bool)

(assert (=> start!407770 (and (inv!62036 t!4386) e!2643675)))

(declare-fun b!4256325 () Bool)

(declare-fun e!2643674 () Bool)

(declare-fun inv!62037 (IArray!28443) Bool)

(assert (=> b!4256325 (= e!2643675 (and (inv!62037 (xs!17525 t!4386)) e!2643674))))

(declare-fun b!4256324 () Bool)

(declare-fun tp!1306226 () Bool)

(declare-fun tp!1306224 () Bool)

(assert (=> b!4256324 (= e!2643675 (and (inv!62036 (left!34988 t!4386)) tp!1306226 (inv!62036 (right!35318 t!4386)) tp!1306224))))

(declare-fun b!4256326 () Bool)

(declare-fun tp!1306225 () Bool)

(assert (=> b!4256326 (= e!2643674 tp!1306225)))

(assert (= (and start!407770 res!1749653) b!4256323))

(get-info :version)

(assert (= (and start!407770 ((_ is Node!14219) t!4386)) b!4256324))

(assert (= b!4256325 b!4256326))

(assert (= (and start!407770 ((_ is Leaf!21981) t!4386)) b!4256325))

(declare-fun m!4841523 () Bool)

(assert (=> b!4256323 m!4841523))

(declare-fun m!4841525 () Bool)

(assert (=> start!407770 m!4841525))

(declare-fun m!4841527 () Bool)

(assert (=> start!407770 m!4841527))

(declare-fun m!4841529 () Bool)

(assert (=> b!4256325 m!4841529))

(declare-fun m!4841531 () Bool)

(assert (=> b!4256324 m!4841531))

(declare-fun m!4841533 () Bool)

(assert (=> b!4256324 m!4841533))

(check-sat (not b!4256324) (not b!4256326) (not b!4256323) (not start!407770) (not b!4256325))
(check-sat)
(get-model)

(declare-fun d!1251590 () Bool)

(declare-fun size!34556 (List!47335) Int)

(assert (=> d!1251590 (= (inv!62037 (xs!17525 t!4386)) (<= (size!34556 (innerList!14279 (xs!17525 t!4386))) 2147483647))))

(declare-fun bs!598825 () Bool)

(assert (= bs!598825 d!1251590))

(declare-fun m!4841537 () Bool)

(assert (=> bs!598825 m!4841537))

(assert (=> b!4256325 d!1251590))

(declare-fun b!4256357 () Bool)

(declare-fun res!1749689 () Bool)

(declare-fun e!2643687 () Bool)

(assert (=> b!4256357 (=> (not res!1749689) (not e!2643687))))

(assert (=> b!4256357 (= res!1749689 (isBalanced!3782 (left!34988 t!4386)))))

(declare-fun b!4256358 () Bool)

(declare-fun isEmpty!27945 (Conc!14219) Bool)

(assert (=> b!4256358 (= e!2643687 (not (isEmpty!27945 (right!35318 t!4386))))))

(declare-fun b!4256359 () Bool)

(declare-fun res!1749688 () Bool)

(assert (=> b!4256359 (=> (not res!1749688) (not e!2643687))))

(assert (=> b!4256359 (= res!1749688 (isBalanced!3782 (right!35318 t!4386)))))

(declare-fun d!1251592 () Bool)

(declare-fun res!1749684 () Bool)

(declare-fun e!2643688 () Bool)

(assert (=> d!1251592 (=> res!1749684 e!2643688)))

(assert (=> d!1251592 (= res!1749684 (not ((_ is Node!14219) t!4386)))))

(assert (=> d!1251592 (= (isBalanced!3782 t!4386) e!2643688)))

(declare-fun b!4256360 () Bool)

(assert (=> b!4256360 (= e!2643688 e!2643687)))

(declare-fun res!1749685 () Bool)

(assert (=> b!4256360 (=> (not res!1749685) (not e!2643687))))

(assert (=> b!4256360 (= res!1749685 (<= (- 1) (- (height!1846 (left!34988 t!4386)) (height!1846 (right!35318 t!4386)))))))

(declare-fun b!4256361 () Bool)

(declare-fun res!1749686 () Bool)

(assert (=> b!4256361 (=> (not res!1749686) (not e!2643687))))

(assert (=> b!4256361 (= res!1749686 (not (isEmpty!27945 (left!34988 t!4386))))))

(declare-fun b!4256362 () Bool)

(declare-fun res!1749687 () Bool)

(assert (=> b!4256362 (=> (not res!1749687) (not e!2643687))))

(assert (=> b!4256362 (= res!1749687 (<= (- (height!1846 (left!34988 t!4386)) (height!1846 (right!35318 t!4386))) 1))))

(assert (= (and d!1251592 (not res!1749684)) b!4256360))

(assert (= (and b!4256360 res!1749685) b!4256362))

(assert (= (and b!4256362 res!1749687) b!4256357))

(assert (= (and b!4256357 res!1749689) b!4256359))

(assert (= (and b!4256359 res!1749688) b!4256361))

(assert (= (and b!4256361 res!1749686) b!4256358))

(declare-fun m!4841551 () Bool)

(assert (=> b!4256362 m!4841551))

(declare-fun m!4841553 () Bool)

(assert (=> b!4256362 m!4841553))

(declare-fun m!4841555 () Bool)

(assert (=> b!4256359 m!4841555))

(declare-fun m!4841557 () Bool)

(assert (=> b!4256358 m!4841557))

(assert (=> b!4256360 m!4841551))

(assert (=> b!4256360 m!4841553))

(declare-fun m!4841559 () Bool)

(assert (=> b!4256357 m!4841559))

(declare-fun m!4841561 () Bool)

(assert (=> b!4256361 m!4841561))

(assert (=> start!407770 d!1251592))

(declare-fun d!1251596 () Bool)

(declare-fun c!722689 () Bool)

(assert (=> d!1251596 (= c!722689 ((_ is Node!14219) t!4386))))

(declare-fun e!2643707 () Bool)

(assert (=> d!1251596 (= (inv!62036 t!4386) e!2643707)))

(declare-fun b!4256392 () Bool)

(declare-fun inv!62040 (Conc!14219) Bool)

(assert (=> b!4256392 (= e!2643707 (inv!62040 t!4386))))

(declare-fun b!4256393 () Bool)

(declare-fun e!2643708 () Bool)

(assert (=> b!4256393 (= e!2643707 e!2643708)))

(declare-fun res!1749697 () Bool)

(assert (=> b!4256393 (= res!1749697 (not ((_ is Leaf!21981) t!4386)))))

(assert (=> b!4256393 (=> res!1749697 e!2643708)))

(declare-fun b!4256394 () Bool)

(declare-fun inv!62041 (Conc!14219) Bool)

(assert (=> b!4256394 (= e!2643708 (inv!62041 t!4386))))

(assert (= (and d!1251596 c!722689) b!4256392))

(assert (= (and d!1251596 (not c!722689)) b!4256393))

(assert (= (and b!4256393 (not res!1749697)) b!4256394))

(declare-fun m!4841575 () Bool)

(assert (=> b!4256392 m!4841575))

(declare-fun m!4841577 () Bool)

(assert (=> b!4256394 m!4841577))

(assert (=> start!407770 d!1251596))

(declare-fun d!1251604 () Bool)

(declare-fun c!722690 () Bool)

(assert (=> d!1251604 (= c!722690 ((_ is Node!14219) (left!34988 t!4386)))))

(declare-fun e!2643711 () Bool)

(assert (=> d!1251604 (= (inv!62036 (left!34988 t!4386)) e!2643711)))

(declare-fun b!4256398 () Bool)

(assert (=> b!4256398 (= e!2643711 (inv!62040 (left!34988 t!4386)))))

(declare-fun b!4256399 () Bool)

(declare-fun e!2643712 () Bool)

(assert (=> b!4256399 (= e!2643711 e!2643712)))

(declare-fun res!1749698 () Bool)

(assert (=> b!4256399 (= res!1749698 (not ((_ is Leaf!21981) (left!34988 t!4386))))))

(assert (=> b!4256399 (=> res!1749698 e!2643712)))

(declare-fun b!4256400 () Bool)

(assert (=> b!4256400 (= e!2643712 (inv!62041 (left!34988 t!4386)))))

(assert (= (and d!1251604 c!722690) b!4256398))

(assert (= (and d!1251604 (not c!722690)) b!4256399))

(assert (= (and b!4256399 (not res!1749698)) b!4256400))

(declare-fun m!4841579 () Bool)

(assert (=> b!4256398 m!4841579))

(declare-fun m!4841581 () Bool)

(assert (=> b!4256400 m!4841581))

(assert (=> b!4256324 d!1251604))

(declare-fun d!1251606 () Bool)

(declare-fun c!722691 () Bool)

(assert (=> d!1251606 (= c!722691 ((_ is Node!14219) (right!35318 t!4386)))))

(declare-fun e!2643713 () Bool)

(assert (=> d!1251606 (= (inv!62036 (right!35318 t!4386)) e!2643713)))

(declare-fun b!4256401 () Bool)

(assert (=> b!4256401 (= e!2643713 (inv!62040 (right!35318 t!4386)))))

(declare-fun b!4256402 () Bool)

(declare-fun e!2643714 () Bool)

(assert (=> b!4256402 (= e!2643713 e!2643714)))

(declare-fun res!1749699 () Bool)

(assert (=> b!4256402 (= res!1749699 (not ((_ is Leaf!21981) (right!35318 t!4386))))))

(assert (=> b!4256402 (=> res!1749699 e!2643714)))

(declare-fun b!4256403 () Bool)

(assert (=> b!4256403 (= e!2643714 (inv!62041 (right!35318 t!4386)))))

(assert (= (and d!1251606 c!722691) b!4256401))

(assert (= (and d!1251606 (not c!722691)) b!4256402))

(assert (= (and b!4256402 (not res!1749699)) b!4256403))

(declare-fun m!4841589 () Bool)

(assert (=> b!4256401 m!4841589))

(declare-fun m!4841591 () Bool)

(assert (=> b!4256403 m!4841591))

(assert (=> b!4256324 d!1251606))

(declare-fun d!1251608 () Bool)

(assert (=> d!1251608 (= (height!1846 t!4386) (ite ((_ is Empty!14219) t!4386) 0 (ite ((_ is Leaf!21981) t!4386) 1 (cheight!14430 t!4386))))))

(assert (=> b!4256323 d!1251608))

(declare-fun b!4256416 () Bool)

(declare-fun e!2643722 () Bool)

(declare-fun tp_is_empty!22825 () Bool)

(declare-fun tp!1306244 () Bool)

(assert (=> b!4256416 (= e!2643722 (and tp_is_empty!22825 tp!1306244))))

(assert (=> b!4256326 (= tp!1306225 e!2643722)))

(assert (= (and b!4256326 ((_ is Cons!47211) (innerList!14279 (xs!17525 t!4386)))) b!4256416))

(declare-fun e!2643728 () Bool)

(declare-fun tp!1306252 () Bool)

(declare-fun tp!1306251 () Bool)

(declare-fun b!4256425 () Bool)

(assert (=> b!4256425 (= e!2643728 (and (inv!62036 (left!34988 (left!34988 t!4386))) tp!1306251 (inv!62036 (right!35318 (left!34988 t!4386))) tp!1306252))))

(declare-fun b!4256427 () Bool)

(declare-fun e!2643727 () Bool)

(declare-fun tp!1306253 () Bool)

(assert (=> b!4256427 (= e!2643727 tp!1306253)))

(declare-fun b!4256426 () Bool)

(assert (=> b!4256426 (= e!2643728 (and (inv!62037 (xs!17525 (left!34988 t!4386))) e!2643727))))

(assert (=> b!4256324 (= tp!1306226 (and (inv!62036 (left!34988 t!4386)) e!2643728))))

(assert (= (and b!4256324 ((_ is Node!14219) (left!34988 t!4386))) b!4256425))

(assert (= b!4256426 b!4256427))

(assert (= (and b!4256324 ((_ is Leaf!21981) (left!34988 t!4386))) b!4256426))

(declare-fun m!4841599 () Bool)

(assert (=> b!4256425 m!4841599))

(declare-fun m!4841601 () Bool)

(assert (=> b!4256425 m!4841601))

(declare-fun m!4841603 () Bool)

(assert (=> b!4256426 m!4841603))

(assert (=> b!4256324 m!4841531))

(declare-fun tp!1306255 () Bool)

(declare-fun tp!1306254 () Bool)

(declare-fun e!2643730 () Bool)

(declare-fun b!4256428 () Bool)

(assert (=> b!4256428 (= e!2643730 (and (inv!62036 (left!34988 (right!35318 t!4386))) tp!1306254 (inv!62036 (right!35318 (right!35318 t!4386))) tp!1306255))))

(declare-fun b!4256430 () Bool)

(declare-fun e!2643729 () Bool)

(declare-fun tp!1306256 () Bool)

(assert (=> b!4256430 (= e!2643729 tp!1306256)))

(declare-fun b!4256429 () Bool)

(assert (=> b!4256429 (= e!2643730 (and (inv!62037 (xs!17525 (right!35318 t!4386))) e!2643729))))

(assert (=> b!4256324 (= tp!1306224 (and (inv!62036 (right!35318 t!4386)) e!2643730))))

(assert (= (and b!4256324 ((_ is Node!14219) (right!35318 t!4386))) b!4256428))

(assert (= b!4256429 b!4256430))

(assert (= (and b!4256324 ((_ is Leaf!21981) (right!35318 t!4386))) b!4256429))

(declare-fun m!4841605 () Bool)

(assert (=> b!4256428 m!4841605))

(declare-fun m!4841607 () Bool)

(assert (=> b!4256428 m!4841607))

(declare-fun m!4841609 () Bool)

(assert (=> b!4256429 m!4841609))

(assert (=> b!4256324 m!4841533))

(check-sat (not b!4256425) (not b!4256357) (not b!4256362) (not b!4256324) (not b!4256392) (not b!4256428) (not b!4256398) (not b!4256416) (not b!4256401) (not b!4256429) (not b!4256400) (not b!4256403) tp_is_empty!22825 (not b!4256359) (not b!4256358) (not b!4256394) (not b!4256361) (not b!4256426) (not b!4256427) (not b!4256430) (not b!4256360) (not d!1251590))
(check-sat)
(get-model)

(declare-fun d!1251610 () Bool)

(declare-fun c!722692 () Bool)

(assert (=> d!1251610 (= c!722692 ((_ is Node!14219) (left!34988 (left!34988 t!4386))))))

(declare-fun e!2643731 () Bool)

(assert (=> d!1251610 (= (inv!62036 (left!34988 (left!34988 t!4386))) e!2643731)))

(declare-fun b!4256431 () Bool)

(assert (=> b!4256431 (= e!2643731 (inv!62040 (left!34988 (left!34988 t!4386))))))

(declare-fun b!4256432 () Bool)

(declare-fun e!2643732 () Bool)

(assert (=> b!4256432 (= e!2643731 e!2643732)))

(declare-fun res!1749700 () Bool)

(assert (=> b!4256432 (= res!1749700 (not ((_ is Leaf!21981) (left!34988 (left!34988 t!4386)))))))

(assert (=> b!4256432 (=> res!1749700 e!2643732)))

(declare-fun b!4256433 () Bool)

(assert (=> b!4256433 (= e!2643732 (inv!62041 (left!34988 (left!34988 t!4386))))))

(assert (= (and d!1251610 c!722692) b!4256431))

(assert (= (and d!1251610 (not c!722692)) b!4256432))

(assert (= (and b!4256432 (not res!1749700)) b!4256433))

(declare-fun m!4841611 () Bool)

(assert (=> b!4256431 m!4841611))

(declare-fun m!4841613 () Bool)

(assert (=> b!4256433 m!4841613))

(assert (=> b!4256425 d!1251610))

(declare-fun d!1251612 () Bool)

(declare-fun c!722693 () Bool)

(assert (=> d!1251612 (= c!722693 ((_ is Node!14219) (right!35318 (left!34988 t!4386))))))

(declare-fun e!2643733 () Bool)

(assert (=> d!1251612 (= (inv!62036 (right!35318 (left!34988 t!4386))) e!2643733)))

(declare-fun b!4256434 () Bool)

(assert (=> b!4256434 (= e!2643733 (inv!62040 (right!35318 (left!34988 t!4386))))))

(declare-fun b!4256435 () Bool)

(declare-fun e!2643734 () Bool)

(assert (=> b!4256435 (= e!2643733 e!2643734)))

(declare-fun res!1749701 () Bool)

(assert (=> b!4256435 (= res!1749701 (not ((_ is Leaf!21981) (right!35318 (left!34988 t!4386)))))))

(assert (=> b!4256435 (=> res!1749701 e!2643734)))

(declare-fun b!4256436 () Bool)

(assert (=> b!4256436 (= e!2643734 (inv!62041 (right!35318 (left!34988 t!4386))))))

(assert (= (and d!1251612 c!722693) b!4256434))

(assert (= (and d!1251612 (not c!722693)) b!4256435))

(assert (= (and b!4256435 (not res!1749701)) b!4256436))

(declare-fun m!4841615 () Bool)

(assert (=> b!4256434 m!4841615))

(declare-fun m!4841617 () Bool)

(assert (=> b!4256436 m!4841617))

(assert (=> b!4256425 d!1251612))

(declare-fun d!1251614 () Bool)

(assert (=> d!1251614 (= (height!1846 (left!34988 t!4386)) (ite ((_ is Empty!14219) (left!34988 t!4386)) 0 (ite ((_ is Leaf!21981) (left!34988 t!4386)) 1 (cheight!14430 (left!34988 t!4386)))))))

(assert (=> b!4256362 d!1251614))

(declare-fun d!1251616 () Bool)

(assert (=> d!1251616 (= (height!1846 (right!35318 t!4386)) (ite ((_ is Empty!14219) (right!35318 t!4386)) 0 (ite ((_ is Leaf!21981) (right!35318 t!4386)) 1 (cheight!14430 (right!35318 t!4386)))))))

(assert (=> b!4256362 d!1251616))

(declare-fun d!1251618 () Bool)

(declare-fun res!1749708 () Bool)

(declare-fun e!2643737 () Bool)

(assert (=> d!1251618 (=> (not res!1749708) (not e!2643737))))

(declare-fun size!34557 (Conc!14219) Int)

(assert (=> d!1251618 (= res!1749708 (= (csize!28668 (left!34988 t!4386)) (+ (size!34557 (left!34988 (left!34988 t!4386))) (size!34557 (right!35318 (left!34988 t!4386))))))))

(assert (=> d!1251618 (= (inv!62040 (left!34988 t!4386)) e!2643737)))

(declare-fun b!4256443 () Bool)

(declare-fun res!1749709 () Bool)

(assert (=> b!4256443 (=> (not res!1749709) (not e!2643737))))

(assert (=> b!4256443 (= res!1749709 (and (not (= (left!34988 (left!34988 t!4386)) Empty!14219)) (not (= (right!35318 (left!34988 t!4386)) Empty!14219))))))

(declare-fun b!4256444 () Bool)

(declare-fun res!1749710 () Bool)

(assert (=> b!4256444 (=> (not res!1749710) (not e!2643737))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4256444 (= res!1749710 (= (cheight!14430 (left!34988 t!4386)) (+ (max!0 (height!1846 (left!34988 (left!34988 t!4386))) (height!1846 (right!35318 (left!34988 t!4386)))) 1)))))

(declare-fun b!4256445 () Bool)

(assert (=> b!4256445 (= e!2643737 (<= 0 (cheight!14430 (left!34988 t!4386))))))

(assert (= (and d!1251618 res!1749708) b!4256443))

(assert (= (and b!4256443 res!1749709) b!4256444))

(assert (= (and b!4256444 res!1749710) b!4256445))

(declare-fun m!4841619 () Bool)

(assert (=> d!1251618 m!4841619))

(declare-fun m!4841621 () Bool)

(assert (=> d!1251618 m!4841621))

(declare-fun m!4841623 () Bool)

(assert (=> b!4256444 m!4841623))

(declare-fun m!4841625 () Bool)

(assert (=> b!4256444 m!4841625))

(assert (=> b!4256444 m!4841623))

(assert (=> b!4256444 m!4841625))

(declare-fun m!4841627 () Bool)

(assert (=> b!4256444 m!4841627))

(assert (=> b!4256398 d!1251618))

(declare-fun d!1251620 () Bool)

(declare-fun res!1749711 () Bool)

(declare-fun e!2643738 () Bool)

(assert (=> d!1251620 (=> (not res!1749711) (not e!2643738))))

(assert (=> d!1251620 (= res!1749711 (= (csize!28668 t!4386) (+ (size!34557 (left!34988 t!4386)) (size!34557 (right!35318 t!4386)))))))

(assert (=> d!1251620 (= (inv!62040 t!4386) e!2643738)))

(declare-fun b!4256446 () Bool)

(declare-fun res!1749712 () Bool)

(assert (=> b!4256446 (=> (not res!1749712) (not e!2643738))))

(assert (=> b!4256446 (= res!1749712 (and (not (= (left!34988 t!4386) Empty!14219)) (not (= (right!35318 t!4386) Empty!14219))))))

(declare-fun b!4256447 () Bool)

(declare-fun res!1749713 () Bool)

(assert (=> b!4256447 (=> (not res!1749713) (not e!2643738))))

(assert (=> b!4256447 (= res!1749713 (= (cheight!14430 t!4386) (+ (max!0 (height!1846 (left!34988 t!4386)) (height!1846 (right!35318 t!4386))) 1)))))

(declare-fun b!4256448 () Bool)

(assert (=> b!4256448 (= e!2643738 (<= 0 (cheight!14430 t!4386)))))

(assert (= (and d!1251620 res!1749711) b!4256446))

(assert (= (and b!4256446 res!1749712) b!4256447))

(assert (= (and b!4256447 res!1749713) b!4256448))

(declare-fun m!4841629 () Bool)

(assert (=> d!1251620 m!4841629))

(declare-fun m!4841631 () Bool)

(assert (=> d!1251620 m!4841631))

(assert (=> b!4256447 m!4841551))

(assert (=> b!4256447 m!4841553))

(assert (=> b!4256447 m!4841551))

(assert (=> b!4256447 m!4841553))

(declare-fun m!4841633 () Bool)

(assert (=> b!4256447 m!4841633))

(assert (=> b!4256392 d!1251620))

(declare-fun d!1251622 () Bool)

(declare-fun lt!1509873 () Bool)

(declare-fun isEmpty!27946 (List!47335) Bool)

(declare-fun list!17018 (Conc!14219) List!47335)

(assert (=> d!1251622 (= lt!1509873 (isEmpty!27946 (list!17018 (left!34988 t!4386))))))

(assert (=> d!1251622 (= lt!1509873 (= (size!34557 (left!34988 t!4386)) 0))))

(assert (=> d!1251622 (= (isEmpty!27945 (left!34988 t!4386)) lt!1509873)))

(declare-fun bs!598826 () Bool)

(assert (= bs!598826 d!1251622))

(declare-fun m!4841635 () Bool)

(assert (=> bs!598826 m!4841635))

(assert (=> bs!598826 m!4841635))

(declare-fun m!4841637 () Bool)

(assert (=> bs!598826 m!4841637))

(assert (=> bs!598826 m!4841629))

(assert (=> b!4256361 d!1251622))

(assert (=> b!4256360 d!1251614))

(assert (=> b!4256360 d!1251616))

(assert (=> b!4256324 d!1251604))

(assert (=> b!4256324 d!1251606))

(declare-fun b!4256449 () Bool)

(declare-fun res!1749719 () Bool)

(declare-fun e!2643739 () Bool)

(assert (=> b!4256449 (=> (not res!1749719) (not e!2643739))))

(assert (=> b!4256449 (= res!1749719 (isBalanced!3782 (left!34988 (right!35318 t!4386))))))

(declare-fun b!4256450 () Bool)

(assert (=> b!4256450 (= e!2643739 (not (isEmpty!27945 (right!35318 (right!35318 t!4386)))))))

(declare-fun b!4256451 () Bool)

(declare-fun res!1749718 () Bool)

(assert (=> b!4256451 (=> (not res!1749718) (not e!2643739))))

(assert (=> b!4256451 (= res!1749718 (isBalanced!3782 (right!35318 (right!35318 t!4386))))))

(declare-fun d!1251624 () Bool)

(declare-fun res!1749714 () Bool)

(declare-fun e!2643740 () Bool)

(assert (=> d!1251624 (=> res!1749714 e!2643740)))

(assert (=> d!1251624 (= res!1749714 (not ((_ is Node!14219) (right!35318 t!4386))))))

(assert (=> d!1251624 (= (isBalanced!3782 (right!35318 t!4386)) e!2643740)))

(declare-fun b!4256452 () Bool)

(assert (=> b!4256452 (= e!2643740 e!2643739)))

(declare-fun res!1749715 () Bool)

(assert (=> b!4256452 (=> (not res!1749715) (not e!2643739))))

(assert (=> b!4256452 (= res!1749715 (<= (- 1) (- (height!1846 (left!34988 (right!35318 t!4386))) (height!1846 (right!35318 (right!35318 t!4386))))))))

(declare-fun b!4256453 () Bool)

(declare-fun res!1749716 () Bool)

(assert (=> b!4256453 (=> (not res!1749716) (not e!2643739))))

(assert (=> b!4256453 (= res!1749716 (not (isEmpty!27945 (left!34988 (right!35318 t!4386)))))))

(declare-fun b!4256454 () Bool)

(declare-fun res!1749717 () Bool)

(assert (=> b!4256454 (=> (not res!1749717) (not e!2643739))))

(assert (=> b!4256454 (= res!1749717 (<= (- (height!1846 (left!34988 (right!35318 t!4386))) (height!1846 (right!35318 (right!35318 t!4386)))) 1))))

(assert (= (and d!1251624 (not res!1749714)) b!4256452))

(assert (= (and b!4256452 res!1749715) b!4256454))

(assert (= (and b!4256454 res!1749717) b!4256449))

(assert (= (and b!4256449 res!1749719) b!4256451))

(assert (= (and b!4256451 res!1749718) b!4256453))

(assert (= (and b!4256453 res!1749716) b!4256450))

(declare-fun m!4841639 () Bool)

(assert (=> b!4256454 m!4841639))

(declare-fun m!4841641 () Bool)

(assert (=> b!4256454 m!4841641))

(declare-fun m!4841643 () Bool)

(assert (=> b!4256451 m!4841643))

(declare-fun m!4841645 () Bool)

(assert (=> b!4256450 m!4841645))

(assert (=> b!4256452 m!4841639))

(assert (=> b!4256452 m!4841641))

(declare-fun m!4841647 () Bool)

(assert (=> b!4256449 m!4841647))

(declare-fun m!4841649 () Bool)

(assert (=> b!4256453 m!4841649))

(assert (=> b!4256359 d!1251624))

(declare-fun d!1251626 () Bool)

(declare-fun lt!1509874 () Bool)

(assert (=> d!1251626 (= lt!1509874 (isEmpty!27946 (list!17018 (right!35318 t!4386))))))

(assert (=> d!1251626 (= lt!1509874 (= (size!34557 (right!35318 t!4386)) 0))))

(assert (=> d!1251626 (= (isEmpty!27945 (right!35318 t!4386)) lt!1509874)))

(declare-fun bs!598827 () Bool)

(assert (= bs!598827 d!1251626))

(declare-fun m!4841651 () Bool)

(assert (=> bs!598827 m!4841651))

(assert (=> bs!598827 m!4841651))

(declare-fun m!4841653 () Bool)

(assert (=> bs!598827 m!4841653))

(assert (=> bs!598827 m!4841631))

(assert (=> b!4256358 d!1251626))

(declare-fun b!4256455 () Bool)

(declare-fun res!1749725 () Bool)

(declare-fun e!2643741 () Bool)

(assert (=> b!4256455 (=> (not res!1749725) (not e!2643741))))

(assert (=> b!4256455 (= res!1749725 (isBalanced!3782 (left!34988 (left!34988 t!4386))))))

(declare-fun b!4256456 () Bool)

(assert (=> b!4256456 (= e!2643741 (not (isEmpty!27945 (right!35318 (left!34988 t!4386)))))))

(declare-fun b!4256457 () Bool)

(declare-fun res!1749724 () Bool)

(assert (=> b!4256457 (=> (not res!1749724) (not e!2643741))))

(assert (=> b!4256457 (= res!1749724 (isBalanced!3782 (right!35318 (left!34988 t!4386))))))

(declare-fun d!1251628 () Bool)

(declare-fun res!1749720 () Bool)

(declare-fun e!2643742 () Bool)

(assert (=> d!1251628 (=> res!1749720 e!2643742)))

(assert (=> d!1251628 (= res!1749720 (not ((_ is Node!14219) (left!34988 t!4386))))))

(assert (=> d!1251628 (= (isBalanced!3782 (left!34988 t!4386)) e!2643742)))

(declare-fun b!4256458 () Bool)

(assert (=> b!4256458 (= e!2643742 e!2643741)))

(declare-fun res!1749721 () Bool)

(assert (=> b!4256458 (=> (not res!1749721) (not e!2643741))))

(assert (=> b!4256458 (= res!1749721 (<= (- 1) (- (height!1846 (left!34988 (left!34988 t!4386))) (height!1846 (right!35318 (left!34988 t!4386))))))))

(declare-fun b!4256459 () Bool)

(declare-fun res!1749722 () Bool)

(assert (=> b!4256459 (=> (not res!1749722) (not e!2643741))))

(assert (=> b!4256459 (= res!1749722 (not (isEmpty!27945 (left!34988 (left!34988 t!4386)))))))

(declare-fun b!4256460 () Bool)

(declare-fun res!1749723 () Bool)

(assert (=> b!4256460 (=> (not res!1749723) (not e!2643741))))

(assert (=> b!4256460 (= res!1749723 (<= (- (height!1846 (left!34988 (left!34988 t!4386))) (height!1846 (right!35318 (left!34988 t!4386)))) 1))))

(assert (= (and d!1251628 (not res!1749720)) b!4256458))

(assert (= (and b!4256458 res!1749721) b!4256460))

(assert (= (and b!4256460 res!1749723) b!4256455))

(assert (= (and b!4256455 res!1749725) b!4256457))

(assert (= (and b!4256457 res!1749724) b!4256459))

(assert (= (and b!4256459 res!1749722) b!4256456))

(assert (=> b!4256460 m!4841623))

(assert (=> b!4256460 m!4841625))

(declare-fun m!4841655 () Bool)

(assert (=> b!4256457 m!4841655))

(declare-fun m!4841657 () Bool)

(assert (=> b!4256456 m!4841657))

(assert (=> b!4256458 m!4841623))

(assert (=> b!4256458 m!4841625))

(declare-fun m!4841659 () Bool)

(assert (=> b!4256455 m!4841659))

(declare-fun m!4841661 () Bool)

(assert (=> b!4256459 m!4841661))

(assert (=> b!4256357 d!1251628))

(declare-fun d!1251630 () Bool)

(declare-fun lt!1509877 () Int)

(assert (=> d!1251630 (>= lt!1509877 0)))

(declare-fun e!2643745 () Int)

(assert (=> d!1251630 (= lt!1509877 e!2643745)))

(declare-fun c!722696 () Bool)

(assert (=> d!1251630 (= c!722696 ((_ is Nil!47211) (innerList!14279 (xs!17525 t!4386))))))

(assert (=> d!1251630 (= (size!34556 (innerList!14279 (xs!17525 t!4386))) lt!1509877)))

(declare-fun b!4256465 () Bool)

(assert (=> b!4256465 (= e!2643745 0)))

(declare-fun b!4256466 () Bool)

(assert (=> b!4256466 (= e!2643745 (+ 1 (size!34556 (t!352928 (innerList!14279 (xs!17525 t!4386))))))))

(assert (= (and d!1251630 c!722696) b!4256465))

(assert (= (and d!1251630 (not c!722696)) b!4256466))

(declare-fun m!4841663 () Bool)

(assert (=> b!4256466 m!4841663))

(assert (=> d!1251590 d!1251630))

(declare-fun d!1251632 () Bool)

(declare-fun res!1749730 () Bool)

(declare-fun e!2643748 () Bool)

(assert (=> d!1251632 (=> (not res!1749730) (not e!2643748))))

(declare-fun list!17019 (IArray!28443) List!47335)

(assert (=> d!1251632 (= res!1749730 (<= (size!34556 (list!17019 (xs!17525 (right!35318 t!4386)))) 512))))

(assert (=> d!1251632 (= (inv!62041 (right!35318 t!4386)) e!2643748)))

(declare-fun b!4256471 () Bool)

(declare-fun res!1749731 () Bool)

(assert (=> b!4256471 (=> (not res!1749731) (not e!2643748))))

(assert (=> b!4256471 (= res!1749731 (= (csize!28669 (right!35318 t!4386)) (size!34556 (list!17019 (xs!17525 (right!35318 t!4386))))))))

(declare-fun b!4256472 () Bool)

(assert (=> b!4256472 (= e!2643748 (and (> (csize!28669 (right!35318 t!4386)) 0) (<= (csize!28669 (right!35318 t!4386)) 512)))))

(assert (= (and d!1251632 res!1749730) b!4256471))

(assert (= (and b!4256471 res!1749731) b!4256472))

(declare-fun m!4841665 () Bool)

(assert (=> d!1251632 m!4841665))

(assert (=> d!1251632 m!4841665))

(declare-fun m!4841667 () Bool)

(assert (=> d!1251632 m!4841667))

(assert (=> b!4256471 m!4841665))

(assert (=> b!4256471 m!4841665))

(assert (=> b!4256471 m!4841667))

(assert (=> b!4256403 d!1251632))

(declare-fun d!1251634 () Bool)

(assert (=> d!1251634 (= (inv!62037 (xs!17525 (right!35318 t!4386))) (<= (size!34556 (innerList!14279 (xs!17525 (right!35318 t!4386)))) 2147483647))))

(declare-fun bs!598828 () Bool)

(assert (= bs!598828 d!1251634))

(declare-fun m!4841669 () Bool)

(assert (=> bs!598828 m!4841669))

(assert (=> b!4256429 d!1251634))

(declare-fun d!1251636 () Bool)

(declare-fun c!722697 () Bool)

(assert (=> d!1251636 (= c!722697 ((_ is Node!14219) (left!34988 (right!35318 t!4386))))))

(declare-fun e!2643749 () Bool)

(assert (=> d!1251636 (= (inv!62036 (left!34988 (right!35318 t!4386))) e!2643749)))

(declare-fun b!4256473 () Bool)

(assert (=> b!4256473 (= e!2643749 (inv!62040 (left!34988 (right!35318 t!4386))))))

(declare-fun b!4256474 () Bool)

(declare-fun e!2643750 () Bool)

(assert (=> b!4256474 (= e!2643749 e!2643750)))

(declare-fun res!1749732 () Bool)

(assert (=> b!4256474 (= res!1749732 (not ((_ is Leaf!21981) (left!34988 (right!35318 t!4386)))))))

(assert (=> b!4256474 (=> res!1749732 e!2643750)))

(declare-fun b!4256475 () Bool)

(assert (=> b!4256475 (= e!2643750 (inv!62041 (left!34988 (right!35318 t!4386))))))

(assert (= (and d!1251636 c!722697) b!4256473))

(assert (= (and d!1251636 (not c!722697)) b!4256474))

(assert (= (and b!4256474 (not res!1749732)) b!4256475))

(declare-fun m!4841671 () Bool)

(assert (=> b!4256473 m!4841671))

(declare-fun m!4841673 () Bool)

(assert (=> b!4256475 m!4841673))

(assert (=> b!4256428 d!1251636))

(declare-fun d!1251638 () Bool)

(declare-fun c!722698 () Bool)

(assert (=> d!1251638 (= c!722698 ((_ is Node!14219) (right!35318 (right!35318 t!4386))))))

(declare-fun e!2643751 () Bool)

(assert (=> d!1251638 (= (inv!62036 (right!35318 (right!35318 t!4386))) e!2643751)))

(declare-fun b!4256476 () Bool)

(assert (=> b!4256476 (= e!2643751 (inv!62040 (right!35318 (right!35318 t!4386))))))

(declare-fun b!4256477 () Bool)

(declare-fun e!2643752 () Bool)

(assert (=> b!4256477 (= e!2643751 e!2643752)))

(declare-fun res!1749733 () Bool)

(assert (=> b!4256477 (= res!1749733 (not ((_ is Leaf!21981) (right!35318 (right!35318 t!4386)))))))

(assert (=> b!4256477 (=> res!1749733 e!2643752)))

(declare-fun b!4256478 () Bool)

(assert (=> b!4256478 (= e!2643752 (inv!62041 (right!35318 (right!35318 t!4386))))))

(assert (= (and d!1251638 c!722698) b!4256476))

(assert (= (and d!1251638 (not c!722698)) b!4256477))

(assert (= (and b!4256477 (not res!1749733)) b!4256478))

(declare-fun m!4841675 () Bool)

(assert (=> b!4256476 m!4841675))

(declare-fun m!4841677 () Bool)

(assert (=> b!4256478 m!4841677))

(assert (=> b!4256428 d!1251638))

(declare-fun d!1251640 () Bool)

(declare-fun res!1749734 () Bool)

(declare-fun e!2643753 () Bool)

(assert (=> d!1251640 (=> (not res!1749734) (not e!2643753))))

(assert (=> d!1251640 (= res!1749734 (= (csize!28668 (right!35318 t!4386)) (+ (size!34557 (left!34988 (right!35318 t!4386))) (size!34557 (right!35318 (right!35318 t!4386))))))))

(assert (=> d!1251640 (= (inv!62040 (right!35318 t!4386)) e!2643753)))

(declare-fun b!4256479 () Bool)

(declare-fun res!1749735 () Bool)

(assert (=> b!4256479 (=> (not res!1749735) (not e!2643753))))

(assert (=> b!4256479 (= res!1749735 (and (not (= (left!34988 (right!35318 t!4386)) Empty!14219)) (not (= (right!35318 (right!35318 t!4386)) Empty!14219))))))

(declare-fun b!4256480 () Bool)

(declare-fun res!1749736 () Bool)

(assert (=> b!4256480 (=> (not res!1749736) (not e!2643753))))

(assert (=> b!4256480 (= res!1749736 (= (cheight!14430 (right!35318 t!4386)) (+ (max!0 (height!1846 (left!34988 (right!35318 t!4386))) (height!1846 (right!35318 (right!35318 t!4386)))) 1)))))

(declare-fun b!4256481 () Bool)

(assert (=> b!4256481 (= e!2643753 (<= 0 (cheight!14430 (right!35318 t!4386))))))

(assert (= (and d!1251640 res!1749734) b!4256479))

(assert (= (and b!4256479 res!1749735) b!4256480))

(assert (= (and b!4256480 res!1749736) b!4256481))

(declare-fun m!4841679 () Bool)

(assert (=> d!1251640 m!4841679))

(declare-fun m!4841681 () Bool)

(assert (=> d!1251640 m!4841681))

(assert (=> b!4256480 m!4841639))

(assert (=> b!4256480 m!4841641))

(assert (=> b!4256480 m!4841639))

(assert (=> b!4256480 m!4841641))

(declare-fun m!4841683 () Bool)

(assert (=> b!4256480 m!4841683))

(assert (=> b!4256401 d!1251640))

(declare-fun d!1251644 () Bool)

(declare-fun res!1749737 () Bool)

(declare-fun e!2643755 () Bool)

(assert (=> d!1251644 (=> (not res!1749737) (not e!2643755))))

(assert (=> d!1251644 (= res!1749737 (<= (size!34556 (list!17019 (xs!17525 (left!34988 t!4386)))) 512))))

(assert (=> d!1251644 (= (inv!62041 (left!34988 t!4386)) e!2643755)))

(declare-fun b!4256482 () Bool)

(declare-fun res!1749738 () Bool)

(assert (=> b!4256482 (=> (not res!1749738) (not e!2643755))))

(assert (=> b!4256482 (= res!1749738 (= (csize!28669 (left!34988 t!4386)) (size!34556 (list!17019 (xs!17525 (left!34988 t!4386))))))))

(declare-fun b!4256483 () Bool)

(assert (=> b!4256483 (= e!2643755 (and (> (csize!28669 (left!34988 t!4386)) 0) (<= (csize!28669 (left!34988 t!4386)) 512)))))

(assert (= (and d!1251644 res!1749737) b!4256482))

(assert (= (and b!4256482 res!1749738) b!4256483))

(declare-fun m!4841685 () Bool)

(assert (=> d!1251644 m!4841685))

(assert (=> d!1251644 m!4841685))

(declare-fun m!4841687 () Bool)

(assert (=> d!1251644 m!4841687))

(assert (=> b!4256482 m!4841685))

(assert (=> b!4256482 m!4841685))

(assert (=> b!4256482 m!4841687))

(assert (=> b!4256400 d!1251644))

(declare-fun d!1251646 () Bool)

(declare-fun res!1749740 () Bool)

(declare-fun e!2643757 () Bool)

(assert (=> d!1251646 (=> (not res!1749740) (not e!2643757))))

(assert (=> d!1251646 (= res!1749740 (<= (size!34556 (list!17019 (xs!17525 t!4386))) 512))))

(assert (=> d!1251646 (= (inv!62041 t!4386) e!2643757)))

(declare-fun b!4256487 () Bool)

(declare-fun res!1749741 () Bool)

(assert (=> b!4256487 (=> (not res!1749741) (not e!2643757))))

(assert (=> b!4256487 (= res!1749741 (= (csize!28669 t!4386) (size!34556 (list!17019 (xs!17525 t!4386)))))))

(declare-fun b!4256488 () Bool)

(assert (=> b!4256488 (= e!2643757 (and (> (csize!28669 t!4386) 0) (<= (csize!28669 t!4386) 512)))))

(assert (= (and d!1251646 res!1749740) b!4256487))

(assert (= (and b!4256487 res!1749741) b!4256488))

(declare-fun m!4841693 () Bool)

(assert (=> d!1251646 m!4841693))

(assert (=> d!1251646 m!4841693))

(declare-fun m!4841697 () Bool)

(assert (=> d!1251646 m!4841697))

(assert (=> b!4256487 m!4841693))

(assert (=> b!4256487 m!4841693))

(assert (=> b!4256487 m!4841697))

(assert (=> b!4256394 d!1251646))

(declare-fun d!1251652 () Bool)

(assert (=> d!1251652 (= (inv!62037 (xs!17525 (left!34988 t!4386))) (<= (size!34556 (innerList!14279 (xs!17525 (left!34988 t!4386)))) 2147483647))))

(declare-fun bs!598829 () Bool)

(assert (= bs!598829 d!1251652))

(declare-fun m!4841701 () Bool)

(assert (=> bs!598829 m!4841701))

(assert (=> b!4256426 d!1251652))

(declare-fun b!4256498 () Bool)

(declare-fun e!2643762 () Bool)

(declare-fun tp!1306257 () Bool)

(assert (=> b!4256498 (= e!2643762 (and tp_is_empty!22825 tp!1306257))))

(assert (=> b!4256430 (= tp!1306256 e!2643762)))

(assert (= (and b!4256430 ((_ is Cons!47211) (innerList!14279 (xs!17525 (right!35318 t!4386))))) b!4256498))

(declare-fun e!2643764 () Bool)

(declare-fun tp!1306259 () Bool)

(declare-fun b!4256499 () Bool)

(declare-fun tp!1306258 () Bool)

(assert (=> b!4256499 (= e!2643764 (and (inv!62036 (left!34988 (left!34988 (left!34988 t!4386)))) tp!1306258 (inv!62036 (right!35318 (left!34988 (left!34988 t!4386)))) tp!1306259))))

(declare-fun b!4256501 () Bool)

(declare-fun e!2643763 () Bool)

(declare-fun tp!1306260 () Bool)

(assert (=> b!4256501 (= e!2643763 tp!1306260)))

(declare-fun b!4256500 () Bool)

(assert (=> b!4256500 (= e!2643764 (and (inv!62037 (xs!17525 (left!34988 (left!34988 t!4386)))) e!2643763))))

(assert (=> b!4256425 (= tp!1306251 (and (inv!62036 (left!34988 (left!34988 t!4386))) e!2643764))))

(assert (= (and b!4256425 ((_ is Node!14219) (left!34988 (left!34988 t!4386)))) b!4256499))

(assert (= b!4256500 b!4256501))

(assert (= (and b!4256425 ((_ is Leaf!21981) (left!34988 (left!34988 t!4386)))) b!4256500))

(declare-fun m!4841707 () Bool)

(assert (=> b!4256499 m!4841707))

(declare-fun m!4841711 () Bool)

(assert (=> b!4256499 m!4841711))

(declare-fun m!4841715 () Bool)

(assert (=> b!4256500 m!4841715))

(assert (=> b!4256425 m!4841599))

(declare-fun b!4256502 () Bool)

(declare-fun tp!1306262 () Bool)

(declare-fun e!2643766 () Bool)

(declare-fun tp!1306261 () Bool)

(assert (=> b!4256502 (= e!2643766 (and (inv!62036 (left!34988 (right!35318 (left!34988 t!4386)))) tp!1306261 (inv!62036 (right!35318 (right!35318 (left!34988 t!4386)))) tp!1306262))))

(declare-fun b!4256504 () Bool)

(declare-fun e!2643765 () Bool)

(declare-fun tp!1306263 () Bool)

(assert (=> b!4256504 (= e!2643765 tp!1306263)))

(declare-fun b!4256503 () Bool)

(assert (=> b!4256503 (= e!2643766 (and (inv!62037 (xs!17525 (right!35318 (left!34988 t!4386)))) e!2643765))))

(assert (=> b!4256425 (= tp!1306252 (and (inv!62036 (right!35318 (left!34988 t!4386))) e!2643766))))

(assert (= (and b!4256425 ((_ is Node!14219) (right!35318 (left!34988 t!4386)))) b!4256502))

(assert (= b!4256503 b!4256504))

(assert (= (and b!4256425 ((_ is Leaf!21981) (right!35318 (left!34988 t!4386)))) b!4256503))

(declare-fun m!4841721 () Bool)

(assert (=> b!4256502 m!4841721))

(declare-fun m!4841723 () Bool)

(assert (=> b!4256502 m!4841723))

(declare-fun m!4841725 () Bool)

(assert (=> b!4256503 m!4841725))

(assert (=> b!4256425 m!4841601))

(declare-fun tp!1306265 () Bool)

(declare-fun b!4256505 () Bool)

(declare-fun e!2643768 () Bool)

(declare-fun tp!1306264 () Bool)

(assert (=> b!4256505 (= e!2643768 (and (inv!62036 (left!34988 (left!34988 (right!35318 t!4386)))) tp!1306264 (inv!62036 (right!35318 (left!34988 (right!35318 t!4386)))) tp!1306265))))

(declare-fun b!4256507 () Bool)

(declare-fun e!2643767 () Bool)

(declare-fun tp!1306266 () Bool)

(assert (=> b!4256507 (= e!2643767 tp!1306266)))

(declare-fun b!4256506 () Bool)

(assert (=> b!4256506 (= e!2643768 (and (inv!62037 (xs!17525 (left!34988 (right!35318 t!4386)))) e!2643767))))

(assert (=> b!4256428 (= tp!1306254 (and (inv!62036 (left!34988 (right!35318 t!4386))) e!2643768))))

(assert (= (and b!4256428 ((_ is Node!14219) (left!34988 (right!35318 t!4386)))) b!4256505))

(assert (= b!4256506 b!4256507))

(assert (= (and b!4256428 ((_ is Leaf!21981) (left!34988 (right!35318 t!4386)))) b!4256506))

(declare-fun m!4841727 () Bool)

(assert (=> b!4256505 m!4841727))

(declare-fun m!4841729 () Bool)

(assert (=> b!4256505 m!4841729))

(declare-fun m!4841731 () Bool)

(assert (=> b!4256506 m!4841731))

(assert (=> b!4256428 m!4841605))

(declare-fun tp!1306268 () Bool)

(declare-fun e!2643770 () Bool)

(declare-fun b!4256508 () Bool)

(declare-fun tp!1306267 () Bool)

(assert (=> b!4256508 (= e!2643770 (and (inv!62036 (left!34988 (right!35318 (right!35318 t!4386)))) tp!1306267 (inv!62036 (right!35318 (right!35318 (right!35318 t!4386)))) tp!1306268))))

(declare-fun b!4256510 () Bool)

(declare-fun e!2643769 () Bool)

(declare-fun tp!1306269 () Bool)

(assert (=> b!4256510 (= e!2643769 tp!1306269)))

(declare-fun b!4256509 () Bool)

(assert (=> b!4256509 (= e!2643770 (and (inv!62037 (xs!17525 (right!35318 (right!35318 t!4386)))) e!2643769))))

(assert (=> b!4256428 (= tp!1306255 (and (inv!62036 (right!35318 (right!35318 t!4386))) e!2643770))))

(assert (= (and b!4256428 ((_ is Node!14219) (right!35318 (right!35318 t!4386)))) b!4256508))

(assert (= b!4256509 b!4256510))

(assert (= (and b!4256428 ((_ is Leaf!21981) (right!35318 (right!35318 t!4386)))) b!4256509))

(declare-fun m!4841733 () Bool)

(assert (=> b!4256508 m!4841733))

(declare-fun m!4841735 () Bool)

(assert (=> b!4256508 m!4841735))

(declare-fun m!4841737 () Bool)

(assert (=> b!4256509 m!4841737))

(assert (=> b!4256428 m!4841607))

(declare-fun b!4256511 () Bool)

(declare-fun e!2643771 () Bool)

(declare-fun tp!1306270 () Bool)

(assert (=> b!4256511 (= e!2643771 (and tp_is_empty!22825 tp!1306270))))

(assert (=> b!4256416 (= tp!1306244 e!2643771)))

(assert (= (and b!4256416 ((_ is Cons!47211) (t!352928 (innerList!14279 (xs!17525 t!4386))))) b!4256511))

(declare-fun b!4256512 () Bool)

(declare-fun e!2643772 () Bool)

(declare-fun tp!1306271 () Bool)

(assert (=> b!4256512 (= e!2643772 (and tp_is_empty!22825 tp!1306271))))

(assert (=> b!4256427 (= tp!1306253 e!2643772)))

(assert (= (and b!4256427 ((_ is Cons!47211) (innerList!14279 (xs!17525 (left!34988 t!4386))))) b!4256512))

(check-sat (not b!4256510) (not b!4256476) (not b!4256450) (not b!4256466) (not b!4256455) (not b!4256453) (not b!4256499) (not b!4256444) (not d!1251644) (not b!4256504) (not d!1251634) (not b!4256452) (not b!4256507) (not b!4256508) (not d!1251620) (not b!4256511) (not d!1251626) (not b!4256480) (not b!4256425) (not b!4256431) (not d!1251618) (not b!4256498) (not b!4256509) (not b!4256434) (not b!4256501) (not b!4256478) (not d!1251640) (not b!4256436) (not b!4256506) (not b!4256449) tp_is_empty!22825 (not b!4256505) (not b!4256433) (not b!4256487) (not d!1251632) (not b!4256451) (not b!4256500) (not b!4256503) (not b!4256457) (not b!4256473) (not d!1251646) (not b!4256459) (not b!4256458) (not b!4256512) (not d!1251652) (not b!4256428) (not d!1251622) (not b!4256456) (not b!4256454) (not b!4256475) (not b!4256460) (not b!4256502) (not b!4256471) (not b!4256482) (not b!4256447))
(check-sat)
