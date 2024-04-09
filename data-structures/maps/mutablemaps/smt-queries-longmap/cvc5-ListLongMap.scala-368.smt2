; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7060 () Bool)

(assert start!7060)

(declare-fun res!26619 () Bool)

(declare-fun e!28901 () Bool)

(assert (=> start!7060 (=> (not res!26619) (not e!28901))))

(declare-datatypes ((array!3031 0))(
  ( (array!3032 (arr!1456 (Array (_ BitVec 32) (_ BitVec 64))) (size!1678 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3031)

(declare-fun k!2989 () (_ BitVec 64))

(declare-fun i!1488 () (_ BitVec 32))

(assert (=> start!7060 (= res!26619 (and (bvslt (size!1678 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1678 a!4401)) (= (select (arr!1456 a!4401) i!1488) k!2989)))))

(assert (=> start!7060 e!28901))

(declare-fun array_inv!820 (array!3031) Bool)

(assert (=> start!7060 (array_inv!820 a!4401)))

(assert (=> start!7060 true))

(declare-fun b!45456 () Bool)

(declare-fun res!26620 () Bool)

(assert (=> b!45456 (=> (not res!26620) (not e!28901))))

(declare-fun arrayContainsKey!0 (array!3031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45456 (= res!26620 (arrayContainsKey!0 a!4401 k!2989 i!1488))))

(declare-fun b!45457 () Bool)

(assert (=> b!45457 (= e!28901 (not (bvslt #b00000000000000000000000000000000 (size!1678 a!4401))))))

(assert (=> b!45457 (arrayContainsKey!0 a!4401 k!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1279 0))(
  ( (Unit!1280) )
))
(declare-fun lt!20150 () Unit!1279)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3031 (_ BitVec 64) (_ BitVec 32)) Unit!1279)

(assert (=> b!45457 (= lt!20150 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k!2989 i!1488))))

(assert (= (and start!7060 res!26619) b!45456))

(assert (= (and b!45456 res!26620) b!45457))

(declare-fun m!39995 () Bool)

(assert (=> start!7060 m!39995))

(declare-fun m!39997 () Bool)

(assert (=> start!7060 m!39997))

(declare-fun m!39999 () Bool)

(assert (=> b!45456 m!39999))

(declare-fun m!40001 () Bool)

(assert (=> b!45457 m!40001))

(declare-fun m!40003 () Bool)

(assert (=> b!45457 m!40003))

(push 1)

(assert (not start!7060))

(assert (not b!45456))

(assert (not b!45457))

(check-sat)

