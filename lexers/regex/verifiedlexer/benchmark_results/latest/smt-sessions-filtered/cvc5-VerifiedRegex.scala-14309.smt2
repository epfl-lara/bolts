; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747468 () Bool)

(assert start!747468)

(declare-datatypes ((T!145494 0))(
  ( (T!145495 (val!32015 Int)) )
))
(declare-datatypes ((List!74527 0))(
  ( (Nil!74403) (Cons!74403 (h!80851 T!145494) (t!390006 List!74527)) )
))
(declare-fun l!2277 () List!74527)

(declare-datatypes ((IArray!31775 0))(
  ( (IArray!31776 (innerList!15945 List!74527)) )
))
(declare-datatypes ((Conc!15857 0))(
  ( (Node!15857 (left!56806 Conc!15857) (right!57136 Conc!15857) (csize!31944 Int) (cheight!16068 Int)) (Leaf!30167 (xs!19239 IArray!31775) (csize!31945 Int)) (Empty!15857) )
))
(declare-datatypes ((BalanceConc!30832 0))(
  ( (BalanceConc!30833 (c!1452185 Conc!15857)) )
))
(declare-fun inv!95507 (BalanceConc!30832) Bool)

(declare-fun fromList!968 (List!74527) Conc!15857)

(assert (=> start!747468 (not (inv!95507 (BalanceConc!30833 (fromList!968 l!2277))))))

(declare-fun e!4671813 () Bool)

(assert (=> start!747468 e!4671813))

(declare-fun b!7914389 () Bool)

(declare-fun tp_is_empty!53139 () Bool)

(declare-fun tp!2357143 () Bool)

(assert (=> b!7914389 (= e!4671813 (and tp_is_empty!53139 tp!2357143))))

(assert (= (and start!747468 (is-Cons!74403 l!2277)) b!7914389))

(declare-fun m!8288132 () Bool)

(assert (=> start!747468 m!8288132))

(declare-fun m!8288134 () Bool)

(assert (=> start!747468 m!8288134))

(push 1)

(assert (not start!747468))

(assert (not b!7914389))

(assert tp_is_empty!53139)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2361284 () Bool)

(declare-fun isBalanced!4483 (Conc!15857) Bool)

(assert (=> d!2361284 (= (inv!95507 (BalanceConc!30833 (fromList!968 l!2277))) (isBalanced!4483 (c!1452185 (BalanceConc!30833 (fromList!968 l!2277)))))))

(declare-fun bs!1968419 () Bool)

(assert (= bs!1968419 d!2361284))

(declare-fun m!8288140 () Bool)

(assert (=> bs!1968419 m!8288140))

(assert (=> start!747468 d!2361284))

(declare-fun d!2361288 () Bool)

(declare-fun e!4671819 () Bool)

(assert (=> d!2361288 e!4671819))

(declare-fun res!3141191 () Bool)

(assert (=> d!2361288 (=> (not res!3141191) (not e!4671819))))

(declare-fun lt!2689372 () Conc!15857)

(declare-fun list!19340 (Conc!15857) List!74527)

(assert (=> d!2361288 (= res!3141191 (= (list!19340 lt!2689372) l!2277))))

(declare-fun choose!59784 (List!74527) Conc!15857)

(assert (=> d!2361288 (= lt!2689372 (choose!59784 l!2277))))

(assert (=> d!2361288 (= (fromList!968 l!2277) lt!2689372)))

(declare-fun b!7914395 () Bool)

(assert (=> b!7914395 (= e!4671819 (isBalanced!4483 lt!2689372))))

(assert (= (and d!2361288 res!3141191) b!7914395))

(declare-fun m!8288144 () Bool)

(assert (=> d!2361288 m!8288144))

(declare-fun m!8288146 () Bool)

(assert (=> d!2361288 m!8288146))

(declare-fun m!8288148 () Bool)

(assert (=> b!7914395 m!8288148))

(assert (=> start!747468 d!2361288))

(declare-fun b!7914400 () Bool)

(declare-fun e!4671822 () Bool)

(declare-fun tp!2357149 () Bool)

(assert (=> b!7914400 (= e!4671822 (and tp_is_empty!53139 tp!2357149))))

(assert (=> b!7914389 (= tp!2357143 e!4671822)))

(assert (= (and b!7914389 (is-Cons!74403 (t!390006 l!2277))) b!7914400))

(push 1)

(assert (not d!2361288))

(assert (not b!7914400))

(assert tp_is_empty!53139)

(assert (not d!2361284))

(assert (not b!7914395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

