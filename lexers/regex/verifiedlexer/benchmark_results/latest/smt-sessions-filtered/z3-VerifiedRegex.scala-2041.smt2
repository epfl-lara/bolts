; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104150 () Bool)

(assert start!104150)

(declare-fun b!1178065 () Bool)

(declare-fun e!755970 () Bool)

(declare-datatypes ((T!20956 0))(
  ( (T!20957 (val!3748 Int)) )
))
(declare-datatypes ((List!11695 0))(
  ( (Nil!11671) (Cons!11671 (h!17072 T!20956) (t!111187 List!11695)) )
))
(declare-datatypes ((IArray!7651 0))(
  ( (IArray!7652 (innerList!3883 List!11695)) )
))
(declare-datatypes ((Conc!3823 0))(
  ( (Node!3823 (left!10192 Conc!3823) (right!10522 Conc!3823) (csize!7876 Int) (cheight!4034 Int)) (Leaf!5865 (xs!6528 IArray!7651) (csize!7877 Int)) (Empty!3823) )
))
(declare-datatypes ((BalanceConc!7668 0))(
  ( (BalanceConc!7669 (c!196399 Conc!3823)) )
))
(declare-fun thiss!5831 () BalanceConc!7668)

(declare-fun tp!335248 () Bool)

(declare-fun inv!15446 (Conc!3823) Bool)

(assert (=> b!1178065 (= e!755970 (and (inv!15446 (c!196399 thiss!5831)) tp!335248))))

(declare-fun b!1178062 () Bool)

(declare-fun res!532649 () Bool)

(declare-fun e!755971 () Bool)

(assert (=> b!1178062 (=> (not res!532649) (not e!755971))))

(declare-fun until!13 () Int)

(declare-fun size!9236 (BalanceConc!7668) Int)

(assert (=> b!1178062 (= res!532649 (<= until!13 (size!9236 thiss!5831)))))

(declare-fun b!1178064 () Bool)

(declare-fun size!9237 (Conc!3823) Int)

(assert (=> b!1178064 (= e!755971 (> until!13 (size!9237 (c!196399 thiss!5831))))))

(declare-fun res!532648 () Bool)

(assert (=> start!104150 (=> (not res!532648) (not e!755971))))

(declare-fun from!529 () Int)

(assert (=> start!104150 (= res!532648 (and (<= 0 from!529) (<= from!529 until!13)))))

(assert (=> start!104150 e!755971))

(assert (=> start!104150 true))

(declare-fun inv!15447 (BalanceConc!7668) Bool)

(assert (=> start!104150 (and (inv!15447 thiss!5831) e!755970)))

(declare-fun b!1178063 () Bool)

(declare-fun res!532647 () Bool)

(assert (=> b!1178063 (=> (not res!532647) (not e!755971))))

(declare-fun isBalanced!1085 (Conc!3823) Bool)

(assert (=> b!1178063 (= res!532647 (isBalanced!1085 (c!196399 thiss!5831)))))

(assert (= (and start!104150 res!532648) b!1178062))

(assert (= (and b!1178062 res!532649) b!1178063))

(assert (= (and b!1178063 res!532647) b!1178064))

(assert (= start!104150 b!1178065))

(declare-fun m!1354875 () Bool)

(assert (=> b!1178062 m!1354875))

(declare-fun m!1354877 () Bool)

(assert (=> b!1178065 m!1354877))

(declare-fun m!1354879 () Bool)

(assert (=> b!1178063 m!1354879))

(declare-fun m!1354881 () Bool)

(assert (=> b!1178064 m!1354881))

(declare-fun m!1354883 () Bool)

(assert (=> start!104150 m!1354883))

(check-sat (not b!1178063) (not start!104150) (not b!1178064) (not b!1178062) (not b!1178065))
(check-sat)
(get-model)

(declare-fun b!1178087 () Bool)

(declare-fun res!532666 () Bool)

(declare-fun e!755983 () Bool)

(assert (=> b!1178087 (=> (not res!532666) (not e!755983))))

(declare-fun isEmpty!7059 (Conc!3823) Bool)

(assert (=> b!1178087 (= res!532666 (not (isEmpty!7059 (left!10192 (c!196399 thiss!5831)))))))

(declare-fun b!1178088 () Bool)

(declare-fun e!755982 () Bool)

(assert (=> b!1178088 (= e!755982 e!755983)))

(declare-fun res!532669 () Bool)

(assert (=> b!1178088 (=> (not res!532669) (not e!755983))))

(declare-fun height!519 (Conc!3823) Int)

(assert (=> b!1178088 (= res!532669 (<= (- 1) (- (height!519 (left!10192 (c!196399 thiss!5831))) (height!519 (right!10522 (c!196399 thiss!5831))))))))

(declare-fun b!1178089 () Bool)

(declare-fun res!532668 () Bool)

(assert (=> b!1178089 (=> (not res!532668) (not e!755983))))

(assert (=> b!1178089 (= res!532668 (isBalanced!1085 (right!10522 (c!196399 thiss!5831))))))

(declare-fun d!337446 () Bool)

(declare-fun res!532670 () Bool)

(assert (=> d!337446 (=> res!532670 e!755982)))

(get-info :version)

(assert (=> d!337446 (= res!532670 (not ((_ is Node!3823) (c!196399 thiss!5831))))))

(assert (=> d!337446 (= (isBalanced!1085 (c!196399 thiss!5831)) e!755982)))

(declare-fun b!1178090 () Bool)

(assert (=> b!1178090 (= e!755983 (not (isEmpty!7059 (right!10522 (c!196399 thiss!5831)))))))

(declare-fun b!1178091 () Bool)

(declare-fun res!532667 () Bool)

(assert (=> b!1178091 (=> (not res!532667) (not e!755983))))

(assert (=> b!1178091 (= res!532667 (<= (- (height!519 (left!10192 (c!196399 thiss!5831))) (height!519 (right!10522 (c!196399 thiss!5831)))) 1))))

(declare-fun b!1178092 () Bool)

(declare-fun res!532665 () Bool)

(assert (=> b!1178092 (=> (not res!532665) (not e!755983))))

(assert (=> b!1178092 (= res!532665 (isBalanced!1085 (left!10192 (c!196399 thiss!5831))))))

(assert (= (and d!337446 (not res!532670)) b!1178088))

(assert (= (and b!1178088 res!532669) b!1178091))

(assert (= (and b!1178091 res!532667) b!1178092))

(assert (= (and b!1178092 res!532665) b!1178089))

(assert (= (and b!1178089 res!532668) b!1178087))

(assert (= (and b!1178087 res!532666) b!1178090))

(declare-fun m!1354893 () Bool)

(assert (=> b!1178090 m!1354893))

(declare-fun m!1354895 () Bool)

(assert (=> b!1178092 m!1354895))

(declare-fun m!1354897 () Bool)

(assert (=> b!1178089 m!1354897))

(declare-fun m!1354899 () Bool)

(assert (=> b!1178088 m!1354899))

(declare-fun m!1354901 () Bool)

(assert (=> b!1178088 m!1354901))

(declare-fun m!1354903 () Bool)

(assert (=> b!1178087 m!1354903))

(assert (=> b!1178091 m!1354899))

(assert (=> b!1178091 m!1354901))

(assert (=> b!1178063 d!337446))

(declare-fun d!337454 () Bool)

(declare-fun c!196405 () Bool)

(assert (=> d!337454 (= c!196405 ((_ is Node!3823) (c!196399 thiss!5831)))))

(declare-fun e!755988 () Bool)

(assert (=> d!337454 (= (inv!15446 (c!196399 thiss!5831)) e!755988)))

(declare-fun b!1178099 () Bool)

(declare-fun inv!15450 (Conc!3823) Bool)

(assert (=> b!1178099 (= e!755988 (inv!15450 (c!196399 thiss!5831)))))

(declare-fun b!1178100 () Bool)

(declare-fun e!755989 () Bool)

(assert (=> b!1178100 (= e!755988 e!755989)))

(declare-fun res!532673 () Bool)

(assert (=> b!1178100 (= res!532673 (not ((_ is Leaf!5865) (c!196399 thiss!5831))))))

(assert (=> b!1178100 (=> res!532673 e!755989)))

(declare-fun b!1178101 () Bool)

(declare-fun inv!15451 (Conc!3823) Bool)

(assert (=> b!1178101 (= e!755989 (inv!15451 (c!196399 thiss!5831)))))

(assert (= (and d!337454 c!196405) b!1178099))

(assert (= (and d!337454 (not c!196405)) b!1178100))

(assert (= (and b!1178100 (not res!532673)) b!1178101))

(declare-fun m!1354909 () Bool)

(assert (=> b!1178099 m!1354909))

(declare-fun m!1354911 () Bool)

(assert (=> b!1178101 m!1354911))

(assert (=> b!1178065 d!337454))

(declare-fun d!337458 () Bool)

(declare-fun lt!406165 () Int)

(declare-fun size!9239 (List!11695) Int)

(declare-fun list!4309 (Conc!3823) List!11695)

(assert (=> d!337458 (= lt!406165 (size!9239 (list!4309 (c!196399 thiss!5831))))))

(assert (=> d!337458 (= lt!406165 (ite ((_ is Empty!3823) (c!196399 thiss!5831)) 0 (ite ((_ is Leaf!5865) (c!196399 thiss!5831)) (csize!7877 (c!196399 thiss!5831)) (csize!7876 (c!196399 thiss!5831)))))))

(assert (=> d!337458 (= (size!9237 (c!196399 thiss!5831)) lt!406165)))

(declare-fun bs!286757 () Bool)

(assert (= bs!286757 d!337458))

(declare-fun m!1354913 () Bool)

(assert (=> bs!286757 m!1354913))

(assert (=> bs!286757 m!1354913))

(declare-fun m!1354915 () Bool)

(assert (=> bs!286757 m!1354915))

(assert (=> b!1178064 d!337458))

(declare-fun d!337460 () Bool)

(declare-fun lt!406168 () Int)

(declare-fun list!4310 (BalanceConc!7668) List!11695)

(assert (=> d!337460 (= lt!406168 (size!9239 (list!4310 thiss!5831)))))

(assert (=> d!337460 (= lt!406168 (size!9237 (c!196399 thiss!5831)))))

(assert (=> d!337460 (= (size!9236 thiss!5831) lt!406168)))

(declare-fun bs!286758 () Bool)

(assert (= bs!286758 d!337460))

(declare-fun m!1354929 () Bool)

(assert (=> bs!286758 m!1354929))

(assert (=> bs!286758 m!1354929))

(declare-fun m!1354931 () Bool)

(assert (=> bs!286758 m!1354931))

(assert (=> bs!286758 m!1354881))

(assert (=> b!1178062 d!337460))

(declare-fun d!337462 () Bool)

(assert (=> d!337462 (= (inv!15447 thiss!5831) (isBalanced!1085 (c!196399 thiss!5831)))))

(declare-fun bs!286759 () Bool)

(assert (= bs!286759 d!337462))

(assert (=> bs!286759 m!1354879))

(assert (=> start!104150 d!337462))

(declare-fun e!756007 () Bool)

(declare-fun tp!335266 () Bool)

(declare-fun b!1178139 () Bool)

(declare-fun tp!335264 () Bool)

(assert (=> b!1178139 (= e!756007 (and (inv!15446 (left!10192 (c!196399 thiss!5831))) tp!335264 (inv!15446 (right!10522 (c!196399 thiss!5831))) tp!335266))))

(declare-fun b!1178141 () Bool)

(declare-fun e!756006 () Bool)

(declare-fun tp!335265 () Bool)

(assert (=> b!1178141 (= e!756006 tp!335265)))

(declare-fun b!1178140 () Bool)

(declare-fun inv!15452 (IArray!7651) Bool)

(assert (=> b!1178140 (= e!756007 (and (inv!15452 (xs!6528 (c!196399 thiss!5831))) e!756006))))

(assert (=> b!1178065 (= tp!335248 (and (inv!15446 (c!196399 thiss!5831)) e!756007))))

(assert (= (and b!1178065 ((_ is Node!3823) (c!196399 thiss!5831))) b!1178139))

(assert (= b!1178140 b!1178141))

(assert (= (and b!1178065 ((_ is Leaf!5865) (c!196399 thiss!5831))) b!1178140))

(declare-fun m!1354939 () Bool)

(assert (=> b!1178139 m!1354939))

(declare-fun m!1354941 () Bool)

(assert (=> b!1178139 m!1354941))

(declare-fun m!1354943 () Bool)

(assert (=> b!1178140 m!1354943))

(assert (=> b!1178065 m!1354877))

(check-sat (not b!1178099) (not b!1178092) (not d!337462) (not b!1178091) (not b!1178141) (not b!1178087) (not b!1178101) (not d!337458) (not b!1178140) (not b!1178139) (not b!1178089) (not b!1178090) (not b!1178088) (not d!337460) (not b!1178065))
(check-sat)
