; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216540 () Bool)

(assert start!216540)

(declare-fun lt!827299 () Int)

(declare-datatypes ((T!41006 0))(
  ( (T!41007 (val!7448 Int)) )
))
(declare-datatypes ((List!26100 0))(
  ( (Nil!26011) (Cons!26011 (h!31412 T!41006) (t!199501 List!26100)) )
))
(declare-fun lt!827298 () List!26100)

(declare-fun size!20289 (List!26100) Int)

(assert (=> start!216540 (= lt!827299 (size!20289 lt!827298))))

(declare-datatypes ((BalanceConc!16742 0) (Conc!8509 0) (IArray!17023 0) (List!26102 0) (Object!4426 0))(
  ( (BalanceConc!16743 (c!354487 Conc!8509)) )
  ( (Node!8509 (left!20005 Conc!8509) (right!20335 Conc!8509) (csize!17248 Int) (cheight!8720 Int)) (Leaf!12478 (xs!11451 IArray!17023) (csize!17249 Int)) (Empty!8509) )
  ( (IArray!17024 (innerList!8569 List!26102)) )
  ( (Nil!26012) (Cons!26012 (h!31413 Object!4426) (t!199502 List!26102)) )
  ( (BalanceConc!16741 (value!132502 BalanceConc!16742)) (List!26101 (value!132503 List!26102)) (Character!88 (value!132504 (_ BitVec 16))) (Open!88 (value!132505 Int)) )
))
(declare-datatypes ((Vector!180 0))(
  ( (Vector!181 (underlying!6122 Object!4426) (overflowing!147 List!26100)) )
))
(declare-fun thiss!9415 () Vector!180)

(declare-fun list!10095 (Vector!180) List!26100)

(assert (=> start!216540 (= lt!827298 (list!10095 thiss!9415))))

(declare-fun size!20290 (Vector!180) Int)

(assert (=> start!216540 (= lt!827299 (size!20290 thiss!9415))))

(declare-fun isEmpty!14867 (List!26100) Bool)

(assert (=> start!216540 (not (= (= lt!827299 0) (isEmpty!14867 lt!827298)))))

(declare-fun e!1417654 () Bool)

(assert (=> start!216540 e!1417654))

(declare-fun b!2219869 () Bool)

(declare-fun tp!691436 () Bool)

(declare-fun tp!691435 () Bool)

(assert (=> b!2219869 (= e!1417654 (and tp!691436 tp!691435))))

(assert (= start!216540 b!2219869))

(declare-fun m!2660713 () Bool)

(assert (=> start!216540 m!2660713))

(declare-fun m!2660715 () Bool)

(assert (=> start!216540 m!2660715))

(declare-fun m!2660717 () Bool)

(assert (=> start!216540 m!2660717))

(declare-fun m!2660719 () Bool)

(assert (=> start!216540 m!2660719))

(check-sat (not start!216540) (not b!2219869))
(check-sat)
(get-model)

(declare-fun d!663617 () Bool)

(declare-fun lt!827305 () Int)

(assert (=> d!663617 (>= lt!827305 0)))

(declare-fun e!1417660 () Int)

(assert (=> d!663617 (= lt!827305 e!1417660)))

(declare-fun c!354493 () Bool)

(get-info :version)

(assert (=> d!663617 (= c!354493 ((_ is Nil!26011) lt!827298))))

(assert (=> d!663617 (= (size!20289 lt!827298) lt!827305)))

(declare-fun b!2219880 () Bool)

(assert (=> b!2219880 (= e!1417660 0)))

(declare-fun b!2219881 () Bool)

(assert (=> b!2219881 (= e!1417660 (+ 1 (size!20289 (t!199501 lt!827298))))))

(assert (= (and d!663617 c!354493) b!2219880))

(assert (= (and d!663617 (not c!354493)) b!2219881))

(declare-fun m!2660725 () Bool)

(assert (=> b!2219881 m!2660725))

(assert (=> start!216540 d!663617))

(declare-fun d!663623 () Bool)

(declare-fun choose!13092 (Vector!180) List!26100)

(assert (=> d!663623 (= (list!10095 thiss!9415) (choose!13092 thiss!9415))))

(declare-fun bs!452197 () Bool)

(assert (= bs!452197 d!663623))

(declare-fun m!2660731 () Bool)

(assert (=> bs!452197 m!2660731))

(assert (=> start!216540 d!663623))

(declare-fun d!663627 () Bool)

(declare-fun lt!827311 () Int)

(assert (=> d!663627 (= lt!827311 (size!20289 (list!10095 thiss!9415)))))

(declare-fun choose!13093 (Vector!180) Int)

(assert (=> d!663627 (= lt!827311 (choose!13093 thiss!9415))))

(assert (=> d!663627 (= (size!20290 thiss!9415) lt!827311)))

(declare-fun bs!452198 () Bool)

(assert (= bs!452198 d!663627))

(assert (=> bs!452198 m!2660715))

(assert (=> bs!452198 m!2660715))

(declare-fun m!2660733 () Bool)

(assert (=> bs!452198 m!2660733))

(declare-fun m!2660735 () Bool)

(assert (=> bs!452198 m!2660735))

(assert (=> start!216540 d!663627))

(declare-fun d!663629 () Bool)

(assert (=> d!663629 (= (isEmpty!14867 lt!827298) ((_ is Nil!26011) lt!827298))))

(assert (=> start!216540 d!663629))

(declare-fun b!2219907 () Bool)

(declare-fun e!1417675 () Bool)

(declare-fun tp!691450 () Bool)

(declare-fun inv!35308 (Conc!8509) Bool)

(assert (=> b!2219907 (= e!1417675 (and (inv!35308 (c!354487 (value!132502 (underlying!6122 thiss!9415)))) tp!691450))))

(declare-fun b!2219906 () Bool)

(declare-fun e!1417674 () Bool)

(declare-fun inv!35309 (BalanceConc!16742) Bool)

(assert (=> b!2219906 (= e!1417674 (and (inv!35309 (value!132502 (underlying!6122 thiss!9415))) e!1417675))))

(declare-fun b!2219908 () Bool)

(declare-fun tp!691451 () Bool)

(assert (=> b!2219908 (= e!1417674 tp!691451)))

(assert (=> b!2219869 (= tp!691436 e!1417674)))

(assert (= b!2219906 b!2219907))

(assert (= (and b!2219869 ((_ is BalanceConc!16741) (underlying!6122 thiss!9415))) b!2219906))

(assert (= (and b!2219869 ((_ is List!26101) (underlying!6122 thiss!9415))) b!2219908))

(declare-fun m!2660741 () Bool)

(assert (=> b!2219907 m!2660741))

(declare-fun m!2660743 () Bool)

(assert (=> b!2219906 m!2660743))

(declare-fun b!2219913 () Bool)

(declare-fun e!1417678 () Bool)

(declare-fun tp_is_empty!9889 () Bool)

(declare-fun tp!691454 () Bool)

(assert (=> b!2219913 (= e!1417678 (and tp_is_empty!9889 tp!691454))))

(assert (=> b!2219869 (= tp!691435 e!1417678)))

(assert (= (and b!2219869 ((_ is Cons!26011) (overflowing!147 thiss!9415))) b!2219913))

(check-sat (not d!663623) (not b!2219913) (not b!2219906) (not d!663627) (not b!2219907) (not b!2219881) (not b!2219908) tp_is_empty!9889)
(check-sat)
(get-model)

(declare-fun d!663631 () Bool)

(declare-fun c!354496 () Bool)

(assert (=> d!663631 (= c!354496 ((_ is Node!8509) (c!354487 (value!132502 (underlying!6122 thiss!9415)))))))

(declare-fun e!1417683 () Bool)

(assert (=> d!663631 (= (inv!35308 (c!354487 (value!132502 (underlying!6122 thiss!9415)))) e!1417683)))

(declare-fun b!2219920 () Bool)

(declare-fun inv!35310 (Conc!8509) Bool)

(assert (=> b!2219920 (= e!1417683 (inv!35310 (c!354487 (value!132502 (underlying!6122 thiss!9415)))))))

(declare-fun b!2219921 () Bool)

(declare-fun e!1417684 () Bool)

(assert (=> b!2219921 (= e!1417683 e!1417684)))

(declare-fun res!953268 () Bool)

(assert (=> b!2219921 (= res!953268 (not ((_ is Leaf!12478) (c!354487 (value!132502 (underlying!6122 thiss!9415))))))))

(assert (=> b!2219921 (=> res!953268 e!1417684)))

(declare-fun b!2219922 () Bool)

(declare-fun inv!35311 (Conc!8509) Bool)

(assert (=> b!2219922 (= e!1417684 (inv!35311 (c!354487 (value!132502 (underlying!6122 thiss!9415)))))))

(assert (= (and d!663631 c!354496) b!2219920))

(assert (= (and d!663631 (not c!354496)) b!2219921))

(assert (= (and b!2219921 (not res!953268)) b!2219922))

(declare-fun m!2660745 () Bool)

(assert (=> b!2219920 m!2660745))

(declare-fun m!2660747 () Bool)

(assert (=> b!2219922 m!2660747))

(assert (=> b!2219907 d!663631))

(declare-fun d!663633 () Bool)

(declare-fun lt!827312 () Int)

(assert (=> d!663633 (>= lt!827312 0)))

(declare-fun e!1417685 () Int)

(assert (=> d!663633 (= lt!827312 e!1417685)))

(declare-fun c!354497 () Bool)

(assert (=> d!663633 (= c!354497 ((_ is Nil!26011) (t!199501 lt!827298)))))

(assert (=> d!663633 (= (size!20289 (t!199501 lt!827298)) lt!827312)))

(declare-fun b!2219923 () Bool)

(assert (=> b!2219923 (= e!1417685 0)))

(declare-fun b!2219924 () Bool)

(assert (=> b!2219924 (= e!1417685 (+ 1 (size!20289 (t!199501 (t!199501 lt!827298)))))))

(assert (= (and d!663633 c!354497) b!2219923))

(assert (= (and d!663633 (not c!354497)) b!2219924))

(declare-fun m!2660749 () Bool)

(assert (=> b!2219924 m!2660749))

(assert (=> b!2219881 d!663633))

(declare-fun d!663635 () Bool)

(declare-fun isBalanced!2638 (Conc!8509) Bool)

(assert (=> d!663635 (= (inv!35309 (value!132502 (underlying!6122 thiss!9415))) (isBalanced!2638 (c!354487 (value!132502 (underlying!6122 thiss!9415)))))))

(declare-fun bs!452199 () Bool)

(assert (= bs!452199 d!663635))

(declare-fun m!2660753 () Bool)

(assert (=> bs!452199 m!2660753))

(assert (=> b!2219906 d!663635))

(declare-fun d!663641 () Bool)

(assert (=> d!663641 true))

(declare-fun e!1417691 () Bool)

(assert (=> d!663641 e!1417691))

(declare-fun res!953276 () List!26100)

(assert (=> d!663641 (= (choose!13092 thiss!9415) res!953276)))

(declare-fun b!2219931 () Bool)

(declare-fun tp!691457 () Bool)

(assert (=> b!2219931 (= e!1417691 (and tp_is_empty!9889 tp!691457))))

(assert (= (and d!663641 ((_ is Cons!26011) res!953276)) b!2219931))

(assert (=> d!663623 d!663641))

(declare-fun d!663645 () Bool)

(declare-fun lt!827314 () Int)

(assert (=> d!663645 (>= lt!827314 0)))

(declare-fun e!1417692 () Int)

(assert (=> d!663645 (= lt!827314 e!1417692)))

(declare-fun c!354499 () Bool)

(assert (=> d!663645 (= c!354499 ((_ is Nil!26011) (list!10095 thiss!9415)))))

(assert (=> d!663645 (= (size!20289 (list!10095 thiss!9415)) lt!827314)))

(declare-fun b!2219932 () Bool)

(assert (=> b!2219932 (= e!1417692 0)))

(declare-fun b!2219933 () Bool)

(assert (=> b!2219933 (= e!1417692 (+ 1 (size!20289 (t!199501 (list!10095 thiss!9415)))))))

(assert (= (and d!663645 c!354499) b!2219932))

(assert (= (and d!663645 (not c!354499)) b!2219933))

(declare-fun m!2660755 () Bool)

(assert (=> b!2219933 m!2660755))

(assert (=> d!663627 d!663645))

(assert (=> d!663627 d!663623))

(declare-fun d!663647 () Bool)

(declare-fun res!953280 () Int)

(assert (=> d!663647 (= res!953280 (size!20289 (list!10095 thiss!9415)))))

(assert (=> d!663647 true))

(assert (=> d!663647 (= (choose!13093 thiss!9415) res!953280)))

(declare-fun bs!452201 () Bool)

(assert (= bs!452201 d!663647))

(assert (=> bs!452201 m!2660715))

(assert (=> bs!452201 m!2660715))

(assert (=> bs!452201 m!2660733))

(assert (=> d!663627 d!663647))

(declare-fun b!2219935 () Bool)

(declare-fun e!1417694 () Bool)

(declare-fun tp!691461 () Bool)

(assert (=> b!2219935 (= e!1417694 (and tp_is_empty!9889 tp!691461))))

(assert (=> b!2219913 (= tp!691454 e!1417694)))

(assert (= (and b!2219913 ((_ is Cons!26011) (t!199501 (overflowing!147 thiss!9415)))) b!2219935))

(declare-fun b!2219944 () Bool)

(declare-fun tp!691469 () Bool)

(declare-fun e!1417700 () Bool)

(declare-fun tp!691470 () Bool)

(assert (=> b!2219944 (= e!1417700 (and (inv!35308 (left!20005 (c!354487 (value!132502 (underlying!6122 thiss!9415))))) tp!691470 (inv!35308 (right!20335 (c!354487 (value!132502 (underlying!6122 thiss!9415))))) tp!691469))))

(declare-fun b!2219946 () Bool)

(declare-fun e!1417699 () Bool)

(declare-fun tp!691468 () Bool)

(assert (=> b!2219946 (= e!1417699 tp!691468)))

(declare-fun b!2219945 () Bool)

(declare-fun inv!35312 (IArray!17023) Bool)

(assert (=> b!2219945 (= e!1417700 (and (inv!35312 (xs!11451 (c!354487 (value!132502 (underlying!6122 thiss!9415))))) e!1417699))))

(assert (=> b!2219907 (= tp!691450 (and (inv!35308 (c!354487 (value!132502 (underlying!6122 thiss!9415)))) e!1417700))))

(assert (= (and b!2219907 ((_ is Node!8509) (c!354487 (value!132502 (underlying!6122 thiss!9415))))) b!2219944))

(assert (= b!2219945 b!2219946))

(assert (= (and b!2219907 ((_ is Leaf!12478) (c!354487 (value!132502 (underlying!6122 thiss!9415))))) b!2219945))

(declare-fun m!2660757 () Bool)

(assert (=> b!2219944 m!2660757))

(declare-fun m!2660759 () Bool)

(assert (=> b!2219944 m!2660759))

(declare-fun m!2660761 () Bool)

(assert (=> b!2219945 m!2660761))

(assert (=> b!2219907 m!2660741))

(declare-fun b!2219957 () Bool)

(declare-fun e!1417707 () Bool)

(declare-fun tp!691475 () Bool)

(declare-fun tp!691476 () Bool)

(assert (=> b!2219957 (= e!1417707 (and tp!691475 tp!691476))))

(assert (=> b!2219908 (= tp!691451 e!1417707)))

(assert (= (and b!2219908 ((_ is Cons!26012) (value!132503 (underlying!6122 thiss!9415)))) b!2219957))

(check-sat (not d!663635) (not b!2219922) (not b!2219907) (not b!2219920) (not b!2219944) (not b!2219957) tp_is_empty!9889 (not b!2219946) (not b!2219924) (not b!2219931) (not d!663647) (not b!2219933) (not b!2219945) (not b!2219935))
(check-sat)
