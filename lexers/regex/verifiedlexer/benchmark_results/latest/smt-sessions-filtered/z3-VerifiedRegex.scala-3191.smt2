; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186200 () Bool)

(assert start!186200)

(declare-fun b!1861996 () Bool)

(declare-fun res!833780 () Bool)

(declare-fun e!1189011 () Bool)

(assert (=> b!1861996 (=> (not res!833780) (not e!1189011))))

(declare-datatypes ((T!32948 0))(
  ( (T!32949 (val!5918 Int)) )
))
(declare-datatypes ((List!20735 0))(
  ( (Nil!20653) (Cons!20653 (h!26054 T!32948) (t!172780 List!20735)) )
))
(declare-datatypes ((IArray!13701 0))(
  ( (IArray!13702 (innerList!6908 List!20735)) )
))
(declare-datatypes ((Conc!6848 0))(
  ( (Node!6848 (left!16625 Conc!6848) (right!16955 Conc!6848) (csize!13926 Int) (cheight!7059 Int)) (Leaf!10040 (xs!9724 IArray!13701) (csize!13927 Int)) (Empty!6848) )
))
(declare-fun t!4595 () Conc!6848)

(declare-fun isBalanced!2149 (Conc!6848) Bool)

(assert (=> b!1861996 (= res!833780 (isBalanced!2149 (right!16955 t!4595)))))

(declare-fun e!1189009 () Bool)

(declare-fun tp!530558 () Bool)

(declare-fun tp!530560 () Bool)

(declare-fun b!1861997 () Bool)

(declare-fun inv!27232 (Conc!6848) Bool)

(assert (=> b!1861997 (= e!1189009 (and (inv!27232 (left!16625 t!4595)) tp!530560 (inv!27232 (right!16955 t!4595)) tp!530558))))

(declare-fun res!833781 () Bool)

(assert (=> start!186200 (=> (not res!833781) (not e!1189011))))

(assert (=> start!186200 (= res!833781 (isBalanced!2149 t!4595))))

(assert (=> start!186200 e!1189011))

(assert (=> start!186200 (and (inv!27232 t!4595) e!1189009)))

(declare-fun b!1861998 () Bool)

(declare-fun e!1189010 () Bool)

(declare-fun inv!27233 (IArray!13701) Bool)

(assert (=> b!1861998 (= e!1189009 (and (inv!27233 (xs!9724 t!4595)) e!1189010))))

(declare-fun b!1861999 () Bool)

(declare-fun res!833782 () Bool)

(assert (=> b!1861999 (=> (not res!833782) (not e!1189011))))

(declare-fun isEmpty!12853 (Conc!6848) Bool)

(assert (=> b!1861999 (= res!833782 (isEmpty!12853 (left!16625 t!4595)))))

(declare-fun b!1862000 () Bool)

(declare-fun tp!530559 () Bool)

(assert (=> b!1862000 (= e!1189010 tp!530559)))

(declare-fun b!1862001 () Bool)

(declare-fun res!833779 () Bool)

(assert (=> b!1862001 (=> (not res!833779) (not e!1189011))))

(get-info :version)

(assert (=> b!1862001 (= res!833779 (and (not ((_ is Leaf!10040) t!4595)) ((_ is Node!6848) t!4595)))))

(declare-fun b!1862002 () Bool)

(assert (=> b!1862002 (= e!1189011 (isEmpty!12853 (right!16955 t!4595)))))

(declare-fun b!1862003 () Bool)

(declare-fun res!833783 () Bool)

(assert (=> b!1862003 (=> (not res!833783) (not e!1189011))))

(assert (=> b!1862003 (= res!833783 (not (isEmpty!12853 t!4595)))))

(assert (= (and start!186200 res!833781) b!1862003))

(assert (= (and b!1862003 res!833783) b!1862001))

(assert (= (and b!1862001 res!833779) b!1861999))

(assert (= (and b!1861999 res!833782) b!1861996))

(assert (= (and b!1861996 res!833780) b!1862002))

(assert (= (and start!186200 ((_ is Node!6848) t!4595)) b!1861997))

(assert (= b!1861998 b!1862000))

(assert (= (and start!186200 ((_ is Leaf!10040) t!4595)) b!1861998))

(declare-fun m!2285685 () Bool)

(assert (=> b!1861996 m!2285685))

(declare-fun m!2285687 () Bool)

(assert (=> b!1861999 m!2285687))

(declare-fun m!2285689 () Bool)

(assert (=> b!1861997 m!2285689))

(declare-fun m!2285691 () Bool)

(assert (=> b!1861997 m!2285691))

(declare-fun m!2285693 () Bool)

(assert (=> start!186200 m!2285693))

(declare-fun m!2285695 () Bool)

(assert (=> start!186200 m!2285695))

(declare-fun m!2285697 () Bool)

(assert (=> b!1862002 m!2285697))

(declare-fun m!2285699 () Bool)

(assert (=> b!1861998 m!2285699))

(declare-fun m!2285701 () Bool)

(assert (=> b!1862003 m!2285701))

(check-sat (not start!186200) (not b!1861999) (not b!1861996) (not b!1862003) (not b!1862002) (not b!1861998) (not b!1861997) (not b!1862000))
(check-sat)
(get-model)

(declare-fun d!568240 () Bool)

(declare-fun c!303232 () Bool)

(assert (=> d!568240 (= c!303232 ((_ is Node!6848) (left!16625 t!4595)))))

(declare-fun e!1189016 () Bool)

(assert (=> d!568240 (= (inv!27232 (left!16625 t!4595)) e!1189016)))

(declare-fun b!1862010 () Bool)

(declare-fun inv!27234 (Conc!6848) Bool)

(assert (=> b!1862010 (= e!1189016 (inv!27234 (left!16625 t!4595)))))

(declare-fun b!1862011 () Bool)

(declare-fun e!1189017 () Bool)

(assert (=> b!1862011 (= e!1189016 e!1189017)))

(declare-fun res!833786 () Bool)

(assert (=> b!1862011 (= res!833786 (not ((_ is Leaf!10040) (left!16625 t!4595))))))

(assert (=> b!1862011 (=> res!833786 e!1189017)))

(declare-fun b!1862012 () Bool)

(declare-fun inv!27235 (Conc!6848) Bool)

(assert (=> b!1862012 (= e!1189017 (inv!27235 (left!16625 t!4595)))))

(assert (= (and d!568240 c!303232) b!1862010))

(assert (= (and d!568240 (not c!303232)) b!1862011))

(assert (= (and b!1862011 (not res!833786)) b!1862012))

(declare-fun m!2285705 () Bool)

(assert (=> b!1862010 m!2285705))

(declare-fun m!2285707 () Bool)

(assert (=> b!1862012 m!2285707))

(assert (=> b!1861997 d!568240))

(declare-fun d!568246 () Bool)

(declare-fun c!303233 () Bool)

(assert (=> d!568246 (= c!303233 ((_ is Node!6848) (right!16955 t!4595)))))

(declare-fun e!1189018 () Bool)

(assert (=> d!568246 (= (inv!27232 (right!16955 t!4595)) e!1189018)))

(declare-fun b!1862013 () Bool)

(assert (=> b!1862013 (= e!1189018 (inv!27234 (right!16955 t!4595)))))

(declare-fun b!1862014 () Bool)

(declare-fun e!1189019 () Bool)

(assert (=> b!1862014 (= e!1189018 e!1189019)))

(declare-fun res!833787 () Bool)

(assert (=> b!1862014 (= res!833787 (not ((_ is Leaf!10040) (right!16955 t!4595))))))

(assert (=> b!1862014 (=> res!833787 e!1189019)))

(declare-fun b!1862015 () Bool)

(assert (=> b!1862015 (= e!1189019 (inv!27235 (right!16955 t!4595)))))

(assert (= (and d!568246 c!303233) b!1862013))

(assert (= (and d!568246 (not c!303233)) b!1862014))

(assert (= (and b!1862014 (not res!833787)) b!1862015))

(declare-fun m!2285709 () Bool)

(assert (=> b!1862013 m!2285709))

(declare-fun m!2285711 () Bool)

(assert (=> b!1862015 m!2285711))

(assert (=> b!1861997 d!568246))

(declare-fun d!568248 () Bool)

(declare-fun size!16346 (List!20735) Int)

(assert (=> d!568248 (= (inv!27233 (xs!9724 t!4595)) (<= (size!16346 (innerList!6908 (xs!9724 t!4595))) 2147483647))))

(declare-fun bs!411539 () Bool)

(assert (= bs!411539 d!568248))

(declare-fun m!2285713 () Bool)

(assert (=> bs!411539 m!2285713))

(assert (=> b!1861998 d!568248))

(declare-fun d!568250 () Bool)

(declare-fun lt!717874 () Bool)

(declare-fun isEmpty!12854 (List!20735) Bool)

(declare-fun list!8415 (Conc!6848) List!20735)

(assert (=> d!568250 (= lt!717874 (isEmpty!12854 (list!8415 t!4595)))))

(declare-fun size!16347 (Conc!6848) Int)

(assert (=> d!568250 (= lt!717874 (= (size!16347 t!4595) 0))))

(assert (=> d!568250 (= (isEmpty!12853 t!4595) lt!717874)))

(declare-fun bs!411540 () Bool)

(assert (= bs!411540 d!568250))

(declare-fun m!2285719 () Bool)

(assert (=> bs!411540 m!2285719))

(assert (=> bs!411540 m!2285719))

(declare-fun m!2285723 () Bool)

(assert (=> bs!411540 m!2285723))

(declare-fun m!2285725 () Bool)

(assert (=> bs!411540 m!2285725))

(assert (=> b!1862003 d!568250))

(declare-fun b!1862055 () Bool)

(declare-fun e!1189037 () Bool)

(assert (=> b!1862055 (= e!1189037 (not (isEmpty!12853 (right!16955 t!4595))))))

(declare-fun b!1862056 () Bool)

(declare-fun e!1189036 () Bool)

(assert (=> b!1862056 (= e!1189036 e!1189037)))

(declare-fun res!833824 () Bool)

(assert (=> b!1862056 (=> (not res!833824) (not e!1189037))))

(declare-fun height!1041 (Conc!6848) Int)

(assert (=> b!1862056 (= res!833824 (<= (- 1) (- (height!1041 (left!16625 t!4595)) (height!1041 (right!16955 t!4595)))))))

(declare-fun b!1862057 () Bool)

(declare-fun res!833821 () Bool)

(assert (=> b!1862057 (=> (not res!833821) (not e!1189037))))

(assert (=> b!1862057 (= res!833821 (<= (- (height!1041 (left!16625 t!4595)) (height!1041 (right!16955 t!4595))) 1))))

(declare-fun b!1862058 () Bool)

(declare-fun res!833826 () Bool)

(assert (=> b!1862058 (=> (not res!833826) (not e!1189037))))

(assert (=> b!1862058 (= res!833826 (isBalanced!2149 (right!16955 t!4595)))))

(declare-fun b!1862059 () Bool)

(declare-fun res!833825 () Bool)

(assert (=> b!1862059 (=> (not res!833825) (not e!1189037))))

(assert (=> b!1862059 (= res!833825 (isBalanced!2149 (left!16625 t!4595)))))

(declare-fun b!1862060 () Bool)

(declare-fun res!833822 () Bool)

(assert (=> b!1862060 (=> (not res!833822) (not e!1189037))))

(assert (=> b!1862060 (= res!833822 (not (isEmpty!12853 (left!16625 t!4595))))))

(declare-fun d!568252 () Bool)

(declare-fun res!833823 () Bool)

(assert (=> d!568252 (=> res!833823 e!1189036)))

(assert (=> d!568252 (= res!833823 (not ((_ is Node!6848) t!4595)))))

(assert (=> d!568252 (= (isBalanced!2149 t!4595) e!1189036)))

(assert (= (and d!568252 (not res!833823)) b!1862056))

(assert (= (and b!1862056 res!833824) b!1862057))

(assert (= (and b!1862057 res!833821) b!1862059))

(assert (= (and b!1862059 res!833825) b!1862058))

(assert (= (and b!1862058 res!833826) b!1862060))

(assert (= (and b!1862060 res!833822) b!1862055))

(assert (=> b!1862058 m!2285685))

(declare-fun m!2285737 () Bool)

(assert (=> b!1862056 m!2285737))

(declare-fun m!2285739 () Bool)

(assert (=> b!1862056 m!2285739))

(declare-fun m!2285743 () Bool)

(assert (=> b!1862059 m!2285743))

(assert (=> b!1862060 m!2285687))

(assert (=> b!1862055 m!2285697))

(assert (=> b!1862057 m!2285737))

(assert (=> b!1862057 m!2285739))

(assert (=> start!186200 d!568252))

(declare-fun d!568262 () Bool)

(declare-fun c!303237 () Bool)

(assert (=> d!568262 (= c!303237 ((_ is Node!6848) t!4595))))

(declare-fun e!1189038 () Bool)

(assert (=> d!568262 (= (inv!27232 t!4595) e!1189038)))

(declare-fun b!1862061 () Bool)

(assert (=> b!1862061 (= e!1189038 (inv!27234 t!4595))))

(declare-fun b!1862062 () Bool)

(declare-fun e!1189039 () Bool)

(assert (=> b!1862062 (= e!1189038 e!1189039)))

(declare-fun res!833827 () Bool)

(assert (=> b!1862062 (= res!833827 (not ((_ is Leaf!10040) t!4595)))))

(assert (=> b!1862062 (=> res!833827 e!1189039)))

(declare-fun b!1862063 () Bool)

(assert (=> b!1862063 (= e!1189039 (inv!27235 t!4595))))

(assert (= (and d!568262 c!303237) b!1862061))

(assert (= (and d!568262 (not c!303237)) b!1862062))

(assert (= (and b!1862062 (not res!833827)) b!1862063))

(declare-fun m!2285755 () Bool)

(assert (=> b!1862061 m!2285755))

(declare-fun m!2285757 () Bool)

(assert (=> b!1862063 m!2285757))

(assert (=> start!186200 d!568262))

(declare-fun d!568266 () Bool)

(declare-fun lt!717880 () Bool)

(assert (=> d!568266 (= lt!717880 (isEmpty!12854 (list!8415 (left!16625 t!4595))))))

(assert (=> d!568266 (= lt!717880 (= (size!16347 (left!16625 t!4595)) 0))))

(assert (=> d!568266 (= (isEmpty!12853 (left!16625 t!4595)) lt!717880)))

(declare-fun bs!411544 () Bool)

(assert (= bs!411544 d!568266))

(declare-fun m!2285759 () Bool)

(assert (=> bs!411544 m!2285759))

(assert (=> bs!411544 m!2285759))

(declare-fun m!2285761 () Bool)

(assert (=> bs!411544 m!2285761))

(declare-fun m!2285763 () Bool)

(assert (=> bs!411544 m!2285763))

(assert (=> b!1861999 d!568266))

(declare-fun b!1862070 () Bool)

(declare-fun e!1189043 () Bool)

(assert (=> b!1862070 (= e!1189043 (not (isEmpty!12853 (right!16955 (right!16955 t!4595)))))))

(declare-fun b!1862071 () Bool)

(declare-fun e!1189042 () Bool)

(assert (=> b!1862071 (= e!1189042 e!1189043)))

(declare-fun res!833837 () Bool)

(assert (=> b!1862071 (=> (not res!833837) (not e!1189043))))

(assert (=> b!1862071 (= res!833837 (<= (- 1) (- (height!1041 (left!16625 (right!16955 t!4595))) (height!1041 (right!16955 (right!16955 t!4595))))))))

(declare-fun b!1862072 () Bool)

(declare-fun res!833834 () Bool)

(assert (=> b!1862072 (=> (not res!833834) (not e!1189043))))

(assert (=> b!1862072 (= res!833834 (<= (- (height!1041 (left!16625 (right!16955 t!4595))) (height!1041 (right!16955 (right!16955 t!4595)))) 1))))

(declare-fun b!1862073 () Bool)

(declare-fun res!833839 () Bool)

(assert (=> b!1862073 (=> (not res!833839) (not e!1189043))))

(assert (=> b!1862073 (= res!833839 (isBalanced!2149 (right!16955 (right!16955 t!4595))))))

(declare-fun b!1862074 () Bool)

(declare-fun res!833838 () Bool)

(assert (=> b!1862074 (=> (not res!833838) (not e!1189043))))

(assert (=> b!1862074 (= res!833838 (isBalanced!2149 (left!16625 (right!16955 t!4595))))))

(declare-fun b!1862075 () Bool)

(declare-fun res!833835 () Bool)

(assert (=> b!1862075 (=> (not res!833835) (not e!1189043))))

(assert (=> b!1862075 (= res!833835 (not (isEmpty!12853 (left!16625 (right!16955 t!4595)))))))

(declare-fun d!568268 () Bool)

(declare-fun res!833836 () Bool)

(assert (=> d!568268 (=> res!833836 e!1189042)))

(assert (=> d!568268 (= res!833836 (not ((_ is Node!6848) (right!16955 t!4595))))))

(assert (=> d!568268 (= (isBalanced!2149 (right!16955 t!4595)) e!1189042)))

(assert (= (and d!568268 (not res!833836)) b!1862071))

(assert (= (and b!1862071 res!833837) b!1862072))

(assert (= (and b!1862072 res!833834) b!1862074))

(assert (= (and b!1862074 res!833838) b!1862073))

(assert (= (and b!1862073 res!833839) b!1862075))

(assert (= (and b!1862075 res!833835) b!1862070))

(declare-fun m!2285777 () Bool)

(assert (=> b!1862073 m!2285777))

(declare-fun m!2285779 () Bool)

(assert (=> b!1862071 m!2285779))

(declare-fun m!2285781 () Bool)

(assert (=> b!1862071 m!2285781))

(declare-fun m!2285783 () Bool)

(assert (=> b!1862074 m!2285783))

(declare-fun m!2285787 () Bool)

(assert (=> b!1862075 m!2285787))

(declare-fun m!2285791 () Bool)

(assert (=> b!1862070 m!2285791))

(assert (=> b!1862072 m!2285779))

(assert (=> b!1862072 m!2285781))

(assert (=> b!1861996 d!568268))

(declare-fun d!568274 () Bool)

(declare-fun lt!717881 () Bool)

(assert (=> d!568274 (= lt!717881 (isEmpty!12854 (list!8415 (right!16955 t!4595))))))

(assert (=> d!568274 (= lt!717881 (= (size!16347 (right!16955 t!4595)) 0))))

(assert (=> d!568274 (= (isEmpty!12853 (right!16955 t!4595)) lt!717881)))

(declare-fun bs!411545 () Bool)

(assert (= bs!411545 d!568274))

(declare-fun m!2285793 () Bool)

(assert (=> bs!411545 m!2285793))

(assert (=> bs!411545 m!2285793))

(declare-fun m!2285797 () Bool)

(assert (=> bs!411545 m!2285797))

(declare-fun m!2285801 () Bool)

(assert (=> bs!411545 m!2285801))

(assert (=> b!1862002 d!568274))

(declare-fun tp!530577 () Bool)

(declare-fun b!1862103 () Bool)

(declare-fun e!1189060 () Bool)

(declare-fun tp!530578 () Bool)

(assert (=> b!1862103 (= e!1189060 (and (inv!27232 (left!16625 (left!16625 t!4595))) tp!530577 (inv!27232 (right!16955 (left!16625 t!4595))) tp!530578))))

(declare-fun b!1862105 () Bool)

(declare-fun e!1189059 () Bool)

(declare-fun tp!530576 () Bool)

(assert (=> b!1862105 (= e!1189059 tp!530576)))

(declare-fun b!1862104 () Bool)

(assert (=> b!1862104 (= e!1189060 (and (inv!27233 (xs!9724 (left!16625 t!4595))) e!1189059))))

(assert (=> b!1861997 (= tp!530560 (and (inv!27232 (left!16625 t!4595)) e!1189060))))

(assert (= (and b!1861997 ((_ is Node!6848) (left!16625 t!4595))) b!1862103))

(assert (= b!1862104 b!1862105))

(assert (= (and b!1861997 ((_ is Leaf!10040) (left!16625 t!4595))) b!1862104))

(declare-fun m!2285803 () Bool)

(assert (=> b!1862103 m!2285803))

(declare-fun m!2285805 () Bool)

(assert (=> b!1862103 m!2285805))

(declare-fun m!2285807 () Bool)

(assert (=> b!1862104 m!2285807))

(assert (=> b!1861997 m!2285689))

(declare-fun e!1189062 () Bool)

(declare-fun b!1862106 () Bool)

(declare-fun tp!530581 () Bool)

(declare-fun tp!530580 () Bool)

(assert (=> b!1862106 (= e!1189062 (and (inv!27232 (left!16625 (right!16955 t!4595))) tp!530580 (inv!27232 (right!16955 (right!16955 t!4595))) tp!530581))))

(declare-fun b!1862108 () Bool)

(declare-fun e!1189061 () Bool)

(declare-fun tp!530579 () Bool)

(assert (=> b!1862108 (= e!1189061 tp!530579)))

(declare-fun b!1862107 () Bool)

(assert (=> b!1862107 (= e!1189062 (and (inv!27233 (xs!9724 (right!16955 t!4595))) e!1189061))))

(assert (=> b!1861997 (= tp!530558 (and (inv!27232 (right!16955 t!4595)) e!1189062))))

(assert (= (and b!1861997 ((_ is Node!6848) (right!16955 t!4595))) b!1862106))

(assert (= b!1862107 b!1862108))

(assert (= (and b!1861997 ((_ is Leaf!10040) (right!16955 t!4595))) b!1862107))

(declare-fun m!2285809 () Bool)

(assert (=> b!1862106 m!2285809))

(declare-fun m!2285811 () Bool)

(assert (=> b!1862106 m!2285811))

(declare-fun m!2285813 () Bool)

(assert (=> b!1862107 m!2285813))

(assert (=> b!1861997 m!2285691))

(declare-fun b!1862119 () Bool)

(declare-fun e!1189069 () Bool)

(declare-fun tp_is_empty!8627 () Bool)

(declare-fun tp!530590 () Bool)

(assert (=> b!1862119 (= e!1189069 (and tp_is_empty!8627 tp!530590))))

(assert (=> b!1862000 (= tp!530559 e!1189069)))

(assert (= (and b!1862000 ((_ is Cons!20653) (innerList!6908 (xs!9724 t!4595)))) b!1862119))

(check-sat (not b!1862061) (not b!1862104) (not b!1862015) (not b!1862103) (not d!568248) (not b!1862012) (not b!1862013) tp_is_empty!8627 (not b!1862106) (not b!1862063) (not b!1862055) (not b!1862073) (not b!1862074) (not b!1861997) (not b!1862010) (not b!1862058) (not b!1862075) (not b!1862070) (not b!1862059) (not b!1862071) (not d!568274) (not b!1862072) (not d!568250) (not b!1862060) (not b!1862105) (not b!1862056) (not b!1862057) (not b!1862107) (not d!568266) (not b!1862119) (not b!1862108))
(check-sat)
