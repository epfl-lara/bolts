; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7090 () Bool)

(assert start!7090)

(declare-fun res!26682 () Bool)

(declare-fun e!28973 () Bool)

(assert (=> start!7090 (=> (not res!26682) (not e!28973))))

(declare-datatypes ((array!3052 0))(
  ( (array!3053 (arr!1465 (Array (_ BitVec 32) (_ BitVec 64))) (size!1687 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3052)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7090 (= res!26682 (and (bvslt (size!1687 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1687 a!4401)) (= (select (arr!1465 a!4401) i!1488) k!2989)))))

(assert (=> start!7090 e!28973))

(declare-fun array_inv!829 (array!3052) Bool)

(assert (=> start!7090 (array_inv!829 a!4401)))

(assert (=> start!7090 true))

(declare-fun b!45519 () Bool)

(declare-fun res!26683 () Bool)

(assert (=> b!45519 (=> (not res!26683) (not e!28973))))

(declare-fun arrayContainsKey!0 (array!3052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45519 (= res!26683 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45520 () Bool)

(assert (=> b!45520 (= e!28973 (not true))))

(assert (=> b!45520 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1291 0))(
  ( (Unit!1292) )
))
(declare-fun lt!20168 () Unit!1291)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3052 (_ BitVec 64) (_ BitVec 32)) Unit!1291)

(assert (=> b!45520 (= lt!20168 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7090 res!26682) b!45519))

(assert (= (and b!45519 res!26683) b!45520))

(declare-fun m!40077 () Bool)

(assert (=> start!7090 m!40077))

(declare-fun m!40079 () Bool)

(assert (=> start!7090 m!40079))

(declare-fun m!40081 () Bool)

(assert (=> b!45519 m!40081))

(declare-fun m!40083 () Bool)

(assert (=> b!45520 m!40083))

(declare-fun m!40085 () Bool)

(assert (=> b!45520 m!40085))

(push 1)

(assert (not start!7090))

(assert (not b!45520))

(assert (not b!45519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

