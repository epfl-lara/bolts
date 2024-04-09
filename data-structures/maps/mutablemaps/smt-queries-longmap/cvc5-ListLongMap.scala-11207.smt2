; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130906 () Bool)

(assert start!130906)

(declare-fun b!1534816 () Bool)

(declare-fun res!1052042 () Bool)

(declare-fun e!854601 () Bool)

(assert (=> b!1534816 (=> (not res!1052042) (not e!854601))))

(declare-datatypes ((array!101931 0))(
  ( (array!101932 (arr!49177 (Array (_ BitVec 32) (_ BitVec 64))) (size!49728 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101931)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534816 (= res!1052042 (validKeyInArray!0 (select (arr!49177 a!2792) j!64)))))

(declare-fun b!1534817 () Bool)

(declare-fun res!1052048 () Bool)

(assert (=> b!1534817 (=> (not res!1052048) (not e!854601))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13332 0))(
  ( (MissingZero!13332 (index!55722 (_ BitVec 32))) (Found!13332 (index!55723 (_ BitVec 32))) (Intermediate!13332 (undefined!14144 Bool) (index!55724 (_ BitVec 32)) (x!137481 (_ BitVec 32))) (Undefined!13332) (MissingVacant!13332 (index!55725 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101931 (_ BitVec 32)) SeekEntryResult!13332)

(assert (=> b!1534817 (= res!1052048 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49177 a!2792) j!64) a!2792 mask!2480) (Found!13332 j!64)))))

(declare-fun b!1534818 () Bool)

(declare-fun e!854602 () Bool)

(assert (=> b!1534818 (= e!854601 e!854602)))

(declare-fun res!1052049 () Bool)

(assert (=> b!1534818 (=> (not res!1052049) (not e!854602))))

(declare-fun lt!663882 () (_ BitVec 32))

(assert (=> b!1534818 (= res!1052049 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663882 #b00000000000000000000000000000000) (bvslt lt!663882 (size!49728 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534818 (= lt!663882 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534819 () Bool)

(declare-fun res!1052047 () Bool)

(assert (=> b!1534819 (=> (not res!1052047) (not e!854601))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534819 (= res!1052047 (validKeyInArray!0 (select (arr!49177 a!2792) i!951)))))

(declare-fun b!1534821 () Bool)

(declare-fun res!1052041 () Bool)

(assert (=> b!1534821 (=> (not res!1052041) (not e!854601))))

(assert (=> b!1534821 (= res!1052041 (not (= (select (arr!49177 a!2792) index!463) (select (arr!49177 a!2792) j!64))))))

(declare-fun b!1534822 () Bool)

(declare-fun res!1052045 () Bool)

(assert (=> b!1534822 (=> (not res!1052045) (not e!854601))))

(assert (=> b!1534822 (= res!1052045 (and (= (size!49728 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49728 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49728 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534823 () Bool)

(declare-fun res!1052044 () Bool)

(assert (=> b!1534823 (=> (not res!1052044) (not e!854601))))

(declare-datatypes ((List!35831 0))(
  ( (Nil!35828) (Cons!35827 (h!37273 (_ BitVec 64)) (t!50532 List!35831)) )
))
(declare-fun arrayNoDuplicates!0 (array!101931 (_ BitVec 32) List!35831) Bool)

(assert (=> b!1534823 (= res!1052044 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35828))))

(declare-fun b!1534824 () Bool)

(declare-fun res!1052040 () Bool)

(assert (=> b!1534824 (=> (not res!1052040) (not e!854601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101931 (_ BitVec 32)) Bool)

(assert (=> b!1534824 (= res!1052040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534825 () Bool)

(assert (=> b!1534825 (= e!854602 false)))

(declare-fun lt!663883 () SeekEntryResult!13332)

(assert (=> b!1534825 (= lt!663883 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663882 vacantIndex!5 (select (arr!49177 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534820 () Bool)

(declare-fun res!1052046 () Bool)

(assert (=> b!1534820 (=> (not res!1052046) (not e!854601))))

(assert (=> b!1534820 (= res!1052046 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49728 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49728 a!2792)) (= (select (arr!49177 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1052043 () Bool)

(assert (=> start!130906 (=> (not res!1052043) (not e!854601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130906 (= res!1052043 (validMask!0 mask!2480))))

(assert (=> start!130906 e!854601))

(assert (=> start!130906 true))

(declare-fun array_inv!38122 (array!101931) Bool)

(assert (=> start!130906 (array_inv!38122 a!2792)))

(assert (= (and start!130906 res!1052043) b!1534822))

(assert (= (and b!1534822 res!1052045) b!1534819))

(assert (= (and b!1534819 res!1052047) b!1534816))

(assert (= (and b!1534816 res!1052042) b!1534824))

(assert (= (and b!1534824 res!1052040) b!1534823))

(assert (= (and b!1534823 res!1052044) b!1534820))

(assert (= (and b!1534820 res!1052046) b!1534817))

(assert (= (and b!1534817 res!1052048) b!1534821))

(assert (= (and b!1534821 res!1052041) b!1534818))

(assert (= (and b!1534818 res!1052049) b!1534825))

(declare-fun m!1417449 () Bool)

(assert (=> start!130906 m!1417449))

(declare-fun m!1417451 () Bool)

(assert (=> start!130906 m!1417451))

(declare-fun m!1417453 () Bool)

(assert (=> b!1534820 m!1417453))

(declare-fun m!1417455 () Bool)

(assert (=> b!1534818 m!1417455))

(declare-fun m!1417457 () Bool)

(assert (=> b!1534825 m!1417457))

(assert (=> b!1534825 m!1417457))

(declare-fun m!1417459 () Bool)

(assert (=> b!1534825 m!1417459))

(declare-fun m!1417461 () Bool)

(assert (=> b!1534819 m!1417461))

(assert (=> b!1534819 m!1417461))

(declare-fun m!1417463 () Bool)

(assert (=> b!1534819 m!1417463))

(assert (=> b!1534816 m!1417457))

(assert (=> b!1534816 m!1417457))

(declare-fun m!1417465 () Bool)

(assert (=> b!1534816 m!1417465))

(declare-fun m!1417467 () Bool)

(assert (=> b!1534823 m!1417467))

(declare-fun m!1417469 () Bool)

(assert (=> b!1534821 m!1417469))

(assert (=> b!1534821 m!1417457))

(assert (=> b!1534817 m!1417457))

(assert (=> b!1534817 m!1417457))

(declare-fun m!1417471 () Bool)

(assert (=> b!1534817 m!1417471))

(declare-fun m!1417473 () Bool)

(assert (=> b!1534824 m!1417473))

(push 1)

