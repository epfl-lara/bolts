; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123326 () Bool)

(assert start!123326)

(declare-fun b!1429753 () Bool)

(declare-fun e!807275 () Bool)

(assert (=> b!1429753 (= e!807275 (not true))))

(declare-fun e!807278 () Bool)

(assert (=> b!1429753 e!807278))

(declare-fun res!964493 () Bool)

(assert (=> b!1429753 (=> (not res!964493) (not e!807278))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97405 0))(
  ( (array!97406 (arr!47010 (Array (_ BitVec 32) (_ BitVec 64))) (size!47561 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97405)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97405 (_ BitVec 32)) Bool)

(assert (=> b!1429753 (= res!964493 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48316 0))(
  ( (Unit!48317) )
))
(declare-fun lt!629461 () Unit!48316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48316)

(assert (=> b!1429753 (= lt!629461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429754 () Bool)

(declare-fun res!964494 () Bool)

(declare-fun e!807274 () Bool)

(assert (=> b!1429754 (=> (not res!964494) (not e!807274))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429754 (= res!964494 (validKeyInArray!0 (select (arr!47010 a!2831) i!982)))))

(declare-fun b!1429755 () Bool)

(declare-fun res!964501 () Bool)

(assert (=> b!1429755 (=> (not res!964501) (not e!807275))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1429755 (= res!964501 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429756 () Bool)

(declare-fun res!964502 () Bool)

(assert (=> b!1429756 (=> (not res!964502) (not e!807274))))

(assert (=> b!1429756 (= res!964502 (and (= (size!47561 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47561 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47561 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429757 () Bool)

(declare-fun res!964496 () Bool)

(assert (=> b!1429757 (=> (not res!964496) (not e!807275))))

(declare-fun lt!629459 () array!97405)

(declare-datatypes ((SeekEntryResult!11311 0))(
  ( (MissingZero!11311 (index!47635 (_ BitVec 32))) (Found!11311 (index!47636 (_ BitVec 32))) (Intermediate!11311 (undefined!12123 Bool) (index!47637 (_ BitVec 32)) (x!129268 (_ BitVec 32))) (Undefined!11311) (MissingVacant!11311 (index!47638 (_ BitVec 32))) )
))
(declare-fun lt!629460 () SeekEntryResult!11311)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!629458 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97405 (_ BitVec 32)) SeekEntryResult!11311)

(assert (=> b!1429757 (= res!964496 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629458 lt!629459 mask!2608) lt!629460))))

(declare-fun b!1429758 () Bool)

(declare-fun res!964500 () Bool)

(assert (=> b!1429758 (=> (not res!964500) (not e!807275))))

(declare-fun lt!629457 () SeekEntryResult!11311)

(assert (=> b!1429758 (= res!964500 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47010 a!2831) j!81) a!2831 mask!2608) lt!629457))))

(declare-fun b!1429759 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97405 (_ BitVec 32)) SeekEntryResult!11311)

(assert (=> b!1429759 (= e!807278 (= (seekEntryOrOpen!0 (select (arr!47010 a!2831) j!81) a!2831 mask!2608) (Found!11311 j!81)))))

(declare-fun b!1429760 () Bool)

(declare-fun e!807277 () Bool)

(assert (=> b!1429760 (= e!807274 e!807277)))

(declare-fun res!964495 () Bool)

(assert (=> b!1429760 (=> (not res!964495) (not e!807277))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429760 (= res!964495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47010 a!2831) j!81) mask!2608) (select (arr!47010 a!2831) j!81) a!2831 mask!2608) lt!629457))))

(assert (=> b!1429760 (= lt!629457 (Intermediate!11311 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429761 () Bool)

(declare-fun res!964499 () Bool)

(assert (=> b!1429761 (=> (not res!964499) (not e!807274))))

(assert (=> b!1429761 (= res!964499 (validKeyInArray!0 (select (arr!47010 a!2831) j!81)))))

(declare-fun b!1429762 () Bool)

(assert (=> b!1429762 (= e!807277 e!807275)))

(declare-fun res!964492 () Bool)

(assert (=> b!1429762 (=> (not res!964492) (not e!807275))))

(assert (=> b!1429762 (= res!964492 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629458 mask!2608) lt!629458 lt!629459 mask!2608) lt!629460))))

(assert (=> b!1429762 (= lt!629460 (Intermediate!11311 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429762 (= lt!629458 (select (store (arr!47010 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429762 (= lt!629459 (array!97406 (store (arr!47010 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47561 a!2831)))))

(declare-fun b!1429763 () Bool)

(declare-fun res!964497 () Bool)

(assert (=> b!1429763 (=> (not res!964497) (not e!807274))))

(assert (=> b!1429763 (= res!964497 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47561 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47561 a!2831))))))

(declare-fun res!964491 () Bool)

(assert (=> start!123326 (=> (not res!964491) (not e!807274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123326 (= res!964491 (validMask!0 mask!2608))))

(assert (=> start!123326 e!807274))

(assert (=> start!123326 true))

(declare-fun array_inv!35955 (array!97405) Bool)

(assert (=> start!123326 (array_inv!35955 a!2831)))

(declare-fun b!1429764 () Bool)

(declare-fun res!964503 () Bool)

(assert (=> b!1429764 (=> (not res!964503) (not e!807274))))

(declare-datatypes ((List!33700 0))(
  ( (Nil!33697) (Cons!33696 (h!35010 (_ BitVec 64)) (t!48401 List!33700)) )
))
(declare-fun arrayNoDuplicates!0 (array!97405 (_ BitVec 32) List!33700) Bool)

(assert (=> b!1429764 (= res!964503 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33697))))

(declare-fun b!1429765 () Bool)

(declare-fun res!964498 () Bool)

(assert (=> b!1429765 (=> (not res!964498) (not e!807274))))

(assert (=> b!1429765 (= res!964498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123326 res!964491) b!1429756))

(assert (= (and b!1429756 res!964502) b!1429754))

(assert (= (and b!1429754 res!964494) b!1429761))

(assert (= (and b!1429761 res!964499) b!1429765))

(assert (= (and b!1429765 res!964498) b!1429764))

(assert (= (and b!1429764 res!964503) b!1429763))

(assert (= (and b!1429763 res!964497) b!1429760))

(assert (= (and b!1429760 res!964495) b!1429762))

(assert (= (and b!1429762 res!964492) b!1429758))

(assert (= (and b!1429758 res!964500) b!1429757))

(assert (= (and b!1429757 res!964496) b!1429755))

(assert (= (and b!1429755 res!964501) b!1429753))

(assert (= (and b!1429753 res!964493) b!1429759))

(declare-fun m!1319901 () Bool)

(assert (=> b!1429758 m!1319901))

(assert (=> b!1429758 m!1319901))

(declare-fun m!1319903 () Bool)

(assert (=> b!1429758 m!1319903))

(declare-fun m!1319905 () Bool)

(assert (=> b!1429765 m!1319905))

(assert (=> b!1429761 m!1319901))

(assert (=> b!1429761 m!1319901))

(declare-fun m!1319907 () Bool)

(assert (=> b!1429761 m!1319907))

(declare-fun m!1319909 () Bool)

(assert (=> b!1429753 m!1319909))

(declare-fun m!1319911 () Bool)

(assert (=> b!1429753 m!1319911))

(declare-fun m!1319913 () Bool)

(assert (=> b!1429757 m!1319913))

(declare-fun m!1319915 () Bool)

(assert (=> b!1429754 m!1319915))

(assert (=> b!1429754 m!1319915))

(declare-fun m!1319917 () Bool)

(assert (=> b!1429754 m!1319917))

(assert (=> b!1429759 m!1319901))

(assert (=> b!1429759 m!1319901))

(declare-fun m!1319919 () Bool)

(assert (=> b!1429759 m!1319919))

(declare-fun m!1319921 () Bool)

(assert (=> start!123326 m!1319921))

(declare-fun m!1319923 () Bool)

(assert (=> start!123326 m!1319923))

(declare-fun m!1319925 () Bool)

(assert (=> b!1429762 m!1319925))

(assert (=> b!1429762 m!1319925))

(declare-fun m!1319927 () Bool)

(assert (=> b!1429762 m!1319927))

(declare-fun m!1319929 () Bool)

(assert (=> b!1429762 m!1319929))

(declare-fun m!1319931 () Bool)

(assert (=> b!1429762 m!1319931))

(assert (=> b!1429760 m!1319901))

(assert (=> b!1429760 m!1319901))

(declare-fun m!1319933 () Bool)

(assert (=> b!1429760 m!1319933))

(assert (=> b!1429760 m!1319933))

(assert (=> b!1429760 m!1319901))

(declare-fun m!1319935 () Bool)

(assert (=> b!1429760 m!1319935))

(declare-fun m!1319937 () Bool)

(assert (=> b!1429764 m!1319937))

(push 1)

