; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129124 () Bool)

(assert start!129124)

(declare-fun b!1514256 () Bool)

(declare-fun e!845109 () Bool)

(assert (=> b!1514256 (= e!845109 (not true))))

(declare-fun e!845107 () Bool)

(assert (=> b!1514256 e!845107))

(declare-fun res!1034235 () Bool)

(assert (=> b!1514256 (=> (not res!1034235) (not e!845107))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100893 0))(
  ( (array!100894 (arr!48679 (Array (_ BitVec 32) (_ BitVec 64))) (size!49230 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100893)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100893 (_ BitVec 32)) Bool)

(assert (=> b!1514256 (= res!1034235 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50566 0))(
  ( (Unit!50567) )
))
(declare-fun lt!656247 () Unit!50566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50566)

(assert (=> b!1514256 (= lt!656247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514258 () Bool)

(declare-fun res!1034242 () Bool)

(declare-fun e!845105 () Bool)

(assert (=> b!1514258 (=> (not res!1034242) (not e!845105))))

(assert (=> b!1514258 (= res!1034242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514259 () Bool)

(declare-fun res!1034237 () Bool)

(assert (=> b!1514259 (=> (not res!1034237) (not e!845105))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514259 (= res!1034237 (and (= (size!49230 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49230 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49230 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514260 () Bool)

(declare-fun e!845108 () Bool)

(assert (=> b!1514260 (= e!845108 e!845109)))

(declare-fun res!1034233 () Bool)

(assert (=> b!1514260 (=> (not res!1034233) (not e!845109))))

(declare-fun lt!656248 () array!100893)

(declare-datatypes ((SeekEntryResult!12871 0))(
  ( (MissingZero!12871 (index!53878 (_ BitVec 32))) (Found!12871 (index!53879 (_ BitVec 32))) (Intermediate!12871 (undefined!13683 Bool) (index!53880 (_ BitVec 32)) (x!135602 (_ BitVec 32))) (Undefined!12871) (MissingVacant!12871 (index!53881 (_ BitVec 32))) )
))
(declare-fun lt!656244 () SeekEntryResult!12871)

(declare-fun lt!656246 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100893 (_ BitVec 32)) SeekEntryResult!12871)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514260 (= res!1034233 (= lt!656244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656246 mask!2512) lt!656246 lt!656248 mask!2512)))))

(assert (=> b!1514260 (= lt!656246 (select (store (arr!48679 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514260 (= lt!656248 (array!100894 (store (arr!48679 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49230 a!2804)))))

(declare-fun b!1514261 () Bool)

(declare-fun res!1034238 () Bool)

(assert (=> b!1514261 (=> (not res!1034238) (not e!845105))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514261 (= res!1034238 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49230 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49230 a!2804))))))

(declare-fun b!1514262 () Bool)

(declare-fun res!1034243 () Bool)

(assert (=> b!1514262 (=> (not res!1034243) (not e!845105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514262 (= res!1034243 (validKeyInArray!0 (select (arr!48679 a!2804) j!70)))))

(declare-fun b!1514263 () Bool)

(declare-fun e!845106 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100893 (_ BitVec 32)) SeekEntryResult!12871)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100893 (_ BitVec 32)) SeekEntryResult!12871)

(assert (=> b!1514263 (= e!845106 (= (seekEntryOrOpen!0 lt!656246 lt!656248 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656246 lt!656248 mask!2512)))))

(declare-fun b!1514264 () Bool)

(assert (=> b!1514264 (= e!845105 e!845108)))

(declare-fun res!1034234 () Bool)

(assert (=> b!1514264 (=> (not res!1034234) (not e!845108))))

(declare-fun lt!656245 () SeekEntryResult!12871)

(assert (=> b!1514264 (= res!1034234 (= lt!656244 lt!656245))))

(assert (=> b!1514264 (= lt!656245 (Intermediate!12871 false resIndex!21 resX!21))))

(assert (=> b!1514264 (= lt!656244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48679 a!2804) j!70) mask!2512) (select (arr!48679 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514265 () Bool)

(declare-fun res!1034239 () Bool)

(assert (=> b!1514265 (=> (not res!1034239) (not e!845107))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100893 (_ BitVec 32)) SeekEntryResult!12871)

(assert (=> b!1514265 (= res!1034239 (= (seekEntry!0 (select (arr!48679 a!2804) j!70) a!2804 mask!2512) (Found!12871 j!70)))))

(declare-fun b!1514257 () Bool)

(declare-fun e!845111 () Bool)

(assert (=> b!1514257 (= e!845111 e!845106)))

(declare-fun res!1034232 () Bool)

(assert (=> b!1514257 (=> (not res!1034232) (not e!845106))))

(assert (=> b!1514257 (= res!1034232 (= (seekEntryOrOpen!0 (select (arr!48679 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48679 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1034241 () Bool)

(assert (=> start!129124 (=> (not res!1034241) (not e!845105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129124 (= res!1034241 (validMask!0 mask!2512))))

(assert (=> start!129124 e!845105))

(assert (=> start!129124 true))

(declare-fun array_inv!37624 (array!100893) Bool)

(assert (=> start!129124 (array_inv!37624 a!2804)))

(declare-fun b!1514266 () Bool)

(assert (=> b!1514266 (= e!845107 e!845111)))

(declare-fun res!1034240 () Bool)

(assert (=> b!1514266 (=> res!1034240 e!845111)))

(assert (=> b!1514266 (= res!1034240 (or (not (= (select (arr!48679 a!2804) j!70) lt!656246)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48679 a!2804) index!487) (select (arr!48679 a!2804) j!70)) (not (= (select (arr!48679 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514267 () Bool)

(declare-fun res!1034244 () Bool)

(assert (=> b!1514267 (=> (not res!1034244) (not e!845105))))

(declare-datatypes ((List!35342 0))(
  ( (Nil!35339) (Cons!35338 (h!36751 (_ BitVec 64)) (t!50043 List!35342)) )
))
(declare-fun arrayNoDuplicates!0 (array!100893 (_ BitVec 32) List!35342) Bool)

(assert (=> b!1514267 (= res!1034244 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35339))))

(declare-fun b!1514268 () Bool)

(declare-fun res!1034236 () Bool)

(assert (=> b!1514268 (=> (not res!1034236) (not e!845105))))

(assert (=> b!1514268 (= res!1034236 (validKeyInArray!0 (select (arr!48679 a!2804) i!961)))))

(declare-fun b!1514269 () Bool)

(declare-fun res!1034231 () Bool)

(assert (=> b!1514269 (=> (not res!1034231) (not e!845108))))

(assert (=> b!1514269 (= res!1034231 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48679 a!2804) j!70) a!2804 mask!2512) lt!656245))))

(assert (= (and start!129124 res!1034241) b!1514259))

(assert (= (and b!1514259 res!1034237) b!1514268))

(assert (= (and b!1514268 res!1034236) b!1514262))

(assert (= (and b!1514262 res!1034243) b!1514258))

(assert (= (and b!1514258 res!1034242) b!1514267))

(assert (= (and b!1514267 res!1034244) b!1514261))

(assert (= (and b!1514261 res!1034238) b!1514264))

(assert (= (and b!1514264 res!1034234) b!1514269))

(assert (= (and b!1514269 res!1034231) b!1514260))

(assert (= (and b!1514260 res!1034233) b!1514256))

(assert (= (and b!1514256 res!1034235) b!1514265))

(assert (= (and b!1514265 res!1034239) b!1514266))

(assert (= (and b!1514266 (not res!1034240)) b!1514257))

(assert (= (and b!1514257 res!1034232) b!1514263))

(declare-fun m!1397253 () Bool)

(assert (=> b!1514268 m!1397253))

(assert (=> b!1514268 m!1397253))

(declare-fun m!1397255 () Bool)

(assert (=> b!1514268 m!1397255))

(declare-fun m!1397257 () Bool)

(assert (=> b!1514269 m!1397257))

(assert (=> b!1514269 m!1397257))

(declare-fun m!1397259 () Bool)

(assert (=> b!1514269 m!1397259))

(declare-fun m!1397261 () Bool)

(assert (=> b!1514260 m!1397261))

(assert (=> b!1514260 m!1397261))

(declare-fun m!1397263 () Bool)

(assert (=> b!1514260 m!1397263))

(declare-fun m!1397265 () Bool)

(assert (=> b!1514260 m!1397265))

(declare-fun m!1397267 () Bool)

(assert (=> b!1514260 m!1397267))

(assert (=> b!1514264 m!1397257))

(assert (=> b!1514264 m!1397257))

(declare-fun m!1397269 () Bool)

(assert (=> b!1514264 m!1397269))

(assert (=> b!1514264 m!1397269))

(assert (=> b!1514264 m!1397257))

(declare-fun m!1397271 () Bool)

(assert (=> b!1514264 m!1397271))

(declare-fun m!1397273 () Bool)

(assert (=> b!1514258 m!1397273))

(declare-fun m!1397275 () Bool)

(assert (=> b!1514256 m!1397275))

(declare-fun m!1397277 () Bool)

(assert (=> b!1514256 m!1397277))

(declare-fun m!1397279 () Bool)

(assert (=> start!129124 m!1397279))

(declare-fun m!1397281 () Bool)

(assert (=> start!129124 m!1397281))

(assert (=> b!1514262 m!1397257))

(assert (=> b!1514262 m!1397257))

(declare-fun m!1397283 () Bool)

(assert (=> b!1514262 m!1397283))

(declare-fun m!1397285 () Bool)

(assert (=> b!1514267 m!1397285))

(assert (=> b!1514265 m!1397257))

(assert (=> b!1514265 m!1397257))

(declare-fun m!1397287 () Bool)

(assert (=> b!1514265 m!1397287))

(assert (=> b!1514266 m!1397257))

(declare-fun m!1397289 () Bool)

(assert (=> b!1514266 m!1397289))

(assert (=> b!1514257 m!1397257))

(assert (=> b!1514257 m!1397257))

(declare-fun m!1397291 () Bool)

(assert (=> b!1514257 m!1397291))

(assert (=> b!1514257 m!1397257))

(declare-fun m!1397293 () Bool)

(assert (=> b!1514257 m!1397293))

(declare-fun m!1397295 () Bool)

(assert (=> b!1514263 m!1397295))

(declare-fun m!1397297 () Bool)

(assert (=> b!1514263 m!1397297))

(push 1)

