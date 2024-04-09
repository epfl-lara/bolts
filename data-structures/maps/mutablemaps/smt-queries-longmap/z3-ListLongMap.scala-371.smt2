; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7092 () Bool)

(assert start!7092)

(declare-fun res!26688 () Bool)

(declare-fun e!28978 () Bool)

(assert (=> start!7092 (=> (not res!26688) (not e!28978))))

(declare-datatypes ((array!3054 0))(
  ( (array!3055 (arr!1466 (Array (_ BitVec 32) (_ BitVec 64))) (size!1688 (_ BitVec 32))) )
))
(declare-fun a!4401 () array!3054)

(declare-fun i!1488 () (_ BitVec 32))

(declare-fun k0!2989 () (_ BitVec 64))

(assert (=> start!7092 (= res!26688 (and (bvslt (size!1688 a!4401) #b01111111111111111111111111111111) (bvsge i!1488 #b00000000000000000000000000000000) (bvslt i!1488 (size!1688 a!4401)) (= (select (arr!1466 a!4401) i!1488) k0!2989)))))

(assert (=> start!7092 e!28978))

(declare-fun array_inv!830 (array!3054) Bool)

(assert (=> start!7092 (array_inv!830 a!4401)))

(assert (=> start!7092 true))

(declare-fun b!45525 () Bool)

(declare-fun res!26689 () Bool)

(assert (=> b!45525 (=> (not res!26689) (not e!28978))))

(declare-fun arrayContainsKey!0 (array!3054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!45525 (= res!26689 (arrayContainsKey!0 a!4401 k0!2989 i!1488))))

(declare-fun b!45526 () Bool)

(assert (=> b!45526 (= e!28978 (not true))))

(assert (=> b!45526 (arrayContainsKey!0 a!4401 k0!2989 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!1293 0))(
  ( (Unit!1294) )
))
(declare-fun lt!20171 () Unit!1293)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3054 (_ BitVec 64) (_ BitVec 32)) Unit!1293)

(assert (=> b!45526 (= lt!20171 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!4401 k0!2989 i!1488))))

(assert (= (and start!7092 res!26688) b!45525))

(assert (= (and b!45525 res!26689) b!45526))

(declare-fun m!40087 () Bool)

(assert (=> start!7092 m!40087))

(declare-fun m!40089 () Bool)

(assert (=> start!7092 m!40089))

(declare-fun m!40091 () Bool)

(assert (=> b!45525 m!40091))

(declare-fun m!40093 () Bool)

(assert (=> b!45526 m!40093))

(declare-fun m!40095 () Bool)

(assert (=> b!45526 m!40095))

(check-sat (not b!45525) (not start!7092) (not b!45526))
(check-sat)
