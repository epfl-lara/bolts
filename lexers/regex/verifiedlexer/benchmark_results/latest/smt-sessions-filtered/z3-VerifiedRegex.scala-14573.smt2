; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755480 () Bool)

(assert start!755480)

(declare-datatypes ((T!148292 0))(
  ( (T!148293 (val!32544 Int)) )
))
(declare-datatypes ((List!75056 0))(
  ( (Nil!74932) (Cons!74932 (h!81380 T!148292) (t!390799 List!75056)) )
))
(declare-datatypes ((IArray!31933 0))(
  ( (IArray!31934 (innerList!16024 List!75056)) )
))
(declare-datatypes ((Conc!15936 0))(
  ( (Node!15936 (left!57149 Conc!15936) (right!57479 Conc!15936) (csize!32102 Int) (cheight!16147 Int)) (Leaf!30510 (xs!19334 IArray!31933) (csize!32103 Int)) (Empty!15936) )
))
(declare-datatypes ((BalanceConc!30842 0))(
  ( (BalanceConc!30843 (c!1472453 Conc!15936)) )
))
(declare-fun thiss!5764 () BalanceConc!30842)

(declare-fun size!43702 (Conc!15936) Int)

(declare-fun size!43703 (List!75056) Int)

(declare-fun list!19470 (BalanceConc!30842) List!75056)

(assert (=> start!755480 (not (= (size!43702 (c!1472453 thiss!5764)) (size!43703 (list!19470 thiss!5764))))))

(declare-fun e!4727385 () Bool)

(declare-fun inv!96577 (BalanceConc!30842) Bool)

(assert (=> start!755480 (and (inv!96577 thiss!5764) e!4727385)))

(declare-fun b!8024737 () Bool)

(declare-fun tp!2401585 () Bool)

(declare-fun inv!96578 (Conc!15936) Bool)

(assert (=> b!8024737 (= e!4727385 (and (inv!96578 (c!1472453 thiss!5764)) tp!2401585))))

(assert (= start!755480 b!8024737))

(declare-fun m!8387060 () Bool)

(assert (=> start!755480 m!8387060))

(declare-fun m!8387062 () Bool)

(assert (=> start!755480 m!8387062))

(assert (=> start!755480 m!8387062))

(declare-fun m!8387064 () Bool)

(assert (=> start!755480 m!8387064))

(declare-fun m!8387066 () Bool)

(assert (=> start!755480 m!8387066))

(declare-fun m!8387068 () Bool)

(assert (=> b!8024737 m!8387068))

(check-sat (not b!8024737) (not start!755480))
(check-sat)
(get-model)

(declare-fun d!2392818 () Bool)

(declare-fun c!1472459 () Bool)

(get-info :version)

(assert (=> d!2392818 (= c!1472459 ((_ is Node!15936) (c!1472453 thiss!5764)))))

(declare-fun e!4727393 () Bool)

(assert (=> d!2392818 (= (inv!96578 (c!1472453 thiss!5764)) e!4727393)))

(declare-fun b!8024750 () Bool)

(declare-fun inv!96579 (Conc!15936) Bool)

(assert (=> b!8024750 (= e!4727393 (inv!96579 (c!1472453 thiss!5764)))))

(declare-fun b!8024751 () Bool)

(declare-fun e!4727394 () Bool)

(assert (=> b!8024751 (= e!4727393 e!4727394)))

(declare-fun res!3173481 () Bool)

(assert (=> b!8024751 (= res!3173481 (not ((_ is Leaf!30510) (c!1472453 thiss!5764))))))

(assert (=> b!8024751 (=> res!3173481 e!4727394)))

(declare-fun b!8024752 () Bool)

(declare-fun inv!96580 (Conc!15936) Bool)

(assert (=> b!8024752 (= e!4727394 (inv!96580 (c!1472453 thiss!5764)))))

(assert (= (and d!2392818 c!1472459) b!8024750))

(assert (= (and d!2392818 (not c!1472459)) b!8024751))

(assert (= (and b!8024751 (not res!3173481)) b!8024752))

(declare-fun m!8387076 () Bool)

(assert (=> b!8024750 m!8387076))

(declare-fun m!8387078 () Bool)

(assert (=> b!8024752 m!8387078))

(assert (=> b!8024737 d!2392818))

(declare-fun d!2392826 () Bool)

(declare-fun lt!2720681 () Int)

(declare-fun list!19472 (Conc!15936) List!75056)

(assert (=> d!2392826 (= lt!2720681 (size!43703 (list!19472 (c!1472453 thiss!5764))))))

(assert (=> d!2392826 (= lt!2720681 (ite ((_ is Empty!15936) (c!1472453 thiss!5764)) 0 (ite ((_ is Leaf!30510) (c!1472453 thiss!5764)) (csize!32103 (c!1472453 thiss!5764)) (csize!32102 (c!1472453 thiss!5764)))))))

(assert (=> d!2392826 (= (size!43702 (c!1472453 thiss!5764)) lt!2720681)))

(declare-fun bs!1971246 () Bool)

(assert (= bs!1971246 d!2392826))

(declare-fun m!8387082 () Bool)

(assert (=> bs!1971246 m!8387082))

(assert (=> bs!1971246 m!8387082))

(declare-fun m!8387084 () Bool)

(assert (=> bs!1971246 m!8387084))

(assert (=> start!755480 d!2392826))

(declare-fun d!2392830 () Bool)

(declare-fun lt!2720684 () Int)

(assert (=> d!2392830 (>= lt!2720684 0)))

(declare-fun e!4727401 () Int)

(assert (=> d!2392830 (= lt!2720684 e!4727401)))

(declare-fun c!1472464 () Bool)

(assert (=> d!2392830 (= c!1472464 ((_ is Nil!74932) (list!19470 thiss!5764)))))

(assert (=> d!2392830 (= (size!43703 (list!19470 thiss!5764)) lt!2720684)))

(declare-fun b!8024763 () Bool)

(assert (=> b!8024763 (= e!4727401 0)))

(declare-fun b!8024764 () Bool)

(assert (=> b!8024764 (= e!4727401 (+ 1 (size!43703 (t!390799 (list!19470 thiss!5764)))))))

(assert (= (and d!2392830 c!1472464) b!8024763))

(assert (= (and d!2392830 (not c!1472464)) b!8024764))

(declare-fun m!8387086 () Bool)

(assert (=> b!8024764 m!8387086))

(assert (=> start!755480 d!2392830))

(declare-fun d!2392832 () Bool)

(assert (=> d!2392832 (= (list!19470 thiss!5764) (list!19472 (c!1472453 thiss!5764)))))

(declare-fun bs!1971247 () Bool)

(assert (= bs!1971247 d!2392832))

(assert (=> bs!1971247 m!8387082))

(assert (=> start!755480 d!2392832))

(declare-fun d!2392834 () Bool)

(declare-fun isBalanced!4548 (Conc!15936) Bool)

(assert (=> d!2392834 (= (inv!96577 thiss!5764) (isBalanced!4548 (c!1472453 thiss!5764)))))

(declare-fun bs!1971248 () Bool)

(assert (= bs!1971248 d!2392834))

(declare-fun m!8387098 () Bool)

(assert (=> bs!1971248 m!8387098))

(assert (=> start!755480 d!2392834))

(declare-fun tp!2401603 () Bool)

(declare-fun b!8024787 () Bool)

(declare-fun tp!2401601 () Bool)

(declare-fun e!4727415 () Bool)

(assert (=> b!8024787 (= e!4727415 (and (inv!96578 (left!57149 (c!1472453 thiss!5764))) tp!2401601 (inv!96578 (right!57479 (c!1472453 thiss!5764))) tp!2401603))))

(declare-fun b!8024789 () Bool)

(declare-fun e!4727414 () Bool)

(declare-fun tp!2401602 () Bool)

(assert (=> b!8024789 (= e!4727414 tp!2401602)))

(declare-fun b!8024788 () Bool)

(declare-fun inv!96584 (IArray!31933) Bool)

(assert (=> b!8024788 (= e!4727415 (and (inv!96584 (xs!19334 (c!1472453 thiss!5764))) e!4727414))))

(assert (=> b!8024737 (= tp!2401585 (and (inv!96578 (c!1472453 thiss!5764)) e!4727415))))

(assert (= (and b!8024737 ((_ is Node!15936) (c!1472453 thiss!5764))) b!8024787))

(assert (= b!8024788 b!8024789))

(assert (= (and b!8024737 ((_ is Leaf!30510) (c!1472453 thiss!5764))) b!8024788))

(declare-fun m!8387100 () Bool)

(assert (=> b!8024787 m!8387100))

(declare-fun m!8387102 () Bool)

(assert (=> b!8024787 m!8387102))

(declare-fun m!8387104 () Bool)

(assert (=> b!8024788 m!8387104))

(assert (=> b!8024737 m!8387068))

(check-sat (not b!8024787) (not b!8024764) (not d!2392832) (not d!2392834) (not b!8024789) (not b!8024752) (not b!8024737) (not d!2392826) (not b!8024788) (not b!8024750))
(check-sat)
