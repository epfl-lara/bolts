; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!748128 () Bool)

(assert start!748128)

(declare-fun res!3144405 () Bool)

(declare-fun e!4676828 () Bool)

(assert (=> start!748128 (=> (not res!3144405) (not e!4676828))))

(declare-datatypes ((T!145746 0))(
  ( (T!145747 (val!32051 Int)) )
))
(declare-datatypes ((List!74563 0))(
  ( (Nil!74439) (Cons!74439 (h!80887 T!145746) (t!390144 List!74563)) )
))
(declare-datatypes ((IArray!31847 0))(
  ( (IArray!31848 (innerList!15981 List!74563)) )
))
(declare-datatypes ((Conc!15893 0))(
  ( (Node!15893 (left!56860 Conc!15893) (right!57190 Conc!15893) (csize!32016 Int) (cheight!16104 Int)) (Leaf!30221 (xs!19281 IArray!31847) (csize!32017 Int)) (Empty!15893) )
))
(declare-fun t!4440 () Conc!15893)

(declare-fun isBalanced!4519 (Conc!15893) Bool)

(assert (=> start!748128 (= res!3144405 (isBalanced!4519 t!4440))))

(assert (=> start!748128 e!4676828))

(declare-fun e!4676829 () Bool)

(declare-fun inv!95673 (Conc!15893) Bool)

(assert (=> start!748128 (and (inv!95673 t!4440) e!4676829)))

(declare-fun tp_is_empty!53211 () Bool)

(assert (=> start!748128 tp_is_empty!53211))

(declare-fun b!7924183 () Bool)

(declare-fun e!4676827 () Bool)

(declare-fun tp!2358239 () Bool)

(assert (=> b!7924183 (= e!4676827 tp!2358239)))

(declare-fun b!7924184 () Bool)

(declare-fun inv!95674 (IArray!31847) Bool)

(assert (=> b!7924184 (= e!4676829 (and (inv!95674 (xs!19281 t!4440)) e!4676827))))

(declare-fun tp!2358238 () Bool)

(declare-fun b!7924185 () Bool)

(declare-fun tp!2358237 () Bool)

(assert (=> b!7924185 (= e!4676829 (and (inv!95673 (left!56860 t!4440)) tp!2358237 (inv!95673 (right!57190 t!4440)) tp!2358238))))

(declare-fun b!7924186 () Bool)

(declare-fun res!3144406 () Bool)

(assert (=> b!7924186 (=> (not res!3144406) (not e!4676828))))

(assert (=> b!7924186 (= res!3144406 (and (not (is-Empty!15893 t!4440)) (not (is-Node!15893 t!4440)) (< (csize!32017 t!4440) 512)))))

(declare-fun b!7924187 () Bool)

(declare-fun v!5484 () T!145746)

(declare-fun size!43230 (List!74563) Int)

(declare-fun $colon+!310 (List!74563 T!145746) List!74563)

(declare-fun list!19396 (IArray!31847) List!74563)

(assert (=> b!7924187 (= e!4676828 (not (= (size!43230 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484)) (+ 1 (csize!32017 t!4440)))))))

(assert (= (and start!748128 res!3144405) b!7924186))

(assert (= (and b!7924186 res!3144406) b!7924187))

(assert (= (and start!748128 (is-Node!15893 t!4440)) b!7924185))

(assert (= b!7924184 b!7924183))

(assert (= (and start!748128 (is-Leaf!30221 t!4440)) b!7924184))

(declare-fun m!8304396 () Bool)

(assert (=> start!748128 m!8304396))

(declare-fun m!8304398 () Bool)

(assert (=> start!748128 m!8304398))

(declare-fun m!8304400 () Bool)

(assert (=> b!7924184 m!8304400))

(declare-fun m!8304402 () Bool)

(assert (=> b!7924185 m!8304402))

(declare-fun m!8304404 () Bool)

(assert (=> b!7924185 m!8304404))

(declare-fun m!8304406 () Bool)

(assert (=> b!7924187 m!8304406))

(assert (=> b!7924187 m!8304406))

(declare-fun m!8304408 () Bool)

(assert (=> b!7924187 m!8304408))

(assert (=> b!7924187 m!8304408))

(declare-fun m!8304410 () Bool)

(assert (=> b!7924187 m!8304410))

(push 1)

(assert (not b!7924185))

(assert (not b!7924183))

(assert (not start!748128))

(assert (not b!7924187))

(assert (not b!7924184))

(assert tp_is_empty!53211)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2366120 () Bool)

(assert (=> d!2366120 (= (inv!95674 (xs!19281 t!4440)) (<= (size!43230 (innerList!15981 (xs!19281 t!4440))) 2147483647))))

(declare-fun bs!1968697 () Bool)

(assert (= bs!1968697 d!2366120))

(declare-fun m!8304428 () Bool)

(assert (=> bs!1968697 m!8304428))

(assert (=> b!7924184 d!2366120))

(declare-fun b!7924215 () Bool)

(declare-fun e!4676843 () Bool)

(declare-fun e!4676844 () Bool)

(assert (=> b!7924215 (= e!4676843 e!4676844)))

(declare-fun res!3144427 () Bool)

(assert (=> b!7924215 (=> (not res!3144427) (not e!4676844))))

(declare-fun height!2208 (Conc!15893) Int)

(assert (=> b!7924215 (= res!3144427 (<= (- 1) (- (height!2208 (left!56860 t!4440)) (height!2208 (right!57190 t!4440)))))))

(declare-fun d!2366122 () Bool)

(declare-fun res!3144426 () Bool)

(assert (=> d!2366122 (=> res!3144426 e!4676843)))

(assert (=> d!2366122 (= res!3144426 (not (is-Node!15893 t!4440)))))

(assert (=> d!2366122 (= (isBalanced!4519 t!4440) e!4676843)))

(declare-fun b!7924216 () Bool)

(declare-fun res!3144425 () Bool)

(assert (=> b!7924216 (=> (not res!3144425) (not e!4676844))))

(assert (=> b!7924216 (= res!3144425 (isBalanced!4519 (right!57190 t!4440)))))

(declare-fun b!7924217 () Bool)

(declare-fun res!3144430 () Bool)

(assert (=> b!7924217 (=> (not res!3144430) (not e!4676844))))

(declare-fun isEmpty!42759 (Conc!15893) Bool)

(assert (=> b!7924217 (= res!3144430 (not (isEmpty!42759 (left!56860 t!4440))))))

(declare-fun b!7924218 () Bool)

(declare-fun res!3144428 () Bool)

(assert (=> b!7924218 (=> (not res!3144428) (not e!4676844))))

(assert (=> b!7924218 (= res!3144428 (isBalanced!4519 (left!56860 t!4440)))))

(declare-fun b!7924219 () Bool)

(declare-fun res!3144429 () Bool)

(assert (=> b!7924219 (=> (not res!3144429) (not e!4676844))))

(assert (=> b!7924219 (= res!3144429 (<= (- (height!2208 (left!56860 t!4440)) (height!2208 (right!57190 t!4440))) 1))))

(declare-fun b!7924220 () Bool)

(assert (=> b!7924220 (= e!4676844 (not (isEmpty!42759 (right!57190 t!4440))))))

(assert (= (and d!2366122 (not res!3144426)) b!7924215))

(assert (= (and b!7924215 res!3144427) b!7924219))

(assert (= (and b!7924219 res!3144429) b!7924218))

(assert (= (and b!7924218 res!3144428) b!7924216))

(assert (= (and b!7924216 res!3144425) b!7924217))

(assert (= (and b!7924217 res!3144430) b!7924220))

(declare-fun m!8304430 () Bool)

(assert (=> b!7924216 m!8304430))

(declare-fun m!8304432 () Bool)

(assert (=> b!7924220 m!8304432))

(declare-fun m!8304434 () Bool)

(assert (=> b!7924218 m!8304434))

(declare-fun m!8304436 () Bool)

(assert (=> b!7924219 m!8304436))

(declare-fun m!8304438 () Bool)

(assert (=> b!7924219 m!8304438))

(assert (=> b!7924215 m!8304436))

(assert (=> b!7924215 m!8304438))

(declare-fun m!8304440 () Bool)

(assert (=> b!7924217 m!8304440))

(assert (=> start!748128 d!2366122))

(declare-fun d!2366126 () Bool)

(declare-fun c!1454889 () Bool)

(assert (=> d!2366126 (= c!1454889 (is-Node!15893 t!4440))))

(declare-fun e!4676849 () Bool)

(assert (=> d!2366126 (= (inv!95673 t!4440) e!4676849)))

(declare-fun b!7924227 () Bool)

(declare-fun inv!95677 (Conc!15893) Bool)

(assert (=> b!7924227 (= e!4676849 (inv!95677 t!4440))))

(declare-fun b!7924228 () Bool)

(declare-fun e!4676850 () Bool)

(assert (=> b!7924228 (= e!4676849 e!4676850)))

(declare-fun res!3144433 () Bool)

(assert (=> b!7924228 (= res!3144433 (not (is-Leaf!30221 t!4440)))))

(assert (=> b!7924228 (=> res!3144433 e!4676850)))

(declare-fun b!7924229 () Bool)

(declare-fun inv!95678 (Conc!15893) Bool)

(assert (=> b!7924229 (= e!4676850 (inv!95678 t!4440))))

(assert (= (and d!2366126 c!1454889) b!7924227))

(assert (= (and d!2366126 (not c!1454889)) b!7924228))

(assert (= (and b!7924228 (not res!3144433)) b!7924229))

(declare-fun m!8304442 () Bool)

(assert (=> b!7924227 m!8304442))

(declare-fun m!8304444 () Bool)

(assert (=> b!7924229 m!8304444))

(assert (=> start!748128 d!2366126))

(declare-fun d!2366128 () Bool)

(declare-fun c!1454890 () Bool)

(assert (=> d!2366128 (= c!1454890 (is-Node!15893 (left!56860 t!4440)))))

(declare-fun e!4676851 () Bool)

(assert (=> d!2366128 (= (inv!95673 (left!56860 t!4440)) e!4676851)))

(declare-fun b!7924230 () Bool)

(assert (=> b!7924230 (= e!4676851 (inv!95677 (left!56860 t!4440)))))

(declare-fun b!7924231 () Bool)

(declare-fun e!4676852 () Bool)

(assert (=> b!7924231 (= e!4676851 e!4676852)))

(declare-fun res!3144434 () Bool)

(assert (=> b!7924231 (= res!3144434 (not (is-Leaf!30221 (left!56860 t!4440))))))

(assert (=> b!7924231 (=> res!3144434 e!4676852)))

(declare-fun b!7924232 () Bool)

(assert (=> b!7924232 (= e!4676852 (inv!95678 (left!56860 t!4440)))))

(assert (= (and d!2366128 c!1454890) b!7924230))

(assert (= (and d!2366128 (not c!1454890)) b!7924231))

(assert (= (and b!7924231 (not res!3144434)) b!7924232))

(declare-fun m!8304446 () Bool)

(assert (=> b!7924230 m!8304446))

(declare-fun m!8304448 () Bool)

(assert (=> b!7924232 m!8304448))

(assert (=> b!7924185 d!2366128))

(declare-fun d!2366130 () Bool)

(declare-fun c!1454891 () Bool)

(assert (=> d!2366130 (= c!1454891 (is-Node!15893 (right!57190 t!4440)))))

(declare-fun e!4676853 () Bool)

(assert (=> d!2366130 (= (inv!95673 (right!57190 t!4440)) e!4676853)))

(declare-fun b!7924233 () Bool)

(assert (=> b!7924233 (= e!4676853 (inv!95677 (right!57190 t!4440)))))

(declare-fun b!7924234 () Bool)

(declare-fun e!4676854 () Bool)

(assert (=> b!7924234 (= e!4676853 e!4676854)))

(declare-fun res!3144435 () Bool)

(assert (=> b!7924234 (= res!3144435 (not (is-Leaf!30221 (right!57190 t!4440))))))

(assert (=> b!7924234 (=> res!3144435 e!4676854)))

(declare-fun b!7924235 () Bool)

(assert (=> b!7924235 (= e!4676854 (inv!95678 (right!57190 t!4440)))))

(assert (= (and d!2366130 c!1454891) b!7924233))

(assert (= (and d!2366130 (not c!1454891)) b!7924234))

(assert (= (and b!7924234 (not res!3144435)) b!7924235))

(declare-fun m!8304450 () Bool)

(assert (=> b!7924233 m!8304450))

(declare-fun m!8304452 () Bool)

(assert (=> b!7924235 m!8304452))

(assert (=> b!7924185 d!2366130))

(declare-fun d!2366132 () Bool)

(declare-fun lt!2692589 () Int)

(assert (=> d!2366132 (>= lt!2692589 0)))

(declare-fun e!4676857 () Int)

(assert (=> d!2366132 (= lt!2692589 e!4676857)))

(declare-fun c!1454894 () Bool)

(assert (=> d!2366132 (= c!1454894 (is-Nil!74439 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484)))))

(assert (=> d!2366132 (= (size!43230 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484)) lt!2692589)))

(declare-fun b!7924240 () Bool)

(assert (=> b!7924240 (= e!4676857 0)))

(declare-fun b!7924241 () Bool)

(assert (=> b!7924241 (= e!4676857 (+ 1 (size!43230 (t!390144 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484)))))))

(assert (= (and d!2366132 c!1454894) b!7924240))

(assert (= (and d!2366132 (not c!1454894)) b!7924241))

(declare-fun m!8304454 () Bool)

(assert (=> b!7924241 m!8304454))

(assert (=> b!7924187 d!2366132))

(declare-fun b!7924277 () Bool)

(declare-fun e!4676870 () Bool)

(declare-fun call!735081 () (_ BitVec 32))

(declare-fun call!735082 () (_ BitVec 32))

(assert (=> b!7924277 (= e!4676870 (= call!735081 call!735082))))

(declare-fun b!7924278 () Bool)

(declare-fun res!3144463 () Bool)

(declare-fun e!4676871 () Bool)

(assert (=> b!7924278 (=> (not res!3144463) (not e!4676871))))

(assert (=> b!7924278 (= res!3144463 e!4676870)))

(declare-fun c!1454899 () Bool)

(declare-fun isize!114 (List!74563) (_ BitVec 32))

(assert (=> b!7924278 (= c!1454899 (bvslt (isize!114 (list!19396 (xs!19281 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7924279 () Bool)

(declare-fun res!3144462 () Bool)

(assert (=> b!7924279 (=> (not res!3144462) (not e!4676871))))

(declare-fun lt!2692592 () List!74563)

(assert (=> b!7924279 (= res!3144462 (= (size!43230 lt!2692592) (+ (size!43230 (list!19396 (xs!19281 t!4440))) 1)))))

(declare-fun b!7924280 () Bool)

(declare-fun e!4676872 () List!74563)

(assert (=> b!7924280 (= e!4676872 (Cons!74439 v!5484 (list!19396 (xs!19281 t!4440))))))

(declare-fun b!7924281 () Bool)

(declare-fun res!3144465 () Bool)

(assert (=> b!7924281 (=> (not res!3144465) (not e!4676871))))

(declare-fun content!15776 (List!74563) (Set T!145746))

(assert (=> b!7924281 (= res!3144465 (= (content!15776 lt!2692592) (set.union (content!15776 (list!19396 (xs!19281 t!4440))) (set.insert v!5484 (as set.empty (Set T!145746))))))))

(declare-fun bm!735076 () Bool)

(assert (=> bm!735076 (= call!735082 (isize!114 (list!19396 (xs!19281 t!4440))))))

(declare-fun b!7924282 () Bool)

(assert (=> b!7924282 (= e!4676870 (= call!735081 (bvadd call!735082 #b00000000000000000000000000000001)))))

(declare-fun bm!735077 () Bool)

(assert (=> bm!735077 (= call!735081 (isize!114 lt!2692592))))

(declare-fun b!7924283 () Bool)

(declare-fun ++!18252 (List!74563 List!74563) List!74563)

(assert (=> b!7924283 (= e!4676871 (= lt!2692592 (++!18252 (list!19396 (xs!19281 t!4440)) (Cons!74439 v!5484 Nil!74439))))))

(declare-fun d!2366134 () Bool)

(assert (=> d!2366134 e!4676871))

(declare-fun res!3144464 () Bool)

(assert (=> d!2366134 (=> (not res!3144464) (not e!4676871))))

(assert (=> d!2366134 (= res!3144464 (is-Cons!74439 lt!2692592))))

(assert (=> d!2366134 (= lt!2692592 e!4676872)))

(declare-fun c!1454900 () Bool)

(assert (=> d!2366134 (= c!1454900 (is-Nil!74439 (list!19396 (xs!19281 t!4440))))))

(assert (=> d!2366134 (= ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484) lt!2692592)))

(declare-fun b!7924276 () Bool)

(assert (=> b!7924276 (= e!4676872 (Cons!74439 (h!80887 (list!19396 (xs!19281 t!4440))) ($colon+!310 (t!390144 (list!19396 (xs!19281 t!4440))) v!5484)))))

(assert (= (and d!2366134 c!1454900) b!7924280))

(assert (= (and d!2366134 (not c!1454900)) b!7924276))

(assert (= (and d!2366134 res!3144464) b!7924279))

(assert (= (and b!7924279 res!3144462) b!7924278))

(assert (= (and b!7924278 c!1454899) b!7924282))

(assert (= (and b!7924278 (not c!1454899)) b!7924277))

(assert (= (or b!7924282 b!7924277) bm!735077))

(assert (= (or b!7924282 b!7924277) bm!735076))

(assert (= (and b!7924278 res!3144463) b!7924281))

(assert (= (and b!7924281 res!3144465) b!7924283))

(declare-fun m!8304468 () Bool)

(assert (=> bm!735077 m!8304468))

(declare-fun m!8304470 () Bool)

(assert (=> b!7924279 m!8304470))

(assert (=> b!7924279 m!8304406))

(declare-fun m!8304472 () Bool)

(assert (=> b!7924279 m!8304472))

(assert (=> bm!735076 m!8304406))

(declare-fun m!8304474 () Bool)

(assert (=> bm!735076 m!8304474))

(declare-fun m!8304476 () Bool)

(assert (=> b!7924276 m!8304476))

(assert (=> b!7924283 m!8304406))

(declare-fun m!8304478 () Bool)

(assert (=> b!7924283 m!8304478))

(assert (=> b!7924278 m!8304406))

(assert (=> b!7924278 m!8304474))

(declare-fun m!8304480 () Bool)

(assert (=> b!7924281 m!8304480))

(assert (=> b!7924281 m!8304406))

(declare-fun m!8304482 () Bool)

(assert (=> b!7924281 m!8304482))

(declare-fun m!8304484 () Bool)

(assert (=> b!7924281 m!8304484))

(assert (=> b!7924187 d!2366134))

(declare-fun d!2366138 () Bool)

(assert (=> d!2366138 (= (list!19396 (xs!19281 t!4440)) (innerList!15981 (xs!19281 t!4440)))))

(assert (=> b!7924187 d!2366138))

(declare-fun b!7924288 () Bool)

(declare-fun e!4676875 () Bool)

(declare-fun tp!2358251 () Bool)

(assert (=> b!7924288 (= e!4676875 (and tp_is_empty!53211 tp!2358251))))

(assert (=> b!7924183 (= tp!2358239 e!4676875)))

(assert (= (and b!7924183 (is-Cons!74439 (innerList!15981 (xs!19281 t!4440)))) b!7924288))

(declare-fun tp!2358259 () Bool)

(declare-fun b!7924301 () Bool)

(declare-fun tp!2358258 () Bool)

(declare-fun e!4676881 () Bool)

(assert (=> b!7924301 (= e!4676881 (and (inv!95673 (left!56860 (left!56860 t!4440))) tp!2358258 (inv!95673 (right!57190 (left!56860 t!4440))) tp!2358259))))

(declare-fun b!7924303 () Bool)

(declare-fun e!4676882 () Bool)

(declare-fun tp!2358260 () Bool)

(assert (=> b!7924303 (= e!4676882 tp!2358260)))

(declare-fun b!7924302 () Bool)

(assert (=> b!7924302 (= e!4676881 (and (inv!95674 (xs!19281 (left!56860 t!4440))) e!4676882))))

(assert (=> b!7924185 (= tp!2358237 (and (inv!95673 (left!56860 t!4440)) e!4676881))))

(assert (= (and b!7924185 (is-Node!15893 (left!56860 t!4440))) b!7924301))

(assert (= b!7924302 b!7924303))

(assert (= (and b!7924185 (is-Leaf!30221 (left!56860 t!4440))) b!7924302))

(declare-fun m!8304486 () Bool)

(assert (=> b!7924301 m!8304486))

(declare-fun m!8304488 () Bool)

(assert (=> b!7924301 m!8304488))

(declare-fun m!8304490 () Bool)

(assert (=> b!7924302 m!8304490))

(assert (=> b!7924185 m!8304402))

(declare-fun b!7924306 () Bool)

(declare-fun tp!2358261 () Bool)

(declare-fun tp!2358262 () Bool)

(declare-fun e!4676886 () Bool)

(assert (=> b!7924306 (= e!4676886 (and (inv!95673 (left!56860 (right!57190 t!4440))) tp!2358261 (inv!95673 (right!57190 (right!57190 t!4440))) tp!2358262))))

(declare-fun b!7924308 () Bool)

(declare-fun e!4676887 () Bool)

(declare-fun tp!2358263 () Bool)

(assert (=> b!7924308 (= e!4676887 tp!2358263)))

(declare-fun b!7924307 () Bool)

(assert (=> b!7924307 (= e!4676886 (and (inv!95674 (xs!19281 (right!57190 t!4440))) e!4676887))))

(assert (=> b!7924185 (= tp!2358238 (and (inv!95673 (right!57190 t!4440)) e!4676886))))

(assert (= (and b!7924185 (is-Node!15893 (right!57190 t!4440))) b!7924306))

(assert (= b!7924307 b!7924308))

(assert (= (and b!7924185 (is-Leaf!30221 (right!57190 t!4440))) b!7924307))

(declare-fun m!8304492 () Bool)

(assert (=> b!7924306 m!8304492))

(declare-fun m!8304494 () Bool)

(assert (=> b!7924306 m!8304494))

(declare-fun m!8304496 () Bool)

(assert (=> b!7924307 m!8304496))

(assert (=> b!7924185 m!8304404))

(push 1)

(assert (not b!7924219))

(assert (not b!7924278))

(assert (not b!7924279))

(assert (not b!7924283))

(assert (not b!7924276))

(assert (not b!7924235))

(assert (not b!7924301))

(assert (not bm!735076))

(assert (not b!7924306))

(assert (not b!7924308))

(assert (not b!7924230))

(assert (not b!7924233))

(assert (not b!7924216))

(assert (not b!7924220))

(assert (not b!7924185))

(assert (not b!7924229))

(assert (not b!7924215))

(assert (not b!7924217))

(assert (not b!7924307))

(assert (not b!7924302))

(assert (not b!7924232))

(assert (not b!7924281))

(assert (not b!7924288))

(assert (not b!7924227))

(assert (not b!7924303))

(assert (not bm!735077))

(assert (not b!7924241))

(assert (not b!7924218))

(assert (not d!2366120))

(assert tp_is_empty!53211)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2366152 () Bool)

(declare-fun lt!2692601 () Bool)

(declare-fun isEmpty!42761 (List!74563) Bool)

(declare-fun list!19398 (Conc!15893) List!74563)

(assert (=> d!2366152 (= lt!2692601 (isEmpty!42761 (list!19398 (left!56860 t!4440))))))

(declare-fun size!43232 (Conc!15893) Int)

(assert (=> d!2366152 (= lt!2692601 (= (size!43232 (left!56860 t!4440)) 0))))

(assert (=> d!2366152 (= (isEmpty!42759 (left!56860 t!4440)) lt!2692601)))

(declare-fun bs!1968699 () Bool)

(assert (= bs!1968699 d!2366152))

(declare-fun m!8304544 () Bool)

(assert (=> bs!1968699 m!8304544))

(assert (=> bs!1968699 m!8304544))

(declare-fun m!8304546 () Bool)

(assert (=> bs!1968699 m!8304546))

(declare-fun m!8304548 () Bool)

(assert (=> bs!1968699 m!8304548))

(assert (=> b!7924217 d!2366152))

(declare-fun d!2366154 () Bool)

(assert (=> d!2366154 (= (height!2208 (left!56860 t!4440)) (ite (is-Empty!15893 (left!56860 t!4440)) 0 (ite (is-Leaf!30221 (left!56860 t!4440)) 1 (cheight!16104 (left!56860 t!4440)))))))

(assert (=> b!7924219 d!2366154))

(declare-fun d!2366156 () Bool)

(assert (=> d!2366156 (= (height!2208 (right!57190 t!4440)) (ite (is-Empty!15893 (right!57190 t!4440)) 0 (ite (is-Leaf!30221 (right!57190 t!4440)) 1 (cheight!16104 (right!57190 t!4440)))))))

(assert (=> b!7924219 d!2366156))

(declare-fun d!2366158 () Bool)

(assert (=> d!2366158 (= (inv!95674 (xs!19281 (right!57190 t!4440))) (<= (size!43230 (innerList!15981 (xs!19281 (right!57190 t!4440)))) 2147483647))))

(declare-fun bs!1968700 () Bool)

(assert (= bs!1968700 d!2366158))

(declare-fun m!8304550 () Bool)

(assert (=> bs!1968700 m!8304550))

(assert (=> b!7924307 d!2366158))

(declare-fun b!7924368 () Bool)

(declare-fun e!4676917 () Bool)

(declare-fun call!735089 () (_ BitVec 32))

(declare-fun call!735090 () (_ BitVec 32))

(assert (=> b!7924368 (= e!4676917 (= call!735089 call!735090))))

(declare-fun b!7924369 () Bool)

(declare-fun res!3144484 () Bool)

(declare-fun e!4676918 () Bool)

(assert (=> b!7924369 (=> (not res!3144484) (not e!4676918))))

(assert (=> b!7924369 (= res!3144484 e!4676917)))

(declare-fun c!1454915 () Bool)

(assert (=> b!7924369 (= c!1454915 (bvslt (isize!114 (t!390144 (list!19396 (xs!19281 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7924370 () Bool)

(declare-fun res!3144483 () Bool)

(assert (=> b!7924370 (=> (not res!3144483) (not e!4676918))))

(declare-fun lt!2692602 () List!74563)

(assert (=> b!7924370 (= res!3144483 (= (size!43230 lt!2692602) (+ (size!43230 (t!390144 (list!19396 (xs!19281 t!4440)))) 1)))))

(declare-fun b!7924371 () Bool)

(declare-fun e!4676919 () List!74563)

(assert (=> b!7924371 (= e!4676919 (Cons!74439 v!5484 (t!390144 (list!19396 (xs!19281 t!4440)))))))

(declare-fun b!7924372 () Bool)

(declare-fun res!3144486 () Bool)

(assert (=> b!7924372 (=> (not res!3144486) (not e!4676918))))

(assert (=> b!7924372 (= res!3144486 (= (content!15776 lt!2692602) (set.union (content!15776 (t!390144 (list!19396 (xs!19281 t!4440)))) (set.insert v!5484 (as set.empty (Set T!145746))))))))

(declare-fun bm!735084 () Bool)

(assert (=> bm!735084 (= call!735090 (isize!114 (t!390144 (list!19396 (xs!19281 t!4440)))))))

(declare-fun b!7924373 () Bool)

(assert (=> b!7924373 (= e!4676917 (= call!735089 (bvadd call!735090 #b00000000000000000000000000000001)))))

(declare-fun bm!735085 () Bool)

(assert (=> bm!735085 (= call!735089 (isize!114 lt!2692602))))

(declare-fun b!7924374 () Bool)

(assert (=> b!7924374 (= e!4676918 (= lt!2692602 (++!18252 (t!390144 (list!19396 (xs!19281 t!4440))) (Cons!74439 v!5484 Nil!74439))))))

(declare-fun d!2366160 () Bool)

(assert (=> d!2366160 e!4676918))

(declare-fun res!3144485 () Bool)

(assert (=> d!2366160 (=> (not res!3144485) (not e!4676918))))

(assert (=> d!2366160 (= res!3144485 (is-Cons!74439 lt!2692602))))

(assert (=> d!2366160 (= lt!2692602 e!4676919)))

(declare-fun c!1454916 () Bool)

(assert (=> d!2366160 (= c!1454916 (is-Nil!74439 (t!390144 (list!19396 (xs!19281 t!4440)))))))

(assert (=> d!2366160 (= ($colon+!310 (t!390144 (list!19396 (xs!19281 t!4440))) v!5484) lt!2692602)))

(declare-fun b!7924367 () Bool)

(assert (=> b!7924367 (= e!4676919 (Cons!74439 (h!80887 (t!390144 (list!19396 (xs!19281 t!4440)))) ($colon+!310 (t!390144 (t!390144 (list!19396 (xs!19281 t!4440)))) v!5484)))))

(assert (= (and d!2366160 c!1454916) b!7924371))

(assert (= (and d!2366160 (not c!1454916)) b!7924367))

(assert (= (and d!2366160 res!3144485) b!7924370))

(assert (= (and b!7924370 res!3144483) b!7924369))

(assert (= (and b!7924369 c!1454915) b!7924373))

(assert (= (and b!7924369 (not c!1454915)) b!7924368))

(assert (= (or b!7924373 b!7924368) bm!735085))

(assert (= (or b!7924373 b!7924368) bm!735084))

(assert (= (and b!7924369 res!3144484) b!7924372))

(assert (= (and b!7924372 res!3144486) b!7924374))

(declare-fun m!8304552 () Bool)

(assert (=> bm!735085 m!8304552))

(declare-fun m!8304554 () Bool)

(assert (=> b!7924370 m!8304554))

(declare-fun m!8304556 () Bool)

(assert (=> b!7924370 m!8304556))

(declare-fun m!8304558 () Bool)

(assert (=> bm!735084 m!8304558))

(declare-fun m!8304560 () Bool)

(assert (=> b!7924367 m!8304560))

(declare-fun m!8304562 () Bool)

(assert (=> b!7924374 m!8304562))

(assert (=> b!7924369 m!8304558))

(declare-fun m!8304564 () Bool)

(assert (=> b!7924372 m!8304564))

(declare-fun m!8304566 () Bool)

(assert (=> b!7924372 m!8304566))

(assert (=> b!7924372 m!8304484))

(assert (=> b!7924276 d!2366160))

(declare-fun d!2366162 () Bool)

(declare-fun c!1454917 () Bool)

(assert (=> d!2366162 (= c!1454917 (is-Node!15893 (left!56860 (left!56860 t!4440))))))

(declare-fun e!4676920 () Bool)

(assert (=> d!2366162 (= (inv!95673 (left!56860 (left!56860 t!4440))) e!4676920)))

(declare-fun b!7924375 () Bool)

(assert (=> b!7924375 (= e!4676920 (inv!95677 (left!56860 (left!56860 t!4440))))))

(declare-fun b!7924376 () Bool)

(declare-fun e!4676921 () Bool)

(assert (=> b!7924376 (= e!4676920 e!4676921)))

(declare-fun res!3144487 () Bool)

(assert (=> b!7924376 (= res!3144487 (not (is-Leaf!30221 (left!56860 (left!56860 t!4440)))))))

(assert (=> b!7924376 (=> res!3144487 e!4676921)))

(declare-fun b!7924377 () Bool)

(assert (=> b!7924377 (= e!4676921 (inv!95678 (left!56860 (left!56860 t!4440))))))

(assert (= (and d!2366162 c!1454917) b!7924375))

(assert (= (and d!2366162 (not c!1454917)) b!7924376))

(assert (= (and b!7924376 (not res!3144487)) b!7924377))

(declare-fun m!8304568 () Bool)

(assert (=> b!7924375 m!8304568))

(declare-fun m!8304570 () Bool)

(assert (=> b!7924377 m!8304570))

(assert (=> b!7924301 d!2366162))

(declare-fun d!2366164 () Bool)

(declare-fun c!1454918 () Bool)

(assert (=> d!2366164 (= c!1454918 (is-Node!15893 (right!57190 (left!56860 t!4440))))))

(declare-fun e!4676922 () Bool)

(assert (=> d!2366164 (= (inv!95673 (right!57190 (left!56860 t!4440))) e!4676922)))

(declare-fun b!7924378 () Bool)

(assert (=> b!7924378 (= e!4676922 (inv!95677 (right!57190 (left!56860 t!4440))))))

(declare-fun b!7924379 () Bool)

(declare-fun e!4676923 () Bool)

(assert (=> b!7924379 (= e!4676922 e!4676923)))

(declare-fun res!3144488 () Bool)

(assert (=> b!7924379 (= res!3144488 (not (is-Leaf!30221 (right!57190 (left!56860 t!4440)))))))

(assert (=> b!7924379 (=> res!3144488 e!4676923)))

(declare-fun b!7924380 () Bool)

(assert (=> b!7924380 (= e!4676923 (inv!95678 (right!57190 (left!56860 t!4440))))))

(assert (= (and d!2366164 c!1454918) b!7924378))

(assert (= (and d!2366164 (not c!1454918)) b!7924379))

(assert (= (and b!7924379 (not res!3144488)) b!7924380))

(declare-fun m!8304572 () Bool)

(assert (=> b!7924378 m!8304572))

(declare-fun m!8304574 () Bool)

(assert (=> b!7924380 m!8304574))

(assert (=> b!7924301 d!2366164))

(declare-fun d!2366166 () Bool)

(declare-fun res!3144495 () Bool)

(declare-fun e!4676926 () Bool)

(assert (=> d!2366166 (=> (not res!3144495) (not e!4676926))))

(assert (=> d!2366166 (= res!3144495 (= (csize!32016 (right!57190 t!4440)) (+ (size!43232 (left!56860 (right!57190 t!4440))) (size!43232 (right!57190 (right!57190 t!4440))))))))

(assert (=> d!2366166 (= (inv!95677 (right!57190 t!4440)) e!4676926)))

(declare-fun b!7924387 () Bool)

(declare-fun res!3144496 () Bool)

(assert (=> b!7924387 (=> (not res!3144496) (not e!4676926))))

(assert (=> b!7924387 (= res!3144496 (and (not (= (left!56860 (right!57190 t!4440)) Empty!15893)) (not (= (right!57190 (right!57190 t!4440)) Empty!15893))))))

(declare-fun b!7924388 () Bool)

(declare-fun res!3144497 () Bool)

(assert (=> b!7924388 (=> (not res!3144497) (not e!4676926))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7924388 (= res!3144497 (= (cheight!16104 (right!57190 t!4440)) (+ (max!0 (height!2208 (left!56860 (right!57190 t!4440))) (height!2208 (right!57190 (right!57190 t!4440)))) 1)))))

(declare-fun b!7924389 () Bool)

(assert (=> b!7924389 (= e!4676926 (<= 0 (cheight!16104 (right!57190 t!4440))))))

(assert (= (and d!2366166 res!3144495) b!7924387))

(assert (= (and b!7924387 res!3144496) b!7924388))

(assert (= (and b!7924388 res!3144497) b!7924389))

(declare-fun m!8304576 () Bool)

(assert (=> d!2366166 m!8304576))

(declare-fun m!8304578 () Bool)

(assert (=> d!2366166 m!8304578))

(declare-fun m!8304580 () Bool)

(assert (=> b!7924388 m!8304580))

(declare-fun m!8304582 () Bool)

(assert (=> b!7924388 m!8304582))

(assert (=> b!7924388 m!8304580))

(assert (=> b!7924388 m!8304582))

(declare-fun m!8304584 () Bool)

(assert (=> b!7924388 m!8304584))

(assert (=> b!7924233 d!2366166))

(declare-fun b!7924390 () Bool)

(declare-fun e!4676927 () Bool)

(declare-fun e!4676928 () Bool)

(assert (=> b!7924390 (= e!4676927 e!4676928)))

(declare-fun res!3144500 () Bool)

(assert (=> b!7924390 (=> (not res!3144500) (not e!4676928))))

(assert (=> b!7924390 (= res!3144500 (<= (- 1) (- (height!2208 (left!56860 (left!56860 t!4440))) (height!2208 (right!57190 (left!56860 t!4440))))))))

(declare-fun d!2366168 () Bool)

(declare-fun res!3144499 () Bool)

(assert (=> d!2366168 (=> res!3144499 e!4676927)))

(assert (=> d!2366168 (= res!3144499 (not (is-Node!15893 (left!56860 t!4440))))))

(assert (=> d!2366168 (= (isBalanced!4519 (left!56860 t!4440)) e!4676927)))

(declare-fun b!7924391 () Bool)

(declare-fun res!3144498 () Bool)

(assert (=> b!7924391 (=> (not res!3144498) (not e!4676928))))

(assert (=> b!7924391 (= res!3144498 (isBalanced!4519 (right!57190 (left!56860 t!4440))))))

(declare-fun b!7924392 () Bool)

(declare-fun res!3144503 () Bool)

(assert (=> b!7924392 (=> (not res!3144503) (not e!4676928))))

(assert (=> b!7924392 (= res!3144503 (not (isEmpty!42759 (left!56860 (left!56860 t!4440)))))))

(declare-fun b!7924393 () Bool)

(declare-fun res!3144501 () Bool)

(assert (=> b!7924393 (=> (not res!3144501) (not e!4676928))))

(assert (=> b!7924393 (= res!3144501 (isBalanced!4519 (left!56860 (left!56860 t!4440))))))

(declare-fun b!7924394 () Bool)

(declare-fun res!3144502 () Bool)

(assert (=> b!7924394 (=> (not res!3144502) (not e!4676928))))

(assert (=> b!7924394 (= res!3144502 (<= (- (height!2208 (left!56860 (left!56860 t!4440))) (height!2208 (right!57190 (left!56860 t!4440)))) 1))))

(declare-fun b!7924395 () Bool)

(assert (=> b!7924395 (= e!4676928 (not (isEmpty!42759 (right!57190 (left!56860 t!4440)))))))

(assert (= (and d!2366168 (not res!3144499)) b!7924390))

(assert (= (and b!7924390 res!3144500) b!7924394))

(assert (= (and b!7924394 res!3144502) b!7924393))

(assert (= (and b!7924393 res!3144501) b!7924391))

(assert (= (and b!7924391 res!3144498) b!7924392))

(assert (= (and b!7924392 res!3144503) b!7924395))

(declare-fun m!8304586 () Bool)

(assert (=> b!7924391 m!8304586))

(declare-fun m!8304588 () Bool)

(assert (=> b!7924395 m!8304588))

(declare-fun m!8304590 () Bool)

(assert (=> b!7924393 m!8304590))

(declare-fun m!8304592 () Bool)

(assert (=> b!7924394 m!8304592))

(declare-fun m!8304594 () Bool)

(assert (=> b!7924394 m!8304594))

(assert (=> b!7924390 m!8304592))

(assert (=> b!7924390 m!8304594))

(declare-fun m!8304596 () Bool)

(assert (=> b!7924392 m!8304596))

(assert (=> b!7924218 d!2366168))

(declare-fun d!2366170 () Bool)

(declare-fun c!1454919 () Bool)

(assert (=> d!2366170 (= c!1454919 (is-Node!15893 (left!56860 (right!57190 t!4440))))))

(declare-fun e!4676929 () Bool)

(assert (=> d!2366170 (= (inv!95673 (left!56860 (right!57190 t!4440))) e!4676929)))

(declare-fun b!7924396 () Bool)

(assert (=> b!7924396 (= e!4676929 (inv!95677 (left!56860 (right!57190 t!4440))))))

(declare-fun b!7924397 () Bool)

(declare-fun e!4676930 () Bool)

(assert (=> b!7924397 (= e!4676929 e!4676930)))

(declare-fun res!3144504 () Bool)

(assert (=> b!7924397 (= res!3144504 (not (is-Leaf!30221 (left!56860 (right!57190 t!4440)))))))

(assert (=> b!7924397 (=> res!3144504 e!4676930)))

(declare-fun b!7924398 () Bool)

(assert (=> b!7924398 (= e!4676930 (inv!95678 (left!56860 (right!57190 t!4440))))))

(assert (= (and d!2366170 c!1454919) b!7924396))

(assert (= (and d!2366170 (not c!1454919)) b!7924397))

(assert (= (and b!7924397 (not res!3144504)) b!7924398))

(declare-fun m!8304598 () Bool)

(assert (=> b!7924396 m!8304598))

(declare-fun m!8304600 () Bool)

(assert (=> b!7924398 m!8304600))

(assert (=> b!7924306 d!2366170))

(declare-fun d!2366172 () Bool)

(declare-fun c!1454920 () Bool)

(assert (=> d!2366172 (= c!1454920 (is-Node!15893 (right!57190 (right!57190 t!4440))))))

(declare-fun e!4676931 () Bool)

(assert (=> d!2366172 (= (inv!95673 (right!57190 (right!57190 t!4440))) e!4676931)))

(declare-fun b!7924399 () Bool)

(assert (=> b!7924399 (= e!4676931 (inv!95677 (right!57190 (right!57190 t!4440))))))

(declare-fun b!7924400 () Bool)

(declare-fun e!4676932 () Bool)

(assert (=> b!7924400 (= e!4676931 e!4676932)))

(declare-fun res!3144505 () Bool)

(assert (=> b!7924400 (= res!3144505 (not (is-Leaf!30221 (right!57190 (right!57190 t!4440)))))))

(assert (=> b!7924400 (=> res!3144505 e!4676932)))

(declare-fun b!7924401 () Bool)

(assert (=> b!7924401 (= e!4676932 (inv!95678 (right!57190 (right!57190 t!4440))))))

(assert (= (and d!2366172 c!1454920) b!7924399))

(assert (= (and d!2366172 (not c!1454920)) b!7924400))

(assert (= (and b!7924400 (not res!3144505)) b!7924401))

(declare-fun m!8304602 () Bool)

(assert (=> b!7924399 m!8304602))

(declare-fun m!8304604 () Bool)

(assert (=> b!7924401 m!8304604))

(assert (=> b!7924306 d!2366172))

(assert (=> b!7924215 d!2366154))

(assert (=> b!7924215 d!2366156))

(declare-fun b!7924402 () Bool)

(declare-fun e!4676933 () Bool)

(declare-fun e!4676934 () Bool)

(assert (=> b!7924402 (= e!4676933 e!4676934)))

(declare-fun res!3144508 () Bool)

(assert (=> b!7924402 (=> (not res!3144508) (not e!4676934))))

(assert (=> b!7924402 (= res!3144508 (<= (- 1) (- (height!2208 (left!56860 (right!57190 t!4440))) (height!2208 (right!57190 (right!57190 t!4440))))))))

(declare-fun d!2366174 () Bool)

(declare-fun res!3144507 () Bool)

(assert (=> d!2366174 (=> res!3144507 e!4676933)))

(assert (=> d!2366174 (= res!3144507 (not (is-Node!15893 (right!57190 t!4440))))))

(assert (=> d!2366174 (= (isBalanced!4519 (right!57190 t!4440)) e!4676933)))

(declare-fun b!7924403 () Bool)

(declare-fun res!3144506 () Bool)

(assert (=> b!7924403 (=> (not res!3144506) (not e!4676934))))

(assert (=> b!7924403 (= res!3144506 (isBalanced!4519 (right!57190 (right!57190 t!4440))))))

(declare-fun b!7924404 () Bool)

(declare-fun res!3144511 () Bool)

(assert (=> b!7924404 (=> (not res!3144511) (not e!4676934))))

(assert (=> b!7924404 (= res!3144511 (not (isEmpty!42759 (left!56860 (right!57190 t!4440)))))))

(declare-fun b!7924405 () Bool)

(declare-fun res!3144509 () Bool)

(assert (=> b!7924405 (=> (not res!3144509) (not e!4676934))))

(assert (=> b!7924405 (= res!3144509 (isBalanced!4519 (left!56860 (right!57190 t!4440))))))

(declare-fun b!7924406 () Bool)

(declare-fun res!3144510 () Bool)

(assert (=> b!7924406 (=> (not res!3144510) (not e!4676934))))

(assert (=> b!7924406 (= res!3144510 (<= (- (height!2208 (left!56860 (right!57190 t!4440))) (height!2208 (right!57190 (right!57190 t!4440)))) 1))))

(declare-fun b!7924407 () Bool)

(assert (=> b!7924407 (= e!4676934 (not (isEmpty!42759 (right!57190 (right!57190 t!4440)))))))

(assert (= (and d!2366174 (not res!3144507)) b!7924402))

(assert (= (and b!7924402 res!3144508) b!7924406))

(assert (= (and b!7924406 res!3144510) b!7924405))

(assert (= (and b!7924405 res!3144509) b!7924403))

(assert (= (and b!7924403 res!3144506) b!7924404))

(assert (= (and b!7924404 res!3144511) b!7924407))

(declare-fun m!8304606 () Bool)

(assert (=> b!7924403 m!8304606))

(declare-fun m!8304608 () Bool)

(assert (=> b!7924407 m!8304608))

(declare-fun m!8304610 () Bool)

(assert (=> b!7924405 m!8304610))

(assert (=> b!7924406 m!8304580))

(assert (=> b!7924406 m!8304582))

(assert (=> b!7924402 m!8304580))

(assert (=> b!7924402 m!8304582))

(declare-fun m!8304612 () Bool)

(assert (=> b!7924404 m!8304612))

(assert (=> b!7924216 d!2366174))

(declare-fun d!2366176 () Bool)

(declare-fun res!3144516 () Bool)

(declare-fun e!4676937 () Bool)

(assert (=> d!2366176 (=> (not res!3144516) (not e!4676937))))

(assert (=> d!2366176 (= res!3144516 (<= (size!43230 (list!19396 (xs!19281 t!4440))) 512))))

(assert (=> d!2366176 (= (inv!95678 t!4440) e!4676937)))

(declare-fun b!7924412 () Bool)

(declare-fun res!3144517 () Bool)

(assert (=> b!7924412 (=> (not res!3144517) (not e!4676937))))

(assert (=> b!7924412 (= res!3144517 (= (csize!32017 t!4440) (size!43230 (list!19396 (xs!19281 t!4440)))))))

(declare-fun b!7924413 () Bool)

(assert (=> b!7924413 (= e!4676937 (and (> (csize!32017 t!4440) 0) (<= (csize!32017 t!4440) 512)))))

(assert (= (and d!2366176 res!3144516) b!7924412))

(assert (= (and b!7924412 res!3144517) b!7924413))

(assert (=> d!2366176 m!8304406))

(assert (=> d!2366176 m!8304406))

(assert (=> d!2366176 m!8304472))

(assert (=> b!7924412 m!8304406))

(assert (=> b!7924412 m!8304406))

(assert (=> b!7924412 m!8304472))

(assert (=> b!7924229 d!2366176))

(declare-fun d!2366178 () Bool)

(declare-fun lt!2692603 () Int)

(assert (=> d!2366178 (>= lt!2692603 0)))

(declare-fun e!4676938 () Int)

(assert (=> d!2366178 (= lt!2692603 e!4676938)))

(declare-fun c!1454921 () Bool)

(assert (=> d!2366178 (= c!1454921 (is-Nil!74439 (t!390144 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484))))))

(assert (=> d!2366178 (= (size!43230 (t!390144 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484))) lt!2692603)))

(declare-fun b!7924414 () Bool)

(assert (=> b!7924414 (= e!4676938 0)))

(declare-fun b!7924415 () Bool)

(assert (=> b!7924415 (= e!4676938 (+ 1 (size!43230 (t!390144 (t!390144 ($colon+!310 (list!19396 (xs!19281 t!4440)) v!5484))))))))

(assert (= (and d!2366178 c!1454921) b!7924414))

(assert (= (and d!2366178 (not c!1454921)) b!7924415))

(declare-fun m!8304614 () Bool)

(assert (=> b!7924415 m!8304614))

(assert (=> b!7924241 d!2366178))

(assert (=> b!7924185 d!2366128))

(assert (=> b!7924185 d!2366130))

(declare-fun d!2366180 () Bool)

(declare-fun c!1454924 () Bool)

(assert (=> d!2366180 (= c!1454924 (is-Nil!74439 lt!2692592))))

(declare-fun e!4676941 () (Set T!145746))

(assert (=> d!2366180 (= (content!15776 lt!2692592) e!4676941)))

(declare-fun b!7924420 () Bool)

(assert (=> b!7924420 (= e!4676941 (as set.empty (Set T!145746)))))

(declare-fun b!7924421 () Bool)

(assert (=> b!7924421 (= e!4676941 (set.union (set.insert (h!80887 lt!2692592) (as set.empty (Set T!145746))) (content!15776 (t!390144 lt!2692592))))))

(assert (= (and d!2366180 c!1454924) b!7924420))

(assert (= (and d!2366180 (not c!1454924)) b!7924421))

(declare-fun m!8304616 () Bool)

(assert (=> b!7924421 m!8304616))

(declare-fun m!8304618 () Bool)

(assert (=> b!7924421 m!8304618))

(assert (=> b!7924281 d!2366180))

(declare-fun d!2366182 () Bool)

(declare-fun c!1454925 () Bool)

(assert (=> d!2366182 (= c!1454925 (is-Nil!74439 (list!19396 (xs!19281 t!4440))))))

(declare-fun e!4676942 () (Set T!145746))

(assert (=> d!2366182 (= (content!15776 (list!19396 (xs!19281 t!4440))) e!4676942)))

(declare-fun b!7924422 () Bool)

(assert (=> b!7924422 (= e!4676942 (as set.empty (Set T!145746)))))

(declare-fun b!7924423 () Bool)

(assert (=> b!7924423 (= e!4676942 (set.union (set.insert (h!80887 (list!19396 (xs!19281 t!4440))) (as set.empty (Set T!145746))) (content!15776 (t!390144 (list!19396 (xs!19281 t!4440))))))))

(assert (= (and d!2366182 c!1454925) b!7924422))

(assert (= (and d!2366182 (not c!1454925)) b!7924423))

(declare-fun m!8304620 () Bool)

(assert (=> b!7924423 m!8304620))

(assert (=> b!7924423 m!8304566))

(assert (=> b!7924281 d!2366182))

(declare-fun d!2366184 () Bool)

(assert (=> d!2366184 (= (inv!95674 (xs!19281 (left!56860 t!4440))) (<= (size!43230 (innerList!15981 (xs!19281 (left!56860 t!4440)))) 2147483647))))

(declare-fun bs!1968701 () Bool)

(assert (= bs!1968701 d!2366184))

(declare-fun m!8304622 () Bool)

(assert (=> bs!1968701 m!8304622))

(assert (=> b!7924302 d!2366184))

(declare-fun d!2366186 () Bool)

(declare-fun res!3144518 () Bool)

(declare-fun e!4676943 () Bool)

(assert (=> d!2366186 (=> (not res!3144518) (not e!4676943))))

(assert (=> d!2366186 (= res!3144518 (<= (size!43230 (list!19396 (xs!19281 (right!57190 t!4440)))) 512))))

(assert (=> d!2366186 (= (inv!95678 (right!57190 t!4440)) e!4676943)))

(declare-fun b!7924424 () Bool)

(declare-fun res!3144519 () Bool)

(assert (=> b!7924424 (=> (not res!3144519) (not e!4676943))))

(assert (=> b!7924424 (= res!3144519 (= (csize!32017 (right!57190 t!4440)) (size!43230 (list!19396 (xs!19281 (right!57190 t!4440))))))))

(declare-fun b!7924425 () Bool)

(assert (=> b!7924425 (= e!4676943 (and (> (csize!32017 (right!57190 t!4440)) 0) (<= (csize!32017 (right!57190 t!4440)) 512)))))

(assert (= (and d!2366186 res!3144518) b!7924424))

(assert (= (and b!7924424 res!3144519) b!7924425))

(declare-fun m!8304624 () Bool)

(assert (=> d!2366186 m!8304624))

(assert (=> d!2366186 m!8304624))

(declare-fun m!8304626 () Bool)

(assert (=> d!2366186 m!8304626))

(assert (=> b!7924424 m!8304624))

(assert (=> b!7924424 m!8304624))

(assert (=> b!7924424 m!8304626))

(assert (=> b!7924235 d!2366186))

(declare-fun d!2366188 () Bool)

(declare-fun lt!2692604 () Bool)

(assert (=> d!2366188 (= lt!2692604 (isEmpty!42761 (list!19398 (right!57190 t!4440))))))

(assert (=> d!2366188 (= lt!2692604 (= (size!43232 (right!57190 t!4440)) 0))))

(assert (=> d!2366188 (= (isEmpty!42759 (right!57190 t!4440)) lt!2692604)))

(declare-fun bs!1968702 () Bool)

(assert (= bs!1968702 d!2366188))

(declare-fun m!8304628 () Bool)

(assert (=> bs!1968702 m!8304628))

(assert (=> bs!1968702 m!8304628))

(declare-fun m!8304630 () Bool)

(assert (=> bs!1968702 m!8304630))

(declare-fun m!8304632 () Bool)

(assert (=> bs!1968702 m!8304632))

(assert (=> b!7924220 d!2366188))

(declare-fun d!2366190 () Bool)

(declare-fun lt!2692605 () Int)

(assert (=> d!2366190 (>= lt!2692605 0)))

(declare-fun e!4676944 () Int)

(assert (=> d!2366190 (= lt!2692605 e!4676944)))

(declare-fun c!1454926 () Bool)

(assert (=> d!2366190 (= c!1454926 (is-Nil!74439 lt!2692592))))

(assert (=> d!2366190 (= (size!43230 lt!2692592) lt!2692605)))

(declare-fun b!7924426 () Bool)

(assert (=> b!7924426 (= e!4676944 0)))

(declare-fun b!7924427 () Bool)

(assert (=> b!7924427 (= e!4676944 (+ 1 (size!43230 (t!390144 lt!2692592))))))

(assert (= (and d!2366190 c!1454926) b!7924426))

(assert (= (and d!2366190 (not c!1454926)) b!7924427))

(declare-fun m!8304634 () Bool)

(assert (=> b!7924427 m!8304634))

(assert (=> b!7924279 d!2366190))

(declare-fun d!2366192 () Bool)

(declare-fun lt!2692606 () Int)

(assert (=> d!2366192 (>= lt!2692606 0)))

(declare-fun e!4676945 () Int)

(assert (=> d!2366192 (= lt!2692606 e!4676945)))

(declare-fun c!1454927 () Bool)

(assert (=> d!2366192 (= c!1454927 (is-Nil!74439 (list!19396 (xs!19281 t!4440))))))

(assert (=> d!2366192 (= (size!43230 (list!19396 (xs!19281 t!4440))) lt!2692606)))

(declare-fun b!7924428 () Bool)

(assert (=> b!7924428 (= e!4676945 0)))

(declare-fun b!7924429 () Bool)

(assert (=> b!7924429 (= e!4676945 (+ 1 (size!43230 (t!390144 (list!19396 (xs!19281 t!4440))))))))

(assert (= (and d!2366192 c!1454927) b!7924428))

(assert (= (and d!2366192 (not c!1454927)) b!7924429))

(assert (=> b!7924429 m!8304556))

(assert (=> b!7924279 d!2366192))

(declare-fun d!2366194 () Bool)

(declare-fun lt!2692611 () (_ BitVec 32))

(assert (=> d!2366194 (and (bvsle #b00000000000000000000000000000000 lt!2692611) (bvsle lt!2692611 #b01111111111111111111111111111111))))

(declare-fun e!4676948 () (_ BitVec 32))

(assert (=> d!2366194 (= lt!2692611 e!4676948)))

(declare-fun c!1454930 () Bool)

(assert (=> d!2366194 (= c!1454930 (is-Nil!74439 (list!19396 (xs!19281 t!4440))))))

(assert (=> d!2366194 (= (isize!114 (list!19396 (xs!19281 t!4440))) lt!2692611)))

(declare-fun b!7924434 () Bool)

(assert (=> b!7924434 (= e!4676948 #b00000000000000000000000000000000)))

(declare-fun b!7924435 () Bool)

(declare-fun lt!2692612 () (_ BitVec 32))

(assert (=> b!7924435 (= e!4676948 (ite (= lt!2692612 #b01111111111111111111111111111111) lt!2692612 (bvadd #b00000000000000000000000000000001 lt!2692612)))))

(assert (=> b!7924435 (= lt!2692612 (isize!114 (t!390144 (list!19396 (xs!19281 t!4440)))))))

(assert (= (and d!2366194 c!1454930) b!7924434))

(assert (= (and d!2366194 (not c!1454930)) b!7924435))

(assert (=> b!7924435 m!8304558))

(assert (=> b!7924278 d!2366194))

(declare-fun d!2366196 () Bool)

(declare-fun res!3144520 () Bool)

(declare-fun e!4676949 () Bool)

(assert (=> d!2366196 (=> (not res!3144520) (not e!4676949))))

(assert (=> d!2366196 (= res!3144520 (<= (size!43230 (list!19396 (xs!19281 (left!56860 t!4440)))) 512))))

(assert (=> d!2366196 (= (inv!95678 (left!56860 t!4440)) e!4676949)))

(declare-fun b!7924436 () Bool)

(declare-fun res!3144521 () Bool)

(assert (=> b!7924436 (=> (not res!3144521) (not e!4676949))))

(assert (=> b!7924436 (= res!3144521 (= (csize!32017 (left!56860 t!4440)) (size!43230 (list!19396 (xs!19281 (left!56860 t!4440))))))))

(declare-fun b!7924437 () Bool)

(assert (=> b!7924437 (= e!4676949 (and (> (csize!32017 (left!56860 t!4440)) 0) (<= (csize!32017 (left!56860 t!4440)) 512)))))

(assert (= (and d!2366196 res!3144520) b!7924436))

(assert (= (and b!7924436 res!3144521) b!7924437))

(declare-fun m!8304636 () Bool)

(assert (=> d!2366196 m!8304636))

(assert (=> d!2366196 m!8304636))

(declare-fun m!8304638 () Bool)

(assert (=> d!2366196 m!8304638))

(assert (=> b!7924436 m!8304636))

(assert (=> b!7924436 m!8304636))

(assert (=> b!7924436 m!8304638))

(assert (=> b!7924232 d!2366196))

(declare-fun d!2366198 () Bool)

(declare-fun e!4676955 () Bool)

(assert (=> d!2366198 e!4676955))

(declare-fun res!3144526 () Bool)

(assert (=> d!2366198 (=> (not res!3144526) (not e!4676955))))

(declare-fun lt!2692615 () List!74563)

(assert (=> d!2366198 (= res!3144526 (= (content!15776 lt!2692615) (set.union (content!15776 (list!19396 (xs!19281 t!4440))) (content!15776 (Cons!74439 v!5484 Nil!74439)))))))

(declare-fun e!4676954 () List!74563)

(assert (=> d!2366198 (= lt!2692615 e!4676954)))

(declare-fun c!1454933 () Bool)

(assert (=> d!2366198 (= c!1454933 (is-Nil!74439 (list!19396 (xs!19281 t!4440))))))

(assert (=> d!2366198 (= (++!18252 (list!19396 (xs!19281 t!4440)) (Cons!74439 v!5484 Nil!74439)) lt!2692615)))

(declare-fun b!7924447 () Bool)

(assert (=> b!7924447 (= e!4676954 (Cons!74439 (h!80887 (list!19396 (xs!19281 t!4440))) (++!18252 (t!390144 (list!19396 (xs!19281 t!4440))) (Cons!74439 v!5484 Nil!74439))))))

(declare-fun b!7924446 () Bool)

(assert (=> b!7924446 (= e!4676954 (Cons!74439 v!5484 Nil!74439))))

(declare-fun b!7924449 () Bool)

(assert (=> b!7924449 (= e!4676955 (or (not (= (Cons!74439 v!5484 Nil!74439) Nil!74439)) (= lt!2692615 (list!19396 (xs!19281 t!4440)))))))

(declare-fun b!7924448 () Bool)

(declare-fun res!3144527 () Bool)

(assert (=> b!7924448 (=> (not res!3144527) (not e!4676955))))

(assert (=> b!7924448 (= res!3144527 (= (size!43230 lt!2692615) (+ (size!43230 (list!19396 (xs!19281 t!4440))) (size!43230 (Cons!74439 v!5484 Nil!74439)))))))

(assert (= (and d!2366198 c!1454933) b!7924446))

(assert (= (and d!2366198 (not c!1454933)) b!7924447))

(assert (= (and d!2366198 res!3144526) b!7924448))

(assert (= (and b!7924448 res!3144527) b!7924449))

(declare-fun m!8304640 () Bool)

(assert (=> d!2366198 m!8304640))

(assert (=> d!2366198 m!8304406))

(assert (=> d!2366198 m!8304482))

(declare-fun m!8304642 () Bool)

(assert (=> d!2366198 m!8304642))

(assert (=> b!7924447 m!8304562))

(declare-fun m!8304644 () Bool)

(assert (=> b!7924448 m!8304644))

(assert (=> b!7924448 m!8304406))

(assert (=> b!7924448 m!8304472))

(declare-fun m!8304646 () Bool)

(assert (=> b!7924448 m!8304646))

(assert (=> b!7924283 d!2366198))

(declare-fun d!2366200 () Bool)

(declare-fun lt!2692616 () Int)

(assert (=> d!2366200 (>= lt!2692616 0)))

(declare-fun e!4676956 () Int)

(assert (=> d!2366200 (= lt!2692616 e!4676956)))

(declare-fun c!1454934 () Bool)

(assert (=> d!2366200 (= c!1454934 (is-Nil!74439 (innerList!15981 (xs!19281 t!4440))))))

(assert (=> d!2366200 (= (size!43230 (innerList!15981 (xs!19281 t!4440))) lt!2692616)))

(declare-fun b!7924450 () Bool)

(assert (=> b!7924450 (= e!4676956 0)))

(declare-fun b!7924451 () Bool)

(assert (=> b!7924451 (= e!4676956 (+ 1 (size!43230 (t!390144 (innerList!15981 (xs!19281 t!4440))))))))

(assert (= (and d!2366200 c!1454934) b!7924450))

(assert (= (and d!2366200 (not c!1454934)) b!7924451))

(declare-fun m!8304648 () Bool)

(assert (=> b!7924451 m!8304648))

(assert (=> d!2366120 d!2366200))

(assert (=> bm!735076 d!2366194))

(declare-fun d!2366202 () Bool)

(declare-fun lt!2692617 () (_ BitVec 32))

(assert (=> d!2366202 (and (bvsle #b00000000000000000000000000000000 lt!2692617) (bvsle lt!2692617 #b01111111111111111111111111111111))))

(declare-fun e!4676957 () (_ BitVec 32))

(assert (=> d!2366202 (= lt!2692617 e!4676957)))

(declare-fun c!1454935 () Bool)

(assert (=> d!2366202 (= c!1454935 (is-Nil!74439 lt!2692592))))

(assert (=> d!2366202 (= (isize!114 lt!2692592) lt!2692617)))

(declare-fun b!7924452 () Bool)

(assert (=> b!7924452 (= e!4676957 #b00000000000000000000000000000000)))

(declare-fun b!7924453 () Bool)

(declare-fun lt!2692618 () (_ BitVec 32))

(assert (=> b!7924453 (= e!4676957 (ite (= lt!2692618 #b01111111111111111111111111111111) lt!2692618 (bvadd #b00000000000000000000000000000001 lt!2692618)))))

(assert (=> b!7924453 (= lt!2692618 (isize!114 (t!390144 lt!2692592)))))

(assert (= (and d!2366202 c!1454935) b!7924452))

(assert (= (and d!2366202 (not c!1454935)) b!7924453))

(declare-fun m!8304650 () Bool)

(assert (=> b!7924453 m!8304650))

(assert (=> bm!735077 d!2366202))

(declare-fun d!2366204 () Bool)

(declare-fun res!3144528 () Bool)

(declare-fun e!4676958 () Bool)

(assert (=> d!2366204 (=> (not res!3144528) (not e!4676958))))

(assert (=> d!2366204 (= res!3144528 (= (csize!32016 (left!56860 t!4440)) (+ (size!43232 (left!56860 (left!56860 t!4440))) (size!43232 (right!57190 (left!56860 t!4440))))))))

(assert (=> d!2366204 (= (inv!95677 (left!56860 t!4440)) e!4676958)))

(declare-fun b!7924454 () Bool)

(declare-fun res!3144529 () Bool)

(assert (=> b!7924454 (=> (not res!3144529) (not e!4676958))))

(assert (=> b!7924454 (= res!3144529 (and (not (= (left!56860 (left!56860 t!4440)) Empty!15893)) (not (= (right!57190 (left!56860 t!4440)) Empty!15893))))))

(declare-fun b!7924455 () Bool)

(declare-fun res!3144530 () Bool)

(assert (=> b!7924455 (=> (not res!3144530) (not e!4676958))))

(assert (=> b!7924455 (= res!3144530 (= (cheight!16104 (left!56860 t!4440)) (+ (max!0 (height!2208 (left!56860 (left!56860 t!4440))) (height!2208 (right!57190 (left!56860 t!4440)))) 1)))))

(declare-fun b!7924456 () Bool)

(assert (=> b!7924456 (= e!4676958 (<= 0 (cheight!16104 (left!56860 t!4440))))))

(assert (= (and d!2366204 res!3144528) b!7924454))

(assert (= (and b!7924454 res!3144529) b!7924455))

(assert (= (and b!7924455 res!3144530) b!7924456))

(declare-fun m!8304652 () Bool)

(assert (=> d!2366204 m!8304652))

(declare-fun m!8304654 () Bool)

(assert (=> d!2366204 m!8304654))

(assert (=> b!7924455 m!8304592))

(assert (=> b!7924455 m!8304594))

(assert (=> b!7924455 m!8304592))

(assert (=> b!7924455 m!8304594))

(declare-fun m!8304656 () Bool)

(assert (=> b!7924455 m!8304656))

(assert (=> b!7924230 d!2366204))

(declare-fun d!2366206 () Bool)

(declare-fun res!3144531 () Bool)

(declare-fun e!4676959 () Bool)

(assert (=> d!2366206 (=> (not res!3144531) (not e!4676959))))

(assert (=> d!2366206 (= res!3144531 (= (csize!32016 t!4440) (+ (size!43232 (left!56860 t!4440)) (size!43232 (right!57190 t!4440)))))))

(assert (=> d!2366206 (= (inv!95677 t!4440) e!4676959)))

(declare-fun b!7924457 () Bool)

(declare-fun res!3144532 () Bool)

(assert (=> b!7924457 (=> (not res!3144532) (not e!4676959))))

(assert (=> b!7924457 (= res!3144532 (and (not (= (left!56860 t!4440) Empty!15893)) (not (= (right!57190 t!4440) Empty!15893))))))

(declare-fun b!7924458 () Bool)

(declare-fun res!3144533 () Bool)

(assert (=> b!7924458 (=> (not res!3144533) (not e!4676959))))

(assert (=> b!7924458 (= res!3144533 (= (cheight!16104 t!4440) (+ (max!0 (height!2208 (left!56860 t!4440)) (height!2208 (right!57190 t!4440))) 1)))))

(declare-fun b!7924459 () Bool)

(assert (=> b!7924459 (= e!4676959 (<= 0 (cheight!16104 t!4440)))))

(assert (= (and d!2366206 res!3144531) b!7924457))

(assert (= (and b!7924457 res!3144532) b!7924458))

(assert (= (and b!7924458 res!3144533) b!7924459))

(assert (=> d!2366206 m!8304548))

(assert (=> d!2366206 m!8304632))

(assert (=> b!7924458 m!8304436))

(assert (=> b!7924458 m!8304438))

(assert (=> b!7924458 m!8304436))

(assert (=> b!7924458 m!8304438))

(declare-fun m!8304658 () Bool)

(assert (=> b!7924458 m!8304658))

(assert (=> b!7924227 d!2366206))

(declare-fun b!7924460 () Bool)

(declare-fun e!4676960 () Bool)

(declare-fun tp!2358279 () Bool)

(assert (=> b!7924460 (= e!4676960 (and tp_is_empty!53211 tp!2358279))))

(assert (=> b!7924288 (= tp!2358251 e!4676960)))

(assert (= (and b!7924288 (is-Cons!74439 (t!390144 (innerList!15981 (xs!19281 t!4440))))) b!7924460))

(declare-fun tp!2358280 () Bool)

(declare-fun b!7924461 () Bool)

(declare-fun e!4676961 () Bool)

(declare-fun tp!2358281 () Bool)

(assert (=> b!7924461 (= e!4676961 (and (inv!95673 (left!56860 (left!56860 (left!56860 t!4440)))) tp!2358280 (inv!95673 (right!57190 (left!56860 (left!56860 t!4440)))) tp!2358281))))

(declare-fun b!7924463 () Bool)

(declare-fun e!4676962 () Bool)

(declare-fun tp!2358282 () Bool)

(assert (=> b!7924463 (= e!4676962 tp!2358282)))

(declare-fun b!7924462 () Bool)

(assert (=> b!7924462 (= e!4676961 (and (inv!95674 (xs!19281 (left!56860 (left!56860 t!4440)))) e!4676962))))

(assert (=> b!7924301 (= tp!2358258 (and (inv!95673 (left!56860 (left!56860 t!4440))) e!4676961))))

(assert (= (and b!7924301 (is-Node!15893 (left!56860 (left!56860 t!4440)))) b!7924461))

(assert (= b!7924462 b!7924463))

(assert (= (and b!7924301 (is-Leaf!30221 (left!56860 (left!56860 t!4440)))) b!7924462))

(declare-fun m!8304660 () Bool)

(assert (=> b!7924461 m!8304660))

(declare-fun m!8304662 () Bool)

(assert (=> b!7924461 m!8304662))

(declare-fun m!8304664 () Bool)

(assert (=> b!7924462 m!8304664))

(assert (=> b!7924301 m!8304486))

(declare-fun tp!2358283 () Bool)

(declare-fun tp!2358284 () Bool)

(declare-fun b!7924464 () Bool)

(declare-fun e!4676963 () Bool)

(assert (=> b!7924464 (= e!4676963 (and (inv!95673 (left!56860 (right!57190 (left!56860 t!4440)))) tp!2358283 (inv!95673 (right!57190 (right!57190 (left!56860 t!4440)))) tp!2358284))))

(declare-fun b!7924466 () Bool)

(declare-fun e!4676964 () Bool)

(declare-fun tp!2358285 () Bool)

(assert (=> b!7924466 (= e!4676964 tp!2358285)))

(declare-fun b!7924465 () Bool)

(assert (=> b!7924465 (= e!4676963 (and (inv!95674 (xs!19281 (right!57190 (left!56860 t!4440)))) e!4676964))))

(assert (=> b!7924301 (= tp!2358259 (and (inv!95673 (right!57190 (left!56860 t!4440))) e!4676963))))

(assert (= (and b!7924301 (is-Node!15893 (right!57190 (left!56860 t!4440)))) b!7924464))

(assert (= b!7924465 b!7924466))

(assert (= (and b!7924301 (is-Leaf!30221 (right!57190 (left!56860 t!4440)))) b!7924465))

(declare-fun m!8304666 () Bool)

(assert (=> b!7924464 m!8304666))

(declare-fun m!8304668 () Bool)

(assert (=> b!7924464 m!8304668))

(declare-fun m!8304670 () Bool)

(assert (=> b!7924465 m!8304670))

(assert (=> b!7924301 m!8304488))

(declare-fun e!4676965 () Bool)

(declare-fun b!7924467 () Bool)

(declare-fun tp!2358286 () Bool)

(declare-fun tp!2358287 () Bool)

(assert (=> b!7924467 (= e!4676965 (and (inv!95673 (left!56860 (left!56860 (right!57190 t!4440)))) tp!2358286 (inv!95673 (right!57190 (left!56860 (right!57190 t!4440)))) tp!2358287))))

(declare-fun b!7924469 () Bool)

(declare-fun e!4676966 () Bool)

(declare-fun tp!2358288 () Bool)

(assert (=> b!7924469 (= e!4676966 tp!2358288)))

(declare-fun b!7924468 () Bool)

(assert (=> b!7924468 (= e!4676965 (and (inv!95674 (xs!19281 (left!56860 (right!57190 t!4440)))) e!4676966))))

(assert (=> b!7924306 (= tp!2358261 (and (inv!95673 (left!56860 (right!57190 t!4440))) e!4676965))))

(assert (= (and b!7924306 (is-Node!15893 (left!56860 (right!57190 t!4440)))) b!7924467))

(assert (= b!7924468 b!7924469))

(assert (= (and b!7924306 (is-Leaf!30221 (left!56860 (right!57190 t!4440)))) b!7924468))

(declare-fun m!8304672 () Bool)

(assert (=> b!7924467 m!8304672))

(declare-fun m!8304674 () Bool)

(assert (=> b!7924467 m!8304674))

(declare-fun m!8304676 () Bool)

(assert (=> b!7924468 m!8304676))

(assert (=> b!7924306 m!8304492))

(declare-fun e!4676967 () Bool)

(declare-fun tp!2358290 () Bool)

(declare-fun tp!2358289 () Bool)

(declare-fun b!7924470 () Bool)

(assert (=> b!7924470 (= e!4676967 (and (inv!95673 (left!56860 (right!57190 (right!57190 t!4440)))) tp!2358289 (inv!95673 (right!57190 (right!57190 (right!57190 t!4440)))) tp!2358290))))

(declare-fun b!7924472 () Bool)

(declare-fun e!4676968 () Bool)

(declare-fun tp!2358291 () Bool)

(assert (=> b!7924472 (= e!4676968 tp!2358291)))

(declare-fun b!7924471 () Bool)

(assert (=> b!7924471 (= e!4676967 (and (inv!95674 (xs!19281 (right!57190 (right!57190 t!4440)))) e!4676968))))

(assert (=> b!7924306 (= tp!2358262 (and (inv!95673 (right!57190 (right!57190 t!4440))) e!4676967))))

(assert (= (and b!7924306 (is-Node!15893 (right!57190 (right!57190 t!4440)))) b!7924470))

(assert (= b!7924471 b!7924472))

(assert (= (and b!7924306 (is-Leaf!30221 (right!57190 (right!57190 t!4440)))) b!7924471))

(declare-fun m!8304678 () Bool)

(assert (=> b!7924470 m!8304678))

(declare-fun m!8304680 () Bool)

(assert (=> b!7924470 m!8304680))

(declare-fun m!8304682 () Bool)

(assert (=> b!7924471 m!8304682))

(assert (=> b!7924306 m!8304494))

(declare-fun b!7924473 () Bool)

(declare-fun e!4676969 () Bool)

(declare-fun tp!2358292 () Bool)

(assert (=> b!7924473 (= e!4676969 (and tp_is_empty!53211 tp!2358292))))

(assert (=> b!7924308 (= tp!2358263 e!4676969)))

(assert (= (and b!7924308 (is-Cons!74439 (innerList!15981 (xs!19281 (right!57190 t!4440))))) b!7924473))

(declare-fun b!7924474 () Bool)

(declare-fun e!4676970 () Bool)

(declare-fun tp!2358293 () Bool)

(assert (=> b!7924474 (= e!4676970 (and tp_is_empty!53211 tp!2358293))))

(assert (=> b!7924303 (= tp!2358260 e!4676970)))

(assert (= (and b!7924303 (is-Cons!74439 (innerList!15981 (xs!19281 (left!56860 t!4440))))) b!7924474))

(push 1)

(assert (not b!7924395))

(assert (not b!7924402))

(assert (not b!7924460))

(assert (not b!7924369))

(assert (not b!7924469))

(assert (not b!7924406))

(assert (not b!7924388))

(assert (not b!7924394))

(assert (not b!7924471))

(assert (not b!7924380))

(assert (not bm!735085))

(assert (not b!7924424))

(assert (not b!7924391))

(assert (not b!7924370))

(assert (not bm!735084))

(assert (not b!7924412))

(assert (not d!2366198))

(assert (not b!7924465))

(assert (not b!7924392))

(assert (not d!2366152))

(assert (not b!7924468))

(assert (not d!2366186))

(assert (not d!2366184))

(assert (not b!7924470))

(assert (not b!7924375))

(assert (not b!7924436))

(assert (not b!7924458))

(assert (not b!7924301))

(assert (not b!7924367))

(assert (not b!7924405))

(assert (not b!7924377))

(assert (not b!7924403))

(assert (not d!2366188))

(assert (not b!7924466))

(assert (not b!7924399))

(assert (not b!7924472))

(assert (not b!7924415))

(assert (not d!2366204))

(assert (not d!2366206))

(assert (not b!7924463))

(assert (not b!7924462))

(assert (not b!7924448))

(assert (not b!7924396))

(assert (not b!7924455))

(assert (not b!7924467))

(assert (not d!2366176))

(assert (not b!7924306))

(assert (not b!7924461))

(assert (not b!7924393))

(assert (not b!7924427))

(assert (not b!7924421))

(assert (not b!7924464))

(assert (not b!7924374))

(assert (not b!7924401))

(assert (not b!7924429))

(assert (not b!7924473))

(assert (not b!7924474))

(assert (not b!7924372))

(assert (not d!2366166))

(assert (not d!2366158))

(assert (not b!7924407))

(assert (not b!7924435))

(assert (not b!7924423))

(assert (not b!7924453))

(assert (not b!7924447))

(assert (not b!7924390))

(assert (not b!7924451))

(assert (not b!7924398))

(assert (not d!2366196))

(assert (not b!7924378))

(assert (not b!7924404))

(assert tp_is_empty!53211)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

