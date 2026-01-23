; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532412 () Bool)

(assert start!532412)

(declare-fun b!5033091 () Bool)

(declare-fun e!3144029 () Bool)

(declare-fun e!3144031 () Bool)

(assert (=> b!5033091 (= e!3144029 e!3144031)))

(declare-fun res!2144773 () Bool)

(assert (=> b!5033091 (=> res!2144773 e!3144031)))

(declare-datatypes ((T!103898 0))(
  ( (T!103899 (val!23473 Int)) )
))
(declare-datatypes ((List!58383 0))(
  ( (Nil!58259) (Cons!58259 (h!64707 T!103898) (t!370822 List!58383)) )
))
(declare-datatypes ((IArray!31003 0))(
  ( (IArray!31004 (innerList!15559 List!58383)) )
))
(declare-datatypes ((Conc!15471 0))(
  ( (Node!15471 (left!42636 Conc!15471) (right!42966 Conc!15471) (csize!31172 Int) (cheight!15682 Int)) (Leaf!25671 (xs!18797 IArray!31003) (csize!31173 Int)) (Empty!15471) )
))
(declare-datatypes ((tuple2!63156 0))(
  ( (tuple2!63157 (_1!34881 Conc!15471) (_2!34881 Conc!15471)) )
))
(declare-fun lt!2082647 () tuple2!63156)

(declare-fun isBalanced!4333 (Conc!15471) Bool)

(assert (=> b!5033091 (= res!2144773 (not (isBalanced!4333 (_1!34881 lt!2082647))))))

(declare-datatypes ((BalanceConc!30372 0))(
  ( (BalanceConc!30373 (c!861894 Conc!15471)) )
))
(declare-fun thiss!5840 () BalanceConc!30372)

(declare-fun i!595 () Int)

(declare-fun splitAt!474 (Conc!15471 Int) tuple2!63156)

(assert (=> b!5033091 (= lt!2082647 (splitAt!474 (c!861894 thiss!5840) i!595))))

(declare-fun b!5033092 () Bool)

(declare-fun e!3144030 () Bool)

(declare-fun tp!1409897 () Bool)

(declare-fun inv!76941 (Conc!15471) Bool)

(assert (=> b!5033092 (= e!3144030 (and (inv!76941 (c!861894 thiss!5840)) tp!1409897))))

(declare-fun res!2144775 () Bool)

(assert (=> start!532412 (=> (not res!2144775) (not e!3144029))))

(assert (=> start!532412 (= res!2144775 (isBalanced!4333 (c!861894 thiss!5840)))))

(assert (=> start!532412 e!3144029))

(declare-fun inv!76942 (BalanceConc!30372) Bool)

(assert (=> start!532412 (and (inv!76942 thiss!5840) e!3144030)))

(assert (=> start!532412 true))

(declare-fun b!5033093 () Bool)

(declare-fun res!2144774 () Bool)

(assert (=> b!5033093 (=> res!2144774 e!3144031)))

(assert (=> b!5033093 (= res!2144774 (not (isBalanced!4333 (_2!34881 lt!2082647))))))

(declare-fun b!5033094 () Bool)

(declare-datatypes ((tuple2!63158 0))(
  ( (tuple2!63159 (_1!34882 List!58383) (_2!34882 List!58383)) )
))
(declare-fun list!18839 (BalanceConc!30372) List!58383)

(declare-fun splitAtIndex!174 (List!58383 Int) tuple2!63158)

(assert (=> b!5033094 (= e!3144031 (not (= (tuple2!63159 (list!18839 (BalanceConc!30373 (_1!34881 lt!2082647))) (list!18839 (BalanceConc!30373 (_2!34881 lt!2082647)))) (splitAtIndex!174 (list!18839 thiss!5840) i!595))))))

(declare-fun b!5033095 () Bool)

(declare-fun res!2144776 () Bool)

(assert (=> b!5033095 (=> (not res!2144776) (not e!3144029))))

(declare-fun size!38810 (BalanceConc!30372) Int)

(assert (=> b!5033095 (= res!2144776 (<= i!595 (size!38810 thiss!5840)))))

(declare-fun b!5033096 () Bool)

(declare-fun res!2144772 () Bool)

(assert (=> b!5033096 (=> (not res!2144772) (not e!3144029))))

(assert (=> b!5033096 (= res!2144772 (<= 0 i!595))))

(assert (= (and start!532412 res!2144775) b!5033096))

(assert (= (and b!5033096 res!2144772) b!5033095))

(assert (= (and b!5033095 res!2144776) b!5033091))

(assert (= (and b!5033091 (not res!2144773)) b!5033093))

(assert (= (and b!5033093 (not res!2144774)) b!5033094))

(assert (= start!532412 b!5033092))

(declare-fun m!6067952 () Bool)

(assert (=> b!5033091 m!6067952))

(declare-fun m!6067954 () Bool)

(assert (=> b!5033091 m!6067954))

(declare-fun m!6067956 () Bool)

(assert (=> start!532412 m!6067956))

(declare-fun m!6067958 () Bool)

(assert (=> start!532412 m!6067958))

(declare-fun m!6067960 () Bool)

(assert (=> b!5033094 m!6067960))

(declare-fun m!6067962 () Bool)

(assert (=> b!5033094 m!6067962))

(declare-fun m!6067964 () Bool)

(assert (=> b!5033094 m!6067964))

(assert (=> b!5033094 m!6067964))

(declare-fun m!6067966 () Bool)

(assert (=> b!5033094 m!6067966))

(declare-fun m!6067968 () Bool)

(assert (=> b!5033095 m!6067968))

(declare-fun m!6067970 () Bool)

(assert (=> b!5033092 m!6067970))

(declare-fun m!6067972 () Bool)

(assert (=> b!5033093 m!6067972))

(push 1)

(assert (not b!5033091))

(assert (not start!532412))

(assert (not b!5033092))

(assert (not b!5033094))

(assert (not b!5033095))

(assert (not b!5033093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619524 () Bool)

(declare-fun c!861900 () Bool)

(assert (=> d!1619524 (= c!861900 (is-Node!15471 (c!861894 thiss!5840)))))

(declare-fun e!3144049 () Bool)

(assert (=> d!1619524 (= (inv!76941 (c!861894 thiss!5840)) e!3144049)))

(declare-fun b!5033127 () Bool)

(declare-fun inv!76945 (Conc!15471) Bool)

(assert (=> b!5033127 (= e!3144049 (inv!76945 (c!861894 thiss!5840)))))

(declare-fun b!5033128 () Bool)

(declare-fun e!3144050 () Bool)

(assert (=> b!5033128 (= e!3144049 e!3144050)))

(declare-fun res!2144796 () Bool)

(assert (=> b!5033128 (= res!2144796 (not (is-Leaf!25671 (c!861894 thiss!5840))))))

(assert (=> b!5033128 (=> res!2144796 e!3144050)))

(declare-fun b!5033129 () Bool)

(declare-fun inv!76946 (Conc!15471) Bool)

(assert (=> b!5033129 (= e!3144050 (inv!76946 (c!861894 thiss!5840)))))

(assert (= (and d!1619524 c!861900) b!5033127))

(assert (= (and d!1619524 (not c!861900)) b!5033128))

(assert (= (and b!5033128 (not res!2144796)) b!5033129))

(declare-fun m!6067996 () Bool)

(assert (=> b!5033127 m!6067996))

(declare-fun m!6067998 () Bool)

(assert (=> b!5033129 m!6067998))

(assert (=> b!5033092 d!1619524))

(declare-fun b!5033145 () Bool)

(declare-fun res!2144814 () Bool)

(declare-fun e!3144058 () Bool)

(assert (=> b!5033145 (=> (not res!2144814) (not e!3144058))))

(declare-fun height!2057 (Conc!15471) Int)

(assert (=> b!5033145 (= res!2144814 (<= (- (height!2057 (left!42636 (_2!34881 lt!2082647))) (height!2057 (right!42966 (_2!34881 lt!2082647)))) 1))))

(declare-fun b!5033146 () Bool)

(declare-fun res!2144810 () Bool)

(assert (=> b!5033146 (=> (not res!2144810) (not e!3144058))))

(assert (=> b!5033146 (= res!2144810 (isBalanced!4333 (right!42966 (_2!34881 lt!2082647))))))

(declare-fun b!5033147 () Bool)

(declare-fun res!2144815 () Bool)

(assert (=> b!5033147 (=> (not res!2144815) (not e!3144058))))

(assert (=> b!5033147 (= res!2144815 (isBalanced!4333 (left!42636 (_2!34881 lt!2082647))))))

(declare-fun b!5033148 () Bool)

(declare-fun isEmpty!31493 (Conc!15471) Bool)

(assert (=> b!5033148 (= e!3144058 (not (isEmpty!31493 (right!42966 (_2!34881 lt!2082647)))))))

(declare-fun b!5033149 () Bool)

(declare-fun res!2144812 () Bool)

(assert (=> b!5033149 (=> (not res!2144812) (not e!3144058))))

(assert (=> b!5033149 (= res!2144812 (not (isEmpty!31493 (left!42636 (_2!34881 lt!2082647)))))))

(declare-fun b!5033150 () Bool)

(declare-fun e!3144057 () Bool)

(assert (=> b!5033150 (= e!3144057 e!3144058)))

(declare-fun res!2144811 () Bool)

(assert (=> b!5033150 (=> (not res!2144811) (not e!3144058))))

(assert (=> b!5033150 (= res!2144811 (<= (- 1) (- (height!2057 (left!42636 (_2!34881 lt!2082647))) (height!2057 (right!42966 (_2!34881 lt!2082647))))))))

(declare-fun d!1619526 () Bool)

(declare-fun res!2144813 () Bool)

(assert (=> d!1619526 (=> res!2144813 e!3144057)))

(assert (=> d!1619526 (= res!2144813 (not (is-Node!15471 (_2!34881 lt!2082647))))))

(assert (=> d!1619526 (= (isBalanced!4333 (_2!34881 lt!2082647)) e!3144057)))

(assert (= (and d!1619526 (not res!2144813)) b!5033150))

(assert (= (and b!5033150 res!2144811) b!5033145))

(assert (= (and b!5033145 res!2144814) b!5033147))

(assert (= (and b!5033147 res!2144815) b!5033146))

(assert (= (and b!5033146 res!2144810) b!5033149))

(assert (= (and b!5033149 res!2144812) b!5033148))

(declare-fun m!6068004 () Bool)

(assert (=> b!5033150 m!6068004))

(declare-fun m!6068006 () Bool)

(assert (=> b!5033150 m!6068006))

(assert (=> b!5033145 m!6068004))

(assert (=> b!5033145 m!6068006))

(declare-fun m!6068008 () Bool)

(assert (=> b!5033149 m!6068008))

(declare-fun m!6068010 () Bool)

(assert (=> b!5033148 m!6068010))

(declare-fun m!6068012 () Bool)

(assert (=> b!5033147 m!6068012))

(declare-fun m!6068014 () Bool)

(assert (=> b!5033146 m!6068014))

(assert (=> b!5033093 d!1619526))

(declare-fun d!1619530 () Bool)

(declare-fun lt!2082653 () Int)

(declare-fun size!38812 (List!58383) Int)

(assert (=> d!1619530 (= lt!2082653 (size!38812 (list!18839 thiss!5840)))))

(declare-fun size!38813 (Conc!15471) Int)

(assert (=> d!1619530 (= lt!2082653 (size!38813 (c!861894 thiss!5840)))))

(assert (=> d!1619530 (= (size!38810 thiss!5840) lt!2082653)))

(declare-fun bs!1188675 () Bool)

(assert (= bs!1188675 d!1619530))

(assert (=> bs!1188675 m!6067964))

(assert (=> bs!1188675 m!6067964))

(declare-fun m!6068016 () Bool)

(assert (=> bs!1188675 m!6068016))

(declare-fun m!6068018 () Bool)

(assert (=> bs!1188675 m!6068018))

(assert (=> b!5033095 d!1619530))

(declare-fun d!1619532 () Bool)

(declare-fun list!18841 (Conc!15471) List!58383)

(assert (=> d!1619532 (= (list!18839 (BalanceConc!30373 (_1!34881 lt!2082647))) (list!18841 (c!861894 (BalanceConc!30373 (_1!34881 lt!2082647)))))))

(declare-fun bs!1188676 () Bool)

(assert (= bs!1188676 d!1619532))

(declare-fun m!6068020 () Bool)

(assert (=> bs!1188676 m!6068020))

(assert (=> b!5033094 d!1619532))

(declare-fun d!1619534 () Bool)

(assert (=> d!1619534 (= (list!18839 (BalanceConc!30373 (_2!34881 lt!2082647))) (list!18841 (c!861894 (BalanceConc!30373 (_2!34881 lt!2082647)))))))

(declare-fun bs!1188677 () Bool)

(assert (= bs!1188677 d!1619534))

(declare-fun m!6068022 () Bool)

(assert (=> bs!1188677 m!6068022))

(assert (=> b!5033094 d!1619534))

(declare-fun b!5033181 () Bool)

(declare-fun e!3144072 () tuple2!63158)

(assert (=> b!5033181 (= e!3144072 (tuple2!63159 Nil!58259 (list!18839 thiss!5840)))))

(declare-fun b!5033182 () Bool)

(declare-fun e!3144073 () tuple2!63158)

(assert (=> b!5033182 (= e!3144073 (tuple2!63159 Nil!58259 Nil!58259))))

(declare-fun b!5033183 () Bool)

(assert (=> b!5033183 (= e!3144073 e!3144072)))

(declare-fun c!861907 () Bool)

(assert (=> b!5033183 (= c!861907 (<= i!595 0))))

(declare-fun e!3144071 () Bool)

(declare-fun b!5033184 () Bool)

(declare-fun lt!2082658 () tuple2!63158)

(declare-fun drop!2599 (List!58383 Int) List!58383)

(assert (=> b!5033184 (= e!3144071 (= (_2!34882 lt!2082658) (drop!2599 (list!18839 thiss!5840) i!595)))))

(declare-fun d!1619536 () Bool)

(assert (=> d!1619536 e!3144071))

(declare-fun res!2144838 () Bool)

(assert (=> d!1619536 (=> (not res!2144838) (not e!3144071))))

(declare-fun ++!12689 (List!58383 List!58383) List!58383)

(assert (=> d!1619536 (= res!2144838 (= (++!12689 (_1!34882 lt!2082658) (_2!34882 lt!2082658)) (list!18839 thiss!5840)))))

(assert (=> d!1619536 (= lt!2082658 e!3144073)))

(declare-fun c!861906 () Bool)

(assert (=> d!1619536 (= c!861906 (is-Nil!58259 (list!18839 thiss!5840)))))

(assert (=> d!1619536 (= (splitAtIndex!174 (list!18839 thiss!5840) i!595) lt!2082658)))

(declare-fun b!5033185 () Bool)

(declare-fun lt!2082659 () tuple2!63158)

(assert (=> b!5033185 (= lt!2082659 (splitAtIndex!174 (t!370822 (list!18839 thiss!5840)) (- i!595 1)))))

(assert (=> b!5033185 (= e!3144072 (tuple2!63159 (Cons!58259 (h!64707 (list!18839 thiss!5840)) (_1!34882 lt!2082659)) (_2!34882 lt!2082659)))))

(declare-fun b!5033186 () Bool)

(declare-fun res!2144839 () Bool)

(assert (=> b!5033186 (=> (not res!2144839) (not e!3144071))))

(declare-fun take!793 (List!58383 Int) List!58383)

(assert (=> b!5033186 (= res!2144839 (= (_1!34882 lt!2082658) (take!793 (list!18839 thiss!5840) i!595)))))

(assert (= (and d!1619536 c!861906) b!5033182))

(assert (= (and d!1619536 (not c!861906)) b!5033183))

(assert (= (and b!5033183 c!861907) b!5033181))

(assert (= (and b!5033183 (not c!861907)) b!5033185))

(assert (= (and d!1619536 res!2144838) b!5033186))

(assert (= (and b!5033186 res!2144839) b!5033184))

(assert (=> b!5033184 m!6067964))

(declare-fun m!6068036 () Bool)

(assert (=> b!5033184 m!6068036))

(declare-fun m!6068038 () Bool)

(assert (=> d!1619536 m!6068038))

(declare-fun m!6068040 () Bool)

(assert (=> b!5033185 m!6068040))

(assert (=> b!5033186 m!6067964))

(declare-fun m!6068042 () Bool)

(assert (=> b!5033186 m!6068042))

(assert (=> b!5033094 d!1619536))

(declare-fun d!1619540 () Bool)

(assert (=> d!1619540 (= (list!18839 thiss!5840) (list!18841 (c!861894 thiss!5840)))))

(declare-fun bs!1188678 () Bool)

(assert (= bs!1188678 d!1619540))

(declare-fun m!6068044 () Bool)

(assert (=> bs!1188678 m!6068044))

(assert (=> b!5033094 d!1619540))

(declare-fun b!5033187 () Bool)

(declare-fun res!2144844 () Bool)

(declare-fun e!3144075 () Bool)

(assert (=> b!5033187 (=> (not res!2144844) (not e!3144075))))

(assert (=> b!5033187 (= res!2144844 (<= (- (height!2057 (left!42636 (_1!34881 lt!2082647))) (height!2057 (right!42966 (_1!34881 lt!2082647)))) 1))))

(declare-fun b!5033188 () Bool)

(declare-fun res!2144840 () Bool)

(assert (=> b!5033188 (=> (not res!2144840) (not e!3144075))))

(assert (=> b!5033188 (= res!2144840 (isBalanced!4333 (right!42966 (_1!34881 lt!2082647))))))

(declare-fun b!5033189 () Bool)

(declare-fun res!2144845 () Bool)

(assert (=> b!5033189 (=> (not res!2144845) (not e!3144075))))

(assert (=> b!5033189 (= res!2144845 (isBalanced!4333 (left!42636 (_1!34881 lt!2082647))))))

(declare-fun b!5033190 () Bool)

(assert (=> b!5033190 (= e!3144075 (not (isEmpty!31493 (right!42966 (_1!34881 lt!2082647)))))))

(declare-fun b!5033191 () Bool)

(declare-fun res!2144842 () Bool)

(assert (=> b!5033191 (=> (not res!2144842) (not e!3144075))))

(assert (=> b!5033191 (= res!2144842 (not (isEmpty!31493 (left!42636 (_1!34881 lt!2082647)))))))

(declare-fun b!5033192 () Bool)

(declare-fun e!3144074 () Bool)

(assert (=> b!5033192 (= e!3144074 e!3144075)))

(declare-fun res!2144841 () Bool)

(assert (=> b!5033192 (=> (not res!2144841) (not e!3144075))))

(assert (=> b!5033192 (= res!2144841 (<= (- 1) (- (height!2057 (left!42636 (_1!34881 lt!2082647))) (height!2057 (right!42966 (_1!34881 lt!2082647))))))))

(declare-fun d!1619542 () Bool)

(declare-fun res!2144843 () Bool)

(assert (=> d!1619542 (=> res!2144843 e!3144074)))

(assert (=> d!1619542 (= res!2144843 (not (is-Node!15471 (_1!34881 lt!2082647))))))

(assert (=> d!1619542 (= (isBalanced!4333 (_1!34881 lt!2082647)) e!3144074)))

(assert (= (and d!1619542 (not res!2144843)) b!5033192))

(assert (= (and b!5033192 res!2144841) b!5033187))

(assert (= (and b!5033187 res!2144844) b!5033189))

(assert (= (and b!5033189 res!2144845) b!5033188))

(assert (= (and b!5033188 res!2144840) b!5033191))

(assert (= (and b!5033191 res!2144842) b!5033190))

(declare-fun m!6068046 () Bool)

(assert (=> b!5033192 m!6068046))

(declare-fun m!6068048 () Bool)

(assert (=> b!5033192 m!6068048))

(assert (=> b!5033187 m!6068046))

(assert (=> b!5033187 m!6068048))

(declare-fun m!6068050 () Bool)

(assert (=> b!5033191 m!6068050))

(declare-fun m!6068052 () Bool)

(assert (=> b!5033190 m!6068052))

(declare-fun m!6068054 () Bool)

(assert (=> b!5033189 m!6068054))

(declare-fun m!6068056 () Bool)

(assert (=> b!5033188 m!6068056))

(assert (=> b!5033091 d!1619542))

(declare-fun b!5033241 () Bool)

(declare-fun e!3144106 () List!58383)

(declare-fun c!861933 () Bool)

(declare-fun lt!2082693 () List!58383)

(declare-fun lt!2082687 () List!58383)

(assert (=> b!5033241 (= e!3144106 (ite c!861933 lt!2082693 lt!2082687))))

(declare-fun call!351120 () Conc!15471)

(declare-fun lt!2082697 () tuple2!63156)

(declare-fun c!861931 () Bool)

(declare-fun bm!351114 () Bool)

(declare-fun lt!2082695 () tuple2!63156)

(declare-fun ++!12690 (Conc!15471 Conc!15471) Conc!15471)

(assert (=> bm!351114 (= call!351120 (++!12690 (ite c!861931 (_2!34881 lt!2082695) (left!42636 (c!861894 thiss!5840))) (ite c!861931 (right!42966 (c!861894 thiss!5840)) (_1!34881 lt!2082697))))))

(declare-fun b!5033242 () Bool)

(declare-fun e!3144109 () Int)

(assert (=> b!5033242 (= e!3144109 i!595)))

(declare-fun b!5033243 () Bool)

(declare-fun e!3144110 () tuple2!63156)

(assert (=> b!5033243 (= e!3144110 (tuple2!63157 Empty!15471 (c!861894 thiss!5840)))))

(declare-fun bm!351115 () Bool)

(declare-fun c!861940 () Bool)

(assert (=> bm!351115 (= c!861940 c!861933)))

(declare-fun call!351119 () tuple2!63158)

(declare-fun call!351122 () tuple2!63158)

(assert (=> bm!351115 (= call!351119 call!351122)))

(declare-fun b!5033244 () Bool)

(declare-fun e!3144101 () tuple2!63156)

(assert (=> b!5033244 (= e!3144110 e!3144101)))

(declare-fun c!861932 () Bool)

(assert (=> b!5033244 (= c!861932 (= i!595 (csize!31173 (c!861894 thiss!5840))))))

(declare-fun d!1619544 () Bool)

(declare-fun e!3144102 () Bool)

(assert (=> d!1619544 e!3144102))

(declare-fun res!2144850 () Bool)

(assert (=> d!1619544 (=> (not res!2144850) (not e!3144102))))

(declare-fun lt!2082686 () tuple2!63156)

(assert (=> d!1619544 (= res!2144850 (isBalanced!4333 (_1!34881 lt!2082686)))))

(declare-fun e!3144105 () tuple2!63156)

(assert (=> d!1619544 (= lt!2082686 e!3144105)))

(declare-fun c!861935 () Bool)

(assert (=> d!1619544 (= c!861935 (is-Empty!15471 (c!861894 thiss!5840)))))

(assert (=> d!1619544 (isBalanced!4333 (c!861894 thiss!5840))))

(assert (=> d!1619544 (= (splitAt!474 (c!861894 thiss!5840) i!595) lt!2082686)))

(declare-fun b!5033245 () Bool)

(declare-datatypes ((Unit!149445 0))(
  ( (Unit!149446) )
))
(declare-fun lt!2082690 () Unit!149445)

(declare-fun lt!2082691 () Unit!149445)

(assert (=> b!5033245 (= lt!2082690 lt!2082691)))

(declare-fun lt!2082696 () List!58383)

(declare-fun call!351123 () Int)

(declare-fun slice!830 (List!58383 Int Int) List!58383)

(assert (=> b!5033245 (= (drop!2599 lt!2082696 i!595) (slice!830 lt!2082696 i!595 call!351123))))

(declare-fun dropLemma!57 (List!58383 Int) Unit!149445)

(assert (=> b!5033245 (= lt!2082691 (dropLemma!57 lt!2082696 i!595))))

(declare-fun list!18842 (IArray!31003) List!58383)

(assert (=> b!5033245 (= lt!2082696 (list!18842 (xs!18797 (c!861894 thiss!5840))))))

(declare-fun lt!2082694 () tuple2!63158)

(assert (=> b!5033245 (= lt!2082694 call!351122)))

(declare-fun slice!831 (IArray!31003 Int Int) IArray!31003)

(assert (=> b!5033245 (= e!3144101 (tuple2!63157 (Leaf!25671 (slice!831 (xs!18797 (c!861894 thiss!5840)) 0 i!595) i!595) (Leaf!25671 (slice!831 (xs!18797 (c!861894 thiss!5840)) i!595 (csize!31173 (c!861894 thiss!5840))) (- (csize!31173 (c!861894 thiss!5840)) i!595))))))

(declare-fun b!5033246 () Bool)

(declare-fun e!3144107 () tuple2!63158)

(assert (=> b!5033246 (= e!3144107 (tuple2!63159 lt!2082693 lt!2082687))))

(declare-fun bm!351116 () Bool)

(declare-fun c!861930 () Bool)

(assert (=> bm!351116 (= c!861930 c!861931)))

(declare-fun call!351121 () tuple2!63156)

(declare-fun e!3144111 () Int)

(assert (=> bm!351116 (= call!351121 (splitAt!474 (ite c!861931 (left!42636 (c!861894 thiss!5840)) (right!42966 (c!861894 thiss!5840))) e!3144111))))

(declare-fun b!5033247 () Bool)

(assert (=> b!5033247 (= e!3144105 (tuple2!63157 (c!861894 thiss!5840) (c!861894 thiss!5840)))))

(declare-fun b!5033248 () Bool)

(declare-fun c!861934 () Bool)

(assert (=> b!5033248 (= c!861934 (<= i!595 0))))

(declare-fun e!3144103 () tuple2!63156)

(assert (=> b!5033248 (= e!3144103 e!3144110)))

(declare-fun b!5033249 () Bool)

(declare-fun lt!2082688 () tuple2!63158)

(assert (=> b!5033249 (= lt!2082688 call!351119)))

(declare-fun e!3144100 () tuple2!63158)

(declare-fun call!351124 () List!58383)

(assert (=> b!5033249 (= e!3144100 (tuple2!63159 (_1!34882 lt!2082688) call!351124))))

(declare-fun b!5033250 () Bool)

(declare-fun e!3144104 () tuple2!63156)

(assert (=> b!5033250 (= e!3144104 (tuple2!63157 (left!42636 (c!861894 thiss!5840)) (right!42966 (c!861894 thiss!5840))))))

(declare-fun b!5033251 () Bool)

(assert (=> b!5033251 (= e!3144106 (list!18842 (xs!18797 (c!861894 thiss!5840))))))

(declare-fun b!5033252 () Bool)

(assert (=> b!5033252 (= e!3144107 e!3144100)))

(assert (=> b!5033252 (= c!861933 (< i!595 call!351123))))

(declare-fun b!5033253 () Bool)

(assert (=> b!5033253 (= e!3144105 e!3144103)))

(declare-fun c!861937 () Bool)

(assert (=> b!5033253 (= c!861937 (is-Leaf!25671 (c!861894 thiss!5840)))))

(declare-fun b!5033254 () Bool)

(assert (=> b!5033254 (= e!3144111 (- i!595 (size!38813 (left!42636 (c!861894 thiss!5840)))))))

(declare-fun b!5033255 () Bool)

(assert (=> b!5033255 (= e!3144109 (- i!595 call!351123))))

(declare-fun b!5033256 () Bool)

(declare-fun res!2144851 () Bool)

(assert (=> b!5033256 (=> (not res!2144851) (not e!3144102))))

(assert (=> b!5033256 (= res!2144851 (isBalanced!4333 (_2!34881 lt!2082686)))))

(declare-fun b!5033257 () Bool)

(declare-fun c!861939 () Bool)

(assert (=> b!5033257 (= c!861939 (= (size!38813 (left!42636 (c!861894 thiss!5840))) i!595))))

(declare-fun lt!2082689 () Unit!149445)

(declare-fun lt!2082698 () Unit!149445)

(assert (=> b!5033257 (= lt!2082689 lt!2082698)))

(assert (=> b!5033257 (= (splitAtIndex!174 (++!12689 lt!2082693 lt!2082687) i!595) e!3144107)))

(declare-fun c!861936 () Bool)

(assert (=> b!5033257 (= c!861936 (= call!351123 i!595))))

(declare-fun splitAtLemma!57 (List!58383 List!58383 Int) Unit!149445)

(assert (=> b!5033257 (= lt!2082698 (splitAtLemma!57 lt!2082693 lt!2082687 i!595))))

(assert (=> b!5033257 (= lt!2082687 (list!18841 (right!42966 (c!861894 thiss!5840))))))

(assert (=> b!5033257 (= lt!2082693 (list!18841 (left!42636 (c!861894 thiss!5840))))))

(assert (=> b!5033257 (= e!3144103 e!3144104)))

(declare-fun b!5033258 () Bool)

(assert (=> b!5033258 (= lt!2082695 call!351121)))

(declare-fun e!3144108 () tuple2!63156)

(assert (=> b!5033258 (= e!3144108 (tuple2!63157 (_1!34881 lt!2082695) call!351120))))

(declare-fun b!5033259 () Bool)

(assert (=> b!5033259 (= lt!2082697 call!351121)))

(assert (=> b!5033259 (= e!3144108 (tuple2!63157 call!351120 (_2!34881 lt!2082697)))))

(declare-fun lt!2082692 () tuple2!63158)

(declare-fun bm!351117 () Bool)

(assert (=> bm!351117 (= call!351124 (++!12689 (ite c!861933 (_2!34882 lt!2082688) lt!2082693) (ite c!861933 lt!2082687 (_1!34882 lt!2082692))))))

(declare-fun b!5033260 () Bool)

(assert (=> b!5033260 (= e!3144104 e!3144108)))

(assert (=> b!5033260 (= c!861931 (< i!595 (size!38813 (left!42636 (c!861894 thiss!5840)))))))

(declare-fun b!5033261 () Bool)

(assert (=> b!5033261 (= e!3144101 (tuple2!63157 (c!861894 thiss!5840) Empty!15471))))

(declare-fun b!5033262 () Bool)

(assert (=> b!5033262 (= lt!2082692 call!351119)))

(assert (=> b!5033262 (= e!3144100 (tuple2!63159 call!351124 (_2!34882 lt!2082692)))))

(declare-fun b!5033263 () Bool)

(assert (=> b!5033263 (= e!3144102 (= (tuple2!63159 (list!18841 (_1!34881 lt!2082686)) (list!18841 (_2!34881 lt!2082686))) (splitAtIndex!174 (list!18841 (c!861894 thiss!5840)) i!595)))))

(declare-fun bm!351118 () Bool)

(declare-fun c!861938 () Bool)

(assert (=> bm!351118 (= c!861938 c!861937)))

(assert (=> bm!351118 (= call!351122 (splitAtIndex!174 e!3144106 (ite c!861937 i!595 e!3144109)))))

(declare-fun bm!351119 () Bool)

(assert (=> bm!351119 (= call!351123 (size!38812 (ite c!861937 lt!2082696 lt!2082693)))))

(declare-fun b!5033264 () Bool)

(assert (=> b!5033264 (= e!3144111 i!595)))

(assert (= (and d!1619544 c!861935) b!5033247))

(assert (= (and d!1619544 (not c!861935)) b!5033253))

(assert (= (and b!5033253 c!861937) b!5033248))

(assert (= (and b!5033253 (not c!861937)) b!5033257))

(assert (= (and b!5033248 c!861934) b!5033243))

(assert (= (and b!5033248 (not c!861934)) b!5033244))

(assert (= (and b!5033244 c!861932) b!5033261))

(assert (= (and b!5033244 (not c!861932)) b!5033245))

(assert (= (and b!5033257 c!861936) b!5033246))

(assert (= (and b!5033257 (not c!861936)) b!5033252))

(assert (= (and b!5033252 c!861933) b!5033249))

(assert (= (and b!5033252 (not c!861933)) b!5033262))

(assert (= (or b!5033249 b!5033262) bm!351117))

(assert (= (or b!5033249 b!5033262) bm!351115))

(assert (= (and bm!351115 c!861940) b!5033242))

(assert (= (and bm!351115 (not c!861940)) b!5033255))

(assert (= (and b!5033257 c!861939) b!5033250))

(assert (= (and b!5033257 (not c!861939)) b!5033260))

(assert (= (and b!5033260 c!861931) b!5033258))

(assert (= (and b!5033260 (not c!861931)) b!5033259))

(assert (= (or b!5033258 b!5033259) bm!351114))

(assert (= (or b!5033258 b!5033259) bm!351116))

(assert (= (and bm!351116 c!861930) b!5033264))

(assert (= (and bm!351116 (not c!861930)) b!5033254))

(assert (= (or b!5033245 b!5033252 b!5033255 b!5033257) bm!351119))

(assert (= (or b!5033245 bm!351115) bm!351118))

(assert (= (and bm!351118 c!861938) b!5033251))

(assert (= (and bm!351118 (not c!861938)) b!5033241))

(assert (= (and d!1619544 res!2144850) b!5033256))

(assert (= (and b!5033256 res!2144851) b!5033263))

(declare-fun m!6068058 () Bool)

(assert (=> d!1619544 m!6068058))

(assert (=> d!1619544 m!6067956))

(declare-fun m!6068060 () Bool)

(assert (=> b!5033245 m!6068060))

(declare-fun m!6068062 () Bool)

(assert (=> b!5033245 m!6068062))

(declare-fun m!6068064 () Bool)

(assert (=> b!5033245 m!6068064))

(declare-fun m!6068066 () Bool)

(assert (=> b!5033245 m!6068066))

(declare-fun m!6068068 () Bool)

(assert (=> b!5033245 m!6068068))

(declare-fun m!6068070 () Bool)

(assert (=> b!5033245 m!6068070))

(assert (=> b!5033251 m!6068062))

(declare-fun m!6068072 () Bool)

(assert (=> bm!351118 m!6068072))

(declare-fun m!6068074 () Bool)

(assert (=> b!5033257 m!6068074))

(declare-fun m!6068076 () Bool)

(assert (=> b!5033257 m!6068076))

(declare-fun m!6068078 () Bool)

(assert (=> b!5033257 m!6068078))

(assert (=> b!5033257 m!6068074))

(declare-fun m!6068080 () Bool)

(assert (=> b!5033257 m!6068080))

(declare-fun m!6068082 () Bool)

(assert (=> b!5033257 m!6068082))

(declare-fun m!6068084 () Bool)

(assert (=> b!5033257 m!6068084))

(declare-fun m!6068086 () Bool)

(assert (=> b!5033256 m!6068086))

(declare-fun m!6068088 () Bool)

(assert (=> b!5033263 m!6068088))

(declare-fun m!6068090 () Bool)

(assert (=> b!5033263 m!6068090))

(assert (=> b!5033263 m!6068044))

(assert (=> b!5033263 m!6068044))

(declare-fun m!6068092 () Bool)

(assert (=> b!5033263 m!6068092))

(assert (=> b!5033254 m!6068080))

(declare-fun m!6068094 () Bool)

(assert (=> bm!351114 m!6068094))

(declare-fun m!6068096 () Bool)

(assert (=> bm!351119 m!6068096))

(declare-fun m!6068098 () Bool)

(assert (=> bm!351117 m!6068098))

(declare-fun m!6068100 () Bool)

(assert (=> bm!351116 m!6068100))

(assert (=> b!5033260 m!6068080))

(assert (=> b!5033091 d!1619544))

(declare-fun b!5033265 () Bool)

(declare-fun res!2144856 () Bool)

(declare-fun e!3144113 () Bool)

(assert (=> b!5033265 (=> (not res!2144856) (not e!3144113))))

(assert (=> b!5033265 (= res!2144856 (<= (- (height!2057 (left!42636 (c!861894 thiss!5840))) (height!2057 (right!42966 (c!861894 thiss!5840)))) 1))))

(declare-fun b!5033266 () Bool)

(declare-fun res!2144852 () Bool)

(assert (=> b!5033266 (=> (not res!2144852) (not e!3144113))))

(assert (=> b!5033266 (= res!2144852 (isBalanced!4333 (right!42966 (c!861894 thiss!5840))))))

(declare-fun b!5033267 () Bool)

(declare-fun res!2144857 () Bool)

(assert (=> b!5033267 (=> (not res!2144857) (not e!3144113))))

(assert (=> b!5033267 (= res!2144857 (isBalanced!4333 (left!42636 (c!861894 thiss!5840))))))

(declare-fun b!5033268 () Bool)

(assert (=> b!5033268 (= e!3144113 (not (isEmpty!31493 (right!42966 (c!861894 thiss!5840)))))))

(declare-fun b!5033269 () Bool)

(declare-fun res!2144854 () Bool)

(assert (=> b!5033269 (=> (not res!2144854) (not e!3144113))))

(assert (=> b!5033269 (= res!2144854 (not (isEmpty!31493 (left!42636 (c!861894 thiss!5840)))))))

(declare-fun b!5033270 () Bool)

(declare-fun e!3144112 () Bool)

(assert (=> b!5033270 (= e!3144112 e!3144113)))

(declare-fun res!2144853 () Bool)

(assert (=> b!5033270 (=> (not res!2144853) (not e!3144113))))

(assert (=> b!5033270 (= res!2144853 (<= (- 1) (- (height!2057 (left!42636 (c!861894 thiss!5840))) (height!2057 (right!42966 (c!861894 thiss!5840))))))))

(declare-fun d!1619546 () Bool)

(declare-fun res!2144855 () Bool)

(assert (=> d!1619546 (=> res!2144855 e!3144112)))

(assert (=> d!1619546 (= res!2144855 (not (is-Node!15471 (c!861894 thiss!5840))))))

(assert (=> d!1619546 (= (isBalanced!4333 (c!861894 thiss!5840)) e!3144112)))

(assert (= (and d!1619546 (not res!2144855)) b!5033270))

(assert (= (and b!5033270 res!2144853) b!5033265))

(assert (= (and b!5033265 res!2144856) b!5033267))

(assert (= (and b!5033267 res!2144857) b!5033266))

(assert (= (and b!5033266 res!2144852) b!5033269))

(assert (= (and b!5033269 res!2144854) b!5033268))

(declare-fun m!6068102 () Bool)

(assert (=> b!5033270 m!6068102))

(declare-fun m!6068104 () Bool)

(assert (=> b!5033270 m!6068104))

(assert (=> b!5033265 m!6068102))

(assert (=> b!5033265 m!6068104))

(declare-fun m!6068106 () Bool)

(assert (=> b!5033269 m!6068106))

(declare-fun m!6068108 () Bool)

(assert (=> b!5033268 m!6068108))

(declare-fun m!6068110 () Bool)

(assert (=> b!5033267 m!6068110))

(declare-fun m!6068112 () Bool)

(assert (=> b!5033266 m!6068112))

(assert (=> start!532412 d!1619546))

(declare-fun d!1619548 () Bool)

(assert (=> d!1619548 (= (inv!76942 thiss!5840) (isBalanced!4333 (c!861894 thiss!5840)))))

(declare-fun bs!1188679 () Bool)

(assert (= bs!1188679 d!1619548))

(assert (=> bs!1188679 m!6067956))

(assert (=> start!532412 d!1619548))

(declare-fun tp!1409909 () Bool)

(declare-fun b!5033279 () Bool)

(declare-fun e!3144119 () Bool)

(declare-fun tp!1409908 () Bool)

(assert (=> b!5033279 (= e!3144119 (and (inv!76941 (left!42636 (c!861894 thiss!5840))) tp!1409909 (inv!76941 (right!42966 (c!861894 thiss!5840))) tp!1409908))))

(declare-fun b!5033281 () Bool)

(declare-fun e!3144118 () Bool)

(declare-fun tp!1409907 () Bool)

(assert (=> b!5033281 (= e!3144118 tp!1409907)))

(declare-fun b!5033280 () Bool)

(declare-fun inv!76947 (IArray!31003) Bool)

(assert (=> b!5033280 (= e!3144119 (and (inv!76947 (xs!18797 (c!861894 thiss!5840))) e!3144118))))

(assert (=> b!5033092 (= tp!1409897 (and (inv!76941 (c!861894 thiss!5840)) e!3144119))))

(assert (= (and b!5033092 (is-Node!15471 (c!861894 thiss!5840))) b!5033279))

(assert (= b!5033280 b!5033281))

(assert (= (and b!5033092 (is-Leaf!25671 (c!861894 thiss!5840))) b!5033280))

(declare-fun m!6068114 () Bool)

(assert (=> b!5033279 m!6068114))

(declare-fun m!6068116 () Bool)

(assert (=> b!5033279 m!6068116))

(declare-fun m!6068118 () Bool)

(assert (=> b!5033280 m!6068118))

(assert (=> b!5033092 m!6067970))

(push 1)

(assert (not b!5033281))

(assert (not d!1619548))

(assert (not b!5033260))

(assert (not b!5033279))

(assert (not d!1619540))

(assert (not b!5033191))

(assert (not d!1619536))

(assert (not b!5033263))

(assert (not b!5033149))

(assert (not b!5033092))

(assert (not b!5033188))

(assert (not b!5033257))

(assert (not b!5033129))

(assert (not b!5033251))

(assert (not bm!351117))

(assert (not b!5033256))

(assert (not d!1619534))

(assert (not b!5033269))

(assert (not d!1619532))

(assert (not b!5033265))

(assert (not b!5033148))

(assert (not b!5033147))

(assert (not bm!351118))

(assert (not b!5033270))

(assert (not d!1619530))

(assert (not b!5033127))

(assert (not b!5033185))

(assert (not b!5033186))

(assert (not b!5033190))

(assert (not bm!351119))

(assert (not b!5033268))

(assert (not b!5033146))

(assert (not b!5033192))

(assert (not d!1619544))

(assert (not b!5033280))

(assert (not b!5033266))

(assert (not b!5033245))

(assert (not b!5033150))

(assert (not b!5033184))

(assert (not b!5033145))

(assert (not b!5033187))

(assert (not bm!351114))

(assert (not b!5033267))

(assert (not b!5033189))

(assert (not bm!351116))

(assert (not b!5033254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

