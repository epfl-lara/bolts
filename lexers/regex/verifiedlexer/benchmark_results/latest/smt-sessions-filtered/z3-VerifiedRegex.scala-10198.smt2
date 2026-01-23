; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532390 () Bool)

(assert start!532390)

(declare-fun res!2144705 () Bool)

(declare-fun e!3143914 () Bool)

(assert (=> start!532390 (=> (not res!2144705) (not e!3143914))))

(declare-datatypes ((T!103886 0))(
  ( (T!103887 (val!23472 Int)) )
))
(declare-datatypes ((List!58382 0))(
  ( (Nil!58258) (Cons!58258 (h!64706 T!103886) (t!370817 List!58382)) )
))
(declare-datatypes ((IArray!31001 0))(
  ( (IArray!31002 (innerList!15558 List!58382)) )
))
(declare-datatypes ((Conc!15470 0))(
  ( (Node!15470 (left!42634 Conc!15470) (right!42964 Conc!15470) (csize!31170 Int) (cheight!15681 Int)) (Leaf!25669 (xs!18796 IArray!31001) (csize!31171 Int)) (Empty!15470) )
))
(declare-datatypes ((BalanceConc!30370 0))(
  ( (BalanceConc!30371 (c!861821 Conc!15470)) )
))
(declare-fun thiss!5840 () BalanceConc!30370)

(declare-fun isBalanced!4332 (Conc!15470) Bool)

(assert (=> start!532390 (= res!2144705 (isBalanced!4332 (c!861821 thiss!5840)))))

(assert (=> start!532390 e!3143914))

(declare-fun e!3143913 () Bool)

(declare-fun inv!76930 (BalanceConc!30370) Bool)

(assert (=> start!532390 (and (inv!76930 thiss!5840) e!3143913)))

(assert (=> start!532390 true))

(declare-fun b!5032856 () Bool)

(declare-fun res!2144707 () Bool)

(assert (=> b!5032856 (=> (not res!2144707) (not e!3143914))))

(declare-fun i!595 () Int)

(declare-fun size!38805 (BalanceConc!30370) Int)

(assert (=> b!5032856 (= res!2144707 (<= i!595 (size!38805 thiss!5840)))))

(declare-fun b!5032855 () Bool)

(declare-fun res!2144706 () Bool)

(assert (=> b!5032855 (=> (not res!2144706) (not e!3143914))))

(assert (=> b!5032855 (= res!2144706 (<= 0 i!595))))

(declare-fun b!5032858 () Bool)

(declare-fun tp!1409876 () Bool)

(declare-fun inv!76931 (Conc!15470) Bool)

(assert (=> b!5032858 (= e!3143913 (and (inv!76931 (c!861821 thiss!5840)) tp!1409876))))

(declare-fun b!5032857 () Bool)

(declare-datatypes ((tuple2!63150 0))(
  ( (tuple2!63151 (_1!34878 Conc!15470) (_2!34878 Conc!15470)) )
))
(declare-fun splitAt!473 (Conc!15470 Int) tuple2!63150)

(assert (=> b!5032857 (= e!3143914 (not (inv!76930 (BalanceConc!30371 (_2!34878 (splitAt!473 (c!861821 thiss!5840) i!595))))))))

(assert (= (and start!532390 res!2144705) b!5032855))

(assert (= (and b!5032855 res!2144706) b!5032856))

(assert (= (and b!5032856 res!2144707) b!5032857))

(assert (= start!532390 b!5032858))

(declare-fun m!6067788 () Bool)

(assert (=> start!532390 m!6067788))

(declare-fun m!6067790 () Bool)

(assert (=> start!532390 m!6067790))

(declare-fun m!6067792 () Bool)

(assert (=> b!5032856 m!6067792))

(declare-fun m!6067794 () Bool)

(assert (=> b!5032858 m!6067794))

(declare-fun m!6067796 () Bool)

(assert (=> b!5032857 m!6067796))

(declare-fun m!6067798 () Bool)

(assert (=> b!5032857 m!6067798))

(check-sat (not b!5032856) (not start!532390) (not b!5032858) (not b!5032857))
(check-sat)
(get-model)

(declare-fun d!1619499 () Bool)

(declare-fun lt!2082563 () Int)

(declare-fun size!38808 (List!58382) Int)

(declare-fun list!18835 (BalanceConc!30370) List!58382)

(assert (=> d!1619499 (= lt!2082563 (size!38808 (list!18835 thiss!5840)))))

(declare-fun size!38809 (Conc!15470) Int)

(assert (=> d!1619499 (= lt!2082563 (size!38809 (c!861821 thiss!5840)))))

(assert (=> d!1619499 (= (size!38805 thiss!5840) lt!2082563)))

(declare-fun bs!1188667 () Bool)

(assert (= bs!1188667 d!1619499))

(declare-fun m!6067800 () Bool)

(assert (=> bs!1188667 m!6067800))

(assert (=> bs!1188667 m!6067800))

(declare-fun m!6067802 () Bool)

(assert (=> bs!1188667 m!6067802))

(declare-fun m!6067804 () Bool)

(assert (=> bs!1188667 m!6067804))

(assert (=> b!5032856 d!1619499))

(declare-fun b!5032880 () Bool)

(declare-fun res!2144728 () Bool)

(declare-fun e!3143925 () Bool)

(assert (=> b!5032880 (=> (not res!2144728) (not e!3143925))))

(assert (=> b!5032880 (= res!2144728 (isBalanced!4332 (right!42964 (c!861821 thiss!5840))))))

(declare-fun b!5032881 () Bool)

(declare-fun res!2144726 () Bool)

(assert (=> b!5032881 (=> (not res!2144726) (not e!3143925))))

(declare-fun height!2055 (Conc!15470) Int)

(assert (=> b!5032881 (= res!2144726 (<= (- (height!2055 (left!42634 (c!861821 thiss!5840))) (height!2055 (right!42964 (c!861821 thiss!5840)))) 1))))

(declare-fun b!5032882 () Bool)

(declare-fun isEmpty!31491 (Conc!15470) Bool)

(assert (=> b!5032882 (= e!3143925 (not (isEmpty!31491 (right!42964 (c!861821 thiss!5840)))))))

(declare-fun b!5032883 () Bool)

(declare-fun res!2144725 () Bool)

(assert (=> b!5032883 (=> (not res!2144725) (not e!3143925))))

(assert (=> b!5032883 (= res!2144725 (not (isEmpty!31491 (left!42634 (c!861821 thiss!5840)))))))

(declare-fun d!1619501 () Bool)

(declare-fun res!2144723 () Bool)

(declare-fun e!3143926 () Bool)

(assert (=> d!1619501 (=> res!2144723 e!3143926)))

(get-info :version)

(assert (=> d!1619501 (= res!2144723 (not ((_ is Node!15470) (c!861821 thiss!5840))))))

(assert (=> d!1619501 (= (isBalanced!4332 (c!861821 thiss!5840)) e!3143926)))

(declare-fun b!5032884 () Bool)

(declare-fun res!2144727 () Bool)

(assert (=> b!5032884 (=> (not res!2144727) (not e!3143925))))

(assert (=> b!5032884 (= res!2144727 (isBalanced!4332 (left!42634 (c!861821 thiss!5840))))))

(declare-fun b!5032885 () Bool)

(assert (=> b!5032885 (= e!3143926 e!3143925)))

(declare-fun res!2144724 () Bool)

(assert (=> b!5032885 (=> (not res!2144724) (not e!3143925))))

(assert (=> b!5032885 (= res!2144724 (<= (- 1) (- (height!2055 (left!42634 (c!861821 thiss!5840))) (height!2055 (right!42964 (c!861821 thiss!5840))))))))

(assert (= (and d!1619501 (not res!2144723)) b!5032885))

(assert (= (and b!5032885 res!2144724) b!5032881))

(assert (= (and b!5032881 res!2144726) b!5032884))

(assert (= (and b!5032884 res!2144727) b!5032880))

(assert (= (and b!5032880 res!2144728) b!5032883))

(assert (= (and b!5032883 res!2144725) b!5032882))

(declare-fun m!6067818 () Bool)

(assert (=> b!5032884 m!6067818))

(declare-fun m!6067820 () Bool)

(assert (=> b!5032882 m!6067820))

(declare-fun m!6067822 () Bool)

(assert (=> b!5032880 m!6067822))

(declare-fun m!6067824 () Bool)

(assert (=> b!5032885 m!6067824))

(declare-fun m!6067826 () Bool)

(assert (=> b!5032885 m!6067826))

(assert (=> b!5032881 m!6067824))

(assert (=> b!5032881 m!6067826))

(declare-fun m!6067828 () Bool)

(assert (=> b!5032883 m!6067828))

(assert (=> start!532390 d!1619501))

(declare-fun d!1619509 () Bool)

(assert (=> d!1619509 (= (inv!76930 thiss!5840) (isBalanced!4332 (c!861821 thiss!5840)))))

(declare-fun bs!1188670 () Bool)

(assert (= bs!1188670 d!1619509))

(assert (=> bs!1188670 m!6067788))

(assert (=> start!532390 d!1619509))

(declare-fun d!1619511 () Bool)

(declare-fun c!861827 () Bool)

(assert (=> d!1619511 (= c!861827 ((_ is Node!15470) (c!861821 thiss!5840)))))

(declare-fun e!3143931 () Bool)

(assert (=> d!1619511 (= (inv!76931 (c!861821 thiss!5840)) e!3143931)))

(declare-fun b!5032892 () Bool)

(declare-fun inv!76934 (Conc!15470) Bool)

(assert (=> b!5032892 (= e!3143931 (inv!76934 (c!861821 thiss!5840)))))

(declare-fun b!5032893 () Bool)

(declare-fun e!3143932 () Bool)

(assert (=> b!5032893 (= e!3143931 e!3143932)))

(declare-fun res!2144731 () Bool)

(assert (=> b!5032893 (= res!2144731 (not ((_ is Leaf!25669) (c!861821 thiss!5840))))))

(assert (=> b!5032893 (=> res!2144731 e!3143932)))

(declare-fun b!5032894 () Bool)

(declare-fun inv!76935 (Conc!15470) Bool)

(assert (=> b!5032894 (= e!3143932 (inv!76935 (c!861821 thiss!5840)))))

(assert (= (and d!1619511 c!861827) b!5032892))

(assert (= (and d!1619511 (not c!861827)) b!5032893))

(assert (= (and b!5032893 (not res!2144731)) b!5032894))

(declare-fun m!6067830 () Bool)

(assert (=> b!5032892 m!6067830))

(declare-fun m!6067832 () Bool)

(assert (=> b!5032894 m!6067832))

(assert (=> b!5032858 d!1619511))

(declare-fun d!1619513 () Bool)

(assert (=> d!1619513 (= (inv!76930 (BalanceConc!30371 (_2!34878 (splitAt!473 (c!861821 thiss!5840) i!595)))) (isBalanced!4332 (c!861821 (BalanceConc!30371 (_2!34878 (splitAt!473 (c!861821 thiss!5840) i!595))))))))

(declare-fun bs!1188671 () Bool)

(assert (= bs!1188671 d!1619513))

(declare-fun m!6067834 () Bool)

(assert (=> bs!1188671 m!6067834))

(assert (=> b!5032857 d!1619513))

(declare-fun b!5033044 () Bool)

(declare-fun e!3144013 () tuple2!63150)

(declare-fun e!3144016 () tuple2!63150)

(assert (=> b!5033044 (= e!3144013 e!3144016)))

(declare-fun c!861892 () Bool)

(assert (=> b!5033044 (= c!861892 (< i!595 (size!38809 (left!42634 (c!861821 thiss!5840)))))))

(declare-fun b!5033045 () Bool)

(declare-fun e!3144012 () Int)

(assert (=> b!5033045 (= e!3144012 (- i!595 (size!38809 (left!42634 (c!861821 thiss!5840)))))))

(declare-fun b!5033046 () Bool)

(declare-fun e!3144014 () Int)

(assert (=> b!5033046 (= e!3144014 i!595)))

(declare-fun b!5033047 () Bool)

(declare-datatypes ((Unit!149443 0))(
  ( (Unit!149444) )
))
(declare-fun lt!2082643 () Unit!149443)

(declare-fun lt!2082636 () Unit!149443)

(assert (=> b!5033047 (= lt!2082643 lt!2082636)))

(declare-fun lt!2082633 () List!58382)

(declare-fun call!351103 () Int)

(declare-fun drop!2598 (List!58382 Int) List!58382)

(declare-fun slice!828 (List!58382 Int Int) List!58382)

(assert (=> b!5033047 (= (drop!2598 lt!2082633 i!595) (slice!828 lt!2082633 i!595 call!351103))))

(declare-fun dropLemma!56 (List!58382 Int) Unit!149443)

(assert (=> b!5033047 (= lt!2082636 (dropLemma!56 lt!2082633 i!595))))

(declare-fun list!18837 (IArray!31001) List!58382)

(assert (=> b!5033047 (= lt!2082633 (list!18837 (xs!18796 (c!861821 thiss!5840))))))

(declare-datatypes ((tuple2!63154 0))(
  ( (tuple2!63155 (_1!34880 List!58382) (_2!34880 List!58382)) )
))
(declare-fun lt!2082640 () tuple2!63154)

(declare-fun call!351101 () tuple2!63154)

(assert (=> b!5033047 (= lt!2082640 call!351101)))

(declare-fun e!3144015 () tuple2!63150)

(declare-fun slice!829 (IArray!31001 Int Int) IArray!31001)

(assert (=> b!5033047 (= e!3144015 (tuple2!63151 (Leaf!25669 (slice!829 (xs!18796 (c!861821 thiss!5840)) 0 i!595) i!595) (Leaf!25669 (slice!829 (xs!18796 (c!861821 thiss!5840)) i!595 (csize!31171 (c!861821 thiss!5840))) (- (csize!31171 (c!861821 thiss!5840)) i!595))))))

(declare-fun b!5033048 () Bool)

(declare-fun e!3144005 () List!58382)

(assert (=> b!5033048 (= e!3144005 (list!18837 (xs!18796 (c!861821 thiss!5840))))))

(declare-fun b!5033049 () Bool)

(declare-fun e!3144011 () tuple2!63154)

(declare-fun e!3144007 () tuple2!63154)

(assert (=> b!5033049 (= e!3144011 e!3144007)))

(declare-fun c!861889 () Bool)

(assert (=> b!5033049 (= c!861889 (< i!595 call!351103))))

(declare-fun b!5033050 () Bool)

(declare-fun lt!2082635 () tuple2!63150)

(declare-fun call!351106 () tuple2!63150)

(assert (=> b!5033050 (= lt!2082635 call!351106)))

(declare-fun call!351104 () Conc!15470)

(assert (=> b!5033050 (= e!3144016 (tuple2!63151 call!351104 (_2!34878 lt!2082635)))))

(declare-fun b!5033051 () Bool)

(declare-fun c!861890 () Bool)

(assert (=> b!5033051 (= c!861890 (<= i!595 0))))

(declare-fun e!3144006 () tuple2!63150)

(declare-fun e!3144009 () tuple2!63150)

(assert (=> b!5033051 (= e!3144006 e!3144009)))

(declare-fun bm!351096 () Bool)

(declare-fun c!861891 () Bool)

(declare-fun c!861884 () Bool)

(assert (=> bm!351096 (= c!861891 c!861884)))

(declare-fun splitAtIndex!173 (List!58382 Int) tuple2!63154)

(assert (=> bm!351096 (= call!351101 (splitAtIndex!173 e!3144005 (ite c!861884 i!595 e!3144014)))))

(declare-fun b!5033052 () Bool)

(declare-fun e!3144008 () tuple2!63150)

(assert (=> b!5033052 (= e!3144008 e!3144006)))

(assert (=> b!5033052 (= c!861884 ((_ is Leaf!25669) (c!861821 thiss!5840)))))

(declare-fun bm!351097 () Bool)

(declare-fun c!861885 () Bool)

(assert (=> bm!351097 (= c!861885 c!861892)))

(assert (=> bm!351097 (= call!351106 (splitAt!473 (ite c!861892 (left!42634 (c!861821 thiss!5840)) (right!42964 (c!861821 thiss!5840))) e!3144012))))

(declare-fun b!5033054 () Bool)

(declare-fun lt!2082639 () List!58382)

(declare-fun lt!2082644 () List!58382)

(assert (=> b!5033054 (= e!3144005 (ite c!861889 lt!2082639 lt!2082644))))

(declare-fun b!5033055 () Bool)

(declare-fun lt!2082642 () tuple2!63150)

(assert (=> b!5033055 (= lt!2082642 call!351106)))

(assert (=> b!5033055 (= e!3144016 (tuple2!63151 (_1!34878 lt!2082642) call!351104))))

(declare-fun bm!351098 () Bool)

(assert (=> bm!351098 (= call!351103 (size!38808 (ite c!861884 lt!2082633 lt!2082639)))))

(declare-fun lt!2082637 () tuple2!63150)

(declare-fun e!3144010 () Bool)

(declare-fun b!5033056 () Bool)

(declare-fun list!18838 (Conc!15470) List!58382)

(assert (=> b!5033056 (= e!3144010 (= (tuple2!63155 (list!18838 (_1!34878 lt!2082637)) (list!18838 (_2!34878 lt!2082637))) (splitAtIndex!173 (list!18838 (c!861821 thiss!5840)) i!595)))))

(declare-fun b!5033057 () Bool)

(assert (=> b!5033057 (= e!3144008 (tuple2!63151 (c!861821 thiss!5840) (c!861821 thiss!5840)))))

(declare-fun b!5033058 () Bool)

(assert (=> b!5033058 (= e!3144011 (tuple2!63155 lt!2082639 lt!2082644))))

(declare-fun bm!351099 () Bool)

(declare-fun ++!12687 (Conc!15470 Conc!15470) Conc!15470)

(assert (=> bm!351099 (= call!351104 (++!12687 (ite c!861892 (_2!34878 lt!2082642) (left!42634 (c!861821 thiss!5840))) (ite c!861892 (right!42964 (c!861821 thiss!5840)) (_1!34878 lt!2082635))))))

(declare-fun b!5033059 () Bool)

(declare-fun lt!2082641 () tuple2!63154)

(declare-fun call!351102 () tuple2!63154)

(assert (=> b!5033059 (= lt!2082641 call!351102)))

(declare-fun call!351105 () List!58382)

(assert (=> b!5033059 (= e!3144007 (tuple2!63155 call!351105 (_2!34880 lt!2082641)))))

(declare-fun b!5033060 () Bool)

(assert (=> b!5033060 (= e!3144009 (tuple2!63151 Empty!15470 (c!861821 thiss!5840)))))

(declare-fun b!5033061 () Bool)

(declare-fun lt!2082632 () tuple2!63154)

(assert (=> b!5033061 (= lt!2082632 call!351102)))

(assert (=> b!5033061 (= e!3144007 (tuple2!63155 (_1!34880 lt!2082632) call!351105))))

(declare-fun b!5033062 () Bool)

(assert (=> b!5033062 (= e!3144009 e!3144015)))

(declare-fun c!861883 () Bool)

(assert (=> b!5033062 (= c!861883 (= i!595 (csize!31171 (c!861821 thiss!5840))))))

(declare-fun b!5033063 () Bool)

(declare-fun c!861886 () Bool)

(assert (=> b!5033063 (= c!861886 (= (size!38809 (left!42634 (c!861821 thiss!5840))) i!595))))

(declare-fun lt!2082638 () Unit!149443)

(declare-fun lt!2082634 () Unit!149443)

(assert (=> b!5033063 (= lt!2082638 lt!2082634)))

(declare-fun ++!12688 (List!58382 List!58382) List!58382)

(assert (=> b!5033063 (= (splitAtIndex!173 (++!12688 lt!2082639 lt!2082644) i!595) e!3144011)))

(declare-fun c!861888 () Bool)

(assert (=> b!5033063 (= c!861888 (= call!351103 i!595))))

(declare-fun splitAtLemma!56 (List!58382 List!58382 Int) Unit!149443)

(assert (=> b!5033063 (= lt!2082634 (splitAtLemma!56 lt!2082639 lt!2082644 i!595))))

(assert (=> b!5033063 (= lt!2082644 (list!18838 (right!42964 (c!861821 thiss!5840))))))

(assert (=> b!5033063 (= lt!2082639 (list!18838 (left!42634 (c!861821 thiss!5840))))))

(assert (=> b!5033063 (= e!3144006 e!3144013)))

(declare-fun b!5033064 () Bool)

(declare-fun res!2144761 () Bool)

(assert (=> b!5033064 (=> (not res!2144761) (not e!3144010))))

(assert (=> b!5033064 (= res!2144761 (isBalanced!4332 (_2!34878 lt!2082637)))))

(declare-fun bm!351100 () Bool)

(declare-fun c!861893 () Bool)

(assert (=> bm!351100 (= c!861893 c!861889)))

(assert (=> bm!351100 (= call!351102 call!351101)))

(declare-fun bm!351101 () Bool)

(assert (=> bm!351101 (= call!351105 (++!12688 (ite c!861889 (_2!34880 lt!2082632) lt!2082639) (ite c!861889 lt!2082644 (_1!34880 lt!2082641))))))

(declare-fun b!5033065 () Bool)

(assert (=> b!5033065 (= e!3144012 i!595)))

(declare-fun b!5033066 () Bool)

(assert (=> b!5033066 (= e!3144015 (tuple2!63151 (c!861821 thiss!5840) Empty!15470))))

(declare-fun b!5033067 () Bool)

(assert (=> b!5033067 (= e!3144014 (- i!595 call!351103))))

(declare-fun b!5033053 () Bool)

(assert (=> b!5033053 (= e!3144013 (tuple2!63151 (left!42634 (c!861821 thiss!5840)) (right!42964 (c!861821 thiss!5840))))))

(declare-fun d!1619515 () Bool)

(assert (=> d!1619515 e!3144010))

(declare-fun res!2144760 () Bool)

(assert (=> d!1619515 (=> (not res!2144760) (not e!3144010))))

(assert (=> d!1619515 (= res!2144760 (isBalanced!4332 (_1!34878 lt!2082637)))))

(assert (=> d!1619515 (= lt!2082637 e!3144008)))

(declare-fun c!861887 () Bool)

(assert (=> d!1619515 (= c!861887 ((_ is Empty!15470) (c!861821 thiss!5840)))))

(assert (=> d!1619515 (isBalanced!4332 (c!861821 thiss!5840))))

(assert (=> d!1619515 (= (splitAt!473 (c!861821 thiss!5840) i!595) lt!2082637)))

(assert (= (and d!1619515 c!861887) b!5033057))

(assert (= (and d!1619515 (not c!861887)) b!5033052))

(assert (= (and b!5033052 c!861884) b!5033051))

(assert (= (and b!5033052 (not c!861884)) b!5033063))

(assert (= (and b!5033051 c!861890) b!5033060))

(assert (= (and b!5033051 (not c!861890)) b!5033062))

(assert (= (and b!5033062 c!861883) b!5033066))

(assert (= (and b!5033062 (not c!861883)) b!5033047))

(assert (= (and b!5033063 c!861888) b!5033058))

(assert (= (and b!5033063 (not c!861888)) b!5033049))

(assert (= (and b!5033049 c!861889) b!5033061))

(assert (= (and b!5033049 (not c!861889)) b!5033059))

(assert (= (or b!5033061 b!5033059) bm!351101))

(assert (= (or b!5033061 b!5033059) bm!351100))

(assert (= (and bm!351100 c!861893) b!5033046))

(assert (= (and bm!351100 (not c!861893)) b!5033067))

(assert (= (and b!5033063 c!861886) b!5033053))

(assert (= (and b!5033063 (not c!861886)) b!5033044))

(assert (= (and b!5033044 c!861892) b!5033055))

(assert (= (and b!5033044 (not c!861892)) b!5033050))

(assert (= (or b!5033055 b!5033050) bm!351099))

(assert (= (or b!5033055 b!5033050) bm!351097))

(assert (= (and bm!351097 c!861885) b!5033065))

(assert (= (and bm!351097 (not c!861885)) b!5033045))

(assert (= (or b!5033047 b!5033049 b!5033063 b!5033067) bm!351098))

(assert (= (or b!5033047 bm!351100) bm!351096))

(assert (= (and bm!351096 c!861891) b!5033048))

(assert (= (and bm!351096 (not c!861891)) b!5033054))

(assert (= (and d!1619515 res!2144760) b!5033064))

(assert (= (and b!5033064 res!2144761) b!5033056))

(declare-fun m!6067900 () Bool)

(assert (=> b!5033044 m!6067900))

(assert (=> b!5033063 m!6067900))

(declare-fun m!6067902 () Bool)

(assert (=> b!5033063 m!6067902))

(declare-fun m!6067904 () Bool)

(assert (=> b!5033063 m!6067904))

(declare-fun m!6067906 () Bool)

(assert (=> b!5033063 m!6067906))

(declare-fun m!6067908 () Bool)

(assert (=> b!5033063 m!6067908))

(assert (=> b!5033063 m!6067902))

(declare-fun m!6067910 () Bool)

(assert (=> b!5033063 m!6067910))

(declare-fun m!6067912 () Bool)

(assert (=> d!1619515 m!6067912))

(assert (=> d!1619515 m!6067788))

(declare-fun m!6067914 () Bool)

(assert (=> b!5033047 m!6067914))

(declare-fun m!6067916 () Bool)

(assert (=> b!5033047 m!6067916))

(declare-fun m!6067918 () Bool)

(assert (=> b!5033047 m!6067918))

(declare-fun m!6067920 () Bool)

(assert (=> b!5033047 m!6067920))

(declare-fun m!6067922 () Bool)

(assert (=> b!5033047 m!6067922))

(declare-fun m!6067924 () Bool)

(assert (=> b!5033047 m!6067924))

(declare-fun m!6067926 () Bool)

(assert (=> bm!351099 m!6067926))

(declare-fun m!6067928 () Bool)

(assert (=> bm!351101 m!6067928))

(assert (=> b!5033045 m!6067900))

(declare-fun m!6067930 () Bool)

(assert (=> bm!351098 m!6067930))

(assert (=> b!5033048 m!6067918))

(declare-fun m!6067932 () Bool)

(assert (=> b!5033056 m!6067932))

(declare-fun m!6067934 () Bool)

(assert (=> b!5033056 m!6067934))

(declare-fun m!6067936 () Bool)

(assert (=> b!5033056 m!6067936))

(assert (=> b!5033056 m!6067936))

(declare-fun m!6067938 () Bool)

(assert (=> b!5033056 m!6067938))

(declare-fun m!6067940 () Bool)

(assert (=> b!5033064 m!6067940))

(declare-fun m!6067942 () Bool)

(assert (=> bm!351096 m!6067942))

(declare-fun m!6067944 () Bool)

(assert (=> bm!351097 m!6067944))

(assert (=> b!5032857 d!1619515))

(declare-fun tp!1409894 () Bool)

(declare-fun tp!1409892 () Bool)

(declare-fun e!3144022 () Bool)

(declare-fun b!5033076 () Bool)

(assert (=> b!5033076 (= e!3144022 (and (inv!76931 (left!42634 (c!861821 thiss!5840))) tp!1409894 (inv!76931 (right!42964 (c!861821 thiss!5840))) tp!1409892))))

(declare-fun b!5033078 () Bool)

(declare-fun e!3144021 () Bool)

(declare-fun tp!1409893 () Bool)

(assert (=> b!5033078 (= e!3144021 tp!1409893)))

(declare-fun b!5033077 () Bool)

(declare-fun inv!76937 (IArray!31001) Bool)

(assert (=> b!5033077 (= e!3144022 (and (inv!76937 (xs!18796 (c!861821 thiss!5840))) e!3144021))))

(assert (=> b!5032858 (= tp!1409876 (and (inv!76931 (c!861821 thiss!5840)) e!3144022))))

(assert (= (and b!5032858 ((_ is Node!15470) (c!861821 thiss!5840))) b!5033076))

(assert (= b!5033077 b!5033078))

(assert (= (and b!5032858 ((_ is Leaf!25669) (c!861821 thiss!5840))) b!5033077))

(declare-fun m!6067946 () Bool)

(assert (=> b!5033076 m!6067946))

(declare-fun m!6067948 () Bool)

(assert (=> b!5033076 m!6067948))

(declare-fun m!6067950 () Bool)

(assert (=> b!5033077 m!6067950))

(assert (=> b!5032858 m!6067794))

(check-sat (not b!5033063) (not b!5032881) (not b!5033044) (not b!5032858) (not d!1619509) (not b!5033078) (not b!5033045) (not b!5032880) (not b!5032882) (not b!5033064) (not b!5032883) (not d!1619499) (not b!5033048) (not bm!351101) (not bm!351099) (not b!5032885) (not bm!351096) (not bm!351097) (not b!5032884) (not d!1619513) (not bm!351098) (not b!5032894) (not d!1619515) (not b!5033056) (not b!5033076) (not b!5033047) (not b!5033077) (not b!5032892))
(check-sat)
