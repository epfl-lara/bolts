; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533002 () Bool)

(assert start!533002)

(declare-fun tp!1410577 () Bool)

(declare-fun tp!1410578 () Bool)

(declare-fun b!5038065 () Bool)

(declare-datatypes ((T!104110 0))(
  ( (T!104111 (val!23504 Int)) )
))
(declare-datatypes ((List!58414 0))(
  ( (Nil!58290) (Cons!58290 (h!64738 T!104110) (t!370927 List!58414)) )
))
(declare-datatypes ((IArray!31065 0))(
  ( (IArray!31066 (innerList!15590 List!58414)) )
))
(declare-datatypes ((Conc!15502 0))(
  ( (Node!15502 (left!42682 Conc!15502) (right!43012 Conc!15502) (csize!31234 Int) (cheight!15713 Int)) (Leaf!25717 (xs!18828 IArray!31065) (csize!31235 Int)) (Empty!15502) )
))
(declare-fun t!4198 () Conc!15502)

(declare-fun e!3146614 () Bool)

(declare-fun inv!77095 (Conc!15502) Bool)

(assert (=> b!5038065 (= e!3146614 (and (inv!77095 (left!42682 t!4198)) tp!1410578 (inv!77095 (right!43012 t!4198)) tp!1410577))))

(declare-fun b!5038066 () Bool)

(declare-fun res!2146565 () Bool)

(declare-fun e!3146612 () Bool)

(assert (=> b!5038066 (=> (not res!2146565) (not e!3146612))))

(declare-fun i!618 () Int)

(assert (=> b!5038066 (= res!2146565 (<= 0 i!618))))

(declare-fun b!5038067 () Bool)

(declare-fun ConcPrimitiveSize!34 (Conc!15502) Int)

(assert (=> b!5038067 (= e!3146612 (< (ConcPrimitiveSize!34 t!4198) 0))))

(declare-fun res!2146564 () Bool)

(assert (=> start!533002 (=> (not res!2146564) (not e!3146612))))

(declare-fun isBalanced!4364 (Conc!15502) Bool)

(assert (=> start!533002 (= res!2146564 (isBalanced!4364 t!4198))))

(assert (=> start!533002 e!3146612))

(assert (=> start!533002 (and (inv!77095 t!4198) e!3146614)))

(assert (=> start!533002 true))

(declare-fun b!5038068 () Bool)

(declare-fun e!3146613 () Bool)

(declare-fun tp!1410576 () Bool)

(assert (=> b!5038068 (= e!3146613 tp!1410576)))

(declare-fun b!5038069 () Bool)

(declare-fun res!2146563 () Bool)

(assert (=> b!5038069 (=> (not res!2146563) (not e!3146612))))

(declare-fun size!38877 (Conc!15502) Int)

(assert (=> b!5038069 (= res!2146563 (<= i!618 (size!38877 t!4198)))))

(declare-fun b!5038070 () Bool)

(declare-fun inv!77096 (IArray!31065) Bool)

(assert (=> b!5038070 (= e!3146614 (and (inv!77096 (xs!18828 t!4198)) e!3146613))))

(assert (= (and start!533002 res!2146564) b!5038066))

(assert (= (and b!5038066 res!2146565) b!5038069))

(assert (= (and b!5038069 res!2146563) b!5038067))

(get-info :version)

(assert (= (and start!533002 ((_ is Node!15502) t!4198)) b!5038065))

(assert (= b!5038070 b!5038068))

(assert (= (and start!533002 ((_ is Leaf!25717) t!4198)) b!5038070))

(declare-fun m!6071914 () Bool)

(assert (=> b!5038069 m!6071914))

(declare-fun m!6071916 () Bool)

(assert (=> b!5038067 m!6071916))

(declare-fun m!6071918 () Bool)

(assert (=> b!5038070 m!6071918))

(declare-fun m!6071920 () Bool)

(assert (=> b!5038065 m!6071920))

(declare-fun m!6071922 () Bool)

(assert (=> b!5038065 m!6071922))

(declare-fun m!6071924 () Bool)

(assert (=> start!533002 m!6071924))

(declare-fun m!6071926 () Bool)

(assert (=> start!533002 m!6071926))

(check-sat (not start!533002) (not b!5038070) (not b!5038065) (not b!5038068) (not b!5038069) (not b!5038067))
(check-sat)
(get-model)

(declare-fun d!1620509 () Bool)

(declare-fun c!863110 () Bool)

(assert (=> d!1620509 (= c!863110 ((_ is Node!15502) (left!42682 t!4198)))))

(declare-fun e!3146625 () Bool)

(assert (=> d!1620509 (= (inv!77095 (left!42682 t!4198)) e!3146625)))

(declare-fun b!5038089 () Bool)

(declare-fun inv!77097 (Conc!15502) Bool)

(assert (=> b!5038089 (= e!3146625 (inv!77097 (left!42682 t!4198)))))

(declare-fun b!5038090 () Bool)

(declare-fun e!3146626 () Bool)

(assert (=> b!5038090 (= e!3146625 e!3146626)))

(declare-fun res!2146568 () Bool)

(assert (=> b!5038090 (= res!2146568 (not ((_ is Leaf!25717) (left!42682 t!4198))))))

(assert (=> b!5038090 (=> res!2146568 e!3146626)))

(declare-fun b!5038091 () Bool)

(declare-fun inv!77098 (Conc!15502) Bool)

(assert (=> b!5038091 (= e!3146626 (inv!77098 (left!42682 t!4198)))))

(assert (= (and d!1620509 c!863110) b!5038089))

(assert (= (and d!1620509 (not c!863110)) b!5038090))

(assert (= (and b!5038090 (not res!2146568)) b!5038091))

(declare-fun m!6071938 () Bool)

(assert (=> b!5038089 m!6071938))

(declare-fun m!6071940 () Bool)

(assert (=> b!5038091 m!6071940))

(assert (=> b!5038065 d!1620509))

(declare-fun d!1620513 () Bool)

(declare-fun c!863111 () Bool)

(assert (=> d!1620513 (= c!863111 ((_ is Node!15502) (right!43012 t!4198)))))

(declare-fun e!3146627 () Bool)

(assert (=> d!1620513 (= (inv!77095 (right!43012 t!4198)) e!3146627)))

(declare-fun b!5038092 () Bool)

(assert (=> b!5038092 (= e!3146627 (inv!77097 (right!43012 t!4198)))))

(declare-fun b!5038093 () Bool)

(declare-fun e!3146628 () Bool)

(assert (=> b!5038093 (= e!3146627 e!3146628)))

(declare-fun res!2146569 () Bool)

(assert (=> b!5038093 (= res!2146569 (not ((_ is Leaf!25717) (right!43012 t!4198))))))

(assert (=> b!5038093 (=> res!2146569 e!3146628)))

(declare-fun b!5038094 () Bool)

(assert (=> b!5038094 (= e!3146628 (inv!77098 (right!43012 t!4198)))))

(assert (= (and d!1620513 c!863111) b!5038092))

(assert (= (and d!1620513 (not c!863111)) b!5038093))

(assert (= (and b!5038093 (not res!2146569)) b!5038094))

(declare-fun m!6071942 () Bool)

(assert (=> b!5038092 m!6071942))

(declare-fun m!6071944 () Bool)

(assert (=> b!5038094 m!6071944))

(assert (=> b!5038065 d!1620513))

(declare-fun d!1620515 () Bool)

(declare-fun size!38879 (List!58414) Int)

(assert (=> d!1620515 (= (inv!77096 (xs!18828 t!4198)) (<= (size!38879 (innerList!15590 (xs!18828 t!4198))) 2147483647))))

(declare-fun bs!1188810 () Bool)

(assert (= bs!1188810 d!1620515))

(declare-fun m!6071946 () Bool)

(assert (=> bs!1188810 m!6071946))

(assert (=> b!5038070 d!1620515))

(declare-fun d!1620517 () Bool)

(declare-fun lt!2083965 () Int)

(declare-fun list!18895 (Conc!15502) List!58414)

(assert (=> d!1620517 (= lt!2083965 (size!38879 (list!18895 t!4198)))))

(assert (=> d!1620517 (= lt!2083965 (ite ((_ is Empty!15502) t!4198) 0 (ite ((_ is Leaf!25717) t!4198) (csize!31235 t!4198) (csize!31234 t!4198))))))

(assert (=> d!1620517 (= (size!38877 t!4198) lt!2083965)))

(declare-fun bs!1188812 () Bool)

(assert (= bs!1188812 d!1620517))

(declare-fun m!6071952 () Bool)

(assert (=> bs!1188812 m!6071952))

(assert (=> bs!1188812 m!6071952))

(declare-fun m!6071954 () Bool)

(assert (=> bs!1188812 m!6071954))

(assert (=> b!5038069 d!1620517))

(declare-fun b!5038120 () Bool)

(declare-fun e!3146641 () Bool)

(declare-fun isEmpty!31519 (Conc!15502) Bool)

(assert (=> b!5038120 (= e!3146641 (not (isEmpty!31519 (right!43012 t!4198))))))

(declare-fun b!5038121 () Bool)

(declare-fun res!2146589 () Bool)

(assert (=> b!5038121 (=> (not res!2146589) (not e!3146641))))

(assert (=> b!5038121 (= res!2146589 (isBalanced!4364 (right!43012 t!4198)))))

(declare-fun b!5038122 () Bool)

(declare-fun e!3146642 () Bool)

(assert (=> b!5038122 (= e!3146642 e!3146641)))

(declare-fun res!2146587 () Bool)

(assert (=> b!5038122 (=> (not res!2146587) (not e!3146641))))

(declare-fun height!2080 (Conc!15502) Int)

(assert (=> b!5038122 (= res!2146587 (<= (- 1) (- (height!2080 (left!42682 t!4198)) (height!2080 (right!43012 t!4198)))))))

(declare-fun b!5038123 () Bool)

(declare-fun res!2146588 () Bool)

(assert (=> b!5038123 (=> (not res!2146588) (not e!3146641))))

(assert (=> b!5038123 (= res!2146588 (not (isEmpty!31519 (left!42682 t!4198))))))

(declare-fun b!5038124 () Bool)

(declare-fun res!2146591 () Bool)

(assert (=> b!5038124 (=> (not res!2146591) (not e!3146641))))

(assert (=> b!5038124 (= res!2146591 (<= (- (height!2080 (left!42682 t!4198)) (height!2080 (right!43012 t!4198))) 1))))

(declare-fun b!5038119 () Bool)

(declare-fun res!2146586 () Bool)

(assert (=> b!5038119 (=> (not res!2146586) (not e!3146641))))

(assert (=> b!5038119 (= res!2146586 (isBalanced!4364 (left!42682 t!4198)))))

(declare-fun d!1620521 () Bool)

(declare-fun res!2146590 () Bool)

(assert (=> d!1620521 (=> res!2146590 e!3146642)))

(assert (=> d!1620521 (= res!2146590 (not ((_ is Node!15502) t!4198)))))

(assert (=> d!1620521 (= (isBalanced!4364 t!4198) e!3146642)))

(assert (= (and d!1620521 (not res!2146590)) b!5038122))

(assert (= (and b!5038122 res!2146587) b!5038124))

(assert (= (and b!5038124 res!2146591) b!5038119))

(assert (= (and b!5038119 res!2146586) b!5038121))

(assert (= (and b!5038121 res!2146589) b!5038123))

(assert (= (and b!5038123 res!2146588) b!5038120))

(declare-fun m!6071966 () Bool)

(assert (=> b!5038122 m!6071966))

(declare-fun m!6071968 () Bool)

(assert (=> b!5038122 m!6071968))

(declare-fun m!6071970 () Bool)

(assert (=> b!5038123 m!6071970))

(declare-fun m!6071972 () Bool)

(assert (=> b!5038119 m!6071972))

(assert (=> b!5038124 m!6071966))

(assert (=> b!5038124 m!6071968))

(declare-fun m!6071974 () Bool)

(assert (=> b!5038120 m!6071974))

(declare-fun m!6071976 () Bool)

(assert (=> b!5038121 m!6071976))

(assert (=> start!533002 d!1620521))

(declare-fun d!1620529 () Bool)

(declare-fun c!863116 () Bool)

(assert (=> d!1620529 (= c!863116 ((_ is Node!15502) t!4198))))

(declare-fun e!3146643 () Bool)

(assert (=> d!1620529 (= (inv!77095 t!4198) e!3146643)))

(declare-fun b!5038125 () Bool)

(assert (=> b!5038125 (= e!3146643 (inv!77097 t!4198))))

(declare-fun b!5038126 () Bool)

(declare-fun e!3146644 () Bool)

(assert (=> b!5038126 (= e!3146643 e!3146644)))

(declare-fun res!2146592 () Bool)

(assert (=> b!5038126 (= res!2146592 (not ((_ is Leaf!25717) t!4198)))))

(assert (=> b!5038126 (=> res!2146592 e!3146644)))

(declare-fun b!5038127 () Bool)

(assert (=> b!5038127 (= e!3146644 (inv!77098 t!4198))))

(assert (= (and d!1620529 c!863116) b!5038125))

(assert (= (and d!1620529 (not c!863116)) b!5038126))

(assert (= (and b!5038126 (not res!2146592)) b!5038127))

(declare-fun m!6071978 () Bool)

(assert (=> b!5038125 m!6071978))

(declare-fun m!6071980 () Bool)

(assert (=> b!5038127 m!6071980))

(assert (=> start!533002 d!1620529))

(declare-fun d!1620531 () Bool)

(declare-fun lt!2083968 () Int)

(assert (=> d!1620531 (>= lt!2083968 0)))

(declare-fun e!3146665 () Int)

(assert (=> d!1620531 (= lt!2083968 e!3146665)))

(declare-fun c!863123 () Bool)

(assert (=> d!1620531 (= c!863123 ((_ is Node!15502) t!4198))))

(assert (=> d!1620531 (= (ConcPrimitiveSize!34 t!4198) lt!2083968)))

(declare-fun b!5038170 () Bool)

(declare-fun call!351390 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!5038170 (= e!3146665 (+ 1 (ConcPrimitiveSize!34 (left!42682 t!4198)) (ConcPrimitiveSize!34 (right!43012 t!4198)) (BigIntAbs!0 (csize!31234 t!4198)) call!351390))))

(declare-fun b!5038171 () Bool)

(declare-fun e!3146664 () Int)

(declare-fun IArrayPrimitiveSize!33 (IArray!31065) Int)

(assert (=> b!5038171 (= e!3146664 (+ 1 (IArrayPrimitiveSize!33 (xs!18828 t!4198)) call!351390))))

(declare-fun b!5038172 () Bool)

(assert (=> b!5038172 (= e!3146664 0)))

(declare-fun b!5038173 () Bool)

(assert (=> b!5038173 (= e!3146665 e!3146664)))

(declare-fun c!863122 () Bool)

(assert (=> b!5038173 (= c!863122 ((_ is Leaf!25717) t!4198))))

(declare-fun bm!351385 () Bool)

(assert (=> bm!351385 (= call!351390 (BigIntAbs!0 (ite c!863123 (cheight!15713 t!4198) (csize!31235 t!4198))))))

(assert (= (and d!1620531 c!863123) b!5038170))

(assert (= (and d!1620531 (not c!863123)) b!5038173))

(assert (= (and b!5038173 c!863122) b!5038171))

(assert (= (and b!5038173 (not c!863122)) b!5038172))

(assert (= (or b!5038170 b!5038171) bm!351385))

(declare-fun m!6071998 () Bool)

(assert (=> b!5038170 m!6071998))

(declare-fun m!6072000 () Bool)

(assert (=> b!5038170 m!6072000))

(declare-fun m!6072002 () Bool)

(assert (=> b!5038170 m!6072002))

(declare-fun m!6072004 () Bool)

(assert (=> b!5038171 m!6072004))

(declare-fun m!6072006 () Bool)

(assert (=> bm!351385 m!6072006))

(assert (=> b!5038067 d!1620531))

(declare-fun b!5038188 () Bool)

(declare-fun tp!1410600 () Bool)

(declare-fun e!3146674 () Bool)

(declare-fun tp!1410602 () Bool)

(assert (=> b!5038188 (= e!3146674 (and (inv!77095 (left!42682 (left!42682 t!4198))) tp!1410600 (inv!77095 (right!43012 (left!42682 t!4198))) tp!1410602))))

(declare-fun b!5038190 () Bool)

(declare-fun e!3146675 () Bool)

(declare-fun tp!1410601 () Bool)

(assert (=> b!5038190 (= e!3146675 tp!1410601)))

(declare-fun b!5038189 () Bool)

(assert (=> b!5038189 (= e!3146674 (and (inv!77096 (xs!18828 (left!42682 t!4198))) e!3146675))))

(assert (=> b!5038065 (= tp!1410578 (and (inv!77095 (left!42682 t!4198)) e!3146674))))

(assert (= (and b!5038065 ((_ is Node!15502) (left!42682 t!4198))) b!5038188))

(assert (= b!5038189 b!5038190))

(assert (= (and b!5038065 ((_ is Leaf!25717) (left!42682 t!4198))) b!5038189))

(declare-fun m!6072020 () Bool)

(assert (=> b!5038188 m!6072020))

(declare-fun m!6072022 () Bool)

(assert (=> b!5038188 m!6072022))

(declare-fun m!6072024 () Bool)

(assert (=> b!5038189 m!6072024))

(assert (=> b!5038065 m!6071920))

(declare-fun tp!1410603 () Bool)

(declare-fun e!3146676 () Bool)

(declare-fun b!5038191 () Bool)

(declare-fun tp!1410605 () Bool)

(assert (=> b!5038191 (= e!3146676 (and (inv!77095 (left!42682 (right!43012 t!4198))) tp!1410603 (inv!77095 (right!43012 (right!43012 t!4198))) tp!1410605))))

(declare-fun b!5038193 () Bool)

(declare-fun e!3146677 () Bool)

(declare-fun tp!1410604 () Bool)

(assert (=> b!5038193 (= e!3146677 tp!1410604)))

(declare-fun b!5038192 () Bool)

(assert (=> b!5038192 (= e!3146676 (and (inv!77096 (xs!18828 (right!43012 t!4198))) e!3146677))))

(assert (=> b!5038065 (= tp!1410577 (and (inv!77095 (right!43012 t!4198)) e!3146676))))

(assert (= (and b!5038065 ((_ is Node!15502) (right!43012 t!4198))) b!5038191))

(assert (= b!5038192 b!5038193))

(assert (= (and b!5038065 ((_ is Leaf!25717) (right!43012 t!4198))) b!5038192))

(declare-fun m!6072026 () Bool)

(assert (=> b!5038191 m!6072026))

(declare-fun m!6072028 () Bool)

(assert (=> b!5038191 m!6072028))

(declare-fun m!6072030 () Bool)

(assert (=> b!5038192 m!6072030))

(assert (=> b!5038065 m!6071922))

(declare-fun b!5038198 () Bool)

(declare-fun e!3146680 () Bool)

(declare-fun tp_is_empty!36767 () Bool)

(declare-fun tp!1410608 () Bool)

(assert (=> b!5038198 (= e!3146680 (and tp_is_empty!36767 tp!1410608))))

(assert (=> b!5038068 (= tp!1410576 e!3146680)))

(assert (= (and b!5038068 ((_ is Cons!58290) (innerList!15590 (xs!18828 t!4198)))) b!5038198))

(check-sat (not b!5038119) (not b!5038190) (not d!1620515) (not b!5038188) (not b!5038171) (not b!5038191) (not d!1620517) (not b!5038192) (not b!5038091) (not b!5038125) (not b!5038122) tp_is_empty!36767 (not b!5038089) (not b!5038094) (not b!5038121) (not b!5038198) (not b!5038127) (not b!5038123) (not b!5038170) (not b!5038124) (not b!5038120) (not b!5038065) (not b!5038092) (not b!5038189) (not bm!351385) (not b!5038193))
(check-sat)
