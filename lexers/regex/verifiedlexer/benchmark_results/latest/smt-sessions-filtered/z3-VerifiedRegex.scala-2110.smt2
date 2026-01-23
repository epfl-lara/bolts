; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106712 () Bool)

(assert start!106712)

(declare-fun b!1198740 () Bool)

(declare-fun e!769632 () Bool)

(declare-datatypes ((T!21754 0))(
  ( (T!21755 (val!3884 Int)) )
))
(declare-datatypes ((List!12063 0))(
  ( (Nil!12039) (Cons!12039 (h!17440 T!21754) (t!112413 List!12063)) )
))
(declare-fun lt!410522 () List!12063)

(declare-fun e!769633 () List!12063)

(assert (=> b!1198740 (= e!769632 (= lt!410522 e!769633))))

(declare-fun c!199470 () Bool)

(declare-fun until!31 () Int)

(declare-fun lt!410520 () Int)

(assert (=> b!1198740 (= c!199470 (<= until!31 lt!410520))))

(declare-fun b!1198741 () Bool)

(declare-fun call!83329 () List!12063)

(declare-fun lt!410523 () List!12063)

(declare-fun ++!3074 (List!12063 List!12063) List!12063)

(declare-fun slice!464 (List!12063 Int Int) List!12063)

(assert (=> b!1198741 (= e!769633 (++!3074 call!83329 (slice!464 lt!410523 0 (- until!31 lt!410520))))))

(declare-fun b!1198742 () Bool)

(declare-fun call!83330 () List!12063)

(assert (=> b!1198742 (= e!769632 (= lt!410522 call!83330))))

(declare-fun b!1198743 () Bool)

(declare-fun res!540785 () Bool)

(declare-fun e!769634 () Bool)

(assert (=> b!1198743 (=> (not res!540785) (not e!769634))))

(declare-datatypes ((IArray!7949 0))(
  ( (IArray!7950 (innerList!4032 List!12063)) )
))
(declare-datatypes ((Conc!3972 0))(
  ( (Node!3972 (left!10506 Conc!3972) (right!10836 Conc!3972) (csize!8174 Int) (cheight!4183 Int)) (Leaf!6083 (xs!6679 IArray!7949) (csize!8175 Int)) (Empty!3972) )
))
(declare-fun t!4115 () Conc!3972)

(declare-fun from!553 () Int)

(get-info :version)

(assert (=> b!1198743 (= res!540785 (and (not (= from!553 until!31)) (not ((_ is Leaf!6083) t!4115)) ((_ is Node!3972) t!4115)))))

(declare-fun b!1198744 () Bool)

(declare-fun e!769630 () Bool)

(declare-fun e!769631 () Bool)

(assert (=> b!1198744 (= e!769630 e!769631)))

(declare-fun res!540786 () Bool)

(assert (=> b!1198744 (=> (not res!540786) (not e!769631))))

(declare-fun lt!410521 () Conc!3972)

(declare-fun isBalanced!1157 (Conc!3972) Bool)

(assert (=> b!1198744 (= res!540786 (isBalanced!1157 lt!410521))))

(declare-fun lt!410526 () Int)

(declare-fun slice!465 (Conc!3972 Int Int) Conc!3972)

(assert (=> b!1198744 (= lt!410521 (slice!465 (right!10836 t!4115) (- from!553 lt!410526) (- until!31 lt!410526)))))

(declare-fun res!540789 () Bool)

(assert (=> start!106712 (=> (not res!540789) (not e!769634))))

(assert (=> start!106712 (= res!540789 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106712 e!769634))

(assert (=> start!106712 true))

(declare-fun e!769629 () Bool)

(declare-fun inv!16093 (Conc!3972) Bool)

(assert (=> start!106712 (and (inv!16093 t!4115) e!769629)))

(declare-fun b!1198745 () Bool)

(declare-fun tp!341085 () Bool)

(declare-fun tp!341083 () Bool)

(assert (=> b!1198745 (= e!769629 (and (inv!16093 (left!10506 t!4115)) tp!341085 (inv!16093 (right!10836 t!4115)) tp!341083))))

(declare-fun b!1198746 () Bool)

(declare-fun res!540787 () Bool)

(assert (=> b!1198746 (=> (not res!540787) (not e!769634))))

(declare-fun size!9562 (Conc!3972) Int)

(assert (=> b!1198746 (= res!540787 (<= until!31 (size!9562 t!4115)))))

(declare-fun bm!83324 () Bool)

(assert (=> bm!83324 (= call!83329 call!83330)))

(declare-fun b!1198747 () Bool)

(declare-fun e!769628 () Bool)

(declare-fun tp!341084 () Bool)

(assert (=> b!1198747 (= e!769628 tp!341084)))

(declare-fun b!1198748 () Bool)

(declare-fun res!540790 () Bool)

(assert (=> b!1198748 (=> (not res!540790) (not e!769634))))

(assert (=> b!1198748 (= res!540790 (isBalanced!1157 t!4115))))

(declare-fun b!1198749 () Bool)

(declare-fun list!4477 (Conc!3972) List!12063)

(assert (=> b!1198749 (= e!769631 (= (list!4477 lt!410521) (slice!464 (list!4477 t!4115) from!553 until!31)))))

(declare-fun b!1198750 () Bool)

(declare-fun inv!16094 (IArray!7949) Bool)

(assert (=> b!1198750 (= e!769629 (and (inv!16094 (xs!6679 t!4115)) e!769628))))

(declare-fun b!1198751 () Bool)

(assert (=> b!1198751 (= e!769634 (not e!769630))))

(declare-fun res!540788 () Bool)

(assert (=> b!1198751 (=> res!540788 e!769630)))

(assert (=> b!1198751 (= res!540788 (> lt!410526 from!553))))

(assert (=> b!1198751 (= lt!410526 (size!9562 (left!10506 t!4115)))))

(assert (=> b!1198751 e!769632))

(declare-fun c!199469 () Bool)

(assert (=> b!1198751 (= c!199469 (<= lt!410520 from!553))))

(declare-fun lt!410524 () List!12063)

(assert (=> b!1198751 (= lt!410522 (slice!464 (++!3074 lt!410524 lt!410523) from!553 until!31))))

(declare-fun size!9563 (List!12063) Int)

(assert (=> b!1198751 (= lt!410520 (size!9563 lt!410524))))

(declare-datatypes ((Unit!18448 0))(
  ( (Unit!18449) )
))
(declare-fun lt!410525 () Unit!18448)

(declare-fun sliceLemma!35 (List!12063 List!12063 Int Int) Unit!18448)

(assert (=> b!1198751 (= lt!410525 (sliceLemma!35 lt!410524 lt!410523 from!553 until!31))))

(assert (=> b!1198751 (= lt!410523 (list!4477 (right!10836 t!4115)))))

(assert (=> b!1198751 (= lt!410524 (list!4477 (left!10506 t!4115)))))

(declare-fun bm!83325 () Bool)

(assert (=> bm!83325 (= call!83330 (slice!464 (ite c!199469 lt!410523 lt!410524) (ite c!199469 (- from!553 lt!410520) from!553) (ite c!199469 (- until!31 lt!410520) (ite c!199470 until!31 lt!410520))))))

(declare-fun b!1198752 () Bool)

(assert (=> b!1198752 (= e!769633 call!83329)))

(assert (= (and start!106712 res!540789) b!1198746))

(assert (= (and b!1198746 res!540787) b!1198748))

(assert (= (and b!1198748 res!540790) b!1198743))

(assert (= (and b!1198743 res!540785) b!1198751))

(assert (= (and b!1198751 c!199469) b!1198742))

(assert (= (and b!1198751 (not c!199469)) b!1198740))

(assert (= (and b!1198740 c!199470) b!1198752))

(assert (= (and b!1198740 (not c!199470)) b!1198741))

(assert (= (or b!1198752 b!1198741) bm!83324))

(assert (= (or b!1198742 bm!83324) bm!83325))

(assert (= (and b!1198751 (not res!540788)) b!1198744))

(assert (= (and b!1198744 res!540786) b!1198749))

(assert (= (and start!106712 ((_ is Node!3972) t!4115)) b!1198745))

(assert (= b!1198750 b!1198747))

(assert (= (and start!106712 ((_ is Leaf!6083) t!4115)) b!1198750))

(declare-fun m!1374145 () Bool)

(assert (=> start!106712 m!1374145))

(declare-fun m!1374147 () Bool)

(assert (=> b!1198744 m!1374147))

(declare-fun m!1374149 () Bool)

(assert (=> b!1198744 m!1374149))

(declare-fun m!1374151 () Bool)

(assert (=> b!1198741 m!1374151))

(assert (=> b!1198741 m!1374151))

(declare-fun m!1374153 () Bool)

(assert (=> b!1198741 m!1374153))

(declare-fun m!1374155 () Bool)

(assert (=> b!1198750 m!1374155))

(declare-fun m!1374157 () Bool)

(assert (=> b!1198749 m!1374157))

(declare-fun m!1374159 () Bool)

(assert (=> b!1198749 m!1374159))

(assert (=> b!1198749 m!1374159))

(declare-fun m!1374161 () Bool)

(assert (=> b!1198749 m!1374161))

(declare-fun m!1374163 () Bool)

(assert (=> bm!83325 m!1374163))

(declare-fun m!1374165 () Bool)

(assert (=> b!1198745 m!1374165))

(declare-fun m!1374167 () Bool)

(assert (=> b!1198745 m!1374167))

(declare-fun m!1374169 () Bool)

(assert (=> b!1198746 m!1374169))

(declare-fun m!1374171 () Bool)

(assert (=> b!1198748 m!1374171))

(declare-fun m!1374173 () Bool)

(assert (=> b!1198751 m!1374173))

(declare-fun m!1374175 () Bool)

(assert (=> b!1198751 m!1374175))

(declare-fun m!1374177 () Bool)

(assert (=> b!1198751 m!1374177))

(declare-fun m!1374179 () Bool)

(assert (=> b!1198751 m!1374179))

(declare-fun m!1374181 () Bool)

(assert (=> b!1198751 m!1374181))

(declare-fun m!1374183 () Bool)

(assert (=> b!1198751 m!1374183))

(assert (=> b!1198751 m!1374175))

(declare-fun m!1374185 () Bool)

(assert (=> b!1198751 m!1374185))

(check-sat (not b!1198745) (not b!1198750) (not start!106712) (not bm!83325) (not b!1198749) (not b!1198746) (not b!1198751) (not b!1198744) (not b!1198748) (not b!1198741) (not b!1198747))
(check-sat)
(get-model)

(declare-fun b!1198774 () Bool)

(declare-fun res!540810 () Bool)

(declare-fun e!769646 () Bool)

(assert (=> b!1198774 (=> (not res!540810) (not e!769646))))

(assert (=> b!1198774 (= res!540810 (isBalanced!1157 (right!10836 lt!410521)))))

(declare-fun b!1198775 () Bool)

(declare-fun e!769645 () Bool)

(assert (=> b!1198775 (= e!769645 e!769646)))

(declare-fun res!540807 () Bool)

(assert (=> b!1198775 (=> (not res!540807) (not e!769646))))

(declare-fun height!566 (Conc!3972) Int)

(assert (=> b!1198775 (= res!540807 (<= (- 1) (- (height!566 (left!10506 lt!410521)) (height!566 (right!10836 lt!410521)))))))

(declare-fun d!342751 () Bool)

(declare-fun res!540809 () Bool)

(assert (=> d!342751 (=> res!540809 e!769645)))

(assert (=> d!342751 (= res!540809 (not ((_ is Node!3972) lt!410521)))))

(assert (=> d!342751 (= (isBalanced!1157 lt!410521) e!769645)))

(declare-fun b!1198776 () Bool)

(declare-fun res!540811 () Bool)

(assert (=> b!1198776 (=> (not res!540811) (not e!769646))))

(assert (=> b!1198776 (= res!540811 (isBalanced!1157 (left!10506 lt!410521)))))

(declare-fun b!1198777 () Bool)

(declare-fun res!540808 () Bool)

(assert (=> b!1198777 (=> (not res!540808) (not e!769646))))

(assert (=> b!1198777 (= res!540808 (<= (- (height!566 (left!10506 lt!410521)) (height!566 (right!10836 lt!410521))) 1))))

(declare-fun b!1198778 () Bool)

(declare-fun res!540806 () Bool)

(assert (=> b!1198778 (=> (not res!540806) (not e!769646))))

(declare-fun isEmpty!7257 (Conc!3972) Bool)

(assert (=> b!1198778 (= res!540806 (not (isEmpty!7257 (left!10506 lt!410521))))))

(declare-fun b!1198779 () Bool)

(assert (=> b!1198779 (= e!769646 (not (isEmpty!7257 (right!10836 lt!410521))))))

(assert (= (and d!342751 (not res!540809)) b!1198775))

(assert (= (and b!1198775 res!540807) b!1198777))

(assert (= (and b!1198777 res!540808) b!1198776))

(assert (= (and b!1198776 res!540811) b!1198774))

(assert (= (and b!1198774 res!540810) b!1198778))

(assert (= (and b!1198778 res!540806) b!1198779))

(declare-fun m!1374197 () Bool)

(assert (=> b!1198777 m!1374197))

(declare-fun m!1374199 () Bool)

(assert (=> b!1198777 m!1374199))

(declare-fun m!1374201 () Bool)

(assert (=> b!1198778 m!1374201))

(declare-fun m!1374205 () Bool)

(assert (=> b!1198779 m!1374205))

(declare-fun m!1374207 () Bool)

(assert (=> b!1198774 m!1374207))

(declare-fun m!1374209 () Bool)

(assert (=> b!1198776 m!1374209))

(assert (=> b!1198775 m!1374197))

(assert (=> b!1198775 m!1374199))

(assert (=> b!1198744 d!342751))

(declare-fun b!1198905 () Bool)

(declare-fun e!769710 () Int)

(declare-fun call!83356 () Int)

(assert (=> b!1198905 (= e!769710 call!83356)))

(declare-fun b!1198906 () Bool)

(assert (=> b!1198906 (= e!769710 (- until!31 lt!410526))))

(declare-fun bm!83347 () Bool)

(declare-fun c!199520 () Bool)

(declare-fun c!199522 () Bool)

(assert (=> bm!83347 (= c!199520 c!199522)))

(declare-fun call!83353 () Conc!3972)

(declare-fun call!83357 () Conc!3972)

(assert (=> bm!83347 (= call!83353 call!83357)))

(declare-fun call!83352 () Int)

(declare-fun c!199519 () Bool)

(declare-fun e!769720 () Int)

(declare-fun bm!83348 () Bool)

(assert (=> bm!83348 (= call!83357 (slice!465 (ite c!199519 (right!10836 (right!10836 t!4115)) (ite c!199522 (left!10506 (right!10836 t!4115)) (right!10836 (right!10836 t!4115)))) (ite c!199519 (- (- from!553 lt!410526) call!83352) (ite c!199522 (- from!553 lt!410526) 0)) (ite c!199519 (- (- until!31 lt!410526) call!83352) e!769720)))))

(declare-fun b!1198907 () Bool)

(declare-fun e!769719 () Conc!3972)

(declare-fun ++!3076 (Conc!3972 Conc!3972) Conc!3972)

(assert (=> b!1198907 (= e!769719 (++!3076 (slice!465 (left!10506 (right!10836 t!4115)) (- from!553 lt!410526) call!83352) call!83353))))

(declare-fun bm!83349 () Bool)

(declare-fun c!199524 () Bool)

(declare-fun c!199518 () Bool)

(assert (=> bm!83349 (= c!199524 c!199518)))

(declare-fun call!83355 () List!12063)

(declare-fun call!83354 () List!12063)

(assert (=> bm!83349 (= call!83355 call!83354)))

(declare-fun b!1198908 () Bool)

(declare-fun e!769713 () List!12063)

(declare-fun e!769712 () List!12063)

(assert (=> b!1198908 (= e!769713 e!769712)))

(assert (=> b!1198908 (= c!199518 (<= (- until!31 lt!410526) call!83356))))

(declare-fun b!1198909 () Bool)

(declare-fun e!769718 () Conc!3972)

(declare-fun e!769714 () Conc!3972)

(assert (=> b!1198909 (= e!769718 e!769714)))

(declare-fun c!199521 () Bool)

(assert (=> b!1198909 (= c!199521 ((_ is Leaf!6083) (right!10836 t!4115)))))

(declare-fun b!1198910 () Bool)

(assert (=> b!1198910 (= e!769712 call!83355)))

(declare-fun b!1198911 () Bool)

(assert (=> b!1198911 (= e!769720 (- until!31 lt!410526))))

(declare-fun b!1198913 () Bool)

(assert (=> b!1198913 (= e!769713 call!83354)))

(declare-fun b!1198914 () Bool)

(declare-fun c!199526 () Bool)

(assert (=> b!1198914 (= c!199526 (= (- (- until!31 lt!410526) (- from!553 lt!410526)) 0))))

(declare-fun e!769711 () Conc!3972)

(assert (=> b!1198914 (= e!769714 e!769711)))

(declare-fun b!1198915 () Bool)

(assert (=> b!1198915 (= e!769711 Empty!3972)))

(declare-fun b!1198916 () Bool)

(declare-fun e!769716 () Bool)

(assert (=> b!1198916 (= e!769716 (isBalanced!1157 (right!10836 t!4115)))))

(declare-fun b!1198917 () Bool)

(declare-fun e!769717 () Conc!3972)

(assert (=> b!1198917 (= e!769717 e!769719)))

(assert (=> b!1198917 (= c!199522 (<= (- until!31 lt!410526) call!83352))))

(declare-fun b!1198918 () Bool)

(declare-fun lt!410555 () Conc!3972)

(declare-fun e!769715 () Bool)

(assert (=> b!1198918 (= e!769715 (= (list!4477 lt!410555) (slice!464 (list!4477 (right!10836 t!4115)) (- from!553 lt!410526) (- until!31 lt!410526))))))

(declare-fun bm!83350 () Bool)

(declare-fun lt!410553 () List!12063)

(assert (=> bm!83350 (= call!83356 (size!9563 lt!410553))))

(declare-fun lt!410554 () List!12063)

(declare-fun b!1198919 () Bool)

(assert (=> b!1198919 (= e!769712 (++!3074 call!83355 (slice!464 lt!410554 0 (- (- until!31 lt!410526) call!83356))))))

(declare-fun b!1198920 () Bool)

(declare-fun res!540850 () Bool)

(assert (=> b!1198920 (=> (not res!540850) (not e!769716))))

(assert (=> b!1198920 (= res!540850 (<= (- until!31 lt!410526) (size!9562 (right!10836 t!4115))))))

(declare-fun bm!83351 () Bool)

(declare-fun c!199523 () Bool)

(assert (=> bm!83351 (= call!83354 (slice!464 (ite c!199523 lt!410554 lt!410553) (ite c!199523 (- (- from!553 lt!410526) call!83356) (- from!553 lt!410526)) (ite c!199523 (- (- until!31 lt!410526) call!83356) e!769710)))))

(declare-fun bm!83352 () Bool)

(assert (=> bm!83352 (= call!83352 (size!9562 (left!10506 (right!10836 t!4115))))))

(declare-fun b!1198921 () Bool)

(assert (=> b!1198921 (= e!769720 (- (- until!31 lt!410526) call!83352))))

(declare-fun b!1198922 () Bool)

(assert (=> b!1198922 (= c!199519 (<= (size!9562 (left!10506 (right!10836 t!4115))) (- from!553 lt!410526)))))

(declare-fun lt!410551 () Unit!18448)

(declare-fun lt!410552 () Unit!18448)

(assert (=> b!1198922 (= lt!410551 lt!410552)))

(assert (=> b!1198922 (= (slice!464 (++!3074 lt!410553 lt!410554) (- from!553 lt!410526) (- until!31 lt!410526)) e!769713)))

(assert (=> b!1198922 (= c!199523 (<= (size!9563 lt!410553) (- from!553 lt!410526)))))

(assert (=> b!1198922 (= lt!410552 (sliceLemma!35 lt!410553 lt!410554 (- from!553 lt!410526) (- until!31 lt!410526)))))

(assert (=> b!1198922 (= lt!410554 (list!4477 (right!10836 (right!10836 t!4115))))))

(assert (=> b!1198922 (= lt!410553 (list!4477 (left!10506 (right!10836 t!4115))))))

(assert (=> b!1198922 (= e!769714 e!769717)))

(declare-fun b!1198923 () Bool)

(assert (=> b!1198923 (= e!769717 call!83357)))

(declare-fun d!342761 () Bool)

(assert (=> d!342761 e!769715))

(declare-fun res!540851 () Bool)

(assert (=> d!342761 (=> (not res!540851) (not e!769715))))

(assert (=> d!342761 (= res!540851 (isBalanced!1157 lt!410555))))

(assert (=> d!342761 (= lt!410555 e!769718)))

(declare-fun c!199525 () Bool)

(assert (=> d!342761 (= c!199525 (= (- from!553 lt!410526) (- until!31 lt!410526)))))

(assert (=> d!342761 e!769716))

(declare-fun res!540849 () Bool)

(assert (=> d!342761 (=> (not res!540849) (not e!769716))))

(assert (=> d!342761 (= res!540849 (and (<= 0 (- from!553 lt!410526)) (<= (- from!553 lt!410526) (- until!31 lt!410526))))))

(assert (=> d!342761 (= (slice!465 (right!10836 t!4115) (- from!553 lt!410526) (- until!31 lt!410526)) lt!410555)))

(declare-fun b!1198912 () Bool)

(declare-fun slice!467 (IArray!7949 Int Int) IArray!7949)

(assert (=> b!1198912 (= e!769711 (Leaf!6083 (slice!467 (xs!6679 (right!10836 t!4115)) (- from!553 lt!410526) (- until!31 lt!410526)) (- (- until!31 lt!410526) (- from!553 lt!410526))))))

(declare-fun b!1198924 () Bool)

(assert (=> b!1198924 (= e!769718 Empty!3972)))

(declare-fun b!1198925 () Bool)

(assert (=> b!1198925 (= e!769719 call!83353)))

(assert (= (and d!342761 res!540849) b!1198920))

(assert (= (and b!1198920 res!540850) b!1198916))

(assert (= (and d!342761 c!199525) b!1198924))

(assert (= (and d!342761 (not c!199525)) b!1198909))

(assert (= (and b!1198909 c!199521) b!1198914))

(assert (= (and b!1198909 (not c!199521)) b!1198922))

(assert (= (and b!1198914 c!199526) b!1198915))

(assert (= (and b!1198914 (not c!199526)) b!1198912))

(assert (= (and b!1198922 c!199523) b!1198913))

(assert (= (and b!1198922 (not c!199523)) b!1198908))

(assert (= (and b!1198908 c!199518) b!1198910))

(assert (= (and b!1198908 (not c!199518)) b!1198919))

(assert (= (or b!1198910 b!1198919) bm!83349))

(assert (= (and bm!83349 c!199524) b!1198906))

(assert (= (and bm!83349 (not c!199524)) b!1198905))

(assert (= (or b!1198913 b!1198905 b!1198919 b!1198908) bm!83350))

(assert (= (or b!1198913 bm!83349) bm!83351))

(assert (= (and b!1198922 c!199519) b!1198923))

(assert (= (and b!1198922 (not c!199519)) b!1198917))

(assert (= (and b!1198917 c!199522) b!1198925))

(assert (= (and b!1198917 (not c!199522)) b!1198907))

(assert (= (or b!1198925 b!1198907) bm!83347))

(assert (= (and bm!83347 c!199520) b!1198911))

(assert (= (and bm!83347 (not c!199520)) b!1198921))

(assert (= (or b!1198923 b!1198907 b!1198917 b!1198921) bm!83352))

(assert (= (or b!1198923 bm!83347) bm!83348))

(assert (= (and d!342761 res!540851) b!1198918))

(declare-fun m!1374293 () Bool)

(assert (=> b!1198912 m!1374293))

(declare-fun m!1374295 () Bool)

(assert (=> d!342761 m!1374295))

(declare-fun m!1374297 () Bool)

(assert (=> b!1198907 m!1374297))

(assert (=> b!1198907 m!1374297))

(declare-fun m!1374299 () Bool)

(assert (=> b!1198907 m!1374299))

(declare-fun m!1374301 () Bool)

(assert (=> b!1198920 m!1374301))

(declare-fun m!1374303 () Bool)

(assert (=> bm!83352 m!1374303))

(declare-fun m!1374305 () Bool)

(assert (=> b!1198922 m!1374305))

(declare-fun m!1374307 () Bool)

(assert (=> b!1198922 m!1374307))

(assert (=> b!1198922 m!1374303))

(declare-fun m!1374309 () Bool)

(assert (=> b!1198922 m!1374309))

(assert (=> b!1198922 m!1374309))

(declare-fun m!1374311 () Bool)

(assert (=> b!1198922 m!1374311))

(declare-fun m!1374313 () Bool)

(assert (=> b!1198922 m!1374313))

(declare-fun m!1374315 () Bool)

(assert (=> b!1198922 m!1374315))

(declare-fun m!1374317 () Bool)

(assert (=> b!1198916 m!1374317))

(assert (=> bm!83350 m!1374313))

(declare-fun m!1374319 () Bool)

(assert (=> bm!83351 m!1374319))

(declare-fun m!1374321 () Bool)

(assert (=> bm!83348 m!1374321))

(declare-fun m!1374323 () Bool)

(assert (=> b!1198918 m!1374323))

(assert (=> b!1198918 m!1374177))

(assert (=> b!1198918 m!1374177))

(declare-fun m!1374325 () Bool)

(assert (=> b!1198918 m!1374325))

(declare-fun m!1374327 () Bool)

(assert (=> b!1198919 m!1374327))

(assert (=> b!1198919 m!1374327))

(declare-fun m!1374329 () Bool)

(assert (=> b!1198919 m!1374329))

(assert (=> b!1198744 d!342761))

(declare-fun b!1198954 () Bool)

(declare-fun res!540860 () Bool)

(declare-fun e!769736 () Bool)

(assert (=> b!1198954 (=> (not res!540860) (not e!769736))))

(assert (=> b!1198954 (= res!540860 (isBalanced!1157 (right!10836 t!4115)))))

(declare-fun b!1198955 () Bool)

(declare-fun e!769735 () Bool)

(assert (=> b!1198955 (= e!769735 e!769736)))

(declare-fun res!540857 () Bool)

(assert (=> b!1198955 (=> (not res!540857) (not e!769736))))

(assert (=> b!1198955 (= res!540857 (<= (- 1) (- (height!566 (left!10506 t!4115)) (height!566 (right!10836 t!4115)))))))

(declare-fun d!342787 () Bool)

(declare-fun res!540859 () Bool)

(assert (=> d!342787 (=> res!540859 e!769735)))

(assert (=> d!342787 (= res!540859 (not ((_ is Node!3972) t!4115)))))

(assert (=> d!342787 (= (isBalanced!1157 t!4115) e!769735)))

(declare-fun b!1198956 () Bool)

(declare-fun res!540861 () Bool)

(assert (=> b!1198956 (=> (not res!540861) (not e!769736))))

(assert (=> b!1198956 (= res!540861 (isBalanced!1157 (left!10506 t!4115)))))

(declare-fun b!1198957 () Bool)

(declare-fun res!540858 () Bool)

(assert (=> b!1198957 (=> (not res!540858) (not e!769736))))

(assert (=> b!1198957 (= res!540858 (<= (- (height!566 (left!10506 t!4115)) (height!566 (right!10836 t!4115))) 1))))

(declare-fun b!1198958 () Bool)

(declare-fun res!540856 () Bool)

(assert (=> b!1198958 (=> (not res!540856) (not e!769736))))

(assert (=> b!1198958 (= res!540856 (not (isEmpty!7257 (left!10506 t!4115))))))

(declare-fun b!1198959 () Bool)

(assert (=> b!1198959 (= e!769736 (not (isEmpty!7257 (right!10836 t!4115))))))

(assert (= (and d!342787 (not res!540859)) b!1198955))

(assert (= (and b!1198955 res!540857) b!1198957))

(assert (= (and b!1198957 res!540858) b!1198956))

(assert (= (and b!1198956 res!540861) b!1198954))

(assert (= (and b!1198954 res!540860) b!1198958))

(assert (= (and b!1198958 res!540856) b!1198959))

(declare-fun m!1374331 () Bool)

(assert (=> b!1198957 m!1374331))

(declare-fun m!1374333 () Bool)

(assert (=> b!1198957 m!1374333))

(declare-fun m!1374335 () Bool)

(assert (=> b!1198958 m!1374335))

(declare-fun m!1374337 () Bool)

(assert (=> b!1198959 m!1374337))

(assert (=> b!1198954 m!1374317))

(declare-fun m!1374339 () Bool)

(assert (=> b!1198956 m!1374339))

(assert (=> b!1198955 m!1374331))

(assert (=> b!1198955 m!1374333))

(assert (=> b!1198748 d!342787))

(declare-fun d!342789 () Bool)

(declare-fun c!199549 () Bool)

(assert (=> d!342789 (= c!199549 ((_ is Empty!3972) lt!410521))))

(declare-fun e!769749 () List!12063)

(assert (=> d!342789 (= (list!4477 lt!410521) e!769749)))

(declare-fun b!1198984 () Bool)

(declare-fun e!769750 () List!12063)

(declare-fun list!4479 (IArray!7949) List!12063)

(assert (=> b!1198984 (= e!769750 (list!4479 (xs!6679 lt!410521)))))

(declare-fun b!1198983 () Bool)

(assert (=> b!1198983 (= e!769749 e!769750)))

(declare-fun c!199550 () Bool)

(assert (=> b!1198983 (= c!199550 ((_ is Leaf!6083) lt!410521))))

(declare-fun b!1198982 () Bool)

(assert (=> b!1198982 (= e!769749 Nil!12039)))

(declare-fun b!1198985 () Bool)

(assert (=> b!1198985 (= e!769750 (++!3074 (list!4477 (left!10506 lt!410521)) (list!4477 (right!10836 lt!410521))))))

(assert (= (and d!342789 c!199549) b!1198982))

(assert (= (and d!342789 (not c!199549)) b!1198983))

(assert (= (and b!1198983 c!199550) b!1198984))

(assert (= (and b!1198983 (not c!199550)) b!1198985))

(declare-fun m!1374341 () Bool)

(assert (=> b!1198984 m!1374341))

(declare-fun m!1374343 () Bool)

(assert (=> b!1198985 m!1374343))

(declare-fun m!1374345 () Bool)

(assert (=> b!1198985 m!1374345))

(assert (=> b!1198985 m!1374343))

(assert (=> b!1198985 m!1374345))

(declare-fun m!1374347 () Bool)

(assert (=> b!1198985 m!1374347))

(assert (=> b!1198749 d!342789))

(declare-fun d!342791 () Bool)

(declare-fun take!125 (List!12063 Int) List!12063)

(declare-fun drop!597 (List!12063 Int) List!12063)

(assert (=> d!342791 (= (slice!464 (list!4477 t!4115) from!553 until!31) (take!125 (drop!597 (list!4477 t!4115) from!553) (- until!31 from!553)))))

(declare-fun bs!288208 () Bool)

(assert (= bs!288208 d!342791))

(assert (=> bs!288208 m!1374159))

(declare-fun m!1374399 () Bool)

(assert (=> bs!288208 m!1374399))

(assert (=> bs!288208 m!1374399))

(declare-fun m!1374401 () Bool)

(assert (=> bs!288208 m!1374401))

(assert (=> b!1198749 d!342791))

(declare-fun d!342801 () Bool)

(declare-fun c!199564 () Bool)

(assert (=> d!342801 (= c!199564 ((_ is Empty!3972) t!4115))))

(declare-fun e!769768 () List!12063)

(assert (=> d!342801 (= (list!4477 t!4115) e!769768)))

(declare-fun b!1199023 () Bool)

(declare-fun e!769769 () List!12063)

(assert (=> b!1199023 (= e!769769 (list!4479 (xs!6679 t!4115)))))

(declare-fun b!1199022 () Bool)

(assert (=> b!1199022 (= e!769768 e!769769)))

(declare-fun c!199565 () Bool)

(assert (=> b!1199022 (= c!199565 ((_ is Leaf!6083) t!4115))))

(declare-fun b!1199021 () Bool)

(assert (=> b!1199021 (= e!769768 Nil!12039)))

(declare-fun b!1199024 () Bool)

(assert (=> b!1199024 (= e!769769 (++!3074 (list!4477 (left!10506 t!4115)) (list!4477 (right!10836 t!4115))))))

(assert (= (and d!342801 c!199564) b!1199021))

(assert (= (and d!342801 (not c!199564)) b!1199022))

(assert (= (and b!1199022 c!199565) b!1199023))

(assert (= (and b!1199022 (not c!199565)) b!1199024))

(declare-fun m!1374413 () Bool)

(assert (=> b!1199023 m!1374413))

(assert (=> b!1199024 m!1374173))

(assert (=> b!1199024 m!1374177))

(assert (=> b!1199024 m!1374173))

(assert (=> b!1199024 m!1374177))

(declare-fun m!1374415 () Bool)

(assert (=> b!1199024 m!1374415))

(assert (=> b!1198749 d!342801))

(declare-fun d!342803 () Bool)

(declare-fun c!199568 () Bool)

(assert (=> d!342803 (= c!199568 ((_ is Node!3972) (left!10506 t!4115)))))

(declare-fun e!769785 () Bool)

(assert (=> d!342803 (= (inv!16093 (left!10506 t!4115)) e!769785)))

(declare-fun b!1199050 () Bool)

(declare-fun inv!16097 (Conc!3972) Bool)

(assert (=> b!1199050 (= e!769785 (inv!16097 (left!10506 t!4115)))))

(declare-fun b!1199051 () Bool)

(declare-fun e!769786 () Bool)

(assert (=> b!1199051 (= e!769785 e!769786)))

(declare-fun res!540875 () Bool)

(assert (=> b!1199051 (= res!540875 (not ((_ is Leaf!6083) (left!10506 t!4115))))))

(assert (=> b!1199051 (=> res!540875 e!769786)))

(declare-fun b!1199052 () Bool)

(declare-fun inv!16098 (Conc!3972) Bool)

(assert (=> b!1199052 (= e!769786 (inv!16098 (left!10506 t!4115)))))

(assert (= (and d!342803 c!199568) b!1199050))

(assert (= (and d!342803 (not c!199568)) b!1199051))

(assert (= (and b!1199051 (not res!540875)) b!1199052))

(declare-fun m!1374429 () Bool)

(assert (=> b!1199050 m!1374429))

(declare-fun m!1374431 () Bool)

(assert (=> b!1199052 m!1374431))

(assert (=> b!1198745 d!342803))

(declare-fun d!342805 () Bool)

(declare-fun c!199569 () Bool)

(assert (=> d!342805 (= c!199569 ((_ is Node!3972) (right!10836 t!4115)))))

(declare-fun e!769787 () Bool)

(assert (=> d!342805 (= (inv!16093 (right!10836 t!4115)) e!769787)))

(declare-fun b!1199053 () Bool)

(assert (=> b!1199053 (= e!769787 (inv!16097 (right!10836 t!4115)))))

(declare-fun b!1199054 () Bool)

(declare-fun e!769788 () Bool)

(assert (=> b!1199054 (= e!769787 e!769788)))

(declare-fun res!540876 () Bool)

(assert (=> b!1199054 (= res!540876 (not ((_ is Leaf!6083) (right!10836 t!4115))))))

(assert (=> b!1199054 (=> res!540876 e!769788)))

(declare-fun b!1199055 () Bool)

(assert (=> b!1199055 (= e!769788 (inv!16098 (right!10836 t!4115)))))

(assert (= (and d!342805 c!199569) b!1199053))

(assert (= (and d!342805 (not c!199569)) b!1199054))

(assert (= (and b!1199054 (not res!540876)) b!1199055))

(declare-fun m!1374433 () Bool)

(assert (=> b!1199053 m!1374433))

(declare-fun m!1374435 () Bool)

(assert (=> b!1199055 m!1374435))

(assert (=> b!1198745 d!342805))

(declare-fun d!342807 () Bool)

(declare-fun lt!410573 () Int)

(assert (=> d!342807 (= lt!410573 (size!9563 (list!4477 t!4115)))))

(assert (=> d!342807 (= lt!410573 (ite ((_ is Empty!3972) t!4115) 0 (ite ((_ is Leaf!6083) t!4115) (csize!8175 t!4115) (csize!8174 t!4115))))))

(assert (=> d!342807 (= (size!9562 t!4115) lt!410573)))

(declare-fun bs!288209 () Bool)

(assert (= bs!288209 d!342807))

(assert (=> bs!288209 m!1374159))

(assert (=> bs!288209 m!1374159))

(declare-fun m!1374437 () Bool)

(assert (=> bs!288209 m!1374437))

(assert (=> b!1198746 d!342807))

(declare-fun d!342809 () Bool)

(declare-fun c!199570 () Bool)

(assert (=> d!342809 (= c!199570 ((_ is Node!3972) t!4115))))

(declare-fun e!769789 () Bool)

(assert (=> d!342809 (= (inv!16093 t!4115) e!769789)))

(declare-fun b!1199056 () Bool)

(assert (=> b!1199056 (= e!769789 (inv!16097 t!4115))))

(declare-fun b!1199057 () Bool)

(declare-fun e!769790 () Bool)

(assert (=> b!1199057 (= e!769789 e!769790)))

(declare-fun res!540877 () Bool)

(assert (=> b!1199057 (= res!540877 (not ((_ is Leaf!6083) t!4115)))))

(assert (=> b!1199057 (=> res!540877 e!769790)))

(declare-fun b!1199058 () Bool)

(assert (=> b!1199058 (= e!769790 (inv!16098 t!4115))))

(assert (= (and d!342809 c!199570) b!1199056))

(assert (= (and d!342809 (not c!199570)) b!1199057))

(assert (= (and b!1199057 (not res!540877)) b!1199058))

(declare-fun m!1374439 () Bool)

(assert (=> b!1199056 m!1374439))

(declare-fun m!1374441 () Bool)

(assert (=> b!1199058 m!1374441))

(assert (=> start!106712 d!342809))

(declare-fun d!342811 () Bool)

(assert (=> d!342811 (= (inv!16094 (xs!6679 t!4115)) (<= (size!9563 (innerList!4032 (xs!6679 t!4115))) 2147483647))))

(declare-fun bs!288210 () Bool)

(assert (= bs!288210 d!342811))

(declare-fun m!1374443 () Bool)

(assert (=> bs!288210 m!1374443))

(assert (=> b!1198750 d!342811))

(declare-fun d!342813 () Bool)

(declare-fun lt!410574 () Int)

(assert (=> d!342813 (= lt!410574 (size!9563 (list!4477 (left!10506 t!4115))))))

(assert (=> d!342813 (= lt!410574 (ite ((_ is Empty!3972) (left!10506 t!4115)) 0 (ite ((_ is Leaf!6083) (left!10506 t!4115)) (csize!8175 (left!10506 t!4115)) (csize!8174 (left!10506 t!4115)))))))

(assert (=> d!342813 (= (size!9562 (left!10506 t!4115)) lt!410574)))

(declare-fun bs!288211 () Bool)

(assert (= bs!288211 d!342813))

(assert (=> bs!288211 m!1374173))

(assert (=> bs!288211 m!1374173))

(declare-fun m!1374445 () Bool)

(assert (=> bs!288211 m!1374445))

(assert (=> b!1198751 d!342813))

(declare-fun d!342815 () Bool)

(assert (=> d!342815 (= (slice!464 (++!3074 lt!410524 lt!410523) from!553 until!31) (take!125 (drop!597 (++!3074 lt!410524 lt!410523) from!553) (- until!31 from!553)))))

(declare-fun bs!288212 () Bool)

(assert (= bs!288212 d!342815))

(assert (=> bs!288212 m!1374175))

(declare-fun m!1374447 () Bool)

(assert (=> bs!288212 m!1374447))

(assert (=> bs!288212 m!1374447))

(declare-fun m!1374449 () Bool)

(assert (=> bs!288212 m!1374449))

(assert (=> b!1198751 d!342815))

(declare-fun bm!83377 () Bool)

(declare-fun c!199579 () Bool)

(declare-fun c!199578 () Bool)

(assert (=> bm!83377 (= c!199579 c!199578)))

(declare-fun call!83383 () List!12063)

(declare-fun call!83382 () List!12063)

(assert (=> bm!83377 (= call!83383 call!83382)))

(declare-fun e!769802 () List!12063)

(declare-fun call!83384 () Int)

(declare-fun b!1199073 () Bool)

(assert (=> b!1199073 (= e!769802 (++!3074 call!83383 (slice!464 lt!410523 0 (- until!31 call!83384))))))

(declare-fun b!1199074 () Bool)

(declare-fun e!769800 () Int)

(assert (=> b!1199074 (= e!769800 until!31)))

(declare-fun b!1199075 () Bool)

(declare-fun e!769799 () List!12063)

(assert (=> b!1199075 (= e!769799 call!83382)))

(declare-fun b!1199076 () Bool)

(assert (=> b!1199076 (= e!769802 call!83383)))

(declare-fun b!1199077 () Bool)

(assert (=> b!1199077 (= e!769799 e!769802)))

(assert (=> b!1199077 (= c!199578 (<= until!31 call!83384))))

(declare-fun d!342817 () Bool)

(assert (=> d!342817 (= (slice!464 (++!3074 lt!410524 lt!410523) from!553 until!31) e!769799)))

(declare-fun c!199577 () Bool)

(assert (=> d!342817 (= c!199577 (<= (size!9563 lt!410524) from!553))))

(declare-fun lt!410577 () Unit!18448)

(declare-fun choose!7728 (List!12063 List!12063 Int Int) Unit!18448)

(assert (=> d!342817 (= lt!410577 (choose!7728 lt!410524 lt!410523 from!553 until!31))))

(declare-fun e!769801 () Bool)

(assert (=> d!342817 e!769801))

(declare-fun res!540880 () Bool)

(assert (=> d!342817 (=> (not res!540880) (not e!769801))))

(assert (=> d!342817 (= res!540880 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!342817 (= (sliceLemma!35 lt!410524 lt!410523 from!553 until!31) lt!410577)))

(declare-fun bm!83378 () Bool)

(assert (=> bm!83378 (= call!83382 (slice!464 (ite c!199577 lt!410523 lt!410524) (ite c!199577 (- from!553 call!83384) from!553) (ite c!199577 (- until!31 call!83384) e!769800)))))

(declare-fun b!1199078 () Bool)

(assert (=> b!1199078 (= e!769801 (<= until!31 (+ (size!9563 lt!410524) (size!9563 lt!410523))))))

(declare-fun bm!83379 () Bool)

(assert (=> bm!83379 (= call!83384 (size!9563 lt!410524))))

(declare-fun b!1199079 () Bool)

(assert (=> b!1199079 (= e!769800 call!83384)))

(assert (= (and d!342817 res!540880) b!1199078))

(assert (= (and d!342817 c!199577) b!1199075))

(assert (= (and d!342817 (not c!199577)) b!1199077))

(assert (= (and b!1199077 c!199578) b!1199076))

(assert (= (and b!1199077 (not c!199578)) b!1199073))

(assert (= (or b!1199076 b!1199073) bm!83377))

(assert (= (and bm!83377 c!199579) b!1199074))

(assert (= (and bm!83377 (not c!199579)) b!1199079))

(assert (= (or b!1199075 b!1199073 b!1199077 b!1199079) bm!83379))

(assert (= (or b!1199075 bm!83377) bm!83378))

(declare-fun m!1374451 () Bool)

(assert (=> bm!83378 m!1374451))

(assert (=> b!1199078 m!1374179))

(declare-fun m!1374453 () Bool)

(assert (=> b!1199078 m!1374453))

(assert (=> bm!83379 m!1374179))

(declare-fun m!1374455 () Bool)

(assert (=> b!1199073 m!1374455))

(assert (=> b!1199073 m!1374455))

(declare-fun m!1374457 () Bool)

(assert (=> b!1199073 m!1374457))

(assert (=> d!342817 m!1374175))

(assert (=> d!342817 m!1374175))

(assert (=> d!342817 m!1374185))

(assert (=> d!342817 m!1374179))

(declare-fun m!1374459 () Bool)

(assert (=> d!342817 m!1374459))

(assert (=> b!1198751 d!342817))

(declare-fun d!342819 () Bool)

(declare-fun e!769807 () Bool)

(assert (=> d!342819 e!769807))

(declare-fun res!540886 () Bool)

(assert (=> d!342819 (=> (not res!540886) (not e!769807))))

(declare-fun lt!410580 () List!12063)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1686 (List!12063) (InoxSet T!21754))

(assert (=> d!342819 (= res!540886 (= (content!1686 lt!410580) ((_ map or) (content!1686 lt!410524) (content!1686 lt!410523))))))

(declare-fun e!769808 () List!12063)

(assert (=> d!342819 (= lt!410580 e!769808)))

(declare-fun c!199582 () Bool)

(assert (=> d!342819 (= c!199582 ((_ is Nil!12039) lt!410524))))

(assert (=> d!342819 (= (++!3074 lt!410524 lt!410523) lt!410580)))

(declare-fun b!1199090 () Bool)

(declare-fun res!540885 () Bool)

(assert (=> b!1199090 (=> (not res!540885) (not e!769807))))

(assert (=> b!1199090 (= res!540885 (= (size!9563 lt!410580) (+ (size!9563 lt!410524) (size!9563 lt!410523))))))

(declare-fun b!1199089 () Bool)

(assert (=> b!1199089 (= e!769808 (Cons!12039 (h!17440 lt!410524) (++!3074 (t!112413 lt!410524) lt!410523)))))

(declare-fun b!1199091 () Bool)

(assert (=> b!1199091 (= e!769807 (or (not (= lt!410523 Nil!12039)) (= lt!410580 lt!410524)))))

(declare-fun b!1199088 () Bool)

(assert (=> b!1199088 (= e!769808 lt!410523)))

(assert (= (and d!342819 c!199582) b!1199088))

(assert (= (and d!342819 (not c!199582)) b!1199089))

(assert (= (and d!342819 res!540886) b!1199090))

(assert (= (and b!1199090 res!540885) b!1199091))

(declare-fun m!1374461 () Bool)

(assert (=> d!342819 m!1374461))

(declare-fun m!1374463 () Bool)

(assert (=> d!342819 m!1374463))

(declare-fun m!1374465 () Bool)

(assert (=> d!342819 m!1374465))

(declare-fun m!1374467 () Bool)

(assert (=> b!1199090 m!1374467))

(assert (=> b!1199090 m!1374179))

(assert (=> b!1199090 m!1374453))

(declare-fun m!1374469 () Bool)

(assert (=> b!1199089 m!1374469))

(assert (=> b!1198751 d!342819))

(declare-fun d!342821 () Bool)

(declare-fun c!199583 () Bool)

(assert (=> d!342821 (= c!199583 ((_ is Empty!3972) (left!10506 t!4115)))))

(declare-fun e!769809 () List!12063)

(assert (=> d!342821 (= (list!4477 (left!10506 t!4115)) e!769809)))

(declare-fun b!1199094 () Bool)

(declare-fun e!769810 () List!12063)

(assert (=> b!1199094 (= e!769810 (list!4479 (xs!6679 (left!10506 t!4115))))))

(declare-fun b!1199093 () Bool)

(assert (=> b!1199093 (= e!769809 e!769810)))

(declare-fun c!199584 () Bool)

(assert (=> b!1199093 (= c!199584 ((_ is Leaf!6083) (left!10506 t!4115)))))

(declare-fun b!1199092 () Bool)

(assert (=> b!1199092 (= e!769809 Nil!12039)))

(declare-fun b!1199095 () Bool)

(assert (=> b!1199095 (= e!769810 (++!3074 (list!4477 (left!10506 (left!10506 t!4115))) (list!4477 (right!10836 (left!10506 t!4115)))))))

(assert (= (and d!342821 c!199583) b!1199092))

(assert (= (and d!342821 (not c!199583)) b!1199093))

(assert (= (and b!1199093 c!199584) b!1199094))

(assert (= (and b!1199093 (not c!199584)) b!1199095))

(declare-fun m!1374471 () Bool)

(assert (=> b!1199094 m!1374471))

(declare-fun m!1374473 () Bool)

(assert (=> b!1199095 m!1374473))

(declare-fun m!1374475 () Bool)

(assert (=> b!1199095 m!1374475))

(assert (=> b!1199095 m!1374473))

(assert (=> b!1199095 m!1374475))

(declare-fun m!1374477 () Bool)

(assert (=> b!1199095 m!1374477))

(assert (=> b!1198751 d!342821))

(declare-fun d!342823 () Bool)

(declare-fun c!199585 () Bool)

(assert (=> d!342823 (= c!199585 ((_ is Empty!3972) (right!10836 t!4115)))))

(declare-fun e!769811 () List!12063)

(assert (=> d!342823 (= (list!4477 (right!10836 t!4115)) e!769811)))

(declare-fun b!1199098 () Bool)

(declare-fun e!769812 () List!12063)

(assert (=> b!1199098 (= e!769812 (list!4479 (xs!6679 (right!10836 t!4115))))))

(declare-fun b!1199097 () Bool)

(assert (=> b!1199097 (= e!769811 e!769812)))

(declare-fun c!199586 () Bool)

(assert (=> b!1199097 (= c!199586 ((_ is Leaf!6083) (right!10836 t!4115)))))

(declare-fun b!1199096 () Bool)

(assert (=> b!1199096 (= e!769811 Nil!12039)))

(declare-fun b!1199099 () Bool)

(assert (=> b!1199099 (= e!769812 (++!3074 (list!4477 (left!10506 (right!10836 t!4115))) (list!4477 (right!10836 (right!10836 t!4115)))))))

(assert (= (and d!342823 c!199585) b!1199096))

(assert (= (and d!342823 (not c!199585)) b!1199097))

(assert (= (and b!1199097 c!199586) b!1199098))

(assert (= (and b!1199097 (not c!199586)) b!1199099))

(declare-fun m!1374479 () Bool)

(assert (=> b!1199098 m!1374479))

(assert (=> b!1199099 m!1374315))

(assert (=> b!1199099 m!1374305))

(assert (=> b!1199099 m!1374315))

(assert (=> b!1199099 m!1374305))

(declare-fun m!1374481 () Bool)

(assert (=> b!1199099 m!1374481))

(assert (=> b!1198751 d!342823))

(declare-fun d!342825 () Bool)

(declare-fun lt!410583 () Int)

(assert (=> d!342825 (>= lt!410583 0)))

(declare-fun e!769815 () Int)

(assert (=> d!342825 (= lt!410583 e!769815)))

(declare-fun c!199589 () Bool)

(assert (=> d!342825 (= c!199589 ((_ is Nil!12039) lt!410524))))

(assert (=> d!342825 (= (size!9563 lt!410524) lt!410583)))

(declare-fun b!1199104 () Bool)

(assert (=> b!1199104 (= e!769815 0)))

(declare-fun b!1199105 () Bool)

(assert (=> b!1199105 (= e!769815 (+ 1 (size!9563 (t!112413 lt!410524))))))

(assert (= (and d!342825 c!199589) b!1199104))

(assert (= (and d!342825 (not c!199589)) b!1199105))

(declare-fun m!1374483 () Bool)

(assert (=> b!1199105 m!1374483))

(assert (=> b!1198751 d!342825))

(declare-fun d!342827 () Bool)

(declare-fun e!769816 () Bool)

(assert (=> d!342827 e!769816))

(declare-fun res!540888 () Bool)

(assert (=> d!342827 (=> (not res!540888) (not e!769816))))

(declare-fun lt!410584 () List!12063)

(assert (=> d!342827 (= res!540888 (= (content!1686 lt!410584) ((_ map or) (content!1686 call!83329) (content!1686 (slice!464 lt!410523 0 (- until!31 lt!410520))))))))

(declare-fun e!769817 () List!12063)

(assert (=> d!342827 (= lt!410584 e!769817)))

(declare-fun c!199590 () Bool)

(assert (=> d!342827 (= c!199590 ((_ is Nil!12039) call!83329))))

(assert (=> d!342827 (= (++!3074 call!83329 (slice!464 lt!410523 0 (- until!31 lt!410520))) lt!410584)))

(declare-fun b!1199108 () Bool)

(declare-fun res!540887 () Bool)

(assert (=> b!1199108 (=> (not res!540887) (not e!769816))))

(assert (=> b!1199108 (= res!540887 (= (size!9563 lt!410584) (+ (size!9563 call!83329) (size!9563 (slice!464 lt!410523 0 (- until!31 lt!410520))))))))

(declare-fun b!1199107 () Bool)

(assert (=> b!1199107 (= e!769817 (Cons!12039 (h!17440 call!83329) (++!3074 (t!112413 call!83329) (slice!464 lt!410523 0 (- until!31 lt!410520)))))))

(declare-fun b!1199109 () Bool)

(assert (=> b!1199109 (= e!769816 (or (not (= (slice!464 lt!410523 0 (- until!31 lt!410520)) Nil!12039)) (= lt!410584 call!83329)))))

(declare-fun b!1199106 () Bool)

(assert (=> b!1199106 (= e!769817 (slice!464 lt!410523 0 (- until!31 lt!410520)))))

(assert (= (and d!342827 c!199590) b!1199106))

(assert (= (and d!342827 (not c!199590)) b!1199107))

(assert (= (and d!342827 res!540888) b!1199108))

(assert (= (and b!1199108 res!540887) b!1199109))

(declare-fun m!1374485 () Bool)

(assert (=> d!342827 m!1374485))

(declare-fun m!1374487 () Bool)

(assert (=> d!342827 m!1374487))

(assert (=> d!342827 m!1374151))

(declare-fun m!1374489 () Bool)

(assert (=> d!342827 m!1374489))

(declare-fun m!1374491 () Bool)

(assert (=> b!1199108 m!1374491))

(declare-fun m!1374493 () Bool)

(assert (=> b!1199108 m!1374493))

(assert (=> b!1199108 m!1374151))

(declare-fun m!1374495 () Bool)

(assert (=> b!1199108 m!1374495))

(assert (=> b!1199107 m!1374151))

(declare-fun m!1374497 () Bool)

(assert (=> b!1199107 m!1374497))

(assert (=> b!1198741 d!342827))

(declare-fun d!342829 () Bool)

(assert (=> d!342829 (= (slice!464 lt!410523 0 (- until!31 lt!410520)) (take!125 (drop!597 lt!410523 0) (- (- until!31 lt!410520) 0)))))

(declare-fun bs!288213 () Bool)

(assert (= bs!288213 d!342829))

(declare-fun m!1374499 () Bool)

(assert (=> bs!288213 m!1374499))

(assert (=> bs!288213 m!1374499))

(declare-fun m!1374501 () Bool)

(assert (=> bs!288213 m!1374501))

(assert (=> b!1198741 d!342829))

(declare-fun d!342831 () Bool)

(assert (=> d!342831 (= (slice!464 (ite c!199469 lt!410523 lt!410524) (ite c!199469 (- from!553 lt!410520) from!553) (ite c!199469 (- until!31 lt!410520) (ite c!199470 until!31 lt!410520))) (take!125 (drop!597 (ite c!199469 lt!410523 lt!410524) (ite c!199469 (- from!553 lt!410520) from!553)) (- (ite c!199469 (- until!31 lt!410520) (ite c!199470 until!31 lt!410520)) (ite c!199469 (- from!553 lt!410520) from!553))))))

(declare-fun bs!288214 () Bool)

(assert (= bs!288214 d!342831))

(declare-fun m!1374503 () Bool)

(assert (=> bs!288214 m!1374503))

(assert (=> bs!288214 m!1374503))

(declare-fun m!1374505 () Bool)

(assert (=> bs!288214 m!1374505))

(assert (=> bm!83325 d!342831))

(declare-fun tp!341107 () Bool)

(declare-fun b!1199118 () Bool)

(declare-fun tp!341109 () Bool)

(declare-fun e!769822 () Bool)

(assert (=> b!1199118 (= e!769822 (and (inv!16093 (left!10506 (left!10506 t!4115))) tp!341109 (inv!16093 (right!10836 (left!10506 t!4115))) tp!341107))))

(declare-fun b!1199120 () Bool)

(declare-fun e!769823 () Bool)

(declare-fun tp!341108 () Bool)

(assert (=> b!1199120 (= e!769823 tp!341108)))

(declare-fun b!1199119 () Bool)

(assert (=> b!1199119 (= e!769822 (and (inv!16094 (xs!6679 (left!10506 t!4115))) e!769823))))

(assert (=> b!1198745 (= tp!341085 (and (inv!16093 (left!10506 t!4115)) e!769822))))

(assert (= (and b!1198745 ((_ is Node!3972) (left!10506 t!4115))) b!1199118))

(assert (= b!1199119 b!1199120))

(assert (= (and b!1198745 ((_ is Leaf!6083) (left!10506 t!4115))) b!1199119))

(declare-fun m!1374507 () Bool)

(assert (=> b!1199118 m!1374507))

(declare-fun m!1374509 () Bool)

(assert (=> b!1199118 m!1374509))

(declare-fun m!1374511 () Bool)

(assert (=> b!1199119 m!1374511))

(assert (=> b!1198745 m!1374165))

(declare-fun b!1199121 () Bool)

(declare-fun tp!341112 () Bool)

(declare-fun e!769824 () Bool)

(declare-fun tp!341110 () Bool)

(assert (=> b!1199121 (= e!769824 (and (inv!16093 (left!10506 (right!10836 t!4115))) tp!341112 (inv!16093 (right!10836 (right!10836 t!4115))) tp!341110))))

(declare-fun b!1199123 () Bool)

(declare-fun e!769825 () Bool)

(declare-fun tp!341111 () Bool)

(assert (=> b!1199123 (= e!769825 tp!341111)))

(declare-fun b!1199122 () Bool)

(assert (=> b!1199122 (= e!769824 (and (inv!16094 (xs!6679 (right!10836 t!4115))) e!769825))))

(assert (=> b!1198745 (= tp!341083 (and (inv!16093 (right!10836 t!4115)) e!769824))))

(assert (= (and b!1198745 ((_ is Node!3972) (right!10836 t!4115))) b!1199121))

(assert (= b!1199122 b!1199123))

(assert (= (and b!1198745 ((_ is Leaf!6083) (right!10836 t!4115))) b!1199122))

(declare-fun m!1374513 () Bool)

(assert (=> b!1199121 m!1374513))

(declare-fun m!1374515 () Bool)

(assert (=> b!1199121 m!1374515))

(declare-fun m!1374517 () Bool)

(assert (=> b!1199122 m!1374517))

(assert (=> b!1198745 m!1374167))

(declare-fun b!1199128 () Bool)

(declare-fun e!769828 () Bool)

(declare-fun tp_is_empty!5971 () Bool)

(declare-fun tp!341115 () Bool)

(assert (=> b!1199128 (= e!769828 (and tp_is_empty!5971 tp!341115))))

(assert (=> b!1198747 (= tp!341084 e!769828)))

(assert (= (and b!1198747 ((_ is Cons!12039) (innerList!4032 (xs!6679 t!4115)))) b!1199128))

(check-sat (not b!1198774) (not b!1199053) (not bm!83352) (not b!1198959) (not bm!83378) (not b!1199105) (not d!342811) (not b!1198918) (not b!1199023) (not b!1198912) (not b!1198775) (not b!1198777) (not d!342815) (not b!1198778) (not bm!83379) (not b!1198907) (not b!1199090) (not b!1199107) (not bm!83348) (not b!1199108) (not d!342791) (not d!342827) (not b!1199056) (not b!1198745) (not d!342819) (not b!1198955) (not d!342761) (not b!1199122) (not d!342831) (not bm!83350) (not b!1198776) (not b!1198957) (not b!1198984) (not b!1199098) tp_is_empty!5971 (not b!1198958) (not d!342817) (not b!1198920) (not b!1199073) (not d!342807) (not b!1199078) (not b!1199123) (not b!1199118) (not b!1199121) (not b!1198985) (not b!1198922) (not b!1199055) (not bm!83351) (not b!1199058) (not b!1198919) (not b!1199099) (not d!342813) (not b!1198954) (not b!1199024) (not d!342829) (not b!1198916) (not b!1199120) (not b!1199089) (not b!1198779) (not b!1199094) (not b!1199119) (not b!1199128) (not b!1198956) (not b!1199050) (not b!1199052) (not b!1199095))
(check-sat)
