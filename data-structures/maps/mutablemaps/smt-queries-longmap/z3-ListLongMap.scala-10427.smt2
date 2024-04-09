; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122766 () Bool)

(assert start!122766)

(declare-fun b!1421977 () Bool)

(declare-fun e!803959 () Bool)

(declare-fun e!803957 () Bool)

(assert (=> b!1421977 (= e!803959 e!803957)))

(declare-fun res!957521 () Bool)

(assert (=> b!1421977 (=> (not res!957521) (not e!803957))))

(declare-datatypes ((SeekEntryResult!11145 0))(
  ( (MissingZero!11145 (index!46971 (_ BitVec 32))) (Found!11145 (index!46972 (_ BitVec 32))) (Intermediate!11145 (undefined!11957 Bool) (index!46973 (_ BitVec 32)) (x!128622 (_ BitVec 32))) (Undefined!11145) (MissingVacant!11145 (index!46974 (_ BitVec 32))) )
))
(declare-fun lt!626452 () SeekEntryResult!11145)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97049 0))(
  ( (array!97050 (arr!46838 (Array (_ BitVec 32) (_ BitVec 64))) (size!47389 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97049)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97049 (_ BitVec 32)) SeekEntryResult!11145)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421977 (= res!957521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46838 a!2831) j!81) mask!2608) (select (arr!46838 a!2831) j!81) a!2831 mask!2608) lt!626452))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421977 (= lt!626452 (Intermediate!11145 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421978 () Bool)

(declare-fun res!957522 () Bool)

(assert (=> b!1421978 (=> (not res!957522) (not e!803959))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421978 (= res!957522 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47389 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47389 a!2831))))))

(declare-fun b!1421979 () Bool)

(declare-fun e!803960 () Bool)

(declare-fun e!803958 () Bool)

(assert (=> b!1421979 (= e!803960 e!803958)))

(declare-fun res!957528 () Bool)

(assert (=> b!1421979 (=> res!957528 e!803958)))

(declare-fun lt!626454 () (_ BitVec 32))

(assert (=> b!1421979 (= res!957528 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626454 #b00000000000000000000000000000000) (bvsge lt!626454 (size!47389 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421979 (= lt!626454 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1421980 () Bool)

(declare-fun res!957525 () Bool)

(assert (=> b!1421980 (=> (not res!957525) (not e!803959))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421980 (= res!957525 (and (= (size!47389 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47389 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47389 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421981 () Bool)

(declare-fun e!803961 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97049 (_ BitVec 32)) SeekEntryResult!11145)

(assert (=> b!1421981 (= e!803961 (= (seekEntryOrOpen!0 (select (arr!46838 a!2831) j!81) a!2831 mask!2608) (Found!11145 j!81)))))

(declare-fun b!1421982 () Bool)

(declare-fun res!957527 () Bool)

(assert (=> b!1421982 (=> (not res!957527) (not e!803959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97049 (_ BitVec 32)) Bool)

(assert (=> b!1421982 (= res!957527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!957519 () Bool)

(assert (=> start!122766 (=> (not res!957519) (not e!803959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122766 (= res!957519 (validMask!0 mask!2608))))

(assert (=> start!122766 e!803959))

(assert (=> start!122766 true))

(declare-fun array_inv!35783 (array!97049) Bool)

(assert (=> start!122766 (array_inv!35783 a!2831)))

(declare-fun b!1421983 () Bool)

(declare-fun res!957520 () Bool)

(assert (=> b!1421983 (=> (not res!957520) (not e!803959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421983 (= res!957520 (validKeyInArray!0 (select (arr!46838 a!2831) j!81)))))

(declare-fun b!1421984 () Bool)

(declare-fun res!957524 () Bool)

(assert (=> b!1421984 (=> res!957524 e!803958)))

(assert (=> b!1421984 (= res!957524 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626454 (select (arr!46838 a!2831) j!81) a!2831 mask!2608) lt!626452)))))

(declare-fun b!1421985 () Bool)

(declare-fun res!957534 () Bool)

(assert (=> b!1421985 (=> (not res!957534) (not e!803959))))

(declare-datatypes ((List!33528 0))(
  ( (Nil!33525) (Cons!33524 (h!34826 (_ BitVec 64)) (t!48229 List!33528)) )
))
(declare-fun arrayNoDuplicates!0 (array!97049 (_ BitVec 32) List!33528) Bool)

(assert (=> b!1421985 (= res!957534 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33525))))

(declare-fun b!1421986 () Bool)

(declare-fun e!803963 () Bool)

(assert (=> b!1421986 (= e!803963 (not e!803960))))

(declare-fun res!957529 () Bool)

(assert (=> b!1421986 (=> res!957529 e!803960)))

(assert (=> b!1421986 (= res!957529 (or (= (select (arr!46838 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46838 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46838 a!2831) index!585) (select (arr!46838 a!2831) j!81)) (= (select (store (arr!46838 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1421986 e!803961))

(declare-fun res!957532 () Bool)

(assert (=> b!1421986 (=> (not res!957532) (not e!803961))))

(assert (=> b!1421986 (= res!957532 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48074 0))(
  ( (Unit!48075) )
))
(declare-fun lt!626455 () Unit!48074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97049 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48074)

(assert (=> b!1421986 (= lt!626455 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421987 () Bool)

(declare-fun res!957533 () Bool)

(assert (=> b!1421987 (=> (not res!957533) (not e!803963))))

(declare-fun lt!626450 () (_ BitVec 64))

(declare-fun lt!626449 () array!97049)

(declare-fun lt!626451 () SeekEntryResult!11145)

(assert (=> b!1421987 (= res!957533 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626450 lt!626449 mask!2608) lt!626451))))

(declare-fun b!1421988 () Bool)

(assert (=> b!1421988 (= e!803957 e!803963)))

(declare-fun res!957523 () Bool)

(assert (=> b!1421988 (=> (not res!957523) (not e!803963))))

(assert (=> b!1421988 (= res!957523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626450 mask!2608) lt!626450 lt!626449 mask!2608) lt!626451))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421988 (= lt!626451 (Intermediate!11145 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421988 (= lt!626450 (select (store (arr!46838 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421988 (= lt!626449 (array!97050 (store (arr!46838 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47389 a!2831)))))

(declare-fun b!1421989 () Bool)

(declare-fun res!957530 () Bool)

(assert (=> b!1421989 (=> (not res!957530) (not e!803959))))

(assert (=> b!1421989 (= res!957530 (validKeyInArray!0 (select (arr!46838 a!2831) i!982)))))

(declare-fun b!1421990 () Bool)

(assert (=> b!1421990 (= e!803958 true)))

(declare-fun lt!626453 () SeekEntryResult!11145)

(assert (=> b!1421990 (= lt!626453 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626454 lt!626450 lt!626449 mask!2608))))

(declare-fun b!1421991 () Bool)

(declare-fun res!957531 () Bool)

(assert (=> b!1421991 (=> (not res!957531) (not e!803963))))

(assert (=> b!1421991 (= res!957531 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421992 () Bool)

(declare-fun res!957526 () Bool)

(assert (=> b!1421992 (=> (not res!957526) (not e!803963))))

(assert (=> b!1421992 (= res!957526 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46838 a!2831) j!81) a!2831 mask!2608) lt!626452))))

(assert (= (and start!122766 res!957519) b!1421980))

(assert (= (and b!1421980 res!957525) b!1421989))

(assert (= (and b!1421989 res!957530) b!1421983))

(assert (= (and b!1421983 res!957520) b!1421982))

(assert (= (and b!1421982 res!957527) b!1421985))

(assert (= (and b!1421985 res!957534) b!1421978))

(assert (= (and b!1421978 res!957522) b!1421977))

(assert (= (and b!1421977 res!957521) b!1421988))

(assert (= (and b!1421988 res!957523) b!1421992))

(assert (= (and b!1421992 res!957526) b!1421987))

(assert (= (and b!1421987 res!957533) b!1421991))

(assert (= (and b!1421991 res!957531) b!1421986))

(assert (= (and b!1421986 res!957532) b!1421981))

(assert (= (and b!1421986 (not res!957529)) b!1421979))

(assert (= (and b!1421979 (not res!957528)) b!1421984))

(assert (= (and b!1421984 (not res!957524)) b!1421990))

(declare-fun m!1312583 () Bool)

(assert (=> b!1421986 m!1312583))

(declare-fun m!1312585 () Bool)

(assert (=> b!1421986 m!1312585))

(declare-fun m!1312587 () Bool)

(assert (=> b!1421986 m!1312587))

(declare-fun m!1312589 () Bool)

(assert (=> b!1421986 m!1312589))

(declare-fun m!1312591 () Bool)

(assert (=> b!1421986 m!1312591))

(declare-fun m!1312593 () Bool)

(assert (=> b!1421986 m!1312593))

(declare-fun m!1312595 () Bool)

(assert (=> b!1421987 m!1312595))

(declare-fun m!1312597 () Bool)

(assert (=> b!1421988 m!1312597))

(assert (=> b!1421988 m!1312597))

(declare-fun m!1312599 () Bool)

(assert (=> b!1421988 m!1312599))

(assert (=> b!1421988 m!1312583))

(declare-fun m!1312601 () Bool)

(assert (=> b!1421988 m!1312601))

(assert (=> b!1421983 m!1312591))

(assert (=> b!1421983 m!1312591))

(declare-fun m!1312603 () Bool)

(assert (=> b!1421983 m!1312603))

(assert (=> b!1421984 m!1312591))

(assert (=> b!1421984 m!1312591))

(declare-fun m!1312605 () Bool)

(assert (=> b!1421984 m!1312605))

(declare-fun m!1312607 () Bool)

(assert (=> start!122766 m!1312607))

(declare-fun m!1312609 () Bool)

(assert (=> start!122766 m!1312609))

(declare-fun m!1312611 () Bool)

(assert (=> b!1421985 m!1312611))

(declare-fun m!1312613 () Bool)

(assert (=> b!1421982 m!1312613))

(assert (=> b!1421992 m!1312591))

(assert (=> b!1421992 m!1312591))

(declare-fun m!1312615 () Bool)

(assert (=> b!1421992 m!1312615))

(assert (=> b!1421977 m!1312591))

(assert (=> b!1421977 m!1312591))

(declare-fun m!1312617 () Bool)

(assert (=> b!1421977 m!1312617))

(assert (=> b!1421977 m!1312617))

(assert (=> b!1421977 m!1312591))

(declare-fun m!1312619 () Bool)

(assert (=> b!1421977 m!1312619))

(assert (=> b!1421981 m!1312591))

(assert (=> b!1421981 m!1312591))

(declare-fun m!1312621 () Bool)

(assert (=> b!1421981 m!1312621))

(declare-fun m!1312623 () Bool)

(assert (=> b!1421979 m!1312623))

(declare-fun m!1312625 () Bool)

(assert (=> b!1421990 m!1312625))

(declare-fun m!1312627 () Bool)

(assert (=> b!1421989 m!1312627))

(assert (=> b!1421989 m!1312627))

(declare-fun m!1312629 () Bool)

(assert (=> b!1421989 m!1312629))

(check-sat (not b!1421989) (not b!1421987) (not b!1421981) (not b!1421984) (not b!1421992) (not b!1421985) (not b!1421986) (not b!1421982) (not b!1421988) (not b!1421990) (not b!1421983) (not b!1421977) (not start!122766) (not b!1421979))
(check-sat)
