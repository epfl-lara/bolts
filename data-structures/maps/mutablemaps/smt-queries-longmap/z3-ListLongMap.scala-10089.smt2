; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118914 () Bool)

(assert start!118914)

(declare-fun b!1388454 () Bool)

(declare-fun res!928847 () Bool)

(declare-fun e!786559 () Bool)

(assert (=> b!1388454 (=> (not res!928847) (not e!786559))))

(declare-datatypes ((array!94910 0))(
  ( (array!94911 (arr!45824 (Array (_ BitVec 32) (_ BitVec 64))) (size!46375 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94910)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1388454 (= res!928847 (validKeyInArray!0 (select (arr!45824 a!2901) j!112)))))

(declare-fun b!1388456 () Bool)

(declare-fun res!928848 () Bool)

(assert (=> b!1388456 (=> (not res!928848) (not e!786559))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1388456 (= res!928848 (validKeyInArray!0 (select (arr!45824 a!2901) i!1037)))))

(declare-fun b!1388457 () Bool)

(declare-fun res!928850 () Bool)

(assert (=> b!1388457 (=> (not res!928850) (not e!786559))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1388457 (= res!928850 (and (= (size!46375 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46375 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46375 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1388458 () Bool)

(assert (=> b!1388458 (= e!786559 (bvsgt #b00000000000000000000000000000000 (size!46375 a!2901)))))

(declare-fun b!1388455 () Bool)

(declare-fun res!928851 () Bool)

(assert (=> b!1388455 (=> (not res!928851) (not e!786559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94910 (_ BitVec 32)) Bool)

(assert (=> b!1388455 (= res!928851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!928849 () Bool)

(assert (=> start!118914 (=> (not res!928849) (not e!786559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118914 (= res!928849 (validMask!0 mask!2840))))

(assert (=> start!118914 e!786559))

(assert (=> start!118914 true))

(declare-fun array_inv!34769 (array!94910) Bool)

(assert (=> start!118914 (array_inv!34769 a!2901)))

(assert (= (and start!118914 res!928849) b!1388457))

(assert (= (and b!1388457 res!928850) b!1388456))

(assert (= (and b!1388456 res!928848) b!1388454))

(assert (= (and b!1388454 res!928847) b!1388455))

(assert (= (and b!1388455 res!928851) b!1388458))

(declare-fun m!1274263 () Bool)

(assert (=> b!1388454 m!1274263))

(assert (=> b!1388454 m!1274263))

(declare-fun m!1274265 () Bool)

(assert (=> b!1388454 m!1274265))

(declare-fun m!1274267 () Bool)

(assert (=> b!1388456 m!1274267))

(assert (=> b!1388456 m!1274267))

(declare-fun m!1274269 () Bool)

(assert (=> b!1388456 m!1274269))

(declare-fun m!1274271 () Bool)

(assert (=> b!1388455 m!1274271))

(declare-fun m!1274273 () Bool)

(assert (=> start!118914 m!1274273))

(declare-fun m!1274275 () Bool)

(assert (=> start!118914 m!1274275))

(check-sat (not b!1388454) (not start!118914) (not b!1388455) (not b!1388456))
(check-sat)
