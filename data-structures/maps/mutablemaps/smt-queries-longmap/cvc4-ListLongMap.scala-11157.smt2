; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130400 () Bool)

(assert start!130400)

(declare-fun b!1530263 () Bool)

(declare-fun res!1047931 () Bool)

(declare-fun e!852739 () Bool)

(assert (=> b!1530263 (=> (not res!1047931) (not e!852739))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101620 0))(
  ( (array!101621 (arr!49029 (Array (_ BitVec 32) (_ BitVec 64))) (size!49580 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101620)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530263 (= res!1047931 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49580 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49580 a!2804))))))

(declare-fun b!1530264 () Bool)

(declare-fun e!852736 () Bool)

(declare-fun e!852738 () Bool)

(assert (=> b!1530264 (= e!852736 (not e!852738))))

(declare-fun res!1047930 () Bool)

(assert (=> b!1530264 (=> res!1047930 e!852738)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1530264 (= res!1047930 (or (not (= (select (arr!49029 a!2804) j!70) (select (store (arr!49029 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852737 () Bool)

(assert (=> b!1530264 e!852737))

(declare-fun res!1047935 () Bool)

(assert (=> b!1530264 (=> (not res!1047935) (not e!852737))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101620 (_ BitVec 32)) Bool)

(assert (=> b!1530264 (= res!1047935 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51170 0))(
  ( (Unit!51171) )
))
(declare-fun lt!662724 () Unit!51170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51170)

(assert (=> b!1530264 (= lt!662724 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530265 () Bool)

(declare-datatypes ((SeekEntryResult!13215 0))(
  ( (MissingZero!13215 (index!55254 (_ BitVec 32))) (Found!13215 (index!55255 (_ BitVec 32))) (Intermediate!13215 (undefined!14027 Bool) (index!55256 (_ BitVec 32)) (x!136946 (_ BitVec 32))) (Undefined!13215) (MissingVacant!13215 (index!55257 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101620 (_ BitVec 32)) SeekEntryResult!13215)

(assert (=> b!1530265 (= e!852737 (= (seekEntry!0 (select (arr!49029 a!2804) j!70) a!2804 mask!2512) (Found!13215 j!70)))))

(declare-fun res!1047927 () Bool)

(assert (=> start!130400 (=> (not res!1047927) (not e!852739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130400 (= res!1047927 (validMask!0 mask!2512))))

(assert (=> start!130400 e!852739))

(assert (=> start!130400 true))

(declare-fun array_inv!37974 (array!101620) Bool)

(assert (=> start!130400 (array_inv!37974 a!2804)))

(declare-fun b!1530266 () Bool)

(declare-fun res!1047928 () Bool)

(assert (=> b!1530266 (=> (not res!1047928) (not e!852739))))

(assert (=> b!1530266 (= res!1047928 (and (= (size!49580 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49580 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49580 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530267 () Bool)

(assert (=> b!1530267 (= e!852739 e!852736)))

(declare-fun res!1047934 () Bool)

(assert (=> b!1530267 (=> (not res!1047934) (not e!852736))))

(declare-fun lt!662725 () SeekEntryResult!13215)

(declare-fun lt!662723 () SeekEntryResult!13215)

(assert (=> b!1530267 (= res!1047934 (= lt!662725 lt!662723))))

(assert (=> b!1530267 (= lt!662723 (Intermediate!13215 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101620 (_ BitVec 32)) SeekEntryResult!13215)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530267 (= lt!662725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49029 a!2804) j!70) mask!2512) (select (arr!49029 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530268 () Bool)

(assert (=> b!1530268 (= e!852738 true)))

(declare-fun lt!662722 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530268 (= lt!662722 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530269 () Bool)

(declare-fun res!1047936 () Bool)

(assert (=> b!1530269 (=> (not res!1047936) (not e!852736))))

(assert (=> b!1530269 (= res!1047936 (= lt!662725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49029 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49029 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101621 (store (arr!49029 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49580 a!2804)) mask!2512)))))

(declare-fun b!1530270 () Bool)

(declare-fun res!1047932 () Bool)

(assert (=> b!1530270 (=> (not res!1047932) (not e!852739))))

(assert (=> b!1530270 (= res!1047932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530271 () Bool)

(declare-fun res!1047926 () Bool)

(assert (=> b!1530271 (=> (not res!1047926) (not e!852739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530271 (= res!1047926 (validKeyInArray!0 (select (arr!49029 a!2804) i!961)))))

(declare-fun b!1530272 () Bool)

(declare-fun res!1047933 () Bool)

(assert (=> b!1530272 (=> (not res!1047933) (not e!852736))))

(assert (=> b!1530272 (= res!1047933 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49029 a!2804) j!70) a!2804 mask!2512) lt!662723))))

(declare-fun b!1530273 () Bool)

(declare-fun res!1047929 () Bool)

(assert (=> b!1530273 (=> (not res!1047929) (not e!852739))))

(declare-datatypes ((List!35692 0))(
  ( (Nil!35689) (Cons!35688 (h!37128 (_ BitVec 64)) (t!50393 List!35692)) )
))
(declare-fun arrayNoDuplicates!0 (array!101620 (_ BitVec 32) List!35692) Bool)

(assert (=> b!1530273 (= res!1047929 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35689))))

(declare-fun b!1530274 () Bool)

(declare-fun res!1047925 () Bool)

(assert (=> b!1530274 (=> (not res!1047925) (not e!852739))))

(assert (=> b!1530274 (= res!1047925 (validKeyInArray!0 (select (arr!49029 a!2804) j!70)))))

(assert (= (and start!130400 res!1047927) b!1530266))

(assert (= (and b!1530266 res!1047928) b!1530271))

(assert (= (and b!1530271 res!1047926) b!1530274))

(assert (= (and b!1530274 res!1047925) b!1530270))

(assert (= (and b!1530270 res!1047932) b!1530273))

(assert (= (and b!1530273 res!1047929) b!1530263))

(assert (= (and b!1530263 res!1047931) b!1530267))

(assert (= (and b!1530267 res!1047934) b!1530272))

(assert (= (and b!1530272 res!1047933) b!1530269))

(assert (= (and b!1530269 res!1047936) b!1530264))

(assert (= (and b!1530264 res!1047935) b!1530265))

(assert (= (and b!1530264 (not res!1047930)) b!1530268))

(declare-fun m!1413181 () Bool)

(assert (=> start!130400 m!1413181))

(declare-fun m!1413183 () Bool)

(assert (=> start!130400 m!1413183))

(declare-fun m!1413185 () Bool)

(assert (=> b!1530267 m!1413185))

(assert (=> b!1530267 m!1413185))

(declare-fun m!1413187 () Bool)

(assert (=> b!1530267 m!1413187))

(assert (=> b!1530267 m!1413187))

(assert (=> b!1530267 m!1413185))

(declare-fun m!1413189 () Bool)

(assert (=> b!1530267 m!1413189))

(assert (=> b!1530274 m!1413185))

(assert (=> b!1530274 m!1413185))

(declare-fun m!1413191 () Bool)

(assert (=> b!1530274 m!1413191))

(assert (=> b!1530272 m!1413185))

(assert (=> b!1530272 m!1413185))

(declare-fun m!1413193 () Bool)

(assert (=> b!1530272 m!1413193))

(declare-fun m!1413195 () Bool)

(assert (=> b!1530268 m!1413195))

(assert (=> b!1530265 m!1413185))

(assert (=> b!1530265 m!1413185))

(declare-fun m!1413197 () Bool)

(assert (=> b!1530265 m!1413197))

(assert (=> b!1530264 m!1413185))

(declare-fun m!1413199 () Bool)

(assert (=> b!1530264 m!1413199))

(declare-fun m!1413201 () Bool)

(assert (=> b!1530264 m!1413201))

(declare-fun m!1413203 () Bool)

(assert (=> b!1530264 m!1413203))

(declare-fun m!1413205 () Bool)

(assert (=> b!1530264 m!1413205))

(declare-fun m!1413207 () Bool)

(assert (=> b!1530273 m!1413207))

(declare-fun m!1413209 () Bool)

(assert (=> b!1530271 m!1413209))

(assert (=> b!1530271 m!1413209))

(declare-fun m!1413211 () Bool)

(assert (=> b!1530271 m!1413211))

(assert (=> b!1530269 m!1413201))

(assert (=> b!1530269 m!1413203))

(assert (=> b!1530269 m!1413203))

(declare-fun m!1413213 () Bool)

(assert (=> b!1530269 m!1413213))

(assert (=> b!1530269 m!1413213))

(assert (=> b!1530269 m!1413203))

(declare-fun m!1413215 () Bool)

(assert (=> b!1530269 m!1413215))

(declare-fun m!1413217 () Bool)

(assert (=> b!1530270 m!1413217))

(push 1)

(assert (not b!1530271))

(assert (not b!1530267))

(assert (not b!1530273))

(assert (not b!1530265))

