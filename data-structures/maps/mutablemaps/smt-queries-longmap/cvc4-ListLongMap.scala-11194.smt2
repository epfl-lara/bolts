; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130832 () Bool)

(assert start!130832)

(declare-fun b!1533872 () Bool)

(declare-fun res!1051098 () Bool)

(declare-fun e!854333 () Bool)

(assert (=> b!1533872 (=> (not res!1051098) (not e!854333))))

(declare-datatypes ((array!101857 0))(
  ( (array!101858 (arr!49140 (Array (_ BitVec 32) (_ BitVec 64))) (size!49691 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101857)

(declare-datatypes ((List!35794 0))(
  ( (Nil!35791) (Cons!35790 (h!37236 (_ BitVec 64)) (t!50495 List!35794)) )
))
(declare-fun arrayNoDuplicates!0 (array!101857 (_ BitVec 32) List!35794) Bool)

(assert (=> b!1533872 (= res!1051098 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35791))))

(declare-fun b!1533873 () Bool)

(declare-fun res!1051097 () Bool)

(assert (=> b!1533873 (=> (not res!1051097) (not e!854333))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101857 (_ BitVec 32)) Bool)

(assert (=> b!1533873 (= res!1051097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533874 () Bool)

(assert (=> b!1533874 (= e!854333 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13295 0))(
  ( (MissingZero!13295 (index!55574 (_ BitVec 32))) (Found!13295 (index!55575 (_ BitVec 32))) (Intermediate!13295 (undefined!14107 Bool) (index!55576 (_ BitVec 32)) (x!137340 (_ BitVec 32))) (Undefined!13295) (MissingVacant!13295 (index!55577 (_ BitVec 32))) )
))
(declare-fun lt!663751 () SeekEntryResult!13295)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101857 (_ BitVec 32)) SeekEntryResult!13295)

(assert (=> b!1533874 (= lt!663751 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49140 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533875 () Bool)

(declare-fun res!1051095 () Bool)

(assert (=> b!1533875 (=> (not res!1051095) (not e!854333))))

(assert (=> b!1533875 (= res!1051095 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49691 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49691 a!2792)) (= (select (arr!49140 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533876 () Bool)

(declare-fun res!1051101 () Bool)

(assert (=> b!1533876 (=> (not res!1051101) (not e!854333))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533876 (= res!1051101 (validKeyInArray!0 (select (arr!49140 a!2792) i!951)))))

(declare-fun b!1533877 () Bool)

(declare-fun res!1051100 () Bool)

(assert (=> b!1533877 (=> (not res!1051100) (not e!854333))))

(assert (=> b!1533877 (= res!1051100 (validKeyInArray!0 (select (arr!49140 a!2792) j!64)))))

(declare-fun res!1051096 () Bool)

(assert (=> start!130832 (=> (not res!1051096) (not e!854333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130832 (= res!1051096 (validMask!0 mask!2480))))

(assert (=> start!130832 e!854333))

(assert (=> start!130832 true))

(declare-fun array_inv!38085 (array!101857) Bool)

(assert (=> start!130832 (array_inv!38085 a!2792)))

(declare-fun b!1533871 () Bool)

(declare-fun res!1051099 () Bool)

(assert (=> b!1533871 (=> (not res!1051099) (not e!854333))))

(assert (=> b!1533871 (= res!1051099 (and (= (size!49691 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49691 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49691 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130832 res!1051096) b!1533871))

(assert (= (and b!1533871 res!1051099) b!1533876))

(assert (= (and b!1533876 res!1051101) b!1533877))

(assert (= (and b!1533877 res!1051100) b!1533873))

(assert (= (and b!1533873 res!1051097) b!1533872))

(assert (= (and b!1533872 res!1051098) b!1533875))

(assert (= (and b!1533875 res!1051095) b!1533874))

(declare-fun m!1416601 () Bool)

(assert (=> start!130832 m!1416601))

(declare-fun m!1416603 () Bool)

(assert (=> start!130832 m!1416603))

(declare-fun m!1416605 () Bool)

(assert (=> b!1533872 m!1416605))

(declare-fun m!1416607 () Bool)

(assert (=> b!1533877 m!1416607))

(assert (=> b!1533877 m!1416607))

(declare-fun m!1416609 () Bool)

(assert (=> b!1533877 m!1416609))

(declare-fun m!1416611 () Bool)

(assert (=> b!1533875 m!1416611))

(assert (=> b!1533874 m!1416607))

(assert (=> b!1533874 m!1416607))

(declare-fun m!1416613 () Bool)

(assert (=> b!1533874 m!1416613))

(declare-fun m!1416615 () Bool)

(assert (=> b!1533873 m!1416615))

(declare-fun m!1416617 () Bool)

(assert (=> b!1533876 m!1416617))

(assert (=> b!1533876 m!1416617))

(declare-fun m!1416619 () Bool)

(assert (=> b!1533876 m!1416619))

(push 1)

(assert (not b!1533877))

(assert (not b!1533873))

(assert (not b!1533874))

(assert (not b!1533872))

(assert (not start!130832))

(assert (not b!1533876))

(check-sat)

