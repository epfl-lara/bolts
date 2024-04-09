; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125044 () Bool)

(assert start!125044)

(declare-fun b!1453624 () Bool)

(declare-fun res!984718 () Bool)

(declare-fun e!818179 () Bool)

(assert (=> b!1453624 (=> (not res!984718) (not e!818179))))

(declare-fun e!818180 () Bool)

(assert (=> b!1453624 (= res!984718 e!818180)))

(declare-fun c!133970 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453624 (= c!133970 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453625 () Bool)

(declare-fun res!984726 () Bool)

(declare-fun e!818178 () Bool)

(assert (=> b!1453625 (=> (not res!984726) (not e!818178))))

(declare-datatypes ((array!98409 0))(
  ( (array!98410 (arr!47488 (Array (_ BitVec 32) (_ BitVec 64))) (size!48039 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98409)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453625 (= res!984726 (validKeyInArray!0 (select (arr!47488 a!2862) j!93)))))

(declare-fun b!1453626 () Bool)

(declare-fun res!984717 () Bool)

(assert (=> b!1453626 (=> (not res!984717) (not e!818178))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453626 (= res!984717 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48039 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48039 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48039 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453627 () Bool)

(declare-fun e!818183 () Bool)

(assert (=> b!1453627 (= e!818178 e!818183)))

(declare-fun res!984729 () Bool)

(assert (=> b!1453627 (=> (not res!984729) (not e!818183))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453627 (= res!984729 (= (select (store (arr!47488 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637261 () array!98409)

(assert (=> b!1453627 (= lt!637261 (array!98410 (store (arr!47488 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48039 a!2862)))))

(declare-fun b!1453628 () Bool)

(declare-fun res!984713 () Bool)

(assert (=> b!1453628 (=> (not res!984713) (not e!818179))))

(assert (=> b!1453628 (= res!984713 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453629 () Bool)

(declare-fun res!984714 () Bool)

(assert (=> b!1453629 (=> (not res!984714) (not e!818178))))

(assert (=> b!1453629 (= res!984714 (validKeyInArray!0 (select (arr!47488 a!2862) i!1006)))))

(declare-fun lt!637266 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11763 0))(
  ( (MissingZero!11763 (index!49443 (_ BitVec 32))) (Found!11763 (index!49444 (_ BitVec 32))) (Intermediate!11763 (undefined!12575 Bool) (index!49445 (_ BitVec 32)) (x!131087 (_ BitVec 32))) (Undefined!11763) (MissingVacant!11763 (index!49446 (_ BitVec 32))) )
))
(declare-fun lt!637264 () SeekEntryResult!11763)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1453630 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98409 (_ BitVec 32)) SeekEntryResult!11763)

(assert (=> b!1453630 (= e!818180 (= lt!637264 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637266 lt!637261 mask!2687)))))

(declare-fun res!984723 () Bool)

(assert (=> start!125044 (=> (not res!984723) (not e!818178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125044 (= res!984723 (validMask!0 mask!2687))))

(assert (=> start!125044 e!818178))

(assert (=> start!125044 true))

(declare-fun array_inv!36433 (array!98409) Bool)

(assert (=> start!125044 (array_inv!36433 a!2862)))

(declare-fun b!1453631 () Bool)

(declare-fun e!818176 () Bool)

(assert (=> b!1453631 (= e!818176 (and (or (= (select (arr!47488 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47488 a!2862) intermediateBeforeIndex!19) (select (arr!47488 a!2862) j!93))) (let ((bdg!52999 (select (store (arr!47488 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47488 a!2862) index!646) bdg!52999) (= (select (arr!47488 a!2862) index!646) (select (arr!47488 a!2862) j!93))) (= (select (arr!47488 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!52999 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1453632 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98409 (_ BitVec 32)) SeekEntryResult!11763)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98409 (_ BitVec 32)) SeekEntryResult!11763)

(assert (=> b!1453632 (= e!818180 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637266 lt!637261 mask!2687) (seekEntryOrOpen!0 lt!637266 lt!637261 mask!2687)))))

(declare-fun b!1453633 () Bool)

(declare-fun e!818182 () Bool)

(declare-fun e!818181 () Bool)

(assert (=> b!1453633 (= e!818182 e!818181)))

(declare-fun res!984724 () Bool)

(assert (=> b!1453633 (=> res!984724 e!818181)))

(declare-fun lt!637263 () (_ BitVec 32))

(assert (=> b!1453633 (= res!984724 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637263 #b00000000000000000000000000000000) (bvsge lt!637263 (size!48039 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453633 (= lt!637263 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637260 () SeekEntryResult!11763)

(assert (=> b!1453633 (= lt!637260 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637266 lt!637261 mask!2687))))

(assert (=> b!1453633 (= lt!637260 (seekEntryOrOpen!0 lt!637266 lt!637261 mask!2687))))

(declare-fun b!1453634 () Bool)

(declare-fun res!984725 () Bool)

(declare-fun e!818177 () Bool)

(assert (=> b!1453634 (=> (not res!984725) (not e!818177))))

(declare-fun lt!637265 () SeekEntryResult!11763)

(assert (=> b!1453634 (= res!984725 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47488 a!2862) j!93) a!2862 mask!2687) lt!637265))))

(declare-fun b!1453635 () Bool)

(declare-fun res!984727 () Bool)

(assert (=> b!1453635 (=> (not res!984727) (not e!818178))))

(declare-datatypes ((List!34169 0))(
  ( (Nil!34166) (Cons!34165 (h!35515 (_ BitVec 64)) (t!48870 List!34169)) )
))
(declare-fun arrayNoDuplicates!0 (array!98409 (_ BitVec 32) List!34169) Bool)

(assert (=> b!1453635 (= res!984727 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34166))))

(declare-fun b!1453636 () Bool)

(declare-fun res!984715 () Bool)

(assert (=> b!1453636 (=> (not res!984715) (not e!818176))))

(assert (=> b!1453636 (= res!984715 (= (seekEntryOrOpen!0 (select (arr!47488 a!2862) j!93) a!2862 mask!2687) (Found!11763 j!93)))))

(declare-fun b!1453637 () Bool)

(assert (=> b!1453637 (= e!818177 e!818179)))

(declare-fun res!984721 () Bool)

(assert (=> b!1453637 (=> (not res!984721) (not e!818179))))

(assert (=> b!1453637 (= res!984721 (= lt!637264 (Intermediate!11763 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453637 (= lt!637264 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637266 mask!2687) lt!637266 lt!637261 mask!2687))))

(assert (=> b!1453637 (= lt!637266 (select (store (arr!47488 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!818174 () Bool)

(declare-fun b!1453638 () Bool)

(assert (=> b!1453638 (= e!818174 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637263 intermediateAfterIndex!19 lt!637266 lt!637261 mask!2687) lt!637260)))))

(declare-fun b!1453639 () Bool)

(declare-fun res!984728 () Bool)

(assert (=> b!1453639 (=> (not res!984728) (not e!818178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98409 (_ BitVec 32)) Bool)

(assert (=> b!1453639 (= res!984728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453640 () Bool)

(declare-fun res!984722 () Bool)

(assert (=> b!1453640 (=> (not res!984722) (not e!818178))))

(assert (=> b!1453640 (= res!984722 (and (= (size!48039 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48039 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48039 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453641 () Bool)

(assert (=> b!1453641 (= e!818174 (not (= lt!637264 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637263 lt!637266 lt!637261 mask!2687))))))

(declare-fun b!1453642 () Bool)

(assert (=> b!1453642 (= e!818181 true)))

(declare-fun lt!637262 () Bool)

(assert (=> b!1453642 (= lt!637262 e!818174)))

(declare-fun c!133969 () Bool)

(assert (=> b!1453642 (= c!133969 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1453643 () Bool)

(assert (=> b!1453643 (= e!818179 (not e!818182))))

(declare-fun res!984720 () Bool)

(assert (=> b!1453643 (=> res!984720 e!818182)))

(assert (=> b!1453643 (= res!984720 (or (and (= (select (arr!47488 a!2862) index!646) (select (store (arr!47488 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47488 a!2862) index!646) (select (arr!47488 a!2862) j!93))) (= (select (arr!47488 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453643 e!818176))

(declare-fun res!984716 () Bool)

(assert (=> b!1453643 (=> (not res!984716) (not e!818176))))

(assert (=> b!1453643 (= res!984716 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48970 0))(
  ( (Unit!48971) )
))
(declare-fun lt!637267 () Unit!48970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48970)

(assert (=> b!1453643 (= lt!637267 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453644 () Bool)

(assert (=> b!1453644 (= e!818183 e!818177)))

(declare-fun res!984719 () Bool)

(assert (=> b!1453644 (=> (not res!984719) (not e!818177))))

(assert (=> b!1453644 (= res!984719 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47488 a!2862) j!93) mask!2687) (select (arr!47488 a!2862) j!93) a!2862 mask!2687) lt!637265))))

(assert (=> b!1453644 (= lt!637265 (Intermediate!11763 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453645 () Bool)

(declare-fun res!984712 () Bool)

(assert (=> b!1453645 (=> res!984712 e!818181)))

(assert (=> b!1453645 (= res!984712 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637263 (select (arr!47488 a!2862) j!93) a!2862 mask!2687) lt!637265)))))

(assert (= (and start!125044 res!984723) b!1453640))

(assert (= (and b!1453640 res!984722) b!1453629))

(assert (= (and b!1453629 res!984714) b!1453625))

(assert (= (and b!1453625 res!984726) b!1453639))

(assert (= (and b!1453639 res!984728) b!1453635))

(assert (= (and b!1453635 res!984727) b!1453626))

(assert (= (and b!1453626 res!984717) b!1453627))

(assert (= (and b!1453627 res!984729) b!1453644))

(assert (= (and b!1453644 res!984719) b!1453634))

(assert (= (and b!1453634 res!984725) b!1453637))

(assert (= (and b!1453637 res!984721) b!1453624))

(assert (= (and b!1453624 c!133970) b!1453630))

(assert (= (and b!1453624 (not c!133970)) b!1453632))

(assert (= (and b!1453624 res!984718) b!1453628))

(assert (= (and b!1453628 res!984713) b!1453643))

(assert (= (and b!1453643 res!984716) b!1453636))

(assert (= (and b!1453636 res!984715) b!1453631))

(assert (= (and b!1453643 (not res!984720)) b!1453633))

(assert (= (and b!1453633 (not res!984724)) b!1453645))

(assert (= (and b!1453645 (not res!984712)) b!1453642))

(assert (= (and b!1453642 c!133969) b!1453641))

(assert (= (and b!1453642 (not c!133969)) b!1453638))

(declare-fun m!1342113 () Bool)

(assert (=> b!1453645 m!1342113))

(assert (=> b!1453645 m!1342113))

(declare-fun m!1342115 () Bool)

(assert (=> b!1453645 m!1342115))

(assert (=> b!1453636 m!1342113))

(assert (=> b!1453636 m!1342113))

(declare-fun m!1342117 () Bool)

(assert (=> b!1453636 m!1342117))

(declare-fun m!1342119 () Bool)

(assert (=> start!125044 m!1342119))

(declare-fun m!1342121 () Bool)

(assert (=> start!125044 m!1342121))

(declare-fun m!1342123 () Bool)

(assert (=> b!1453643 m!1342123))

(declare-fun m!1342125 () Bool)

(assert (=> b!1453643 m!1342125))

(declare-fun m!1342127 () Bool)

(assert (=> b!1453643 m!1342127))

(declare-fun m!1342129 () Bool)

(assert (=> b!1453643 m!1342129))

(declare-fun m!1342131 () Bool)

(assert (=> b!1453643 m!1342131))

(assert (=> b!1453643 m!1342113))

(declare-fun m!1342133 () Bool)

(assert (=> b!1453637 m!1342133))

(assert (=> b!1453637 m!1342133))

(declare-fun m!1342135 () Bool)

(assert (=> b!1453637 m!1342135))

(assert (=> b!1453637 m!1342125))

(declare-fun m!1342137 () Bool)

(assert (=> b!1453637 m!1342137))

(declare-fun m!1342139 () Bool)

(assert (=> b!1453632 m!1342139))

(declare-fun m!1342141 () Bool)

(assert (=> b!1453632 m!1342141))

(declare-fun m!1342143 () Bool)

(assert (=> b!1453639 m!1342143))

(assert (=> b!1453631 m!1342125))

(declare-fun m!1342145 () Bool)

(assert (=> b!1453631 m!1342145))

(assert (=> b!1453631 m!1342127))

(assert (=> b!1453631 m!1342129))

(assert (=> b!1453631 m!1342113))

(declare-fun m!1342147 () Bool)

(assert (=> b!1453638 m!1342147))

(assert (=> b!1453625 m!1342113))

(assert (=> b!1453625 m!1342113))

(declare-fun m!1342149 () Bool)

(assert (=> b!1453625 m!1342149))

(declare-fun m!1342151 () Bool)

(assert (=> b!1453630 m!1342151))

(declare-fun m!1342153 () Bool)

(assert (=> b!1453633 m!1342153))

(assert (=> b!1453633 m!1342139))

(assert (=> b!1453633 m!1342141))

(assert (=> b!1453634 m!1342113))

(assert (=> b!1453634 m!1342113))

(declare-fun m!1342155 () Bool)

(assert (=> b!1453634 m!1342155))

(declare-fun m!1342157 () Bool)

(assert (=> b!1453641 m!1342157))

(assert (=> b!1453627 m!1342125))

(declare-fun m!1342159 () Bool)

(assert (=> b!1453627 m!1342159))

(assert (=> b!1453644 m!1342113))

(assert (=> b!1453644 m!1342113))

(declare-fun m!1342161 () Bool)

(assert (=> b!1453644 m!1342161))

(assert (=> b!1453644 m!1342161))

(assert (=> b!1453644 m!1342113))

(declare-fun m!1342163 () Bool)

(assert (=> b!1453644 m!1342163))

(declare-fun m!1342165 () Bool)

(assert (=> b!1453629 m!1342165))

(assert (=> b!1453629 m!1342165))

(declare-fun m!1342167 () Bool)

(assert (=> b!1453629 m!1342167))

(declare-fun m!1342169 () Bool)

(assert (=> b!1453635 m!1342169))

(push 1)

