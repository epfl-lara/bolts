; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7066 () Bool)

(assert start!7066)

(declare-fun res!26637 () Bool)

(declare-fun e!28919 () Bool)

(assert (=> start!7066 (=> (not res!26637) (not e!28919))))

(declare-datatypes ((array!3037 0))(
  ( (array!3038 (arr!1459 (Array (_ BitVec 32) (_ BitVec 64))) (size!1681 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3037)

(declare-fun k!2989 () (_ BitVec 64))

(declare-fun i!1488 () (_ BitVec 32))

(assert (=> start!7066 (= res!26637 (and (bvslt (size!1681 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1681 a!4401)) (= (select (arr!1459 a!4401) i!1488) k!2989)))))

(assert (=> start!7066 e!28919))

(declare-fun array_inv!823 (array!3037) Bool)

(assert (=> start!7066 (array_inv!823 a!4401)))

(assert (=> start!7066 true))

(declare-fun b!45474 () Bool)

(declare-fun res!26638 () Bool)

(assert (=> b!45474 (=> (not res!26638) (not e!28919))))

(declare-fun arrayContainsKey!0 (array!3037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45474 (= res!26638 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45475 () Bool)

(assert (=> b!45475 (= e!28919 (not true))))

(assert (=> b!45475 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1285 0))(
  ( (Unit!1286) )
))
(declare-fun lt!20159 () Unit!1285)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3037 (_ BitVec 64) (_ BitVec 32)) Unit!1285)

(assert (=> b!45475 (= lt!20159 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7066 res!26637) b!45474))

(assert (= (and b!45474 res!26638) b!45475))

(declare-fun m!40025 () Bool)

(assert (=> start!7066 m!40025))

(declare-fun m!40027 () Bool)

(assert (=> start!7066 m!40027))

(declare-fun m!40029 () Bool)

(assert (=> b!45474 m!40029))

(declare-fun m!40031 () Bool)

(assert (=> b!45475 m!40031))

(declare-fun m!40033 () Bool)

(assert (=> b!45475 m!40033))

(push 1)

(assert (not b!45474))

(assert (not b!45475))

(assert (not start!7066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

