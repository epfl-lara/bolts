; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122720 () Bool)

(assert start!122720)

(declare-fun b!1421093 () Bool)

(declare-fun e!803632 () Bool)

(declare-fun e!803630 () Bool)

(assert (=> b!1421093 (= e!803632 e!803630)))

(declare-fun res!956636 () Bool)

(assert (=> b!1421093 (=> (not res!956636) (not e!803630))))

(declare-fun lt!626098 () (_ BitVec 64))

(declare-datatypes ((array!97003 0))(
  ( (array!97004 (arr!46815 (Array (_ BitVec 32) (_ BitVec 64))) (size!47366 (_ BitVec 32))) )
))
(declare-fun lt!626094 () array!97003)

(declare-datatypes ((SeekEntryResult!11122 0))(
  ( (MissingZero!11122 (index!46879 (_ BitVec 32))) (Found!11122 (index!46880 (_ BitVec 32))) (Intermediate!11122 (undefined!11934 Bool) (index!46881 (_ BitVec 32)) (x!128535 (_ BitVec 32))) (Undefined!11122) (MissingVacant!11122 (index!46882 (_ BitVec 32))) )
))
(declare-fun lt!626095 () SeekEntryResult!11122)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97003 (_ BitVec 32)) SeekEntryResult!11122)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421093 (= res!956636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626098 mask!2608) lt!626098 lt!626094 mask!2608) lt!626095))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421093 (= lt!626095 (Intermediate!11122 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97003)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421093 (= lt!626098 (select (store (arr!46815 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421093 (= lt!626094 (array!97004 (store (arr!46815 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47366 a!2831)))))

(declare-fun b!1421094 () Bool)

(declare-fun res!956641 () Bool)

(declare-fun e!803631 () Bool)

(assert (=> b!1421094 (=> (not res!956641) (not e!803631))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421094 (= res!956641 (validKeyInArray!0 (select (arr!46815 a!2831) j!81)))))

(declare-fun b!1421095 () Bool)

(declare-fun res!956646 () Bool)

(assert (=> b!1421095 (=> (not res!956646) (not e!803631))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421095 (= res!956646 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47366 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47366 a!2831))))))

(declare-fun b!1421096 () Bool)

(declare-fun res!956640 () Bool)

(assert (=> b!1421096 (=> (not res!956640) (not e!803631))))

(declare-datatypes ((List!33505 0))(
  ( (Nil!33502) (Cons!33501 (h!34803 (_ BitVec 64)) (t!48206 List!33505)) )
))
(declare-fun arrayNoDuplicates!0 (array!97003 (_ BitVec 32) List!33505) Bool)

(assert (=> b!1421096 (= res!956640 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33502))))

(declare-fun b!1421097 () Bool)

(declare-fun res!956644 () Bool)

(assert (=> b!1421097 (=> (not res!956644) (not e!803631))))

(assert (=> b!1421097 (= res!956644 (validKeyInArray!0 (select (arr!46815 a!2831) i!982)))))

(declare-fun b!1421098 () Bool)

(declare-fun res!956637 () Bool)

(assert (=> b!1421098 (=> (not res!956637) (not e!803630))))

(assert (=> b!1421098 (= res!956637 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626098 lt!626094 mask!2608) lt!626095))))

(declare-fun b!1421099 () Bool)

(declare-fun res!956642 () Bool)

(assert (=> b!1421099 (=> (not res!956642) (not e!803630))))

(assert (=> b!1421099 (= res!956642 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421100 () Bool)

(declare-fun res!956635 () Bool)

(assert (=> b!1421100 (=> (not res!956635) (not e!803630))))

(declare-fun lt!626096 () SeekEntryResult!11122)

(assert (=> b!1421100 (= res!956635 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46815 a!2831) j!81) a!2831 mask!2608) lt!626096))))

(declare-fun b!1421101 () Bool)

(declare-fun res!956638 () Bool)

(assert (=> b!1421101 (=> (not res!956638) (not e!803631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97003 (_ BitVec 32)) Bool)

(assert (=> b!1421101 (= res!956638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!956643 () Bool)

(assert (=> start!122720 (=> (not res!956643) (not e!803631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122720 (= res!956643 (validMask!0 mask!2608))))

(assert (=> start!122720 e!803631))

(assert (=> start!122720 true))

(declare-fun array_inv!35760 (array!97003) Bool)

(assert (=> start!122720 (array_inv!35760 a!2831)))

(declare-fun b!1421102 () Bool)

(assert (=> b!1421102 (= e!803631 e!803632)))

(declare-fun res!956639 () Bool)

(assert (=> b!1421102 (=> (not res!956639) (not e!803632))))

(assert (=> b!1421102 (= res!956639 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46815 a!2831) j!81) mask!2608) (select (arr!46815 a!2831) j!81) a!2831 mask!2608) lt!626096))))

(assert (=> b!1421102 (= lt!626096 (Intermediate!11122 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421103 () Bool)

(assert (=> b!1421103 (= e!803630 (not true))))

(assert (=> b!1421103 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48028 0))(
  ( (Unit!48029) )
))
(declare-fun lt!626097 () Unit!48028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48028)

(assert (=> b!1421103 (= lt!626097 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421104 () Bool)

(declare-fun res!956645 () Bool)

(assert (=> b!1421104 (=> (not res!956645) (not e!803631))))

(assert (=> b!1421104 (= res!956645 (and (= (size!47366 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47366 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47366 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122720 res!956643) b!1421104))

(assert (= (and b!1421104 res!956645) b!1421097))

(assert (= (and b!1421097 res!956644) b!1421094))

(assert (= (and b!1421094 res!956641) b!1421101))

(assert (= (and b!1421101 res!956638) b!1421096))

(assert (= (and b!1421096 res!956640) b!1421095))

(assert (= (and b!1421095 res!956646) b!1421102))

(assert (= (and b!1421102 res!956639) b!1421093))

(assert (= (and b!1421093 res!956636) b!1421100))

(assert (= (and b!1421100 res!956635) b!1421098))

(assert (= (and b!1421098 res!956637) b!1421099))

(assert (= (and b!1421099 res!956642) b!1421103))

(declare-fun m!1311695 () Bool)

(assert (=> b!1421102 m!1311695))

(assert (=> b!1421102 m!1311695))

(declare-fun m!1311697 () Bool)

(assert (=> b!1421102 m!1311697))

(assert (=> b!1421102 m!1311697))

(assert (=> b!1421102 m!1311695))

(declare-fun m!1311699 () Bool)

(assert (=> b!1421102 m!1311699))

(declare-fun m!1311701 () Bool)

(assert (=> b!1421093 m!1311701))

(assert (=> b!1421093 m!1311701))

(declare-fun m!1311703 () Bool)

(assert (=> b!1421093 m!1311703))

(declare-fun m!1311705 () Bool)

(assert (=> b!1421093 m!1311705))

(declare-fun m!1311707 () Bool)

(assert (=> b!1421093 m!1311707))

(declare-fun m!1311709 () Bool)

(assert (=> b!1421101 m!1311709))

(assert (=> b!1421094 m!1311695))

(assert (=> b!1421094 m!1311695))

(declare-fun m!1311711 () Bool)

(assert (=> b!1421094 m!1311711))

(declare-fun m!1311713 () Bool)

(assert (=> b!1421096 m!1311713))

(declare-fun m!1311715 () Bool)

(assert (=> b!1421097 m!1311715))

(assert (=> b!1421097 m!1311715))

(declare-fun m!1311717 () Bool)

(assert (=> b!1421097 m!1311717))

(declare-fun m!1311719 () Bool)

(assert (=> b!1421103 m!1311719))

(declare-fun m!1311721 () Bool)

(assert (=> b!1421103 m!1311721))

(declare-fun m!1311723 () Bool)

(assert (=> b!1421098 m!1311723))

(assert (=> b!1421100 m!1311695))

(assert (=> b!1421100 m!1311695))

(declare-fun m!1311725 () Bool)

(assert (=> b!1421100 m!1311725))

(declare-fun m!1311727 () Bool)

(assert (=> start!122720 m!1311727))

(declare-fun m!1311729 () Bool)

(assert (=> start!122720 m!1311729))

(push 1)

