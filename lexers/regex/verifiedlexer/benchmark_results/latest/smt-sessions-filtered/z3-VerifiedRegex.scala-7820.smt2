; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410788 () Bool)

(assert start!410788)

(declare-datatypes ((T!79934 0))(
  ( (T!79935 (val!15264 Int)) )
))
(declare-datatypes ((List!47473 0))(
  ( (Nil!47349) (Cons!47349 (h!52769 T!79934) (t!354028 List!47473)) )
))
(declare-datatypes ((IArray!28667 0))(
  ( (IArray!28668 (innerList!14391 List!47473)) )
))
(declare-datatypes ((Conc!14331 0))(
  ( (Node!14331 (left!35279 Conc!14331) (right!35609 Conc!14331) (csize!28892 Int) (cheight!14542 Int)) (Leaf!22152 (xs!17637 IArray!28667) (csize!28893 Int)) (Empty!14331) )
))
(declare-datatypes ((BalanceConc!28172 0))(
  ( (BalanceConc!28173 (c!728376 Conc!14331)) )
))
(declare-fun thiss!5761 () BalanceConc!28172)

(declare-fun efficientList!596 (Conc!14331 List!47473) List!47473)

(declare-fun efficientList$default$2!208 (Conc!14331) List!47473)

(declare-fun list!17258 (BalanceConc!28172) List!47473)

(assert (=> start!410788 (not (= (efficientList!596 (c!728376 thiss!5761) (efficientList$default$2!208 (c!728376 thiss!5761))) (list!17258 thiss!5761)))))

(declare-fun e!2655301 () Bool)

(declare-fun inv!62675 (BalanceConc!28172) Bool)

(assert (=> start!410788 (and (inv!62675 thiss!5761) e!2655301)))

(declare-fun b!4276835 () Bool)

(declare-fun tp!1308702 () Bool)

(declare-fun inv!62676 (Conc!14331) Bool)

(assert (=> b!4276835 (= e!2655301 (and (inv!62676 (c!728376 thiss!5761)) tp!1308702))))

(assert (= start!410788 b!4276835))

(declare-fun m!4872779 () Bool)

(assert (=> start!410788 m!4872779))

(assert (=> start!410788 m!4872779))

(declare-fun m!4872781 () Bool)

(assert (=> start!410788 m!4872781))

(declare-fun m!4872783 () Bool)

(assert (=> start!410788 m!4872783))

(declare-fun m!4872785 () Bool)

(assert (=> start!410788 m!4872785))

(declare-fun m!4872787 () Bool)

(assert (=> b!4276835 m!4872787))

(check-sat (not b!4276835) (not start!410788))
(check-sat)
(get-model)

(declare-fun d!1262573 () Bool)

(declare-fun c!728379 () Bool)

(get-info :version)

(assert (=> d!1262573 (= c!728379 ((_ is Node!14331) (c!728376 thiss!5761)))))

(declare-fun e!2655306 () Bool)

(assert (=> d!1262573 (= (inv!62676 (c!728376 thiss!5761)) e!2655306)))

(declare-fun b!4276842 () Bool)

(declare-fun inv!62677 (Conc!14331) Bool)

(assert (=> b!4276842 (= e!2655306 (inv!62677 (c!728376 thiss!5761)))))

(declare-fun b!4276843 () Bool)

(declare-fun e!2655307 () Bool)

(assert (=> b!4276843 (= e!2655306 e!2655307)))

(declare-fun res!1756132 () Bool)

(assert (=> b!4276843 (= res!1756132 (not ((_ is Leaf!22152) (c!728376 thiss!5761))))))

(assert (=> b!4276843 (=> res!1756132 e!2655307)))

(declare-fun b!4276844 () Bool)

(declare-fun inv!62678 (Conc!14331) Bool)

(assert (=> b!4276844 (= e!2655307 (inv!62678 (c!728376 thiss!5761)))))

(assert (= (and d!1262573 c!728379) b!4276842))

(assert (= (and d!1262573 (not c!728379)) b!4276843))

(assert (= (and b!4276843 (not res!1756132)) b!4276844))

(declare-fun m!4872789 () Bool)

(assert (=> b!4276842 m!4872789))

(declare-fun m!4872791 () Bool)

(assert (=> b!4276844 m!4872791))

(assert (=> b!4276835 d!1262573))

(declare-fun bm!294257 () Bool)

(declare-fun c!728391 () Bool)

(declare-fun c!728390 () Bool)

(assert (=> bm!294257 (= c!728391 c!728390)))

(declare-fun call!294262 () List!47473)

(declare-fun lt!1513929 () List!47473)

(declare-fun e!2655320 () List!47473)

(declare-fun ++!12094 (List!47473 List!47473) List!47473)

(assert (=> bm!294257 (= call!294262 (++!12094 e!2655320 (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929)))))

(declare-fun b!4276866 () Bool)

(declare-fun efficientList!597 (IArray!28667) List!47473)

(assert (=> b!4276866 (= e!2655320 (efficientList!597 (xs!17637 (c!728376 thiss!5761))))))

(declare-fun b!4276868 () Bool)

(declare-fun e!2655322 () List!47473)

(assert (=> b!4276868 (= e!2655322 call!294262)))

(declare-fun b!4276869 () Bool)

(declare-fun e!2655321 () List!47473)

(assert (=> b!4276869 (= e!2655321 e!2655322)))

(assert (=> b!4276869 (= c!728390 ((_ is Leaf!22152) (c!728376 thiss!5761)))))

(declare-fun b!4276870 () Bool)

(assert (=> b!4276870 (= e!2655321 (efficientList$default$2!208 (c!728376 thiss!5761)))))

(declare-fun b!4276871 () Bool)

(declare-datatypes ((Unit!66303 0))(
  ( (Unit!66304) )
))
(declare-fun lt!1513930 () Unit!66303)

(declare-fun lt!1513931 () Unit!66303)

(assert (=> b!4276871 (= lt!1513930 lt!1513931)))

(declare-fun lt!1513932 () List!47473)

(assert (=> b!4276871 (= (++!12094 call!294262 (efficientList$default$2!208 (c!728376 thiss!5761))) (++!12094 lt!1513932 (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun lemmaConcatAssociativity!2729 (List!47473 List!47473 List!47473) Unit!66303)

(assert (=> b!4276871 (= lt!1513931 (lemmaConcatAssociativity!2729 lt!1513932 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))))))

(declare-fun list!17259 (Conc!14331) List!47473)

(assert (=> b!4276871 (= lt!1513929 (list!17259 (right!35609 (c!728376 thiss!5761))))))

(assert (=> b!4276871 (= lt!1513932 (list!17259 (left!35279 (c!728376 thiss!5761))))))

(assert (=> b!4276871 (= e!2655322 (efficientList!596 (left!35279 (c!728376 thiss!5761)) (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun d!1262577 () Bool)

(declare-fun lt!1513933 () List!47473)

(assert (=> d!1262577 (= lt!1513933 (++!12094 (list!17259 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))))))

(assert (=> d!1262577 (= lt!1513933 e!2655321)))

(declare-fun c!728389 () Bool)

(assert (=> d!1262577 (= c!728389 ((_ is Empty!14331) (c!728376 thiss!5761)))))

(assert (=> d!1262577 (= (efficientList!596 (c!728376 thiss!5761) (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513933)))

(declare-fun b!4276867 () Bool)

(assert (=> b!4276867 (= e!2655320 lt!1513932)))

(assert (= (and d!1262577 c!728389) b!4276870))

(assert (= (and d!1262577 (not c!728389)) b!4276869))

(assert (= (and b!4276869 c!728390) b!4276868))

(assert (= (and b!4276869 (not c!728390)) b!4276871))

(assert (= (or b!4276868 b!4276871) bm!294257))

(assert (= (and bm!294257 c!728391) b!4276866))

(assert (= (and bm!294257 (not c!728391)) b!4276867))

(declare-fun m!4872797 () Bool)

(assert (=> bm!294257 m!4872797))

(declare-fun m!4872799 () Bool)

(assert (=> b!4276866 m!4872799))

(assert (=> b!4276871 m!4872779))

(declare-fun m!4872801 () Bool)

(assert (=> b!4276871 m!4872801))

(assert (=> b!4276871 m!4872801))

(declare-fun m!4872803 () Bool)

(assert (=> b!4276871 m!4872803))

(assert (=> b!4276871 m!4872779))

(declare-fun m!4872805 () Bool)

(assert (=> b!4276871 m!4872805))

(declare-fun m!4872807 () Bool)

(assert (=> b!4276871 m!4872807))

(assert (=> b!4276871 m!4872805))

(declare-fun m!4872809 () Bool)

(assert (=> b!4276871 m!4872809))

(declare-fun m!4872811 () Bool)

(assert (=> b!4276871 m!4872811))

(assert (=> b!4276871 m!4872779))

(declare-fun m!4872813 () Bool)

(assert (=> b!4276871 m!4872813))

(assert (=> b!4276871 m!4872779))

(declare-fun m!4872815 () Bool)

(assert (=> b!4276871 m!4872815))

(declare-fun m!4872817 () Bool)

(assert (=> d!1262577 m!4872817))

(assert (=> d!1262577 m!4872817))

(assert (=> d!1262577 m!4872779))

(declare-fun m!4872819 () Bool)

(assert (=> d!1262577 m!4872819))

(assert (=> start!410788 d!1262577))

(declare-fun d!1262581 () Bool)

(assert (=> d!1262581 (= (efficientList$default$2!208 (c!728376 thiss!5761)) Nil!47349)))

(assert (=> start!410788 d!1262581))

(declare-fun d!1262583 () Bool)

(assert (=> d!1262583 (= (list!17258 thiss!5761) (list!17259 (c!728376 thiss!5761)))))

(declare-fun bs!602565 () Bool)

(assert (= bs!602565 d!1262583))

(assert (=> bs!602565 m!4872817))

(assert (=> start!410788 d!1262583))

(declare-fun d!1262585 () Bool)

(declare-fun isBalanced!3871 (Conc!14331) Bool)

(assert (=> d!1262585 (= (inv!62675 thiss!5761) (isBalanced!3871 (c!728376 thiss!5761)))))

(declare-fun bs!602566 () Bool)

(assert (= bs!602566 d!1262585))

(declare-fun m!4872821 () Bool)

(assert (=> bs!602566 m!4872821))

(assert (=> start!410788 d!1262585))

(declare-fun tp!1308711 () Bool)

(declare-fun e!2655328 () Bool)

(declare-fun b!4276880 () Bool)

(declare-fun tp!1308710 () Bool)

(assert (=> b!4276880 (= e!2655328 (and (inv!62676 (left!35279 (c!728376 thiss!5761))) tp!1308711 (inv!62676 (right!35609 (c!728376 thiss!5761))) tp!1308710))))

(declare-fun b!4276882 () Bool)

(declare-fun e!2655327 () Bool)

(declare-fun tp!1308709 () Bool)

(assert (=> b!4276882 (= e!2655327 tp!1308709)))

(declare-fun b!4276881 () Bool)

(declare-fun inv!62679 (IArray!28667) Bool)

(assert (=> b!4276881 (= e!2655328 (and (inv!62679 (xs!17637 (c!728376 thiss!5761))) e!2655327))))

(assert (=> b!4276835 (= tp!1308702 (and (inv!62676 (c!728376 thiss!5761)) e!2655328))))

(assert (= (and b!4276835 ((_ is Node!14331) (c!728376 thiss!5761))) b!4276880))

(assert (= b!4276881 b!4276882))

(assert (= (and b!4276835 ((_ is Leaf!22152) (c!728376 thiss!5761))) b!4276881))

(declare-fun m!4872823 () Bool)

(assert (=> b!4276880 m!4872823))

(declare-fun m!4872825 () Bool)

(assert (=> b!4276880 m!4872825))

(declare-fun m!4872827 () Bool)

(assert (=> b!4276881 m!4872827))

(assert (=> b!4276835 m!4872787))

(check-sat (not d!1262585) (not b!4276866) (not b!4276842) (not bm!294257) (not b!4276881) (not b!4276871) (not d!1262583) (not b!4276882) (not b!4276835) (not b!4276880) (not b!4276844) (not d!1262577))
(check-sat)
(get-model)

(declare-fun d!1262593 () Bool)

(declare-fun res!1756140 () Bool)

(declare-fun e!2655342 () Bool)

(assert (=> d!1262593 (=> (not res!1756140) (not e!2655342))))

(declare-fun size!34656 (List!47473) Int)

(declare-fun list!17261 (IArray!28667) List!47473)

(assert (=> d!1262593 (= res!1756140 (<= (size!34656 (list!17261 (xs!17637 (c!728376 thiss!5761)))) 512))))

(assert (=> d!1262593 (= (inv!62678 (c!728376 thiss!5761)) e!2655342)))

(declare-fun b!4276909 () Bool)

(declare-fun res!1756141 () Bool)

(assert (=> b!4276909 (=> (not res!1756141) (not e!2655342))))

(assert (=> b!4276909 (= res!1756141 (= (csize!28893 (c!728376 thiss!5761)) (size!34656 (list!17261 (xs!17637 (c!728376 thiss!5761))))))))

(declare-fun b!4276910 () Bool)

(assert (=> b!4276910 (= e!2655342 (and (> (csize!28893 (c!728376 thiss!5761)) 0) (<= (csize!28893 (c!728376 thiss!5761)) 512)))))

(assert (= (and d!1262593 res!1756140) b!4276909))

(assert (= (and b!4276909 res!1756141) b!4276910))

(declare-fun m!4872855 () Bool)

(assert (=> d!1262593 m!4872855))

(assert (=> d!1262593 m!4872855))

(declare-fun m!4872857 () Bool)

(assert (=> d!1262593 m!4872857))

(assert (=> b!4276909 m!4872855))

(assert (=> b!4276909 m!4872855))

(assert (=> b!4276909 m!4872857))

(assert (=> b!4276844 d!1262593))

(declare-fun b!4276928 () Bool)

(declare-fun e!2655352 () List!47473)

(assert (=> b!4276928 (= e!2655352 (list!17261 (xs!17637 (c!728376 thiss!5761))))))

(declare-fun b!4276929 () Bool)

(assert (=> b!4276929 (= e!2655352 (++!12094 (list!17259 (left!35279 (c!728376 thiss!5761))) (list!17259 (right!35609 (c!728376 thiss!5761)))))))

(declare-fun b!4276927 () Bool)

(declare-fun e!2655351 () List!47473)

(assert (=> b!4276927 (= e!2655351 e!2655352)))

(declare-fun c!728406 () Bool)

(assert (=> b!4276927 (= c!728406 ((_ is Leaf!22152) (c!728376 thiss!5761)))))

(declare-fun d!1262595 () Bool)

(declare-fun c!728405 () Bool)

(assert (=> d!1262595 (= c!728405 ((_ is Empty!14331) (c!728376 thiss!5761)))))

(assert (=> d!1262595 (= (list!17259 (c!728376 thiss!5761)) e!2655351)))

(declare-fun b!4276926 () Bool)

(assert (=> b!4276926 (= e!2655351 Nil!47349)))

(assert (= (and d!1262595 c!728405) b!4276926))

(assert (= (and d!1262595 (not c!728405)) b!4276927))

(assert (= (and b!4276927 c!728406) b!4276928))

(assert (= (and b!4276927 (not c!728406)) b!4276929))

(assert (=> b!4276928 m!4872855))

(assert (=> b!4276929 m!4872811))

(assert (=> b!4276929 m!4872807))

(assert (=> b!4276929 m!4872811))

(assert (=> b!4276929 m!4872807))

(declare-fun m!4872859 () Bool)

(assert (=> b!4276929 m!4872859))

(assert (=> d!1262583 d!1262595))

(declare-fun b!4276938 () Bool)

(declare-fun e!2655358 () List!47473)

(assert (=> b!4276938 (= e!2655358 (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929))))

(declare-fun b!4276939 () Bool)

(assert (=> b!4276939 (= e!2655358 (Cons!47349 (h!52769 e!2655320) (++!12094 (t!354028 e!2655320) (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929))))))

(declare-fun b!4276941 () Bool)

(declare-fun e!2655357 () Bool)

(declare-fun lt!1513951 () List!47473)

(assert (=> b!4276941 (= e!2655357 (or (not (= (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929) Nil!47349)) (= lt!1513951 e!2655320)))))

(declare-fun d!1262597 () Bool)

(assert (=> d!1262597 e!2655357))

(declare-fun res!1756147 () Bool)

(assert (=> d!1262597 (=> (not res!1756147) (not e!2655357))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7483 (List!47473) (InoxSet T!79934))

(assert (=> d!1262597 (= res!1756147 (= (content!7483 lt!1513951) ((_ map or) (content!7483 e!2655320) (content!7483 (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929)))))))

(assert (=> d!1262597 (= lt!1513951 e!2655358)))

(declare-fun c!728409 () Bool)

(assert (=> d!1262597 (= c!728409 ((_ is Nil!47349) e!2655320))))

(assert (=> d!1262597 (= (++!12094 e!2655320 (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929)) lt!1513951)))

(declare-fun b!4276940 () Bool)

(declare-fun res!1756146 () Bool)

(assert (=> b!4276940 (=> (not res!1756146) (not e!2655357))))

(assert (=> b!4276940 (= res!1756146 (= (size!34656 lt!1513951) (+ (size!34656 e!2655320) (size!34656 (ite c!728390 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513929)))))))

(assert (= (and d!1262597 c!728409) b!4276938))

(assert (= (and d!1262597 (not c!728409)) b!4276939))

(assert (= (and d!1262597 res!1756147) b!4276940))

(assert (= (and b!4276940 res!1756146) b!4276941))

(declare-fun m!4872867 () Bool)

(assert (=> b!4276939 m!4872867))

(declare-fun m!4872869 () Bool)

(assert (=> d!1262597 m!4872869))

(declare-fun m!4872871 () Bool)

(assert (=> d!1262597 m!4872871))

(declare-fun m!4872873 () Bool)

(assert (=> d!1262597 m!4872873))

(declare-fun m!4872875 () Bool)

(assert (=> b!4276940 m!4872875))

(declare-fun m!4872877 () Bool)

(assert (=> b!4276940 m!4872877))

(declare-fun m!4872879 () Bool)

(assert (=> b!4276940 m!4872879))

(assert (=> bm!294257 d!1262597))

(declare-fun b!4276942 () Bool)

(declare-fun e!2655360 () List!47473)

(assert (=> b!4276942 (= e!2655360 (efficientList$default$2!208 (c!728376 thiss!5761)))))

(declare-fun b!4276943 () Bool)

(assert (=> b!4276943 (= e!2655360 (Cons!47349 (h!52769 (list!17259 (c!728376 thiss!5761))) (++!12094 (t!354028 (list!17259 (c!728376 thiss!5761))) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun b!4276945 () Bool)

(declare-fun e!2655359 () Bool)

(declare-fun lt!1513952 () List!47473)

(assert (=> b!4276945 (= e!2655359 (or (not (= (efficientList$default$2!208 (c!728376 thiss!5761)) Nil!47349)) (= lt!1513952 (list!17259 (c!728376 thiss!5761)))))))

(declare-fun d!1262599 () Bool)

(assert (=> d!1262599 e!2655359))

(declare-fun res!1756149 () Bool)

(assert (=> d!1262599 (=> (not res!1756149) (not e!2655359))))

(assert (=> d!1262599 (= res!1756149 (= (content!7483 lt!1513952) ((_ map or) (content!7483 (list!17259 (c!728376 thiss!5761))) (content!7483 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (=> d!1262599 (= lt!1513952 e!2655360)))

(declare-fun c!728410 () Bool)

(assert (=> d!1262599 (= c!728410 ((_ is Nil!47349) (list!17259 (c!728376 thiss!5761))))))

(assert (=> d!1262599 (= (++!12094 (list!17259 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513952)))

(declare-fun b!4276944 () Bool)

(declare-fun res!1756148 () Bool)

(assert (=> b!4276944 (=> (not res!1756148) (not e!2655359))))

(assert (=> b!4276944 (= res!1756148 (= (size!34656 lt!1513952) (+ (size!34656 (list!17259 (c!728376 thiss!5761))) (size!34656 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (= (and d!1262599 c!728410) b!4276942))

(assert (= (and d!1262599 (not c!728410)) b!4276943))

(assert (= (and d!1262599 res!1756149) b!4276944))

(assert (= (and b!4276944 res!1756148) b!4276945))

(assert (=> b!4276943 m!4872779))

(declare-fun m!4872881 () Bool)

(assert (=> b!4276943 m!4872881))

(declare-fun m!4872883 () Bool)

(assert (=> d!1262599 m!4872883))

(assert (=> d!1262599 m!4872817))

(declare-fun m!4872885 () Bool)

(assert (=> d!1262599 m!4872885))

(assert (=> d!1262599 m!4872779))

(declare-fun m!4872887 () Bool)

(assert (=> d!1262599 m!4872887))

(declare-fun m!4872889 () Bool)

(assert (=> b!4276944 m!4872889))

(assert (=> b!4276944 m!4872817))

(declare-fun m!4872891 () Bool)

(assert (=> b!4276944 m!4872891))

(assert (=> b!4276944 m!4872779))

(declare-fun m!4872893 () Bool)

(assert (=> b!4276944 m!4872893))

(assert (=> d!1262577 d!1262599))

(assert (=> d!1262577 d!1262595))

(declare-fun b!4276958 () Bool)

(declare-fun e!2655365 () Bool)

(declare-fun isEmpty!28008 (Conc!14331) Bool)

(assert (=> b!4276958 (= e!2655365 (not (isEmpty!28008 (right!35609 (c!728376 thiss!5761)))))))

(declare-fun d!1262601 () Bool)

(declare-fun res!1756165 () Bool)

(declare-fun e!2655366 () Bool)

(assert (=> d!1262601 (=> res!1756165 e!2655366)))

(assert (=> d!1262601 (= res!1756165 (not ((_ is Node!14331) (c!728376 thiss!5761))))))

(assert (=> d!1262601 (= (isBalanced!3871 (c!728376 thiss!5761)) e!2655366)))

(declare-fun b!4276959 () Bool)

(declare-fun res!1756162 () Bool)

(assert (=> b!4276959 (=> (not res!1756162) (not e!2655365))))

(declare-fun height!1885 (Conc!14331) Int)

(assert (=> b!4276959 (= res!1756162 (<= (- (height!1885 (left!35279 (c!728376 thiss!5761))) (height!1885 (right!35609 (c!728376 thiss!5761)))) 1))))

(declare-fun b!4276960 () Bool)

(assert (=> b!4276960 (= e!2655366 e!2655365)))

(declare-fun res!1756166 () Bool)

(assert (=> b!4276960 (=> (not res!1756166) (not e!2655365))))

(assert (=> b!4276960 (= res!1756166 (<= (- 1) (- (height!1885 (left!35279 (c!728376 thiss!5761))) (height!1885 (right!35609 (c!728376 thiss!5761))))))))

(declare-fun b!4276961 () Bool)

(declare-fun res!1756163 () Bool)

(assert (=> b!4276961 (=> (not res!1756163) (not e!2655365))))

(assert (=> b!4276961 (= res!1756163 (not (isEmpty!28008 (left!35279 (c!728376 thiss!5761)))))))

(declare-fun b!4276962 () Bool)

(declare-fun res!1756164 () Bool)

(assert (=> b!4276962 (=> (not res!1756164) (not e!2655365))))

(assert (=> b!4276962 (= res!1756164 (isBalanced!3871 (left!35279 (c!728376 thiss!5761))))))

(declare-fun b!4276963 () Bool)

(declare-fun res!1756167 () Bool)

(assert (=> b!4276963 (=> (not res!1756167) (not e!2655365))))

(assert (=> b!4276963 (= res!1756167 (isBalanced!3871 (right!35609 (c!728376 thiss!5761))))))

(assert (= (and d!1262601 (not res!1756165)) b!4276960))

(assert (= (and b!4276960 res!1756166) b!4276959))

(assert (= (and b!4276959 res!1756162) b!4276962))

(assert (= (and b!4276962 res!1756164) b!4276963))

(assert (= (and b!4276963 res!1756167) b!4276961))

(assert (= (and b!4276961 res!1756163) b!4276958))

(declare-fun m!4872895 () Bool)

(assert (=> b!4276963 m!4872895))

(declare-fun m!4872897 () Bool)

(assert (=> b!4276958 m!4872897))

(declare-fun m!4872899 () Bool)

(assert (=> b!4276960 m!4872899))

(declare-fun m!4872901 () Bool)

(assert (=> b!4276960 m!4872901))

(declare-fun m!4872903 () Bool)

(assert (=> b!4276962 m!4872903))

(declare-fun m!4872905 () Bool)

(assert (=> b!4276961 m!4872905))

(assert (=> b!4276959 m!4872899))

(assert (=> b!4276959 m!4872901))

(assert (=> d!1262585 d!1262601))

(declare-fun b!4276966 () Bool)

(declare-fun e!2655368 () List!47473)

(assert (=> b!4276966 (= e!2655368 (list!17261 (xs!17637 (right!35609 (c!728376 thiss!5761)))))))

(declare-fun b!4276967 () Bool)

(assert (=> b!4276967 (= e!2655368 (++!12094 (list!17259 (left!35279 (right!35609 (c!728376 thiss!5761)))) (list!17259 (right!35609 (right!35609 (c!728376 thiss!5761))))))))

(declare-fun b!4276965 () Bool)

(declare-fun e!2655367 () List!47473)

(assert (=> b!4276965 (= e!2655367 e!2655368)))

(declare-fun c!728412 () Bool)

(assert (=> b!4276965 (= c!728412 ((_ is Leaf!22152) (right!35609 (c!728376 thiss!5761))))))

(declare-fun d!1262603 () Bool)

(declare-fun c!728411 () Bool)

(assert (=> d!1262603 (= c!728411 ((_ is Empty!14331) (right!35609 (c!728376 thiss!5761))))))

(assert (=> d!1262603 (= (list!17259 (right!35609 (c!728376 thiss!5761))) e!2655367)))

(declare-fun b!4276964 () Bool)

(assert (=> b!4276964 (= e!2655367 Nil!47349)))

(assert (= (and d!1262603 c!728411) b!4276964))

(assert (= (and d!1262603 (not c!728411)) b!4276965))

(assert (= (and b!4276965 c!728412) b!4276966))

(assert (= (and b!4276965 (not c!728412)) b!4276967))

(declare-fun m!4872907 () Bool)

(assert (=> b!4276966 m!4872907))

(declare-fun m!4872909 () Bool)

(assert (=> b!4276967 m!4872909))

(declare-fun m!4872911 () Bool)

(assert (=> b!4276967 m!4872911))

(assert (=> b!4276967 m!4872909))

(assert (=> b!4276967 m!4872911))

(declare-fun m!4872913 () Bool)

(assert (=> b!4276967 m!4872913))

(assert (=> b!4276871 d!1262603))

(declare-fun b!4276970 () Bool)

(declare-fun e!2655370 () List!47473)

(assert (=> b!4276970 (= e!2655370 (list!17261 (xs!17637 (left!35279 (c!728376 thiss!5761)))))))

(declare-fun b!4276971 () Bool)

(assert (=> b!4276971 (= e!2655370 (++!12094 (list!17259 (left!35279 (left!35279 (c!728376 thiss!5761)))) (list!17259 (right!35609 (left!35279 (c!728376 thiss!5761))))))))

(declare-fun b!4276969 () Bool)

(declare-fun e!2655369 () List!47473)

(assert (=> b!4276969 (= e!2655369 e!2655370)))

(declare-fun c!728414 () Bool)

(assert (=> b!4276969 (= c!728414 ((_ is Leaf!22152) (left!35279 (c!728376 thiss!5761))))))

(declare-fun d!1262605 () Bool)

(declare-fun c!728413 () Bool)

(assert (=> d!1262605 (= c!728413 ((_ is Empty!14331) (left!35279 (c!728376 thiss!5761))))))

(assert (=> d!1262605 (= (list!17259 (left!35279 (c!728376 thiss!5761))) e!2655369)))

(declare-fun b!4276968 () Bool)

(assert (=> b!4276968 (= e!2655369 Nil!47349)))

(assert (= (and d!1262605 c!728413) b!4276968))

(assert (= (and d!1262605 (not c!728413)) b!4276969))

(assert (= (and b!4276969 c!728414) b!4276970))

(assert (= (and b!4276969 (not c!728414)) b!4276971))

(declare-fun m!4872915 () Bool)

(assert (=> b!4276970 m!4872915))

(declare-fun m!4872917 () Bool)

(assert (=> b!4276971 m!4872917))

(declare-fun m!4872919 () Bool)

(assert (=> b!4276971 m!4872919))

(assert (=> b!4276971 m!4872917))

(assert (=> b!4276971 m!4872919))

(declare-fun m!4872921 () Bool)

(assert (=> b!4276971 m!4872921))

(assert (=> b!4276871 d!1262605))

(declare-fun bm!294261 () Bool)

(declare-fun c!728417 () Bool)

(declare-fun c!728416 () Bool)

(assert (=> bm!294261 (= c!728417 c!728416)))

(declare-fun lt!1513953 () List!47473)

(declare-fun e!2655371 () List!47473)

(declare-fun call!294266 () List!47473)

(assert (=> bm!294261 (= call!294266 (++!12094 e!2655371 (ite c!728416 (efficientList$default$2!208 (c!728376 thiss!5761)) lt!1513953)))))

(declare-fun b!4276972 () Bool)

(assert (=> b!4276972 (= e!2655371 (efficientList!597 (xs!17637 (right!35609 (c!728376 thiss!5761)))))))

(declare-fun b!4276974 () Bool)

(declare-fun e!2655373 () List!47473)

(assert (=> b!4276974 (= e!2655373 call!294266)))

(declare-fun b!4276975 () Bool)

(declare-fun e!2655372 () List!47473)

(assert (=> b!4276975 (= e!2655372 e!2655373)))

(assert (=> b!4276975 (= c!728416 ((_ is Leaf!22152) (right!35609 (c!728376 thiss!5761))))))

(declare-fun b!4276976 () Bool)

(assert (=> b!4276976 (= e!2655372 (efficientList$default$2!208 (c!728376 thiss!5761)))))

(declare-fun b!4276977 () Bool)

(declare-fun lt!1513954 () Unit!66303)

(declare-fun lt!1513955 () Unit!66303)

(assert (=> b!4276977 (= lt!1513954 lt!1513955)))

(declare-fun lt!1513956 () List!47473)

(assert (=> b!4276977 (= (++!12094 call!294266 (efficientList$default$2!208 (c!728376 thiss!5761))) (++!12094 lt!1513956 (++!12094 lt!1513953 (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(assert (=> b!4276977 (= lt!1513955 (lemmaConcatAssociativity!2729 lt!1513956 lt!1513953 (efficientList$default$2!208 (c!728376 thiss!5761))))))

(assert (=> b!4276977 (= lt!1513953 (list!17259 (right!35609 (right!35609 (c!728376 thiss!5761)))))))

(assert (=> b!4276977 (= lt!1513956 (list!17259 (left!35279 (right!35609 (c!728376 thiss!5761)))))))

(assert (=> b!4276977 (= e!2655373 (efficientList!596 (left!35279 (right!35609 (c!728376 thiss!5761))) (efficientList!596 (right!35609 (right!35609 (c!728376 thiss!5761))) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun d!1262607 () Bool)

(declare-fun lt!1513957 () List!47473)

(assert (=> d!1262607 (= lt!1513957 (++!12094 (list!17259 (right!35609 (c!728376 thiss!5761))) (efficientList$default$2!208 (c!728376 thiss!5761))))))

(assert (=> d!1262607 (= lt!1513957 e!2655372)))

(declare-fun c!728415 () Bool)

(assert (=> d!1262607 (= c!728415 ((_ is Empty!14331) (right!35609 (c!728376 thiss!5761))))))

(assert (=> d!1262607 (= (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513957)))

(declare-fun b!4276973 () Bool)

(assert (=> b!4276973 (= e!2655371 lt!1513956)))

(assert (= (and d!1262607 c!728415) b!4276976))

(assert (= (and d!1262607 (not c!728415)) b!4276975))

(assert (= (and b!4276975 c!728416) b!4276974))

(assert (= (and b!4276975 (not c!728416)) b!4276977))

(assert (= (or b!4276974 b!4276977) bm!294261))

(assert (= (and bm!294261 c!728417) b!4276972))

(assert (= (and bm!294261 (not c!728417)) b!4276973))

(declare-fun m!4872923 () Bool)

(assert (=> bm!294261 m!4872923))

(declare-fun m!4872925 () Bool)

(assert (=> b!4276972 m!4872925))

(assert (=> b!4276977 m!4872779))

(declare-fun m!4872927 () Bool)

(assert (=> b!4276977 m!4872927))

(assert (=> b!4276977 m!4872927))

(declare-fun m!4872929 () Bool)

(assert (=> b!4276977 m!4872929))

(assert (=> b!4276977 m!4872779))

(declare-fun m!4872931 () Bool)

(assert (=> b!4276977 m!4872931))

(assert (=> b!4276977 m!4872911))

(assert (=> b!4276977 m!4872931))

(declare-fun m!4872933 () Bool)

(assert (=> b!4276977 m!4872933))

(assert (=> b!4276977 m!4872909))

(assert (=> b!4276977 m!4872779))

(declare-fun m!4872935 () Bool)

(assert (=> b!4276977 m!4872935))

(assert (=> b!4276977 m!4872779))

(declare-fun m!4872937 () Bool)

(assert (=> b!4276977 m!4872937))

(assert (=> d!1262607 m!4872807))

(assert (=> d!1262607 m!4872807))

(assert (=> d!1262607 m!4872779))

(declare-fun m!4872939 () Bool)

(assert (=> d!1262607 m!4872939))

(assert (=> b!4276871 d!1262607))

(declare-fun b!4276978 () Bool)

(declare-fun e!2655375 () List!47473)

(assert (=> b!4276978 (= e!2655375 (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))))))

(declare-fun b!4276979 () Bool)

(assert (=> b!4276979 (= e!2655375 (Cons!47349 (h!52769 lt!1513932) (++!12094 (t!354028 lt!1513932) (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(declare-fun lt!1513958 () List!47473)

(declare-fun b!4276981 () Bool)

(declare-fun e!2655374 () Bool)

(assert (=> b!4276981 (= e!2655374 (or (not (= (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))) Nil!47349)) (= lt!1513958 lt!1513932)))))

(declare-fun d!1262609 () Bool)

(assert (=> d!1262609 e!2655374))

(declare-fun res!1756169 () Bool)

(assert (=> d!1262609 (=> (not res!1756169) (not e!2655374))))

(assert (=> d!1262609 (= res!1756169 (= (content!7483 lt!1513958) ((_ map or) (content!7483 lt!1513932) (content!7483 (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761)))))))))

(assert (=> d!1262609 (= lt!1513958 e!2655375)))

(declare-fun c!728418 () Bool)

(assert (=> d!1262609 (= c!728418 ((_ is Nil!47349) lt!1513932))))

(assert (=> d!1262609 (= (++!12094 lt!1513932 (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761)))) lt!1513958)))

(declare-fun b!4276980 () Bool)

(declare-fun res!1756168 () Bool)

(assert (=> b!4276980 (=> (not res!1756168) (not e!2655374))))

(assert (=> b!4276980 (= res!1756168 (= (size!34656 lt!1513958) (+ (size!34656 lt!1513932) (size!34656 (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761)))))))))

(assert (= (and d!1262609 c!728418) b!4276978))

(assert (= (and d!1262609 (not c!728418)) b!4276979))

(assert (= (and d!1262609 res!1756169) b!4276980))

(assert (= (and b!4276980 res!1756168) b!4276981))

(assert (=> b!4276979 m!4872805))

(declare-fun m!4872941 () Bool)

(assert (=> b!4276979 m!4872941))

(declare-fun m!4872943 () Bool)

(assert (=> d!1262609 m!4872943))

(declare-fun m!4872945 () Bool)

(assert (=> d!1262609 m!4872945))

(assert (=> d!1262609 m!4872805))

(declare-fun m!4872947 () Bool)

(assert (=> d!1262609 m!4872947))

(declare-fun m!4872949 () Bool)

(assert (=> b!4276980 m!4872949))

(declare-fun m!4872951 () Bool)

(assert (=> b!4276980 m!4872951))

(assert (=> b!4276980 m!4872805))

(declare-fun m!4872953 () Bool)

(assert (=> b!4276980 m!4872953))

(assert (=> b!4276871 d!1262609))

(declare-fun bm!294262 () Bool)

(declare-fun c!728421 () Bool)

(declare-fun c!728420 () Bool)

(assert (=> bm!294262 (= c!728421 c!728420)))

(declare-fun call!294267 () List!47473)

(declare-fun e!2655376 () List!47473)

(declare-fun lt!1513959 () List!47473)

(assert (=> bm!294262 (= call!294267 (++!12094 e!2655376 (ite c!728420 (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513959)))))

(declare-fun b!4276982 () Bool)

(assert (=> b!4276982 (= e!2655376 (efficientList!597 (xs!17637 (left!35279 (c!728376 thiss!5761)))))))

(declare-fun b!4276984 () Bool)

(declare-fun e!2655378 () List!47473)

(assert (=> b!4276984 (= e!2655378 call!294267)))

(declare-fun b!4276985 () Bool)

(declare-fun e!2655377 () List!47473)

(assert (=> b!4276985 (= e!2655377 e!2655378)))

(assert (=> b!4276985 (= c!728420 ((_ is Leaf!22152) (left!35279 (c!728376 thiss!5761))))))

(declare-fun b!4276986 () Bool)

(assert (=> b!4276986 (= e!2655377 (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))))))

(declare-fun b!4276987 () Bool)

(declare-fun lt!1513960 () Unit!66303)

(declare-fun lt!1513961 () Unit!66303)

(assert (=> b!4276987 (= lt!1513960 lt!1513961)))

(declare-fun lt!1513962 () List!47473)

(assert (=> b!4276987 (= (++!12094 call!294267 (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761)))) (++!12094 lt!1513962 (++!12094 lt!1513959 (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (=> b!4276987 (= lt!1513961 (lemmaConcatAssociativity!2729 lt!1513962 lt!1513959 (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(assert (=> b!4276987 (= lt!1513959 (list!17259 (right!35609 (left!35279 (c!728376 thiss!5761)))))))

(assert (=> b!4276987 (= lt!1513962 (list!17259 (left!35279 (left!35279 (c!728376 thiss!5761)))))))

(assert (=> b!4276987 (= e!2655378 (efficientList!596 (left!35279 (left!35279 (c!728376 thiss!5761))) (efficientList!596 (right!35609 (left!35279 (c!728376 thiss!5761))) (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(declare-fun d!1262611 () Bool)

(declare-fun lt!1513963 () List!47473)

(assert (=> d!1262611 (= lt!1513963 (++!12094 (list!17259 (left!35279 (c!728376 thiss!5761))) (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(assert (=> d!1262611 (= lt!1513963 e!2655377)))

(declare-fun c!728419 () Bool)

(assert (=> d!1262611 (= c!728419 ((_ is Empty!14331) (left!35279 (c!728376 thiss!5761))))))

(assert (=> d!1262611 (= (efficientList!596 (left!35279 (c!728376 thiss!5761)) (efficientList!596 (right!35609 (c!728376 thiss!5761)) (efficientList$default$2!208 (c!728376 thiss!5761)))) lt!1513963)))

(declare-fun b!4276983 () Bool)

(assert (=> b!4276983 (= e!2655376 lt!1513962)))

(assert (= (and d!1262611 c!728419) b!4276986))

(assert (= (and d!1262611 (not c!728419)) b!4276985))

(assert (= (and b!4276985 c!728420) b!4276984))

(assert (= (and b!4276985 (not c!728420)) b!4276987))

(assert (= (or b!4276984 b!4276987) bm!294262))

(assert (= (and bm!294262 c!728421) b!4276982))

(assert (= (and bm!294262 (not c!728421)) b!4276983))

(declare-fun m!4872955 () Bool)

(assert (=> bm!294262 m!4872955))

(declare-fun m!4872957 () Bool)

(assert (=> b!4276982 m!4872957))

(assert (=> b!4276987 m!4872801))

(declare-fun m!4872959 () Bool)

(assert (=> b!4276987 m!4872959))

(assert (=> b!4276987 m!4872959))

(declare-fun m!4872961 () Bool)

(assert (=> b!4276987 m!4872961))

(assert (=> b!4276987 m!4872801))

(declare-fun m!4872963 () Bool)

(assert (=> b!4276987 m!4872963))

(assert (=> b!4276987 m!4872919))

(assert (=> b!4276987 m!4872963))

(declare-fun m!4872965 () Bool)

(assert (=> b!4276987 m!4872965))

(assert (=> b!4276987 m!4872917))

(assert (=> b!4276987 m!4872801))

(declare-fun m!4872967 () Bool)

(assert (=> b!4276987 m!4872967))

(assert (=> b!4276987 m!4872801))

(declare-fun m!4872969 () Bool)

(assert (=> b!4276987 m!4872969))

(assert (=> d!1262611 m!4872811))

(assert (=> d!1262611 m!4872811))

(assert (=> d!1262611 m!4872801))

(declare-fun m!4872971 () Bool)

(assert (=> d!1262611 m!4872971))

(assert (=> b!4276871 d!1262611))

(declare-fun b!4276988 () Bool)

(declare-fun e!2655380 () List!47473)

(assert (=> b!4276988 (= e!2655380 (efficientList$default$2!208 (c!728376 thiss!5761)))))

(declare-fun b!4276989 () Bool)

(assert (=> b!4276989 (= e!2655380 (Cons!47349 (h!52769 call!294262) (++!12094 (t!354028 call!294262) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun lt!1513964 () List!47473)

(declare-fun b!4276991 () Bool)

(declare-fun e!2655379 () Bool)

(assert (=> b!4276991 (= e!2655379 (or (not (= (efficientList$default$2!208 (c!728376 thiss!5761)) Nil!47349)) (= lt!1513964 call!294262)))))

(declare-fun d!1262613 () Bool)

(assert (=> d!1262613 e!2655379))

(declare-fun res!1756171 () Bool)

(assert (=> d!1262613 (=> (not res!1756171) (not e!2655379))))

(assert (=> d!1262613 (= res!1756171 (= (content!7483 lt!1513964) ((_ map or) (content!7483 call!294262) (content!7483 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (=> d!1262613 (= lt!1513964 e!2655380)))

(declare-fun c!728422 () Bool)

(assert (=> d!1262613 (= c!728422 ((_ is Nil!47349) call!294262))))

(assert (=> d!1262613 (= (++!12094 call!294262 (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513964)))

(declare-fun b!4276990 () Bool)

(declare-fun res!1756170 () Bool)

(assert (=> b!4276990 (=> (not res!1756170) (not e!2655379))))

(assert (=> b!4276990 (= res!1756170 (= (size!34656 lt!1513964) (+ (size!34656 call!294262) (size!34656 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (= (and d!1262613 c!728422) b!4276988))

(assert (= (and d!1262613 (not c!728422)) b!4276989))

(assert (= (and d!1262613 res!1756171) b!4276990))

(assert (= (and b!4276990 res!1756170) b!4276991))

(assert (=> b!4276989 m!4872779))

(declare-fun m!4872973 () Bool)

(assert (=> b!4276989 m!4872973))

(declare-fun m!4872975 () Bool)

(assert (=> d!1262613 m!4872975))

(declare-fun m!4872977 () Bool)

(assert (=> d!1262613 m!4872977))

(assert (=> d!1262613 m!4872779))

(assert (=> d!1262613 m!4872887))

(declare-fun m!4872979 () Bool)

(assert (=> b!4276990 m!4872979))

(declare-fun m!4872981 () Bool)

(assert (=> b!4276990 m!4872981))

(assert (=> b!4276990 m!4872779))

(assert (=> b!4276990 m!4872893))

(assert (=> b!4276871 d!1262613))

(declare-fun b!4276992 () Bool)

(declare-fun e!2655382 () List!47473)

(assert (=> b!4276992 (= e!2655382 (efficientList$default$2!208 (c!728376 thiss!5761)))))

(declare-fun b!4276993 () Bool)

(assert (=> b!4276993 (= e!2655382 (Cons!47349 (h!52769 lt!1513929) (++!12094 (t!354028 lt!1513929) (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun b!4276995 () Bool)

(declare-fun lt!1513965 () List!47473)

(declare-fun e!2655381 () Bool)

(assert (=> b!4276995 (= e!2655381 (or (not (= (efficientList$default$2!208 (c!728376 thiss!5761)) Nil!47349)) (= lt!1513965 lt!1513929)))))

(declare-fun d!1262615 () Bool)

(assert (=> d!1262615 e!2655381))

(declare-fun res!1756173 () Bool)

(assert (=> d!1262615 (=> (not res!1756173) (not e!2655381))))

(assert (=> d!1262615 (= res!1756173 (= (content!7483 lt!1513965) ((_ map or) (content!7483 lt!1513929) (content!7483 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (=> d!1262615 (= lt!1513965 e!2655382)))

(declare-fun c!728423 () Bool)

(assert (=> d!1262615 (= c!728423 ((_ is Nil!47349) lt!1513929))))

(assert (=> d!1262615 (= (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513965)))

(declare-fun b!4276994 () Bool)

(declare-fun res!1756172 () Bool)

(assert (=> b!4276994 (=> (not res!1756172) (not e!2655381))))

(assert (=> b!4276994 (= res!1756172 (= (size!34656 lt!1513965) (+ (size!34656 lt!1513929) (size!34656 (efficientList$default$2!208 (c!728376 thiss!5761))))))))

(assert (= (and d!1262615 c!728423) b!4276992))

(assert (= (and d!1262615 (not c!728423)) b!4276993))

(assert (= (and d!1262615 res!1756173) b!4276994))

(assert (= (and b!4276994 res!1756172) b!4276995))

(assert (=> b!4276993 m!4872779))

(declare-fun m!4872983 () Bool)

(assert (=> b!4276993 m!4872983))

(declare-fun m!4872985 () Bool)

(assert (=> d!1262615 m!4872985))

(declare-fun m!4872987 () Bool)

(assert (=> d!1262615 m!4872987))

(assert (=> d!1262615 m!4872779))

(assert (=> d!1262615 m!4872887))

(declare-fun m!4872989 () Bool)

(assert (=> b!4276994 m!4872989))

(declare-fun m!4872991 () Bool)

(assert (=> b!4276994 m!4872991))

(assert (=> b!4276994 m!4872779))

(assert (=> b!4276994 m!4872893))

(assert (=> b!4276871 d!1262615))

(declare-fun d!1262617 () Bool)

(assert (=> d!1262617 (= (++!12094 (++!12094 lt!1513932 lt!1513929) (efficientList$default$2!208 (c!728376 thiss!5761))) (++!12094 lt!1513932 (++!12094 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761)))))))

(declare-fun lt!1513968 () Unit!66303)

(declare-fun choose!26083 (List!47473 List!47473 List!47473) Unit!66303)

(assert (=> d!1262617 (= lt!1513968 (choose!26083 lt!1513932 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))))))

(assert (=> d!1262617 (= (lemmaConcatAssociativity!2729 lt!1513932 lt!1513929 (efficientList$default$2!208 (c!728376 thiss!5761))) lt!1513968)))

(declare-fun bs!602569 () Bool)

(assert (= bs!602569 d!1262617))

(assert (=> bs!602569 m!4872779))

(assert (=> bs!602569 m!4872805))

(declare-fun m!4872993 () Bool)

(assert (=> bs!602569 m!4872993))

(assert (=> bs!602569 m!4872993))

(assert (=> bs!602569 m!4872779))

(declare-fun m!4872995 () Bool)

(assert (=> bs!602569 m!4872995))

(assert (=> bs!602569 m!4872779))

(declare-fun m!4872997 () Bool)

(assert (=> bs!602569 m!4872997))

(assert (=> bs!602569 m!4872805))

(assert (=> bs!602569 m!4872809))

(assert (=> b!4276871 d!1262617))

(declare-fun d!1262619 () Bool)

(declare-fun lt!1513971 () List!47473)

(assert (=> d!1262619 (= lt!1513971 (list!17261 (xs!17637 (c!728376 thiss!5761))))))

(declare-fun rec!36 (IArray!28667 Int List!47473) List!47473)

(declare-fun size!34657 (IArray!28667) Int)

(assert (=> d!1262619 (= lt!1513971 (rec!36 (xs!17637 (c!728376 thiss!5761)) (size!34657 (xs!17637 (c!728376 thiss!5761))) Nil!47349))))

(assert (=> d!1262619 (= (efficientList!597 (xs!17637 (c!728376 thiss!5761))) lt!1513971)))

(declare-fun bs!602570 () Bool)

(assert (= bs!602570 d!1262619))

(assert (=> bs!602570 m!4872855))

(declare-fun m!4872999 () Bool)

(assert (=> bs!602570 m!4872999))

(assert (=> bs!602570 m!4872999))

(declare-fun m!4873001 () Bool)

(assert (=> bs!602570 m!4873001))

(assert (=> b!4276866 d!1262619))

(assert (=> b!4276835 d!1262573))

(declare-fun d!1262621 () Bool)

(declare-fun c!728424 () Bool)

(assert (=> d!1262621 (= c!728424 ((_ is Node!14331) (left!35279 (c!728376 thiss!5761))))))

(declare-fun e!2655383 () Bool)

(assert (=> d!1262621 (= (inv!62676 (left!35279 (c!728376 thiss!5761))) e!2655383)))

(declare-fun b!4276996 () Bool)

(assert (=> b!4276996 (= e!2655383 (inv!62677 (left!35279 (c!728376 thiss!5761))))))

(declare-fun b!4276997 () Bool)

(declare-fun e!2655384 () Bool)

(assert (=> b!4276997 (= e!2655383 e!2655384)))

(declare-fun res!1756174 () Bool)

(assert (=> b!4276997 (= res!1756174 (not ((_ is Leaf!22152) (left!35279 (c!728376 thiss!5761)))))))

(assert (=> b!4276997 (=> res!1756174 e!2655384)))

(declare-fun b!4276998 () Bool)

(assert (=> b!4276998 (= e!2655384 (inv!62678 (left!35279 (c!728376 thiss!5761))))))

(assert (= (and d!1262621 c!728424) b!4276996))

(assert (= (and d!1262621 (not c!728424)) b!4276997))

(assert (= (and b!4276997 (not res!1756174)) b!4276998))

(declare-fun m!4873003 () Bool)

(assert (=> b!4276996 m!4873003))

(declare-fun m!4873005 () Bool)

(assert (=> b!4276998 m!4873005))

(assert (=> b!4276880 d!1262621))

(declare-fun d!1262623 () Bool)

(declare-fun c!728425 () Bool)

(assert (=> d!1262623 (= c!728425 ((_ is Node!14331) (right!35609 (c!728376 thiss!5761))))))

(declare-fun e!2655385 () Bool)

(assert (=> d!1262623 (= (inv!62676 (right!35609 (c!728376 thiss!5761))) e!2655385)))

(declare-fun b!4276999 () Bool)

(assert (=> b!4276999 (= e!2655385 (inv!62677 (right!35609 (c!728376 thiss!5761))))))

(declare-fun b!4277000 () Bool)

(declare-fun e!2655386 () Bool)

(assert (=> b!4277000 (= e!2655385 e!2655386)))

(declare-fun res!1756175 () Bool)

(assert (=> b!4277000 (= res!1756175 (not ((_ is Leaf!22152) (right!35609 (c!728376 thiss!5761)))))))

(assert (=> b!4277000 (=> res!1756175 e!2655386)))

(declare-fun b!4277001 () Bool)

(assert (=> b!4277001 (= e!2655386 (inv!62678 (right!35609 (c!728376 thiss!5761))))))

(assert (= (and d!1262623 c!728425) b!4276999))

(assert (= (and d!1262623 (not c!728425)) b!4277000))

(assert (= (and b!4277000 (not res!1756175)) b!4277001))

(declare-fun m!4873007 () Bool)

(assert (=> b!4276999 m!4873007))

(declare-fun m!4873009 () Bool)

(assert (=> b!4277001 m!4873009))

(assert (=> b!4276880 d!1262623))

(declare-fun d!1262625 () Bool)

(declare-fun res!1756182 () Bool)

(declare-fun e!2655389 () Bool)

(assert (=> d!1262625 (=> (not res!1756182) (not e!2655389))))

(declare-fun size!34659 (Conc!14331) Int)

(assert (=> d!1262625 (= res!1756182 (= (csize!28892 (c!728376 thiss!5761)) (+ (size!34659 (left!35279 (c!728376 thiss!5761))) (size!34659 (right!35609 (c!728376 thiss!5761))))))))

(assert (=> d!1262625 (= (inv!62677 (c!728376 thiss!5761)) e!2655389)))

(declare-fun b!4277008 () Bool)

(declare-fun res!1756183 () Bool)

(assert (=> b!4277008 (=> (not res!1756183) (not e!2655389))))

(assert (=> b!4277008 (= res!1756183 (and (not (= (left!35279 (c!728376 thiss!5761)) Empty!14331)) (not (= (right!35609 (c!728376 thiss!5761)) Empty!14331))))))

(declare-fun b!4277009 () Bool)

(declare-fun res!1756184 () Bool)

(assert (=> b!4277009 (=> (not res!1756184) (not e!2655389))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4277009 (= res!1756184 (= (cheight!14542 (c!728376 thiss!5761)) (+ (max!0 (height!1885 (left!35279 (c!728376 thiss!5761))) (height!1885 (right!35609 (c!728376 thiss!5761)))) 1)))))

(declare-fun b!4277010 () Bool)

(assert (=> b!4277010 (= e!2655389 (<= 0 (cheight!14542 (c!728376 thiss!5761))))))

(assert (= (and d!1262625 res!1756182) b!4277008))

(assert (= (and b!4277008 res!1756183) b!4277009))

(assert (= (and b!4277009 res!1756184) b!4277010))

(declare-fun m!4873011 () Bool)

(assert (=> d!1262625 m!4873011))

(declare-fun m!4873013 () Bool)

(assert (=> d!1262625 m!4873013))

(assert (=> b!4277009 m!4872899))

(assert (=> b!4277009 m!4872901))

(assert (=> b!4277009 m!4872899))

(assert (=> b!4277009 m!4872901))

(declare-fun m!4873015 () Bool)

(assert (=> b!4277009 m!4873015))

(assert (=> b!4276842 d!1262625))

(declare-fun d!1262627 () Bool)

(assert (=> d!1262627 (= (inv!62679 (xs!17637 (c!728376 thiss!5761))) (<= (size!34656 (innerList!14391 (xs!17637 (c!728376 thiss!5761)))) 2147483647))))

(declare-fun bs!602571 () Bool)

(assert (= bs!602571 d!1262627))

(declare-fun m!4873017 () Bool)

(assert (=> bs!602571 m!4873017))

(assert (=> b!4276881 d!1262627))

(declare-fun b!4277015 () Bool)

(declare-fun e!2655392 () Bool)

(declare-fun tp_is_empty!22935 () Bool)

(declare-fun tp!1308723 () Bool)

(assert (=> b!4277015 (= e!2655392 (and tp_is_empty!22935 tp!1308723))))

(assert (=> b!4276882 (= tp!1308709 e!2655392)))

(assert (= (and b!4276882 ((_ is Cons!47349) (innerList!14391 (xs!17637 (c!728376 thiss!5761))))) b!4277015))

(declare-fun tp!1308725 () Bool)

(declare-fun e!2655394 () Bool)

(declare-fun b!4277016 () Bool)

(declare-fun tp!1308726 () Bool)

(assert (=> b!4277016 (= e!2655394 (and (inv!62676 (left!35279 (left!35279 (c!728376 thiss!5761)))) tp!1308726 (inv!62676 (right!35609 (left!35279 (c!728376 thiss!5761)))) tp!1308725))))

(declare-fun b!4277018 () Bool)

(declare-fun e!2655393 () Bool)

(declare-fun tp!1308724 () Bool)

(assert (=> b!4277018 (= e!2655393 tp!1308724)))

(declare-fun b!4277017 () Bool)

(assert (=> b!4277017 (= e!2655394 (and (inv!62679 (xs!17637 (left!35279 (c!728376 thiss!5761)))) e!2655393))))

(assert (=> b!4276880 (= tp!1308711 (and (inv!62676 (left!35279 (c!728376 thiss!5761))) e!2655394))))

(assert (= (and b!4276880 ((_ is Node!14331) (left!35279 (c!728376 thiss!5761)))) b!4277016))

(assert (= b!4277017 b!4277018))

(assert (= (and b!4276880 ((_ is Leaf!22152) (left!35279 (c!728376 thiss!5761)))) b!4277017))

(declare-fun m!4873019 () Bool)

(assert (=> b!4277016 m!4873019))

(declare-fun m!4873021 () Bool)

(assert (=> b!4277016 m!4873021))

(declare-fun m!4873023 () Bool)

(assert (=> b!4277017 m!4873023))

(assert (=> b!4276880 m!4872823))

(declare-fun b!4277019 () Bool)

(declare-fun e!2655396 () Bool)

(declare-fun tp!1308729 () Bool)

(declare-fun tp!1308728 () Bool)

(assert (=> b!4277019 (= e!2655396 (and (inv!62676 (left!35279 (right!35609 (c!728376 thiss!5761)))) tp!1308729 (inv!62676 (right!35609 (right!35609 (c!728376 thiss!5761)))) tp!1308728))))

(declare-fun b!4277021 () Bool)

(declare-fun e!2655395 () Bool)

(declare-fun tp!1308727 () Bool)

(assert (=> b!4277021 (= e!2655395 tp!1308727)))

(declare-fun b!4277020 () Bool)

(assert (=> b!4277020 (= e!2655396 (and (inv!62679 (xs!17637 (right!35609 (c!728376 thiss!5761)))) e!2655395))))

(assert (=> b!4276880 (= tp!1308710 (and (inv!62676 (right!35609 (c!728376 thiss!5761))) e!2655396))))

(assert (= (and b!4276880 ((_ is Node!14331) (right!35609 (c!728376 thiss!5761)))) b!4277019))

(assert (= b!4277020 b!4277021))

(assert (= (and b!4276880 ((_ is Leaf!22152) (right!35609 (c!728376 thiss!5761)))) b!4277020))

(declare-fun m!4873025 () Bool)

(assert (=> b!4277019 m!4873025))

(declare-fun m!4873027 () Bool)

(assert (=> b!4277019 m!4873027))

(declare-fun m!4873029 () Bool)

(assert (=> b!4277020 m!4873029))

(assert (=> b!4276880 m!4872825))

(check-sat (not d!1262617) (not b!4276958) (not b!4277016) (not bm!294261) (not d!1262609) (not d!1262613) (not d!1262619) (not b!4276998) (not b!4276928) (not b!4276971) (not b!4276909) (not b!4276993) (not b!4276972) (not b!4276990) (not b!4276980) (not b!4276966) (not b!4276944) (not b!4276960) (not b!4276979) (not b!4277001) (not b!4277017) (not b!4276963) (not d!1262611) (not bm!294262) (not b!4276959) (not d!1262615) (not b!4277009) (not b!4276961) (not b!4276940) (not b!4277015) (not b!4276962) (not b!4276880) (not d!1262599) (not d!1262597) (not d!1262607) (not b!4276987) (not d!1262627) (not b!4276999) (not b!4276989) (not b!4276977) (not b!4277021) (not b!4276982) (not b!4276943) (not d!1262625) tp_is_empty!22935 (not b!4276929) (not b!4276967) (not b!4276996) (not b!4276970) (not b!4277019) (not b!4276994) (not b!4277018) (not d!1262593) (not b!4277020) (not b!4276939))
(check-sat)
