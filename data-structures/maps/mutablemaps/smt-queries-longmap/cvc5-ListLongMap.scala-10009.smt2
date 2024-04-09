; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118132 () Bool)

(assert start!118132)

(declare-fun b!1382531 () Bool)

(declare-fun e!783637 () Bool)

(assert (=> b!1382531 (= e!783637 (not true))))

(declare-datatypes ((array!94412 0))(
  ( (array!94413 (arr!45583 (Array (_ BitVec 32) (_ BitVec 64))) (size!46134 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94412)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94412 (_ BitVec 32)) Bool)

(assert (=> b!1382531 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!94413 (store (arr!45583 a!2971) i!1094 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46134 a!2971)) mask!3034)))

(declare-datatypes ((Unit!45999 0))(
  ( (Unit!46000) )
))
(declare-fun lt!608398 () Unit!45999)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94412 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45999)

(assert (=> b!1382531 (= lt!608398 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2971 i!1094 #b00000000000000000000000000000000 mask!3034))))

(declare-fun b!1382532 () Bool)

(declare-fun res!924235 () Bool)

(assert (=> b!1382532 (=> (not res!924235) (not e!783637))))

(assert (=> b!1382532 (= res!924235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382533 () Bool)

(declare-fun res!924233 () Bool)

(assert (=> b!1382533 (=> (not res!924233) (not e!783637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382533 (= res!924233 (validKeyInArray!0 (select (arr!45583 a!2971) i!1094)))))

(declare-fun b!1382534 () Bool)

(declare-fun res!924236 () Bool)

(assert (=> b!1382534 (=> (not res!924236) (not e!783637))))

(declare-datatypes ((List!32297 0))(
  ( (Nil!32294) (Cons!32293 (h!33502 (_ BitVec 64)) (t!46998 List!32297)) )
))
(declare-fun arrayNoDuplicates!0 (array!94412 (_ BitVec 32) List!32297) Bool)

(assert (=> b!1382534 (= res!924236 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32294))))

(declare-fun b!1382535 () Bool)

(declare-fun res!924232 () Bool)

(assert (=> b!1382535 (=> (not res!924232) (not e!783637))))

(assert (=> b!1382535 (= res!924232 (and (= (size!46134 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46134 a!2971))))))

(declare-fun b!1382536 () Bool)

(declare-fun res!924234 () Bool)

(assert (=> b!1382536 (=> (not res!924234) (not e!783637))))

(assert (=> b!1382536 (= res!924234 (and (not (= (select (arr!45583 a!2971) i!1094) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45583 a!2971) i!1094) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt #b00000000000000000000000000000000 (size!46134 a!2971))))))

(declare-fun res!924237 () Bool)

(assert (=> start!118132 (=> (not res!924237) (not e!783637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118132 (= res!924237 (validMask!0 mask!3034))))

(assert (=> start!118132 e!783637))

(assert (=> start!118132 true))

(declare-fun array_inv!34528 (array!94412) Bool)

(assert (=> start!118132 (array_inv!34528 a!2971)))

(assert (= (and start!118132 res!924237) b!1382535))

(assert (= (and b!1382535 res!924232) b!1382533))

(assert (= (and b!1382533 res!924233) b!1382534))

(assert (= (and b!1382534 res!924236) b!1382532))

(assert (= (and b!1382532 res!924235) b!1382536))

(assert (= (and b!1382536 res!924234) b!1382531))

(declare-fun m!1267719 () Bool)

(assert (=> b!1382534 m!1267719))

(declare-fun m!1267721 () Bool)

(assert (=> b!1382531 m!1267721))

(declare-fun m!1267723 () Bool)

(assert (=> b!1382531 m!1267723))

(declare-fun m!1267725 () Bool)

(assert (=> b!1382531 m!1267725))

(declare-fun m!1267727 () Bool)

(assert (=> b!1382532 m!1267727))

(declare-fun m!1267729 () Bool)

(assert (=> start!118132 m!1267729))

(declare-fun m!1267731 () Bool)

(assert (=> start!118132 m!1267731))

(declare-fun m!1267733 () Bool)

(assert (=> b!1382536 m!1267733))

(assert (=> b!1382533 m!1267733))

(assert (=> b!1382533 m!1267733))

(declare-fun m!1267735 () Bool)

(assert (=> b!1382533 m!1267735))

(push 1)

(assert (not b!1382534))

(assert (not start!118132))

(assert (not b!1382532))

(assert (not b!1382533))

(assert (not b!1382531))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

