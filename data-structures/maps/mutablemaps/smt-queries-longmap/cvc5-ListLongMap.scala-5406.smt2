; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72194 () Bool)

(assert start!72194)

(declare-fun res!569248 () Bool)

(declare-fun e!466906 () Bool)

(assert (=> start!72194 (=> (not res!569248) (not e!466906))))

(declare-datatypes ((List!16066 0))(
  ( (Nil!16063) (Cons!16062 (h!17193 (_ BitVec 64)) (t!22445 List!16066)) )
))
(declare-fun l!404 () List!16066)

(declare-fun length!32 (List!16066) Int)

(assert (=> start!72194 (= res!569248 (< (length!32 l!404) 2147483647))))

(assert (=> start!72194 e!466906))

(assert (=> start!72194 true))

(declare-fun b!836709 () Bool)

(declare-fun ListPrimitiveSize!79 (List!16066) Int)

(assert (=> b!836709 (= e!466906 (< (ListPrimitiveSize!79 l!404) 0))))

(assert (= (and start!72194 res!569248) b!836709))

(declare-fun m!781913 () Bool)

(assert (=> start!72194 m!781913))

(declare-fun m!781915 () Bool)

(assert (=> b!836709 m!781915))

(push 1)

(assert (not b!836709))

(assert (not start!72194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107681 () Bool)

(declare-fun lt!380440 () Int)

(assert (=> d!107681 (>= lt!380440 0)))

(declare-fun e!466917 () Int)

(assert (=> d!107681 (= lt!380440 e!466917)))

(declare-fun c!91046 () Bool)

(assert (=> d!107681 (= c!91046 (is-Nil!16063 l!404))))

(assert (=> d!107681 (= (ListPrimitiveSize!79 l!404) lt!380440)))

(declare-fun b!836724 () Bool)

(assert (=> b!836724 (= e!466917 0)))

(declare-fun b!836725 () Bool)

(assert (=> b!836725 (= e!466917 (+ 1 (ListPrimitiveSize!79 (t!22445 l!404))))))

(assert (= (and d!107681 c!91046) b!836724))

(assert (= (and d!107681 (not c!91046)) b!836725))

(declare-fun m!781929 () Bool)

(assert (=> b!836725 m!781929))

(assert (=> b!836709 d!107681))

(declare-fun d!107691 () Bool)

(declare-fun size!22891 (List!16066) Int)

(assert (=> d!107691 (= (length!32 l!404) (size!22891 l!404))))

(declare-fun bs!23527 () Bool)

(assert (= bs!23527 d!107691))

(declare-fun m!781931 () Bool)

(assert (=> bs!23527 m!781931))

(assert (=> start!72194 d!107691))

(push 1)

