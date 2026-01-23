; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!533756 () Bool)

(assert start!533756)

(declare-fun b!5046168 () Bool)

(declare-fun e!3150856 () Bool)

(declare-datatypes ((T!104290 0))(
  ( (T!104291 (val!23529 Int)) )
))
(declare-datatypes ((List!58439 0))(
  ( (Nil!58315) (Cons!58315 (h!64763 T!104290) (t!371052 List!58439)) )
))
(declare-datatypes ((IArray!31115 0))(
  ( (IArray!31116 (innerList!15615 List!58439)) )
))
(declare-datatypes ((Conc!15527 0))(
  ( (Node!15527 (left!42720 Conc!15527) (right!43050 Conc!15527) (csize!31284 Int) (cheight!15738 Int)) (Leaf!25755 (xs!18853 IArray!31115) (csize!31285 Int)) (Empty!15527) )
))
(declare-fun t!4198 () Conc!15527)

(declare-fun e!3150861 () Bool)

(declare-fun inv!77236 (IArray!31115) Bool)

(assert (=> b!5046168 (= e!3150856 (and (inv!77236 (xs!18853 t!4198)) e!3150861))))

(declare-fun b!5046170 () Bool)

(declare-fun res!2149447 () Bool)

(declare-fun e!3150857 () Bool)

(assert (=> b!5046170 (=> (not res!2149447) (not e!3150857))))

(assert (=> b!5046170 (= res!2149447 (and (not (is-Empty!15527 t!4198)) (not (is-Leaf!25755 t!4198))))))

(declare-fun b!5046171 () Bool)

(declare-fun e!3150858 () Bool)

(declare-fun e!3150860 () Bool)

(assert (=> b!5046171 (= e!3150858 e!3150860)))

(declare-fun res!2149445 () Bool)

(assert (=> b!5046171 (=> (not res!2149445) (not e!3150860))))

(declare-datatypes ((tuple2!63260 0))(
  ( (tuple2!63261 (_1!34933 Conc!15527) (_2!34933 Conc!15527)) )
))
(declare-fun lt!2085324 () tuple2!63260)

(declare-fun isBalanced!4389 (Conc!15527) Bool)

(assert (=> b!5046171 (= res!2149445 (isBalanced!4389 (_1!34933 lt!2085324)))))

(declare-fun lt!2085323 () Conc!15527)

(declare-fun ++!12740 (Conc!15527 Conc!15527) Conc!15527)

(assert (=> b!5046171 (= lt!2085323 (++!12740 (_2!34933 lt!2085324) (right!43050 t!4198)))))

(declare-fun i!618 () Int)

(declare-fun splitAt!480 (Conc!15527 Int) tuple2!63260)

(assert (=> b!5046171 (= lt!2085324 (splitAt!480 (left!42720 t!4198) i!618))))

(declare-fun b!5046172 () Bool)

(declare-fun res!2149443 () Bool)

(assert (=> b!5046172 (=> (not res!2149443) (not e!3150857))))

(declare-fun size!38934 (Conc!15527) Int)

(assert (=> b!5046172 (= res!2149443 (<= i!618 (size!38934 t!4198)))))

(declare-fun b!5046173 () Bool)

(declare-datatypes ((tuple2!63262 0))(
  ( (tuple2!63263 (_1!34934 List!58439) (_2!34934 List!58439)) )
))
(declare-fun list!18940 (Conc!15527) List!58439)

(declare-fun splitAtIndex!220 (List!58439 Int) tuple2!63262)

(assert (=> b!5046173 (= e!3150860 (= (tuple2!63263 (list!18940 (_1!34933 lt!2085324)) (list!18940 lt!2085323)) (splitAtIndex!220 (list!18940 t!4198) i!618)))))

(declare-fun b!5046174 () Bool)

(declare-fun lt!2085320 () tuple2!63262)

(declare-fun call!351538 () tuple2!63262)

(assert (=> b!5046174 (= lt!2085320 call!351538)))

(declare-fun e!3150859 () tuple2!63262)

(declare-fun call!351539 () List!58439)

(assert (=> b!5046174 (= e!3150859 (tuple2!63263 (_1!34934 lt!2085320) call!351539))))

(declare-fun b!5046175 () Bool)

(assert (=> b!5046175 (= e!3150857 (not e!3150858))))

(declare-fun res!2149442 () Bool)

(assert (=> b!5046175 (=> res!2149442 e!3150858)))

(declare-fun lt!2085317 () Int)

(assert (=> b!5046175 (= res!2149442 (or (= lt!2085317 i!618) (>= i!618 lt!2085317)))))

(assert (=> b!5046175 (= lt!2085317 (size!38934 (left!42720 t!4198)))))

(declare-fun e!3150855 () Bool)

(assert (=> b!5046175 e!3150855))

(declare-fun c!865083 () Bool)

(declare-fun lt!2085318 () Int)

(assert (=> b!5046175 (= c!865083 (= lt!2085318 i!618))))

(declare-fun lt!2085325 () List!58439)

(declare-fun lt!2085319 () tuple2!63262)

(declare-fun lt!2085322 () List!58439)

(declare-fun ++!12741 (List!58439 List!58439) List!58439)

(assert (=> b!5046175 (= lt!2085319 (splitAtIndex!220 (++!12741 lt!2085322 lt!2085325) i!618))))

(declare-fun size!38935 (List!58439) Int)

(assert (=> b!5046175 (= lt!2085318 (size!38935 lt!2085322))))

(declare-datatypes ((Unit!149509 0))(
  ( (Unit!149510) )
))
(declare-fun lt!2085316 () Unit!149509)

(declare-fun splitAtLemma!75 (List!58439 List!58439 Int) Unit!149509)

(assert (=> b!5046175 (= lt!2085316 (splitAtLemma!75 lt!2085322 lt!2085325 i!618))))

(assert (=> b!5046175 (= lt!2085325 (list!18940 (right!43050 t!4198)))))

(assert (=> b!5046175 (= lt!2085322 (list!18940 (left!42720 t!4198)))))

(declare-fun b!5046176 () Bool)

(declare-fun res!2149446 () Bool)

(assert (=> b!5046176 (=> (not res!2149446) (not e!3150860))))

(assert (=> b!5046176 (= res!2149446 (isBalanced!4389 lt!2085323))))

(declare-fun bm!351533 () Bool)

(declare-fun lt!2085321 () tuple2!63262)

(declare-fun c!865082 () Bool)

(assert (=> bm!351533 (= call!351539 (++!12741 (ite c!865082 (_2!34934 lt!2085320) lt!2085322) (ite c!865082 lt!2085325 (_1!34934 lt!2085321))))))

(declare-fun res!2149448 () Bool)

(assert (=> start!533756 (=> (not res!2149448) (not e!3150857))))

(assert (=> start!533756 (= res!2149448 (isBalanced!4389 t!4198))))

(assert (=> start!533756 e!3150857))

(declare-fun inv!77237 (Conc!15527) Bool)

(assert (=> start!533756 (and (inv!77237 t!4198) e!3150856)))

(assert (=> start!533756 true))

(declare-fun tp!1411738 () Bool)

(declare-fun tp!1411737 () Bool)

(declare-fun b!5046169 () Bool)

(assert (=> b!5046169 (= e!3150856 (and (inv!77237 (left!42720 t!4198)) tp!1411738 (inv!77237 (right!43050 t!4198)) tp!1411737))))

(declare-fun b!5046177 () Bool)

(assert (=> b!5046177 (= e!3150855 (= lt!2085319 e!3150859))))

(assert (=> b!5046177 (= c!865082 (< i!618 lt!2085318))))

(declare-fun b!5046178 () Bool)

(declare-fun tp!1411736 () Bool)

(assert (=> b!5046178 (= e!3150861 tp!1411736)))

(declare-fun b!5046179 () Bool)

(assert (=> b!5046179 (= e!3150855 (= lt!2085319 (tuple2!63263 lt!2085322 lt!2085325)))))

(declare-fun bm!351534 () Bool)

(assert (=> bm!351534 (= call!351538 (splitAtIndex!220 (ite c!865082 lt!2085322 lt!2085325) (ite c!865082 i!618 (- i!618 lt!2085318))))))

(declare-fun b!5046180 () Bool)

(assert (=> b!5046180 (= lt!2085321 call!351538)))

(assert (=> b!5046180 (= e!3150859 (tuple2!63263 call!351539 (_2!34934 lt!2085321)))))

(declare-fun b!5046181 () Bool)

(declare-fun res!2149444 () Bool)

(assert (=> b!5046181 (=> (not res!2149444) (not e!3150857))))

(assert (=> b!5046181 (= res!2149444 (<= 0 i!618))))

(assert (= (and start!533756 res!2149448) b!5046181))

(assert (= (and b!5046181 res!2149444) b!5046172))

(assert (= (and b!5046172 res!2149443) b!5046170))

(assert (= (and b!5046170 res!2149447) b!5046175))

(assert (= (and b!5046175 c!865083) b!5046179))

(assert (= (and b!5046175 (not c!865083)) b!5046177))

(assert (= (and b!5046177 c!865082) b!5046174))

(assert (= (and b!5046177 (not c!865082)) b!5046180))

(assert (= (or b!5046174 b!5046180) bm!351533))

(assert (= (or b!5046174 b!5046180) bm!351534))

(assert (= (and b!5046175 (not res!2149442)) b!5046171))

(assert (= (and b!5046171 res!2149445) b!5046176))

(assert (= (and b!5046176 res!2149446) b!5046173))

(assert (= (and start!533756 (is-Node!15527 t!4198)) b!5046169))

(assert (= b!5046168 b!5046178))

(assert (= (and start!533756 (is-Leaf!25755 t!4198)) b!5046168))

(declare-fun m!6081550 () Bool)

(assert (=> b!5046176 m!6081550))

(declare-fun m!6081552 () Bool)

(assert (=> bm!351534 m!6081552))

(declare-fun m!6081554 () Bool)

(assert (=> start!533756 m!6081554))

(declare-fun m!6081556 () Bool)

(assert (=> start!533756 m!6081556))

(declare-fun m!6081558 () Bool)

(assert (=> b!5046175 m!6081558))

(declare-fun m!6081560 () Bool)

(assert (=> b!5046175 m!6081560))

(declare-fun m!6081562 () Bool)

(assert (=> b!5046175 m!6081562))

(assert (=> b!5046175 m!6081560))

(declare-fun m!6081564 () Bool)

(assert (=> b!5046175 m!6081564))

(declare-fun m!6081566 () Bool)

(assert (=> b!5046175 m!6081566))

(declare-fun m!6081568 () Bool)

(assert (=> b!5046175 m!6081568))

(declare-fun m!6081570 () Bool)

(assert (=> b!5046175 m!6081570))

(declare-fun m!6081572 () Bool)

(assert (=> bm!351533 m!6081572))

(declare-fun m!6081574 () Bool)

(assert (=> b!5046172 m!6081574))

(declare-fun m!6081576 () Bool)

(assert (=> b!5046173 m!6081576))

(declare-fun m!6081578 () Bool)

(assert (=> b!5046173 m!6081578))

(declare-fun m!6081580 () Bool)

(assert (=> b!5046173 m!6081580))

(assert (=> b!5046173 m!6081580))

(declare-fun m!6081582 () Bool)

(assert (=> b!5046173 m!6081582))

(declare-fun m!6081584 () Bool)

(assert (=> b!5046168 m!6081584))

(declare-fun m!6081586 () Bool)

(assert (=> b!5046169 m!6081586))

(declare-fun m!6081588 () Bool)

(assert (=> b!5046169 m!6081588))

(declare-fun m!6081590 () Bool)

(assert (=> b!5046171 m!6081590))

(declare-fun m!6081592 () Bool)

(assert (=> b!5046171 m!6081592))

(declare-fun m!6081594 () Bool)

(assert (=> b!5046171 m!6081594))

(push 1)

(assert (not b!5046178))

(assert (not bm!351534))

(assert (not bm!351533))

(assert (not b!5046176))

(assert (not b!5046173))

(assert (not b!5046169))

(assert (not b!5046172))

(assert (not b!5046171))

(assert (not b!5046168))

(assert (not start!533756))

(assert (not b!5046175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1624196 () Bool)

(declare-fun lt!2085358 () Int)

(assert (=> d!1624196 (= lt!2085358 (size!38935 (list!18940 t!4198)))))

(assert (=> d!1624196 (= lt!2085358 (ite (is-Empty!15527 t!4198) 0 (ite (is-Leaf!25755 t!4198) (csize!31285 t!4198) (csize!31284 t!4198))))))

(assert (=> d!1624196 (= (size!38934 t!4198) lt!2085358)))

(declare-fun bs!1189144 () Bool)

(assert (= bs!1189144 d!1624196))

(assert (=> bs!1189144 m!6081580))

(assert (=> bs!1189144 m!6081580))

(declare-fun m!6081666 () Bool)

(assert (=> bs!1189144 m!6081666))

(assert (=> b!5046172 d!1624196))

(declare-fun d!1624200 () Bool)

(declare-fun c!865102 () Bool)

(assert (=> d!1624200 (= c!865102 (is-Empty!15527 (_1!34933 lt!2085324)))))

(declare-fun e!3150901 () List!58439)

(assert (=> d!1624200 (= (list!18940 (_1!34933 lt!2085324)) e!3150901)))

(declare-fun b!5046266 () Bool)

(assert (=> b!5046266 (= e!3150901 Nil!58315)))

(declare-fun b!5046269 () Bool)

(declare-fun e!3150902 () List!58439)

(assert (=> b!5046269 (= e!3150902 (++!12741 (list!18940 (left!42720 (_1!34933 lt!2085324))) (list!18940 (right!43050 (_1!34933 lt!2085324)))))))

(declare-fun b!5046267 () Bool)

(assert (=> b!5046267 (= e!3150901 e!3150902)))

(declare-fun c!865103 () Bool)

(assert (=> b!5046267 (= c!865103 (is-Leaf!25755 (_1!34933 lt!2085324)))))

(declare-fun b!5046268 () Bool)

(declare-fun list!18942 (IArray!31115) List!58439)

(assert (=> b!5046268 (= e!3150902 (list!18942 (xs!18853 (_1!34933 lt!2085324))))))

(assert (= (and d!1624200 c!865102) b!5046266))

(assert (= (and d!1624200 (not c!865102)) b!5046267))

(assert (= (and b!5046267 c!865103) b!5046268))

(assert (= (and b!5046267 (not c!865103)) b!5046269))

(declare-fun m!6081672 () Bool)

(assert (=> b!5046269 m!6081672))

(declare-fun m!6081674 () Bool)

(assert (=> b!5046269 m!6081674))

(assert (=> b!5046269 m!6081672))

(assert (=> b!5046269 m!6081674))

(declare-fun m!6081676 () Bool)

(assert (=> b!5046269 m!6081676))

(declare-fun m!6081678 () Bool)

(assert (=> b!5046268 m!6081678))

(assert (=> b!5046173 d!1624200))

(declare-fun d!1624204 () Bool)

(declare-fun c!865104 () Bool)

(assert (=> d!1624204 (= c!865104 (is-Empty!15527 lt!2085323))))

(declare-fun e!3150903 () List!58439)

(assert (=> d!1624204 (= (list!18940 lt!2085323) e!3150903)))

(declare-fun b!5046270 () Bool)

(assert (=> b!5046270 (= e!3150903 Nil!58315)))

(declare-fun b!5046273 () Bool)

(declare-fun e!3150904 () List!58439)

(assert (=> b!5046273 (= e!3150904 (++!12741 (list!18940 (left!42720 lt!2085323)) (list!18940 (right!43050 lt!2085323))))))

(declare-fun b!5046271 () Bool)

(assert (=> b!5046271 (= e!3150903 e!3150904)))

(declare-fun c!865105 () Bool)

(assert (=> b!5046271 (= c!865105 (is-Leaf!25755 lt!2085323))))

(declare-fun b!5046272 () Bool)

(assert (=> b!5046272 (= e!3150904 (list!18942 (xs!18853 lt!2085323)))))

(assert (= (and d!1624204 c!865104) b!5046270))

(assert (= (and d!1624204 (not c!865104)) b!5046271))

(assert (= (and b!5046271 c!865105) b!5046272))

(assert (= (and b!5046271 (not c!865105)) b!5046273))

(declare-fun m!6081680 () Bool)

(assert (=> b!5046273 m!6081680))

(declare-fun m!6081682 () Bool)

(assert (=> b!5046273 m!6081682))

(assert (=> b!5046273 m!6081680))

(assert (=> b!5046273 m!6081682))

(declare-fun m!6081684 () Bool)

(assert (=> b!5046273 m!6081684))

(declare-fun m!6081686 () Bool)

(assert (=> b!5046272 m!6081686))

(assert (=> b!5046173 d!1624204))

(declare-fun b!5046308 () Bool)

(declare-fun lt!2085369 () tuple2!63262)

(assert (=> b!5046308 (= lt!2085369 (splitAtIndex!220 (t!371052 (list!18940 t!4198)) (- i!618 1)))))

(declare-fun e!3150922 () tuple2!63262)

(assert (=> b!5046308 (= e!3150922 (tuple2!63263 (Cons!58315 (h!64763 (list!18940 t!4198)) (_1!34934 lt!2085369)) (_2!34934 lt!2085369)))))

(declare-fun d!1624206 () Bool)

(declare-fun e!3150924 () Bool)

(assert (=> d!1624206 e!3150924))

(declare-fun res!2149499 () Bool)

(assert (=> d!1624206 (=> (not res!2149499) (not e!3150924))))

(declare-fun lt!2085370 () tuple2!63262)

(assert (=> d!1624206 (= res!2149499 (= (++!12741 (_1!34934 lt!2085370) (_2!34934 lt!2085370)) (list!18940 t!4198)))))

(declare-fun e!3150923 () tuple2!63262)

(assert (=> d!1624206 (= lt!2085370 e!3150923)))

(declare-fun c!865119 () Bool)

(assert (=> d!1624206 (= c!865119 (is-Nil!58315 (list!18940 t!4198)))))

(assert (=> d!1624206 (= (splitAtIndex!220 (list!18940 t!4198) i!618) lt!2085370)))

(declare-fun b!5046309 () Bool)

(declare-fun drop!2643 (List!58439 Int) List!58439)

(assert (=> b!5046309 (= e!3150924 (= (_2!34934 lt!2085370) (drop!2643 (list!18940 t!4198) i!618)))))

(declare-fun b!5046310 () Bool)

(declare-fun res!2149498 () Bool)

(assert (=> b!5046310 (=> (not res!2149498) (not e!3150924))))

(declare-fun take!836 (List!58439 Int) List!58439)

(assert (=> b!5046310 (= res!2149498 (= (_1!34934 lt!2085370) (take!836 (list!18940 t!4198) i!618)))))

(declare-fun b!5046311 () Bool)

(assert (=> b!5046311 (= e!3150923 (tuple2!63263 Nil!58315 Nil!58315))))

(declare-fun b!5046312 () Bool)

(assert (=> b!5046312 (= e!3150922 (tuple2!63263 Nil!58315 (list!18940 t!4198)))))

(declare-fun b!5046313 () Bool)

(assert (=> b!5046313 (= e!3150923 e!3150922)))

(declare-fun c!865118 () Bool)

(assert (=> b!5046313 (= c!865118 (<= i!618 0))))

(assert (= (and d!1624206 c!865119) b!5046311))

(assert (= (and d!1624206 (not c!865119)) b!5046313))

(assert (= (and b!5046313 c!865118) b!5046312))

(assert (= (and b!5046313 (not c!865118)) b!5046308))

(assert (= (and d!1624206 res!2149499) b!5046310))

(assert (= (and b!5046310 res!2149498) b!5046309))

(declare-fun m!6081700 () Bool)

(assert (=> b!5046308 m!6081700))

(declare-fun m!6081702 () Bool)

(assert (=> d!1624206 m!6081702))

(assert (=> b!5046309 m!6081580))

(declare-fun m!6081704 () Bool)

(assert (=> b!5046309 m!6081704))

(assert (=> b!5046310 m!6081580))

(declare-fun m!6081706 () Bool)

(assert (=> b!5046310 m!6081706))

(assert (=> b!5046173 d!1624206))

(declare-fun d!1624212 () Bool)

(declare-fun c!865120 () Bool)

(assert (=> d!1624212 (= c!865120 (is-Empty!15527 t!4198))))

(declare-fun e!3150925 () List!58439)

(assert (=> d!1624212 (= (list!18940 t!4198) e!3150925)))

(declare-fun b!5046314 () Bool)

(assert (=> b!5046314 (= e!3150925 Nil!58315)))

(declare-fun b!5046317 () Bool)

(declare-fun e!3150926 () List!58439)

(assert (=> b!5046317 (= e!3150926 (++!12741 (list!18940 (left!42720 t!4198)) (list!18940 (right!43050 t!4198))))))

(declare-fun b!5046315 () Bool)

(assert (=> b!5046315 (= e!3150925 e!3150926)))

(declare-fun c!865121 () Bool)

(assert (=> b!5046315 (= c!865121 (is-Leaf!25755 t!4198))))

(declare-fun b!5046316 () Bool)

(assert (=> b!5046316 (= e!3150926 (list!18942 (xs!18853 t!4198)))))

(assert (= (and d!1624212 c!865120) b!5046314))

(assert (= (and d!1624212 (not c!865120)) b!5046315))

(assert (= (and b!5046315 c!865121) b!5046316))

(assert (= (and b!5046315 (not c!865121)) b!5046317))

(assert (=> b!5046317 m!6081558))

(assert (=> b!5046317 m!6081566))

(assert (=> b!5046317 m!6081558))

(assert (=> b!5046317 m!6081566))

(declare-fun m!6081708 () Bool)

(assert (=> b!5046317 m!6081708))

(declare-fun m!6081710 () Bool)

(assert (=> b!5046316 m!6081710))

(assert (=> b!5046173 d!1624212))

(declare-fun b!5046344 () Bool)

(declare-fun res!2149513 () Bool)

(declare-fun e!3150939 () Bool)

(assert (=> b!5046344 (=> (not res!2149513) (not e!3150939))))

(assert (=> b!5046344 (= res!2149513 (isBalanced!4389 (left!42720 lt!2085323)))))

(declare-fun b!5046345 () Bool)

(declare-fun res!2149514 () Bool)

(assert (=> b!5046345 (=> (not res!2149514) (not e!3150939))))

(declare-fun isEmpty!31558 (Conc!15527) Bool)

(assert (=> b!5046345 (= res!2149514 (not (isEmpty!31558 (left!42720 lt!2085323))))))

(declare-fun b!5046346 () Bool)

(declare-fun res!2149517 () Bool)

(assert (=> b!5046346 (=> (not res!2149517) (not e!3150939))))

(declare-fun height!2106 (Conc!15527) Int)

(assert (=> b!5046346 (= res!2149517 (<= (- (height!2106 (left!42720 lt!2085323)) (height!2106 (right!43050 lt!2085323))) 1))))

(declare-fun d!1624214 () Bool)

(declare-fun res!2149515 () Bool)

(declare-fun e!3150938 () Bool)

(assert (=> d!1624214 (=> res!2149515 e!3150938)))

(assert (=> d!1624214 (= res!2149515 (not (is-Node!15527 lt!2085323)))))

(assert (=> d!1624214 (= (isBalanced!4389 lt!2085323) e!3150938)))

(declare-fun b!5046347 () Bool)

(declare-fun res!2149516 () Bool)

(assert (=> b!5046347 (=> (not res!2149516) (not e!3150939))))

(assert (=> b!5046347 (= res!2149516 (isBalanced!4389 (right!43050 lt!2085323)))))

(declare-fun b!5046348 () Bool)

(assert (=> b!5046348 (= e!3150938 e!3150939)))

(declare-fun res!2149512 () Bool)

(assert (=> b!5046348 (=> (not res!2149512) (not e!3150939))))

(assert (=> b!5046348 (= res!2149512 (<= (- 1) (- (height!2106 (left!42720 lt!2085323)) (height!2106 (right!43050 lt!2085323)))))))

(declare-fun b!5046349 () Bool)

(assert (=> b!5046349 (= e!3150939 (not (isEmpty!31558 (right!43050 lt!2085323))))))

(assert (= (and d!1624214 (not res!2149515)) b!5046348))

(assert (= (and b!5046348 res!2149512) b!5046346))

(assert (= (and b!5046346 res!2149517) b!5046344))

(assert (= (and b!5046344 res!2149513) b!5046347))

(assert (= (and b!5046347 res!2149516) b!5046345))

(assert (= (and b!5046345 res!2149514) b!5046349))

(declare-fun m!6081734 () Bool)

(assert (=> b!5046346 m!6081734))

(declare-fun m!6081736 () Bool)

(assert (=> b!5046346 m!6081736))

(declare-fun m!6081738 () Bool)

(assert (=> b!5046347 m!6081738))

(declare-fun m!6081740 () Bool)

(assert (=> b!5046345 m!6081740))

(declare-fun m!6081742 () Bool)

(assert (=> b!5046344 m!6081742))

(declare-fun m!6081744 () Bool)

(assert (=> b!5046349 m!6081744))

(assert (=> b!5046348 m!6081734))

(assert (=> b!5046348 m!6081736))

(assert (=> b!5046176 d!1624214))

(declare-fun b!5046350 () Bool)

(declare-fun res!2149519 () Bool)

(declare-fun e!3150941 () Bool)

(assert (=> b!5046350 (=> (not res!2149519) (not e!3150941))))

(assert (=> b!5046350 (= res!2149519 (isBalanced!4389 (left!42720 (_1!34933 lt!2085324))))))

(declare-fun b!5046351 () Bool)

(declare-fun res!2149520 () Bool)

(assert (=> b!5046351 (=> (not res!2149520) (not e!3150941))))

(assert (=> b!5046351 (= res!2149520 (not (isEmpty!31558 (left!42720 (_1!34933 lt!2085324)))))))

(declare-fun b!5046352 () Bool)

(declare-fun res!2149523 () Bool)

(assert (=> b!5046352 (=> (not res!2149523) (not e!3150941))))

(assert (=> b!5046352 (= res!2149523 (<= (- (height!2106 (left!42720 (_1!34933 lt!2085324))) (height!2106 (right!43050 (_1!34933 lt!2085324)))) 1))))

(declare-fun d!1624226 () Bool)

(declare-fun res!2149521 () Bool)

(declare-fun e!3150940 () Bool)

(assert (=> d!1624226 (=> res!2149521 e!3150940)))

(assert (=> d!1624226 (= res!2149521 (not (is-Node!15527 (_1!34933 lt!2085324))))))

(assert (=> d!1624226 (= (isBalanced!4389 (_1!34933 lt!2085324)) e!3150940)))

(declare-fun b!5046353 () Bool)

(declare-fun res!2149522 () Bool)

(assert (=> b!5046353 (=> (not res!2149522) (not e!3150941))))

(assert (=> b!5046353 (= res!2149522 (isBalanced!4389 (right!43050 (_1!34933 lt!2085324))))))

(declare-fun b!5046354 () Bool)

(assert (=> b!5046354 (= e!3150940 e!3150941)))

(declare-fun res!2149518 () Bool)

(assert (=> b!5046354 (=> (not res!2149518) (not e!3150941))))

(assert (=> b!5046354 (= res!2149518 (<= (- 1) (- (height!2106 (left!42720 (_1!34933 lt!2085324))) (height!2106 (right!43050 (_1!34933 lt!2085324))))))))

(declare-fun b!5046355 () Bool)

(assert (=> b!5046355 (= e!3150941 (not (isEmpty!31558 (right!43050 (_1!34933 lt!2085324)))))))

(assert (= (and d!1624226 (not res!2149521)) b!5046354))

(assert (= (and b!5046354 res!2149518) b!5046352))

(assert (= (and b!5046352 res!2149523) b!5046350))

(assert (= (and b!5046350 res!2149519) b!5046353))

(assert (= (and b!5046353 res!2149522) b!5046351))

(assert (= (and b!5046351 res!2149520) b!5046355))

(declare-fun m!6081746 () Bool)

(assert (=> b!5046352 m!6081746))

(declare-fun m!6081748 () Bool)

(assert (=> b!5046352 m!6081748))

(declare-fun m!6081750 () Bool)

(assert (=> b!5046353 m!6081750))

(declare-fun m!6081752 () Bool)

(assert (=> b!5046351 m!6081752))

(declare-fun m!6081754 () Bool)

(assert (=> b!5046350 m!6081754))

(declare-fun m!6081756 () Bool)

(assert (=> b!5046355 m!6081756))

(assert (=> b!5046354 m!6081746))

(assert (=> b!5046354 m!6081748))

(assert (=> b!5046171 d!1624226))

(declare-fun b!5046438 () Bool)

(declare-fun e!3150987 () Conc!15527)

(declare-fun call!351596 () Conc!15527)

(assert (=> b!5046438 (= e!3150987 call!351596)))

(declare-fun bm!351579 () Bool)

(declare-fun c!865161 () Bool)

(declare-fun c!865159 () Bool)

(declare-fun c!865160 () Bool)

(declare-fun call!351598 () Conc!15527)

(assert (=> bm!351579 (= call!351598 (++!12740 (ite c!865159 (ite c!865161 (right!43050 (_2!34933 lt!2085324)) (right!43050 (right!43050 (_2!34933 lt!2085324)))) (_2!34933 lt!2085324)) (ite c!865159 (right!43050 t!4198) (ite c!865160 (left!42720 (right!43050 t!4198)) (left!42720 (left!42720 (right!43050 t!4198)))))))))

(declare-fun b!5046439 () Bool)

(declare-fun c!865165 () Bool)

(declare-fun lt!2085402 () Int)

(assert (=> b!5046439 (= c!865165 (and (<= (- 1) lt!2085402) (<= lt!2085402 1)))))

(assert (=> b!5046439 (= lt!2085402 (- (height!2106 (right!43050 t!4198)) (height!2106 (_2!34933 lt!2085324))))))

(declare-fun e!3150984 () Conc!15527)

(assert (=> b!5046439 (= e!3150984 e!3150987)))

(declare-fun c!865162 () Bool)

(declare-fun call!351594 () Conc!15527)

(declare-fun call!351584 () Conc!15527)

(declare-fun c!865163 () Bool)

(declare-fun bm!351580 () Bool)

(declare-fun lt!2085403 () Conc!15527)

(declare-fun lt!2085401 () Conc!15527)

(declare-fun <>!385 (Conc!15527 Conc!15527) Conc!15527)

(assert (=> bm!351580 (= call!351594 (<>!385 (ite c!865159 (ite c!865163 (left!42720 (_2!34933 lt!2085324)) call!351584) (ite c!865162 lt!2085401 (right!43050 (left!42720 (right!43050 t!4198))))) (ite c!865159 (ite c!865163 call!351584 lt!2085403) (ite c!865162 (right!43050 (left!42720 (right!43050 t!4198))) (right!43050 (right!43050 t!4198))))))))

(declare-fun b!5046440 () Bool)

(declare-fun e!3150989 () Conc!15527)

(assert (=> b!5046440 (= e!3150989 (right!43050 t!4198))))

(declare-fun b!5046441 () Bool)

(declare-fun e!3150991 () Conc!15527)

(assert (=> b!5046441 (= e!3150987 e!3150991)))

(assert (=> b!5046441 (= c!865159 (< lt!2085402 (- 1)))))

(declare-fun d!1624228 () Bool)

(declare-fun e!3150983 () Bool)

(assert (=> d!1624228 e!3150983))

(declare-fun res!2149549 () Bool)

(assert (=> d!1624228 (=> (not res!2149549) (not e!3150983))))

(declare-fun appendAssocInst!895 (Conc!15527 Conc!15527) Bool)

(assert (=> d!1624228 (= res!2149549 (appendAssocInst!895 (_2!34933 lt!2085324) (right!43050 t!4198)))))

(declare-fun lt!2085400 () Conc!15527)

(assert (=> d!1624228 (= lt!2085400 e!3150989)))

(declare-fun c!865164 () Bool)

(assert (=> d!1624228 (= c!865164 (= (_2!34933 lt!2085324) Empty!15527))))

(declare-fun e!3150992 () Bool)

(assert (=> d!1624228 e!3150992))

(declare-fun res!2149545 () Bool)

(assert (=> d!1624228 (=> (not res!2149545) (not e!3150992))))

(assert (=> d!1624228 (= res!2149545 (isBalanced!4389 (_2!34933 lt!2085324)))))

(assert (=> d!1624228 (= (++!12740 (_2!34933 lt!2085324) (right!43050 t!4198)) lt!2085400)))

(declare-fun b!5046437 () Bool)

(declare-fun e!3150985 () Conc!15527)

(declare-fun call!351591 () Conc!15527)

(assert (=> b!5046437 (= e!3150985 call!351591)))

(declare-fun b!5046442 () Bool)

(declare-fun e!3150986 () Conc!15527)

(declare-fun call!351599 () Conc!15527)

(assert (=> b!5046442 (= e!3150986 call!351599)))

(declare-fun bm!351581 () Bool)

(declare-fun call!351585 () Int)

(assert (=> bm!351581 (= call!351585 (height!2106 (ite c!865159 (left!42720 (_2!34933 lt!2085324)) (left!42720 (right!43050 t!4198)))))))

(declare-fun b!5046443 () Bool)

(assert (=> b!5046443 (= e!3150992 (isBalanced!4389 (right!43050 t!4198)))))

(declare-fun b!5046444 () Bool)

(assert (=> b!5046444 (= e!3150984 (_2!34933 lt!2085324))))

(declare-fun b!5046445 () Bool)

(declare-fun res!2149546 () Bool)

(assert (=> b!5046445 (=> (not res!2149546) (not e!3150983))))

(assert (=> b!5046445 (= res!2149546 (isBalanced!4389 lt!2085400))))

(declare-fun bm!351582 () Bool)

(declare-fun call!351592 () Conc!15527)

(assert (=> bm!351582 (= call!351591 call!351592)))

(declare-fun bm!351583 () Bool)

(assert (=> bm!351583 (= call!351599 call!351592)))

(declare-fun b!5046446 () Bool)

(assert (=> b!5046446 (= e!3150989 e!3150984)))

(declare-fun c!865166 () Bool)

(assert (=> b!5046446 (= c!865166 (= (right!43050 t!4198) Empty!15527))))

(declare-fun call!351595 () Int)

(declare-fun bm!351584 () Bool)

(assert (=> bm!351584 (= call!351595 (height!2106 (ite c!865159 (right!43050 (_2!34933 lt!2085324)) (right!43050 t!4198))))))

(declare-fun call!351593 () Int)

(declare-fun bm!351585 () Bool)

(assert (=> bm!351585 (= call!351593 (height!2106 (ite c!865159 lt!2085403 lt!2085401)))))

(declare-fun bm!351586 () Bool)

(declare-fun call!351588 () Conc!15527)

(assert (=> bm!351586 (= call!351588 call!351594)))

(declare-fun bm!351587 () Bool)

(declare-fun call!351587 () Int)

(assert (=> bm!351587 (= call!351587 (height!2106 (ite c!865159 (_2!34933 lt!2085324) (right!43050 (right!43050 t!4198)))))))

(declare-fun bm!351588 () Bool)

(declare-fun call!351590 () Conc!15527)

(assert (=> bm!351588 (= call!351590 call!351598)))

(declare-fun b!5046447 () Bool)

(declare-fun res!2149548 () Bool)

(assert (=> b!5046447 (=> (not res!2149548) (not e!3150983))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5046447 (= res!2149548 (<= (height!2106 lt!2085400) (+ (max!0 (height!2106 (_2!34933 lt!2085324)) (height!2106 (right!43050 t!4198))) 1)))))

(declare-fun b!5046448 () Bool)

(assert (=> b!5046448 (= c!865161 (>= call!351585 call!351595))))

(assert (=> b!5046448 (= e!3150991 e!3150985)))

(declare-fun b!5046449 () Bool)

(assert (=> b!5046449 (= c!865160 (>= call!351587 call!351585))))

(assert (=> b!5046449 (= e!3150991 e!3150986)))

(declare-fun b!5046450 () Bool)

(declare-fun e!3150988 () Conc!15527)

(assert (=> b!5046450 (= e!3150985 e!3150988)))

(assert (=> b!5046450 (= lt!2085403 call!351590)))

(assert (=> b!5046450 (= c!865163 (= call!351593 (- call!351587 3)))))

(declare-fun b!5046451 () Bool)

(assert (=> b!5046451 (= e!3150983 (= (list!18940 lt!2085400) (++!12741 (list!18940 (_2!34933 lt!2085324)) (list!18940 (right!43050 t!4198)))))))

(declare-fun b!5046452 () Bool)

(assert (=> b!5046452 (= e!3150988 call!351588)))

(declare-fun b!5046453 () Bool)

(declare-fun e!3150990 () Conc!15527)

(declare-fun call!351586 () Conc!15527)

(assert (=> b!5046453 (= e!3150990 call!351586)))

(declare-fun bm!351589 () Bool)

(assert (=> bm!351589 (= call!351592 call!351596)))

(declare-fun bm!351590 () Bool)

(declare-fun call!351597 () Conc!15527)

(assert (=> bm!351590 (= call!351597 call!351594)))

(declare-fun b!5046454 () Bool)

(declare-fun res!2149547 () Bool)

(assert (=> b!5046454 (=> (not res!2149547) (not e!3150983))))

(assert (=> b!5046454 (= res!2149547 (>= (height!2106 lt!2085400) (max!0 (height!2106 (_2!34933 lt!2085324)) (height!2106 (right!43050 t!4198)))))))

(declare-fun bm!351591 () Bool)

(assert (=> bm!351591 (= call!351586 call!351599)))

(declare-fun bm!351592 () Bool)

(assert (=> bm!351592 (= call!351584 call!351591)))

(declare-fun b!5046455 () Bool)

(assert (=> b!5046455 (= e!3150990 call!351586)))

(declare-fun bm!351593 () Bool)

(declare-fun call!351589 () Conc!15527)

(assert (=> bm!351593 (= call!351589 call!351598)))

(declare-fun bm!351594 () Bool)

(assert (=> bm!351594 (= call!351596 (<>!385 (ite c!865165 (_2!34933 lt!2085324) (ite c!865159 (ite c!865161 (left!42720 (_2!34933 lt!2085324)) (ite c!865163 (left!42720 (right!43050 (_2!34933 lt!2085324))) (left!42720 (_2!34933 lt!2085324)))) (ite c!865160 call!351589 (ite c!865162 call!351597 lt!2085401)))) (ite c!865165 (right!43050 t!4198) (ite c!865159 (ite c!865161 call!351590 (ite c!865163 lt!2085403 (left!42720 (right!43050 (_2!34933 lt!2085324))))) (ite (or c!865160 c!865162) (right!43050 (right!43050 t!4198)) call!351597)))))))

(declare-fun b!5046456 () Bool)

(assert (=> b!5046456 (= e!3150986 e!3150990)))

(assert (=> b!5046456 (= lt!2085401 call!351589)))

(assert (=> b!5046456 (= c!865162 (= call!351593 (- call!351595 3)))))

(declare-fun b!5046457 () Bool)

(assert (=> b!5046457 (= e!3150988 call!351588)))

(assert (= (and d!1624228 res!2149545) b!5046443))

(assert (= (and d!1624228 c!865164) b!5046440))

(assert (= (and d!1624228 (not c!865164)) b!5046446))

(assert (= (and b!5046446 c!865166) b!5046444))

(assert (= (and b!5046446 (not c!865166)) b!5046439))

(assert (= (and b!5046439 c!865165) b!5046438))

(assert (= (and b!5046439 (not c!865165)) b!5046441))

(assert (= (and b!5046441 c!865159) b!5046448))

(assert (= (and b!5046441 (not c!865159)) b!5046449))

(assert (= (and b!5046448 c!865161) b!5046437))

(assert (= (and b!5046448 (not c!865161)) b!5046450))

(assert (= (and b!5046450 c!865163) b!5046452))

(assert (= (and b!5046450 (not c!865163)) b!5046457))

(assert (= (or b!5046452 b!5046457) bm!351592))

(assert (= (or b!5046452 b!5046457) bm!351586))

(assert (= (or b!5046437 b!5046450) bm!351588))

(assert (= (or b!5046437 bm!351592) bm!351582))

(assert (= (and b!5046449 c!865160) b!5046442))

(assert (= (and b!5046449 (not c!865160)) b!5046456))

(assert (= (and b!5046456 c!865162) b!5046455))

(assert (= (and b!5046456 (not c!865162)) b!5046453))

(assert (= (or b!5046455 b!5046453) bm!351590))

(assert (= (or b!5046455 b!5046453) bm!351591))

(assert (= (or b!5046442 b!5046456) bm!351593))

(assert (= (or b!5046442 bm!351591) bm!351583))

(assert (= (or bm!351586 bm!351590) bm!351580))

(assert (= (or b!5046450 b!5046456) bm!351585))

(assert (= (or bm!351588 bm!351593) bm!351579))

(assert (= (or b!5046448 b!5046456) bm!351584))

(assert (= (or b!5046450 b!5046449) bm!351587))

(assert (= (or bm!351582 bm!351583) bm!351589))

(assert (= (or b!5046448 b!5046449) bm!351581))

(assert (= (or b!5046438 bm!351589) bm!351594))

(assert (= (and d!1624228 res!2149549) b!5046445))

(assert (= (and b!5046445 res!2149546) b!5046447))

(assert (= (and b!5046447 res!2149548) b!5046454))

(assert (= (and b!5046454 res!2149547) b!5046451))

(declare-fun m!6081792 () Bool)

(assert (=> bm!351584 m!6081792))

(declare-fun m!6081796 () Bool)

(assert (=> b!5046445 m!6081796))

(declare-fun m!6081804 () Bool)

(assert (=> bm!351579 m!6081804))

(declare-fun m!6081808 () Bool)

(assert (=> bm!351585 m!6081808))

(declare-fun m!6081810 () Bool)

(assert (=> b!5046451 m!6081810))

(declare-fun m!6081812 () Bool)

(assert (=> b!5046451 m!6081812))

(assert (=> b!5046451 m!6081566))

(assert (=> b!5046451 m!6081812))

(assert (=> b!5046451 m!6081566))

(declare-fun m!6081816 () Bool)

(assert (=> b!5046451 m!6081816))

(declare-fun m!6081818 () Bool)

(assert (=> bm!351594 m!6081818))

(declare-fun m!6081820 () Bool)

(assert (=> b!5046454 m!6081820))

(declare-fun m!6081822 () Bool)

(assert (=> b!5046454 m!6081822))

(declare-fun m!6081824 () Bool)

(assert (=> b!5046454 m!6081824))

(assert (=> b!5046454 m!6081822))

(assert (=> b!5046454 m!6081824))

(declare-fun m!6081826 () Bool)

(assert (=> b!5046454 m!6081826))

(declare-fun m!6081828 () Bool)

(assert (=> d!1624228 m!6081828))

(declare-fun m!6081830 () Bool)

(assert (=> d!1624228 m!6081830))

(declare-fun m!6081832 () Bool)

(assert (=> bm!351581 m!6081832))

(declare-fun m!6081834 () Bool)

(assert (=> bm!351587 m!6081834))

(assert (=> b!5046439 m!6081824))

(assert (=> b!5046439 m!6081822))

(declare-fun m!6081836 () Bool)

(assert (=> bm!351580 m!6081836))

(assert (=> b!5046447 m!6081820))

(assert (=> b!5046447 m!6081822))

(assert (=> b!5046447 m!6081824))

(assert (=> b!5046447 m!6081822))

(assert (=> b!5046447 m!6081824))

(assert (=> b!5046447 m!6081826))

(declare-fun m!6081838 () Bool)

(assert (=> b!5046443 m!6081838))

(assert (=> b!5046171 d!1624228))

(declare-fun b!5046581 () Bool)

(declare-fun e!3151061 () Int)

(declare-fun call!351644 () Int)

(assert (=> b!5046581 (= e!3151061 (- i!618 call!351644))))

(declare-fun lt!2085441 () tuple2!63262)

(declare-fun lt!2085444 () List!58439)

(declare-fun lt!2085443 () List!58439)

(declare-fun c!865219 () Bool)

(declare-fun bm!351639 () Bool)

(declare-fun call!351648 () List!58439)

(declare-fun lt!2085440 () tuple2!63262)

(assert (=> bm!351639 (= call!351648 (++!12741 (ite c!865219 (_2!34934 lt!2085440) lt!2085444) (ite c!865219 lt!2085443 (_1!34934 lt!2085441))))))

(declare-fun e!3151065 () Bool)

(declare-fun lt!2085442 () tuple2!63260)

(declare-fun b!5046582 () Bool)

(assert (=> b!5046582 (= e!3151065 (= (tuple2!63263 (list!18940 (_1!34933 lt!2085442)) (list!18940 (_2!34933 lt!2085442))) (splitAtIndex!220 (list!18940 (left!42720 t!4198)) i!618)))))

(declare-fun b!5046583 () Bool)

(declare-fun e!3151055 () tuple2!63260)

(assert (=> b!5046583 (= e!3151055 (tuple2!63261 (left!42720 t!4198) (left!42720 t!4198)))))

(declare-fun bm!351640 () Bool)

(declare-fun c!865213 () Bool)

(assert (=> bm!351640 (= c!865213 c!865219)))

(declare-fun call!351646 () tuple2!63262)

(declare-fun call!351649 () tuple2!63262)

(assert (=> bm!351640 (= call!351646 call!351649)))

(declare-fun b!5046584 () Bool)

(declare-fun e!3151054 () tuple2!63262)

(declare-fun e!3151059 () tuple2!63262)

(assert (=> b!5046584 (= e!3151054 e!3151059)))

(assert (=> b!5046584 (= c!865219 (< i!618 call!351644))))

(declare-fun b!5046585 () Bool)

(assert (=> b!5046585 (= e!3151061 i!618)))

(declare-fun b!5046586 () Bool)

(declare-fun e!3151056 () tuple2!63260)

(declare-fun e!3151060 () tuple2!63260)

(assert (=> b!5046586 (= e!3151056 e!3151060)))

(declare-fun c!865217 () Bool)

(assert (=> b!5046586 (= c!865217 (= i!618 (csize!31285 (left!42720 t!4198))))))

(declare-fun b!5046587 () Bool)

(assert (=> b!5046587 (= e!3151054 (tuple2!63263 lt!2085444 lt!2085443))))

(declare-fun b!5046588 () Bool)

(declare-fun c!865220 () Bool)

(assert (=> b!5046588 (= c!865220 (<= i!618 0))))

(declare-fun e!3151062 () tuple2!63260)

(assert (=> b!5046588 (= e!3151062 e!3151056)))

(declare-fun d!1624240 () Bool)

(assert (=> d!1624240 e!3151065))

(declare-fun res!2149583 () Bool)

(assert (=> d!1624240 (=> (not res!2149583) (not e!3151065))))

(assert (=> d!1624240 (= res!2149583 (isBalanced!4389 (_1!34933 lt!2085442)))))

(assert (=> d!1624240 (= lt!2085442 e!3151055)))

(declare-fun c!865218 () Bool)

(assert (=> d!1624240 (= c!865218 (is-Empty!15527 (left!42720 t!4198)))))

(assert (=> d!1624240 (isBalanced!4389 (left!42720 t!4198))))

(assert (=> d!1624240 (= (splitAt!480 (left!42720 t!4198) i!618) lt!2085442)))

(declare-fun b!5046589 () Bool)

(declare-fun lt!2085448 () tuple2!63260)

(declare-fun call!351647 () tuple2!63260)

(assert (=> b!5046589 (= lt!2085448 call!351647)))

(declare-fun e!3151058 () tuple2!63260)

(declare-fun call!351645 () Conc!15527)

(assert (=> b!5046589 (= e!3151058 (tuple2!63261 (_1!34933 lt!2085448) call!351645))))

(declare-fun b!5046590 () Bool)

(assert (=> b!5046590 (= e!3151060 (tuple2!63261 (left!42720 t!4198) Empty!15527))))

(declare-fun b!5046591 () Bool)

(declare-fun e!3151057 () Int)

(assert (=> b!5046591 (= e!3151057 i!618)))

(declare-fun b!5046592 () Bool)

(assert (=> b!5046592 (= lt!2085441 call!351646)))

(assert (=> b!5046592 (= e!3151059 (tuple2!63263 call!351648 (_2!34934 lt!2085441)))))

(declare-fun b!5046593 () Bool)

(declare-fun c!865214 () Bool)

(assert (=> b!5046593 (= c!865214 (= (size!38934 (left!42720 (left!42720 t!4198))) i!618))))

(declare-fun lt!2085445 () Unit!149509)

(declare-fun lt!2085452 () Unit!149509)

(assert (=> b!5046593 (= lt!2085445 lt!2085452)))

(assert (=> b!5046593 (= (splitAtIndex!220 (++!12741 lt!2085444 lt!2085443) i!618) e!3151054)))

(declare-fun c!865212 () Bool)

(assert (=> b!5046593 (= c!865212 (= call!351644 i!618))))

(assert (=> b!5046593 (= lt!2085452 (splitAtLemma!75 lt!2085444 lt!2085443 i!618))))

(assert (=> b!5046593 (= lt!2085443 (list!18940 (right!43050 (left!42720 t!4198))))))

(assert (=> b!5046593 (= lt!2085444 (list!18940 (left!42720 (left!42720 t!4198))))))

(declare-fun e!3151063 () tuple2!63260)

(assert (=> b!5046593 (= e!3151062 e!3151063)))

(declare-fun b!5046594 () Bool)

(declare-fun e!3151064 () List!58439)

(assert (=> b!5046594 (= e!3151064 (ite c!865219 lt!2085444 lt!2085443))))

(declare-fun b!5046595 () Bool)

(declare-fun res!2149584 () Bool)

(assert (=> b!5046595 (=> (not res!2149584) (not e!3151065))))

(assert (=> b!5046595 (= res!2149584 (isBalanced!4389 (_2!34933 lt!2085442)))))

(declare-fun c!865222 () Bool)

(declare-fun lt!2085450 () List!58439)

(declare-fun bm!351641 () Bool)

(assert (=> bm!351641 (= call!351644 (size!38935 (ite c!865222 lt!2085450 lt!2085444)))))

(declare-fun b!5046596 () Bool)

(declare-fun lt!2085446 () tuple2!63260)

(assert (=> b!5046596 (= lt!2085446 call!351647)))

(assert (=> b!5046596 (= e!3151058 (tuple2!63261 call!351645 (_2!34933 lt!2085446)))))

(declare-fun b!5046597 () Bool)

(assert (=> b!5046597 (= e!3151056 (tuple2!63261 Empty!15527 (left!42720 t!4198)))))

(declare-fun b!5046598 () Bool)

(assert (=> b!5046598 (= e!3151064 (list!18942 (xs!18853 (left!42720 t!4198))))))

(declare-fun bm!351642 () Bool)

(declare-fun c!865215 () Bool)

(declare-fun c!865221 () Bool)

(assert (=> bm!351642 (= c!865215 c!865221)))

(assert (=> bm!351642 (= call!351647 (splitAt!480 (ite c!865221 (left!42720 (left!42720 t!4198)) (right!43050 (left!42720 t!4198))) e!3151057))))

(declare-fun b!5046599 () Bool)

(assert (=> b!5046599 (= e!3151063 e!3151058)))

(assert (=> b!5046599 (= c!865221 (< i!618 (size!38934 (left!42720 (left!42720 t!4198)))))))

(declare-fun b!5046600 () Bool)

(assert (=> b!5046600 (= lt!2085440 call!351646)))

(assert (=> b!5046600 (= e!3151059 (tuple2!63263 (_1!34934 lt!2085440) call!351648))))

(declare-fun b!5046601 () Bool)

(declare-fun lt!2085449 () Unit!149509)

(declare-fun lt!2085447 () Unit!149509)

(assert (=> b!5046601 (= lt!2085449 lt!2085447)))

(declare-fun slice!862 (List!58439 Int Int) List!58439)

(assert (=> b!5046601 (= (drop!2643 lt!2085450 i!618) (slice!862 lt!2085450 i!618 call!351644))))

(declare-fun dropLemma!77 (List!58439 Int) Unit!149509)

(assert (=> b!5046601 (= lt!2085447 (dropLemma!77 lt!2085450 i!618))))

(assert (=> b!5046601 (= lt!2085450 (list!18942 (xs!18853 (left!42720 t!4198))))))

(declare-fun lt!2085451 () tuple2!63262)

(assert (=> b!5046601 (= lt!2085451 call!351649)))

(declare-fun slice!863 (IArray!31115 Int Int) IArray!31115)

(assert (=> b!5046601 (= e!3151060 (tuple2!63261 (Leaf!25755 (slice!863 (xs!18853 (left!42720 t!4198)) 0 i!618) i!618) (Leaf!25755 (slice!863 (xs!18853 (left!42720 t!4198)) i!618 (csize!31285 (left!42720 t!4198))) (- (csize!31285 (left!42720 t!4198)) i!618))))))

(declare-fun b!5046602 () Bool)

(assert (=> b!5046602 (= e!3151055 e!3151062)))

(assert (=> b!5046602 (= c!865222 (is-Leaf!25755 (left!42720 t!4198)))))

(declare-fun bm!351643 () Bool)

(declare-fun c!865216 () Bool)

(assert (=> bm!351643 (= c!865216 c!865222)))

(assert (=> bm!351643 (= call!351649 (splitAtIndex!220 e!3151064 (ite c!865222 i!618 e!3151061)))))

(declare-fun b!5046603 () Bool)

(assert (=> b!5046603 (= e!3151057 (- i!618 (size!38934 (left!42720 (left!42720 t!4198)))))))

(declare-fun bm!351644 () Bool)

(assert (=> bm!351644 (= call!351645 (++!12740 (ite c!865221 (_2!34933 lt!2085448) (left!42720 (left!42720 t!4198))) (ite c!865221 (right!43050 (left!42720 t!4198)) (_1!34933 lt!2085446))))))

(declare-fun b!5046604 () Bool)

(assert (=> b!5046604 (= e!3151063 (tuple2!63261 (left!42720 (left!42720 t!4198)) (right!43050 (left!42720 t!4198))))))

(assert (= (and d!1624240 c!865218) b!5046583))

(assert (= (and d!1624240 (not c!865218)) b!5046602))

(assert (= (and b!5046602 c!865222) b!5046588))

(assert (= (and b!5046602 (not c!865222)) b!5046593))

(assert (= (and b!5046588 c!865220) b!5046597))

(assert (= (and b!5046588 (not c!865220)) b!5046586))

(assert (= (and b!5046586 c!865217) b!5046590))

(assert (= (and b!5046586 (not c!865217)) b!5046601))

(assert (= (and b!5046593 c!865212) b!5046587))

(assert (= (and b!5046593 (not c!865212)) b!5046584))

(assert (= (and b!5046584 c!865219) b!5046600))

(assert (= (and b!5046584 (not c!865219)) b!5046592))

(assert (= (or b!5046600 b!5046592) bm!351639))

(assert (= (or b!5046600 b!5046592) bm!351640))

(assert (= (and bm!351640 c!865213) b!5046585))

(assert (= (and bm!351640 (not c!865213)) b!5046581))

(assert (= (and b!5046593 c!865214) b!5046604))

(assert (= (and b!5046593 (not c!865214)) b!5046599))

(assert (= (and b!5046599 c!865221) b!5046589))

(assert (= (and b!5046599 (not c!865221)) b!5046596))

(assert (= (or b!5046589 b!5046596) bm!351644))

(assert (= (or b!5046589 b!5046596) bm!351642))

(assert (= (and bm!351642 c!865215) b!5046591))

(assert (= (and bm!351642 (not c!865215)) b!5046603))

(assert (= (or b!5046601 b!5046581 b!5046593 b!5046584) bm!351641))

(assert (= (or b!5046601 bm!351640) bm!351643))

(assert (= (and bm!351643 c!865216) b!5046598))

(assert (= (and bm!351643 (not c!865216)) b!5046594))

(assert (= (and d!1624240 res!2149583) b!5046595))

(assert (= (and b!5046595 res!2149584) b!5046582))

(declare-fun m!6081866 () Bool)

(assert (=> bm!351639 m!6081866))

(declare-fun m!6081868 () Bool)

(assert (=> b!5046603 m!6081868))

(declare-fun m!6081870 () Bool)

(assert (=> b!5046595 m!6081870))

(declare-fun m!6081872 () Bool)

(assert (=> b!5046601 m!6081872))

(declare-fun m!6081874 () Bool)

(assert (=> b!5046601 m!6081874))

(declare-fun m!6081876 () Bool)

(assert (=> b!5046601 m!6081876))

(declare-fun m!6081878 () Bool)

(assert (=> b!5046601 m!6081878))

(declare-fun m!6081880 () Bool)

(assert (=> b!5046601 m!6081880))

(declare-fun m!6081882 () Bool)

(assert (=> b!5046601 m!6081882))

(assert (=> b!5046598 m!6081878))

(assert (=> b!5046599 m!6081868))

(declare-fun m!6081884 () Bool)

(assert (=> d!1624240 m!6081884))

(declare-fun m!6081886 () Bool)

(assert (=> d!1624240 m!6081886))

(declare-fun m!6081888 () Bool)

(assert (=> b!5046593 m!6081888))

(declare-fun m!6081890 () Bool)

(assert (=> b!5046593 m!6081890))

(declare-fun m!6081892 () Bool)

(assert (=> b!5046593 m!6081892))

(assert (=> b!5046593 m!6081868))

(declare-fun m!6081894 () Bool)

(assert (=> b!5046593 m!6081894))

(assert (=> b!5046593 m!6081888))

(declare-fun m!6081896 () Bool)

(assert (=> b!5046593 m!6081896))

(declare-fun m!6081898 () Bool)

(assert (=> bm!351641 m!6081898))

(declare-fun m!6081900 () Bool)

(assert (=> b!5046582 m!6081900))

(declare-fun m!6081902 () Bool)

(assert (=> b!5046582 m!6081902))

(assert (=> b!5046582 m!6081558))

(assert (=> b!5046582 m!6081558))

(declare-fun m!6081904 () Bool)

(assert (=> b!5046582 m!6081904))

(declare-fun m!6081906 () Bool)

(assert (=> bm!351644 m!6081906))

(declare-fun m!6081908 () Bool)

(assert (=> bm!351642 m!6081908))

(declare-fun m!6081910 () Bool)

(assert (=> bm!351643 m!6081910))

(assert (=> b!5046171 d!1624240))

(declare-fun e!3151081 () List!58439)

(declare-fun b!5046634 () Bool)

(assert (=> b!5046634 (= e!3151081 (ite c!865082 lt!2085325 (_1!34934 lt!2085321)))))

(declare-fun d!1624252 () Bool)

(declare-fun e!3151080 () Bool)

(assert (=> d!1624252 e!3151080))

(declare-fun res!2149594 () Bool)

(assert (=> d!1624252 (=> (not res!2149594) (not e!3151080))))

(declare-fun lt!2085459 () List!58439)

(declare-fun content!10369 (List!58439) (Set T!104290))

(assert (=> d!1624252 (= res!2149594 (= (content!10369 lt!2085459) (set.union (content!10369 (ite c!865082 (_2!34934 lt!2085320) lt!2085322)) (content!10369 (ite c!865082 lt!2085325 (_1!34934 lt!2085321))))))))

(assert (=> d!1624252 (= lt!2085459 e!3151081)))

(declare-fun c!865233 () Bool)

(assert (=> d!1624252 (= c!865233 (is-Nil!58315 (ite c!865082 (_2!34934 lt!2085320) lt!2085322)))))

(assert (=> d!1624252 (= (++!12741 (ite c!865082 (_2!34934 lt!2085320) lt!2085322) (ite c!865082 lt!2085325 (_1!34934 lt!2085321))) lt!2085459)))

(declare-fun b!5046635 () Bool)

(assert (=> b!5046635 (= e!3151081 (Cons!58315 (h!64763 (ite c!865082 (_2!34934 lt!2085320) lt!2085322)) (++!12741 (t!371052 (ite c!865082 (_2!34934 lt!2085320) lt!2085322)) (ite c!865082 lt!2085325 (_1!34934 lt!2085321)))))))

(declare-fun b!5046636 () Bool)

(declare-fun res!2149595 () Bool)

(assert (=> b!5046636 (=> (not res!2149595) (not e!3151080))))

(assert (=> b!5046636 (= res!2149595 (= (size!38935 lt!2085459) (+ (size!38935 (ite c!865082 (_2!34934 lt!2085320) lt!2085322)) (size!38935 (ite c!865082 lt!2085325 (_1!34934 lt!2085321))))))))

(declare-fun b!5046637 () Bool)

(assert (=> b!5046637 (= e!3151080 (or (not (= (ite c!865082 lt!2085325 (_1!34934 lt!2085321)) Nil!58315)) (= lt!2085459 (ite c!865082 (_2!34934 lt!2085320) lt!2085322))))))

(assert (= (and d!1624252 c!865233) b!5046634))

(assert (= (and d!1624252 (not c!865233)) b!5046635))

(assert (= (and d!1624252 res!2149594) b!5046636))

(assert (= (and b!5046636 res!2149595) b!5046637))

(declare-fun m!6081944 () Bool)

(assert (=> d!1624252 m!6081944))

(declare-fun m!6081946 () Bool)

(assert (=> d!1624252 m!6081946))

(declare-fun m!6081948 () Bool)

(assert (=> d!1624252 m!6081948))

(declare-fun m!6081950 () Bool)

(assert (=> b!5046635 m!6081950))

(declare-fun m!6081952 () Bool)

(assert (=> b!5046636 m!6081952))

(declare-fun m!6081954 () Bool)

(assert (=> b!5046636 m!6081954))

(declare-fun m!6081956 () Bool)

(assert (=> b!5046636 m!6081956))

(assert (=> bm!351533 d!1624252))

(declare-fun e!3151090 () tuple2!63262)

(declare-fun d!1624256 () Bool)

(assert (=> d!1624256 (= (splitAtIndex!220 (++!12741 lt!2085322 lt!2085325) i!618) e!3151090)))

(declare-fun c!865242 () Bool)

(assert (=> d!1624256 (= c!865242 (= (size!38935 lt!2085322) i!618))))

(declare-fun lt!2085466 () Unit!149509)

(declare-fun choose!37276 (List!58439 List!58439 Int) Unit!149509)

(assert (=> d!1624256 (= lt!2085466 (choose!37276 lt!2085322 lt!2085325 i!618))))

(declare-fun e!3151091 () Bool)

(assert (=> d!1624256 e!3151091))

(declare-fun res!2149598 () Bool)

(assert (=> d!1624256 (=> (not res!2149598) (not e!3151091))))

(assert (=> d!1624256 (= res!2149598 (<= 0 i!618))))

(assert (=> d!1624256 (= (splitAtLemma!75 lt!2085322 lt!2085325 i!618) lt!2085466)))

(declare-fun b!5046652 () Bool)

(declare-fun lt!2085467 () tuple2!63262)

(declare-fun call!351670 () tuple2!63262)

(assert (=> b!5046652 (= lt!2085467 call!351670)))

(declare-fun e!3151093 () tuple2!63262)

(declare-fun call!351671 () List!58439)

(assert (=> b!5046652 (= e!3151093 (tuple2!63263 call!351671 (_2!34934 lt!2085467)))))

(declare-fun b!5046653 () Bool)

(declare-fun e!3151092 () Int)

(assert (=> b!5046653 (= e!3151092 i!618)))

(declare-fun b!5046654 () Bool)

(assert (=> b!5046654 (= e!3151091 (<= i!618 (+ (size!38935 lt!2085322) (size!38935 lt!2085325))))))

(declare-fun lt!2085468 () tuple2!63262)

(declare-fun bm!351665 () Bool)

(declare-fun c!865240 () Bool)

(assert (=> bm!351665 (= call!351671 (++!12741 (ite c!865240 (_2!34934 lt!2085468) lt!2085322) (ite c!865240 lt!2085325 (_1!34934 lt!2085467))))))

(declare-fun b!5046655 () Bool)

(assert (=> b!5046655 (= e!3151090 (tuple2!63263 lt!2085322 lt!2085325))))

(declare-fun b!5046656 () Bool)

(assert (=> b!5046656 (= e!3151090 e!3151093)))

(assert (=> b!5046656 (= c!865240 (< i!618 (size!38935 lt!2085322)))))

(declare-fun bm!351666 () Bool)

(declare-fun c!865241 () Bool)

(assert (=> bm!351666 (= c!865241 c!865240)))

(assert (=> bm!351666 (= call!351670 (splitAtIndex!220 (ite c!865240 lt!2085322 lt!2085325) e!3151092))))

(declare-fun b!5046657 () Bool)

(assert (=> b!5046657 (= e!3151092 (- i!618 (size!38935 lt!2085322)))))

(declare-fun b!5046658 () Bool)

(assert (=> b!5046658 (= lt!2085468 call!351670)))

(assert (=> b!5046658 (= e!3151093 (tuple2!63263 (_1!34934 lt!2085468) call!351671))))

(assert (= (and d!1624256 res!2149598) b!5046654))

(assert (= (and d!1624256 c!865242) b!5046655))

(assert (= (and d!1624256 (not c!865242)) b!5046656))

(assert (= (and b!5046656 c!865240) b!5046658))

(assert (= (and b!5046656 (not c!865240)) b!5046652))

(assert (= (or b!5046658 b!5046652) bm!351665))

(assert (= (or b!5046658 b!5046652) bm!351666))

(assert (= (and bm!351666 c!865241) b!5046653))

(assert (= (and bm!351666 (not c!865241)) b!5046657))

(assert (=> d!1624256 m!6081560))

(assert (=> d!1624256 m!6081560))

(assert (=> d!1624256 m!6081564))

(assert (=> d!1624256 m!6081570))

(declare-fun m!6081958 () Bool)

(assert (=> d!1624256 m!6081958))

(declare-fun m!6081960 () Bool)

(assert (=> bm!351666 m!6081960))

(assert (=> b!5046657 m!6081570))

(assert (=> b!5046654 m!6081570))

(declare-fun m!6081962 () Bool)

(assert (=> b!5046654 m!6081962))

(declare-fun m!6081964 () Bool)

(assert (=> bm!351665 m!6081964))

(assert (=> b!5046656 m!6081570))

(assert (=> b!5046175 d!1624256))

(declare-fun b!5046659 () Bool)

(declare-fun e!3151095 () List!58439)

(assert (=> b!5046659 (= e!3151095 lt!2085325)))

(declare-fun d!1624258 () Bool)

(declare-fun e!3151094 () Bool)

(assert (=> d!1624258 e!3151094))

(declare-fun res!2149599 () Bool)

(assert (=> d!1624258 (=> (not res!2149599) (not e!3151094))))

(declare-fun lt!2085469 () List!58439)

(assert (=> d!1624258 (= res!2149599 (= (content!10369 lt!2085469) (set.union (content!10369 lt!2085322) (content!10369 lt!2085325))))))

(assert (=> d!1624258 (= lt!2085469 e!3151095)))

(declare-fun c!865243 () Bool)

(assert (=> d!1624258 (= c!865243 (is-Nil!58315 lt!2085322))))

(assert (=> d!1624258 (= (++!12741 lt!2085322 lt!2085325) lt!2085469)))

(declare-fun b!5046660 () Bool)

(assert (=> b!5046660 (= e!3151095 (Cons!58315 (h!64763 lt!2085322) (++!12741 (t!371052 lt!2085322) lt!2085325)))))

(declare-fun b!5046661 () Bool)

(declare-fun res!2149600 () Bool)

(assert (=> b!5046661 (=> (not res!2149600) (not e!3151094))))

(assert (=> b!5046661 (= res!2149600 (= (size!38935 lt!2085469) (+ (size!38935 lt!2085322) (size!38935 lt!2085325))))))

(declare-fun b!5046662 () Bool)

(assert (=> b!5046662 (= e!3151094 (or (not (= lt!2085325 Nil!58315)) (= lt!2085469 lt!2085322)))))

(assert (= (and d!1624258 c!865243) b!5046659))

(assert (= (and d!1624258 (not c!865243)) b!5046660))

(assert (= (and d!1624258 res!2149599) b!5046661))

(assert (= (and b!5046661 res!2149600) b!5046662))

(declare-fun m!6081966 () Bool)

(assert (=> d!1624258 m!6081966))

(declare-fun m!6081968 () Bool)

(assert (=> d!1624258 m!6081968))

(declare-fun m!6081970 () Bool)

(assert (=> d!1624258 m!6081970))

(declare-fun m!6081972 () Bool)

(assert (=> b!5046660 m!6081972))

(declare-fun m!6081974 () Bool)

(assert (=> b!5046661 m!6081974))

(assert (=> b!5046661 m!6081570))

(assert (=> b!5046661 m!6081962))

(assert (=> b!5046175 d!1624258))

(declare-fun d!1624260 () Bool)

(declare-fun c!865244 () Bool)

(assert (=> d!1624260 (= c!865244 (is-Empty!15527 (left!42720 t!4198)))))

(declare-fun e!3151096 () List!58439)

(assert (=> d!1624260 (= (list!18940 (left!42720 t!4198)) e!3151096)))

(declare-fun b!5046663 () Bool)

(assert (=> b!5046663 (= e!3151096 Nil!58315)))

(declare-fun b!5046666 () Bool)

(declare-fun e!3151097 () List!58439)

(assert (=> b!5046666 (= e!3151097 (++!12741 (list!18940 (left!42720 (left!42720 t!4198))) (list!18940 (right!43050 (left!42720 t!4198)))))))

(declare-fun b!5046664 () Bool)

(assert (=> b!5046664 (= e!3151096 e!3151097)))

(declare-fun c!865245 () Bool)

(assert (=> b!5046664 (= c!865245 (is-Leaf!25755 (left!42720 t!4198)))))

(declare-fun b!5046665 () Bool)

(assert (=> b!5046665 (= e!3151097 (list!18942 (xs!18853 (left!42720 t!4198))))))

(assert (= (and d!1624260 c!865244) b!5046663))

(assert (= (and d!1624260 (not c!865244)) b!5046664))

(assert (= (and b!5046664 c!865245) b!5046665))

(assert (= (and b!5046664 (not c!865245)) b!5046666))

(assert (=> b!5046666 m!6081892))

(assert (=> b!5046666 m!6081896))

(assert (=> b!5046666 m!6081892))

(assert (=> b!5046666 m!6081896))

(declare-fun m!6081976 () Bool)

(assert (=> b!5046666 m!6081976))

(assert (=> b!5046665 m!6081878))

(assert (=> b!5046175 d!1624260))

(declare-fun d!1624262 () Bool)

(declare-fun c!865246 () Bool)

(assert (=> d!1624262 (= c!865246 (is-Empty!15527 (right!43050 t!4198)))))

(declare-fun e!3151098 () List!58439)

(assert (=> d!1624262 (= (list!18940 (right!43050 t!4198)) e!3151098)))

(declare-fun b!5046667 () Bool)

(assert (=> b!5046667 (= e!3151098 Nil!58315)))

(declare-fun b!5046670 () Bool)

(declare-fun e!3151099 () List!58439)

(assert (=> b!5046670 (= e!3151099 (++!12741 (list!18940 (left!42720 (right!43050 t!4198))) (list!18940 (right!43050 (right!43050 t!4198)))))))

(declare-fun b!5046668 () Bool)

(assert (=> b!5046668 (= e!3151098 e!3151099)))

(declare-fun c!865247 () Bool)

(assert (=> b!5046668 (= c!865247 (is-Leaf!25755 (right!43050 t!4198)))))

(declare-fun b!5046669 () Bool)

(assert (=> b!5046669 (= e!3151099 (list!18942 (xs!18853 (right!43050 t!4198))))))

(assert (= (and d!1624262 c!865246) b!5046667))

(assert (= (and d!1624262 (not c!865246)) b!5046668))

(assert (= (and b!5046668 c!865247) b!5046669))

(assert (= (and b!5046668 (not c!865247)) b!5046670))

(declare-fun m!6081978 () Bool)

(assert (=> b!5046670 m!6081978))

(declare-fun m!6081980 () Bool)

(assert (=> b!5046670 m!6081980))

(assert (=> b!5046670 m!6081978))

(assert (=> b!5046670 m!6081980))

(declare-fun m!6081982 () Bool)

(assert (=> b!5046670 m!6081982))

(declare-fun m!6081984 () Bool)

(assert (=> b!5046669 m!6081984))

(assert (=> b!5046175 d!1624262))

(declare-fun d!1624264 () Bool)

(declare-fun lt!2085470 () Int)

(assert (=> d!1624264 (= lt!2085470 (size!38935 (list!18940 (left!42720 t!4198))))))

(assert (=> d!1624264 (= lt!2085470 (ite (is-Empty!15527 (left!42720 t!4198)) 0 (ite (is-Leaf!25755 (left!42720 t!4198)) (csize!31285 (left!42720 t!4198)) (csize!31284 (left!42720 t!4198)))))))

(assert (=> d!1624264 (= (size!38934 (left!42720 t!4198)) lt!2085470)))

(declare-fun bs!1189148 () Bool)

(assert (= bs!1189148 d!1624264))

(assert (=> bs!1189148 m!6081558))

(assert (=> bs!1189148 m!6081558))

(declare-fun m!6081986 () Bool)

(assert (=> bs!1189148 m!6081986))

(assert (=> b!5046175 d!1624264))

(declare-fun b!5046671 () Bool)

(declare-fun lt!2085471 () tuple2!63262)

(assert (=> b!5046671 (= lt!2085471 (splitAtIndex!220 (t!371052 (++!12741 lt!2085322 lt!2085325)) (- i!618 1)))))

(declare-fun e!3151100 () tuple2!63262)

(assert (=> b!5046671 (= e!3151100 (tuple2!63263 (Cons!58315 (h!64763 (++!12741 lt!2085322 lt!2085325)) (_1!34934 lt!2085471)) (_2!34934 lt!2085471)))))

(declare-fun d!1624266 () Bool)

(declare-fun e!3151102 () Bool)

(assert (=> d!1624266 e!3151102))

(declare-fun res!2149602 () Bool)

(assert (=> d!1624266 (=> (not res!2149602) (not e!3151102))))

(declare-fun lt!2085472 () tuple2!63262)

(assert (=> d!1624266 (= res!2149602 (= (++!12741 (_1!34934 lt!2085472) (_2!34934 lt!2085472)) (++!12741 lt!2085322 lt!2085325)))))

(declare-fun e!3151101 () tuple2!63262)

(assert (=> d!1624266 (= lt!2085472 e!3151101)))

(declare-fun c!865249 () Bool)

(assert (=> d!1624266 (= c!865249 (is-Nil!58315 (++!12741 lt!2085322 lt!2085325)))))

(assert (=> d!1624266 (= (splitAtIndex!220 (++!12741 lt!2085322 lt!2085325) i!618) lt!2085472)))

(declare-fun b!5046672 () Bool)

(assert (=> b!5046672 (= e!3151102 (= (_2!34934 lt!2085472) (drop!2643 (++!12741 lt!2085322 lt!2085325) i!618)))))

(declare-fun b!5046673 () Bool)

(declare-fun res!2149601 () Bool)

(assert (=> b!5046673 (=> (not res!2149601) (not e!3151102))))

(assert (=> b!5046673 (= res!2149601 (= (_1!34934 lt!2085472) (take!836 (++!12741 lt!2085322 lt!2085325) i!618)))))

(declare-fun b!5046674 () Bool)

(assert (=> b!5046674 (= e!3151101 (tuple2!63263 Nil!58315 Nil!58315))))

(declare-fun b!5046675 () Bool)

(assert (=> b!5046675 (= e!3151100 (tuple2!63263 Nil!58315 (++!12741 lt!2085322 lt!2085325)))))

(declare-fun b!5046676 () Bool)

(assert (=> b!5046676 (= e!3151101 e!3151100)))

(declare-fun c!865248 () Bool)

(assert (=> b!5046676 (= c!865248 (<= i!618 0))))

(assert (= (and d!1624266 c!865249) b!5046674))

(assert (= (and d!1624266 (not c!865249)) b!5046676))

(assert (= (and b!5046676 c!865248) b!5046675))

(assert (= (and b!5046676 (not c!865248)) b!5046671))

(assert (= (and d!1624266 res!2149602) b!5046673))

(assert (= (and b!5046673 res!2149601) b!5046672))

(declare-fun m!6081988 () Bool)

(assert (=> b!5046671 m!6081988))

(declare-fun m!6081990 () Bool)

(assert (=> d!1624266 m!6081990))

(assert (=> b!5046672 m!6081560))

(declare-fun m!6081992 () Bool)

(assert (=> b!5046672 m!6081992))

(assert (=> b!5046673 m!6081560))

(declare-fun m!6081994 () Bool)

(assert (=> b!5046673 m!6081994))

(assert (=> b!5046175 d!1624266))

(declare-fun d!1624268 () Bool)

(declare-fun lt!2085475 () Int)

(assert (=> d!1624268 (>= lt!2085475 0)))

(declare-fun e!3151105 () Int)

(assert (=> d!1624268 (= lt!2085475 e!3151105)))

(declare-fun c!865252 () Bool)

(assert (=> d!1624268 (= c!865252 (is-Nil!58315 lt!2085322))))

(assert (=> d!1624268 (= (size!38935 lt!2085322) lt!2085475)))

(declare-fun b!5046681 () Bool)

(assert (=> b!5046681 (= e!3151105 0)))

(declare-fun b!5046682 () Bool)

(assert (=> b!5046682 (= e!3151105 (+ 1 (size!38935 (t!371052 lt!2085322))))))

(assert (= (and d!1624268 c!865252) b!5046681))

(assert (= (and d!1624268 (not c!865252)) b!5046682))

(declare-fun m!6081996 () Bool)

(assert (=> b!5046682 m!6081996))

(assert (=> b!5046175 d!1624268))

(declare-fun b!5046683 () Bool)

(declare-fun res!2149604 () Bool)

(declare-fun e!3151107 () Bool)

(assert (=> b!5046683 (=> (not res!2149604) (not e!3151107))))

(assert (=> b!5046683 (= res!2149604 (isBalanced!4389 (left!42720 t!4198)))))

(declare-fun b!5046684 () Bool)

(declare-fun res!2149605 () Bool)

(assert (=> b!5046684 (=> (not res!2149605) (not e!3151107))))

(assert (=> b!5046684 (= res!2149605 (not (isEmpty!31558 (left!42720 t!4198))))))

(declare-fun b!5046685 () Bool)

(declare-fun res!2149608 () Bool)

(assert (=> b!5046685 (=> (not res!2149608) (not e!3151107))))

(assert (=> b!5046685 (= res!2149608 (<= (- (height!2106 (left!42720 t!4198)) (height!2106 (right!43050 t!4198))) 1))))

(declare-fun d!1624270 () Bool)

(declare-fun res!2149606 () Bool)

(declare-fun e!3151106 () Bool)

(assert (=> d!1624270 (=> res!2149606 e!3151106)))

(assert (=> d!1624270 (= res!2149606 (not (is-Node!15527 t!4198)))))

(assert (=> d!1624270 (= (isBalanced!4389 t!4198) e!3151106)))

(declare-fun b!5046686 () Bool)

(declare-fun res!2149607 () Bool)

(assert (=> b!5046686 (=> (not res!2149607) (not e!3151107))))

(assert (=> b!5046686 (= res!2149607 (isBalanced!4389 (right!43050 t!4198)))))

(declare-fun b!5046687 () Bool)

(assert (=> b!5046687 (= e!3151106 e!3151107)))

(declare-fun res!2149603 () Bool)

(assert (=> b!5046687 (=> (not res!2149603) (not e!3151107))))

(assert (=> b!5046687 (= res!2149603 (<= (- 1) (- (height!2106 (left!42720 t!4198)) (height!2106 (right!43050 t!4198)))))))

(declare-fun b!5046688 () Bool)

(assert (=> b!5046688 (= e!3151107 (not (isEmpty!31558 (right!43050 t!4198))))))

(assert (= (and d!1624270 (not res!2149606)) b!5046687))

(assert (= (and b!5046687 res!2149603) b!5046685))

(assert (= (and b!5046685 res!2149608) b!5046683))

(assert (= (and b!5046683 res!2149604) b!5046686))

(assert (= (and b!5046686 res!2149607) b!5046684))

(assert (= (and b!5046684 res!2149605) b!5046688))

(declare-fun m!6081998 () Bool)

(assert (=> b!5046685 m!6081998))

(assert (=> b!5046685 m!6081824))

(assert (=> b!5046686 m!6081838))

(declare-fun m!6082000 () Bool)

(assert (=> b!5046684 m!6082000))

(assert (=> b!5046683 m!6081886))

(declare-fun m!6082002 () Bool)

(assert (=> b!5046688 m!6082002))

(assert (=> b!5046687 m!6081998))

(assert (=> b!5046687 m!6081824))

(assert (=> start!533756 d!1624270))

(declare-fun d!1624272 () Bool)

(declare-fun c!865255 () Bool)

(assert (=> d!1624272 (= c!865255 (is-Node!15527 t!4198))))

(declare-fun e!3151112 () Bool)

(assert (=> d!1624272 (= (inv!77237 t!4198) e!3151112)))

(declare-fun b!5046695 () Bool)

(declare-fun inv!77242 (Conc!15527) Bool)

(assert (=> b!5046695 (= e!3151112 (inv!77242 t!4198))))

(declare-fun b!5046696 () Bool)

(declare-fun e!3151113 () Bool)

(assert (=> b!5046696 (= e!3151112 e!3151113)))

(declare-fun res!2149611 () Bool)

(assert (=> b!5046696 (= res!2149611 (not (is-Leaf!25755 t!4198)))))

(assert (=> b!5046696 (=> res!2149611 e!3151113)))

(declare-fun b!5046697 () Bool)

(declare-fun inv!77243 (Conc!15527) Bool)

(assert (=> b!5046697 (= e!3151113 (inv!77243 t!4198))))

(assert (= (and d!1624272 c!865255) b!5046695))

(assert (= (and d!1624272 (not c!865255)) b!5046696))

(assert (= (and b!5046696 (not res!2149611)) b!5046697))

(declare-fun m!6082004 () Bool)

(assert (=> b!5046695 m!6082004))

(declare-fun m!6082006 () Bool)

(assert (=> b!5046697 m!6082006))

(assert (=> start!533756 d!1624272))

(declare-fun b!5046698 () Bool)

(declare-fun lt!2085476 () tuple2!63262)

(assert (=> b!5046698 (= lt!2085476 (splitAtIndex!220 (t!371052 (ite c!865082 lt!2085322 lt!2085325)) (- (ite c!865082 i!618 (- i!618 lt!2085318)) 1)))))

(declare-fun e!3151114 () tuple2!63262)

(assert (=> b!5046698 (= e!3151114 (tuple2!63263 (Cons!58315 (h!64763 (ite c!865082 lt!2085322 lt!2085325)) (_1!34934 lt!2085476)) (_2!34934 lt!2085476)))))

(declare-fun d!1624274 () Bool)

(declare-fun e!3151116 () Bool)

(assert (=> d!1624274 e!3151116))

(declare-fun res!2149613 () Bool)

(assert (=> d!1624274 (=> (not res!2149613) (not e!3151116))))

(declare-fun lt!2085477 () tuple2!63262)

(assert (=> d!1624274 (= res!2149613 (= (++!12741 (_1!34934 lt!2085477) (_2!34934 lt!2085477)) (ite c!865082 lt!2085322 lt!2085325)))))

(declare-fun e!3151115 () tuple2!63262)

(assert (=> d!1624274 (= lt!2085477 e!3151115)))

(declare-fun c!865257 () Bool)

(assert (=> d!1624274 (= c!865257 (is-Nil!58315 (ite c!865082 lt!2085322 lt!2085325)))))

(assert (=> d!1624274 (= (splitAtIndex!220 (ite c!865082 lt!2085322 lt!2085325) (ite c!865082 i!618 (- i!618 lt!2085318))) lt!2085477)))

(declare-fun b!5046699 () Bool)

(assert (=> b!5046699 (= e!3151116 (= (_2!34934 lt!2085477) (drop!2643 (ite c!865082 lt!2085322 lt!2085325) (ite c!865082 i!618 (- i!618 lt!2085318)))))))

(declare-fun b!5046700 () Bool)

(declare-fun res!2149612 () Bool)

(assert (=> b!5046700 (=> (not res!2149612) (not e!3151116))))

(assert (=> b!5046700 (= res!2149612 (= (_1!34934 lt!2085477) (take!836 (ite c!865082 lt!2085322 lt!2085325) (ite c!865082 i!618 (- i!618 lt!2085318)))))))

(declare-fun b!5046701 () Bool)

(assert (=> b!5046701 (= e!3151115 (tuple2!63263 Nil!58315 Nil!58315))))

(declare-fun b!5046702 () Bool)

(assert (=> b!5046702 (= e!3151114 (tuple2!63263 Nil!58315 (ite c!865082 lt!2085322 lt!2085325)))))

(declare-fun b!5046703 () Bool)

(assert (=> b!5046703 (= e!3151115 e!3151114)))

(declare-fun c!865256 () Bool)

(assert (=> b!5046703 (= c!865256 (<= (ite c!865082 i!618 (- i!618 lt!2085318)) 0))))

(assert (= (and d!1624274 c!865257) b!5046701))

(assert (= (and d!1624274 (not c!865257)) b!5046703))

(assert (= (and b!5046703 c!865256) b!5046702))

(assert (= (and b!5046703 (not c!865256)) b!5046698))

(assert (= (and d!1624274 res!2149613) b!5046700))

(assert (= (and b!5046700 res!2149612) b!5046699))

(declare-fun m!6082008 () Bool)

(assert (=> b!5046698 m!6082008))

(declare-fun m!6082010 () Bool)

(assert (=> d!1624274 m!6082010))

(declare-fun m!6082012 () Bool)

(assert (=> b!5046699 m!6082012))

(declare-fun m!6082014 () Bool)

(assert (=> b!5046700 m!6082014))

(assert (=> bm!351534 d!1624274))

(declare-fun d!1624276 () Bool)

(assert (=> d!1624276 (= (inv!77236 (xs!18853 t!4198)) (<= (size!38935 (innerList!15615 (xs!18853 t!4198))) 2147483647))))

(declare-fun bs!1189149 () Bool)

(assert (= bs!1189149 d!1624276))

(declare-fun m!6082016 () Bool)

(assert (=> bs!1189149 m!6082016))

(assert (=> b!5046168 d!1624276))

(declare-fun d!1624278 () Bool)

(declare-fun c!865258 () Bool)

(assert (=> d!1624278 (= c!865258 (is-Node!15527 (left!42720 t!4198)))))

(declare-fun e!3151117 () Bool)

(assert (=> d!1624278 (= (inv!77237 (left!42720 t!4198)) e!3151117)))

(declare-fun b!5046704 () Bool)

(assert (=> b!5046704 (= e!3151117 (inv!77242 (left!42720 t!4198)))))

(declare-fun b!5046705 () Bool)

(declare-fun e!3151118 () Bool)

(assert (=> b!5046705 (= e!3151117 e!3151118)))

(declare-fun res!2149614 () Bool)

(assert (=> b!5046705 (= res!2149614 (not (is-Leaf!25755 (left!42720 t!4198))))))

(assert (=> b!5046705 (=> res!2149614 e!3151118)))

(declare-fun b!5046706 () Bool)

(assert (=> b!5046706 (= e!3151118 (inv!77243 (left!42720 t!4198)))))

(assert (= (and d!1624278 c!865258) b!5046704))

(assert (= (and d!1624278 (not c!865258)) b!5046705))

(assert (= (and b!5046705 (not res!2149614)) b!5046706))

(declare-fun m!6082018 () Bool)

(assert (=> b!5046704 m!6082018))

(declare-fun m!6082020 () Bool)

(assert (=> b!5046706 m!6082020))

(assert (=> b!5046169 d!1624278))

(declare-fun d!1624280 () Bool)

(declare-fun c!865259 () Bool)

(assert (=> d!1624280 (= c!865259 (is-Node!15527 (right!43050 t!4198)))))

(declare-fun e!3151119 () Bool)

(assert (=> d!1624280 (= (inv!77237 (right!43050 t!4198)) e!3151119)))

(declare-fun b!5046707 () Bool)

(assert (=> b!5046707 (= e!3151119 (inv!77242 (right!43050 t!4198)))))

(declare-fun b!5046708 () Bool)

(declare-fun e!3151120 () Bool)

(assert (=> b!5046708 (= e!3151119 e!3151120)))

(declare-fun res!2149615 () Bool)

(assert (=> b!5046708 (= res!2149615 (not (is-Leaf!25755 (right!43050 t!4198))))))

(assert (=> b!5046708 (=> res!2149615 e!3151120)))

(declare-fun b!5046709 () Bool)

(assert (=> b!5046709 (= e!3151120 (inv!77243 (right!43050 t!4198)))))

(assert (= (and d!1624280 c!865259) b!5046707))

(assert (= (and d!1624280 (not c!865259)) b!5046708))

(assert (= (and b!5046708 (not res!2149615)) b!5046709))

(declare-fun m!6082022 () Bool)

(assert (=> b!5046707 m!6082022))

(declare-fun m!6082024 () Bool)

(assert (=> b!5046709 m!6082024))

(assert (=> b!5046169 d!1624280))

(declare-fun b!5046714 () Bool)

(declare-fun e!3151123 () Bool)

(declare-fun tp_is_empty!36817 () Bool)

(declare-fun tp!1411750 () Bool)

(assert (=> b!5046714 (= e!3151123 (and tp_is_empty!36817 tp!1411750))))

(assert (=> b!5046178 (= tp!1411736 e!3151123)))

(assert (= (and b!5046178 (is-Cons!58315 (innerList!15615 (xs!18853 t!4198)))) b!5046714))

(declare-fun b!5046723 () Bool)

(declare-fun e!3151129 () Bool)

(declare-fun tp!1411759 () Bool)

(declare-fun tp!1411757 () Bool)

(assert (=> b!5046723 (= e!3151129 (and (inv!77237 (left!42720 (left!42720 t!4198))) tp!1411759 (inv!77237 (right!43050 (left!42720 t!4198))) tp!1411757))))

(declare-fun b!5046725 () Bool)

(declare-fun e!3151128 () Bool)

(declare-fun tp!1411758 () Bool)

(assert (=> b!5046725 (= e!3151128 tp!1411758)))

(declare-fun b!5046724 () Bool)

(assert (=> b!5046724 (= e!3151129 (and (inv!77236 (xs!18853 (left!42720 t!4198))) e!3151128))))

(assert (=> b!5046169 (= tp!1411738 (and (inv!77237 (left!42720 t!4198)) e!3151129))))

(assert (= (and b!5046169 (is-Node!15527 (left!42720 t!4198))) b!5046723))

(assert (= b!5046724 b!5046725))

(assert (= (and b!5046169 (is-Leaf!25755 (left!42720 t!4198))) b!5046724))

(declare-fun m!6082026 () Bool)

(assert (=> b!5046723 m!6082026))

(declare-fun m!6082028 () Bool)

(assert (=> b!5046723 m!6082028))

(declare-fun m!6082030 () Bool)

(assert (=> b!5046724 m!6082030))

(assert (=> b!5046169 m!6081586))

(declare-fun tp!1411760 () Bool)

(declare-fun tp!1411762 () Bool)

(declare-fun b!5046728 () Bool)

(declare-fun e!3151131 () Bool)

(assert (=> b!5046728 (= e!3151131 (and (inv!77237 (left!42720 (right!43050 t!4198))) tp!1411762 (inv!77237 (right!43050 (right!43050 t!4198))) tp!1411760))))

(declare-fun b!5046730 () Bool)

(declare-fun e!3151130 () Bool)

(declare-fun tp!1411761 () Bool)

(assert (=> b!5046730 (= e!3151130 tp!1411761)))

(declare-fun b!5046729 () Bool)

(assert (=> b!5046729 (= e!3151131 (and (inv!77236 (xs!18853 (right!43050 t!4198))) e!3151130))))

(assert (=> b!5046169 (= tp!1411737 (and (inv!77237 (right!43050 t!4198)) e!3151131))))

(assert (= (and b!5046169 (is-Node!15527 (right!43050 t!4198))) b!5046728))

(assert (= b!5046729 b!5046730))

(assert (= (and b!5046169 (is-Leaf!25755 (right!43050 t!4198))) b!5046729))

(declare-fun m!6082032 () Bool)

(assert (=> b!5046728 m!6082032))

(declare-fun m!6082034 () Bool)

(assert (=> b!5046728 m!6082034))

(declare-fun m!6082036 () Bool)

(assert (=> b!5046729 m!6082036))

(assert (=> b!5046169 m!6081588))

(push 1)

(assert (not b!5046673))

(assert (not b!5046595))

(assert (not d!1624258))

(assert (not b!5046704))

(assert (not b!5046672))

(assert (not b!5046601))

(assert (not bm!351643))

(assert (not b!5046707))

(assert (not b!5046593))

(assert (not d!1624274))

(assert (not b!5046355))

(assert (not b!5046684))

(assert (not b!5046709))

(assert (not b!5046316))

(assert (not b!5046317))

(assert (not b!5046683))

(assert (not b!5046268))

(assert (not d!1624264))

(assert (not bm!351639))

(assert (not b!5046309))

(assert (not bm!351644))

(assert (not bm!351587))

(assert (not b!5046350))

(assert (not b!5046654))

(assert (not d!1624252))

(assert (not b!5046348))

(assert (not bm!351665))

(assert (not bm!351580))

(assert (not b!5046728))

(assert (not b!5046439))

(assert (not b!5046636))

(assert (not b!5046671))

(assert (not b!5046447))

(assert (not b!5046729))

(assert (not b!5046656))

(assert (not b!5046346))

(assert (not b!5046344))

(assert (not d!1624228))

(assert (not b!5046273))

(assert (not b!5046670))

(assert (not bm!351594))

(assert (not b!5046445))

(assert (not b!5046443))

(assert (not b!5046347))

(assert (not b!5046310))

(assert (not b!5046603))

(assert (not b!5046687))

(assert (not b!5046682))

(assert (not b!5046349))

(assert (not b!5046352))

(assert (not b!5046353))

(assert (not bm!351579))

(assert (not bm!351666))

(assert (not d!1624206))

(assert (not d!1624240))

(assert (not bm!351642))

(assert (not b!5046454))

(assert (not b!5046698))

(assert (not b!5046666))

(assert tp_is_empty!36817)

(assert (not b!5046635))

(assert (not b!5046657))

(assert (not b!5046661))

(assert (not b!5046730))

(assert (not bm!351641))

(assert (not b!5046660))

(assert (not b!5046582))

(assert (not b!5046169))

(assert (not b!5046451))

(assert (not d!1624276))

(assert (not b!5046700))

(assert (not b!5046706))

(assert (not b!5046714))

(assert (not b!5046665))

(assert (not b!5046272))

(assert (not b!5046685))

(assert (not b!5046723))

(assert (not b!5046697))

(assert (not b!5046308))

(assert (not b!5046688))

(assert (not b!5046686))

(assert (not bm!351584))

(assert (not b!5046269))

(assert (not b!5046599))

(assert (not d!1624266))

(assert (not b!5046598))

(assert (not d!1624256))

(assert (not b!5046699))

(assert (not b!5046695))

(assert (not b!5046725))

(assert (not b!5046351))

(assert (not b!5046669))

(assert (not b!5046345))

(assert (not b!5046724))

(assert (not bm!351581))

(assert (not bm!351585))

(assert (not b!5046354))

(assert (not d!1624196))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

