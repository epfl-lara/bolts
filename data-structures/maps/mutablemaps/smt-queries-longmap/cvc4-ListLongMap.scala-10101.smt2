; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119144 () Bool)

(assert start!119144)

(declare-fun res!929730 () Bool)

(declare-fun e!787057 () Bool)

(assert (=> start!119144 (=> (not res!929730) (not e!787057))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119144 (= res!929730 (validMask!0 mask!2840))))

(assert (=> start!119144 e!787057))

(assert (=> start!119144 true))

(declare-datatypes ((array!94999 0))(
  ( (array!95000 (arr!45861 (Array (_ BitVec 32) (_ BitVec 64))) (size!46412 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94999)

(declare-fun array_inv!34806 (array!94999) Bool)

(assert (=> start!119144 (array_inv!34806 a!2901)))

(declare-fun b!1389455 () Bool)

(declare-fun res!929729 () Bool)

(assert (=> b!1389455 (=> (not res!929729) (not e!787057))))

(declare-datatypes ((List!32560 0))(
  ( (Nil!32557) (Cons!32556 (h!33774 (_ BitVec 64)) (t!47261 List!32560)) )
))
(declare-fun arrayNoDuplicates!0 (array!94999 (_ BitVec 32) List!32560) Bool)

(assert (=> b!1389455 (= res!929729 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32557))))

(declare-fun b!1389456 () Bool)

(declare-fun res!929727 () Bool)

(assert (=> b!1389456 (=> (not res!929727) (not e!787057))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389456 (= res!929727 (validKeyInArray!0 (select (arr!45861 a!2901) j!112)))))

(declare-fun b!1389457 () Bool)

(declare-fun res!929725 () Bool)

(assert (=> b!1389457 (=> (not res!929725) (not e!787057))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389457 (= res!929725 (and (= (size!46412 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46412 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46412 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389458 () Bool)

(assert (=> b!1389458 (= e!787057 false)))

(declare-datatypes ((SeekEntryResult!10200 0))(
  ( (MissingZero!10200 (index!43170 (_ BitVec 32))) (Found!10200 (index!43171 (_ BitVec 32))) (Intermediate!10200 (undefined!11012 Bool) (index!43172 (_ BitVec 32)) (x!124865 (_ BitVec 32))) (Undefined!10200) (MissingVacant!10200 (index!43173 (_ BitVec 32))) )
))
(declare-fun lt!610522 () SeekEntryResult!10200)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!94999 (_ BitVec 32)) SeekEntryResult!10200)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389458 (= lt!610522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45861 a!2901) j!112) mask!2840) (select (arr!45861 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1389459 () Bool)

(declare-fun res!929728 () Bool)

(assert (=> b!1389459 (=> (not res!929728) (not e!787057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94999 (_ BitVec 32)) Bool)

(assert (=> b!1389459 (= res!929728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1389460 () Bool)

(declare-fun res!929726 () Bool)

(assert (=> b!1389460 (=> (not res!929726) (not e!787057))))

(assert (=> b!1389460 (= res!929726 (validKeyInArray!0 (select (arr!45861 a!2901) i!1037)))))

(assert (= (and start!119144 res!929730) b!1389457))

(assert (= (and b!1389457 res!929725) b!1389460))

(assert (= (and b!1389460 res!929726) b!1389456))

(assert (= (and b!1389456 res!929727) b!1389459))

(assert (= (and b!1389459 res!929728) b!1389455))

(assert (= (and b!1389455 res!929729) b!1389458))

(declare-fun m!1275159 () Bool)

(assert (=> b!1389455 m!1275159))

(declare-fun m!1275161 () Bool)

(assert (=> start!119144 m!1275161))

(declare-fun m!1275163 () Bool)

(assert (=> start!119144 m!1275163))

(declare-fun m!1275165 () Bool)

(assert (=> b!1389458 m!1275165))

(assert (=> b!1389458 m!1275165))

(declare-fun m!1275167 () Bool)

(assert (=> b!1389458 m!1275167))

(assert (=> b!1389458 m!1275167))

(assert (=> b!1389458 m!1275165))

(declare-fun m!1275169 () Bool)

(assert (=> b!1389458 m!1275169))

(declare-fun m!1275171 () Bool)

(assert (=> b!1389460 m!1275171))

(assert (=> b!1389460 m!1275171))

(declare-fun m!1275173 () Bool)

(assert (=> b!1389460 m!1275173))

(declare-fun m!1275175 () Bool)

(assert (=> b!1389459 m!1275175))

(assert (=> b!1389456 m!1275165))

(assert (=> b!1389456 m!1275165))

(declare-fun m!1275177 () Bool)

(assert (=> b!1389456 m!1275177))

(push 1)

(assert (not b!1389460))

(assert (not b!1389458))

(assert (not start!119144))

(assert (not b!1389459))

(assert (not b!1389455))

(assert (not b!1389456))

(check-sat)

(pop 1)

(push 1)

