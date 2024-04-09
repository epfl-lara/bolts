; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126866 () Bool)

(assert start!126866)

(declare-fun b!1488708 () Bool)

(declare-fun e!834476 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1488708 (= e!834476 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1488709 () Bool)

(declare-fun e!834473 () Bool)

(declare-fun e!834468 () Bool)

(assert (=> b!1488709 (= e!834473 e!834468)))

(declare-fun res!1012380 () Bool)

(assert (=> b!1488709 (=> (not res!1012380) (not e!834468))))

(declare-datatypes ((SeekEntryResult!12308 0))(
  ( (MissingZero!12308 (index!51623 (_ BitVec 32))) (Found!12308 (index!51624 (_ BitVec 32))) (Intermediate!12308 (undefined!13120 Bool) (index!51625 (_ BitVec 32)) (x!133223 (_ BitVec 32))) (Undefined!12308) (MissingVacant!12308 (index!51626 (_ BitVec 32))) )
))
(declare-fun lt!649258 () SeekEntryResult!12308)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1488709 (= res!1012380 (= lt!649258 (Intermediate!12308 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!649260 () (_ BitVec 64))

(declare-datatypes ((array!99556 0))(
  ( (array!99557 (arr!48045 (Array (_ BitVec 32) (_ BitVec 64))) (size!48596 (_ BitVec 32))) )
))
(declare-fun lt!649259 () array!99556)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99556 (_ BitVec 32)) SeekEntryResult!12308)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488709 (= lt!649258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649260 mask!2687) lt!649260 lt!649259 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99556)

(assert (=> b!1488709 (= lt!649260 (select (store (arr!48045 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1488710 () Bool)

(declare-fun res!1012383 () Bool)

(assert (=> b!1488710 (=> (not res!1012383) (not e!834473))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!649262 () SeekEntryResult!12308)

(assert (=> b!1488710 (= res!1012383 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48045 a!2862) j!93) a!2862 mask!2687) lt!649262))))

(declare-fun b!1488711 () Bool)

(declare-fun res!1012395 () Bool)

(assert (=> b!1488711 (=> res!1012395 e!834476)))

(declare-fun lt!649263 () (_ BitVec 32))

(assert (=> b!1488711 (= res!1012395 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649263 (select (arr!48045 a!2862) j!93) a!2862 mask!2687) lt!649262)))))

(declare-fun b!1488712 () Bool)

(declare-fun e!834475 () Bool)

(assert (=> b!1488712 (= e!834475 e!834476)))

(declare-fun res!1012392 () Bool)

(assert (=> b!1488712 (=> res!1012392 e!834476)))

(assert (=> b!1488712 (= res!1012392 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649263 #b00000000000000000000000000000000) (bvsge lt!649263 (size!48596 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1488712 (= lt!649263 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!649261 () SeekEntryResult!12308)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99556 (_ BitVec 32)) SeekEntryResult!12308)

(assert (=> b!1488712 (= lt!649261 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649260 lt!649259 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99556 (_ BitVec 32)) SeekEntryResult!12308)

(assert (=> b!1488712 (= lt!649261 (seekEntryOrOpen!0 lt!649260 lt!649259 mask!2687))))

(declare-fun b!1488713 () Bool)

(declare-fun e!834471 () Bool)

(assert (=> b!1488713 (= e!834471 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649263 intermediateAfterIndex!19 lt!649260 lt!649259 mask!2687) lt!649261)))))

(declare-fun b!1488714 () Bool)

(declare-fun e!834474 () Bool)

(assert (=> b!1488714 (= e!834474 e!834473)))

(declare-fun res!1012394 () Bool)

(assert (=> b!1488714 (=> (not res!1012394) (not e!834473))))

(assert (=> b!1488714 (= res!1012394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48045 a!2862) j!93) mask!2687) (select (arr!48045 a!2862) j!93) a!2862 mask!2687) lt!649262))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1488714 (= lt!649262 (Intermediate!12308 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1488715 () Bool)

(assert (=> b!1488715 (= e!834471 (not (= lt!649258 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649263 lt!649260 lt!649259 mask!2687))))))

(declare-fun b!1488716 () Bool)

(declare-fun res!1012390 () Bool)

(declare-fun e!834469 () Bool)

(assert (=> b!1488716 (=> (not res!1012390) (not e!834469))))

(declare-datatypes ((List!34726 0))(
  ( (Nil!34723) (Cons!34722 (h!36105 (_ BitVec 64)) (t!49427 List!34726)) )
))
(declare-fun arrayNoDuplicates!0 (array!99556 (_ BitVec 32) List!34726) Bool)

(assert (=> b!1488716 (= res!1012390 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34723))))

(declare-fun b!1488717 () Bool)

(declare-fun res!1012388 () Bool)

(assert (=> b!1488717 (=> (not res!1012388) (not e!834469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99556 (_ BitVec 32)) Bool)

(assert (=> b!1488717 (= res!1012388 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488718 () Bool)

(declare-fun res!1012379 () Bool)

(assert (=> b!1488718 (=> res!1012379 e!834476)))

(assert (=> b!1488718 (= res!1012379 e!834471)))

(declare-fun c!137695 () Bool)

(assert (=> b!1488718 (= c!137695 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1488719 () Bool)

(assert (=> b!1488719 (= e!834469 e!834474)))

(declare-fun res!1012384 () Bool)

(assert (=> b!1488719 (=> (not res!1012384) (not e!834474))))

(assert (=> b!1488719 (= res!1012384 (= (select (store (arr!48045 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488719 (= lt!649259 (array!99557 (store (arr!48045 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48596 a!2862)))))

(declare-fun b!1488720 () Bool)

(assert (=> b!1488720 (= e!834468 (not e!834475))))

(declare-fun res!1012378 () Bool)

(assert (=> b!1488720 (=> res!1012378 e!834475)))

(assert (=> b!1488720 (= res!1012378 (or (and (= (select (arr!48045 a!2862) index!646) (select (store (arr!48045 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48045 a!2862) index!646) (select (arr!48045 a!2862) j!93))) (= (select (arr!48045 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!834472 () Bool)

(assert (=> b!1488720 e!834472))

(declare-fun res!1012385 () Bool)

(assert (=> b!1488720 (=> (not res!1012385) (not e!834472))))

(assert (=> b!1488720 (= res!1012385 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49904 0))(
  ( (Unit!49905) )
))
(declare-fun lt!649264 () Unit!49904)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49904)

(assert (=> b!1488720 (= lt!649264 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1488721 () Bool)

(declare-fun res!1012387 () Bool)

(assert (=> b!1488721 (=> (not res!1012387) (not e!834469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1488721 (= res!1012387 (validKeyInArray!0 (select (arr!48045 a!2862) i!1006)))))

(declare-fun e!834467 () Bool)

(declare-fun b!1488722 () Bool)

(assert (=> b!1488722 (= e!834467 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649260 lt!649259 mask!2687) (seekEntryOrOpen!0 lt!649260 lt!649259 mask!2687)))))

(declare-fun b!1488723 () Bool)

(declare-fun res!1012381 () Bool)

(assert (=> b!1488723 (=> (not res!1012381) (not e!834468))))

(assert (=> b!1488723 (= res!1012381 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1488724 () Bool)

(declare-fun res!1012393 () Bool)

(assert (=> b!1488724 (=> (not res!1012393) (not e!834472))))

(assert (=> b!1488724 (= res!1012393 (= (seekEntryOrOpen!0 (select (arr!48045 a!2862) j!93) a!2862 mask!2687) (Found!12308 j!93)))))

(declare-fun res!1012382 () Bool)

(assert (=> start!126866 (=> (not res!1012382) (not e!834469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126866 (= res!1012382 (validMask!0 mask!2687))))

(assert (=> start!126866 e!834469))

(assert (=> start!126866 true))

(declare-fun array_inv!36990 (array!99556) Bool)

(assert (=> start!126866 (array_inv!36990 a!2862)))

(declare-fun b!1488725 () Bool)

(declare-fun res!1012389 () Bool)

(assert (=> b!1488725 (=> (not res!1012389) (not e!834469))))

(assert (=> b!1488725 (= res!1012389 (validKeyInArray!0 (select (arr!48045 a!2862) j!93)))))

(declare-fun b!1488726 () Bool)

(declare-fun res!1012386 () Bool)

(assert (=> b!1488726 (=> (not res!1012386) (not e!834469))))

(assert (=> b!1488726 (= res!1012386 (and (= (size!48596 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48596 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48596 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1488727 () Bool)

(assert (=> b!1488727 (= e!834467 (= lt!649258 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649260 lt!649259 mask!2687)))))

(declare-fun b!1488728 () Bool)

(assert (=> b!1488728 (= e!834472 (and (or (= (select (arr!48045 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48045 a!2862) intermediateBeforeIndex!19) (select (arr!48045 a!2862) j!93))) (let ((bdg!54659 (select (store (arr!48045 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48045 a!2862) index!646) bdg!54659) (= (select (arr!48045 a!2862) index!646) (select (arr!48045 a!2862) j!93))) (= (select (arr!48045 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54659 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1488729 () Bool)

(declare-fun res!1012391 () Bool)

(assert (=> b!1488729 (=> (not res!1012391) (not e!834469))))

(assert (=> b!1488729 (= res!1012391 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48596 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48596 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48596 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1488730 () Bool)

(declare-fun res!1012377 () Bool)

(assert (=> b!1488730 (=> (not res!1012377) (not e!834468))))

(assert (=> b!1488730 (= res!1012377 e!834467)))

(declare-fun c!137696 () Bool)

(assert (=> b!1488730 (= c!137696 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126866 res!1012382) b!1488726))

(assert (= (and b!1488726 res!1012386) b!1488721))

(assert (= (and b!1488721 res!1012387) b!1488725))

(assert (= (and b!1488725 res!1012389) b!1488717))

(assert (= (and b!1488717 res!1012388) b!1488716))

(assert (= (and b!1488716 res!1012390) b!1488729))

(assert (= (and b!1488729 res!1012391) b!1488719))

(assert (= (and b!1488719 res!1012384) b!1488714))

(assert (= (and b!1488714 res!1012394) b!1488710))

(assert (= (and b!1488710 res!1012383) b!1488709))

(assert (= (and b!1488709 res!1012380) b!1488730))

(assert (= (and b!1488730 c!137696) b!1488727))

(assert (= (and b!1488730 (not c!137696)) b!1488722))

(assert (= (and b!1488730 res!1012377) b!1488723))

(assert (= (and b!1488723 res!1012381) b!1488720))

(assert (= (and b!1488720 res!1012385) b!1488724))

(assert (= (and b!1488724 res!1012393) b!1488728))

(assert (= (and b!1488720 (not res!1012378)) b!1488712))

(assert (= (and b!1488712 (not res!1012392)) b!1488711))

(assert (= (and b!1488711 (not res!1012395)) b!1488718))

(assert (= (and b!1488718 c!137695) b!1488715))

(assert (= (and b!1488718 (not c!137695)) b!1488713))

(assert (= (and b!1488718 (not res!1012379)) b!1488708))

(declare-fun m!1373081 () Bool)

(assert (=> b!1488725 m!1373081))

(assert (=> b!1488725 m!1373081))

(declare-fun m!1373083 () Bool)

(assert (=> b!1488725 m!1373083))

(declare-fun m!1373085 () Bool)

(assert (=> b!1488727 m!1373085))

(declare-fun m!1373087 () Bool)

(assert (=> b!1488721 m!1373087))

(assert (=> b!1488721 m!1373087))

(declare-fun m!1373089 () Bool)

(assert (=> b!1488721 m!1373089))

(assert (=> b!1488710 m!1373081))

(assert (=> b!1488710 m!1373081))

(declare-fun m!1373091 () Bool)

(assert (=> b!1488710 m!1373091))

(declare-fun m!1373093 () Bool)

(assert (=> b!1488728 m!1373093))

(declare-fun m!1373095 () Bool)

(assert (=> b!1488728 m!1373095))

(declare-fun m!1373097 () Bool)

(assert (=> b!1488728 m!1373097))

(declare-fun m!1373099 () Bool)

(assert (=> b!1488728 m!1373099))

(assert (=> b!1488728 m!1373081))

(assert (=> b!1488724 m!1373081))

(assert (=> b!1488724 m!1373081))

(declare-fun m!1373101 () Bool)

(assert (=> b!1488724 m!1373101))

(declare-fun m!1373103 () Bool)

(assert (=> b!1488715 m!1373103))

(declare-fun m!1373105 () Bool)

(assert (=> b!1488717 m!1373105))

(declare-fun m!1373107 () Bool)

(assert (=> b!1488720 m!1373107))

(assert (=> b!1488720 m!1373093))

(assert (=> b!1488720 m!1373097))

(assert (=> b!1488720 m!1373099))

(declare-fun m!1373109 () Bool)

(assert (=> b!1488720 m!1373109))

(assert (=> b!1488720 m!1373081))

(declare-fun m!1373111 () Bool)

(assert (=> b!1488712 m!1373111))

(declare-fun m!1373113 () Bool)

(assert (=> b!1488712 m!1373113))

(declare-fun m!1373115 () Bool)

(assert (=> b!1488712 m!1373115))

(declare-fun m!1373117 () Bool)

(assert (=> b!1488709 m!1373117))

(assert (=> b!1488709 m!1373117))

(declare-fun m!1373119 () Bool)

(assert (=> b!1488709 m!1373119))

(assert (=> b!1488709 m!1373093))

(declare-fun m!1373121 () Bool)

(assert (=> b!1488709 m!1373121))

(declare-fun m!1373123 () Bool)

(assert (=> start!126866 m!1373123))

(declare-fun m!1373125 () Bool)

(assert (=> start!126866 m!1373125))

(assert (=> b!1488719 m!1373093))

(declare-fun m!1373127 () Bool)

(assert (=> b!1488719 m!1373127))

(declare-fun m!1373129 () Bool)

(assert (=> b!1488716 m!1373129))

(assert (=> b!1488722 m!1373113))

(assert (=> b!1488722 m!1373115))

(assert (=> b!1488714 m!1373081))

(assert (=> b!1488714 m!1373081))

(declare-fun m!1373131 () Bool)

(assert (=> b!1488714 m!1373131))

(assert (=> b!1488714 m!1373131))

(assert (=> b!1488714 m!1373081))

(declare-fun m!1373133 () Bool)

(assert (=> b!1488714 m!1373133))

(assert (=> b!1488711 m!1373081))

(assert (=> b!1488711 m!1373081))

(declare-fun m!1373135 () Bool)

(assert (=> b!1488711 m!1373135))

(declare-fun m!1373137 () Bool)

(assert (=> b!1488713 m!1373137))

(push 1)

(assert (not start!126866))

(assert (not b!1488722))

(assert (not b!1488710))

(assert (not b!1488715))

(assert (not b!1488724))

(assert (not b!1488712))

(assert (not b!1488711))

(assert (not b!1488717))

(assert (not b!1488716))

(assert (not b!1488721))

(assert (not b!1488709))

(assert (not b!1488725))

(assert (not b!1488714))

(assert (not b!1488727))

(assert (not b!1488713))

(assert (not b!1488720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

