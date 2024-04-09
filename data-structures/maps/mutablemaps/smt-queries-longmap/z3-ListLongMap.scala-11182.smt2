; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130758 () Bool)

(assert start!130758)

(declare-fun b!1533022 () Bool)

(declare-fun res!1050251 () Bool)

(declare-fun e!854111 () Bool)

(assert (=> b!1533022 (=> (not res!1050251) (not e!854111))))

(declare-datatypes ((array!101783 0))(
  ( (array!101784 (arr!49103 (Array (_ BitVec 32) (_ BitVec 64))) (size!49654 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101783)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533022 (= res!1050251 (validKeyInArray!0 (select (arr!49103 a!2792) j!64)))))

(declare-fun b!1533023 () Bool)

(declare-fun res!1050247 () Bool)

(assert (=> b!1533023 (=> (not res!1050247) (not e!854111))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101783 (_ BitVec 32)) Bool)

(assert (=> b!1533023 (= res!1050247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533024 () Bool)

(declare-fun res!1050248 () Bool)

(assert (=> b!1533024 (=> (not res!1050248) (not e!854111))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533024 (= res!1050248 (and (= (size!49654 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49654 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49654 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533025 () Bool)

(declare-fun res!1050250 () Bool)

(assert (=> b!1533025 (=> (not res!1050250) (not e!854111))))

(assert (=> b!1533025 (= res!1050250 (validKeyInArray!0 (select (arr!49103 a!2792) i!951)))))

(declare-fun b!1533026 () Bool)

(declare-fun res!1050252 () Bool)

(assert (=> b!1533026 (=> (not res!1050252) (not e!854111))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533026 (= res!1050252 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49654 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49654 a!2792)) (= (select (arr!49103 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1050246 () Bool)

(assert (=> start!130758 (=> (not res!1050246) (not e!854111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130758 (= res!1050246 (validMask!0 mask!2480))))

(assert (=> start!130758 e!854111))

(assert (=> start!130758 true))

(declare-fun array_inv!38048 (array!101783) Bool)

(assert (=> start!130758 (array_inv!38048 a!2792)))

(declare-fun b!1533027 () Bool)

(declare-fun res!1050249 () Bool)

(assert (=> b!1533027 (=> (not res!1050249) (not e!854111))))

(declare-datatypes ((List!35757 0))(
  ( (Nil!35754) (Cons!35753 (h!37199 (_ BitVec 64)) (t!50458 List!35757)) )
))
(declare-fun arrayNoDuplicates!0 (array!101783 (_ BitVec 32) List!35757) Bool)

(assert (=> b!1533027 (= res!1050249 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35754))))

(declare-fun b!1533028 () Bool)

(assert (=> b!1533028 (= e!854111 false)))

(declare-datatypes ((SeekEntryResult!13258 0))(
  ( (MissingZero!13258 (index!55426 (_ BitVec 32))) (Found!13258 (index!55427 (_ BitVec 32))) (Intermediate!13258 (undefined!14070 Bool) (index!55428 (_ BitVec 32)) (x!137207 (_ BitVec 32))) (Undefined!13258) (MissingVacant!13258 (index!55429 (_ BitVec 32))) )
))
(declare-fun lt!663703 () SeekEntryResult!13258)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101783 (_ BitVec 32)) SeekEntryResult!13258)

(assert (=> b!1533028 (= lt!663703 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49103 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130758 res!1050246) b!1533024))

(assert (= (and b!1533024 res!1050248) b!1533025))

(assert (= (and b!1533025 res!1050250) b!1533022))

(assert (= (and b!1533022 res!1050251) b!1533023))

(assert (= (and b!1533023 res!1050247) b!1533027))

(assert (= (and b!1533027 res!1050249) b!1533026))

(assert (= (and b!1533026 res!1050252) b!1533028))

(declare-fun m!1415783 () Bool)

(assert (=> b!1533025 m!1415783))

(assert (=> b!1533025 m!1415783))

(declare-fun m!1415785 () Bool)

(assert (=> b!1533025 m!1415785))

(declare-fun m!1415787 () Bool)

(assert (=> b!1533023 m!1415787))

(declare-fun m!1415789 () Bool)

(assert (=> b!1533027 m!1415789))

(declare-fun m!1415791 () Bool)

(assert (=> b!1533026 m!1415791))

(declare-fun m!1415793 () Bool)

(assert (=> b!1533028 m!1415793))

(assert (=> b!1533028 m!1415793))

(declare-fun m!1415795 () Bool)

(assert (=> b!1533028 m!1415795))

(declare-fun m!1415797 () Bool)

(assert (=> start!130758 m!1415797))

(declare-fun m!1415799 () Bool)

(assert (=> start!130758 m!1415799))

(assert (=> b!1533022 m!1415793))

(assert (=> b!1533022 m!1415793))

(declare-fun m!1415801 () Bool)

(assert (=> b!1533022 m!1415801))

(check-sat (not b!1533022) (not b!1533023) (not b!1533028) (not b!1533025) (not b!1533027) (not start!130758))
