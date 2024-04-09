; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7094 () Bool)

(assert start!7094)

(declare-fun res!26694 () Bool)

(declare-fun e!28984 () Bool)

(assert (=> start!7094 (=> (not res!26694) (not e!28984))))

(declare-datatypes ((array!3056 0))(
  ( (array!3057 (arr!1467 (Array (_ BitVec 32) (_ BitVec 64))) (size!1689 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3056)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7094 (= res!26694 (and (bvslt (size!1689 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1689 a!4401)) (= (select (arr!1467 a!4401) i!1488) k!2989)))))

(assert (=> start!7094 e!28984))

(declare-fun array_inv!831 (array!3056) Bool)

(assert (=> start!7094 (array_inv!831 a!4401)))

(assert (=> start!7094 true))

(declare-fun b!45531 () Bool)

(declare-fun res!26695 () Bool)

(assert (=> b!45531 (=> (not res!26695) (not e!28984))))

(declare-fun arrayContainsKey!0 (array!3056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45531 (= res!26695 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45532 () Bool)

(assert (=> b!45532 (= e!28984 (not true))))

(assert (=> b!45532 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1295 0))(
  ( (Unit!1296) )
))
(declare-fun lt!20174 () Unit!1295)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3056 (_ BitVec 64) (_ BitVec 32)) Unit!1295)

(assert (=> b!45532 (= lt!20174 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7094 res!26694) b!45531))

(assert (= (and b!45531 res!26695) b!45532))

(declare-fun m!40097 () Bool)

(assert (=> start!7094 m!40097))

(declare-fun m!40099 () Bool)

(assert (=> start!7094 m!40099))

(declare-fun m!40101 () Bool)

(assert (=> b!45531 m!40101))

(declare-fun m!40103 () Bool)

(assert (=> b!45532 m!40103))

(declare-fun m!40105 () Bool)

(assert (=> b!45532 m!40105))

(push 1)

(assert (not start!7094))

(assert (not b!45532))

(assert (not b!45531))

(check-sat)

