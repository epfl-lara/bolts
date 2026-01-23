; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186752 () Bool)

(assert start!186752)

(declare-fun tp!531477 () Bool)

(declare-fun e!1191527 () Bool)

(declare-fun tp!531479 () Bool)

(declare-datatypes ((T!33144 0))(
  ( (T!33145 (val!5946 Int)) )
))
(declare-datatypes ((List!20763 0))(
  ( (Nil!20681) (Cons!20681 (h!26082 T!33144) (t!172894 List!20763)) )
))
(declare-datatypes ((IArray!13757 0))(
  ( (IArray!13758 (innerList!6936 List!20763)) )
))
(declare-datatypes ((Conc!6876 0))(
  ( (Node!6876 (left!16667 Conc!6876) (right!16997 Conc!6876) (csize!13982 Int) (cheight!7087 Int)) (Leaf!10082 (xs!9758 IArray!13757) (csize!13983 Int)) (Empty!6876) )
))
(declare-fun t!4595 () Conc!6876)

(declare-fun b!1866897 () Bool)

(declare-fun inv!27374 (Conc!6876) Bool)

(assert (=> b!1866897 (= e!1191527 (and (inv!27374 (left!16667 t!4595)) tp!531479 (inv!27374 (right!16997 t!4595)) tp!531477))))

(declare-fun b!1866899 () Bool)

(declare-fun e!1191526 () Bool)

(declare-fun tp!531478 () Bool)

(assert (=> b!1866899 (= e!1191526 tp!531478)))

(declare-fun b!1866900 () Bool)

(declare-fun res!835925 () Bool)

(declare-fun e!1191525 () Bool)

(assert (=> b!1866900 (=> (not res!835925) (not e!1191525))))

(declare-fun isEmpty!12903 (Conc!6876) Bool)

(assert (=> b!1866900 (= res!835925 (not (isEmpty!12903 t!4595)))))

(declare-fun b!1866901 () Bool)

(declare-fun res!835927 () Bool)

(assert (=> b!1866901 (=> (not res!835927) (not e!1191525))))

(get-info :version)

(assert (=> b!1866901 (= res!835927 (and ((_ is Leaf!10082) t!4595) (not (= (csize!13983 t!4595) 1))))))

(declare-fun b!1866902 () Bool)

(declare-fun size!16391 (List!20763) Int)

(declare-fun list!8460 (IArray!13757) List!20763)

(assert (=> b!1866902 (= e!1191525 (<= (size!16391 (list!8460 (xs!9758 t!4595))) 0))))

(declare-fun b!1866898 () Bool)

(declare-fun inv!27375 (IArray!13757) Bool)

(assert (=> b!1866898 (= e!1191527 (and (inv!27375 (xs!9758 t!4595)) e!1191526))))

(declare-fun res!835926 () Bool)

(assert (=> start!186752 (=> (not res!835926) (not e!1191525))))

(declare-fun isBalanced!2177 (Conc!6876) Bool)

(assert (=> start!186752 (= res!835926 (isBalanced!2177 t!4595))))

(assert (=> start!186752 e!1191525))

(assert (=> start!186752 (and (inv!27374 t!4595) e!1191527)))

(assert (= (and start!186752 res!835926) b!1866900))

(assert (= (and b!1866900 res!835925) b!1866901))

(assert (= (and b!1866901 res!835927) b!1866902))

(assert (= (and start!186752 ((_ is Node!6876) t!4595)) b!1866897))

(assert (= b!1866898 b!1866899))

(assert (= (and start!186752 ((_ is Leaf!10082) t!4595)) b!1866898))

(declare-fun m!2292135 () Bool)

(assert (=> b!1866900 m!2292135))

(declare-fun m!2292137 () Bool)

(assert (=> start!186752 m!2292137))

(declare-fun m!2292139 () Bool)

(assert (=> start!186752 m!2292139))

(declare-fun m!2292141 () Bool)

(assert (=> b!1866902 m!2292141))

(assert (=> b!1866902 m!2292141))

(declare-fun m!2292143 () Bool)

(assert (=> b!1866902 m!2292143))

(declare-fun m!2292145 () Bool)

(assert (=> b!1866897 m!2292145))

(declare-fun m!2292147 () Bool)

(assert (=> b!1866897 m!2292147))

(declare-fun m!2292149 () Bool)

(assert (=> b!1866898 m!2292149))

(check-sat (not b!1866897) (not start!186752) (not b!1866900) (not b!1866899) (not b!1866902) (not b!1866898))
(check-sat)
(get-model)

(declare-fun d!570334 () Bool)

(declare-fun lt!718662 () Bool)

(declare-fun isEmpty!12904 (List!20763) Bool)

(declare-fun list!8461 (Conc!6876) List!20763)

(assert (=> d!570334 (= lt!718662 (isEmpty!12904 (list!8461 t!4595)))))

(declare-fun size!16392 (Conc!6876) Int)

(assert (=> d!570334 (= lt!718662 (= (size!16392 t!4595) 0))))

(assert (=> d!570334 (= (isEmpty!12903 t!4595) lt!718662)))

(declare-fun bs!411768 () Bool)

(assert (= bs!411768 d!570334))

(declare-fun m!2292151 () Bool)

(assert (=> bs!411768 m!2292151))

(assert (=> bs!411768 m!2292151))

(declare-fun m!2292153 () Bool)

(assert (=> bs!411768 m!2292153))

(declare-fun m!2292155 () Bool)

(assert (=> bs!411768 m!2292155))

(assert (=> b!1866900 d!570334))

(declare-fun b!1866921 () Bool)

(declare-fun res!835940 () Bool)

(declare-fun e!1191535 () Bool)

(assert (=> b!1866921 (=> (not res!835940) (not e!1191535))))

(assert (=> b!1866921 (= res!835940 (isBalanced!2177 (left!16667 t!4595)))))

(declare-fun b!1866922 () Bool)

(declare-fun e!1191536 () Bool)

(assert (=> b!1866922 (= e!1191536 e!1191535)))

(declare-fun res!835944 () Bool)

(assert (=> b!1866922 (=> (not res!835944) (not e!1191535))))

(declare-fun height!1062 (Conc!6876) Int)

(assert (=> b!1866922 (= res!835944 (<= (- 1) (- (height!1062 (left!16667 t!4595)) (height!1062 (right!16997 t!4595)))))))

(declare-fun b!1866923 () Bool)

(declare-fun res!835941 () Bool)

(assert (=> b!1866923 (=> (not res!835941) (not e!1191535))))

(assert (=> b!1866923 (= res!835941 (<= (- (height!1062 (left!16667 t!4595)) (height!1062 (right!16997 t!4595))) 1))))

(declare-fun b!1866924 () Bool)

(declare-fun res!835945 () Bool)

(assert (=> b!1866924 (=> (not res!835945) (not e!1191535))))

(assert (=> b!1866924 (= res!835945 (isBalanced!2177 (right!16997 t!4595)))))

(declare-fun d!570338 () Bool)

(declare-fun res!835943 () Bool)

(assert (=> d!570338 (=> res!835943 e!1191536)))

(assert (=> d!570338 (= res!835943 (not ((_ is Node!6876) t!4595)))))

(assert (=> d!570338 (= (isBalanced!2177 t!4595) e!1191536)))

(declare-fun b!1866925 () Bool)

(declare-fun res!835942 () Bool)

(assert (=> b!1866925 (=> (not res!835942) (not e!1191535))))

(assert (=> b!1866925 (= res!835942 (not (isEmpty!12903 (left!16667 t!4595))))))

(declare-fun b!1866926 () Bool)

(assert (=> b!1866926 (= e!1191535 (not (isEmpty!12903 (right!16997 t!4595))))))

(assert (= (and d!570338 (not res!835943)) b!1866922))

(assert (= (and b!1866922 res!835944) b!1866923))

(assert (= (and b!1866923 res!835941) b!1866921))

(assert (= (and b!1866921 res!835940) b!1866924))

(assert (= (and b!1866924 res!835945) b!1866925))

(assert (= (and b!1866925 res!835942) b!1866926))

(declare-fun m!2292159 () Bool)

(assert (=> b!1866921 m!2292159))

(declare-fun m!2292161 () Bool)

(assert (=> b!1866924 m!2292161))

(declare-fun m!2292163 () Bool)

(assert (=> b!1866922 m!2292163))

(declare-fun m!2292165 () Bool)

(assert (=> b!1866922 m!2292165))

(declare-fun m!2292167 () Bool)

(assert (=> b!1866926 m!2292167))

(declare-fun m!2292169 () Bool)

(assert (=> b!1866925 m!2292169))

(assert (=> b!1866923 m!2292163))

(assert (=> b!1866923 m!2292165))

(assert (=> start!186752 d!570338))

(declare-fun d!570344 () Bool)

(declare-fun c!304109 () Bool)

(assert (=> d!570344 (= c!304109 ((_ is Node!6876) t!4595))))

(declare-fun e!1191541 () Bool)

(assert (=> d!570344 (= (inv!27374 t!4595) e!1191541)))

(declare-fun b!1866933 () Bool)

(declare-fun inv!27376 (Conc!6876) Bool)

(assert (=> b!1866933 (= e!1191541 (inv!27376 t!4595))))

(declare-fun b!1866934 () Bool)

(declare-fun e!1191542 () Bool)

(assert (=> b!1866934 (= e!1191541 e!1191542)))

(declare-fun res!835948 () Bool)

(assert (=> b!1866934 (= res!835948 (not ((_ is Leaf!10082) t!4595)))))

(assert (=> b!1866934 (=> res!835948 e!1191542)))

(declare-fun b!1866935 () Bool)

(declare-fun inv!27377 (Conc!6876) Bool)

(assert (=> b!1866935 (= e!1191542 (inv!27377 t!4595))))

(assert (= (and d!570344 c!304109) b!1866933))

(assert (= (and d!570344 (not c!304109)) b!1866934))

(assert (= (and b!1866934 (not res!835948)) b!1866935))

(declare-fun m!2292177 () Bool)

(assert (=> b!1866933 m!2292177))

(declare-fun m!2292179 () Bool)

(assert (=> b!1866935 m!2292179))

(assert (=> start!186752 d!570344))

(declare-fun d!570348 () Bool)

(declare-fun lt!718671 () Int)

(assert (=> d!570348 (>= lt!718671 0)))

(declare-fun e!1191545 () Int)

(assert (=> d!570348 (= lt!718671 e!1191545)))

(declare-fun c!304112 () Bool)

(assert (=> d!570348 (= c!304112 ((_ is Nil!20681) (list!8460 (xs!9758 t!4595))))))

(assert (=> d!570348 (= (size!16391 (list!8460 (xs!9758 t!4595))) lt!718671)))

(declare-fun b!1866940 () Bool)

(assert (=> b!1866940 (= e!1191545 0)))

(declare-fun b!1866941 () Bool)

(assert (=> b!1866941 (= e!1191545 (+ 1 (size!16391 (t!172894 (list!8460 (xs!9758 t!4595))))))))

(assert (= (and d!570348 c!304112) b!1866940))

(assert (= (and d!570348 (not c!304112)) b!1866941))

(declare-fun m!2292181 () Bool)

(assert (=> b!1866941 m!2292181))

(assert (=> b!1866902 d!570348))

(declare-fun d!570350 () Bool)

(assert (=> d!570350 (= (list!8460 (xs!9758 t!4595)) (innerList!6936 (xs!9758 t!4595)))))

(assert (=> b!1866902 d!570350))

(declare-fun d!570352 () Bool)

(assert (=> d!570352 (= (inv!27375 (xs!9758 t!4595)) (<= (size!16391 (innerList!6936 (xs!9758 t!4595))) 2147483647))))

(declare-fun bs!411770 () Bool)

(assert (= bs!411770 d!570352))

(declare-fun m!2292183 () Bool)

(assert (=> bs!411770 m!2292183))

(assert (=> b!1866898 d!570352))

(declare-fun d!570354 () Bool)

(declare-fun c!304113 () Bool)

(assert (=> d!570354 (= c!304113 ((_ is Node!6876) (left!16667 t!4595)))))

(declare-fun e!1191546 () Bool)

(assert (=> d!570354 (= (inv!27374 (left!16667 t!4595)) e!1191546)))

(declare-fun b!1866942 () Bool)

(assert (=> b!1866942 (= e!1191546 (inv!27376 (left!16667 t!4595)))))

(declare-fun b!1866943 () Bool)

(declare-fun e!1191547 () Bool)

(assert (=> b!1866943 (= e!1191546 e!1191547)))

(declare-fun res!835949 () Bool)

(assert (=> b!1866943 (= res!835949 (not ((_ is Leaf!10082) (left!16667 t!4595))))))

(assert (=> b!1866943 (=> res!835949 e!1191547)))

(declare-fun b!1866944 () Bool)

(assert (=> b!1866944 (= e!1191547 (inv!27377 (left!16667 t!4595)))))

(assert (= (and d!570354 c!304113) b!1866942))

(assert (= (and d!570354 (not c!304113)) b!1866943))

(assert (= (and b!1866943 (not res!835949)) b!1866944))

(declare-fun m!2292185 () Bool)

(assert (=> b!1866942 m!2292185))

(declare-fun m!2292187 () Bool)

(assert (=> b!1866944 m!2292187))

(assert (=> b!1866897 d!570354))

(declare-fun d!570356 () Bool)

(declare-fun c!304114 () Bool)

(assert (=> d!570356 (= c!304114 ((_ is Node!6876) (right!16997 t!4595)))))

(declare-fun e!1191548 () Bool)

(assert (=> d!570356 (= (inv!27374 (right!16997 t!4595)) e!1191548)))

(declare-fun b!1866945 () Bool)

(assert (=> b!1866945 (= e!1191548 (inv!27376 (right!16997 t!4595)))))

(declare-fun b!1866946 () Bool)

(declare-fun e!1191549 () Bool)

(assert (=> b!1866946 (= e!1191548 e!1191549)))

(declare-fun res!835950 () Bool)

(assert (=> b!1866946 (= res!835950 (not ((_ is Leaf!10082) (right!16997 t!4595))))))

(assert (=> b!1866946 (=> res!835950 e!1191549)))

(declare-fun b!1866947 () Bool)

(assert (=> b!1866947 (= e!1191549 (inv!27377 (right!16997 t!4595)))))

(assert (= (and d!570356 c!304114) b!1866945))

(assert (= (and d!570356 (not c!304114)) b!1866946))

(assert (= (and b!1866946 (not res!835950)) b!1866947))

(declare-fun m!2292189 () Bool)

(assert (=> b!1866945 m!2292189))

(declare-fun m!2292191 () Bool)

(assert (=> b!1866947 m!2292191))

(assert (=> b!1866897 d!570356))

(declare-fun b!1866952 () Bool)

(declare-fun e!1191552 () Bool)

(declare-fun tp_is_empty!8669 () Bool)

(declare-fun tp!531482 () Bool)

(assert (=> b!1866952 (= e!1191552 (and tp_is_empty!8669 tp!531482))))

(assert (=> b!1866899 (= tp!531478 e!1191552)))

(assert (= (and b!1866899 ((_ is Cons!20681) (innerList!6936 (xs!9758 t!4595)))) b!1866952))

(declare-fun b!1866961 () Bool)

(declare-fun tp!531489 () Bool)

(declare-fun e!1191557 () Bool)

(declare-fun tp!531491 () Bool)

(assert (=> b!1866961 (= e!1191557 (and (inv!27374 (left!16667 (left!16667 t!4595))) tp!531491 (inv!27374 (right!16997 (left!16667 t!4595))) tp!531489))))

(declare-fun b!1866963 () Bool)

(declare-fun e!1191558 () Bool)

(declare-fun tp!531490 () Bool)

(assert (=> b!1866963 (= e!1191558 tp!531490)))

(declare-fun b!1866962 () Bool)

(assert (=> b!1866962 (= e!1191557 (and (inv!27375 (xs!9758 (left!16667 t!4595))) e!1191558))))

(assert (=> b!1866897 (= tp!531479 (and (inv!27374 (left!16667 t!4595)) e!1191557))))

(assert (= (and b!1866897 ((_ is Node!6876) (left!16667 t!4595))) b!1866961))

(assert (= b!1866962 b!1866963))

(assert (= (and b!1866897 ((_ is Leaf!10082) (left!16667 t!4595))) b!1866962))

(declare-fun m!2292193 () Bool)

(assert (=> b!1866961 m!2292193))

(declare-fun m!2292195 () Bool)

(assert (=> b!1866961 m!2292195))

(declare-fun m!2292197 () Bool)

(assert (=> b!1866962 m!2292197))

(assert (=> b!1866897 m!2292145))

(declare-fun b!1866964 () Bool)

(declare-fun e!1191559 () Bool)

(declare-fun tp!531494 () Bool)

(declare-fun tp!531492 () Bool)

(assert (=> b!1866964 (= e!1191559 (and (inv!27374 (left!16667 (right!16997 t!4595))) tp!531494 (inv!27374 (right!16997 (right!16997 t!4595))) tp!531492))))

(declare-fun b!1866966 () Bool)

(declare-fun e!1191560 () Bool)

(declare-fun tp!531493 () Bool)

(assert (=> b!1866966 (= e!1191560 tp!531493)))

(declare-fun b!1866965 () Bool)

(assert (=> b!1866965 (= e!1191559 (and (inv!27375 (xs!9758 (right!16997 t!4595))) e!1191560))))

(assert (=> b!1866897 (= tp!531477 (and (inv!27374 (right!16997 t!4595)) e!1191559))))

(assert (= (and b!1866897 ((_ is Node!6876) (right!16997 t!4595))) b!1866964))

(assert (= b!1866965 b!1866966))

(assert (= (and b!1866897 ((_ is Leaf!10082) (right!16997 t!4595))) b!1866965))

(declare-fun m!2292199 () Bool)

(assert (=> b!1866964 m!2292199))

(declare-fun m!2292201 () Bool)

(assert (=> b!1866964 m!2292201))

(declare-fun m!2292203 () Bool)

(assert (=> b!1866965 m!2292203))

(assert (=> b!1866897 m!2292147))

(check-sat (not b!1866897) (not b!1866921) (not b!1866935) (not b!1866923) (not b!1866964) (not b!1866926) (not b!1866945) (not b!1866947) (not b!1866942) (not b!1866966) (not b!1866962) (not b!1866944) (not b!1866924) (not b!1866961) (not b!1866941) (not b!1866925) (not b!1866952) tp_is_empty!8669 (not b!1866963) (not b!1866965) (not b!1866922) (not d!570352) (not d!570334) (not b!1866933))
(check-sat)
(get-model)

(declare-fun d!570366 () Bool)

(assert (=> d!570366 (= (isEmpty!12904 (list!8461 t!4595)) ((_ is Nil!20681) (list!8461 t!4595)))))

(assert (=> d!570334 d!570366))

(declare-fun b!1867028 () Bool)

(declare-fun e!1191592 () List!20763)

(declare-fun e!1191593 () List!20763)

(assert (=> b!1867028 (= e!1191592 e!1191593)))

(declare-fun c!304125 () Bool)

(assert (=> b!1867028 (= c!304125 ((_ is Leaf!10082) t!4595))))

(declare-fun b!1867027 () Bool)

(assert (=> b!1867027 (= e!1191592 Nil!20681)))

(declare-fun d!570368 () Bool)

(declare-fun c!304124 () Bool)

(assert (=> d!570368 (= c!304124 ((_ is Empty!6876) t!4595))))

(assert (=> d!570368 (= (list!8461 t!4595) e!1191592)))

(declare-fun b!1867029 () Bool)

(assert (=> b!1867029 (= e!1191593 (list!8460 (xs!9758 t!4595)))))

(declare-fun b!1867030 () Bool)

(declare-fun ++!5603 (List!20763 List!20763) List!20763)

(assert (=> b!1867030 (= e!1191593 (++!5603 (list!8461 (left!16667 t!4595)) (list!8461 (right!16997 t!4595))))))

(assert (= (and d!570368 c!304124) b!1867027))

(assert (= (and d!570368 (not c!304124)) b!1867028))

(assert (= (and b!1867028 c!304125) b!1867029))

(assert (= (and b!1867028 (not c!304125)) b!1867030))

(assert (=> b!1867029 m!2292141))

(declare-fun m!2292243 () Bool)

(assert (=> b!1867030 m!2292243))

(declare-fun m!2292245 () Bool)

(assert (=> b!1867030 m!2292245))

(assert (=> b!1867030 m!2292243))

(assert (=> b!1867030 m!2292245))

(declare-fun m!2292247 () Bool)

(assert (=> b!1867030 m!2292247))

(assert (=> d!570334 d!570368))

(declare-fun d!570370 () Bool)

(declare-fun lt!718674 () Int)

(assert (=> d!570370 (= lt!718674 (size!16391 (list!8461 t!4595)))))

(assert (=> d!570370 (= lt!718674 (ite ((_ is Empty!6876) t!4595) 0 (ite ((_ is Leaf!10082) t!4595) (csize!13983 t!4595) (csize!13982 t!4595))))))

(assert (=> d!570370 (= (size!16392 t!4595) lt!718674)))

(declare-fun bs!411772 () Bool)

(assert (= bs!411772 d!570370))

(assert (=> bs!411772 m!2292151))

(assert (=> bs!411772 m!2292151))

(declare-fun m!2292249 () Bool)

(assert (=> bs!411772 m!2292249))

(assert (=> d!570334 d!570370))

(declare-fun d!570372 () Bool)

(declare-fun res!835978 () Bool)

(declare-fun e!1191596 () Bool)

(assert (=> d!570372 (=> (not res!835978) (not e!1191596))))

(assert (=> d!570372 (= res!835978 (<= (size!16391 (list!8460 (xs!9758 (right!16997 t!4595)))) 512))))

(assert (=> d!570372 (= (inv!27377 (right!16997 t!4595)) e!1191596)))

(declare-fun b!1867035 () Bool)

(declare-fun res!835979 () Bool)

(assert (=> b!1867035 (=> (not res!835979) (not e!1191596))))

(assert (=> b!1867035 (= res!835979 (= (csize!13983 (right!16997 t!4595)) (size!16391 (list!8460 (xs!9758 (right!16997 t!4595))))))))

(declare-fun b!1867036 () Bool)

(assert (=> b!1867036 (= e!1191596 (and (> (csize!13983 (right!16997 t!4595)) 0) (<= (csize!13983 (right!16997 t!4595)) 512)))))

(assert (= (and d!570372 res!835978) b!1867035))

(assert (= (and b!1867035 res!835979) b!1867036))

(declare-fun m!2292251 () Bool)

(assert (=> d!570372 m!2292251))

(assert (=> d!570372 m!2292251))

(declare-fun m!2292253 () Bool)

(assert (=> d!570372 m!2292253))

(assert (=> b!1867035 m!2292251))

(assert (=> b!1867035 m!2292251))

(assert (=> b!1867035 m!2292253))

(assert (=> b!1866947 d!570372))

(declare-fun d!570374 () Bool)

(assert (=> d!570374 (= (height!1062 (left!16667 t!4595)) (ite ((_ is Empty!6876) (left!16667 t!4595)) 0 (ite ((_ is Leaf!10082) (left!16667 t!4595)) 1 (cheight!7087 (left!16667 t!4595)))))))

(assert (=> b!1866922 d!570374))

(declare-fun d!570376 () Bool)

(assert (=> d!570376 (= (height!1062 (right!16997 t!4595)) (ite ((_ is Empty!6876) (right!16997 t!4595)) 0 (ite ((_ is Leaf!10082) (right!16997 t!4595)) 1 (cheight!7087 (right!16997 t!4595)))))))

(assert (=> b!1866922 d!570376))

(declare-fun d!570378 () Bool)

(declare-fun res!835986 () Bool)

(declare-fun e!1191599 () Bool)

(assert (=> d!570378 (=> (not res!835986) (not e!1191599))))

(assert (=> d!570378 (= res!835986 (= (csize!13982 t!4595) (+ (size!16392 (left!16667 t!4595)) (size!16392 (right!16997 t!4595)))))))

(assert (=> d!570378 (= (inv!27376 t!4595) e!1191599)))

(declare-fun b!1867043 () Bool)

(declare-fun res!835987 () Bool)

(assert (=> b!1867043 (=> (not res!835987) (not e!1191599))))

(assert (=> b!1867043 (= res!835987 (and (not (= (left!16667 t!4595) Empty!6876)) (not (= (right!16997 t!4595) Empty!6876))))))

(declare-fun b!1867044 () Bool)

(declare-fun res!835988 () Bool)

(assert (=> b!1867044 (=> (not res!835988) (not e!1191599))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1867044 (= res!835988 (= (cheight!7087 t!4595) (+ (max!0 (height!1062 (left!16667 t!4595)) (height!1062 (right!16997 t!4595))) 1)))))

(declare-fun b!1867045 () Bool)

(assert (=> b!1867045 (= e!1191599 (<= 0 (cheight!7087 t!4595)))))

(assert (= (and d!570378 res!835986) b!1867043))

(assert (= (and b!1867043 res!835987) b!1867044))

(assert (= (and b!1867044 res!835988) b!1867045))

(declare-fun m!2292255 () Bool)

(assert (=> d!570378 m!2292255))

(declare-fun m!2292257 () Bool)

(assert (=> d!570378 m!2292257))

(assert (=> b!1867044 m!2292163))

(assert (=> b!1867044 m!2292165))

(assert (=> b!1867044 m!2292163))

(assert (=> b!1867044 m!2292165))

(declare-fun m!2292259 () Bool)

(assert (=> b!1867044 m!2292259))

(assert (=> b!1866933 d!570378))

(declare-fun b!1867046 () Bool)

(declare-fun res!835989 () Bool)

(declare-fun e!1191600 () Bool)

(assert (=> b!1867046 (=> (not res!835989) (not e!1191600))))

(assert (=> b!1867046 (= res!835989 (isBalanced!2177 (left!16667 (right!16997 t!4595))))))

(declare-fun b!1867047 () Bool)

(declare-fun e!1191601 () Bool)

(assert (=> b!1867047 (= e!1191601 e!1191600)))

(declare-fun res!835993 () Bool)

(assert (=> b!1867047 (=> (not res!835993) (not e!1191600))))

(assert (=> b!1867047 (= res!835993 (<= (- 1) (- (height!1062 (left!16667 (right!16997 t!4595))) (height!1062 (right!16997 (right!16997 t!4595))))))))

(declare-fun b!1867048 () Bool)

(declare-fun res!835990 () Bool)

(assert (=> b!1867048 (=> (not res!835990) (not e!1191600))))

(assert (=> b!1867048 (= res!835990 (<= (- (height!1062 (left!16667 (right!16997 t!4595))) (height!1062 (right!16997 (right!16997 t!4595)))) 1))))

(declare-fun b!1867049 () Bool)

(declare-fun res!835994 () Bool)

(assert (=> b!1867049 (=> (not res!835994) (not e!1191600))))

(assert (=> b!1867049 (= res!835994 (isBalanced!2177 (right!16997 (right!16997 t!4595))))))

(declare-fun d!570380 () Bool)

(declare-fun res!835992 () Bool)

(assert (=> d!570380 (=> res!835992 e!1191601)))

(assert (=> d!570380 (= res!835992 (not ((_ is Node!6876) (right!16997 t!4595))))))

(assert (=> d!570380 (= (isBalanced!2177 (right!16997 t!4595)) e!1191601)))

(declare-fun b!1867050 () Bool)

(declare-fun res!835991 () Bool)

(assert (=> b!1867050 (=> (not res!835991) (not e!1191600))))

(assert (=> b!1867050 (= res!835991 (not (isEmpty!12903 (left!16667 (right!16997 t!4595)))))))

(declare-fun b!1867051 () Bool)

(assert (=> b!1867051 (= e!1191600 (not (isEmpty!12903 (right!16997 (right!16997 t!4595)))))))

(assert (= (and d!570380 (not res!835992)) b!1867047))

(assert (= (and b!1867047 res!835993) b!1867048))

(assert (= (and b!1867048 res!835990) b!1867046))

(assert (= (and b!1867046 res!835989) b!1867049))

(assert (= (and b!1867049 res!835994) b!1867050))

(assert (= (and b!1867050 res!835991) b!1867051))

(declare-fun m!2292261 () Bool)

(assert (=> b!1867046 m!2292261))

(declare-fun m!2292263 () Bool)

(assert (=> b!1867049 m!2292263))

(declare-fun m!2292265 () Bool)

(assert (=> b!1867047 m!2292265))

(declare-fun m!2292267 () Bool)

(assert (=> b!1867047 m!2292267))

(declare-fun m!2292269 () Bool)

(assert (=> b!1867051 m!2292269))

(declare-fun m!2292271 () Bool)

(assert (=> b!1867050 m!2292271))

(assert (=> b!1867048 m!2292265))

(assert (=> b!1867048 m!2292267))

(assert (=> b!1866924 d!570380))

(assert (=> b!1866923 d!570374))

(assert (=> b!1866923 d!570376))

(declare-fun d!570382 () Bool)

(assert (=> d!570382 (= (inv!27375 (xs!9758 (left!16667 t!4595))) (<= (size!16391 (innerList!6936 (xs!9758 (left!16667 t!4595)))) 2147483647))))

(declare-fun bs!411773 () Bool)

(assert (= bs!411773 d!570382))

(declare-fun m!2292273 () Bool)

(assert (=> bs!411773 m!2292273))

(assert (=> b!1866962 d!570382))

(declare-fun b!1867052 () Bool)

(declare-fun res!835995 () Bool)

(declare-fun e!1191602 () Bool)

(assert (=> b!1867052 (=> (not res!835995) (not e!1191602))))

(assert (=> b!1867052 (= res!835995 (isBalanced!2177 (left!16667 (left!16667 t!4595))))))

(declare-fun b!1867053 () Bool)

(declare-fun e!1191603 () Bool)

(assert (=> b!1867053 (= e!1191603 e!1191602)))

(declare-fun res!835999 () Bool)

(assert (=> b!1867053 (=> (not res!835999) (not e!1191602))))

(assert (=> b!1867053 (= res!835999 (<= (- 1) (- (height!1062 (left!16667 (left!16667 t!4595))) (height!1062 (right!16997 (left!16667 t!4595))))))))

(declare-fun b!1867054 () Bool)

(declare-fun res!835996 () Bool)

(assert (=> b!1867054 (=> (not res!835996) (not e!1191602))))

(assert (=> b!1867054 (= res!835996 (<= (- (height!1062 (left!16667 (left!16667 t!4595))) (height!1062 (right!16997 (left!16667 t!4595)))) 1))))

(declare-fun b!1867055 () Bool)

(declare-fun res!836000 () Bool)

(assert (=> b!1867055 (=> (not res!836000) (not e!1191602))))

(assert (=> b!1867055 (= res!836000 (isBalanced!2177 (right!16997 (left!16667 t!4595))))))

(declare-fun d!570384 () Bool)

(declare-fun res!835998 () Bool)

(assert (=> d!570384 (=> res!835998 e!1191603)))

(assert (=> d!570384 (= res!835998 (not ((_ is Node!6876) (left!16667 t!4595))))))

(assert (=> d!570384 (= (isBalanced!2177 (left!16667 t!4595)) e!1191603)))

(declare-fun b!1867056 () Bool)

(declare-fun res!835997 () Bool)

(assert (=> b!1867056 (=> (not res!835997) (not e!1191602))))

(assert (=> b!1867056 (= res!835997 (not (isEmpty!12903 (left!16667 (left!16667 t!4595)))))))

(declare-fun b!1867057 () Bool)

(assert (=> b!1867057 (= e!1191602 (not (isEmpty!12903 (right!16997 (left!16667 t!4595)))))))

(assert (= (and d!570384 (not res!835998)) b!1867053))

(assert (= (and b!1867053 res!835999) b!1867054))

(assert (= (and b!1867054 res!835996) b!1867052))

(assert (= (and b!1867052 res!835995) b!1867055))

(assert (= (and b!1867055 res!836000) b!1867056))

(assert (= (and b!1867056 res!835997) b!1867057))

(declare-fun m!2292275 () Bool)

(assert (=> b!1867052 m!2292275))

(declare-fun m!2292277 () Bool)

(assert (=> b!1867055 m!2292277))

(declare-fun m!2292279 () Bool)

(assert (=> b!1867053 m!2292279))

(declare-fun m!2292281 () Bool)

(assert (=> b!1867053 m!2292281))

(declare-fun m!2292283 () Bool)

(assert (=> b!1867057 m!2292283))

(declare-fun m!2292285 () Bool)

(assert (=> b!1867056 m!2292285))

(assert (=> b!1867054 m!2292279))

(assert (=> b!1867054 m!2292281))

(assert (=> b!1866921 d!570384))

(declare-fun d!570386 () Bool)

(declare-fun res!836001 () Bool)

(declare-fun e!1191604 () Bool)

(assert (=> d!570386 (=> (not res!836001) (not e!1191604))))

(assert (=> d!570386 (= res!836001 (<= (size!16391 (list!8460 (xs!9758 (left!16667 t!4595)))) 512))))

(assert (=> d!570386 (= (inv!27377 (left!16667 t!4595)) e!1191604)))

(declare-fun b!1867058 () Bool)

(declare-fun res!836002 () Bool)

(assert (=> b!1867058 (=> (not res!836002) (not e!1191604))))

(assert (=> b!1867058 (= res!836002 (= (csize!13983 (left!16667 t!4595)) (size!16391 (list!8460 (xs!9758 (left!16667 t!4595))))))))

(declare-fun b!1867059 () Bool)

(assert (=> b!1867059 (= e!1191604 (and (> (csize!13983 (left!16667 t!4595)) 0) (<= (csize!13983 (left!16667 t!4595)) 512)))))

(assert (= (and d!570386 res!836001) b!1867058))

(assert (= (and b!1867058 res!836002) b!1867059))

(declare-fun m!2292287 () Bool)

(assert (=> d!570386 m!2292287))

(assert (=> d!570386 m!2292287))

(declare-fun m!2292289 () Bool)

(assert (=> d!570386 m!2292289))

(assert (=> b!1867058 m!2292287))

(assert (=> b!1867058 m!2292287))

(assert (=> b!1867058 m!2292289))

(assert (=> b!1866944 d!570386))

(declare-fun d!570388 () Bool)

(declare-fun res!836003 () Bool)

(declare-fun e!1191605 () Bool)

(assert (=> d!570388 (=> (not res!836003) (not e!1191605))))

(assert (=> d!570388 (= res!836003 (= (csize!13982 (right!16997 t!4595)) (+ (size!16392 (left!16667 (right!16997 t!4595))) (size!16392 (right!16997 (right!16997 t!4595))))))))

(assert (=> d!570388 (= (inv!27376 (right!16997 t!4595)) e!1191605)))

(declare-fun b!1867060 () Bool)

(declare-fun res!836004 () Bool)

(assert (=> b!1867060 (=> (not res!836004) (not e!1191605))))

(assert (=> b!1867060 (= res!836004 (and (not (= (left!16667 (right!16997 t!4595)) Empty!6876)) (not (= (right!16997 (right!16997 t!4595)) Empty!6876))))))

(declare-fun b!1867061 () Bool)

(declare-fun res!836005 () Bool)

(assert (=> b!1867061 (=> (not res!836005) (not e!1191605))))

(assert (=> b!1867061 (= res!836005 (= (cheight!7087 (right!16997 t!4595)) (+ (max!0 (height!1062 (left!16667 (right!16997 t!4595))) (height!1062 (right!16997 (right!16997 t!4595)))) 1)))))

(declare-fun b!1867062 () Bool)

(assert (=> b!1867062 (= e!1191605 (<= 0 (cheight!7087 (right!16997 t!4595))))))

(assert (= (and d!570388 res!836003) b!1867060))

(assert (= (and b!1867060 res!836004) b!1867061))

(assert (= (and b!1867061 res!836005) b!1867062))

(declare-fun m!2292291 () Bool)

(assert (=> d!570388 m!2292291))

(declare-fun m!2292293 () Bool)

(assert (=> d!570388 m!2292293))

(assert (=> b!1867061 m!2292265))

(assert (=> b!1867061 m!2292267))

(assert (=> b!1867061 m!2292265))

(assert (=> b!1867061 m!2292267))

(declare-fun m!2292295 () Bool)

(assert (=> b!1867061 m!2292295))

(assert (=> b!1866945 d!570388))

(declare-fun d!570390 () Bool)

(declare-fun c!304126 () Bool)

(assert (=> d!570390 (= c!304126 ((_ is Node!6876) (left!16667 (left!16667 t!4595))))))

(declare-fun e!1191606 () Bool)

(assert (=> d!570390 (= (inv!27374 (left!16667 (left!16667 t!4595))) e!1191606)))

(declare-fun b!1867063 () Bool)

(assert (=> b!1867063 (= e!1191606 (inv!27376 (left!16667 (left!16667 t!4595))))))

(declare-fun b!1867064 () Bool)

(declare-fun e!1191607 () Bool)

(assert (=> b!1867064 (= e!1191606 e!1191607)))

(declare-fun res!836006 () Bool)

(assert (=> b!1867064 (= res!836006 (not ((_ is Leaf!10082) (left!16667 (left!16667 t!4595)))))))

(assert (=> b!1867064 (=> res!836006 e!1191607)))

(declare-fun b!1867065 () Bool)

(assert (=> b!1867065 (= e!1191607 (inv!27377 (left!16667 (left!16667 t!4595))))))

(assert (= (and d!570390 c!304126) b!1867063))

(assert (= (and d!570390 (not c!304126)) b!1867064))

(assert (= (and b!1867064 (not res!836006)) b!1867065))

(declare-fun m!2292297 () Bool)

(assert (=> b!1867063 m!2292297))

(declare-fun m!2292299 () Bool)

(assert (=> b!1867065 m!2292299))

(assert (=> b!1866961 d!570390))

(declare-fun d!570392 () Bool)

(declare-fun c!304127 () Bool)

(assert (=> d!570392 (= c!304127 ((_ is Node!6876) (right!16997 (left!16667 t!4595))))))

(declare-fun e!1191608 () Bool)

(assert (=> d!570392 (= (inv!27374 (right!16997 (left!16667 t!4595))) e!1191608)))

(declare-fun b!1867066 () Bool)

(assert (=> b!1867066 (= e!1191608 (inv!27376 (right!16997 (left!16667 t!4595))))))

(declare-fun b!1867067 () Bool)

(declare-fun e!1191609 () Bool)

(assert (=> b!1867067 (= e!1191608 e!1191609)))

(declare-fun res!836007 () Bool)

(assert (=> b!1867067 (= res!836007 (not ((_ is Leaf!10082) (right!16997 (left!16667 t!4595)))))))

(assert (=> b!1867067 (=> res!836007 e!1191609)))

(declare-fun b!1867068 () Bool)

(assert (=> b!1867068 (= e!1191609 (inv!27377 (right!16997 (left!16667 t!4595))))))

(assert (= (and d!570392 c!304127) b!1867066))

(assert (= (and d!570392 (not c!304127)) b!1867067))

(assert (= (and b!1867067 (not res!836007)) b!1867068))

(declare-fun m!2292301 () Bool)

(assert (=> b!1867066 m!2292301))

(declare-fun m!2292303 () Bool)

(assert (=> b!1867068 m!2292303))

(assert (=> b!1866961 d!570392))

(declare-fun d!570394 () Bool)

(declare-fun res!836008 () Bool)

(declare-fun e!1191610 () Bool)

(assert (=> d!570394 (=> (not res!836008) (not e!1191610))))

(assert (=> d!570394 (= res!836008 (= (csize!13982 (left!16667 t!4595)) (+ (size!16392 (left!16667 (left!16667 t!4595))) (size!16392 (right!16997 (left!16667 t!4595))))))))

(assert (=> d!570394 (= (inv!27376 (left!16667 t!4595)) e!1191610)))

(declare-fun b!1867069 () Bool)

(declare-fun res!836009 () Bool)

(assert (=> b!1867069 (=> (not res!836009) (not e!1191610))))

(assert (=> b!1867069 (= res!836009 (and (not (= (left!16667 (left!16667 t!4595)) Empty!6876)) (not (= (right!16997 (left!16667 t!4595)) Empty!6876))))))

(declare-fun b!1867070 () Bool)

(declare-fun res!836010 () Bool)

(assert (=> b!1867070 (=> (not res!836010) (not e!1191610))))

(assert (=> b!1867070 (= res!836010 (= (cheight!7087 (left!16667 t!4595)) (+ (max!0 (height!1062 (left!16667 (left!16667 t!4595))) (height!1062 (right!16997 (left!16667 t!4595)))) 1)))))

(declare-fun b!1867071 () Bool)

(assert (=> b!1867071 (= e!1191610 (<= 0 (cheight!7087 (left!16667 t!4595))))))

(assert (= (and d!570394 res!836008) b!1867069))

(assert (= (and b!1867069 res!836009) b!1867070))

(assert (= (and b!1867070 res!836010) b!1867071))

(declare-fun m!2292305 () Bool)

(assert (=> d!570394 m!2292305))

(declare-fun m!2292307 () Bool)

(assert (=> d!570394 m!2292307))

(assert (=> b!1867070 m!2292279))

(assert (=> b!1867070 m!2292281))

(assert (=> b!1867070 m!2292279))

(assert (=> b!1867070 m!2292281))

(declare-fun m!2292309 () Bool)

(assert (=> b!1867070 m!2292309))

(assert (=> b!1866942 d!570394))

(declare-fun d!570396 () Bool)

(declare-fun lt!718675 () Int)

(assert (=> d!570396 (>= lt!718675 0)))

(declare-fun e!1191611 () Int)

(assert (=> d!570396 (= lt!718675 e!1191611)))

(declare-fun c!304128 () Bool)

(assert (=> d!570396 (= c!304128 ((_ is Nil!20681) (t!172894 (list!8460 (xs!9758 t!4595)))))))

(assert (=> d!570396 (= (size!16391 (t!172894 (list!8460 (xs!9758 t!4595)))) lt!718675)))

(declare-fun b!1867072 () Bool)

(assert (=> b!1867072 (= e!1191611 0)))

(declare-fun b!1867073 () Bool)

(assert (=> b!1867073 (= e!1191611 (+ 1 (size!16391 (t!172894 (t!172894 (list!8460 (xs!9758 t!4595)))))))))

(assert (= (and d!570396 c!304128) b!1867072))

(assert (= (and d!570396 (not c!304128)) b!1867073))

(declare-fun m!2292311 () Bool)

(assert (=> b!1867073 m!2292311))

(assert (=> b!1866941 d!570396))

(declare-fun d!570398 () Bool)

(declare-fun lt!718676 () Bool)

(assert (=> d!570398 (= lt!718676 (isEmpty!12904 (list!8461 (left!16667 t!4595))))))

(assert (=> d!570398 (= lt!718676 (= (size!16392 (left!16667 t!4595)) 0))))

(assert (=> d!570398 (= (isEmpty!12903 (left!16667 t!4595)) lt!718676)))

(declare-fun bs!411774 () Bool)

(assert (= bs!411774 d!570398))

(assert (=> bs!411774 m!2292243))

(assert (=> bs!411774 m!2292243))

(declare-fun m!2292313 () Bool)

(assert (=> bs!411774 m!2292313))

(assert (=> bs!411774 m!2292255))

(assert (=> b!1866925 d!570398))

(declare-fun d!570400 () Bool)

(declare-fun c!304129 () Bool)

(assert (=> d!570400 (= c!304129 ((_ is Node!6876) (left!16667 (right!16997 t!4595))))))

(declare-fun e!1191612 () Bool)

(assert (=> d!570400 (= (inv!27374 (left!16667 (right!16997 t!4595))) e!1191612)))

(declare-fun b!1867074 () Bool)

(assert (=> b!1867074 (= e!1191612 (inv!27376 (left!16667 (right!16997 t!4595))))))

(declare-fun b!1867075 () Bool)

(declare-fun e!1191613 () Bool)

(assert (=> b!1867075 (= e!1191612 e!1191613)))

(declare-fun res!836011 () Bool)

(assert (=> b!1867075 (= res!836011 (not ((_ is Leaf!10082) (left!16667 (right!16997 t!4595)))))))

(assert (=> b!1867075 (=> res!836011 e!1191613)))

(declare-fun b!1867076 () Bool)

(assert (=> b!1867076 (= e!1191613 (inv!27377 (left!16667 (right!16997 t!4595))))))

(assert (= (and d!570400 c!304129) b!1867074))

(assert (= (and d!570400 (not c!304129)) b!1867075))

(assert (= (and b!1867075 (not res!836011)) b!1867076))

(declare-fun m!2292315 () Bool)

(assert (=> b!1867074 m!2292315))

(declare-fun m!2292317 () Bool)

(assert (=> b!1867076 m!2292317))

(assert (=> b!1866964 d!570400))

(declare-fun d!570402 () Bool)

(declare-fun c!304130 () Bool)

(assert (=> d!570402 (= c!304130 ((_ is Node!6876) (right!16997 (right!16997 t!4595))))))

(declare-fun e!1191614 () Bool)

(assert (=> d!570402 (= (inv!27374 (right!16997 (right!16997 t!4595))) e!1191614)))

(declare-fun b!1867077 () Bool)

(assert (=> b!1867077 (= e!1191614 (inv!27376 (right!16997 (right!16997 t!4595))))))

(declare-fun b!1867078 () Bool)

(declare-fun e!1191615 () Bool)

(assert (=> b!1867078 (= e!1191614 e!1191615)))

(declare-fun res!836012 () Bool)

(assert (=> b!1867078 (= res!836012 (not ((_ is Leaf!10082) (right!16997 (right!16997 t!4595)))))))

(assert (=> b!1867078 (=> res!836012 e!1191615)))

(declare-fun b!1867079 () Bool)

(assert (=> b!1867079 (= e!1191615 (inv!27377 (right!16997 (right!16997 t!4595))))))

(assert (= (and d!570402 c!304130) b!1867077))

(assert (= (and d!570402 (not c!304130)) b!1867078))

(assert (= (and b!1867078 (not res!836012)) b!1867079))

(declare-fun m!2292319 () Bool)

(assert (=> b!1867077 m!2292319))

(declare-fun m!2292321 () Bool)

(assert (=> b!1867079 m!2292321))

(assert (=> b!1866964 d!570402))

(declare-fun d!570404 () Bool)

(declare-fun lt!718677 () Int)

(assert (=> d!570404 (>= lt!718677 0)))

(declare-fun e!1191616 () Int)

(assert (=> d!570404 (= lt!718677 e!1191616)))

(declare-fun c!304131 () Bool)

(assert (=> d!570404 (= c!304131 ((_ is Nil!20681) (innerList!6936 (xs!9758 t!4595))))))

(assert (=> d!570404 (= (size!16391 (innerList!6936 (xs!9758 t!4595))) lt!718677)))

(declare-fun b!1867080 () Bool)

(assert (=> b!1867080 (= e!1191616 0)))

(declare-fun b!1867081 () Bool)

(assert (=> b!1867081 (= e!1191616 (+ 1 (size!16391 (t!172894 (innerList!6936 (xs!9758 t!4595))))))))

(assert (= (and d!570404 c!304131) b!1867080))

(assert (= (and d!570404 (not c!304131)) b!1867081))

(declare-fun m!2292323 () Bool)

(assert (=> b!1867081 m!2292323))

(assert (=> d!570352 d!570404))

(declare-fun d!570406 () Bool)

(declare-fun res!836013 () Bool)

(declare-fun e!1191617 () Bool)

(assert (=> d!570406 (=> (not res!836013) (not e!1191617))))

(assert (=> d!570406 (= res!836013 (<= (size!16391 (list!8460 (xs!9758 t!4595))) 512))))

(assert (=> d!570406 (= (inv!27377 t!4595) e!1191617)))

(declare-fun b!1867082 () Bool)

(declare-fun res!836014 () Bool)

(assert (=> b!1867082 (=> (not res!836014) (not e!1191617))))

(assert (=> b!1867082 (= res!836014 (= (csize!13983 t!4595) (size!16391 (list!8460 (xs!9758 t!4595)))))))

(declare-fun b!1867083 () Bool)

(assert (=> b!1867083 (= e!1191617 (and (> (csize!13983 t!4595) 0) (<= (csize!13983 t!4595) 512)))))

(assert (= (and d!570406 res!836013) b!1867082))

(assert (= (and b!1867082 res!836014) b!1867083))

(assert (=> d!570406 m!2292141))

(assert (=> d!570406 m!2292141))

(assert (=> d!570406 m!2292143))

(assert (=> b!1867082 m!2292141))

(assert (=> b!1867082 m!2292141))

(assert (=> b!1867082 m!2292143))

(assert (=> b!1866935 d!570406))

(declare-fun d!570408 () Bool)

(assert (=> d!570408 (= (inv!27375 (xs!9758 (right!16997 t!4595))) (<= (size!16391 (innerList!6936 (xs!9758 (right!16997 t!4595)))) 2147483647))))

(declare-fun bs!411775 () Bool)

(assert (= bs!411775 d!570408))

(declare-fun m!2292325 () Bool)

(assert (=> bs!411775 m!2292325))

(assert (=> b!1866965 d!570408))

(assert (=> b!1866897 d!570354))

(assert (=> b!1866897 d!570356))

(declare-fun d!570410 () Bool)

(declare-fun lt!718678 () Bool)

(assert (=> d!570410 (= lt!718678 (isEmpty!12904 (list!8461 (right!16997 t!4595))))))

(assert (=> d!570410 (= lt!718678 (= (size!16392 (right!16997 t!4595)) 0))))

(assert (=> d!570410 (= (isEmpty!12903 (right!16997 t!4595)) lt!718678)))

(declare-fun bs!411776 () Bool)

(assert (= bs!411776 d!570410))

(assert (=> bs!411776 m!2292245))

(assert (=> bs!411776 m!2292245))

(declare-fun m!2292327 () Bool)

(assert (=> bs!411776 m!2292327))

(assert (=> bs!411776 m!2292257))

(assert (=> b!1866926 d!570410))

(declare-fun b!1867084 () Bool)

(declare-fun e!1191618 () Bool)

(declare-fun tp!531510 () Bool)

(assert (=> b!1867084 (= e!1191618 (and tp_is_empty!8669 tp!531510))))

(assert (=> b!1866952 (= tp!531482 e!1191618)))

(assert (= (and b!1866952 ((_ is Cons!20681) (t!172894 (innerList!6936 (xs!9758 t!4595))))) b!1867084))

(declare-fun tp!531511 () Bool)

(declare-fun b!1867085 () Bool)

(declare-fun tp!531513 () Bool)

(declare-fun e!1191619 () Bool)

(assert (=> b!1867085 (= e!1191619 (and (inv!27374 (left!16667 (left!16667 (left!16667 t!4595)))) tp!531513 (inv!27374 (right!16997 (left!16667 (left!16667 t!4595)))) tp!531511))))

(declare-fun b!1867087 () Bool)

(declare-fun e!1191620 () Bool)

(declare-fun tp!531512 () Bool)

(assert (=> b!1867087 (= e!1191620 tp!531512)))

(declare-fun b!1867086 () Bool)

(assert (=> b!1867086 (= e!1191619 (and (inv!27375 (xs!9758 (left!16667 (left!16667 t!4595)))) e!1191620))))

(assert (=> b!1866961 (= tp!531491 (and (inv!27374 (left!16667 (left!16667 t!4595))) e!1191619))))

(assert (= (and b!1866961 ((_ is Node!6876) (left!16667 (left!16667 t!4595)))) b!1867085))

(assert (= b!1867086 b!1867087))

(assert (= (and b!1866961 ((_ is Leaf!10082) (left!16667 (left!16667 t!4595)))) b!1867086))

(declare-fun m!2292329 () Bool)

(assert (=> b!1867085 m!2292329))

(declare-fun m!2292331 () Bool)

(assert (=> b!1867085 m!2292331))

(declare-fun m!2292333 () Bool)

(assert (=> b!1867086 m!2292333))

(assert (=> b!1866961 m!2292193))

(declare-fun tp!531514 () Bool)

(declare-fun b!1867088 () Bool)

(declare-fun e!1191621 () Bool)

(declare-fun tp!531516 () Bool)

(assert (=> b!1867088 (= e!1191621 (and (inv!27374 (left!16667 (right!16997 (left!16667 t!4595)))) tp!531516 (inv!27374 (right!16997 (right!16997 (left!16667 t!4595)))) tp!531514))))

(declare-fun b!1867090 () Bool)

(declare-fun e!1191622 () Bool)

(declare-fun tp!531515 () Bool)

(assert (=> b!1867090 (= e!1191622 tp!531515)))

(declare-fun b!1867089 () Bool)

(assert (=> b!1867089 (= e!1191621 (and (inv!27375 (xs!9758 (right!16997 (left!16667 t!4595)))) e!1191622))))

(assert (=> b!1866961 (= tp!531489 (and (inv!27374 (right!16997 (left!16667 t!4595))) e!1191621))))

(assert (= (and b!1866961 ((_ is Node!6876) (right!16997 (left!16667 t!4595)))) b!1867088))

(assert (= b!1867089 b!1867090))

(assert (= (and b!1866961 ((_ is Leaf!10082) (right!16997 (left!16667 t!4595)))) b!1867089))

(declare-fun m!2292335 () Bool)

(assert (=> b!1867088 m!2292335))

(declare-fun m!2292337 () Bool)

(assert (=> b!1867088 m!2292337))

(declare-fun m!2292339 () Bool)

(assert (=> b!1867089 m!2292339))

(assert (=> b!1866961 m!2292195))

(declare-fun tp!531519 () Bool)

(declare-fun tp!531517 () Bool)

(declare-fun e!1191623 () Bool)

(declare-fun b!1867091 () Bool)

(assert (=> b!1867091 (= e!1191623 (and (inv!27374 (left!16667 (left!16667 (right!16997 t!4595)))) tp!531519 (inv!27374 (right!16997 (left!16667 (right!16997 t!4595)))) tp!531517))))

(declare-fun b!1867093 () Bool)

(declare-fun e!1191624 () Bool)

(declare-fun tp!531518 () Bool)

(assert (=> b!1867093 (= e!1191624 tp!531518)))

(declare-fun b!1867092 () Bool)

(assert (=> b!1867092 (= e!1191623 (and (inv!27375 (xs!9758 (left!16667 (right!16997 t!4595)))) e!1191624))))

(assert (=> b!1866964 (= tp!531494 (and (inv!27374 (left!16667 (right!16997 t!4595))) e!1191623))))

(assert (= (and b!1866964 ((_ is Node!6876) (left!16667 (right!16997 t!4595)))) b!1867091))

(assert (= b!1867092 b!1867093))

(assert (= (and b!1866964 ((_ is Leaf!10082) (left!16667 (right!16997 t!4595)))) b!1867092))

(declare-fun m!2292341 () Bool)

(assert (=> b!1867091 m!2292341))

(declare-fun m!2292343 () Bool)

(assert (=> b!1867091 m!2292343))

(declare-fun m!2292345 () Bool)

(assert (=> b!1867092 m!2292345))

(assert (=> b!1866964 m!2292199))

(declare-fun tp!531522 () Bool)

(declare-fun tp!531520 () Bool)

(declare-fun e!1191625 () Bool)

(declare-fun b!1867094 () Bool)

(assert (=> b!1867094 (= e!1191625 (and (inv!27374 (left!16667 (right!16997 (right!16997 t!4595)))) tp!531522 (inv!27374 (right!16997 (right!16997 (right!16997 t!4595)))) tp!531520))))

(declare-fun b!1867096 () Bool)

(declare-fun e!1191626 () Bool)

(declare-fun tp!531521 () Bool)

(assert (=> b!1867096 (= e!1191626 tp!531521)))

(declare-fun b!1867095 () Bool)

(assert (=> b!1867095 (= e!1191625 (and (inv!27375 (xs!9758 (right!16997 (right!16997 t!4595)))) e!1191626))))

(assert (=> b!1866964 (= tp!531492 (and (inv!27374 (right!16997 (right!16997 t!4595))) e!1191625))))

(assert (= (and b!1866964 ((_ is Node!6876) (right!16997 (right!16997 t!4595)))) b!1867094))

(assert (= b!1867095 b!1867096))

(assert (= (and b!1866964 ((_ is Leaf!10082) (right!16997 (right!16997 t!4595)))) b!1867095))

(declare-fun m!2292347 () Bool)

(assert (=> b!1867094 m!2292347))

(declare-fun m!2292349 () Bool)

(assert (=> b!1867094 m!2292349))

(declare-fun m!2292351 () Bool)

(assert (=> b!1867095 m!2292351))

(assert (=> b!1866964 m!2292201))

(declare-fun b!1867097 () Bool)

(declare-fun e!1191627 () Bool)

(declare-fun tp!531523 () Bool)

(assert (=> b!1867097 (= e!1191627 (and tp_is_empty!8669 tp!531523))))

(assert (=> b!1866966 (= tp!531493 e!1191627)))

(assert (= (and b!1866966 ((_ is Cons!20681) (innerList!6936 (xs!9758 (right!16997 t!4595))))) b!1867097))

(declare-fun b!1867098 () Bool)

(declare-fun e!1191628 () Bool)

(declare-fun tp!531524 () Bool)

(assert (=> b!1867098 (= e!1191628 (and tp_is_empty!8669 tp!531524))))

(assert (=> b!1866963 (= tp!531490 e!1191628)))

(assert (= (and b!1866963 ((_ is Cons!20681) (innerList!6936 (xs!9758 (left!16667 t!4595))))) b!1867098))

(check-sat (not b!1867085) (not d!570378) (not d!570406) (not d!570372) (not b!1867030) (not b!1867061) (not d!570370) (not b!1867044) (not b!1867035) (not b!1867097) (not b!1867074) (not b!1867095) (not b!1867066) (not b!1867081) (not b!1867051) (not b!1867092) (not b!1867053) (not b!1867094) (not b!1867052) (not d!570388) (not b!1867086) (not d!570386) (not b!1867063) (not b!1867084) (not b!1867088) (not b!1866961) (not b!1867076) (not b!1867056) (not b!1867079) (not b!1867049) (not b!1867098) (not b!1866964) (not b!1867058) (not b!1867065) (not b!1867073) (not d!570410) (not d!570382) (not b!1867090) (not b!1867029) (not b!1867093) (not b!1867055) (not b!1867054) tp_is_empty!8669 (not b!1867046) (not d!570398) (not b!1867082) (not b!1867047) (not b!1867057) (not b!1867087) (not b!1867077) (not b!1867070) (not b!1867068) (not d!570394) (not b!1867089) (not b!1867091) (not b!1867048) (not b!1867050) (not b!1867096) (not d!570408))
(check-sat)
