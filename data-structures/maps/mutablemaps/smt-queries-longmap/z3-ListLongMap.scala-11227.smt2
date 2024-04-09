; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131028 () Bool)

(assert start!131028)

(declare-fun b!1536741 () Bool)

(declare-fun e!855332 () Bool)

(declare-fun e!855333 () Bool)

(assert (=> b!1536741 (= e!855332 e!855333)))

(declare-fun res!1053975 () Bool)

(assert (=> b!1536741 (=> (not res!1053975) (not e!855333))))

(declare-datatypes ((SeekEntryResult!13393 0))(
  ( (MissingZero!13393 (index!55966 (_ BitVec 32))) (Found!13393 (index!55967 (_ BitVec 32))) (Intermediate!13393 (undefined!14205 Bool) (index!55968 (_ BitVec 32)) (x!137702 (_ BitVec 32))) (Undefined!13393) (MissingVacant!13393 (index!55969 (_ BitVec 32))) )
))
(declare-fun lt!664430 () SeekEntryResult!13393)

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102053 0))(
  ( (array!102054 (arr!49238 (Array (_ BitVec 32) (_ BitVec 64))) (size!49789 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102053)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102053 (_ BitVec 32)) SeekEntryResult!13393)

(assert (=> b!1536741 (= res!1053975 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49238 a!2792) j!64) a!2792 mask!2480) lt!664430))))

(assert (=> b!1536741 (= lt!664430 (Found!13393 j!64))))

(declare-fun b!1536742 () Bool)

(declare-fun e!855334 () Bool)

(assert (=> b!1536742 (= e!855334 (not (bvsge mask!2480 #b00000000000000000000000000000000)))))

(declare-fun lt!664432 () SeekEntryResult!13393)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun lt!664431 () (_ BitVec 32))

(assert (=> b!1536742 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664431 vacantIndex!5 (select (store (arr!49238 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102054 (store (arr!49238 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49789 a!2792)) mask!2480) lt!664432)))

(declare-datatypes ((Unit!51310 0))(
  ( (Unit!51311) )
))
(declare-fun lt!664429 () Unit!51310)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51310)

(assert (=> b!1536742 (= lt!664429 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664431 vacantIndex!5 mask!2480))))

(declare-fun b!1536743 () Bool)

(declare-fun res!1053967 () Bool)

(assert (=> b!1536743 (=> (not res!1053967) (not e!855332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102053 (_ BitVec 32)) Bool)

(assert (=> b!1536743 (= res!1053967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536744 () Bool)

(declare-fun res!1053969 () Bool)

(assert (=> b!1536744 (=> (not res!1053969) (not e!855333))))

(assert (=> b!1536744 (= res!1053969 (not (= (select (arr!49238 a!2792) index!463) (select (arr!49238 a!2792) j!64))))))

(declare-fun b!1536745 () Bool)

(declare-fun res!1053971 () Bool)

(assert (=> b!1536745 (=> (not res!1053971) (not e!855332))))

(assert (=> b!1536745 (= res!1053971 (and (= (size!49789 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49789 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49789 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536746 () Bool)

(declare-fun res!1053972 () Bool)

(assert (=> b!1536746 (=> (not res!1053972) (not e!855332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536746 (= res!1053972 (validKeyInArray!0 (select (arr!49238 a!2792) i!951)))))

(declare-fun res!1053966 () Bool)

(assert (=> start!131028 (=> (not res!1053966) (not e!855332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131028 (= res!1053966 (validMask!0 mask!2480))))

(assert (=> start!131028 e!855332))

(assert (=> start!131028 true))

(declare-fun array_inv!38183 (array!102053) Bool)

(assert (=> start!131028 (array_inv!38183 a!2792)))

(declare-fun b!1536747 () Bool)

(declare-fun res!1053973 () Bool)

(assert (=> b!1536747 (=> (not res!1053973) (not e!855332))))

(declare-datatypes ((List!35892 0))(
  ( (Nil!35889) (Cons!35888 (h!37334 (_ BitVec 64)) (t!50593 List!35892)) )
))
(declare-fun arrayNoDuplicates!0 (array!102053 (_ BitVec 32) List!35892) Bool)

(assert (=> b!1536747 (= res!1053973 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35889))))

(declare-fun b!1536748 () Bool)

(declare-fun e!855331 () Bool)

(assert (=> b!1536748 (= e!855333 e!855331)))

(declare-fun res!1053970 () Bool)

(assert (=> b!1536748 (=> (not res!1053970) (not e!855331))))

(assert (=> b!1536748 (= res!1053970 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664431 #b00000000000000000000000000000000) (bvslt lt!664431 (size!49789 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536748 (= lt!664431 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536749 () Bool)

(assert (=> b!1536749 (= e!855331 e!855334)))

(declare-fun res!1053974 () Bool)

(assert (=> b!1536749 (=> (not res!1053974) (not e!855334))))

(assert (=> b!1536749 (= res!1053974 (= lt!664432 lt!664430))))

(assert (=> b!1536749 (= lt!664432 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664431 vacantIndex!5 (select (arr!49238 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536750 () Bool)

(declare-fun res!1053968 () Bool)

(assert (=> b!1536750 (=> (not res!1053968) (not e!855332))))

(assert (=> b!1536750 (= res!1053968 (validKeyInArray!0 (select (arr!49238 a!2792) j!64)))))

(declare-fun b!1536751 () Bool)

(declare-fun res!1053965 () Bool)

(assert (=> b!1536751 (=> (not res!1053965) (not e!855332))))

(assert (=> b!1536751 (= res!1053965 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49789 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49789 a!2792)) (= (select (arr!49238 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!131028 res!1053966) b!1536745))

(assert (= (and b!1536745 res!1053971) b!1536746))

(assert (= (and b!1536746 res!1053972) b!1536750))

(assert (= (and b!1536750 res!1053968) b!1536743))

(assert (= (and b!1536743 res!1053967) b!1536747))

(assert (= (and b!1536747 res!1053973) b!1536751))

(assert (= (and b!1536751 res!1053965) b!1536741))

(assert (= (and b!1536741 res!1053975) b!1536744))

(assert (= (and b!1536744 res!1053969) b!1536748))

(assert (= (and b!1536748 res!1053970) b!1536749))

(assert (= (and b!1536749 res!1053974) b!1536742))

(declare-fun m!1419277 () Bool)

(assert (=> start!131028 m!1419277))

(declare-fun m!1419279 () Bool)

(assert (=> start!131028 m!1419279))

(declare-fun m!1419281 () Bool)

(assert (=> b!1536741 m!1419281))

(assert (=> b!1536741 m!1419281))

(declare-fun m!1419283 () Bool)

(assert (=> b!1536741 m!1419283))

(declare-fun m!1419285 () Bool)

(assert (=> b!1536744 m!1419285))

(assert (=> b!1536744 m!1419281))

(declare-fun m!1419287 () Bool)

(assert (=> b!1536747 m!1419287))

(declare-fun m!1419289 () Bool)

(assert (=> b!1536751 m!1419289))

(declare-fun m!1419291 () Bool)

(assert (=> b!1536742 m!1419291))

(declare-fun m!1419293 () Bool)

(assert (=> b!1536742 m!1419293))

(assert (=> b!1536742 m!1419293))

(declare-fun m!1419295 () Bool)

(assert (=> b!1536742 m!1419295))

(declare-fun m!1419297 () Bool)

(assert (=> b!1536742 m!1419297))

(declare-fun m!1419299 () Bool)

(assert (=> b!1536746 m!1419299))

(assert (=> b!1536746 m!1419299))

(declare-fun m!1419301 () Bool)

(assert (=> b!1536746 m!1419301))

(assert (=> b!1536750 m!1419281))

(assert (=> b!1536750 m!1419281))

(declare-fun m!1419303 () Bool)

(assert (=> b!1536750 m!1419303))

(declare-fun m!1419305 () Bool)

(assert (=> b!1536748 m!1419305))

(declare-fun m!1419307 () Bool)

(assert (=> b!1536743 m!1419307))

(assert (=> b!1536749 m!1419281))

(assert (=> b!1536749 m!1419281))

(declare-fun m!1419309 () Bool)

(assert (=> b!1536749 m!1419309))

(check-sat (not b!1536746) (not start!131028) (not b!1536749) (not b!1536741) (not b!1536747) (not b!1536748) (not b!1536742) (not b!1536750) (not b!1536743))
(check-sat)
