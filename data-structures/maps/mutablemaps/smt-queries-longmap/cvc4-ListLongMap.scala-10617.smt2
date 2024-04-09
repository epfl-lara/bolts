; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124886 () Bool)

(assert start!124886)

(declare-fun b!1449196 () Bool)

(declare-fun res!980775 () Bool)

(declare-fun e!816146 () Bool)

(assert (=> b!1449196 (=> (not res!980775) (not e!816146))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11684 0))(
  ( (MissingZero!11684 (index!49127 (_ BitVec 32))) (Found!11684 (index!49128 (_ BitVec 32))) (Intermediate!11684 (undefined!12496 Bool) (index!49129 (_ BitVec 32)) (x!130792 (_ BitVec 32))) (Undefined!11684) (MissingVacant!11684 (index!49130 (_ BitVec 32))) )
))
(declare-fun lt!635781 () SeekEntryResult!11684)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98251 0))(
  ( (array!98252 (arr!47409 (Array (_ BitVec 32) (_ BitVec 64))) (size!47960 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98251)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98251 (_ BitVec 32)) SeekEntryResult!11684)

(assert (=> b!1449196 (= res!980775 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47409 a!2862) j!93) a!2862 mask!2687) lt!635781))))

(declare-fun b!1449197 () Bool)

(declare-fun e!816138 () Bool)

(assert (=> b!1449197 (= e!816138 true)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lt!635782 () SeekEntryResult!11684)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98251 (_ BitVec 32)) SeekEntryResult!11684)

(assert (=> b!1449197 (= lt!635782 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47409 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449198 () Bool)

(declare-fun e!816141 () Bool)

(assert (=> b!1449198 (= e!816146 e!816141)))

(declare-fun res!980771 () Bool)

(assert (=> b!1449198 (=> (not res!980771) (not e!816141))))

(declare-fun lt!635783 () SeekEntryResult!11684)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449198 (= res!980771 (= lt!635783 (Intermediate!11684 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635780 () array!98251)

(declare-fun lt!635779 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449198 (= lt!635783 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635779 mask!2687) lt!635779 lt!635780 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449198 (= lt!635779 (select (store (arr!47409 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449199 () Bool)

(declare-fun res!980776 () Bool)

(declare-fun e!816143 () Bool)

(assert (=> b!1449199 (=> (not res!980776) (not e!816143))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449199 (= res!980776 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47960 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47960 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47960 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!816145 () Bool)

(declare-fun b!1449200 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98251 (_ BitVec 32)) SeekEntryResult!11684)

(assert (=> b!1449200 (= e!816145 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635779 lt!635780 mask!2687) (seekEntryOrOpen!0 lt!635779 lt!635780 mask!2687)))))

(declare-fun b!1449201 () Bool)

(declare-fun res!980768 () Bool)

(assert (=> b!1449201 (=> (not res!980768) (not e!816143))))

(assert (=> b!1449201 (= res!980768 (and (= (size!47960 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47960 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47960 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449202 () Bool)

(assert (=> b!1449202 (= e!816141 (not e!816138))))

(declare-fun res!980766 () Bool)

(assert (=> b!1449202 (=> res!980766 e!816138)))

(assert (=> b!1449202 (= res!980766 (or (and (= (select (arr!47409 a!2862) index!646) (select (store (arr!47409 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47409 a!2862) index!646) (select (arr!47409 a!2862) j!93))) (not (= (select (arr!47409 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47409 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816142 () Bool)

(assert (=> b!1449202 e!816142))

(declare-fun res!980778 () Bool)

(assert (=> b!1449202 (=> (not res!980778) (not e!816142))))

(declare-fun lt!635784 () SeekEntryResult!11684)

(assert (=> b!1449202 (= res!980778 (and (= lt!635784 (Found!11684 j!93)) (or (= (select (arr!47409 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47409 a!2862) intermediateBeforeIndex!19) (select (arr!47409 a!2862) j!93)))))))

(assert (=> b!1449202 (= lt!635784 (seekEntryOrOpen!0 (select (arr!47409 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98251 (_ BitVec 32)) Bool)

(assert (=> b!1449202 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48812 0))(
  ( (Unit!48813) )
))
(declare-fun lt!635785 () Unit!48812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98251 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48812)

(assert (=> b!1449202 (= lt!635785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449203 () Bool)

(declare-fun e!816139 () Bool)

(assert (=> b!1449203 (= e!816142 e!816139)))

(declare-fun res!980772 () Bool)

(assert (=> b!1449203 (=> res!980772 e!816139)))

(assert (=> b!1449203 (= res!980772 (or (and (= (select (arr!47409 a!2862) index!646) (select (store (arr!47409 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47409 a!2862) index!646) (select (arr!47409 a!2862) j!93))) (not (= (select (arr!47409 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449204 () Bool)

(declare-fun e!816140 () Bool)

(assert (=> b!1449204 (= e!816139 e!816140)))

(declare-fun res!980773 () Bool)

(assert (=> b!1449204 (=> (not res!980773) (not e!816140))))

(assert (=> b!1449204 (= res!980773 (= lt!635784 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47409 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449205 () Bool)

(declare-fun res!980765 () Bool)

(assert (=> b!1449205 (=> (not res!980765) (not e!816141))))

(assert (=> b!1449205 (= res!980765 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449206 () Bool)

(declare-fun e!816137 () Bool)

(assert (=> b!1449206 (= e!816137 e!816146)))

(declare-fun res!980769 () Bool)

(assert (=> b!1449206 (=> (not res!980769) (not e!816146))))

(assert (=> b!1449206 (= res!980769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47409 a!2862) j!93) mask!2687) (select (arr!47409 a!2862) j!93) a!2862 mask!2687) lt!635781))))

(assert (=> b!1449206 (= lt!635781 (Intermediate!11684 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449207 () Bool)

(declare-fun res!980770 () Bool)

(assert (=> b!1449207 (=> (not res!980770) (not e!816141))))

(assert (=> b!1449207 (= res!980770 e!816145)))

(declare-fun c!133730 () Bool)

(assert (=> b!1449207 (= c!133730 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449208 () Bool)

(declare-fun res!980763 () Bool)

(assert (=> b!1449208 (=> (not res!980763) (not e!816143))))

(assert (=> b!1449208 (= res!980763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!980777 () Bool)

(assert (=> start!124886 (=> (not res!980777) (not e!816143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124886 (= res!980777 (validMask!0 mask!2687))))

(assert (=> start!124886 e!816143))

(assert (=> start!124886 true))

(declare-fun array_inv!36354 (array!98251) Bool)

(assert (=> start!124886 (array_inv!36354 a!2862)))

(declare-fun b!1449209 () Bool)

(declare-fun res!980774 () Bool)

(assert (=> b!1449209 (=> (not res!980774) (not e!816143))))

(declare-datatypes ((List!34090 0))(
  ( (Nil!34087) (Cons!34086 (h!35436 (_ BitVec 64)) (t!48791 List!34090)) )
))
(declare-fun arrayNoDuplicates!0 (array!98251 (_ BitVec 32) List!34090) Bool)

(assert (=> b!1449209 (= res!980774 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34087))))

(declare-fun b!1449210 () Bool)

(declare-fun res!980764 () Bool)

(assert (=> b!1449210 (=> (not res!980764) (not e!816143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449210 (= res!980764 (validKeyInArray!0 (select (arr!47409 a!2862) j!93)))))

(declare-fun b!1449211 () Bool)

(assert (=> b!1449211 (= e!816143 e!816137)))

(declare-fun res!980762 () Bool)

(assert (=> b!1449211 (=> (not res!980762) (not e!816137))))

(assert (=> b!1449211 (= res!980762 (= (select (store (arr!47409 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449211 (= lt!635780 (array!98252 (store (arr!47409 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47960 a!2862)))))

(declare-fun b!1449212 () Bool)

(assert (=> b!1449212 (= e!816140 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449213 () Bool)

(assert (=> b!1449213 (= e!816145 (= lt!635783 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635779 lt!635780 mask!2687)))))

(declare-fun b!1449214 () Bool)

(declare-fun res!980767 () Bool)

(assert (=> b!1449214 (=> (not res!980767) (not e!816143))))

(assert (=> b!1449214 (= res!980767 (validKeyInArray!0 (select (arr!47409 a!2862) i!1006)))))

(assert (= (and start!124886 res!980777) b!1449201))

(assert (= (and b!1449201 res!980768) b!1449214))

(assert (= (and b!1449214 res!980767) b!1449210))

(assert (= (and b!1449210 res!980764) b!1449208))

(assert (= (and b!1449208 res!980763) b!1449209))

(assert (= (and b!1449209 res!980774) b!1449199))

(assert (= (and b!1449199 res!980776) b!1449211))

(assert (= (and b!1449211 res!980762) b!1449206))

(assert (= (and b!1449206 res!980769) b!1449196))

(assert (= (and b!1449196 res!980775) b!1449198))

(assert (= (and b!1449198 res!980771) b!1449207))

(assert (= (and b!1449207 c!133730) b!1449213))

(assert (= (and b!1449207 (not c!133730)) b!1449200))

(assert (= (and b!1449207 res!980770) b!1449205))

(assert (= (and b!1449205 res!980765) b!1449202))

(assert (= (and b!1449202 res!980778) b!1449203))

(assert (= (and b!1449203 (not res!980772)) b!1449204))

(assert (= (and b!1449204 res!980773) b!1449212))

(assert (= (and b!1449202 (not res!980766)) b!1449197))

(declare-fun m!1337973 () Bool)

(assert (=> b!1449206 m!1337973))

(assert (=> b!1449206 m!1337973))

(declare-fun m!1337975 () Bool)

(assert (=> b!1449206 m!1337975))

(assert (=> b!1449206 m!1337975))

(assert (=> b!1449206 m!1337973))

(declare-fun m!1337977 () Bool)

(assert (=> b!1449206 m!1337977))

(declare-fun m!1337979 () Bool)

(assert (=> b!1449214 m!1337979))

(assert (=> b!1449214 m!1337979))

(declare-fun m!1337981 () Bool)

(assert (=> b!1449214 m!1337981))

(declare-fun m!1337983 () Bool)

(assert (=> b!1449203 m!1337983))

(declare-fun m!1337985 () Bool)

(assert (=> b!1449203 m!1337985))

(declare-fun m!1337987 () Bool)

(assert (=> b!1449203 m!1337987))

(assert (=> b!1449203 m!1337973))

(declare-fun m!1337989 () Bool)

(assert (=> b!1449198 m!1337989))

(assert (=> b!1449198 m!1337989))

(declare-fun m!1337991 () Bool)

(assert (=> b!1449198 m!1337991))

(assert (=> b!1449198 m!1337985))

(declare-fun m!1337993 () Bool)

(assert (=> b!1449198 m!1337993))

(assert (=> b!1449204 m!1337973))

(assert (=> b!1449204 m!1337973))

(declare-fun m!1337995 () Bool)

(assert (=> b!1449204 m!1337995))

(declare-fun m!1337997 () Bool)

(assert (=> start!124886 m!1337997))

(declare-fun m!1337999 () Bool)

(assert (=> start!124886 m!1337999))

(declare-fun m!1338001 () Bool)

(assert (=> b!1449209 m!1338001))

(assert (=> b!1449211 m!1337985))

(declare-fun m!1338003 () Bool)

(assert (=> b!1449211 m!1338003))

(assert (=> b!1449210 m!1337973))

(assert (=> b!1449210 m!1337973))

(declare-fun m!1338005 () Bool)

(assert (=> b!1449210 m!1338005))

(declare-fun m!1338007 () Bool)

(assert (=> b!1449213 m!1338007))

(assert (=> b!1449197 m!1337973))

(assert (=> b!1449197 m!1337973))

(declare-fun m!1338009 () Bool)

(assert (=> b!1449197 m!1338009))

(declare-fun m!1338011 () Bool)

(assert (=> b!1449200 m!1338011))

(declare-fun m!1338013 () Bool)

(assert (=> b!1449200 m!1338013))

(declare-fun m!1338015 () Bool)

(assert (=> b!1449202 m!1338015))

(assert (=> b!1449202 m!1337985))

(declare-fun m!1338017 () Bool)

(assert (=> b!1449202 m!1338017))

(assert (=> b!1449202 m!1337987))

(assert (=> b!1449202 m!1337983))

(assert (=> b!1449202 m!1337973))

(declare-fun m!1338019 () Bool)

(assert (=> b!1449202 m!1338019))

(declare-fun m!1338021 () Bool)

(assert (=> b!1449202 m!1338021))

(assert (=> b!1449202 m!1337973))

(assert (=> b!1449196 m!1337973))

(assert (=> b!1449196 m!1337973))

(declare-fun m!1338023 () Bool)

(assert (=> b!1449196 m!1338023))

(declare-fun m!1338025 () Bool)

(assert (=> b!1449208 m!1338025))

(push 1)

