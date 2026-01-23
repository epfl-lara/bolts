; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532684 () Bool)

(assert start!532684)

(declare-fun b!5035187 () Bool)

(declare-fun res!2145579 () Bool)

(declare-fun e!3145128 () Bool)

(assert (=> b!5035187 (=> (not res!2145579) (not e!3145128))))

(declare-fun i!618 () Int)

(declare-datatypes ((T!104010 0))(
  ( (T!104011 (val!23489 Int)) )
))
(declare-datatypes ((List!58399 0))(
  ( (Nil!58275) (Cons!58275 (h!64723 T!104010) (t!370866 List!58399)) )
))
(declare-datatypes ((IArray!31035 0))(
  ( (IArray!31036 (innerList!15575 List!58399)) )
))
(declare-datatypes ((Conc!15487 0))(
  ( (Node!15487 (left!42660 Conc!15487) (right!42990 Conc!15487) (csize!31204 Int) (cheight!15698 Int)) (Leaf!25695 (xs!18813 IArray!31035) (csize!31205 Int)) (Empty!15487) )
))
(declare-fun t!4198 () Conc!15487)

(declare-fun size!38848 (Conc!15487) Int)

(assert (=> b!5035187 (= res!2145579 (<= i!618 (size!38848 t!4198)))))

(declare-fun b!5035188 () Bool)

(declare-fun e!3145125 () Bool)

(assert (=> b!5035188 (= e!3145128 (not e!3145125))))

(declare-fun res!2145580 () Bool)

(assert (=> b!5035188 (=> res!2145580 e!3145125)))

(declare-fun lt!2083211 () Int)

(assert (=> b!5035188 (= res!2145580 (or (= lt!2083211 i!618) (>= i!618 lt!2083211)))))

(assert (=> b!5035188 (= lt!2083211 (size!38848 (left!42660 t!4198)))))

(declare-fun e!3145126 () Bool)

(assert (=> b!5035188 e!3145126))

(declare-fun c!862373 () Bool)

(declare-fun lt!2083213 () Int)

(assert (=> b!5035188 (= c!862373 (= lt!2083213 i!618))))

(declare-fun lt!2083212 () List!58399)

(declare-datatypes ((tuple2!63188 0))(
  ( (tuple2!63189 (_1!34897 List!58399) (_2!34897 List!58399)) )
))
(declare-fun lt!2083214 () tuple2!63188)

(declare-fun lt!2083217 () List!58399)

(declare-fun splitAtIndex!188 (List!58399 Int) tuple2!63188)

(declare-fun ++!12702 (List!58399 List!58399) List!58399)

(assert (=> b!5035188 (= lt!2083214 (splitAtIndex!188 (++!12702 lt!2083212 lt!2083217) i!618))))

(declare-fun size!38849 (List!58399) Int)

(assert (=> b!5035188 (= lt!2083213 (size!38849 lt!2083212))))

(declare-datatypes ((Unit!149469 0))(
  ( (Unit!149470) )
))
(declare-fun lt!2083216 () Unit!149469)

(declare-fun splitAtLemma!63 (List!58399 List!58399 Int) Unit!149469)

(assert (=> b!5035188 (= lt!2083216 (splitAtLemma!63 lt!2083212 lt!2083217 i!618))))

(declare-fun list!18866 (Conc!15487) List!58399)

(assert (=> b!5035188 (= lt!2083217 (list!18866 (right!42990 t!4198)))))

(assert (=> b!5035188 (= lt!2083212 (list!18866 (left!42660 t!4198)))))

(declare-fun b!5035189 () Bool)

(assert (=> b!5035189 (= e!3145126 (= lt!2083214 (tuple2!63189 lt!2083212 lt!2083217)))))

(declare-fun b!5035190 () Bool)

(declare-fun lt!2083215 () tuple2!63188)

(declare-fun call!351205 () tuple2!63188)

(assert (=> b!5035190 (= lt!2083215 call!351205)))

(declare-fun e!3145124 () tuple2!63188)

(declare-fun call!351206 () List!58399)

(assert (=> b!5035190 (= e!3145124 (tuple2!63189 call!351206 (_2!34897 lt!2083215)))))

(declare-fun b!5035191 () Bool)

(declare-fun e!3145123 () Bool)

(assert (=> b!5035191 (= e!3145125 e!3145123)))

(declare-fun res!2145578 () Bool)

(assert (=> b!5035191 (=> (not res!2145578) (not e!3145123))))

(declare-fun isBalanced!4349 (Conc!15487) Bool)

(declare-datatypes ((tuple2!63190 0))(
  ( (tuple2!63191 (_1!34898 Conc!15487) (_2!34898 Conc!15487)) )
))
(declare-fun splitAt!476 (Conc!15487 Int) tuple2!63190)

(assert (=> b!5035191 (= res!2145578 (isBalanced!4349 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618))))))

(declare-fun b!5035192 () Bool)

(declare-fun e!3145127 () Bool)

(declare-fun e!3145129 () Bool)

(declare-fun inv!77018 (IArray!31035) Bool)

(assert (=> b!5035192 (= e!3145127 (and (inv!77018 (xs!18813 t!4198)) e!3145129))))

(declare-fun b!5035193 () Bool)

(declare-fun tp!1410201 () Bool)

(assert (=> b!5035193 (= e!3145129 tp!1410201)))

(declare-fun b!5035194 () Bool)

(assert (=> b!5035194 (= e!3145123 (isBalanced!4349 (right!42990 t!4198)))))

(declare-fun b!5035195 () Bool)

(assert (=> b!5035195 (= e!3145126 (= lt!2083214 e!3145124))))

(declare-fun c!862372 () Bool)

(assert (=> b!5035195 (= c!862372 (< i!618 lt!2083213))))

(declare-fun b!5035196 () Bool)

(declare-fun res!2145576 () Bool)

(assert (=> b!5035196 (=> (not res!2145576) (not e!3145128))))

(assert (=> b!5035196 (= res!2145576 (<= 0 i!618))))

(declare-fun lt!2083218 () tuple2!63188)

(declare-fun bm!351201 () Bool)

(assert (=> bm!351201 (= call!351206 (++!12702 (ite c!862372 (_2!34897 lt!2083218) lt!2083212) (ite c!862372 lt!2083217 (_1!34897 lt!2083215))))))

(declare-fun b!5035197 () Bool)

(declare-fun res!2145581 () Bool)

(assert (=> b!5035197 (=> (not res!2145581) (not e!3145128))))

(assert (=> b!5035197 (= res!2145581 (and (not (is-Empty!15487 t!4198)) (not (is-Leaf!25695 t!4198))))))

(declare-fun tp!1410202 () Bool)

(declare-fun tp!1410203 () Bool)

(declare-fun b!5035198 () Bool)

(declare-fun inv!77019 (Conc!15487) Bool)

(assert (=> b!5035198 (= e!3145127 (and (inv!77019 (left!42660 t!4198)) tp!1410203 (inv!77019 (right!42990 t!4198)) tp!1410202))))

(declare-fun b!5035199 () Bool)

(assert (=> b!5035199 (= lt!2083218 call!351205)))

(assert (=> b!5035199 (= e!3145124 (tuple2!63189 (_1!34897 lt!2083218) call!351206))))

(declare-fun bm!351200 () Bool)

(assert (=> bm!351200 (= call!351205 (splitAtIndex!188 (ite c!862372 lt!2083212 lt!2083217) (ite c!862372 i!618 (- i!618 lt!2083213))))))

(declare-fun res!2145577 () Bool)

(assert (=> start!532684 (=> (not res!2145577) (not e!3145128))))

(assert (=> start!532684 (= res!2145577 (isBalanced!4349 t!4198))))

(assert (=> start!532684 e!3145128))

(assert (=> start!532684 (and (inv!77019 t!4198) e!3145127)))

(assert (=> start!532684 true))

(assert (= (and start!532684 res!2145577) b!5035196))

(assert (= (and b!5035196 res!2145576) b!5035187))

(assert (= (and b!5035187 res!2145579) b!5035197))

(assert (= (and b!5035197 res!2145581) b!5035188))

(assert (= (and b!5035188 c!862373) b!5035189))

(assert (= (and b!5035188 (not c!862373)) b!5035195))

(assert (= (and b!5035195 c!862372) b!5035199))

(assert (= (and b!5035195 (not c!862372)) b!5035190))

(assert (= (or b!5035199 b!5035190) bm!351201))

(assert (= (or b!5035199 b!5035190) bm!351200))

(assert (= (and b!5035188 (not res!2145580)) b!5035191))

(assert (= (and b!5035191 res!2145578) b!5035194))

(assert (= (and start!532684 (is-Node!15487 t!4198)) b!5035198))

(assert (= b!5035192 b!5035193))

(assert (= (and start!532684 (is-Leaf!25695 t!4198)) b!5035192))

(declare-fun m!6069580 () Bool)

(assert (=> b!5035188 m!6069580))

(declare-fun m!6069582 () Bool)

(assert (=> b!5035188 m!6069582))

(declare-fun m!6069584 () Bool)

(assert (=> b!5035188 m!6069584))

(declare-fun m!6069586 () Bool)

(assert (=> b!5035188 m!6069586))

(declare-fun m!6069588 () Bool)

(assert (=> b!5035188 m!6069588))

(assert (=> b!5035188 m!6069586))

(declare-fun m!6069590 () Bool)

(assert (=> b!5035188 m!6069590))

(declare-fun m!6069592 () Bool)

(assert (=> b!5035188 m!6069592))

(declare-fun m!6069594 () Bool)

(assert (=> b!5035191 m!6069594))

(declare-fun m!6069596 () Bool)

(assert (=> b!5035191 m!6069596))

(declare-fun m!6069598 () Bool)

(assert (=> b!5035194 m!6069598))

(declare-fun m!6069600 () Bool)

(assert (=> bm!351201 m!6069600))

(declare-fun m!6069602 () Bool)

(assert (=> b!5035187 m!6069602))

(declare-fun m!6069604 () Bool)

(assert (=> start!532684 m!6069604))

(declare-fun m!6069606 () Bool)

(assert (=> start!532684 m!6069606))

(declare-fun m!6069608 () Bool)

(assert (=> b!5035198 m!6069608))

(declare-fun m!6069610 () Bool)

(assert (=> b!5035198 m!6069610))

(declare-fun m!6069612 () Bool)

(assert (=> bm!351200 m!6069612))

(declare-fun m!6069614 () Bool)

(assert (=> b!5035192 m!6069614))

(push 1)

(assert (not b!5035188))

(assert (not bm!351201))

(assert (not b!5035192))

(assert (not bm!351200))

(assert (not b!5035193))

(assert (not b!5035194))

(assert (not b!5035187))

(assert (not b!5035191))

(assert (not b!5035198))

(assert (not start!532684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1619952 () Bool)

(declare-fun lt!2083245 () Int)

(assert (=> d!1619952 (= lt!2083245 (size!38849 (list!18866 t!4198)))))

(assert (=> d!1619952 (= lt!2083245 (ite (is-Empty!15487 t!4198) 0 (ite (is-Leaf!25695 t!4198) (csize!31205 t!4198) (csize!31204 t!4198))))))

(assert (=> d!1619952 (= (size!38848 t!4198) lt!2083245)))

(declare-fun bs!1188744 () Bool)

(assert (= bs!1188744 d!1619952))

(declare-fun m!6069652 () Bool)

(assert (=> bs!1188744 m!6069652))

(assert (=> bs!1188744 m!6069652))

(declare-fun m!6069654 () Bool)

(assert (=> bs!1188744 m!6069654))

(assert (=> b!5035187 d!1619952))

(declare-fun d!1619956 () Bool)

(declare-fun e!3145156 () Bool)

(assert (=> d!1619956 e!3145156))

(declare-fun res!2145605 () Bool)

(assert (=> d!1619956 (=> (not res!2145605) (not e!3145156))))

(declare-fun lt!2083248 () List!58399)

(declare-fun content!10338 (List!58399) (Set T!104010))

(assert (=> d!1619956 (= res!2145605 (= (content!10338 lt!2083248) (set.union (content!10338 (ite c!862372 (_2!34897 lt!2083218) lt!2083212)) (content!10338 (ite c!862372 lt!2083217 (_1!34897 lt!2083215))))))))

(declare-fun e!3145155 () List!58399)

(assert (=> d!1619956 (= lt!2083248 e!3145155)))

(declare-fun c!862382 () Bool)

(assert (=> d!1619956 (= c!862382 (is-Nil!58275 (ite c!862372 (_2!34897 lt!2083218) lt!2083212)))))

(assert (=> d!1619956 (= (++!12702 (ite c!862372 (_2!34897 lt!2083218) lt!2083212) (ite c!862372 lt!2083217 (_1!34897 lt!2083215))) lt!2083248)))

(declare-fun b!5035247 () Bool)

(assert (=> b!5035247 (= e!3145155 (ite c!862372 lt!2083217 (_1!34897 lt!2083215)))))

(declare-fun b!5035249 () Bool)

(declare-fun res!2145604 () Bool)

(assert (=> b!5035249 (=> (not res!2145604) (not e!3145156))))

(assert (=> b!5035249 (= res!2145604 (= (size!38849 lt!2083248) (+ (size!38849 (ite c!862372 (_2!34897 lt!2083218) lt!2083212)) (size!38849 (ite c!862372 lt!2083217 (_1!34897 lt!2083215))))))))

(declare-fun b!5035250 () Bool)

(assert (=> b!5035250 (= e!3145156 (or (not (= (ite c!862372 lt!2083217 (_1!34897 lt!2083215)) Nil!58275)) (= lt!2083248 (ite c!862372 (_2!34897 lt!2083218) lt!2083212))))))

(declare-fun b!5035248 () Bool)

(assert (=> b!5035248 (= e!3145155 (Cons!58275 (h!64723 (ite c!862372 (_2!34897 lt!2083218) lt!2083212)) (++!12702 (t!370866 (ite c!862372 (_2!34897 lt!2083218) lt!2083212)) (ite c!862372 lt!2083217 (_1!34897 lt!2083215)))))))

(assert (= (and d!1619956 c!862382) b!5035247))

(assert (= (and d!1619956 (not c!862382)) b!5035248))

(assert (= (and d!1619956 res!2145605) b!5035249))

(assert (= (and b!5035249 res!2145604) b!5035250))

(declare-fun m!6069656 () Bool)

(assert (=> d!1619956 m!6069656))

(declare-fun m!6069658 () Bool)

(assert (=> d!1619956 m!6069658))

(declare-fun m!6069660 () Bool)

(assert (=> d!1619956 m!6069660))

(declare-fun m!6069662 () Bool)

(assert (=> b!5035249 m!6069662))

(declare-fun m!6069664 () Bool)

(assert (=> b!5035249 m!6069664))

(declare-fun m!6069666 () Bool)

(assert (=> b!5035249 m!6069666))

(declare-fun m!6069668 () Bool)

(assert (=> b!5035248 m!6069668))

(assert (=> bm!351201 d!1619956))

(declare-fun d!1619958 () Bool)

(declare-fun e!3145168 () Bool)

(assert (=> d!1619958 e!3145168))

(declare-fun res!2145610 () Bool)

(assert (=> d!1619958 (=> (not res!2145610) (not e!3145168))))

(declare-fun lt!2083258 () tuple2!63188)

(assert (=> d!1619958 (= res!2145610 (= (++!12702 (_1!34897 lt!2083258) (_2!34897 lt!2083258)) (ite c!862372 lt!2083212 lt!2083217)))))

(declare-fun e!3145169 () tuple2!63188)

(assert (=> d!1619958 (= lt!2083258 e!3145169)))

(declare-fun c!862392 () Bool)

(assert (=> d!1619958 (= c!862392 (is-Nil!58275 (ite c!862372 lt!2083212 lt!2083217)))))

(assert (=> d!1619958 (= (splitAtIndex!188 (ite c!862372 lt!2083212 lt!2083217) (ite c!862372 i!618 (- i!618 lt!2083213))) lt!2083258)))

(declare-fun e!3145167 () tuple2!63188)

(declare-fun b!5035271 () Bool)

(assert (=> b!5035271 (= e!3145167 (tuple2!63189 Nil!58275 (ite c!862372 lt!2083212 lt!2083217)))))

(declare-fun b!5035272 () Bool)

(assert (=> b!5035272 (= e!3145169 e!3145167)))

(declare-fun c!862391 () Bool)

(assert (=> b!5035272 (= c!862391 (<= (ite c!862372 i!618 (- i!618 lt!2083213)) 0))))

(declare-fun b!5035273 () Bool)

(declare-fun lt!2083257 () tuple2!63188)

(assert (=> b!5035273 (= lt!2083257 (splitAtIndex!188 (t!370866 (ite c!862372 lt!2083212 lt!2083217)) (- (ite c!862372 i!618 (- i!618 lt!2083213)) 1)))))

(assert (=> b!5035273 (= e!3145167 (tuple2!63189 (Cons!58275 (h!64723 (ite c!862372 lt!2083212 lt!2083217)) (_1!34897 lt!2083257)) (_2!34897 lt!2083257)))))

(declare-fun b!5035274 () Bool)

(declare-fun res!2145611 () Bool)

(assert (=> b!5035274 (=> (not res!2145611) (not e!3145168))))

(declare-fun take!804 (List!58399 Int) List!58399)

(assert (=> b!5035274 (= res!2145611 (= (_1!34897 lt!2083258) (take!804 (ite c!862372 lt!2083212 lt!2083217) (ite c!862372 i!618 (- i!618 lt!2083213)))))))

(declare-fun b!5035275 () Bool)

(declare-fun drop!2611 (List!58399 Int) List!58399)

(assert (=> b!5035275 (= e!3145168 (= (_2!34897 lt!2083258) (drop!2611 (ite c!862372 lt!2083212 lt!2083217) (ite c!862372 i!618 (- i!618 lt!2083213)))))))

(declare-fun b!5035276 () Bool)

(assert (=> b!5035276 (= e!3145169 (tuple2!63189 Nil!58275 Nil!58275))))

(assert (= (and d!1619958 c!862392) b!5035276))

(assert (= (and d!1619958 (not c!862392)) b!5035272))

(assert (= (and b!5035272 c!862391) b!5035271))

(assert (= (and b!5035272 (not c!862391)) b!5035273))

(assert (= (and d!1619958 res!2145610) b!5035274))

(assert (= (and b!5035274 res!2145611) b!5035275))

(declare-fun m!6069670 () Bool)

(assert (=> d!1619958 m!6069670))

(declare-fun m!6069672 () Bool)

(assert (=> b!5035273 m!6069672))

(declare-fun m!6069674 () Bool)

(assert (=> b!5035274 m!6069674))

(declare-fun m!6069676 () Bool)

(assert (=> b!5035275 m!6069676))

(assert (=> bm!351200 d!1619958))

(declare-fun d!1619960 () Bool)

(assert (=> d!1619960 (= (inv!77018 (xs!18813 t!4198)) (<= (size!38849 (innerList!15575 (xs!18813 t!4198))) 2147483647))))

(declare-fun bs!1188745 () Bool)

(assert (= bs!1188745 d!1619960))

(declare-fun m!6069678 () Bool)

(assert (=> bs!1188745 m!6069678))

(assert (=> b!5035192 d!1619960))

(declare-fun b!5035299 () Bool)

(declare-fun e!3145179 () Bool)

(declare-fun isEmpty!31503 (Conc!15487) Bool)

(assert (=> b!5035299 (= e!3145179 (not (isEmpty!31503 (right!42990 (right!42990 t!4198)))))))

(declare-fun b!5035300 () Bool)

(declare-fun res!2145630 () Bool)

(assert (=> b!5035300 (=> (not res!2145630) (not e!3145179))))

(declare-fun height!2066 (Conc!15487) Int)

(assert (=> b!5035300 (= res!2145630 (<= (- (height!2066 (left!42660 (right!42990 t!4198))) (height!2066 (right!42990 (right!42990 t!4198)))) 1))))

(declare-fun b!5035301 () Bool)

(declare-fun e!3145180 () Bool)

(assert (=> b!5035301 (= e!3145180 e!3145179)))

(declare-fun res!2145634 () Bool)

(assert (=> b!5035301 (=> (not res!2145634) (not e!3145179))))

(assert (=> b!5035301 (= res!2145634 (<= (- 1) (- (height!2066 (left!42660 (right!42990 t!4198))) (height!2066 (right!42990 (right!42990 t!4198))))))))

(declare-fun d!1619962 () Bool)

(declare-fun res!2145632 () Bool)

(assert (=> d!1619962 (=> res!2145632 e!3145180)))

(assert (=> d!1619962 (= res!2145632 (not (is-Node!15487 (right!42990 t!4198))))))

(assert (=> d!1619962 (= (isBalanced!4349 (right!42990 t!4198)) e!3145180)))

(declare-fun b!5035302 () Bool)

(declare-fun res!2145633 () Bool)

(assert (=> b!5035302 (=> (not res!2145633) (not e!3145179))))

(assert (=> b!5035302 (= res!2145633 (isBalanced!4349 (left!42660 (right!42990 t!4198))))))

(declare-fun b!5035303 () Bool)

(declare-fun res!2145635 () Bool)

(assert (=> b!5035303 (=> (not res!2145635) (not e!3145179))))

(assert (=> b!5035303 (= res!2145635 (isBalanced!4349 (right!42990 (right!42990 t!4198))))))

(declare-fun b!5035304 () Bool)

(declare-fun res!2145631 () Bool)

(assert (=> b!5035304 (=> (not res!2145631) (not e!3145179))))

(assert (=> b!5035304 (= res!2145631 (not (isEmpty!31503 (left!42660 (right!42990 t!4198)))))))

(assert (= (and d!1619962 (not res!2145632)) b!5035301))

(assert (= (and b!5035301 res!2145634) b!5035300))

(assert (= (and b!5035300 res!2145630) b!5035302))

(assert (= (and b!5035302 res!2145633) b!5035303))

(assert (= (and b!5035303 res!2145635) b!5035304))

(assert (= (and b!5035304 res!2145631) b!5035299))

(declare-fun m!6069688 () Bool)

(assert (=> b!5035303 m!6069688))

(declare-fun m!6069690 () Bool)

(assert (=> b!5035302 m!6069690))

(declare-fun m!6069692 () Bool)

(assert (=> b!5035300 m!6069692))

(declare-fun m!6069694 () Bool)

(assert (=> b!5035300 m!6069694))

(declare-fun m!6069696 () Bool)

(assert (=> b!5035304 m!6069696))

(assert (=> b!5035301 m!6069692))

(assert (=> b!5035301 m!6069694))

(declare-fun m!6069698 () Bool)

(assert (=> b!5035299 m!6069698))

(assert (=> b!5035194 d!1619962))

(declare-fun lt!2083269 () tuple2!63188)

(declare-fun bm!351212 () Bool)

(declare-fun call!351218 () List!58399)

(declare-fun c!862407 () Bool)

(declare-fun lt!2083268 () tuple2!63188)

(assert (=> bm!351212 (= call!351218 (++!12702 (ite c!862407 (_2!34897 lt!2083269) lt!2083212) (ite c!862407 lt!2083217 (_1!34897 lt!2083268))))))

(declare-fun b!5035331 () Bool)

(declare-fun e!3145198 () Int)

(assert (=> b!5035331 (= e!3145198 i!618)))

(declare-fun b!5035332 () Bool)

(declare-fun e!3145200 () Bool)

(assert (=> b!5035332 (= e!3145200 (<= i!618 (+ (size!38849 lt!2083212) (size!38849 lt!2083217))))))

(declare-fun bm!351213 () Bool)

(declare-fun c!862405 () Bool)

(assert (=> bm!351213 (= c!862405 c!862407)))

(declare-fun call!351217 () tuple2!63188)

(assert (=> bm!351213 (= call!351217 (splitAtIndex!188 (ite c!862407 lt!2083212 lt!2083217) e!3145198))))

(declare-fun b!5035333 () Bool)

(declare-fun e!3145197 () tuple2!63188)

(assert (=> b!5035333 (= e!3145197 (tuple2!63189 lt!2083212 lt!2083217))))

(declare-fun b!5035334 () Bool)

(declare-fun e!3145199 () tuple2!63188)

(assert (=> b!5035334 (= e!3145197 e!3145199)))

(assert (=> b!5035334 (= c!862407 (< i!618 (size!38849 lt!2083212)))))

(declare-fun b!5035335 () Bool)

(assert (=> b!5035335 (= lt!2083268 call!351217)))

(assert (=> b!5035335 (= e!3145199 (tuple2!63189 call!351218 (_2!34897 lt!2083268)))))

(declare-fun b!5035336 () Bool)

(assert (=> b!5035336 (= e!3145198 (- i!618 (size!38849 lt!2083212)))))

(declare-fun d!1619966 () Bool)

(assert (=> d!1619966 (= (splitAtIndex!188 (++!12702 lt!2083212 lt!2083217) i!618) e!3145197)))

(declare-fun c!862406 () Bool)

(assert (=> d!1619966 (= c!862406 (= (size!38849 lt!2083212) i!618))))

(declare-fun lt!2083267 () Unit!149469)

(declare-fun choose!37244 (List!58399 List!58399 Int) Unit!149469)

(assert (=> d!1619966 (= lt!2083267 (choose!37244 lt!2083212 lt!2083217 i!618))))

(assert (=> d!1619966 e!3145200))

(declare-fun res!2145642 () Bool)

(assert (=> d!1619966 (=> (not res!2145642) (not e!3145200))))

(assert (=> d!1619966 (= res!2145642 (<= 0 i!618))))

(assert (=> d!1619966 (= (splitAtLemma!63 lt!2083212 lt!2083217 i!618) lt!2083267)))

(declare-fun b!5035337 () Bool)

(assert (=> b!5035337 (= lt!2083269 call!351217)))

(assert (=> b!5035337 (= e!3145199 (tuple2!63189 (_1!34897 lt!2083269) call!351218))))

(assert (= (and d!1619966 res!2145642) b!5035332))

(assert (= (and d!1619966 c!862406) b!5035333))

(assert (= (and d!1619966 (not c!862406)) b!5035334))

(assert (= (and b!5035334 c!862407) b!5035337))

(assert (= (and b!5035334 (not c!862407)) b!5035335))

(assert (= (or b!5035337 b!5035335) bm!351212))

(assert (= (or b!5035337 b!5035335) bm!351213))

(assert (= (and bm!351213 c!862405) b!5035331))

(assert (= (and bm!351213 (not c!862405)) b!5035336))

(assert (=> b!5035334 m!6069588))

(declare-fun m!6069708 () Bool)

(assert (=> bm!351213 m!6069708))

(assert (=> d!1619966 m!6069586))

(assert (=> d!1619966 m!6069586))

(assert (=> d!1619966 m!6069590))

(assert (=> d!1619966 m!6069588))

(declare-fun m!6069710 () Bool)

(assert (=> d!1619966 m!6069710))

(assert (=> b!5035332 m!6069588))

(declare-fun m!6069712 () Bool)

(assert (=> b!5035332 m!6069712))

(declare-fun m!6069714 () Bool)

(assert (=> bm!351212 m!6069714))

(assert (=> b!5035336 m!6069588))

(assert (=> b!5035188 d!1619966))

(declare-fun d!1619972 () Bool)

(declare-fun e!3145202 () Bool)

(assert (=> d!1619972 e!3145202))

(declare-fun res!2145644 () Bool)

(assert (=> d!1619972 (=> (not res!2145644) (not e!3145202))))

(declare-fun lt!2083270 () List!58399)

(assert (=> d!1619972 (= res!2145644 (= (content!10338 lt!2083270) (set.union (content!10338 lt!2083212) (content!10338 lt!2083217))))))

(declare-fun e!3145201 () List!58399)

(assert (=> d!1619972 (= lt!2083270 e!3145201)))

(declare-fun c!862408 () Bool)

(assert (=> d!1619972 (= c!862408 (is-Nil!58275 lt!2083212))))

(assert (=> d!1619972 (= (++!12702 lt!2083212 lt!2083217) lt!2083270)))

(declare-fun b!5035338 () Bool)

(assert (=> b!5035338 (= e!3145201 lt!2083217)))

(declare-fun b!5035340 () Bool)

(declare-fun res!2145643 () Bool)

(assert (=> b!5035340 (=> (not res!2145643) (not e!3145202))))

(assert (=> b!5035340 (= res!2145643 (= (size!38849 lt!2083270) (+ (size!38849 lt!2083212) (size!38849 lt!2083217))))))

(declare-fun b!5035341 () Bool)

(assert (=> b!5035341 (= e!3145202 (or (not (= lt!2083217 Nil!58275)) (= lt!2083270 lt!2083212)))))

(declare-fun b!5035339 () Bool)

(assert (=> b!5035339 (= e!3145201 (Cons!58275 (h!64723 lt!2083212) (++!12702 (t!370866 lt!2083212) lt!2083217)))))

(assert (= (and d!1619972 c!862408) b!5035338))

(assert (= (and d!1619972 (not c!862408)) b!5035339))

(assert (= (and d!1619972 res!2145644) b!5035340))

(assert (= (and b!5035340 res!2145643) b!5035341))

(declare-fun m!6069716 () Bool)

(assert (=> d!1619972 m!6069716))

(declare-fun m!6069718 () Bool)

(assert (=> d!1619972 m!6069718))

(declare-fun m!6069720 () Bool)

(assert (=> d!1619972 m!6069720))

(declare-fun m!6069722 () Bool)

(assert (=> b!5035340 m!6069722))

(assert (=> b!5035340 m!6069588))

(assert (=> b!5035340 m!6069712))

(declare-fun m!6069724 () Bool)

(assert (=> b!5035339 m!6069724))

(assert (=> b!5035188 d!1619972))

(declare-fun d!1619974 () Bool)

(declare-fun c!862413 () Bool)

(assert (=> d!1619974 (= c!862413 (is-Empty!15487 (left!42660 t!4198)))))

(declare-fun e!3145211 () List!58399)

(assert (=> d!1619974 (= (list!18866 (left!42660 t!4198)) e!3145211)))

(declare-fun b!5035365 () Bool)

(declare-fun e!3145212 () List!58399)

(assert (=> b!5035365 (= e!3145212 (++!12702 (list!18866 (left!42660 (left!42660 t!4198))) (list!18866 (right!42990 (left!42660 t!4198)))))))

(declare-fun b!5035363 () Bool)

(assert (=> b!5035363 (= e!3145211 e!3145212)))

(declare-fun c!862414 () Bool)

(assert (=> b!5035363 (= c!862414 (is-Leaf!25695 (left!42660 t!4198)))))

(declare-fun b!5035362 () Bool)

(assert (=> b!5035362 (= e!3145211 Nil!58275)))

(declare-fun b!5035364 () Bool)

(declare-fun list!18868 (IArray!31035) List!58399)

(assert (=> b!5035364 (= e!3145212 (list!18868 (xs!18813 (left!42660 t!4198))))))

(assert (= (and d!1619974 c!862413) b!5035362))

(assert (= (and d!1619974 (not c!862413)) b!5035363))

(assert (= (and b!5035363 c!862414) b!5035364))

(assert (= (and b!5035363 (not c!862414)) b!5035365))

(declare-fun m!6069726 () Bool)

(assert (=> b!5035365 m!6069726))

(declare-fun m!6069728 () Bool)

(assert (=> b!5035365 m!6069728))

(assert (=> b!5035365 m!6069726))

(assert (=> b!5035365 m!6069728))

(declare-fun m!6069730 () Bool)

(assert (=> b!5035365 m!6069730))

(declare-fun m!6069732 () Bool)

(assert (=> b!5035364 m!6069732))

(assert (=> b!5035188 d!1619974))

(declare-fun d!1619976 () Bool)

(declare-fun lt!2083273 () Int)

(assert (=> d!1619976 (>= lt!2083273 0)))

(declare-fun e!3145215 () Int)

(assert (=> d!1619976 (= lt!2083273 e!3145215)))

(declare-fun c!862417 () Bool)

(assert (=> d!1619976 (= c!862417 (is-Nil!58275 lt!2083212))))

(assert (=> d!1619976 (= (size!38849 lt!2083212) lt!2083273)))

(declare-fun b!5035370 () Bool)

(assert (=> b!5035370 (= e!3145215 0)))

(declare-fun b!5035371 () Bool)

(assert (=> b!5035371 (= e!3145215 (+ 1 (size!38849 (t!370866 lt!2083212))))))

(assert (= (and d!1619976 c!862417) b!5035370))

(assert (= (and d!1619976 (not c!862417)) b!5035371))

(declare-fun m!6069734 () Bool)

(assert (=> b!5035371 m!6069734))

(assert (=> b!5035188 d!1619976))

(declare-fun d!1619978 () Bool)

(declare-fun c!862418 () Bool)

(assert (=> d!1619978 (= c!862418 (is-Empty!15487 (right!42990 t!4198)))))

(declare-fun e!3145216 () List!58399)

(assert (=> d!1619978 (= (list!18866 (right!42990 t!4198)) e!3145216)))

(declare-fun b!5035375 () Bool)

(declare-fun e!3145217 () List!58399)

(assert (=> b!5035375 (= e!3145217 (++!12702 (list!18866 (left!42660 (right!42990 t!4198))) (list!18866 (right!42990 (right!42990 t!4198)))))))

(declare-fun b!5035373 () Bool)

(assert (=> b!5035373 (= e!3145216 e!3145217)))

(declare-fun c!862419 () Bool)

(assert (=> b!5035373 (= c!862419 (is-Leaf!25695 (right!42990 t!4198)))))

(declare-fun b!5035372 () Bool)

(assert (=> b!5035372 (= e!3145216 Nil!58275)))

(declare-fun b!5035374 () Bool)

(assert (=> b!5035374 (= e!3145217 (list!18868 (xs!18813 (right!42990 t!4198))))))

(assert (= (and d!1619978 c!862418) b!5035372))

(assert (= (and d!1619978 (not c!862418)) b!5035373))

(assert (= (and b!5035373 c!862419) b!5035374))

(assert (= (and b!5035373 (not c!862419)) b!5035375))

(declare-fun m!6069736 () Bool)

(assert (=> b!5035375 m!6069736))

(declare-fun m!6069738 () Bool)

(assert (=> b!5035375 m!6069738))

(assert (=> b!5035375 m!6069736))

(assert (=> b!5035375 m!6069738))

(declare-fun m!6069740 () Bool)

(assert (=> b!5035375 m!6069740))

(declare-fun m!6069742 () Bool)

(assert (=> b!5035374 m!6069742))

(assert (=> b!5035188 d!1619978))

(declare-fun d!1619980 () Bool)

(declare-fun lt!2083274 () Int)

(assert (=> d!1619980 (= lt!2083274 (size!38849 (list!18866 (left!42660 t!4198))))))

(assert (=> d!1619980 (= lt!2083274 (ite (is-Empty!15487 (left!42660 t!4198)) 0 (ite (is-Leaf!25695 (left!42660 t!4198)) (csize!31205 (left!42660 t!4198)) (csize!31204 (left!42660 t!4198)))))))

(assert (=> d!1619980 (= (size!38848 (left!42660 t!4198)) lt!2083274)))

(declare-fun bs!1188746 () Bool)

(assert (= bs!1188746 d!1619980))

(assert (=> bs!1188746 m!6069580))

(assert (=> bs!1188746 m!6069580))

(declare-fun m!6069744 () Bool)

(assert (=> bs!1188746 m!6069744))

(assert (=> b!5035188 d!1619980))

(declare-fun d!1619982 () Bool)

(declare-fun e!3145219 () Bool)

(assert (=> d!1619982 e!3145219))

(declare-fun res!2145657 () Bool)

(assert (=> d!1619982 (=> (not res!2145657) (not e!3145219))))

(declare-fun lt!2083276 () tuple2!63188)

(assert (=> d!1619982 (= res!2145657 (= (++!12702 (_1!34897 lt!2083276) (_2!34897 lt!2083276)) (++!12702 lt!2083212 lt!2083217)))))

(declare-fun e!3145220 () tuple2!63188)

(assert (=> d!1619982 (= lt!2083276 e!3145220)))

(declare-fun c!862421 () Bool)

(assert (=> d!1619982 (= c!862421 (is-Nil!58275 (++!12702 lt!2083212 lt!2083217)))))

(assert (=> d!1619982 (= (splitAtIndex!188 (++!12702 lt!2083212 lt!2083217) i!618) lt!2083276)))

(declare-fun b!5035376 () Bool)

(declare-fun e!3145218 () tuple2!63188)

(assert (=> b!5035376 (= e!3145218 (tuple2!63189 Nil!58275 (++!12702 lt!2083212 lt!2083217)))))

(declare-fun b!5035377 () Bool)

(assert (=> b!5035377 (= e!3145220 e!3145218)))

(declare-fun c!862420 () Bool)

(assert (=> b!5035377 (= c!862420 (<= i!618 0))))

(declare-fun lt!2083275 () tuple2!63188)

(declare-fun b!5035378 () Bool)

(assert (=> b!5035378 (= lt!2083275 (splitAtIndex!188 (t!370866 (++!12702 lt!2083212 lt!2083217)) (- i!618 1)))))

(assert (=> b!5035378 (= e!3145218 (tuple2!63189 (Cons!58275 (h!64723 (++!12702 lt!2083212 lt!2083217)) (_1!34897 lt!2083275)) (_2!34897 lt!2083275)))))

(declare-fun b!5035379 () Bool)

(declare-fun res!2145658 () Bool)

(assert (=> b!5035379 (=> (not res!2145658) (not e!3145219))))

(assert (=> b!5035379 (= res!2145658 (= (_1!34897 lt!2083276) (take!804 (++!12702 lt!2083212 lt!2083217) i!618)))))

(declare-fun b!5035380 () Bool)

(assert (=> b!5035380 (= e!3145219 (= (_2!34897 lt!2083276) (drop!2611 (++!12702 lt!2083212 lt!2083217) i!618)))))

(declare-fun b!5035381 () Bool)

(assert (=> b!5035381 (= e!3145220 (tuple2!63189 Nil!58275 Nil!58275))))

(assert (= (and d!1619982 c!862421) b!5035381))

(assert (= (and d!1619982 (not c!862421)) b!5035377))

(assert (= (and b!5035377 c!862420) b!5035376))

(assert (= (and b!5035377 (not c!862420)) b!5035378))

(assert (= (and d!1619982 res!2145657) b!5035379))

(assert (= (and b!5035379 res!2145658) b!5035380))

(declare-fun m!6069746 () Bool)

(assert (=> d!1619982 m!6069746))

(declare-fun m!6069748 () Bool)

(assert (=> b!5035378 m!6069748))

(assert (=> b!5035379 m!6069586))

(declare-fun m!6069750 () Bool)

(assert (=> b!5035379 m!6069750))

(assert (=> b!5035380 m!6069586))

(declare-fun m!6069752 () Bool)

(assert (=> b!5035380 m!6069752))

(assert (=> b!5035188 d!1619982))

(declare-fun b!5035382 () Bool)

(declare-fun e!3145221 () Bool)

(assert (=> b!5035382 (= e!3145221 (not (isEmpty!31503 (right!42990 t!4198))))))

(declare-fun b!5035383 () Bool)

(declare-fun res!2145659 () Bool)

(assert (=> b!5035383 (=> (not res!2145659) (not e!3145221))))

(assert (=> b!5035383 (= res!2145659 (<= (- (height!2066 (left!42660 t!4198)) (height!2066 (right!42990 t!4198))) 1))))

(declare-fun b!5035384 () Bool)

(declare-fun e!3145222 () Bool)

(assert (=> b!5035384 (= e!3145222 e!3145221)))

(declare-fun res!2145663 () Bool)

(assert (=> b!5035384 (=> (not res!2145663) (not e!3145221))))

(assert (=> b!5035384 (= res!2145663 (<= (- 1) (- (height!2066 (left!42660 t!4198)) (height!2066 (right!42990 t!4198)))))))

(declare-fun d!1619984 () Bool)

(declare-fun res!2145661 () Bool)

(assert (=> d!1619984 (=> res!2145661 e!3145222)))

(assert (=> d!1619984 (= res!2145661 (not (is-Node!15487 t!4198)))))

(assert (=> d!1619984 (= (isBalanced!4349 t!4198) e!3145222)))

(declare-fun b!5035385 () Bool)

(declare-fun res!2145662 () Bool)

(assert (=> b!5035385 (=> (not res!2145662) (not e!3145221))))

(assert (=> b!5035385 (= res!2145662 (isBalanced!4349 (left!42660 t!4198)))))

(declare-fun b!5035386 () Bool)

(declare-fun res!2145664 () Bool)

(assert (=> b!5035386 (=> (not res!2145664) (not e!3145221))))

(assert (=> b!5035386 (= res!2145664 (isBalanced!4349 (right!42990 t!4198)))))

(declare-fun b!5035387 () Bool)

(declare-fun res!2145660 () Bool)

(assert (=> b!5035387 (=> (not res!2145660) (not e!3145221))))

(assert (=> b!5035387 (= res!2145660 (not (isEmpty!31503 (left!42660 t!4198))))))

(assert (= (and d!1619984 (not res!2145661)) b!5035384))

(assert (= (and b!5035384 res!2145663) b!5035383))

(assert (= (and b!5035383 res!2145659) b!5035385))

(assert (= (and b!5035385 res!2145662) b!5035386))

(assert (= (and b!5035386 res!2145664) b!5035387))

(assert (= (and b!5035387 res!2145660) b!5035382))

(assert (=> b!5035386 m!6069598))

(declare-fun m!6069754 () Bool)

(assert (=> b!5035385 m!6069754))

(declare-fun m!6069756 () Bool)

(assert (=> b!5035383 m!6069756))

(declare-fun m!6069758 () Bool)

(assert (=> b!5035383 m!6069758))

(declare-fun m!6069760 () Bool)

(assert (=> b!5035387 m!6069760))

(assert (=> b!5035384 m!6069756))

(assert (=> b!5035384 m!6069758))

(declare-fun m!6069762 () Bool)

(assert (=> b!5035382 m!6069762))

(assert (=> start!532684 d!1619984))

(declare-fun d!1619986 () Bool)

(declare-fun c!862424 () Bool)

(assert (=> d!1619986 (= c!862424 (is-Node!15487 t!4198))))

(declare-fun e!3145229 () Bool)

(assert (=> d!1619986 (= (inv!77019 t!4198) e!3145229)))

(declare-fun b!5035400 () Bool)

(declare-fun inv!77022 (Conc!15487) Bool)

(assert (=> b!5035400 (= e!3145229 (inv!77022 t!4198))))

(declare-fun b!5035401 () Bool)

(declare-fun e!3145230 () Bool)

(assert (=> b!5035401 (= e!3145229 e!3145230)))

(declare-fun res!2145673 () Bool)

(assert (=> b!5035401 (= res!2145673 (not (is-Leaf!25695 t!4198)))))

(assert (=> b!5035401 (=> res!2145673 e!3145230)))

(declare-fun b!5035402 () Bool)

(declare-fun inv!77023 (Conc!15487) Bool)

(assert (=> b!5035402 (= e!3145230 (inv!77023 t!4198))))

(assert (= (and d!1619986 c!862424) b!5035400))

(assert (= (and d!1619986 (not c!862424)) b!5035401))

(assert (= (and b!5035401 (not res!2145673)) b!5035402))

(declare-fun m!6069776 () Bool)

(assert (=> b!5035400 m!6069776))

(declare-fun m!6069778 () Bool)

(assert (=> b!5035402 m!6069778))

(assert (=> start!532684 d!1619986))

(declare-fun d!1619990 () Bool)

(declare-fun c!862425 () Bool)

(assert (=> d!1619990 (= c!862425 (is-Node!15487 (left!42660 t!4198)))))

(declare-fun e!3145231 () Bool)

(assert (=> d!1619990 (= (inv!77019 (left!42660 t!4198)) e!3145231)))

(declare-fun b!5035403 () Bool)

(assert (=> b!5035403 (= e!3145231 (inv!77022 (left!42660 t!4198)))))

(declare-fun b!5035404 () Bool)

(declare-fun e!3145232 () Bool)

(assert (=> b!5035404 (= e!3145231 e!3145232)))

(declare-fun res!2145674 () Bool)

(assert (=> b!5035404 (= res!2145674 (not (is-Leaf!25695 (left!42660 t!4198))))))

(assert (=> b!5035404 (=> res!2145674 e!3145232)))

(declare-fun b!5035405 () Bool)

(assert (=> b!5035405 (= e!3145232 (inv!77023 (left!42660 t!4198)))))

(assert (= (and d!1619990 c!862425) b!5035403))

(assert (= (and d!1619990 (not c!862425)) b!5035404))

(assert (= (and b!5035404 (not res!2145674)) b!5035405))

(declare-fun m!6069780 () Bool)

(assert (=> b!5035403 m!6069780))

(declare-fun m!6069782 () Bool)

(assert (=> b!5035405 m!6069782))

(assert (=> b!5035198 d!1619990))

(declare-fun d!1619992 () Bool)

(declare-fun c!862426 () Bool)

(assert (=> d!1619992 (= c!862426 (is-Node!15487 (right!42990 t!4198)))))

(declare-fun e!3145233 () Bool)

(assert (=> d!1619992 (= (inv!77019 (right!42990 t!4198)) e!3145233)))

(declare-fun b!5035406 () Bool)

(assert (=> b!5035406 (= e!3145233 (inv!77022 (right!42990 t!4198)))))

(declare-fun b!5035407 () Bool)

(declare-fun e!3145234 () Bool)

(assert (=> b!5035407 (= e!3145233 e!3145234)))

(declare-fun res!2145675 () Bool)

(assert (=> b!5035407 (= res!2145675 (not (is-Leaf!25695 (right!42990 t!4198))))))

(assert (=> b!5035407 (=> res!2145675 e!3145234)))

(declare-fun b!5035408 () Bool)

(assert (=> b!5035408 (= e!3145234 (inv!77023 (right!42990 t!4198)))))

(assert (= (and d!1619992 c!862426) b!5035406))

(assert (= (and d!1619992 (not c!862426)) b!5035407))

(assert (= (and b!5035407 (not res!2145675)) b!5035408))

(declare-fun m!6069784 () Bool)

(assert (=> b!5035406 m!6069784))

(declare-fun m!6069786 () Bool)

(assert (=> b!5035408 m!6069786))

(assert (=> b!5035198 d!1619992))

(declare-fun b!5035409 () Bool)

(declare-fun e!3145235 () Bool)

(assert (=> b!5035409 (= e!3145235 (not (isEmpty!31503 (right!42990 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618))))))))

(declare-fun b!5035410 () Bool)

(declare-fun res!2145676 () Bool)

(assert (=> b!5035410 (=> (not res!2145676) (not e!3145235))))

(assert (=> b!5035410 (= res!2145676 (<= (- (height!2066 (left!42660 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618)))) (height!2066 (right!42990 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618))))) 1))))

(declare-fun b!5035411 () Bool)

(declare-fun e!3145236 () Bool)

(assert (=> b!5035411 (= e!3145236 e!3145235)))

(declare-fun res!2145680 () Bool)

(assert (=> b!5035411 (=> (not res!2145680) (not e!3145235))))

(assert (=> b!5035411 (= res!2145680 (<= (- 1) (- (height!2066 (left!42660 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618)))) (height!2066 (right!42990 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618)))))))))

(declare-fun d!1619994 () Bool)

(declare-fun res!2145678 () Bool)

(assert (=> d!1619994 (=> res!2145678 e!3145236)))

(assert (=> d!1619994 (= res!2145678 (not (is-Node!15487 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618)))))))

(assert (=> d!1619994 (= (isBalanced!4349 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618))) e!3145236)))

(declare-fun b!5035412 () Bool)

(declare-fun res!2145679 () Bool)

(assert (=> b!5035412 (=> (not res!2145679) (not e!3145235))))

(assert (=> b!5035412 (= res!2145679 (isBalanced!4349 (left!42660 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618)))))))

(declare-fun b!5035413 () Bool)

(declare-fun res!2145681 () Bool)

(assert (=> b!5035413 (=> (not res!2145681) (not e!3145235))))

(assert (=> b!5035413 (= res!2145681 (isBalanced!4349 (right!42990 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618)))))))

(declare-fun b!5035414 () Bool)

(declare-fun res!2145677 () Bool)

(assert (=> b!5035414 (=> (not res!2145677) (not e!3145235))))

(assert (=> b!5035414 (= res!2145677 (not (isEmpty!31503 (left!42660 (_2!34898 (splitAt!476 (left!42660 t!4198) i!618))))))))

(assert (= (and d!1619994 (not res!2145678)) b!5035411))

(assert (= (and b!5035411 res!2145680) b!5035410))

(assert (= (and b!5035410 res!2145676) b!5035412))

(assert (= (and b!5035412 res!2145679) b!5035413))

(assert (= (and b!5035413 res!2145681) b!5035414))

(assert (= (and b!5035414 res!2145677) b!5035409))

(declare-fun m!6069788 () Bool)

(assert (=> b!5035413 m!6069788))

(declare-fun m!6069790 () Bool)

(assert (=> b!5035412 m!6069790))

(declare-fun m!6069792 () Bool)

(assert (=> b!5035410 m!6069792))

(declare-fun m!6069794 () Bool)

(assert (=> b!5035410 m!6069794))

(declare-fun m!6069796 () Bool)

(assert (=> b!5035414 m!6069796))

(assert (=> b!5035411 m!6069792))

(assert (=> b!5035411 m!6069794))

(declare-fun m!6069798 () Bool)

(assert (=> b!5035409 m!6069798))

(assert (=> b!5035191 d!1619994))

(declare-fun b!5035463 () Bool)

(declare-fun e!3145261 () tuple2!63190)

(declare-fun e!3145266 () tuple2!63190)

(assert (=> b!5035463 (= e!3145261 e!3145266)))

(declare-fun c!862452 () Bool)

(assert (=> b!5035463 (= c!862452 (= i!618 (csize!31205 (left!42660 t!4198))))))

(declare-fun b!5035464 () Bool)

(declare-fun lt!2083310 () tuple2!63190)

(declare-fun call!351236 () tuple2!63190)

(assert (=> b!5035464 (= lt!2083310 call!351236)))

(declare-fun e!3145268 () tuple2!63190)

(declare-fun call!351233 () Conc!15487)

(assert (=> b!5035464 (= e!3145268 (tuple2!63191 call!351233 (_2!34898 lt!2083310)))))

(declare-fun bm!351226 () Bool)

(declare-fun c!862454 () Bool)

(declare-fun c!862458 () Bool)

(assert (=> bm!351226 (= c!862454 c!862458)))

(declare-fun e!3145267 () Int)

(assert (=> bm!351226 (= call!351236 (splitAt!476 (ite c!862458 (left!42660 (left!42660 t!4198)) (right!42990 (left!42660 t!4198))) e!3145267))))

(declare-fun d!1619996 () Bool)

(declare-fun e!3145271 () Bool)

(assert (=> d!1619996 e!3145271))

(declare-fun res!2145686 () Bool)

(assert (=> d!1619996 (=> (not res!2145686) (not e!3145271))))

(declare-fun lt!2083314 () tuple2!63190)

(assert (=> d!1619996 (= res!2145686 (isBalanced!4349 (_1!34898 lt!2083314)))))

(declare-fun e!3145264 () tuple2!63190)

(assert (=> d!1619996 (= lt!2083314 e!3145264)))

(declare-fun c!862459 () Bool)

(assert (=> d!1619996 (= c!862459 (is-Empty!15487 (left!42660 t!4198)))))

(assert (=> d!1619996 (isBalanced!4349 (left!42660 t!4198))))

(assert (=> d!1619996 (= (splitAt!476 (left!42660 t!4198) i!618) lt!2083314)))

(declare-fun b!5035465 () Bool)

(assert (=> b!5035465 (= e!3145271 (= (tuple2!63189 (list!18866 (_1!34898 lt!2083314)) (list!18866 (_2!34898 lt!2083314))) (splitAtIndex!188 (list!18866 (left!42660 t!4198)) i!618)))))

(declare-fun bm!351227 () Bool)

(declare-fun lt!2083308 () tuple2!63190)

(declare-fun ++!12704 (Conc!15487 Conc!15487) Conc!15487)

(assert (=> bm!351227 (= call!351233 (++!12704 (ite c!862458 (_2!34898 lt!2083308) (left!42660 (left!42660 t!4198))) (ite c!862458 (right!42990 (left!42660 t!4198)) (_1!34898 lt!2083310))))))

(declare-fun b!5035466 () Bool)

(declare-fun e!3145270 () tuple2!63190)

(assert (=> b!5035466 (= e!3145270 e!3145268)))

(assert (=> b!5035466 (= c!862458 (< i!618 (size!38848 (left!42660 (left!42660 t!4198)))))))

(declare-fun c!862456 () Bool)

(declare-fun lt!2083311 () List!58399)

(declare-fun e!3145272 () List!58399)

(declare-fun b!5035467 () Bool)

(declare-fun lt!2083312 () List!58399)

(assert (=> b!5035467 (= e!3145272 (ite c!862456 lt!2083311 lt!2083312))))

(declare-fun bm!351228 () Bool)

(declare-fun c!862453 () Bool)

(declare-fun c!862450 () Bool)

(assert (=> bm!351228 (= c!862453 c!862450)))

(declare-fun e!3145269 () Int)

(declare-fun call!351235 () tuple2!63188)

(assert (=> bm!351228 (= call!351235 (splitAtIndex!188 e!3145272 (ite c!862450 i!618 e!3145269)))))

(declare-fun b!5035468 () Bool)

(assert (=> b!5035468 (= e!3145267 (- i!618 (size!38848 (left!42660 (left!42660 t!4198)))))))

(declare-fun b!5035469 () Bool)

(assert (=> b!5035469 (= e!3145264 (tuple2!63191 (left!42660 t!4198) (left!42660 t!4198)))))

(declare-fun b!5035470 () Bool)

(declare-fun c!862455 () Bool)

(assert (=> b!5035470 (= c!862455 (<= i!618 0))))

(declare-fun e!3145262 () tuple2!63190)

(assert (=> b!5035470 (= e!3145262 e!3145261)))

(declare-fun b!5035471 () Bool)

(assert (=> b!5035471 (= e!3145267 i!618)))

(declare-fun call!351234 () List!58399)

(declare-fun bm!351229 () Bool)

(declare-fun lt!2083309 () tuple2!63188)

(declare-fun lt!2083307 () tuple2!63188)

(assert (=> bm!351229 (= call!351234 (++!12702 (ite c!862456 (_2!34897 lt!2083307) lt!2083311) (ite c!862456 lt!2083312 (_1!34897 lt!2083309))))))

(declare-fun b!5035472 () Bool)

(declare-fun call!351231 () tuple2!63188)

(assert (=> b!5035472 (= lt!2083309 call!351231)))

(declare-fun e!3145265 () tuple2!63188)

(assert (=> b!5035472 (= e!3145265 (tuple2!63189 call!351234 (_2!34897 lt!2083309)))))

(declare-fun b!5035473 () Bool)

(assert (=> b!5035473 (= e!3145264 e!3145262)))

(assert (=> b!5035473 (= c!862450 (is-Leaf!25695 (left!42660 t!4198)))))

(declare-fun b!5035474 () Bool)

(declare-fun lt!2083313 () Unit!149469)

(declare-fun lt!2083315 () Unit!149469)

(assert (=> b!5035474 (= lt!2083313 lt!2083315)))

(declare-fun lt!2083303 () List!58399)

(declare-fun call!351232 () Int)

(declare-fun slice!840 (List!58399 Int Int) List!58399)

(assert (=> b!5035474 (= (drop!2611 lt!2083303 i!618) (slice!840 lt!2083303 i!618 call!351232))))

(declare-fun dropLemma!65 (List!58399 Int) Unit!149469)

(assert (=> b!5035474 (= lt!2083315 (dropLemma!65 lt!2083303 i!618))))

(assert (=> b!5035474 (= lt!2083303 (list!18868 (xs!18813 (left!42660 t!4198))))))

(declare-fun lt!2083306 () tuple2!63188)

(assert (=> b!5035474 (= lt!2083306 call!351235)))

(declare-fun slice!841 (IArray!31035 Int Int) IArray!31035)

(assert (=> b!5035474 (= e!3145266 (tuple2!63191 (Leaf!25695 (slice!841 (xs!18813 (left!42660 t!4198)) 0 i!618) i!618) (Leaf!25695 (slice!841 (xs!18813 (left!42660 t!4198)) i!618 (csize!31205 (left!42660 t!4198))) (- (csize!31205 (left!42660 t!4198)) i!618))))))

(declare-fun bm!351230 () Bool)

(declare-fun c!862457 () Bool)

(assert (=> bm!351230 (= c!862457 c!862456)))

(assert (=> bm!351230 (= call!351231 call!351235)))

(declare-fun b!5035475 () Bool)

(assert (=> b!5035475 (= e!3145266 (tuple2!63191 (left!42660 t!4198) Empty!15487))))

(declare-fun b!5035476 () Bool)

(assert (=> b!5035476 (= e!3145269 i!618)))

(declare-fun b!5035477 () Bool)

(declare-fun e!3145263 () tuple2!63188)

(assert (=> b!5035477 (= e!3145263 e!3145265)))

(assert (=> b!5035477 (= c!862456 (< i!618 call!351232))))

(declare-fun b!5035478 () Bool)

(assert (=> b!5035478 (= lt!2083307 call!351231)))

(assert (=> b!5035478 (= e!3145265 (tuple2!63189 (_1!34897 lt!2083307) call!351234))))

(declare-fun b!5035479 () Bool)

(declare-fun res!2145687 () Bool)

(assert (=> b!5035479 (=> (not res!2145687) (not e!3145271))))

(assert (=> b!5035479 (= res!2145687 (isBalanced!4349 (_2!34898 lt!2083314)))))

(declare-fun b!5035480 () Bool)

(assert (=> b!5035480 (= e!3145270 (tuple2!63191 (left!42660 (left!42660 t!4198)) (right!42990 (left!42660 t!4198))))))

(declare-fun b!5035481 () Bool)

(assert (=> b!5035481 (= e!3145261 (tuple2!63191 Empty!15487 (left!42660 t!4198)))))

(declare-fun b!5035482 () Bool)

(assert (=> b!5035482 (= e!3145269 (- i!618 call!351232))))

(declare-fun b!5035483 () Bool)

(assert (=> b!5035483 (= e!3145263 (tuple2!63189 lt!2083311 lt!2083312))))

(declare-fun b!5035484 () Bool)

(assert (=> b!5035484 (= lt!2083308 call!351236)))

(assert (=> b!5035484 (= e!3145268 (tuple2!63191 (_1!34898 lt!2083308) call!351233))))

(declare-fun bm!351231 () Bool)

(assert (=> bm!351231 (= call!351232 (size!38849 (ite c!862450 lt!2083303 lt!2083311)))))

(declare-fun b!5035485 () Bool)

(assert (=> b!5035485 (= e!3145272 (list!18868 (xs!18813 (left!42660 t!4198))))))

(declare-fun b!5035486 () Bool)

(declare-fun c!862451 () Bool)

(assert (=> b!5035486 (= c!862451 (= (size!38848 (left!42660 (left!42660 t!4198))) i!618))))

(declare-fun lt!2083304 () Unit!149469)

(declare-fun lt!2083305 () Unit!149469)

(assert (=> b!5035486 (= lt!2083304 lt!2083305)))

(assert (=> b!5035486 (= (splitAtIndex!188 (++!12702 lt!2083311 lt!2083312) i!618) e!3145263)))

(declare-fun c!862449 () Bool)

(assert (=> b!5035486 (= c!862449 (= call!351232 i!618))))

(assert (=> b!5035486 (= lt!2083305 (splitAtLemma!63 lt!2083311 lt!2083312 i!618))))

(assert (=> b!5035486 (= lt!2083312 (list!18866 (right!42990 (left!42660 t!4198))))))

(assert (=> b!5035486 (= lt!2083311 (list!18866 (left!42660 (left!42660 t!4198))))))

(assert (=> b!5035486 (= e!3145262 e!3145270)))

(assert (= (and d!1619996 c!862459) b!5035469))

(assert (= (and d!1619996 (not c!862459)) b!5035473))

(assert (= (and b!5035473 c!862450) b!5035470))

(assert (= (and b!5035473 (not c!862450)) b!5035486))

(assert (= (and b!5035470 c!862455) b!5035481))

(assert (= (and b!5035470 (not c!862455)) b!5035463))

(assert (= (and b!5035463 c!862452) b!5035475))

(assert (= (and b!5035463 (not c!862452)) b!5035474))

(assert (= (and b!5035486 c!862449) b!5035483))

(assert (= (and b!5035486 (not c!862449)) b!5035477))

(assert (= (and b!5035477 c!862456) b!5035478))

(assert (= (and b!5035477 (not c!862456)) b!5035472))

(assert (= (or b!5035478 b!5035472) bm!351229))

(assert (= (or b!5035478 b!5035472) bm!351230))

(assert (= (and bm!351230 c!862457) b!5035476))

(assert (= (and bm!351230 (not c!862457)) b!5035482))

(assert (= (and b!5035486 c!862451) b!5035480))

(assert (= (and b!5035486 (not c!862451)) b!5035466))

(assert (= (and b!5035466 c!862458) b!5035484))

(assert (= (and b!5035466 (not c!862458)) b!5035464))

(assert (= (or b!5035484 b!5035464) bm!351227))

(assert (= (or b!5035484 b!5035464) bm!351226))

(assert (= (and bm!351226 c!862454) b!5035471))

(assert (= (and bm!351226 (not c!862454)) b!5035468))

(assert (= (or b!5035474 b!5035486 b!5035477 b!5035482) bm!351231))

(assert (= (or b!5035474 bm!351230) bm!351228))

(assert (= (and bm!351228 c!862453) b!5035485))

(assert (= (and bm!351228 (not c!862453)) b!5035467))

(assert (= (and d!1619996 res!2145686) b!5035479))

(assert (= (and b!5035479 res!2145687) b!5035465))

(declare-fun m!6069800 () Bool)

(assert (=> b!5035474 m!6069800))

(declare-fun m!6069802 () Bool)

(assert (=> b!5035474 m!6069802))

(assert (=> b!5035474 m!6069732))

(declare-fun m!6069804 () Bool)

(assert (=> b!5035474 m!6069804))

(declare-fun m!6069806 () Bool)

(assert (=> b!5035474 m!6069806))

(declare-fun m!6069808 () Bool)

(assert (=> b!5035474 m!6069808))

(declare-fun m!6069810 () Bool)

(assert (=> d!1619996 m!6069810))

(assert (=> d!1619996 m!6069754))

(declare-fun m!6069812 () Bool)

(assert (=> b!5035479 m!6069812))

(declare-fun m!6069814 () Bool)

(assert (=> bm!351226 m!6069814))

(declare-fun m!6069816 () Bool)

(assert (=> bm!351228 m!6069816))

(declare-fun m!6069818 () Bool)

(assert (=> bm!351227 m!6069818))

(assert (=> b!5035485 m!6069732))

(declare-fun m!6069820 () Bool)

(assert (=> b!5035465 m!6069820))

(declare-fun m!6069822 () Bool)

(assert (=> b!5035465 m!6069822))

(assert (=> b!5035465 m!6069580))

(assert (=> b!5035465 m!6069580))

(declare-fun m!6069824 () Bool)

(assert (=> b!5035465 m!6069824))

(declare-fun m!6069826 () Bool)

(assert (=> b!5035468 m!6069826))

(assert (=> b!5035466 m!6069826))

(declare-fun m!6069828 () Bool)

(assert (=> bm!351229 m!6069828))

(declare-fun m!6069830 () Bool)

(assert (=> b!5035486 m!6069830))

(assert (=> b!5035486 m!6069826))

(assert (=> b!5035486 m!6069830))

(declare-fun m!6069832 () Bool)

(assert (=> b!5035486 m!6069832))

(declare-fun m!6069834 () Bool)

(assert (=> b!5035486 m!6069834))

(assert (=> b!5035486 m!6069726))

(assert (=> b!5035486 m!6069728))

(declare-fun m!6069836 () Bool)

(assert (=> bm!351231 m!6069836))

(assert (=> b!5035191 d!1619996))

(declare-fun b!5035491 () Bool)

(declare-fun e!3145275 () Bool)

(declare-fun tp_is_empty!36737 () Bool)

(declare-fun tp!1410215 () Bool)

(assert (=> b!5035491 (= e!3145275 (and tp_is_empty!36737 tp!1410215))))

(assert (=> b!5035193 (= tp!1410201 e!3145275)))

(assert (= (and b!5035193 (is-Cons!58275 (innerList!15575 (xs!18813 t!4198)))) b!5035491))

(declare-fun b!5035500 () Bool)

(declare-fun tp!1410223 () Bool)

(declare-fun e!3145280 () Bool)

(declare-fun tp!1410224 () Bool)

(assert (=> b!5035500 (= e!3145280 (and (inv!77019 (left!42660 (left!42660 t!4198))) tp!1410224 (inv!77019 (right!42990 (left!42660 t!4198))) tp!1410223))))

(declare-fun b!5035502 () Bool)

(declare-fun e!3145281 () Bool)

(declare-fun tp!1410222 () Bool)

(assert (=> b!5035502 (= e!3145281 tp!1410222)))

(declare-fun b!5035501 () Bool)

(assert (=> b!5035501 (= e!3145280 (and (inv!77018 (xs!18813 (left!42660 t!4198))) e!3145281))))

(assert (=> b!5035198 (= tp!1410203 (and (inv!77019 (left!42660 t!4198)) e!3145280))))

(assert (= (and b!5035198 (is-Node!15487 (left!42660 t!4198))) b!5035500))

(assert (= b!5035501 b!5035502))

(assert (= (and b!5035198 (is-Leaf!25695 (left!42660 t!4198))) b!5035501))

(declare-fun m!6069838 () Bool)

(assert (=> b!5035500 m!6069838))

(declare-fun m!6069840 () Bool)

(assert (=> b!5035500 m!6069840))

(declare-fun m!6069842 () Bool)

(assert (=> b!5035501 m!6069842))

(assert (=> b!5035198 m!6069608))

(declare-fun b!5035503 () Bool)

(declare-fun tp!1410226 () Bool)

(declare-fun e!3145282 () Bool)

(declare-fun tp!1410227 () Bool)

(assert (=> b!5035503 (= e!3145282 (and (inv!77019 (left!42660 (right!42990 t!4198))) tp!1410227 (inv!77019 (right!42990 (right!42990 t!4198))) tp!1410226))))

(declare-fun b!5035505 () Bool)

(declare-fun e!3145283 () Bool)

(declare-fun tp!1410225 () Bool)

(assert (=> b!5035505 (= e!3145283 tp!1410225)))

(declare-fun b!5035504 () Bool)

(assert (=> b!5035504 (= e!3145282 (and (inv!77018 (xs!18813 (right!42990 t!4198))) e!3145283))))

(assert (=> b!5035198 (= tp!1410202 (and (inv!77019 (right!42990 t!4198)) e!3145282))))

(assert (= (and b!5035198 (is-Node!15487 (right!42990 t!4198))) b!5035503))

(assert (= b!5035504 b!5035505))

(assert (= (and b!5035198 (is-Leaf!25695 (right!42990 t!4198))) b!5035504))

(declare-fun m!6069844 () Bool)

(assert (=> b!5035503 m!6069844))

(declare-fun m!6069846 () Bool)

(assert (=> b!5035503 m!6069846))

(declare-fun m!6069848 () Bool)

(assert (=> b!5035504 m!6069848))

(assert (=> b!5035198 m!6069610))

(push 1)

(assert (not b!5035412))

(assert (not b!5035301))

(assert (not b!5035302))

(assert tp_is_empty!36737)

(assert (not b!5035468))

(assert (not bm!351231))

(assert (not d!1619960))

(assert (not b!5035501))

(assert (not d!1619956))

(assert (not b!5035384))

(assert (not b!5035402))

(assert (not b!5035410))

(assert (not b!5035411))

(assert (not b!5035382))

(assert (not b!5035371))

(assert (not b!5035379))

(assert (not b!5035387))

(assert (not bm!351228))

(assert (not b!5035385))

(assert (not b!5035364))

(assert (not b!5035198))

(assert (not d!1619952))

(assert (not b!5035375))

(assert (not bm!351213))

(assert (not d!1619996))

(assert (not b!5035479))

(assert (not bm!351226))

(assert (not b!5035474))

(assert (not d!1619982))

(assert (not bm!351229))

(assert (not b!5035299))

(assert (not b!5035365))

(assert (not b!5035339))

(assert (not b!5035248))

(assert (not b!5035303))

(assert (not b!5035405))

(assert (not b!5035465))

(assert (not b!5035304))

(assert (not b!5035414))

(assert (not b!5035273))

(assert (not b!5035274))

(assert (not b!5035406))

(assert (not b!5035378))

(assert (not d!1619980))

(assert (not b!5035500))

(assert (not b!5035336))

(assert (not b!5035485))

(assert (not b!5035486))

(assert (not b!5035466))

(assert (not b!5035403))

(assert (not b!5035383))

(assert (not b!5035300))

(assert (not bm!351212))

(assert (not d!1619958))

(assert (not b!5035340))

(assert (not b!5035413))

(assert (not b!5035374))

(assert (not b!5035502))

(assert (not b!5035275))

(assert (not b!5035491))

(assert (not d!1619966))

(assert (not bm!351227))

(assert (not b!5035386))

(assert (not b!5035504))

(assert (not b!5035380))

(assert (not b!5035503))

(assert (not b!5035408))

(assert (not d!1619972))

(assert (not b!5035249))

(assert (not b!5035334))

(assert (not b!5035332))

(assert (not b!5035505))

(assert (not b!5035400))

(assert (not b!5035409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

