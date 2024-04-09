; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125838 () Bool)

(assert start!125838)

(declare-fun b!1472382 () Bool)

(declare-fun res!1000151 () Bool)

(declare-fun e!826345 () Bool)

(assert (=> b!1472382 (=> (not res!1000151) (not e!826345))))

(declare-datatypes ((array!99089 0))(
  ( (array!99090 (arr!47825 (Array (_ BitVec 32) (_ BitVec 64))) (size!48376 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99089)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12088 0))(
  ( (MissingZero!12088 (index!50743 (_ BitVec 32))) (Found!12088 (index!50744 (_ BitVec 32))) (Intermediate!12088 (undefined!12900 Bool) (index!50745 (_ BitVec 32)) (x!132326 (_ BitVec 32))) (Undefined!12088) (MissingVacant!12088 (index!50746 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99089 (_ BitVec 32)) SeekEntryResult!12088)

(assert (=> b!1472382 (= res!1000151 (= (seekEntryOrOpen!0 (select (arr!47825 a!2862) j!93) a!2862 mask!2687) (Found!12088 j!93)))))

(declare-fun b!1472383 () Bool)

(declare-fun res!1000161 () Bool)

(declare-fun e!826347 () Bool)

(assert (=> b!1472383 (=> (not res!1000161) (not e!826347))))

(declare-datatypes ((List!34506 0))(
  ( (Nil!34503) (Cons!34502 (h!35858 (_ BitVec 64)) (t!49207 List!34506)) )
))
(declare-fun arrayNoDuplicates!0 (array!99089 (_ BitVec 32) List!34506) Bool)

(assert (=> b!1472383 (= res!1000161 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34503))))

(declare-fun b!1472384 () Bool)

(declare-fun e!826344 () Bool)

(declare-fun e!826346 () Bool)

(assert (=> b!1472384 (= e!826344 e!826346)))

(declare-fun res!1000155 () Bool)

(assert (=> b!1472384 (=> (not res!1000155) (not e!826346))))

(declare-fun lt!643518 () SeekEntryResult!12088)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99089 (_ BitVec 32)) SeekEntryResult!12088)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472384 (= res!1000155 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47825 a!2862) j!93) mask!2687) (select (arr!47825 a!2862) j!93) a!2862 mask!2687) lt!643518))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472384 (= lt!643518 (Intermediate!12088 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1472385 () Bool)

(declare-fun res!1000156 () Bool)

(declare-fun e!826343 () Bool)

(assert (=> b!1472385 (=> (not res!1000156) (not e!826343))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472385 (= res!1000156 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472386 () Bool)

(declare-fun res!1000150 () Bool)

(assert (=> b!1472386 (=> (not res!1000150) (not e!826347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472386 (= res!1000150 (validKeyInArray!0 (select (arr!47825 a!2862) j!93)))))

(declare-fun b!1472387 () Bool)

(declare-fun res!1000159 () Bool)

(assert (=> b!1472387 (=> (not res!1000159) (not e!826347))))

(assert (=> b!1472387 (= res!1000159 (and (= (size!48376 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48376 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48376 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!826349 () Bool)

(declare-fun lt!643520 () (_ BitVec 64))

(declare-fun b!1472388 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!643522 () array!99089)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99089 (_ BitVec 32)) SeekEntryResult!12088)

(assert (=> b!1472388 (= e!826349 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643520 lt!643522 mask!2687) (seekEntryOrOpen!0 lt!643520 lt!643522 mask!2687)))))

(declare-fun b!1472389 () Bool)

(declare-fun res!1000153 () Bool)

(assert (=> b!1472389 (=> (not res!1000153) (not e!826347))))

(assert (=> b!1472389 (= res!1000153 (validKeyInArray!0 (select (arr!47825 a!2862) i!1006)))))

(declare-fun b!1472390 () Bool)

(assert (=> b!1472390 (= e!826347 e!826344)))

(declare-fun res!1000158 () Bool)

(assert (=> b!1472390 (=> (not res!1000158) (not e!826344))))

(assert (=> b!1472390 (= res!1000158 (= (select (store (arr!47825 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472390 (= lt!643522 (array!99090 (store (arr!47825 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48376 a!2862)))))

(declare-fun b!1472391 () Bool)

(declare-fun res!1000157 () Bool)

(assert (=> b!1472391 (=> (not res!1000157) (not e!826347))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1472391 (= res!1000157 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48376 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48376 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48376 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1000163 () Bool)

(assert (=> start!125838 (=> (not res!1000163) (not e!826347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125838 (= res!1000163 (validMask!0 mask!2687))))

(assert (=> start!125838 e!826347))

(assert (=> start!125838 true))

(declare-fun array_inv!36770 (array!99089) Bool)

(assert (=> start!125838 (array_inv!36770 a!2862)))

(declare-fun b!1472392 () Bool)

(declare-fun res!1000152 () Bool)

(assert (=> b!1472392 (=> (not res!1000152) (not e!826347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99089 (_ BitVec 32)) Bool)

(assert (=> b!1472392 (= res!1000152 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472393 () Bool)

(declare-fun lt!643521 () SeekEntryResult!12088)

(assert (=> b!1472393 (= e!826349 (= lt!643521 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643520 lt!643522 mask!2687)))))

(declare-fun b!1472394 () Bool)

(assert (=> b!1472394 (= e!826346 e!826343)))

(declare-fun res!1000162 () Bool)

(assert (=> b!1472394 (=> (not res!1000162) (not e!826343))))

(assert (=> b!1472394 (= res!1000162 (= lt!643521 (Intermediate!12088 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1472394 (= lt!643521 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643520 mask!2687) lt!643520 lt!643522 mask!2687))))

(assert (=> b!1472394 (= lt!643520 (select (store (arr!47825 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1472395 () Bool)

(assert (=> b!1472395 (= e!826345 (or (= (select (arr!47825 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47825 a!2862) intermediateBeforeIndex!19) (select (arr!47825 a!2862) j!93))))))

(declare-fun b!1472396 () Bool)

(assert (=> b!1472396 (= e!826343 (not true))))

(assert (=> b!1472396 e!826345))

(declare-fun res!1000164 () Bool)

(assert (=> b!1472396 (=> (not res!1000164) (not e!826345))))

(assert (=> b!1472396 (= res!1000164 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49464 0))(
  ( (Unit!49465) )
))
(declare-fun lt!643519 () Unit!49464)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49464)

(assert (=> b!1472396 (= lt!643519 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472397 () Bool)

(declare-fun res!1000160 () Bool)

(assert (=> b!1472397 (=> (not res!1000160) (not e!826343))))

(assert (=> b!1472397 (= res!1000160 e!826349)))

(declare-fun c!135632 () Bool)

(assert (=> b!1472397 (= c!135632 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472398 () Bool)

(declare-fun res!1000154 () Bool)

(assert (=> b!1472398 (=> (not res!1000154) (not e!826346))))

(assert (=> b!1472398 (= res!1000154 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47825 a!2862) j!93) a!2862 mask!2687) lt!643518))))

(assert (= (and start!125838 res!1000163) b!1472387))

(assert (= (and b!1472387 res!1000159) b!1472389))

(assert (= (and b!1472389 res!1000153) b!1472386))

(assert (= (and b!1472386 res!1000150) b!1472392))

(assert (= (and b!1472392 res!1000152) b!1472383))

(assert (= (and b!1472383 res!1000161) b!1472391))

(assert (= (and b!1472391 res!1000157) b!1472390))

(assert (= (and b!1472390 res!1000158) b!1472384))

(assert (= (and b!1472384 res!1000155) b!1472398))

(assert (= (and b!1472398 res!1000154) b!1472394))

(assert (= (and b!1472394 res!1000162) b!1472397))

(assert (= (and b!1472397 c!135632) b!1472393))

(assert (= (and b!1472397 (not c!135632)) b!1472388))

(assert (= (and b!1472397 res!1000160) b!1472385))

(assert (= (and b!1472385 res!1000156) b!1472396))

(assert (= (and b!1472396 res!1000164) b!1472382))

(assert (= (and b!1472382 res!1000151) b!1472395))

(declare-fun m!1359151 () Bool)

(assert (=> b!1472395 m!1359151))

(declare-fun m!1359153 () Bool)

(assert (=> b!1472395 m!1359153))

(assert (=> b!1472382 m!1359153))

(assert (=> b!1472382 m!1359153))

(declare-fun m!1359155 () Bool)

(assert (=> b!1472382 m!1359155))

(declare-fun m!1359157 () Bool)

(assert (=> b!1472388 m!1359157))

(declare-fun m!1359159 () Bool)

(assert (=> b!1472388 m!1359159))

(declare-fun m!1359161 () Bool)

(assert (=> b!1472383 m!1359161))

(declare-fun m!1359163 () Bool)

(assert (=> b!1472390 m!1359163))

(declare-fun m!1359165 () Bool)

(assert (=> b!1472390 m!1359165))

(declare-fun m!1359167 () Bool)

(assert (=> b!1472392 m!1359167))

(assert (=> b!1472386 m!1359153))

(assert (=> b!1472386 m!1359153))

(declare-fun m!1359169 () Bool)

(assert (=> b!1472386 m!1359169))

(assert (=> b!1472398 m!1359153))

(assert (=> b!1472398 m!1359153))

(declare-fun m!1359171 () Bool)

(assert (=> b!1472398 m!1359171))

(declare-fun m!1359173 () Bool)

(assert (=> b!1472389 m!1359173))

(assert (=> b!1472389 m!1359173))

(declare-fun m!1359175 () Bool)

(assert (=> b!1472389 m!1359175))

(declare-fun m!1359177 () Bool)

(assert (=> start!125838 m!1359177))

(declare-fun m!1359179 () Bool)

(assert (=> start!125838 m!1359179))

(declare-fun m!1359181 () Bool)

(assert (=> b!1472393 m!1359181))

(declare-fun m!1359183 () Bool)

(assert (=> b!1472394 m!1359183))

(assert (=> b!1472394 m!1359183))

(declare-fun m!1359185 () Bool)

(assert (=> b!1472394 m!1359185))

(assert (=> b!1472394 m!1359163))

(declare-fun m!1359187 () Bool)

(assert (=> b!1472394 m!1359187))

(assert (=> b!1472384 m!1359153))

(assert (=> b!1472384 m!1359153))

(declare-fun m!1359189 () Bool)

(assert (=> b!1472384 m!1359189))

(assert (=> b!1472384 m!1359189))

(assert (=> b!1472384 m!1359153))

(declare-fun m!1359191 () Bool)

(assert (=> b!1472384 m!1359191))

(declare-fun m!1359193 () Bool)

(assert (=> b!1472396 m!1359193))

(declare-fun m!1359195 () Bool)

(assert (=> b!1472396 m!1359195))

(check-sat (not b!1472384) (not b!1472386) (not b!1472396) (not start!125838) (not b!1472389) (not b!1472392) (not b!1472393) (not b!1472398) (not b!1472394) (not b!1472383) (not b!1472388) (not b!1472382))
(check-sat)
