; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13356 () Bool)

(assert start!13356)

(declare-fun res!59359 () Bool)

(declare-fun e!74272 () Bool)

(assert (=> start!13356 (=> (not res!59359) (not e!74272))))

(declare-datatypes ((B!667 0))(
  ( (B!668 (val!819 Int)) )
))
(declare-datatypes ((List!2137 0))(
  ( (Nil!2131) (Cons!2131 (h!7528 B!667) (t!22723 List!2137)) )
))
(declare-fun l!3350 () List!2137)

(declare-fun size!1974 (List!2137) Int)

(assert (=> start!13356 (= res!59359 (> (size!1974 l!3350) 0))))

(assert (=> start!13356 e!74272))

(declare-fun e!74273 () Bool)

(assert (=> start!13356 e!74273))

(declare-fun b!128991 () Bool)

(declare-fun isEmpty!853 (List!2137) Bool)

(assert (=> b!128991 (= e!74272 (isEmpty!853 l!3350))))

(declare-fun b!128992 () Bool)

(declare-fun tp_is_empty!1311 () Bool)

(declare-fun tp!70069 () Bool)

(assert (=> b!128992 (= e!74273 (and tp_is_empty!1311 tp!70069))))

(assert (= (and start!13356 res!59359) b!128991))

(assert (= (and start!13356 (is-Cons!2131 l!3350)) b!128992))

(declare-fun m!113529 () Bool)

(assert (=> start!13356 m!113529))

(declare-fun m!113531 () Bool)

(assert (=> b!128991 m!113531))

(push 1)

(assert (not start!13356))

(assert (not b!128991))

(assert (not b!128992))

(assert tp_is_empty!1311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!30403 () Bool)

(declare-fun lt!38571 () Int)

(assert (=> d!30403 (>= lt!38571 0)))

(declare-fun e!74282 () Int)

(assert (=> d!30403 (= lt!38571 e!74282)))

(declare-fun c!28131 () Bool)

(assert (=> d!30403 (= c!28131 (is-Nil!2131 l!3350))))

(assert (=> d!30403 (= (size!1974 l!3350) lt!38571)))

(declare-fun b!129003 () Bool)

(assert (=> b!129003 (= e!74282 0)))

(declare-fun b!129004 () Bool)

(assert (=> b!129004 (= e!74282 (+ 1 (size!1974 (t!22723 l!3350))))))

(assert (= (and d!30403 c!28131) b!129003))

(assert (= (and d!30403 (not c!28131)) b!129004))

(declare-fun m!113537 () Bool)

(assert (=> b!129004 m!113537))

(assert (=> start!13356 d!30403))

(declare-fun d!30409 () Bool)

(assert (=> d!30409 (= (isEmpty!853 l!3350) (is-Nil!2131 l!3350))))

(assert (=> b!128991 d!30409))

(declare-fun b!129013 () Bool)

(declare-fun e!74287 () Bool)

(declare-fun tp!70075 () Bool)

(assert (=> b!129013 (= e!74287 (and tp_is_empty!1311 tp!70075))))

(assert (=> b!128992 (= tp!70069 e!74287)))

(assert (= (and b!128992 (is-Cons!2131 (t!22723 l!3350))) b!129013))

(push 1)

(assert (not b!129004))

(assert (not b!129013))

(assert tp_is_empty!1311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

