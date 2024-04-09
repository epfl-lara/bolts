; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125016 () Bool)

(assert start!125016)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!637011 () (_ BitVec 64))

(declare-fun b!1452788 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!817804 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98381 0))(
  ( (array!98382 (arr!47474 (Array (_ BitVec 32) (_ BitVec 64))) (size!48025 (_ BitVec 32))) )
))
(declare-fun lt!637008 () array!98381)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11749 0))(
  ( (MissingZero!11749 (index!49387 (_ BitVec 32))) (Found!11749 (index!49388 (_ BitVec 32))) (Intermediate!11749 (undefined!12561 Bool) (index!49389 (_ BitVec 32)) (x!131033 (_ BitVec 32))) (Undefined!11749) (MissingVacant!11749 (index!49390 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98381 (_ BitVec 32)) SeekEntryResult!11749)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98381 (_ BitVec 32)) SeekEntryResult!11749)

(assert (=> b!1452788 (= e!817804 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637011 lt!637008 mask!2687) (seekEntryOrOpen!0 lt!637011 lt!637008 mask!2687)))))

(declare-fun b!1452789 () Bool)

(declare-fun res!983969 () Bool)

(declare-fun e!817805 () Bool)

(assert (=> b!1452789 (=> (not res!983969) (not e!817805))))

(declare-fun a!2862 () array!98381)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452789 (= res!983969 (validKeyInArray!0 (select (arr!47474 a!2862) i!1006)))))

(declare-fun b!1452790 () Bool)

(declare-fun e!817798 () Bool)

(declare-fun e!817801 () Bool)

(assert (=> b!1452790 (= e!817798 e!817801)))

(declare-fun res!983979 () Bool)

(assert (=> b!1452790 (=> (not res!983979) (not e!817801))))

(declare-fun lt!637010 () SeekEntryResult!11749)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98381 (_ BitVec 32)) SeekEntryResult!11749)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452790 (= res!983979 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47474 a!2862) j!93) mask!2687) (select (arr!47474 a!2862) j!93) a!2862 mask!2687) lt!637010))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452790 (= lt!637010 (Intermediate!11749 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!983967 () Bool)

(assert (=> start!125016 (=> (not res!983967) (not e!817805))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125016 (= res!983967 (validMask!0 mask!2687))))

(assert (=> start!125016 e!817805))

(assert (=> start!125016 true))

(declare-fun array_inv!36419 (array!98381) Bool)

(assert (=> start!125016 (array_inv!36419 a!2862)))

(declare-fun b!1452791 () Bool)

(declare-fun res!983974 () Bool)

(assert (=> b!1452791 (=> (not res!983974) (not e!817805))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98381 (_ BitVec 32)) Bool)

(assert (=> b!1452791 (= res!983974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452792 () Bool)

(declare-fun e!817799 () Bool)

(assert (=> b!1452792 (= e!817799 (validKeyInArray!0 lt!637011))))

(declare-fun b!1452793 () Bool)

(declare-fun res!983975 () Bool)

(declare-fun e!817803 () Bool)

(assert (=> b!1452793 (=> (not res!983975) (not e!817803))))

(assert (=> b!1452793 (= res!983975 e!817804)))

(declare-fun c!133925 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452793 (= c!133925 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452794 () Bool)

(declare-fun res!983965 () Bool)

(assert (=> b!1452794 (=> (not res!983965) (not e!817805))))

(declare-datatypes ((List!34155 0))(
  ( (Nil!34152) (Cons!34151 (h!35501 (_ BitVec 64)) (t!48856 List!34155)) )
))
(declare-fun arrayNoDuplicates!0 (array!98381 (_ BitVec 32) List!34155) Bool)

(assert (=> b!1452794 (= res!983965 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34152))))

(declare-fun b!1452795 () Bool)

(declare-fun res!983970 () Bool)

(assert (=> b!1452795 (=> (not res!983970) (not e!817805))))

(assert (=> b!1452795 (= res!983970 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48025 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48025 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48025 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!817802 () Bool)

(declare-fun b!1452796 () Bool)

(assert (=> b!1452796 (= e!817802 (and (or (= (select (arr!47474 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47474 a!2862) intermediateBeforeIndex!19) (select (arr!47474 a!2862) j!93))) (or (and (= (select (arr!47474 a!2862) index!646) (select (store (arr!47474 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47474 a!2862) index!646) (select (arr!47474 a!2862) j!93))) (= (select (arr!47474 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47474 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452797 () Bool)

(assert (=> b!1452797 (= e!817801 e!817803)))

(declare-fun res!983971 () Bool)

(assert (=> b!1452797 (=> (not res!983971) (not e!817803))))

(declare-fun lt!637012 () SeekEntryResult!11749)

(assert (=> b!1452797 (= res!983971 (= lt!637012 (Intermediate!11749 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1452797 (= lt!637012 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637011 mask!2687) lt!637011 lt!637008 mask!2687))))

(assert (=> b!1452797 (= lt!637011 (select (store (arr!47474 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452798 () Bool)

(declare-fun res!983966 () Bool)

(assert (=> b!1452798 (=> (not res!983966) (not e!817805))))

(assert (=> b!1452798 (= res!983966 (validKeyInArray!0 (select (arr!47474 a!2862) j!93)))))

(declare-fun b!1452799 () Bool)

(declare-fun res!983968 () Bool)

(assert (=> b!1452799 (=> (not res!983968) (not e!817801))))

(assert (=> b!1452799 (= res!983968 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47474 a!2862) j!93) a!2862 mask!2687) lt!637010))))

(declare-fun b!1452800 () Bool)

(assert (=> b!1452800 (= e!817803 (not e!817799))))

(declare-fun res!983977 () Bool)

(assert (=> b!1452800 (=> res!983977 e!817799)))

(assert (=> b!1452800 (= res!983977 (or (and (= (select (arr!47474 a!2862) index!646) (select (store (arr!47474 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47474 a!2862) index!646) (select (arr!47474 a!2862) j!93))) (= (select (arr!47474 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(assert (=> b!1452800 e!817802))

(declare-fun res!983973 () Bool)

(assert (=> b!1452800 (=> (not res!983973) (not e!817802))))

(assert (=> b!1452800 (= res!983973 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48942 0))(
  ( (Unit!48943) )
))
(declare-fun lt!637009 () Unit!48942)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48942)

(assert (=> b!1452800 (= lt!637009 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452801 () Bool)

(declare-fun res!983972 () Bool)

(assert (=> b!1452801 (=> (not res!983972) (not e!817805))))

(assert (=> b!1452801 (= res!983972 (and (= (size!48025 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48025 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48025 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452802 () Bool)

(assert (=> b!1452802 (= e!817805 e!817798)))

(declare-fun res!983978 () Bool)

(assert (=> b!1452802 (=> (not res!983978) (not e!817798))))

(assert (=> b!1452802 (= res!983978 (= (select (store (arr!47474 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452802 (= lt!637008 (array!98382 (store (arr!47474 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48025 a!2862)))))

(declare-fun b!1452803 () Bool)

(declare-fun res!983976 () Bool)

(assert (=> b!1452803 (=> (not res!983976) (not e!817802))))

(assert (=> b!1452803 (= res!983976 (= (seekEntryOrOpen!0 (select (arr!47474 a!2862) j!93) a!2862 mask!2687) (Found!11749 j!93)))))

(declare-fun b!1452804 () Bool)

(assert (=> b!1452804 (= e!817804 (= lt!637012 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637011 lt!637008 mask!2687)))))

(declare-fun b!1452805 () Bool)

(declare-fun res!983964 () Bool)

(assert (=> b!1452805 (=> (not res!983964) (not e!817803))))

(assert (=> b!1452805 (= res!983964 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125016 res!983967) b!1452801))

(assert (= (and b!1452801 res!983972) b!1452789))

(assert (= (and b!1452789 res!983969) b!1452798))

(assert (= (and b!1452798 res!983966) b!1452791))

(assert (= (and b!1452791 res!983974) b!1452794))

(assert (= (and b!1452794 res!983965) b!1452795))

(assert (= (and b!1452795 res!983970) b!1452802))

(assert (= (and b!1452802 res!983978) b!1452790))

(assert (= (and b!1452790 res!983979) b!1452799))

(assert (= (and b!1452799 res!983968) b!1452797))

(assert (= (and b!1452797 res!983971) b!1452793))

(assert (= (and b!1452793 c!133925) b!1452804))

(assert (= (and b!1452793 (not c!133925)) b!1452788))

(assert (= (and b!1452793 res!983975) b!1452805))

(assert (= (and b!1452805 res!983964) b!1452800))

(assert (= (and b!1452800 res!983973) b!1452803))

(assert (= (and b!1452803 res!983976) b!1452796))

(assert (= (and b!1452800 (not res!983977)) b!1452792))

(declare-fun m!1341409 () Bool)

(assert (=> b!1452794 m!1341409))

(declare-fun m!1341411 () Bool)

(assert (=> b!1452796 m!1341411))

(declare-fun m!1341413 () Bool)

(assert (=> b!1452796 m!1341413))

(declare-fun m!1341415 () Bool)

(assert (=> b!1452796 m!1341415))

(declare-fun m!1341417 () Bool)

(assert (=> b!1452796 m!1341417))

(declare-fun m!1341419 () Bool)

(assert (=> b!1452796 m!1341419))

(declare-fun m!1341421 () Bool)

(assert (=> b!1452791 m!1341421))

(declare-fun m!1341423 () Bool)

(assert (=> b!1452800 m!1341423))

(assert (=> b!1452800 m!1341411))

(assert (=> b!1452800 m!1341415))

(assert (=> b!1452800 m!1341417))

(declare-fun m!1341425 () Bool)

(assert (=> b!1452800 m!1341425))

(assert (=> b!1452800 m!1341419))

(declare-fun m!1341427 () Bool)

(assert (=> b!1452792 m!1341427))

(declare-fun m!1341429 () Bool)

(assert (=> b!1452804 m!1341429))

(assert (=> b!1452802 m!1341411))

(declare-fun m!1341431 () Bool)

(assert (=> b!1452802 m!1341431))

(assert (=> b!1452799 m!1341419))

(assert (=> b!1452799 m!1341419))

(declare-fun m!1341433 () Bool)

(assert (=> b!1452799 m!1341433))

(assert (=> b!1452798 m!1341419))

(assert (=> b!1452798 m!1341419))

(declare-fun m!1341435 () Bool)

(assert (=> b!1452798 m!1341435))

(declare-fun m!1341437 () Bool)

(assert (=> b!1452797 m!1341437))

(assert (=> b!1452797 m!1341437))

(declare-fun m!1341439 () Bool)

(assert (=> b!1452797 m!1341439))

(assert (=> b!1452797 m!1341411))

(declare-fun m!1341441 () Bool)

(assert (=> b!1452797 m!1341441))

(assert (=> b!1452803 m!1341419))

(assert (=> b!1452803 m!1341419))

(declare-fun m!1341443 () Bool)

(assert (=> b!1452803 m!1341443))

(declare-fun m!1341445 () Bool)

(assert (=> start!125016 m!1341445))

(declare-fun m!1341447 () Bool)

(assert (=> start!125016 m!1341447))

(declare-fun m!1341449 () Bool)

(assert (=> b!1452789 m!1341449))

(assert (=> b!1452789 m!1341449))

(declare-fun m!1341451 () Bool)

(assert (=> b!1452789 m!1341451))

(assert (=> b!1452790 m!1341419))

(assert (=> b!1452790 m!1341419))

(declare-fun m!1341453 () Bool)

(assert (=> b!1452790 m!1341453))

(assert (=> b!1452790 m!1341453))

(assert (=> b!1452790 m!1341419))

(declare-fun m!1341455 () Bool)

(assert (=> b!1452790 m!1341455))

(declare-fun m!1341457 () Bool)

(assert (=> b!1452788 m!1341457))

(declare-fun m!1341459 () Bool)

(assert (=> b!1452788 m!1341459))

(check-sat (not b!1452790) (not b!1452803) (not b!1452804) (not start!125016) (not b!1452798) (not b!1452788) (not b!1452791) (not b!1452789) (not b!1452792) (not b!1452797) (not b!1452799) (not b!1452800) (not b!1452794))
(check-sat)
