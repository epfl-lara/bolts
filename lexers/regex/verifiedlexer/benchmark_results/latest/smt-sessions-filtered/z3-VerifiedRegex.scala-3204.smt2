; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186684 () Bool)

(assert start!186684)

(declare-fun b!1865889 () Bool)

(declare-fun e!1190997 () Bool)

(declare-fun tp!531274 () Bool)

(declare-datatypes ((T!33130 0))(
  ( (T!33131 (val!5944 Int)) )
))
(declare-datatypes ((List!20761 0))(
  ( (Nil!20679) (Cons!20679 (h!26080 T!33130) (t!172882 List!20761)) )
))
(declare-datatypes ((IArray!13753 0))(
  ( (IArray!13754 (innerList!6934 List!20761)) )
))
(declare-datatypes ((Conc!6874 0))(
  ( (Node!6874 (left!16664 Conc!6874) (right!16994 Conc!6874) (csize!13978 Int) (cheight!7085 Int)) (Leaf!10079 (xs!9756 IArray!13753) (csize!13979 Int)) (Empty!6874) )
))
(declare-fun t!4595 () Conc!6874)

(declare-fun tp!531276 () Bool)

(declare-fun inv!27363 (Conc!6874) Bool)

(assert (=> b!1865889 (= e!1190997 (and (inv!27363 (left!16664 t!4595)) tp!531276 (inv!27363 (right!16994 t!4595)) tp!531274))))

(declare-fun b!1865890 () Bool)

(declare-fun res!835521 () Bool)

(declare-fun e!1190999 () Bool)

(assert (=> b!1865890 (=> (not res!835521) (not e!1190999))))

(get-info :version)

(assert (=> b!1865890 (= res!835521 (and ((_ is Leaf!10079) t!4595) (= (csize!13979 t!4595) 1)))))

(declare-fun b!1865891 () Bool)

(declare-fun e!1190996 () Bool)

(declare-fun tp!531275 () Bool)

(assert (=> b!1865891 (= e!1190996 tp!531275)))

(declare-fun b!1865892 () Bool)

(declare-fun e!1190998 () Bool)

(declare-fun list!8456 (Conc!6874) List!20761)

(declare-fun tail!2829 (List!20761) List!20761)

(assert (=> b!1865892 (= e!1190998 (not (= (list!8456 Empty!6874) (tail!2829 (list!8456 t!4595)))))))

(declare-fun b!1865894 () Bool)

(declare-fun res!835520 () Bool)

(assert (=> b!1865894 (=> (not res!835520) (not e!1190999))))

(declare-fun isEmpty!12899 (Conc!6874) Bool)

(assert (=> b!1865894 (= res!835520 (not (isEmpty!12899 t!4595)))))

(declare-fun b!1865895 () Bool)

(declare-fun inv!27364 (IArray!13753) Bool)

(assert (=> b!1865895 (= e!1190997 (and (inv!27364 (xs!9756 t!4595)) e!1190996))))

(declare-fun res!835523 () Bool)

(assert (=> start!186684 (=> (not res!835523) (not e!1190999))))

(declare-fun isBalanced!2175 (Conc!6874) Bool)

(assert (=> start!186684 (= res!835523 (isBalanced!2175 t!4595))))

(assert (=> start!186684 e!1190999))

(assert (=> start!186684 (and (inv!27363 t!4595) e!1190997)))

(declare-fun b!1865893 () Bool)

(assert (=> b!1865893 (= e!1190999 e!1190998)))

(declare-fun res!835522 () Bool)

(assert (=> b!1865893 (=> res!835522 e!1190998)))

(assert (=> b!1865893 (= res!835522 (not (isBalanced!2175 Empty!6874)))))

(assert (= (and start!186684 res!835523) b!1865894))

(assert (= (and b!1865894 res!835520) b!1865890))

(assert (= (and b!1865890 res!835521) b!1865893))

(assert (= (and b!1865893 (not res!835522)) b!1865892))

(assert (= (and start!186684 ((_ is Node!6874) t!4595)) b!1865889))

(assert (= b!1865895 b!1865891))

(assert (= (and start!186684 ((_ is Leaf!10079) t!4595)) b!1865895))

(declare-fun m!2290571 () Bool)

(assert (=> b!1865895 m!2290571))

(declare-fun m!2290573 () Bool)

(assert (=> b!1865893 m!2290573))

(declare-fun m!2290575 () Bool)

(assert (=> b!1865892 m!2290575))

(declare-fun m!2290577 () Bool)

(assert (=> b!1865892 m!2290577))

(assert (=> b!1865892 m!2290577))

(declare-fun m!2290579 () Bool)

(assert (=> b!1865892 m!2290579))

(declare-fun m!2290581 () Bool)

(assert (=> start!186684 m!2290581))

(declare-fun m!2290583 () Bool)

(assert (=> start!186684 m!2290583))

(declare-fun m!2290585 () Bool)

(assert (=> b!1865894 m!2290585))

(declare-fun m!2290587 () Bool)

(assert (=> b!1865889 m!2290587))

(declare-fun m!2290589 () Bool)

(assert (=> b!1865889 m!2290589))

(check-sat (not b!1865893) (not b!1865891) (not b!1865892) (not b!1865894) (not b!1865895) (not start!186684) (not b!1865889))
(check-sat)
(get-model)

(declare-fun d!569627 () Bool)

(declare-fun c!303912 () Bool)

(assert (=> d!569627 (= c!303912 ((_ is Empty!6874) Empty!6874))))

(declare-fun e!1191008 () List!20761)

(assert (=> d!569627 (= (list!8456 Empty!6874) e!1191008)))

(declare-fun b!1865917 () Bool)

(declare-fun e!1191009 () List!20761)

(assert (=> b!1865917 (= e!1191008 e!1191009)))

(declare-fun c!303913 () Bool)

(assert (=> b!1865917 (= c!303913 ((_ is Leaf!10079) Empty!6874))))

(declare-fun b!1865916 () Bool)

(assert (=> b!1865916 (= e!1191008 Nil!20679)))

(declare-fun b!1865918 () Bool)

(declare-fun list!8457 (IArray!13753) List!20761)

(assert (=> b!1865918 (= e!1191009 (list!8457 (xs!9756 Empty!6874)))))

(declare-fun b!1865919 () Bool)

(declare-fun ++!5601 (List!20761 List!20761) List!20761)

(assert (=> b!1865919 (= e!1191009 (++!5601 (list!8456 (left!16664 Empty!6874)) (list!8456 (right!16994 Empty!6874))))))

(assert (= (and d!569627 c!303912) b!1865916))

(assert (= (and d!569627 (not c!303912)) b!1865917))

(assert (= (and b!1865917 c!303913) b!1865918))

(assert (= (and b!1865917 (not c!303913)) b!1865919))

(declare-fun m!2290591 () Bool)

(assert (=> b!1865918 m!2290591))

(declare-fun m!2290593 () Bool)

(assert (=> b!1865919 m!2290593))

(declare-fun m!2290595 () Bool)

(assert (=> b!1865919 m!2290595))

(assert (=> b!1865919 m!2290593))

(assert (=> b!1865919 m!2290595))

(declare-fun m!2290597 () Bool)

(assert (=> b!1865919 m!2290597))

(assert (=> b!1865892 d!569627))

(declare-fun d!569629 () Bool)

(assert (=> d!569629 (= (tail!2829 (list!8456 t!4595)) (t!172882 (list!8456 t!4595)))))

(assert (=> b!1865892 d!569629))

(declare-fun d!569631 () Bool)

(declare-fun c!303914 () Bool)

(assert (=> d!569631 (= c!303914 ((_ is Empty!6874) t!4595))))

(declare-fun e!1191012 () List!20761)

(assert (=> d!569631 (= (list!8456 t!4595) e!1191012)))

(declare-fun b!1865927 () Bool)

(declare-fun e!1191013 () List!20761)

(assert (=> b!1865927 (= e!1191012 e!1191013)))

(declare-fun c!303915 () Bool)

(assert (=> b!1865927 (= c!303915 ((_ is Leaf!10079) t!4595))))

(declare-fun b!1865926 () Bool)

(assert (=> b!1865926 (= e!1191012 Nil!20679)))

(declare-fun b!1865928 () Bool)

(assert (=> b!1865928 (= e!1191013 (list!8457 (xs!9756 t!4595)))))

(declare-fun b!1865929 () Bool)

(assert (=> b!1865929 (= e!1191013 (++!5601 (list!8456 (left!16664 t!4595)) (list!8456 (right!16994 t!4595))))))

(assert (= (and d!569631 c!303914) b!1865926))

(assert (= (and d!569631 (not c!303914)) b!1865927))

(assert (= (and b!1865927 c!303915) b!1865928))

(assert (= (and b!1865927 (not c!303915)) b!1865929))

(declare-fun m!2290611 () Bool)

(assert (=> b!1865928 m!2290611))

(declare-fun m!2290613 () Bool)

(assert (=> b!1865929 m!2290613))

(declare-fun m!2290615 () Bool)

(assert (=> b!1865929 m!2290615))

(assert (=> b!1865929 m!2290613))

(assert (=> b!1865929 m!2290615))

(declare-fun m!2290617 () Bool)

(assert (=> b!1865929 m!2290617))

(assert (=> b!1865892 d!569631))

(declare-fun d!569635 () Bool)

(declare-fun size!16386 (List!20761) Int)

(assert (=> d!569635 (= (inv!27364 (xs!9756 t!4595)) (<= (size!16386 (innerList!6934 (xs!9756 t!4595))) 2147483647))))

(declare-fun bs!411700 () Bool)

(assert (= bs!411700 d!569635))

(declare-fun m!2290619 () Bool)

(assert (=> bs!411700 m!2290619))

(assert (=> b!1865895 d!569635))

(declare-fun d!569637 () Bool)

(declare-fun c!303924 () Bool)

(assert (=> d!569637 (= c!303924 ((_ is Node!6874) (left!16664 t!4595)))))

(declare-fun e!1191024 () Bool)

(assert (=> d!569637 (= (inv!27363 (left!16664 t!4595)) e!1191024)))

(declare-fun b!1865948 () Bool)

(declare-fun inv!27365 (Conc!6874) Bool)

(assert (=> b!1865948 (= e!1191024 (inv!27365 (left!16664 t!4595)))))

(declare-fun b!1865949 () Bool)

(declare-fun e!1191025 () Bool)

(assert (=> b!1865949 (= e!1191024 e!1191025)))

(declare-fun res!835544 () Bool)

(assert (=> b!1865949 (= res!835544 (not ((_ is Leaf!10079) (left!16664 t!4595))))))

(assert (=> b!1865949 (=> res!835544 e!1191025)))

(declare-fun b!1865950 () Bool)

(declare-fun inv!27366 (Conc!6874) Bool)

(assert (=> b!1865950 (= e!1191025 (inv!27366 (left!16664 t!4595)))))

(assert (= (and d!569637 c!303924) b!1865948))

(assert (= (and d!569637 (not c!303924)) b!1865949))

(assert (= (and b!1865949 (not res!835544)) b!1865950))

(declare-fun m!2290623 () Bool)

(assert (=> b!1865948 m!2290623))

(declare-fun m!2290627 () Bool)

(assert (=> b!1865950 m!2290627))

(assert (=> b!1865889 d!569637))

(declare-fun d!569639 () Bool)

(declare-fun c!303925 () Bool)

(assert (=> d!569639 (= c!303925 ((_ is Node!6874) (right!16994 t!4595)))))

(declare-fun e!1191026 () Bool)

(assert (=> d!569639 (= (inv!27363 (right!16994 t!4595)) e!1191026)))

(declare-fun b!1865951 () Bool)

(assert (=> b!1865951 (= e!1191026 (inv!27365 (right!16994 t!4595)))))

(declare-fun b!1865952 () Bool)

(declare-fun e!1191027 () Bool)

(assert (=> b!1865952 (= e!1191026 e!1191027)))

(declare-fun res!835545 () Bool)

(assert (=> b!1865952 (= res!835545 (not ((_ is Leaf!10079) (right!16994 t!4595))))))

(assert (=> b!1865952 (=> res!835545 e!1191027)))

(declare-fun b!1865953 () Bool)

(assert (=> b!1865953 (= e!1191027 (inv!27366 (right!16994 t!4595)))))

(assert (= (and d!569639 c!303925) b!1865951))

(assert (= (and d!569639 (not c!303925)) b!1865952))

(assert (= (and b!1865952 (not res!835545)) b!1865953))

(declare-fun m!2290633 () Bool)

(assert (=> b!1865951 m!2290633))

(declare-fun m!2290635 () Bool)

(assert (=> b!1865953 m!2290635))

(assert (=> b!1865889 d!569639))

(declare-fun b!1865982 () Bool)

(declare-fun e!1191043 () Bool)

(assert (=> b!1865982 (= e!1191043 (not (isEmpty!12899 (right!16994 t!4595))))))

(declare-fun b!1865983 () Bool)

(declare-fun res!835567 () Bool)

(assert (=> b!1865983 (=> (not res!835567) (not e!1191043))))

(assert (=> b!1865983 (= res!835567 (isBalanced!2175 (right!16994 t!4595)))))

(declare-fun b!1865984 () Bool)

(declare-fun res!835563 () Bool)

(assert (=> b!1865984 (=> (not res!835563) (not e!1191043))))

(assert (=> b!1865984 (= res!835563 (isBalanced!2175 (left!16664 t!4595)))))

(declare-fun b!1865985 () Bool)

(declare-fun res!835564 () Bool)

(assert (=> b!1865985 (=> (not res!835564) (not e!1191043))))

(declare-fun height!1061 (Conc!6874) Int)

(assert (=> b!1865985 (= res!835564 (<= (- (height!1061 (left!16664 t!4595)) (height!1061 (right!16994 t!4595))) 1))))

(declare-fun b!1865986 () Bool)

(declare-fun res!835566 () Bool)

(assert (=> b!1865986 (=> (not res!835566) (not e!1191043))))

(assert (=> b!1865986 (= res!835566 (not (isEmpty!12899 (left!16664 t!4595))))))

(declare-fun b!1865987 () Bool)

(declare-fun e!1191042 () Bool)

(assert (=> b!1865987 (= e!1191042 e!1191043)))

(declare-fun res!835565 () Bool)

(assert (=> b!1865987 (=> (not res!835565) (not e!1191043))))

(assert (=> b!1865987 (= res!835565 (<= (- 1) (- (height!1061 (left!16664 t!4595)) (height!1061 (right!16994 t!4595)))))))

(declare-fun d!569643 () Bool)

(declare-fun res!835562 () Bool)

(assert (=> d!569643 (=> res!835562 e!1191042)))

(assert (=> d!569643 (= res!835562 (not ((_ is Node!6874) t!4595)))))

(assert (=> d!569643 (= (isBalanced!2175 t!4595) e!1191042)))

(assert (= (and d!569643 (not res!835562)) b!1865987))

(assert (= (and b!1865987 res!835565) b!1865985))

(assert (= (and b!1865985 res!835564) b!1865984))

(assert (= (and b!1865984 res!835563) b!1865983))

(assert (= (and b!1865983 res!835567) b!1865986))

(assert (= (and b!1865986 res!835566) b!1865982))

(declare-fun m!2290655 () Bool)

(assert (=> b!1865986 m!2290655))

(declare-fun m!2290657 () Bool)

(assert (=> b!1865983 m!2290657))

(declare-fun m!2290659 () Bool)

(assert (=> b!1865982 m!2290659))

(declare-fun m!2290661 () Bool)

(assert (=> b!1865987 m!2290661))

(declare-fun m!2290663 () Bool)

(assert (=> b!1865987 m!2290663))

(assert (=> b!1865985 m!2290661))

(assert (=> b!1865985 m!2290663))

(declare-fun m!2290665 () Bool)

(assert (=> b!1865984 m!2290665))

(assert (=> start!186684 d!569643))

(declare-fun d!569655 () Bool)

(declare-fun c!303932 () Bool)

(assert (=> d!569655 (= c!303932 ((_ is Node!6874) t!4595))))

(declare-fun e!1191044 () Bool)

(assert (=> d!569655 (= (inv!27363 t!4595) e!1191044)))

(declare-fun b!1865988 () Bool)

(assert (=> b!1865988 (= e!1191044 (inv!27365 t!4595))))

(declare-fun b!1865989 () Bool)

(declare-fun e!1191045 () Bool)

(assert (=> b!1865989 (= e!1191044 e!1191045)))

(declare-fun res!835568 () Bool)

(assert (=> b!1865989 (= res!835568 (not ((_ is Leaf!10079) t!4595)))))

(assert (=> b!1865989 (=> res!835568 e!1191045)))

(declare-fun b!1865990 () Bool)

(assert (=> b!1865990 (= e!1191045 (inv!27366 t!4595))))

(assert (= (and d!569655 c!303932) b!1865988))

(assert (= (and d!569655 (not c!303932)) b!1865989))

(assert (= (and b!1865989 (not res!835568)) b!1865990))

(declare-fun m!2290667 () Bool)

(assert (=> b!1865988 m!2290667))

(declare-fun m!2290669 () Bool)

(assert (=> b!1865990 m!2290669))

(assert (=> start!186684 d!569655))

(declare-fun d!569657 () Bool)

(declare-fun lt!718543 () Bool)

(declare-fun isEmpty!12900 (List!20761) Bool)

(assert (=> d!569657 (= lt!718543 (isEmpty!12900 (list!8456 t!4595)))))

(declare-fun size!16388 (Conc!6874) Int)

(assert (=> d!569657 (= lt!718543 (= (size!16388 t!4595) 0))))

(assert (=> d!569657 (= (isEmpty!12899 t!4595) lt!718543)))

(declare-fun bs!411703 () Bool)

(assert (= bs!411703 d!569657))

(assert (=> bs!411703 m!2290577))

(assert (=> bs!411703 m!2290577))

(declare-fun m!2290691 () Bool)

(assert (=> bs!411703 m!2290691))

(declare-fun m!2290693 () Bool)

(assert (=> bs!411703 m!2290693))

(assert (=> b!1865894 d!569657))

(declare-fun b!1866004 () Bool)

(declare-fun e!1191053 () Bool)

(assert (=> b!1866004 (= e!1191053 (not (isEmpty!12899 (right!16994 Empty!6874))))))

(declare-fun b!1866005 () Bool)

(declare-fun res!835581 () Bool)

(assert (=> b!1866005 (=> (not res!835581) (not e!1191053))))

(assert (=> b!1866005 (= res!835581 (isBalanced!2175 (right!16994 Empty!6874)))))

(declare-fun b!1866006 () Bool)

(declare-fun res!835577 () Bool)

(assert (=> b!1866006 (=> (not res!835577) (not e!1191053))))

(assert (=> b!1866006 (= res!835577 (isBalanced!2175 (left!16664 Empty!6874)))))

(declare-fun b!1866007 () Bool)

(declare-fun res!835578 () Bool)

(assert (=> b!1866007 (=> (not res!835578) (not e!1191053))))

(assert (=> b!1866007 (= res!835578 (<= (- (height!1061 (left!16664 Empty!6874)) (height!1061 (right!16994 Empty!6874))) 1))))

(declare-fun b!1866008 () Bool)

(declare-fun res!835580 () Bool)

(assert (=> b!1866008 (=> (not res!835580) (not e!1191053))))

(assert (=> b!1866008 (= res!835580 (not (isEmpty!12899 (left!16664 Empty!6874))))))

(declare-fun b!1866009 () Bool)

(declare-fun e!1191052 () Bool)

(assert (=> b!1866009 (= e!1191052 e!1191053)))

(declare-fun res!835579 () Bool)

(assert (=> b!1866009 (=> (not res!835579) (not e!1191053))))

(assert (=> b!1866009 (= res!835579 (<= (- 1) (- (height!1061 (left!16664 Empty!6874)) (height!1061 (right!16994 Empty!6874)))))))

(declare-fun d!569663 () Bool)

(declare-fun res!835576 () Bool)

(assert (=> d!569663 (=> res!835576 e!1191052)))

(assert (=> d!569663 (= res!835576 (not ((_ is Node!6874) Empty!6874)))))

(assert (=> d!569663 (= (isBalanced!2175 Empty!6874) e!1191052)))

(assert (= (and d!569663 (not res!835576)) b!1866009))

(assert (= (and b!1866009 res!835579) b!1866007))

(assert (= (and b!1866007 res!835578) b!1866006))

(assert (= (and b!1866006 res!835577) b!1866005))

(assert (= (and b!1866005 res!835581) b!1866008))

(assert (= (and b!1866008 res!835580) b!1866004))

(declare-fun m!2290695 () Bool)

(assert (=> b!1866008 m!2290695))

(declare-fun m!2290697 () Bool)

(assert (=> b!1866005 m!2290697))

(declare-fun m!2290699 () Bool)

(assert (=> b!1866004 m!2290699))

(declare-fun m!2290701 () Bool)

(assert (=> b!1866009 m!2290701))

(declare-fun m!2290703 () Bool)

(assert (=> b!1866009 m!2290703))

(assert (=> b!1866007 m!2290701))

(assert (=> b!1866007 m!2290703))

(declare-fun m!2290705 () Bool)

(assert (=> b!1866006 m!2290705))

(assert (=> b!1865893 d!569663))

(declare-fun b!1866023 () Bool)

(declare-fun e!1191061 () Bool)

(declare-fun tp_is_empty!8667 () Bool)

(declare-fun tp!531288 () Bool)

(assert (=> b!1866023 (= e!1191061 (and tp_is_empty!8667 tp!531288))))

(assert (=> b!1865891 (= tp!531275 e!1191061)))

(assert (= (and b!1865891 ((_ is Cons!20679) (innerList!6934 (xs!9756 t!4595)))) b!1866023))

(declare-fun tp!531303 () Bool)

(declare-fun e!1191070 () Bool)

(declare-fun tp!531301 () Bool)

(declare-fun b!1866038 () Bool)

(assert (=> b!1866038 (= e!1191070 (and (inv!27363 (left!16664 (left!16664 t!4595))) tp!531303 (inv!27363 (right!16994 (left!16664 t!4595))) tp!531301))))

(declare-fun b!1866040 () Bool)

(declare-fun e!1191071 () Bool)

(declare-fun tp!531302 () Bool)

(assert (=> b!1866040 (= e!1191071 tp!531302)))

(declare-fun b!1866039 () Bool)

(assert (=> b!1866039 (= e!1191070 (and (inv!27364 (xs!9756 (left!16664 t!4595))) e!1191071))))

(assert (=> b!1865889 (= tp!531276 (and (inv!27363 (left!16664 t!4595)) e!1191070))))

(assert (= (and b!1865889 ((_ is Node!6874) (left!16664 t!4595))) b!1866038))

(assert (= b!1866039 b!1866040))

(assert (= (and b!1865889 ((_ is Leaf!10079) (left!16664 t!4595))) b!1866039))

(declare-fun m!2290719 () Bool)

(assert (=> b!1866038 m!2290719))

(declare-fun m!2290721 () Bool)

(assert (=> b!1866038 m!2290721))

(declare-fun m!2290723 () Bool)

(assert (=> b!1866039 m!2290723))

(assert (=> b!1865889 m!2290587))

(declare-fun b!1866041 () Bool)

(declare-fun tp!531304 () Bool)

(declare-fun tp!531306 () Bool)

(declare-fun e!1191072 () Bool)

(assert (=> b!1866041 (= e!1191072 (and (inv!27363 (left!16664 (right!16994 t!4595))) tp!531306 (inv!27363 (right!16994 (right!16994 t!4595))) tp!531304))))

(declare-fun b!1866043 () Bool)

(declare-fun e!1191073 () Bool)

(declare-fun tp!531305 () Bool)

(assert (=> b!1866043 (= e!1191073 tp!531305)))

(declare-fun b!1866042 () Bool)

(assert (=> b!1866042 (= e!1191072 (and (inv!27364 (xs!9756 (right!16994 t!4595))) e!1191073))))

(assert (=> b!1865889 (= tp!531274 (and (inv!27363 (right!16994 t!4595)) e!1191072))))

(assert (= (and b!1865889 ((_ is Node!6874) (right!16994 t!4595))) b!1866041))

(assert (= b!1866042 b!1866043))

(assert (= (and b!1865889 ((_ is Leaf!10079) (right!16994 t!4595))) b!1866042))

(declare-fun m!2290725 () Bool)

(assert (=> b!1866041 m!2290725))

(declare-fun m!2290727 () Bool)

(assert (=> b!1866041 m!2290727))

(declare-fun m!2290729 () Bool)

(assert (=> b!1866042 m!2290729))

(assert (=> b!1865889 m!2290589))

(check-sat (not b!1866039) (not b!1865919) tp_is_empty!8667 (not b!1866040) (not b!1865985) (not b!1866042) (not b!1865950) (not d!569635) (not b!1865984) (not b!1866041) (not b!1866006) (not b!1865983) (not b!1866007) (not b!1865928) (not b!1865918) (not b!1866005) (not b!1865990) (not b!1865986) (not d!569657) (not b!1866023) (not b!1865951) (not b!1865948) (not b!1865988) (not b!1865953) (not b!1866038) (not b!1866009) (not b!1865889) (not b!1866004) (not b!1865982) (not b!1865929) (not b!1865987) (not b!1866043) (not b!1866008))
(check-sat)
(get-model)

(declare-fun d!569665 () Bool)

(declare-fun res!835586 () Bool)

(declare-fun e!1191076 () Bool)

(assert (=> d!569665 (=> (not res!835586) (not e!1191076))))

(assert (=> d!569665 (= res!835586 (<= (size!16386 (list!8457 (xs!9756 (left!16664 t!4595)))) 512))))

(assert (=> d!569665 (= (inv!27366 (left!16664 t!4595)) e!1191076)))

(declare-fun b!1866048 () Bool)

(declare-fun res!835587 () Bool)

(assert (=> b!1866048 (=> (not res!835587) (not e!1191076))))

(assert (=> b!1866048 (= res!835587 (= (csize!13979 (left!16664 t!4595)) (size!16386 (list!8457 (xs!9756 (left!16664 t!4595))))))))

(declare-fun b!1866049 () Bool)

(assert (=> b!1866049 (= e!1191076 (and (> (csize!13979 (left!16664 t!4595)) 0) (<= (csize!13979 (left!16664 t!4595)) 512)))))

(assert (= (and d!569665 res!835586) b!1866048))

(assert (= (and b!1866048 res!835587) b!1866049))

(declare-fun m!2290731 () Bool)

(assert (=> d!569665 m!2290731))

(assert (=> d!569665 m!2290731))

(declare-fun m!2290733 () Bool)

(assert (=> d!569665 m!2290733))

(assert (=> b!1866048 m!2290731))

(assert (=> b!1866048 m!2290731))

(assert (=> b!1866048 m!2290733))

(assert (=> b!1865950 d!569665))

(declare-fun d!569667 () Bool)

(assert (=> d!569667 (= (height!1061 (left!16664 t!4595)) (ite ((_ is Empty!6874) (left!16664 t!4595)) 0 (ite ((_ is Leaf!10079) (left!16664 t!4595)) 1 (cheight!7085 (left!16664 t!4595)))))))

(assert (=> b!1865987 d!569667))

(declare-fun d!569669 () Bool)

(assert (=> d!569669 (= (height!1061 (right!16994 t!4595)) (ite ((_ is Empty!6874) (right!16994 t!4595)) 0 (ite ((_ is Leaf!10079) (right!16994 t!4595)) 1 (cheight!7085 (right!16994 t!4595)))))))

(assert (=> b!1865987 d!569669))

(declare-fun d!569671 () Bool)

(declare-fun res!835588 () Bool)

(declare-fun e!1191077 () Bool)

(assert (=> d!569671 (=> (not res!835588) (not e!1191077))))

(assert (=> d!569671 (= res!835588 (<= (size!16386 (list!8457 (xs!9756 t!4595))) 512))))

(assert (=> d!569671 (= (inv!27366 t!4595) e!1191077)))

(declare-fun b!1866050 () Bool)

(declare-fun res!835589 () Bool)

(assert (=> b!1866050 (=> (not res!835589) (not e!1191077))))

(assert (=> b!1866050 (= res!835589 (= (csize!13979 t!4595) (size!16386 (list!8457 (xs!9756 t!4595)))))))

(declare-fun b!1866051 () Bool)

(assert (=> b!1866051 (= e!1191077 (and (> (csize!13979 t!4595) 0) (<= (csize!13979 t!4595) 512)))))

(assert (= (and d!569671 res!835588) b!1866050))

(assert (= (and b!1866050 res!835589) b!1866051))

(assert (=> d!569671 m!2290611))

(assert (=> d!569671 m!2290611))

(declare-fun m!2290735 () Bool)

(assert (=> d!569671 m!2290735))

(assert (=> b!1866050 m!2290611))

(assert (=> b!1866050 m!2290611))

(assert (=> b!1866050 m!2290735))

(assert (=> b!1865990 d!569671))

(declare-fun d!569673 () Bool)

(declare-fun res!835596 () Bool)

(declare-fun e!1191080 () Bool)

(assert (=> d!569673 (=> (not res!835596) (not e!1191080))))

(assert (=> d!569673 (= res!835596 (= (csize!13978 (left!16664 t!4595)) (+ (size!16388 (left!16664 (left!16664 t!4595))) (size!16388 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!569673 (= (inv!27365 (left!16664 t!4595)) e!1191080)))

(declare-fun b!1866058 () Bool)

(declare-fun res!835597 () Bool)

(assert (=> b!1866058 (=> (not res!835597) (not e!1191080))))

(assert (=> b!1866058 (= res!835597 (and (not (= (left!16664 (left!16664 t!4595)) Empty!6874)) (not (= (right!16994 (left!16664 t!4595)) Empty!6874))))))

(declare-fun b!1866059 () Bool)

(declare-fun res!835598 () Bool)

(assert (=> b!1866059 (=> (not res!835598) (not e!1191080))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1866059 (= res!835598 (= (cheight!7085 (left!16664 t!4595)) (+ (max!0 (height!1061 (left!16664 (left!16664 t!4595))) (height!1061 (right!16994 (left!16664 t!4595)))) 1)))))

(declare-fun b!1866060 () Bool)

(assert (=> b!1866060 (= e!1191080 (<= 0 (cheight!7085 (left!16664 t!4595))))))

(assert (= (and d!569673 res!835596) b!1866058))

(assert (= (and b!1866058 res!835597) b!1866059))

(assert (= (and b!1866059 res!835598) b!1866060))

(declare-fun m!2290737 () Bool)

(assert (=> d!569673 m!2290737))

(declare-fun m!2290739 () Bool)

(assert (=> d!569673 m!2290739))

(declare-fun m!2290741 () Bool)

(assert (=> b!1866059 m!2290741))

(declare-fun m!2290743 () Bool)

(assert (=> b!1866059 m!2290743))

(assert (=> b!1866059 m!2290741))

(assert (=> b!1866059 m!2290743))

(declare-fun m!2290745 () Bool)

(assert (=> b!1866059 m!2290745))

(assert (=> b!1865948 d!569673))

(declare-fun d!569675 () Bool)

(declare-fun res!835599 () Bool)

(declare-fun e!1191081 () Bool)

(assert (=> d!569675 (=> (not res!835599) (not e!1191081))))

(assert (=> d!569675 (= res!835599 (<= (size!16386 (list!8457 (xs!9756 (right!16994 t!4595)))) 512))))

(assert (=> d!569675 (= (inv!27366 (right!16994 t!4595)) e!1191081)))

(declare-fun b!1866061 () Bool)

(declare-fun res!835600 () Bool)

(assert (=> b!1866061 (=> (not res!835600) (not e!1191081))))

(assert (=> b!1866061 (= res!835600 (= (csize!13979 (right!16994 t!4595)) (size!16386 (list!8457 (xs!9756 (right!16994 t!4595))))))))

(declare-fun b!1866062 () Bool)

(assert (=> b!1866062 (= e!1191081 (and (> (csize!13979 (right!16994 t!4595)) 0) (<= (csize!13979 (right!16994 t!4595)) 512)))))

(assert (= (and d!569675 res!835599) b!1866061))

(assert (= (and b!1866061 res!835600) b!1866062))

(declare-fun m!2290747 () Bool)

(assert (=> d!569675 m!2290747))

(assert (=> d!569675 m!2290747))

(declare-fun m!2290749 () Bool)

(assert (=> d!569675 m!2290749))

(assert (=> b!1866061 m!2290747))

(assert (=> b!1866061 m!2290747))

(assert (=> b!1866061 m!2290749))

(assert (=> b!1865953 d!569675))

(declare-fun d!569677 () Bool)

(declare-fun lt!718544 () Bool)

(assert (=> d!569677 (= lt!718544 (isEmpty!12900 (list!8456 (left!16664 t!4595))))))

(assert (=> d!569677 (= lt!718544 (= (size!16388 (left!16664 t!4595)) 0))))

(assert (=> d!569677 (= (isEmpty!12899 (left!16664 t!4595)) lt!718544)))

(declare-fun bs!411704 () Bool)

(assert (= bs!411704 d!569677))

(assert (=> bs!411704 m!2290613))

(assert (=> bs!411704 m!2290613))

(declare-fun m!2290751 () Bool)

(assert (=> bs!411704 m!2290751))

(declare-fun m!2290753 () Bool)

(assert (=> bs!411704 m!2290753))

(assert (=> b!1865986 d!569677))

(assert (=> b!1865889 d!569637))

(assert (=> b!1865889 d!569639))

(assert (=> b!1865985 d!569667))

(assert (=> b!1865985 d!569669))

(declare-fun d!569679 () Bool)

(declare-fun res!835601 () Bool)

(declare-fun e!1191082 () Bool)

(assert (=> d!569679 (=> (not res!835601) (not e!1191082))))

(assert (=> d!569679 (= res!835601 (= (csize!13978 t!4595) (+ (size!16388 (left!16664 t!4595)) (size!16388 (right!16994 t!4595)))))))

(assert (=> d!569679 (= (inv!27365 t!4595) e!1191082)))

(declare-fun b!1866063 () Bool)

(declare-fun res!835602 () Bool)

(assert (=> b!1866063 (=> (not res!835602) (not e!1191082))))

(assert (=> b!1866063 (= res!835602 (and (not (= (left!16664 t!4595) Empty!6874)) (not (= (right!16994 t!4595) Empty!6874))))))

(declare-fun b!1866064 () Bool)

(declare-fun res!835603 () Bool)

(assert (=> b!1866064 (=> (not res!835603) (not e!1191082))))

(assert (=> b!1866064 (= res!835603 (= (cheight!7085 t!4595) (+ (max!0 (height!1061 (left!16664 t!4595)) (height!1061 (right!16994 t!4595))) 1)))))

(declare-fun b!1866065 () Bool)

(assert (=> b!1866065 (= e!1191082 (<= 0 (cheight!7085 t!4595)))))

(assert (= (and d!569679 res!835601) b!1866063))

(assert (= (and b!1866063 res!835602) b!1866064))

(assert (= (and b!1866064 res!835603) b!1866065))

(assert (=> d!569679 m!2290753))

(declare-fun m!2290755 () Bool)

(assert (=> d!569679 m!2290755))

(assert (=> b!1866064 m!2290661))

(assert (=> b!1866064 m!2290663))

(assert (=> b!1866064 m!2290661))

(assert (=> b!1866064 m!2290663))

(declare-fun m!2290757 () Bool)

(assert (=> b!1866064 m!2290757))

(assert (=> b!1865988 d!569679))

(declare-fun d!569681 () Bool)

(assert (=> d!569681 (= (inv!27364 (xs!9756 (left!16664 t!4595))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 t!4595)))) 2147483647))))

(declare-fun bs!411705 () Bool)

(assert (= bs!411705 d!569681))

(declare-fun m!2290759 () Bool)

(assert (=> bs!411705 m!2290759))

(assert (=> b!1866039 d!569681))

(declare-fun d!569683 () Bool)

(declare-fun res!835604 () Bool)

(declare-fun e!1191083 () Bool)

(assert (=> d!569683 (=> (not res!835604) (not e!1191083))))

(assert (=> d!569683 (= res!835604 (= (csize!13978 (right!16994 t!4595)) (+ (size!16388 (left!16664 (right!16994 t!4595))) (size!16388 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!569683 (= (inv!27365 (right!16994 t!4595)) e!1191083)))

(declare-fun b!1866066 () Bool)

(declare-fun res!835605 () Bool)

(assert (=> b!1866066 (=> (not res!835605) (not e!1191083))))

(assert (=> b!1866066 (= res!835605 (and (not (= (left!16664 (right!16994 t!4595)) Empty!6874)) (not (= (right!16994 (right!16994 t!4595)) Empty!6874))))))

(declare-fun b!1866067 () Bool)

(declare-fun res!835606 () Bool)

(assert (=> b!1866067 (=> (not res!835606) (not e!1191083))))

(assert (=> b!1866067 (= res!835606 (= (cheight!7085 (right!16994 t!4595)) (+ (max!0 (height!1061 (left!16664 (right!16994 t!4595))) (height!1061 (right!16994 (right!16994 t!4595)))) 1)))))

(declare-fun b!1866068 () Bool)

(assert (=> b!1866068 (= e!1191083 (<= 0 (cheight!7085 (right!16994 t!4595))))))

(assert (= (and d!569683 res!835604) b!1866066))

(assert (= (and b!1866066 res!835605) b!1866067))

(assert (= (and b!1866067 res!835606) b!1866068))

(declare-fun m!2290761 () Bool)

(assert (=> d!569683 m!2290761))

(declare-fun m!2290763 () Bool)

(assert (=> d!569683 m!2290763))

(declare-fun m!2290765 () Bool)

(assert (=> b!1866067 m!2290765))

(declare-fun m!2290767 () Bool)

(assert (=> b!1866067 m!2290767))

(assert (=> b!1866067 m!2290765))

(assert (=> b!1866067 m!2290767))

(declare-fun m!2290769 () Bool)

(assert (=> b!1866067 m!2290769))

(assert (=> b!1865951 d!569683))

(declare-fun b!1866069 () Bool)

(declare-fun e!1191085 () Bool)

(assert (=> b!1866069 (= e!1191085 (not (isEmpty!12899 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866070 () Bool)

(declare-fun res!835612 () Bool)

(assert (=> b!1866070 (=> (not res!835612) (not e!1191085))))

(assert (=> b!1866070 (= res!835612 (isBalanced!2175 (right!16994 (left!16664 t!4595))))))

(declare-fun b!1866071 () Bool)

(declare-fun res!835608 () Bool)

(assert (=> b!1866071 (=> (not res!835608) (not e!1191085))))

(assert (=> b!1866071 (= res!835608 (isBalanced!2175 (left!16664 (left!16664 t!4595))))))

(declare-fun b!1866072 () Bool)

(declare-fun res!835609 () Bool)

(assert (=> b!1866072 (=> (not res!835609) (not e!1191085))))

(assert (=> b!1866072 (= res!835609 (<= (- (height!1061 (left!16664 (left!16664 t!4595))) (height!1061 (right!16994 (left!16664 t!4595)))) 1))))

(declare-fun b!1866073 () Bool)

(declare-fun res!835611 () Bool)

(assert (=> b!1866073 (=> (not res!835611) (not e!1191085))))

(assert (=> b!1866073 (= res!835611 (not (isEmpty!12899 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866074 () Bool)

(declare-fun e!1191084 () Bool)

(assert (=> b!1866074 (= e!1191084 e!1191085)))

(declare-fun res!835610 () Bool)

(assert (=> b!1866074 (=> (not res!835610) (not e!1191085))))

(assert (=> b!1866074 (= res!835610 (<= (- 1) (- (height!1061 (left!16664 (left!16664 t!4595))) (height!1061 (right!16994 (left!16664 t!4595))))))))

(declare-fun d!569685 () Bool)

(declare-fun res!835607 () Bool)

(assert (=> d!569685 (=> res!835607 e!1191084)))

(assert (=> d!569685 (= res!835607 (not ((_ is Node!6874) (left!16664 t!4595))))))

(assert (=> d!569685 (= (isBalanced!2175 (left!16664 t!4595)) e!1191084)))

(assert (= (and d!569685 (not res!835607)) b!1866074))

(assert (= (and b!1866074 res!835610) b!1866072))

(assert (= (and b!1866072 res!835609) b!1866071))

(assert (= (and b!1866071 res!835608) b!1866070))

(assert (= (and b!1866070 res!835612) b!1866073))

(assert (= (and b!1866073 res!835611) b!1866069))

(declare-fun m!2290771 () Bool)

(assert (=> b!1866073 m!2290771))

(declare-fun m!2290773 () Bool)

(assert (=> b!1866070 m!2290773))

(declare-fun m!2290775 () Bool)

(assert (=> b!1866069 m!2290775))

(assert (=> b!1866074 m!2290741))

(assert (=> b!1866074 m!2290743))

(assert (=> b!1866072 m!2290741))

(assert (=> b!1866072 m!2290743))

(declare-fun m!2290777 () Bool)

(assert (=> b!1866071 m!2290777))

(assert (=> b!1865984 d!569685))

(declare-fun d!569687 () Bool)

(declare-fun c!303934 () Bool)

(assert (=> d!569687 (= c!303934 ((_ is Node!6874) (left!16664 (left!16664 t!4595))))))

(declare-fun e!1191086 () Bool)

(assert (=> d!569687 (= (inv!27363 (left!16664 (left!16664 t!4595))) e!1191086)))

(declare-fun b!1866075 () Bool)

(assert (=> b!1866075 (= e!1191086 (inv!27365 (left!16664 (left!16664 t!4595))))))

(declare-fun b!1866076 () Bool)

(declare-fun e!1191087 () Bool)

(assert (=> b!1866076 (= e!1191086 e!1191087)))

(declare-fun res!835613 () Bool)

(assert (=> b!1866076 (= res!835613 (not ((_ is Leaf!10079) (left!16664 (left!16664 t!4595)))))))

(assert (=> b!1866076 (=> res!835613 e!1191087)))

(declare-fun b!1866077 () Bool)

(assert (=> b!1866077 (= e!1191087 (inv!27366 (left!16664 (left!16664 t!4595))))))

(assert (= (and d!569687 c!303934) b!1866075))

(assert (= (and d!569687 (not c!303934)) b!1866076))

(assert (= (and b!1866076 (not res!835613)) b!1866077))

(declare-fun m!2290779 () Bool)

(assert (=> b!1866075 m!2290779))

(declare-fun m!2290781 () Bool)

(assert (=> b!1866077 m!2290781))

(assert (=> b!1866038 d!569687))

(declare-fun d!569689 () Bool)

(declare-fun c!303935 () Bool)

(assert (=> d!569689 (= c!303935 ((_ is Node!6874) (right!16994 (left!16664 t!4595))))))

(declare-fun e!1191088 () Bool)

(assert (=> d!569689 (= (inv!27363 (right!16994 (left!16664 t!4595))) e!1191088)))

(declare-fun b!1866078 () Bool)

(assert (=> b!1866078 (= e!1191088 (inv!27365 (right!16994 (left!16664 t!4595))))))

(declare-fun b!1866079 () Bool)

(declare-fun e!1191089 () Bool)

(assert (=> b!1866079 (= e!1191088 e!1191089)))

(declare-fun res!835614 () Bool)

(assert (=> b!1866079 (= res!835614 (not ((_ is Leaf!10079) (right!16994 (left!16664 t!4595)))))))

(assert (=> b!1866079 (=> res!835614 e!1191089)))

(declare-fun b!1866080 () Bool)

(assert (=> b!1866080 (= e!1191089 (inv!27366 (right!16994 (left!16664 t!4595))))))

(assert (= (and d!569689 c!303935) b!1866078))

(assert (= (and d!569689 (not c!303935)) b!1866079))

(assert (= (and b!1866079 (not res!835614)) b!1866080))

(declare-fun m!2290783 () Bool)

(assert (=> b!1866078 m!2290783))

(declare-fun m!2290785 () Bool)

(assert (=> b!1866080 m!2290785))

(assert (=> b!1866038 d!569689))

(declare-fun d!569691 () Bool)

(declare-fun lt!718547 () Int)

(assert (=> d!569691 (>= lt!718547 0)))

(declare-fun e!1191092 () Int)

(assert (=> d!569691 (= lt!718547 e!1191092)))

(declare-fun c!303938 () Bool)

(assert (=> d!569691 (= c!303938 ((_ is Nil!20679) (innerList!6934 (xs!9756 t!4595))))))

(assert (=> d!569691 (= (size!16386 (innerList!6934 (xs!9756 t!4595))) lt!718547)))

(declare-fun b!1866085 () Bool)

(assert (=> b!1866085 (= e!1191092 0)))

(declare-fun b!1866086 () Bool)

(assert (=> b!1866086 (= e!1191092 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 t!4595))))))))

(assert (= (and d!569691 c!303938) b!1866085))

(assert (= (and d!569691 (not c!303938)) b!1866086))

(declare-fun m!2290787 () Bool)

(assert (=> b!1866086 m!2290787))

(assert (=> d!569635 d!569691))

(declare-fun d!569693 () Bool)

(assert (=> d!569693 (= (isEmpty!12900 (list!8456 t!4595)) ((_ is Nil!20679) (list!8456 t!4595)))))

(assert (=> d!569657 d!569693))

(assert (=> d!569657 d!569631))

(declare-fun d!569695 () Bool)

(declare-fun lt!718550 () Int)

(assert (=> d!569695 (= lt!718550 (size!16386 (list!8456 t!4595)))))

(assert (=> d!569695 (= lt!718550 (ite ((_ is Empty!6874) t!4595) 0 (ite ((_ is Leaf!10079) t!4595) (csize!13979 t!4595) (csize!13978 t!4595))))))

(assert (=> d!569695 (= (size!16388 t!4595) lt!718550)))

(declare-fun bs!411706 () Bool)

(assert (= bs!411706 d!569695))

(assert (=> bs!411706 m!2290577))

(assert (=> bs!411706 m!2290577))

(declare-fun m!2290789 () Bool)

(assert (=> bs!411706 m!2290789))

(assert (=> d!569657 d!569695))

(declare-fun d!569697 () Bool)

(assert (not d!569697))

(assert (=> b!1866006 d!569697))

(declare-fun d!569699 () Bool)

(assert (=> d!569699 (= (inv!27364 (xs!9756 (right!16994 t!4595))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 t!4595)))) 2147483647))))

(declare-fun bs!411707 () Bool)

(assert (= bs!411707 d!569699))

(declare-fun m!2290791 () Bool)

(assert (=> bs!411707 m!2290791))

(assert (=> b!1866042 d!569699))

(declare-fun d!569701 () Bool)

(assert (not d!569701))

(assert (=> b!1866005 d!569701))

(declare-fun d!569703 () Bool)

(declare-fun c!303939 () Bool)

(assert (=> d!569703 (= c!303939 ((_ is Node!6874) (left!16664 (right!16994 t!4595))))))

(declare-fun e!1191093 () Bool)

(assert (=> d!569703 (= (inv!27363 (left!16664 (right!16994 t!4595))) e!1191093)))

(declare-fun b!1866087 () Bool)

(assert (=> b!1866087 (= e!1191093 (inv!27365 (left!16664 (right!16994 t!4595))))))

(declare-fun b!1866088 () Bool)

(declare-fun e!1191094 () Bool)

(assert (=> b!1866088 (= e!1191093 e!1191094)))

(declare-fun res!835615 () Bool)

(assert (=> b!1866088 (= res!835615 (not ((_ is Leaf!10079) (left!16664 (right!16994 t!4595)))))))

(assert (=> b!1866088 (=> res!835615 e!1191094)))

(declare-fun b!1866089 () Bool)

(assert (=> b!1866089 (= e!1191094 (inv!27366 (left!16664 (right!16994 t!4595))))))

(assert (= (and d!569703 c!303939) b!1866087))

(assert (= (and d!569703 (not c!303939)) b!1866088))

(assert (= (and b!1866088 (not res!835615)) b!1866089))

(declare-fun m!2290793 () Bool)

(assert (=> b!1866087 m!2290793))

(declare-fun m!2290795 () Bool)

(assert (=> b!1866089 m!2290795))

(assert (=> b!1866041 d!569703))

(declare-fun d!569705 () Bool)

(declare-fun c!303940 () Bool)

(assert (=> d!569705 (= c!303940 ((_ is Node!6874) (right!16994 (right!16994 t!4595))))))

(declare-fun e!1191095 () Bool)

(assert (=> d!569705 (= (inv!27363 (right!16994 (right!16994 t!4595))) e!1191095)))

(declare-fun b!1866090 () Bool)

(assert (=> b!1866090 (= e!1191095 (inv!27365 (right!16994 (right!16994 t!4595))))))

(declare-fun b!1866091 () Bool)

(declare-fun e!1191096 () Bool)

(assert (=> b!1866091 (= e!1191095 e!1191096)))

(declare-fun res!835616 () Bool)

(assert (=> b!1866091 (= res!835616 (not ((_ is Leaf!10079) (right!16994 (right!16994 t!4595)))))))

(assert (=> b!1866091 (=> res!835616 e!1191096)))

(declare-fun b!1866092 () Bool)

(assert (=> b!1866092 (= e!1191096 (inv!27366 (right!16994 (right!16994 t!4595))))))

(assert (= (and d!569705 c!303940) b!1866090))

(assert (= (and d!569705 (not c!303940)) b!1866091))

(assert (= (and b!1866091 (not res!835616)) b!1866092))

(declare-fun m!2290797 () Bool)

(assert (=> b!1866090 m!2290797))

(declare-fun m!2290799 () Bool)

(assert (=> b!1866092 m!2290799))

(assert (=> b!1866041 d!569705))

(declare-fun d!569707 () Bool)

(assert (not d!569707))

(assert (=> b!1866004 d!569707))

(declare-fun d!569709 () Bool)

(assert (not d!569709))

(assert (=> b!1865919 d!569709))

(declare-fun d!569711 () Bool)

(assert (not d!569711))

(assert (=> b!1865919 d!569711))

(declare-fun d!569713 () Bool)

(assert (not d!569713))

(assert (=> b!1865919 d!569713))

(declare-fun d!569715 () Bool)

(assert (not d!569715))

(assert (=> b!1865918 d!569715))

(declare-fun b!1866093 () Bool)

(declare-fun e!1191098 () Bool)

(assert (=> b!1866093 (= e!1191098 (not (isEmpty!12899 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866094 () Bool)

(declare-fun res!835622 () Bool)

(assert (=> b!1866094 (=> (not res!835622) (not e!1191098))))

(assert (=> b!1866094 (= res!835622 (isBalanced!2175 (right!16994 (right!16994 t!4595))))))

(declare-fun b!1866095 () Bool)

(declare-fun res!835618 () Bool)

(assert (=> b!1866095 (=> (not res!835618) (not e!1191098))))

(assert (=> b!1866095 (= res!835618 (isBalanced!2175 (left!16664 (right!16994 t!4595))))))

(declare-fun b!1866096 () Bool)

(declare-fun res!835619 () Bool)

(assert (=> b!1866096 (=> (not res!835619) (not e!1191098))))

(assert (=> b!1866096 (= res!835619 (<= (- (height!1061 (left!16664 (right!16994 t!4595))) (height!1061 (right!16994 (right!16994 t!4595)))) 1))))

(declare-fun b!1866097 () Bool)

(declare-fun res!835621 () Bool)

(assert (=> b!1866097 (=> (not res!835621) (not e!1191098))))

(assert (=> b!1866097 (= res!835621 (not (isEmpty!12899 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866098 () Bool)

(declare-fun e!1191097 () Bool)

(assert (=> b!1866098 (= e!1191097 e!1191098)))

(declare-fun res!835620 () Bool)

(assert (=> b!1866098 (=> (not res!835620) (not e!1191098))))

(assert (=> b!1866098 (= res!835620 (<= (- 1) (- (height!1061 (left!16664 (right!16994 t!4595))) (height!1061 (right!16994 (right!16994 t!4595))))))))

(declare-fun d!569717 () Bool)

(declare-fun res!835617 () Bool)

(assert (=> d!569717 (=> res!835617 e!1191097)))

(assert (=> d!569717 (= res!835617 (not ((_ is Node!6874) (right!16994 t!4595))))))

(assert (=> d!569717 (= (isBalanced!2175 (right!16994 t!4595)) e!1191097)))

(assert (= (and d!569717 (not res!835617)) b!1866098))

(assert (= (and b!1866098 res!835620) b!1866096))

(assert (= (and b!1866096 res!835619) b!1866095))

(assert (= (and b!1866095 res!835618) b!1866094))

(assert (= (and b!1866094 res!835622) b!1866097))

(assert (= (and b!1866097 res!835621) b!1866093))

(declare-fun m!2290801 () Bool)

(assert (=> b!1866097 m!2290801))

(declare-fun m!2290803 () Bool)

(assert (=> b!1866094 m!2290803))

(declare-fun m!2290805 () Bool)

(assert (=> b!1866093 m!2290805))

(assert (=> b!1866098 m!2290765))

(assert (=> b!1866098 m!2290767))

(assert (=> b!1866096 m!2290765))

(assert (=> b!1866096 m!2290767))

(declare-fun m!2290807 () Bool)

(assert (=> b!1866095 m!2290807))

(assert (=> b!1865983 d!569717))

(declare-fun b!1866108 () Bool)

(declare-fun e!1191103 () List!20761)

(assert (=> b!1866108 (= e!1191103 (Cons!20679 (h!26080 (list!8456 (left!16664 t!4595))) (++!5601 (t!172882 (list!8456 (left!16664 t!4595))) (list!8456 (right!16994 t!4595)))))))

(declare-fun b!1866109 () Bool)

(declare-fun res!835628 () Bool)

(declare-fun e!1191104 () Bool)

(assert (=> b!1866109 (=> (not res!835628) (not e!1191104))))

(declare-fun lt!718553 () List!20761)

(assert (=> b!1866109 (= res!835628 (= (size!16386 lt!718553) (+ (size!16386 (list!8456 (left!16664 t!4595))) (size!16386 (list!8456 (right!16994 t!4595))))))))

(declare-fun b!1866110 () Bool)

(assert (=> b!1866110 (= e!1191104 (or (not (= (list!8456 (right!16994 t!4595)) Nil!20679)) (= lt!718553 (list!8456 (left!16664 t!4595)))))))

(declare-fun d!569719 () Bool)

(assert (=> d!569719 e!1191104))

(declare-fun res!835627 () Bool)

(assert (=> d!569719 (=> (not res!835627) (not e!1191104))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3076 (List!20761) (InoxSet T!33130))

(assert (=> d!569719 (= res!835627 (= (content!3076 lt!718553) ((_ map or) (content!3076 (list!8456 (left!16664 t!4595))) (content!3076 (list!8456 (right!16994 t!4595))))))))

(assert (=> d!569719 (= lt!718553 e!1191103)))

(declare-fun c!303943 () Bool)

(assert (=> d!569719 (= c!303943 ((_ is Nil!20679) (list!8456 (left!16664 t!4595))))))

(assert (=> d!569719 (= (++!5601 (list!8456 (left!16664 t!4595)) (list!8456 (right!16994 t!4595))) lt!718553)))

(declare-fun b!1866107 () Bool)

(assert (=> b!1866107 (= e!1191103 (list!8456 (right!16994 t!4595)))))

(assert (= (and d!569719 c!303943) b!1866107))

(assert (= (and d!569719 (not c!303943)) b!1866108))

(assert (= (and d!569719 res!835627) b!1866109))

(assert (= (and b!1866109 res!835628) b!1866110))

(assert (=> b!1866108 m!2290615))

(declare-fun m!2290809 () Bool)

(assert (=> b!1866108 m!2290809))

(declare-fun m!2290811 () Bool)

(assert (=> b!1866109 m!2290811))

(assert (=> b!1866109 m!2290613))

(declare-fun m!2290813 () Bool)

(assert (=> b!1866109 m!2290813))

(assert (=> b!1866109 m!2290615))

(declare-fun m!2290815 () Bool)

(assert (=> b!1866109 m!2290815))

(declare-fun m!2290817 () Bool)

(assert (=> d!569719 m!2290817))

(assert (=> d!569719 m!2290613))

(declare-fun m!2290819 () Bool)

(assert (=> d!569719 m!2290819))

(assert (=> d!569719 m!2290615))

(declare-fun m!2290821 () Bool)

(assert (=> d!569719 m!2290821))

(assert (=> b!1865929 d!569719))

(declare-fun d!569721 () Bool)

(declare-fun c!303944 () Bool)

(assert (=> d!569721 (= c!303944 ((_ is Empty!6874) (left!16664 t!4595)))))

(declare-fun e!1191105 () List!20761)

(assert (=> d!569721 (= (list!8456 (left!16664 t!4595)) e!1191105)))

(declare-fun b!1866112 () Bool)

(declare-fun e!1191106 () List!20761)

(assert (=> b!1866112 (= e!1191105 e!1191106)))

(declare-fun c!303945 () Bool)

(assert (=> b!1866112 (= c!303945 ((_ is Leaf!10079) (left!16664 t!4595)))))

(declare-fun b!1866111 () Bool)

(assert (=> b!1866111 (= e!1191105 Nil!20679)))

(declare-fun b!1866113 () Bool)

(assert (=> b!1866113 (= e!1191106 (list!8457 (xs!9756 (left!16664 t!4595))))))

(declare-fun b!1866114 () Bool)

(assert (=> b!1866114 (= e!1191106 (++!5601 (list!8456 (left!16664 (left!16664 t!4595))) (list!8456 (right!16994 (left!16664 t!4595)))))))

(assert (= (and d!569721 c!303944) b!1866111))

(assert (= (and d!569721 (not c!303944)) b!1866112))

(assert (= (and b!1866112 c!303945) b!1866113))

(assert (= (and b!1866112 (not c!303945)) b!1866114))

(assert (=> b!1866113 m!2290731))

(declare-fun m!2290823 () Bool)

(assert (=> b!1866114 m!2290823))

(declare-fun m!2290825 () Bool)

(assert (=> b!1866114 m!2290825))

(assert (=> b!1866114 m!2290823))

(assert (=> b!1866114 m!2290825))

(declare-fun m!2290827 () Bool)

(assert (=> b!1866114 m!2290827))

(assert (=> b!1865929 d!569721))

(declare-fun d!569723 () Bool)

(declare-fun c!303946 () Bool)

(assert (=> d!569723 (= c!303946 ((_ is Empty!6874) (right!16994 t!4595)))))

(declare-fun e!1191107 () List!20761)

(assert (=> d!569723 (= (list!8456 (right!16994 t!4595)) e!1191107)))

(declare-fun b!1866116 () Bool)

(declare-fun e!1191108 () List!20761)

(assert (=> b!1866116 (= e!1191107 e!1191108)))

(declare-fun c!303947 () Bool)

(assert (=> b!1866116 (= c!303947 ((_ is Leaf!10079) (right!16994 t!4595)))))

(declare-fun b!1866115 () Bool)

(assert (=> b!1866115 (= e!1191107 Nil!20679)))

(declare-fun b!1866117 () Bool)

(assert (=> b!1866117 (= e!1191108 (list!8457 (xs!9756 (right!16994 t!4595))))))

(declare-fun b!1866118 () Bool)

(assert (=> b!1866118 (= e!1191108 (++!5601 (list!8456 (left!16664 (right!16994 t!4595))) (list!8456 (right!16994 (right!16994 t!4595)))))))

(assert (= (and d!569723 c!303946) b!1866115))

(assert (= (and d!569723 (not c!303946)) b!1866116))

(assert (= (and b!1866116 c!303947) b!1866117))

(assert (= (and b!1866116 (not c!303947)) b!1866118))

(assert (=> b!1866117 m!2290747))

(declare-fun m!2290829 () Bool)

(assert (=> b!1866118 m!2290829))

(declare-fun m!2290831 () Bool)

(assert (=> b!1866118 m!2290831))

(assert (=> b!1866118 m!2290829))

(assert (=> b!1866118 m!2290831))

(declare-fun m!2290833 () Bool)

(assert (=> b!1866118 m!2290833))

(assert (=> b!1865929 d!569723))

(declare-fun d!569725 () Bool)

(declare-fun lt!718554 () Bool)

(assert (=> d!569725 (= lt!718554 (isEmpty!12900 (list!8456 (right!16994 t!4595))))))

(assert (=> d!569725 (= lt!718554 (= (size!16388 (right!16994 t!4595)) 0))))

(assert (=> d!569725 (= (isEmpty!12899 (right!16994 t!4595)) lt!718554)))

(declare-fun bs!411708 () Bool)

(assert (= bs!411708 d!569725))

(assert (=> bs!411708 m!2290615))

(assert (=> bs!411708 m!2290615))

(declare-fun m!2290835 () Bool)

(assert (=> bs!411708 m!2290835))

(assert (=> bs!411708 m!2290755))

(assert (=> b!1865982 d!569725))

(declare-fun d!569727 () Bool)

(assert (=> d!569727 (= (list!8457 (xs!9756 t!4595)) (innerList!6934 (xs!9756 t!4595)))))

(assert (=> b!1865928 d!569727))

(declare-fun d!569729 () Bool)

(assert (not d!569729))

(assert (=> b!1866009 d!569729))

(declare-fun d!569731 () Bool)

(assert (not d!569731))

(assert (=> b!1866009 d!569731))

(declare-fun d!569733 () Bool)

(assert (not d!569733))

(assert (=> b!1866008 d!569733))

(assert (=> b!1866007 d!569729))

(assert (=> b!1866007 d!569731))

(declare-fun b!1866119 () Bool)

(declare-fun tp!531307 () Bool)

(declare-fun tp!531309 () Bool)

(declare-fun e!1191109 () Bool)

(assert (=> b!1866119 (= e!1191109 (and (inv!27363 (left!16664 (left!16664 (right!16994 t!4595)))) tp!531309 (inv!27363 (right!16994 (left!16664 (right!16994 t!4595)))) tp!531307))))

(declare-fun b!1866121 () Bool)

(declare-fun e!1191110 () Bool)

(declare-fun tp!531308 () Bool)

(assert (=> b!1866121 (= e!1191110 tp!531308)))

(declare-fun b!1866120 () Bool)

(assert (=> b!1866120 (= e!1191109 (and (inv!27364 (xs!9756 (left!16664 (right!16994 t!4595)))) e!1191110))))

(assert (=> b!1866041 (= tp!531306 (and (inv!27363 (left!16664 (right!16994 t!4595))) e!1191109))))

(assert (= (and b!1866041 ((_ is Node!6874) (left!16664 (right!16994 t!4595)))) b!1866119))

(assert (= b!1866120 b!1866121))

(assert (= (and b!1866041 ((_ is Leaf!10079) (left!16664 (right!16994 t!4595)))) b!1866120))

(declare-fun m!2290837 () Bool)

(assert (=> b!1866119 m!2290837))

(declare-fun m!2290839 () Bool)

(assert (=> b!1866119 m!2290839))

(declare-fun m!2290841 () Bool)

(assert (=> b!1866120 m!2290841))

(assert (=> b!1866041 m!2290725))

(declare-fun tp!531312 () Bool)

(declare-fun b!1866122 () Bool)

(declare-fun tp!531310 () Bool)

(declare-fun e!1191111 () Bool)

(assert (=> b!1866122 (= e!1191111 (and (inv!27363 (left!16664 (right!16994 (right!16994 t!4595)))) tp!531312 (inv!27363 (right!16994 (right!16994 (right!16994 t!4595)))) tp!531310))))

(declare-fun b!1866124 () Bool)

(declare-fun e!1191112 () Bool)

(declare-fun tp!531311 () Bool)

(assert (=> b!1866124 (= e!1191112 tp!531311)))

(declare-fun b!1866123 () Bool)

(assert (=> b!1866123 (= e!1191111 (and (inv!27364 (xs!9756 (right!16994 (right!16994 t!4595)))) e!1191112))))

(assert (=> b!1866041 (= tp!531304 (and (inv!27363 (right!16994 (right!16994 t!4595))) e!1191111))))

(assert (= (and b!1866041 ((_ is Node!6874) (right!16994 (right!16994 t!4595)))) b!1866122))

(assert (= b!1866123 b!1866124))

(assert (= (and b!1866041 ((_ is Leaf!10079) (right!16994 (right!16994 t!4595)))) b!1866123))

(declare-fun m!2290843 () Bool)

(assert (=> b!1866122 m!2290843))

(declare-fun m!2290845 () Bool)

(assert (=> b!1866122 m!2290845))

(declare-fun m!2290847 () Bool)

(assert (=> b!1866123 m!2290847))

(assert (=> b!1866041 m!2290727))

(declare-fun b!1866125 () Bool)

(declare-fun e!1191113 () Bool)

(declare-fun tp!531313 () Bool)

(assert (=> b!1866125 (= e!1191113 (and tp_is_empty!8667 tp!531313))))

(assert (=> b!1866023 (= tp!531288 e!1191113)))

(assert (= (and b!1866023 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 t!4595))))) b!1866125))

(declare-fun b!1866126 () Bool)

(declare-fun e!1191114 () Bool)

(declare-fun tp!531314 () Bool)

(assert (=> b!1866126 (= e!1191114 (and tp_is_empty!8667 tp!531314))))

(assert (=> b!1866040 (= tp!531302 e!1191114)))

(assert (= (and b!1866040 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 t!4595))))) b!1866126))

(declare-fun b!1866127 () Bool)

(declare-fun tp!531317 () Bool)

(declare-fun tp!531315 () Bool)

(declare-fun e!1191115 () Bool)

(assert (=> b!1866127 (= e!1191115 (and (inv!27363 (left!16664 (left!16664 (left!16664 t!4595)))) tp!531317 (inv!27363 (right!16994 (left!16664 (left!16664 t!4595)))) tp!531315))))

(declare-fun b!1866129 () Bool)

(declare-fun e!1191116 () Bool)

(declare-fun tp!531316 () Bool)

(assert (=> b!1866129 (= e!1191116 tp!531316)))

(declare-fun b!1866128 () Bool)

(assert (=> b!1866128 (= e!1191115 (and (inv!27364 (xs!9756 (left!16664 (left!16664 t!4595)))) e!1191116))))

(assert (=> b!1866038 (= tp!531303 (and (inv!27363 (left!16664 (left!16664 t!4595))) e!1191115))))

(assert (= (and b!1866038 ((_ is Node!6874) (left!16664 (left!16664 t!4595)))) b!1866127))

(assert (= b!1866128 b!1866129))

(assert (= (and b!1866038 ((_ is Leaf!10079) (left!16664 (left!16664 t!4595)))) b!1866128))

(declare-fun m!2290849 () Bool)

(assert (=> b!1866127 m!2290849))

(declare-fun m!2290851 () Bool)

(assert (=> b!1866127 m!2290851))

(declare-fun m!2290853 () Bool)

(assert (=> b!1866128 m!2290853))

(assert (=> b!1866038 m!2290719))

(declare-fun b!1866130 () Bool)

(declare-fun tp!531318 () Bool)

(declare-fun tp!531320 () Bool)

(declare-fun e!1191117 () Bool)

(assert (=> b!1866130 (= e!1191117 (and (inv!27363 (left!16664 (right!16994 (left!16664 t!4595)))) tp!531320 (inv!27363 (right!16994 (right!16994 (left!16664 t!4595)))) tp!531318))))

(declare-fun b!1866132 () Bool)

(declare-fun e!1191118 () Bool)

(declare-fun tp!531319 () Bool)

(assert (=> b!1866132 (= e!1191118 tp!531319)))

(declare-fun b!1866131 () Bool)

(assert (=> b!1866131 (= e!1191117 (and (inv!27364 (xs!9756 (right!16994 (left!16664 t!4595)))) e!1191118))))

(assert (=> b!1866038 (= tp!531301 (and (inv!27363 (right!16994 (left!16664 t!4595))) e!1191117))))

(assert (= (and b!1866038 ((_ is Node!6874) (right!16994 (left!16664 t!4595)))) b!1866130))

(assert (= b!1866131 b!1866132))

(assert (= (and b!1866038 ((_ is Leaf!10079) (right!16994 (left!16664 t!4595)))) b!1866131))

(declare-fun m!2290855 () Bool)

(assert (=> b!1866130 m!2290855))

(declare-fun m!2290857 () Bool)

(assert (=> b!1866130 m!2290857))

(declare-fun m!2290859 () Bool)

(assert (=> b!1866131 m!2290859))

(assert (=> b!1866038 m!2290721))

(declare-fun b!1866133 () Bool)

(declare-fun e!1191119 () Bool)

(declare-fun tp!531321 () Bool)

(assert (=> b!1866133 (= e!1191119 (and tp_is_empty!8667 tp!531321))))

(assert (=> b!1866043 (= tp!531305 e!1191119)))

(assert (= (and b!1866043 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 t!4595))))) b!1866133))

(check-sat (not b!1866086) (not b!1866125) (not d!569681) (not b!1866127) (not b!1866073) (not b!1866114) (not b!1866092) (not b!1866050) (not b!1866098) (not b!1866126) (not b!1866129) (not b!1866120) (not b!1866059) (not b!1866133) (not b!1866113) (not b!1866070) (not b!1866067) (not d!569683) tp_is_empty!8667 (not b!1866119) (not d!569719) (not b!1866128) (not b!1866130) (not b!1866121) (not b!1866075) (not b!1866131) (not b!1866122) (not b!1866108) (not b!1866117) (not b!1866095) (not d!569677) (not b!1866071) (not b!1866089) (not b!1866078) (not b!1866124) (not d!569725) (not d!569695) (not b!1866038) (not b!1866109) (not d!569665) (not d!569675) (not b!1866061) (not b!1866094) (not b!1866048) (not b!1866093) (not b!1866077) (not b!1866064) (not d!569671) (not b!1866041) (not d!569699) (not b!1866132) (not b!1866087) (not b!1866118) (not b!1866080) (not d!569679) (not b!1866097) (not b!1866090) (not b!1866069) (not b!1866072) (not b!1866096) (not b!1866074) (not b!1866123) (not d!569673))
(check-sat)
(get-model)

(declare-fun d!569805 () Bool)

(assert (=> d!569805 (= (list!8457 (xs!9756 (right!16994 t!4595))) (innerList!6934 (xs!9756 (right!16994 t!4595))))))

(assert (=> b!1866117 d!569805))

(declare-fun b!1866224 () Bool)

(declare-fun e!1191167 () Bool)

(assert (=> b!1866224 (= e!1191167 (not (isEmpty!12899 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866225 () Bool)

(declare-fun res!835681 () Bool)

(assert (=> b!1866225 (=> (not res!835681) (not e!1191167))))

(assert (=> b!1866225 (= res!835681 (isBalanced!2175 (right!16994 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866226 () Bool)

(declare-fun res!835677 () Bool)

(assert (=> b!1866226 (=> (not res!835677) (not e!1191167))))

(assert (=> b!1866226 (= res!835677 (isBalanced!2175 (left!16664 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866227 () Bool)

(declare-fun res!835678 () Bool)

(assert (=> b!1866227 (=> (not res!835678) (not e!1191167))))

(assert (=> b!1866227 (= res!835678 (<= (- (height!1061 (left!16664 (left!16664 (right!16994 t!4595)))) (height!1061 (right!16994 (left!16664 (right!16994 t!4595))))) 1))))

(declare-fun b!1866228 () Bool)

(declare-fun res!835680 () Bool)

(assert (=> b!1866228 (=> (not res!835680) (not e!1191167))))

(assert (=> b!1866228 (= res!835680 (not (isEmpty!12899 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866229 () Bool)

(declare-fun e!1191166 () Bool)

(assert (=> b!1866229 (= e!1191166 e!1191167)))

(declare-fun res!835679 () Bool)

(assert (=> b!1866229 (=> (not res!835679) (not e!1191167))))

(assert (=> b!1866229 (= res!835679 (<= (- 1) (- (height!1061 (left!16664 (left!16664 (right!16994 t!4595)))) (height!1061 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(declare-fun d!569807 () Bool)

(declare-fun res!835676 () Bool)

(assert (=> d!569807 (=> res!835676 e!1191166)))

(assert (=> d!569807 (= res!835676 (not ((_ is Node!6874) (left!16664 (right!16994 t!4595)))))))

(assert (=> d!569807 (= (isBalanced!2175 (left!16664 (right!16994 t!4595))) e!1191166)))

(assert (= (and d!569807 (not res!835676)) b!1866229))

(assert (= (and b!1866229 res!835679) b!1866227))

(assert (= (and b!1866227 res!835678) b!1866226))

(assert (= (and b!1866226 res!835677) b!1866225))

(assert (= (and b!1866225 res!835681) b!1866228))

(assert (= (and b!1866228 res!835680) b!1866224))

(declare-fun m!2290991 () Bool)

(assert (=> b!1866228 m!2290991))

(declare-fun m!2290993 () Bool)

(assert (=> b!1866225 m!2290993))

(declare-fun m!2290995 () Bool)

(assert (=> b!1866224 m!2290995))

(declare-fun m!2290997 () Bool)

(assert (=> b!1866229 m!2290997))

(declare-fun m!2290999 () Bool)

(assert (=> b!1866229 m!2290999))

(assert (=> b!1866227 m!2290997))

(assert (=> b!1866227 m!2290999))

(declare-fun m!2291001 () Bool)

(assert (=> b!1866226 m!2291001))

(assert (=> b!1866095 d!569807))

(declare-fun d!569809 () Bool)

(declare-fun lt!718566 () Bool)

(assert (=> d!569809 (= lt!718566 (isEmpty!12900 (list!8456 (right!16994 (right!16994 t!4595)))))))

(assert (=> d!569809 (= lt!718566 (= (size!16388 (right!16994 (right!16994 t!4595))) 0))))

(assert (=> d!569809 (= (isEmpty!12899 (right!16994 (right!16994 t!4595))) lt!718566)))

(declare-fun bs!411714 () Bool)

(assert (= bs!411714 d!569809))

(assert (=> bs!411714 m!2290831))

(assert (=> bs!411714 m!2290831))

(declare-fun m!2291003 () Bool)

(assert (=> bs!411714 m!2291003))

(assert (=> bs!411714 m!2290763))

(assert (=> b!1866093 d!569809))

(declare-fun d!569811 () Bool)

(assert (=> d!569811 (= (inv!27364 (xs!9756 (right!16994 (left!16664 t!4595)))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595))))) 2147483647))))

(declare-fun bs!411715 () Bool)

(assert (= bs!411715 d!569811))

(declare-fun m!2291005 () Bool)

(assert (=> bs!411715 m!2291005))

(assert (=> b!1866131 d!569811))

(declare-fun d!569813 () Bool)

(declare-fun res!835682 () Bool)

(declare-fun e!1191168 () Bool)

(assert (=> d!569813 (=> (not res!835682) (not e!1191168))))

(assert (=> d!569813 (= res!835682 (<= (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 t!4595))))) 512))))

(assert (=> d!569813 (= (inv!27366 (left!16664 (right!16994 t!4595))) e!1191168)))

(declare-fun b!1866230 () Bool)

(declare-fun res!835683 () Bool)

(assert (=> b!1866230 (=> (not res!835683) (not e!1191168))))

(assert (=> b!1866230 (= res!835683 (= (csize!13979 (left!16664 (right!16994 t!4595))) (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 t!4595)))))))))

(declare-fun b!1866231 () Bool)

(assert (=> b!1866231 (= e!1191168 (and (> (csize!13979 (left!16664 (right!16994 t!4595))) 0) (<= (csize!13979 (left!16664 (right!16994 t!4595))) 512)))))

(assert (= (and d!569813 res!835682) b!1866230))

(assert (= (and b!1866230 res!835683) b!1866231))

(declare-fun m!2291007 () Bool)

(assert (=> d!569813 m!2291007))

(assert (=> d!569813 m!2291007))

(declare-fun m!2291009 () Bool)

(assert (=> d!569813 m!2291009))

(assert (=> b!1866230 m!2291007))

(assert (=> b!1866230 m!2291007))

(assert (=> b!1866230 m!2291009))

(assert (=> b!1866089 d!569813))

(declare-fun d!569815 () Bool)

(declare-fun lt!718567 () Bool)

(assert (=> d!569815 (= lt!718567 (isEmpty!12900 (list!8456 (right!16994 (left!16664 t!4595)))))))

(assert (=> d!569815 (= lt!718567 (= (size!16388 (right!16994 (left!16664 t!4595))) 0))))

(assert (=> d!569815 (= (isEmpty!12899 (right!16994 (left!16664 t!4595))) lt!718567)))

(declare-fun bs!411716 () Bool)

(assert (= bs!411716 d!569815))

(assert (=> bs!411716 m!2290825))

(assert (=> bs!411716 m!2290825))

(declare-fun m!2291011 () Bool)

(assert (=> bs!411716 m!2291011))

(assert (=> bs!411716 m!2290739))

(assert (=> b!1866069 d!569815))

(declare-fun d!569817 () Bool)

(assert (=> d!569817 (= (inv!27364 (xs!9756 (right!16994 (right!16994 t!4595)))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595))))) 2147483647))))

(declare-fun bs!411717 () Bool)

(assert (= bs!411717 d!569817))

(declare-fun m!2291013 () Bool)

(assert (=> bs!411717 m!2291013))

(assert (=> b!1866123 d!569817))

(declare-fun d!569819 () Bool)

(declare-fun lt!718568 () Int)

(assert (=> d!569819 (>= lt!718568 0)))

(declare-fun e!1191169 () Int)

(assert (=> d!569819 (= lt!718568 e!1191169)))

(declare-fun c!303962 () Bool)

(assert (=> d!569819 (= c!303962 ((_ is Nil!20679) (list!8457 (xs!9756 (right!16994 t!4595)))))))

(assert (=> d!569819 (= (size!16386 (list!8457 (xs!9756 (right!16994 t!4595)))) lt!718568)))

(declare-fun b!1866232 () Bool)

(assert (=> b!1866232 (= e!1191169 0)))

(declare-fun b!1866233 () Bool)

(assert (=> b!1866233 (= e!1191169 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 (right!16994 t!4595)))))))))

(assert (= (and d!569819 c!303962) b!1866232))

(assert (= (and d!569819 (not c!303962)) b!1866233))

(declare-fun m!2291015 () Bool)

(assert (=> b!1866233 m!2291015))

(assert (=> d!569675 d!569819))

(assert (=> d!569675 d!569805))

(declare-fun d!569821 () Bool)

(declare-fun lt!718569 () Int)

(assert (=> d!569821 (>= lt!718569 0)))

(declare-fun e!1191170 () Int)

(assert (=> d!569821 (= lt!718569 e!1191170)))

(declare-fun c!303963 () Bool)

(assert (=> d!569821 (= c!303963 ((_ is Nil!20679) lt!718553))))

(assert (=> d!569821 (= (size!16386 lt!718553) lt!718569)))

(declare-fun b!1866234 () Bool)

(assert (=> b!1866234 (= e!1191170 0)))

(declare-fun b!1866235 () Bool)

(assert (=> b!1866235 (= e!1191170 (+ 1 (size!16386 (t!172882 lt!718553))))))

(assert (= (and d!569821 c!303963) b!1866234))

(assert (= (and d!569821 (not c!303963)) b!1866235))

(declare-fun m!2291017 () Bool)

(assert (=> b!1866235 m!2291017))

(assert (=> b!1866109 d!569821))

(declare-fun d!569823 () Bool)

(declare-fun lt!718570 () Int)

(assert (=> d!569823 (>= lt!718570 0)))

(declare-fun e!1191171 () Int)

(assert (=> d!569823 (= lt!718570 e!1191171)))

(declare-fun c!303964 () Bool)

(assert (=> d!569823 (= c!303964 ((_ is Nil!20679) (list!8456 (left!16664 t!4595))))))

(assert (=> d!569823 (= (size!16386 (list!8456 (left!16664 t!4595))) lt!718570)))

(declare-fun b!1866236 () Bool)

(assert (=> b!1866236 (= e!1191171 0)))

(declare-fun b!1866237 () Bool)

(assert (=> b!1866237 (= e!1191171 (+ 1 (size!16386 (t!172882 (list!8456 (left!16664 t!4595))))))))

(assert (= (and d!569823 c!303964) b!1866236))

(assert (= (and d!569823 (not c!303964)) b!1866237))

(declare-fun m!2291019 () Bool)

(assert (=> b!1866237 m!2291019))

(assert (=> b!1866109 d!569823))

(declare-fun d!569825 () Bool)

(declare-fun lt!718571 () Int)

(assert (=> d!569825 (>= lt!718571 0)))

(declare-fun e!1191172 () Int)

(assert (=> d!569825 (= lt!718571 e!1191172)))

(declare-fun c!303965 () Bool)

(assert (=> d!569825 (= c!303965 ((_ is Nil!20679) (list!8456 (right!16994 t!4595))))))

(assert (=> d!569825 (= (size!16386 (list!8456 (right!16994 t!4595))) lt!718571)))

(declare-fun b!1866238 () Bool)

(assert (=> b!1866238 (= e!1191172 0)))

(declare-fun b!1866239 () Bool)

(assert (=> b!1866239 (= e!1191172 (+ 1 (size!16386 (t!172882 (list!8456 (right!16994 t!4595))))))))

(assert (= (and d!569825 c!303965) b!1866238))

(assert (= (and d!569825 (not c!303965)) b!1866239))

(declare-fun m!2291021 () Bool)

(assert (=> b!1866239 m!2291021))

(assert (=> b!1866109 d!569825))

(declare-fun d!569827 () Bool)

(declare-fun c!303966 () Bool)

(assert (=> d!569827 (= c!303966 ((_ is Node!6874) (left!16664 (left!16664 (left!16664 t!4595)))))))

(declare-fun e!1191173 () Bool)

(assert (=> d!569827 (= (inv!27363 (left!16664 (left!16664 (left!16664 t!4595)))) e!1191173)))

(declare-fun b!1866240 () Bool)

(assert (=> b!1866240 (= e!1191173 (inv!27365 (left!16664 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866241 () Bool)

(declare-fun e!1191174 () Bool)

(assert (=> b!1866241 (= e!1191173 e!1191174)))

(declare-fun res!835684 () Bool)

(assert (=> b!1866241 (= res!835684 (not ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (=> b!1866241 (=> res!835684 e!1191174)))

(declare-fun b!1866242 () Bool)

(assert (=> b!1866242 (= e!1191174 (inv!27366 (left!16664 (left!16664 (left!16664 t!4595)))))))

(assert (= (and d!569827 c!303966) b!1866240))

(assert (= (and d!569827 (not c!303966)) b!1866241))

(assert (= (and b!1866241 (not res!835684)) b!1866242))

(declare-fun m!2291023 () Bool)

(assert (=> b!1866240 m!2291023))

(declare-fun m!2291025 () Bool)

(assert (=> b!1866242 m!2291025))

(assert (=> b!1866127 d!569827))

(declare-fun d!569829 () Bool)

(declare-fun c!303967 () Bool)

(assert (=> d!569829 (= c!303967 ((_ is Node!6874) (right!16994 (left!16664 (left!16664 t!4595)))))))

(declare-fun e!1191175 () Bool)

(assert (=> d!569829 (= (inv!27363 (right!16994 (left!16664 (left!16664 t!4595)))) e!1191175)))

(declare-fun b!1866243 () Bool)

(assert (=> b!1866243 (= e!1191175 (inv!27365 (right!16994 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866244 () Bool)

(declare-fun e!1191176 () Bool)

(assert (=> b!1866244 (= e!1191175 e!1191176)))

(declare-fun res!835685 () Bool)

(assert (=> b!1866244 (= res!835685 (not ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (=> b!1866244 (=> res!835685 e!1191176)))

(declare-fun b!1866245 () Bool)

(assert (=> b!1866245 (= e!1191176 (inv!27366 (right!16994 (left!16664 (left!16664 t!4595)))))))

(assert (= (and d!569829 c!303967) b!1866243))

(assert (= (and d!569829 (not c!303967)) b!1866244))

(assert (= (and b!1866244 (not res!835685)) b!1866245))

(declare-fun m!2291027 () Bool)

(assert (=> b!1866243 m!2291027))

(declare-fun m!2291029 () Bool)

(assert (=> b!1866245 m!2291029))

(assert (=> b!1866127 d!569829))

(declare-fun d!569831 () Bool)

(declare-fun lt!718572 () Int)

(assert (=> d!569831 (= lt!718572 (size!16386 (list!8456 (left!16664 t!4595))))))

(assert (=> d!569831 (= lt!718572 (ite ((_ is Empty!6874) (left!16664 t!4595)) 0 (ite ((_ is Leaf!10079) (left!16664 t!4595)) (csize!13979 (left!16664 t!4595)) (csize!13978 (left!16664 t!4595)))))))

(assert (=> d!569831 (= (size!16388 (left!16664 t!4595)) lt!718572)))

(declare-fun bs!411718 () Bool)

(assert (= bs!411718 d!569831))

(assert (=> bs!411718 m!2290613))

(assert (=> bs!411718 m!2290613))

(assert (=> bs!411718 m!2290813))

(assert (=> d!569679 d!569831))

(declare-fun d!569833 () Bool)

(declare-fun lt!718573 () Int)

(assert (=> d!569833 (= lt!718573 (size!16386 (list!8456 (right!16994 t!4595))))))

(assert (=> d!569833 (= lt!718573 (ite ((_ is Empty!6874) (right!16994 t!4595)) 0 (ite ((_ is Leaf!10079) (right!16994 t!4595)) (csize!13979 (right!16994 t!4595)) (csize!13978 (right!16994 t!4595)))))))

(assert (=> d!569833 (= (size!16388 (right!16994 t!4595)) lt!718573)))

(declare-fun bs!411719 () Bool)

(assert (= bs!411719 d!569833))

(assert (=> bs!411719 m!2290615))

(assert (=> bs!411719 m!2290615))

(assert (=> bs!411719 m!2290815))

(assert (=> d!569679 d!569833))

(declare-fun d!569835 () Bool)

(declare-fun lt!718574 () Int)

(assert (=> d!569835 (>= lt!718574 0)))

(declare-fun e!1191177 () Int)

(assert (=> d!569835 (= lt!718574 e!1191177)))

(declare-fun c!303968 () Bool)

(assert (=> d!569835 (= c!303968 ((_ is Nil!20679) (innerList!6934 (xs!9756 (right!16994 t!4595)))))))

(assert (=> d!569835 (= (size!16386 (innerList!6934 (xs!9756 (right!16994 t!4595)))) lt!718574)))

(declare-fun b!1866246 () Bool)

(assert (=> b!1866246 (= e!1191177 0)))

(declare-fun b!1866247 () Bool)

(assert (=> b!1866247 (= e!1191177 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 (right!16994 t!4595)))))))))

(assert (= (and d!569835 c!303968) b!1866246))

(assert (= (and d!569835 (not c!303968)) b!1866247))

(declare-fun m!2291031 () Bool)

(assert (=> b!1866247 m!2291031))

(assert (=> d!569699 d!569835))

(declare-fun d!569837 () Bool)

(declare-fun lt!718575 () Bool)

(assert (=> d!569837 (= lt!718575 (isEmpty!12900 (list!8456 (left!16664 (right!16994 t!4595)))))))

(assert (=> d!569837 (= lt!718575 (= (size!16388 (left!16664 (right!16994 t!4595))) 0))))

(assert (=> d!569837 (= (isEmpty!12899 (left!16664 (right!16994 t!4595))) lt!718575)))

(declare-fun bs!411720 () Bool)

(assert (= bs!411720 d!569837))

(assert (=> bs!411720 m!2290829))

(assert (=> bs!411720 m!2290829))

(declare-fun m!2291033 () Bool)

(assert (=> bs!411720 m!2291033))

(assert (=> bs!411720 m!2290761))

(assert (=> b!1866097 d!569837))

(declare-fun d!569839 () Bool)

(declare-fun lt!718576 () Int)

(assert (=> d!569839 (>= lt!718576 0)))

(declare-fun e!1191178 () Int)

(assert (=> d!569839 (= lt!718576 e!1191178)))

(declare-fun c!303969 () Bool)

(assert (=> d!569839 (= c!303969 ((_ is Nil!20679) (t!172882 (innerList!6934 (xs!9756 t!4595)))))))

(assert (=> d!569839 (= (size!16386 (t!172882 (innerList!6934 (xs!9756 t!4595)))) lt!718576)))

(declare-fun b!1866248 () Bool)

(assert (=> b!1866248 (= e!1191178 0)))

(declare-fun b!1866249 () Bool)

(assert (=> b!1866249 (= e!1191178 (+ 1 (size!16386 (t!172882 (t!172882 (innerList!6934 (xs!9756 t!4595)))))))))

(assert (= (and d!569839 c!303969) b!1866248))

(assert (= (and d!569839 (not c!303969)) b!1866249))

(declare-fun m!2291035 () Bool)

(assert (=> b!1866249 m!2291035))

(assert (=> b!1866086 d!569839))

(declare-fun d!569841 () Bool)

(assert (=> d!569841 (= (height!1061 (left!16664 (left!16664 t!4595))) (ite ((_ is Empty!6874) (left!16664 (left!16664 t!4595))) 0 (ite ((_ is Leaf!10079) (left!16664 (left!16664 t!4595))) 1 (cheight!7085 (left!16664 (left!16664 t!4595))))))))

(assert (=> b!1866074 d!569841))

(declare-fun d!569843 () Bool)

(assert (=> d!569843 (= (height!1061 (right!16994 (left!16664 t!4595))) (ite ((_ is Empty!6874) (right!16994 (left!16664 t!4595))) 0 (ite ((_ is Leaf!10079) (right!16994 (left!16664 t!4595))) 1 (cheight!7085 (right!16994 (left!16664 t!4595))))))))

(assert (=> b!1866074 d!569843))

(assert (=> b!1866041 d!569703))

(assert (=> b!1866041 d!569705))

(declare-fun d!569845 () Bool)

(declare-fun lt!718577 () Int)

(assert (=> d!569845 (>= lt!718577 0)))

(declare-fun e!1191179 () Int)

(assert (=> d!569845 (= lt!718577 e!1191179)))

(declare-fun c!303970 () Bool)

(assert (=> d!569845 (= c!303970 ((_ is Nil!20679) (list!8456 t!4595)))))

(assert (=> d!569845 (= (size!16386 (list!8456 t!4595)) lt!718577)))

(declare-fun b!1866250 () Bool)

(assert (=> b!1866250 (= e!1191179 0)))

(declare-fun b!1866251 () Bool)

(assert (=> b!1866251 (= e!1191179 (+ 1 (size!16386 (t!172882 (list!8456 t!4595)))))))

(assert (= (and d!569845 c!303970) b!1866250))

(assert (= (and d!569845 (not c!303970)) b!1866251))

(declare-fun m!2291037 () Bool)

(assert (=> b!1866251 m!2291037))

(assert (=> d!569695 d!569845))

(assert (=> d!569695 d!569631))

(assert (=> b!1866072 d!569841))

(assert (=> b!1866072 d!569843))

(declare-fun d!569847 () Bool)

(declare-fun res!835686 () Bool)

(declare-fun e!1191180 () Bool)

(assert (=> d!569847 (=> (not res!835686) (not e!1191180))))

(assert (=> d!569847 (= res!835686 (<= (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 t!4595))))) 512))))

(assert (=> d!569847 (= (inv!27366 (right!16994 (right!16994 t!4595))) e!1191180)))

(declare-fun b!1866252 () Bool)

(declare-fun res!835687 () Bool)

(assert (=> b!1866252 (=> (not res!835687) (not e!1191180))))

(assert (=> b!1866252 (= res!835687 (= (csize!13979 (right!16994 (right!16994 t!4595))) (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866253 () Bool)

(assert (=> b!1866253 (= e!1191180 (and (> (csize!13979 (right!16994 (right!16994 t!4595))) 0) (<= (csize!13979 (right!16994 (right!16994 t!4595))) 512)))))

(assert (= (and d!569847 res!835686) b!1866252))

(assert (= (and b!1866252 res!835687) b!1866253))

(declare-fun m!2291039 () Bool)

(assert (=> d!569847 m!2291039))

(assert (=> d!569847 m!2291039))

(declare-fun m!2291041 () Bool)

(assert (=> d!569847 m!2291041))

(assert (=> b!1866252 m!2291039))

(assert (=> b!1866252 m!2291039))

(assert (=> b!1866252 m!2291041))

(assert (=> b!1866092 d!569847))

(declare-fun d!569849 () Bool)

(assert (=> d!569849 (= (isEmpty!12900 (list!8456 (right!16994 t!4595))) ((_ is Nil!20679) (list!8456 (right!16994 t!4595))))))

(assert (=> d!569725 d!569849))

(assert (=> d!569725 d!569723))

(assert (=> d!569725 d!569833))

(declare-fun b!1866254 () Bool)

(declare-fun e!1191182 () Bool)

(assert (=> b!1866254 (= e!1191182 (not (isEmpty!12899 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866255 () Bool)

(declare-fun res!835693 () Bool)

(assert (=> b!1866255 (=> (not res!835693) (not e!1191182))))

(assert (=> b!1866255 (= res!835693 (isBalanced!2175 (right!16994 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866256 () Bool)

(declare-fun res!835689 () Bool)

(assert (=> b!1866256 (=> (not res!835689) (not e!1191182))))

(assert (=> b!1866256 (= res!835689 (isBalanced!2175 (left!16664 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866257 () Bool)

(declare-fun res!835690 () Bool)

(assert (=> b!1866257 (=> (not res!835690) (not e!1191182))))

(assert (=> b!1866257 (= res!835690 (<= (- (height!1061 (left!16664 (right!16994 (left!16664 t!4595)))) (height!1061 (right!16994 (right!16994 (left!16664 t!4595))))) 1))))

(declare-fun b!1866258 () Bool)

(declare-fun res!835692 () Bool)

(assert (=> b!1866258 (=> (not res!835692) (not e!1191182))))

(assert (=> b!1866258 (= res!835692 (not (isEmpty!12899 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866259 () Bool)

(declare-fun e!1191181 () Bool)

(assert (=> b!1866259 (= e!1191181 e!1191182)))

(declare-fun res!835691 () Bool)

(assert (=> b!1866259 (=> (not res!835691) (not e!1191182))))

(assert (=> b!1866259 (= res!835691 (<= (- 1) (- (height!1061 (left!16664 (right!16994 (left!16664 t!4595)))) (height!1061 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(declare-fun d!569851 () Bool)

(declare-fun res!835688 () Bool)

(assert (=> d!569851 (=> res!835688 e!1191181)))

(assert (=> d!569851 (= res!835688 (not ((_ is Node!6874) (right!16994 (left!16664 t!4595)))))))

(assert (=> d!569851 (= (isBalanced!2175 (right!16994 (left!16664 t!4595))) e!1191181)))

(assert (= (and d!569851 (not res!835688)) b!1866259))

(assert (= (and b!1866259 res!835691) b!1866257))

(assert (= (and b!1866257 res!835690) b!1866256))

(assert (= (and b!1866256 res!835689) b!1866255))

(assert (= (and b!1866255 res!835693) b!1866258))

(assert (= (and b!1866258 res!835692) b!1866254))

(declare-fun m!2291043 () Bool)

(assert (=> b!1866258 m!2291043))

(declare-fun m!2291045 () Bool)

(assert (=> b!1866255 m!2291045))

(declare-fun m!2291047 () Bool)

(assert (=> b!1866254 m!2291047))

(declare-fun m!2291049 () Bool)

(assert (=> b!1866259 m!2291049))

(declare-fun m!2291051 () Bool)

(assert (=> b!1866259 m!2291051))

(assert (=> b!1866257 m!2291049))

(assert (=> b!1866257 m!2291051))

(declare-fun m!2291053 () Bool)

(assert (=> b!1866256 m!2291053))

(assert (=> b!1866070 d!569851))

(declare-fun d!569853 () Bool)

(declare-fun res!835694 () Bool)

(declare-fun e!1191183 () Bool)

(assert (=> d!569853 (=> (not res!835694) (not e!1191183))))

(assert (=> d!569853 (= res!835694 (= (csize!13978 (right!16994 (right!16994 t!4595))) (+ (size!16388 (left!16664 (right!16994 (right!16994 t!4595)))) (size!16388 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(assert (=> d!569853 (= (inv!27365 (right!16994 (right!16994 t!4595))) e!1191183)))

(declare-fun b!1866260 () Bool)

(declare-fun res!835695 () Bool)

(assert (=> b!1866260 (=> (not res!835695) (not e!1191183))))

(assert (=> b!1866260 (= res!835695 (and (not (= (left!16664 (right!16994 (right!16994 t!4595))) Empty!6874)) (not (= (right!16994 (right!16994 (right!16994 t!4595))) Empty!6874))))))

(declare-fun b!1866261 () Bool)

(declare-fun res!835696 () Bool)

(assert (=> b!1866261 (=> (not res!835696) (not e!1191183))))

(assert (=> b!1866261 (= res!835696 (= (cheight!7085 (right!16994 (right!16994 t!4595))) (+ (max!0 (height!1061 (left!16664 (right!16994 (right!16994 t!4595)))) (height!1061 (right!16994 (right!16994 (right!16994 t!4595))))) 1)))))

(declare-fun b!1866262 () Bool)

(assert (=> b!1866262 (= e!1191183 (<= 0 (cheight!7085 (right!16994 (right!16994 t!4595)))))))

(assert (= (and d!569853 res!835694) b!1866260))

(assert (= (and b!1866260 res!835695) b!1866261))

(assert (= (and b!1866261 res!835696) b!1866262))

(declare-fun m!2291055 () Bool)

(assert (=> d!569853 m!2291055))

(declare-fun m!2291057 () Bool)

(assert (=> d!569853 m!2291057))

(declare-fun m!2291059 () Bool)

(assert (=> b!1866261 m!2291059))

(declare-fun m!2291061 () Bool)

(assert (=> b!1866261 m!2291061))

(assert (=> b!1866261 m!2291059))

(assert (=> b!1866261 m!2291061))

(declare-fun m!2291063 () Bool)

(assert (=> b!1866261 m!2291063))

(assert (=> b!1866090 d!569853))

(declare-fun d!569855 () Bool)

(declare-fun lt!718578 () Int)

(assert (=> d!569855 (>= lt!718578 0)))

(declare-fun e!1191184 () Int)

(assert (=> d!569855 (= lt!718578 e!1191184)))

(declare-fun c!303971 () Bool)

(assert (=> d!569855 (= c!303971 ((_ is Nil!20679) (list!8457 (xs!9756 t!4595))))))

(assert (=> d!569855 (= (size!16386 (list!8457 (xs!9756 t!4595))) lt!718578)))

(declare-fun b!1866263 () Bool)

(assert (=> b!1866263 (= e!1191184 0)))

(declare-fun b!1866264 () Bool)

(assert (=> b!1866264 (= e!1191184 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 t!4595))))))))

(assert (= (and d!569855 c!303971) b!1866263))

(assert (= (and d!569855 (not c!303971)) b!1866264))

(declare-fun m!2291065 () Bool)

(assert (=> b!1866264 m!2291065))

(assert (=> b!1866050 d!569855))

(assert (=> b!1866050 d!569727))

(declare-fun d!569857 () Bool)

(declare-fun res!835697 () Bool)

(declare-fun e!1191185 () Bool)

(assert (=> d!569857 (=> (not res!835697) (not e!1191185))))

(assert (=> d!569857 (= res!835697 (<= (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 t!4595))))) 512))))

(assert (=> d!569857 (= (inv!27366 (left!16664 (left!16664 t!4595))) e!1191185)))

(declare-fun b!1866265 () Bool)

(declare-fun res!835698 () Bool)

(assert (=> b!1866265 (=> (not res!835698) (not e!1191185))))

(assert (=> b!1866265 (= res!835698 (= (csize!13979 (left!16664 (left!16664 t!4595))) (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 t!4595)))))))))

(declare-fun b!1866266 () Bool)

(assert (=> b!1866266 (= e!1191185 (and (> (csize!13979 (left!16664 (left!16664 t!4595))) 0) (<= (csize!13979 (left!16664 (left!16664 t!4595))) 512)))))

(assert (= (and d!569857 res!835697) b!1866265))

(assert (= (and b!1866265 res!835698) b!1866266))

(declare-fun m!2291067 () Bool)

(assert (=> d!569857 m!2291067))

(assert (=> d!569857 m!2291067))

(declare-fun m!2291069 () Bool)

(assert (=> d!569857 m!2291069))

(assert (=> b!1866265 m!2291067))

(assert (=> b!1866265 m!2291067))

(assert (=> b!1866265 m!2291069))

(assert (=> b!1866077 d!569857))

(declare-fun d!569859 () Bool)

(assert (=> d!569859 (= (isEmpty!12900 (list!8456 (left!16664 t!4595))) ((_ is Nil!20679) (list!8456 (left!16664 t!4595))))))

(assert (=> d!569677 d!569859))

(assert (=> d!569677 d!569721))

(assert (=> d!569677 d!569831))

(declare-fun d!569861 () Bool)

(declare-fun res!835699 () Bool)

(declare-fun e!1191186 () Bool)

(assert (=> d!569861 (=> (not res!835699) (not e!1191186))))

(assert (=> d!569861 (= res!835699 (= (csize!13978 (left!16664 (right!16994 t!4595))) (+ (size!16388 (left!16664 (left!16664 (right!16994 t!4595)))) (size!16388 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(assert (=> d!569861 (= (inv!27365 (left!16664 (right!16994 t!4595))) e!1191186)))

(declare-fun b!1866267 () Bool)

(declare-fun res!835700 () Bool)

(assert (=> b!1866267 (=> (not res!835700) (not e!1191186))))

(assert (=> b!1866267 (= res!835700 (and (not (= (left!16664 (left!16664 (right!16994 t!4595))) Empty!6874)) (not (= (right!16994 (left!16664 (right!16994 t!4595))) Empty!6874))))))

(declare-fun b!1866268 () Bool)

(declare-fun res!835701 () Bool)

(assert (=> b!1866268 (=> (not res!835701) (not e!1191186))))

(assert (=> b!1866268 (= res!835701 (= (cheight!7085 (left!16664 (right!16994 t!4595))) (+ (max!0 (height!1061 (left!16664 (left!16664 (right!16994 t!4595)))) (height!1061 (right!16994 (left!16664 (right!16994 t!4595))))) 1)))))

(declare-fun b!1866269 () Bool)

(assert (=> b!1866269 (= e!1191186 (<= 0 (cheight!7085 (left!16664 (right!16994 t!4595)))))))

(assert (= (and d!569861 res!835699) b!1866267))

(assert (= (and b!1866267 res!835700) b!1866268))

(assert (= (and b!1866268 res!835701) b!1866269))

(declare-fun m!2291071 () Bool)

(assert (=> d!569861 m!2291071))

(declare-fun m!2291073 () Bool)

(assert (=> d!569861 m!2291073))

(assert (=> b!1866268 m!2290997))

(assert (=> b!1866268 m!2290999))

(assert (=> b!1866268 m!2290997))

(assert (=> b!1866268 m!2290999))

(declare-fun m!2291075 () Bool)

(assert (=> b!1866268 m!2291075))

(assert (=> b!1866087 d!569861))

(declare-fun d!569863 () Bool)

(declare-fun lt!718579 () Int)

(assert (=> d!569863 (>= lt!718579 0)))

(declare-fun e!1191187 () Int)

(assert (=> d!569863 (= lt!718579 e!1191187)))

(declare-fun c!303972 () Bool)

(assert (=> d!569863 (= c!303972 ((_ is Nil!20679) (innerList!6934 (xs!9756 (left!16664 t!4595)))))))

(assert (=> d!569863 (= (size!16386 (innerList!6934 (xs!9756 (left!16664 t!4595)))) lt!718579)))

(declare-fun b!1866270 () Bool)

(assert (=> b!1866270 (= e!1191187 0)))

(declare-fun b!1866271 () Bool)

(assert (=> b!1866271 (= e!1191187 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 (left!16664 t!4595)))))))))

(assert (= (and d!569863 c!303972) b!1866270))

(assert (= (and d!569863 (not c!303972)) b!1866271))

(declare-fun m!2291077 () Bool)

(assert (=> b!1866271 m!2291077))

(assert (=> d!569681 d!569863))

(declare-fun d!569865 () Bool)

(assert (=> d!569865 (= (inv!27364 (xs!9756 (left!16664 (right!16994 t!4595)))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595))))) 2147483647))))

(declare-fun bs!411721 () Bool)

(assert (= bs!411721 d!569865))

(declare-fun m!2291079 () Bool)

(assert (=> bs!411721 m!2291079))

(assert (=> b!1866120 d!569865))

(declare-fun d!569867 () Bool)

(declare-fun c!303975 () Bool)

(assert (=> d!569867 (= c!303975 ((_ is Nil!20679) lt!718553))))

(declare-fun e!1191190 () (InoxSet T!33130))

(assert (=> d!569867 (= (content!3076 lt!718553) e!1191190)))

(declare-fun b!1866276 () Bool)

(assert (=> b!1866276 (= e!1191190 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866277 () Bool)

(assert (=> b!1866277 (= e!1191190 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 lt!718553) true) (content!3076 (t!172882 lt!718553))))))

(assert (= (and d!569867 c!303975) b!1866276))

(assert (= (and d!569867 (not c!303975)) b!1866277))

(declare-fun m!2291081 () Bool)

(assert (=> b!1866277 m!2291081))

(declare-fun m!2291083 () Bool)

(assert (=> b!1866277 m!2291083))

(assert (=> d!569719 d!569867))

(declare-fun d!569869 () Bool)

(declare-fun c!303976 () Bool)

(assert (=> d!569869 (= c!303976 ((_ is Nil!20679) (list!8456 (left!16664 t!4595))))))

(declare-fun e!1191191 () (InoxSet T!33130))

(assert (=> d!569869 (= (content!3076 (list!8456 (left!16664 t!4595))) e!1191191)))

(declare-fun b!1866278 () Bool)

(assert (=> b!1866278 (= e!1191191 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866279 () Bool)

(assert (=> b!1866279 (= e!1191191 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (list!8456 (left!16664 t!4595))) true) (content!3076 (t!172882 (list!8456 (left!16664 t!4595))))))))

(assert (= (and d!569869 c!303976) b!1866278))

(assert (= (and d!569869 (not c!303976)) b!1866279))

(declare-fun m!2291085 () Bool)

(assert (=> b!1866279 m!2291085))

(declare-fun m!2291087 () Bool)

(assert (=> b!1866279 m!2291087))

(assert (=> d!569719 d!569869))

(declare-fun d!569871 () Bool)

(declare-fun c!303977 () Bool)

(assert (=> d!569871 (= c!303977 ((_ is Nil!20679) (list!8456 (right!16994 t!4595))))))

(declare-fun e!1191192 () (InoxSet T!33130))

(assert (=> d!569871 (= (content!3076 (list!8456 (right!16994 t!4595))) e!1191192)))

(declare-fun b!1866280 () Bool)

(assert (=> b!1866280 (= e!1191192 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866281 () Bool)

(assert (=> b!1866281 (= e!1191192 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (list!8456 (right!16994 t!4595))) true) (content!3076 (t!172882 (list!8456 (right!16994 t!4595))))))))

(assert (= (and d!569871 c!303977) b!1866280))

(assert (= (and d!569871 (not c!303977)) b!1866281))

(declare-fun m!2291089 () Bool)

(assert (=> b!1866281 m!2291089))

(declare-fun m!2291091 () Bool)

(assert (=> b!1866281 m!2291091))

(assert (=> d!569719 d!569871))

(declare-fun d!569873 () Bool)

(assert (=> d!569873 (= (height!1061 (left!16664 (right!16994 t!4595))) (ite ((_ is Empty!6874) (left!16664 (right!16994 t!4595))) 0 (ite ((_ is Leaf!10079) (left!16664 (right!16994 t!4595))) 1 (cheight!7085 (left!16664 (right!16994 t!4595))))))))

(assert (=> b!1866096 d!569873))

(declare-fun d!569875 () Bool)

(assert (=> d!569875 (= (height!1061 (right!16994 (right!16994 t!4595))) (ite ((_ is Empty!6874) (right!16994 (right!16994 t!4595))) 0 (ite ((_ is Leaf!10079) (right!16994 (right!16994 t!4595))) 1 (cheight!7085 (right!16994 (right!16994 t!4595))))))))

(assert (=> b!1866096 d!569875))

(declare-fun d!569877 () Bool)

(declare-fun lt!718580 () Int)

(assert (=> d!569877 (= lt!718580 (size!16386 (list!8456 (left!16664 (right!16994 t!4595)))))))

(assert (=> d!569877 (= lt!718580 (ite ((_ is Empty!6874) (left!16664 (right!16994 t!4595))) 0 (ite ((_ is Leaf!10079) (left!16664 (right!16994 t!4595))) (csize!13979 (left!16664 (right!16994 t!4595))) (csize!13978 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!569877 (= (size!16388 (left!16664 (right!16994 t!4595))) lt!718580)))

(declare-fun bs!411722 () Bool)

(assert (= bs!411722 d!569877))

(assert (=> bs!411722 m!2290829))

(assert (=> bs!411722 m!2290829))

(declare-fun m!2291093 () Bool)

(assert (=> bs!411722 m!2291093))

(assert (=> d!569683 d!569877))

(declare-fun d!569879 () Bool)

(declare-fun lt!718581 () Int)

(assert (=> d!569879 (= lt!718581 (size!16386 (list!8456 (right!16994 (right!16994 t!4595)))))))

(assert (=> d!569879 (= lt!718581 (ite ((_ is Empty!6874) (right!16994 (right!16994 t!4595))) 0 (ite ((_ is Leaf!10079) (right!16994 (right!16994 t!4595))) (csize!13979 (right!16994 (right!16994 t!4595))) (csize!13978 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!569879 (= (size!16388 (right!16994 (right!16994 t!4595))) lt!718581)))

(declare-fun bs!411723 () Bool)

(assert (= bs!411723 d!569879))

(assert (=> bs!411723 m!2290831))

(assert (=> bs!411723 m!2290831))

(declare-fun m!2291095 () Bool)

(assert (=> bs!411723 m!2291095))

(assert (=> d!569683 d!569879))

(declare-fun d!569881 () Bool)

(declare-fun res!835702 () Bool)

(declare-fun e!1191193 () Bool)

(assert (=> d!569881 (=> (not res!835702) (not e!1191193))))

(assert (=> d!569881 (= res!835702 (<= (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 t!4595))))) 512))))

(assert (=> d!569881 (= (inv!27366 (right!16994 (left!16664 t!4595))) e!1191193)))

(declare-fun b!1866282 () Bool)

(declare-fun res!835703 () Bool)

(assert (=> b!1866282 (=> (not res!835703) (not e!1191193))))

(assert (=> b!1866282 (= res!835703 (= (csize!13979 (right!16994 (left!16664 t!4595))) (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866283 () Bool)

(assert (=> b!1866283 (= e!1191193 (and (> (csize!13979 (right!16994 (left!16664 t!4595))) 0) (<= (csize!13979 (right!16994 (left!16664 t!4595))) 512)))))

(assert (= (and d!569881 res!835702) b!1866282))

(assert (= (and b!1866282 res!835703) b!1866283))

(declare-fun m!2291097 () Bool)

(assert (=> d!569881 m!2291097))

(assert (=> d!569881 m!2291097))

(declare-fun m!2291099 () Bool)

(assert (=> d!569881 m!2291099))

(assert (=> b!1866282 m!2291097))

(assert (=> b!1866282 m!2291097))

(assert (=> b!1866282 m!2291099))

(assert (=> b!1866080 d!569881))

(declare-fun b!1866284 () Bool)

(declare-fun e!1191195 () Bool)

(assert (=> b!1866284 (= e!1191195 (not (isEmpty!12899 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866285 () Bool)

(declare-fun res!835709 () Bool)

(assert (=> b!1866285 (=> (not res!835709) (not e!1191195))))

(assert (=> b!1866285 (= res!835709 (isBalanced!2175 (right!16994 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866286 () Bool)

(declare-fun res!835705 () Bool)

(assert (=> b!1866286 (=> (not res!835705) (not e!1191195))))

(assert (=> b!1866286 (= res!835705 (isBalanced!2175 (left!16664 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866287 () Bool)

(declare-fun res!835706 () Bool)

(assert (=> b!1866287 (=> (not res!835706) (not e!1191195))))

(assert (=> b!1866287 (= res!835706 (<= (- (height!1061 (left!16664 (right!16994 (right!16994 t!4595)))) (height!1061 (right!16994 (right!16994 (right!16994 t!4595))))) 1))))

(declare-fun b!1866288 () Bool)

(declare-fun res!835708 () Bool)

(assert (=> b!1866288 (=> (not res!835708) (not e!1191195))))

(assert (=> b!1866288 (= res!835708 (not (isEmpty!12899 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866289 () Bool)

(declare-fun e!1191194 () Bool)

(assert (=> b!1866289 (= e!1191194 e!1191195)))

(declare-fun res!835707 () Bool)

(assert (=> b!1866289 (=> (not res!835707) (not e!1191195))))

(assert (=> b!1866289 (= res!835707 (<= (- 1) (- (height!1061 (left!16664 (right!16994 (right!16994 t!4595)))) (height!1061 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(declare-fun d!569883 () Bool)

(declare-fun res!835704 () Bool)

(assert (=> d!569883 (=> res!835704 e!1191194)))

(assert (=> d!569883 (= res!835704 (not ((_ is Node!6874) (right!16994 (right!16994 t!4595)))))))

(assert (=> d!569883 (= (isBalanced!2175 (right!16994 (right!16994 t!4595))) e!1191194)))

(assert (= (and d!569883 (not res!835704)) b!1866289))

(assert (= (and b!1866289 res!835707) b!1866287))

(assert (= (and b!1866287 res!835706) b!1866286))

(assert (= (and b!1866286 res!835705) b!1866285))

(assert (= (and b!1866285 res!835709) b!1866288))

(assert (= (and b!1866288 res!835708) b!1866284))

(declare-fun m!2291101 () Bool)

(assert (=> b!1866288 m!2291101))

(declare-fun m!2291103 () Bool)

(assert (=> b!1866285 m!2291103))

(declare-fun m!2291105 () Bool)

(assert (=> b!1866284 m!2291105))

(assert (=> b!1866289 m!2291059))

(assert (=> b!1866289 m!2291061))

(assert (=> b!1866287 m!2291059))

(assert (=> b!1866287 m!2291061))

(declare-fun m!2291107 () Bool)

(assert (=> b!1866286 m!2291107))

(assert (=> b!1866094 d!569883))

(declare-fun d!569885 () Bool)

(declare-fun res!835710 () Bool)

(declare-fun e!1191196 () Bool)

(assert (=> d!569885 (=> (not res!835710) (not e!1191196))))

(assert (=> d!569885 (= res!835710 (= (csize!13978 (right!16994 (left!16664 t!4595))) (+ (size!16388 (left!16664 (right!16994 (left!16664 t!4595)))) (size!16388 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(assert (=> d!569885 (= (inv!27365 (right!16994 (left!16664 t!4595))) e!1191196)))

(declare-fun b!1866290 () Bool)

(declare-fun res!835711 () Bool)

(assert (=> b!1866290 (=> (not res!835711) (not e!1191196))))

(assert (=> b!1866290 (= res!835711 (and (not (= (left!16664 (right!16994 (left!16664 t!4595))) Empty!6874)) (not (= (right!16994 (right!16994 (left!16664 t!4595))) Empty!6874))))))

(declare-fun b!1866291 () Bool)

(declare-fun res!835712 () Bool)

(assert (=> b!1866291 (=> (not res!835712) (not e!1191196))))

(assert (=> b!1866291 (= res!835712 (= (cheight!7085 (right!16994 (left!16664 t!4595))) (+ (max!0 (height!1061 (left!16664 (right!16994 (left!16664 t!4595)))) (height!1061 (right!16994 (right!16994 (left!16664 t!4595))))) 1)))))

(declare-fun b!1866292 () Bool)

(assert (=> b!1866292 (= e!1191196 (<= 0 (cheight!7085 (right!16994 (left!16664 t!4595)))))))

(assert (= (and d!569885 res!835710) b!1866290))

(assert (= (and b!1866290 res!835711) b!1866291))

(assert (= (and b!1866291 res!835712) b!1866292))

(declare-fun m!2291109 () Bool)

(assert (=> d!569885 m!2291109))

(declare-fun m!2291111 () Bool)

(assert (=> d!569885 m!2291111))

(assert (=> b!1866291 m!2291049))

(assert (=> b!1866291 m!2291051))

(assert (=> b!1866291 m!2291049))

(assert (=> b!1866291 m!2291051))

(declare-fun m!2291113 () Bool)

(assert (=> b!1866291 m!2291113))

(assert (=> b!1866078 d!569885))

(assert (=> b!1866038 d!569687))

(assert (=> b!1866038 d!569689))

(declare-fun d!569887 () Bool)

(declare-fun c!303978 () Bool)

(assert (=> d!569887 (= c!303978 ((_ is Node!6874) (left!16664 (right!16994 (left!16664 t!4595)))))))

(declare-fun e!1191197 () Bool)

(assert (=> d!569887 (= (inv!27363 (left!16664 (right!16994 (left!16664 t!4595)))) e!1191197)))

(declare-fun b!1866293 () Bool)

(assert (=> b!1866293 (= e!1191197 (inv!27365 (left!16664 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866294 () Bool)

(declare-fun e!1191198 () Bool)

(assert (=> b!1866294 (= e!1191197 e!1191198)))

(declare-fun res!835713 () Bool)

(assert (=> b!1866294 (= res!835713 (not ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (=> b!1866294 (=> res!835713 e!1191198)))

(declare-fun b!1866295 () Bool)

(assert (=> b!1866295 (= e!1191198 (inv!27366 (left!16664 (right!16994 (left!16664 t!4595)))))))

(assert (= (and d!569887 c!303978) b!1866293))

(assert (= (and d!569887 (not c!303978)) b!1866294))

(assert (= (and b!1866294 (not res!835713)) b!1866295))

(declare-fun m!2291115 () Bool)

(assert (=> b!1866293 m!2291115))

(declare-fun m!2291117 () Bool)

(assert (=> b!1866295 m!2291117))

(assert (=> b!1866130 d!569887))

(declare-fun d!569889 () Bool)

(declare-fun c!303979 () Bool)

(assert (=> d!569889 (= c!303979 ((_ is Node!6874) (right!16994 (right!16994 (left!16664 t!4595)))))))

(declare-fun e!1191199 () Bool)

(assert (=> d!569889 (= (inv!27363 (right!16994 (right!16994 (left!16664 t!4595)))) e!1191199)))

(declare-fun b!1866296 () Bool)

(assert (=> b!1866296 (= e!1191199 (inv!27365 (right!16994 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866297 () Bool)

(declare-fun e!1191200 () Bool)

(assert (=> b!1866297 (= e!1191199 e!1191200)))

(declare-fun res!835714 () Bool)

(assert (=> b!1866297 (= res!835714 (not ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (=> b!1866297 (=> res!835714 e!1191200)))

(declare-fun b!1866298 () Bool)

(assert (=> b!1866298 (= e!1191200 (inv!27366 (right!16994 (right!16994 (left!16664 t!4595)))))))

(assert (= (and d!569889 c!303979) b!1866296))

(assert (= (and d!569889 (not c!303979)) b!1866297))

(assert (= (and b!1866297 (not res!835714)) b!1866298))

(declare-fun m!2291119 () Bool)

(assert (=> b!1866296 m!2291119))

(declare-fun m!2291121 () Bool)

(assert (=> b!1866298 m!2291121))

(assert (=> b!1866130 d!569889))

(declare-fun d!569891 () Bool)

(assert (=> d!569891 (= (list!8457 (xs!9756 (left!16664 t!4595))) (innerList!6934 (xs!9756 (left!16664 t!4595))))))

(assert (=> b!1866113 d!569891))

(declare-fun d!569893 () Bool)

(assert (=> d!569893 (= (max!0 (height!1061 (left!16664 (right!16994 t!4595))) (height!1061 (right!16994 (right!16994 t!4595)))) (ite (< (height!1061 (left!16664 (right!16994 t!4595))) (height!1061 (right!16994 (right!16994 t!4595)))) (height!1061 (right!16994 (right!16994 t!4595))) (height!1061 (left!16664 (right!16994 t!4595)))))))

(assert (=> b!1866067 d!569893))

(assert (=> b!1866067 d!569873))

(assert (=> b!1866067 d!569875))

(declare-fun d!569895 () Bool)

(declare-fun res!835715 () Bool)

(declare-fun e!1191201 () Bool)

(assert (=> d!569895 (=> (not res!835715) (not e!1191201))))

(assert (=> d!569895 (= res!835715 (= (csize!13978 (left!16664 (left!16664 t!4595))) (+ (size!16388 (left!16664 (left!16664 (left!16664 t!4595)))) (size!16388 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(assert (=> d!569895 (= (inv!27365 (left!16664 (left!16664 t!4595))) e!1191201)))

(declare-fun b!1866299 () Bool)

(declare-fun res!835716 () Bool)

(assert (=> b!1866299 (=> (not res!835716) (not e!1191201))))

(assert (=> b!1866299 (= res!835716 (and (not (= (left!16664 (left!16664 (left!16664 t!4595))) Empty!6874)) (not (= (right!16994 (left!16664 (left!16664 t!4595))) Empty!6874))))))

(declare-fun b!1866300 () Bool)

(declare-fun res!835717 () Bool)

(assert (=> b!1866300 (=> (not res!835717) (not e!1191201))))

(assert (=> b!1866300 (= res!835717 (= (cheight!7085 (left!16664 (left!16664 t!4595))) (+ (max!0 (height!1061 (left!16664 (left!16664 (left!16664 t!4595)))) (height!1061 (right!16994 (left!16664 (left!16664 t!4595))))) 1)))))

(declare-fun b!1866301 () Bool)

(assert (=> b!1866301 (= e!1191201 (<= 0 (cheight!7085 (left!16664 (left!16664 t!4595)))))))

(assert (= (and d!569895 res!835715) b!1866299))

(assert (= (and b!1866299 res!835716) b!1866300))

(assert (= (and b!1866300 res!835717) b!1866301))

(declare-fun m!2291123 () Bool)

(assert (=> d!569895 m!2291123))

(declare-fun m!2291125 () Bool)

(assert (=> d!569895 m!2291125))

(declare-fun m!2291127 () Bool)

(assert (=> b!1866300 m!2291127))

(declare-fun m!2291129 () Bool)

(assert (=> b!1866300 m!2291129))

(assert (=> b!1866300 m!2291127))

(assert (=> b!1866300 m!2291129))

(declare-fun m!2291131 () Bool)

(assert (=> b!1866300 m!2291131))

(assert (=> b!1866075 d!569895))

(declare-fun d!569897 () Bool)

(assert (=> d!569897 (= (inv!27364 (xs!9756 (left!16664 (left!16664 t!4595)))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595))))) 2147483647))))

(declare-fun bs!411724 () Bool)

(assert (= bs!411724 d!569897))

(declare-fun m!2291133 () Bool)

(assert (=> bs!411724 m!2291133))

(assert (=> b!1866128 d!569897))

(declare-fun d!569899 () Bool)

(declare-fun c!303980 () Bool)

(assert (=> d!569899 (= c!303980 ((_ is Node!6874) (left!16664 (right!16994 (right!16994 t!4595)))))))

(declare-fun e!1191202 () Bool)

(assert (=> d!569899 (= (inv!27363 (left!16664 (right!16994 (right!16994 t!4595)))) e!1191202)))

(declare-fun b!1866302 () Bool)

(assert (=> b!1866302 (= e!1191202 (inv!27365 (left!16664 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866303 () Bool)

(declare-fun e!1191203 () Bool)

(assert (=> b!1866303 (= e!1191202 e!1191203)))

(declare-fun res!835718 () Bool)

(assert (=> b!1866303 (= res!835718 (not ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (=> b!1866303 (=> res!835718 e!1191203)))

(declare-fun b!1866304 () Bool)

(assert (=> b!1866304 (= e!1191203 (inv!27366 (left!16664 (right!16994 (right!16994 t!4595)))))))

(assert (= (and d!569899 c!303980) b!1866302))

(assert (= (and d!569899 (not c!303980)) b!1866303))

(assert (= (and b!1866303 (not res!835718)) b!1866304))

(declare-fun m!2291135 () Bool)

(assert (=> b!1866302 m!2291135))

(declare-fun m!2291137 () Bool)

(assert (=> b!1866304 m!2291137))

(assert (=> b!1866122 d!569899))

(declare-fun d!569901 () Bool)

(declare-fun c!303981 () Bool)

(assert (=> d!569901 (= c!303981 ((_ is Node!6874) (right!16994 (right!16994 (right!16994 t!4595)))))))

(declare-fun e!1191204 () Bool)

(assert (=> d!569901 (= (inv!27363 (right!16994 (right!16994 (right!16994 t!4595)))) e!1191204)))

(declare-fun b!1866305 () Bool)

(assert (=> b!1866305 (= e!1191204 (inv!27365 (right!16994 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866306 () Bool)

(declare-fun e!1191205 () Bool)

(assert (=> b!1866306 (= e!1191204 e!1191205)))

(declare-fun res!835719 () Bool)

(assert (=> b!1866306 (= res!835719 (not ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (=> b!1866306 (=> res!835719 e!1191205)))

(declare-fun b!1866307 () Bool)

(assert (=> b!1866307 (= e!1191205 (inv!27366 (right!16994 (right!16994 (right!16994 t!4595)))))))

(assert (= (and d!569901 c!303981) b!1866305))

(assert (= (and d!569901 (not c!303981)) b!1866306))

(assert (= (and b!1866306 (not res!835719)) b!1866307))

(declare-fun m!2291139 () Bool)

(assert (=> b!1866305 m!2291139))

(declare-fun m!2291141 () Bool)

(assert (=> b!1866307 m!2291141))

(assert (=> b!1866122 d!569901))

(assert (=> d!569671 d!569855))

(assert (=> d!569671 d!569727))

(assert (=> b!1866098 d!569873))

(assert (=> b!1866098 d!569875))

(declare-fun b!1866309 () Bool)

(declare-fun e!1191206 () List!20761)

(assert (=> b!1866309 (= e!1191206 (Cons!20679 (h!26080 (t!172882 (list!8456 (left!16664 t!4595)))) (++!5601 (t!172882 (t!172882 (list!8456 (left!16664 t!4595)))) (list!8456 (right!16994 t!4595)))))))

(declare-fun b!1866310 () Bool)

(declare-fun res!835721 () Bool)

(declare-fun e!1191207 () Bool)

(assert (=> b!1866310 (=> (not res!835721) (not e!1191207))))

(declare-fun lt!718582 () List!20761)

(assert (=> b!1866310 (= res!835721 (= (size!16386 lt!718582) (+ (size!16386 (t!172882 (list!8456 (left!16664 t!4595)))) (size!16386 (list!8456 (right!16994 t!4595))))))))

(declare-fun b!1866311 () Bool)

(assert (=> b!1866311 (= e!1191207 (or (not (= (list!8456 (right!16994 t!4595)) Nil!20679)) (= lt!718582 (t!172882 (list!8456 (left!16664 t!4595))))))))

(declare-fun d!569903 () Bool)

(assert (=> d!569903 e!1191207))

(declare-fun res!835720 () Bool)

(assert (=> d!569903 (=> (not res!835720) (not e!1191207))))

(assert (=> d!569903 (= res!835720 (= (content!3076 lt!718582) ((_ map or) (content!3076 (t!172882 (list!8456 (left!16664 t!4595)))) (content!3076 (list!8456 (right!16994 t!4595))))))))

(assert (=> d!569903 (= lt!718582 e!1191206)))

(declare-fun c!303982 () Bool)

(assert (=> d!569903 (= c!303982 ((_ is Nil!20679) (t!172882 (list!8456 (left!16664 t!4595)))))))

(assert (=> d!569903 (= (++!5601 (t!172882 (list!8456 (left!16664 t!4595))) (list!8456 (right!16994 t!4595))) lt!718582)))

(declare-fun b!1866308 () Bool)

(assert (=> b!1866308 (= e!1191206 (list!8456 (right!16994 t!4595)))))

(assert (= (and d!569903 c!303982) b!1866308))

(assert (= (and d!569903 (not c!303982)) b!1866309))

(assert (= (and d!569903 res!835720) b!1866310))

(assert (= (and b!1866310 res!835721) b!1866311))

(assert (=> b!1866309 m!2290615))

(declare-fun m!2291143 () Bool)

(assert (=> b!1866309 m!2291143))

(declare-fun m!2291145 () Bool)

(assert (=> b!1866310 m!2291145))

(assert (=> b!1866310 m!2291019))

(assert (=> b!1866310 m!2290615))

(assert (=> b!1866310 m!2290815))

(declare-fun m!2291147 () Bool)

(assert (=> d!569903 m!2291147))

(assert (=> d!569903 m!2291087))

(assert (=> d!569903 m!2290615))

(assert (=> d!569903 m!2290821))

(assert (=> b!1866108 d!569903))

(declare-fun b!1866313 () Bool)

(declare-fun e!1191208 () List!20761)

(assert (=> b!1866313 (= e!1191208 (Cons!20679 (h!26080 (list!8456 (left!16664 (right!16994 t!4595)))) (++!5601 (t!172882 (list!8456 (left!16664 (right!16994 t!4595)))) (list!8456 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866314 () Bool)

(declare-fun res!835723 () Bool)

(declare-fun e!1191209 () Bool)

(assert (=> b!1866314 (=> (not res!835723) (not e!1191209))))

(declare-fun lt!718583 () List!20761)

(assert (=> b!1866314 (= res!835723 (= (size!16386 lt!718583) (+ (size!16386 (list!8456 (left!16664 (right!16994 t!4595)))) (size!16386 (list!8456 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866315 () Bool)

(assert (=> b!1866315 (= e!1191209 (or (not (= (list!8456 (right!16994 (right!16994 t!4595))) Nil!20679)) (= lt!718583 (list!8456 (left!16664 (right!16994 t!4595))))))))

(declare-fun d!569905 () Bool)

(assert (=> d!569905 e!1191209))

(declare-fun res!835722 () Bool)

(assert (=> d!569905 (=> (not res!835722) (not e!1191209))))

(assert (=> d!569905 (= res!835722 (= (content!3076 lt!718583) ((_ map or) (content!3076 (list!8456 (left!16664 (right!16994 t!4595)))) (content!3076 (list!8456 (right!16994 (right!16994 t!4595)))))))))

(assert (=> d!569905 (= lt!718583 e!1191208)))

(declare-fun c!303983 () Bool)

(assert (=> d!569905 (= c!303983 ((_ is Nil!20679) (list!8456 (left!16664 (right!16994 t!4595)))))))

(assert (=> d!569905 (= (++!5601 (list!8456 (left!16664 (right!16994 t!4595))) (list!8456 (right!16994 (right!16994 t!4595)))) lt!718583)))

(declare-fun b!1866312 () Bool)

(assert (=> b!1866312 (= e!1191208 (list!8456 (right!16994 (right!16994 t!4595))))))

(assert (= (and d!569905 c!303983) b!1866312))

(assert (= (and d!569905 (not c!303983)) b!1866313))

(assert (= (and d!569905 res!835722) b!1866314))

(assert (= (and b!1866314 res!835723) b!1866315))

(assert (=> b!1866313 m!2290831))

(declare-fun m!2291149 () Bool)

(assert (=> b!1866313 m!2291149))

(declare-fun m!2291151 () Bool)

(assert (=> b!1866314 m!2291151))

(assert (=> b!1866314 m!2290829))

(assert (=> b!1866314 m!2291093))

(assert (=> b!1866314 m!2290831))

(assert (=> b!1866314 m!2291095))

(declare-fun m!2291153 () Bool)

(assert (=> d!569905 m!2291153))

(assert (=> d!569905 m!2290829))

(declare-fun m!2291155 () Bool)

(assert (=> d!569905 m!2291155))

(assert (=> d!569905 m!2290831))

(declare-fun m!2291157 () Bool)

(assert (=> d!569905 m!2291157))

(assert (=> b!1866118 d!569905))

(declare-fun d!569907 () Bool)

(declare-fun c!303984 () Bool)

(assert (=> d!569907 (= c!303984 ((_ is Empty!6874) (left!16664 (right!16994 t!4595))))))

(declare-fun e!1191210 () List!20761)

(assert (=> d!569907 (= (list!8456 (left!16664 (right!16994 t!4595))) e!1191210)))

(declare-fun b!1866317 () Bool)

(declare-fun e!1191211 () List!20761)

(assert (=> b!1866317 (= e!1191210 e!1191211)))

(declare-fun c!303985 () Bool)

(assert (=> b!1866317 (= c!303985 ((_ is Leaf!10079) (left!16664 (right!16994 t!4595))))))

(declare-fun b!1866316 () Bool)

(assert (=> b!1866316 (= e!1191210 Nil!20679)))

(declare-fun b!1866318 () Bool)

(assert (=> b!1866318 (= e!1191211 (list!8457 (xs!9756 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866319 () Bool)

(assert (=> b!1866319 (= e!1191211 (++!5601 (list!8456 (left!16664 (left!16664 (right!16994 t!4595)))) (list!8456 (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!569907 c!303984) b!1866316))

(assert (= (and d!569907 (not c!303984)) b!1866317))

(assert (= (and b!1866317 c!303985) b!1866318))

(assert (= (and b!1866317 (not c!303985)) b!1866319))

(assert (=> b!1866318 m!2291007))

(declare-fun m!2291159 () Bool)

(assert (=> b!1866319 m!2291159))

(declare-fun m!2291161 () Bool)

(assert (=> b!1866319 m!2291161))

(assert (=> b!1866319 m!2291159))

(assert (=> b!1866319 m!2291161))

(declare-fun m!2291163 () Bool)

(assert (=> b!1866319 m!2291163))

(assert (=> b!1866118 d!569907))

(declare-fun d!569909 () Bool)

(declare-fun c!303986 () Bool)

(assert (=> d!569909 (= c!303986 ((_ is Empty!6874) (right!16994 (right!16994 t!4595))))))

(declare-fun e!1191212 () List!20761)

(assert (=> d!569909 (= (list!8456 (right!16994 (right!16994 t!4595))) e!1191212)))

(declare-fun b!1866321 () Bool)

(declare-fun e!1191213 () List!20761)

(assert (=> b!1866321 (= e!1191212 e!1191213)))

(declare-fun c!303987 () Bool)

(assert (=> b!1866321 (= c!303987 ((_ is Leaf!10079) (right!16994 (right!16994 t!4595))))))

(declare-fun b!1866320 () Bool)

(assert (=> b!1866320 (= e!1191212 Nil!20679)))

(declare-fun b!1866322 () Bool)

(assert (=> b!1866322 (= e!1191213 (list!8457 (xs!9756 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866323 () Bool)

(assert (=> b!1866323 (= e!1191213 (++!5601 (list!8456 (left!16664 (right!16994 (right!16994 t!4595)))) (list!8456 (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!569909 c!303986) b!1866320))

(assert (= (and d!569909 (not c!303986)) b!1866321))

(assert (= (and b!1866321 c!303987) b!1866322))

(assert (= (and b!1866321 (not c!303987)) b!1866323))

(assert (=> b!1866322 m!2291039))

(declare-fun m!2291165 () Bool)

(assert (=> b!1866323 m!2291165))

(declare-fun m!2291167 () Bool)

(assert (=> b!1866323 m!2291167))

(assert (=> b!1866323 m!2291165))

(assert (=> b!1866323 m!2291167))

(declare-fun m!2291169 () Bool)

(assert (=> b!1866323 m!2291169))

(assert (=> b!1866118 d!569909))

(declare-fun d!569911 () Bool)

(declare-fun lt!718584 () Int)

(assert (=> d!569911 (>= lt!718584 0)))

(declare-fun e!1191214 () Int)

(assert (=> d!569911 (= lt!718584 e!1191214)))

(declare-fun c!303988 () Bool)

(assert (=> d!569911 (= c!303988 ((_ is Nil!20679) (list!8457 (xs!9756 (left!16664 t!4595)))))))

(assert (=> d!569911 (= (size!16386 (list!8457 (xs!9756 (left!16664 t!4595)))) lt!718584)))

(declare-fun b!1866324 () Bool)

(assert (=> b!1866324 (= e!1191214 0)))

(declare-fun b!1866325 () Bool)

(assert (=> b!1866325 (= e!1191214 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 (left!16664 t!4595)))))))))

(assert (= (and d!569911 c!303988) b!1866324))

(assert (= (and d!569911 (not c!303988)) b!1866325))

(declare-fun m!2291171 () Bool)

(assert (=> b!1866325 m!2291171))

(assert (=> b!1866048 d!569911))

(assert (=> b!1866048 d!569891))

(declare-fun d!569913 () Bool)

(declare-fun lt!718585 () Bool)

(assert (=> d!569913 (= lt!718585 (isEmpty!12900 (list!8456 (left!16664 (left!16664 t!4595)))))))

(assert (=> d!569913 (= lt!718585 (= (size!16388 (left!16664 (left!16664 t!4595))) 0))))

(assert (=> d!569913 (= (isEmpty!12899 (left!16664 (left!16664 t!4595))) lt!718585)))

(declare-fun bs!411725 () Bool)

(assert (= bs!411725 d!569913))

(assert (=> bs!411725 m!2290823))

(assert (=> bs!411725 m!2290823))

(declare-fun m!2291173 () Bool)

(assert (=> bs!411725 m!2291173))

(assert (=> bs!411725 m!2290737))

(assert (=> b!1866073 d!569913))

(assert (=> b!1866061 d!569819))

(assert (=> b!1866061 d!569805))

(declare-fun d!569915 () Bool)

(assert (=> d!569915 (= (max!0 (height!1061 (left!16664 t!4595)) (height!1061 (right!16994 t!4595))) (ite (< (height!1061 (left!16664 t!4595)) (height!1061 (right!16994 t!4595))) (height!1061 (right!16994 t!4595)) (height!1061 (left!16664 t!4595))))))

(assert (=> b!1866064 d!569915))

(assert (=> b!1866064 d!569667))

(assert (=> b!1866064 d!569669))

(declare-fun b!1866326 () Bool)

(declare-fun e!1191216 () Bool)

(assert (=> b!1866326 (= e!1191216 (not (isEmpty!12899 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866327 () Bool)

(declare-fun res!835729 () Bool)

(assert (=> b!1866327 (=> (not res!835729) (not e!1191216))))

(assert (=> b!1866327 (= res!835729 (isBalanced!2175 (right!16994 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866328 () Bool)

(declare-fun res!835725 () Bool)

(assert (=> b!1866328 (=> (not res!835725) (not e!1191216))))

(assert (=> b!1866328 (= res!835725 (isBalanced!2175 (left!16664 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866329 () Bool)

(declare-fun res!835726 () Bool)

(assert (=> b!1866329 (=> (not res!835726) (not e!1191216))))

(assert (=> b!1866329 (= res!835726 (<= (- (height!1061 (left!16664 (left!16664 (left!16664 t!4595)))) (height!1061 (right!16994 (left!16664 (left!16664 t!4595))))) 1))))

(declare-fun b!1866330 () Bool)

(declare-fun res!835728 () Bool)

(assert (=> b!1866330 (=> (not res!835728) (not e!1191216))))

(assert (=> b!1866330 (= res!835728 (not (isEmpty!12899 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866331 () Bool)

(declare-fun e!1191215 () Bool)

(assert (=> b!1866331 (= e!1191215 e!1191216)))

(declare-fun res!835727 () Bool)

(assert (=> b!1866331 (=> (not res!835727) (not e!1191216))))

(assert (=> b!1866331 (= res!835727 (<= (- 1) (- (height!1061 (left!16664 (left!16664 (left!16664 t!4595)))) (height!1061 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(declare-fun d!569917 () Bool)

(declare-fun res!835724 () Bool)

(assert (=> d!569917 (=> res!835724 e!1191215)))

(assert (=> d!569917 (= res!835724 (not ((_ is Node!6874) (left!16664 (left!16664 t!4595)))))))

(assert (=> d!569917 (= (isBalanced!2175 (left!16664 (left!16664 t!4595))) e!1191215)))

(assert (= (and d!569917 (not res!835724)) b!1866331))

(assert (= (and b!1866331 res!835727) b!1866329))

(assert (= (and b!1866329 res!835726) b!1866328))

(assert (= (and b!1866328 res!835725) b!1866327))

(assert (= (and b!1866327 res!835729) b!1866330))

(assert (= (and b!1866330 res!835728) b!1866326))

(declare-fun m!2291175 () Bool)

(assert (=> b!1866330 m!2291175))

(declare-fun m!2291177 () Bool)

(assert (=> b!1866327 m!2291177))

(declare-fun m!2291179 () Bool)

(assert (=> b!1866326 m!2291179))

(assert (=> b!1866331 m!2291127))

(assert (=> b!1866331 m!2291129))

(assert (=> b!1866329 m!2291127))

(assert (=> b!1866329 m!2291129))

(declare-fun m!2291181 () Bool)

(assert (=> b!1866328 m!2291181))

(assert (=> b!1866071 d!569917))

(declare-fun b!1866333 () Bool)

(declare-fun e!1191217 () List!20761)

(assert (=> b!1866333 (= e!1191217 (Cons!20679 (h!26080 (list!8456 (left!16664 (left!16664 t!4595)))) (++!5601 (t!172882 (list!8456 (left!16664 (left!16664 t!4595)))) (list!8456 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866334 () Bool)

(declare-fun res!835731 () Bool)

(declare-fun e!1191218 () Bool)

(assert (=> b!1866334 (=> (not res!835731) (not e!1191218))))

(declare-fun lt!718586 () List!20761)

(assert (=> b!1866334 (= res!835731 (= (size!16386 lt!718586) (+ (size!16386 (list!8456 (left!16664 (left!16664 t!4595)))) (size!16386 (list!8456 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866335 () Bool)

(assert (=> b!1866335 (= e!1191218 (or (not (= (list!8456 (right!16994 (left!16664 t!4595))) Nil!20679)) (= lt!718586 (list!8456 (left!16664 (left!16664 t!4595))))))))

(declare-fun d!569919 () Bool)

(assert (=> d!569919 e!1191218))

(declare-fun res!835730 () Bool)

(assert (=> d!569919 (=> (not res!835730) (not e!1191218))))

(assert (=> d!569919 (= res!835730 (= (content!3076 lt!718586) ((_ map or) (content!3076 (list!8456 (left!16664 (left!16664 t!4595)))) (content!3076 (list!8456 (right!16994 (left!16664 t!4595)))))))))

(assert (=> d!569919 (= lt!718586 e!1191217)))

(declare-fun c!303989 () Bool)

(assert (=> d!569919 (= c!303989 ((_ is Nil!20679) (list!8456 (left!16664 (left!16664 t!4595)))))))

(assert (=> d!569919 (= (++!5601 (list!8456 (left!16664 (left!16664 t!4595))) (list!8456 (right!16994 (left!16664 t!4595)))) lt!718586)))

(declare-fun b!1866332 () Bool)

(assert (=> b!1866332 (= e!1191217 (list!8456 (right!16994 (left!16664 t!4595))))))

(assert (= (and d!569919 c!303989) b!1866332))

(assert (= (and d!569919 (not c!303989)) b!1866333))

(assert (= (and d!569919 res!835730) b!1866334))

(assert (= (and b!1866334 res!835731) b!1866335))

(assert (=> b!1866333 m!2290825))

(declare-fun m!2291183 () Bool)

(assert (=> b!1866333 m!2291183))

(declare-fun m!2291185 () Bool)

(assert (=> b!1866334 m!2291185))

(assert (=> b!1866334 m!2290823))

(declare-fun m!2291187 () Bool)

(assert (=> b!1866334 m!2291187))

(assert (=> b!1866334 m!2290825))

(declare-fun m!2291189 () Bool)

(assert (=> b!1866334 m!2291189))

(declare-fun m!2291191 () Bool)

(assert (=> d!569919 m!2291191))

(assert (=> d!569919 m!2290823))

(declare-fun m!2291193 () Bool)

(assert (=> d!569919 m!2291193))

(assert (=> d!569919 m!2290825))

(declare-fun m!2291195 () Bool)

(assert (=> d!569919 m!2291195))

(assert (=> b!1866114 d!569919))

(declare-fun d!569921 () Bool)

(declare-fun c!303990 () Bool)

(assert (=> d!569921 (= c!303990 ((_ is Empty!6874) (left!16664 (left!16664 t!4595))))))

(declare-fun e!1191219 () List!20761)

(assert (=> d!569921 (= (list!8456 (left!16664 (left!16664 t!4595))) e!1191219)))

(declare-fun b!1866337 () Bool)

(declare-fun e!1191220 () List!20761)

(assert (=> b!1866337 (= e!1191219 e!1191220)))

(declare-fun c!303991 () Bool)

(assert (=> b!1866337 (= c!303991 ((_ is Leaf!10079) (left!16664 (left!16664 t!4595))))))

(declare-fun b!1866336 () Bool)

(assert (=> b!1866336 (= e!1191219 Nil!20679)))

(declare-fun b!1866338 () Bool)

(assert (=> b!1866338 (= e!1191220 (list!8457 (xs!9756 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866339 () Bool)

(assert (=> b!1866339 (= e!1191220 (++!5601 (list!8456 (left!16664 (left!16664 (left!16664 t!4595)))) (list!8456 (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!569921 c!303990) b!1866336))

(assert (= (and d!569921 (not c!303990)) b!1866337))

(assert (= (and b!1866337 c!303991) b!1866338))

(assert (= (and b!1866337 (not c!303991)) b!1866339))

(assert (=> b!1866338 m!2291067))

(declare-fun m!2291197 () Bool)

(assert (=> b!1866339 m!2291197))

(declare-fun m!2291199 () Bool)

(assert (=> b!1866339 m!2291199))

(assert (=> b!1866339 m!2291197))

(assert (=> b!1866339 m!2291199))

(declare-fun m!2291201 () Bool)

(assert (=> b!1866339 m!2291201))

(assert (=> b!1866114 d!569921))

(declare-fun d!569923 () Bool)

(declare-fun c!303992 () Bool)

(assert (=> d!569923 (= c!303992 ((_ is Empty!6874) (right!16994 (left!16664 t!4595))))))

(declare-fun e!1191221 () List!20761)

(assert (=> d!569923 (= (list!8456 (right!16994 (left!16664 t!4595))) e!1191221)))

(declare-fun b!1866341 () Bool)

(declare-fun e!1191222 () List!20761)

(assert (=> b!1866341 (= e!1191221 e!1191222)))

(declare-fun c!303993 () Bool)

(assert (=> b!1866341 (= c!303993 ((_ is Leaf!10079) (right!16994 (left!16664 t!4595))))))

(declare-fun b!1866340 () Bool)

(assert (=> b!1866340 (= e!1191221 Nil!20679)))

(declare-fun b!1866342 () Bool)

(assert (=> b!1866342 (= e!1191222 (list!8457 (xs!9756 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866343 () Bool)

(assert (=> b!1866343 (= e!1191222 (++!5601 (list!8456 (left!16664 (right!16994 (left!16664 t!4595)))) (list!8456 (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!569923 c!303992) b!1866340))

(assert (= (and d!569923 (not c!303992)) b!1866341))

(assert (= (and b!1866341 c!303993) b!1866342))

(assert (= (and b!1866341 (not c!303993)) b!1866343))

(assert (=> b!1866342 m!2291097))

(declare-fun m!2291203 () Bool)

(assert (=> b!1866343 m!2291203))

(declare-fun m!2291205 () Bool)

(assert (=> b!1866343 m!2291205))

(assert (=> b!1866343 m!2291203))

(assert (=> b!1866343 m!2291205))

(declare-fun m!2291207 () Bool)

(assert (=> b!1866343 m!2291207))

(assert (=> b!1866114 d!569923))

(assert (=> d!569665 d!569911))

(assert (=> d!569665 d!569891))

(declare-fun d!569925 () Bool)

(assert (=> d!569925 (= (max!0 (height!1061 (left!16664 (left!16664 t!4595))) (height!1061 (right!16994 (left!16664 t!4595)))) (ite (< (height!1061 (left!16664 (left!16664 t!4595))) (height!1061 (right!16994 (left!16664 t!4595)))) (height!1061 (right!16994 (left!16664 t!4595))) (height!1061 (left!16664 (left!16664 t!4595)))))))

(assert (=> b!1866059 d!569925))

(assert (=> b!1866059 d!569841))

(assert (=> b!1866059 d!569843))

(declare-fun d!569927 () Bool)

(declare-fun lt!718587 () Int)

(assert (=> d!569927 (= lt!718587 (size!16386 (list!8456 (left!16664 (left!16664 t!4595)))))))

(assert (=> d!569927 (= lt!718587 (ite ((_ is Empty!6874) (left!16664 (left!16664 t!4595))) 0 (ite ((_ is Leaf!10079) (left!16664 (left!16664 t!4595))) (csize!13979 (left!16664 (left!16664 t!4595))) (csize!13978 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!569927 (= (size!16388 (left!16664 (left!16664 t!4595))) lt!718587)))

(declare-fun bs!411726 () Bool)

(assert (= bs!411726 d!569927))

(assert (=> bs!411726 m!2290823))

(assert (=> bs!411726 m!2290823))

(assert (=> bs!411726 m!2291187))

(assert (=> d!569673 d!569927))

(declare-fun d!569929 () Bool)

(declare-fun lt!718588 () Int)

(assert (=> d!569929 (= lt!718588 (size!16386 (list!8456 (right!16994 (left!16664 t!4595)))))))

(assert (=> d!569929 (= lt!718588 (ite ((_ is Empty!6874) (right!16994 (left!16664 t!4595))) 0 (ite ((_ is Leaf!10079) (right!16994 (left!16664 t!4595))) (csize!13979 (right!16994 (left!16664 t!4595))) (csize!13978 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!569929 (= (size!16388 (right!16994 (left!16664 t!4595))) lt!718588)))

(declare-fun bs!411727 () Bool)

(assert (= bs!411727 d!569929))

(assert (=> bs!411727 m!2290825))

(assert (=> bs!411727 m!2290825))

(assert (=> bs!411727 m!2291189))

(assert (=> d!569673 d!569929))

(declare-fun d!569931 () Bool)

(declare-fun c!303994 () Bool)

(assert (=> d!569931 (= c!303994 ((_ is Node!6874) (left!16664 (left!16664 (right!16994 t!4595)))))))

(declare-fun e!1191223 () Bool)

(assert (=> d!569931 (= (inv!27363 (left!16664 (left!16664 (right!16994 t!4595)))) e!1191223)))

(declare-fun b!1866344 () Bool)

(assert (=> b!1866344 (= e!1191223 (inv!27365 (left!16664 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866345 () Bool)

(declare-fun e!1191224 () Bool)

(assert (=> b!1866345 (= e!1191223 e!1191224)))

(declare-fun res!835732 () Bool)

(assert (=> b!1866345 (= res!835732 (not ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (=> b!1866345 (=> res!835732 e!1191224)))

(declare-fun b!1866346 () Bool)

(assert (=> b!1866346 (= e!1191224 (inv!27366 (left!16664 (left!16664 (right!16994 t!4595)))))))

(assert (= (and d!569931 c!303994) b!1866344))

(assert (= (and d!569931 (not c!303994)) b!1866345))

(assert (= (and b!1866345 (not res!835732)) b!1866346))

(declare-fun m!2291209 () Bool)

(assert (=> b!1866344 m!2291209))

(declare-fun m!2291211 () Bool)

(assert (=> b!1866346 m!2291211))

(assert (=> b!1866119 d!569931))

(declare-fun d!569933 () Bool)

(declare-fun c!303995 () Bool)

(assert (=> d!569933 (= c!303995 ((_ is Node!6874) (right!16994 (left!16664 (right!16994 t!4595)))))))

(declare-fun e!1191225 () Bool)

(assert (=> d!569933 (= (inv!27363 (right!16994 (left!16664 (right!16994 t!4595)))) e!1191225)))

(declare-fun b!1866347 () Bool)

(assert (=> b!1866347 (= e!1191225 (inv!27365 (right!16994 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866348 () Bool)

(declare-fun e!1191226 () Bool)

(assert (=> b!1866348 (= e!1191225 e!1191226)))

(declare-fun res!835733 () Bool)

(assert (=> b!1866348 (= res!835733 (not ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (=> b!1866348 (=> res!835733 e!1191226)))

(declare-fun b!1866349 () Bool)

(assert (=> b!1866349 (= e!1191226 (inv!27366 (right!16994 (left!16664 (right!16994 t!4595)))))))

(assert (= (and d!569933 c!303995) b!1866347))

(assert (= (and d!569933 (not c!303995)) b!1866348))

(assert (= (and b!1866348 (not res!835733)) b!1866349))

(declare-fun m!2291213 () Bool)

(assert (=> b!1866347 m!2291213))

(declare-fun m!2291215 () Bool)

(assert (=> b!1866349 m!2291215))

(assert (=> b!1866119 d!569933))

(declare-fun b!1866350 () Bool)

(declare-fun e!1191227 () Bool)

(declare-fun tp!531337 () Bool)

(assert (=> b!1866350 (= e!1191227 (and tp_is_empty!8667 tp!531337))))

(assert (=> b!1866125 (= tp!531313 e!1191227)))

(assert (= (and b!1866125 ((_ is Cons!20679) (t!172882 (t!172882 (innerList!6934 (xs!9756 t!4595)))))) b!1866350))

(declare-fun b!1866351 () Bool)

(declare-fun e!1191228 () Bool)

(declare-fun tp!531338 () Bool)

(assert (=> b!1866351 (= e!1191228 (and tp_is_empty!8667 tp!531338))))

(assert (=> b!1866129 (= tp!531316 e!1191228)))

(assert (= (and b!1866129 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595)))))) b!1866351))

(declare-fun tp!531341 () Bool)

(declare-fun b!1866352 () Bool)

(declare-fun e!1191229 () Bool)

(declare-fun tp!531339 () Bool)

(assert (=> b!1866352 (= e!1191229 (and (inv!27363 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) tp!531341 (inv!27363 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))) tp!531339))))

(declare-fun b!1866354 () Bool)

(declare-fun e!1191230 () Bool)

(declare-fun tp!531340 () Bool)

(assert (=> b!1866354 (= e!1191230 tp!531340)))

(declare-fun b!1866353 () Bool)

(assert (=> b!1866353 (= e!1191229 (and (inv!27364 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595))))) e!1191230))))

(assert (=> b!1866122 (= tp!531312 (and (inv!27363 (left!16664 (right!16994 (right!16994 t!4595)))) e!1191229))))

(assert (= (and b!1866122 ((_ is Node!6874) (left!16664 (right!16994 (right!16994 t!4595))))) b!1866352))

(assert (= b!1866353 b!1866354))

(assert (= (and b!1866122 ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 t!4595))))) b!1866353))

(declare-fun m!2291217 () Bool)

(assert (=> b!1866352 m!2291217))

(declare-fun m!2291219 () Bool)

(assert (=> b!1866352 m!2291219))

(declare-fun m!2291221 () Bool)

(assert (=> b!1866353 m!2291221))

(assert (=> b!1866122 m!2290843))

(declare-fun e!1191231 () Bool)

(declare-fun tp!531344 () Bool)

(declare-fun tp!531342 () Bool)

(declare-fun b!1866355 () Bool)

(assert (=> b!1866355 (= e!1191231 (and (inv!27363 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) tp!531344 (inv!27363 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))) tp!531342))))

(declare-fun b!1866357 () Bool)

(declare-fun e!1191232 () Bool)

(declare-fun tp!531343 () Bool)

(assert (=> b!1866357 (= e!1191232 tp!531343)))

(declare-fun b!1866356 () Bool)

(assert (=> b!1866356 (= e!1191231 (and (inv!27364 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595))))) e!1191232))))

(assert (=> b!1866122 (= tp!531310 (and (inv!27363 (right!16994 (right!16994 (right!16994 t!4595)))) e!1191231))))

(assert (= (and b!1866122 ((_ is Node!6874) (right!16994 (right!16994 (right!16994 t!4595))))) b!1866355))

(assert (= b!1866356 b!1866357))

(assert (= (and b!1866122 ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 t!4595))))) b!1866356))

(declare-fun m!2291223 () Bool)

(assert (=> b!1866355 m!2291223))

(declare-fun m!2291225 () Bool)

(assert (=> b!1866355 m!2291225))

(declare-fun m!2291227 () Bool)

(assert (=> b!1866356 m!2291227))

(assert (=> b!1866122 m!2290845))

(declare-fun tp!531345 () Bool)

(declare-fun b!1866358 () Bool)

(declare-fun tp!531347 () Bool)

(declare-fun e!1191233 () Bool)

(assert (=> b!1866358 (= e!1191233 (and (inv!27363 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) tp!531347 (inv!27363 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))) tp!531345))))

(declare-fun b!1866360 () Bool)

(declare-fun e!1191234 () Bool)

(declare-fun tp!531346 () Bool)

(assert (=> b!1866360 (= e!1191234 tp!531346)))

(declare-fun b!1866359 () Bool)

(assert (=> b!1866359 (= e!1191233 (and (inv!27364 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595))))) e!1191234))))

(assert (=> b!1866127 (= tp!531317 (and (inv!27363 (left!16664 (left!16664 (left!16664 t!4595)))) e!1191233))))

(assert (= (and b!1866127 ((_ is Node!6874) (left!16664 (left!16664 (left!16664 t!4595))))) b!1866358))

(assert (= b!1866359 b!1866360))

(assert (= (and b!1866127 ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 t!4595))))) b!1866359))

(declare-fun m!2291229 () Bool)

(assert (=> b!1866358 m!2291229))

(declare-fun m!2291231 () Bool)

(assert (=> b!1866358 m!2291231))

(declare-fun m!2291233 () Bool)

(assert (=> b!1866359 m!2291233))

(assert (=> b!1866127 m!2290849))

(declare-fun tp!531350 () Bool)

(declare-fun tp!531348 () Bool)

(declare-fun b!1866361 () Bool)

(declare-fun e!1191235 () Bool)

(assert (=> b!1866361 (= e!1191235 (and (inv!27363 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) tp!531350 (inv!27363 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))) tp!531348))))

(declare-fun b!1866363 () Bool)

(declare-fun e!1191236 () Bool)

(declare-fun tp!531349 () Bool)

(assert (=> b!1866363 (= e!1191236 tp!531349)))

(declare-fun b!1866362 () Bool)

(assert (=> b!1866362 (= e!1191235 (and (inv!27364 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595))))) e!1191236))))

(assert (=> b!1866127 (= tp!531315 (and (inv!27363 (right!16994 (left!16664 (left!16664 t!4595)))) e!1191235))))

(assert (= (and b!1866127 ((_ is Node!6874) (right!16994 (left!16664 (left!16664 t!4595))))) b!1866361))

(assert (= b!1866362 b!1866363))

(assert (= (and b!1866127 ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 t!4595))))) b!1866362))

(declare-fun m!2291235 () Bool)

(assert (=> b!1866361 m!2291235))

(declare-fun m!2291237 () Bool)

(assert (=> b!1866361 m!2291237))

(declare-fun m!2291239 () Bool)

(assert (=> b!1866362 m!2291239))

(assert (=> b!1866127 m!2290851))

(declare-fun b!1866364 () Bool)

(declare-fun e!1191237 () Bool)

(declare-fun tp!531351 () Bool)

(assert (=> b!1866364 (= e!1191237 (and tp_is_empty!8667 tp!531351))))

(assert (=> b!1866132 (= tp!531319 e!1191237)))

(assert (= (and b!1866132 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595)))))) b!1866364))

(declare-fun b!1866365 () Bool)

(declare-fun e!1191238 () Bool)

(declare-fun tp!531352 () Bool)

(assert (=> b!1866365 (= e!1191238 (and tp_is_empty!8667 tp!531352))))

(assert (=> b!1866121 (= tp!531308 e!1191238)))

(assert (= (and b!1866121 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595)))))) b!1866365))

(declare-fun b!1866366 () Bool)

(declare-fun e!1191239 () Bool)

(declare-fun tp!531353 () Bool)

(assert (=> b!1866366 (= e!1191239 (and tp_is_empty!8667 tp!531353))))

(assert (=> b!1866126 (= tp!531314 e!1191239)))

(assert (= (and b!1866126 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 (left!16664 t!4595)))))) b!1866366))

(declare-fun b!1866367 () Bool)

(declare-fun e!1191240 () Bool)

(declare-fun tp!531354 () Bool)

(assert (=> b!1866367 (= e!1191240 (and tp_is_empty!8667 tp!531354))))

(assert (=> b!1866133 (= tp!531321 e!1191240)))

(assert (= (and b!1866133 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 (right!16994 t!4595)))))) b!1866367))

(declare-fun b!1866368 () Bool)

(declare-fun e!1191241 () Bool)

(declare-fun tp!531357 () Bool)

(declare-fun tp!531355 () Bool)

(assert (=> b!1866368 (= e!1191241 (and (inv!27363 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) tp!531357 (inv!27363 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))) tp!531355))))

(declare-fun b!1866370 () Bool)

(declare-fun e!1191242 () Bool)

(declare-fun tp!531356 () Bool)

(assert (=> b!1866370 (= e!1191242 tp!531356)))

(declare-fun b!1866369 () Bool)

(assert (=> b!1866369 (= e!1191241 (and (inv!27364 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595))))) e!1191242))))

(assert (=> b!1866130 (= tp!531320 (and (inv!27363 (left!16664 (right!16994 (left!16664 t!4595)))) e!1191241))))

(assert (= (and b!1866130 ((_ is Node!6874) (left!16664 (right!16994 (left!16664 t!4595))))) b!1866368))

(assert (= b!1866369 b!1866370))

(assert (= (and b!1866130 ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 t!4595))))) b!1866369))

(declare-fun m!2291241 () Bool)

(assert (=> b!1866368 m!2291241))

(declare-fun m!2291243 () Bool)

(assert (=> b!1866368 m!2291243))

(declare-fun m!2291245 () Bool)

(assert (=> b!1866369 m!2291245))

(assert (=> b!1866130 m!2290855))

(declare-fun tp!531360 () Bool)

(declare-fun e!1191243 () Bool)

(declare-fun tp!531358 () Bool)

(declare-fun b!1866371 () Bool)

(assert (=> b!1866371 (= e!1191243 (and (inv!27363 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) tp!531360 (inv!27363 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))) tp!531358))))

(declare-fun b!1866373 () Bool)

(declare-fun e!1191244 () Bool)

(declare-fun tp!531359 () Bool)

(assert (=> b!1866373 (= e!1191244 tp!531359)))

(declare-fun b!1866372 () Bool)

(assert (=> b!1866372 (= e!1191243 (and (inv!27364 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595))))) e!1191244))))

(assert (=> b!1866130 (= tp!531318 (and (inv!27363 (right!16994 (right!16994 (left!16664 t!4595)))) e!1191243))))

(assert (= (and b!1866130 ((_ is Node!6874) (right!16994 (right!16994 (left!16664 t!4595))))) b!1866371))

(assert (= b!1866372 b!1866373))

(assert (= (and b!1866130 ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 t!4595))))) b!1866372))

(declare-fun m!2291247 () Bool)

(assert (=> b!1866371 m!2291247))

(declare-fun m!2291249 () Bool)

(assert (=> b!1866371 m!2291249))

(declare-fun m!2291251 () Bool)

(assert (=> b!1866372 m!2291251))

(assert (=> b!1866130 m!2290857))

(declare-fun e!1191245 () Bool)

(declare-fun tp!531361 () Bool)

(declare-fun tp!531363 () Bool)

(declare-fun b!1866374 () Bool)

(assert (=> b!1866374 (= e!1191245 (and (inv!27363 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) tp!531363 (inv!27363 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))) tp!531361))))

(declare-fun b!1866376 () Bool)

(declare-fun e!1191246 () Bool)

(declare-fun tp!531362 () Bool)

(assert (=> b!1866376 (= e!1191246 tp!531362)))

(declare-fun b!1866375 () Bool)

(assert (=> b!1866375 (= e!1191245 (and (inv!27364 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595))))) e!1191246))))

(assert (=> b!1866119 (= tp!531309 (and (inv!27363 (left!16664 (left!16664 (right!16994 t!4595)))) e!1191245))))

(assert (= (and b!1866119 ((_ is Node!6874) (left!16664 (left!16664 (right!16994 t!4595))))) b!1866374))

(assert (= b!1866375 b!1866376))

(assert (= (and b!1866119 ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 t!4595))))) b!1866375))

(declare-fun m!2291253 () Bool)

(assert (=> b!1866374 m!2291253))

(declare-fun m!2291255 () Bool)

(assert (=> b!1866374 m!2291255))

(declare-fun m!2291257 () Bool)

(assert (=> b!1866375 m!2291257))

(assert (=> b!1866119 m!2290837))

(declare-fun tp!531366 () Bool)

(declare-fun e!1191247 () Bool)

(declare-fun tp!531364 () Bool)

(declare-fun b!1866377 () Bool)

(assert (=> b!1866377 (= e!1191247 (and (inv!27363 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) tp!531366 (inv!27363 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))) tp!531364))))

(declare-fun b!1866379 () Bool)

(declare-fun e!1191248 () Bool)

(declare-fun tp!531365 () Bool)

(assert (=> b!1866379 (= e!1191248 tp!531365)))

(declare-fun b!1866378 () Bool)

(assert (=> b!1866378 (= e!1191247 (and (inv!27364 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595))))) e!1191248))))

(assert (=> b!1866119 (= tp!531307 (and (inv!27363 (right!16994 (left!16664 (right!16994 t!4595)))) e!1191247))))

(assert (= (and b!1866119 ((_ is Node!6874) (right!16994 (left!16664 (right!16994 t!4595))))) b!1866377))

(assert (= b!1866378 b!1866379))

(assert (= (and b!1866119 ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 t!4595))))) b!1866378))

(declare-fun m!2291259 () Bool)

(assert (=> b!1866377 m!2291259))

(declare-fun m!2291261 () Bool)

(assert (=> b!1866377 m!2291261))

(declare-fun m!2291263 () Bool)

(assert (=> b!1866378 m!2291263))

(assert (=> b!1866119 m!2290839))

(declare-fun b!1866380 () Bool)

(declare-fun e!1191249 () Bool)

(declare-fun tp!531367 () Bool)

(assert (=> b!1866380 (= e!1191249 (and tp_is_empty!8667 tp!531367))))

(assert (=> b!1866124 (= tp!531311 e!1191249)))

(assert (= (and b!1866124 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595)))))) b!1866380))

(check-sat (not b!1866268) (not b!1866318) (not b!1866333) (not b!1866291) (not b!1866284) (not d!569877) (not b!1866322) (not b!1866380) (not b!1866307) (not d!569811) (not b!1866372) (not b!1866286) (not d!569853) (not b!1866339) (not d!569817) (not d!569903) (not b!1866289) (not b!1866285) (not b!1866300) (not d!569847) (not b!1866354) (not d!569885) (not b!1866227) (not b!1866256) (not b!1866366) (not d!569833) (not b!1866277) (not b!1866309) (not b!1866229) (not d!569831) (not b!1866375) (not b!1866331) (not b!1866265) (not b!1866254) (not b!1866264) (not b!1866371) (not b!1866314) (not b!1866310) tp_is_empty!8667 (not b!1866287) (not b!1866358) (not b!1866240) (not b!1866119) (not d!569905) (not b!1866226) (not b!1866224) (not b!1866130) (not b!1866363) (not b!1866257) (not b!1866360) (not b!1866305) (not b!1866326) (not b!1866255) (not b!1866242) (not b!1866302) (not b!1866122) (not b!1866279) (not b!1866338) (not b!1866249) (not b!1866281) (not b!1866377) (not b!1866235) (not b!1866362) (not b!1866349) (not b!1866355) (not b!1866304) (not d!569881) (not d!569927) (not d!569815) (not d!569919) (not b!1866298) (not b!1866330) (not b!1866319) (not d!569895) (not b!1866334) (not b!1866295) (not b!1866367) (not b!1866228) (not b!1866233) (not b!1866361) (not b!1866342) (not b!1866356) (not b!1866323) (not b!1866364) (not b!1866296) (not b!1866327) (not b!1866245) (not b!1866252) (not d!569897) (not b!1866344) (not d!569809) (not d!569865) (not b!1866328) (not b!1866258) (not b!1866127) (not b!1866376) (not b!1866357) (not b!1866259) (not b!1866368) (not d!569813) (not b!1866352) (not b!1866365) (not b!1866378) (not b!1866379) (not b!1866251) (not d!569857) (not b!1866346) (not b!1866261) (not b!1866350) (not b!1866369) (not b!1866351) (not b!1866353) (not b!1866271) (not b!1866325) (not b!1866239) (not d!569913) (not b!1866288) (not b!1866374) (not d!569837) (not b!1866313) (not b!1866343) (not b!1866247) (not b!1866359) (not b!1866370) (not d!569879) (not b!1866373) (not b!1866225) (not b!1866237) (not b!1866282) (not d!569861) (not d!569929) (not b!1866230) (not b!1866347) (not b!1866243) (not b!1866329) (not b!1866293))
(check-sat)
(get-model)

(declare-fun d!570065 () Bool)

(assert (=> d!570065 (= (list!8457 (xs!9756 (right!16994 (left!16664 t!4595)))) (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595)))))))

(assert (=> b!1866342 d!570065))

(declare-fun b!1866538 () Bool)

(declare-fun e!1191335 () Bool)

(assert (=> b!1866538 (= e!1191335 (not (isEmpty!12899 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(declare-fun b!1866539 () Bool)

(declare-fun res!835797 () Bool)

(assert (=> b!1866539 (=> (not res!835797) (not e!1191335))))

(assert (=> b!1866539 (= res!835797 (isBalanced!2175 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866540 () Bool)

(declare-fun res!835793 () Bool)

(assert (=> b!1866540 (=> (not res!835793) (not e!1191335))))

(assert (=> b!1866540 (= res!835793 (isBalanced!2175 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866541 () Bool)

(declare-fun res!835794 () Bool)

(assert (=> b!1866541 (=> (not res!835794) (not e!1191335))))

(assert (=> b!1866541 (= res!835794 (<= (- (height!1061 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) 1))))

(declare-fun b!1866542 () Bool)

(declare-fun res!835796 () Bool)

(assert (=> b!1866542 (=> (not res!835796) (not e!1191335))))

(assert (=> b!1866542 (= res!835796 (not (isEmpty!12899 (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(declare-fun b!1866543 () Bool)

(declare-fun e!1191334 () Bool)

(assert (=> b!1866543 (= e!1191334 e!1191335)))

(declare-fun res!835795 () Bool)

(assert (=> b!1866543 (=> (not res!835795) (not e!1191335))))

(assert (=> b!1866543 (= res!835795 (<= (- 1) (- (height!1061 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))))))))

(declare-fun d!570067 () Bool)

(declare-fun res!835792 () Bool)

(assert (=> d!570067 (=> res!835792 e!1191334)))

(assert (=> d!570067 (= res!835792 (not ((_ is Node!6874) (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570067 (= (isBalanced!2175 (right!16994 (left!16664 (left!16664 t!4595)))) e!1191334)))

(assert (= (and d!570067 (not res!835792)) b!1866543))

(assert (= (and b!1866543 res!835795) b!1866541))

(assert (= (and b!1866541 res!835794) b!1866540))

(assert (= (and b!1866540 res!835793) b!1866539))

(assert (= (and b!1866539 res!835797) b!1866542))

(assert (= (and b!1866542 res!835796) b!1866538))

(declare-fun m!2291539 () Bool)

(assert (=> b!1866542 m!2291539))

(declare-fun m!2291541 () Bool)

(assert (=> b!1866539 m!2291541))

(declare-fun m!2291543 () Bool)

(assert (=> b!1866538 m!2291543))

(declare-fun m!2291545 () Bool)

(assert (=> b!1866543 m!2291545))

(declare-fun m!2291547 () Bool)

(assert (=> b!1866543 m!2291547))

(assert (=> b!1866541 m!2291545))

(assert (=> b!1866541 m!2291547))

(declare-fun m!2291549 () Bool)

(assert (=> b!1866540 m!2291549))

(assert (=> b!1866327 d!570067))

(declare-fun d!570069 () Bool)

(declare-fun lt!718612 () Int)

(assert (=> d!570069 (>= lt!718612 0)))

(declare-fun e!1191336 () Int)

(assert (=> d!570069 (= lt!718612 e!1191336)))

(declare-fun c!304030 () Bool)

(assert (=> d!570069 (= c!304030 ((_ is Nil!20679) (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570069 (= (size!16386 (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595))))) lt!718612)))

(declare-fun b!1866544 () Bool)

(assert (=> b!1866544 (= e!1191336 0)))

(declare-fun b!1866545 () Bool)

(assert (=> b!1866545 (= e!1191336 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595))))))))))

(assert (= (and d!570069 c!304030) b!1866544))

(assert (= (and d!570069 (not c!304030)) b!1866545))

(declare-fun m!2291551 () Bool)

(assert (=> b!1866545 m!2291551))

(assert (=> d!569897 d!570069))

(declare-fun d!570071 () Bool)

(assert (=> d!570071 (= (inv!27364 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595)))))) 2147483647))))

(declare-fun bs!411742 () Bool)

(assert (= bs!411742 d!570071))

(declare-fun m!2291553 () Bool)

(assert (=> bs!411742 m!2291553))

(assert (=> b!1866359 d!570071))

(declare-fun b!1866546 () Bool)

(declare-fun e!1191338 () Bool)

(assert (=> b!1866546 (= e!1191338 (not (isEmpty!12899 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(declare-fun b!1866547 () Bool)

(declare-fun res!835803 () Bool)

(assert (=> b!1866547 (=> (not res!835803) (not e!1191338))))

(assert (=> b!1866547 (= res!835803 (isBalanced!2175 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866548 () Bool)

(declare-fun res!835799 () Bool)

(assert (=> b!1866548 (=> (not res!835799) (not e!1191338))))

(assert (=> b!1866548 (= res!835799 (isBalanced!2175 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866549 () Bool)

(declare-fun res!835800 () Bool)

(assert (=> b!1866549 (=> (not res!835800) (not e!1191338))))

(assert (=> b!1866549 (= res!835800 (<= (- (height!1061 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) 1))))

(declare-fun b!1866550 () Bool)

(declare-fun res!835802 () Bool)

(assert (=> b!1866550 (=> (not res!835802) (not e!1191338))))

(assert (=> b!1866550 (= res!835802 (not (isEmpty!12899 (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(declare-fun b!1866551 () Bool)

(declare-fun e!1191337 () Bool)

(assert (=> b!1866551 (= e!1191337 e!1191338)))

(declare-fun res!835801 () Bool)

(assert (=> b!1866551 (=> (not res!835801) (not e!1191338))))

(assert (=> b!1866551 (= res!835801 (<= (- 1) (- (height!1061 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))))))))

(declare-fun d!570073 () Bool)

(declare-fun res!835798 () Bool)

(assert (=> d!570073 (=> res!835798 e!1191337)))

(assert (=> d!570073 (= res!835798 (not ((_ is Node!6874) (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570073 (= (isBalanced!2175 (left!16664 (left!16664 (right!16994 t!4595)))) e!1191337)))

(assert (= (and d!570073 (not res!835798)) b!1866551))

(assert (= (and b!1866551 res!835801) b!1866549))

(assert (= (and b!1866549 res!835800) b!1866548))

(assert (= (and b!1866548 res!835799) b!1866547))

(assert (= (and b!1866547 res!835803) b!1866550))

(assert (= (and b!1866550 res!835802) b!1866546))

(declare-fun m!2291555 () Bool)

(assert (=> b!1866550 m!2291555))

(declare-fun m!2291557 () Bool)

(assert (=> b!1866547 m!2291557))

(declare-fun m!2291559 () Bool)

(assert (=> b!1866546 m!2291559))

(declare-fun m!2291561 () Bool)

(assert (=> b!1866551 m!2291561))

(declare-fun m!2291563 () Bool)

(assert (=> b!1866551 m!2291563))

(assert (=> b!1866549 m!2291561))

(assert (=> b!1866549 m!2291563))

(declare-fun m!2291565 () Bool)

(assert (=> b!1866548 m!2291565))

(assert (=> b!1866226 d!570073))

(declare-fun d!570075 () Bool)

(declare-fun lt!718613 () Int)

(assert (=> d!570075 (>= lt!718613 0)))

(declare-fun e!1191339 () Int)

(assert (=> d!570075 (= lt!718613 e!1191339)))

(declare-fun c!304031 () Bool)

(assert (=> d!570075 (= c!304031 ((_ is Nil!20679) (list!8456 (right!16994 (right!16994 t!4595)))))))

(assert (=> d!570075 (= (size!16386 (list!8456 (right!16994 (right!16994 t!4595)))) lt!718613)))

(declare-fun b!1866552 () Bool)

(assert (=> b!1866552 (= e!1191339 0)))

(declare-fun b!1866553 () Bool)

(assert (=> b!1866553 (= e!1191339 (+ 1 (size!16386 (t!172882 (list!8456 (right!16994 (right!16994 t!4595)))))))))

(assert (= (and d!570075 c!304031) b!1866552))

(assert (= (and d!570075 (not c!304031)) b!1866553))

(declare-fun m!2291567 () Bool)

(assert (=> b!1866553 m!2291567))

(assert (=> d!569879 d!570075))

(assert (=> d!569879 d!569909))

(declare-fun d!570077 () Bool)

(declare-fun lt!718614 () Int)

(assert (=> d!570077 (>= lt!718614 0)))

(declare-fun e!1191340 () Int)

(assert (=> d!570077 (= lt!718614 e!1191340)))

(declare-fun c!304032 () Bool)

(assert (=> d!570077 (= c!304032 ((_ is Nil!20679) (t!172882 (list!8457 (xs!9756 t!4595)))))))

(assert (=> d!570077 (= (size!16386 (t!172882 (list!8457 (xs!9756 t!4595)))) lt!718614)))

(declare-fun b!1866554 () Bool)

(assert (=> b!1866554 (= e!1191340 0)))

(declare-fun b!1866555 () Bool)

(assert (=> b!1866555 (= e!1191340 (+ 1 (size!16386 (t!172882 (t!172882 (list!8457 (xs!9756 t!4595)))))))))

(assert (= (and d!570077 c!304032) b!1866554))

(assert (= (and d!570077 (not c!304032)) b!1866555))

(declare-fun m!2291569 () Bool)

(assert (=> b!1866555 m!2291569))

(assert (=> b!1866264 d!570077))

(declare-fun d!570079 () Bool)

(assert (=> d!570079 (= (height!1061 (left!16664 (right!16994 (right!16994 t!4595)))) (ite ((_ is Empty!6874) (left!16664 (right!16994 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 t!4595)))) 1 (cheight!7085 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(assert (=> b!1866287 d!570079))

(declare-fun d!570081 () Bool)

(assert (=> d!570081 (= (height!1061 (right!16994 (right!16994 (right!16994 t!4595)))) (ite ((_ is Empty!6874) (right!16994 (right!16994 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 t!4595)))) 1 (cheight!7085 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(assert (=> b!1866287 d!570081))

(declare-fun d!570083 () Bool)

(assert (=> d!570083 (= (height!1061 (left!16664 (left!16664 (left!16664 t!4595)))) (ite ((_ is Empty!6874) (left!16664 (left!16664 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 t!4595)))) 1 (cheight!7085 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(assert (=> b!1866331 d!570083))

(declare-fun d!570085 () Bool)

(assert (=> d!570085 (= (height!1061 (right!16994 (left!16664 (left!16664 t!4595)))) (ite ((_ is Empty!6874) (right!16994 (left!16664 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 t!4595)))) 1 (cheight!7085 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(assert (=> b!1866331 d!570085))

(declare-fun d!570087 () Bool)

(declare-fun res!835804 () Bool)

(declare-fun e!1191341 () Bool)

(assert (=> d!570087 (=> (not res!835804) (not e!1191341))))

(assert (=> d!570087 (= res!835804 (<= (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595)))))) 512))))

(assert (=> d!570087 (= (inv!27366 (right!16994 (right!16994 (right!16994 t!4595)))) e!1191341)))

(declare-fun b!1866556 () Bool)

(declare-fun res!835805 () Bool)

(assert (=> b!1866556 (=> (not res!835805) (not e!1191341))))

(assert (=> b!1866556 (= res!835805 (= (csize!13979 (right!16994 (right!16994 (right!16994 t!4595)))) (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595))))))))))

(declare-fun b!1866557 () Bool)

(assert (=> b!1866557 (= e!1191341 (and (> (csize!13979 (right!16994 (right!16994 (right!16994 t!4595)))) 0) (<= (csize!13979 (right!16994 (right!16994 (right!16994 t!4595)))) 512)))))

(assert (= (and d!570087 res!835804) b!1866556))

(assert (= (and b!1866556 res!835805) b!1866557))

(declare-fun m!2291571 () Bool)

(assert (=> d!570087 m!2291571))

(assert (=> d!570087 m!2291571))

(declare-fun m!2291573 () Bool)

(assert (=> d!570087 m!2291573))

(assert (=> b!1866556 m!2291571))

(assert (=> b!1866556 m!2291571))

(assert (=> b!1866556 m!2291573))

(assert (=> b!1866307 d!570087))

(declare-fun d!570089 () Bool)

(declare-fun lt!718615 () Int)

(assert (=> d!570089 (= lt!718615 (size!16386 (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570089 (= lt!718615 (ite ((_ is Empty!6874) (left!16664 (left!16664 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 t!4595)))) (csize!13979 (left!16664 (left!16664 (right!16994 t!4595)))) (csize!13978 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(assert (=> d!570089 (= (size!16388 (left!16664 (left!16664 (right!16994 t!4595)))) lt!718615)))

(declare-fun bs!411743 () Bool)

(assert (= bs!411743 d!570089))

(assert (=> bs!411743 m!2291159))

(assert (=> bs!411743 m!2291159))

(declare-fun m!2291575 () Bool)

(assert (=> bs!411743 m!2291575))

(assert (=> d!569861 d!570089))

(declare-fun d!570091 () Bool)

(declare-fun lt!718616 () Int)

(assert (=> d!570091 (= lt!718616 (size!16386 (list!8456 (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570091 (= lt!718616 (ite ((_ is Empty!6874) (right!16994 (left!16664 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 t!4595)))) (csize!13979 (right!16994 (left!16664 (right!16994 t!4595)))) (csize!13978 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(assert (=> d!570091 (= (size!16388 (right!16994 (left!16664 (right!16994 t!4595)))) lt!718616)))

(declare-fun bs!411744 () Bool)

(assert (= bs!411744 d!570091))

(assert (=> bs!411744 m!2291161))

(assert (=> bs!411744 m!2291161))

(declare-fun m!2291577 () Bool)

(assert (=> bs!411744 m!2291577))

(assert (=> d!569861 d!570091))

(declare-fun d!570093 () Bool)

(declare-fun c!304033 () Bool)

(assert (=> d!570093 (= c!304033 ((_ is Node!6874) (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun e!1191342 () Bool)

(assert (=> d!570093 (= (inv!27363 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) e!1191342)))

(declare-fun b!1866558 () Bool)

(assert (=> b!1866558 (= e!1191342 (inv!27365 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866559 () Bool)

(declare-fun e!1191343 () Bool)

(assert (=> b!1866559 (= e!1191342 e!1191343)))

(declare-fun res!835806 () Bool)

(assert (=> b!1866559 (= res!835806 (not ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(assert (=> b!1866559 (=> res!835806 e!1191343)))

(declare-fun b!1866560 () Bool)

(assert (=> b!1866560 (= e!1191343 (inv!27366 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!570093 c!304033) b!1866558))

(assert (= (and d!570093 (not c!304033)) b!1866559))

(assert (= (and b!1866559 (not res!835806)) b!1866560))

(declare-fun m!2291579 () Bool)

(assert (=> b!1866558 m!2291579))

(declare-fun m!2291581 () Bool)

(assert (=> b!1866560 m!2291581))

(assert (=> b!1866374 d!570093))

(declare-fun d!570095 () Bool)

(declare-fun c!304034 () Bool)

(assert (=> d!570095 (= c!304034 ((_ is Node!6874) (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun e!1191344 () Bool)

(assert (=> d!570095 (= (inv!27363 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))) e!1191344)))

(declare-fun b!1866561 () Bool)

(assert (=> b!1866561 (= e!1191344 (inv!27365 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866562 () Bool)

(declare-fun e!1191345 () Bool)

(assert (=> b!1866562 (= e!1191344 e!1191345)))

(declare-fun res!835807 () Bool)

(assert (=> b!1866562 (= res!835807 (not ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(assert (=> b!1866562 (=> res!835807 e!1191345)))

(declare-fun b!1866563 () Bool)

(assert (=> b!1866563 (= e!1191345 (inv!27366 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!570095 c!304034) b!1866561))

(assert (= (and d!570095 (not c!304034)) b!1866562))

(assert (= (and b!1866562 (not res!835807)) b!1866563))

(declare-fun m!2291583 () Bool)

(assert (=> b!1866561 m!2291583))

(declare-fun m!2291585 () Bool)

(assert (=> b!1866563 m!2291585))

(assert (=> b!1866374 d!570095))

(declare-fun d!570097 () Bool)

(declare-fun c!304035 () Bool)

(assert (=> d!570097 (= c!304035 ((_ is Node!6874) (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun e!1191346 () Bool)

(assert (=> d!570097 (= (inv!27363 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) e!1191346)))

(declare-fun b!1866564 () Bool)

(assert (=> b!1866564 (= e!1191346 (inv!27365 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866565 () Bool)

(declare-fun e!1191347 () Bool)

(assert (=> b!1866565 (= e!1191346 e!1191347)))

(declare-fun res!835808 () Bool)

(assert (=> b!1866565 (= res!835808 (not ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(assert (=> b!1866565 (=> res!835808 e!1191347)))

(declare-fun b!1866566 () Bool)

(assert (=> b!1866566 (= e!1191347 (inv!27366 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!570097 c!304035) b!1866564))

(assert (= (and d!570097 (not c!304035)) b!1866565))

(assert (= (and b!1866565 (not res!835808)) b!1866566))

(declare-fun m!2291587 () Bool)

(assert (=> b!1866564 m!2291587))

(declare-fun m!2291589 () Bool)

(assert (=> b!1866566 m!2291589))

(assert (=> b!1866361 d!570097))

(declare-fun d!570099 () Bool)

(declare-fun c!304036 () Bool)

(assert (=> d!570099 (= c!304036 ((_ is Node!6874) (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun e!1191348 () Bool)

(assert (=> d!570099 (= (inv!27363 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))) e!1191348)))

(declare-fun b!1866567 () Bool)

(assert (=> b!1866567 (= e!1191348 (inv!27365 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866568 () Bool)

(declare-fun e!1191349 () Bool)

(assert (=> b!1866568 (= e!1191348 e!1191349)))

(declare-fun res!835809 () Bool)

(assert (=> b!1866568 (= res!835809 (not ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(assert (=> b!1866568 (=> res!835809 e!1191349)))

(declare-fun b!1866569 () Bool)

(assert (=> b!1866569 (= e!1191349 (inv!27366 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!570099 c!304036) b!1866567))

(assert (= (and d!570099 (not c!304036)) b!1866568))

(assert (= (and b!1866568 (not res!835809)) b!1866569))

(declare-fun m!2291591 () Bool)

(assert (=> b!1866567 m!2291591))

(declare-fun m!2291593 () Bool)

(assert (=> b!1866569 m!2291593))

(assert (=> b!1866361 d!570099))

(declare-fun d!570101 () Bool)

(declare-fun lt!718617 () Int)

(assert (=> d!570101 (>= lt!718617 0)))

(declare-fun e!1191350 () Int)

(assert (=> d!570101 (= lt!718617 e!1191350)))

(declare-fun c!304037 () Bool)

(assert (=> d!570101 (= c!304037 ((_ is Nil!20679) (t!172882 (list!8457 (xs!9756 (right!16994 t!4595))))))))

(assert (=> d!570101 (= (size!16386 (t!172882 (list!8457 (xs!9756 (right!16994 t!4595))))) lt!718617)))

(declare-fun b!1866570 () Bool)

(assert (=> b!1866570 (= e!1191350 0)))

(declare-fun b!1866571 () Bool)

(assert (=> b!1866571 (= e!1191350 (+ 1 (size!16386 (t!172882 (t!172882 (list!8457 (xs!9756 (right!16994 t!4595))))))))))

(assert (= (and d!570101 c!304037) b!1866570))

(assert (= (and d!570101 (not c!304037)) b!1866571))

(declare-fun m!2291595 () Bool)

(assert (=> b!1866571 m!2291595))

(assert (=> b!1866233 d!570101))

(declare-fun b!1866572 () Bool)

(declare-fun e!1191352 () Bool)

(assert (=> b!1866572 (= e!1191352 (not (isEmpty!12899 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866573 () Bool)

(declare-fun res!835815 () Bool)

(assert (=> b!1866573 (=> (not res!835815) (not e!1191352))))

(assert (=> b!1866573 (= res!835815 (isBalanced!2175 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866574 () Bool)

(declare-fun res!835811 () Bool)

(assert (=> b!1866574 (=> (not res!835811) (not e!1191352))))

(assert (=> b!1866574 (= res!835811 (isBalanced!2175 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866575 () Bool)

(declare-fun res!835812 () Bool)

(assert (=> b!1866575 (=> (not res!835812) (not e!1191352))))

(assert (=> b!1866575 (= res!835812 (<= (- (height!1061 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) 1))))

(declare-fun b!1866576 () Bool)

(declare-fun res!835814 () Bool)

(assert (=> b!1866576 (=> (not res!835814) (not e!1191352))))

(assert (=> b!1866576 (= res!835814 (not (isEmpty!12899 (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866577 () Bool)

(declare-fun e!1191351 () Bool)

(assert (=> b!1866577 (= e!1191351 e!1191352)))

(declare-fun res!835813 () Bool)

(assert (=> b!1866577 (=> (not res!835813) (not e!1191352))))

(assert (=> b!1866577 (= res!835813 (<= (- 1) (- (height!1061 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))))))))

(declare-fun d!570103 () Bool)

(declare-fun res!835810 () Bool)

(assert (=> d!570103 (=> res!835810 e!1191351)))

(assert (=> d!570103 (= res!835810 (not ((_ is Node!6874) (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570103 (= (isBalanced!2175 (left!16664 (right!16994 (left!16664 t!4595)))) e!1191351)))

(assert (= (and d!570103 (not res!835810)) b!1866577))

(assert (= (and b!1866577 res!835813) b!1866575))

(assert (= (and b!1866575 res!835812) b!1866574))

(assert (= (and b!1866574 res!835811) b!1866573))

(assert (= (and b!1866573 res!835815) b!1866576))

(assert (= (and b!1866576 res!835814) b!1866572))

(declare-fun m!2291597 () Bool)

(assert (=> b!1866576 m!2291597))

(declare-fun m!2291599 () Bool)

(assert (=> b!1866573 m!2291599))

(declare-fun m!2291601 () Bool)

(assert (=> b!1866572 m!2291601))

(declare-fun m!2291603 () Bool)

(assert (=> b!1866577 m!2291603))

(declare-fun m!2291605 () Bool)

(assert (=> b!1866577 m!2291605))

(assert (=> b!1866575 m!2291603))

(assert (=> b!1866575 m!2291605))

(declare-fun m!2291607 () Bool)

(assert (=> b!1866574 m!2291607))

(assert (=> b!1866256 d!570103))

(declare-fun d!570105 () Bool)

(declare-fun res!835816 () Bool)

(declare-fun e!1191353 () Bool)

(assert (=> d!570105 (=> (not res!835816) (not e!1191353))))

(assert (=> d!570105 (= res!835816 (<= (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595)))))) 512))))

(assert (=> d!570105 (= (inv!27366 (right!16994 (right!16994 (left!16664 t!4595)))) e!1191353)))

(declare-fun b!1866578 () Bool)

(declare-fun res!835817 () Bool)

(assert (=> b!1866578 (=> (not res!835817) (not e!1191353))))

(assert (=> b!1866578 (= res!835817 (= (csize!13979 (right!16994 (right!16994 (left!16664 t!4595)))) (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595))))))))))

(declare-fun b!1866579 () Bool)

(assert (=> b!1866579 (= e!1191353 (and (> (csize!13979 (right!16994 (right!16994 (left!16664 t!4595)))) 0) (<= (csize!13979 (right!16994 (right!16994 (left!16664 t!4595)))) 512)))))

(assert (= (and d!570105 res!835816) b!1866578))

(assert (= (and b!1866578 res!835817) b!1866579))

(declare-fun m!2291609 () Bool)

(assert (=> d!570105 m!2291609))

(assert (=> d!570105 m!2291609))

(declare-fun m!2291611 () Bool)

(assert (=> d!570105 m!2291611))

(assert (=> b!1866578 m!2291609))

(assert (=> b!1866578 m!2291609))

(assert (=> b!1866578 m!2291611))

(assert (=> b!1866298 d!570105))

(declare-fun d!570107 () Bool)

(declare-fun res!835818 () Bool)

(declare-fun e!1191354 () Bool)

(assert (=> d!570107 (=> (not res!835818) (not e!1191354))))

(assert (=> d!570107 (= res!835818 (<= (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595)))))) 512))))

(assert (=> d!570107 (= (inv!27366 (left!16664 (right!16994 (left!16664 t!4595)))) e!1191354)))

(declare-fun b!1866580 () Bool)

(declare-fun res!835819 () Bool)

(assert (=> b!1866580 (=> (not res!835819) (not e!1191354))))

(assert (=> b!1866580 (= res!835819 (= (csize!13979 (left!16664 (right!16994 (left!16664 t!4595)))) (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595))))))))))

(declare-fun b!1866581 () Bool)

(assert (=> b!1866581 (= e!1191354 (and (> (csize!13979 (left!16664 (right!16994 (left!16664 t!4595)))) 0) (<= (csize!13979 (left!16664 (right!16994 (left!16664 t!4595)))) 512)))))

(assert (= (and d!570107 res!835818) b!1866580))

(assert (= (and b!1866580 res!835819) b!1866581))

(declare-fun m!2291613 () Bool)

(assert (=> d!570107 m!2291613))

(assert (=> d!570107 m!2291613))

(declare-fun m!2291615 () Bool)

(assert (=> d!570107 m!2291615))

(assert (=> b!1866580 m!2291613))

(assert (=> b!1866580 m!2291613))

(assert (=> b!1866580 m!2291615))

(assert (=> b!1866295 d!570107))

(declare-fun d!570109 () Bool)

(assert (=> d!570109 (= (isEmpty!12900 (list!8456 (right!16994 (right!16994 t!4595)))) ((_ is Nil!20679) (list!8456 (right!16994 (right!16994 t!4595)))))))

(assert (=> d!569809 d!570109))

(assert (=> d!569809 d!569909))

(assert (=> d!569809 d!569879))

(declare-fun d!570111 () Bool)

(declare-fun c!304038 () Bool)

(assert (=> d!570111 (= c!304038 ((_ is Node!6874) (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun e!1191355 () Bool)

(assert (=> d!570111 (= (inv!27363 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) e!1191355)))

(declare-fun b!1866582 () Bool)

(assert (=> b!1866582 (= e!1191355 (inv!27365 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866583 () Bool)

(declare-fun e!1191356 () Bool)

(assert (=> b!1866583 (= e!1191355 e!1191356)))

(declare-fun res!835820 () Bool)

(assert (=> b!1866583 (= res!835820 (not ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(assert (=> b!1866583 (=> res!835820 e!1191356)))

(declare-fun b!1866584 () Bool)

(assert (=> b!1866584 (= e!1191356 (inv!27366 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!570111 c!304038) b!1866582))

(assert (= (and d!570111 (not c!304038)) b!1866583))

(assert (= (and b!1866583 (not res!835820)) b!1866584))

(declare-fun m!2291617 () Bool)

(assert (=> b!1866582 m!2291617))

(declare-fun m!2291619 () Bool)

(assert (=> b!1866584 m!2291619))

(assert (=> b!1866352 d!570111))

(declare-fun d!570113 () Bool)

(declare-fun c!304039 () Bool)

(assert (=> d!570113 (= c!304039 ((_ is Node!6874) (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun e!1191357 () Bool)

(assert (=> d!570113 (= (inv!27363 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))) e!1191357)))

(declare-fun b!1866585 () Bool)

(assert (=> b!1866585 (= e!1191357 (inv!27365 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866586 () Bool)

(declare-fun e!1191358 () Bool)

(assert (=> b!1866586 (= e!1191357 e!1191358)))

(declare-fun res!835821 () Bool)

(assert (=> b!1866586 (= res!835821 (not ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(assert (=> b!1866586 (=> res!835821 e!1191358)))

(declare-fun b!1866587 () Bool)

(assert (=> b!1866587 (= e!1191358 (inv!27366 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!570113 c!304039) b!1866585))

(assert (= (and d!570113 (not c!304039)) b!1866586))

(assert (= (and b!1866586 (not res!835821)) b!1866587))

(declare-fun m!2291621 () Bool)

(assert (=> b!1866585 m!2291621))

(declare-fun m!2291623 () Bool)

(assert (=> b!1866587 m!2291623))

(assert (=> b!1866352 d!570113))

(declare-fun d!570115 () Bool)

(assert (=> d!570115 (= (max!0 (height!1061 (left!16664 (right!16994 (left!16664 t!4595)))) (height!1061 (right!16994 (right!16994 (left!16664 t!4595))))) (ite (< (height!1061 (left!16664 (right!16994 (left!16664 t!4595)))) (height!1061 (right!16994 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 t!4595)))) (height!1061 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (=> b!1866291 d!570115))

(declare-fun d!570117 () Bool)

(assert (=> d!570117 (= (height!1061 (left!16664 (right!16994 (left!16664 t!4595)))) (ite ((_ is Empty!6874) (left!16664 (right!16994 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 t!4595)))) 1 (cheight!7085 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(assert (=> b!1866291 d!570117))

(declare-fun d!570119 () Bool)

(assert (=> d!570119 (= (height!1061 (right!16994 (right!16994 (left!16664 t!4595)))) (ite ((_ is Empty!6874) (right!16994 (right!16994 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 t!4595)))) 1 (cheight!7085 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(assert (=> b!1866291 d!570119))

(declare-fun b!1866589 () Bool)

(declare-fun e!1191359 () List!20761)

(assert (=> b!1866589 (= e!1191359 (Cons!20679 (h!26080 (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))) (++!5601 (t!172882 (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))) (list!8456 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866590 () Bool)

(declare-fun res!835823 () Bool)

(declare-fun e!1191360 () Bool)

(assert (=> b!1866590 (=> (not res!835823) (not e!1191360))))

(declare-fun lt!718618 () List!20761)

(assert (=> b!1866590 (= res!835823 (= (size!16386 lt!718618) (+ (size!16386 (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))) (size!16386 (list!8456 (right!16994 (right!16994 (left!16664 t!4595))))))))))

(declare-fun b!1866591 () Bool)

(assert (=> b!1866591 (= e!1191360 (or (not (= (list!8456 (right!16994 (right!16994 (left!16664 t!4595)))) Nil!20679)) (= lt!718618 (list!8456 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(declare-fun d!570121 () Bool)

(assert (=> d!570121 e!1191360))

(declare-fun res!835822 () Bool)

(assert (=> d!570121 (=> (not res!835822) (not e!1191360))))

(assert (=> d!570121 (= res!835822 (= (content!3076 lt!718618) ((_ map or) (content!3076 (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))) (content!3076 (list!8456 (right!16994 (right!16994 (left!16664 t!4595))))))))))

(assert (=> d!570121 (= lt!718618 e!1191359)))

(declare-fun c!304040 () Bool)

(assert (=> d!570121 (= c!304040 ((_ is Nil!20679) (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570121 (= (++!5601 (list!8456 (left!16664 (right!16994 (left!16664 t!4595)))) (list!8456 (right!16994 (right!16994 (left!16664 t!4595))))) lt!718618)))

(declare-fun b!1866588 () Bool)

(assert (=> b!1866588 (= e!1191359 (list!8456 (right!16994 (right!16994 (left!16664 t!4595)))))))

(assert (= (and d!570121 c!304040) b!1866588))

(assert (= (and d!570121 (not c!304040)) b!1866589))

(assert (= (and d!570121 res!835822) b!1866590))

(assert (= (and b!1866590 res!835823) b!1866591))

(assert (=> b!1866589 m!2291205))

(declare-fun m!2291625 () Bool)

(assert (=> b!1866589 m!2291625))

(declare-fun m!2291627 () Bool)

(assert (=> b!1866590 m!2291627))

(assert (=> b!1866590 m!2291203))

(declare-fun m!2291629 () Bool)

(assert (=> b!1866590 m!2291629))

(assert (=> b!1866590 m!2291205))

(declare-fun m!2291631 () Bool)

(assert (=> b!1866590 m!2291631))

(declare-fun m!2291633 () Bool)

(assert (=> d!570121 m!2291633))

(assert (=> d!570121 m!2291203))

(declare-fun m!2291635 () Bool)

(assert (=> d!570121 m!2291635))

(assert (=> d!570121 m!2291205))

(declare-fun m!2291637 () Bool)

(assert (=> d!570121 m!2291637))

(assert (=> b!1866343 d!570121))

(declare-fun d!570123 () Bool)

(declare-fun c!304041 () Bool)

(assert (=> d!570123 (= c!304041 ((_ is Empty!6874) (left!16664 (right!16994 (left!16664 t!4595)))))))

(declare-fun e!1191361 () List!20761)

(assert (=> d!570123 (= (list!8456 (left!16664 (right!16994 (left!16664 t!4595)))) e!1191361)))

(declare-fun b!1866593 () Bool)

(declare-fun e!1191362 () List!20761)

(assert (=> b!1866593 (= e!1191361 e!1191362)))

(declare-fun c!304042 () Bool)

(assert (=> b!1866593 (= c!304042 ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866592 () Bool)

(assert (=> b!1866592 (= e!1191361 Nil!20679)))

(declare-fun b!1866594 () Bool)

(assert (=> b!1866594 (= e!1191362 (list!8457 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866595 () Bool)

(assert (=> b!1866595 (= e!1191362 (++!5601 (list!8456 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) (list!8456 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(assert (= (and d!570123 c!304041) b!1866592))

(assert (= (and d!570123 (not c!304041)) b!1866593))

(assert (= (and b!1866593 c!304042) b!1866594))

(assert (= (and b!1866593 (not c!304042)) b!1866595))

(assert (=> b!1866594 m!2291613))

(declare-fun m!2291639 () Bool)

(assert (=> b!1866595 m!2291639))

(declare-fun m!2291641 () Bool)

(assert (=> b!1866595 m!2291641))

(assert (=> b!1866595 m!2291639))

(assert (=> b!1866595 m!2291641))

(declare-fun m!2291643 () Bool)

(assert (=> b!1866595 m!2291643))

(assert (=> b!1866343 d!570123))

(declare-fun d!570125 () Bool)

(declare-fun c!304043 () Bool)

(assert (=> d!570125 (= c!304043 ((_ is Empty!6874) (right!16994 (right!16994 (left!16664 t!4595)))))))

(declare-fun e!1191363 () List!20761)

(assert (=> d!570125 (= (list!8456 (right!16994 (right!16994 (left!16664 t!4595)))) e!1191363)))

(declare-fun b!1866597 () Bool)

(declare-fun e!1191364 () List!20761)

(assert (=> b!1866597 (= e!1191363 e!1191364)))

(declare-fun c!304044 () Bool)

(assert (=> b!1866597 (= c!304044 ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 t!4595)))))))

(declare-fun b!1866596 () Bool)

(assert (=> b!1866596 (= e!1191363 Nil!20679)))

(declare-fun b!1866598 () Bool)

(assert (=> b!1866598 (= e!1191364 (list!8457 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866599 () Bool)

(assert (=> b!1866599 (= e!1191364 (++!5601 (list!8456 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) (list!8456 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(assert (= (and d!570125 c!304043) b!1866596))

(assert (= (and d!570125 (not c!304043)) b!1866597))

(assert (= (and b!1866597 c!304044) b!1866598))

(assert (= (and b!1866597 (not c!304044)) b!1866599))

(assert (=> b!1866598 m!2291609))

(declare-fun m!2291645 () Bool)

(assert (=> b!1866599 m!2291645))

(declare-fun m!2291647 () Bool)

(assert (=> b!1866599 m!2291647))

(assert (=> b!1866599 m!2291645))

(assert (=> b!1866599 m!2291647))

(declare-fun m!2291649 () Bool)

(assert (=> b!1866599 m!2291649))

(assert (=> b!1866343 d!570125))

(declare-fun d!570127 () Bool)

(assert (=> d!570127 (= (height!1061 (left!16664 (left!16664 (right!16994 t!4595)))) (ite ((_ is Empty!6874) (left!16664 (left!16664 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 t!4595)))) 1 (cheight!7085 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(assert (=> b!1866227 d!570127))

(declare-fun d!570129 () Bool)

(assert (=> d!570129 (= (height!1061 (right!16994 (left!16664 (right!16994 t!4595)))) (ite ((_ is Empty!6874) (right!16994 (left!16664 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 t!4595)))) 1 (cheight!7085 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(assert (=> b!1866227 d!570129))

(declare-fun d!570131 () Bool)

(declare-fun lt!718619 () Int)

(assert (=> d!570131 (>= lt!718619 0)))

(declare-fun e!1191365 () Int)

(assert (=> d!570131 (= lt!718619 e!1191365)))

(declare-fun c!304045 () Bool)

(assert (=> d!570131 (= c!304045 ((_ is Nil!20679) (t!172882 lt!718553)))))

(assert (=> d!570131 (= (size!16386 (t!172882 lt!718553)) lt!718619)))

(declare-fun b!1866600 () Bool)

(assert (=> b!1866600 (= e!1191365 0)))

(declare-fun b!1866601 () Bool)

(assert (=> b!1866601 (= e!1191365 (+ 1 (size!16386 (t!172882 (t!172882 lt!718553)))))))

(assert (= (and d!570131 c!304045) b!1866600))

(assert (= (and d!570131 (not c!304045)) b!1866601))

(declare-fun m!2291651 () Bool)

(assert (=> b!1866601 m!2291651))

(assert (=> b!1866235 d!570131))

(declare-fun d!570133 () Bool)

(declare-fun res!835824 () Bool)

(declare-fun e!1191366 () Bool)

(assert (=> d!570133 (=> (not res!835824) (not e!1191366))))

(assert (=> d!570133 (= res!835824 (<= (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595)))))) 512))))

(assert (=> d!570133 (= (inv!27366 (right!16994 (left!16664 (right!16994 t!4595)))) e!1191366)))

(declare-fun b!1866602 () Bool)

(declare-fun res!835825 () Bool)

(assert (=> b!1866602 (=> (not res!835825) (not e!1191366))))

(assert (=> b!1866602 (= res!835825 (= (csize!13979 (right!16994 (left!16664 (right!16994 t!4595)))) (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595))))))))))

(declare-fun b!1866603 () Bool)

(assert (=> b!1866603 (= e!1191366 (and (> (csize!13979 (right!16994 (left!16664 (right!16994 t!4595)))) 0) (<= (csize!13979 (right!16994 (left!16664 (right!16994 t!4595)))) 512)))))

(assert (= (and d!570133 res!835824) b!1866602))

(assert (= (and b!1866602 res!835825) b!1866603))

(declare-fun m!2291653 () Bool)

(assert (=> d!570133 m!2291653))

(assert (=> d!570133 m!2291653))

(declare-fun m!2291655 () Bool)

(assert (=> d!570133 m!2291655))

(assert (=> b!1866602 m!2291653))

(assert (=> b!1866602 m!2291653))

(assert (=> b!1866602 m!2291655))

(assert (=> b!1866349 d!570133))

(declare-fun d!570135 () Bool)

(declare-fun res!835826 () Bool)

(declare-fun e!1191367 () Bool)

(assert (=> d!570135 (=> (not res!835826) (not e!1191367))))

(assert (=> d!570135 (= res!835826 (<= (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595)))))) 512))))

(assert (=> d!570135 (= (inv!27366 (right!16994 (left!16664 (left!16664 t!4595)))) e!1191367)))

(declare-fun b!1866604 () Bool)

(declare-fun res!835827 () Bool)

(assert (=> b!1866604 (=> (not res!835827) (not e!1191367))))

(assert (=> b!1866604 (= res!835827 (= (csize!13979 (right!16994 (left!16664 (left!16664 t!4595)))) (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595))))))))))

(declare-fun b!1866605 () Bool)

(assert (=> b!1866605 (= e!1191367 (and (> (csize!13979 (right!16994 (left!16664 (left!16664 t!4595)))) 0) (<= (csize!13979 (right!16994 (left!16664 (left!16664 t!4595)))) 512)))))

(assert (= (and d!570135 res!835826) b!1866604))

(assert (= (and b!1866604 res!835827) b!1866605))

(declare-fun m!2291657 () Bool)

(assert (=> d!570135 m!2291657))

(assert (=> d!570135 m!2291657))

(declare-fun m!2291659 () Bool)

(assert (=> d!570135 m!2291659))

(assert (=> b!1866604 m!2291657))

(assert (=> b!1866604 m!2291657))

(assert (=> b!1866604 m!2291659))

(assert (=> b!1866245 d!570135))

(declare-fun d!570137 () Bool)

(declare-fun lt!718620 () Bool)

(assert (=> d!570137 (= lt!718620 (isEmpty!12900 (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570137 (= lt!718620 (= (size!16388 (left!16664 (right!16994 (right!16994 t!4595)))) 0))))

(assert (=> d!570137 (= (isEmpty!12899 (left!16664 (right!16994 (right!16994 t!4595)))) lt!718620)))

(declare-fun bs!411745 () Bool)

(assert (= bs!411745 d!570137))

(assert (=> bs!411745 m!2291165))

(assert (=> bs!411745 m!2291165))

(declare-fun m!2291661 () Bool)

(assert (=> bs!411745 m!2291661))

(assert (=> bs!411745 m!2291055))

(assert (=> b!1866288 d!570137))

(declare-fun d!570139 () Bool)

(assert (=> d!570139 (= (list!8457 (xs!9756 (left!16664 (left!16664 t!4595)))) (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595)))))))

(assert (=> b!1866338 d!570139))

(declare-fun d!570141 () Bool)

(declare-fun res!835828 () Bool)

(declare-fun e!1191368 () Bool)

(assert (=> d!570141 (=> (not res!835828) (not e!1191368))))

(assert (=> d!570141 (= res!835828 (<= (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595)))))) 512))))

(assert (=> d!570141 (= (inv!27366 (left!16664 (left!16664 (left!16664 t!4595)))) e!1191368)))

(declare-fun b!1866606 () Bool)

(declare-fun res!835829 () Bool)

(assert (=> b!1866606 (=> (not res!835829) (not e!1191368))))

(assert (=> b!1866606 (= res!835829 (= (csize!13979 (left!16664 (left!16664 (left!16664 t!4595)))) (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595))))))))))

(declare-fun b!1866607 () Bool)

(assert (=> b!1866607 (= e!1191368 (and (> (csize!13979 (left!16664 (left!16664 (left!16664 t!4595)))) 0) (<= (csize!13979 (left!16664 (left!16664 (left!16664 t!4595)))) 512)))))

(assert (= (and d!570141 res!835828) b!1866606))

(assert (= (and b!1866606 res!835829) b!1866607))

(declare-fun m!2291663 () Bool)

(assert (=> d!570141 m!2291663))

(assert (=> d!570141 m!2291663))

(declare-fun m!2291665 () Bool)

(assert (=> d!570141 m!2291665))

(assert (=> b!1866606 m!2291663))

(assert (=> b!1866606 m!2291663))

(assert (=> b!1866606 m!2291665))

(assert (=> b!1866242 d!570141))

(declare-fun d!570143 () Bool)

(declare-fun res!835830 () Bool)

(declare-fun e!1191369 () Bool)

(assert (=> d!570143 (=> (not res!835830) (not e!1191369))))

(assert (=> d!570143 (= res!835830 (<= (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595)))))) 512))))

(assert (=> d!570143 (= (inv!27366 (left!16664 (left!16664 (right!16994 t!4595)))) e!1191369)))

(declare-fun b!1866608 () Bool)

(declare-fun res!835831 () Bool)

(assert (=> b!1866608 (=> (not res!835831) (not e!1191369))))

(assert (=> b!1866608 (= res!835831 (= (csize!13979 (left!16664 (left!16664 (right!16994 t!4595)))) (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595))))))))))

(declare-fun b!1866609 () Bool)

(assert (=> b!1866609 (= e!1191369 (and (> (csize!13979 (left!16664 (left!16664 (right!16994 t!4595)))) 0) (<= (csize!13979 (left!16664 (left!16664 (right!16994 t!4595)))) 512)))))

(assert (= (and d!570143 res!835830) b!1866608))

(assert (= (and b!1866608 res!835831) b!1866609))

(declare-fun m!2291667 () Bool)

(assert (=> d!570143 m!2291667))

(assert (=> d!570143 m!2291667))

(declare-fun m!2291669 () Bool)

(assert (=> d!570143 m!2291669))

(assert (=> b!1866608 m!2291667))

(assert (=> b!1866608 m!2291667))

(assert (=> b!1866608 m!2291669))

(assert (=> b!1866346 d!570143))

(declare-fun d!570145 () Bool)

(declare-fun lt!718621 () Int)

(assert (=> d!570145 (= lt!718621 (size!16386 (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570145 (= lt!718621 (ite ((_ is Empty!6874) (left!16664 (right!16994 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 t!4595)))) (csize!13979 (left!16664 (right!16994 (right!16994 t!4595)))) (csize!13978 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(assert (=> d!570145 (= (size!16388 (left!16664 (right!16994 (right!16994 t!4595)))) lt!718621)))

(declare-fun bs!411746 () Bool)

(assert (= bs!411746 d!570145))

(assert (=> bs!411746 m!2291165))

(assert (=> bs!411746 m!2291165))

(declare-fun m!2291671 () Bool)

(assert (=> bs!411746 m!2291671))

(assert (=> d!569853 d!570145))

(declare-fun d!570147 () Bool)

(declare-fun lt!718622 () Int)

(assert (=> d!570147 (= lt!718622 (size!16386 (list!8456 (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570147 (= lt!718622 (ite ((_ is Empty!6874) (right!16994 (right!16994 (right!16994 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 t!4595)))) (csize!13979 (right!16994 (right!16994 (right!16994 t!4595)))) (csize!13978 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(assert (=> d!570147 (= (size!16388 (right!16994 (right!16994 (right!16994 t!4595)))) lt!718622)))

(declare-fun bs!411747 () Bool)

(assert (= bs!411747 d!570147))

(assert (=> bs!411747 m!2291167))

(assert (=> bs!411747 m!2291167))

(declare-fun m!2291673 () Bool)

(assert (=> bs!411747 m!2291673))

(assert (=> d!569853 d!570147))

(declare-fun d!570149 () Bool)

(assert (=> d!570149 (= (inv!27364 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595)))))) 2147483647))))

(declare-fun bs!411748 () Bool)

(assert (= bs!411748 d!570149))

(declare-fun m!2291675 () Bool)

(assert (=> bs!411748 m!2291675))

(assert (=> b!1866375 d!570149))

(declare-fun d!570151 () Bool)

(declare-fun c!304046 () Bool)

(assert (=> d!570151 (= c!304046 ((_ is Nil!20679) (t!172882 (list!8456 (right!16994 t!4595)))))))

(declare-fun e!1191370 () (InoxSet T!33130))

(assert (=> d!570151 (= (content!3076 (t!172882 (list!8456 (right!16994 t!4595)))) e!1191370)))

(declare-fun b!1866610 () Bool)

(assert (=> b!1866610 (= e!1191370 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866611 () Bool)

(assert (=> b!1866611 (= e!1191370 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (t!172882 (list!8456 (right!16994 t!4595)))) true) (content!3076 (t!172882 (t!172882 (list!8456 (right!16994 t!4595)))))))))

(assert (= (and d!570151 c!304046) b!1866610))

(assert (= (and d!570151 (not c!304046)) b!1866611))

(declare-fun m!2291677 () Bool)

(assert (=> b!1866611 m!2291677))

(declare-fun m!2291679 () Bool)

(assert (=> b!1866611 m!2291679))

(assert (=> b!1866281 d!570151))

(declare-fun b!1866613 () Bool)

(declare-fun e!1191371 () List!20761)

(assert (=> b!1866613 (= e!1191371 (Cons!20679 (h!26080 (t!172882 (list!8456 (left!16664 (left!16664 t!4595))))) (++!5601 (t!172882 (t!172882 (list!8456 (left!16664 (left!16664 t!4595))))) (list!8456 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866614 () Bool)

(declare-fun res!835833 () Bool)

(declare-fun e!1191372 () Bool)

(assert (=> b!1866614 (=> (not res!835833) (not e!1191372))))

(declare-fun lt!718623 () List!20761)

(assert (=> b!1866614 (= res!835833 (= (size!16386 lt!718623) (+ (size!16386 (t!172882 (list!8456 (left!16664 (left!16664 t!4595))))) (size!16386 (list!8456 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866615 () Bool)

(assert (=> b!1866615 (= e!1191372 (or (not (= (list!8456 (right!16994 (left!16664 t!4595))) Nil!20679)) (= lt!718623 (t!172882 (list!8456 (left!16664 (left!16664 t!4595)))))))))

(declare-fun d!570153 () Bool)

(assert (=> d!570153 e!1191372))

(declare-fun res!835832 () Bool)

(assert (=> d!570153 (=> (not res!835832) (not e!1191372))))

(assert (=> d!570153 (= res!835832 (= (content!3076 lt!718623) ((_ map or) (content!3076 (t!172882 (list!8456 (left!16664 (left!16664 t!4595))))) (content!3076 (list!8456 (right!16994 (left!16664 t!4595)))))))))

(assert (=> d!570153 (= lt!718623 e!1191371)))

(declare-fun c!304047 () Bool)

(assert (=> d!570153 (= c!304047 ((_ is Nil!20679) (t!172882 (list!8456 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570153 (= (++!5601 (t!172882 (list!8456 (left!16664 (left!16664 t!4595)))) (list!8456 (right!16994 (left!16664 t!4595)))) lt!718623)))

(declare-fun b!1866612 () Bool)

(assert (=> b!1866612 (= e!1191371 (list!8456 (right!16994 (left!16664 t!4595))))))

(assert (= (and d!570153 c!304047) b!1866612))

(assert (= (and d!570153 (not c!304047)) b!1866613))

(assert (= (and d!570153 res!835832) b!1866614))

(assert (= (and b!1866614 res!835833) b!1866615))

(assert (=> b!1866613 m!2290825))

(declare-fun m!2291681 () Bool)

(assert (=> b!1866613 m!2291681))

(declare-fun m!2291683 () Bool)

(assert (=> b!1866614 m!2291683))

(declare-fun m!2291685 () Bool)

(assert (=> b!1866614 m!2291685))

(assert (=> b!1866614 m!2290825))

(assert (=> b!1866614 m!2291189))

(declare-fun m!2291687 () Bool)

(assert (=> d!570153 m!2291687))

(declare-fun m!2291689 () Bool)

(assert (=> d!570153 m!2291689))

(assert (=> d!570153 m!2290825))

(assert (=> d!570153 m!2291195))

(assert (=> b!1866333 d!570153))

(declare-fun d!570155 () Bool)

(declare-fun lt!718624 () Bool)

(assert (=> d!570155 (= lt!718624 (isEmpty!12900 (list!8456 (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570155 (= lt!718624 (= (size!16388 (right!16994 (right!16994 (right!16994 t!4595)))) 0))))

(assert (=> d!570155 (= (isEmpty!12899 (right!16994 (right!16994 (right!16994 t!4595)))) lt!718624)))

(declare-fun bs!411749 () Bool)

(assert (= bs!411749 d!570155))

(assert (=> bs!411749 m!2291167))

(assert (=> bs!411749 m!2291167))

(declare-fun m!2291691 () Bool)

(assert (=> bs!411749 m!2291691))

(assert (=> bs!411749 m!2291057))

(assert (=> b!1866284 d!570155))

(declare-fun b!1866616 () Bool)

(declare-fun e!1191374 () Bool)

(assert (=> b!1866616 (= e!1191374 (not (isEmpty!12899 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(declare-fun b!1866617 () Bool)

(declare-fun res!835839 () Bool)

(assert (=> b!1866617 (=> (not res!835839) (not e!1191374))))

(assert (=> b!1866617 (= res!835839 (isBalanced!2175 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866618 () Bool)

(declare-fun res!835835 () Bool)

(assert (=> b!1866618 (=> (not res!835835) (not e!1191374))))

(assert (=> b!1866618 (= res!835835 (isBalanced!2175 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866619 () Bool)

(declare-fun res!835836 () Bool)

(assert (=> b!1866619 (=> (not res!835836) (not e!1191374))))

(assert (=> b!1866619 (= res!835836 (<= (- (height!1061 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) 1))))

(declare-fun b!1866620 () Bool)

(declare-fun res!835838 () Bool)

(assert (=> b!1866620 (=> (not res!835838) (not e!1191374))))

(assert (=> b!1866620 (= res!835838 (not (isEmpty!12899 (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(declare-fun b!1866621 () Bool)

(declare-fun e!1191373 () Bool)

(assert (=> b!1866621 (= e!1191373 e!1191374)))

(declare-fun res!835837 () Bool)

(assert (=> b!1866621 (=> (not res!835837) (not e!1191374))))

(assert (=> b!1866621 (= res!835837 (<= (- 1) (- (height!1061 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))))))))

(declare-fun d!570157 () Bool)

(declare-fun res!835834 () Bool)

(assert (=> d!570157 (=> res!835834 e!1191373)))

(assert (=> d!570157 (= res!835834 (not ((_ is Node!6874) (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570157 (= (isBalanced!2175 (left!16664 (left!16664 (left!16664 t!4595)))) e!1191373)))

(assert (= (and d!570157 (not res!835834)) b!1866621))

(assert (= (and b!1866621 res!835837) b!1866619))

(assert (= (and b!1866619 res!835836) b!1866618))

(assert (= (and b!1866618 res!835835) b!1866617))

(assert (= (and b!1866617 res!835839) b!1866620))

(assert (= (and b!1866620 res!835838) b!1866616))

(declare-fun m!2291693 () Bool)

(assert (=> b!1866620 m!2291693))

(declare-fun m!2291695 () Bool)

(assert (=> b!1866617 m!2291695))

(declare-fun m!2291697 () Bool)

(assert (=> b!1866616 m!2291697))

(declare-fun m!2291699 () Bool)

(assert (=> b!1866621 m!2291699))

(declare-fun m!2291701 () Bool)

(assert (=> b!1866621 m!2291701))

(assert (=> b!1866619 m!2291699))

(assert (=> b!1866619 m!2291701))

(declare-fun m!2291703 () Bool)

(assert (=> b!1866618 m!2291703))

(assert (=> b!1866328 d!570157))

(declare-fun d!570159 () Bool)

(declare-fun lt!718625 () Int)

(assert (=> d!570159 (>= lt!718625 0)))

(declare-fun e!1191375 () Int)

(assert (=> d!570159 (= lt!718625 e!1191375)))

(declare-fun c!304048 () Bool)

(assert (=> d!570159 (= c!304048 ((_ is Nil!20679) (list!8457 (xs!9756 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570159 (= (size!16386 (list!8457 (xs!9756 (right!16994 (right!16994 t!4595))))) lt!718625)))

(declare-fun b!1866622 () Bool)

(assert (=> b!1866622 (= e!1191375 0)))

(declare-fun b!1866623 () Bool)

(assert (=> b!1866623 (= e!1191375 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 (right!16994 (right!16994 t!4595))))))))))

(assert (= (and d!570159 c!304048) b!1866622))

(assert (= (and d!570159 (not c!304048)) b!1866623))

(declare-fun m!2291705 () Bool)

(assert (=> b!1866623 m!2291705))

(assert (=> b!1866252 d!570159))

(declare-fun d!570161 () Bool)

(assert (=> d!570161 (= (list!8457 (xs!9756 (right!16994 (right!16994 t!4595)))) (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595)))))))

(assert (=> b!1866252 d!570161))

(declare-fun d!570163 () Bool)

(declare-fun lt!718626 () Int)

(assert (=> d!570163 (>= lt!718626 0)))

(declare-fun e!1191376 () Int)

(assert (=> d!570163 (= lt!718626 e!1191376)))

(declare-fun c!304049 () Bool)

(assert (=> d!570163 (= c!304049 ((_ is Nil!20679) (t!172882 (t!172882 (innerList!6934 (xs!9756 t!4595))))))))

(assert (=> d!570163 (= (size!16386 (t!172882 (t!172882 (innerList!6934 (xs!9756 t!4595))))) lt!718626)))

(declare-fun b!1866624 () Bool)

(assert (=> b!1866624 (= e!1191376 0)))

(declare-fun b!1866625 () Bool)

(assert (=> b!1866625 (= e!1191376 (+ 1 (size!16386 (t!172882 (t!172882 (t!172882 (innerList!6934 (xs!9756 t!4595))))))))))

(assert (= (and d!570163 c!304049) b!1866624))

(assert (= (and d!570163 (not c!304049)) b!1866625))

(declare-fun m!2291707 () Bool)

(assert (=> b!1866625 m!2291707))

(assert (=> b!1866249 d!570163))

(assert (=> b!1866257 d!570117))

(assert (=> b!1866257 d!570119))

(declare-fun d!570165 () Bool)

(assert (=> d!570165 (= (max!0 (height!1061 (left!16664 (left!16664 (right!16994 t!4595)))) (height!1061 (right!16994 (left!16664 (right!16994 t!4595))))) (ite (< (height!1061 (left!16664 (left!16664 (right!16994 t!4595)))) (height!1061 (right!16994 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 t!4595)))) (height!1061 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (=> b!1866268 d!570165))

(assert (=> b!1866268 d!570127))

(assert (=> b!1866268 d!570129))

(declare-fun d!570167 () Bool)

(declare-fun res!835840 () Bool)

(declare-fun e!1191377 () Bool)

(assert (=> d!570167 (=> (not res!835840) (not e!1191377))))

(assert (=> d!570167 (= res!835840 (= (csize!13978 (left!16664 (right!16994 (right!16994 t!4595)))) (+ (size!16388 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) (size!16388 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))))))))

(assert (=> d!570167 (= (inv!27365 (left!16664 (right!16994 (right!16994 t!4595)))) e!1191377)))

(declare-fun b!1866626 () Bool)

(declare-fun res!835841 () Bool)

(assert (=> b!1866626 (=> (not res!835841) (not e!1191377))))

(assert (=> b!1866626 (= res!835841 (and (not (= (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))) Empty!6874)) (not (= (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))) Empty!6874))))))

(declare-fun b!1866627 () Bool)

(declare-fun res!835842 () Bool)

(assert (=> b!1866627 (=> (not res!835842) (not e!1191377))))

(assert (=> b!1866627 (= res!835842 (= (cheight!7085 (left!16664 (right!16994 (right!16994 t!4595)))) (+ (max!0 (height!1061 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) 1)))))

(declare-fun b!1866628 () Bool)

(assert (=> b!1866628 (= e!1191377 (<= 0 (cheight!7085 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!570167 res!835840) b!1866626))

(assert (= (and b!1866626 res!835841) b!1866627))

(assert (= (and b!1866627 res!835842) b!1866628))

(declare-fun m!2291709 () Bool)

(assert (=> d!570167 m!2291709))

(declare-fun m!2291711 () Bool)

(assert (=> d!570167 m!2291711))

(declare-fun m!2291713 () Bool)

(assert (=> b!1866627 m!2291713))

(declare-fun m!2291715 () Bool)

(assert (=> b!1866627 m!2291715))

(assert (=> b!1866627 m!2291713))

(assert (=> b!1866627 m!2291715))

(declare-fun m!2291717 () Bool)

(assert (=> b!1866627 m!2291717))

(assert (=> b!1866302 d!570167))

(declare-fun d!570169 () Bool)

(declare-fun c!304050 () Bool)

(assert (=> d!570169 (= c!304050 ((_ is Nil!20679) lt!718582))))

(declare-fun e!1191378 () (InoxSet T!33130))

(assert (=> d!570169 (= (content!3076 lt!718582) e!1191378)))

(declare-fun b!1866629 () Bool)

(assert (=> b!1866629 (= e!1191378 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866630 () Bool)

(assert (=> b!1866630 (= e!1191378 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 lt!718582) true) (content!3076 (t!172882 lt!718582))))))

(assert (= (and d!570169 c!304050) b!1866629))

(assert (= (and d!570169 (not c!304050)) b!1866630))

(declare-fun m!2291719 () Bool)

(assert (=> b!1866630 m!2291719))

(declare-fun m!2291721 () Bool)

(assert (=> b!1866630 m!2291721))

(assert (=> d!569903 d!570169))

(declare-fun d!570171 () Bool)

(declare-fun c!304051 () Bool)

(assert (=> d!570171 (= c!304051 ((_ is Nil!20679) (t!172882 (list!8456 (left!16664 t!4595)))))))

(declare-fun e!1191379 () (InoxSet T!33130))

(assert (=> d!570171 (= (content!3076 (t!172882 (list!8456 (left!16664 t!4595)))) e!1191379)))

(declare-fun b!1866631 () Bool)

(assert (=> b!1866631 (= e!1191379 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866632 () Bool)

(assert (=> b!1866632 (= e!1191379 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (t!172882 (list!8456 (left!16664 t!4595)))) true) (content!3076 (t!172882 (t!172882 (list!8456 (left!16664 t!4595)))))))))

(assert (= (and d!570171 c!304051) b!1866631))

(assert (= (and d!570171 (not c!304051)) b!1866632))

(declare-fun m!2291723 () Bool)

(assert (=> b!1866632 m!2291723))

(declare-fun m!2291725 () Bool)

(assert (=> b!1866632 m!2291725))

(assert (=> d!569903 d!570171))

(assert (=> d!569903 d!569871))

(declare-fun d!570173 () Bool)

(declare-fun lt!718627 () Int)

(assert (=> d!570173 (>= lt!718627 0)))

(declare-fun e!1191380 () Int)

(assert (=> d!570173 (= lt!718627 e!1191380)))

(declare-fun c!304052 () Bool)

(assert (=> d!570173 (= c!304052 ((_ is Nil!20679) (list!8457 (xs!9756 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570173 (= (size!16386 (list!8457 (xs!9756 (right!16994 (left!16664 t!4595))))) lt!718627)))

(declare-fun b!1866633 () Bool)

(assert (=> b!1866633 (= e!1191380 0)))

(declare-fun b!1866634 () Bool)

(assert (=> b!1866634 (= e!1191380 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 (right!16994 (left!16664 t!4595))))))))))

(assert (= (and d!570173 c!304052) b!1866633))

(assert (= (and d!570173 (not c!304052)) b!1866634))

(declare-fun m!2291727 () Bool)

(assert (=> b!1866634 m!2291727))

(assert (=> b!1866282 d!570173))

(assert (=> b!1866282 d!570065))

(declare-fun d!570175 () Bool)

(declare-fun lt!718628 () Int)

(assert (=> d!570175 (>= lt!718628 0)))

(declare-fun e!1191381 () Int)

(assert (=> d!570175 (= lt!718628 e!1191381)))

(declare-fun c!304053 () Bool)

(assert (=> d!570175 (= c!304053 ((_ is Nil!20679) (t!172882 (list!8456 (left!16664 t!4595)))))))

(assert (=> d!570175 (= (size!16386 (t!172882 (list!8456 (left!16664 t!4595)))) lt!718628)))

(declare-fun b!1866635 () Bool)

(assert (=> b!1866635 (= e!1191381 0)))

(declare-fun b!1866636 () Bool)

(assert (=> b!1866636 (= e!1191381 (+ 1 (size!16386 (t!172882 (t!172882 (list!8456 (left!16664 t!4595)))))))))

(assert (= (and d!570175 c!304053) b!1866635))

(assert (= (and d!570175 (not c!304053)) b!1866636))

(declare-fun m!2291729 () Bool)

(assert (=> b!1866636 m!2291729))

(assert (=> b!1866237 d!570175))

(assert (=> b!1866322 d!570161))

(declare-fun d!570177 () Bool)

(declare-fun c!304054 () Bool)

(assert (=> d!570177 (= c!304054 ((_ is Node!6874) (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun e!1191382 () Bool)

(assert (=> d!570177 (= (inv!27363 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) e!1191382)))

(declare-fun b!1866637 () Bool)

(assert (=> b!1866637 (= e!1191382 (inv!27365 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866638 () Bool)

(declare-fun e!1191383 () Bool)

(assert (=> b!1866638 (= e!1191382 e!1191383)))

(declare-fun res!835843 () Bool)

(assert (=> b!1866638 (= res!835843 (not ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(assert (=> b!1866638 (=> res!835843 e!1191383)))

(declare-fun b!1866639 () Bool)

(assert (=> b!1866639 (= e!1191383 (inv!27366 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!570177 c!304054) b!1866637))

(assert (= (and d!570177 (not c!304054)) b!1866638))

(assert (= (and b!1866638 (not res!835843)) b!1866639))

(declare-fun m!2291731 () Bool)

(assert (=> b!1866637 m!2291731))

(declare-fun m!2291733 () Bool)

(assert (=> b!1866639 m!2291733))

(assert (=> b!1866368 d!570177))

(declare-fun d!570179 () Bool)

(declare-fun c!304055 () Bool)

(assert (=> d!570179 (= c!304055 ((_ is Node!6874) (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun e!1191384 () Bool)

(assert (=> d!570179 (= (inv!27363 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))) e!1191384)))

(declare-fun b!1866640 () Bool)

(assert (=> b!1866640 (= e!1191384 (inv!27365 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866641 () Bool)

(declare-fun e!1191385 () Bool)

(assert (=> b!1866641 (= e!1191384 e!1191385)))

(declare-fun res!835844 () Bool)

(assert (=> b!1866641 (= res!835844 (not ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(assert (=> b!1866641 (=> res!835844 e!1191385)))

(declare-fun b!1866642 () Bool)

(assert (=> b!1866642 (= e!1191385 (inv!27366 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!570179 c!304055) b!1866640))

(assert (= (and d!570179 (not c!304055)) b!1866641))

(assert (= (and b!1866641 (not res!835844)) b!1866642))

(declare-fun m!2291735 () Bool)

(assert (=> b!1866640 m!2291735))

(declare-fun m!2291737 () Bool)

(assert (=> b!1866642 m!2291737))

(assert (=> b!1866368 d!570179))

(declare-fun b!1866644 () Bool)

(declare-fun e!1191386 () List!20761)

(assert (=> b!1866644 (= e!1191386 (Cons!20679 (h!26080 (t!172882 (t!172882 (list!8456 (left!16664 t!4595))))) (++!5601 (t!172882 (t!172882 (t!172882 (list!8456 (left!16664 t!4595))))) (list!8456 (right!16994 t!4595)))))))

(declare-fun b!1866645 () Bool)

(declare-fun res!835846 () Bool)

(declare-fun e!1191387 () Bool)

(assert (=> b!1866645 (=> (not res!835846) (not e!1191387))))

(declare-fun lt!718629 () List!20761)

(assert (=> b!1866645 (= res!835846 (= (size!16386 lt!718629) (+ (size!16386 (t!172882 (t!172882 (list!8456 (left!16664 t!4595))))) (size!16386 (list!8456 (right!16994 t!4595))))))))

(declare-fun b!1866646 () Bool)

(assert (=> b!1866646 (= e!1191387 (or (not (= (list!8456 (right!16994 t!4595)) Nil!20679)) (= lt!718629 (t!172882 (t!172882 (list!8456 (left!16664 t!4595)))))))))

(declare-fun d!570181 () Bool)

(assert (=> d!570181 e!1191387))

(declare-fun res!835845 () Bool)

(assert (=> d!570181 (=> (not res!835845) (not e!1191387))))

(assert (=> d!570181 (= res!835845 (= (content!3076 lt!718629) ((_ map or) (content!3076 (t!172882 (t!172882 (list!8456 (left!16664 t!4595))))) (content!3076 (list!8456 (right!16994 t!4595))))))))

(assert (=> d!570181 (= lt!718629 e!1191386)))

(declare-fun c!304056 () Bool)

(assert (=> d!570181 (= c!304056 ((_ is Nil!20679) (t!172882 (t!172882 (list!8456 (left!16664 t!4595))))))))

(assert (=> d!570181 (= (++!5601 (t!172882 (t!172882 (list!8456 (left!16664 t!4595)))) (list!8456 (right!16994 t!4595))) lt!718629)))

(declare-fun b!1866643 () Bool)

(assert (=> b!1866643 (= e!1191386 (list!8456 (right!16994 t!4595)))))

(assert (= (and d!570181 c!304056) b!1866643))

(assert (= (and d!570181 (not c!304056)) b!1866644))

(assert (= (and d!570181 res!835845) b!1866645))

(assert (= (and b!1866645 res!835846) b!1866646))

(assert (=> b!1866644 m!2290615))

(declare-fun m!2291739 () Bool)

(assert (=> b!1866644 m!2291739))

(declare-fun m!2291741 () Bool)

(assert (=> b!1866645 m!2291741))

(assert (=> b!1866645 m!2291729))

(assert (=> b!1866645 m!2290615))

(assert (=> b!1866645 m!2290815))

(declare-fun m!2291743 () Bool)

(assert (=> d!570181 m!2291743))

(assert (=> d!570181 m!2291725))

(assert (=> d!570181 m!2290615))

(assert (=> d!570181 m!2290821))

(assert (=> b!1866309 d!570181))

(declare-fun d!570183 () Bool)

(assert (=> d!570183 (= (isEmpty!12900 (list!8456 (right!16994 (left!16664 t!4595)))) ((_ is Nil!20679) (list!8456 (right!16994 (left!16664 t!4595)))))))

(assert (=> d!569815 d!570183))

(assert (=> d!569815 d!569923))

(assert (=> d!569815 d!569929))

(declare-fun d!570185 () Bool)

(declare-fun c!304057 () Bool)

(assert (=> d!570185 (= c!304057 ((_ is Nil!20679) lt!718586))))

(declare-fun e!1191388 () (InoxSet T!33130))

(assert (=> d!570185 (= (content!3076 lt!718586) e!1191388)))

(declare-fun b!1866647 () Bool)

(assert (=> b!1866647 (= e!1191388 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866648 () Bool)

(assert (=> b!1866648 (= e!1191388 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 lt!718586) true) (content!3076 (t!172882 lt!718586))))))

(assert (= (and d!570185 c!304057) b!1866647))

(assert (= (and d!570185 (not c!304057)) b!1866648))

(declare-fun m!2291745 () Bool)

(assert (=> b!1866648 m!2291745))

(declare-fun m!2291747 () Bool)

(assert (=> b!1866648 m!2291747))

(assert (=> d!569919 d!570185))

(declare-fun d!570187 () Bool)

(declare-fun c!304058 () Bool)

(assert (=> d!570187 (= c!304058 ((_ is Nil!20679) (list!8456 (left!16664 (left!16664 t!4595)))))))

(declare-fun e!1191389 () (InoxSet T!33130))

(assert (=> d!570187 (= (content!3076 (list!8456 (left!16664 (left!16664 t!4595)))) e!1191389)))

(declare-fun b!1866649 () Bool)

(assert (=> b!1866649 (= e!1191389 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866650 () Bool)

(assert (=> b!1866650 (= e!1191389 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (list!8456 (left!16664 (left!16664 t!4595)))) true) (content!3076 (t!172882 (list!8456 (left!16664 (left!16664 t!4595)))))))))

(assert (= (and d!570187 c!304058) b!1866649))

(assert (= (and d!570187 (not c!304058)) b!1866650))

(declare-fun m!2291749 () Bool)

(assert (=> b!1866650 m!2291749))

(assert (=> b!1866650 m!2291689))

(assert (=> d!569919 d!570187))

(declare-fun d!570189 () Bool)

(declare-fun c!304059 () Bool)

(assert (=> d!570189 (= c!304059 ((_ is Nil!20679) (list!8456 (right!16994 (left!16664 t!4595)))))))

(declare-fun e!1191390 () (InoxSet T!33130))

(assert (=> d!570189 (= (content!3076 (list!8456 (right!16994 (left!16664 t!4595)))) e!1191390)))

(declare-fun b!1866651 () Bool)

(assert (=> b!1866651 (= e!1191390 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866652 () Bool)

(assert (=> b!1866652 (= e!1191390 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (list!8456 (right!16994 (left!16664 t!4595)))) true) (content!3076 (t!172882 (list!8456 (right!16994 (left!16664 t!4595)))))))))

(assert (= (and d!570189 c!304059) b!1866651))

(assert (= (and d!570189 (not c!304059)) b!1866652))

(declare-fun m!2291751 () Bool)

(assert (=> b!1866652 m!2291751))

(declare-fun m!2291753 () Bool)

(assert (=> b!1866652 m!2291753))

(assert (=> d!569919 d!570189))

(declare-fun d!570191 () Bool)

(declare-fun c!304060 () Bool)

(assert (=> d!570191 (= c!304060 ((_ is Node!6874) (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun e!1191391 () Bool)

(assert (=> d!570191 (= (inv!27363 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) e!1191391)))

(declare-fun b!1866653 () Bool)

(assert (=> b!1866653 (= e!1191391 (inv!27365 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866654 () Bool)

(declare-fun e!1191392 () Bool)

(assert (=> b!1866654 (= e!1191391 e!1191392)))

(declare-fun res!835847 () Bool)

(assert (=> b!1866654 (= res!835847 (not ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(assert (=> b!1866654 (=> res!835847 e!1191392)))

(declare-fun b!1866655 () Bool)

(assert (=> b!1866655 (= e!1191392 (inv!27366 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!570191 c!304060) b!1866653))

(assert (= (and d!570191 (not c!304060)) b!1866654))

(assert (= (and b!1866654 (not res!835847)) b!1866655))

(declare-fun m!2291755 () Bool)

(assert (=> b!1866653 m!2291755))

(declare-fun m!2291757 () Bool)

(assert (=> b!1866655 m!2291757))

(assert (=> b!1866377 d!570191))

(declare-fun d!570193 () Bool)

(declare-fun c!304061 () Bool)

(assert (=> d!570193 (= c!304061 ((_ is Node!6874) (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun e!1191393 () Bool)

(assert (=> d!570193 (= (inv!27363 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))) e!1191393)))

(declare-fun b!1866656 () Bool)

(assert (=> b!1866656 (= e!1191393 (inv!27365 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866657 () Bool)

(declare-fun e!1191394 () Bool)

(assert (=> b!1866657 (= e!1191393 e!1191394)))

(declare-fun res!835848 () Bool)

(assert (=> b!1866657 (= res!835848 (not ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(assert (=> b!1866657 (=> res!835848 e!1191394)))

(declare-fun b!1866658 () Bool)

(assert (=> b!1866658 (= e!1191394 (inv!27366 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!570193 c!304061) b!1866656))

(assert (= (and d!570193 (not c!304061)) b!1866657))

(assert (= (and b!1866657 (not res!835848)) b!1866658))

(declare-fun m!2291759 () Bool)

(assert (=> b!1866656 m!2291759))

(declare-fun m!2291761 () Bool)

(assert (=> b!1866658 m!2291761))

(assert (=> b!1866377 d!570193))

(declare-fun d!570195 () Bool)

(assert (=> d!570195 (= (inv!27364 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595)))))) 2147483647))))

(declare-fun bs!411750 () Bool)

(assert (= bs!411750 d!570195))

(declare-fun m!2291763 () Bool)

(assert (=> bs!411750 m!2291763))

(assert (=> b!1866353 d!570195))

(assert (=> b!1866119 d!569931))

(assert (=> b!1866119 d!569933))

(declare-fun d!570197 () Bool)

(assert (=> d!570197 (= (inv!27364 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595)))))) 2147483647))))

(declare-fun bs!411751 () Bool)

(assert (= bs!411751 d!570197))

(declare-fun m!2291765 () Bool)

(assert (=> bs!411751 m!2291765))

(assert (=> b!1866362 d!570197))

(declare-fun d!570199 () Bool)

(declare-fun res!835849 () Bool)

(declare-fun e!1191395 () Bool)

(assert (=> d!570199 (=> (not res!835849) (not e!1191395))))

(assert (=> d!570199 (= res!835849 (= (csize!13978 (right!16994 (right!16994 (right!16994 t!4595)))) (+ (size!16388 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) (size!16388 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))))))))

(assert (=> d!570199 (= (inv!27365 (right!16994 (right!16994 (right!16994 t!4595)))) e!1191395)))

(declare-fun b!1866659 () Bool)

(declare-fun res!835850 () Bool)

(assert (=> b!1866659 (=> (not res!835850) (not e!1191395))))

(assert (=> b!1866659 (= res!835850 (and (not (= (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))) Empty!6874)) (not (= (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))) Empty!6874))))))

(declare-fun b!1866660 () Bool)

(declare-fun res!835851 () Bool)

(assert (=> b!1866660 (=> (not res!835851) (not e!1191395))))

(assert (=> b!1866660 (= res!835851 (= (cheight!7085 (right!16994 (right!16994 (right!16994 t!4595)))) (+ (max!0 (height!1061 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) 1)))))

(declare-fun b!1866661 () Bool)

(assert (=> b!1866661 (= e!1191395 (<= 0 (cheight!7085 (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!570199 res!835849) b!1866659))

(assert (= (and b!1866659 res!835850) b!1866660))

(assert (= (and b!1866660 res!835851) b!1866661))

(declare-fun m!2291767 () Bool)

(assert (=> d!570199 m!2291767))

(declare-fun m!2291769 () Bool)

(assert (=> d!570199 m!2291769))

(declare-fun m!2291771 () Bool)

(assert (=> b!1866660 m!2291771))

(declare-fun m!2291773 () Bool)

(assert (=> b!1866660 m!2291773))

(assert (=> b!1866660 m!2291771))

(assert (=> b!1866660 m!2291773))

(declare-fun m!2291775 () Bool)

(assert (=> b!1866660 m!2291775))

(assert (=> b!1866305 d!570199))

(declare-fun d!570201 () Bool)

(declare-fun lt!718630 () Int)

(assert (=> d!570201 (>= lt!718630 0)))

(declare-fun e!1191396 () Int)

(assert (=> d!570201 (= lt!718630 e!1191396)))

(declare-fun c!304062 () Bool)

(assert (=> d!570201 (= c!304062 ((_ is Nil!20679) (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570201 (= (size!16386 (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595))))) lt!718630)))

(declare-fun b!1866662 () Bool)

(assert (=> b!1866662 (= e!1191396 0)))

(declare-fun b!1866663 () Bool)

(assert (=> b!1866663 (= e!1191396 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595))))))))))

(assert (= (and d!570201 c!304062) b!1866662))

(assert (= (and d!570201 (not c!304062)) b!1866663))

(declare-fun m!2291777 () Bool)

(assert (=> b!1866663 m!2291777))

(assert (=> d!569811 d!570201))

(declare-fun d!570203 () Bool)

(declare-fun lt!718631 () Bool)

(assert (=> d!570203 (= lt!718631 (isEmpty!12900 (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570203 (= lt!718631 (= (size!16388 (left!16664 (left!16664 (right!16994 t!4595)))) 0))))

(assert (=> d!570203 (= (isEmpty!12899 (left!16664 (left!16664 (right!16994 t!4595)))) lt!718631)))

(declare-fun bs!411752 () Bool)

(assert (= bs!411752 d!570203))

(assert (=> bs!411752 m!2291159))

(assert (=> bs!411752 m!2291159))

(declare-fun m!2291779 () Bool)

(assert (=> bs!411752 m!2291779))

(assert (=> bs!411752 m!2291071))

(assert (=> b!1866228 d!570203))

(declare-fun d!570205 () Bool)

(declare-fun lt!718632 () Int)

(assert (=> d!570205 (>= lt!718632 0)))

(declare-fun e!1191397 () Int)

(assert (=> d!570205 (= lt!718632 e!1191397)))

(declare-fun c!304063 () Bool)

(assert (=> d!570205 (= c!304063 ((_ is Nil!20679) lt!718582))))

(assert (=> d!570205 (= (size!16386 lt!718582) lt!718632)))

(declare-fun b!1866664 () Bool)

(assert (=> b!1866664 (= e!1191397 0)))

(declare-fun b!1866665 () Bool)

(assert (=> b!1866665 (= e!1191397 (+ 1 (size!16386 (t!172882 lt!718582))))))

(assert (= (and d!570205 c!304063) b!1866664))

(assert (= (and d!570205 (not c!304063)) b!1866665))

(declare-fun m!2291781 () Bool)

(assert (=> b!1866665 m!2291781))

(assert (=> b!1866310 d!570205))

(assert (=> b!1866310 d!570175))

(assert (=> b!1866310 d!569825))

(declare-fun d!570207 () Bool)

(assert (=> d!570207 (= (inv!27364 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595)))))) 2147483647))))

(declare-fun bs!411753 () Bool)

(assert (= bs!411753 d!570207))

(declare-fun m!2291783 () Bool)

(assert (=> bs!411753 m!2291783))

(assert (=> b!1866369 d!570207))

(assert (=> d!569847 d!570159))

(assert (=> d!569847 d!570161))

(assert (=> b!1866289 d!570079))

(assert (=> b!1866289 d!570081))

(declare-fun b!1866667 () Bool)

(declare-fun e!1191398 () List!20761)

(assert (=> b!1866667 (= e!1191398 (Cons!20679 (h!26080 (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))) (++!5601 (t!172882 (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))) (list!8456 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(declare-fun b!1866668 () Bool)

(declare-fun res!835853 () Bool)

(declare-fun e!1191399 () Bool)

(assert (=> b!1866668 (=> (not res!835853) (not e!1191399))))

(declare-fun lt!718633 () List!20761)

(assert (=> b!1866668 (= res!835853 (= (size!16386 lt!718633) (+ (size!16386 (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))) (size!16386 (list!8456 (right!16994 (left!16664 (left!16664 t!4595))))))))))

(declare-fun b!1866669 () Bool)

(assert (=> b!1866669 (= e!1191399 (or (not (= (list!8456 (right!16994 (left!16664 (left!16664 t!4595)))) Nil!20679)) (= lt!718633 (list!8456 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(declare-fun d!570209 () Bool)

(assert (=> d!570209 e!1191399))

(declare-fun res!835852 () Bool)

(assert (=> d!570209 (=> (not res!835852) (not e!1191399))))

(assert (=> d!570209 (= res!835852 (= (content!3076 lt!718633) ((_ map or) (content!3076 (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))) (content!3076 (list!8456 (right!16994 (left!16664 (left!16664 t!4595))))))))))

(assert (=> d!570209 (= lt!718633 e!1191398)))

(declare-fun c!304064 () Bool)

(assert (=> d!570209 (= c!304064 ((_ is Nil!20679) (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570209 (= (++!5601 (list!8456 (left!16664 (left!16664 (left!16664 t!4595)))) (list!8456 (right!16994 (left!16664 (left!16664 t!4595))))) lt!718633)))

(declare-fun b!1866666 () Bool)

(assert (=> b!1866666 (= e!1191398 (list!8456 (right!16994 (left!16664 (left!16664 t!4595)))))))

(assert (= (and d!570209 c!304064) b!1866666))

(assert (= (and d!570209 (not c!304064)) b!1866667))

(assert (= (and d!570209 res!835852) b!1866668))

(assert (= (and b!1866668 res!835853) b!1866669))

(assert (=> b!1866667 m!2291199))

(declare-fun m!2291785 () Bool)

(assert (=> b!1866667 m!2291785))

(declare-fun m!2291787 () Bool)

(assert (=> b!1866668 m!2291787))

(assert (=> b!1866668 m!2291197))

(declare-fun m!2291789 () Bool)

(assert (=> b!1866668 m!2291789))

(assert (=> b!1866668 m!2291199))

(declare-fun m!2291791 () Bool)

(assert (=> b!1866668 m!2291791))

(declare-fun m!2291793 () Bool)

(assert (=> d!570209 m!2291793))

(assert (=> d!570209 m!2291197))

(declare-fun m!2291795 () Bool)

(assert (=> d!570209 m!2291795))

(assert (=> d!570209 m!2291199))

(declare-fun m!2291797 () Bool)

(assert (=> d!570209 m!2291797))

(assert (=> b!1866339 d!570209))

(declare-fun d!570211 () Bool)

(declare-fun c!304065 () Bool)

(assert (=> d!570211 (= c!304065 ((_ is Empty!6874) (left!16664 (left!16664 (left!16664 t!4595)))))))

(declare-fun e!1191400 () List!20761)

(assert (=> d!570211 (= (list!8456 (left!16664 (left!16664 (left!16664 t!4595)))) e!1191400)))

(declare-fun b!1866671 () Bool)

(declare-fun e!1191401 () List!20761)

(assert (=> b!1866671 (= e!1191400 e!1191401)))

(declare-fun c!304066 () Bool)

(assert (=> b!1866671 (= c!304066 ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866670 () Bool)

(assert (=> b!1866670 (= e!1191400 Nil!20679)))

(declare-fun b!1866672 () Bool)

(assert (=> b!1866672 (= e!1191401 (list!8457 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866673 () Bool)

(assert (=> b!1866673 (= e!1191401 (++!5601 (list!8456 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) (list!8456 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(assert (= (and d!570211 c!304065) b!1866670))

(assert (= (and d!570211 (not c!304065)) b!1866671))

(assert (= (and b!1866671 c!304066) b!1866672))

(assert (= (and b!1866671 (not c!304066)) b!1866673))

(assert (=> b!1866672 m!2291663))

(declare-fun m!2291799 () Bool)

(assert (=> b!1866673 m!2291799))

(declare-fun m!2291801 () Bool)

(assert (=> b!1866673 m!2291801))

(assert (=> b!1866673 m!2291799))

(assert (=> b!1866673 m!2291801))

(declare-fun m!2291803 () Bool)

(assert (=> b!1866673 m!2291803))

(assert (=> b!1866339 d!570211))

(declare-fun d!570213 () Bool)

(declare-fun c!304067 () Bool)

(assert (=> d!570213 (= c!304067 ((_ is Empty!6874) (right!16994 (left!16664 (left!16664 t!4595)))))))

(declare-fun e!1191402 () List!20761)

(assert (=> d!570213 (= (list!8456 (right!16994 (left!16664 (left!16664 t!4595)))) e!1191402)))

(declare-fun b!1866675 () Bool)

(declare-fun e!1191403 () List!20761)

(assert (=> b!1866675 (= e!1191402 e!1191403)))

(declare-fun c!304068 () Bool)

(assert (=> b!1866675 (= c!304068 ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 t!4595)))))))

(declare-fun b!1866674 () Bool)

(assert (=> b!1866674 (= e!1191402 Nil!20679)))

(declare-fun b!1866676 () Bool)

(assert (=> b!1866676 (= e!1191403 (list!8457 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866677 () Bool)

(assert (=> b!1866677 (= e!1191403 (++!5601 (list!8456 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) (list!8456 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(assert (= (and d!570213 c!304067) b!1866674))

(assert (= (and d!570213 (not c!304067)) b!1866675))

(assert (= (and b!1866675 c!304068) b!1866676))

(assert (= (and b!1866675 (not c!304068)) b!1866677))

(assert (=> b!1866676 m!2291657))

(declare-fun m!2291805 () Bool)

(assert (=> b!1866677 m!2291805))

(declare-fun m!2291807 () Bool)

(assert (=> b!1866677 m!2291807))

(assert (=> b!1866677 m!2291805))

(assert (=> b!1866677 m!2291807))

(declare-fun m!2291809 () Bool)

(assert (=> b!1866677 m!2291809))

(assert (=> b!1866339 d!570213))

(declare-fun d!570215 () Bool)

(declare-fun c!304069 () Bool)

(assert (=> d!570215 (= c!304069 ((_ is Node!6874) (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun e!1191404 () Bool)

(assert (=> d!570215 (= (inv!27363 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) e!1191404)))

(declare-fun b!1866678 () Bool)

(assert (=> b!1866678 (= e!1191404 (inv!27365 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866679 () Bool)

(declare-fun e!1191405 () Bool)

(assert (=> b!1866679 (= e!1191404 e!1191405)))

(declare-fun res!835854 () Bool)

(assert (=> b!1866679 (= res!835854 (not ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(assert (=> b!1866679 (=> res!835854 e!1191405)))

(declare-fun b!1866680 () Bool)

(assert (=> b!1866680 (= e!1191405 (inv!27366 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!570215 c!304069) b!1866678))

(assert (= (and d!570215 (not c!304069)) b!1866679))

(assert (= (and b!1866679 (not res!835854)) b!1866680))

(declare-fun m!2291811 () Bool)

(assert (=> b!1866678 m!2291811))

(declare-fun m!2291813 () Bool)

(assert (=> b!1866680 m!2291813))

(assert (=> b!1866355 d!570215))

(declare-fun d!570217 () Bool)

(declare-fun c!304070 () Bool)

(assert (=> d!570217 (= c!304070 ((_ is Node!6874) (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun e!1191406 () Bool)

(assert (=> d!570217 (= (inv!27363 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))) e!1191406)))

(declare-fun b!1866681 () Bool)

(assert (=> b!1866681 (= e!1191406 (inv!27365 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866682 () Bool)

(declare-fun e!1191407 () Bool)

(assert (=> b!1866682 (= e!1191406 e!1191407)))

(declare-fun res!835855 () Bool)

(assert (=> b!1866682 (= res!835855 (not ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(assert (=> b!1866682 (=> res!835855 e!1191407)))

(declare-fun b!1866683 () Bool)

(assert (=> b!1866683 (= e!1191407 (inv!27366 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (= (and d!570217 c!304070) b!1866681))

(assert (= (and d!570217 (not c!304070)) b!1866682))

(assert (= (and b!1866682 (not res!835855)) b!1866683))

(declare-fun m!2291815 () Bool)

(assert (=> b!1866681 m!2291815))

(declare-fun m!2291817 () Bool)

(assert (=> b!1866683 m!2291817))

(assert (=> b!1866355 d!570217))

(declare-fun d!570219 () Bool)

(declare-fun c!304071 () Bool)

(assert (=> d!570219 (= c!304071 ((_ is Nil!20679) (t!172882 lt!718553)))))

(declare-fun e!1191408 () (InoxSet T!33130))

(assert (=> d!570219 (= (content!3076 (t!172882 lt!718553)) e!1191408)))

(declare-fun b!1866684 () Bool)

(assert (=> b!1866684 (= e!1191408 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866685 () Bool)

(assert (=> b!1866685 (= e!1191408 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (t!172882 lt!718553)) true) (content!3076 (t!172882 (t!172882 lt!718553)))))))

(assert (= (and d!570219 c!304071) b!1866684))

(assert (= (and d!570219 (not c!304071)) b!1866685))

(declare-fun m!2291819 () Bool)

(assert (=> b!1866685 m!2291819))

(declare-fun m!2291821 () Bool)

(assert (=> b!1866685 m!2291821))

(assert (=> b!1866277 d!570219))

(assert (=> b!1866329 d!570083))

(assert (=> b!1866329 d!570085))

(assert (=> b!1866127 d!569827))

(assert (=> b!1866127 d!569829))

(assert (=> d!569881 d!570173))

(assert (=> d!569881 d!570065))

(declare-fun d!570221 () Bool)

(declare-fun lt!718634 () Int)

(assert (=> d!570221 (>= lt!718634 0)))

(declare-fun e!1191409 () Int)

(assert (=> d!570221 (= lt!718634 e!1191409)))

(declare-fun c!304072 () Bool)

(assert (=> d!570221 (= c!304072 ((_ is Nil!20679) lt!718586))))

(assert (=> d!570221 (= (size!16386 lt!718586) lt!718634)))

(declare-fun b!1866686 () Bool)

(assert (=> b!1866686 (= e!1191409 0)))

(declare-fun b!1866687 () Bool)

(assert (=> b!1866687 (= e!1191409 (+ 1 (size!16386 (t!172882 lt!718586))))))

(assert (= (and d!570221 c!304072) b!1866686))

(assert (= (and d!570221 (not c!304072)) b!1866687))

(declare-fun m!2291823 () Bool)

(assert (=> b!1866687 m!2291823))

(assert (=> b!1866334 d!570221))

(declare-fun d!570223 () Bool)

(declare-fun lt!718635 () Int)

(assert (=> d!570223 (>= lt!718635 0)))

(declare-fun e!1191410 () Int)

(assert (=> d!570223 (= lt!718635 e!1191410)))

(declare-fun c!304073 () Bool)

(assert (=> d!570223 (= c!304073 ((_ is Nil!20679) (list!8456 (left!16664 (left!16664 t!4595)))))))

(assert (=> d!570223 (= (size!16386 (list!8456 (left!16664 (left!16664 t!4595)))) lt!718635)))

(declare-fun b!1866688 () Bool)

(assert (=> b!1866688 (= e!1191410 0)))

(declare-fun b!1866689 () Bool)

(assert (=> b!1866689 (= e!1191410 (+ 1 (size!16386 (t!172882 (list!8456 (left!16664 (left!16664 t!4595)))))))))

(assert (= (and d!570223 c!304073) b!1866688))

(assert (= (and d!570223 (not c!304073)) b!1866689))

(assert (=> b!1866689 m!2291685))

(assert (=> b!1866334 d!570223))

(declare-fun d!570225 () Bool)

(declare-fun lt!718636 () Int)

(assert (=> d!570225 (>= lt!718636 0)))

(declare-fun e!1191411 () Int)

(assert (=> d!570225 (= lt!718636 e!1191411)))

(declare-fun c!304074 () Bool)

(assert (=> d!570225 (= c!304074 ((_ is Nil!20679) (list!8456 (right!16994 (left!16664 t!4595)))))))

(assert (=> d!570225 (= (size!16386 (list!8456 (right!16994 (left!16664 t!4595)))) lt!718636)))

(declare-fun b!1866690 () Bool)

(assert (=> b!1866690 (= e!1191411 0)))

(declare-fun b!1866691 () Bool)

(assert (=> b!1866691 (= e!1191411 (+ 1 (size!16386 (t!172882 (list!8456 (right!16994 (left!16664 t!4595)))))))))

(assert (= (and d!570225 c!304074) b!1866690))

(assert (= (and d!570225 (not c!304074)) b!1866691))

(declare-fun m!2291825 () Bool)

(assert (=> b!1866691 m!2291825))

(assert (=> b!1866334 d!570225))

(declare-fun d!570227 () Bool)

(declare-fun lt!718637 () Int)

(assert (=> d!570227 (= lt!718637 (size!16386 (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570227 (= lt!718637 (ite ((_ is Empty!6874) (left!16664 (left!16664 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 t!4595)))) (csize!13979 (left!16664 (left!16664 (left!16664 t!4595)))) (csize!13978 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(assert (=> d!570227 (= (size!16388 (left!16664 (left!16664 (left!16664 t!4595)))) lt!718637)))

(declare-fun bs!411754 () Bool)

(assert (= bs!411754 d!570227))

(assert (=> bs!411754 m!2291197))

(assert (=> bs!411754 m!2291197))

(assert (=> bs!411754 m!2291789))

(assert (=> d!569895 d!570227))

(declare-fun d!570229 () Bool)

(declare-fun lt!718638 () Int)

(assert (=> d!570229 (= lt!718638 (size!16386 (list!8456 (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570229 (= lt!718638 (ite ((_ is Empty!6874) (right!16994 (left!16664 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 t!4595)))) (csize!13979 (right!16994 (left!16664 (left!16664 t!4595)))) (csize!13978 (right!16994 (left!16664 (left!16664 t!4595)))))))))

(assert (=> d!570229 (= (size!16388 (right!16994 (left!16664 (left!16664 t!4595)))) lt!718638)))

(declare-fun bs!411755 () Bool)

(assert (= bs!411755 d!570229))

(assert (=> bs!411755 m!2291199))

(assert (=> bs!411755 m!2291199))

(assert (=> bs!411755 m!2291791))

(assert (=> d!569895 d!570229))

(declare-fun d!570231 () Bool)

(declare-fun lt!718639 () Int)

(assert (=> d!570231 (>= lt!718639 0)))

(declare-fun e!1191412 () Int)

(assert (=> d!570231 (= lt!718639 e!1191412)))

(declare-fun c!304075 () Bool)

(assert (=> d!570231 (= c!304075 ((_ is Nil!20679) (t!172882 (list!8456 t!4595))))))

(assert (=> d!570231 (= (size!16386 (t!172882 (list!8456 t!4595))) lt!718639)))

(declare-fun b!1866692 () Bool)

(assert (=> b!1866692 (= e!1191412 0)))

(declare-fun b!1866693 () Bool)

(assert (=> b!1866693 (= e!1191412 (+ 1 (size!16386 (t!172882 (t!172882 (list!8456 t!4595))))))))

(assert (= (and d!570231 c!304075) b!1866692))

(assert (= (and d!570231 (not c!304075)) b!1866693))

(declare-fun m!2291827 () Bool)

(assert (=> b!1866693 m!2291827))

(assert (=> b!1866251 d!570231))

(declare-fun b!1866694 () Bool)

(declare-fun e!1191414 () Bool)

(assert (=> b!1866694 (= e!1191414 (not (isEmpty!12899 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866695 () Bool)

(declare-fun res!835861 () Bool)

(assert (=> b!1866695 (=> (not res!835861) (not e!1191414))))

(assert (=> b!1866695 (= res!835861 (isBalanced!2175 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866696 () Bool)

(declare-fun res!835857 () Bool)

(assert (=> b!1866696 (=> (not res!835857) (not e!1191414))))

(assert (=> b!1866696 (= res!835857 (isBalanced!2175 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866697 () Bool)

(declare-fun res!835858 () Bool)

(assert (=> b!1866697 (=> (not res!835858) (not e!1191414))))

(assert (=> b!1866697 (= res!835858 (<= (- (height!1061 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) 1))))

(declare-fun b!1866698 () Bool)

(declare-fun res!835860 () Bool)

(assert (=> b!1866698 (=> (not res!835860) (not e!1191414))))

(assert (=> b!1866698 (= res!835860 (not (isEmpty!12899 (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866699 () Bool)

(declare-fun e!1191413 () Bool)

(assert (=> b!1866699 (= e!1191413 e!1191414)))

(declare-fun res!835859 () Bool)

(assert (=> b!1866699 (=> (not res!835859) (not e!1191414))))

(assert (=> b!1866699 (= res!835859 (<= (- 1) (- (height!1061 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))))))))

(declare-fun d!570233 () Bool)

(declare-fun res!835856 () Bool)

(assert (=> d!570233 (=> res!835856 e!1191413)))

(assert (=> d!570233 (= res!835856 (not ((_ is Node!6874) (right!16994 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570233 (= (isBalanced!2175 (right!16994 (right!16994 (right!16994 t!4595)))) e!1191413)))

(assert (= (and d!570233 (not res!835856)) b!1866699))

(assert (= (and b!1866699 res!835859) b!1866697))

(assert (= (and b!1866697 res!835858) b!1866696))

(assert (= (and b!1866696 res!835857) b!1866695))

(assert (= (and b!1866695 res!835861) b!1866698))

(assert (= (and b!1866698 res!835860) b!1866694))

(declare-fun m!2291829 () Bool)

(assert (=> b!1866698 m!2291829))

(declare-fun m!2291831 () Bool)

(assert (=> b!1866695 m!2291831))

(declare-fun m!2291833 () Bool)

(assert (=> b!1866694 m!2291833))

(assert (=> b!1866699 m!2291771))

(assert (=> b!1866699 m!2291773))

(assert (=> b!1866697 m!2291771))

(assert (=> b!1866697 m!2291773))

(declare-fun m!2291835 () Bool)

(assert (=> b!1866696 m!2291835))

(assert (=> b!1866285 d!570233))

(assert (=> d!569927 d!570223))

(assert (=> d!569927 d!569921))

(declare-fun d!570235 () Bool)

(declare-fun lt!718640 () Bool)

(assert (=> d!570235 (= lt!718640 (isEmpty!12900 (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570235 (= lt!718640 (= (size!16388 (left!16664 (right!16994 (left!16664 t!4595)))) 0))))

(assert (=> d!570235 (= (isEmpty!12899 (left!16664 (right!16994 (left!16664 t!4595)))) lt!718640)))

(declare-fun bs!411756 () Bool)

(assert (= bs!411756 d!570235))

(assert (=> bs!411756 m!2291203))

(assert (=> bs!411756 m!2291203))

(declare-fun m!2291837 () Bool)

(assert (=> bs!411756 m!2291837))

(assert (=> bs!411756 m!2291109))

(assert (=> b!1866258 d!570235))

(declare-fun d!570237 () Bool)

(assert (=> d!570237 (= (max!0 (height!1061 (left!16664 (right!16994 (right!16994 t!4595)))) (height!1061 (right!16994 (right!16994 (right!16994 t!4595))))) (ite (< (height!1061 (left!16664 (right!16994 (right!16994 t!4595)))) (height!1061 (right!16994 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 t!4595)))) (height!1061 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (=> b!1866261 d!570237))

(assert (=> b!1866261 d!570079))

(assert (=> b!1866261 d!570081))

(declare-fun d!570239 () Bool)

(declare-fun c!304076 () Bool)

(assert (=> d!570239 (= c!304076 ((_ is Node!6874) (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun e!1191415 () Bool)

(assert (=> d!570239 (= (inv!27363 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) e!1191415)))

(declare-fun b!1866700 () Bool)

(assert (=> b!1866700 (= e!1191415 (inv!27365 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866701 () Bool)

(declare-fun e!1191416 () Bool)

(assert (=> b!1866701 (= e!1191415 e!1191416)))

(declare-fun res!835862 () Bool)

(assert (=> b!1866701 (= res!835862 (not ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(assert (=> b!1866701 (=> res!835862 e!1191416)))

(declare-fun b!1866702 () Bool)

(assert (=> b!1866702 (= e!1191416 (inv!27366 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!570239 c!304076) b!1866700))

(assert (= (and d!570239 (not c!304076)) b!1866701))

(assert (= (and b!1866701 (not res!835862)) b!1866702))

(declare-fun m!2291839 () Bool)

(assert (=> b!1866700 m!2291839))

(declare-fun m!2291841 () Bool)

(assert (=> b!1866702 m!2291841))

(assert (=> b!1866371 d!570239))

(declare-fun d!570241 () Bool)

(declare-fun c!304077 () Bool)

(assert (=> d!570241 (= c!304077 ((_ is Node!6874) (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun e!1191417 () Bool)

(assert (=> d!570241 (= (inv!27363 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))) e!1191417)))

(declare-fun b!1866703 () Bool)

(assert (=> b!1866703 (= e!1191417 (inv!27365 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866704 () Bool)

(declare-fun e!1191418 () Bool)

(assert (=> b!1866704 (= e!1191417 e!1191418)))

(declare-fun res!835863 () Bool)

(assert (=> b!1866704 (= res!835863 (not ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(assert (=> b!1866704 (=> res!835863 e!1191418)))

(declare-fun b!1866705 () Bool)

(assert (=> b!1866705 (= e!1191418 (inv!27366 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!570241 c!304077) b!1866703))

(assert (= (and d!570241 (not c!304077)) b!1866704))

(assert (= (and b!1866704 (not res!835863)) b!1866705))

(declare-fun m!2291843 () Bool)

(assert (=> b!1866703 m!2291843))

(declare-fun m!2291845 () Bool)

(assert (=> b!1866705 m!2291845))

(assert (=> b!1866371 d!570241))

(declare-fun d!570243 () Bool)

(declare-fun lt!718641 () Int)

(assert (=> d!570243 (>= lt!718641 0)))

(declare-fun e!1191419 () Int)

(assert (=> d!570243 (= lt!718641 e!1191419)))

(declare-fun c!304078 () Bool)

(assert (=> d!570243 (= c!304078 ((_ is Nil!20679) (list!8457 (xs!9756 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570243 (= (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 t!4595))))) lt!718641)))

(declare-fun b!1866706 () Bool)

(assert (=> b!1866706 (= e!1191419 0)))

(declare-fun b!1866707 () Bool)

(assert (=> b!1866707 (= e!1191419 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 (left!16664 (right!16994 t!4595))))))))))

(assert (= (and d!570243 c!304078) b!1866706))

(assert (= (and d!570243 (not c!304078)) b!1866707))

(declare-fun m!2291847 () Bool)

(assert (=> b!1866707 m!2291847))

(assert (=> b!1866230 d!570243))

(declare-fun d!570245 () Bool)

(assert (=> d!570245 (= (list!8457 (xs!9756 (left!16664 (right!16994 t!4595)))) (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595)))))))

(assert (=> b!1866230 d!570245))

(declare-fun b!1866709 () Bool)

(declare-fun e!1191420 () List!20761)

(assert (=> b!1866709 (= e!1191420 (Cons!20679 (h!26080 (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))) (++!5601 (t!172882 (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))) (list!8456 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866710 () Bool)

(declare-fun res!835865 () Bool)

(declare-fun e!1191421 () Bool)

(assert (=> b!1866710 (=> (not res!835865) (not e!1191421))))

(declare-fun lt!718642 () List!20761)

(assert (=> b!1866710 (= res!835865 (= (size!16386 lt!718642) (+ (size!16386 (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))) (size!16386 (list!8456 (right!16994 (right!16994 (right!16994 t!4595))))))))))

(declare-fun b!1866711 () Bool)

(assert (=> b!1866711 (= e!1191421 (or (not (= (list!8456 (right!16994 (right!16994 (right!16994 t!4595)))) Nil!20679)) (= lt!718642 (list!8456 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(declare-fun d!570247 () Bool)

(assert (=> d!570247 e!1191421))

(declare-fun res!835864 () Bool)

(assert (=> d!570247 (=> (not res!835864) (not e!1191421))))

(assert (=> d!570247 (= res!835864 (= (content!3076 lt!718642) ((_ map or) (content!3076 (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))) (content!3076 (list!8456 (right!16994 (right!16994 (right!16994 t!4595))))))))))

(assert (=> d!570247 (= lt!718642 e!1191420)))

(declare-fun c!304079 () Bool)

(assert (=> d!570247 (= c!304079 ((_ is Nil!20679) (list!8456 (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570247 (= (++!5601 (list!8456 (left!16664 (right!16994 (right!16994 t!4595)))) (list!8456 (right!16994 (right!16994 (right!16994 t!4595))))) lt!718642)))

(declare-fun b!1866708 () Bool)

(assert (=> b!1866708 (= e!1191420 (list!8456 (right!16994 (right!16994 (right!16994 t!4595)))))))

(assert (= (and d!570247 c!304079) b!1866708))

(assert (= (and d!570247 (not c!304079)) b!1866709))

(assert (= (and d!570247 res!835864) b!1866710))

(assert (= (and b!1866710 res!835865) b!1866711))

(assert (=> b!1866709 m!2291167))

(declare-fun m!2291849 () Bool)

(assert (=> b!1866709 m!2291849))

(declare-fun m!2291851 () Bool)

(assert (=> b!1866710 m!2291851))

(assert (=> b!1866710 m!2291165))

(assert (=> b!1866710 m!2291671))

(assert (=> b!1866710 m!2291167))

(assert (=> b!1866710 m!2291673))

(declare-fun m!2291853 () Bool)

(assert (=> d!570247 m!2291853))

(assert (=> d!570247 m!2291165))

(declare-fun m!2291855 () Bool)

(assert (=> d!570247 m!2291855))

(assert (=> d!570247 m!2291167))

(declare-fun m!2291857 () Bool)

(assert (=> d!570247 m!2291857))

(assert (=> b!1866323 d!570247))

(declare-fun d!570249 () Bool)

(declare-fun c!304080 () Bool)

(assert (=> d!570249 (= c!304080 ((_ is Empty!6874) (left!16664 (right!16994 (right!16994 t!4595)))))))

(declare-fun e!1191422 () List!20761)

(assert (=> d!570249 (= (list!8456 (left!16664 (right!16994 (right!16994 t!4595)))) e!1191422)))

(declare-fun b!1866713 () Bool)

(declare-fun e!1191423 () List!20761)

(assert (=> b!1866713 (= e!1191422 e!1191423)))

(declare-fun c!304081 () Bool)

(assert (=> b!1866713 (= c!304081 ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866712 () Bool)

(assert (=> b!1866712 (= e!1191422 Nil!20679)))

(declare-fun b!1866714 () Bool)

(assert (=> b!1866714 (= e!1191423 (list!8457 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866715 () Bool)

(assert (=> b!1866715 (= e!1191423 (++!5601 (list!8456 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) (list!8456 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(assert (= (and d!570249 c!304080) b!1866712))

(assert (= (and d!570249 (not c!304080)) b!1866713))

(assert (= (and b!1866713 c!304081) b!1866714))

(assert (= (and b!1866713 (not c!304081)) b!1866715))

(declare-fun m!2291859 () Bool)

(assert (=> b!1866714 m!2291859))

(declare-fun m!2291861 () Bool)

(assert (=> b!1866715 m!2291861))

(declare-fun m!2291863 () Bool)

(assert (=> b!1866715 m!2291863))

(assert (=> b!1866715 m!2291861))

(assert (=> b!1866715 m!2291863))

(declare-fun m!2291865 () Bool)

(assert (=> b!1866715 m!2291865))

(assert (=> b!1866323 d!570249))

(declare-fun d!570251 () Bool)

(declare-fun c!304082 () Bool)

(assert (=> d!570251 (= c!304082 ((_ is Empty!6874) (right!16994 (right!16994 (right!16994 t!4595)))))))

(declare-fun e!1191424 () List!20761)

(assert (=> d!570251 (= (list!8456 (right!16994 (right!16994 (right!16994 t!4595)))) e!1191424)))

(declare-fun b!1866717 () Bool)

(declare-fun e!1191425 () List!20761)

(assert (=> b!1866717 (= e!1191424 e!1191425)))

(declare-fun c!304083 () Bool)

(assert (=> b!1866717 (= c!304083 ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 t!4595)))))))

(declare-fun b!1866716 () Bool)

(assert (=> b!1866716 (= e!1191424 Nil!20679)))

(declare-fun b!1866718 () Bool)

(assert (=> b!1866718 (= e!1191425 (list!8457 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866719 () Bool)

(assert (=> b!1866719 (= e!1191425 (++!5601 (list!8456 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) (list!8456 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))))))

(assert (= (and d!570251 c!304082) b!1866716))

(assert (= (and d!570251 (not c!304082)) b!1866717))

(assert (= (and b!1866717 c!304083) b!1866718))

(assert (= (and b!1866717 (not c!304083)) b!1866719))

(assert (=> b!1866718 m!2291571))

(declare-fun m!2291867 () Bool)

(assert (=> b!1866719 m!2291867))

(declare-fun m!2291869 () Bool)

(assert (=> b!1866719 m!2291869))

(assert (=> b!1866719 m!2291867))

(assert (=> b!1866719 m!2291869))

(declare-fun m!2291871 () Bool)

(assert (=> b!1866719 m!2291871))

(assert (=> b!1866323 d!570251))

(declare-fun d!570253 () Bool)

(declare-fun res!835866 () Bool)

(declare-fun e!1191426 () Bool)

(assert (=> d!570253 (=> (not res!835866) (not e!1191426))))

(assert (=> d!570253 (= res!835866 (= (csize!13978 (right!16994 (right!16994 (left!16664 t!4595)))) (+ (size!16388 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) (size!16388 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))))))))

(assert (=> d!570253 (= (inv!27365 (right!16994 (right!16994 (left!16664 t!4595)))) e!1191426)))

(declare-fun b!1866720 () Bool)

(declare-fun res!835867 () Bool)

(assert (=> b!1866720 (=> (not res!835867) (not e!1191426))))

(assert (=> b!1866720 (= res!835867 (and (not (= (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))) Empty!6874)) (not (= (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))) Empty!6874))))))

(declare-fun b!1866721 () Bool)

(declare-fun res!835868 () Bool)

(assert (=> b!1866721 (=> (not res!835868) (not e!1191426))))

(assert (=> b!1866721 (= res!835868 (= (cheight!7085 (right!16994 (right!16994 (left!16664 t!4595)))) (+ (max!0 (height!1061 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) 1)))))

(declare-fun b!1866722 () Bool)

(assert (=> b!1866722 (= e!1191426 (<= 0 (cheight!7085 (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!570253 res!835866) b!1866720))

(assert (= (and b!1866720 res!835867) b!1866721))

(assert (= (and b!1866721 res!835868) b!1866722))

(declare-fun m!2291873 () Bool)

(assert (=> d!570253 m!2291873))

(declare-fun m!2291875 () Bool)

(assert (=> d!570253 m!2291875))

(declare-fun m!2291877 () Bool)

(assert (=> b!1866721 m!2291877))

(declare-fun m!2291879 () Bool)

(assert (=> b!1866721 m!2291879))

(assert (=> b!1866721 m!2291877))

(assert (=> b!1866721 m!2291879))

(declare-fun m!2291881 () Bool)

(assert (=> b!1866721 m!2291881))

(assert (=> b!1866296 d!570253))

(assert (=> d!569833 d!569825))

(assert (=> d!569833 d!569723))

(declare-fun d!570255 () Bool)

(declare-fun lt!718643 () Bool)

(assert (=> d!570255 (= lt!718643 (isEmpty!12900 (list!8456 (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570255 (= lt!718643 (= (size!16388 (right!16994 (left!16664 (right!16994 t!4595)))) 0))))

(assert (=> d!570255 (= (isEmpty!12899 (right!16994 (left!16664 (right!16994 t!4595)))) lt!718643)))

(declare-fun bs!411757 () Bool)

(assert (= bs!411757 d!570255))

(assert (=> bs!411757 m!2291161))

(assert (=> bs!411757 m!2291161))

(declare-fun m!2291883 () Bool)

(assert (=> bs!411757 m!2291883))

(assert (=> bs!411757 m!2291073))

(assert (=> b!1866224 d!570255))

(declare-fun d!570257 () Bool)

(assert (=> d!570257 (= (inv!27364 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595)))))) 2147483647))))

(declare-fun bs!411758 () Bool)

(assert (= bs!411758 d!570257))

(declare-fun m!2291885 () Bool)

(assert (=> bs!411758 m!2291885))

(assert (=> b!1866378 d!570257))

(declare-fun d!570259 () Bool)

(declare-fun res!835869 () Bool)

(declare-fun e!1191427 () Bool)

(assert (=> d!570259 (=> (not res!835869) (not e!1191427))))

(assert (=> d!570259 (= res!835869 (= (csize!13978 (left!16664 (right!16994 (left!16664 t!4595)))) (+ (size!16388 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) (size!16388 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))))))))

(assert (=> d!570259 (= (inv!27365 (left!16664 (right!16994 (left!16664 t!4595)))) e!1191427)))

(declare-fun b!1866723 () Bool)

(declare-fun res!835870 () Bool)

(assert (=> b!1866723 (=> (not res!835870) (not e!1191427))))

(assert (=> b!1866723 (= res!835870 (and (not (= (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))) Empty!6874)) (not (= (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))) Empty!6874))))))

(declare-fun b!1866724 () Bool)

(declare-fun res!835871 () Bool)

(assert (=> b!1866724 (=> (not res!835871) (not e!1191427))))

(assert (=> b!1866724 (= res!835871 (= (cheight!7085 (left!16664 (right!16994 (left!16664 t!4595)))) (+ (max!0 (height!1061 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) 1)))))

(declare-fun b!1866725 () Bool)

(assert (=> b!1866725 (= e!1191427 (<= 0 (cheight!7085 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (= (and d!570259 res!835869) b!1866723))

(assert (= (and b!1866723 res!835870) b!1866724))

(assert (= (and b!1866724 res!835871) b!1866725))

(declare-fun m!2291887 () Bool)

(assert (=> d!570259 m!2291887))

(declare-fun m!2291889 () Bool)

(assert (=> d!570259 m!2291889))

(assert (=> b!1866724 m!2291603))

(assert (=> b!1866724 m!2291605))

(assert (=> b!1866724 m!2291603))

(assert (=> b!1866724 m!2291605))

(declare-fun m!2291891 () Bool)

(assert (=> b!1866724 m!2291891))

(assert (=> b!1866293 d!570259))

(assert (=> d!569929 d!570225))

(assert (=> d!569929 d!569923))

(declare-fun d!570261 () Bool)

(declare-fun lt!718644 () Int)

(assert (=> d!570261 (>= lt!718644 0)))

(declare-fun e!1191428 () Int)

(assert (=> d!570261 (= lt!718644 e!1191428)))

(declare-fun c!304084 () Bool)

(assert (=> d!570261 (= c!304084 ((_ is Nil!20679) (t!172882 (list!8456 (right!16994 t!4595)))))))

(assert (=> d!570261 (= (size!16386 (t!172882 (list!8456 (right!16994 t!4595)))) lt!718644)))

(declare-fun b!1866726 () Bool)

(assert (=> b!1866726 (= e!1191428 0)))

(declare-fun b!1866727 () Bool)

(assert (=> b!1866727 (= e!1191428 (+ 1 (size!16386 (t!172882 (t!172882 (list!8456 (right!16994 t!4595)))))))))

(assert (= (and d!570261 c!304084) b!1866726))

(assert (= (and d!570261 (not c!304084)) b!1866727))

(declare-fun m!2291893 () Bool)

(assert (=> b!1866727 m!2291893))

(assert (=> b!1866239 d!570261))

(declare-fun b!1866729 () Bool)

(declare-fun e!1191429 () List!20761)

(assert (=> b!1866729 (= e!1191429 (Cons!20679 (h!26080 (t!172882 (list!8456 (left!16664 (right!16994 t!4595))))) (++!5601 (t!172882 (t!172882 (list!8456 (left!16664 (right!16994 t!4595))))) (list!8456 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866730 () Bool)

(declare-fun res!835873 () Bool)

(declare-fun e!1191430 () Bool)

(assert (=> b!1866730 (=> (not res!835873) (not e!1191430))))

(declare-fun lt!718645 () List!20761)

(assert (=> b!1866730 (= res!835873 (= (size!16386 lt!718645) (+ (size!16386 (t!172882 (list!8456 (left!16664 (right!16994 t!4595))))) (size!16386 (list!8456 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866731 () Bool)

(assert (=> b!1866731 (= e!1191430 (or (not (= (list!8456 (right!16994 (right!16994 t!4595))) Nil!20679)) (= lt!718645 (t!172882 (list!8456 (left!16664 (right!16994 t!4595)))))))))

(declare-fun d!570263 () Bool)

(assert (=> d!570263 e!1191430))

(declare-fun res!835872 () Bool)

(assert (=> d!570263 (=> (not res!835872) (not e!1191430))))

(assert (=> d!570263 (= res!835872 (= (content!3076 lt!718645) ((_ map or) (content!3076 (t!172882 (list!8456 (left!16664 (right!16994 t!4595))))) (content!3076 (list!8456 (right!16994 (right!16994 t!4595)))))))))

(assert (=> d!570263 (= lt!718645 e!1191429)))

(declare-fun c!304085 () Bool)

(assert (=> d!570263 (= c!304085 ((_ is Nil!20679) (t!172882 (list!8456 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570263 (= (++!5601 (t!172882 (list!8456 (left!16664 (right!16994 t!4595)))) (list!8456 (right!16994 (right!16994 t!4595)))) lt!718645)))

(declare-fun b!1866728 () Bool)

(assert (=> b!1866728 (= e!1191429 (list!8456 (right!16994 (right!16994 t!4595))))))

(assert (= (and d!570263 c!304085) b!1866728))

(assert (= (and d!570263 (not c!304085)) b!1866729))

(assert (= (and d!570263 res!835872) b!1866730))

(assert (= (and b!1866730 res!835873) b!1866731))

(assert (=> b!1866729 m!2290831))

(declare-fun m!2291895 () Bool)

(assert (=> b!1866729 m!2291895))

(declare-fun m!2291897 () Bool)

(assert (=> b!1866730 m!2291897))

(declare-fun m!2291899 () Bool)

(assert (=> b!1866730 m!2291899))

(assert (=> b!1866730 m!2290831))

(assert (=> b!1866730 m!2291095))

(declare-fun m!2291901 () Bool)

(assert (=> d!570263 m!2291901))

(declare-fun m!2291903 () Bool)

(assert (=> d!570263 m!2291903))

(assert (=> d!570263 m!2290831))

(assert (=> d!570263 m!2291157))

(assert (=> b!1866313 d!570263))

(declare-fun d!570265 () Bool)

(declare-fun lt!718646 () Int)

(assert (=> d!570265 (>= lt!718646 0)))

(declare-fun e!1191431 () Int)

(assert (=> d!570265 (= lt!718646 e!1191431)))

(declare-fun c!304086 () Bool)

(assert (=> d!570265 (= c!304086 ((_ is Nil!20679) (list!8456 (left!16664 (right!16994 t!4595)))))))

(assert (=> d!570265 (= (size!16386 (list!8456 (left!16664 (right!16994 t!4595)))) lt!718646)))

(declare-fun b!1866732 () Bool)

(assert (=> b!1866732 (= e!1191431 0)))

(declare-fun b!1866733 () Bool)

(assert (=> b!1866733 (= e!1191431 (+ 1 (size!16386 (t!172882 (list!8456 (left!16664 (right!16994 t!4595)))))))))

(assert (= (and d!570265 c!304086) b!1866732))

(assert (= (and d!570265 (not c!304086)) b!1866733))

(assert (=> b!1866733 m!2291899))

(assert (=> d!569877 d!570265))

(assert (=> d!569877 d!569907))

(assert (=> b!1866318 d!570245))

(assert (=> b!1866229 d!570127))

(assert (=> b!1866229 d!570129))

(declare-fun d!570267 () Bool)

(declare-fun lt!718647 () Int)

(assert (=> d!570267 (>= lt!718647 0)))

(declare-fun e!1191432 () Int)

(assert (=> d!570267 (= lt!718647 e!1191432)))

(declare-fun c!304087 () Bool)

(assert (=> d!570267 (= c!304087 ((_ is Nil!20679) (t!172882 (innerList!6934 (xs!9756 (left!16664 t!4595))))))))

(assert (=> d!570267 (= (size!16386 (t!172882 (innerList!6934 (xs!9756 (left!16664 t!4595))))) lt!718647)))

(declare-fun b!1866734 () Bool)

(assert (=> b!1866734 (= e!1191432 0)))

(declare-fun b!1866735 () Bool)

(assert (=> b!1866735 (= e!1191432 (+ 1 (size!16386 (t!172882 (t!172882 (innerList!6934 (xs!9756 (left!16664 t!4595))))))))))

(assert (= (and d!570267 c!304087) b!1866734))

(assert (= (and d!570267 (not c!304087)) b!1866735))

(declare-fun m!2291905 () Bool)

(assert (=> b!1866735 m!2291905))

(assert (=> b!1866271 d!570267))

(declare-fun d!570269 () Bool)

(declare-fun lt!718648 () Int)

(assert (=> d!570269 (>= lt!718648 0)))

(declare-fun e!1191433 () Int)

(assert (=> d!570269 (= lt!718648 e!1191433)))

(declare-fun c!304088 () Bool)

(assert (=> d!570269 (= c!304088 ((_ is Nil!20679) (t!172882 (list!8457 (xs!9756 (left!16664 t!4595))))))))

(assert (=> d!570269 (= (size!16386 (t!172882 (list!8457 (xs!9756 (left!16664 t!4595))))) lt!718648)))

(declare-fun b!1866736 () Bool)

(assert (=> b!1866736 (= e!1191433 0)))

(declare-fun b!1866737 () Bool)

(assert (=> b!1866737 (= e!1191433 (+ 1 (size!16386 (t!172882 (t!172882 (list!8457 (xs!9756 (left!16664 t!4595))))))))))

(assert (= (and d!570269 c!304088) b!1866736))

(assert (= (and d!570269 (not c!304088)) b!1866737))

(declare-fun m!2291907 () Bool)

(assert (=> b!1866737 m!2291907))

(assert (=> b!1866325 d!570269))

(declare-fun d!570271 () Bool)

(declare-fun lt!718649 () Bool)

(assert (=> d!570271 (= lt!718649 (isEmpty!12900 (list!8456 (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570271 (= lt!718649 (= (size!16388 (right!16994 (left!16664 (left!16664 t!4595)))) 0))))

(assert (=> d!570271 (= (isEmpty!12899 (right!16994 (left!16664 (left!16664 t!4595)))) lt!718649)))

(declare-fun bs!411759 () Bool)

(assert (= bs!411759 d!570271))

(assert (=> bs!411759 m!2291199))

(assert (=> bs!411759 m!2291199))

(declare-fun m!2291909 () Bool)

(assert (=> bs!411759 m!2291909))

(assert (=> bs!411759 m!2291125))

(assert (=> b!1866326 d!570271))

(declare-fun d!570273 () Bool)

(declare-fun lt!718650 () Int)

(assert (=> d!570273 (>= lt!718650 0)))

(declare-fun e!1191434 () Int)

(assert (=> d!570273 (= lt!718650 e!1191434)))

(declare-fun c!304089 () Bool)

(assert (=> d!570273 (= c!304089 ((_ is Nil!20679) (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570273 (= (size!16386 (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595))))) lt!718650)))

(declare-fun b!1866738 () Bool)

(assert (=> b!1866738 (= e!1191434 0)))

(declare-fun b!1866739 () Bool)

(assert (=> b!1866739 (= e!1191434 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595))))))))))

(assert (= (and d!570273 c!304089) b!1866738))

(assert (= (and d!570273 (not c!304089)) b!1866739))

(declare-fun m!2291911 () Bool)

(assert (=> b!1866739 m!2291911))

(assert (=> d!569817 d!570273))

(declare-fun d!570275 () Bool)

(assert (=> d!570275 (= (isEmpty!12900 (list!8456 (left!16664 (right!16994 t!4595)))) ((_ is Nil!20679) (list!8456 (left!16664 (right!16994 t!4595)))))))

(assert (=> d!569837 d!570275))

(assert (=> d!569837 d!569907))

(assert (=> d!569837 d!569877))

(declare-fun d!570277 () Bool)

(declare-fun c!304090 () Bool)

(assert (=> d!570277 (= c!304090 ((_ is Node!6874) (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun e!1191435 () Bool)

(assert (=> d!570277 (= (inv!27363 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) e!1191435)))

(declare-fun b!1866740 () Bool)

(assert (=> b!1866740 (= e!1191435 (inv!27365 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866741 () Bool)

(declare-fun e!1191436 () Bool)

(assert (=> b!1866741 (= e!1191435 e!1191436)))

(declare-fun res!835874 () Bool)

(assert (=> b!1866741 (= res!835874 (not ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(assert (=> b!1866741 (=> res!835874 e!1191436)))

(declare-fun b!1866742 () Bool)

(assert (=> b!1866742 (= e!1191436 (inv!27366 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!570277 c!304090) b!1866740))

(assert (= (and d!570277 (not c!304090)) b!1866741))

(assert (= (and b!1866741 (not res!835874)) b!1866742))

(declare-fun m!2291913 () Bool)

(assert (=> b!1866740 m!2291913))

(declare-fun m!2291915 () Bool)

(assert (=> b!1866742 m!2291915))

(assert (=> b!1866358 d!570277))

(declare-fun d!570279 () Bool)

(declare-fun c!304091 () Bool)

(assert (=> d!570279 (= c!304091 ((_ is Node!6874) (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun e!1191437 () Bool)

(assert (=> d!570279 (= (inv!27363 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))) e!1191437)))

(declare-fun b!1866743 () Bool)

(assert (=> b!1866743 (= e!1191437 (inv!27365 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))))))

(declare-fun b!1866744 () Bool)

(declare-fun e!1191438 () Bool)

(assert (=> b!1866744 (= e!1191437 e!1191438)))

(declare-fun res!835875 () Bool)

(assert (=> b!1866744 (= res!835875 (not ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))))))

(assert (=> b!1866744 (=> res!835875 e!1191438)))

(declare-fun b!1866745 () Bool)

(assert (=> b!1866745 (= e!1191438 (inv!27366 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!570279 c!304091) b!1866743))

(assert (= (and d!570279 (not c!304091)) b!1866744))

(assert (= (and b!1866744 (not res!835875)) b!1866745))

(declare-fun m!2291917 () Bool)

(assert (=> b!1866743 m!2291917))

(declare-fun m!2291919 () Bool)

(assert (=> b!1866745 m!2291919))

(assert (=> b!1866358 d!570279))

(declare-fun b!1866746 () Bool)

(declare-fun e!1191440 () Bool)

(assert (=> b!1866746 (= e!1191440 (not (isEmpty!12899 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(declare-fun b!1866747 () Bool)

(declare-fun res!835881 () Bool)

(assert (=> b!1866747 (=> (not res!835881) (not e!1191440))))

(assert (=> b!1866747 (= res!835881 (isBalanced!2175 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866748 () Bool)

(declare-fun res!835877 () Bool)

(assert (=> b!1866748 (=> (not res!835877) (not e!1191440))))

(assert (=> b!1866748 (= res!835877 (isBalanced!2175 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866749 () Bool)

(declare-fun res!835878 () Bool)

(assert (=> b!1866749 (=> (not res!835878) (not e!1191440))))

(assert (=> b!1866749 (= res!835878 (<= (- (height!1061 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) 1))))

(declare-fun b!1866750 () Bool)

(declare-fun res!835880 () Bool)

(assert (=> b!1866750 (=> (not res!835880) (not e!1191440))))

(assert (=> b!1866750 (= res!835880 (not (isEmpty!12899 (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(declare-fun b!1866751 () Bool)

(declare-fun e!1191439 () Bool)

(assert (=> b!1866751 (= e!1191439 e!1191440)))

(declare-fun res!835879 () Bool)

(assert (=> b!1866751 (=> (not res!835879) (not e!1191440))))

(assert (=> b!1866751 (= res!835879 (<= (- 1) (- (height!1061 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))))))))

(declare-fun d!570281 () Bool)

(declare-fun res!835876 () Bool)

(assert (=> d!570281 (=> res!835876 e!1191439)))

(assert (=> d!570281 (= res!835876 (not ((_ is Node!6874) (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570281 (= (isBalanced!2175 (right!16994 (left!16664 (right!16994 t!4595)))) e!1191439)))

(assert (= (and d!570281 (not res!835876)) b!1866751))

(assert (= (and b!1866751 res!835879) b!1866749))

(assert (= (and b!1866749 res!835878) b!1866748))

(assert (= (and b!1866748 res!835877) b!1866747))

(assert (= (and b!1866747 res!835881) b!1866750))

(assert (= (and b!1866750 res!835880) b!1866746))

(declare-fun m!2291921 () Bool)

(assert (=> b!1866750 m!2291921))

(declare-fun m!2291923 () Bool)

(assert (=> b!1866747 m!2291923))

(declare-fun m!2291925 () Bool)

(assert (=> b!1866746 m!2291925))

(declare-fun m!2291927 () Bool)

(assert (=> b!1866751 m!2291927))

(declare-fun m!2291929 () Bool)

(assert (=> b!1866751 m!2291929))

(assert (=> b!1866749 m!2291927))

(assert (=> b!1866749 m!2291929))

(declare-fun m!2291931 () Bool)

(assert (=> b!1866748 m!2291931))

(assert (=> b!1866225 d!570281))

(assert (=> b!1866130 d!569887))

(assert (=> b!1866130 d!569889))

(declare-fun d!570283 () Bool)

(declare-fun lt!718651 () Bool)

(assert (=> d!570283 (= lt!718651 (isEmpty!12900 (list!8456 (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570283 (= lt!718651 (= (size!16388 (right!16994 (right!16994 (left!16664 t!4595)))) 0))))

(assert (=> d!570283 (= (isEmpty!12899 (right!16994 (right!16994 (left!16664 t!4595)))) lt!718651)))

(declare-fun bs!411760 () Bool)

(assert (= bs!411760 d!570283))

(assert (=> bs!411760 m!2291205))

(assert (=> bs!411760 m!2291205))

(declare-fun m!2291933 () Bool)

(assert (=> bs!411760 m!2291933))

(assert (=> bs!411760 m!2291111))

(assert (=> b!1866254 d!570283))

(declare-fun d!570285 () Bool)

(declare-fun c!304092 () Bool)

(assert (=> d!570285 (= c!304092 ((_ is Nil!20679) lt!718583))))

(declare-fun e!1191441 () (InoxSet T!33130))

(assert (=> d!570285 (= (content!3076 lt!718583) e!1191441)))

(declare-fun b!1866752 () Bool)

(assert (=> b!1866752 (= e!1191441 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866753 () Bool)

(assert (=> b!1866753 (= e!1191441 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 lt!718583) true) (content!3076 (t!172882 lt!718583))))))

(assert (= (and d!570285 c!304092) b!1866752))

(assert (= (and d!570285 (not c!304092)) b!1866753))

(declare-fun m!2291935 () Bool)

(assert (=> b!1866753 m!2291935))

(declare-fun m!2291937 () Bool)

(assert (=> b!1866753 m!2291937))

(assert (=> d!569905 d!570285))

(declare-fun d!570287 () Bool)

(declare-fun c!304093 () Bool)

(assert (=> d!570287 (= c!304093 ((_ is Nil!20679) (list!8456 (left!16664 (right!16994 t!4595)))))))

(declare-fun e!1191442 () (InoxSet T!33130))

(assert (=> d!570287 (= (content!3076 (list!8456 (left!16664 (right!16994 t!4595)))) e!1191442)))

(declare-fun b!1866754 () Bool)

(assert (=> b!1866754 (= e!1191442 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866755 () Bool)

(assert (=> b!1866755 (= e!1191442 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (list!8456 (left!16664 (right!16994 t!4595)))) true) (content!3076 (t!172882 (list!8456 (left!16664 (right!16994 t!4595)))))))))

(assert (= (and d!570287 c!304093) b!1866754))

(assert (= (and d!570287 (not c!304093)) b!1866755))

(declare-fun m!2291939 () Bool)

(assert (=> b!1866755 m!2291939))

(assert (=> b!1866755 m!2291903))

(assert (=> d!569905 d!570287))

(declare-fun d!570289 () Bool)

(declare-fun c!304094 () Bool)

(assert (=> d!570289 (= c!304094 ((_ is Nil!20679) (list!8456 (right!16994 (right!16994 t!4595)))))))

(declare-fun e!1191443 () (InoxSet T!33130))

(assert (=> d!570289 (= (content!3076 (list!8456 (right!16994 (right!16994 t!4595)))) e!1191443)))

(declare-fun b!1866756 () Bool)

(assert (=> b!1866756 (= e!1191443 ((as const (Array T!33130 Bool)) false))))

(declare-fun b!1866757 () Bool)

(assert (=> b!1866757 (= e!1191443 ((_ map or) (store ((as const (Array T!33130 Bool)) false) (h!26080 (list!8456 (right!16994 (right!16994 t!4595)))) true) (content!3076 (t!172882 (list!8456 (right!16994 (right!16994 t!4595)))))))))

(assert (= (and d!570289 c!304094) b!1866756))

(assert (= (and d!570289 (not c!304094)) b!1866757))

(declare-fun m!2291941 () Bool)

(assert (=> b!1866757 m!2291941))

(declare-fun m!2291943 () Bool)

(assert (=> b!1866757 m!2291943))

(assert (=> d!569905 d!570289))

(declare-fun d!570291 () Bool)

(assert (=> d!570291 (= (inv!27364 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595)))))) 2147483647))))

(declare-fun bs!411761 () Bool)

(assert (= bs!411761 d!570291))

(declare-fun m!2291945 () Bool)

(assert (=> bs!411761 m!2291945))

(assert (=> b!1866356 d!570291))

(declare-fun d!570293 () Bool)

(declare-fun lt!718652 () Int)

(assert (=> d!570293 (>= lt!718652 0)))

(declare-fun e!1191444 () Int)

(assert (=> d!570293 (= lt!718652 e!1191444)))

(declare-fun c!304095 () Bool)

(assert (=> d!570293 (= c!304095 ((_ is Nil!20679) (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570293 (= (size!16386 (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595))))) lt!718652)))

(declare-fun b!1866758 () Bool)

(assert (=> b!1866758 (= e!1191444 0)))

(declare-fun b!1866759 () Bool)

(assert (=> b!1866759 (= e!1191444 (+ 1 (size!16386 (t!172882 (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595))))))))))

(assert (= (and d!570293 c!304095) b!1866758))

(assert (= (and d!570293 (not c!304095)) b!1866759))

(declare-fun m!2291947 () Bool)

(assert (=> b!1866759 m!2291947))

(assert (=> d!569865 d!570293))

(declare-fun d!570295 () Bool)

(assert (=> d!570295 (= (isEmpty!12900 (list!8456 (left!16664 (left!16664 t!4595)))) ((_ is Nil!20679) (list!8456 (left!16664 (left!16664 t!4595)))))))

(assert (=> d!569913 d!570295))

(assert (=> d!569913 d!569921))

(assert (=> d!569913 d!569927))

(assert (=> b!1866122 d!569899))

(assert (=> b!1866122 d!569901))

(declare-fun d!570297 () Bool)

(declare-fun lt!718653 () Bool)

(assert (=> d!570297 (= lt!718653 (isEmpty!12900 (list!8456 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570297 (= lt!718653 (= (size!16388 (left!16664 (left!16664 (left!16664 t!4595)))) 0))))

(assert (=> d!570297 (= (isEmpty!12899 (left!16664 (left!16664 (left!16664 t!4595)))) lt!718653)))

(declare-fun bs!411762 () Bool)

(assert (= bs!411762 d!570297))

(assert (=> bs!411762 m!2291197))

(assert (=> bs!411762 m!2291197))

(declare-fun m!2291949 () Bool)

(assert (=> bs!411762 m!2291949))

(assert (=> bs!411762 m!2291123))

(assert (=> b!1866330 d!570297))

(assert (=> d!569813 d!570243))

(assert (=> d!569813 d!570245))

(declare-fun d!570299 () Bool)

(declare-fun res!835882 () Bool)

(declare-fun e!1191445 () Bool)

(assert (=> d!570299 (=> (not res!835882) (not e!1191445))))

(assert (=> d!570299 (= res!835882 (= (csize!13978 (left!16664 (left!16664 (left!16664 t!4595)))) (+ (size!16388 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) (size!16388 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))))))))

(assert (=> d!570299 (= (inv!27365 (left!16664 (left!16664 (left!16664 t!4595)))) e!1191445)))

(declare-fun b!1866760 () Bool)

(declare-fun res!835883 () Bool)

(assert (=> b!1866760 (=> (not res!835883) (not e!1191445))))

(assert (=> b!1866760 (= res!835883 (and (not (= (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))) Empty!6874)) (not (= (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))) Empty!6874))))))

(declare-fun b!1866761 () Bool)

(declare-fun res!835884 () Bool)

(assert (=> b!1866761 (=> (not res!835884) (not e!1191445))))

(assert (=> b!1866761 (= res!835884 (= (cheight!7085 (left!16664 (left!16664 (left!16664 t!4595)))) (+ (max!0 (height!1061 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) 1)))))

(declare-fun b!1866762 () Bool)

(assert (=> b!1866762 (= e!1191445 (<= 0 (cheight!7085 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!570299 res!835882) b!1866760))

(assert (= (and b!1866760 res!835883) b!1866761))

(assert (= (and b!1866761 res!835884) b!1866762))

(declare-fun m!2291951 () Bool)

(assert (=> d!570299 m!2291951))

(declare-fun m!2291953 () Bool)

(assert (=> d!570299 m!2291953))

(assert (=> b!1866761 m!2291699))

(assert (=> b!1866761 m!2291701))

(assert (=> b!1866761 m!2291699))

(assert (=> b!1866761 m!2291701))

(declare-fun m!2291955 () Bool)

(assert (=> b!1866761 m!2291955))

(assert (=> b!1866240 d!570299))

(declare-fun d!570301 () Bool)

(declare-fun res!835885 () Bool)

(declare-fun e!1191446 () Bool)

(assert (=> d!570301 (=> (not res!835885) (not e!1191446))))

(assert (=> d!570301 (= res!835885 (= (csize!13978 (left!16664 (left!16664 (right!16994 t!4595)))) (+ (size!16388 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) (size!16388 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))))))))

(assert (=> d!570301 (= (inv!27365 (left!16664 (left!16664 (right!16994 t!4595)))) e!1191446)))

(declare-fun b!1866763 () Bool)

(declare-fun res!835886 () Bool)

(assert (=> b!1866763 (=> (not res!835886) (not e!1191446))))

(assert (=> b!1866763 (= res!835886 (and (not (= (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))) Empty!6874)) (not (= (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))) Empty!6874))))))

(declare-fun b!1866764 () Bool)

(declare-fun res!835887 () Bool)

(assert (=> b!1866764 (=> (not res!835887) (not e!1191446))))

(assert (=> b!1866764 (= res!835887 (= (cheight!7085 (left!16664 (left!16664 (right!16994 t!4595)))) (+ (max!0 (height!1061 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) 1)))))

(declare-fun b!1866765 () Bool)

(assert (=> b!1866765 (= e!1191446 (<= 0 (cheight!7085 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!570301 res!835885) b!1866763))

(assert (= (and b!1866763 res!835886) b!1866764))

(assert (= (and b!1866764 res!835887) b!1866765))

(declare-fun m!2291957 () Bool)

(assert (=> d!570301 m!2291957))

(declare-fun m!2291959 () Bool)

(assert (=> d!570301 m!2291959))

(assert (=> b!1866764 m!2291561))

(assert (=> b!1866764 m!2291563))

(assert (=> b!1866764 m!2291561))

(assert (=> b!1866764 m!2291563))

(declare-fun m!2291961 () Bool)

(assert (=> b!1866764 m!2291961))

(assert (=> b!1866344 d!570301))

(assert (=> d!569831 d!569823))

(assert (=> d!569831 d!569721))

(declare-fun b!1866766 () Bool)

(declare-fun e!1191448 () Bool)

(assert (=> b!1866766 (= e!1191448 (not (isEmpty!12899 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866767 () Bool)

(declare-fun res!835893 () Bool)

(assert (=> b!1866767 (=> (not res!835893) (not e!1191448))))

(assert (=> b!1866767 (= res!835893 (isBalanced!2175 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866768 () Bool)

(declare-fun res!835889 () Bool)

(assert (=> b!1866768 (=> (not res!835889) (not e!1191448))))

(assert (=> b!1866768 (= res!835889 (isBalanced!2175 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))))))

(declare-fun b!1866769 () Bool)

(declare-fun res!835890 () Bool)

(assert (=> b!1866769 (=> (not res!835890) (not e!1191448))))

(assert (=> b!1866769 (= res!835890 (<= (- (height!1061 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) 1))))

(declare-fun b!1866770 () Bool)

(declare-fun res!835892 () Bool)

(assert (=> b!1866770 (=> (not res!835892) (not e!1191448))))

(assert (=> b!1866770 (= res!835892 (not (isEmpty!12899 (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))))))

(declare-fun b!1866771 () Bool)

(declare-fun e!1191447 () Bool)

(assert (=> b!1866771 (= e!1191447 e!1191448)))

(declare-fun res!835891 () Bool)

(assert (=> b!1866771 (=> (not res!835891) (not e!1191448))))

(assert (=> b!1866771 (= res!835891 (<= (- 1) (- (height!1061 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) (height!1061 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))))))))

(declare-fun d!570303 () Bool)

(declare-fun res!835888 () Bool)

(assert (=> d!570303 (=> res!835888 e!1191447)))

(assert (=> d!570303 (= res!835888 (not ((_ is Node!6874) (left!16664 (right!16994 (right!16994 t!4595))))))))

(assert (=> d!570303 (= (isBalanced!2175 (left!16664 (right!16994 (right!16994 t!4595)))) e!1191447)))

(assert (= (and d!570303 (not res!835888)) b!1866771))

(assert (= (and b!1866771 res!835891) b!1866769))

(assert (= (and b!1866769 res!835890) b!1866768))

(assert (= (and b!1866768 res!835889) b!1866767))

(assert (= (and b!1866767 res!835893) b!1866770))

(assert (= (and b!1866770 res!835892) b!1866766))

(declare-fun m!2291963 () Bool)

(assert (=> b!1866770 m!2291963))

(declare-fun m!2291965 () Bool)

(assert (=> b!1866767 m!2291965))

(declare-fun m!2291967 () Bool)

(assert (=> b!1866766 m!2291967))

(assert (=> b!1866771 m!2291713))

(assert (=> b!1866771 m!2291715))

(assert (=> b!1866769 m!2291713))

(assert (=> b!1866769 m!2291715))

(declare-fun m!2291969 () Bool)

(assert (=> b!1866768 m!2291969))

(assert (=> b!1866286 d!570303))

(declare-fun d!570305 () Bool)

(declare-fun res!835894 () Bool)

(declare-fun e!1191449 () Bool)

(assert (=> d!570305 (=> (not res!835894) (not e!1191449))))

(assert (=> d!570305 (= res!835894 (<= (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595)))))) 512))))

(assert (=> d!570305 (= (inv!27366 (left!16664 (right!16994 (right!16994 t!4595)))) e!1191449)))

(declare-fun b!1866772 () Bool)

(declare-fun res!835895 () Bool)

(assert (=> b!1866772 (=> (not res!835895) (not e!1191449))))

(assert (=> b!1866772 (= res!835895 (= (csize!13979 (left!16664 (right!16994 (right!16994 t!4595)))) (size!16386 (list!8457 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595))))))))))

(declare-fun b!1866773 () Bool)

(assert (=> b!1866773 (= e!1191449 (and (> (csize!13979 (left!16664 (right!16994 (right!16994 t!4595)))) 0) (<= (csize!13979 (left!16664 (right!16994 (right!16994 t!4595)))) 512)))))

(assert (= (and d!570305 res!835894) b!1866772))

(assert (= (and b!1866772 res!835895) b!1866773))

(assert (=> d!570305 m!2291859))

(assert (=> d!570305 m!2291859))

(declare-fun m!2291971 () Bool)

(assert (=> d!570305 m!2291971))

(assert (=> b!1866772 m!2291859))

(assert (=> b!1866772 m!2291859))

(assert (=> b!1866772 m!2291971))

(assert (=> b!1866304 d!570305))

(assert (=> b!1866259 d!570117))

(assert (=> b!1866259 d!570119))

(declare-fun d!570307 () Bool)

(declare-fun lt!718654 () Int)

(assert (=> d!570307 (>= lt!718654 0)))

(declare-fun e!1191450 () Int)

(assert (=> d!570307 (= lt!718654 e!1191450)))

(declare-fun c!304096 () Bool)

(assert (=> d!570307 (= c!304096 ((_ is Nil!20679) (list!8457 (xs!9756 (left!16664 (left!16664 t!4595))))))))

(assert (=> d!570307 (= (size!16386 (list!8457 (xs!9756 (left!16664 (left!16664 t!4595))))) lt!718654)))

(declare-fun b!1866774 () Bool)

(assert (=> b!1866774 (= e!1191450 0)))

(declare-fun b!1866775 () Bool)

(assert (=> b!1866775 (= e!1191450 (+ 1 (size!16386 (t!172882 (list!8457 (xs!9756 (left!16664 (left!16664 t!4595))))))))))

(assert (= (and d!570307 c!304096) b!1866774))

(assert (= (and d!570307 (not c!304096)) b!1866775))

(declare-fun m!2291973 () Bool)

(assert (=> b!1866775 m!2291973))

(assert (=> d!569857 d!570307))

(assert (=> d!569857 d!570139))

(declare-fun d!570309 () Bool)

(assert (=> d!570309 (= (inv!27364 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595))))) (<= (size!16386 (innerList!6934 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595)))))) 2147483647))))

(declare-fun bs!411763 () Bool)

(assert (= bs!411763 d!570309))

(declare-fun m!2291975 () Bool)

(assert (=> bs!411763 m!2291975))

(assert (=> b!1866372 d!570309))

(declare-fun b!1866776 () Bool)

(declare-fun e!1191452 () Bool)

(assert (=> b!1866776 (= e!1191452 (not (isEmpty!12899 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866777 () Bool)

(declare-fun res!835901 () Bool)

(assert (=> b!1866777 (=> (not res!835901) (not e!1191452))))

(assert (=> b!1866777 (= res!835901 (isBalanced!2175 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866778 () Bool)

(declare-fun res!835897 () Bool)

(assert (=> b!1866778 (=> (not res!835897) (not e!1191452))))

(assert (=> b!1866778 (= res!835897 (isBalanced!2175 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))))))

(declare-fun b!1866779 () Bool)

(declare-fun res!835898 () Bool)

(assert (=> b!1866779 (=> (not res!835898) (not e!1191452))))

(assert (=> b!1866779 (= res!835898 (<= (- (height!1061 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) 1))))

(declare-fun b!1866780 () Bool)

(declare-fun res!835900 () Bool)

(assert (=> b!1866780 (=> (not res!835900) (not e!1191452))))

(assert (=> b!1866780 (= res!835900 (not (isEmpty!12899 (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(declare-fun b!1866781 () Bool)

(declare-fun e!1191451 () Bool)

(assert (=> b!1866781 (= e!1191451 e!1191452)))

(declare-fun res!835899 () Bool)

(assert (=> b!1866781 (=> (not res!835899) (not e!1191452))))

(assert (=> b!1866781 (= res!835899 (<= (- 1) (- (height!1061 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))))))))

(declare-fun d!570311 () Bool)

(declare-fun res!835896 () Bool)

(assert (=> d!570311 (=> res!835896 e!1191451)))

(assert (=> d!570311 (= res!835896 (not ((_ is Node!6874) (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570311 (= (isBalanced!2175 (right!16994 (right!16994 (left!16664 t!4595)))) e!1191451)))

(assert (= (and d!570311 (not res!835896)) b!1866781))

(assert (= (and b!1866781 res!835899) b!1866779))

(assert (= (and b!1866779 res!835898) b!1866778))

(assert (= (and b!1866778 res!835897) b!1866777))

(assert (= (and b!1866777 res!835901) b!1866780))

(assert (= (and b!1866780 res!835900) b!1866776))

(declare-fun m!2291977 () Bool)

(assert (=> b!1866780 m!2291977))

(declare-fun m!2291979 () Bool)

(assert (=> b!1866777 m!2291979))

(declare-fun m!2291981 () Bool)

(assert (=> b!1866776 m!2291981))

(assert (=> b!1866781 m!2291877))

(assert (=> b!1866781 m!2291879))

(assert (=> b!1866779 m!2291877))

(assert (=> b!1866779 m!2291879))

(declare-fun m!2291983 () Bool)

(assert (=> b!1866778 m!2291983))

(assert (=> b!1866255 d!570311))

(declare-fun d!570313 () Bool)

(assert (=> d!570313 (= (max!0 (height!1061 (left!16664 (left!16664 (left!16664 t!4595)))) (height!1061 (right!16994 (left!16664 (left!16664 t!4595))))) (ite (< (height!1061 (left!16664 (left!16664 (left!16664 t!4595)))) (height!1061 (right!16994 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (left!16664 (left!16664 t!4595)))) (height!1061 (left!16664 (left!16664 (left!16664 t!4595))))))))

(assert (=> b!1866300 d!570313))

(assert (=> b!1866300 d!570083))

(assert (=> b!1866300 d!570085))

(declare-fun d!570315 () Bool)

(declare-fun lt!718655 () Int)

(assert (=> d!570315 (= lt!718655 (size!16386 (list!8456 (left!16664 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570315 (= lt!718655 (ite ((_ is Empty!6874) (left!16664 (right!16994 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 t!4595)))) (csize!13979 (left!16664 (right!16994 (left!16664 t!4595)))) (csize!13978 (left!16664 (right!16994 (left!16664 t!4595)))))))))

(assert (=> d!570315 (= (size!16388 (left!16664 (right!16994 (left!16664 t!4595)))) lt!718655)))

(declare-fun bs!411764 () Bool)

(assert (= bs!411764 d!570315))

(assert (=> bs!411764 m!2291203))

(assert (=> bs!411764 m!2291203))

(assert (=> bs!411764 m!2291629))

(assert (=> d!569885 d!570315))

(declare-fun d!570317 () Bool)

(declare-fun lt!718656 () Int)

(assert (=> d!570317 (= lt!718656 (size!16386 (list!8456 (right!16994 (right!16994 (left!16664 t!4595))))))))

(assert (=> d!570317 (= lt!718656 (ite ((_ is Empty!6874) (right!16994 (right!16994 (left!16664 t!4595)))) 0 (ite ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 t!4595)))) (csize!13979 (right!16994 (right!16994 (left!16664 t!4595)))) (csize!13978 (right!16994 (right!16994 (left!16664 t!4595)))))))))

(assert (=> d!570317 (= (size!16388 (right!16994 (right!16994 (left!16664 t!4595)))) lt!718656)))

(declare-fun bs!411765 () Bool)

(assert (= bs!411765 d!570317))

(assert (=> bs!411765 m!2291205))

(assert (=> bs!411765 m!2291205))

(assert (=> bs!411765 m!2291631))

(assert (=> d!569885 d!570317))

(declare-fun d!570319 () Bool)

(declare-fun lt!718657 () Int)

(assert (=> d!570319 (>= lt!718657 0)))

(declare-fun e!1191453 () Int)

(assert (=> d!570319 (= lt!718657 e!1191453)))

(declare-fun c!304097 () Bool)

(assert (=> d!570319 (= c!304097 ((_ is Nil!20679) (t!172882 (innerList!6934 (xs!9756 (right!16994 t!4595))))))))

(assert (=> d!570319 (= (size!16386 (t!172882 (innerList!6934 (xs!9756 (right!16994 t!4595))))) lt!718657)))

(declare-fun b!1866782 () Bool)

(assert (=> b!1866782 (= e!1191453 0)))

(declare-fun b!1866783 () Bool)

(assert (=> b!1866783 (= e!1191453 (+ 1 (size!16386 (t!172882 (t!172882 (innerList!6934 (xs!9756 (right!16994 t!4595))))))))))

(assert (= (and d!570319 c!304097) b!1866782))

(assert (= (and d!570319 (not c!304097)) b!1866783))

(declare-fun m!2291985 () Bool)

(assert (=> b!1866783 m!2291985))

(assert (=> b!1866247 d!570319))

(declare-fun d!570321 () Bool)

(declare-fun res!835902 () Bool)

(declare-fun e!1191454 () Bool)

(assert (=> d!570321 (=> (not res!835902) (not e!1191454))))

(assert (=> d!570321 (= res!835902 (= (csize!13978 (right!16994 (left!16664 (left!16664 t!4595)))) (+ (size!16388 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) (size!16388 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))))))))

(assert (=> d!570321 (= (inv!27365 (right!16994 (left!16664 (left!16664 t!4595)))) e!1191454)))

(declare-fun b!1866784 () Bool)

(declare-fun res!835903 () Bool)

(assert (=> b!1866784 (=> (not res!835903) (not e!1191454))))

(assert (=> b!1866784 (= res!835903 (and (not (= (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))) Empty!6874)) (not (= (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))) Empty!6874))))))

(declare-fun b!1866785 () Bool)

(declare-fun res!835904 () Bool)

(assert (=> b!1866785 (=> (not res!835904) (not e!1191454))))

(assert (=> b!1866785 (= res!835904 (= (cheight!7085 (right!16994 (left!16664 (left!16664 t!4595)))) (+ (max!0 (height!1061 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) 1)))))

(declare-fun b!1866786 () Bool)

(assert (=> b!1866786 (= e!1191454 (<= 0 (cheight!7085 (right!16994 (left!16664 (left!16664 t!4595))))))))

(assert (= (and d!570321 res!835902) b!1866784))

(assert (= (and b!1866784 res!835903) b!1866785))

(assert (= (and b!1866785 res!835904) b!1866786))

(declare-fun m!2291987 () Bool)

(assert (=> d!570321 m!2291987))

(declare-fun m!2291989 () Bool)

(assert (=> d!570321 m!2291989))

(assert (=> b!1866785 m!2291545))

(assert (=> b!1866785 m!2291547))

(assert (=> b!1866785 m!2291545))

(assert (=> b!1866785 m!2291547))

(declare-fun m!2291991 () Bool)

(assert (=> b!1866785 m!2291991))

(assert (=> b!1866243 d!570321))

(declare-fun d!570323 () Bool)

(declare-fun res!835905 () Bool)

(declare-fun e!1191455 () Bool)

(assert (=> d!570323 (=> (not res!835905) (not e!1191455))))

(assert (=> d!570323 (= res!835905 (= (csize!13978 (right!16994 (left!16664 (right!16994 t!4595)))) (+ (size!16388 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) (size!16388 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))))))))

(assert (=> d!570323 (= (inv!27365 (right!16994 (left!16664 (right!16994 t!4595)))) e!1191455)))

(declare-fun b!1866787 () Bool)

(declare-fun res!835906 () Bool)

(assert (=> b!1866787 (=> (not res!835906) (not e!1191455))))

(assert (=> b!1866787 (= res!835906 (and (not (= (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))) Empty!6874)) (not (= (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))) Empty!6874))))))

(declare-fun b!1866788 () Bool)

(declare-fun res!835907 () Bool)

(assert (=> b!1866788 (=> (not res!835907) (not e!1191455))))

(assert (=> b!1866788 (= res!835907 (= (cheight!7085 (right!16994 (left!16664 (right!16994 t!4595)))) (+ (max!0 (height!1061 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) (height!1061 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) 1)))))

(declare-fun b!1866789 () Bool)

(assert (=> b!1866789 (= e!1191455 (<= 0 (cheight!7085 (right!16994 (left!16664 (right!16994 t!4595))))))))

(assert (= (and d!570323 res!835905) b!1866787))

(assert (= (and b!1866787 res!835906) b!1866788))

(assert (= (and b!1866788 res!835907) b!1866789))

(declare-fun m!2291993 () Bool)

(assert (=> d!570323 m!2291993))

(declare-fun m!2291995 () Bool)

(assert (=> d!570323 m!2291995))

(assert (=> b!1866788 m!2291927))

(assert (=> b!1866788 m!2291929))

(assert (=> b!1866788 m!2291927))

(assert (=> b!1866788 m!2291929))

(declare-fun m!2291997 () Bool)

(assert (=> b!1866788 m!2291997))

(assert (=> b!1866347 d!570323))

(assert (=> b!1866265 d!570307))

(assert (=> b!1866265 d!570139))

(assert (=> b!1866279 d!570171))

(declare-fun d!570325 () Bool)

(declare-fun lt!718658 () Int)

(assert (=> d!570325 (>= lt!718658 0)))

(declare-fun e!1191456 () Int)

(assert (=> d!570325 (= lt!718658 e!1191456)))

(declare-fun c!304098 () Bool)

(assert (=> d!570325 (= c!304098 ((_ is Nil!20679) lt!718583))))

(assert (=> d!570325 (= (size!16386 lt!718583) lt!718658)))

(declare-fun b!1866790 () Bool)

(assert (=> b!1866790 (= e!1191456 0)))

(declare-fun b!1866791 () Bool)

(assert (=> b!1866791 (= e!1191456 (+ 1 (size!16386 (t!172882 lt!718583))))))

(assert (= (and d!570325 c!304098) b!1866790))

(assert (= (and d!570325 (not c!304098)) b!1866791))

(declare-fun m!2291999 () Bool)

(assert (=> b!1866791 m!2291999))

(assert (=> b!1866314 d!570325))

(assert (=> b!1866314 d!570265))

(assert (=> b!1866314 d!570075))

(declare-fun b!1866793 () Bool)

(declare-fun e!1191457 () List!20761)

(assert (=> b!1866793 (= e!1191457 (Cons!20679 (h!26080 (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))) (++!5601 (t!172882 (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))) (list!8456 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(declare-fun b!1866794 () Bool)

(declare-fun res!835909 () Bool)

(declare-fun e!1191458 () Bool)

(assert (=> b!1866794 (=> (not res!835909) (not e!1191458))))

(declare-fun lt!718659 () List!20761)

(assert (=> b!1866794 (= res!835909 (= (size!16386 lt!718659) (+ (size!16386 (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))) (size!16386 (list!8456 (right!16994 (left!16664 (right!16994 t!4595))))))))))

(declare-fun b!1866795 () Bool)

(assert (=> b!1866795 (= e!1191458 (or (not (= (list!8456 (right!16994 (left!16664 (right!16994 t!4595)))) Nil!20679)) (= lt!718659 (list!8456 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(declare-fun d!570327 () Bool)

(assert (=> d!570327 e!1191458))

(declare-fun res!835908 () Bool)

(assert (=> d!570327 (=> (not res!835908) (not e!1191458))))

(assert (=> d!570327 (= res!835908 (= (content!3076 lt!718659) ((_ map or) (content!3076 (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))) (content!3076 (list!8456 (right!16994 (left!16664 (right!16994 t!4595))))))))))

(assert (=> d!570327 (= lt!718659 e!1191457)))

(declare-fun c!304099 () Bool)

(assert (=> d!570327 (= c!304099 ((_ is Nil!20679) (list!8456 (left!16664 (left!16664 (right!16994 t!4595))))))))

(assert (=> d!570327 (= (++!5601 (list!8456 (left!16664 (left!16664 (right!16994 t!4595)))) (list!8456 (right!16994 (left!16664 (right!16994 t!4595))))) lt!718659)))

(declare-fun b!1866792 () Bool)

(assert (=> b!1866792 (= e!1191457 (list!8456 (right!16994 (left!16664 (right!16994 t!4595)))))))

(assert (= (and d!570327 c!304099) b!1866792))

(assert (= (and d!570327 (not c!304099)) b!1866793))

(assert (= (and d!570327 res!835908) b!1866794))

(assert (= (and b!1866794 res!835909) b!1866795))

(assert (=> b!1866793 m!2291161))

(declare-fun m!2292001 () Bool)

(assert (=> b!1866793 m!2292001))

(declare-fun m!2292003 () Bool)

(assert (=> b!1866794 m!2292003))

(assert (=> b!1866794 m!2291159))

(assert (=> b!1866794 m!2291575))

(assert (=> b!1866794 m!2291161))

(assert (=> b!1866794 m!2291577))

(declare-fun m!2292005 () Bool)

(assert (=> d!570327 m!2292005))

(assert (=> d!570327 m!2291159))

(declare-fun m!2292007 () Bool)

(assert (=> d!570327 m!2292007))

(assert (=> d!570327 m!2291161))

(declare-fun m!2292009 () Bool)

(assert (=> d!570327 m!2292009))

(assert (=> b!1866319 d!570327))

(declare-fun d!570329 () Bool)

(declare-fun c!304100 () Bool)

(assert (=> d!570329 (= c!304100 ((_ is Empty!6874) (left!16664 (left!16664 (right!16994 t!4595)))))))

(declare-fun e!1191459 () List!20761)

(assert (=> d!570329 (= (list!8456 (left!16664 (left!16664 (right!16994 t!4595)))) e!1191459)))

(declare-fun b!1866797 () Bool)

(declare-fun e!1191460 () List!20761)

(assert (=> b!1866797 (= e!1191459 e!1191460)))

(declare-fun c!304101 () Bool)

(assert (=> b!1866797 (= c!304101 ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866796 () Bool)

(assert (=> b!1866796 (= e!1191459 Nil!20679)))

(declare-fun b!1866798 () Bool)

(assert (=> b!1866798 (= e!1191460 (list!8457 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866799 () Bool)

(assert (=> b!1866799 (= e!1191460 (++!5601 (list!8456 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) (list!8456 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))))))

(assert (= (and d!570329 c!304100) b!1866796))

(assert (= (and d!570329 (not c!304100)) b!1866797))

(assert (= (and b!1866797 c!304101) b!1866798))

(assert (= (and b!1866797 (not c!304101)) b!1866799))

(assert (=> b!1866798 m!2291667))

(declare-fun m!2292011 () Bool)

(assert (=> b!1866799 m!2292011))

(declare-fun m!2292013 () Bool)

(assert (=> b!1866799 m!2292013))

(assert (=> b!1866799 m!2292011))

(assert (=> b!1866799 m!2292013))

(declare-fun m!2292015 () Bool)

(assert (=> b!1866799 m!2292015))

(assert (=> b!1866319 d!570329))

(declare-fun d!570331 () Bool)

(declare-fun c!304102 () Bool)

(assert (=> d!570331 (= c!304102 ((_ is Empty!6874) (right!16994 (left!16664 (right!16994 t!4595)))))))

(declare-fun e!1191461 () List!20761)

(assert (=> d!570331 (= (list!8456 (right!16994 (left!16664 (right!16994 t!4595)))) e!1191461)))

(declare-fun b!1866801 () Bool)

(declare-fun e!1191462 () List!20761)

(assert (=> b!1866801 (= e!1191461 e!1191462)))

(declare-fun c!304103 () Bool)

(assert (=> b!1866801 (= c!304103 ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 t!4595)))))))

(declare-fun b!1866800 () Bool)

(assert (=> b!1866800 (= e!1191461 Nil!20679)))

(declare-fun b!1866802 () Bool)

(assert (=> b!1866802 (= e!1191462 (list!8457 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595))))))))

(declare-fun b!1866803 () Bool)

(assert (=> b!1866803 (= e!1191462 (++!5601 (list!8456 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) (list!8456 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))))))

(assert (= (and d!570331 c!304102) b!1866800))

(assert (= (and d!570331 (not c!304102)) b!1866801))

(assert (= (and b!1866801 c!304103) b!1866802))

(assert (= (and b!1866801 (not c!304103)) b!1866803))

(assert (=> b!1866802 m!2291653))

(declare-fun m!2292017 () Bool)

(assert (=> b!1866803 m!2292017))

(declare-fun m!2292019 () Bool)

(assert (=> b!1866803 m!2292019))

(assert (=> b!1866803 m!2292017))

(assert (=> b!1866803 m!2292019))

(declare-fun m!2292021 () Bool)

(assert (=> b!1866803 m!2292021))

(assert (=> b!1866319 d!570331))

(declare-fun b!1866804 () Bool)

(declare-fun e!1191463 () Bool)

(declare-fun tp!531399 () Bool)

(assert (=> b!1866804 (= e!1191463 (and tp_is_empty!8667 tp!531399))))

(assert (=> b!1866373 (= tp!531359 e!1191463)))

(assert (= (and b!1866373 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 (right!16994 (left!16664 t!4595))))))) b!1866804))

(declare-fun e!1191464 () Bool)

(declare-fun b!1866805 () Bool)

(declare-fun tp!531402 () Bool)

(declare-fun tp!531400 () Bool)

(assert (=> b!1866805 (= e!1191464 (and (inv!27363 (left!16664 (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))) tp!531402 (inv!27363 (right!16994 (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))) tp!531400))))

(declare-fun b!1866807 () Bool)

(declare-fun e!1191465 () Bool)

(declare-fun tp!531401 () Bool)

(assert (=> b!1866807 (= e!1191465 tp!531401)))

(declare-fun b!1866806 () Bool)

(assert (=> b!1866806 (= e!1191464 (and (inv!27364 (xs!9756 (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))) e!1191465))))

(assert (=> b!1866361 (= tp!531350 (and (inv!27363 (left!16664 (right!16994 (left!16664 (left!16664 t!4595))))) e!1191464))))

(assert (= (and b!1866361 ((_ is Node!6874) (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))) b!1866805))

(assert (= b!1866806 b!1866807))

(assert (= (and b!1866361 ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 (left!16664 t!4595)))))) b!1866806))

(declare-fun m!2292023 () Bool)

(assert (=> b!1866805 m!2292023))

(declare-fun m!2292025 () Bool)

(assert (=> b!1866805 m!2292025))

(declare-fun m!2292027 () Bool)

(assert (=> b!1866806 m!2292027))

(assert (=> b!1866361 m!2291235))

(declare-fun e!1191466 () Bool)

(declare-fun b!1866808 () Bool)

(declare-fun tp!531403 () Bool)

(declare-fun tp!531405 () Bool)

(assert (=> b!1866808 (= e!1191466 (and (inv!27363 (left!16664 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) tp!531405 (inv!27363 (right!16994 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) tp!531403))))

(declare-fun b!1866810 () Bool)

(declare-fun e!1191467 () Bool)

(declare-fun tp!531404 () Bool)

(assert (=> b!1866810 (= e!1191467 tp!531404)))

(declare-fun b!1866809 () Bool)

(assert (=> b!1866809 (= e!1191466 (and (inv!27364 (xs!9756 (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) e!1191467))))

(assert (=> b!1866361 (= tp!531348 (and (inv!27363 (right!16994 (right!16994 (left!16664 (left!16664 t!4595))))) e!1191466))))

(assert (= (and b!1866361 ((_ is Node!6874) (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) b!1866808))

(assert (= b!1866809 b!1866810))

(assert (= (and b!1866361 ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 (left!16664 t!4595)))))) b!1866809))

(declare-fun m!2292029 () Bool)

(assert (=> b!1866808 m!2292029))

(declare-fun m!2292031 () Bool)

(assert (=> b!1866808 m!2292031))

(declare-fun m!2292033 () Bool)

(assert (=> b!1866809 m!2292033))

(assert (=> b!1866361 m!2291237))

(declare-fun b!1866811 () Bool)

(declare-fun e!1191468 () Bool)

(declare-fun tp!531406 () Bool)

(assert (=> b!1866811 (= e!1191468 (and tp_is_empty!8667 tp!531406))))

(assert (=> b!1866360 (= tp!531346 e!1191468)))

(assert (= (and b!1866360 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 (left!16664 (left!16664 t!4595))))))) b!1866811))

(declare-fun b!1866812 () Bool)

(declare-fun e!1191469 () Bool)

(declare-fun tp!531407 () Bool)

(assert (=> b!1866812 (= e!1191469 (and tp_is_empty!8667 tp!531407))))

(assert (=> b!1866367 (= tp!531354 e!1191469)))

(assert (= (and b!1866367 ((_ is Cons!20679) (t!172882 (t!172882 (innerList!6934 (xs!9756 (right!16994 t!4595))))))) b!1866812))

(declare-fun tp!531410 () Bool)

(declare-fun b!1866813 () Bool)

(declare-fun tp!531408 () Bool)

(declare-fun e!1191470 () Bool)

(assert (=> b!1866813 (= e!1191470 (and (inv!27363 (left!16664 (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))) tp!531410 (inv!27363 (right!16994 (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))) tp!531408))))

(declare-fun b!1866815 () Bool)

(declare-fun e!1191471 () Bool)

(declare-fun tp!531409 () Bool)

(assert (=> b!1866815 (= e!1191471 tp!531409)))

(declare-fun b!1866814 () Bool)

(assert (=> b!1866814 (= e!1191470 (and (inv!27364 (xs!9756 (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))) e!1191471))))

(assert (=> b!1866358 (= tp!531347 (and (inv!27363 (left!16664 (left!16664 (left!16664 (left!16664 t!4595))))) e!1191470))))

(assert (= (and b!1866358 ((_ is Node!6874) (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))) b!1866813))

(assert (= b!1866814 b!1866815))

(assert (= (and b!1866358 ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 (left!16664 t!4595)))))) b!1866814))

(declare-fun m!2292035 () Bool)

(assert (=> b!1866813 m!2292035))

(declare-fun m!2292037 () Bool)

(assert (=> b!1866813 m!2292037))

(declare-fun m!2292039 () Bool)

(assert (=> b!1866814 m!2292039))

(assert (=> b!1866358 m!2291229))

(declare-fun tp!531413 () Bool)

(declare-fun b!1866816 () Bool)

(declare-fun e!1191472 () Bool)

(declare-fun tp!531411 () Bool)

(assert (=> b!1866816 (= e!1191472 (and (inv!27363 (left!16664 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) tp!531413 (inv!27363 (right!16994 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) tp!531411))))

(declare-fun b!1866818 () Bool)

(declare-fun e!1191473 () Bool)

(declare-fun tp!531412 () Bool)

(assert (=> b!1866818 (= e!1191473 tp!531412)))

(declare-fun b!1866817 () Bool)

(assert (=> b!1866817 (= e!1191472 (and (inv!27364 (xs!9756 (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) e!1191473))))

(assert (=> b!1866358 (= tp!531345 (and (inv!27363 (right!16994 (left!16664 (left!16664 (left!16664 t!4595))))) e!1191472))))

(assert (= (and b!1866358 ((_ is Node!6874) (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) b!1866816))

(assert (= b!1866817 b!1866818))

(assert (= (and b!1866358 ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 (left!16664 t!4595)))))) b!1866817))

(declare-fun m!2292041 () Bool)

(assert (=> b!1866816 m!2292041))

(declare-fun m!2292043 () Bool)

(assert (=> b!1866816 m!2292043))

(declare-fun m!2292045 () Bool)

(assert (=> b!1866817 m!2292045))

(assert (=> b!1866358 m!2291231))

(declare-fun b!1866819 () Bool)

(declare-fun e!1191474 () Bool)

(declare-fun tp!531416 () Bool)

(declare-fun tp!531414 () Bool)

(assert (=> b!1866819 (= e!1191474 (and (inv!27363 (left!16664 (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))) tp!531416 (inv!27363 (right!16994 (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))) tp!531414))))

(declare-fun b!1866821 () Bool)

(declare-fun e!1191475 () Bool)

(declare-fun tp!531415 () Bool)

(assert (=> b!1866821 (= e!1191475 tp!531415)))

(declare-fun b!1866820 () Bool)

(assert (=> b!1866820 (= e!1191474 (and (inv!27364 (xs!9756 (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))) e!1191475))))

(assert (=> b!1866371 (= tp!531360 (and (inv!27363 (left!16664 (right!16994 (right!16994 (left!16664 t!4595))))) e!1191474))))

(assert (= (and b!1866371 ((_ is Node!6874) (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))) b!1866819))

(assert (= b!1866820 b!1866821))

(assert (= (and b!1866371 ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 (left!16664 t!4595)))))) b!1866820))

(declare-fun m!2292047 () Bool)

(assert (=> b!1866819 m!2292047))

(declare-fun m!2292049 () Bool)

(assert (=> b!1866819 m!2292049))

(declare-fun m!2292051 () Bool)

(assert (=> b!1866820 m!2292051))

(assert (=> b!1866371 m!2291247))

(declare-fun e!1191476 () Bool)

(declare-fun tp!531419 () Bool)

(declare-fun b!1866822 () Bool)

(declare-fun tp!531417 () Bool)

(assert (=> b!1866822 (= e!1191476 (and (inv!27363 (left!16664 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) tp!531419 (inv!27363 (right!16994 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) tp!531417))))

(declare-fun b!1866824 () Bool)

(declare-fun e!1191477 () Bool)

(declare-fun tp!531418 () Bool)

(assert (=> b!1866824 (= e!1191477 tp!531418)))

(declare-fun b!1866823 () Bool)

(assert (=> b!1866823 (= e!1191476 (and (inv!27364 (xs!9756 (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) e!1191477))))

(assert (=> b!1866371 (= tp!531358 (and (inv!27363 (right!16994 (right!16994 (right!16994 (left!16664 t!4595))))) e!1191476))))

(assert (= (and b!1866371 ((_ is Node!6874) (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) b!1866822))

(assert (= b!1866823 b!1866824))

(assert (= (and b!1866371 ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 (left!16664 t!4595)))))) b!1866823))

(declare-fun m!2292053 () Bool)

(assert (=> b!1866822 m!2292053))

(declare-fun m!2292055 () Bool)

(assert (=> b!1866822 m!2292055))

(declare-fun m!2292057 () Bool)

(assert (=> b!1866823 m!2292057))

(assert (=> b!1866371 m!2291249))

(declare-fun b!1866825 () Bool)

(declare-fun e!1191478 () Bool)

(declare-fun tp!531420 () Bool)

(assert (=> b!1866825 (= e!1191478 (and tp_is_empty!8667 tp!531420))))

(assert (=> b!1866357 (= tp!531343 e!1191478)))

(assert (= (and b!1866357 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 (right!16994 (right!16994 t!4595))))))) b!1866825))

(declare-fun b!1866826 () Bool)

(declare-fun e!1191479 () Bool)

(declare-fun tp!531421 () Bool)

(assert (=> b!1866826 (= e!1191479 (and tp_is_empty!8667 tp!531421))))

(assert (=> b!1866379 (= tp!531365 e!1191479)))

(assert (= (and b!1866379 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 (left!16664 (right!16994 t!4595))))))) b!1866826))

(declare-fun b!1866827 () Bool)

(declare-fun e!1191480 () Bool)

(declare-fun tp!531422 () Bool)

(assert (=> b!1866827 (= e!1191480 (and tp_is_empty!8667 tp!531422))))

(assert (=> b!1866370 (= tp!531356 e!1191480)))

(assert (= (and b!1866370 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 (right!16994 (left!16664 t!4595))))))) b!1866827))

(declare-fun b!1866828 () Bool)

(declare-fun e!1191481 () Bool)

(declare-fun tp!531423 () Bool)

(assert (=> b!1866828 (= e!1191481 (and tp_is_empty!8667 tp!531423))))

(assert (=> b!1866366 (= tp!531353 e!1191481)))

(assert (= (and b!1866366 ((_ is Cons!20679) (t!172882 (t!172882 (innerList!6934 (xs!9756 (left!16664 t!4595))))))) b!1866828))

(declare-fun b!1866829 () Bool)

(declare-fun e!1191482 () Bool)

(declare-fun tp!531424 () Bool)

(declare-fun tp!531426 () Bool)

(assert (=> b!1866829 (= e!1191482 (and (inv!27363 (left!16664 (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))) tp!531426 (inv!27363 (right!16994 (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))) tp!531424))))

(declare-fun b!1866831 () Bool)

(declare-fun e!1191483 () Bool)

(declare-fun tp!531425 () Bool)

(assert (=> b!1866831 (= e!1191483 tp!531425)))

(declare-fun b!1866830 () Bool)

(assert (=> b!1866830 (= e!1191482 (and (inv!27364 (xs!9756 (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))) e!1191483))))

(assert (=> b!1866368 (= tp!531357 (and (inv!27363 (left!16664 (left!16664 (right!16994 (left!16664 t!4595))))) e!1191482))))

(assert (= (and b!1866368 ((_ is Node!6874) (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))) b!1866829))

(assert (= b!1866830 b!1866831))

(assert (= (and b!1866368 ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 (left!16664 t!4595)))))) b!1866830))

(declare-fun m!2292059 () Bool)

(assert (=> b!1866829 m!2292059))

(declare-fun m!2292061 () Bool)

(assert (=> b!1866829 m!2292061))

(declare-fun m!2292063 () Bool)

(assert (=> b!1866830 m!2292063))

(assert (=> b!1866368 m!2291241))

(declare-fun e!1191484 () Bool)

(declare-fun tp!531427 () Bool)

(declare-fun tp!531429 () Bool)

(declare-fun b!1866832 () Bool)

(assert (=> b!1866832 (= e!1191484 (and (inv!27363 (left!16664 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) tp!531429 (inv!27363 (right!16994 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) tp!531427))))

(declare-fun b!1866834 () Bool)

(declare-fun e!1191485 () Bool)

(declare-fun tp!531428 () Bool)

(assert (=> b!1866834 (= e!1191485 tp!531428)))

(declare-fun b!1866833 () Bool)

(assert (=> b!1866833 (= e!1191484 (and (inv!27364 (xs!9756 (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) e!1191485))))

(assert (=> b!1866368 (= tp!531355 (and (inv!27363 (right!16994 (left!16664 (right!16994 (left!16664 t!4595))))) e!1191484))))

(assert (= (and b!1866368 ((_ is Node!6874) (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) b!1866832))

(assert (= b!1866833 b!1866834))

(assert (= (and b!1866368 ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 (left!16664 t!4595)))))) b!1866833))

(declare-fun m!2292065 () Bool)

(assert (=> b!1866832 m!2292065))

(declare-fun m!2292067 () Bool)

(assert (=> b!1866832 m!2292067))

(declare-fun m!2292069 () Bool)

(assert (=> b!1866833 m!2292069))

(assert (=> b!1866368 m!2291243))

(declare-fun b!1866835 () Bool)

(declare-fun e!1191486 () Bool)

(declare-fun tp!531430 () Bool)

(assert (=> b!1866835 (= e!1191486 (and tp_is_empty!8667 tp!531430))))

(assert (=> b!1866380 (= tp!531367 e!1191486)))

(assert (= (and b!1866380 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 (right!16994 (right!16994 t!4595))))))) b!1866835))

(declare-fun b!1866836 () Bool)

(declare-fun e!1191487 () Bool)

(declare-fun tp!531431 () Bool)

(assert (=> b!1866836 (= e!1191487 (and tp_is_empty!8667 tp!531431))))

(assert (=> b!1866351 (= tp!531338 e!1191487)))

(assert (= (and b!1866351 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 (left!16664 (left!16664 t!4595))))))) b!1866836))

(declare-fun b!1866837 () Bool)

(declare-fun e!1191488 () Bool)

(declare-fun tp!531432 () Bool)

(assert (=> b!1866837 (= e!1191488 (and tp_is_empty!8667 tp!531432))))

(assert (=> b!1866365 (= tp!531352 e!1191488)))

(assert (= (and b!1866365 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 (left!16664 (right!16994 t!4595))))))) b!1866837))

(declare-fun e!1191489 () Bool)

(declare-fun tp!531435 () Bool)

(declare-fun tp!531433 () Bool)

(declare-fun b!1866838 () Bool)

(assert (=> b!1866838 (= e!1191489 (and (inv!27363 (left!16664 (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))) tp!531435 (inv!27363 (right!16994 (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))) tp!531433))))

(declare-fun b!1866840 () Bool)

(declare-fun e!1191490 () Bool)

(declare-fun tp!531434 () Bool)

(assert (=> b!1866840 (= e!1191490 tp!531434)))

(declare-fun b!1866839 () Bool)

(assert (=> b!1866839 (= e!1191489 (and (inv!27364 (xs!9756 (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))) e!1191490))))

(assert (=> b!1866355 (= tp!531344 (and (inv!27363 (left!16664 (right!16994 (right!16994 (right!16994 t!4595))))) e!1191489))))

(assert (= (and b!1866355 ((_ is Node!6874) (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))) b!1866838))

(assert (= b!1866839 b!1866840))

(assert (= (and b!1866355 ((_ is Leaf!10079) (left!16664 (right!16994 (right!16994 (right!16994 t!4595)))))) b!1866839))

(declare-fun m!2292071 () Bool)

(assert (=> b!1866838 m!2292071))

(declare-fun m!2292073 () Bool)

(assert (=> b!1866838 m!2292073))

(declare-fun m!2292075 () Bool)

(assert (=> b!1866839 m!2292075))

(assert (=> b!1866355 m!2291223))

(declare-fun tp!531436 () Bool)

(declare-fun b!1866841 () Bool)

(declare-fun e!1191491 () Bool)

(declare-fun tp!531438 () Bool)

(assert (=> b!1866841 (= e!1191491 (and (inv!27363 (left!16664 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) tp!531438 (inv!27363 (right!16994 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) tp!531436))))

(declare-fun b!1866843 () Bool)

(declare-fun e!1191492 () Bool)

(declare-fun tp!531437 () Bool)

(assert (=> b!1866843 (= e!1191492 tp!531437)))

(declare-fun b!1866842 () Bool)

(assert (=> b!1866842 (= e!1191491 (and (inv!27364 (xs!9756 (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) e!1191492))))

(assert (=> b!1866355 (= tp!531342 (and (inv!27363 (right!16994 (right!16994 (right!16994 (right!16994 t!4595))))) e!1191491))))

(assert (= (and b!1866355 ((_ is Node!6874) (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) b!1866841))

(assert (= b!1866842 b!1866843))

(assert (= (and b!1866355 ((_ is Leaf!10079) (right!16994 (right!16994 (right!16994 (right!16994 t!4595)))))) b!1866842))

(declare-fun m!2292077 () Bool)

(assert (=> b!1866841 m!2292077))

(declare-fun m!2292079 () Bool)

(assert (=> b!1866841 m!2292079))

(declare-fun m!2292081 () Bool)

(assert (=> b!1866842 m!2292081))

(assert (=> b!1866355 m!2291225))

(declare-fun tp!531441 () Bool)

(declare-fun b!1866844 () Bool)

(declare-fun e!1191493 () Bool)

(declare-fun tp!531439 () Bool)

(assert (=> b!1866844 (= e!1191493 (and (inv!27363 (left!16664 (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))) tp!531441 (inv!27363 (right!16994 (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))) tp!531439))))

(declare-fun b!1866846 () Bool)

(declare-fun e!1191494 () Bool)

(declare-fun tp!531440 () Bool)

(assert (=> b!1866846 (= e!1191494 tp!531440)))

(declare-fun b!1866845 () Bool)

(assert (=> b!1866845 (= e!1191493 (and (inv!27364 (xs!9756 (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))) e!1191494))))

(assert (=> b!1866377 (= tp!531366 (and (inv!27363 (left!16664 (right!16994 (left!16664 (right!16994 t!4595))))) e!1191493))))

(assert (= (and b!1866377 ((_ is Node!6874) (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))) b!1866844))

(assert (= b!1866845 b!1866846))

(assert (= (and b!1866377 ((_ is Leaf!10079) (left!16664 (right!16994 (left!16664 (right!16994 t!4595)))))) b!1866845))

(declare-fun m!2292083 () Bool)

(assert (=> b!1866844 m!2292083))

(declare-fun m!2292085 () Bool)

(assert (=> b!1866844 m!2292085))

(declare-fun m!2292087 () Bool)

(assert (=> b!1866845 m!2292087))

(assert (=> b!1866377 m!2291259))

(declare-fun b!1866847 () Bool)

(declare-fun e!1191495 () Bool)

(declare-fun tp!531442 () Bool)

(declare-fun tp!531444 () Bool)

(assert (=> b!1866847 (= e!1191495 (and (inv!27363 (left!16664 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) tp!531444 (inv!27363 (right!16994 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) tp!531442))))

(declare-fun b!1866849 () Bool)

(declare-fun e!1191496 () Bool)

(declare-fun tp!531443 () Bool)

(assert (=> b!1866849 (= e!1191496 tp!531443)))

(declare-fun b!1866848 () Bool)

(assert (=> b!1866848 (= e!1191495 (and (inv!27364 (xs!9756 (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) e!1191496))))

(assert (=> b!1866377 (= tp!531364 (and (inv!27363 (right!16994 (right!16994 (left!16664 (right!16994 t!4595))))) e!1191495))))

(assert (= (and b!1866377 ((_ is Node!6874) (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) b!1866847))

(assert (= b!1866848 b!1866849))

(assert (= (and b!1866377 ((_ is Leaf!10079) (right!16994 (right!16994 (left!16664 (right!16994 t!4595)))))) b!1866848))

(declare-fun m!2292089 () Bool)

(assert (=> b!1866847 m!2292089))

(declare-fun m!2292091 () Bool)

(assert (=> b!1866847 m!2292091))

(declare-fun m!2292093 () Bool)

(assert (=> b!1866848 m!2292093))

(assert (=> b!1866377 m!2291261))

(declare-fun b!1866850 () Bool)

(declare-fun e!1191497 () Bool)

(declare-fun tp!531445 () Bool)

(assert (=> b!1866850 (= e!1191497 (and tp_is_empty!8667 tp!531445))))

(assert (=> b!1866363 (= tp!531349 e!1191497)))

(assert (= (and b!1866363 ((_ is Cons!20679) (innerList!6934 (xs!9756 (right!16994 (left!16664 (left!16664 t!4595))))))) b!1866850))

(declare-fun b!1866851 () Bool)

(declare-fun e!1191498 () Bool)

(declare-fun tp!531446 () Bool)

(assert (=> b!1866851 (= e!1191498 (and tp_is_empty!8667 tp!531446))))

(assert (=> b!1866354 (= tp!531340 e!1191498)))

(assert (= (and b!1866354 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 (right!16994 (right!16994 t!4595))))))) b!1866851))

(declare-fun b!1866852 () Bool)

(declare-fun e!1191499 () Bool)

(declare-fun tp!531447 () Bool)

(assert (=> b!1866852 (= e!1191499 (and tp_is_empty!8667 tp!531447))))

(assert (=> b!1866376 (= tp!531362 e!1191499)))

(assert (= (and b!1866376 ((_ is Cons!20679) (innerList!6934 (xs!9756 (left!16664 (left!16664 (right!16994 t!4595))))))) b!1866852))

(declare-fun b!1866853 () Bool)

(declare-fun e!1191500 () Bool)

(declare-fun tp!531448 () Bool)

(assert (=> b!1866853 (= e!1191500 (and tp_is_empty!8667 tp!531448))))

(assert (=> b!1866350 (= tp!531337 e!1191500)))

(assert (= (and b!1866350 ((_ is Cons!20679) (t!172882 (t!172882 (t!172882 (innerList!6934 (xs!9756 t!4595))))))) b!1866853))

(declare-fun b!1866854 () Bool)

(declare-fun tp!531451 () Bool)

(declare-fun tp!531449 () Bool)

(declare-fun e!1191501 () Bool)

(assert (=> b!1866854 (= e!1191501 (and (inv!27363 (left!16664 (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))) tp!531451 (inv!27363 (right!16994 (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))) tp!531449))))

(declare-fun b!1866856 () Bool)

(declare-fun e!1191502 () Bool)

(declare-fun tp!531450 () Bool)

(assert (=> b!1866856 (= e!1191502 tp!531450)))

(declare-fun b!1866855 () Bool)

(assert (=> b!1866855 (= e!1191501 (and (inv!27364 (xs!9756 (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))) e!1191502))))

(assert (=> b!1866352 (= tp!531341 (and (inv!27363 (left!16664 (left!16664 (right!16994 (right!16994 t!4595))))) e!1191501))))

(assert (= (and b!1866352 ((_ is Node!6874) (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))) b!1866854))

(assert (= b!1866855 b!1866856))

(assert (= (and b!1866352 ((_ is Leaf!10079) (left!16664 (left!16664 (right!16994 (right!16994 t!4595)))))) b!1866855))

(declare-fun m!2292095 () Bool)

(assert (=> b!1866854 m!2292095))

(declare-fun m!2292097 () Bool)

(assert (=> b!1866854 m!2292097))

(declare-fun m!2292099 () Bool)

(assert (=> b!1866855 m!2292099))

(assert (=> b!1866352 m!2291217))

(declare-fun tp!531454 () Bool)

(declare-fun tp!531452 () Bool)

(declare-fun e!1191503 () Bool)

(declare-fun b!1866857 () Bool)

(assert (=> b!1866857 (= e!1191503 (and (inv!27363 (left!16664 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) tp!531454 (inv!27363 (right!16994 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) tp!531452))))

(declare-fun b!1866859 () Bool)

(declare-fun e!1191504 () Bool)

(declare-fun tp!531453 () Bool)

(assert (=> b!1866859 (= e!1191504 tp!531453)))

(declare-fun b!1866858 () Bool)

(assert (=> b!1866858 (= e!1191503 (and (inv!27364 (xs!9756 (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) e!1191504))))

(assert (=> b!1866352 (= tp!531339 (and (inv!27363 (right!16994 (left!16664 (right!16994 (right!16994 t!4595))))) e!1191503))))

(assert (= (and b!1866352 ((_ is Node!6874) (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) b!1866857))

(assert (= b!1866858 b!1866859))

(assert (= (and b!1866352 ((_ is Leaf!10079) (right!16994 (left!16664 (right!16994 (right!16994 t!4595)))))) b!1866858))

(declare-fun m!2292101 () Bool)

(assert (=> b!1866857 m!2292101))

(declare-fun m!2292103 () Bool)

(assert (=> b!1866857 m!2292103))

(declare-fun m!2292105 () Bool)

(assert (=> b!1866858 m!2292105))

(assert (=> b!1866352 m!2291219))

(declare-fun e!1191505 () Bool)

(declare-fun tp!531457 () Bool)

(declare-fun tp!531455 () Bool)

(declare-fun b!1866860 () Bool)

(assert (=> b!1866860 (= e!1191505 (and (inv!27363 (left!16664 (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))) tp!531457 (inv!27363 (right!16994 (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))) tp!531455))))

(declare-fun b!1866862 () Bool)

(declare-fun e!1191506 () Bool)

(declare-fun tp!531456 () Bool)

(assert (=> b!1866862 (= e!1191506 tp!531456)))

(declare-fun b!1866861 () Bool)

(assert (=> b!1866861 (= e!1191505 (and (inv!27364 (xs!9756 (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))) e!1191506))))

(assert (=> b!1866374 (= tp!531363 (and (inv!27363 (left!16664 (left!16664 (left!16664 (right!16994 t!4595))))) e!1191505))))

(assert (= (and b!1866374 ((_ is Node!6874) (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))) b!1866860))

(assert (= b!1866861 b!1866862))

(assert (= (and b!1866374 ((_ is Leaf!10079) (left!16664 (left!16664 (left!16664 (right!16994 t!4595)))))) b!1866861))

(declare-fun m!2292107 () Bool)

(assert (=> b!1866860 m!2292107))

(declare-fun m!2292109 () Bool)

(assert (=> b!1866860 m!2292109))

(declare-fun m!2292111 () Bool)

(assert (=> b!1866861 m!2292111))

(assert (=> b!1866374 m!2291253))

(declare-fun b!1866863 () Bool)

(declare-fun tp!531458 () Bool)

(declare-fun e!1191507 () Bool)

(declare-fun tp!531460 () Bool)

(assert (=> b!1866863 (= e!1191507 (and (inv!27363 (left!16664 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) tp!531460 (inv!27363 (right!16994 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) tp!531458))))

(declare-fun b!1866865 () Bool)

(declare-fun e!1191508 () Bool)

(declare-fun tp!531459 () Bool)

(assert (=> b!1866865 (= e!1191508 tp!531459)))

(declare-fun b!1866864 () Bool)

(assert (=> b!1866864 (= e!1191507 (and (inv!27364 (xs!9756 (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) e!1191508))))

(assert (=> b!1866374 (= tp!531361 (and (inv!27363 (right!16994 (left!16664 (left!16664 (right!16994 t!4595))))) e!1191507))))

(assert (= (and b!1866374 ((_ is Node!6874) (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) b!1866863))

(assert (= b!1866864 b!1866865))

(assert (= (and b!1866374 ((_ is Leaf!10079) (right!16994 (left!16664 (left!16664 (right!16994 t!4595)))))) b!1866864))

(declare-fun m!2292113 () Bool)

(assert (=> b!1866863 m!2292113))

(declare-fun m!2292115 () Bool)

(assert (=> b!1866863 m!2292115))

(declare-fun m!2292117 () Bool)

(assert (=> b!1866864 m!2292117))

(assert (=> b!1866374 m!2291255))

(declare-fun b!1866866 () Bool)

(declare-fun e!1191509 () Bool)

(declare-fun tp!531461 () Bool)

(assert (=> b!1866866 (= e!1191509 (and tp_is_empty!8667 tp!531461))))

(assert (=> b!1866364 (= tp!531351 e!1191509)))

(assert (= (and b!1866364 ((_ is Cons!20679) (t!172882 (innerList!6934 (xs!9756 (right!16994 (left!16664 t!4595))))))) b!1866866))

(check-sat (not b!1866715) (not b!1866718) (not d!570207) (not b!1866778) (not d!570153) (not b!1866696) (not b!1866804) (not b!1866813) (not b!1866613) (not b!1866587) (not b!1866564) (not b!1866541) (not d!570291) (not b!1866542) (not b!1866707) (not b!1866658) (not d!570199) (not b!1866835) (not b!1866545) (not b!1866569) (not b!1866556) (not b!1866683) (not d!570195) (not b!1866748) (not b!1866627) (not b!1866632) (not d!570263) (not b!1866825) (not b!1866576) (not b!1866859) (not d!570145) (not b!1866855) (not b!1866705) (not d!570227) (not b!1866788) (not b!1866604) (not b!1866843) (not d!570155) (not b!1866755) (not b!1866558) (not b!1866785) (not d!570197) (not b!1866828) (not d!570299) (not b!1866779) (not d!570121) (not b!1866689) (not b!1866697) (not b!1866561) (not b!1866819) (not b!1866838) (not b!1866822) (not b!1866598) (not b!1866730) (not b!1866585) (not b!1866866) (not d!570203) (not d!570141) (not d!570283) (not b!1866823) (not b!1866851) (not b!1866865) (not b!1866577) (not b!1866371) (not b!1866767) (not b!1866856) (not b!1866619) (not b!1866590) (not b!1866860) (not b!1866821) (not b!1866640) (not b!1866699) (not b!1866794) (not b!1866621) tp_is_empty!8667 (not b!1866815) (not b!1866747) (not d!570133) (not b!1866793) (not b!1866861) (not b!1866776) (not b!1866547) (not b!1866358) (not b!1866695) (not b!1866858) (not b!1866594) (not d!570255) (not b!1866799) (not b!1866848) (not b!1866807) (not b!1866751) (not d!570091) (not b!1866648) (not b!1866783) (not b!1866724) (not b!1866840) (not b!1866672) (not b!1866772) (not d!570135) (not b!1866655) (not b!1866578) (not d!570071) (not d!570317) (not b!1866769) (not d!570297) (not b!1866608) (not b!1866811) (not b!1866827) (not b!1866687) (not b!1866709) (not d!570137) (not b!1866377) (not b!1866764) (not b!1866549) (not b!1866753) (not b!1866573) (not b!1866824) (not d!570321) (not b!1866660) (not b!1866355) (not b!1866721) (not d!570167) (not d!570147) (not d!570257) (not b!1866735) (not b!1866601) (not b!1866857) (not b!1866714) (not b!1866733) (not b!1866740) (not b!1866830) (not b!1866553) (not b!1866759) (not b!1866572) (not b!1866837) (not d!570323) (not d!570143) (not d!570259) (not b!1866814) (not b!1866653) (not d!570253) (not b!1866546) (not b!1866810) (not b!1866636) (not b!1866702) (not b!1866833) (not b!1866743) (not b!1866677) (not b!1866849) (not b!1866574) (not d!570149) (not b!1866746) (not b!1866599) (not b!1866652) (not b!1866742) (not b!1866768) (not b!1866361) (not b!1866606) (not b!1866780) (not b!1866710) (not b!1866644) (not b!1866691) (not b!1866611) (not b!1866749) (not d!570107) (not b!1866550) (not b!1866729) (not b!1866808) (not b!1866766) (not b!1866864) (not b!1866595) (not b!1866852) (not b!1866798) (not b!1866805) (not d!570089) (not b!1866650) (not b!1866540) (not b!1866563) (not b!1866667) (not b!1866816) (not b!1866818) (not b!1866637) (not b!1866826) (not b!1866761) (not b!1866589) (not b!1866676) (not b!1866630) (not b!1866770) (not b!1866616) (not b!1866551) (not b!1866841) (not b!1866560) (not d!570271) (not b!1866719) (not d!570181) (not b!1866567) (not b!1866862) (not b!1866566) (not b!1866863) (not b!1866831) (not b!1866834) (not d!570315) (not b!1866685) (not b!1866680) (not b!1866775) (not b!1866602) (not b!1866681) (not b!1866703) (not b!1866368) (not b!1866614) (not b!1866352) (not b!1866673) (not b!1866700) (not b!1866737) (not b!1866832) (not b!1866571) (not b!1866836) (not d!570247) (not b!1866618) (not d!570301) (not b!1866802) (not b!1866620) (not b!1866548) (not d!570309) (not d!570229) (not d!570305) (not b!1866693) (not b!1866668) (not d!570105) (not b!1866829) (not b!1866791) (not b!1866543) (not b!1866584) (not b!1866845) (not d!570327) (not b!1866727) (not b!1866757) (not b!1866539) (not b!1866739) (not b!1866663) (not b!1866842) (not b!1866839) (not b!1866806) (not d!570209) (not b!1866582) (not b!1866846) (not b!1866817) (not d!570235) (not b!1866374) (not d!570087) (not b!1866665) (not b!1866623) (not b!1866538) (not b!1866575) (not b!1866854) (not b!1866580) (not b!1866698) (not b!1866777) (not b!1866555) (not b!1866853) (not b!1866820) (not b!1866625) (not b!1866847) (not b!1866678) (not b!1866812) (not b!1866844) (not b!1866694) (not b!1866656) (not b!1866634) (not b!1866750) (not b!1866645) (not b!1866617) (not b!1866642) (not b!1866745) (not b!1866850) (not b!1866809) (not b!1866639) (not b!1866781) (not b!1866803) (not b!1866771))
(check-sat)
