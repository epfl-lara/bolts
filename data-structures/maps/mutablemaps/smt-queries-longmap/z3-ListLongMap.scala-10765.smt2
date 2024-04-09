; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125952 () Bool)

(assert start!125952)

(declare-fun b!1474176 () Bool)

(declare-fun res!1001518 () Bool)

(declare-fun e!827184 () Bool)

(assert (=> b!1474176 (=> (not res!1001518) (not e!827184))))

(declare-fun e!827186 () Bool)

(assert (=> b!1474176 (= res!1001518 e!827186)))

(declare-fun c!135851 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474176 (= c!135851 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474177 () Bool)

(declare-fun e!827180 () Bool)

(declare-fun e!827182 () Bool)

(assert (=> b!1474177 (= e!827180 e!827182)))

(declare-fun res!1001510 () Bool)

(assert (=> b!1474177 (=> (not res!1001510) (not e!827182))))

(declare-datatypes ((array!99146 0))(
  ( (array!99147 (arr!47852 (Array (_ BitVec 32) (_ BitVec 64))) (size!48403 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99146)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12115 0))(
  ( (MissingZero!12115 (index!50851 (_ BitVec 32))) (Found!12115 (index!50852 (_ BitVec 32))) (Intermediate!12115 (undefined!12927 Bool) (index!50853 (_ BitVec 32)) (x!132434 (_ BitVec 32))) (Undefined!12115) (MissingVacant!12115 (index!50854 (_ BitVec 32))) )
))
(declare-fun lt!644137 () SeekEntryResult!12115)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99146 (_ BitVec 32)) SeekEntryResult!12115)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474177 (= res!1001510 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47852 a!2862) j!93) mask!2687) (select (arr!47852 a!2862) j!93) a!2862 mask!2687) lt!644137))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474177 (= lt!644137 (Intermediate!12115 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474178 () Bool)

(declare-fun res!1001519 () Bool)

(declare-fun e!827181 () Bool)

(assert (=> b!1474178 (=> (not res!1001519) (not e!827181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99146 (_ BitVec 32)) Bool)

(assert (=> b!1474178 (= res!1001519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474179 () Bool)

(declare-fun res!1001512 () Bool)

(assert (=> b!1474179 (=> (not res!1001512) (not e!827182))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1474179 (= res!1001512 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47852 a!2862) j!93) a!2862 mask!2687) lt!644137))))

(declare-fun b!1474180 () Bool)

(declare-fun res!1001520 () Bool)

(assert (=> b!1474180 (=> (not res!1001520) (not e!827181))))

(declare-datatypes ((List!34533 0))(
  ( (Nil!34530) (Cons!34529 (h!35888 (_ BitVec 64)) (t!49234 List!34533)) )
))
(declare-fun arrayNoDuplicates!0 (array!99146 (_ BitVec 32) List!34533) Bool)

(assert (=> b!1474180 (= res!1001520 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34530))))

(declare-fun lt!644138 () array!99146)

(declare-fun lt!644136 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1474181 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99146 (_ BitVec 32)) SeekEntryResult!12115)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99146 (_ BitVec 32)) SeekEntryResult!12115)

(assert (=> b!1474181 (= e!827186 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644136 lt!644138 mask!2687) (seekEntryOrOpen!0 lt!644136 lt!644138 mask!2687)))))

(declare-fun b!1474183 () Bool)

(declare-fun res!1001517 () Bool)

(assert (=> b!1474183 (=> (not res!1001517) (not e!827181))))

(assert (=> b!1474183 (= res!1001517 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48403 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48403 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48403 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474184 () Bool)

(declare-fun e!827183 () Bool)

(assert (=> b!1474184 (= e!827183 (or (= (select (arr!47852 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47852 a!2862) intermediateBeforeIndex!19) (select (arr!47852 a!2862) j!93))))))

(declare-fun b!1474185 () Bool)

(assert (=> b!1474185 (= e!827182 e!827184)))

(declare-fun res!1001521 () Bool)

(assert (=> b!1474185 (=> (not res!1001521) (not e!827184))))

(declare-fun lt!644139 () SeekEntryResult!12115)

(assert (=> b!1474185 (= res!1001521 (= lt!644139 (Intermediate!12115 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1474185 (= lt!644139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644136 mask!2687) lt!644136 lt!644138 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474185 (= lt!644136 (select (store (arr!47852 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474186 () Bool)

(assert (=> b!1474186 (= e!827181 e!827180)))

(declare-fun res!1001516 () Bool)

(assert (=> b!1474186 (=> (not res!1001516) (not e!827180))))

(assert (=> b!1474186 (= res!1001516 (= (select (store (arr!47852 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474186 (= lt!644138 (array!99147 (store (arr!47852 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48403 a!2862)))))

(declare-fun b!1474187 () Bool)

(assert (=> b!1474187 (= e!827184 (not true))))

(assert (=> b!1474187 e!827183))

(declare-fun res!1001515 () Bool)

(assert (=> b!1474187 (=> (not res!1001515) (not e!827183))))

(assert (=> b!1474187 (= res!1001515 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49518 0))(
  ( (Unit!49519) )
))
(declare-fun lt!644140 () Unit!49518)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99146 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49518)

(assert (=> b!1474187 (= lt!644140 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474188 () Bool)

(assert (=> b!1474188 (= e!827186 (= lt!644139 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644136 lt!644138 mask!2687)))))

(declare-fun b!1474189 () Bool)

(declare-fun res!1001513 () Bool)

(assert (=> b!1474189 (=> (not res!1001513) (not e!827184))))

(assert (=> b!1474189 (= res!1001513 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474190 () Bool)

(declare-fun res!1001523 () Bool)

(assert (=> b!1474190 (=> (not res!1001523) (not e!827181))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474190 (= res!1001523 (validKeyInArray!0 (select (arr!47852 a!2862) i!1006)))))

(declare-fun res!1001509 () Bool)

(assert (=> start!125952 (=> (not res!1001509) (not e!827181))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125952 (= res!1001509 (validMask!0 mask!2687))))

(assert (=> start!125952 e!827181))

(assert (=> start!125952 true))

(declare-fun array_inv!36797 (array!99146) Bool)

(assert (=> start!125952 (array_inv!36797 a!2862)))

(declare-fun b!1474182 () Bool)

(declare-fun res!1001514 () Bool)

(assert (=> b!1474182 (=> (not res!1001514) (not e!827181))))

(assert (=> b!1474182 (= res!1001514 (validKeyInArray!0 (select (arr!47852 a!2862) j!93)))))

(declare-fun b!1474191 () Bool)

(declare-fun res!1001522 () Bool)

(assert (=> b!1474191 (=> (not res!1001522) (not e!827183))))

(assert (=> b!1474191 (= res!1001522 (= (seekEntryOrOpen!0 (select (arr!47852 a!2862) j!93) a!2862 mask!2687) (Found!12115 j!93)))))

(declare-fun b!1474192 () Bool)

(declare-fun res!1001511 () Bool)

(assert (=> b!1474192 (=> (not res!1001511) (not e!827181))))

(assert (=> b!1474192 (= res!1001511 (and (= (size!48403 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48403 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48403 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125952 res!1001509) b!1474192))

(assert (= (and b!1474192 res!1001511) b!1474190))

(assert (= (and b!1474190 res!1001523) b!1474182))

(assert (= (and b!1474182 res!1001514) b!1474178))

(assert (= (and b!1474178 res!1001519) b!1474180))

(assert (= (and b!1474180 res!1001520) b!1474183))

(assert (= (and b!1474183 res!1001517) b!1474186))

(assert (= (and b!1474186 res!1001516) b!1474177))

(assert (= (and b!1474177 res!1001510) b!1474179))

(assert (= (and b!1474179 res!1001512) b!1474185))

(assert (= (and b!1474185 res!1001521) b!1474176))

(assert (= (and b!1474176 c!135851) b!1474188))

(assert (= (and b!1474176 (not c!135851)) b!1474181))

(assert (= (and b!1474176 res!1001518) b!1474189))

(assert (= (and b!1474189 res!1001513) b!1474187))

(assert (= (and b!1474187 res!1001515) b!1474191))

(assert (= (and b!1474191 res!1001522) b!1474184))

(declare-fun m!1360699 () Bool)

(assert (=> b!1474177 m!1360699))

(assert (=> b!1474177 m!1360699))

(declare-fun m!1360701 () Bool)

(assert (=> b!1474177 m!1360701))

(assert (=> b!1474177 m!1360701))

(assert (=> b!1474177 m!1360699))

(declare-fun m!1360703 () Bool)

(assert (=> b!1474177 m!1360703))

(assert (=> b!1474182 m!1360699))

(assert (=> b!1474182 m!1360699))

(declare-fun m!1360705 () Bool)

(assert (=> b!1474182 m!1360705))

(declare-fun m!1360707 () Bool)

(assert (=> start!125952 m!1360707))

(declare-fun m!1360709 () Bool)

(assert (=> start!125952 m!1360709))

(declare-fun m!1360711 () Bool)

(assert (=> b!1474186 m!1360711))

(declare-fun m!1360713 () Bool)

(assert (=> b!1474186 m!1360713))

(declare-fun m!1360715 () Bool)

(assert (=> b!1474178 m!1360715))

(declare-fun m!1360717 () Bool)

(assert (=> b!1474187 m!1360717))

(declare-fun m!1360719 () Bool)

(assert (=> b!1474187 m!1360719))

(assert (=> b!1474191 m!1360699))

(assert (=> b!1474191 m!1360699))

(declare-fun m!1360721 () Bool)

(assert (=> b!1474191 m!1360721))

(declare-fun m!1360723 () Bool)

(assert (=> b!1474184 m!1360723))

(assert (=> b!1474184 m!1360699))

(declare-fun m!1360725 () Bool)

(assert (=> b!1474181 m!1360725))

(declare-fun m!1360727 () Bool)

(assert (=> b!1474181 m!1360727))

(declare-fun m!1360729 () Bool)

(assert (=> b!1474180 m!1360729))

(declare-fun m!1360731 () Bool)

(assert (=> b!1474190 m!1360731))

(assert (=> b!1474190 m!1360731))

(declare-fun m!1360733 () Bool)

(assert (=> b!1474190 m!1360733))

(declare-fun m!1360735 () Bool)

(assert (=> b!1474188 m!1360735))

(declare-fun m!1360737 () Bool)

(assert (=> b!1474185 m!1360737))

(assert (=> b!1474185 m!1360737))

(declare-fun m!1360739 () Bool)

(assert (=> b!1474185 m!1360739))

(assert (=> b!1474185 m!1360711))

(declare-fun m!1360741 () Bool)

(assert (=> b!1474185 m!1360741))

(assert (=> b!1474179 m!1360699))

(assert (=> b!1474179 m!1360699))

(declare-fun m!1360743 () Bool)

(assert (=> b!1474179 m!1360743))

(check-sat (not b!1474190) (not b!1474179) (not b!1474182) (not b!1474185) (not b!1474187) (not b!1474188) (not b!1474177) (not b!1474181) (not start!125952) (not b!1474180) (not b!1474178) (not b!1474191))
(check-sat)
