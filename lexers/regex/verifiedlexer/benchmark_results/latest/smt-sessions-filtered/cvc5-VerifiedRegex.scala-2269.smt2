; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110908 () Bool)

(assert start!110908)

(declare-datatypes ((T!23594 0))(
  ( (T!23595 (val!4191 Int)) )
))
(declare-datatypes ((List!12634 0))(
  ( (Nil!12570) (Cons!12570 (h!17971 T!23594) (t!115766 List!12634)) )
))
(declare-fun lt!420886 () List!12634)

(declare-datatypes ((BalanceConc!8183 0) (List!12636 0) (Conc!4122 0) (IArray!8249 0) (Object!2303 0))(
  ( (BalanceConc!8184 (c!208763 Conc!4122)) )
  ( (Nil!12571) (Cons!12571 (h!17972 Object!2303) (t!115767 List!12636)) )
  ( (Node!4122 (left!10867 Conc!4122) (right!11197 Conc!4122) (csize!8474 Int) (cheight!4333 Int)) (Leaf!6392 (xs!6833 IArray!8249) (csize!8475 Int)) (Empty!4122) )
  ( (IArray!8250 (innerList!4182 List!12636)) )
  ( (BalanceConc!8182 (value!70585 BalanceConc!8183)) (List!12635 (value!70586 List!12636)) (Character!63 (value!70587 (_ BitVec 16))) (Open!63 (value!70588 Int)) )
))
(declare-datatypes ((Vector!130 0))(
  ( (Vector!131 (underlying!2831 Object!2303) (overflowing!122 List!12634)) )
))
(declare-fun lt!420885 () Vector!130)

(declare-fun t!6008 () T!23594)

(declare-fun $colon+!86 (List!12634 T!23594) List!12634)

(declare-fun list!4681 (Vector!130) List!12634)

(assert (=> start!110908 (= lt!420886 ($colon+!86 (list!4681 lt!420885) t!6008))))

(declare-fun $colon+!87 (Vector!130 T!23594) Vector!130)

(assert (=> start!110908 (= lt!420886 (list!4681 ($colon+!87 lt!420885 t!6008)))))

(declare-fun empty!2692 () Vector!130)

(assert (=> start!110908 (= lt!420885 empty!2692)))

(assert (=> start!110908 (not (= lt!420886 (Cons!12570 t!6008 Nil!12570)))))

(declare-fun tp_is_empty!6521 () Bool)

(assert (=> start!110908 tp_is_empty!6521))

(declare-fun bs!290393 () Bool)

(assert (= bs!290393 start!110908))

(declare-fun m!1415503 () Bool)

(assert (=> bs!290393 m!1415503))

(declare-fun m!1415505 () Bool)

(assert (=> bs!290393 m!1415505))

(assert (=> bs!290393 m!1415505))

(declare-fun m!1415507 () Bool)

(assert (=> bs!290393 m!1415507))

(declare-fun m!1415509 () Bool)

(assert (=> bs!290393 m!1415509))

(assert (=> bs!290393 m!1415503))

(declare-fun m!1415511 () Bool)

(assert (=> bs!290393 m!1415511))

(push 1)

(assert (not start!110908))

(assert tp_is_empty!6521)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355308 () Bool)

(declare-fun choose!7881 (Vector!130) List!12634)

(assert (=> d!355308 (= (list!4681 lt!420885) (choose!7881 lt!420885))))

(declare-fun bs!290395 () Bool)

(assert (= bs!290395 d!355308))

(declare-fun m!1415523 () Bool)

(assert (=> bs!290395 m!1415523))

(assert (=> start!110908 d!355308))

(declare-fun d!355310 () Bool)

(assert (=> d!355310 (= (list!4681 ($colon+!87 lt!420885 t!6008)) (choose!7881 ($colon+!87 lt!420885 t!6008)))))

(declare-fun bs!290396 () Bool)

(assert (= bs!290396 d!355310))

(assert (=> bs!290396 m!1415505))

(declare-fun m!1415525 () Bool)

(assert (=> bs!290396 m!1415525))

(assert (=> start!110908 d!355310))

(declare-fun d!355312 () Bool)

(declare-fun lt!420895 () Vector!130)

(assert (=> d!355312 (= (list!4681 lt!420895) ($colon+!86 (list!4681 lt!420885) t!6008))))

(declare-fun choose!7882 (Vector!130 T!23594) Vector!130)

(assert (=> d!355312 (= lt!420895 (choose!7882 lt!420885 t!6008))))

(assert (=> d!355312 (= ($colon+!87 lt!420885 t!6008) lt!420895)))

(declare-fun bs!290397 () Bool)

(assert (= bs!290397 d!355312))

(declare-fun m!1415527 () Bool)

(assert (=> bs!290397 m!1415527))

(assert (=> bs!290397 m!1415503))

(assert (=> bs!290397 m!1415503))

(assert (=> bs!290397 m!1415511))

(declare-fun m!1415529 () Bool)

(assert (=> bs!290397 m!1415529))

(assert (=> start!110908 d!355312))

(declare-fun b!1257415 () Bool)

(declare-fun e!800350 () Bool)

(declare-fun call!88265 () (_ BitVec 32))

(declare-fun call!88264 () (_ BitVec 32))

(assert (=> b!1257415 (= e!800350 (= call!88265 (bvadd call!88264 #b00000000000000000000000000000001)))))

(declare-fun b!1257417 () Bool)

(declare-fun e!800352 () List!12634)

(assert (=> b!1257417 (= e!800352 (Cons!12570 (h!17971 (list!4681 lt!420885)) ($colon+!86 (t!115766 (list!4681 lt!420885)) t!6008)))))

(declare-fun b!1257418 () Bool)

(declare-fun e!800351 () Bool)

(declare-fun lt!420901 () List!12634)

(declare-fun ++!3210 (List!12634 List!12634) List!12634)

(assert (=> b!1257418 (= e!800351 (= lt!420901 (++!3210 (list!4681 lt!420885) (Cons!12570 t!6008 Nil!12570))))))

(declare-fun b!1257419 () Bool)

(declare-fun res!556708 () Bool)

(assert (=> b!1257419 (=> (not res!556708) (not e!800351))))

(declare-fun size!9971 (List!12634) Int)

(assert (=> b!1257419 (= res!556708 (= (size!9971 lt!420901) (+ (size!9971 (list!4681 lt!420885)) 1)))))

(declare-fun bm!88259 () Bool)

(declare-fun isize!26 (List!12634) (_ BitVec 32))

(assert (=> bm!88259 (= call!88265 (isize!26 lt!420901))))

(declare-fun b!1257416 () Bool)

(declare-fun res!556707 () Bool)

(assert (=> b!1257416 (=> (not res!556707) (not e!800351))))

(declare-fun content!1802 (List!12634) (Set T!23594))

(assert (=> b!1257416 (= res!556707 (= (content!1802 lt!420901) (set.union (content!1802 (list!4681 lt!420885)) (set.insert t!6008 (as set.empty (Set T!23594))))))))

(declare-fun d!355316 () Bool)

(assert (=> d!355316 e!800351))

(declare-fun res!556710 () Bool)

(assert (=> d!355316 (=> (not res!556710) (not e!800351))))

(assert (=> d!355316 (= res!556710 (is-Cons!12570 lt!420901))))

(assert (=> d!355316 (= lt!420901 e!800352)))

(declare-fun c!208775 () Bool)

(assert (=> d!355316 (= c!208775 (is-Nil!12570 (list!4681 lt!420885)))))

(assert (=> d!355316 (= ($colon+!86 (list!4681 lt!420885) t!6008) lt!420901)))

(declare-fun b!1257420 () Bool)

(assert (=> b!1257420 (= e!800350 (= call!88265 call!88264))))

(declare-fun b!1257421 () Bool)

(assert (=> b!1257421 (= e!800352 (Cons!12570 t!6008 (list!4681 lt!420885)))))

(declare-fun b!1257422 () Bool)

(declare-fun res!556709 () Bool)

(assert (=> b!1257422 (=> (not res!556709) (not e!800351))))

(assert (=> b!1257422 (= res!556709 e!800350)))

(declare-fun c!208776 () Bool)

(assert (=> b!1257422 (= c!208776 (bvslt (isize!26 (list!4681 lt!420885)) #b01111111111111111111111111111111))))

(declare-fun bm!88260 () Bool)

(assert (=> bm!88260 (= call!88264 (isize!26 (list!4681 lt!420885)))))

(assert (= (and d!355316 c!208775) b!1257421))

(assert (= (and d!355316 (not c!208775)) b!1257417))

(assert (= (and d!355316 res!556710) b!1257419))

(assert (= (and b!1257419 res!556708) b!1257422))

(assert (= (and b!1257422 c!208776) b!1257415))

(assert (= (and b!1257422 (not c!208776)) b!1257420))

(assert (= (or b!1257415 b!1257420) bm!88260))

(assert (= (or b!1257415 b!1257420) bm!88259))

(assert (= (and b!1257422 res!556709) b!1257416))

(assert (= (and b!1257416 res!556707) b!1257418))

(assert (=> b!1257418 m!1415503))

(declare-fun m!1415539 () Bool)

(assert (=> b!1257418 m!1415539))

(assert (=> b!1257422 m!1415503))

(declare-fun m!1415545 () Bool)

(assert (=> b!1257422 m!1415545))

(declare-fun m!1415549 () Bool)

(assert (=> bm!88259 m!1415549))

(assert (=> bm!88260 m!1415503))

(assert (=> bm!88260 m!1415545))

(declare-fun m!1415553 () Bool)

(assert (=> b!1257416 m!1415553))

(assert (=> b!1257416 m!1415503))

(declare-fun m!1415555 () Bool)

(assert (=> b!1257416 m!1415555))

(declare-fun m!1415559 () Bool)

(assert (=> b!1257416 m!1415559))

(declare-fun m!1415561 () Bool)

(assert (=> b!1257419 m!1415561))

(assert (=> b!1257419 m!1415503))

(declare-fun m!1415563 () Bool)

(assert (=> b!1257419 m!1415563))

(declare-fun m!1415565 () Bool)

(assert (=> b!1257417 m!1415565))

(assert (=> start!110908 d!355316))

(declare-fun d!355320 () Bool)

(declare-fun lt!420904 () Vector!130)

(assert (=> d!355320 (= (list!4681 lt!420904) Nil!12570)))

(declare-fun choose!7883 () Vector!130)

(assert (=> d!355320 (= lt!420904 choose!7883)))

(assert (=> d!355320 (= empty!2692 lt!420904)))

(declare-fun bs!290400 () Bool)

(assert (= bs!290400 d!355320))

(declare-fun m!1415571 () Bool)

(assert (=> bs!290400 m!1415571))

(declare-fun m!1415573 () Bool)

(assert (=> bs!290400 m!1415573))

(assert (=> start!110908 d!355320))

(push 1)

(assert (not b!1257422))

(assert (not b!1257417))

(assert (not d!355320))

(assert (not bm!88260))

(assert (not bm!88259))

(assert (not d!355312))

(assert tp_is_empty!6521)

(assert (not b!1257416))

(assert (not b!1257419))

(assert (not d!355310))

(assert (not b!1257418))

(assert (not d!355308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

