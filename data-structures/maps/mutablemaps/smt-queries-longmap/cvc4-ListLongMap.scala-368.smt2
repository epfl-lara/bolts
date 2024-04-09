; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7064 () Bool)

(assert start!7064)

(declare-fun res!26631 () Bool)

(declare-fun e!28913 () Bool)

(assert (=> start!7064 (=> (not res!26631) (not e!28913))))

(declare-datatypes ((array!3035 0))(
  ( (array!3036 (arr!1458 (Array (_ BitVec 32) (_ BitVec 64))) (size!1680 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3035)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7064 (= res!26631 (and (bvslt (size!1680 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1680 a!4401)) (= (select (arr!1458 a!4401) i!1488) k!2989)))))

(assert (=> start!7064 e!28913))

(declare-fun array_inv!822 (array!3035) Bool)

(assert (=> start!7064 (array_inv!822 a!4401)))

(assert (=> start!7064 true))

(declare-fun b!45468 () Bool)

(declare-fun res!26632 () Bool)

(assert (=> b!45468 (=> (not res!26632) (not e!28913))))

(declare-fun arrayContainsKey!0 (array!3035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45468 (= res!26632 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45469 () Bool)

(assert (=> b!45469 (= e!28913 (not (bvslt #b00000000000000000000000000000000 (size!1680 a!4401))))))

(assert (=> b!45469 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1283 0))(
  ( (Unit!1284) )
))
(declare-fun lt!20156 () Unit!1283)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3035 (_ BitVec 64) (_ BitVec 32)) Unit!1283)

(assert (=> b!45469 (= lt!20156 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7064 res!26631) b!45468))

(assert (= (and b!45468 res!26632) b!45469))

(declare-fun m!40015 () Bool)

(assert (=> start!7064 m!40015))

(declare-fun m!40017 () Bool)

(assert (=> start!7064 m!40017))

(declare-fun m!40019 () Bool)

(assert (=> b!45468 m!40019))

(declare-fun m!40021 () Bool)

(assert (=> b!45469 m!40021))

(declare-fun m!40023 () Bool)

(assert (=> b!45469 m!40023))

(push 1)

(assert (not start!7064))

(assert (not b!45468))

(assert (not b!45469))

(check-sat)

