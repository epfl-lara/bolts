; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130958 () Bool)

(assert start!130958)

(declare-fun b!1535596 () Bool)

(declare-fun e!854835 () Bool)

(declare-fun e!854837 () Bool)

(assert (=> b!1535596 (= e!854835 e!854837)))

(declare-fun res!1052821 () Bool)

(assert (=> b!1535596 (=> (not res!1052821) (not e!854837))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101983 0))(
  ( (array!101984 (arr!49203 (Array (_ BitVec 32) (_ BitVec 64))) (size!49754 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101983)

(declare-fun lt!664038 () (_ BitVec 32))

(assert (=> b!1535596 (= res!1052821 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664038 #b00000000000000000000000000000000) (bvslt lt!664038 (size!49754 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535596 (= lt!664038 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535597 () Bool)

(declare-fun res!1052825 () Bool)

(assert (=> b!1535597 (=> (not res!1052825) (not e!854835))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1535597 (= res!1052825 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49754 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49754 a!2792)) (= (select (arr!49203 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535598 () Bool)

(declare-fun res!1052824 () Bool)

(assert (=> b!1535598 (=> (not res!1052824) (not e!854835))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535598 (= res!1052824 (and (= (size!49754 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49754 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49754 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535599 () Bool)

(declare-fun res!1052820 () Bool)

(assert (=> b!1535599 (=> (not res!1052820) (not e!854835))))

(declare-datatypes ((SeekEntryResult!13358 0))(
  ( (MissingZero!13358 (index!55826 (_ BitVec 32))) (Found!13358 (index!55827 (_ BitVec 32))) (Intermediate!13358 (undefined!14170 Bool) (index!55828 (_ BitVec 32)) (x!137571 (_ BitVec 32))) (Undefined!13358) (MissingVacant!13358 (index!55829 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101983 (_ BitVec 32)) SeekEntryResult!13358)

(assert (=> b!1535599 (= res!1052820 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49203 a!2792) j!64) a!2792 mask!2480) (Found!13358 j!64)))))

(declare-fun b!1535600 () Bool)

(declare-fun res!1052826 () Bool)

(assert (=> b!1535600 (=> (not res!1052826) (not e!854835))))

(assert (=> b!1535600 (= res!1052826 (not (= (select (arr!49203 a!2792) index!463) (select (arr!49203 a!2792) j!64))))))

(declare-fun b!1535601 () Bool)

(declare-fun res!1052827 () Bool)

(assert (=> b!1535601 (=> (not res!1052827) (not e!854835))))

(declare-datatypes ((List!35857 0))(
  ( (Nil!35854) (Cons!35853 (h!37299 (_ BitVec 64)) (t!50558 List!35857)) )
))
(declare-fun arrayNoDuplicates!0 (array!101983 (_ BitVec 32) List!35857) Bool)

(assert (=> b!1535601 (= res!1052827 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35854))))

(declare-fun b!1535602 () Bool)

(assert (=> b!1535602 (= e!854837 false)))

(declare-fun lt!664039 () SeekEntryResult!13358)

(assert (=> b!1535602 (= lt!664039 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664038 vacantIndex!5 (select (arr!49203 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535603 () Bool)

(declare-fun res!1052822 () Bool)

(assert (=> b!1535603 (=> (not res!1052822) (not e!854835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101983 (_ BitVec 32)) Bool)

(assert (=> b!1535603 (= res!1052822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1052823 () Bool)

(assert (=> start!130958 (=> (not res!1052823) (not e!854835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130958 (= res!1052823 (validMask!0 mask!2480))))

(assert (=> start!130958 e!854835))

(assert (=> start!130958 true))

(declare-fun array_inv!38148 (array!101983) Bool)

(assert (=> start!130958 (array_inv!38148 a!2792)))

(declare-fun b!1535604 () Bool)

(declare-fun res!1052828 () Bool)

(assert (=> b!1535604 (=> (not res!1052828) (not e!854835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535604 (= res!1052828 (validKeyInArray!0 (select (arr!49203 a!2792) i!951)))))

(declare-fun b!1535605 () Bool)

(declare-fun res!1052829 () Bool)

(assert (=> b!1535605 (=> (not res!1052829) (not e!854835))))

(assert (=> b!1535605 (= res!1052829 (validKeyInArray!0 (select (arr!49203 a!2792) j!64)))))

(assert (= (and start!130958 res!1052823) b!1535598))

(assert (= (and b!1535598 res!1052824) b!1535604))

(assert (= (and b!1535604 res!1052828) b!1535605))

(assert (= (and b!1535605 res!1052829) b!1535603))

(assert (= (and b!1535603 res!1052822) b!1535601))

(assert (= (and b!1535601 res!1052827) b!1535597))

(assert (= (and b!1535597 res!1052825) b!1535599))

(assert (= (and b!1535599 res!1052820) b!1535600))

(assert (= (and b!1535600 res!1052826) b!1535596))

(assert (= (and b!1535596 res!1052821) b!1535602))

(declare-fun m!1418125 () Bool)

(assert (=> b!1535600 m!1418125))

(declare-fun m!1418127 () Bool)

(assert (=> b!1535600 m!1418127))

(declare-fun m!1418129 () Bool)

(assert (=> b!1535601 m!1418129))

(declare-fun m!1418131 () Bool)

(assert (=> b!1535596 m!1418131))

(assert (=> b!1535599 m!1418127))

(assert (=> b!1535599 m!1418127))

(declare-fun m!1418133 () Bool)

(assert (=> b!1535599 m!1418133))

(declare-fun m!1418135 () Bool)

(assert (=> b!1535603 m!1418135))

(assert (=> b!1535605 m!1418127))

(assert (=> b!1535605 m!1418127))

(declare-fun m!1418137 () Bool)

(assert (=> b!1535605 m!1418137))

(declare-fun m!1418139 () Bool)

(assert (=> start!130958 m!1418139))

(declare-fun m!1418141 () Bool)

(assert (=> start!130958 m!1418141))

(declare-fun m!1418143 () Bool)

(assert (=> b!1535597 m!1418143))

(declare-fun m!1418145 () Bool)

(assert (=> b!1535604 m!1418145))

(assert (=> b!1535604 m!1418145))

(declare-fun m!1418147 () Bool)

(assert (=> b!1535604 m!1418147))

(assert (=> b!1535602 m!1418127))

(assert (=> b!1535602 m!1418127))

(declare-fun m!1418149 () Bool)

(assert (=> b!1535602 m!1418149))

(push 1)

(assert (not start!130958))

(assert (not b!1535596))

(assert (not b!1535605))

(assert (not b!1535601))

(assert (not b!1535599))

(assert (not b!1535603))

(assert (not b!1535602))

(assert (not b!1535604))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

