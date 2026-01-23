; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!46308 () Bool)

(assert start!46308)

(declare-fun b!511843 () Bool)

(declare-fun e!305767 () Bool)

(declare-fun e!305768 () Bool)

(assert (=> b!511843 (= e!305767 e!305768)))

(declare-fun res!217238 () Bool)

(assert (=> b!511843 (=> (not res!217238) (not e!305768))))

(declare-datatypes ((B!1055 0))(
  ( (B!1056 (val!1669 Int)) )
))
(declare-datatypes ((List!4642 0))(
  ( (Nil!4632) (Cons!4632 (h!10029 B!1055) (t!73160 List!4642)) )
))
(declare-fun l2!1029 () List!4642)

(declare-fun lt!212094 () List!4642)

(declare-fun l1!1060 () List!4642)

(declare-fun lt!212095 () List!4642)

(declare-fun ++!1354 (List!4642 List!4642) List!4642)

(assert (=> b!511843 (= res!217238 (= (++!1354 (++!1354 (t!73160 l1!1060) lt!212094) l2!1029) lt!212095))))

(declare-fun tot!35 () List!4642)

(declare-fun tail!691 (List!4642) List!4642)

(assert (=> b!511843 (= lt!212095 (tail!691 tot!35))))

(declare-fun b!511844 () Bool)

(declare-fun res!217240 () Bool)

(assert (=> b!511844 (=> (not res!217240) (not e!305767))))

(assert (=> b!511844 (= res!217240 (is-Cons!4632 l1!1060))))

(declare-fun b!511845 () Bool)

(declare-fun e!305769 () Bool)

(declare-fun tp_is_empty!2441 () Bool)

(declare-fun tp!159108 () Bool)

(assert (=> b!511845 (= e!305769 (and tp_is_empty!2441 tp!159108))))

(declare-fun lt!212096 () List!4642)

(declare-fun b!511846 () Bool)

(assert (=> b!511846 (= e!305768 (not (= (++!1354 l1!1060 lt!212096) tot!35)))))

(assert (=> b!511846 (= (++!1354 (t!73160 l1!1060) lt!212096) lt!212095)))

(assert (=> b!511846 (= lt!212096 (++!1354 lt!212094 l2!1029))))

(declare-datatypes ((Unit!8398 0))(
  ( (Unit!8399) )
))
(declare-fun lt!212097 () Unit!8398)

(declare-fun elmt!142 () B!1055)

(declare-fun lemmaConcatElemAssociativity!1 (List!4642 B!1055 List!4642 List!4642) Unit!8398)

(assert (=> b!511846 (= lt!212097 (lemmaConcatElemAssociativity!1 (t!73160 l1!1060) elmt!142 l2!1029 lt!212095))))

(declare-fun res!217239 () Bool)

(assert (=> start!46308 (=> (not res!217239) (not e!305767))))

(assert (=> start!46308 (= res!217239 (= (++!1354 (++!1354 l1!1060 lt!212094) l2!1029) tot!35))))

(assert (=> start!46308 (= lt!212094 (Cons!4632 elmt!142 Nil!4632))))

(assert (=> start!46308 e!305767))

(assert (=> start!46308 tp_is_empty!2441))

(assert (=> start!46308 e!305769))

(declare-fun e!305766 () Bool)

(assert (=> start!46308 e!305766))

(declare-fun e!305765 () Bool)

(assert (=> start!46308 e!305765))

(declare-fun b!511847 () Bool)

(declare-fun tp!159109 () Bool)

(assert (=> b!511847 (= e!305766 (and tp_is_empty!2441 tp!159109))))

(declare-fun b!511848 () Bool)

(declare-fun tp!159110 () Bool)

(assert (=> b!511848 (= e!305765 (and tp_is_empty!2441 tp!159110))))

(assert (= (and start!46308 res!217239) b!511844))

(assert (= (and b!511844 res!217240) b!511843))

(assert (= (and b!511843 res!217238) b!511846))

(assert (= (and start!46308 (is-Cons!4632 l2!1029)) b!511845))

(assert (= (and start!46308 (is-Cons!4632 l1!1060)) b!511847))

(assert (= (and start!46308 (is-Cons!4632 tot!35)) b!511848))

(declare-fun m!758635 () Bool)

(assert (=> b!511843 m!758635))

(assert (=> b!511843 m!758635))

(declare-fun m!758637 () Bool)

(assert (=> b!511843 m!758637))

(declare-fun m!758639 () Bool)

(assert (=> b!511843 m!758639))

(declare-fun m!758641 () Bool)

(assert (=> b!511846 m!758641))

(declare-fun m!758643 () Bool)

(assert (=> b!511846 m!758643))

(declare-fun m!758645 () Bool)

(assert (=> b!511846 m!758645))

(declare-fun m!758647 () Bool)

(assert (=> b!511846 m!758647))

(declare-fun m!758649 () Bool)

(assert (=> start!46308 m!758649))

(assert (=> start!46308 m!758649))

(declare-fun m!758651 () Bool)

(assert (=> start!46308 m!758651))

(push 1)

(assert tp_is_empty!2441)

(assert (not b!511846))

(assert (not b!511843))

(assert (not b!511845))

(assert (not b!511847))

(assert (not start!46308))

(assert (not b!511848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!511876 () Bool)

(declare-fun e!305790 () List!4642)

(assert (=> b!511876 (= e!305790 (Cons!4632 (h!10029 (++!1354 l1!1060 lt!212094)) (++!1354 (t!73160 (++!1354 l1!1060 lt!212094)) l2!1029)))))

(declare-fun d!183972 () Bool)

(declare-fun e!305789 () Bool)

(assert (=> d!183972 e!305789))

(declare-fun res!217254 () Bool)

(assert (=> d!183972 (=> (not res!217254) (not e!305789))))

(declare-fun lt!212112 () List!4642)

(declare-fun content!802 (List!4642) (Set B!1055))

(assert (=> d!183972 (= res!217254 (= (content!802 lt!212112) (set.union (content!802 (++!1354 l1!1060 lt!212094)) (content!802 l2!1029))))))

(assert (=> d!183972 (= lt!212112 e!305790)))

(declare-fun c!99502 () Bool)

(assert (=> d!183972 (= c!99502 (is-Nil!4632 (++!1354 l1!1060 lt!212094)))))

(assert (=> d!183972 (= (++!1354 (++!1354 l1!1060 lt!212094) l2!1029) lt!212112)))

(declare-fun b!511875 () Bool)

(assert (=> b!511875 (= e!305790 l2!1029)))

(declare-fun b!511878 () Bool)

(assert (=> b!511878 (= e!305789 (or (not (= l2!1029 Nil!4632)) (= lt!212112 (++!1354 l1!1060 lt!212094))))))

(declare-fun b!511877 () Bool)

(declare-fun res!217255 () Bool)

(assert (=> b!511877 (=> (not res!217255) (not e!305789))))

(declare-fun size!3734 (List!4642) Int)

(assert (=> b!511877 (= res!217255 (= (size!3734 lt!212112) (+ (size!3734 (++!1354 l1!1060 lt!212094)) (size!3734 l2!1029))))))

(assert (= (and d!183972 c!99502) b!511875))

(assert (= (and d!183972 (not c!99502)) b!511876))

(assert (= (and d!183972 res!217254) b!511877))

(assert (= (and b!511877 res!217255) b!511878))

(declare-fun m!758671 () Bool)

(assert (=> b!511876 m!758671))

(declare-fun m!758673 () Bool)

(assert (=> d!183972 m!758673))

(assert (=> d!183972 m!758649))

(declare-fun m!758675 () Bool)

(assert (=> d!183972 m!758675))

(declare-fun m!758677 () Bool)

(assert (=> d!183972 m!758677))

(declare-fun m!758679 () Bool)

(assert (=> b!511877 m!758679))

(assert (=> b!511877 m!758649))

(declare-fun m!758681 () Bool)

(assert (=> b!511877 m!758681))

(declare-fun m!758683 () Bool)

(assert (=> b!511877 m!758683))

(assert (=> start!46308 d!183972))

(declare-fun b!511880 () Bool)

(declare-fun e!305792 () List!4642)

(assert (=> b!511880 (= e!305792 (Cons!4632 (h!10029 l1!1060) (++!1354 (t!73160 l1!1060) lt!212094)))))

(declare-fun d!183976 () Bool)

(declare-fun e!305791 () Bool)

(assert (=> d!183976 e!305791))

(declare-fun res!217256 () Bool)

(assert (=> d!183976 (=> (not res!217256) (not e!305791))))

(declare-fun lt!212113 () List!4642)

(assert (=> d!183976 (= res!217256 (= (content!802 lt!212113) (set.union (content!802 l1!1060) (content!802 lt!212094))))))

(assert (=> d!183976 (= lt!212113 e!305792)))

(declare-fun c!99503 () Bool)

(assert (=> d!183976 (= c!99503 (is-Nil!4632 l1!1060))))

(assert (=> d!183976 (= (++!1354 l1!1060 lt!212094) lt!212113)))

(declare-fun b!511879 () Bool)

(assert (=> b!511879 (= e!305792 lt!212094)))

(declare-fun b!511882 () Bool)

(assert (=> b!511882 (= e!305791 (or (not (= lt!212094 Nil!4632)) (= lt!212113 l1!1060)))))

(declare-fun b!511881 () Bool)

(declare-fun res!217257 () Bool)

(assert (=> b!511881 (=> (not res!217257) (not e!305791))))

(assert (=> b!511881 (= res!217257 (= (size!3734 lt!212113) (+ (size!3734 l1!1060) (size!3734 lt!212094))))))

(assert (= (and d!183976 c!99503) b!511879))

(assert (= (and d!183976 (not c!99503)) b!511880))

(assert (= (and d!183976 res!217256) b!511881))

(assert (= (and b!511881 res!217257) b!511882))

(assert (=> b!511880 m!758635))

(declare-fun m!758685 () Bool)

(assert (=> d!183976 m!758685))

(declare-fun m!758687 () Bool)

(assert (=> d!183976 m!758687))

(declare-fun m!758689 () Bool)

(assert (=> d!183976 m!758689))

(declare-fun m!758691 () Bool)

(assert (=> b!511881 m!758691))

(declare-fun m!758693 () Bool)

(assert (=> b!511881 m!758693))

(declare-fun m!758695 () Bool)

(assert (=> b!511881 m!758695))

(assert (=> start!46308 d!183976))

(declare-fun e!305794 () List!4642)

(declare-fun b!511884 () Bool)

(assert (=> b!511884 (= e!305794 (Cons!4632 (h!10029 (++!1354 (t!73160 l1!1060) lt!212094)) (++!1354 (t!73160 (++!1354 (t!73160 l1!1060) lt!212094)) l2!1029)))))

(declare-fun d!183978 () Bool)

(declare-fun e!305793 () Bool)

(assert (=> d!183978 e!305793))

(declare-fun res!217258 () Bool)

(assert (=> d!183978 (=> (not res!217258) (not e!305793))))

(declare-fun lt!212114 () List!4642)

(assert (=> d!183978 (= res!217258 (= (content!802 lt!212114) (set.union (content!802 (++!1354 (t!73160 l1!1060) lt!212094)) (content!802 l2!1029))))))

(assert (=> d!183978 (= lt!212114 e!305794)))

(declare-fun c!99504 () Bool)

(assert (=> d!183978 (= c!99504 (is-Nil!4632 (++!1354 (t!73160 l1!1060) lt!212094)))))

(assert (=> d!183978 (= (++!1354 (++!1354 (t!73160 l1!1060) lt!212094) l2!1029) lt!212114)))

(declare-fun b!511883 () Bool)

(assert (=> b!511883 (= e!305794 l2!1029)))

(declare-fun b!511886 () Bool)

(assert (=> b!511886 (= e!305793 (or (not (= l2!1029 Nil!4632)) (= lt!212114 (++!1354 (t!73160 l1!1060) lt!212094))))))

(declare-fun b!511885 () Bool)

(declare-fun res!217259 () Bool)

(assert (=> b!511885 (=> (not res!217259) (not e!305793))))

(assert (=> b!511885 (= res!217259 (= (size!3734 lt!212114) (+ (size!3734 (++!1354 (t!73160 l1!1060) lt!212094)) (size!3734 l2!1029))))))

(assert (= (and d!183978 c!99504) b!511883))

(assert (= (and d!183978 (not c!99504)) b!511884))

(assert (= (and d!183978 res!217258) b!511885))

(assert (= (and b!511885 res!217259) b!511886))

(declare-fun m!758697 () Bool)

(assert (=> b!511884 m!758697))

(declare-fun m!758699 () Bool)

(assert (=> d!183978 m!758699))

(assert (=> d!183978 m!758635))

(declare-fun m!758701 () Bool)

(assert (=> d!183978 m!758701))

(assert (=> d!183978 m!758677))

(declare-fun m!758703 () Bool)

(assert (=> b!511885 m!758703))

(assert (=> b!511885 m!758635))

(declare-fun m!758705 () Bool)

(assert (=> b!511885 m!758705))

(assert (=> b!511885 m!758683))

(assert (=> b!511843 d!183978))

(declare-fun b!511888 () Bool)

(declare-fun e!305796 () List!4642)

(assert (=> b!511888 (= e!305796 (Cons!4632 (h!10029 (t!73160 l1!1060)) (++!1354 (t!73160 (t!73160 l1!1060)) lt!212094)))))

(declare-fun d!183980 () Bool)

(declare-fun e!305795 () Bool)

(assert (=> d!183980 e!305795))

(declare-fun res!217260 () Bool)

(assert (=> d!183980 (=> (not res!217260) (not e!305795))))

(declare-fun lt!212115 () List!4642)

(assert (=> d!183980 (= res!217260 (= (content!802 lt!212115) (set.union (content!802 (t!73160 l1!1060)) (content!802 lt!212094))))))

(assert (=> d!183980 (= lt!212115 e!305796)))

(declare-fun c!99505 () Bool)

(assert (=> d!183980 (= c!99505 (is-Nil!4632 (t!73160 l1!1060)))))

(assert (=> d!183980 (= (++!1354 (t!73160 l1!1060) lt!212094) lt!212115)))

(declare-fun b!511887 () Bool)

(assert (=> b!511887 (= e!305796 lt!212094)))

(declare-fun b!511890 () Bool)

(assert (=> b!511890 (= e!305795 (or (not (= lt!212094 Nil!4632)) (= lt!212115 (t!73160 l1!1060))))))

(declare-fun b!511889 () Bool)

(declare-fun res!217261 () Bool)

(assert (=> b!511889 (=> (not res!217261) (not e!305795))))

(assert (=> b!511889 (= res!217261 (= (size!3734 lt!212115) (+ (size!3734 (t!73160 l1!1060)) (size!3734 lt!212094))))))

(assert (= (and d!183980 c!99505) b!511887))

(assert (= (and d!183980 (not c!99505)) b!511888))

(assert (= (and d!183980 res!217260) b!511889))

(assert (= (and b!511889 res!217261) b!511890))

(declare-fun m!758707 () Bool)

(assert (=> b!511888 m!758707))

(declare-fun m!758709 () Bool)

(assert (=> d!183980 m!758709))

(declare-fun m!758711 () Bool)

(assert (=> d!183980 m!758711))

(assert (=> d!183980 m!758689))

(declare-fun m!758713 () Bool)

(assert (=> b!511889 m!758713))

(declare-fun m!758715 () Bool)

(assert (=> b!511889 m!758715))

(assert (=> b!511889 m!758695))

(assert (=> b!511843 d!183980))

(declare-fun d!183982 () Bool)

(assert (=> d!183982 (= (tail!691 tot!35) (t!73160 tot!35))))

(assert (=> b!511843 d!183982))

(declare-fun b!511892 () Bool)

(declare-fun e!305798 () List!4642)

(assert (=> b!511892 (= e!305798 (Cons!4632 (h!10029 l1!1060) (++!1354 (t!73160 l1!1060) lt!212096)))))

(declare-fun d!183984 () Bool)

(declare-fun e!305797 () Bool)

(assert (=> d!183984 e!305797))

(declare-fun res!217262 () Bool)

(assert (=> d!183984 (=> (not res!217262) (not e!305797))))

(declare-fun lt!212116 () List!4642)

(assert (=> d!183984 (= res!217262 (= (content!802 lt!212116) (set.union (content!802 l1!1060) (content!802 lt!212096))))))

(assert (=> d!183984 (= lt!212116 e!305798)))

(declare-fun c!99506 () Bool)

(assert (=> d!183984 (= c!99506 (is-Nil!4632 l1!1060))))

(assert (=> d!183984 (= (++!1354 l1!1060 lt!212096) lt!212116)))

(declare-fun b!511891 () Bool)

(assert (=> b!511891 (= e!305798 lt!212096)))

(declare-fun b!511894 () Bool)

(assert (=> b!511894 (= e!305797 (or (not (= lt!212096 Nil!4632)) (= lt!212116 l1!1060)))))

(declare-fun b!511893 () Bool)

(declare-fun res!217263 () Bool)

(assert (=> b!511893 (=> (not res!217263) (not e!305797))))

(assert (=> b!511893 (= res!217263 (= (size!3734 lt!212116) (+ (size!3734 l1!1060) (size!3734 lt!212096))))))

(assert (= (and d!183984 c!99506) b!511891))

(assert (= (and d!183984 (not c!99506)) b!511892))

(assert (= (and d!183984 res!217262) b!511893))

(assert (= (and b!511893 res!217263) b!511894))

(assert (=> b!511892 m!758643))

(declare-fun m!758717 () Bool)

(assert (=> d!183984 m!758717))

(assert (=> d!183984 m!758687))

(declare-fun m!758719 () Bool)

(assert (=> d!183984 m!758719))

(declare-fun m!758721 () Bool)

(assert (=> b!511893 m!758721))

(assert (=> b!511893 m!758693))

(declare-fun m!758723 () Bool)

(assert (=> b!511893 m!758723))

(assert (=> b!511846 d!183984))

(declare-fun b!511900 () Bool)

(declare-fun e!305802 () List!4642)

(assert (=> b!511900 (= e!305802 (Cons!4632 (h!10029 (t!73160 l1!1060)) (++!1354 (t!73160 (t!73160 l1!1060)) lt!212096)))))

(declare-fun d!183986 () Bool)

(declare-fun e!305801 () Bool)

(assert (=> d!183986 e!305801))

(declare-fun res!217264 () Bool)

(assert (=> d!183986 (=> (not res!217264) (not e!305801))))

(declare-fun lt!212119 () List!4642)

(assert (=> d!183986 (= res!217264 (= (content!802 lt!212119) (set.union (content!802 (t!73160 l1!1060)) (content!802 lt!212096))))))

(assert (=> d!183986 (= lt!212119 e!305802)))

(declare-fun c!99509 () Bool)

(assert (=> d!183986 (= c!99509 (is-Nil!4632 (t!73160 l1!1060)))))

(assert (=> d!183986 (= (++!1354 (t!73160 l1!1060) lt!212096) lt!212119)))

(declare-fun b!511899 () Bool)

(assert (=> b!511899 (= e!305802 lt!212096)))

(declare-fun b!511902 () Bool)

(assert (=> b!511902 (= e!305801 (or (not (= lt!212096 Nil!4632)) (= lt!212119 (t!73160 l1!1060))))))

(declare-fun b!511901 () Bool)

(declare-fun res!217265 () Bool)

(assert (=> b!511901 (=> (not res!217265) (not e!305801))))

(assert (=> b!511901 (= res!217265 (= (size!3734 lt!212119) (+ (size!3734 (t!73160 l1!1060)) (size!3734 lt!212096))))))

(assert (= (and d!183986 c!99509) b!511899))

(assert (= (and d!183986 (not c!99509)) b!511900))

(assert (= (and d!183986 res!217264) b!511901))

(assert (= (and b!511901 res!217265) b!511902))

(declare-fun m!758725 () Bool)

(assert (=> b!511900 m!758725))

(declare-fun m!758727 () Bool)

(assert (=> d!183986 m!758727))

(assert (=> d!183986 m!758711))

(assert (=> d!183986 m!758719))

(declare-fun m!758729 () Bool)

(assert (=> b!511901 m!758729))

(assert (=> b!511901 m!758715))

(assert (=> b!511901 m!758723))

(assert (=> b!511846 d!183986))

(declare-fun b!511904 () Bool)

(declare-fun e!305804 () List!4642)

(assert (=> b!511904 (= e!305804 (Cons!4632 (h!10029 lt!212094) (++!1354 (t!73160 lt!212094) l2!1029)))))

(declare-fun d!183988 () Bool)

(declare-fun e!305803 () Bool)

(assert (=> d!183988 e!305803))

(declare-fun res!217266 () Bool)

(assert (=> d!183988 (=> (not res!217266) (not e!305803))))

(declare-fun lt!212120 () List!4642)

(assert (=> d!183988 (= res!217266 (= (content!802 lt!212120) (set.union (content!802 lt!212094) (content!802 l2!1029))))))

(assert (=> d!183988 (= lt!212120 e!305804)))

(declare-fun c!99510 () Bool)

(assert (=> d!183988 (= c!99510 (is-Nil!4632 lt!212094))))

(assert (=> d!183988 (= (++!1354 lt!212094 l2!1029) lt!212120)))

(declare-fun b!511903 () Bool)

(assert (=> b!511903 (= e!305804 l2!1029)))

(declare-fun b!511906 () Bool)

(assert (=> b!511906 (= e!305803 (or (not (= l2!1029 Nil!4632)) (= lt!212120 lt!212094)))))

(declare-fun b!511905 () Bool)

(declare-fun res!217267 () Bool)

(assert (=> b!511905 (=> (not res!217267) (not e!305803))))

(assert (=> b!511905 (= res!217267 (= (size!3734 lt!212120) (+ (size!3734 lt!212094) (size!3734 l2!1029))))))

(assert (= (and d!183988 c!99510) b!511903))

(assert (= (and d!183988 (not c!99510)) b!511904))

(assert (= (and d!183988 res!217266) b!511905))

(assert (= (and b!511905 res!217267) b!511906))

(declare-fun m!758731 () Bool)

(assert (=> b!511904 m!758731))

(declare-fun m!758733 () Bool)

(assert (=> d!183988 m!758733))

(assert (=> d!183988 m!758689))

(assert (=> d!183988 m!758677))

(declare-fun m!758735 () Bool)

(assert (=> b!511905 m!758735))

(assert (=> b!511905 m!758695))

(assert (=> b!511905 m!758683))

(assert (=> b!511846 d!183988))

(declare-fun d!183990 () Bool)

(assert (=> d!183990 (= (++!1354 (t!73160 l1!1060) (++!1354 (Cons!4632 elmt!142 Nil!4632) l2!1029)) lt!212095)))

(declare-fun lt!212123 () Unit!8398)

(declare-fun choose!3645 (List!4642 B!1055 List!4642 List!4642) Unit!8398)

(assert (=> d!183990 (= lt!212123 (choose!3645 (t!73160 l1!1060) elmt!142 l2!1029 lt!212095))))

(assert (=> d!183990 (= (++!1354 (++!1354 (t!73160 l1!1060) (Cons!4632 elmt!142 Nil!4632)) l2!1029) lt!212095)))

(assert (=> d!183990 (= (lemmaConcatElemAssociativity!1 (t!73160 l1!1060) elmt!142 l2!1029 lt!212095) lt!212123)))

(declare-fun bs!59330 () Bool)

(assert (= bs!59330 d!183990))

(declare-fun m!758737 () Bool)

(assert (=> bs!59330 m!758737))

(declare-fun m!758739 () Bool)

(assert (=> bs!59330 m!758739))

(declare-fun m!758741 () Bool)

(assert (=> bs!59330 m!758741))

(declare-fun m!758743 () Bool)

(assert (=> bs!59330 m!758743))

(assert (=> bs!59330 m!758737))

(assert (=> bs!59330 m!758743))

(declare-fun m!758745 () Bool)

(assert (=> bs!59330 m!758745))

(assert (=> b!511846 d!183990))

(declare-fun b!511919 () Bool)

(declare-fun e!305811 () Bool)

(declare-fun tp!159122 () Bool)

(assert (=> b!511919 (= e!305811 (and tp_is_empty!2441 tp!159122))))

(assert (=> b!511847 (= tp!159109 e!305811)))

(assert (= (and b!511847 (is-Cons!4632 (t!73160 l1!1060))) b!511919))

(declare-fun b!511920 () Bool)

(declare-fun e!305812 () Bool)

(declare-fun tp!159123 () Bool)

(assert (=> b!511920 (= e!305812 (and tp_is_empty!2441 tp!159123))))

(assert (=> b!511848 (= tp!159110 e!305812)))

(assert (= (and b!511848 (is-Cons!4632 (t!73160 tot!35))) b!511920))

(declare-fun b!511921 () Bool)

(declare-fun e!305813 () Bool)

(declare-fun tp!159124 () Bool)

(assert (=> b!511921 (= e!305813 (and tp_is_empty!2441 tp!159124))))

(assert (=> b!511845 (= tp!159108 e!305813)))

(assert (= (and b!511845 (is-Cons!4632 (t!73160 l2!1029))) b!511921))

(push 1)

(assert (not b!511884))

(assert tp_is_empty!2441)

(assert (not b!511919))

(assert (not b!511904))

(assert (not b!511900))

(assert (not d!183990))

(assert (not d!183978))

(assert (not b!511893))

(assert (not d!183980))

(assert (not b!511921))

(assert (not b!511876))

(assert (not b!511920))

(assert (not b!511885))

(assert (not b!511880))

(assert (not b!511889))

(assert (not d!183984))

(assert (not d!183988))

(assert (not b!511877))

(assert (not b!511881))

(assert (not b!511901))

(assert (not d!183972))

(assert (not b!511892))

(assert (not d!183976))

(assert (not d!183986))

(assert (not b!511888))

(assert (not b!511905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

