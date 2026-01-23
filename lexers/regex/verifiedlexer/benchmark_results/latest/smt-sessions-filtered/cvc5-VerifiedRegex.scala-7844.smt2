; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411414 () Bool)

(assert start!411414)

(declare-fun res!1757412 () Bool)

(declare-fun e!2658143 () Bool)

(assert (=> start!411414 (=> (not res!1757412) (not e!2658143))))

(declare-fun i!813 () Int)

(assert (=> start!411414 (= res!1757412 (>= i!813 0))))

(assert (=> start!411414 e!2658143))

(assert (=> start!411414 true))

(declare-fun e!2658142 () Bool)

(assert (=> start!411414 e!2658142))

(declare-fun b!4281786 () Bool)

(declare-fun res!1757413 () Bool)

(assert (=> b!4281786 (=> (not res!1757413) (not e!2658143))))

(declare-datatypes ((B!2883 0))(
  ( (B!2884 (val!15311 Int)) )
))
(declare-datatypes ((List!47520 0))(
  ( (Nil!47396) (Cons!47396 (h!52816 B!2883) (t!354109 List!47520)) )
))
(declare-fun l!2982 () List!47520)

(declare-fun size!34732 (List!47520) Int)

(assert (=> b!4281786 (= res!1757413 (< i!813 (size!34732 l!2982)))))

(declare-fun b!4281787 () Bool)

(declare-fun ListPrimitiveSize!318 (List!47520) Int)

(assert (=> b!4281787 (= e!2658143 (< (ListPrimitiveSize!318 l!2982) 0))))

(declare-fun b!4281788 () Bool)

(declare-fun tp_is_empty!23031 () Bool)

(declare-fun tp!1309475 () Bool)

(assert (=> b!4281788 (= e!2658142 (and tp_is_empty!23031 tp!1309475))))

(assert (= (and start!411414 res!1757412) b!4281786))

(assert (= (and b!4281786 res!1757413) b!4281787))

(assert (= (and start!411414 (is-Cons!47396 l!2982)) b!4281788))

(declare-fun m!4879135 () Bool)

(assert (=> b!4281786 m!4879135))

(declare-fun m!4879137 () Bool)

(assert (=> b!4281787 m!4879137))

(push 1)

(assert (not b!4281787))

(assert (not b!4281786))

(assert (not b!4281788))

(assert tp_is_empty!23031)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264805 () Bool)

(declare-fun lt!1515278 () Int)

(assert (=> d!1264805 (>= lt!1515278 0)))

(declare-fun e!2658152 () Int)

(assert (=> d!1264805 (= lt!1515278 e!2658152)))

(declare-fun c!729781 () Bool)

(assert (=> d!1264805 (= c!729781 (is-Nil!47396 l!2982))))

(assert (=> d!1264805 (= (ListPrimitiveSize!318 l!2982) lt!1515278)))

(declare-fun b!4281802 () Bool)

(assert (=> b!4281802 (= e!2658152 0)))

(declare-fun b!4281803 () Bool)

(assert (=> b!4281803 (= e!2658152 (+ 1 (ListPrimitiveSize!318 (t!354109 l!2982))))))

(assert (= (and d!1264805 c!729781) b!4281802))

(assert (= (and d!1264805 (not c!729781)) b!4281803))

(declare-fun m!4879143 () Bool)

(assert (=> b!4281803 m!4879143))

(assert (=> b!4281787 d!1264805))

(declare-fun d!1264809 () Bool)

(declare-fun lt!1515284 () Int)

(assert (=> d!1264809 (>= lt!1515284 0)))

(declare-fun e!2658158 () Int)

(assert (=> d!1264809 (= lt!1515284 e!2658158)))

(declare-fun c!729787 () Bool)

(assert (=> d!1264809 (= c!729787 (is-Nil!47396 l!2982))))

(assert (=> d!1264809 (= (size!34732 l!2982) lt!1515284)))

(declare-fun b!4281814 () Bool)

(assert (=> b!4281814 (= e!2658158 0)))

(declare-fun b!4281815 () Bool)

(assert (=> b!4281815 (= e!2658158 (+ 1 (size!34732 (t!354109 l!2982))))))

(assert (= (and d!1264809 c!729787) b!4281814))

(assert (= (and d!1264809 (not c!729787)) b!4281815))

(declare-fun m!4879147 () Bool)

(assert (=> b!4281815 m!4879147))

(assert (=> b!4281786 d!1264809))

(declare-fun b!4281820 () Bool)

(declare-fun e!2658161 () Bool)

(declare-fun tp!1309481 () Bool)

(assert (=> b!4281820 (= e!2658161 (and tp_is_empty!23031 tp!1309481))))

(assert (=> b!4281788 (= tp!1309475 e!2658161)))

(assert (= (and b!4281788 (is-Cons!47396 (t!354109 l!2982))) b!4281820))

(push 1)

(assert (not b!4281815))

(assert (not b!4281803))

(assert (not b!4281820))

(assert tp_is_empty!23031)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

