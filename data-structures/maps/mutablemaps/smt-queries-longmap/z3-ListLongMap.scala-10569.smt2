; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124596 () Bool)

(assert start!124596)

(declare-fun b!1441496 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!812617 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!97961 0))(
  ( (array!97962 (arr!47264 (Array (_ BitVec 32) (_ BitVec 64))) (size!47815 (_ BitVec 32))) )
))
(declare-fun lt!633228 () array!97961)

(declare-fun lt!633231 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11539 0))(
  ( (MissingZero!11539 (index!48547 (_ BitVec 32))) (Found!11539 (index!48548 (_ BitVec 32))) (Intermediate!11539 (undefined!12351 Bool) (index!48549 (_ BitVec 32)) (x!130263 (_ BitVec 32))) (Undefined!11539) (MissingVacant!11539 (index!48550 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97961 (_ BitVec 32)) SeekEntryResult!11539)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97961 (_ BitVec 32)) SeekEntryResult!11539)

(assert (=> b!1441496 (= e!812617 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633231 lt!633228 mask!2687) (seekEntryOrOpen!0 lt!633231 lt!633228 mask!2687)))))

(declare-fun b!1441497 () Bool)

(declare-fun res!973935 () Bool)

(declare-fun e!812616 () Bool)

(assert (=> b!1441497 (=> (not res!973935) (not e!812616))))

(declare-fun a!2862 () array!97961)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441497 (= res!973935 (validKeyInArray!0 (select (arr!47264 a!2862) j!93)))))

(declare-fun b!1441498 () Bool)

(declare-fun lt!633232 () SeekEntryResult!11539)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97961 (_ BitVec 32)) SeekEntryResult!11539)

(assert (=> b!1441498 (= e!812617 (= lt!633232 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633231 lt!633228 mask!2687)))))

(declare-fun b!1441499 () Bool)

(declare-fun res!973936 () Bool)

(assert (=> b!1441499 (=> (not res!973936) (not e!812616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97961 (_ BitVec 32)) Bool)

(assert (=> b!1441499 (= res!973936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441500 () Bool)

(declare-fun res!973943 () Bool)

(assert (=> b!1441500 (=> (not res!973943) (not e!812616))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441500 (= res!973943 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47815 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47815 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47815 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441501 () Bool)

(declare-fun res!973932 () Bool)

(assert (=> b!1441501 (=> (not res!973932) (not e!812616))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441501 (= res!973932 (validKeyInArray!0 (select (arr!47264 a!2862) i!1006)))))

(declare-fun b!1441502 () Bool)

(declare-fun res!973934 () Bool)

(declare-fun e!812615 () Bool)

(assert (=> b!1441502 (=> (not res!973934) (not e!812615))))

(assert (=> b!1441502 (= res!973934 e!812617)))

(declare-fun c!133295 () Bool)

(assert (=> b!1441502 (= c!133295 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441503 () Bool)

(declare-fun res!973941 () Bool)

(assert (=> b!1441503 (=> (not res!973941) (not e!812616))))

(assert (=> b!1441503 (= res!973941 (and (= (size!47815 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47815 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47815 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441504 () Bool)

(declare-fun e!812613 () Bool)

(assert (=> b!1441504 (= e!812616 e!812613)))

(declare-fun res!973940 () Bool)

(assert (=> b!1441504 (=> (not res!973940) (not e!812613))))

(assert (=> b!1441504 (= res!973940 (= (select (store (arr!47264 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441504 (= lt!633228 (array!97962 (store (arr!47264 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47815 a!2862)))))

(declare-fun b!1441505 () Bool)

(declare-fun res!973937 () Bool)

(declare-fun e!812618 () Bool)

(assert (=> b!1441505 (=> (not res!973937) (not e!812618))))

(declare-fun lt!633230 () SeekEntryResult!11539)

(assert (=> b!1441505 (= res!973937 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47264 a!2862) j!93) a!2862 mask!2687) lt!633230))))

(declare-fun b!1441506 () Bool)

(declare-fun res!973933 () Bool)

(assert (=> b!1441506 (=> (not res!973933) (not e!812615))))

(assert (=> b!1441506 (= res!973933 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!973944 () Bool)

(assert (=> start!124596 (=> (not res!973944) (not e!812616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124596 (= res!973944 (validMask!0 mask!2687))))

(assert (=> start!124596 e!812616))

(assert (=> start!124596 true))

(declare-fun array_inv!36209 (array!97961) Bool)

(assert (=> start!124596 (array_inv!36209 a!2862)))

(declare-fun b!1441507 () Bool)

(assert (=> b!1441507 (= e!812618 e!812615)))

(declare-fun res!973939 () Bool)

(assert (=> b!1441507 (=> (not res!973939) (not e!812615))))

(assert (=> b!1441507 (= res!973939 (= lt!633232 (Intermediate!11539 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441507 (= lt!633232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633231 mask!2687) lt!633231 lt!633228 mask!2687))))

(assert (=> b!1441507 (= lt!633231 (select (store (arr!47264 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441508 () Bool)

(assert (=> b!1441508 (= e!812615 (not true))))

(assert (=> b!1441508 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48522 0))(
  ( (Unit!48523) )
))
(declare-fun lt!633229 () Unit!48522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48522)

(assert (=> b!1441508 (= lt!633229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441509 () Bool)

(assert (=> b!1441509 (= e!812613 e!812618)))

(declare-fun res!973938 () Bool)

(assert (=> b!1441509 (=> (not res!973938) (not e!812618))))

(assert (=> b!1441509 (= res!973938 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47264 a!2862) j!93) mask!2687) (select (arr!47264 a!2862) j!93) a!2862 mask!2687) lt!633230))))

(assert (=> b!1441509 (= lt!633230 (Intermediate!11539 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441510 () Bool)

(declare-fun res!973942 () Bool)

(assert (=> b!1441510 (=> (not res!973942) (not e!812616))))

(declare-datatypes ((List!33945 0))(
  ( (Nil!33942) (Cons!33941 (h!35291 (_ BitVec 64)) (t!48646 List!33945)) )
))
(declare-fun arrayNoDuplicates!0 (array!97961 (_ BitVec 32) List!33945) Bool)

(assert (=> b!1441510 (= res!973942 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33942))))

(assert (= (and start!124596 res!973944) b!1441503))

(assert (= (and b!1441503 res!973941) b!1441501))

(assert (= (and b!1441501 res!973932) b!1441497))

(assert (= (and b!1441497 res!973935) b!1441499))

(assert (= (and b!1441499 res!973936) b!1441510))

(assert (= (and b!1441510 res!973942) b!1441500))

(assert (= (and b!1441500 res!973943) b!1441504))

(assert (= (and b!1441504 res!973940) b!1441509))

(assert (= (and b!1441509 res!973938) b!1441505))

(assert (= (and b!1441505 res!973937) b!1441507))

(assert (= (and b!1441507 res!973939) b!1441502))

(assert (= (and b!1441502 c!133295) b!1441498))

(assert (= (and b!1441502 (not c!133295)) b!1441496))

(assert (= (and b!1441502 res!973934) b!1441506))

(assert (= (and b!1441506 res!973933) b!1441508))

(declare-fun m!1330767 () Bool)

(assert (=> b!1441499 m!1330767))

(declare-fun m!1330769 () Bool)

(assert (=> b!1441508 m!1330769))

(declare-fun m!1330771 () Bool)

(assert (=> b!1441508 m!1330771))

(declare-fun m!1330773 () Bool)

(assert (=> b!1441509 m!1330773))

(assert (=> b!1441509 m!1330773))

(declare-fun m!1330775 () Bool)

(assert (=> b!1441509 m!1330775))

(assert (=> b!1441509 m!1330775))

(assert (=> b!1441509 m!1330773))

(declare-fun m!1330777 () Bool)

(assert (=> b!1441509 m!1330777))

(declare-fun m!1330779 () Bool)

(assert (=> b!1441510 m!1330779))

(assert (=> b!1441505 m!1330773))

(assert (=> b!1441505 m!1330773))

(declare-fun m!1330781 () Bool)

(assert (=> b!1441505 m!1330781))

(declare-fun m!1330783 () Bool)

(assert (=> b!1441501 m!1330783))

(assert (=> b!1441501 m!1330783))

(declare-fun m!1330785 () Bool)

(assert (=> b!1441501 m!1330785))

(assert (=> b!1441497 m!1330773))

(assert (=> b!1441497 m!1330773))

(declare-fun m!1330787 () Bool)

(assert (=> b!1441497 m!1330787))

(declare-fun m!1330789 () Bool)

(assert (=> b!1441498 m!1330789))

(declare-fun m!1330791 () Bool)

(assert (=> b!1441507 m!1330791))

(assert (=> b!1441507 m!1330791))

(declare-fun m!1330793 () Bool)

(assert (=> b!1441507 m!1330793))

(declare-fun m!1330795 () Bool)

(assert (=> b!1441507 m!1330795))

(declare-fun m!1330797 () Bool)

(assert (=> b!1441507 m!1330797))

(assert (=> b!1441504 m!1330795))

(declare-fun m!1330799 () Bool)

(assert (=> b!1441504 m!1330799))

(declare-fun m!1330801 () Bool)

(assert (=> start!124596 m!1330801))

(declare-fun m!1330803 () Bool)

(assert (=> start!124596 m!1330803))

(declare-fun m!1330805 () Bool)

(assert (=> b!1441496 m!1330805))

(declare-fun m!1330807 () Bool)

(assert (=> b!1441496 m!1330807))

(check-sat (not start!124596) (not b!1441507) (not b!1441501) (not b!1441510) (not b!1441499) (not b!1441497) (not b!1441509) (not b!1441508) (not b!1441496) (not b!1441498) (not b!1441505))
(check-sat)
