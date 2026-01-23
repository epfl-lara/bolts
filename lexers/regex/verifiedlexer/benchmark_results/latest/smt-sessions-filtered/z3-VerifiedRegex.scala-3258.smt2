; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187832 () Bool)

(assert start!187832)

(declare-datatypes ((C!10328 0))(
  ( (C!10329 (val!6052 Int)) )
))
(declare-datatypes ((List!20895 0))(
  ( (Nil!20813) (Cons!20813 (h!26214 C!10328) (t!173112 List!20895)) )
))
(declare-fun input!3792 () List!20895)

(declare-fun size!16515 (List!20895) Int)

(assert (=> start!187832 (< (size!16515 input!3792) 0)))

(declare-fun e!1195795 () Bool)

(assert (=> start!187832 e!1195795))

(declare-fun b!1874199 () Bool)

(declare-fun tp_is_empty!8871 () Bool)

(declare-fun tp!533665 () Bool)

(assert (=> b!1874199 (= e!1195795 (and tp_is_empty!8871 tp!533665))))

(get-info :version)

(assert (= (and start!187832 ((_ is Cons!20813) input!3792)) b!1874199))

(declare-fun m!2299259 () Bool)

(assert (=> start!187832 m!2299259))

(check-sat (not start!187832) (not b!1874199) tp_is_empty!8871)
(check-sat)
(get-model)

(declare-fun d!572733 () Bool)

(declare-fun lt!719982 () Int)

(assert (=> d!572733 (>= lt!719982 0)))

(declare-fun e!1195804 () Int)

(assert (=> d!572733 (= lt!719982 e!1195804)))

(declare-fun c!305420 () Bool)

(assert (=> d!572733 (= c!305420 ((_ is Nil!20813) input!3792))))

(assert (=> d!572733 (= (size!16515 input!3792) lt!719982)))

(declare-fun b!1874215 () Bool)

(assert (=> b!1874215 (= e!1195804 0)))

(declare-fun b!1874216 () Bool)

(assert (=> b!1874216 (= e!1195804 (+ 1 (size!16515 (t!173112 input!3792))))))

(assert (= (and d!572733 c!305420) b!1874215))

(assert (= (and d!572733 (not c!305420)) b!1874216))

(declare-fun m!2299263 () Bool)

(assert (=> b!1874216 m!2299263))

(assert (=> start!187832 d!572733))

(declare-fun b!1874221 () Bool)

(declare-fun e!1195807 () Bool)

(declare-fun tp!533671 () Bool)

(assert (=> b!1874221 (= e!1195807 (and tp_is_empty!8871 tp!533671))))

(assert (=> b!1874199 (= tp!533665 e!1195807)))

(assert (= (and b!1874199 ((_ is Cons!20813) (t!173112 input!3792))) b!1874221))

(check-sat (not b!1874216) (not b!1874221) tp_is_empty!8871)
(check-sat)
