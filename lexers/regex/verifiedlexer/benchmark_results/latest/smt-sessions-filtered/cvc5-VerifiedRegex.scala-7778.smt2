; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!408648 () Bool)

(assert start!408648)

(declare-fun b!4264589 () Bool)

(declare-fun res!1752631 () Bool)

(declare-fun e!2647989 () Bool)

(assert (=> b!4264589 (=> (not res!1752631) (not e!2647989))))

(declare-datatypes ((B!2859 0))(
  ( (B!2860 (val!15259 Int)) )
))
(declare-datatypes ((List!47388 0))(
  ( (Nil!47264) (Cons!47264 (h!52684 B!2859) (t!353455 List!47388)) )
))
(declare-fun l1!1529 () List!47388)

(declare-fun b!25415 () B!2859)

(declare-fun contains!9785 (List!47388 B!2859) Bool)

(assert (=> b!4264589 (= res!1752631 (not (contains!9785 (t!353455 l1!1529) b!25415)))))

(declare-fun b!4264590 () Bool)

(declare-fun e!2647988 () Bool)

(declare-fun tp_is_empty!22927 () Bool)

(declare-fun tp!1307407 () Bool)

(assert (=> b!4264590 (= e!2647988 (and tp_is_empty!22927 tp!1307407))))

(declare-fun res!1752632 () Bool)

(assert (=> start!408648 (=> (not res!1752632) (not e!2647989))))

(assert (=> start!408648 (= res!1752632 (not (contains!9785 l1!1529 b!25415)))))

(assert (=> start!408648 e!2647989))

(declare-fun e!2647987 () Bool)

(assert (=> start!408648 e!2647987))

(assert (=> start!408648 tp_is_empty!22927))

(assert (=> start!408648 e!2647988))

(declare-fun b!4264591 () Bool)

(declare-fun res!1752630 () Bool)

(assert (=> b!4264591 (=> (not res!1752630) (not e!2647989))))

(assert (=> b!4264591 (= res!1752630 (and (or (not (is-Cons!47264 l1!1529)) (not (= (h!52684 l1!1529) b!25415))) (is-Cons!47264 l1!1529)))))

(declare-fun l2!1498 () List!47388)

(declare-fun b!4264592 () Bool)

(declare-fun ++!12045 (List!47388 List!47388) List!47388)

(assert (=> b!4264592 (= e!2647989 (not (not (contains!9785 (++!12045 l1!1529 l2!1498) b!25415))))))

(assert (=> b!4264592 (not (contains!9785 (++!12045 (t!353455 l1!1529) l2!1498) b!25415))))

(declare-datatypes ((Unit!66145 0))(
  ( (Unit!66146) )
))
(declare-fun lt!1511435 () Unit!66145)

(declare-fun lemmaConcatTwoListsWhichNotContainThenTotNotContain!9 (List!47388 List!47388 B!2859) Unit!66145)

(assert (=> b!4264592 (= lt!1511435 (lemmaConcatTwoListsWhichNotContainThenTotNotContain!9 (t!353455 l1!1529) l2!1498 b!25415))))

(declare-fun b!4264593 () Bool)

(declare-fun tp!1307408 () Bool)

(assert (=> b!4264593 (= e!2647987 (and tp_is_empty!22927 tp!1307408))))

(declare-fun b!4264594 () Bool)

(declare-fun res!1752633 () Bool)

(assert (=> b!4264594 (=> (not res!1752633) (not e!2647989))))

(assert (=> b!4264594 (= res!1752633 (not (contains!9785 l2!1498 b!25415)))))

(assert (= (and start!408648 res!1752632) b!4264594))

(assert (= (and b!4264594 res!1752633) b!4264591))

(assert (= (and b!4264591 res!1752630) b!4264589))

(assert (= (and b!4264589 res!1752631) b!4264592))

(assert (= (and start!408648 (is-Cons!47264 l1!1529)) b!4264593))

(assert (= (and start!408648 (is-Cons!47264 l2!1498)) b!4264590))

(declare-fun m!4854851 () Bool)

(assert (=> b!4264589 m!4854851))

(declare-fun m!4854853 () Bool)

(assert (=> start!408648 m!4854853))

(declare-fun m!4854855 () Bool)

(assert (=> b!4264592 m!4854855))

(declare-fun m!4854857 () Bool)

(assert (=> b!4264592 m!4854857))

(declare-fun m!4854859 () Bool)

(assert (=> b!4264592 m!4854859))

(declare-fun m!4854861 () Bool)

(assert (=> b!4264592 m!4854861))

(assert (=> b!4264592 m!4854857))

(assert (=> b!4264592 m!4854855))

(declare-fun m!4854863 () Bool)

(assert (=> b!4264592 m!4854863))

(declare-fun m!4854865 () Bool)

(assert (=> b!4264594 m!4854865))

(push 1)

(assert (not b!4264593))

(assert (not b!4264594))

(assert (not b!4264589))

(assert tp_is_empty!22927)

(assert (not b!4264592))

(assert (not start!408648))

(assert (not b!4264590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256467 () Bool)

(declare-fun lt!1511441 () Bool)

(declare-fun content!7465 (List!47388) (Set B!2859))

(assert (=> d!1256467 (= lt!1511441 (set.member b!25415 (content!7465 l2!1498)))))

(declare-fun e!2648003 () Bool)

(assert (=> d!1256467 (= lt!1511441 e!2648003)))

(declare-fun res!1752650 () Bool)

(assert (=> d!1256467 (=> (not res!1752650) (not e!2648003))))

(assert (=> d!1256467 (= res!1752650 (is-Cons!47264 l2!1498))))

(assert (=> d!1256467 (= (contains!9785 l2!1498 b!25415) lt!1511441)))

(declare-fun b!4264617 () Bool)

(declare-fun e!2648004 () Bool)

(assert (=> b!4264617 (= e!2648003 e!2648004)))

(declare-fun res!1752651 () Bool)

(assert (=> b!4264617 (=> res!1752651 e!2648004)))

(assert (=> b!4264617 (= res!1752651 (= (h!52684 l2!1498) b!25415))))

(declare-fun b!4264618 () Bool)

(assert (=> b!4264618 (= e!2648004 (contains!9785 (t!353455 l2!1498) b!25415))))

(assert (= (and d!1256467 res!1752650) b!4264617))

(assert (= (and b!4264617 (not res!1752651)) b!4264618))

(declare-fun m!4854883 () Bool)

(assert (=> d!1256467 m!4854883))

(declare-fun m!4854885 () Bool)

(assert (=> d!1256467 m!4854885))

(declare-fun m!4854887 () Bool)

(assert (=> b!4264618 m!4854887))

(assert (=> b!4264594 d!1256467))

(declare-fun d!1256469 () Bool)

(declare-fun lt!1511442 () Bool)

(assert (=> d!1256469 (= lt!1511442 (set.member b!25415 (content!7465 (t!353455 l1!1529))))))

(declare-fun e!2648005 () Bool)

(assert (=> d!1256469 (= lt!1511442 e!2648005)))

(declare-fun res!1752652 () Bool)

(assert (=> d!1256469 (=> (not res!1752652) (not e!2648005))))

(assert (=> d!1256469 (= res!1752652 (is-Cons!47264 (t!353455 l1!1529)))))

(assert (=> d!1256469 (= (contains!9785 (t!353455 l1!1529) b!25415) lt!1511442)))

(declare-fun b!4264619 () Bool)

(declare-fun e!2648006 () Bool)

(assert (=> b!4264619 (= e!2648005 e!2648006)))

(declare-fun res!1752653 () Bool)

(assert (=> b!4264619 (=> res!1752653 e!2648006)))

(assert (=> b!4264619 (= res!1752653 (= (h!52684 (t!353455 l1!1529)) b!25415))))

(declare-fun b!4264620 () Bool)

(assert (=> b!4264620 (= e!2648006 (contains!9785 (t!353455 (t!353455 l1!1529)) b!25415))))

(assert (= (and d!1256469 res!1752652) b!4264619))

(assert (= (and b!4264619 (not res!1752653)) b!4264620))

(declare-fun m!4854889 () Bool)

(assert (=> d!1256469 m!4854889))

(declare-fun m!4854891 () Bool)

(assert (=> d!1256469 m!4854891))

(declare-fun m!4854893 () Bool)

(assert (=> b!4264620 m!4854893))

(assert (=> b!4264589 d!1256469))

(declare-fun d!1256471 () Bool)

(declare-fun lt!1511443 () Bool)

(assert (=> d!1256471 (= lt!1511443 (set.member b!25415 (content!7465 l1!1529)))))

(declare-fun e!2648007 () Bool)

(assert (=> d!1256471 (= lt!1511443 e!2648007)))

(declare-fun res!1752654 () Bool)

(assert (=> d!1256471 (=> (not res!1752654) (not e!2648007))))

(assert (=> d!1256471 (= res!1752654 (is-Cons!47264 l1!1529))))

(assert (=> d!1256471 (= (contains!9785 l1!1529 b!25415) lt!1511443)))

(declare-fun b!4264621 () Bool)

(declare-fun e!2648008 () Bool)

(assert (=> b!4264621 (= e!2648007 e!2648008)))

(declare-fun res!1752655 () Bool)

(assert (=> b!4264621 (=> res!1752655 e!2648008)))

(assert (=> b!4264621 (= res!1752655 (= (h!52684 l1!1529) b!25415))))

(declare-fun b!4264622 () Bool)

(assert (=> b!4264622 (= e!2648008 (contains!9785 (t!353455 l1!1529) b!25415))))

(assert (= (and d!1256471 res!1752654) b!4264621))

(assert (= (and b!4264621 (not res!1752655)) b!4264622))

(declare-fun m!4854895 () Bool)

(assert (=> d!1256471 m!4854895))

(declare-fun m!4854897 () Bool)

(assert (=> d!1256471 m!4854897))

(assert (=> b!4264622 m!4854851))

(assert (=> start!408648 d!1256471))

(declare-fun d!1256473 () Bool)

(declare-fun lt!1511444 () Bool)

(assert (=> d!1256473 (= lt!1511444 (set.member b!25415 (content!7465 (++!12045 (t!353455 l1!1529) l2!1498))))))

(declare-fun e!2648009 () Bool)

(assert (=> d!1256473 (= lt!1511444 e!2648009)))

(declare-fun res!1752656 () Bool)

(assert (=> d!1256473 (=> (not res!1752656) (not e!2648009))))

(assert (=> d!1256473 (= res!1752656 (is-Cons!47264 (++!12045 (t!353455 l1!1529) l2!1498)))))

(assert (=> d!1256473 (= (contains!9785 (++!12045 (t!353455 l1!1529) l2!1498) b!25415) lt!1511444)))

(declare-fun b!4264623 () Bool)

(declare-fun e!2648010 () Bool)

(assert (=> b!4264623 (= e!2648009 e!2648010)))

(declare-fun res!1752657 () Bool)

(assert (=> b!4264623 (=> res!1752657 e!2648010)))

(assert (=> b!4264623 (= res!1752657 (= (h!52684 (++!12045 (t!353455 l1!1529) l2!1498)) b!25415))))

(declare-fun b!4264624 () Bool)

(assert (=> b!4264624 (= e!2648010 (contains!9785 (t!353455 (++!12045 (t!353455 l1!1529) l2!1498)) b!25415))))

(assert (= (and d!1256473 res!1752656) b!4264623))

(assert (= (and b!4264623 (not res!1752657)) b!4264624))

(assert (=> d!1256473 m!4854855))

(declare-fun m!4854899 () Bool)

(assert (=> d!1256473 m!4854899))

(declare-fun m!4854901 () Bool)

(assert (=> d!1256473 m!4854901))

(declare-fun m!4854903 () Bool)

(assert (=> b!4264624 m!4854903))

(assert (=> b!4264592 d!1256473))

(declare-fun d!1256475 () Bool)

(assert (=> d!1256475 (not (contains!9785 (++!12045 (t!353455 l1!1529) l2!1498) b!25415))))

(declare-fun lt!1511447 () Unit!66145)

(declare-fun choose!25993 (List!47388 List!47388 B!2859) Unit!66145)

(assert (=> d!1256475 (= lt!1511447 (choose!25993 (t!353455 l1!1529) l2!1498 b!25415))))

(assert (=> d!1256475 (not (contains!9785 (t!353455 l1!1529) b!25415))))

(assert (=> d!1256475 (= (lemmaConcatTwoListsWhichNotContainThenTotNotContain!9 (t!353455 l1!1529) l2!1498 b!25415) lt!1511447)))

(declare-fun bs!599216 () Bool)

(assert (= bs!599216 d!1256475))

(assert (=> bs!599216 m!4854855))

(assert (=> bs!599216 m!4854855))

(assert (=> bs!599216 m!4854863))

(declare-fun m!4854905 () Bool)

(assert (=> bs!599216 m!4854905))

(assert (=> bs!599216 m!4854851))

(assert (=> b!4264592 d!1256475))

(declare-fun d!1256479 () Bool)

(declare-fun lt!1511448 () Bool)

(assert (=> d!1256479 (= lt!1511448 (set.member b!25415 (content!7465 (++!12045 l1!1529 l2!1498))))))

(declare-fun e!2648011 () Bool)

(assert (=> d!1256479 (= lt!1511448 e!2648011)))

(declare-fun res!1752658 () Bool)

(assert (=> d!1256479 (=> (not res!1752658) (not e!2648011))))

(assert (=> d!1256479 (= res!1752658 (is-Cons!47264 (++!12045 l1!1529 l2!1498)))))

(assert (=> d!1256479 (= (contains!9785 (++!12045 l1!1529 l2!1498) b!25415) lt!1511448)))

(declare-fun b!4264626 () Bool)

(declare-fun e!2648012 () Bool)

(assert (=> b!4264626 (= e!2648011 e!2648012)))

(declare-fun res!1752659 () Bool)

(assert (=> b!4264626 (=> res!1752659 e!2648012)))

(assert (=> b!4264626 (= res!1752659 (= (h!52684 (++!12045 l1!1529 l2!1498)) b!25415))))

(declare-fun b!4264627 () Bool)

(assert (=> b!4264627 (= e!2648012 (contains!9785 (t!353455 (++!12045 l1!1529 l2!1498)) b!25415))))

(assert (= (and d!1256479 res!1752658) b!4264626))

(assert (= (and b!4264626 (not res!1752659)) b!4264627))

(assert (=> d!1256479 m!4854857))

(declare-fun m!4854907 () Bool)

(assert (=> d!1256479 m!4854907))

(declare-fun m!4854909 () Bool)

(assert (=> d!1256479 m!4854909))

(declare-fun m!4854911 () Bool)

(assert (=> b!4264627 m!4854911))

(assert (=> b!4264592 d!1256479))

(declare-fun b!4264641 () Bool)

(declare-fun e!2648021 () List!47388)

(assert (=> b!4264641 (= e!2648021 (Cons!47264 (h!52684 l1!1529) (++!12045 (t!353455 l1!1529) l2!1498)))))

(declare-fun b!4264640 () Bool)

(assert (=> b!4264640 (= e!2648021 l2!1498)))

(declare-fun b!4264643 () Bool)

(declare-fun e!2648022 () Bool)

(declare-fun lt!1511453 () List!47388)

(assert (=> b!4264643 (= e!2648022 (or (not (= l2!1498 Nil!47264)) (= lt!1511453 l1!1529)))))

(declare-fun d!1256481 () Bool)

(assert (=> d!1256481 e!2648022))

(declare-fun res!1752668 () Bool)

(assert (=> d!1256481 (=> (not res!1752668) (not e!2648022))))

(assert (=> d!1256481 (= res!1752668 (= (content!7465 lt!1511453) (set.union (content!7465 l1!1529) (content!7465 l2!1498))))))

(assert (=> d!1256481 (= lt!1511453 e!2648021)))

(declare-fun c!724696 () Bool)

(assert (=> d!1256481 (= c!724696 (is-Nil!47264 l1!1529))))

(assert (=> d!1256481 (= (++!12045 l1!1529 l2!1498) lt!1511453)))

(declare-fun b!4264642 () Bool)

(declare-fun res!1752669 () Bool)

(assert (=> b!4264642 (=> (not res!1752669) (not e!2648022))))

(declare-fun size!34619 (List!47388) Int)

(assert (=> b!4264642 (= res!1752669 (= (size!34619 lt!1511453) (+ (size!34619 l1!1529) (size!34619 l2!1498))))))

(assert (= (and d!1256481 c!724696) b!4264640))

(assert (= (and d!1256481 (not c!724696)) b!4264641))

(assert (= (and d!1256481 res!1752668) b!4264642))

(assert (= (and b!4264642 res!1752669) b!4264643))

(assert (=> b!4264641 m!4854855))

(declare-fun m!4854913 () Bool)

(assert (=> d!1256481 m!4854913))

(assert (=> d!1256481 m!4854895))

(assert (=> d!1256481 m!4854883))

(declare-fun m!4854915 () Bool)

(assert (=> b!4264642 m!4854915))

(declare-fun m!4854917 () Bool)

(assert (=> b!4264642 m!4854917))

(declare-fun m!4854919 () Bool)

(assert (=> b!4264642 m!4854919))

(assert (=> b!4264592 d!1256481))

(declare-fun b!4264647 () Bool)

(declare-fun e!2648025 () List!47388)

(assert (=> b!4264647 (= e!2648025 (Cons!47264 (h!52684 (t!353455 l1!1529)) (++!12045 (t!353455 (t!353455 l1!1529)) l2!1498)))))

(declare-fun b!4264646 () Bool)

(assert (=> b!4264646 (= e!2648025 l2!1498)))

(declare-fun b!4264649 () Bool)

(declare-fun e!2648026 () Bool)

(declare-fun lt!1511455 () List!47388)

(assert (=> b!4264649 (= e!2648026 (or (not (= l2!1498 Nil!47264)) (= lt!1511455 (t!353455 l1!1529))))))

(declare-fun d!1256483 () Bool)

(assert (=> d!1256483 e!2648026))

(declare-fun res!1752672 () Bool)

(assert (=> d!1256483 (=> (not res!1752672) (not e!2648026))))

(assert (=> d!1256483 (= res!1752672 (= (content!7465 lt!1511455) (set.union (content!7465 (t!353455 l1!1529)) (content!7465 l2!1498))))))

(assert (=> d!1256483 (= lt!1511455 e!2648025)))

(declare-fun c!724697 () Bool)

(assert (=> d!1256483 (= c!724697 (is-Nil!47264 (t!353455 l1!1529)))))

(assert (=> d!1256483 (= (++!12045 (t!353455 l1!1529) l2!1498) lt!1511455)))

(declare-fun b!4264648 () Bool)

(declare-fun res!1752673 () Bool)

(assert (=> b!4264648 (=> (not res!1752673) (not e!2648026))))

(assert (=> b!4264648 (= res!1752673 (= (size!34619 lt!1511455) (+ (size!34619 (t!353455 l1!1529)) (size!34619 l2!1498))))))

(assert (= (and d!1256483 c!724697) b!4264646))

(assert (= (and d!1256483 (not c!724697)) b!4264647))

(assert (= (and d!1256483 res!1752672) b!4264648))

(assert (= (and b!4264648 res!1752673) b!4264649))

(declare-fun m!4854921 () Bool)

(assert (=> b!4264647 m!4854921))

(declare-fun m!4854923 () Bool)

(assert (=> d!1256483 m!4854923))

(assert (=> d!1256483 m!4854889))

(assert (=> d!1256483 m!4854883))

(declare-fun m!4854925 () Bool)

(assert (=> b!4264648 m!4854925))

(declare-fun m!4854927 () Bool)

(assert (=> b!4264648 m!4854927))

(assert (=> b!4264648 m!4854919))

(assert (=> b!4264592 d!1256483))

(declare-fun b!4264656 () Bool)

(declare-fun e!2648031 () Bool)

(declare-fun tp!1307417 () Bool)

(assert (=> b!4264656 (= e!2648031 (and tp_is_empty!22927 tp!1307417))))

(assert (=> b!4264593 (= tp!1307408 e!2648031)))

(assert (= (and b!4264593 (is-Cons!47264 (t!353455 l1!1529))) b!4264656))

(declare-fun b!4264657 () Bool)

(declare-fun e!2648032 () Bool)

(declare-fun tp!1307418 () Bool)

(assert (=> b!4264657 (= e!2648032 (and tp_is_empty!22927 tp!1307418))))

(assert (=> b!4264590 (= tp!1307407 e!2648032)))

(assert (= (and b!4264590 (is-Cons!47264 (t!353455 l2!1498))) b!4264657))

(push 1)

(assert (not d!1256471))

(assert (not d!1256475))

(assert (not d!1256473))

(assert (not b!4264627))

(assert (not d!1256483))

(assert (not d!1256467))

(assert (not d!1256479))

(assert (not b!4264647))

(assert tp_is_empty!22927)

(assert (not b!4264648))

(assert (not b!4264657))

(assert (not d!1256469))

(assert (not b!4264618))

(assert (not b!4264624))

(assert (not b!4264656))

(assert (not b!4264622))

(assert (not b!4264620))

(assert (not b!4264642))

(assert (not d!1256481))

(assert (not b!4264641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

