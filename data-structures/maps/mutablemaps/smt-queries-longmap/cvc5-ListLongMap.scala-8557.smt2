; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104530 () Bool)

(assert start!104530)

(declare-fun res!832023 () Bool)

(declare-fun e!707103 () Bool)

(assert (=> start!104530 (=> (not res!832023) (not e!707103))))

(declare-datatypes ((array!80246 0))(
  ( (array!80247 (arr!38694 (Array (_ BitVec 32) (_ BitVec 64))) (size!39231 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80246)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104530 (= res!832023 (and (bvslt (size!39231 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39231 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39231 a!3892))))))

(assert (=> start!104530 e!707103))

(declare-fun array_inv!29470 (array!80246) Bool)

(assert (=> start!104530 (array_inv!29470 a!3892)))

(assert (=> start!104530 true))

(declare-fun b!1246672 () Bool)

(declare-fun e!707102 () Bool)

(assert (=> b!1246672 (= e!707103 e!707102)))

(declare-fun res!832020 () Bool)

(assert (=> b!1246672 (=> (not res!832020) (not e!707102))))

(assert (=> b!1246672 (= res!832020 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3270) #b00000000000000000000000000000000) (bvsge newFrom!287 (bvadd #b00000000000000000000000000000001 from!3270))))))

(declare-datatypes ((Unit!41398 0))(
  ( (Unit!41399) )
))
(declare-fun lt!563126 () Unit!41398)

(declare-fun e!707104 () Unit!41398)

(assert (=> b!1246672 (= lt!563126 e!707104)))

(declare-fun c!122013 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1246672 (= c!122013 (validKeyInArray!0 (select (arr!38694 a!3892) from!3270)))))

(declare-fun b!1246673 () Bool)

(assert (=> b!1246673 (= e!707102 (not true))))

(declare-datatypes ((List!27675 0))(
  ( (Nil!27672) (Cons!27671 (h!28880 (_ BitVec 64)) (t!41151 List!27675)) )
))
(declare-fun arrayNoDuplicates!0 (array!80246 (_ BitVec 32) List!27675) Bool)

(assert (=> b!1246673 (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27672)))

(declare-fun lt!563124 () Unit!41398)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!80246 (_ BitVec 32) (_ BitVec 32)) Unit!41398)

(assert (=> b!1246673 (= lt!563124 (lemmaNoDuplicateFromThenFromBigger!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) newFrom!287))))

(declare-fun b!1246674 () Bool)

(declare-fun res!832021 () Bool)

(assert (=> b!1246674 (=> (not res!832021) (not e!707103))))

(assert (=> b!1246674 (= res!832021 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27672))))

(declare-fun b!1246675 () Bool)

(declare-fun res!832022 () Bool)

(assert (=> b!1246675 (=> (not res!832022) (not e!707102))))

(assert (=> b!1246675 (= res!832022 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27672))))

(declare-fun b!1246676 () Bool)

(declare-fun res!832024 () Bool)

(assert (=> b!1246676 (=> (not res!832024) (not e!707103))))

(assert (=> b!1246676 (= res!832024 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39231 a!3892)) (not (= newFrom!287 (size!39231 a!3892)))))))

(declare-fun b!1246677 () Bool)

(declare-fun lt!563125 () Unit!41398)

(assert (=> b!1246677 (= e!707104 lt!563125)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!80246 List!27675 List!27675 (_ BitVec 32)) Unit!41398)

(assert (=> b!1246677 (= lt!563125 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3892 (Cons!27671 (select (arr!38694 a!3892) from!3270) Nil!27672) Nil!27672 (bvadd #b00000000000000000000000000000001 from!3270)))))

(assert (=> b!1246677 (arrayNoDuplicates!0 a!3892 (bvadd #b00000000000000000000000000000001 from!3270) Nil!27672)))

(declare-fun b!1246678 () Bool)

(declare-fun Unit!41400 () Unit!41398)

(assert (=> b!1246678 (= e!707104 Unit!41400)))

(assert (= (and start!104530 res!832023) b!1246674))

(assert (= (and b!1246674 res!832021) b!1246676))

(assert (= (and b!1246676 res!832024) b!1246672))

(assert (= (and b!1246672 c!122013) b!1246677))

(assert (= (and b!1246672 (not c!122013)) b!1246678))

(assert (= (and b!1246672 res!832020) b!1246675))

(assert (= (and b!1246675 res!832022) b!1246673))

(declare-fun m!1148453 () Bool)

(assert (=> b!1246673 m!1148453))

(declare-fun m!1148455 () Bool)

(assert (=> b!1246673 m!1148455))

(declare-fun m!1148457 () Bool)

(assert (=> b!1246677 m!1148457))

(declare-fun m!1148459 () Bool)

(assert (=> b!1246677 m!1148459))

(declare-fun m!1148461 () Bool)

(assert (=> b!1246677 m!1148461))

(assert (=> b!1246672 m!1148457))

(assert (=> b!1246672 m!1148457))

(declare-fun m!1148463 () Bool)

(assert (=> b!1246672 m!1148463))

(assert (=> b!1246675 m!1148461))

(declare-fun m!1148465 () Bool)

(assert (=> start!104530 m!1148465))

(declare-fun m!1148467 () Bool)

(assert (=> b!1246674 m!1148467))

(push 1)

(assert (not b!1246675))

(assert (not b!1246677))

(assert (not b!1246673))

(assert (not b!1246672))

(assert (not b!1246674))

