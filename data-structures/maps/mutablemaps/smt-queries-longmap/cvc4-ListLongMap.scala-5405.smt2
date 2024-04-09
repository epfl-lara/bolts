; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72180 () Bool)

(assert start!72180)

(declare-fun res!569244 () Bool)

(declare-fun e!466891 () Bool)

(assert (=> start!72180 (=> (not res!569244) (not e!466891))))

(declare-datatypes ((List!16065 0))(
  ( (Nil!16062) (Cons!16061 (h!17192 (_ BitVec 64)) (t!22444 List!16065)) )
))
(declare-fun l!404 () List!16065)

(declare-fun length!31 (List!16065) Int)

(assert (=> start!72180 (= res!569244 (< (length!31 l!404) 2147483647))))

(assert (=> start!72180 e!466891))

(assert (=> start!72180 true))

(declare-fun b!836681 () Bool)

(declare-fun res!569245 () Bool)

(assert (=> b!836681 (=> (not res!569245) (not e!466891))))

(assert (=> b!836681 (= res!569245 (is-Cons!16061 l!404))))

(declare-fun b!836682 () Bool)

(assert (=> b!836682 (= e!466891 (>= (length!31 (t!22444 l!404)) 2147483647))))

(assert (= (and start!72180 res!569244) b!836681))

(assert (= (and b!836681 res!569245) b!836682))

(declare-fun m!781891 () Bool)

(assert (=> start!72180 m!781891))

(declare-fun m!781893 () Bool)

(assert (=> b!836682 m!781893))

(push 1)

(assert (not b!836682))

(assert (not start!72180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107661 () Bool)

(declare-fun size!22888 (List!16065) Int)

(assert (=> d!107661 (= (length!31 (t!22444 l!404)) (size!22888 (t!22444 l!404)))))

(declare-fun bs!23520 () Bool)

(assert (= bs!23520 d!107661))

(declare-fun m!781903 () Bool)

(assert (=> bs!23520 m!781903))

(assert (=> b!836682 d!107661))

(declare-fun d!107665 () Bool)

(assert (=> d!107665 (= (length!31 l!404) (size!22888 l!404))))

(declare-fun bs!23521 () Bool)

(assert (= bs!23521 d!107665))

(declare-fun m!781905 () Bool)

(assert (=> bs!23521 m!781905))

(assert (=> start!72180 d!107665))

(push 1)

(assert (not d!107665))

(assert (not d!107661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107673 () Bool)

(declare-fun lt!380434 () Int)

(assert (=> d!107673 (>= lt!380434 0)))

(declare-fun e!466902 () Int)

(assert (=> d!107673 (= lt!380434 e!466902)))

(declare-fun c!91040 () Bool)

(assert (=> d!107673 (= c!91040 (is-Nil!16062 l!404))))

(assert (=> d!107673 (= (size!22888 l!404) lt!380434)))

(declare-fun b!836703 () Bool)

(assert (=> b!836703 (= e!466902 0)))

(declare-fun b!836704 () Bool)

(assert (=> b!836704 (= e!466902 (+ 1 (size!22888 (t!22444 l!404))))))

