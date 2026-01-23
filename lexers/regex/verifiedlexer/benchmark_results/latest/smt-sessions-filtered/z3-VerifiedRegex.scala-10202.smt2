; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532498 () Bool)

(assert start!532498)

(declare-fun res!2145066 () Bool)

(declare-fun e!3144402 () Bool)

(assert (=> start!532498 (=> (not res!2145066) (not e!3144402))))

(declare-datatypes ((T!103942 0))(
  ( (T!103943 (val!23480 Int)) )
))
(declare-datatypes ((List!58390 0))(
  ( (Nil!58266) (Cons!58266 (h!64714 T!103942) (t!370837 List!58390)) )
))
(declare-datatypes ((IArray!31017 0))(
  ( (IArray!31018 (innerList!15566 List!58390)) )
))
(declare-datatypes ((Conc!15478 0))(
  ( (Node!15478 (left!42646 Conc!15478) (right!42976 Conc!15478) (csize!31186 Int) (cheight!15689 Int)) (Leaf!25681 (xs!18804 IArray!31017) (csize!31187 Int)) (Empty!15478) )
))
(declare-fun t!4198 () Conc!15478)

(declare-fun isBalanced!4340 (Conc!15478) Bool)

(assert (=> start!532498 (= res!2145066 (isBalanced!4340 t!4198))))

(assert (=> start!532498 e!3144402))

(declare-fun e!3144400 () Bool)

(declare-fun inv!76973 (Conc!15478) Bool)

(assert (=> start!532498 (and (inv!76973 t!4198) e!3144400)))

(assert (=> start!532498 true))

(declare-fun b!5033807 () Bool)

(declare-fun e!3144398 () Bool)

(declare-fun inv!76974 (IArray!31017) Bool)

(assert (=> b!5033807 (= e!3144400 (and (inv!76974 (xs!18804 t!4198)) e!3144398))))

(declare-fun b!5033808 () Bool)

(declare-fun e!3144401 () Bool)

(declare-fun e!3144397 () Bool)

(assert (=> b!5033808 (= e!3144401 e!3144397)))

(declare-fun res!2145069 () Bool)

(assert (=> b!5033808 (=> (not res!2145069) (not e!3144397))))

(declare-datatypes ((tuple2!63174 0))(
  ( (tuple2!63175 (_1!34890 List!58390) (_2!34890 List!58390)) )
))
(declare-fun lt!2082859 () tuple2!63174)

(declare-fun lt!2082858 () List!58390)

(assert (=> b!5033808 (= res!2145069 (= (_2!34890 lt!2082859) lt!2082858))))

(declare-fun lt!2082860 () List!58390)

(declare-fun i!618 () Int)

(declare-fun drop!2606 (List!58390 Int) List!58390)

(assert (=> b!5033808 (= lt!2082858 (drop!2606 lt!2082860 i!618))))

(declare-fun b!5033809 () Bool)

(declare-fun res!2145070 () Bool)

(assert (=> b!5033809 (=> (not res!2145070) (not e!3144402))))

(get-info :version)

(assert (=> b!5033809 (= res!2145070 (and (not ((_ is Empty!15478) t!4198)) ((_ is Leaf!25681) t!4198) (> i!618 0) (not (= i!618 (csize!31187 t!4198)))))))

(declare-fun b!5033810 () Bool)

(declare-fun e!3144399 () Bool)

(declare-fun size!38827 (IArray!31017) Int)

(assert (=> b!5033810 (= e!3144399 (<= i!618 (size!38827 (xs!18804 t!4198))))))

(declare-fun b!5033811 () Bool)

(declare-fun res!2145068 () Bool)

(assert (=> b!5033811 (=> (not res!2145068) (not e!3144402))))

(declare-fun size!38828 (Conc!15478) Int)

(assert (=> b!5033811 (= res!2145068 (<= i!618 (size!38828 t!4198)))))

(declare-fun b!5033812 () Bool)

(declare-fun res!2145071 () Bool)

(assert (=> b!5033812 (=> (not res!2145071) (not e!3144402))))

(assert (=> b!5033812 (= res!2145071 (<= 0 i!618))))

(declare-fun b!5033813 () Bool)

(assert (=> b!5033813 (= e!3144397 (not e!3144399))))

(declare-fun res!2145065 () Bool)

(assert (=> b!5033813 (=> res!2145065 e!3144399)))

(declare-fun slice!837 (List!58390 Int Int) List!58390)

(assert (=> b!5033813 (= res!2145065 (not (= (_1!34890 lt!2082859) (slice!837 lt!2082860 0 i!618))))))

(declare-fun size!38829 (List!58390) Int)

(assert (=> b!5033813 (= lt!2082858 (slice!837 lt!2082860 i!618 (size!38829 lt!2082860)))))

(declare-datatypes ((Unit!149455 0))(
  ( (Unit!149456) )
))
(declare-fun lt!2082857 () Unit!149455)

(declare-fun dropLemma!62 (List!58390 Int) Unit!149455)

(assert (=> b!5033813 (= lt!2082857 (dropLemma!62 lt!2082860 i!618))))

(declare-fun b!5033814 () Bool)

(declare-fun tp!1410001 () Bool)

(assert (=> b!5033814 (= e!3144398 tp!1410001)))

(declare-fun b!5033815 () Bool)

(assert (=> b!5033815 (= e!3144402 e!3144401)))

(declare-fun res!2145067 () Bool)

(assert (=> b!5033815 (=> (not res!2145067) (not e!3144401))))

(declare-fun take!799 (List!58390 Int) List!58390)

(assert (=> b!5033815 (= res!2145067 (= (_1!34890 lt!2082859) (take!799 lt!2082860 i!618)))))

(declare-fun splitAtIndex!181 (List!58390 Int) tuple2!63174)

(assert (=> b!5033815 (= lt!2082859 (splitAtIndex!181 lt!2082860 i!618))))

(declare-fun list!18851 (IArray!31017) List!58390)

(assert (=> b!5033815 (= lt!2082860 (list!18851 (xs!18804 t!4198)))))

(declare-fun b!5033816 () Bool)

(declare-fun tp!1410002 () Bool)

(declare-fun tp!1410000 () Bool)

(assert (=> b!5033816 (= e!3144400 (and (inv!76973 (left!42646 t!4198)) tp!1410002 (inv!76973 (right!42976 t!4198)) tp!1410000))))

(assert (= (and start!532498 res!2145066) b!5033812))

(assert (= (and b!5033812 res!2145071) b!5033811))

(assert (= (and b!5033811 res!2145068) b!5033809))

(assert (= (and b!5033809 res!2145070) b!5033815))

(assert (= (and b!5033815 res!2145067) b!5033808))

(assert (= (and b!5033808 res!2145069) b!5033813))

(assert (= (and b!5033813 (not res!2145065)) b!5033810))

(assert (= (and start!532498 ((_ is Node!15478) t!4198)) b!5033816))

(assert (= b!5033807 b!5033814))

(assert (= (and start!532498 ((_ is Leaf!25681) t!4198)) b!5033807))

(declare-fun m!6068474 () Bool)

(assert (=> b!5033807 m!6068474))

(declare-fun m!6068476 () Bool)

(assert (=> b!5033810 m!6068476))

(declare-fun m!6068478 () Bool)

(assert (=> b!5033813 m!6068478))

(declare-fun m!6068480 () Bool)

(assert (=> b!5033813 m!6068480))

(assert (=> b!5033813 m!6068480))

(declare-fun m!6068482 () Bool)

(assert (=> b!5033813 m!6068482))

(declare-fun m!6068484 () Bool)

(assert (=> b!5033813 m!6068484))

(declare-fun m!6068486 () Bool)

(assert (=> start!532498 m!6068486))

(declare-fun m!6068488 () Bool)

(assert (=> start!532498 m!6068488))

(declare-fun m!6068490 () Bool)

(assert (=> b!5033815 m!6068490))

(declare-fun m!6068492 () Bool)

(assert (=> b!5033815 m!6068492))

(declare-fun m!6068494 () Bool)

(assert (=> b!5033815 m!6068494))

(declare-fun m!6068496 () Bool)

(assert (=> b!5033808 m!6068496))

(declare-fun m!6068498 () Bool)

(assert (=> b!5033816 m!6068498))

(declare-fun m!6068500 () Bool)

(assert (=> b!5033816 m!6068500))

(declare-fun m!6068502 () Bool)

(assert (=> b!5033811 m!6068502))

(check-sat (not b!5033811) (not start!532498) (not b!5033810) (not b!5033816) (not b!5033814) (not b!5033813) (not b!5033807) (not b!5033808) (not b!5033815))
(check-sat)
(get-model)

(declare-fun b!5033856 () Bool)

(declare-fun e!3144426 () List!58390)

(assert (=> b!5033856 (= e!3144426 (drop!2606 (t!370837 lt!2082860) (- i!618 1)))))

(declare-fun b!5033857 () Bool)

(declare-fun e!3144429 () Bool)

(declare-fun lt!2082866 () List!58390)

(declare-fun e!3144428 () Int)

(assert (=> b!5033857 (= e!3144429 (= (size!38829 lt!2082866) e!3144428))))

(declare-fun c!862070 () Bool)

(assert (=> b!5033857 (= c!862070 (<= i!618 0))))

(declare-fun b!5033858 () Bool)

(declare-fun e!3144427 () Int)

(assert (=> b!5033858 (= e!3144427 0)))

(declare-fun b!5033859 () Bool)

(assert (=> b!5033859 (= e!3144428 e!3144427)))

(declare-fun c!862068 () Bool)

(declare-fun call!351151 () Int)

(assert (=> b!5033859 (= c!862068 (>= i!618 call!351151))))

(declare-fun d!1619621 () Bool)

(assert (=> d!1619621 e!3144429))

(declare-fun res!2145077 () Bool)

(assert (=> d!1619621 (=> (not res!2145077) (not e!3144429))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10333 (List!58390) (InoxSet T!103942))

(assert (=> d!1619621 (= res!2145077 (= ((_ map implies) (content!10333 lt!2082866) (content!10333 lt!2082860)) ((as const (InoxSet T!103942)) true)))))

(declare-fun e!3144425 () List!58390)

(assert (=> d!1619621 (= lt!2082866 e!3144425)))

(declare-fun c!862069 () Bool)

(assert (=> d!1619621 (= c!862069 ((_ is Nil!58266) lt!2082860))))

(assert (=> d!1619621 (= (drop!2606 lt!2082860 i!618) lt!2082866)))

(declare-fun bm!351146 () Bool)

(assert (=> bm!351146 (= call!351151 (size!38829 lt!2082860))))

(declare-fun b!5033860 () Bool)

(assert (=> b!5033860 (= e!3144425 e!3144426)))

(declare-fun c!862067 () Bool)

(assert (=> b!5033860 (= c!862067 (<= i!618 0))))

(declare-fun b!5033861 () Bool)

(assert (=> b!5033861 (= e!3144425 Nil!58266)))

(declare-fun b!5033862 () Bool)

(assert (=> b!5033862 (= e!3144427 (- call!351151 i!618))))

(declare-fun b!5033863 () Bool)

(assert (=> b!5033863 (= e!3144428 call!351151)))

(declare-fun b!5033864 () Bool)

(assert (=> b!5033864 (= e!3144426 lt!2082860)))

(assert (= (and d!1619621 c!862069) b!5033861))

(assert (= (and d!1619621 (not c!862069)) b!5033860))

(assert (= (and b!5033860 c!862067) b!5033864))

(assert (= (and b!5033860 (not c!862067)) b!5033856))

(assert (= (and d!1619621 res!2145077) b!5033857))

(assert (= (and b!5033857 c!862070) b!5033863))

(assert (= (and b!5033857 (not c!862070)) b!5033859))

(assert (= (and b!5033859 c!862068) b!5033858))

(assert (= (and b!5033859 (not c!862068)) b!5033862))

(assert (= (or b!5033863 b!5033859 b!5033862) bm!351146))

(declare-fun m!6068512 () Bool)

(assert (=> b!5033856 m!6068512))

(declare-fun m!6068514 () Bool)

(assert (=> b!5033857 m!6068514))

(declare-fun m!6068516 () Bool)

(assert (=> d!1619621 m!6068516))

(declare-fun m!6068518 () Bool)

(assert (=> d!1619621 m!6068518))

(assert (=> bm!351146 m!6068480))

(assert (=> b!5033808 d!1619621))

(declare-fun b!5033891 () Bool)

(declare-fun e!3144445 () Int)

(assert (=> b!5033891 (= e!3144445 i!618)))

(declare-fun d!1619627 () Bool)

(declare-fun e!3144446 () Bool)

(assert (=> d!1619627 e!3144446))

(declare-fun res!2145084 () Bool)

(assert (=> d!1619627 (=> (not res!2145084) (not e!3144446))))

(declare-fun lt!2082873 () List!58390)

(assert (=> d!1619627 (= res!2145084 (= ((_ map implies) (content!10333 lt!2082873) (content!10333 lt!2082860)) ((as const (InoxSet T!103942)) true)))))

(declare-fun e!3144447 () List!58390)

(assert (=> d!1619627 (= lt!2082873 e!3144447)))

(declare-fun c!862083 () Bool)

(assert (=> d!1619627 (= c!862083 (or ((_ is Nil!58266) lt!2082860) (<= i!618 0)))))

(assert (=> d!1619627 (= (take!799 lt!2082860 i!618) lt!2082873)))

(declare-fun b!5033892 () Bool)

(declare-fun e!3144444 () Int)

(assert (=> b!5033892 (= e!3144444 0)))

(declare-fun b!5033893 () Bool)

(assert (=> b!5033893 (= e!3144447 (Cons!58266 (h!64714 lt!2082860) (take!799 (t!370837 lt!2082860) (- i!618 1))))))

(declare-fun b!5033894 () Bool)

(assert (=> b!5033894 (= e!3144447 Nil!58266)))

(declare-fun b!5033895 () Bool)

(assert (=> b!5033895 (= e!3144445 (size!38829 lt!2082860))))

(declare-fun b!5033896 () Bool)

(assert (=> b!5033896 (= e!3144444 e!3144445)))

(declare-fun c!862082 () Bool)

(assert (=> b!5033896 (= c!862082 (>= i!618 (size!38829 lt!2082860)))))

(declare-fun b!5033897 () Bool)

(assert (=> b!5033897 (= e!3144446 (= (size!38829 lt!2082873) e!3144444))))

(declare-fun c!862081 () Bool)

(assert (=> b!5033897 (= c!862081 (<= i!618 0))))

(assert (= (and d!1619627 c!862083) b!5033894))

(assert (= (and d!1619627 (not c!862083)) b!5033893))

(assert (= (and d!1619627 res!2145084) b!5033897))

(assert (= (and b!5033897 c!862081) b!5033892))

(assert (= (and b!5033897 (not c!862081)) b!5033896))

(assert (= (and b!5033896 c!862082) b!5033895))

(assert (= (and b!5033896 (not c!862082)) b!5033891))

(declare-fun m!6068520 () Bool)

(assert (=> b!5033893 m!6068520))

(assert (=> b!5033895 m!6068480))

(declare-fun m!6068522 () Bool)

(assert (=> d!1619627 m!6068522))

(assert (=> d!1619627 m!6068518))

(declare-fun m!6068524 () Bool)

(assert (=> b!5033897 m!6068524))

(assert (=> b!5033896 m!6068480))

(assert (=> b!5033815 d!1619627))

(declare-fun b!5033928 () Bool)

(declare-fun e!3144465 () tuple2!63174)

(assert (=> b!5033928 (= e!3144465 (tuple2!63175 Nil!58266 Nil!58266))))

(declare-fun b!5033929 () Bool)

(declare-fun e!3144467 () tuple2!63174)

(assert (=> b!5033929 (= e!3144467 (tuple2!63175 Nil!58266 lt!2082860))))

(declare-fun b!5033930 () Bool)

(assert (=> b!5033930 (= e!3144465 e!3144467)))

(declare-fun c!862094 () Bool)

(assert (=> b!5033930 (= c!862094 (<= i!618 0))))

(declare-fun b!5033931 () Bool)

(declare-fun res!2145095 () Bool)

(declare-fun e!3144466 () Bool)

(assert (=> b!5033931 (=> (not res!2145095) (not e!3144466))))

(declare-fun lt!2082880 () tuple2!63174)

(assert (=> b!5033931 (= res!2145095 (= (_1!34890 lt!2082880) (take!799 lt!2082860 i!618)))))

(declare-fun d!1619629 () Bool)

(assert (=> d!1619629 e!3144466))

(declare-fun res!2145096 () Bool)

(assert (=> d!1619629 (=> (not res!2145096) (not e!3144466))))

(declare-fun ++!12695 (List!58390 List!58390) List!58390)

(assert (=> d!1619629 (= res!2145096 (= (++!12695 (_1!34890 lt!2082880) (_2!34890 lt!2082880)) lt!2082860))))

(assert (=> d!1619629 (= lt!2082880 e!3144465)))

(declare-fun c!862095 () Bool)

(assert (=> d!1619629 (= c!862095 ((_ is Nil!58266) lt!2082860))))

(assert (=> d!1619629 (= (splitAtIndex!181 lt!2082860 i!618) lt!2082880)))

(declare-fun b!5033932 () Bool)

(declare-fun lt!2082881 () tuple2!63174)

(assert (=> b!5033932 (= lt!2082881 (splitAtIndex!181 (t!370837 lt!2082860) (- i!618 1)))))

(assert (=> b!5033932 (= e!3144467 (tuple2!63175 (Cons!58266 (h!64714 lt!2082860) (_1!34890 lt!2082881)) (_2!34890 lt!2082881)))))

(declare-fun b!5033933 () Bool)

(assert (=> b!5033933 (= e!3144466 (= (_2!34890 lt!2082880) (drop!2606 lt!2082860 i!618)))))

(assert (= (and d!1619629 c!862095) b!5033928))

(assert (= (and d!1619629 (not c!862095)) b!5033930))

(assert (= (and b!5033930 c!862094) b!5033929))

(assert (= (and b!5033930 (not c!862094)) b!5033932))

(assert (= (and d!1619629 res!2145096) b!5033931))

(assert (= (and b!5033931 res!2145095) b!5033933))

(assert (=> b!5033931 m!6068490))

(declare-fun m!6068544 () Bool)

(assert (=> d!1619629 m!6068544))

(declare-fun m!6068546 () Bool)

(assert (=> b!5033932 m!6068546))

(assert (=> b!5033933 m!6068496))

(assert (=> b!5033815 d!1619629))

(declare-fun d!1619643 () Bool)

(assert (=> d!1619643 (= (list!18851 (xs!18804 t!4198)) (innerList!15566 (xs!18804 t!4198)))))

(assert (=> b!5033815 d!1619643))

(declare-fun d!1619645 () Bool)

(declare-fun lt!2082887 () Int)

(assert (=> d!1619645 (= lt!2082887 (size!38829 (list!18851 (xs!18804 t!4198))))))

(declare-fun choose!37235 (IArray!31017) Int)

(assert (=> d!1619645 (= lt!2082887 (choose!37235 (xs!18804 t!4198)))))

(assert (=> d!1619645 (= (size!38827 (xs!18804 t!4198)) lt!2082887)))

(declare-fun bs!1188699 () Bool)

(assert (= bs!1188699 d!1619645))

(assert (=> bs!1188699 m!6068494))

(assert (=> bs!1188699 m!6068494))

(declare-fun m!6068550 () Bool)

(assert (=> bs!1188699 m!6068550))

(declare-fun m!6068552 () Bool)

(assert (=> bs!1188699 m!6068552))

(assert (=> b!5033810 d!1619645))

(declare-fun d!1619649 () Bool)

(declare-fun c!862101 () Bool)

(assert (=> d!1619649 (= c!862101 ((_ is Node!15478) (left!42646 t!4198)))))

(declare-fun e!3144478 () Bool)

(assert (=> d!1619649 (= (inv!76973 (left!42646 t!4198)) e!3144478)))

(declare-fun b!5033949 () Bool)

(declare-fun inv!76977 (Conc!15478) Bool)

(assert (=> b!5033949 (= e!3144478 (inv!76977 (left!42646 t!4198)))))

(declare-fun b!5033950 () Bool)

(declare-fun e!3144479 () Bool)

(assert (=> b!5033950 (= e!3144478 e!3144479)))

(declare-fun res!2145102 () Bool)

(assert (=> b!5033950 (= res!2145102 (not ((_ is Leaf!25681) (left!42646 t!4198))))))

(assert (=> b!5033950 (=> res!2145102 e!3144479)))

(declare-fun b!5033951 () Bool)

(declare-fun inv!76978 (Conc!15478) Bool)

(assert (=> b!5033951 (= e!3144479 (inv!76978 (left!42646 t!4198)))))

(assert (= (and d!1619649 c!862101) b!5033949))

(assert (= (and d!1619649 (not c!862101)) b!5033950))

(assert (= (and b!5033950 (not res!2145102)) b!5033951))

(declare-fun m!6068556 () Bool)

(assert (=> b!5033949 m!6068556))

(declare-fun m!6068558 () Bool)

(assert (=> b!5033951 m!6068558))

(assert (=> b!5033816 d!1619649))

(declare-fun d!1619653 () Bool)

(declare-fun c!862102 () Bool)

(assert (=> d!1619653 (= c!862102 ((_ is Node!15478) (right!42976 t!4198)))))

(declare-fun e!3144480 () Bool)

(assert (=> d!1619653 (= (inv!76973 (right!42976 t!4198)) e!3144480)))

(declare-fun b!5033952 () Bool)

(assert (=> b!5033952 (= e!3144480 (inv!76977 (right!42976 t!4198)))))

(declare-fun b!5033953 () Bool)

(declare-fun e!3144481 () Bool)

(assert (=> b!5033953 (= e!3144480 e!3144481)))

(declare-fun res!2145103 () Bool)

(assert (=> b!5033953 (= res!2145103 (not ((_ is Leaf!25681) (right!42976 t!4198))))))

(assert (=> b!5033953 (=> res!2145103 e!3144481)))

(declare-fun b!5033954 () Bool)

(assert (=> b!5033954 (= e!3144481 (inv!76978 (right!42976 t!4198)))))

(assert (= (and d!1619653 c!862102) b!5033952))

(assert (= (and d!1619653 (not c!862102)) b!5033953))

(assert (= (and b!5033953 (not res!2145103)) b!5033954))

(declare-fun m!6068560 () Bool)

(assert (=> b!5033952 m!6068560))

(declare-fun m!6068562 () Bool)

(assert (=> b!5033954 m!6068562))

(assert (=> b!5033816 d!1619653))

(declare-fun d!1619655 () Bool)

(declare-fun lt!2082893 () Int)

(declare-fun list!18852 (Conc!15478) List!58390)

(assert (=> d!1619655 (= lt!2082893 (size!38829 (list!18852 t!4198)))))

(assert (=> d!1619655 (= lt!2082893 (ite ((_ is Empty!15478) t!4198) 0 (ite ((_ is Leaf!25681) t!4198) (csize!31187 t!4198) (csize!31186 t!4198))))))

(assert (=> d!1619655 (= (size!38828 t!4198) lt!2082893)))

(declare-fun bs!1188700 () Bool)

(assert (= bs!1188700 d!1619655))

(declare-fun m!6068564 () Bool)

(assert (=> bs!1188700 m!6068564))

(assert (=> bs!1188700 m!6068564))

(declare-fun m!6068566 () Bool)

(assert (=> bs!1188700 m!6068566))

(assert (=> b!5033811 d!1619655))

(declare-fun b!5033988 () Bool)

(declare-fun res!2145139 () Bool)

(declare-fun e!3144495 () Bool)

(assert (=> b!5033988 (=> (not res!2145139) (not e!3144495))))

(assert (=> b!5033988 (= res!2145139 (isBalanced!4340 (left!42646 t!4198)))))

(declare-fun d!1619657 () Bool)

(declare-fun res!2145140 () Bool)

(declare-fun e!3144494 () Bool)

(assert (=> d!1619657 (=> res!2145140 e!3144494)))

(assert (=> d!1619657 (= res!2145140 (not ((_ is Node!15478) t!4198)))))

(assert (=> d!1619657 (= (isBalanced!4340 t!4198) e!3144494)))

(declare-fun b!5033989 () Bool)

(declare-fun res!2145138 () Bool)

(assert (=> b!5033989 (=> (not res!2145138) (not e!3144495))))

(declare-fun height!2061 (Conc!15478) Int)

(assert (=> b!5033989 (= res!2145138 (<= (- (height!2061 (left!42646 t!4198)) (height!2061 (right!42976 t!4198))) 1))))

(declare-fun b!5033990 () Bool)

(declare-fun res!2145136 () Bool)

(assert (=> b!5033990 (=> (not res!2145136) (not e!3144495))))

(declare-fun isEmpty!31497 (Conc!15478) Bool)

(assert (=> b!5033990 (= res!2145136 (not (isEmpty!31497 (left!42646 t!4198))))))

(declare-fun b!5033991 () Bool)

(declare-fun res!2145137 () Bool)

(assert (=> b!5033991 (=> (not res!2145137) (not e!3144495))))

(assert (=> b!5033991 (= res!2145137 (isBalanced!4340 (right!42976 t!4198)))))

(declare-fun b!5033992 () Bool)

(assert (=> b!5033992 (= e!3144494 e!3144495)))

(declare-fun res!2145135 () Bool)

(assert (=> b!5033992 (=> (not res!2145135) (not e!3144495))))

(assert (=> b!5033992 (= res!2145135 (<= (- 1) (- (height!2061 (left!42646 t!4198)) (height!2061 (right!42976 t!4198)))))))

(declare-fun b!5033993 () Bool)

(assert (=> b!5033993 (= e!3144495 (not (isEmpty!31497 (right!42976 t!4198))))))

(assert (= (and d!1619657 (not res!2145140)) b!5033992))

(assert (= (and b!5033992 res!2145135) b!5033989))

(assert (= (and b!5033989 res!2145138) b!5033988))

(assert (= (and b!5033988 res!2145139) b!5033991))

(assert (= (and b!5033991 res!2145137) b!5033990))

(assert (= (and b!5033990 res!2145136) b!5033993))

(declare-fun m!6068592 () Bool)

(assert (=> b!5033989 m!6068592))

(declare-fun m!6068594 () Bool)

(assert (=> b!5033989 m!6068594))

(declare-fun m!6068596 () Bool)

(assert (=> b!5033991 m!6068596))

(assert (=> b!5033992 m!6068592))

(assert (=> b!5033992 m!6068594))

(declare-fun m!6068598 () Bool)

(assert (=> b!5033993 m!6068598))

(declare-fun m!6068600 () Bool)

(assert (=> b!5033990 m!6068600))

(declare-fun m!6068602 () Bool)

(assert (=> b!5033988 m!6068602))

(assert (=> start!532498 d!1619657))

(declare-fun d!1619667 () Bool)

(declare-fun c!862104 () Bool)

(assert (=> d!1619667 (= c!862104 ((_ is Node!15478) t!4198))))

(declare-fun e!3144496 () Bool)

(assert (=> d!1619667 (= (inv!76973 t!4198) e!3144496)))

(declare-fun b!5033994 () Bool)

(assert (=> b!5033994 (= e!3144496 (inv!76977 t!4198))))

(declare-fun b!5033995 () Bool)

(declare-fun e!3144497 () Bool)

(assert (=> b!5033995 (= e!3144496 e!3144497)))

(declare-fun res!2145141 () Bool)

(assert (=> b!5033995 (= res!2145141 (not ((_ is Leaf!25681) t!4198)))))

(assert (=> b!5033995 (=> res!2145141 e!3144497)))

(declare-fun b!5033996 () Bool)

(assert (=> b!5033996 (= e!3144497 (inv!76978 t!4198))))

(assert (= (and d!1619667 c!862104) b!5033994))

(assert (= (and d!1619667 (not c!862104)) b!5033995))

(assert (= (and b!5033995 (not res!2145141)) b!5033996))

(declare-fun m!6068604 () Bool)

(assert (=> b!5033994 m!6068604))

(declare-fun m!6068606 () Bool)

(assert (=> b!5033996 m!6068606))

(assert (=> start!532498 d!1619667))

(declare-fun d!1619669 () Bool)

(assert (=> d!1619669 (= (inv!76974 (xs!18804 t!4198)) (<= (size!38829 (innerList!15566 (xs!18804 t!4198))) 2147483647))))

(declare-fun bs!1188703 () Bool)

(assert (= bs!1188703 d!1619669))

(declare-fun m!6068608 () Bool)

(assert (=> bs!1188703 m!6068608))

(assert (=> b!5033807 d!1619669))

(declare-fun d!1619671 () Bool)

(assert (=> d!1619671 (= (slice!837 lt!2082860 0 i!618) (take!799 (drop!2606 lt!2082860 0) (- i!618 0)))))

(declare-fun bs!1188704 () Bool)

(assert (= bs!1188704 d!1619671))

(declare-fun m!6068610 () Bool)

(assert (=> bs!1188704 m!6068610))

(assert (=> bs!1188704 m!6068610))

(declare-fun m!6068612 () Bool)

(assert (=> bs!1188704 m!6068612))

(assert (=> b!5033813 d!1619671))

(declare-fun d!1619673 () Bool)

(assert (=> d!1619673 (= (slice!837 lt!2082860 i!618 (size!38829 lt!2082860)) (take!799 (drop!2606 lt!2082860 i!618) (- (size!38829 lt!2082860) i!618)))))

(declare-fun bs!1188705 () Bool)

(assert (= bs!1188705 d!1619673))

(assert (=> bs!1188705 m!6068496))

(assert (=> bs!1188705 m!6068496))

(declare-fun m!6068614 () Bool)

(assert (=> bs!1188705 m!6068614))

(assert (=> b!5033813 d!1619673))

(declare-fun d!1619675 () Bool)

(declare-fun lt!2082904 () Int)

(assert (=> d!1619675 (>= lt!2082904 0)))

(declare-fun e!3144510 () Int)

(assert (=> d!1619675 (= lt!2082904 e!3144510)))

(declare-fun c!862115 () Bool)

(assert (=> d!1619675 (= c!862115 ((_ is Nil!58266) lt!2082860))))

(assert (=> d!1619675 (= (size!38829 lt!2082860) lt!2082904)))

(declare-fun b!5034019 () Bool)

(assert (=> b!5034019 (= e!3144510 0)))

(declare-fun b!5034020 () Bool)

(assert (=> b!5034020 (= e!3144510 (+ 1 (size!38829 (t!370837 lt!2082860))))))

(assert (= (and d!1619675 c!862115) b!5034019))

(assert (= (and d!1619675 (not c!862115)) b!5034020))

(declare-fun m!6068616 () Bool)

(assert (=> b!5034020 m!6068616))

(assert (=> b!5033813 d!1619675))

(declare-fun d!1619677 () Bool)

(assert (=> d!1619677 (= (drop!2606 lt!2082860 i!618) (slice!837 lt!2082860 i!618 (size!38829 lt!2082860)))))

(declare-fun lt!2082908 () Unit!149455)

(declare-fun choose!37237 (List!58390 Int) Unit!149455)

(assert (=> d!1619677 (= lt!2082908 (choose!37237 lt!2082860 i!618))))

(declare-fun e!3144528 () Bool)

(assert (=> d!1619677 e!3144528))

(declare-fun res!2145147 () Bool)

(assert (=> d!1619677 (=> (not res!2145147) (not e!3144528))))

(assert (=> d!1619677 (= res!2145147 (<= 0 i!618))))

(assert (=> d!1619677 (= (dropLemma!62 lt!2082860 i!618) lt!2082908)))

(declare-fun b!5034050 () Bool)

(assert (=> b!5034050 (= e!3144528 (<= i!618 (size!38829 lt!2082860)))))

(assert (= (and d!1619677 res!2145147) b!5034050))

(assert (=> d!1619677 m!6068496))

(assert (=> d!1619677 m!6068480))

(assert (=> d!1619677 m!6068480))

(assert (=> d!1619677 m!6068482))

(declare-fun m!6068638 () Bool)

(assert (=> d!1619677 m!6068638))

(assert (=> b!5034050 m!6068480))

(assert (=> b!5033813 d!1619677))

(declare-fun b!5034056 () Bool)

(declare-fun e!3144532 () Bool)

(declare-fun tp_is_empty!36727 () Bool)

(declare-fun tp!1410020 () Bool)

(assert (=> b!5034056 (= e!3144532 (and tp_is_empty!36727 tp!1410020))))

(assert (=> b!5033814 (= tp!1410001 e!3144532)))

(assert (= (and b!5033814 ((_ is Cons!58266) (innerList!15566 (xs!18804 t!4198)))) b!5034056))

(declare-fun tp!1410028 () Bool)

(declare-fun b!5034065 () Bool)

(declare-fun tp!1410027 () Bool)

(declare-fun e!3144537 () Bool)

(assert (=> b!5034065 (= e!3144537 (and (inv!76973 (left!42646 (left!42646 t!4198))) tp!1410028 (inv!76973 (right!42976 (left!42646 t!4198))) tp!1410027))))

(declare-fun b!5034067 () Bool)

(declare-fun e!3144538 () Bool)

(declare-fun tp!1410029 () Bool)

(assert (=> b!5034067 (= e!3144538 tp!1410029)))

(declare-fun b!5034066 () Bool)

(assert (=> b!5034066 (= e!3144537 (and (inv!76974 (xs!18804 (left!42646 t!4198))) e!3144538))))

(assert (=> b!5033816 (= tp!1410002 (and (inv!76973 (left!42646 t!4198)) e!3144537))))

(assert (= (and b!5033816 ((_ is Node!15478) (left!42646 t!4198))) b!5034065))

(assert (= b!5034066 b!5034067))

(assert (= (and b!5033816 ((_ is Leaf!25681) (left!42646 t!4198))) b!5034066))

(declare-fun m!6068640 () Bool)

(assert (=> b!5034065 m!6068640))

(declare-fun m!6068642 () Bool)

(assert (=> b!5034065 m!6068642))

(declare-fun m!6068644 () Bool)

(assert (=> b!5034066 m!6068644))

(assert (=> b!5033816 m!6068498))

(declare-fun tp!1410030 () Bool)

(declare-fun e!3144539 () Bool)

(declare-fun tp!1410031 () Bool)

(declare-fun b!5034068 () Bool)

(assert (=> b!5034068 (= e!3144539 (and (inv!76973 (left!42646 (right!42976 t!4198))) tp!1410031 (inv!76973 (right!42976 (right!42976 t!4198))) tp!1410030))))

(declare-fun b!5034070 () Bool)

(declare-fun e!3144540 () Bool)

(declare-fun tp!1410032 () Bool)

(assert (=> b!5034070 (= e!3144540 tp!1410032)))

(declare-fun b!5034069 () Bool)

(assert (=> b!5034069 (= e!3144539 (and (inv!76974 (xs!18804 (right!42976 t!4198))) e!3144540))))

(assert (=> b!5033816 (= tp!1410000 (and (inv!76973 (right!42976 t!4198)) e!3144539))))

(assert (= (and b!5033816 ((_ is Node!15478) (right!42976 t!4198))) b!5034068))

(assert (= b!5034069 b!5034070))

(assert (= (and b!5033816 ((_ is Leaf!25681) (right!42976 t!4198))) b!5034069))

(declare-fun m!6068646 () Bool)

(assert (=> b!5034068 m!6068646))

(declare-fun m!6068648 () Bool)

(assert (=> b!5034068 m!6068648))

(declare-fun m!6068650 () Bool)

(assert (=> b!5034069 m!6068650))

(assert (=> b!5033816 m!6068500))

(check-sat (not b!5033931) (not b!5033933) (not bm!351146) (not d!1619627) (not b!5033993) (not b!5033951) (not b!5033816) (not b!5033893) (not d!1619621) (not d!1619671) (not b!5033989) (not b!5034020) (not b!5034066) (not d!1619677) (not b!5034056) (not b!5033954) tp_is_empty!36727 (not b!5034068) (not b!5033952) (not d!1619655) (not b!5034070) (not b!5034067) (not b!5034069) (not d!1619673) (not b!5033857) (not b!5033895) (not b!5034065) (not b!5033991) (not b!5033949) (not b!5033992) (not d!1619669) (not b!5033990) (not b!5033932) (not b!5033897) (not b!5033988) (not b!5033996) (not d!1619629) (not d!1619645) (not b!5033856) (not b!5034050) (not b!5033994) (not b!5033896))
(check-sat)
