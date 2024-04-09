; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129030 () Bool)

(assert start!129030)

(declare-fun b!1512322 () Bool)

(declare-fun res!1032305 () Bool)

(declare-fun e!844190 () Bool)

(assert (=> b!1512322 (=> (not res!1032305) (not e!844190))))

(declare-datatypes ((array!100799 0))(
  ( (array!100800 (arr!48632 (Array (_ BitVec 32) (_ BitVec 64))) (size!49183 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100799)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100799 (_ BitVec 32)) Bool)

(assert (=> b!1512322 (= res!1032305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512323 () Bool)

(declare-fun res!1032308 () Bool)

(assert (=> b!1512323 (=> (not res!1032308) (not e!844190))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1512323 (= res!1032308 (and (= (size!49183 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49183 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49183 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512324 () Bool)

(declare-fun res!1032302 () Bool)

(declare-fun e!844192 () Bool)

(assert (=> b!1512324 (=> (not res!1032302) (not e!844192))))

(declare-datatypes ((SeekEntryResult!12824 0))(
  ( (MissingZero!12824 (index!53690 (_ BitVec 32))) (Found!12824 (index!53691 (_ BitVec 32))) (Intermediate!12824 (undefined!13636 Bool) (index!53692 (_ BitVec 32)) (x!135427 (_ BitVec 32))) (Undefined!12824) (MissingVacant!12824 (index!53693 (_ BitVec 32))) )
))
(declare-fun lt!655621 () SeekEntryResult!12824)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100799 (_ BitVec 32)) SeekEntryResult!12824)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512324 (= res!1032302 (= lt!655621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48632 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48632 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100800 (store (arr!48632 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49183 a!2804)) mask!2512)))))

(declare-fun b!1512325 () Bool)

(declare-fun e!844191 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100799 (_ BitVec 32)) SeekEntryResult!12824)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100799 (_ BitVec 32)) SeekEntryResult!12824)

(assert (=> b!1512325 (= e!844191 (= (seekEntryOrOpen!0 (select (arr!48632 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48632 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512326 () Bool)

(assert (=> b!1512326 (= e!844190 e!844192)))

(declare-fun res!1032307 () Bool)

(assert (=> b!1512326 (=> (not res!1032307) (not e!844192))))

(declare-fun lt!655619 () SeekEntryResult!12824)

(assert (=> b!1512326 (= res!1032307 (= lt!655621 lt!655619))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1512326 (= lt!655619 (Intermediate!12824 false resIndex!21 resX!21))))

(assert (=> b!1512326 (= lt!655621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48632 a!2804) j!70) mask!2512) (select (arr!48632 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512327 () Bool)

(assert (=> b!1512327 (= e!844192 (not true))))

(declare-fun e!844193 () Bool)

(assert (=> b!1512327 e!844193))

(declare-fun res!1032309 () Bool)

(assert (=> b!1512327 (=> (not res!1032309) (not e!844193))))

(assert (=> b!1512327 (= res!1032309 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50472 0))(
  ( (Unit!50473) )
))
(declare-fun lt!655620 () Unit!50472)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50472)

(assert (=> b!1512327 (= lt!655620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512328 () Bool)

(declare-fun res!1032299 () Bool)

(assert (=> b!1512328 (=> (not res!1032299) (not e!844190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512328 (= res!1032299 (validKeyInArray!0 (select (arr!48632 a!2804) j!70)))))

(declare-fun b!1512329 () Bool)

(declare-fun res!1032300 () Bool)

(assert (=> b!1512329 (=> (not res!1032300) (not e!844193))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100799 (_ BitVec 32)) SeekEntryResult!12824)

(assert (=> b!1512329 (= res!1032300 (= (seekEntry!0 (select (arr!48632 a!2804) j!70) a!2804 mask!2512) (Found!12824 j!70)))))

(declare-fun b!1512330 () Bool)

(declare-fun res!1032297 () Bool)

(assert (=> b!1512330 (=> (not res!1032297) (not e!844190))))

(assert (=> b!1512330 (= res!1032297 (validKeyInArray!0 (select (arr!48632 a!2804) i!961)))))

(declare-fun res!1032304 () Bool)

(assert (=> start!129030 (=> (not res!1032304) (not e!844190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129030 (= res!1032304 (validMask!0 mask!2512))))

(assert (=> start!129030 e!844190))

(assert (=> start!129030 true))

(declare-fun array_inv!37577 (array!100799) Bool)

(assert (=> start!129030 (array_inv!37577 a!2804)))

(declare-fun b!1512331 () Bool)

(declare-fun res!1032301 () Bool)

(assert (=> b!1512331 (=> (not res!1032301) (not e!844190))))

(declare-datatypes ((List!35295 0))(
  ( (Nil!35292) (Cons!35291 (h!36704 (_ BitVec 64)) (t!49996 List!35295)) )
))
(declare-fun arrayNoDuplicates!0 (array!100799 (_ BitVec 32) List!35295) Bool)

(assert (=> b!1512331 (= res!1032301 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35292))))

(declare-fun b!1512332 () Bool)

(assert (=> b!1512332 (= e!844193 e!844191)))

(declare-fun res!1032306 () Bool)

(assert (=> b!1512332 (=> res!1032306 e!844191)))

(assert (=> b!1512332 (= res!1032306 (or (not (= (select (arr!48632 a!2804) j!70) (select (store (arr!48632 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48632 a!2804) index!487) (select (arr!48632 a!2804) j!70)) (not (= (select (arr!48632 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512333 () Bool)

(declare-fun res!1032303 () Bool)

(assert (=> b!1512333 (=> (not res!1032303) (not e!844190))))

(assert (=> b!1512333 (= res!1032303 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49183 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49183 a!2804))))))

(declare-fun b!1512334 () Bool)

(declare-fun res!1032298 () Bool)

(assert (=> b!1512334 (=> (not res!1032298) (not e!844192))))

(assert (=> b!1512334 (= res!1032298 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48632 a!2804) j!70) a!2804 mask!2512) lt!655619))))

(assert (= (and start!129030 res!1032304) b!1512323))

(assert (= (and b!1512323 res!1032308) b!1512330))

(assert (= (and b!1512330 res!1032297) b!1512328))

(assert (= (and b!1512328 res!1032299) b!1512322))

(assert (= (and b!1512322 res!1032305) b!1512331))

(assert (= (and b!1512331 res!1032301) b!1512333))

(assert (= (and b!1512333 res!1032303) b!1512326))

(assert (= (and b!1512326 res!1032307) b!1512334))

(assert (= (and b!1512334 res!1032298) b!1512324))

(assert (= (and b!1512324 res!1032302) b!1512327))

(assert (= (and b!1512327 res!1032309) b!1512329))

(assert (= (and b!1512329 res!1032300) b!1512332))

(assert (= (and b!1512332 (not res!1032306)) b!1512325))

(declare-fun m!1395141 () Bool)

(assert (=> b!1512326 m!1395141))

(assert (=> b!1512326 m!1395141))

(declare-fun m!1395143 () Bool)

(assert (=> b!1512326 m!1395143))

(assert (=> b!1512326 m!1395143))

(assert (=> b!1512326 m!1395141))

(declare-fun m!1395145 () Bool)

(assert (=> b!1512326 m!1395145))

(assert (=> b!1512328 m!1395141))

(assert (=> b!1512328 m!1395141))

(declare-fun m!1395147 () Bool)

(assert (=> b!1512328 m!1395147))

(declare-fun m!1395149 () Bool)

(assert (=> start!129030 m!1395149))

(declare-fun m!1395151 () Bool)

(assert (=> start!129030 m!1395151))

(declare-fun m!1395153 () Bool)

(assert (=> b!1512322 m!1395153))

(declare-fun m!1395155 () Bool)

(assert (=> b!1512327 m!1395155))

(declare-fun m!1395157 () Bool)

(assert (=> b!1512327 m!1395157))

(declare-fun m!1395159 () Bool)

(assert (=> b!1512331 m!1395159))

(assert (=> b!1512329 m!1395141))

(assert (=> b!1512329 m!1395141))

(declare-fun m!1395161 () Bool)

(assert (=> b!1512329 m!1395161))

(declare-fun m!1395163 () Bool)

(assert (=> b!1512324 m!1395163))

(declare-fun m!1395165 () Bool)

(assert (=> b!1512324 m!1395165))

(assert (=> b!1512324 m!1395165))

(declare-fun m!1395167 () Bool)

(assert (=> b!1512324 m!1395167))

(assert (=> b!1512324 m!1395167))

(assert (=> b!1512324 m!1395165))

(declare-fun m!1395169 () Bool)

(assert (=> b!1512324 m!1395169))

(assert (=> b!1512325 m!1395141))

(assert (=> b!1512325 m!1395141))

(declare-fun m!1395171 () Bool)

(assert (=> b!1512325 m!1395171))

(assert (=> b!1512325 m!1395141))

(declare-fun m!1395173 () Bool)

(assert (=> b!1512325 m!1395173))

(declare-fun m!1395175 () Bool)

(assert (=> b!1512330 m!1395175))

(assert (=> b!1512330 m!1395175))

(declare-fun m!1395177 () Bool)

(assert (=> b!1512330 m!1395177))

(assert (=> b!1512332 m!1395141))

(assert (=> b!1512332 m!1395163))

(assert (=> b!1512332 m!1395165))

(declare-fun m!1395179 () Bool)

(assert (=> b!1512332 m!1395179))

(assert (=> b!1512334 m!1395141))

(assert (=> b!1512334 m!1395141))

(declare-fun m!1395181 () Bool)

(assert (=> b!1512334 m!1395181))

(check-sat (not b!1512327) (not b!1512324) (not b!1512326) (not b!1512328) (not b!1512325) (not b!1512331) (not b!1512334) (not b!1512322) (not b!1512330) (not b!1512329) (not start!129030))
(check-sat)
