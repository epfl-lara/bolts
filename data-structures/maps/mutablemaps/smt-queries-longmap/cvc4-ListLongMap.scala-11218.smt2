; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130976 () Bool)

(assert start!130976)

(declare-fun b!1535874 () Bool)

(declare-fun e!854935 () Bool)

(assert (=> b!1535874 (= e!854935 (not true))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102001 0))(
  ( (array!102002 (arr!49212 (Array (_ BitVec 32) (_ BitVec 64))) (size!49763 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102001)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13367 0))(
  ( (MissingZero!13367 (index!55862 (_ BitVec 32))) (Found!13367 (index!55863 (_ BitVec 32))) (Intermediate!13367 (undefined!14179 Bool) (index!55864 (_ BitVec 32)) (x!137604 (_ BitVec 32))) (Undefined!13367) (MissingVacant!13367 (index!55865 (_ BitVec 32))) )
))
(declare-fun lt!664111 () SeekEntryResult!13367)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun lt!664109 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102001 (_ BitVec 32)) SeekEntryResult!13367)

(assert (=> b!1535874 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664109 vacantIndex!5 (select (store (arr!49212 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102002 (store (arr!49212 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49763 a!2792)) mask!2480) lt!664111)))

(declare-datatypes ((Unit!51258 0))(
  ( (Unit!51259) )
))
(declare-fun lt!664110 () Unit!51258)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51258)

(assert (=> b!1535874 (= lt!664110 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664109 vacantIndex!5 mask!2480))))

(declare-fun b!1535875 () Bool)

(declare-fun res!1053107 () Bool)

(declare-fun e!854933 () Bool)

(assert (=> b!1535875 (=> (not res!1053107) (not e!854933))))

(assert (=> b!1535875 (= res!1053107 (and (= (size!49763 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49763 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49763 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535876 () Bool)

(declare-fun res!1053100 () Bool)

(assert (=> b!1535876 (=> (not res!1053100) (not e!854933))))

(declare-datatypes ((List!35866 0))(
  ( (Nil!35863) (Cons!35862 (h!37308 (_ BitVec 64)) (t!50567 List!35866)) )
))
(declare-fun arrayNoDuplicates!0 (array!102001 (_ BitVec 32) List!35866) Bool)

(assert (=> b!1535876 (= res!1053100 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35863))))

(declare-fun res!1053103 () Bool)

(assert (=> start!130976 (=> (not res!1053103) (not e!854933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130976 (= res!1053103 (validMask!0 mask!2480))))

(assert (=> start!130976 e!854933))

(assert (=> start!130976 true))

(declare-fun array_inv!38157 (array!102001) Bool)

(assert (=> start!130976 (array_inv!38157 a!2792)))

(declare-fun b!1535877 () Bool)

(declare-fun res!1053102 () Bool)

(assert (=> b!1535877 (=> (not res!1053102) (not e!854933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535877 (= res!1053102 (validKeyInArray!0 (select (arr!49212 a!2792) i!951)))))

(declare-fun b!1535878 () Bool)

(declare-fun e!854932 () Bool)

(assert (=> b!1535878 (= e!854933 e!854932)))

(declare-fun res!1053105 () Bool)

(assert (=> b!1535878 (=> (not res!1053105) (not e!854932))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun lt!664108 () SeekEntryResult!13367)

(assert (=> b!1535878 (= res!1053105 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49212 a!2792) j!64) a!2792 mask!2480) lt!664108))))

(assert (=> b!1535878 (= lt!664108 (Found!13367 j!64))))

(declare-fun b!1535879 () Bool)

(declare-fun res!1053101 () Bool)

(assert (=> b!1535879 (=> (not res!1053101) (not e!854933))))

(assert (=> b!1535879 (= res!1053101 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49763 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49763 a!2792)) (= (select (arr!49212 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535880 () Bool)

(declare-fun e!854936 () Bool)

(assert (=> b!1535880 (= e!854932 e!854936)))

(declare-fun res!1053098 () Bool)

(assert (=> b!1535880 (=> (not res!1053098) (not e!854936))))

(assert (=> b!1535880 (= res!1053098 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664109 #b00000000000000000000000000000000) (bvslt lt!664109 (size!49763 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535880 (= lt!664109 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535881 () Bool)

(assert (=> b!1535881 (= e!854936 e!854935)))

(declare-fun res!1053108 () Bool)

(assert (=> b!1535881 (=> (not res!1053108) (not e!854935))))

(assert (=> b!1535881 (= res!1053108 (= lt!664111 lt!664108))))

(assert (=> b!1535881 (= lt!664111 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664109 vacantIndex!5 (select (arr!49212 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535882 () Bool)

(declare-fun res!1053099 () Bool)

(assert (=> b!1535882 (=> (not res!1053099) (not e!854933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102001 (_ BitVec 32)) Bool)

(assert (=> b!1535882 (= res!1053099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535883 () Bool)

(declare-fun res!1053106 () Bool)

(assert (=> b!1535883 (=> (not res!1053106) (not e!854932))))

(assert (=> b!1535883 (= res!1053106 (not (= (select (arr!49212 a!2792) index!463) (select (arr!49212 a!2792) j!64))))))

(declare-fun b!1535884 () Bool)

(declare-fun res!1053104 () Bool)

(assert (=> b!1535884 (=> (not res!1053104) (not e!854933))))

(assert (=> b!1535884 (= res!1053104 (validKeyInArray!0 (select (arr!49212 a!2792) j!64)))))

(assert (= (and start!130976 res!1053103) b!1535875))

(assert (= (and b!1535875 res!1053107) b!1535877))

(assert (= (and b!1535877 res!1053102) b!1535884))

(assert (= (and b!1535884 res!1053104) b!1535882))

(assert (= (and b!1535882 res!1053099) b!1535876))

(assert (= (and b!1535876 res!1053100) b!1535879))

(assert (= (and b!1535879 res!1053101) b!1535878))

(assert (= (and b!1535878 res!1053105) b!1535883))

(assert (= (and b!1535883 res!1053106) b!1535880))

(assert (= (and b!1535880 res!1053098) b!1535881))

(assert (= (and b!1535881 res!1053108) b!1535874))

(declare-fun m!1418375 () Bool)

(assert (=> b!1535874 m!1418375))

(declare-fun m!1418377 () Bool)

(assert (=> b!1535874 m!1418377))

(assert (=> b!1535874 m!1418377))

(declare-fun m!1418379 () Bool)

(assert (=> b!1535874 m!1418379))

(declare-fun m!1418381 () Bool)

(assert (=> b!1535874 m!1418381))

(declare-fun m!1418383 () Bool)

(assert (=> b!1535881 m!1418383))

(assert (=> b!1535881 m!1418383))

(declare-fun m!1418385 () Bool)

(assert (=> b!1535881 m!1418385))

(declare-fun m!1418387 () Bool)

(assert (=> start!130976 m!1418387))

(declare-fun m!1418389 () Bool)

(assert (=> start!130976 m!1418389))

(declare-fun m!1418391 () Bool)

(assert (=> b!1535883 m!1418391))

(assert (=> b!1535883 m!1418383))

(declare-fun m!1418393 () Bool)

(assert (=> b!1535877 m!1418393))

(assert (=> b!1535877 m!1418393))

(declare-fun m!1418395 () Bool)

(assert (=> b!1535877 m!1418395))

(declare-fun m!1418397 () Bool)

(assert (=> b!1535880 m!1418397))

(assert (=> b!1535884 m!1418383))

(assert (=> b!1535884 m!1418383))

(declare-fun m!1418399 () Bool)

(assert (=> b!1535884 m!1418399))

(declare-fun m!1418401 () Bool)

(assert (=> b!1535876 m!1418401))

(declare-fun m!1418403 () Bool)

(assert (=> b!1535882 m!1418403))

(assert (=> b!1535878 m!1418383))

(assert (=> b!1535878 m!1418383))

(declare-fun m!1418405 () Bool)

(assert (=> b!1535878 m!1418405))

(declare-fun m!1418407 () Bool)

(assert (=> b!1535879 m!1418407))

(push 1)

(assert (not b!1535878))

(assert (not b!1535881))

(assert (not b!1535876))

(assert (not b!1535884))

