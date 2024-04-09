; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124586 () Bool)

(assert start!124586)

(declare-fun b!1441291 () Bool)

(declare-fun res!973761 () Bool)

(declare-fun e!812526 () Bool)

(assert (=> b!1441291 (=> (not res!973761) (not e!812526))))

(declare-datatypes ((array!97951 0))(
  ( (array!97952 (arr!47259 (Array (_ BitVec 32) (_ BitVec 64))) (size!47810 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97951)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97951 (_ BitVec 32)) Bool)

(assert (=> b!1441291 (= res!973761 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-datatypes ((SeekEntryResult!11534 0))(
  ( (MissingZero!11534 (index!48527 (_ BitVec 32))) (Found!11534 (index!48528 (_ BitVec 32))) (Intermediate!11534 (undefined!12346 Bool) (index!48529 (_ BitVec 32)) (x!130242 (_ BitVec 32))) (Undefined!11534) (MissingVacant!11534 (index!48530 (_ BitVec 32))) )
))
(declare-fun lt!633157 () SeekEntryResult!11534)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633153 () array!97951)

(declare-fun lt!633154 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1441292 () Bool)

(declare-fun e!812527 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97951 (_ BitVec 32)) SeekEntryResult!11534)

(assert (=> b!1441292 (= e!812527 (not (= lt!633157 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633154 lt!633153 mask!2687))))))

(declare-fun b!1441293 () Bool)

(declare-fun e!812528 () Bool)

(assert (=> b!1441293 (= e!812528 false)))

(declare-fun lt!633155 () Bool)

(assert (=> b!1441293 (= lt!633155 e!812527)))

(declare-fun c!133280 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441293 (= c!133280 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441294 () Bool)

(declare-fun res!973757 () Bool)

(declare-fun e!812525 () Bool)

(assert (=> b!1441294 (=> (not res!973757) (not e!812525))))

(declare-fun lt!633156 () SeekEntryResult!11534)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1441294 (= res!973757 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47259 a!2862) j!93) a!2862 mask!2687) lt!633156))))

(declare-fun b!1441295 () Bool)

(declare-fun res!973760 () Bool)

(assert (=> b!1441295 (=> (not res!973760) (not e!812526))))

(declare-datatypes ((List!33940 0))(
  ( (Nil!33937) (Cons!33936 (h!35286 (_ BitVec 64)) (t!48641 List!33940)) )
))
(declare-fun arrayNoDuplicates!0 (array!97951 (_ BitVec 32) List!33940) Bool)

(assert (=> b!1441295 (= res!973760 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33937))))

(declare-fun b!1441296 () Bool)

(declare-fun res!973764 () Bool)

(assert (=> b!1441296 (=> (not res!973764) (not e!812526))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441296 (= res!973764 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47810 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47810 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47810 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441297 () Bool)

(declare-fun e!812523 () Bool)

(assert (=> b!1441297 (= e!812526 e!812523)))

(declare-fun res!973767 () Bool)

(assert (=> b!1441297 (=> (not res!973767) (not e!812523))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441297 (= res!973767 (= (select (store (arr!47259 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441297 (= lt!633153 (array!97952 (store (arr!47259 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47810 a!2862)))))

(declare-fun b!1441299 () Bool)

(declare-fun res!973766 () Bool)

(assert (=> b!1441299 (=> (not res!973766) (not e!812526))))

(assert (=> b!1441299 (= res!973766 (and (= (size!47810 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47810 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47810 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441300 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97951 (_ BitVec 32)) SeekEntryResult!11534)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97951 (_ BitVec 32)) SeekEntryResult!11534)

(assert (=> b!1441300 (= e!812527 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633154 lt!633153 mask!2687) (seekEntryOrOpen!0 lt!633154 lt!633153 mask!2687))))))

(declare-fun b!1441301 () Bool)

(assert (=> b!1441301 (= e!812523 e!812525)))

(declare-fun res!973762 () Bool)

(assert (=> b!1441301 (=> (not res!973762) (not e!812525))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441301 (= res!973762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47259 a!2862) j!93) mask!2687) (select (arr!47259 a!2862) j!93) a!2862 mask!2687) lt!633156))))

(assert (=> b!1441301 (= lt!633156 (Intermediate!11534 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!973759 () Bool)

(assert (=> start!124586 (=> (not res!973759) (not e!812526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124586 (= res!973759 (validMask!0 mask!2687))))

(assert (=> start!124586 e!812526))

(assert (=> start!124586 true))

(declare-fun array_inv!36204 (array!97951) Bool)

(assert (=> start!124586 (array_inv!36204 a!2862)))

(declare-fun b!1441298 () Bool)

(assert (=> b!1441298 (= e!812525 e!812528)))

(declare-fun res!973765 () Bool)

(assert (=> b!1441298 (=> (not res!973765) (not e!812528))))

(assert (=> b!1441298 (= res!973765 (= lt!633157 (Intermediate!11534 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441298 (= lt!633157 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633154 mask!2687) lt!633154 lt!633153 mask!2687))))

(assert (=> b!1441298 (= lt!633154 (select (store (arr!47259 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441302 () Bool)

(declare-fun res!973763 () Bool)

(assert (=> b!1441302 (=> (not res!973763) (not e!812526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441302 (= res!973763 (validKeyInArray!0 (select (arr!47259 a!2862) j!93)))))

(declare-fun b!1441303 () Bool)

(declare-fun res!973758 () Bool)

(assert (=> b!1441303 (=> (not res!973758) (not e!812526))))

(assert (=> b!1441303 (= res!973758 (validKeyInArray!0 (select (arr!47259 a!2862) i!1006)))))

(assert (= (and start!124586 res!973759) b!1441299))

(assert (= (and b!1441299 res!973766) b!1441303))

(assert (= (and b!1441303 res!973758) b!1441302))

(assert (= (and b!1441302 res!973763) b!1441291))

(assert (= (and b!1441291 res!973761) b!1441295))

(assert (= (and b!1441295 res!973760) b!1441296))

(assert (= (and b!1441296 res!973764) b!1441297))

(assert (= (and b!1441297 res!973767) b!1441301))

(assert (= (and b!1441301 res!973762) b!1441294))

(assert (= (and b!1441294 res!973757) b!1441298))

(assert (= (and b!1441298 res!973765) b!1441293))

(assert (= (and b!1441293 c!133280) b!1441292))

(assert (= (and b!1441293 (not c!133280)) b!1441300))

(declare-fun m!1330573 () Bool)

(assert (=> b!1441298 m!1330573))

(assert (=> b!1441298 m!1330573))

(declare-fun m!1330575 () Bool)

(assert (=> b!1441298 m!1330575))

(declare-fun m!1330577 () Bool)

(assert (=> b!1441298 m!1330577))

(declare-fun m!1330579 () Bool)

(assert (=> b!1441298 m!1330579))

(declare-fun m!1330581 () Bool)

(assert (=> b!1441300 m!1330581))

(declare-fun m!1330583 () Bool)

(assert (=> b!1441300 m!1330583))

(declare-fun m!1330585 () Bool)

(assert (=> b!1441294 m!1330585))

(assert (=> b!1441294 m!1330585))

(declare-fun m!1330587 () Bool)

(assert (=> b!1441294 m!1330587))

(assert (=> b!1441302 m!1330585))

(assert (=> b!1441302 m!1330585))

(declare-fun m!1330589 () Bool)

(assert (=> b!1441302 m!1330589))

(assert (=> b!1441297 m!1330577))

(declare-fun m!1330591 () Bool)

(assert (=> b!1441297 m!1330591))

(declare-fun m!1330593 () Bool)

(assert (=> b!1441291 m!1330593))

(assert (=> b!1441301 m!1330585))

(assert (=> b!1441301 m!1330585))

(declare-fun m!1330595 () Bool)

(assert (=> b!1441301 m!1330595))

(assert (=> b!1441301 m!1330595))

(assert (=> b!1441301 m!1330585))

(declare-fun m!1330597 () Bool)

(assert (=> b!1441301 m!1330597))

(declare-fun m!1330599 () Bool)

(assert (=> b!1441292 m!1330599))

(declare-fun m!1330601 () Bool)

(assert (=> b!1441295 m!1330601))

(declare-fun m!1330603 () Bool)

(assert (=> start!124586 m!1330603))

(declare-fun m!1330605 () Bool)

(assert (=> start!124586 m!1330605))

(declare-fun m!1330607 () Bool)

(assert (=> b!1441303 m!1330607))

(assert (=> b!1441303 m!1330607))

(declare-fun m!1330609 () Bool)

(assert (=> b!1441303 m!1330609))

(push 1)

(assert (not b!1441292))

(assert (not b!1441302))

