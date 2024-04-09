; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119142 () Bool)

(assert start!119142)

(declare-fun b!1389437 () Bool)

(declare-fun res!929709 () Bool)

(declare-fun e!787051 () Bool)

(assert (=> b!1389437 (=> (not res!929709) (not e!787051))))

(declare-datatypes ((array!94997 0))(
  ( (array!94998 (arr!45860 (Array (_ BitVec 32) (_ BitVec 64))) (size!46411 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94997)

(declare-datatypes ((List!32559 0))(
  ( (Nil!32556) (Cons!32555 (h!33773 (_ BitVec 64)) (t!47260 List!32559)) )
))
(declare-fun arrayNoDuplicates!0 (array!94997 (_ BitVec 32) List!32559) Bool)

(assert (=> b!1389437 (= res!929709 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32556))))

(declare-fun b!1389438 () Bool)

(declare-fun res!929708 () Bool)

(assert (=> b!1389438 (=> (not res!929708) (not e!787051))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94997 (_ BitVec 32)) Bool)

(assert (=> b!1389438 (= res!929708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389439 () Bool)

(declare-fun res!929711 () Bool)

(assert (=> b!1389439 (=> (not res!929711) (not e!787051))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389439 (= res!929711 (validKeyInArray!0 (select (arr!45860 a!2901) i!1037)))))

(declare-fun b!1389440 () Bool)

(declare-fun res!929710 () Bool)

(assert (=> b!1389440 (=> (not res!929710) (not e!787051))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1389440 (= res!929710 (validKeyInArray!0 (select (arr!45860 a!2901) j!112)))))

(declare-fun res!929712 () Bool)

(assert (=> start!119142 (=> (not res!929712) (not e!787051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119142 (= res!929712 (validMask!0 mask!2840))))

(assert (=> start!119142 e!787051))

(assert (=> start!119142 true))

(declare-fun array_inv!34805 (array!94997) Bool)

(assert (=> start!119142 (array_inv!34805 a!2901)))

(declare-fun b!1389441 () Bool)

(declare-fun res!929707 () Bool)

(assert (=> b!1389441 (=> (not res!929707) (not e!787051))))

(assert (=> b!1389441 (= res!929707 (and (= (size!46411 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46411 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46411 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389442 () Bool)

(assert (=> b!1389442 (= e!787051 false)))

(declare-datatypes ((SeekEntryResult!10199 0))(
  ( (MissingZero!10199 (index!43166 (_ BitVec 32))) (Found!10199 (index!43167 (_ BitVec 32))) (Intermediate!10199 (undefined!11011 Bool) (index!43168 (_ BitVec 32)) (x!124864 (_ BitVec 32))) (Undefined!10199) (MissingVacant!10199 (index!43169 (_ BitVec 32))) )
))
(declare-fun lt!610519 () SeekEntryResult!10199)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94997 (_ BitVec 32)) SeekEntryResult!10199)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389442 (= lt!610519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45860 a!2901) j!112) mask!2840) (select (arr!45860 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119142 res!929712) b!1389441))

(assert (= (and b!1389441 res!929707) b!1389439))

(assert (= (and b!1389439 res!929711) b!1389440))

(assert (= (and b!1389440 res!929710) b!1389438))

(assert (= (and b!1389438 res!929708) b!1389437))

(assert (= (and b!1389437 res!929709) b!1389442))

(declare-fun m!1275139 () Bool)

(assert (=> b!1389437 m!1275139))

(declare-fun m!1275141 () Bool)

(assert (=> b!1389438 m!1275141))

(declare-fun m!1275143 () Bool)

(assert (=> b!1389440 m!1275143))

(assert (=> b!1389440 m!1275143))

(declare-fun m!1275145 () Bool)

(assert (=> b!1389440 m!1275145))

(assert (=> b!1389442 m!1275143))

(assert (=> b!1389442 m!1275143))

(declare-fun m!1275147 () Bool)

(assert (=> b!1389442 m!1275147))

(assert (=> b!1389442 m!1275147))

(assert (=> b!1389442 m!1275143))

(declare-fun m!1275149 () Bool)

(assert (=> b!1389442 m!1275149))

(declare-fun m!1275151 () Bool)

(assert (=> b!1389439 m!1275151))

(assert (=> b!1389439 m!1275151))

(declare-fun m!1275153 () Bool)

(assert (=> b!1389439 m!1275153))

(declare-fun m!1275155 () Bool)

(assert (=> start!119142 m!1275155))

(declare-fun m!1275157 () Bool)

(assert (=> start!119142 m!1275157))

(check-sat (not b!1389438) (not b!1389440) (not b!1389442) (not b!1389439) (not start!119142) (not b!1389437))
