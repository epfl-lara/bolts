; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755100 () Bool)

(assert start!755100)

(declare-fun b!8021633 () Bool)

(declare-fun res!3171892 () Bool)

(declare-fun e!4725410 () Bool)

(assert (=> b!8021633 (=> (not res!3171892) (not e!4725410))))

(declare-datatypes ((B!4193 0))(
  ( (B!4194 (val!32486 Int)) )
))
(declare-datatypes ((List!74998 0))(
  ( (Nil!74874) (Cons!74874 (h!81322 B!4193) (t!390741 List!74998)) )
))
(declare-fun p1!173 () List!74998)

(declare-fun p2!173 () List!74998)

(declare-fun size!43659 (List!74998) Int)

(assert (=> b!8021633 (= res!3171892 (= (size!43659 p1!173) (size!43659 p2!173)))))

(declare-fun b!8021635 () Bool)

(get-info :version)

(assert (=> b!8021635 (= e!4725410 (and (not ((_ is Cons!74874) p1!173)) (not (= p1!173 p2!173))))))

(declare-fun b!8021636 () Bool)

(declare-fun res!3171891 () Bool)

(assert (=> b!8021636 (=> (not res!3171891) (not e!4725410))))

(declare-fun l!3353 () List!74998)

(declare-fun isPrefix!6805 (List!74998 List!74998) Bool)

(assert (=> b!8021636 (= res!3171891 (isPrefix!6805 p2!173 l!3353))))

(declare-fun res!3171890 () Bool)

(assert (=> start!755100 (=> (not res!3171890) (not e!4725410))))

(assert (=> start!755100 (= res!3171890 (isPrefix!6805 p1!173 l!3353))))

(assert (=> start!755100 e!4725410))

(declare-fun e!4725408 () Bool)

(assert (=> start!755100 e!4725408))

(declare-fun e!4725411 () Bool)

(assert (=> start!755100 e!4725411))

(declare-fun e!4725409 () Bool)

(assert (=> start!755100 e!4725409))

(declare-fun b!8021634 () Bool)

(declare-fun tp_is_empty!54081 () Bool)

(declare-fun tp!2400748 () Bool)

(assert (=> b!8021634 (= e!4725411 (and tp_is_empty!54081 tp!2400748))))

(declare-fun b!8021637 () Bool)

(declare-fun tp!2400750 () Bool)

(assert (=> b!8021637 (= e!4725408 (and tp_is_empty!54081 tp!2400750))))

(declare-fun b!8021638 () Bool)

(declare-fun tp!2400749 () Bool)

(assert (=> b!8021638 (= e!4725409 (and tp_is_empty!54081 tp!2400749))))

(assert (= (and start!755100 res!3171890) b!8021636))

(assert (= (and b!8021636 res!3171891) b!8021633))

(assert (= (and b!8021633 res!3171892) b!8021635))

(assert (= (and start!755100 ((_ is Cons!74874) p1!173)) b!8021637))

(assert (= (and start!755100 ((_ is Cons!74874) l!3353)) b!8021634))

(assert (= (and start!755100 ((_ is Cons!74874) p2!173)) b!8021638))

(declare-fun m!8384518 () Bool)

(assert (=> b!8021633 m!8384518))

(declare-fun m!8384520 () Bool)

(assert (=> b!8021633 m!8384520))

(declare-fun m!8384522 () Bool)

(assert (=> b!8021636 m!8384522))

(declare-fun m!8384524 () Bool)

(assert (=> start!755100 m!8384524))

(check-sat (not b!8021636) (not b!8021638) (not b!8021634) (not start!755100) (not b!8021633) (not b!8021637) tp_is_empty!54081)
(check-sat)
(get-model)

(declare-fun d!2392065 () Bool)

(declare-fun lt!2720100 () Int)

(assert (=> d!2392065 (>= lt!2720100 0)))

(declare-fun e!4725414 () Int)

(assert (=> d!2392065 (= lt!2720100 e!4725414)))

(declare-fun c!1472159 () Bool)

(assert (=> d!2392065 (= c!1472159 ((_ is Nil!74874) p1!173))))

(assert (=> d!2392065 (= (size!43659 p1!173) lt!2720100)))

(declare-fun b!8021643 () Bool)

(assert (=> b!8021643 (= e!4725414 0)))

(declare-fun b!8021644 () Bool)

(assert (=> b!8021644 (= e!4725414 (+ 1 (size!43659 (t!390741 p1!173))))))

(assert (= (and d!2392065 c!1472159) b!8021643))

(assert (= (and d!2392065 (not c!1472159)) b!8021644))

(declare-fun m!8384526 () Bool)

(assert (=> b!8021644 m!8384526))

(assert (=> b!8021633 d!2392065))

(declare-fun d!2392069 () Bool)

(declare-fun lt!2720101 () Int)

(assert (=> d!2392069 (>= lt!2720101 0)))

(declare-fun e!4725415 () Int)

(assert (=> d!2392069 (= lt!2720101 e!4725415)))

(declare-fun c!1472160 () Bool)

(assert (=> d!2392069 (= c!1472160 ((_ is Nil!74874) p2!173))))

(assert (=> d!2392069 (= (size!43659 p2!173) lt!2720101)))

(declare-fun b!8021645 () Bool)

(assert (=> b!8021645 (= e!4725415 0)))

(declare-fun b!8021646 () Bool)

(assert (=> b!8021646 (= e!4725415 (+ 1 (size!43659 (t!390741 p2!173))))))

(assert (= (and d!2392069 c!1472160) b!8021645))

(assert (= (and d!2392069 (not c!1472160)) b!8021646))

(declare-fun m!8384528 () Bool)

(assert (=> b!8021646 m!8384528))

(assert (=> b!8021633 d!2392069))

(declare-fun b!8021665 () Bool)

(declare-fun e!4725427 () Bool)

(declare-fun tail!15947 (List!74998) List!74998)

(assert (=> b!8021665 (= e!4725427 (isPrefix!6805 (tail!15947 p1!173) (tail!15947 l!3353)))))

(declare-fun b!8021663 () Bool)

(declare-fun e!4725428 () Bool)

(assert (=> b!8021663 (= e!4725428 e!4725427)))

(declare-fun res!3171904 () Bool)

(assert (=> b!8021663 (=> (not res!3171904) (not e!4725427))))

(assert (=> b!8021663 (= res!3171904 (not ((_ is Nil!74874) l!3353)))))

(declare-fun b!8021666 () Bool)

(declare-fun e!4725426 () Bool)

(assert (=> b!8021666 (= e!4725426 (>= (size!43659 l!3353) (size!43659 p1!173)))))

(declare-fun d!2392071 () Bool)

(assert (=> d!2392071 e!4725426))

(declare-fun res!3171902 () Bool)

(assert (=> d!2392071 (=> res!3171902 e!4725426)))

(declare-fun lt!2720108 () Bool)

(assert (=> d!2392071 (= res!3171902 (not lt!2720108))))

(assert (=> d!2392071 (= lt!2720108 e!4725428)))

(declare-fun res!3171901 () Bool)

(assert (=> d!2392071 (=> res!3171901 e!4725428)))

(assert (=> d!2392071 (= res!3171901 ((_ is Nil!74874) p1!173))))

(assert (=> d!2392071 (= (isPrefix!6805 p1!173 l!3353) lt!2720108)))

(declare-fun b!8021664 () Bool)

(declare-fun res!3171903 () Bool)

(assert (=> b!8021664 (=> (not res!3171903) (not e!4725427))))

(declare-fun head!16412 (List!74998) B!4193)

(assert (=> b!8021664 (= res!3171903 (= (head!16412 p1!173) (head!16412 l!3353)))))

(assert (= (and d!2392071 (not res!3171901)) b!8021663))

(assert (= (and b!8021663 res!3171904) b!8021664))

(assert (= (and b!8021664 res!3171903) b!8021665))

(assert (= (and d!2392071 (not res!3171902)) b!8021666))

(declare-fun m!8384534 () Bool)

(assert (=> b!8021665 m!8384534))

(declare-fun m!8384536 () Bool)

(assert (=> b!8021665 m!8384536))

(assert (=> b!8021665 m!8384534))

(assert (=> b!8021665 m!8384536))

(declare-fun m!8384538 () Bool)

(assert (=> b!8021665 m!8384538))

(declare-fun m!8384540 () Bool)

(assert (=> b!8021666 m!8384540))

(assert (=> b!8021666 m!8384518))

(declare-fun m!8384542 () Bool)

(assert (=> b!8021664 m!8384542))

(declare-fun m!8384544 () Bool)

(assert (=> b!8021664 m!8384544))

(assert (=> start!755100 d!2392071))

(declare-fun b!8021669 () Bool)

(declare-fun e!4725430 () Bool)

(assert (=> b!8021669 (= e!4725430 (isPrefix!6805 (tail!15947 p2!173) (tail!15947 l!3353)))))

(declare-fun b!8021667 () Bool)

(declare-fun e!4725431 () Bool)

(assert (=> b!8021667 (= e!4725431 e!4725430)))

(declare-fun res!3171908 () Bool)

(assert (=> b!8021667 (=> (not res!3171908) (not e!4725430))))

(assert (=> b!8021667 (= res!3171908 (not ((_ is Nil!74874) l!3353)))))

(declare-fun b!8021670 () Bool)

(declare-fun e!4725429 () Bool)

(assert (=> b!8021670 (= e!4725429 (>= (size!43659 l!3353) (size!43659 p2!173)))))

(declare-fun d!2392077 () Bool)

(assert (=> d!2392077 e!4725429))

(declare-fun res!3171906 () Bool)

(assert (=> d!2392077 (=> res!3171906 e!4725429)))

(declare-fun lt!2720109 () Bool)

(assert (=> d!2392077 (= res!3171906 (not lt!2720109))))

(assert (=> d!2392077 (= lt!2720109 e!4725431)))

(declare-fun res!3171905 () Bool)

(assert (=> d!2392077 (=> res!3171905 e!4725431)))

(assert (=> d!2392077 (= res!3171905 ((_ is Nil!74874) p2!173))))

(assert (=> d!2392077 (= (isPrefix!6805 p2!173 l!3353) lt!2720109)))

(declare-fun b!8021668 () Bool)

(declare-fun res!3171907 () Bool)

(assert (=> b!8021668 (=> (not res!3171907) (not e!4725430))))

(assert (=> b!8021668 (= res!3171907 (= (head!16412 p2!173) (head!16412 l!3353)))))

(assert (= (and d!2392077 (not res!3171905)) b!8021667))

(assert (= (and b!8021667 res!3171908) b!8021668))

(assert (= (and b!8021668 res!3171907) b!8021669))

(assert (= (and d!2392077 (not res!3171906)) b!8021670))

(declare-fun m!8384546 () Bool)

(assert (=> b!8021669 m!8384546))

(assert (=> b!8021669 m!8384536))

(assert (=> b!8021669 m!8384546))

(assert (=> b!8021669 m!8384536))

(declare-fun m!8384548 () Bool)

(assert (=> b!8021669 m!8384548))

(assert (=> b!8021670 m!8384540))

(assert (=> b!8021670 m!8384520))

(declare-fun m!8384550 () Bool)

(assert (=> b!8021668 m!8384550))

(assert (=> b!8021668 m!8384544))

(assert (=> b!8021636 d!2392077))

(declare-fun b!8021675 () Bool)

(declare-fun e!4725434 () Bool)

(declare-fun tp!2400753 () Bool)

(assert (=> b!8021675 (= e!4725434 (and tp_is_empty!54081 tp!2400753))))

(assert (=> b!8021638 (= tp!2400749 e!4725434)))

(assert (= (and b!8021638 ((_ is Cons!74874) (t!390741 p2!173))) b!8021675))

(declare-fun b!8021676 () Bool)

(declare-fun e!4725435 () Bool)

(declare-fun tp!2400754 () Bool)

(assert (=> b!8021676 (= e!4725435 (and tp_is_empty!54081 tp!2400754))))

(assert (=> b!8021634 (= tp!2400748 e!4725435)))

(assert (= (and b!8021634 ((_ is Cons!74874) (t!390741 l!3353))) b!8021676))

(declare-fun b!8021677 () Bool)

(declare-fun e!4725436 () Bool)

(declare-fun tp!2400755 () Bool)

(assert (=> b!8021677 (= e!4725436 (and tp_is_empty!54081 tp!2400755))))

(assert (=> b!8021637 (= tp!2400750 e!4725436)))

(assert (= (and b!8021637 ((_ is Cons!74874) (t!390741 p1!173))) b!8021677))

(check-sat (not b!8021677) (not b!8021644) (not b!8021670) (not b!8021664) tp_is_empty!54081 (not b!8021646) (not b!8021675) (not b!8021676) (not b!8021666) (not b!8021665) (not b!8021669) (not b!8021668))
(check-sat)
(get-model)

(declare-fun d!2392081 () Bool)

(declare-fun lt!2720114 () Int)

(assert (=> d!2392081 (>= lt!2720114 0)))

(declare-fun e!4725454 () Int)

(assert (=> d!2392081 (= lt!2720114 e!4725454)))

(declare-fun c!1472165 () Bool)

(assert (=> d!2392081 (= c!1472165 ((_ is Nil!74874) (t!390741 p2!173)))))

(assert (=> d!2392081 (= (size!43659 (t!390741 p2!173)) lt!2720114)))

(declare-fun b!8021701 () Bool)

(assert (=> b!8021701 (= e!4725454 0)))

(declare-fun b!8021702 () Bool)

(assert (=> b!8021702 (= e!4725454 (+ 1 (size!43659 (t!390741 (t!390741 p2!173)))))))

(assert (= (and d!2392081 c!1472165) b!8021701))

(assert (= (and d!2392081 (not c!1472165)) b!8021702))

(declare-fun m!8384570 () Bool)

(assert (=> b!8021702 m!8384570))

(assert (=> b!8021646 d!2392081))

(declare-fun d!2392083 () Bool)

(declare-fun lt!2720115 () Int)

(assert (=> d!2392083 (>= lt!2720115 0)))

(declare-fun e!4725455 () Int)

(assert (=> d!2392083 (= lt!2720115 e!4725455)))

(declare-fun c!1472166 () Bool)

(assert (=> d!2392083 (= c!1472166 ((_ is Nil!74874) l!3353))))

(assert (=> d!2392083 (= (size!43659 l!3353) lt!2720115)))

(declare-fun b!8021703 () Bool)

(assert (=> b!8021703 (= e!4725455 0)))

(declare-fun b!8021704 () Bool)

(assert (=> b!8021704 (= e!4725455 (+ 1 (size!43659 (t!390741 l!3353))))))

(assert (= (and d!2392083 c!1472166) b!8021703))

(assert (= (and d!2392083 (not c!1472166)) b!8021704))

(declare-fun m!8384572 () Bool)

(assert (=> b!8021704 m!8384572))

(assert (=> b!8021670 d!2392083))

(assert (=> b!8021670 d!2392069))

(declare-fun b!8021707 () Bool)

(declare-fun e!4725457 () Bool)

(assert (=> b!8021707 (= e!4725457 (isPrefix!6805 (tail!15947 (tail!15947 p1!173)) (tail!15947 (tail!15947 l!3353))))))

(declare-fun b!8021705 () Bool)

(declare-fun e!4725458 () Bool)

(assert (=> b!8021705 (= e!4725458 e!4725457)))

(declare-fun res!3171928 () Bool)

(assert (=> b!8021705 (=> (not res!3171928) (not e!4725457))))

(assert (=> b!8021705 (= res!3171928 (not ((_ is Nil!74874) (tail!15947 l!3353))))))

(declare-fun b!8021708 () Bool)

(declare-fun e!4725456 () Bool)

(assert (=> b!8021708 (= e!4725456 (>= (size!43659 (tail!15947 l!3353)) (size!43659 (tail!15947 p1!173))))))

(declare-fun d!2392085 () Bool)

(assert (=> d!2392085 e!4725456))

(declare-fun res!3171926 () Bool)

(assert (=> d!2392085 (=> res!3171926 e!4725456)))

(declare-fun lt!2720116 () Bool)

(assert (=> d!2392085 (= res!3171926 (not lt!2720116))))

(assert (=> d!2392085 (= lt!2720116 e!4725458)))

(declare-fun res!3171925 () Bool)

(assert (=> d!2392085 (=> res!3171925 e!4725458)))

(assert (=> d!2392085 (= res!3171925 ((_ is Nil!74874) (tail!15947 p1!173)))))

(assert (=> d!2392085 (= (isPrefix!6805 (tail!15947 p1!173) (tail!15947 l!3353)) lt!2720116)))

(declare-fun b!8021706 () Bool)

(declare-fun res!3171927 () Bool)

(assert (=> b!8021706 (=> (not res!3171927) (not e!4725457))))

(assert (=> b!8021706 (= res!3171927 (= (head!16412 (tail!15947 p1!173)) (head!16412 (tail!15947 l!3353))))))

(assert (= (and d!2392085 (not res!3171925)) b!8021705))

(assert (= (and b!8021705 res!3171928) b!8021706))

(assert (= (and b!8021706 res!3171927) b!8021707))

(assert (= (and d!2392085 (not res!3171926)) b!8021708))

(assert (=> b!8021707 m!8384534))

(declare-fun m!8384574 () Bool)

(assert (=> b!8021707 m!8384574))

(assert (=> b!8021707 m!8384536))

(declare-fun m!8384576 () Bool)

(assert (=> b!8021707 m!8384576))

(assert (=> b!8021707 m!8384574))

(assert (=> b!8021707 m!8384576))

(declare-fun m!8384578 () Bool)

(assert (=> b!8021707 m!8384578))

(assert (=> b!8021708 m!8384536))

(declare-fun m!8384580 () Bool)

(assert (=> b!8021708 m!8384580))

(assert (=> b!8021708 m!8384534))

(declare-fun m!8384582 () Bool)

(assert (=> b!8021708 m!8384582))

(assert (=> b!8021706 m!8384534))

(declare-fun m!8384584 () Bool)

(assert (=> b!8021706 m!8384584))

(assert (=> b!8021706 m!8384536))

(declare-fun m!8384586 () Bool)

(assert (=> b!8021706 m!8384586))

(assert (=> b!8021665 d!2392085))

(declare-fun d!2392087 () Bool)

(assert (=> d!2392087 (= (tail!15947 p1!173) (t!390741 p1!173))))

(assert (=> b!8021665 d!2392087))

(declare-fun d!2392089 () Bool)

(assert (=> d!2392089 (= (tail!15947 l!3353) (t!390741 l!3353))))

(assert (=> b!8021665 d!2392089))

(assert (=> b!8021666 d!2392083))

(assert (=> b!8021666 d!2392065))

(declare-fun d!2392091 () Bool)

(declare-fun lt!2720117 () Int)

(assert (=> d!2392091 (>= lt!2720117 0)))

(declare-fun e!4725459 () Int)

(assert (=> d!2392091 (= lt!2720117 e!4725459)))

(declare-fun c!1472167 () Bool)

(assert (=> d!2392091 (= c!1472167 ((_ is Nil!74874) (t!390741 p1!173)))))

(assert (=> d!2392091 (= (size!43659 (t!390741 p1!173)) lt!2720117)))

(declare-fun b!8021709 () Bool)

(assert (=> b!8021709 (= e!4725459 0)))

(declare-fun b!8021710 () Bool)

(assert (=> b!8021710 (= e!4725459 (+ 1 (size!43659 (t!390741 (t!390741 p1!173)))))))

(assert (= (and d!2392091 c!1472167) b!8021709))

(assert (= (and d!2392091 (not c!1472167)) b!8021710))

(declare-fun m!8384588 () Bool)

(assert (=> b!8021710 m!8384588))

(assert (=> b!8021644 d!2392091))

(declare-fun b!8021713 () Bool)

(declare-fun e!4725461 () Bool)

(assert (=> b!8021713 (= e!4725461 (isPrefix!6805 (tail!15947 (tail!15947 p2!173)) (tail!15947 (tail!15947 l!3353))))))

(declare-fun b!8021711 () Bool)

(declare-fun e!4725462 () Bool)

(assert (=> b!8021711 (= e!4725462 e!4725461)))

(declare-fun res!3171932 () Bool)

(assert (=> b!8021711 (=> (not res!3171932) (not e!4725461))))

(assert (=> b!8021711 (= res!3171932 (not ((_ is Nil!74874) (tail!15947 l!3353))))))

(declare-fun b!8021714 () Bool)

(declare-fun e!4725460 () Bool)

(assert (=> b!8021714 (= e!4725460 (>= (size!43659 (tail!15947 l!3353)) (size!43659 (tail!15947 p2!173))))))

(declare-fun d!2392093 () Bool)

(assert (=> d!2392093 e!4725460))

(declare-fun res!3171930 () Bool)

(assert (=> d!2392093 (=> res!3171930 e!4725460)))

(declare-fun lt!2720118 () Bool)

(assert (=> d!2392093 (= res!3171930 (not lt!2720118))))

(assert (=> d!2392093 (= lt!2720118 e!4725462)))

(declare-fun res!3171929 () Bool)

(assert (=> d!2392093 (=> res!3171929 e!4725462)))

(assert (=> d!2392093 (= res!3171929 ((_ is Nil!74874) (tail!15947 p2!173)))))

(assert (=> d!2392093 (= (isPrefix!6805 (tail!15947 p2!173) (tail!15947 l!3353)) lt!2720118)))

(declare-fun b!8021712 () Bool)

(declare-fun res!3171931 () Bool)

(assert (=> b!8021712 (=> (not res!3171931) (not e!4725461))))

(assert (=> b!8021712 (= res!3171931 (= (head!16412 (tail!15947 p2!173)) (head!16412 (tail!15947 l!3353))))))

(assert (= (and d!2392093 (not res!3171929)) b!8021711))

(assert (= (and b!8021711 res!3171932) b!8021712))

(assert (= (and b!8021712 res!3171931) b!8021713))

(assert (= (and d!2392093 (not res!3171930)) b!8021714))

(assert (=> b!8021713 m!8384546))

(declare-fun m!8384590 () Bool)

(assert (=> b!8021713 m!8384590))

(assert (=> b!8021713 m!8384536))

(assert (=> b!8021713 m!8384576))

(assert (=> b!8021713 m!8384590))

(assert (=> b!8021713 m!8384576))

(declare-fun m!8384592 () Bool)

(assert (=> b!8021713 m!8384592))

(assert (=> b!8021714 m!8384536))

(assert (=> b!8021714 m!8384580))

(assert (=> b!8021714 m!8384546))

(declare-fun m!8384594 () Bool)

(assert (=> b!8021714 m!8384594))

(assert (=> b!8021712 m!8384546))

(declare-fun m!8384596 () Bool)

(assert (=> b!8021712 m!8384596))

(assert (=> b!8021712 m!8384536))

(assert (=> b!8021712 m!8384586))

(assert (=> b!8021669 d!2392093))

(declare-fun d!2392095 () Bool)

(assert (=> d!2392095 (= (tail!15947 p2!173) (t!390741 p2!173))))

(assert (=> b!8021669 d!2392095))

(assert (=> b!8021669 d!2392089))

(declare-fun d!2392097 () Bool)

(assert (=> d!2392097 (= (head!16412 p1!173) (h!81322 p1!173))))

(assert (=> b!8021664 d!2392097))

(declare-fun d!2392099 () Bool)

(assert (=> d!2392099 (= (head!16412 l!3353) (h!81322 l!3353))))

(assert (=> b!8021664 d!2392099))

(declare-fun d!2392101 () Bool)

(assert (=> d!2392101 (= (head!16412 p2!173) (h!81322 p2!173))))

(assert (=> b!8021668 d!2392101))

(assert (=> b!8021668 d!2392099))

(declare-fun b!8021715 () Bool)

(declare-fun e!4725463 () Bool)

(declare-fun tp!2400761 () Bool)

(assert (=> b!8021715 (= e!4725463 (and tp_is_empty!54081 tp!2400761))))

(assert (=> b!8021677 (= tp!2400755 e!4725463)))

(assert (= (and b!8021677 ((_ is Cons!74874) (t!390741 (t!390741 p1!173)))) b!8021715))

(declare-fun b!8021716 () Bool)

(declare-fun e!4725464 () Bool)

(declare-fun tp!2400762 () Bool)

(assert (=> b!8021716 (= e!4725464 (and tp_is_empty!54081 tp!2400762))))

(assert (=> b!8021675 (= tp!2400753 e!4725464)))

(assert (= (and b!8021675 ((_ is Cons!74874) (t!390741 (t!390741 p2!173)))) b!8021716))

(declare-fun b!8021717 () Bool)

(declare-fun e!4725465 () Bool)

(declare-fun tp!2400763 () Bool)

(assert (=> b!8021717 (= e!4725465 (and tp_is_empty!54081 tp!2400763))))

(assert (=> b!8021676 (= tp!2400754 e!4725465)))

(assert (= (and b!8021676 ((_ is Cons!74874) (t!390741 (t!390741 l!3353)))) b!8021717))

(check-sat (not b!8021715) (not b!8021704) (not b!8021710) tp_is_empty!54081 (not b!8021714) (not b!8021707) (not b!8021716) (not b!8021712) (not b!8021702) (not b!8021717) (not b!8021713) (not b!8021706) (not b!8021708))
(check-sat)
