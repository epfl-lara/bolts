; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189104 () Bool)

(assert start!189104)

(declare-fun b!1888752 () Bool)

(declare-fun res!843522 () Bool)

(declare-fun e!1205386 () Bool)

(assert (=> b!1888752 (=> (not res!843522) (not e!1205386))))

(declare-datatypes ((B!1773 0))(
  ( (B!1774 (val!6172 Int)) )
))
(declare-datatypes ((List!21165 0))(
  ( (Nil!21083) (Cons!21083 (h!26484 B!1773) (t!175164 List!21165)) )
))
(declare-fun l2!1298 () List!21165)

(declare-fun l3!256 () List!21165)

(declare-fun subseq!429 (List!21165 List!21165) Bool)

(assert (=> b!1888752 (= res!843522 (subseq!429 l2!1298 l3!256))))

(declare-fun res!843523 () Bool)

(assert (=> start!189104 (=> (not res!843523) (not e!1205386))))

(declare-fun l1!1329 () List!21165)

(assert (=> start!189104 (= res!843523 (subseq!429 l1!1329 l2!1298))))

(assert (=> start!189104 e!1205386))

(declare-fun e!1205385 () Bool)

(assert (=> start!189104 e!1205385))

(declare-fun e!1205383 () Bool)

(assert (=> start!189104 e!1205383))

(declare-fun e!1205384 () Bool)

(assert (=> start!189104 e!1205384))

(declare-fun b!1888753 () Bool)

(declare-fun tp_is_empty!9029 () Bool)

(declare-fun tp!538456 () Bool)

(assert (=> b!1888753 (= e!1205383 (and tp_is_empty!9029 tp!538456))))

(declare-fun b!1888754 () Bool)

(declare-fun tp!538455 () Bool)

(assert (=> b!1888754 (= e!1205384 (and tp_is_empty!9029 tp!538455))))

(declare-fun b!1888755 () Bool)

(declare-fun res!843521 () Bool)

(assert (=> b!1888755 (=> (not res!843521) (not e!1205386))))

(get-info :version)

(assert (=> b!1888755 (= res!843521 (and (or (not ((_ is Cons!21083) l1!1329)) (not ((_ is Cons!21083) l2!1298)) (not ((_ is Cons!21083) l3!256)) (= (h!26484 l2!1298) (h!26484 l3!256))) ((_ is Cons!21083) l1!1329) ((_ is Cons!21083) l2!1298) ((_ is Cons!21083) l3!256) (= (h!26484 l2!1298) (h!26484 l3!256))))))

(declare-fun b!1888756 () Bool)

(declare-fun res!843519 () Bool)

(assert (=> b!1888756 (=> (not res!843519) (not e!1205386))))

(assert (=> b!1888756 (= res!843519 (subseq!429 l2!1298 (t!175164 l3!256)))))

(declare-fun b!1888757 () Bool)

(declare-fun res!843524 () Bool)

(assert (=> b!1888757 (=> (not res!843524) (not e!1205386))))

(assert (=> b!1888757 (= res!843524 (not (= (h!26484 l1!1329) (h!26484 l2!1298))))))

(declare-fun b!1888758 () Bool)

(declare-fun res!843520 () Bool)

(assert (=> b!1888758 (=> (not res!843520) (not e!1205386))))

(assert (=> b!1888758 (= res!843520 (not (subseq!429 (t!175164 l2!1298) (t!175164 l3!256))))))

(declare-fun b!1888759 () Bool)

(declare-fun tp!538454 () Bool)

(assert (=> b!1888759 (= e!1205385 (and tp_is_empty!9029 tp!538454))))

(declare-fun b!1888760 () Bool)

(declare-fun size!16723 (List!21165) Int)

(assert (=> b!1888760 (= e!1205386 (>= (size!16723 (t!175164 l3!256)) (size!16723 l3!256)))))

(declare-fun lt!723827 () Int)

(assert (=> b!1888760 (= lt!723827 (size!16723 l2!1298))))

(declare-fun lt!723828 () Int)

(assert (=> b!1888760 (= lt!723828 (size!16723 l1!1329))))

(assert (= (and start!189104 res!843523) b!1888752))

(assert (= (and b!1888752 res!843522) b!1888755))

(assert (= (and b!1888755 res!843521) b!1888758))

(assert (= (and b!1888758 res!843520) b!1888757))

(assert (= (and b!1888757 res!843524) b!1888756))

(assert (= (and b!1888756 res!843519) b!1888760))

(assert (= (and start!189104 ((_ is Cons!21083) l1!1329)) b!1888759))

(assert (= (and start!189104 ((_ is Cons!21083) l2!1298)) b!1888753))

(assert (= (and start!189104 ((_ is Cons!21083) l3!256)) b!1888754))

(declare-fun m!2319983 () Bool)

(assert (=> b!1888756 m!2319983))

(declare-fun m!2319985 () Bool)

(assert (=> start!189104 m!2319985))

(declare-fun m!2319987 () Bool)

(assert (=> b!1888758 m!2319987))

(declare-fun m!2319989 () Bool)

(assert (=> b!1888752 m!2319989))

(declare-fun m!2319991 () Bool)

(assert (=> b!1888760 m!2319991))

(declare-fun m!2319993 () Bool)

(assert (=> b!1888760 m!2319993))

(declare-fun m!2319995 () Bool)

(assert (=> b!1888760 m!2319995))

(declare-fun m!2319997 () Bool)

(assert (=> b!1888760 m!2319997))

(check-sat (not b!1888752) tp_is_empty!9029 (not start!189104) (not b!1888756) (not b!1888754) (not b!1888753) (not b!1888760) (not b!1888758) (not b!1888759))
(check-sat)
(get-model)

(declare-fun b!1888777 () Bool)

(declare-fun e!1205405 () Bool)

(declare-fun e!1205406 () Bool)

(assert (=> b!1888777 (= e!1205405 e!1205406)))

(declare-fun res!843544 () Bool)

(assert (=> b!1888777 (=> (not res!843544) (not e!1205406))))

(assert (=> b!1888777 (= res!843544 ((_ is Cons!21083) (t!175164 l3!256)))))

(declare-fun b!1888780 () Bool)

(declare-fun e!1205403 () Bool)

(assert (=> b!1888780 (= e!1205403 (subseq!429 l2!1298 (t!175164 (t!175164 l3!256))))))

(declare-fun b!1888778 () Bool)

(assert (=> b!1888778 (= e!1205406 e!1205403)))

(declare-fun res!843542 () Bool)

(assert (=> b!1888778 (=> res!843542 e!1205403)))

(declare-fun e!1205404 () Bool)

(assert (=> b!1888778 (= res!843542 e!1205404)))

(declare-fun res!843543 () Bool)

(assert (=> b!1888778 (=> (not res!843543) (not e!1205404))))

(assert (=> b!1888778 (= res!843543 (= (h!26484 l2!1298) (h!26484 (t!175164 l3!256))))))

(declare-fun d!578476 () Bool)

(declare-fun res!843541 () Bool)

(assert (=> d!578476 (=> res!843541 e!1205405)))

(assert (=> d!578476 (= res!843541 ((_ is Nil!21083) l2!1298))))

(assert (=> d!578476 (= (subseq!429 l2!1298 (t!175164 l3!256)) e!1205405)))

(declare-fun b!1888779 () Bool)

(assert (=> b!1888779 (= e!1205404 (subseq!429 (t!175164 l2!1298) (t!175164 (t!175164 l3!256))))))

(assert (= (and d!578476 (not res!843541)) b!1888777))

(assert (= (and b!1888777 res!843544) b!1888778))

(assert (= (and b!1888778 res!843543) b!1888779))

(assert (= (and b!1888778 (not res!843542)) b!1888780))

(declare-fun m!2319999 () Bool)

(assert (=> b!1888780 m!2319999))

(declare-fun m!2320001 () Bool)

(assert (=> b!1888779 m!2320001))

(assert (=> b!1888756 d!578476))

(declare-fun d!578480 () Bool)

(declare-fun lt!723831 () Int)

(assert (=> d!578480 (>= lt!723831 0)))

(declare-fun e!1205421 () Int)

(assert (=> d!578480 (= lt!723831 e!1205421)))

(declare-fun c!308185 () Bool)

(assert (=> d!578480 (= c!308185 ((_ is Nil!21083) (t!175164 l3!256)))))

(assert (=> d!578480 (= (size!16723 (t!175164 l3!256)) lt!723831)))

(declare-fun b!1888797 () Bool)

(assert (=> b!1888797 (= e!1205421 0)))

(declare-fun b!1888798 () Bool)

(assert (=> b!1888798 (= e!1205421 (+ 1 (size!16723 (t!175164 (t!175164 l3!256)))))))

(assert (= (and d!578480 c!308185) b!1888797))

(assert (= (and d!578480 (not c!308185)) b!1888798))

(declare-fun m!2320013 () Bool)

(assert (=> b!1888798 m!2320013))

(assert (=> b!1888760 d!578480))

(declare-fun d!578488 () Bool)

(declare-fun lt!723834 () Int)

(assert (=> d!578488 (>= lt!723834 0)))

(declare-fun e!1205424 () Int)

(assert (=> d!578488 (= lt!723834 e!1205424)))

(declare-fun c!308188 () Bool)

(assert (=> d!578488 (= c!308188 ((_ is Nil!21083) l3!256))))

(assert (=> d!578488 (= (size!16723 l3!256) lt!723834)))

(declare-fun b!1888803 () Bool)

(assert (=> b!1888803 (= e!1205424 0)))

(declare-fun b!1888804 () Bool)

(assert (=> b!1888804 (= e!1205424 (+ 1 (size!16723 (t!175164 l3!256))))))

(assert (= (and d!578488 c!308188) b!1888803))

(assert (= (and d!578488 (not c!308188)) b!1888804))

(assert (=> b!1888804 m!2319991))

(assert (=> b!1888760 d!578488))

(declare-fun d!578490 () Bool)

(declare-fun lt!723835 () Int)

(assert (=> d!578490 (>= lt!723835 0)))

(declare-fun e!1205425 () Int)

(assert (=> d!578490 (= lt!723835 e!1205425)))

(declare-fun c!308189 () Bool)

(assert (=> d!578490 (= c!308189 ((_ is Nil!21083) l2!1298))))

(assert (=> d!578490 (= (size!16723 l2!1298) lt!723835)))

(declare-fun b!1888805 () Bool)

(assert (=> b!1888805 (= e!1205425 0)))

(declare-fun b!1888806 () Bool)

(assert (=> b!1888806 (= e!1205425 (+ 1 (size!16723 (t!175164 l2!1298))))))

(assert (= (and d!578490 c!308189) b!1888805))

(assert (= (and d!578490 (not c!308189)) b!1888806))

(declare-fun m!2320015 () Bool)

(assert (=> b!1888806 m!2320015))

(assert (=> b!1888760 d!578490))

(declare-fun d!578492 () Bool)

(declare-fun lt!723836 () Int)

(assert (=> d!578492 (>= lt!723836 0)))

(declare-fun e!1205426 () Int)

(assert (=> d!578492 (= lt!723836 e!1205426)))

(declare-fun c!308190 () Bool)

(assert (=> d!578492 (= c!308190 ((_ is Nil!21083) l1!1329))))

(assert (=> d!578492 (= (size!16723 l1!1329) lt!723836)))

(declare-fun b!1888807 () Bool)

(assert (=> b!1888807 (= e!1205426 0)))

(declare-fun b!1888808 () Bool)

(assert (=> b!1888808 (= e!1205426 (+ 1 (size!16723 (t!175164 l1!1329))))))

(assert (= (and d!578492 c!308190) b!1888807))

(assert (= (and d!578492 (not c!308190)) b!1888808))

(declare-fun m!2320017 () Bool)

(assert (=> b!1888808 m!2320017))

(assert (=> b!1888760 d!578492))

(declare-fun b!1888809 () Bool)

(declare-fun e!1205429 () Bool)

(declare-fun e!1205430 () Bool)

(assert (=> b!1888809 (= e!1205429 e!1205430)))

(declare-fun res!843560 () Bool)

(assert (=> b!1888809 (=> (not res!843560) (not e!1205430))))

(assert (=> b!1888809 (= res!843560 ((_ is Cons!21083) l2!1298))))

(declare-fun b!1888812 () Bool)

(declare-fun e!1205427 () Bool)

(assert (=> b!1888812 (= e!1205427 (subseq!429 l1!1329 (t!175164 l2!1298)))))

(declare-fun b!1888810 () Bool)

(assert (=> b!1888810 (= e!1205430 e!1205427)))

(declare-fun res!843558 () Bool)

(assert (=> b!1888810 (=> res!843558 e!1205427)))

(declare-fun e!1205428 () Bool)

(assert (=> b!1888810 (= res!843558 e!1205428)))

(declare-fun res!843559 () Bool)

(assert (=> b!1888810 (=> (not res!843559) (not e!1205428))))

(assert (=> b!1888810 (= res!843559 (= (h!26484 l1!1329) (h!26484 l2!1298)))))

(declare-fun d!578494 () Bool)

(declare-fun res!843557 () Bool)

(assert (=> d!578494 (=> res!843557 e!1205429)))

(assert (=> d!578494 (= res!843557 ((_ is Nil!21083) l1!1329))))

(assert (=> d!578494 (= (subseq!429 l1!1329 l2!1298) e!1205429)))

(declare-fun b!1888811 () Bool)

(assert (=> b!1888811 (= e!1205428 (subseq!429 (t!175164 l1!1329) (t!175164 l2!1298)))))

(assert (= (and d!578494 (not res!843557)) b!1888809))

(assert (= (and b!1888809 res!843560) b!1888810))

(assert (= (and b!1888810 res!843559) b!1888811))

(assert (= (and b!1888810 (not res!843558)) b!1888812))

(declare-fun m!2320019 () Bool)

(assert (=> b!1888812 m!2320019))

(declare-fun m!2320021 () Bool)

(assert (=> b!1888811 m!2320021))

(assert (=> start!189104 d!578494))

(declare-fun b!1888815 () Bool)

(declare-fun e!1205434 () Bool)

(declare-fun e!1205435 () Bool)

(assert (=> b!1888815 (= e!1205434 e!1205435)))

(declare-fun res!843564 () Bool)

(assert (=> b!1888815 (=> (not res!843564) (not e!1205435))))

(assert (=> b!1888815 (= res!843564 ((_ is Cons!21083) l3!256))))

(declare-fun b!1888818 () Bool)

(declare-fun e!1205432 () Bool)

(assert (=> b!1888818 (= e!1205432 (subseq!429 l2!1298 (t!175164 l3!256)))))

(declare-fun b!1888816 () Bool)

(assert (=> b!1888816 (= e!1205435 e!1205432)))

(declare-fun res!843562 () Bool)

(assert (=> b!1888816 (=> res!843562 e!1205432)))

(declare-fun e!1205433 () Bool)

(assert (=> b!1888816 (= res!843562 e!1205433)))

(declare-fun res!843563 () Bool)

(assert (=> b!1888816 (=> (not res!843563) (not e!1205433))))

(assert (=> b!1888816 (= res!843563 (= (h!26484 l2!1298) (h!26484 l3!256)))))

(declare-fun d!578496 () Bool)

(declare-fun res!843561 () Bool)

(assert (=> d!578496 (=> res!843561 e!1205434)))

(assert (=> d!578496 (= res!843561 ((_ is Nil!21083) l2!1298))))

(assert (=> d!578496 (= (subseq!429 l2!1298 l3!256) e!1205434)))

(declare-fun b!1888817 () Bool)

(assert (=> b!1888817 (= e!1205433 (subseq!429 (t!175164 l2!1298) (t!175164 l3!256)))))

(assert (= (and d!578496 (not res!843561)) b!1888815))

(assert (= (and b!1888815 res!843564) b!1888816))

(assert (= (and b!1888816 res!843563) b!1888817))

(assert (= (and b!1888816 (not res!843562)) b!1888818))

(assert (=> b!1888818 m!2319983))

(assert (=> b!1888817 m!2319987))

(assert (=> b!1888752 d!578496))

(declare-fun b!1888821 () Bool)

(declare-fun e!1205439 () Bool)

(declare-fun e!1205440 () Bool)

(assert (=> b!1888821 (= e!1205439 e!1205440)))

(declare-fun res!843568 () Bool)

(assert (=> b!1888821 (=> (not res!843568) (not e!1205440))))

(assert (=> b!1888821 (= res!843568 ((_ is Cons!21083) (t!175164 l3!256)))))

(declare-fun b!1888824 () Bool)

(declare-fun e!1205437 () Bool)

(assert (=> b!1888824 (= e!1205437 (subseq!429 (t!175164 l2!1298) (t!175164 (t!175164 l3!256))))))

(declare-fun b!1888822 () Bool)

(assert (=> b!1888822 (= e!1205440 e!1205437)))

(declare-fun res!843566 () Bool)

(assert (=> b!1888822 (=> res!843566 e!1205437)))

(declare-fun e!1205438 () Bool)

(assert (=> b!1888822 (= res!843566 e!1205438)))

(declare-fun res!843567 () Bool)

(assert (=> b!1888822 (=> (not res!843567) (not e!1205438))))

(assert (=> b!1888822 (= res!843567 (= (h!26484 (t!175164 l2!1298)) (h!26484 (t!175164 l3!256))))))

(declare-fun d!578500 () Bool)

(declare-fun res!843565 () Bool)

(assert (=> d!578500 (=> res!843565 e!1205439)))

(assert (=> d!578500 (= res!843565 ((_ is Nil!21083) (t!175164 l2!1298)))))

(assert (=> d!578500 (= (subseq!429 (t!175164 l2!1298) (t!175164 l3!256)) e!1205439)))

(declare-fun b!1888823 () Bool)

(assert (=> b!1888823 (= e!1205438 (subseq!429 (t!175164 (t!175164 l2!1298)) (t!175164 (t!175164 l3!256))))))

(assert (= (and d!578500 (not res!843565)) b!1888821))

(assert (= (and b!1888821 res!843568) b!1888822))

(assert (= (and b!1888822 res!843567) b!1888823))

(assert (= (and b!1888822 (not res!843566)) b!1888824))

(assert (=> b!1888824 m!2320001))

(declare-fun m!2320027 () Bool)

(assert (=> b!1888823 m!2320027))

(assert (=> b!1888758 d!578500))

(declare-fun b!1888838 () Bool)

(declare-fun e!1205449 () Bool)

(declare-fun tp!538459 () Bool)

(assert (=> b!1888838 (= e!1205449 (and tp_is_empty!9029 tp!538459))))

(assert (=> b!1888759 (= tp!538454 e!1205449)))

(assert (= (and b!1888759 ((_ is Cons!21083) (t!175164 l1!1329))) b!1888838))

(declare-fun b!1888842 () Bool)

(declare-fun e!1205452 () Bool)

(declare-fun tp!538462 () Bool)

(assert (=> b!1888842 (= e!1205452 (and tp_is_empty!9029 tp!538462))))

(assert (=> b!1888754 (= tp!538455 e!1205452)))

(assert (= (and b!1888754 ((_ is Cons!21083) (t!175164 l3!256))) b!1888842))

(declare-fun b!1888843 () Bool)

(declare-fun e!1205453 () Bool)

(declare-fun tp!538463 () Bool)

(assert (=> b!1888843 (= e!1205453 (and tp_is_empty!9029 tp!538463))))

(assert (=> b!1888753 (= tp!538456 e!1205453)))

(assert (= (and b!1888753 ((_ is Cons!21083) (t!175164 l2!1298))) b!1888843))

(check-sat (not b!1888823) (not b!1888779) (not b!1888806) (not b!1888812) tp_is_empty!9029 (not b!1888817) (not b!1888780) (not b!1888824) (not b!1888818) (not b!1888798) (not b!1888804) (not b!1888808) (not b!1888842) (not b!1888843) (not b!1888838) (not b!1888811))
(check-sat)
