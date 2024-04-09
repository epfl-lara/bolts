; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126566 () Bool)

(assert start!126566)

(declare-fun b!1484210 () Bool)

(declare-fun res!1009120 () Bool)

(declare-fun e!832198 () Bool)

(assert (=> b!1484210 (=> (not res!1009120) (not e!832198))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99445 0))(
  ( (array!99446 (arr!47994 (Array (_ BitVec 32) (_ BitVec 64))) (size!48545 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99445)

(assert (=> b!1484210 (= res!1009120 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48545 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48545 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48545 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484211 () Bool)

(declare-fun e!832193 () Bool)

(declare-fun e!832192 () Bool)

(assert (=> b!1484211 (= e!832193 (not e!832192))))

(declare-fun res!1009115 () Bool)

(assert (=> b!1484211 (=> res!1009115 e!832192)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484211 (= res!1009115 (or (and (= (select (arr!47994 a!2862) index!646) (select (store (arr!47994 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47994 a!2862) index!646) (select (arr!47994 a!2862) j!93))) (= (select (arr!47994 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832191 () Bool)

(assert (=> b!1484211 e!832191))

(declare-fun res!1009125 () Bool)

(assert (=> b!1484211 (=> (not res!1009125) (not e!832191))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99445 (_ BitVec 32)) Bool)

(assert (=> b!1484211 (= res!1009125 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49802 0))(
  ( (Unit!49803) )
))
(declare-fun lt!647653 () Unit!49802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99445 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49802)

(assert (=> b!1484211 (= lt!647653 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484212 () Bool)

(declare-fun res!1009124 () Bool)

(assert (=> b!1484212 (=> (not res!1009124) (not e!832198))))

(declare-datatypes ((List!34675 0))(
  ( (Nil!34672) (Cons!34671 (h!36045 (_ BitVec 64)) (t!49376 List!34675)) )
))
(declare-fun arrayNoDuplicates!0 (array!99445 (_ BitVec 32) List!34675) Bool)

(assert (=> b!1484212 (= res!1009124 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34672))))

(declare-fun b!1484213 () Bool)

(declare-fun res!1009110 () Bool)

(declare-fun e!832197 () Bool)

(assert (=> b!1484213 (=> (not res!1009110) (not e!832197))))

(declare-datatypes ((SeekEntryResult!12257 0))(
  ( (MissingZero!12257 (index!51419 (_ BitVec 32))) (Found!12257 (index!51420 (_ BitVec 32))) (Intermediate!12257 (undefined!13069 Bool) (index!51421 (_ BitVec 32)) (x!133000 (_ BitVec 32))) (Undefined!12257) (MissingVacant!12257 (index!51422 (_ BitVec 32))) )
))
(declare-fun lt!647655 () SeekEntryResult!12257)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99445 (_ BitVec 32)) SeekEntryResult!12257)

(assert (=> b!1484213 (= res!1009110 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47994 a!2862) j!93) a!2862 mask!2687) lt!647655))))

(declare-fun lt!647654 () (_ BitVec 64))

(declare-fun b!1484214 () Bool)

(declare-fun lt!647656 () array!99445)

(declare-fun e!832196 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99445 (_ BitVec 32)) SeekEntryResult!12257)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99445 (_ BitVec 32)) SeekEntryResult!12257)

(assert (=> b!1484214 (= e!832196 (= (seekEntryOrOpen!0 lt!647654 lt!647656 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647654 lt!647656 mask!2687)))))

(declare-fun res!1009122 () Bool)

(assert (=> start!126566 (=> (not res!1009122) (not e!832198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126566 (= res!1009122 (validMask!0 mask!2687))))

(assert (=> start!126566 e!832198))

(assert (=> start!126566 true))

(declare-fun array_inv!36939 (array!99445) Bool)

(assert (=> start!126566 (array_inv!36939 a!2862)))

(declare-fun e!832194 () Bool)

(declare-fun lt!647650 () SeekEntryResult!12257)

(declare-fun b!1484215 () Bool)

(assert (=> b!1484215 (= e!832194 (= lt!647650 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647654 lt!647656 mask!2687)))))

(declare-fun b!1484216 () Bool)

(assert (=> b!1484216 (= e!832197 e!832193)))

(declare-fun res!1009111 () Bool)

(assert (=> b!1484216 (=> (not res!1009111) (not e!832193))))

(assert (=> b!1484216 (= res!1009111 (= lt!647650 (Intermediate!12257 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484216 (= lt!647650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647654 mask!2687) lt!647654 lt!647656 mask!2687))))

(assert (=> b!1484216 (= lt!647654 (select (store (arr!47994 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484217 () Bool)

(declare-fun e!832190 () Bool)

(assert (=> b!1484217 (= e!832190 e!832197)))

(declare-fun res!1009119 () Bool)

(assert (=> b!1484217 (=> (not res!1009119) (not e!832197))))

(assert (=> b!1484217 (= res!1009119 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47994 a!2862) j!93) mask!2687) (select (arr!47994 a!2862) j!93) a!2862 mask!2687) lt!647655))))

(assert (=> b!1484217 (= lt!647655 (Intermediate!12257 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484218 () Bool)

(assert (=> b!1484218 (= e!832198 e!832190)))

(declare-fun res!1009121 () Bool)

(assert (=> b!1484218 (=> (not res!1009121) (not e!832190))))

(assert (=> b!1484218 (= res!1009121 (= (select (store (arr!47994 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484218 (= lt!647656 (array!99446 (store (arr!47994 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48545 a!2862)))))

(declare-fun b!1484219 () Bool)

(declare-fun res!1009117 () Bool)

(assert (=> b!1484219 (=> (not res!1009117) (not e!832198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484219 (= res!1009117 (validKeyInArray!0 (select (arr!47994 a!2862) j!93)))))

(declare-fun b!1484220 () Bool)

(declare-fun res!1009127 () Bool)

(assert (=> b!1484220 (=> (not res!1009127) (not e!832193))))

(assert (=> b!1484220 (= res!1009127 e!832194)))

(declare-fun c!137075 () Bool)

(assert (=> b!1484220 (= c!137075 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484221 () Bool)

(declare-fun e!832195 () Bool)

(assert (=> b!1484221 (= e!832191 e!832195)))

(declare-fun res!1009114 () Bool)

(assert (=> b!1484221 (=> res!1009114 e!832195)))

(declare-fun lt!647652 () (_ BitVec 64))

(assert (=> b!1484221 (= res!1009114 (or (and (= (select (arr!47994 a!2862) index!646) lt!647652) (= (select (arr!47994 a!2862) index!646) (select (arr!47994 a!2862) j!93))) (= (select (arr!47994 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484221 (= lt!647652 (select (store (arr!47994 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484222 () Bool)

(assert (=> b!1484222 (= e!832192 true)))

(declare-fun lt!647651 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484222 (= lt!647651 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484223 () Bool)

(declare-fun res!1009123 () Bool)

(assert (=> b!1484223 (=> (not res!1009123) (not e!832191))))

(assert (=> b!1484223 (= res!1009123 (or (= (select (arr!47994 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47994 a!2862) intermediateBeforeIndex!19) (select (arr!47994 a!2862) j!93))))))

(declare-fun b!1484224 () Bool)

(assert (=> b!1484224 (= e!832195 e!832196)))

(declare-fun res!1009116 () Bool)

(assert (=> b!1484224 (=> (not res!1009116) (not e!832196))))

(assert (=> b!1484224 (= res!1009116 (and (= index!646 intermediateAfterIndex!19) (= lt!647652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484225 () Bool)

(declare-fun res!1009112 () Bool)

(assert (=> b!1484225 (=> (not res!1009112) (not e!832198))))

(assert (=> b!1484225 (= res!1009112 (validKeyInArray!0 (select (arr!47994 a!2862) i!1006)))))

(declare-fun b!1484226 () Bool)

(assert (=> b!1484226 (= e!832194 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647654 lt!647656 mask!2687) (seekEntryOrOpen!0 lt!647654 lt!647656 mask!2687)))))

(declare-fun b!1484227 () Bool)

(declare-fun res!1009113 () Bool)

(assert (=> b!1484227 (=> (not res!1009113) (not e!832198))))

(assert (=> b!1484227 (= res!1009113 (and (= (size!48545 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48545 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48545 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484228 () Bool)

(declare-fun res!1009118 () Bool)

(assert (=> b!1484228 (=> (not res!1009118) (not e!832198))))

(assert (=> b!1484228 (= res!1009118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484229 () Bool)

(declare-fun res!1009126 () Bool)

(assert (=> b!1484229 (=> (not res!1009126) (not e!832193))))

(assert (=> b!1484229 (= res!1009126 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484230 () Bool)

(declare-fun res!1009128 () Bool)

(assert (=> b!1484230 (=> (not res!1009128) (not e!832191))))

(assert (=> b!1484230 (= res!1009128 (= (seekEntryOrOpen!0 (select (arr!47994 a!2862) j!93) a!2862 mask!2687) (Found!12257 j!93)))))

(assert (= (and start!126566 res!1009122) b!1484227))

(assert (= (and b!1484227 res!1009113) b!1484225))

(assert (= (and b!1484225 res!1009112) b!1484219))

(assert (= (and b!1484219 res!1009117) b!1484228))

(assert (= (and b!1484228 res!1009118) b!1484212))

(assert (= (and b!1484212 res!1009124) b!1484210))

(assert (= (and b!1484210 res!1009120) b!1484218))

(assert (= (and b!1484218 res!1009121) b!1484217))

(assert (= (and b!1484217 res!1009119) b!1484213))

(assert (= (and b!1484213 res!1009110) b!1484216))

(assert (= (and b!1484216 res!1009111) b!1484220))

(assert (= (and b!1484220 c!137075) b!1484215))

(assert (= (and b!1484220 (not c!137075)) b!1484226))

(assert (= (and b!1484220 res!1009127) b!1484229))

(assert (= (and b!1484229 res!1009126) b!1484211))

(assert (= (and b!1484211 res!1009125) b!1484230))

(assert (= (and b!1484230 res!1009128) b!1484223))

(assert (= (and b!1484223 res!1009123) b!1484221))

(assert (= (and b!1484221 (not res!1009114)) b!1484224))

(assert (= (and b!1484224 res!1009116) b!1484214))

(assert (= (and b!1484211 (not res!1009115)) b!1484222))

(declare-fun m!1369601 () Bool)

(assert (=> b!1484226 m!1369601))

(declare-fun m!1369603 () Bool)

(assert (=> b!1484226 m!1369603))

(declare-fun m!1369605 () Bool)

(assert (=> b!1484219 m!1369605))

(assert (=> b!1484219 m!1369605))

(declare-fun m!1369607 () Bool)

(assert (=> b!1484219 m!1369607))

(declare-fun m!1369609 () Bool)

(assert (=> start!126566 m!1369609))

(declare-fun m!1369611 () Bool)

(assert (=> start!126566 m!1369611))

(declare-fun m!1369613 () Bool)

(assert (=> b!1484212 m!1369613))

(assert (=> b!1484213 m!1369605))

(assert (=> b!1484213 m!1369605))

(declare-fun m!1369615 () Bool)

(assert (=> b!1484213 m!1369615))

(declare-fun m!1369617 () Bool)

(assert (=> b!1484221 m!1369617))

(assert (=> b!1484221 m!1369605))

(declare-fun m!1369619 () Bool)

(assert (=> b!1484221 m!1369619))

(declare-fun m!1369621 () Bool)

(assert (=> b!1484221 m!1369621))

(declare-fun m!1369623 () Bool)

(assert (=> b!1484222 m!1369623))

(declare-fun m!1369625 () Bool)

(assert (=> b!1484211 m!1369625))

(assert (=> b!1484211 m!1369619))

(assert (=> b!1484211 m!1369621))

(assert (=> b!1484211 m!1369617))

(declare-fun m!1369627 () Bool)

(assert (=> b!1484211 m!1369627))

(assert (=> b!1484211 m!1369605))

(assert (=> b!1484214 m!1369603))

(assert (=> b!1484214 m!1369601))

(declare-fun m!1369629 () Bool)

(assert (=> b!1484228 m!1369629))

(declare-fun m!1369631 () Bool)

(assert (=> b!1484225 m!1369631))

(assert (=> b!1484225 m!1369631))

(declare-fun m!1369633 () Bool)

(assert (=> b!1484225 m!1369633))

(declare-fun m!1369635 () Bool)

(assert (=> b!1484223 m!1369635))

(assert (=> b!1484223 m!1369605))

(assert (=> b!1484230 m!1369605))

(assert (=> b!1484230 m!1369605))

(declare-fun m!1369637 () Bool)

(assert (=> b!1484230 m!1369637))

(declare-fun m!1369639 () Bool)

(assert (=> b!1484215 m!1369639))

(assert (=> b!1484217 m!1369605))

(assert (=> b!1484217 m!1369605))

(declare-fun m!1369641 () Bool)

(assert (=> b!1484217 m!1369641))

(assert (=> b!1484217 m!1369641))

(assert (=> b!1484217 m!1369605))

(declare-fun m!1369643 () Bool)

(assert (=> b!1484217 m!1369643))

(declare-fun m!1369645 () Bool)

(assert (=> b!1484216 m!1369645))

(assert (=> b!1484216 m!1369645))

(declare-fun m!1369647 () Bool)

(assert (=> b!1484216 m!1369647))

(assert (=> b!1484216 m!1369619))

(declare-fun m!1369649 () Bool)

(assert (=> b!1484216 m!1369649))

(assert (=> b!1484218 m!1369619))

(declare-fun m!1369651 () Bool)

(assert (=> b!1484218 m!1369651))

(push 1)

