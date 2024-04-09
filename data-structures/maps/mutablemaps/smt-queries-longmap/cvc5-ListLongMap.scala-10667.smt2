; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125182 () Bool)

(assert start!125182)

(declare-fun b!1458178 () Bool)

(declare-fun e!820246 () Bool)

(declare-fun e!820248 () Bool)

(assert (=> b!1458178 (= e!820246 e!820248)))

(declare-fun res!988454 () Bool)

(assert (=> b!1458178 (=> res!988454 e!820248)))

(declare-fun lt!638919 () (_ BitVec 32))

(declare-datatypes ((array!98547 0))(
  ( (array!98548 (arr!47557 (Array (_ BitVec 32) (_ BitVec 64))) (size!48108 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98547)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1458178 (= res!988454 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638919 #b00000000000000000000000000000000) (bvsge lt!638919 (size!48108 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458178 (= lt!638919 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638922 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11832 0))(
  ( (MissingZero!11832 (index!49719 (_ BitVec 32))) (Found!11832 (index!49720 (_ BitVec 32))) (Intermediate!11832 (undefined!12644 Bool) (index!49721 (_ BitVec 32)) (x!131340 (_ BitVec 32))) (Undefined!11832) (MissingVacant!11832 (index!49722 (_ BitVec 32))) )
))
(declare-fun lt!638916 () SeekEntryResult!11832)

(declare-fun lt!638918 () array!98547)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98547 (_ BitVec 32)) SeekEntryResult!11832)

(assert (=> b!1458178 (= lt!638916 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638922 lt!638918 mask!2687))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98547 (_ BitVec 32)) SeekEntryResult!11832)

(assert (=> b!1458178 (= lt!638916 (seekEntryOrOpen!0 lt!638922 lt!638918 mask!2687))))

(declare-fun b!1458179 () Bool)

(declare-fun res!988453 () Bool)

(declare-fun e!820245 () Bool)

(assert (=> b!1458179 (=> (not res!988453) (not e!820245))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1458179 (= res!988453 (= (seekEntryOrOpen!0 (select (arr!47557 a!2862) j!93) a!2862 mask!2687) (Found!11832 j!93)))))

(declare-fun b!1458180 () Bool)

(declare-fun e!820253 () Bool)

(declare-fun e!820249 () Bool)

(assert (=> b!1458180 (= e!820253 e!820249)))

(declare-fun res!988443 () Bool)

(assert (=> b!1458180 (=> (not res!988443) (not e!820249))))

(declare-fun lt!638920 () SeekEntryResult!11832)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1458180 (= res!988443 (= lt!638920 (Intermediate!11832 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98547 (_ BitVec 32)) SeekEntryResult!11832)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458180 (= lt!638920 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638922 mask!2687) lt!638922 lt!638918 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458180 (= lt!638922 (select (store (arr!47557 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1458181 () Bool)

(assert (=> b!1458181 (= e!820245 (and (or (= (select (arr!47557 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47557 a!2862) intermediateBeforeIndex!19) (select (arr!47557 a!2862) j!93))) (let ((bdg!53413 (select (store (arr!47557 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47557 a!2862) index!646) bdg!53413) (= (select (arr!47557 a!2862) index!646) (select (arr!47557 a!2862) j!93))) (= (select (arr!47557 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53413 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!820244 () Bool)

(declare-fun b!1458182 () Bool)

(assert (=> b!1458182 (= e!820244 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638922 lt!638918 mask!2687) (seekEntryOrOpen!0 lt!638922 lt!638918 mask!2687)))))

(declare-fun b!1458183 () Bool)

(declare-fun e!820252 () Bool)

(assert (=> b!1458183 (= e!820252 e!820253)))

(declare-fun res!988452 () Bool)

(assert (=> b!1458183 (=> (not res!988452) (not e!820253))))

(declare-fun lt!638923 () SeekEntryResult!11832)

(assert (=> b!1458183 (= res!988452 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47557 a!2862) j!93) mask!2687) (select (arr!47557 a!2862) j!93) a!2862 mask!2687) lt!638923))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458183 (= lt!638923 (Intermediate!11832 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1458184 () Bool)

(declare-fun res!988450 () Bool)

(declare-fun e!820250 () Bool)

(assert (=> b!1458184 (=> (not res!988450) (not e!820250))))

(assert (=> b!1458184 (= res!988450 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48108 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48108 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48108 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1458185 () Bool)

(declare-fun res!988455 () Bool)

(assert (=> b!1458185 (=> (not res!988455) (not e!820250))))

(assert (=> b!1458185 (= res!988455 (and (= (size!48108 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48108 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48108 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!820251 () Bool)

(declare-fun b!1458187 () Bool)

(assert (=> b!1458187 (= e!820251 (not (= lt!638920 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638919 lt!638922 lt!638918 mask!2687))))))

(declare-fun b!1458188 () Bool)

(assert (=> b!1458188 (= e!820244 (= lt!638920 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638922 lt!638918 mask!2687)))))

(declare-fun b!1458189 () Bool)

(declare-fun res!988448 () Bool)

(assert (=> b!1458189 (=> (not res!988448) (not e!820250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98547 (_ BitVec 32)) Bool)

(assert (=> b!1458189 (= res!988448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458190 () Bool)

(declare-fun res!988445 () Bool)

(assert (=> b!1458190 (=> (not res!988445) (not e!820250))))

(declare-datatypes ((List!34238 0))(
  ( (Nil!34235) (Cons!34234 (h!35584 (_ BitVec 64)) (t!48939 List!34238)) )
))
(declare-fun arrayNoDuplicates!0 (array!98547 (_ BitVec 32) List!34238) Bool)

(assert (=> b!1458190 (= res!988445 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34235))))

(declare-fun b!1458191 () Bool)

(declare-fun res!988451 () Bool)

(assert (=> b!1458191 (=> (not res!988451) (not e!820249))))

(assert (=> b!1458191 (= res!988451 e!820244)))

(declare-fun c!134383 () Bool)

(assert (=> b!1458191 (= c!134383 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458192 () Bool)

(assert (=> b!1458192 (= e!820251 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638919 intermediateAfterIndex!19 lt!638922 lt!638918 mask!2687) lt!638916)))))

(declare-fun b!1458193 () Bool)

(declare-fun res!988439 () Bool)

(assert (=> b!1458193 (=> (not res!988439) (not e!820250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458193 (= res!988439 (validKeyInArray!0 (select (arr!47557 a!2862) i!1006)))))

(declare-fun b!1458194 () Bool)

(declare-fun res!988441 () Bool)

(assert (=> b!1458194 (=> (not res!988441) (not e!820253))))

(assert (=> b!1458194 (= res!988441 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47557 a!2862) j!93) a!2862 mask!2687) lt!638923))))

(declare-fun b!1458195 () Bool)

(declare-fun res!988440 () Bool)

(assert (=> b!1458195 (=> (not res!988440) (not e!820250))))

(assert (=> b!1458195 (= res!988440 (validKeyInArray!0 (select (arr!47557 a!2862) j!93)))))

(declare-fun b!1458196 () Bool)

(declare-fun res!988446 () Bool)

(assert (=> b!1458196 (=> (not res!988446) (not e!820249))))

(assert (=> b!1458196 (= res!988446 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458197 () Bool)

(assert (=> b!1458197 (= e!820249 (not e!820246))))

(declare-fun res!988449 () Bool)

(assert (=> b!1458197 (=> res!988449 e!820246)))

(assert (=> b!1458197 (= res!988449 (or (and (= (select (arr!47557 a!2862) index!646) (select (store (arr!47557 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47557 a!2862) index!646) (select (arr!47557 a!2862) j!93))) (= (select (arr!47557 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458197 e!820245))

(declare-fun res!988447 () Bool)

(assert (=> b!1458197 (=> (not res!988447) (not e!820245))))

(assert (=> b!1458197 (= res!988447 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49108 0))(
  ( (Unit!49109) )
))
(declare-fun lt!638917 () Unit!49108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49108)

(assert (=> b!1458197 (= lt!638917 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458186 () Bool)

(assert (=> b!1458186 (= e!820250 e!820252)))

(declare-fun res!988442 () Bool)

(assert (=> b!1458186 (=> (not res!988442) (not e!820252))))

(assert (=> b!1458186 (= res!988442 (= (select (store (arr!47557 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458186 (= lt!638918 (array!98548 (store (arr!47557 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48108 a!2862)))))

(declare-fun res!988438 () Bool)

(assert (=> start!125182 (=> (not res!988438) (not e!820250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125182 (= res!988438 (validMask!0 mask!2687))))

(assert (=> start!125182 e!820250))

(assert (=> start!125182 true))

(declare-fun array_inv!36502 (array!98547) Bool)

(assert (=> start!125182 (array_inv!36502 a!2862)))

(declare-fun b!1458198 () Bool)

(declare-fun res!988444 () Bool)

(assert (=> b!1458198 (=> res!988444 e!820248)))

(assert (=> b!1458198 (= res!988444 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638919 (select (arr!47557 a!2862) j!93) a!2862 mask!2687) lt!638923)))))

(declare-fun b!1458199 () Bool)

(assert (=> b!1458199 (= e!820248 true)))

(declare-fun lt!638921 () Bool)

(assert (=> b!1458199 (= lt!638921 e!820251)))

(declare-fun c!134384 () Bool)

(assert (=> b!1458199 (= c!134384 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(assert (= (and start!125182 res!988438) b!1458185))

(assert (= (and b!1458185 res!988455) b!1458193))

(assert (= (and b!1458193 res!988439) b!1458195))

(assert (= (and b!1458195 res!988440) b!1458189))

(assert (= (and b!1458189 res!988448) b!1458190))

(assert (= (and b!1458190 res!988445) b!1458184))

(assert (= (and b!1458184 res!988450) b!1458186))

(assert (= (and b!1458186 res!988442) b!1458183))

(assert (= (and b!1458183 res!988452) b!1458194))

(assert (= (and b!1458194 res!988441) b!1458180))

(assert (= (and b!1458180 res!988443) b!1458191))

(assert (= (and b!1458191 c!134383) b!1458188))

(assert (= (and b!1458191 (not c!134383)) b!1458182))

(assert (= (and b!1458191 res!988451) b!1458196))

(assert (= (and b!1458196 res!988446) b!1458197))

(assert (= (and b!1458197 res!988447) b!1458179))

(assert (= (and b!1458179 res!988453) b!1458181))

(assert (= (and b!1458197 (not res!988449)) b!1458178))

(assert (= (and b!1458178 (not res!988454)) b!1458198))

(assert (= (and b!1458198 (not res!988444)) b!1458199))

(assert (= (and b!1458199 c!134384) b!1458187))

(assert (= (and b!1458199 (not c!134384)) b!1458192))

(declare-fun m!1346115 () Bool)

(assert (=> b!1458193 m!1346115))

(assert (=> b!1458193 m!1346115))

(declare-fun m!1346117 () Bool)

(assert (=> b!1458193 m!1346117))

(declare-fun m!1346119 () Bool)

(assert (=> b!1458179 m!1346119))

(assert (=> b!1458179 m!1346119))

(declare-fun m!1346121 () Bool)

(assert (=> b!1458179 m!1346121))

(declare-fun m!1346123 () Bool)

(assert (=> b!1458187 m!1346123))

(declare-fun m!1346125 () Bool)

(assert (=> b!1458197 m!1346125))

(declare-fun m!1346127 () Bool)

(assert (=> b!1458197 m!1346127))

(declare-fun m!1346129 () Bool)

(assert (=> b!1458197 m!1346129))

(declare-fun m!1346131 () Bool)

(assert (=> b!1458197 m!1346131))

(declare-fun m!1346133 () Bool)

(assert (=> b!1458197 m!1346133))

(assert (=> b!1458197 m!1346119))

(assert (=> b!1458198 m!1346119))

(assert (=> b!1458198 m!1346119))

(declare-fun m!1346135 () Bool)

(assert (=> b!1458198 m!1346135))

(declare-fun m!1346137 () Bool)

(assert (=> b!1458178 m!1346137))

(declare-fun m!1346139 () Bool)

(assert (=> b!1458178 m!1346139))

(declare-fun m!1346141 () Bool)

(assert (=> b!1458178 m!1346141))

(declare-fun m!1346143 () Bool)

(assert (=> start!125182 m!1346143))

(declare-fun m!1346145 () Bool)

(assert (=> start!125182 m!1346145))

(assert (=> b!1458182 m!1346139))

(assert (=> b!1458182 m!1346141))

(declare-fun m!1346147 () Bool)

(assert (=> b!1458190 m!1346147))

(assert (=> b!1458181 m!1346127))

(declare-fun m!1346149 () Bool)

(assert (=> b!1458181 m!1346149))

(assert (=> b!1458181 m!1346129))

(assert (=> b!1458181 m!1346131))

(assert (=> b!1458181 m!1346119))

(assert (=> b!1458186 m!1346127))

(declare-fun m!1346151 () Bool)

(assert (=> b!1458186 m!1346151))

(assert (=> b!1458194 m!1346119))

(assert (=> b!1458194 m!1346119))

(declare-fun m!1346153 () Bool)

(assert (=> b!1458194 m!1346153))

(declare-fun m!1346155 () Bool)

(assert (=> b!1458192 m!1346155))

(assert (=> b!1458183 m!1346119))

(assert (=> b!1458183 m!1346119))

(declare-fun m!1346157 () Bool)

(assert (=> b!1458183 m!1346157))

(assert (=> b!1458183 m!1346157))

(assert (=> b!1458183 m!1346119))

(declare-fun m!1346159 () Bool)

(assert (=> b!1458183 m!1346159))

(declare-fun m!1346161 () Bool)

(assert (=> b!1458188 m!1346161))

(assert (=> b!1458195 m!1346119))

(assert (=> b!1458195 m!1346119))

(declare-fun m!1346163 () Bool)

(assert (=> b!1458195 m!1346163))

(declare-fun m!1346165 () Bool)

(assert (=> b!1458180 m!1346165))

(assert (=> b!1458180 m!1346165))

(declare-fun m!1346167 () Bool)

(assert (=> b!1458180 m!1346167))

(assert (=> b!1458180 m!1346127))

(declare-fun m!1346169 () Bool)

(assert (=> b!1458180 m!1346169))

(declare-fun m!1346171 () Bool)

(assert (=> b!1458189 m!1346171))

(push 1)

