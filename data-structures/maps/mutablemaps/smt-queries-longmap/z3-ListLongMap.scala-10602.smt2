; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124794 () Bool)

(assert start!124794)

(declare-fun b!1446575 () Bool)

(declare-fun e!814764 () Bool)

(declare-fun e!814763 () Bool)

(assert (=> b!1446575 (= e!814764 e!814763)))

(declare-fun res!978421 () Bool)

(assert (=> b!1446575 (=> (not res!978421) (not e!814763))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98159 0))(
  ( (array!98160 (arr!47363 (Array (_ BitVec 32) (_ BitVec 64))) (size!47914 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98159)

(assert (=> b!1446575 (= res!978421 (= (select (store (arr!47363 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634813 () array!98159)

(assert (=> b!1446575 (= lt!634813 (array!98160 (store (arr!47363 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47914 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1446576 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!814759 () Bool)

(assert (=> b!1446576 (= e!814759 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446577 () Bool)

(declare-fun e!814762 () Bool)

(declare-fun e!814761 () Bool)

(assert (=> b!1446577 (= e!814762 e!814761)))

(declare-fun res!978417 () Bool)

(assert (=> b!1446577 (=> res!978417 e!814761)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1446577 (= res!978417 (or (and (= (select (arr!47363 a!2862) index!646) (select (store (arr!47363 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47363 a!2862) index!646) (select (arr!47363 a!2862) j!93))) (not (= (select (arr!47363 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446578 () Bool)

(declare-fun res!978431 () Bool)

(declare-fun e!814766 () Bool)

(assert (=> b!1446578 (=> (not res!978431) (not e!814766))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11638 0))(
  ( (MissingZero!11638 (index!48943 (_ BitVec 32))) (Found!11638 (index!48944 (_ BitVec 32))) (Intermediate!11638 (undefined!12450 Bool) (index!48945 (_ BitVec 32)) (x!130626 (_ BitVec 32))) (Undefined!11638) (MissingVacant!11638 (index!48946 (_ BitVec 32))) )
))
(declare-fun lt!634817 () SeekEntryResult!11638)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98159 (_ BitVec 32)) SeekEntryResult!11638)

(assert (=> b!1446578 (= res!978431 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47363 a!2862) j!93) a!2862 mask!2687) lt!634817))))

(declare-fun b!1446579 () Bool)

(declare-fun res!978432 () Bool)

(assert (=> b!1446579 (=> (not res!978432) (not e!814764))))

(declare-datatypes ((List!34044 0))(
  ( (Nil!34041) (Cons!34040 (h!35390 (_ BitVec 64)) (t!48745 List!34044)) )
))
(declare-fun arrayNoDuplicates!0 (array!98159 (_ BitVec 32) List!34044) Bool)

(assert (=> b!1446579 (= res!978432 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34041))))

(declare-fun b!1446580 () Bool)

(declare-fun res!978416 () Bool)

(assert (=> b!1446580 (=> (not res!978416) (not e!814764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446580 (= res!978416 (validKeyInArray!0 (select (arr!47363 a!2862) i!1006)))))

(declare-fun b!1446581 () Bool)

(assert (=> b!1446581 (= e!814761 e!814759)))

(declare-fun res!978430 () Bool)

(assert (=> b!1446581 (=> (not res!978430) (not e!814759))))

(declare-fun lt!634819 () SeekEntryResult!11638)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98159 (_ BitVec 32)) SeekEntryResult!11638)

(assert (=> b!1446581 (= res!978430 (= lt!634819 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47363 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446582 () Bool)

(declare-fun res!978420 () Bool)

(declare-fun e!814760 () Bool)

(assert (=> b!1446582 (=> (not res!978420) (not e!814760))))

(assert (=> b!1446582 (= res!978420 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446583 () Bool)

(declare-fun lt!634814 () (_ BitVec 64))

(declare-fun e!814757 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98159 (_ BitVec 32)) SeekEntryResult!11638)

(assert (=> b!1446583 (= e!814757 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634814 lt!634813 mask!2687) (seekEntryOrOpen!0 lt!634814 lt!634813 mask!2687)))))

(declare-fun b!1446574 () Bool)

(declare-fun res!978419 () Bool)

(assert (=> b!1446574 (=> (not res!978419) (not e!814760))))

(assert (=> b!1446574 (= res!978419 e!814757)))

(declare-fun c!133592 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446574 (= c!133592 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!978426 () Bool)

(assert (=> start!124794 (=> (not res!978426) (not e!814764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124794 (= res!978426 (validMask!0 mask!2687))))

(assert (=> start!124794 e!814764))

(assert (=> start!124794 true))

(declare-fun array_inv!36308 (array!98159) Bool)

(assert (=> start!124794 (array_inv!36308 a!2862)))

(declare-fun b!1446584 () Bool)

(declare-fun e!814758 () Bool)

(assert (=> b!1446584 (= e!814758 true)))

(declare-fun lt!634816 () SeekEntryResult!11638)

(assert (=> b!1446584 (= lt!634816 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47363 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446585 () Bool)

(declare-fun res!978423 () Bool)

(assert (=> b!1446585 (=> (not res!978423) (not e!814764))))

(assert (=> b!1446585 (= res!978423 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47914 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47914 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47914 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446586 () Bool)

(assert (=> b!1446586 (= e!814760 (not e!814758))))

(declare-fun res!978428 () Bool)

(assert (=> b!1446586 (=> res!978428 e!814758)))

(assert (=> b!1446586 (= res!978428 (or (and (= (select (arr!47363 a!2862) index!646) (select (store (arr!47363 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47363 a!2862) index!646) (select (arr!47363 a!2862) j!93))) (not (= (select (arr!47363 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47363 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1446586 e!814762))

(declare-fun res!978429 () Bool)

(assert (=> b!1446586 (=> (not res!978429) (not e!814762))))

(assert (=> b!1446586 (= res!978429 (and (= lt!634819 (Found!11638 j!93)) (or (= (select (arr!47363 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47363 a!2862) intermediateBeforeIndex!19) (select (arr!47363 a!2862) j!93)))))))

(assert (=> b!1446586 (= lt!634819 (seekEntryOrOpen!0 (select (arr!47363 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98159 (_ BitVec 32)) Bool)

(assert (=> b!1446586 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48720 0))(
  ( (Unit!48721) )
))
(declare-fun lt!634818 () Unit!48720)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98159 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48720)

(assert (=> b!1446586 (= lt!634818 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446587 () Bool)

(declare-fun res!978425 () Bool)

(assert (=> b!1446587 (=> (not res!978425) (not e!814764))))

(assert (=> b!1446587 (= res!978425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446588 () Bool)

(declare-fun res!978427 () Bool)

(assert (=> b!1446588 (=> (not res!978427) (not e!814764))))

(assert (=> b!1446588 (= res!978427 (validKeyInArray!0 (select (arr!47363 a!2862) j!93)))))

(declare-fun b!1446589 () Bool)

(assert (=> b!1446589 (= e!814766 e!814760)))

(declare-fun res!978424 () Bool)

(assert (=> b!1446589 (=> (not res!978424) (not e!814760))))

(declare-fun lt!634815 () SeekEntryResult!11638)

(assert (=> b!1446589 (= res!978424 (= lt!634815 (Intermediate!11638 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446589 (= lt!634815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634814 mask!2687) lt!634814 lt!634813 mask!2687))))

(assert (=> b!1446589 (= lt!634814 (select (store (arr!47363 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446590 () Bool)

(assert (=> b!1446590 (= e!814763 e!814766)))

(declare-fun res!978418 () Bool)

(assert (=> b!1446590 (=> (not res!978418) (not e!814766))))

(assert (=> b!1446590 (= res!978418 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47363 a!2862) j!93) mask!2687) (select (arr!47363 a!2862) j!93) a!2862 mask!2687) lt!634817))))

(assert (=> b!1446590 (= lt!634817 (Intermediate!11638 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446591 () Bool)

(assert (=> b!1446591 (= e!814757 (= lt!634815 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634814 lt!634813 mask!2687)))))

(declare-fun b!1446592 () Bool)

(declare-fun res!978422 () Bool)

(assert (=> b!1446592 (=> (not res!978422) (not e!814764))))

(assert (=> b!1446592 (= res!978422 (and (= (size!47914 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47914 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47914 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124794 res!978426) b!1446592))

(assert (= (and b!1446592 res!978422) b!1446580))

(assert (= (and b!1446580 res!978416) b!1446588))

(assert (= (and b!1446588 res!978427) b!1446587))

(assert (= (and b!1446587 res!978425) b!1446579))

(assert (= (and b!1446579 res!978432) b!1446585))

(assert (= (and b!1446585 res!978423) b!1446575))

(assert (= (and b!1446575 res!978421) b!1446590))

(assert (= (and b!1446590 res!978418) b!1446578))

(assert (= (and b!1446578 res!978431) b!1446589))

(assert (= (and b!1446589 res!978424) b!1446574))

(assert (= (and b!1446574 c!133592) b!1446591))

(assert (= (and b!1446574 (not c!133592)) b!1446583))

(assert (= (and b!1446574 res!978419) b!1446582))

(assert (= (and b!1446582 res!978420) b!1446586))

(assert (= (and b!1446586 res!978429) b!1446577))

(assert (= (and b!1446577 (not res!978417)) b!1446581))

(assert (= (and b!1446581 res!978430) b!1446576))

(assert (= (and b!1446586 (not res!978428)) b!1446584))

(declare-fun m!1335489 () Bool)

(assert (=> b!1446587 m!1335489))

(declare-fun m!1335491 () Bool)

(assert (=> b!1446588 m!1335491))

(assert (=> b!1446588 m!1335491))

(declare-fun m!1335493 () Bool)

(assert (=> b!1446588 m!1335493))

(assert (=> b!1446590 m!1335491))

(assert (=> b!1446590 m!1335491))

(declare-fun m!1335495 () Bool)

(assert (=> b!1446590 m!1335495))

(assert (=> b!1446590 m!1335495))

(assert (=> b!1446590 m!1335491))

(declare-fun m!1335497 () Bool)

(assert (=> b!1446590 m!1335497))

(declare-fun m!1335499 () Bool)

(assert (=> start!124794 m!1335499))

(declare-fun m!1335501 () Bool)

(assert (=> start!124794 m!1335501))

(assert (=> b!1446581 m!1335491))

(assert (=> b!1446581 m!1335491))

(declare-fun m!1335503 () Bool)

(assert (=> b!1446581 m!1335503))

(declare-fun m!1335505 () Bool)

(assert (=> b!1446589 m!1335505))

(assert (=> b!1446589 m!1335505))

(declare-fun m!1335507 () Bool)

(assert (=> b!1446589 m!1335507))

(declare-fun m!1335509 () Bool)

(assert (=> b!1446589 m!1335509))

(declare-fun m!1335511 () Bool)

(assert (=> b!1446589 m!1335511))

(assert (=> b!1446575 m!1335509))

(declare-fun m!1335513 () Bool)

(assert (=> b!1446575 m!1335513))

(declare-fun m!1335515 () Bool)

(assert (=> b!1446579 m!1335515))

(declare-fun m!1335517 () Bool)

(assert (=> b!1446591 m!1335517))

(assert (=> b!1446578 m!1335491))

(assert (=> b!1446578 m!1335491))

(declare-fun m!1335519 () Bool)

(assert (=> b!1446578 m!1335519))

(assert (=> b!1446584 m!1335491))

(assert (=> b!1446584 m!1335491))

(declare-fun m!1335521 () Bool)

(assert (=> b!1446584 m!1335521))

(declare-fun m!1335523 () Bool)

(assert (=> b!1446583 m!1335523))

(declare-fun m!1335525 () Bool)

(assert (=> b!1446583 m!1335525))

(declare-fun m!1335527 () Bool)

(assert (=> b!1446580 m!1335527))

(assert (=> b!1446580 m!1335527))

(declare-fun m!1335529 () Bool)

(assert (=> b!1446580 m!1335529))

(declare-fun m!1335531 () Bool)

(assert (=> b!1446577 m!1335531))

(assert (=> b!1446577 m!1335509))

(declare-fun m!1335533 () Bool)

(assert (=> b!1446577 m!1335533))

(assert (=> b!1446577 m!1335491))

(declare-fun m!1335535 () Bool)

(assert (=> b!1446586 m!1335535))

(assert (=> b!1446586 m!1335509))

(declare-fun m!1335537 () Bool)

(assert (=> b!1446586 m!1335537))

(assert (=> b!1446586 m!1335533))

(assert (=> b!1446586 m!1335531))

(assert (=> b!1446586 m!1335491))

(declare-fun m!1335539 () Bool)

(assert (=> b!1446586 m!1335539))

(declare-fun m!1335541 () Bool)

(assert (=> b!1446586 m!1335541))

(assert (=> b!1446586 m!1335491))

(check-sat (not b!1446590) (not b!1446581) (not start!124794) (not b!1446578) (not b!1446579) (not b!1446591) (not b!1446589) (not b!1446587) (not b!1446588) (not b!1446583) (not b!1446586) (not b!1446580) (not b!1446584))
(check-sat)
