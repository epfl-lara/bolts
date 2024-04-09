; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7070 () Bool)

(assert start!7070)

(declare-fun res!26649 () Bool)

(declare-fun e!28931 () Bool)

(assert (=> start!7070 (=> (not res!26649) (not e!28931))))

(declare-datatypes ((array!3041 0))(
  ( (array!3042 (arr!1461 (Array (_ BitVec 32) (_ BitVec 64))) (size!1683 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3041)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k!2989 () (_ BitVec 64))

(assert (=> start!7070 (= res!26649 (and (bvslt (size!1683 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1683 a!4401)) (= (select (arr!1461 a!4401) i!1488) k!2989)))))

(assert (=> start!7070 e!28931))

(declare-fun array_inv!825 (array!3041) Bool)

(assert (=> start!7070 (array_inv!825 a!4401)))

(assert (=> start!7070 true))

(declare-fun b!45486 () Bool)

(declare-fun res!26650 () Bool)

(assert (=> b!45486 (=> (not res!26650) (not e!28931))))

(declare-fun arrayContainsKey!0 (array!3041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45486 (= res!26650 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45487 () Bool)

(assert (=> b!45487 (= e!28931 (not true))))

(assert (=> b!45487 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1289 0))(
  ( (Unit!1290) )
))
(declare-fun lt!20165 () Unit!1289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3041 (_ BitVec 64) (_ BitVec 32)) Unit!1289)

(assert (=> b!45487 (= lt!20165 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7070 res!26649) b!45486))

(assert (= (and b!45486 res!26650) b!45487))

(declare-fun m!40045 () Bool)

(assert (=> start!7070 m!40045))

(declare-fun m!40047 () Bool)

(assert (=> start!7070 m!40047))

(declare-fun m!40049 () Bool)

(assert (=> b!45486 m!40049))

(declare-fun m!40051 () Bool)

(assert (=> b!45487 m!40051))

(declare-fun m!40053 () Bool)

(assert (=> b!45487 m!40053))

(push 1)

(assert (not b!45486))

(assert (not b!45487))

(assert (not start!7070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

