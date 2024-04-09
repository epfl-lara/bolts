; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125652 () Bool)

(assert start!125652)

(declare-fun b!1469981 () Bool)

(declare-fun e!825206 () Bool)

(declare-datatypes ((array!99017 0))(
  ( (array!99018 (arr!47792 (Array (_ BitVec 32) (_ BitVec 64))) (size!48343 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99017)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12055 0))(
  ( (MissingZero!12055 (index!50611 (_ BitVec 32))) (Found!12055 (index!50612 (_ BitVec 32))) (Intermediate!12055 (undefined!12867 Bool) (index!50613 (_ BitVec 32)) (x!132187 (_ BitVec 32))) (Undefined!12055) (MissingVacant!12055 (index!50614 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99017 (_ BitVec 32)) SeekEntryResult!12055)

(assert (=> b!1469981 (= e!825206 (not (= (seekEntryOrOpen!0 (select (arr!47792 a!2862) j!93) a!2862 mask!2687) (Found!12055 j!93))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99017 (_ BitVec 32)) Bool)

(assert (=> b!1469981 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49398 0))(
  ( (Unit!49399) )
))
(declare-fun lt!642707 () Unit!49398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49398)

(assert (=> b!1469981 (= lt!642707 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!998498 () Bool)

(declare-fun e!825208 () Bool)

(assert (=> start!125652 (=> (not res!998498) (not e!825208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125652 (= res!998498 (validMask!0 mask!2687))))

(assert (=> start!125652 e!825208))

(assert (=> start!125652 true))

(declare-fun array_inv!36737 (array!99017) Bool)

(assert (=> start!125652 (array_inv!36737 a!2862)))

(declare-fun b!1469982 () Bool)

(declare-fun e!825204 () Bool)

(assert (=> b!1469982 (= e!825208 e!825204)))

(declare-fun res!998493 () Bool)

(assert (=> b!1469982 (=> (not res!998493) (not e!825204))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469982 (= res!998493 (= (select (store (arr!47792 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642706 () array!99017)

(assert (=> b!1469982 (= lt!642706 (array!99018 (store (arr!47792 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48343 a!2862)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642708 () (_ BitVec 64))

(declare-fun b!1469983 () Bool)

(declare-fun e!825207 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99017 (_ BitVec 32)) SeekEntryResult!12055)

(assert (=> b!1469983 (= e!825207 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642708 lt!642706 mask!2687) (seekEntryOrOpen!0 lt!642708 lt!642706 mask!2687)))))

(declare-fun b!1469984 () Bool)

(declare-fun res!998501 () Bool)

(assert (=> b!1469984 (=> (not res!998501) (not e!825208))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469984 (= res!998501 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48343 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48343 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48343 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469985 () Bool)

(declare-fun res!998504 () Bool)

(assert (=> b!1469985 (=> (not res!998504) (not e!825208))))

(declare-datatypes ((List!34473 0))(
  ( (Nil!34470) (Cons!34469 (h!35819 (_ BitVec 64)) (t!49174 List!34473)) )
))
(declare-fun arrayNoDuplicates!0 (array!99017 (_ BitVec 32) List!34473) Bool)

(assert (=> b!1469985 (= res!998504 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34470))))

(declare-fun b!1469986 () Bool)

(declare-fun res!998494 () Bool)

(assert (=> b!1469986 (=> (not res!998494) (not e!825208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469986 (= res!998494 (validKeyInArray!0 (select (arr!47792 a!2862) i!1006)))))

(declare-fun b!1469987 () Bool)

(declare-fun e!825205 () Bool)

(assert (=> b!1469987 (= e!825204 e!825205)))

(declare-fun res!998503 () Bool)

(assert (=> b!1469987 (=> (not res!998503) (not e!825205))))

(declare-fun lt!642709 () SeekEntryResult!12055)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99017 (_ BitVec 32)) SeekEntryResult!12055)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469987 (= res!998503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) (select (arr!47792 a!2862) j!93) a!2862 mask!2687) lt!642709))))

(assert (=> b!1469987 (= lt!642709 (Intermediate!12055 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469988 () Bool)

(declare-fun res!998499 () Bool)

(assert (=> b!1469988 (=> (not res!998499) (not e!825206))))

(assert (=> b!1469988 (= res!998499 e!825207)))

(declare-fun c!135257 () Bool)

(assert (=> b!1469988 (= c!135257 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469989 () Bool)

(declare-fun lt!642705 () SeekEntryResult!12055)

(assert (=> b!1469989 (= e!825207 (= lt!642705 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642708 lt!642706 mask!2687)))))

(declare-fun b!1469990 () Bool)

(declare-fun res!998497 () Bool)

(assert (=> b!1469990 (=> (not res!998497) (not e!825205))))

(assert (=> b!1469990 (= res!998497 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47792 a!2862) j!93) a!2862 mask!2687) lt!642709))))

(declare-fun b!1469991 () Bool)

(assert (=> b!1469991 (= e!825205 e!825206)))

(declare-fun res!998495 () Bool)

(assert (=> b!1469991 (=> (not res!998495) (not e!825206))))

(assert (=> b!1469991 (= res!998495 (= lt!642705 (Intermediate!12055 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469991 (= lt!642705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642708 mask!2687) lt!642708 lt!642706 mask!2687))))

(assert (=> b!1469991 (= lt!642708 (select (store (arr!47792 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469992 () Bool)

(declare-fun res!998502 () Bool)

(assert (=> b!1469992 (=> (not res!998502) (not e!825208))))

(assert (=> b!1469992 (= res!998502 (and (= (size!48343 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48343 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48343 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469993 () Bool)

(declare-fun res!998505 () Bool)

(assert (=> b!1469993 (=> (not res!998505) (not e!825206))))

(assert (=> b!1469993 (= res!998505 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1469994 () Bool)

(declare-fun res!998500 () Bool)

(assert (=> b!1469994 (=> (not res!998500) (not e!825208))))

(assert (=> b!1469994 (= res!998500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469995 () Bool)

(declare-fun res!998496 () Bool)

(assert (=> b!1469995 (=> (not res!998496) (not e!825208))))

(assert (=> b!1469995 (= res!998496 (validKeyInArray!0 (select (arr!47792 a!2862) j!93)))))

(assert (= (and start!125652 res!998498) b!1469992))

(assert (= (and b!1469992 res!998502) b!1469986))

(assert (= (and b!1469986 res!998494) b!1469995))

(assert (= (and b!1469995 res!998496) b!1469994))

(assert (= (and b!1469994 res!998500) b!1469985))

(assert (= (and b!1469985 res!998504) b!1469984))

(assert (= (and b!1469984 res!998501) b!1469982))

(assert (= (and b!1469982 res!998493) b!1469987))

(assert (= (and b!1469987 res!998503) b!1469990))

(assert (= (and b!1469990 res!998497) b!1469991))

(assert (= (and b!1469991 res!998495) b!1469988))

(assert (= (and b!1469988 c!135257) b!1469989))

(assert (= (and b!1469988 (not c!135257)) b!1469983))

(assert (= (and b!1469988 res!998499) b!1469993))

(assert (= (and b!1469993 res!998505) b!1469981))

(declare-fun m!1357175 () Bool)

(assert (=> b!1469981 m!1357175))

(assert (=> b!1469981 m!1357175))

(declare-fun m!1357177 () Bool)

(assert (=> b!1469981 m!1357177))

(declare-fun m!1357179 () Bool)

(assert (=> b!1469981 m!1357179))

(declare-fun m!1357181 () Bool)

(assert (=> b!1469981 m!1357181))

(declare-fun m!1357183 () Bool)

(assert (=> start!125652 m!1357183))

(declare-fun m!1357185 () Bool)

(assert (=> start!125652 m!1357185))

(assert (=> b!1469990 m!1357175))

(assert (=> b!1469990 m!1357175))

(declare-fun m!1357187 () Bool)

(assert (=> b!1469990 m!1357187))

(declare-fun m!1357189 () Bool)

(assert (=> b!1469983 m!1357189))

(declare-fun m!1357191 () Bool)

(assert (=> b!1469983 m!1357191))

(assert (=> b!1469995 m!1357175))

(assert (=> b!1469995 m!1357175))

(declare-fun m!1357193 () Bool)

(assert (=> b!1469995 m!1357193))

(assert (=> b!1469987 m!1357175))

(assert (=> b!1469987 m!1357175))

(declare-fun m!1357195 () Bool)

(assert (=> b!1469987 m!1357195))

(assert (=> b!1469987 m!1357195))

(assert (=> b!1469987 m!1357175))

(declare-fun m!1357197 () Bool)

(assert (=> b!1469987 m!1357197))

(declare-fun m!1357199 () Bool)

(assert (=> b!1469985 m!1357199))

(declare-fun m!1357201 () Bool)

(assert (=> b!1469994 m!1357201))

(declare-fun m!1357203 () Bool)

(assert (=> b!1469989 m!1357203))

(declare-fun m!1357205 () Bool)

(assert (=> b!1469986 m!1357205))

(assert (=> b!1469986 m!1357205))

(declare-fun m!1357207 () Bool)

(assert (=> b!1469986 m!1357207))

(declare-fun m!1357209 () Bool)

(assert (=> b!1469991 m!1357209))

(assert (=> b!1469991 m!1357209))

(declare-fun m!1357211 () Bool)

(assert (=> b!1469991 m!1357211))

(declare-fun m!1357213 () Bool)

(assert (=> b!1469991 m!1357213))

(declare-fun m!1357215 () Bool)

(assert (=> b!1469991 m!1357215))

(assert (=> b!1469982 m!1357213))

(declare-fun m!1357217 () Bool)

(assert (=> b!1469982 m!1357217))

(check-sat (not b!1469995) (not b!1469989) (not b!1469987) (not b!1469983) (not b!1469985) (not b!1469981) (not start!125652) (not b!1469990) (not b!1469994) (not b!1469991) (not b!1469986))
(check-sat)
(get-model)

(declare-fun d!155245 () Bool)

(assert (=> d!155245 (= (validKeyInArray!0 (select (arr!47792 a!2862) i!1006)) (and (not (= (select (arr!47792 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47792 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1469986 d!155245))

(declare-fun b!1470059 () Bool)

(declare-fun e!825242 () Bool)

(declare-fun lt!642730 () SeekEntryResult!12055)

(assert (=> b!1470059 (= e!825242 (bvsge (x!132187 lt!642730) #b01111111111111111111111111111110))))

(declare-fun b!1470060 () Bool)

(declare-fun e!825240 () SeekEntryResult!12055)

(assert (=> b!1470060 (= e!825240 (Intermediate!12055 false (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1470061 () Bool)

(assert (=> b!1470061 (and (bvsge (index!50613 lt!642730) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642730) (size!48343 a!2862)))))

(declare-fun res!998553 () Bool)

(assert (=> b!1470061 (= res!998553 (= (select (arr!47792 a!2862) (index!50613 lt!642730)) (select (arr!47792 a!2862) j!93)))))

(declare-fun e!825238 () Bool)

(assert (=> b!1470061 (=> res!998553 e!825238)))

(declare-fun e!825239 () Bool)

(assert (=> b!1470061 (= e!825239 e!825238)))

(declare-fun b!1470062 () Bool)

(assert (=> b!1470062 (and (bvsge (index!50613 lt!642730) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642730) (size!48343 a!2862)))))

(assert (=> b!1470062 (= e!825238 (= (select (arr!47792 a!2862) (index!50613 lt!642730)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155247 () Bool)

(assert (=> d!155247 e!825242))

(declare-fun c!135269 () Bool)

(get-info :version)

(assert (=> d!155247 (= c!135269 (and ((_ is Intermediate!12055) lt!642730) (undefined!12867 lt!642730)))))

(declare-fun e!825241 () SeekEntryResult!12055)

(assert (=> d!155247 (= lt!642730 e!825241)))

(declare-fun c!135268 () Bool)

(assert (=> d!155247 (= c!135268 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!642729 () (_ BitVec 64))

(assert (=> d!155247 (= lt!642729 (select (arr!47792 a!2862) (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687)))))

(assert (=> d!155247 (validMask!0 mask!2687)))

(assert (=> d!155247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) (select (arr!47792 a!2862) j!93) a!2862 mask!2687) lt!642730)))

(declare-fun b!1470063 () Bool)

(assert (=> b!1470063 (= e!825242 e!825239)))

(declare-fun res!998551 () Bool)

(assert (=> b!1470063 (= res!998551 (and ((_ is Intermediate!12055) lt!642730) (not (undefined!12867 lt!642730)) (bvslt (x!132187 lt!642730) #b01111111111111111111111111111110) (bvsge (x!132187 lt!642730) #b00000000000000000000000000000000) (bvsge (x!132187 lt!642730) #b00000000000000000000000000000000)))))

(assert (=> b!1470063 (=> (not res!998551) (not e!825239))))

(declare-fun b!1470064 () Bool)

(assert (=> b!1470064 (and (bvsge (index!50613 lt!642730) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642730) (size!48343 a!2862)))))

(declare-fun res!998552 () Bool)

(assert (=> b!1470064 (= res!998552 (= (select (arr!47792 a!2862) (index!50613 lt!642730)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470064 (=> res!998552 e!825238)))

(declare-fun b!1470065 () Bool)

(assert (=> b!1470065 (= e!825241 (Intermediate!12055 true (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1470066 () Bool)

(assert (=> b!1470066 (= e!825241 e!825240)))

(declare-fun c!135267 () Bool)

(assert (=> b!1470066 (= c!135267 (or (= lt!642729 (select (arr!47792 a!2862) j!93)) (= (bvadd lt!642729 lt!642729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1470067 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1470067 (= e!825240 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47792 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!155247 c!135268) b!1470065))

(assert (= (and d!155247 (not c!135268)) b!1470066))

(assert (= (and b!1470066 c!135267) b!1470060))

(assert (= (and b!1470066 (not c!135267)) b!1470067))

(assert (= (and d!155247 c!135269) b!1470059))

(assert (= (and d!155247 (not c!135269)) b!1470063))

(assert (= (and b!1470063 res!998551) b!1470061))

(assert (= (and b!1470061 (not res!998553)) b!1470064))

(assert (= (and b!1470064 (not res!998552)) b!1470062))

(assert (=> d!155247 m!1357195))

(declare-fun m!1357263 () Bool)

(assert (=> d!155247 m!1357263))

(assert (=> d!155247 m!1357183))

(declare-fun m!1357265 () Bool)

(assert (=> b!1470064 m!1357265))

(assert (=> b!1470061 m!1357265))

(assert (=> b!1470062 m!1357265))

(assert (=> b!1470067 m!1357195))

(declare-fun m!1357267 () Bool)

(assert (=> b!1470067 m!1357267))

(assert (=> b!1470067 m!1357267))

(assert (=> b!1470067 m!1357175))

(declare-fun m!1357269 () Bool)

(assert (=> b!1470067 m!1357269))

(assert (=> b!1469987 d!155247))

(declare-fun d!155249 () Bool)

(declare-fun lt!642736 () (_ BitVec 32))

(declare-fun lt!642735 () (_ BitVec 32))

(assert (=> d!155249 (= lt!642736 (bvmul (bvxor lt!642735 (bvlshr lt!642735 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155249 (= lt!642735 ((_ extract 31 0) (bvand (bvxor (select (arr!47792 a!2862) j!93) (bvlshr (select (arr!47792 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155249 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!998554 (let ((h!35821 ((_ extract 31 0) (bvand (bvxor (select (arr!47792 a!2862) j!93) (bvlshr (select (arr!47792 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132190 (bvmul (bvxor h!35821 (bvlshr h!35821 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132190 (bvlshr x!132190 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!998554 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!998554 #b00000000000000000000000000000000))))))

(assert (=> d!155249 (= (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) (bvand (bvxor lt!642736 (bvlshr lt!642736 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1469987 d!155249))

(declare-fun b!1470068 () Bool)

(declare-fun e!825247 () Bool)

(declare-fun lt!642738 () SeekEntryResult!12055)

(assert (=> b!1470068 (= e!825247 (bvsge (x!132187 lt!642738) #b01111111111111111111111111111110))))

(declare-fun b!1470069 () Bool)

(declare-fun e!825245 () SeekEntryResult!12055)

(assert (=> b!1470069 (= e!825245 (Intermediate!12055 false index!646 x!665))))

(declare-fun b!1470070 () Bool)

(assert (=> b!1470070 (and (bvsge (index!50613 lt!642738) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642738) (size!48343 a!2862)))))

(declare-fun res!998557 () Bool)

(assert (=> b!1470070 (= res!998557 (= (select (arr!47792 a!2862) (index!50613 lt!642738)) (select (arr!47792 a!2862) j!93)))))

(declare-fun e!825243 () Bool)

(assert (=> b!1470070 (=> res!998557 e!825243)))

(declare-fun e!825244 () Bool)

(assert (=> b!1470070 (= e!825244 e!825243)))

(declare-fun b!1470071 () Bool)

(assert (=> b!1470071 (and (bvsge (index!50613 lt!642738) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642738) (size!48343 a!2862)))))

(assert (=> b!1470071 (= e!825243 (= (select (arr!47792 a!2862) (index!50613 lt!642738)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155251 () Bool)

(assert (=> d!155251 e!825247))

(declare-fun c!135272 () Bool)

(assert (=> d!155251 (= c!135272 (and ((_ is Intermediate!12055) lt!642738) (undefined!12867 lt!642738)))))

(declare-fun e!825246 () SeekEntryResult!12055)

(assert (=> d!155251 (= lt!642738 e!825246)))

(declare-fun c!135271 () Bool)

(assert (=> d!155251 (= c!135271 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!642737 () (_ BitVec 64))

(assert (=> d!155251 (= lt!642737 (select (arr!47792 a!2862) index!646))))

(assert (=> d!155251 (validMask!0 mask!2687)))

(assert (=> d!155251 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47792 a!2862) j!93) a!2862 mask!2687) lt!642738)))

(declare-fun b!1470072 () Bool)

(assert (=> b!1470072 (= e!825247 e!825244)))

(declare-fun res!998555 () Bool)

(assert (=> b!1470072 (= res!998555 (and ((_ is Intermediate!12055) lt!642738) (not (undefined!12867 lt!642738)) (bvslt (x!132187 lt!642738) #b01111111111111111111111111111110) (bvsge (x!132187 lt!642738) #b00000000000000000000000000000000) (bvsge (x!132187 lt!642738) x!665)))))

(assert (=> b!1470072 (=> (not res!998555) (not e!825244))))

(declare-fun b!1470073 () Bool)

(assert (=> b!1470073 (and (bvsge (index!50613 lt!642738) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642738) (size!48343 a!2862)))))

(declare-fun res!998556 () Bool)

(assert (=> b!1470073 (= res!998556 (= (select (arr!47792 a!2862) (index!50613 lt!642738)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470073 (=> res!998556 e!825243)))

(declare-fun b!1470074 () Bool)

(assert (=> b!1470074 (= e!825246 (Intermediate!12055 true index!646 x!665))))

(declare-fun b!1470075 () Bool)

(assert (=> b!1470075 (= e!825246 e!825245)))

(declare-fun c!135270 () Bool)

(assert (=> b!1470075 (= c!135270 (or (= lt!642737 (select (arr!47792 a!2862) j!93)) (= (bvadd lt!642737 lt!642737) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1470076 () Bool)

(assert (=> b!1470076 (= e!825245 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47792 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!155251 c!135271) b!1470074))

(assert (= (and d!155251 (not c!135271)) b!1470075))

(assert (= (and b!1470075 c!135270) b!1470069))

(assert (= (and b!1470075 (not c!135270)) b!1470076))

(assert (= (and d!155251 c!135272) b!1470068))

(assert (= (and d!155251 (not c!135272)) b!1470072))

(assert (= (and b!1470072 res!998555) b!1470070))

(assert (= (and b!1470070 (not res!998557)) b!1470073))

(assert (= (and b!1470073 (not res!998556)) b!1470071))

(declare-fun m!1357271 () Bool)

(assert (=> d!155251 m!1357271))

(assert (=> d!155251 m!1357183))

(declare-fun m!1357273 () Bool)

(assert (=> b!1470073 m!1357273))

(assert (=> b!1470070 m!1357273))

(assert (=> b!1470071 m!1357273))

(declare-fun m!1357275 () Bool)

(assert (=> b!1470076 m!1357275))

(assert (=> b!1470076 m!1357275))

(assert (=> b!1470076 m!1357175))

(declare-fun m!1357277 () Bool)

(assert (=> b!1470076 m!1357277))

(assert (=> b!1469990 d!155251))

(declare-fun b!1470077 () Bool)

(declare-fun e!825252 () Bool)

(declare-fun lt!642740 () SeekEntryResult!12055)

(assert (=> b!1470077 (= e!825252 (bvsge (x!132187 lt!642740) #b01111111111111111111111111111110))))

(declare-fun b!1470078 () Bool)

(declare-fun e!825250 () SeekEntryResult!12055)

(assert (=> b!1470078 (= e!825250 (Intermediate!12055 false (toIndex!0 lt!642708 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1470079 () Bool)

(assert (=> b!1470079 (and (bvsge (index!50613 lt!642740) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642740) (size!48343 lt!642706)))))

(declare-fun res!998560 () Bool)

(assert (=> b!1470079 (= res!998560 (= (select (arr!47792 lt!642706) (index!50613 lt!642740)) lt!642708))))

(declare-fun e!825248 () Bool)

(assert (=> b!1470079 (=> res!998560 e!825248)))

(declare-fun e!825249 () Bool)

(assert (=> b!1470079 (= e!825249 e!825248)))

(declare-fun b!1470080 () Bool)

(assert (=> b!1470080 (and (bvsge (index!50613 lt!642740) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642740) (size!48343 lt!642706)))))

(assert (=> b!1470080 (= e!825248 (= (select (arr!47792 lt!642706) (index!50613 lt!642740)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155253 () Bool)

(assert (=> d!155253 e!825252))

(declare-fun c!135275 () Bool)

(assert (=> d!155253 (= c!135275 (and ((_ is Intermediate!12055) lt!642740) (undefined!12867 lt!642740)))))

(declare-fun e!825251 () SeekEntryResult!12055)

(assert (=> d!155253 (= lt!642740 e!825251)))

(declare-fun c!135274 () Bool)

(assert (=> d!155253 (= c!135274 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!642739 () (_ BitVec 64))

(assert (=> d!155253 (= lt!642739 (select (arr!47792 lt!642706) (toIndex!0 lt!642708 mask!2687)))))

(assert (=> d!155253 (validMask!0 mask!2687)))

(assert (=> d!155253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642708 mask!2687) lt!642708 lt!642706 mask!2687) lt!642740)))

(declare-fun b!1470081 () Bool)

(assert (=> b!1470081 (= e!825252 e!825249)))

(declare-fun res!998558 () Bool)

(assert (=> b!1470081 (= res!998558 (and ((_ is Intermediate!12055) lt!642740) (not (undefined!12867 lt!642740)) (bvslt (x!132187 lt!642740) #b01111111111111111111111111111110) (bvsge (x!132187 lt!642740) #b00000000000000000000000000000000) (bvsge (x!132187 lt!642740) #b00000000000000000000000000000000)))))

(assert (=> b!1470081 (=> (not res!998558) (not e!825249))))

(declare-fun b!1470082 () Bool)

(assert (=> b!1470082 (and (bvsge (index!50613 lt!642740) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642740) (size!48343 lt!642706)))))

(declare-fun res!998559 () Bool)

(assert (=> b!1470082 (= res!998559 (= (select (arr!47792 lt!642706) (index!50613 lt!642740)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470082 (=> res!998559 e!825248)))

(declare-fun b!1470083 () Bool)

(assert (=> b!1470083 (= e!825251 (Intermediate!12055 true (toIndex!0 lt!642708 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1470084 () Bool)

(assert (=> b!1470084 (= e!825251 e!825250)))

(declare-fun c!135273 () Bool)

(assert (=> b!1470084 (= c!135273 (or (= lt!642739 lt!642708) (= (bvadd lt!642739 lt!642739) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1470085 () Bool)

(assert (=> b!1470085 (= e!825250 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!642708 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!642708 lt!642706 mask!2687))))

(assert (= (and d!155253 c!135274) b!1470083))

(assert (= (and d!155253 (not c!135274)) b!1470084))

(assert (= (and b!1470084 c!135273) b!1470078))

(assert (= (and b!1470084 (not c!135273)) b!1470085))

(assert (= (and d!155253 c!135275) b!1470077))

(assert (= (and d!155253 (not c!135275)) b!1470081))

(assert (= (and b!1470081 res!998558) b!1470079))

(assert (= (and b!1470079 (not res!998560)) b!1470082))

(assert (= (and b!1470082 (not res!998559)) b!1470080))

(assert (=> d!155253 m!1357209))

(declare-fun m!1357279 () Bool)

(assert (=> d!155253 m!1357279))

(assert (=> d!155253 m!1357183))

(declare-fun m!1357281 () Bool)

(assert (=> b!1470082 m!1357281))

(assert (=> b!1470079 m!1357281))

(assert (=> b!1470080 m!1357281))

(assert (=> b!1470085 m!1357209))

(declare-fun m!1357283 () Bool)

(assert (=> b!1470085 m!1357283))

(assert (=> b!1470085 m!1357283))

(declare-fun m!1357285 () Bool)

(assert (=> b!1470085 m!1357285))

(assert (=> b!1469991 d!155253))

(declare-fun d!155255 () Bool)

(declare-fun lt!642742 () (_ BitVec 32))

(declare-fun lt!642741 () (_ BitVec 32))

(assert (=> d!155255 (= lt!642742 (bvmul (bvxor lt!642741 (bvlshr lt!642741 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155255 (= lt!642741 ((_ extract 31 0) (bvand (bvxor lt!642708 (bvlshr lt!642708 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155255 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!998554 (let ((h!35821 ((_ extract 31 0) (bvand (bvxor lt!642708 (bvlshr lt!642708 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132190 (bvmul (bvxor h!35821 (bvlshr h!35821 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132190 (bvlshr x!132190 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!998554 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!998554 #b00000000000000000000000000000000))))))

(assert (=> d!155255 (= (toIndex!0 lt!642708 mask!2687) (bvand (bvxor lt!642742 (bvlshr lt!642742 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1469991 d!155255))

(declare-fun b!1470086 () Bool)

(declare-fun e!825257 () Bool)

(declare-fun lt!642744 () SeekEntryResult!12055)

(assert (=> b!1470086 (= e!825257 (bvsge (x!132187 lt!642744) #b01111111111111111111111111111110))))

(declare-fun b!1470087 () Bool)

(declare-fun e!825255 () SeekEntryResult!12055)

(assert (=> b!1470087 (= e!825255 (Intermediate!12055 false index!646 x!665))))

(declare-fun b!1470088 () Bool)

(assert (=> b!1470088 (and (bvsge (index!50613 lt!642744) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642744) (size!48343 lt!642706)))))

(declare-fun res!998563 () Bool)

(assert (=> b!1470088 (= res!998563 (= (select (arr!47792 lt!642706) (index!50613 lt!642744)) lt!642708))))

(declare-fun e!825253 () Bool)

(assert (=> b!1470088 (=> res!998563 e!825253)))

(declare-fun e!825254 () Bool)

(assert (=> b!1470088 (= e!825254 e!825253)))

(declare-fun b!1470089 () Bool)

(assert (=> b!1470089 (and (bvsge (index!50613 lt!642744) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642744) (size!48343 lt!642706)))))

(assert (=> b!1470089 (= e!825253 (= (select (arr!47792 lt!642706) (index!50613 lt!642744)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!155257 () Bool)

(assert (=> d!155257 e!825257))

(declare-fun c!135278 () Bool)

(assert (=> d!155257 (= c!135278 (and ((_ is Intermediate!12055) lt!642744) (undefined!12867 lt!642744)))))

(declare-fun e!825256 () SeekEntryResult!12055)

(assert (=> d!155257 (= lt!642744 e!825256)))

(declare-fun c!135277 () Bool)

(assert (=> d!155257 (= c!135277 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!642743 () (_ BitVec 64))

(assert (=> d!155257 (= lt!642743 (select (arr!47792 lt!642706) index!646))))

(assert (=> d!155257 (validMask!0 mask!2687)))

(assert (=> d!155257 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642708 lt!642706 mask!2687) lt!642744)))

(declare-fun b!1470090 () Bool)

(assert (=> b!1470090 (= e!825257 e!825254)))

(declare-fun res!998561 () Bool)

(assert (=> b!1470090 (= res!998561 (and ((_ is Intermediate!12055) lt!642744) (not (undefined!12867 lt!642744)) (bvslt (x!132187 lt!642744) #b01111111111111111111111111111110) (bvsge (x!132187 lt!642744) #b00000000000000000000000000000000) (bvsge (x!132187 lt!642744) x!665)))))

(assert (=> b!1470090 (=> (not res!998561) (not e!825254))))

(declare-fun b!1470091 () Bool)

(assert (=> b!1470091 (and (bvsge (index!50613 lt!642744) #b00000000000000000000000000000000) (bvslt (index!50613 lt!642744) (size!48343 lt!642706)))))

(declare-fun res!998562 () Bool)

(assert (=> b!1470091 (= res!998562 (= (select (arr!47792 lt!642706) (index!50613 lt!642744)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470091 (=> res!998562 e!825253)))

(declare-fun b!1470092 () Bool)

(assert (=> b!1470092 (= e!825256 (Intermediate!12055 true index!646 x!665))))

(declare-fun b!1470093 () Bool)

(assert (=> b!1470093 (= e!825256 e!825255)))

(declare-fun c!135276 () Bool)

(assert (=> b!1470093 (= c!135276 (or (= lt!642743 lt!642708) (= (bvadd lt!642743 lt!642743) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1470094 () Bool)

(assert (=> b!1470094 (= e!825255 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!642708 lt!642706 mask!2687))))

(assert (= (and d!155257 c!135277) b!1470092))

(assert (= (and d!155257 (not c!135277)) b!1470093))

(assert (= (and b!1470093 c!135276) b!1470087))

(assert (= (and b!1470093 (not c!135276)) b!1470094))

(assert (= (and d!155257 c!135278) b!1470086))

(assert (= (and d!155257 (not c!135278)) b!1470090))

(assert (= (and b!1470090 res!998561) b!1470088))

(assert (= (and b!1470088 (not res!998563)) b!1470091))

(assert (= (and b!1470091 (not res!998562)) b!1470089))

(declare-fun m!1357287 () Bool)

(assert (=> d!155257 m!1357287))

(assert (=> d!155257 m!1357183))

(declare-fun m!1357289 () Bool)

(assert (=> b!1470091 m!1357289))

(assert (=> b!1470088 m!1357289))

(assert (=> b!1470089 m!1357289))

(assert (=> b!1470094 m!1357275))

(assert (=> b!1470094 m!1357275))

(declare-fun m!1357291 () Bool)

(assert (=> b!1470094 m!1357291))

(assert (=> b!1469989 d!155257))

(declare-fun b!1470107 () Bool)

(declare-fun e!825265 () SeekEntryResult!12055)

(assert (=> b!1470107 (= e!825265 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!642708 lt!642706 mask!2687))))

(declare-fun b!1470109 () Bool)

(declare-fun e!825264 () SeekEntryResult!12055)

(declare-fun e!825266 () SeekEntryResult!12055)

(assert (=> b!1470109 (= e!825264 e!825266)))

(declare-fun c!135287 () Bool)

(declare-fun lt!642749 () (_ BitVec 64))

(assert (=> b!1470109 (= c!135287 (= lt!642749 lt!642708))))

(declare-fun b!1470110 () Bool)

(assert (=> b!1470110 (= e!825264 Undefined!12055)))

(declare-fun b!1470111 () Bool)

(assert (=> b!1470111 (= e!825265 (MissingVacant!12055 intermediateAfterIndex!19))))

(declare-fun b!1470112 () Bool)

(assert (=> b!1470112 (= e!825266 (Found!12055 index!646))))

(declare-fun b!1470108 () Bool)

(declare-fun c!135285 () Bool)

(assert (=> b!1470108 (= c!135285 (= lt!642749 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1470108 (= e!825266 e!825265)))

(declare-fun lt!642750 () SeekEntryResult!12055)

(declare-fun d!155259 () Bool)

(assert (=> d!155259 (and (or ((_ is Undefined!12055) lt!642750) (not ((_ is Found!12055) lt!642750)) (and (bvsge (index!50612 lt!642750) #b00000000000000000000000000000000) (bvslt (index!50612 lt!642750) (size!48343 lt!642706)))) (or ((_ is Undefined!12055) lt!642750) ((_ is Found!12055) lt!642750) (not ((_ is MissingVacant!12055) lt!642750)) (not (= (index!50614 lt!642750) intermediateAfterIndex!19)) (and (bvsge (index!50614 lt!642750) #b00000000000000000000000000000000) (bvslt (index!50614 lt!642750) (size!48343 lt!642706)))) (or ((_ is Undefined!12055) lt!642750) (ite ((_ is Found!12055) lt!642750) (= (select (arr!47792 lt!642706) (index!50612 lt!642750)) lt!642708) (and ((_ is MissingVacant!12055) lt!642750) (= (index!50614 lt!642750) intermediateAfterIndex!19) (= (select (arr!47792 lt!642706) (index!50614 lt!642750)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155259 (= lt!642750 e!825264)))

(declare-fun c!135286 () Bool)

(assert (=> d!155259 (= c!135286 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155259 (= lt!642749 (select (arr!47792 lt!642706) index!646))))

(assert (=> d!155259 (validMask!0 mask!2687)))

(assert (=> d!155259 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642708 lt!642706 mask!2687) lt!642750)))

(assert (= (and d!155259 c!135286) b!1470110))

(assert (= (and d!155259 (not c!135286)) b!1470109))

(assert (= (and b!1470109 c!135287) b!1470112))

(assert (= (and b!1470109 (not c!135287)) b!1470108))

(assert (= (and b!1470108 c!135285) b!1470111))

(assert (= (and b!1470108 (not c!135285)) b!1470107))

(assert (=> b!1470107 m!1357275))

(assert (=> b!1470107 m!1357275))

(declare-fun m!1357293 () Bool)

(assert (=> b!1470107 m!1357293))

(declare-fun m!1357295 () Bool)

(assert (=> d!155259 m!1357295))

(declare-fun m!1357297 () Bool)

(assert (=> d!155259 m!1357297))

(assert (=> d!155259 m!1357287))

(assert (=> d!155259 m!1357183))

(assert (=> b!1469983 d!155259))

(declare-fun b!1470143 () Bool)

(declare-fun c!135305 () Bool)

(declare-fun lt!642763 () (_ BitVec 64))

(assert (=> b!1470143 (= c!135305 (= lt!642763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825284 () SeekEntryResult!12055)

(declare-fun e!825282 () SeekEntryResult!12055)

(assert (=> b!1470143 (= e!825284 e!825282)))

(declare-fun b!1470144 () Bool)

(declare-fun e!825283 () SeekEntryResult!12055)

(assert (=> b!1470144 (= e!825283 Undefined!12055)))

(declare-fun b!1470145 () Bool)

(declare-fun lt!642765 () SeekEntryResult!12055)

(assert (=> b!1470145 (= e!825284 (Found!12055 (index!50613 lt!642765)))))

(declare-fun d!155265 () Bool)

(declare-fun lt!642764 () SeekEntryResult!12055)

(assert (=> d!155265 (and (or ((_ is Undefined!12055) lt!642764) (not ((_ is Found!12055) lt!642764)) (and (bvsge (index!50612 lt!642764) #b00000000000000000000000000000000) (bvslt (index!50612 lt!642764) (size!48343 lt!642706)))) (or ((_ is Undefined!12055) lt!642764) ((_ is Found!12055) lt!642764) (not ((_ is MissingZero!12055) lt!642764)) (and (bvsge (index!50611 lt!642764) #b00000000000000000000000000000000) (bvslt (index!50611 lt!642764) (size!48343 lt!642706)))) (or ((_ is Undefined!12055) lt!642764) ((_ is Found!12055) lt!642764) ((_ is MissingZero!12055) lt!642764) (not ((_ is MissingVacant!12055) lt!642764)) (and (bvsge (index!50614 lt!642764) #b00000000000000000000000000000000) (bvslt (index!50614 lt!642764) (size!48343 lt!642706)))) (or ((_ is Undefined!12055) lt!642764) (ite ((_ is Found!12055) lt!642764) (= (select (arr!47792 lt!642706) (index!50612 lt!642764)) lt!642708) (ite ((_ is MissingZero!12055) lt!642764) (= (select (arr!47792 lt!642706) (index!50611 lt!642764)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12055) lt!642764) (= (select (arr!47792 lt!642706) (index!50614 lt!642764)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155265 (= lt!642764 e!825283)))

(declare-fun c!135303 () Bool)

(assert (=> d!155265 (= c!135303 (and ((_ is Intermediate!12055) lt!642765) (undefined!12867 lt!642765)))))

(assert (=> d!155265 (= lt!642765 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642708 mask!2687) lt!642708 lt!642706 mask!2687))))

(assert (=> d!155265 (validMask!0 mask!2687)))

(assert (=> d!155265 (= (seekEntryOrOpen!0 lt!642708 lt!642706 mask!2687) lt!642764)))

(declare-fun b!1470146 () Bool)

(assert (=> b!1470146 (= e!825282 (seekKeyOrZeroReturnVacant!0 (x!132187 lt!642765) (index!50613 lt!642765) (index!50613 lt!642765) lt!642708 lt!642706 mask!2687))))

(declare-fun b!1470147 () Bool)

(assert (=> b!1470147 (= e!825282 (MissingZero!12055 (index!50613 lt!642765)))))

(declare-fun b!1470148 () Bool)

(assert (=> b!1470148 (= e!825283 e!825284)))

(assert (=> b!1470148 (= lt!642763 (select (arr!47792 lt!642706) (index!50613 lt!642765)))))

(declare-fun c!135304 () Bool)

(assert (=> b!1470148 (= c!135304 (= lt!642763 lt!642708))))

(assert (= (and d!155265 c!135303) b!1470144))

(assert (= (and d!155265 (not c!135303)) b!1470148))

(assert (= (and b!1470148 c!135304) b!1470145))

(assert (= (and b!1470148 (not c!135304)) b!1470143))

(assert (= (and b!1470143 c!135305) b!1470147))

(assert (= (and b!1470143 (not c!135305)) b!1470146))

(assert (=> d!155265 m!1357209))

(assert (=> d!155265 m!1357183))

(declare-fun m!1357309 () Bool)

(assert (=> d!155265 m!1357309))

(assert (=> d!155265 m!1357209))

(assert (=> d!155265 m!1357211))

(declare-fun m!1357311 () Bool)

(assert (=> d!155265 m!1357311))

(declare-fun m!1357313 () Bool)

(assert (=> d!155265 m!1357313))

(declare-fun m!1357315 () Bool)

(assert (=> b!1470146 m!1357315))

(declare-fun m!1357317 () Bool)

(assert (=> b!1470148 m!1357317))

(assert (=> b!1469983 d!155265))

(declare-fun b!1470149 () Bool)

(declare-fun c!135308 () Bool)

(declare-fun lt!642766 () (_ BitVec 64))

(assert (=> b!1470149 (= c!135308 (= lt!642766 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!825287 () SeekEntryResult!12055)

(declare-fun e!825285 () SeekEntryResult!12055)

(assert (=> b!1470149 (= e!825287 e!825285)))

(declare-fun b!1470150 () Bool)

(declare-fun e!825286 () SeekEntryResult!12055)

(assert (=> b!1470150 (= e!825286 Undefined!12055)))

(declare-fun b!1470151 () Bool)

(declare-fun lt!642768 () SeekEntryResult!12055)

(assert (=> b!1470151 (= e!825287 (Found!12055 (index!50613 lt!642768)))))

(declare-fun d!155269 () Bool)

(declare-fun lt!642767 () SeekEntryResult!12055)

(assert (=> d!155269 (and (or ((_ is Undefined!12055) lt!642767) (not ((_ is Found!12055) lt!642767)) (and (bvsge (index!50612 lt!642767) #b00000000000000000000000000000000) (bvslt (index!50612 lt!642767) (size!48343 a!2862)))) (or ((_ is Undefined!12055) lt!642767) ((_ is Found!12055) lt!642767) (not ((_ is MissingZero!12055) lt!642767)) (and (bvsge (index!50611 lt!642767) #b00000000000000000000000000000000) (bvslt (index!50611 lt!642767) (size!48343 a!2862)))) (or ((_ is Undefined!12055) lt!642767) ((_ is Found!12055) lt!642767) ((_ is MissingZero!12055) lt!642767) (not ((_ is MissingVacant!12055) lt!642767)) (and (bvsge (index!50614 lt!642767) #b00000000000000000000000000000000) (bvslt (index!50614 lt!642767) (size!48343 a!2862)))) (or ((_ is Undefined!12055) lt!642767) (ite ((_ is Found!12055) lt!642767) (= (select (arr!47792 a!2862) (index!50612 lt!642767)) (select (arr!47792 a!2862) j!93)) (ite ((_ is MissingZero!12055) lt!642767) (= (select (arr!47792 a!2862) (index!50611 lt!642767)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12055) lt!642767) (= (select (arr!47792 a!2862) (index!50614 lt!642767)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!155269 (= lt!642767 e!825286)))

(declare-fun c!135306 () Bool)

(assert (=> d!155269 (= c!135306 (and ((_ is Intermediate!12055) lt!642768) (undefined!12867 lt!642768)))))

(assert (=> d!155269 (= lt!642768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47792 a!2862) j!93) mask!2687) (select (arr!47792 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155269 (validMask!0 mask!2687)))

(assert (=> d!155269 (= (seekEntryOrOpen!0 (select (arr!47792 a!2862) j!93) a!2862 mask!2687) lt!642767)))

(declare-fun b!1470152 () Bool)

(assert (=> b!1470152 (= e!825285 (seekKeyOrZeroReturnVacant!0 (x!132187 lt!642768) (index!50613 lt!642768) (index!50613 lt!642768) (select (arr!47792 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1470153 () Bool)

(assert (=> b!1470153 (= e!825285 (MissingZero!12055 (index!50613 lt!642768)))))

(declare-fun b!1470154 () Bool)

(assert (=> b!1470154 (= e!825286 e!825287)))

(assert (=> b!1470154 (= lt!642766 (select (arr!47792 a!2862) (index!50613 lt!642768)))))

(declare-fun c!135307 () Bool)

(assert (=> b!1470154 (= c!135307 (= lt!642766 (select (arr!47792 a!2862) j!93)))))

(assert (= (and d!155269 c!135306) b!1470150))

(assert (= (and d!155269 (not c!135306)) b!1470154))

(assert (= (and b!1470154 c!135307) b!1470151))

(assert (= (and b!1470154 (not c!135307)) b!1470149))

(assert (= (and b!1470149 c!135308) b!1470153))

(assert (= (and b!1470149 (not c!135308)) b!1470152))

(assert (=> d!155269 m!1357175))

(assert (=> d!155269 m!1357195))

(assert (=> d!155269 m!1357183))

(declare-fun m!1357319 () Bool)

(assert (=> d!155269 m!1357319))

(assert (=> d!155269 m!1357195))

(assert (=> d!155269 m!1357175))

(assert (=> d!155269 m!1357197))

(declare-fun m!1357321 () Bool)

(assert (=> d!155269 m!1357321))

(declare-fun m!1357323 () Bool)

(assert (=> d!155269 m!1357323))

(assert (=> b!1470152 m!1357175))

(declare-fun m!1357325 () Bool)

(assert (=> b!1470152 m!1357325))

(declare-fun m!1357327 () Bool)

(assert (=> b!1470154 m!1357327))

(assert (=> b!1469981 d!155269))

(declare-fun b!1470181 () Bool)

(declare-fun e!825305 () Bool)

(declare-fun e!825303 () Bool)

(assert (=> b!1470181 (= e!825305 e!825303)))

(declare-fun c!135320 () Bool)

(assert (=> b!1470181 (= c!135320 (validKeyInArray!0 (select (arr!47792 a!2862) j!93)))))

(declare-fun b!1470182 () Bool)

(declare-fun e!825304 () Bool)

(declare-fun call!67698 () Bool)

(assert (=> b!1470182 (= e!825304 call!67698)))

(declare-fun bm!67695 () Bool)

(assert (=> bm!67695 (= call!67698 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155271 () Bool)

(declare-fun res!998569 () Bool)

(assert (=> d!155271 (=> res!998569 e!825305)))

(assert (=> d!155271 (= res!998569 (bvsge j!93 (size!48343 a!2862)))))

(assert (=> d!155271 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!825305)))

(declare-fun b!1470183 () Bool)

(assert (=> b!1470183 (= e!825303 e!825304)))

(declare-fun lt!642786 () (_ BitVec 64))

(assert (=> b!1470183 (= lt!642786 (select (arr!47792 a!2862) j!93))))

(declare-fun lt!642784 () Unit!49398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99017 (_ BitVec 64) (_ BitVec 32)) Unit!49398)

(assert (=> b!1470183 (= lt!642784 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!642786 j!93))))

(declare-fun arrayContainsKey!0 (array!99017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1470183 (arrayContainsKey!0 a!2862 lt!642786 #b00000000000000000000000000000000)))

(declare-fun lt!642785 () Unit!49398)

(assert (=> b!1470183 (= lt!642785 lt!642784)))

(declare-fun res!998568 () Bool)

(assert (=> b!1470183 (= res!998568 (= (seekEntryOrOpen!0 (select (arr!47792 a!2862) j!93) a!2862 mask!2687) (Found!12055 j!93)))))

(assert (=> b!1470183 (=> (not res!998568) (not e!825304))))

(declare-fun b!1470184 () Bool)

(assert (=> b!1470184 (= e!825303 call!67698)))

(assert (= (and d!155271 (not res!998569)) b!1470181))

(assert (= (and b!1470181 c!135320) b!1470183))

(assert (= (and b!1470181 (not c!135320)) b!1470184))

(assert (= (and b!1470183 res!998568) b!1470182))

(assert (= (or b!1470182 b!1470184) bm!67695))

(assert (=> b!1470181 m!1357175))

(assert (=> b!1470181 m!1357175))

(assert (=> b!1470181 m!1357193))

(declare-fun m!1357339 () Bool)

(assert (=> bm!67695 m!1357339))

(assert (=> b!1470183 m!1357175))

(declare-fun m!1357341 () Bool)

(assert (=> b!1470183 m!1357341))

(declare-fun m!1357343 () Bool)

(assert (=> b!1470183 m!1357343))

(assert (=> b!1470183 m!1357175))

(assert (=> b!1470183 m!1357177))

(assert (=> b!1469981 d!155271))

(declare-fun d!155275 () Bool)

(assert (=> d!155275 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!642789 () Unit!49398)

(declare-fun choose!38 (array!99017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49398)

(assert (=> d!155275 (= lt!642789 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155275 (validMask!0 mask!2687)))

(assert (=> d!155275 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!642789)))

(declare-fun bs!42485 () Bool)

(assert (= bs!42485 d!155275))

(assert (=> bs!42485 m!1357179))

(declare-fun m!1357345 () Bool)

(assert (=> bs!42485 m!1357345))

(assert (=> bs!42485 m!1357183))

(assert (=> b!1469981 d!155275))

(declare-fun d!155277 () Bool)

(assert (=> d!155277 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125652 d!155277))

(declare-fun d!155279 () Bool)

(assert (=> d!155279 (= (array_inv!36737 a!2862) (bvsge (size!48343 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125652 d!155279))

(declare-fun b!1470225 () Bool)

(declare-fun e!825332 () Bool)

(declare-fun e!825333 () Bool)

(assert (=> b!1470225 (= e!825332 e!825333)))

(declare-fun res!998583 () Bool)

(assert (=> b!1470225 (=> (not res!998583) (not e!825333))))

(declare-fun e!825334 () Bool)

(assert (=> b!1470225 (= res!998583 (not e!825334))))

(declare-fun res!998582 () Bool)

(assert (=> b!1470225 (=> (not res!998582) (not e!825334))))

(assert (=> b!1470225 (= res!998582 (validKeyInArray!0 (select (arr!47792 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1470226 () Bool)

(declare-fun e!825335 () Bool)

(declare-fun call!67704 () Bool)

(assert (=> b!1470226 (= e!825335 call!67704)))

(declare-fun b!1470227 () Bool)

(assert (=> b!1470227 (= e!825333 e!825335)))

(declare-fun c!135335 () Bool)

(assert (=> b!1470227 (= c!135335 (validKeyInArray!0 (select (arr!47792 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1470228 () Bool)

(declare-fun contains!9908 (List!34473 (_ BitVec 64)) Bool)

(assert (=> b!1470228 (= e!825334 (contains!9908 Nil!34470 (select (arr!47792 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!155283 () Bool)

(declare-fun res!998584 () Bool)

(assert (=> d!155283 (=> res!998584 e!825332)))

(assert (=> d!155283 (= res!998584 (bvsge #b00000000000000000000000000000000 (size!48343 a!2862)))))

(assert (=> d!155283 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34470) e!825332)))

(declare-fun b!1470229 () Bool)

(assert (=> b!1470229 (= e!825335 call!67704)))

(declare-fun bm!67701 () Bool)

(assert (=> bm!67701 (= call!67704 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!135335 (Cons!34469 (select (arr!47792 a!2862) #b00000000000000000000000000000000) Nil!34470) Nil!34470)))))

(assert (= (and d!155283 (not res!998584)) b!1470225))

(assert (= (and b!1470225 res!998582) b!1470228))

(assert (= (and b!1470225 res!998583) b!1470227))

(assert (= (and b!1470227 c!135335) b!1470229))

(assert (= (and b!1470227 (not c!135335)) b!1470226))

(assert (= (or b!1470229 b!1470226) bm!67701))

(declare-fun m!1357363 () Bool)

(assert (=> b!1470225 m!1357363))

(assert (=> b!1470225 m!1357363))

(declare-fun m!1357365 () Bool)

(assert (=> b!1470225 m!1357365))

(assert (=> b!1470227 m!1357363))

(assert (=> b!1470227 m!1357363))

(assert (=> b!1470227 m!1357365))

(assert (=> b!1470228 m!1357363))

(assert (=> b!1470228 m!1357363))

(declare-fun m!1357369 () Bool)

(assert (=> b!1470228 m!1357369))

(assert (=> bm!67701 m!1357363))

(declare-fun m!1357371 () Bool)

(assert (=> bm!67701 m!1357371))

(assert (=> b!1469985 d!155283))

(declare-fun b!1470234 () Bool)

(declare-fun e!825341 () Bool)

(declare-fun e!825339 () Bool)

(assert (=> b!1470234 (= e!825341 e!825339)))

(declare-fun c!135337 () Bool)

(assert (=> b!1470234 (= c!135337 (validKeyInArray!0 (select (arr!47792 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1470235 () Bool)

(declare-fun e!825340 () Bool)

(declare-fun call!67706 () Bool)

(assert (=> b!1470235 (= e!825340 call!67706)))

(declare-fun bm!67703 () Bool)

(assert (=> bm!67703 (= call!67706 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155291 () Bool)

(declare-fun res!998588 () Bool)

(assert (=> d!155291 (=> res!998588 e!825341)))

(assert (=> d!155291 (= res!998588 (bvsge #b00000000000000000000000000000000 (size!48343 a!2862)))))

(assert (=> d!155291 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!825341)))

(declare-fun b!1470236 () Bool)

(assert (=> b!1470236 (= e!825339 e!825340)))

(declare-fun lt!642816 () (_ BitVec 64))

(assert (=> b!1470236 (= lt!642816 (select (arr!47792 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!642814 () Unit!49398)

(assert (=> b!1470236 (= lt!642814 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!642816 #b00000000000000000000000000000000))))

(assert (=> b!1470236 (arrayContainsKey!0 a!2862 lt!642816 #b00000000000000000000000000000000)))

(declare-fun lt!642815 () Unit!49398)

(assert (=> b!1470236 (= lt!642815 lt!642814)))

(declare-fun res!998587 () Bool)

(assert (=> b!1470236 (= res!998587 (= (seekEntryOrOpen!0 (select (arr!47792 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12055 #b00000000000000000000000000000000)))))

(assert (=> b!1470236 (=> (not res!998587) (not e!825340))))

(declare-fun b!1470237 () Bool)

(assert (=> b!1470237 (= e!825339 call!67706)))

(assert (= (and d!155291 (not res!998588)) b!1470234))

(assert (= (and b!1470234 c!135337) b!1470236))

(assert (= (and b!1470234 (not c!135337)) b!1470237))

(assert (= (and b!1470236 res!998587) b!1470235))

(assert (= (or b!1470235 b!1470237) bm!67703))

(assert (=> b!1470234 m!1357363))

(assert (=> b!1470234 m!1357363))

(assert (=> b!1470234 m!1357365))

(declare-fun m!1357373 () Bool)

(assert (=> bm!67703 m!1357373))

(assert (=> b!1470236 m!1357363))

(declare-fun m!1357375 () Bool)

(assert (=> b!1470236 m!1357375))

(declare-fun m!1357377 () Bool)

(assert (=> b!1470236 m!1357377))

(assert (=> b!1470236 m!1357363))

(declare-fun m!1357379 () Bool)

(assert (=> b!1470236 m!1357379))

(assert (=> b!1469994 d!155291))

(declare-fun d!155293 () Bool)

(assert (=> d!155293 (= (validKeyInArray!0 (select (arr!47792 a!2862) j!93)) (and (not (= (select (arr!47792 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47792 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1469995 d!155293))

(check-sat (not b!1470094) (not d!155259) (not d!155253) (not b!1470228) (not b!1470227) (not b!1470234) (not b!1470085) (not b!1470107) (not b!1470067) (not b!1470181) (not d!155265) (not d!155247) (not d!155269) (not b!1470236) (not bm!67703) (not b!1470183) (not d!155251) (not b!1470146) (not b!1470152) (not bm!67701) (not b!1470076) (not b!1470225) (not bm!67695) (not d!155275) (not d!155257))
(check-sat)
