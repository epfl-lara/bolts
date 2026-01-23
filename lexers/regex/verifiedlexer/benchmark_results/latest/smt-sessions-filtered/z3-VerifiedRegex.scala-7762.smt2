; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407806 () Bool)

(assert start!407806)

(declare-fun b!4256596 () Bool)

(declare-fun e!2643818 () Bool)

(declare-fun tp!1306303 () Bool)

(assert (=> b!4256596 (= e!2643818 tp!1306303)))

(declare-fun b!4256597 () Bool)

(declare-fun e!2643819 () Bool)

(declare-datatypes ((B!2797 0))(
  ( (B!2798 (val!15209 Int)) )
))
(declare-datatypes ((List!47338 0))(
  ( (Nil!47214) (Cons!47214 (h!52634 B!2797) (t!352937 List!47338)) )
))
(declare-datatypes ((IArray!28449 0))(
  ( (IArray!28450 (innerList!14282 List!47338)) )
))
(declare-datatypes ((Conc!14222 0))(
  ( (Node!14222 (left!34992 Conc!14222) (right!35322 Conc!14222) (csize!28674 Int) (cheight!14433 Int)) (Leaf!21985 (xs!17528 IArray!28449) (csize!28675 Int)) (Empty!14222) )
))
(declare-fun inv!62048 (Conc!14222) Bool)

(assert (=> b!4256597 (= e!2643819 (not (inv!62048 Empty!14222)))))

(declare-fun b!4256598 () Bool)

(declare-fun tp!1306302 () Bool)

(declare-fun e!2643820 () Bool)

(declare-datatypes ((T!79322 0))(
  ( (T!79323 (val!15210 Int)) )
))
(declare-datatypes ((List!47339 0))(
  ( (Nil!47215) (Cons!47215 (h!52635 T!79322) (t!352938 List!47339)) )
))
(declare-datatypes ((IArray!28451 0))(
  ( (IArray!28452 (innerList!14283 List!47339)) )
))
(declare-datatypes ((Conc!14223 0))(
  ( (Node!14223 (left!34993 Conc!14223) (right!35323 Conc!14223) (csize!28676 Int) (cheight!14434 Int)) (Leaf!21986 (xs!17529 IArray!28451) (csize!28677 Int)) (Empty!14223) )
))
(declare-fun t!4386 () Conc!14223)

(declare-fun tp!1306304 () Bool)

(declare-fun inv!62049 (Conc!14223) Bool)

(assert (=> b!4256598 (= e!2643820 (and (inv!62049 (left!34993 t!4386)) tp!1306304 (inv!62049 (right!35323 t!4386)) tp!1306302))))

(declare-fun b!4256599 () Bool)

(declare-fun res!1749793 () Bool)

(assert (=> b!4256599 (=> (not res!1749793) (not e!2643819))))

(get-info :version)

(assert (=> b!4256599 (= res!1749793 ((_ is Empty!14223) t!4386))))

(declare-fun b!4256600 () Bool)

(declare-fun inv!62050 (IArray!28451) Bool)

(assert (=> b!4256600 (= e!2643820 (and (inv!62050 (xs!17529 t!4386)) e!2643818))))

(declare-fun res!1749792 () Bool)

(assert (=> start!407806 (=> (not res!1749792) (not e!2643819))))

(declare-fun isBalanced!3784 (Conc!14223) Bool)

(assert (=> start!407806 (= res!1749792 (isBalanced!3784 t!4386))))

(assert (=> start!407806 e!2643819))

(assert (=> start!407806 (and (inv!62049 t!4386) e!2643820)))

(assert (= (and start!407806 res!1749792) b!4256599))

(assert (= (and b!4256599 res!1749793) b!4256597))

(assert (= (and start!407806 ((_ is Node!14223) t!4386)) b!4256598))

(assert (= b!4256600 b!4256596))

(assert (= (and start!407806 ((_ is Leaf!21986) t!4386)) b!4256600))

(declare-fun m!4841839 () Bool)

(assert (=> b!4256597 m!4841839))

(declare-fun m!4841841 () Bool)

(assert (=> b!4256598 m!4841841))

(declare-fun m!4841843 () Bool)

(assert (=> b!4256598 m!4841843))

(declare-fun m!4841845 () Bool)

(assert (=> b!4256600 m!4841845))

(declare-fun m!4841847 () Bool)

(assert (=> start!407806 m!4841847))

(declare-fun m!4841849 () Bool)

(assert (=> start!407806 m!4841849))

(check-sat (not start!407806) (not b!4256596) (not b!4256600) (not b!4256597) (not b!4256598))
(check-sat)
(get-model)

(declare-fun d!1251687 () Bool)

(declare-fun c!722710 () Bool)

(assert (=> d!1251687 (= c!722710 ((_ is Node!14223) (left!34993 t!4386)))))

(declare-fun e!2643829 () Bool)

(assert (=> d!1251687 (= (inv!62049 (left!34993 t!4386)) e!2643829)))

(declare-fun b!4256613 () Bool)

(declare-fun inv!62051 (Conc!14223) Bool)

(assert (=> b!4256613 (= e!2643829 (inv!62051 (left!34993 t!4386)))))

(declare-fun b!4256614 () Bool)

(declare-fun e!2643830 () Bool)

(assert (=> b!4256614 (= e!2643829 e!2643830)))

(declare-fun res!1749798 () Bool)

(assert (=> b!4256614 (= res!1749798 (not ((_ is Leaf!21986) (left!34993 t!4386))))))

(assert (=> b!4256614 (=> res!1749798 e!2643830)))

(declare-fun b!4256615 () Bool)

(declare-fun inv!62053 (Conc!14223) Bool)

(assert (=> b!4256615 (= e!2643830 (inv!62053 (left!34993 t!4386)))))

(assert (= (and d!1251687 c!722710) b!4256613))

(assert (= (and d!1251687 (not c!722710)) b!4256614))

(assert (= (and b!4256614 (not res!1749798)) b!4256615))

(declare-fun m!4841851 () Bool)

(assert (=> b!4256613 m!4841851))

(declare-fun m!4841853 () Bool)

(assert (=> b!4256615 m!4841853))

(assert (=> b!4256598 d!1251687))

(declare-fun d!1251691 () Bool)

(declare-fun c!722711 () Bool)

(assert (=> d!1251691 (= c!722711 ((_ is Node!14223) (right!35323 t!4386)))))

(declare-fun e!2643831 () Bool)

(assert (=> d!1251691 (= (inv!62049 (right!35323 t!4386)) e!2643831)))

(declare-fun b!4256616 () Bool)

(assert (=> b!4256616 (= e!2643831 (inv!62051 (right!35323 t!4386)))))

(declare-fun b!4256617 () Bool)

(declare-fun e!2643832 () Bool)

(assert (=> b!4256617 (= e!2643831 e!2643832)))

(declare-fun res!1749799 () Bool)

(assert (=> b!4256617 (= res!1749799 (not ((_ is Leaf!21986) (right!35323 t!4386))))))

(assert (=> b!4256617 (=> res!1749799 e!2643832)))

(declare-fun b!4256618 () Bool)

(assert (=> b!4256618 (= e!2643832 (inv!62053 (right!35323 t!4386)))))

(assert (= (and d!1251691 c!722711) b!4256616))

(assert (= (and d!1251691 (not c!722711)) b!4256617))

(assert (= (and b!4256617 (not res!1749799)) b!4256618))

(declare-fun m!4841855 () Bool)

(assert (=> b!4256616 m!4841855))

(declare-fun m!4841857 () Bool)

(assert (=> b!4256618 m!4841857))

(assert (=> b!4256598 d!1251691))

(declare-fun d!1251693 () Bool)

(declare-fun res!1749827 () Bool)

(declare-fun e!2643843 () Bool)

(assert (=> d!1251693 (=> res!1749827 e!2643843)))

(assert (=> d!1251693 (= res!1749827 (not ((_ is Node!14223) t!4386)))))

(assert (=> d!1251693 (= (isBalanced!3784 t!4386) e!2643843)))

(declare-fun b!4256646 () Bool)

(declare-fun e!2643844 () Bool)

(declare-fun isEmpty!27948 (Conc!14223) Bool)

(assert (=> b!4256646 (= e!2643844 (not (isEmpty!27948 (right!35323 t!4386))))))

(declare-fun b!4256647 () Bool)

(assert (=> b!4256647 (= e!2643843 e!2643844)))

(declare-fun res!1749829 () Bool)

(assert (=> b!4256647 (=> (not res!1749829) (not e!2643844))))

(declare-fun height!1848 (Conc!14223) Int)

(assert (=> b!4256647 (= res!1749829 (<= (- 1) (- (height!1848 (left!34993 t!4386)) (height!1848 (right!35323 t!4386)))))))

(declare-fun b!4256648 () Bool)

(declare-fun res!1749826 () Bool)

(assert (=> b!4256648 (=> (not res!1749826) (not e!2643844))))

(assert (=> b!4256648 (= res!1749826 (isBalanced!3784 (left!34993 t!4386)))))

(declare-fun b!4256649 () Bool)

(declare-fun res!1749830 () Bool)

(assert (=> b!4256649 (=> (not res!1749830) (not e!2643844))))

(assert (=> b!4256649 (= res!1749830 (isBalanced!3784 (right!35323 t!4386)))))

(declare-fun b!4256650 () Bool)

(declare-fun res!1749828 () Bool)

(assert (=> b!4256650 (=> (not res!1749828) (not e!2643844))))

(assert (=> b!4256650 (= res!1749828 (<= (- (height!1848 (left!34993 t!4386)) (height!1848 (right!35323 t!4386))) 1))))

(declare-fun b!4256651 () Bool)

(declare-fun res!1749825 () Bool)

(assert (=> b!4256651 (=> (not res!1749825) (not e!2643844))))

(assert (=> b!4256651 (= res!1749825 (not (isEmpty!27948 (left!34993 t!4386))))))

(assert (= (and d!1251693 (not res!1749827)) b!4256647))

(assert (= (and b!4256647 res!1749829) b!4256650))

(assert (= (and b!4256650 res!1749828) b!4256648))

(assert (= (and b!4256648 res!1749826) b!4256649))

(assert (= (and b!4256649 res!1749830) b!4256651))

(assert (= (and b!4256651 res!1749825) b!4256646))

(declare-fun m!4841865 () Bool)

(assert (=> b!4256648 m!4841865))

(declare-fun m!4841867 () Bool)

(assert (=> b!4256646 m!4841867))

(declare-fun m!4841869 () Bool)

(assert (=> b!4256647 m!4841869))

(declare-fun m!4841871 () Bool)

(assert (=> b!4256647 m!4841871))

(declare-fun m!4841873 () Bool)

(assert (=> b!4256649 m!4841873))

(assert (=> b!4256650 m!4841869))

(assert (=> b!4256650 m!4841871))

(declare-fun m!4841875 () Bool)

(assert (=> b!4256651 m!4841875))

(assert (=> start!407806 d!1251693))

(declare-fun d!1251699 () Bool)

(declare-fun c!722713 () Bool)

(assert (=> d!1251699 (= c!722713 ((_ is Node!14223) t!4386))))

(declare-fun e!2643845 () Bool)

(assert (=> d!1251699 (= (inv!62049 t!4386) e!2643845)))

(declare-fun b!4256652 () Bool)

(assert (=> b!4256652 (= e!2643845 (inv!62051 t!4386))))

(declare-fun b!4256653 () Bool)

(declare-fun e!2643846 () Bool)

(assert (=> b!4256653 (= e!2643845 e!2643846)))

(declare-fun res!1749831 () Bool)

(assert (=> b!4256653 (= res!1749831 (not ((_ is Leaf!21986) t!4386)))))

(assert (=> b!4256653 (=> res!1749831 e!2643846)))

(declare-fun b!4256654 () Bool)

(assert (=> b!4256654 (= e!2643846 (inv!62053 t!4386))))

(assert (= (and d!1251699 c!722713) b!4256652))

(assert (= (and d!1251699 (not c!722713)) b!4256653))

(assert (= (and b!4256653 (not res!1749831)) b!4256654))

(declare-fun m!4841877 () Bool)

(assert (=> b!4256652 m!4841877))

(declare-fun m!4841879 () Bool)

(assert (=> b!4256654 m!4841879))

(assert (=> start!407806 d!1251699))

(declare-fun d!1251701 () Bool)

(declare-fun c!722716 () Bool)

(assert (=> d!1251701 (= c!722716 ((_ is Node!14222) Empty!14222))))

(declare-fun e!2643853 () Bool)

(assert (=> d!1251701 (= (inv!62048 Empty!14222) e!2643853)))

(declare-fun b!4256667 () Bool)

(declare-fun inv!62056 (Conc!14222) Bool)

(assert (=> b!4256667 (= e!2643853 (inv!62056 Empty!14222))))

(declare-fun b!4256668 () Bool)

(declare-fun e!2643854 () Bool)

(assert (=> b!4256668 (= e!2643853 e!2643854)))

(declare-fun res!1749840 () Bool)

(assert (=> b!4256668 (= res!1749840 (not ((_ is Leaf!21985) Empty!14222)))))

(assert (=> b!4256668 (=> res!1749840 e!2643854)))

(declare-fun b!4256669 () Bool)

(declare-fun inv!62058 (Conc!14222) Bool)

(assert (=> b!4256669 (= e!2643854 (inv!62058 Empty!14222))))

(assert (= (and d!1251701 c!722716) b!4256667))

(assert (= (and d!1251701 (not c!722716)) b!4256668))

(assert (= (and b!4256668 (not res!1749840)) b!4256669))

(declare-fun m!4841893 () Bool)

(assert (=> b!4256667 m!4841893))

(declare-fun m!4841895 () Bool)

(assert (=> b!4256669 m!4841895))

(assert (=> b!4256597 d!1251701))

(declare-fun d!1251705 () Bool)

(declare-fun size!34560 (List!47339) Int)

(assert (=> d!1251705 (= (inv!62050 (xs!17529 t!4386)) (<= (size!34560 (innerList!14283 (xs!17529 t!4386))) 2147483647))))

(declare-fun bs!598837 () Bool)

(assert (= bs!598837 d!1251705))

(declare-fun m!4841897 () Bool)

(assert (=> bs!598837 m!4841897))

(assert (=> b!4256600 d!1251705))

(declare-fun tp!1306320 () Bool)

(declare-fun e!2643875 () Bool)

(declare-fun tp!1306319 () Bool)

(declare-fun b!4256702 () Bool)

(assert (=> b!4256702 (= e!2643875 (and (inv!62049 (left!34993 (left!34993 t!4386))) tp!1306319 (inv!62049 (right!35323 (left!34993 t!4386))) tp!1306320))))

(declare-fun b!4256704 () Bool)

(declare-fun e!2643874 () Bool)

(declare-fun tp!1306318 () Bool)

(assert (=> b!4256704 (= e!2643874 tp!1306318)))

(declare-fun b!4256703 () Bool)

(assert (=> b!4256703 (= e!2643875 (and (inv!62050 (xs!17529 (left!34993 t!4386))) e!2643874))))

(assert (=> b!4256598 (= tp!1306304 (and (inv!62049 (left!34993 t!4386)) e!2643875))))

(assert (= (and b!4256598 ((_ is Node!14223) (left!34993 t!4386))) b!4256702))

(assert (= b!4256703 b!4256704))

(assert (= (and b!4256598 ((_ is Leaf!21986) (left!34993 t!4386))) b!4256703))

(declare-fun m!4841911 () Bool)

(assert (=> b!4256702 m!4841911))

(declare-fun m!4841913 () Bool)

(assert (=> b!4256702 m!4841913))

(declare-fun m!4841915 () Bool)

(assert (=> b!4256703 m!4841915))

(assert (=> b!4256598 m!4841841))

(declare-fun tp!1306325 () Bool)

(declare-fun tp!1306324 () Bool)

(declare-fun e!2643879 () Bool)

(declare-fun b!4256709 () Bool)

(assert (=> b!4256709 (= e!2643879 (and (inv!62049 (left!34993 (right!35323 t!4386))) tp!1306324 (inv!62049 (right!35323 (right!35323 t!4386))) tp!1306325))))

(declare-fun b!4256711 () Bool)

(declare-fun e!2643878 () Bool)

(declare-fun tp!1306323 () Bool)

(assert (=> b!4256711 (= e!2643878 tp!1306323)))

(declare-fun b!4256710 () Bool)

(assert (=> b!4256710 (= e!2643879 (and (inv!62050 (xs!17529 (right!35323 t!4386))) e!2643878))))

(assert (=> b!4256598 (= tp!1306302 (and (inv!62049 (right!35323 t!4386)) e!2643879))))

(assert (= (and b!4256598 ((_ is Node!14223) (right!35323 t!4386))) b!4256709))

(assert (= b!4256710 b!4256711))

(assert (= (and b!4256598 ((_ is Leaf!21986) (right!35323 t!4386))) b!4256710))

(declare-fun m!4841917 () Bool)

(assert (=> b!4256709 m!4841917))

(declare-fun m!4841919 () Bool)

(assert (=> b!4256709 m!4841919))

(declare-fun m!4841921 () Bool)

(assert (=> b!4256710 m!4841921))

(assert (=> b!4256598 m!4841843))

(declare-fun b!4256719 () Bool)

(declare-fun e!2643884 () Bool)

(declare-fun tp_is_empty!22829 () Bool)

(declare-fun tp!1306331 () Bool)

(assert (=> b!4256719 (= e!2643884 (and tp_is_empty!22829 tp!1306331))))

(assert (=> b!4256596 (= tp!1306303 e!2643884)))

(assert (= (and b!4256596 ((_ is Cons!47215) (innerList!14283 (xs!17529 t!4386)))) b!4256719))

(check-sat (not b!4256652) (not b!4256646) (not b!4256647) (not b!4256669) tp_is_empty!22829 (not b!4256702) (not d!1251705) (not b!4256615) (not b!4256618) (not b!4256616) (not b!4256703) (not b!4256613) (not b!4256710) (not b!4256651) (not b!4256598) (not b!4256650) (not b!4256648) (not b!4256719) (not b!4256709) (not b!4256667) (not b!4256654) (not b!4256649) (not b!4256711) (not b!4256704))
(check-sat)
