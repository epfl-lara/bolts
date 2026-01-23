; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!532034 () Bool)

(assert start!532034)

(declare-fun res!2143974 () Bool)

(declare-fun e!3142480 () Bool)

(assert (=> start!532034 (=> (not res!2143974) (not e!3142480))))

(declare-fun i!879 () Int)

(assert (=> start!532034 (= res!2143974 (>= i!879 0))))

(assert (=> start!532034 e!3142480))

(assert (=> start!532034 true))

(declare-fun e!3142481 () Bool)

(assert (=> start!532034 e!3142481))

(declare-datatypes ((B!3059 0))(
  ( (B!3060 (val!23441 Int)) )
))
(declare-datatypes ((List!58344 0))(
  ( (Nil!58220) (Cons!58220 (h!64668 B!3059) (t!370760 List!58344)) )
))
(declare-fun l!2999 () List!58344)

(declare-fun b!5030451 () Bool)

(declare-fun j!102 () Int)

(declare-fun lt!2081862 () Int)

(assert (=> b!5030451 (= e!3142480 (and (< i!879 lt!2081862) (>= j!102 0) (<= j!102 (- (- lt!2081862 i!879) 1)) (not (= i!879 0)) (= l!2999 Nil!58220)))))

(declare-fun size!38759 (List!58344) Int)

(assert (=> b!5030451 (= lt!2081862 (size!38759 l!2999))))

(declare-fun b!5030452 () Bool)

(declare-fun tp_is_empty!36681 () Bool)

(declare-fun tp!1409431 () Bool)

(assert (=> b!5030452 (= e!3142481 (and tp_is_empty!36681 tp!1409431))))

(assert (= (and start!532034 res!2143974) b!5030451))

(assert (= (and start!532034 (is-Cons!58220 l!2999)) b!5030452))

(declare-fun m!6065790 () Bool)

(assert (=> b!5030451 m!6065790))

(push 1)

(assert (not b!5030451))

(assert (not b!5030452))

(assert tp_is_empty!36681)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1618898 () Bool)

(declare-fun lt!2081870 () Int)

(assert (=> d!1618898 (>= lt!2081870 0)))

(declare-fun e!3142492 () Int)

(assert (=> d!1618898 (= lt!2081870 e!3142492)))

(declare-fun c!861177 () Bool)

(assert (=> d!1618898 (= c!861177 (is-Nil!58220 l!2999))))

(assert (=> d!1618898 (= (size!38759 l!2999) lt!2081870)))

(declare-fun b!5030467 () Bool)

(assert (=> b!5030467 (= e!3142492 0)))

(declare-fun b!5030468 () Bool)

(assert (=> b!5030468 (= e!3142492 (+ 1 (size!38759 (t!370760 l!2999))))))

(assert (= (and d!1618898 c!861177) b!5030467))

(assert (= (and d!1618898 (not c!861177)) b!5030468))

(declare-fun m!6065794 () Bool)

(assert (=> b!5030468 m!6065794))

(assert (=> b!5030451 d!1618898))

(declare-fun b!5030473 () Bool)

(declare-fun e!3142495 () Bool)

(declare-fun tp!1409437 () Bool)

(assert (=> b!5030473 (= e!3142495 (and tp_is_empty!36681 tp!1409437))))

(assert (=> b!5030452 (= tp!1409431 e!3142495)))

(assert (= (and b!5030452 (is-Cons!58220 (t!370760 l!2999))) b!5030473))

(push 1)

(assert (not b!5030468))

(assert (not b!5030473))

(assert tp_is_empty!36681)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

