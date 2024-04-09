; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2234 () Bool)

(assert start!2234)

(declare-fun res!11446 () Bool)

(declare-fun e!9006 () Bool)

(assert (=> start!2234 (=> (not res!11446) (not e!9006))))

(declare-datatypes ((B!576 0))(
  ( (B!577 (val!386 Int)) )
))
(declare-datatypes ((tuple2!554 0))(
  ( (tuple2!555 (_1!277 (_ BitVec 64)) (_2!277 B!576)) )
))
(declare-datatypes ((List!436 0))(
  ( (Nil!433) (Cons!432 (h!998 tuple2!554) (t!2838 List!436)) )
))
(declare-datatypes ((ListLongMap!385 0))(
  ( (ListLongMap!386 (toList!208 List!436)) )
))
(declare-fun thiss!177 () ListLongMap!385)

(declare-fun size!497 (List!436) Int)

(assert (=> start!2234 (= res!11446 (< (size!497 (toList!208 thiss!177)) 2147483647))))

(assert (=> start!2234 e!9006))

(declare-fun e!9007 () Bool)

(declare-fun inv!738 (ListLongMap!385) Bool)

(assert (=> start!2234 (and (inv!738 thiss!177) e!9007)))

(declare-fun b!14950 () Bool)

(declare-fun isStrictlySorted!127 (List!436) Bool)

(assert (=> b!14950 (= e!9006 (not (isStrictlySorted!127 (toList!208 thiss!177))))))

(declare-fun b!14951 () Bool)

(declare-fun tp!2414 () Bool)

(assert (=> b!14951 (= e!9007 tp!2414)))

(assert (= (and start!2234 res!11446) b!14950))

(assert (= start!2234 b!14951))

(declare-fun m!9949 () Bool)

(assert (=> start!2234 m!9949))

(declare-fun m!9951 () Bool)

(assert (=> start!2234 m!9951))

(declare-fun m!9953 () Bool)

(assert (=> b!14950 m!9953))

(push 1)

(assert (not b!14950))

(assert (not start!2234))

(assert (not b!14951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2437 () Bool)

(declare-fun res!11451 () Bool)

(declare-fun e!9018 () Bool)

(assert (=> d!2437 (=> res!11451 e!9018)))

(assert (=> d!2437 (= res!11451 (or (is-Nil!433 (toList!208 thiss!177)) (is-Nil!433 (t!2838 (toList!208 thiss!177)))))))

(assert (=> d!2437 (= (isStrictlySorted!127 (toList!208 thiss!177)) e!9018)))

(declare-fun b!14968 () Bool)

(declare-fun e!9019 () Bool)

(assert (=> b!14968 (= e!9018 e!9019)))

(declare-fun res!11452 () Bool)

(assert (=> b!14968 (=> (not res!11452) (not e!9019))))

(assert (=> b!14968 (= res!11452 (bvslt (_1!277 (h!998 (toList!208 thiss!177))) (_1!277 (h!998 (t!2838 (toList!208 thiss!177))))))))

(declare-fun b!14969 () Bool)

(assert (=> b!14969 (= e!9019 (isStrictlySorted!127 (t!2838 (toList!208 thiss!177))))))

(assert (= (and d!2437 (not res!11451)) b!14968))

(assert (= (and b!14968 res!11452) b!14969))

(declare-fun m!9959 () Bool)

(assert (=> b!14969 m!9959))

(assert (=> b!14950 d!2437))

(declare-fun d!2443 () Bool)

(declare-fun lt!3645 () Int)

(assert (=> d!2443 (>= lt!3645 0)))

(declare-fun e!9026 () Int)

(assert (=> d!2443 (= lt!3645 e!9026)))

(declare-fun c!1418 () Bool)

(assert (=> d!2443 (= c!1418 (is-Nil!433 (toList!208 thiss!177)))))

(assert (=> d!2443 (= (size!497 (toList!208 thiss!177)) lt!3645)))

(declare-fun b!14978 () Bool)

(assert (=> b!14978 (= e!9026 0)))

(declare-fun b!14979 () Bool)

(assert (=> b!14979 (= e!9026 (+ 1 (size!497 (t!2838 (toList!208 thiss!177)))))))

(assert (= (and d!2443 c!1418) b!14978))

(assert (= (and d!2443 (not c!1418)) b!14979))

(declare-fun m!9961 () Bool)

(assert (=> b!14979 m!9961))

(assert (=> start!2234 d!2443))

(declare-fun d!2449 () Bool)

(assert (=> d!2449 (= (inv!738 thiss!177) (isStrictlySorted!127 (toList!208 thiss!177)))))

(declare-fun bs!613 () Bool)

(assert (= bs!613 d!2449))

(assert (=> bs!613 m!9953))

(assert (=> start!2234 d!2449))

(declare-fun b!14995 () Bool)

(declare-fun e!9038 () Bool)

(declare-fun tp_is_empty!753 () Bool)

(declare-fun tp!2420 () Bool)

(assert (=> b!14995 (= e!9038 (and tp_is_empty!753 tp!2420))))

(assert (=> b!14951 (= tp!2414 e!9038)))

(assert (= (and b!14951 (is-Cons!432 (toList!208 thiss!177))) b!14995))

(push 1)

