; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507446 () Bool)

(assert start!507446)

(declare-fun b!4857118 () Bool)

(declare-fun e!3036641 () Bool)

(declare-fun tp!1366487 () Bool)

(assert (=> b!4857118 (= e!3036641 tp!1366487)))

(declare-fun b!4857119 () Bool)

(declare-fun e!3036640 () Bool)

(declare-datatypes ((T!98630 0))(
  ( (T!98631 (val!22404 Int)) )
))
(declare-datatypes ((List!55872 0))(
  ( (Nil!55748) (Cons!55748 (h!62196 T!98630) (t!363444 List!55872)) )
))
(declare-datatypes ((IArray!29117 0))(
  ( (IArray!29118 (innerList!14616 List!55872)) )
))
(declare-datatypes ((Conc!14528 0))(
  ( (Node!14528 (left!40512 Conc!14528) (right!40842 Conc!14528) (csize!29286 Int) (cheight!14739 Int)) (Leaf!24207 (xs!17834 IArray!29117) (csize!29287 Int)) (Empty!14528) )
))
(declare-fun t!4677 () Conc!14528)

(declare-fun inv!71574 (IArray!29117) Bool)

(assert (=> b!4857119 (= e!3036640 (and (inv!71574 (xs!17834 t!4677)) e!3036641))))

(declare-fun res!2073497 () Bool)

(declare-fun e!3036642 () Bool)

(assert (=> start!507446 (=> (not res!2073497) (not e!3036642))))

(declare-fun isBalanced!3934 (Conc!14528) Bool)

(assert (=> start!507446 (= res!2073497 (isBalanced!3934 t!4677))))

(assert (=> start!507446 e!3036642))

(declare-fun inv!71575 (Conc!14528) Bool)

(assert (=> start!507446 (and (inv!71575 t!4677) e!3036640)))

(declare-fun b!4857120 () Bool)

(declare-fun res!2073496 () Bool)

(assert (=> b!4857120 (=> (not res!2073496) (not e!3036642))))

(declare-fun isEmpty!29827 (Conc!14528) Bool)

(assert (=> b!4857120 (= res!2073496 (not (isEmpty!29827 t!4677)))))

(declare-fun b!4857121 () Bool)

(declare-fun last!399 (IArray!29117) T!98630)

(declare-fun last!400 (List!55872) T!98630)

(declare-fun list!17416 (Conc!14528) List!55872)

(assert (=> b!4857121 (= e!3036642 (not (= (last!399 (xs!17834 t!4677)) (last!400 (list!17416 t!4677)))))))

(declare-fun b!4857122 () Bool)

(declare-fun tp!1366486 () Bool)

(declare-fun tp!1366485 () Bool)

(assert (=> b!4857122 (= e!3036640 (and (inv!71575 (left!40512 t!4677)) tp!1366486 (inv!71575 (right!40842 t!4677)) tp!1366485))))

(declare-fun b!4857123 () Bool)

(declare-fun res!2073495 () Bool)

(assert (=> b!4857123 (=> (not res!2073495) (not e!3036642))))

(get-info :version)

(assert (=> b!4857123 (= res!2073495 ((_ is Leaf!24207) t!4677))))

(assert (= (and start!507446 res!2073497) b!4857120))

(assert (= (and b!4857120 res!2073496) b!4857123))

(assert (= (and b!4857123 res!2073495) b!4857121))

(assert (= (and start!507446 ((_ is Node!14528) t!4677)) b!4857122))

(assert (= b!4857119 b!4857118))

(assert (= (and start!507446 ((_ is Leaf!24207) t!4677)) b!4857119))

(declare-fun m!5854864 () Bool)

(assert (=> b!4857121 m!5854864))

(declare-fun m!5854866 () Bool)

(assert (=> b!4857121 m!5854866))

(assert (=> b!4857121 m!5854866))

(declare-fun m!5854868 () Bool)

(assert (=> b!4857121 m!5854868))

(declare-fun m!5854870 () Bool)

(assert (=> b!4857122 m!5854870))

(declare-fun m!5854872 () Bool)

(assert (=> b!4857122 m!5854872))

(declare-fun m!5854874 () Bool)

(assert (=> start!507446 m!5854874))

(declare-fun m!5854876 () Bool)

(assert (=> start!507446 m!5854876))

(declare-fun m!5854878 () Bool)

(assert (=> b!4857119 m!5854878))

(declare-fun m!5854880 () Bool)

(assert (=> b!4857120 m!5854880))

(check-sat (not b!4857119) (not b!4857118) (not start!507446) (not b!4857122) (not b!4857121) (not b!4857120))
(check-sat)
(get-model)

(declare-fun d!1558953 () Bool)

(declare-fun size!36722 (List!55872) Int)

(assert (=> d!1558953 (= (inv!71574 (xs!17834 t!4677)) (<= (size!36722 (innerList!14616 (xs!17834 t!4677))) 2147483647))))

(declare-fun bs!1173768 () Bool)

(assert (= bs!1173768 d!1558953))

(declare-fun m!5854882 () Bool)

(assert (=> bs!1173768 m!5854882))

(assert (=> b!4857119 d!1558953))

(declare-fun d!1558955 () Bool)

(declare-fun c!826248 () Bool)

(assert (=> d!1558955 (= c!826248 ((_ is Node!14528) (left!40512 t!4677)))))

(declare-fun e!3036653 () Bool)

(assert (=> d!1558955 (= (inv!71575 (left!40512 t!4677)) e!3036653)))

(declare-fun b!4857148 () Bool)

(declare-fun inv!71576 (Conc!14528) Bool)

(assert (=> b!4857148 (= e!3036653 (inv!71576 (left!40512 t!4677)))))

(declare-fun b!4857149 () Bool)

(declare-fun e!3036654 () Bool)

(assert (=> b!4857149 (= e!3036653 e!3036654)))

(declare-fun res!2073518 () Bool)

(assert (=> b!4857149 (= res!2073518 (not ((_ is Leaf!24207) (left!40512 t!4677))))))

(assert (=> b!4857149 (=> res!2073518 e!3036654)))

(declare-fun b!4857150 () Bool)

(declare-fun inv!71577 (Conc!14528) Bool)

(assert (=> b!4857150 (= e!3036654 (inv!71577 (left!40512 t!4677)))))

(assert (= (and d!1558955 c!826248) b!4857148))

(assert (= (and d!1558955 (not c!826248)) b!4857149))

(assert (= (and b!4857149 (not res!2073518)) b!4857150))

(declare-fun m!5854896 () Bool)

(assert (=> b!4857148 m!5854896))

(declare-fun m!5854898 () Bool)

(assert (=> b!4857150 m!5854898))

(assert (=> b!4857122 d!1558955))

(declare-fun d!1558959 () Bool)

(declare-fun c!826249 () Bool)

(assert (=> d!1558959 (= c!826249 ((_ is Node!14528) (right!40842 t!4677)))))

(declare-fun e!3036655 () Bool)

(assert (=> d!1558959 (= (inv!71575 (right!40842 t!4677)) e!3036655)))

(declare-fun b!4857151 () Bool)

(assert (=> b!4857151 (= e!3036655 (inv!71576 (right!40842 t!4677)))))

(declare-fun b!4857152 () Bool)

(declare-fun e!3036656 () Bool)

(assert (=> b!4857152 (= e!3036655 e!3036656)))

(declare-fun res!2073519 () Bool)

(assert (=> b!4857152 (= res!2073519 (not ((_ is Leaf!24207) (right!40842 t!4677))))))

(assert (=> b!4857152 (=> res!2073519 e!3036656)))

(declare-fun b!4857153 () Bool)

(assert (=> b!4857153 (= e!3036656 (inv!71577 (right!40842 t!4677)))))

(assert (= (and d!1558959 c!826249) b!4857151))

(assert (= (and d!1558959 (not c!826249)) b!4857152))

(assert (= (and b!4857152 (not res!2073519)) b!4857153))

(declare-fun m!5854900 () Bool)

(assert (=> b!4857151 m!5854900))

(declare-fun m!5854902 () Bool)

(assert (=> b!4857153 m!5854902))

(assert (=> b!4857122 d!1558959))

(declare-fun b!4857175 () Bool)

(declare-fun e!3036668 () Bool)

(declare-fun e!3036667 () Bool)

(assert (=> b!4857175 (= e!3036668 e!3036667)))

(declare-fun res!2073537 () Bool)

(assert (=> b!4857175 (=> (not res!2073537) (not e!3036667))))

(declare-fun height!1907 (Conc!14528) Int)

(assert (=> b!4857175 (= res!2073537 (<= (- 1) (- (height!1907 (left!40512 t!4677)) (height!1907 (right!40842 t!4677)))))))

(declare-fun b!4857176 () Bool)

(declare-fun res!2073535 () Bool)

(assert (=> b!4857176 (=> (not res!2073535) (not e!3036667))))

(assert (=> b!4857176 (= res!2073535 (<= (- (height!1907 (left!40512 t!4677)) (height!1907 (right!40842 t!4677))) 1))))

(declare-fun d!1558961 () Bool)

(declare-fun res!2073538 () Bool)

(assert (=> d!1558961 (=> res!2073538 e!3036668)))

(assert (=> d!1558961 (= res!2073538 (not ((_ is Node!14528) t!4677)))))

(assert (=> d!1558961 (= (isBalanced!3934 t!4677) e!3036668)))

(declare-fun b!4857177 () Bool)

(assert (=> b!4857177 (= e!3036667 (not (isEmpty!29827 (right!40842 t!4677))))))

(declare-fun b!4857178 () Bool)

(declare-fun res!2073540 () Bool)

(assert (=> b!4857178 (=> (not res!2073540) (not e!3036667))))

(assert (=> b!4857178 (= res!2073540 (not (isEmpty!29827 (left!40512 t!4677))))))

(declare-fun b!4857179 () Bool)

(declare-fun res!2073536 () Bool)

(assert (=> b!4857179 (=> (not res!2073536) (not e!3036667))))

(assert (=> b!4857179 (= res!2073536 (isBalanced!3934 (right!40842 t!4677)))))

(declare-fun b!4857180 () Bool)

(declare-fun res!2073539 () Bool)

(assert (=> b!4857180 (=> (not res!2073539) (not e!3036667))))

(assert (=> b!4857180 (= res!2073539 (isBalanced!3934 (left!40512 t!4677)))))

(assert (= (and d!1558961 (not res!2073538)) b!4857175))

(assert (= (and b!4857175 res!2073537) b!4857176))

(assert (= (and b!4857176 res!2073535) b!4857180))

(assert (= (and b!4857180 res!2073539) b!4857179))

(assert (= (and b!4857179 res!2073536) b!4857178))

(assert (= (and b!4857178 res!2073540) b!4857177))

(declare-fun m!5854910 () Bool)

(assert (=> b!4857179 m!5854910))

(declare-fun m!5854912 () Bool)

(assert (=> b!4857180 m!5854912))

(declare-fun m!5854914 () Bool)

(assert (=> b!4857175 m!5854914))

(declare-fun m!5854916 () Bool)

(assert (=> b!4857175 m!5854916))

(assert (=> b!4857176 m!5854914))

(assert (=> b!4857176 m!5854916))

(declare-fun m!5854918 () Bool)

(assert (=> b!4857178 m!5854918))

(declare-fun m!5854920 () Bool)

(assert (=> b!4857177 m!5854920))

(assert (=> start!507446 d!1558961))

(declare-fun d!1558967 () Bool)

(declare-fun c!826253 () Bool)

(assert (=> d!1558967 (= c!826253 ((_ is Node!14528) t!4677))))

(declare-fun e!3036669 () Bool)

(assert (=> d!1558967 (= (inv!71575 t!4677) e!3036669)))

(declare-fun b!4857181 () Bool)

(assert (=> b!4857181 (= e!3036669 (inv!71576 t!4677))))

(declare-fun b!4857182 () Bool)

(declare-fun e!3036670 () Bool)

(assert (=> b!4857182 (= e!3036669 e!3036670)))

(declare-fun res!2073541 () Bool)

(assert (=> b!4857182 (= res!2073541 (not ((_ is Leaf!24207) t!4677)))))

(assert (=> b!4857182 (=> res!2073541 e!3036670)))

(declare-fun b!4857183 () Bool)

(assert (=> b!4857183 (= e!3036670 (inv!71577 t!4677))))

(assert (= (and d!1558967 c!826253) b!4857181))

(assert (= (and d!1558967 (not c!826253)) b!4857182))

(assert (= (and b!4857182 (not res!2073541)) b!4857183))

(declare-fun m!5854922 () Bool)

(assert (=> b!4857181 m!5854922))

(declare-fun m!5854924 () Bool)

(assert (=> b!4857183 m!5854924))

(assert (=> start!507446 d!1558967))

(declare-fun d!1558969 () Bool)

(declare-fun lt!1991587 () T!98630)

(declare-fun list!17418 (IArray!29117) List!55872)

(assert (=> d!1558969 (= lt!1991587 (last!400 (list!17418 (xs!17834 t!4677))))))

(declare-fun choose!35560 (IArray!29117) T!98630)

(assert (=> d!1558969 (= lt!1991587 (choose!35560 (xs!17834 t!4677)))))

(declare-fun size!36725 (IArray!29117) Int)

(assert (=> d!1558969 (> (size!36725 (xs!17834 t!4677)) 0)))

(assert (=> d!1558969 (= (last!399 (xs!17834 t!4677)) lt!1991587)))

(declare-fun bs!1173771 () Bool)

(assert (= bs!1173771 d!1558969))

(declare-fun m!5854934 () Bool)

(assert (=> bs!1173771 m!5854934))

(assert (=> bs!1173771 m!5854934))

(declare-fun m!5854936 () Bool)

(assert (=> bs!1173771 m!5854936))

(declare-fun m!5854938 () Bool)

(assert (=> bs!1173771 m!5854938))

(declare-fun m!5854940 () Bool)

(assert (=> bs!1173771 m!5854940))

(assert (=> b!4857121 d!1558969))

(declare-fun d!1558973 () Bool)

(declare-fun lt!1991593 () T!98630)

(declare-fun contains!19363 (List!55872 T!98630) Bool)

(assert (=> d!1558973 (contains!19363 (list!17416 t!4677) lt!1991593)))

(declare-fun e!3036676 () T!98630)

(assert (=> d!1558973 (= lt!1991593 e!3036676)))

(declare-fun c!826259 () Bool)

(assert (=> d!1558973 (= c!826259 (and ((_ is Cons!55748) (list!17416 t!4677)) ((_ is Nil!55748) (t!363444 (list!17416 t!4677)))))))

(declare-fun isEmpty!29829 (List!55872) Bool)

(assert (=> d!1558973 (not (isEmpty!29829 (list!17416 t!4677)))))

(assert (=> d!1558973 (= (last!400 (list!17416 t!4677)) lt!1991593)))

(declare-fun b!4857194 () Bool)

(assert (=> b!4857194 (= e!3036676 (h!62196 (list!17416 t!4677)))))

(declare-fun b!4857195 () Bool)

(assert (=> b!4857195 (= e!3036676 (last!400 (t!363444 (list!17416 t!4677))))))

(assert (= (and d!1558973 c!826259) b!4857194))

(assert (= (and d!1558973 (not c!826259)) b!4857195))

(assert (=> d!1558973 m!5854866))

(declare-fun m!5854948 () Bool)

(assert (=> d!1558973 m!5854948))

(assert (=> d!1558973 m!5854866))

(declare-fun m!5854950 () Bool)

(assert (=> d!1558973 m!5854950))

(declare-fun m!5854952 () Bool)

(assert (=> b!4857195 m!5854952))

(assert (=> b!4857121 d!1558973))

(declare-fun b!4857225 () Bool)

(declare-fun e!3036692 () List!55872)

(declare-fun ++!12133 (List!55872 List!55872) List!55872)

(assert (=> b!4857225 (= e!3036692 (++!12133 (list!17416 (left!40512 t!4677)) (list!17416 (right!40842 t!4677))))))

(declare-fun b!4857223 () Bool)

(declare-fun e!3036691 () List!55872)

(assert (=> b!4857223 (= e!3036691 e!3036692)))

(declare-fun c!826273 () Bool)

(assert (=> b!4857223 (= c!826273 ((_ is Leaf!24207) t!4677))))

(declare-fun d!1558977 () Bool)

(declare-fun c!826272 () Bool)

(assert (=> d!1558977 (= c!826272 ((_ is Empty!14528) t!4677))))

(assert (=> d!1558977 (= (list!17416 t!4677) e!3036691)))

(declare-fun b!4857222 () Bool)

(assert (=> b!4857222 (= e!3036691 Nil!55748)))

(declare-fun b!4857224 () Bool)

(assert (=> b!4857224 (= e!3036692 (list!17418 (xs!17834 t!4677)))))

(assert (= (and d!1558977 c!826272) b!4857222))

(assert (= (and d!1558977 (not c!826272)) b!4857223))

(assert (= (and b!4857223 c!826273) b!4857224))

(assert (= (and b!4857223 (not c!826273)) b!4857225))

(declare-fun m!5854968 () Bool)

(assert (=> b!4857225 m!5854968))

(declare-fun m!5854970 () Bool)

(assert (=> b!4857225 m!5854970))

(assert (=> b!4857225 m!5854968))

(assert (=> b!4857225 m!5854970))

(declare-fun m!5854972 () Bool)

(assert (=> b!4857225 m!5854972))

(assert (=> b!4857224 m!5854934))

(assert (=> b!4857121 d!1558977))

(declare-fun d!1558985 () Bool)

(declare-fun lt!1991599 () Bool)

(assert (=> d!1558985 (= lt!1991599 (isEmpty!29829 (list!17416 t!4677)))))

(declare-fun size!36726 (Conc!14528) Int)

(assert (=> d!1558985 (= lt!1991599 (= (size!36726 t!4677) 0))))

(assert (=> d!1558985 (= (isEmpty!29827 t!4677) lt!1991599)))

(declare-fun bs!1173773 () Bool)

(assert (= bs!1173773 d!1558985))

(assert (=> bs!1173773 m!5854866))

(assert (=> bs!1173773 m!5854866))

(assert (=> bs!1173773 m!5854950))

(declare-fun m!5854976 () Bool)

(assert (=> bs!1173773 m!5854976))

(assert (=> b!4857120 d!1558985))

(declare-fun b!4857246 () Bool)

(declare-fun e!3036704 () Bool)

(declare-fun tp_is_empty!35515 () Bool)

(declare-fun tp!1366502 () Bool)

(assert (=> b!4857246 (= e!3036704 (and tp_is_empty!35515 tp!1366502))))

(assert (=> b!4857118 (= tp!1366487 e!3036704)))

(assert (= (and b!4857118 ((_ is Cons!55748) (innerList!14616 (xs!17834 t!4677)))) b!4857246))

(declare-fun tp!1366512 () Bool)

(declare-fun e!3036711 () Bool)

(declare-fun tp!1366513 () Bool)

(declare-fun b!4857258 () Bool)

(assert (=> b!4857258 (= e!3036711 (and (inv!71575 (left!40512 (left!40512 t!4677))) tp!1366513 (inv!71575 (right!40842 (left!40512 t!4677))) tp!1366512))))

(declare-fun b!4857260 () Bool)

(declare-fun e!3036712 () Bool)

(declare-fun tp!1366514 () Bool)

(assert (=> b!4857260 (= e!3036712 tp!1366514)))

(declare-fun b!4857259 () Bool)

(assert (=> b!4857259 (= e!3036711 (and (inv!71574 (xs!17834 (left!40512 t!4677))) e!3036712))))

(assert (=> b!4857122 (= tp!1366486 (and (inv!71575 (left!40512 t!4677)) e!3036711))))

(assert (= (and b!4857122 ((_ is Node!14528) (left!40512 t!4677))) b!4857258))

(assert (= b!4857259 b!4857260))

(assert (= (and b!4857122 ((_ is Leaf!24207) (left!40512 t!4677))) b!4857259))

(declare-fun m!5854990 () Bool)

(assert (=> b!4857258 m!5854990))

(declare-fun m!5854992 () Bool)

(assert (=> b!4857258 m!5854992))

(declare-fun m!5854994 () Bool)

(assert (=> b!4857259 m!5854994))

(assert (=> b!4857122 m!5854870))

(declare-fun b!4857261 () Bool)

(declare-fun tp!1366516 () Bool)

(declare-fun e!3036713 () Bool)

(declare-fun tp!1366515 () Bool)

(assert (=> b!4857261 (= e!3036713 (and (inv!71575 (left!40512 (right!40842 t!4677))) tp!1366516 (inv!71575 (right!40842 (right!40842 t!4677))) tp!1366515))))

(declare-fun b!4857263 () Bool)

(declare-fun e!3036714 () Bool)

(declare-fun tp!1366517 () Bool)

(assert (=> b!4857263 (= e!3036714 tp!1366517)))

(declare-fun b!4857262 () Bool)

(assert (=> b!4857262 (= e!3036713 (and (inv!71574 (xs!17834 (right!40842 t!4677))) e!3036714))))

(assert (=> b!4857122 (= tp!1366485 (and (inv!71575 (right!40842 t!4677)) e!3036713))))

(assert (= (and b!4857122 ((_ is Node!14528) (right!40842 t!4677))) b!4857261))

(assert (= b!4857262 b!4857263))

(assert (= (and b!4857122 ((_ is Leaf!24207) (right!40842 t!4677))) b!4857262))

(declare-fun m!5854996 () Bool)

(assert (=> b!4857261 m!5854996))

(declare-fun m!5854998 () Bool)

(assert (=> b!4857261 m!5854998))

(declare-fun m!5855000 () Bool)

(assert (=> b!4857262 m!5855000))

(assert (=> b!4857122 m!5854872))

(check-sat (not d!1558969) (not b!4857176) (not b!4857195) (not b!4857183) (not b!4857175) (not b!4857263) tp_is_empty!35515 (not b!4857246) (not d!1558985) (not b!4857179) (not b!4857151) (not b!4857150) (not b!4857181) (not b!4857258) (not b!4857177) (not b!4857148) (not b!4857178) (not b!4857153) (not b!4857180) (not b!4857260) (not d!1558973) (not b!4857224) (not b!4857259) (not d!1558953) (not b!4857261) (not b!4857225) (not b!4857262) (not b!4857122))
(check-sat)
