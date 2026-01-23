; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!358472 () Bool)

(assert start!358472)

(declare-fun res!1550924 () Bool)

(declare-fun e!2365864 () Bool)

(assert (=> start!358472 (=> res!1550924 e!2365864)))

(declare-datatypes ((T!69764 0))(
  ( (T!69765 (val!13302 Int)) )
))
(declare-datatypes ((List!40555 0))(
  ( (Nil!40431) (Cons!40431 (h!45851 T!69764) (t!309128 List!40555)) )
))
(declare-datatypes ((IArray!24859 0))(
  ( (IArray!24860 (innerList!12487 List!40555)) )
))
(declare-datatypes ((Conc!12427 0))(
  ( (Node!12427 (left!31286 Conc!12427) (right!31616 Conc!12427) (csize!25084 Int) (cheight!12638 Int)) (Leaf!19239 (xs!15727 IArray!24859) (csize!25085 Int)) (Empty!12427) )
))
(declare-datatypes ((BalanceConc!24448 0))(
  ( (BalanceConc!24449 (c!668037 Conc!12427)) )
))
(declare-fun thiss!5815 () BalanceConc!24448)

(declare-fun isBalanced!3606 (Conc!12427) Bool)

(assert (=> start!358472 (= res!1550924 (not (isBalanced!3606 (c!668037 thiss!5815))))))

(assert (=> start!358472 e!2365864))

(declare-fun e!2365862 () Bool)

(declare-fun inv!54515 (BalanceConc!24448) Bool)

(assert (=> start!358472 (and (inv!54515 thiss!5815) e!2365862)))

(declare-fun ys!29 () BalanceConc!24448)

(declare-fun e!2365863 () Bool)

(assert (=> start!358472 (and (inv!54515 ys!29) e!2365863)))

(declare-fun b!3831062 () Bool)

(assert (=> b!3831062 (= e!2365864 (not (isBalanced!3606 (c!668037 ys!29))))))

(declare-fun b!3831063 () Bool)

(declare-fun tp!1159226 () Bool)

(declare-fun inv!54516 (Conc!12427) Bool)

(assert (=> b!3831063 (= e!2365862 (and (inv!54516 (c!668037 thiss!5815)) tp!1159226))))

(declare-fun b!3831064 () Bool)

(declare-fun tp!1159225 () Bool)

(assert (=> b!3831064 (= e!2365863 (and (inv!54516 (c!668037 ys!29)) tp!1159225))))

(assert (= (and start!358472 (not res!1550924)) b!3831062))

(assert (= start!358472 b!3831063))

(assert (= start!358472 b!3831064))

(declare-fun m!4385793 () Bool)

(assert (=> start!358472 m!4385793))

(declare-fun m!4385795 () Bool)

(assert (=> start!358472 m!4385795))

(declare-fun m!4385797 () Bool)

(assert (=> start!358472 m!4385797))

(declare-fun m!4385799 () Bool)

(assert (=> b!3831062 m!4385799))

(declare-fun m!4385801 () Bool)

(assert (=> b!3831063 m!4385801))

(declare-fun m!4385803 () Bool)

(assert (=> b!3831064 m!4385803))

(check-sat (not b!3831062) (not start!358472) (not b!3831063) (not b!3831064))
(check-sat)
(get-model)

(declare-fun b!3831098 () Bool)

(declare-fun e!2365880 () Bool)

(declare-fun isEmpty!23866 (Conc!12427) Bool)

(assert (=> b!3831098 (= e!2365880 (not (isEmpty!23866 (right!31616 (c!668037 ys!29)))))))

(declare-fun b!3831099 () Bool)

(declare-fun res!1550956 () Bool)

(assert (=> b!3831099 (=> (not res!1550956) (not e!2365880))))

(declare-fun height!1820 (Conc!12427) Int)

(assert (=> b!3831099 (= res!1550956 (<= (- (height!1820 (left!31286 (c!668037 ys!29))) (height!1820 (right!31616 (c!668037 ys!29)))) 1))))

(declare-fun d!1137402 () Bool)

(declare-fun res!1550952 () Bool)

(declare-fun e!2365879 () Bool)

(assert (=> d!1137402 (=> res!1550952 e!2365879)))

(get-info :version)

(assert (=> d!1137402 (= res!1550952 (not ((_ is Node!12427) (c!668037 ys!29))))))

(assert (=> d!1137402 (= (isBalanced!3606 (c!668037 ys!29)) e!2365879)))

(declare-fun b!3831100 () Bool)

(assert (=> b!3831100 (= e!2365879 e!2365880)))

(declare-fun res!1550954 () Bool)

(assert (=> b!3831100 (=> (not res!1550954) (not e!2365880))))

(assert (=> b!3831100 (= res!1550954 (<= (- 1) (- (height!1820 (left!31286 (c!668037 ys!29))) (height!1820 (right!31616 (c!668037 ys!29))))))))

(declare-fun b!3831101 () Bool)

(declare-fun res!1550957 () Bool)

(assert (=> b!3831101 (=> (not res!1550957) (not e!2365880))))

(assert (=> b!3831101 (= res!1550957 (isBalanced!3606 (left!31286 (c!668037 ys!29))))))

(declare-fun b!3831102 () Bool)

(declare-fun res!1550953 () Bool)

(assert (=> b!3831102 (=> (not res!1550953) (not e!2365880))))

(assert (=> b!3831102 (= res!1550953 (isBalanced!3606 (right!31616 (c!668037 ys!29))))))

(declare-fun b!3831103 () Bool)

(declare-fun res!1550955 () Bool)

(assert (=> b!3831103 (=> (not res!1550955) (not e!2365880))))

(assert (=> b!3831103 (= res!1550955 (not (isEmpty!23866 (left!31286 (c!668037 ys!29)))))))

(assert (= (and d!1137402 (not res!1550952)) b!3831100))

(assert (= (and b!3831100 res!1550954) b!3831099))

(assert (= (and b!3831099 res!1550956) b!3831101))

(assert (= (and b!3831101 res!1550957) b!3831102))

(assert (= (and b!3831102 res!1550953) b!3831103))

(assert (= (and b!3831103 res!1550955) b!3831098))

(declare-fun m!4385809 () Bool)

(assert (=> b!3831102 m!4385809))

(declare-fun m!4385811 () Bool)

(assert (=> b!3831098 m!4385811))

(declare-fun m!4385813 () Bool)

(assert (=> b!3831099 m!4385813))

(declare-fun m!4385815 () Bool)

(assert (=> b!3831099 m!4385815))

(declare-fun m!4385817 () Bool)

(assert (=> b!3831103 m!4385817))

(assert (=> b!3831100 m!4385813))

(assert (=> b!3831100 m!4385815))

(declare-fun m!4385819 () Bool)

(assert (=> b!3831101 m!4385819))

(assert (=> b!3831062 d!1137402))

(declare-fun b!3831110 () Bool)

(declare-fun e!2365884 () Bool)

(assert (=> b!3831110 (= e!2365884 (not (isEmpty!23866 (right!31616 (c!668037 thiss!5815)))))))

(declare-fun b!3831111 () Bool)

(declare-fun res!1550968 () Bool)

(assert (=> b!3831111 (=> (not res!1550968) (not e!2365884))))

(assert (=> b!3831111 (= res!1550968 (<= (- (height!1820 (left!31286 (c!668037 thiss!5815))) (height!1820 (right!31616 (c!668037 thiss!5815)))) 1))))

(declare-fun d!1137406 () Bool)

(declare-fun res!1550964 () Bool)

(declare-fun e!2365883 () Bool)

(assert (=> d!1137406 (=> res!1550964 e!2365883)))

(assert (=> d!1137406 (= res!1550964 (not ((_ is Node!12427) (c!668037 thiss!5815))))))

(assert (=> d!1137406 (= (isBalanced!3606 (c!668037 thiss!5815)) e!2365883)))

(declare-fun b!3831112 () Bool)

(assert (=> b!3831112 (= e!2365883 e!2365884)))

(declare-fun res!1550966 () Bool)

(assert (=> b!3831112 (=> (not res!1550966) (not e!2365884))))

(assert (=> b!3831112 (= res!1550966 (<= (- 1) (- (height!1820 (left!31286 (c!668037 thiss!5815))) (height!1820 (right!31616 (c!668037 thiss!5815))))))))

(declare-fun b!3831113 () Bool)

(declare-fun res!1550969 () Bool)

(assert (=> b!3831113 (=> (not res!1550969) (not e!2365884))))

(assert (=> b!3831113 (= res!1550969 (isBalanced!3606 (left!31286 (c!668037 thiss!5815))))))

(declare-fun b!3831114 () Bool)

(declare-fun res!1550965 () Bool)

(assert (=> b!3831114 (=> (not res!1550965) (not e!2365884))))

(assert (=> b!3831114 (= res!1550965 (isBalanced!3606 (right!31616 (c!668037 thiss!5815))))))

(declare-fun b!3831115 () Bool)

(declare-fun res!1550967 () Bool)

(assert (=> b!3831115 (=> (not res!1550967) (not e!2365884))))

(assert (=> b!3831115 (= res!1550967 (not (isEmpty!23866 (left!31286 (c!668037 thiss!5815)))))))

(assert (= (and d!1137406 (not res!1550964)) b!3831112))

(assert (= (and b!3831112 res!1550966) b!3831111))

(assert (= (and b!3831111 res!1550968) b!3831113))

(assert (= (and b!3831113 res!1550969) b!3831114))

(assert (= (and b!3831114 res!1550965) b!3831115))

(assert (= (and b!3831115 res!1550967) b!3831110))

(declare-fun m!4385833 () Bool)

(assert (=> b!3831114 m!4385833))

(declare-fun m!4385835 () Bool)

(assert (=> b!3831110 m!4385835))

(declare-fun m!4385837 () Bool)

(assert (=> b!3831111 m!4385837))

(declare-fun m!4385839 () Bool)

(assert (=> b!3831111 m!4385839))

(declare-fun m!4385841 () Bool)

(assert (=> b!3831115 m!4385841))

(assert (=> b!3831112 m!4385837))

(assert (=> b!3831112 m!4385839))

(declare-fun m!4385843 () Bool)

(assert (=> b!3831113 m!4385843))

(assert (=> start!358472 d!1137406))

(declare-fun d!1137410 () Bool)

(assert (=> d!1137410 (= (inv!54515 thiss!5815) (isBalanced!3606 (c!668037 thiss!5815)))))

(declare-fun bs!582270 () Bool)

(assert (= bs!582270 d!1137410))

(assert (=> bs!582270 m!4385793))

(assert (=> start!358472 d!1137410))

(declare-fun d!1137416 () Bool)

(assert (=> d!1137416 (= (inv!54515 ys!29) (isBalanced!3606 (c!668037 ys!29)))))

(declare-fun bs!582272 () Bool)

(assert (= bs!582272 d!1137416))

(assert (=> bs!582272 m!4385799))

(assert (=> start!358472 d!1137416))

(declare-fun d!1137420 () Bool)

(declare-fun c!668044 () Bool)

(assert (=> d!1137420 (= c!668044 ((_ is Node!12427) (c!668037 thiss!5815)))))

(declare-fun e!2365901 () Bool)

(assert (=> d!1137420 (= (inv!54516 (c!668037 thiss!5815)) e!2365901)))

(declare-fun b!3831145 () Bool)

(declare-fun inv!54519 (Conc!12427) Bool)

(assert (=> b!3831145 (= e!2365901 (inv!54519 (c!668037 thiss!5815)))))

(declare-fun b!3831146 () Bool)

(declare-fun e!2365902 () Bool)

(assert (=> b!3831146 (= e!2365901 e!2365902)))

(declare-fun res!1550979 () Bool)

(assert (=> b!3831146 (= res!1550979 (not ((_ is Leaf!19239) (c!668037 thiss!5815))))))

(assert (=> b!3831146 (=> res!1550979 e!2365902)))

(declare-fun b!3831147 () Bool)

(declare-fun inv!54520 (Conc!12427) Bool)

(assert (=> b!3831147 (= e!2365902 (inv!54520 (c!668037 thiss!5815)))))

(assert (= (and d!1137420 c!668044) b!3831145))

(assert (= (and d!1137420 (not c!668044)) b!3831146))

(assert (= (and b!3831146 (not res!1550979)) b!3831147))

(declare-fun m!4385873 () Bool)

(assert (=> b!3831145 m!4385873))

(declare-fun m!4385875 () Bool)

(assert (=> b!3831147 m!4385875))

(assert (=> b!3831063 d!1137420))

(declare-fun d!1137422 () Bool)

(declare-fun c!668045 () Bool)

(assert (=> d!1137422 (= c!668045 ((_ is Node!12427) (c!668037 ys!29)))))

(declare-fun e!2365903 () Bool)

(assert (=> d!1137422 (= (inv!54516 (c!668037 ys!29)) e!2365903)))

(declare-fun b!3831148 () Bool)

(assert (=> b!3831148 (= e!2365903 (inv!54519 (c!668037 ys!29)))))

(declare-fun b!3831149 () Bool)

(declare-fun e!2365904 () Bool)

(assert (=> b!3831149 (= e!2365903 e!2365904)))

(declare-fun res!1550980 () Bool)

(assert (=> b!3831149 (= res!1550980 (not ((_ is Leaf!19239) (c!668037 ys!29))))))

(assert (=> b!3831149 (=> res!1550980 e!2365904)))

(declare-fun b!3831150 () Bool)

(assert (=> b!3831150 (= e!2365904 (inv!54520 (c!668037 ys!29)))))

(assert (= (and d!1137422 c!668045) b!3831148))

(assert (= (and d!1137422 (not c!668045)) b!3831149))

(assert (= (and b!3831149 (not res!1550980)) b!3831150))

(declare-fun m!4385877 () Bool)

(assert (=> b!3831148 m!4385877))

(declare-fun m!4385879 () Bool)

(assert (=> b!3831150 m!4385879))

(assert (=> b!3831064 d!1137422))

(declare-fun b!3831159 () Bool)

(declare-fun tp!1159246 () Bool)

(declare-fun e!2365909 () Bool)

(declare-fun tp!1159245 () Bool)

(assert (=> b!3831159 (= e!2365909 (and (inv!54516 (left!31286 (c!668037 thiss!5815))) tp!1159245 (inv!54516 (right!31616 (c!668037 thiss!5815))) tp!1159246))))

(declare-fun b!3831161 () Bool)

(declare-fun e!2365910 () Bool)

(declare-fun tp!1159247 () Bool)

(assert (=> b!3831161 (= e!2365910 tp!1159247)))

(declare-fun b!3831160 () Bool)

(declare-fun inv!54522 (IArray!24859) Bool)

(assert (=> b!3831160 (= e!2365909 (and (inv!54522 (xs!15727 (c!668037 thiss!5815))) e!2365910))))

(assert (=> b!3831063 (= tp!1159226 (and (inv!54516 (c!668037 thiss!5815)) e!2365909))))

(assert (= (and b!3831063 ((_ is Node!12427) (c!668037 thiss!5815))) b!3831159))

(assert (= b!3831160 b!3831161))

(assert (= (and b!3831063 ((_ is Leaf!19239) (c!668037 thiss!5815))) b!3831160))

(declare-fun m!4385881 () Bool)

(assert (=> b!3831159 m!4385881))

(declare-fun m!4385883 () Bool)

(assert (=> b!3831159 m!4385883))

(declare-fun m!4385885 () Bool)

(assert (=> b!3831160 m!4385885))

(assert (=> b!3831063 m!4385801))

(declare-fun tp!1159249 () Bool)

(declare-fun b!3831162 () Bool)

(declare-fun e!2365911 () Bool)

(declare-fun tp!1159248 () Bool)

(assert (=> b!3831162 (= e!2365911 (and (inv!54516 (left!31286 (c!668037 ys!29))) tp!1159248 (inv!54516 (right!31616 (c!668037 ys!29))) tp!1159249))))

(declare-fun b!3831164 () Bool)

(declare-fun e!2365912 () Bool)

(declare-fun tp!1159250 () Bool)

(assert (=> b!3831164 (= e!2365912 tp!1159250)))

(declare-fun b!3831163 () Bool)

(assert (=> b!3831163 (= e!2365911 (and (inv!54522 (xs!15727 (c!668037 ys!29))) e!2365912))))

(assert (=> b!3831064 (= tp!1159225 (and (inv!54516 (c!668037 ys!29)) e!2365911))))

(assert (= (and b!3831064 ((_ is Node!12427) (c!668037 ys!29))) b!3831162))

(assert (= b!3831163 b!3831164))

(assert (= (and b!3831064 ((_ is Leaf!19239) (c!668037 ys!29))) b!3831163))

(declare-fun m!4385887 () Bool)

(assert (=> b!3831162 m!4385887))

(declare-fun m!4385889 () Bool)

(assert (=> b!3831162 m!4385889))

(declare-fun m!4385891 () Bool)

(assert (=> b!3831163 m!4385891))

(assert (=> b!3831064 m!4385803))

(check-sat (not b!3831159) (not d!1137416) (not b!3831064) (not b!3831115) (not b!3831148) (not b!3831161) (not b!3831103) (not b!3831164) (not b!3831162) (not b!3831147) (not b!3831111) (not b!3831101) (not b!3831063) (not b!3831098) (not b!3831102) (not b!3831160) (not b!3831145) (not b!3831113) (not b!3831099) (not b!3831114) (not b!3831163) (not d!1137410) (not b!3831100) (not b!3831112) (not b!3831150) (not b!3831110))
(check-sat)
