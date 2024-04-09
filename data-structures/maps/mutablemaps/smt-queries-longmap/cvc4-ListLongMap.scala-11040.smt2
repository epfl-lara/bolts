; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129122 () Bool)

(assert start!129122)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!656232 () (_ BitVec 64))

(declare-fun e!845084 () Bool)

(declare-datatypes ((array!100891 0))(
  ( (array!100892 (arr!48678 (Array (_ BitVec 32) (_ BitVec 64))) (size!49229 (_ BitVec 32))) )
))
(declare-fun lt!656233 () array!100891)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun b!1514214 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12870 0))(
  ( (MissingZero!12870 (index!53874 (_ BitVec 32))) (Found!12870 (index!53875 (_ BitVec 32))) (Intermediate!12870 (undefined!13682 Bool) (index!53876 (_ BitVec 32)) (x!135593 (_ BitVec 32))) (Undefined!12870) (MissingVacant!12870 (index!53877 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100891 (_ BitVec 32)) SeekEntryResult!12870)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100891 (_ BitVec 32)) SeekEntryResult!12870)

(assert (=> b!1514214 (= e!845084 (= (seekEntryOrOpen!0 lt!656232 lt!656233 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656232 lt!656233 mask!2512)))))

(declare-fun res!1034190 () Bool)

(declare-fun e!845090 () Bool)

(assert (=> start!129122 (=> (not res!1034190) (not e!845090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129122 (= res!1034190 (validMask!0 mask!2512))))

(assert (=> start!129122 e!845090))

(assert (=> start!129122 true))

(declare-fun a!2804 () array!100891)

(declare-fun array_inv!37623 (array!100891) Bool)

(assert (=> start!129122 (array_inv!37623 a!2804)))

(declare-fun b!1514215 () Bool)

(declare-fun e!845085 () Bool)

(assert (=> b!1514215 (= e!845090 e!845085)))

(declare-fun res!1034202 () Bool)

(assert (=> b!1514215 (=> (not res!1034202) (not e!845085))))

(declare-fun lt!656231 () SeekEntryResult!12870)

(declare-fun lt!656229 () SeekEntryResult!12870)

(assert (=> b!1514215 (= res!1034202 (= lt!656231 lt!656229))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514215 (= lt!656229 (Intermediate!12870 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100891 (_ BitVec 32)) SeekEntryResult!12870)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514215 (= lt!656231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48678 a!2804) j!70) mask!2512) (select (arr!48678 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514216 () Bool)

(declare-fun res!1034199 () Bool)

(assert (=> b!1514216 (=> (not res!1034199) (not e!845090))))

(assert (=> b!1514216 (= res!1034199 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49229 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49229 a!2804))))))

(declare-fun b!1514217 () Bool)

(declare-fun res!1034189 () Bool)

(assert (=> b!1514217 (=> (not res!1034189) (not e!845090))))

(declare-datatypes ((List!35341 0))(
  ( (Nil!35338) (Cons!35337 (h!36750 (_ BitVec 64)) (t!50042 List!35341)) )
))
(declare-fun arrayNoDuplicates!0 (array!100891 (_ BitVec 32) List!35341) Bool)

(assert (=> b!1514217 (= res!1034189 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35338))))

(declare-fun b!1514218 () Bool)

(declare-fun res!1034191 () Bool)

(assert (=> b!1514218 (=> (not res!1034191) (not e!845085))))

(assert (=> b!1514218 (= res!1034191 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48678 a!2804) j!70) a!2804 mask!2512) lt!656229))))

(declare-fun b!1514219 () Bool)

(declare-fun e!845088 () Bool)

(assert (=> b!1514219 (= e!845088 e!845084)))

(declare-fun res!1034192 () Bool)

(assert (=> b!1514219 (=> (not res!1034192) (not e!845084))))

(assert (=> b!1514219 (= res!1034192 (= (seekEntryOrOpen!0 (select (arr!48678 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48678 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514220 () Bool)

(declare-fun e!845089 () Bool)

(assert (=> b!1514220 (= e!845089 e!845088)))

(declare-fun res!1034200 () Bool)

(assert (=> b!1514220 (=> res!1034200 e!845088)))

(assert (=> b!1514220 (= res!1034200 (or (not (= (select (arr!48678 a!2804) j!70) lt!656232)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48678 a!2804) index!487) (select (arr!48678 a!2804) j!70)) (not (= (select (arr!48678 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514221 () Bool)

(declare-fun res!1034194 () Bool)

(assert (=> b!1514221 (=> (not res!1034194) (not e!845090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514221 (= res!1034194 (validKeyInArray!0 (select (arr!48678 a!2804) j!70)))))

(declare-fun b!1514222 () Bool)

(declare-fun e!845087 () Bool)

(assert (=> b!1514222 (= e!845087 (not true))))

(assert (=> b!1514222 e!845089))

(declare-fun res!1034195 () Bool)

(assert (=> b!1514222 (=> (not res!1034195) (not e!845089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100891 (_ BitVec 32)) Bool)

(assert (=> b!1514222 (= res!1034195 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50564 0))(
  ( (Unit!50565) )
))
(declare-fun lt!656230 () Unit!50564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50564)

(assert (=> b!1514222 (= lt!656230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514223 () Bool)

(assert (=> b!1514223 (= e!845085 e!845087)))

(declare-fun res!1034198 () Bool)

(assert (=> b!1514223 (=> (not res!1034198) (not e!845087))))

(assert (=> b!1514223 (= res!1034198 (= lt!656231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656232 mask!2512) lt!656232 lt!656233 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514223 (= lt!656232 (select (store (arr!48678 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514223 (= lt!656233 (array!100892 (store (arr!48678 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49229 a!2804)))))

(declare-fun b!1514224 () Bool)

(declare-fun res!1034196 () Bool)

(assert (=> b!1514224 (=> (not res!1034196) (not e!845090))))

(assert (=> b!1514224 (= res!1034196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514225 () Bool)

(declare-fun res!1034193 () Bool)

(assert (=> b!1514225 (=> (not res!1034193) (not e!845090))))

(assert (=> b!1514225 (= res!1034193 (and (= (size!49229 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49229 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49229 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514226 () Bool)

(declare-fun res!1034201 () Bool)

(assert (=> b!1514226 (=> (not res!1034201) (not e!845090))))

(assert (=> b!1514226 (= res!1034201 (validKeyInArray!0 (select (arr!48678 a!2804) i!961)))))

(declare-fun b!1514227 () Bool)

(declare-fun res!1034197 () Bool)

(assert (=> b!1514227 (=> (not res!1034197) (not e!845089))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100891 (_ BitVec 32)) SeekEntryResult!12870)

(assert (=> b!1514227 (= res!1034197 (= (seekEntry!0 (select (arr!48678 a!2804) j!70) a!2804 mask!2512) (Found!12870 j!70)))))

(assert (= (and start!129122 res!1034190) b!1514225))

(assert (= (and b!1514225 res!1034193) b!1514226))

(assert (= (and b!1514226 res!1034201) b!1514221))

(assert (= (and b!1514221 res!1034194) b!1514224))

(assert (= (and b!1514224 res!1034196) b!1514217))

(assert (= (and b!1514217 res!1034189) b!1514216))

(assert (= (and b!1514216 res!1034199) b!1514215))

(assert (= (and b!1514215 res!1034202) b!1514218))

(assert (= (and b!1514218 res!1034191) b!1514223))

(assert (= (and b!1514223 res!1034198) b!1514222))

(assert (= (and b!1514222 res!1034195) b!1514227))

(assert (= (and b!1514227 res!1034197) b!1514220))

(assert (= (and b!1514220 (not res!1034200)) b!1514219))

(assert (= (and b!1514219 res!1034192) b!1514214))

(declare-fun m!1397207 () Bool)

(assert (=> b!1514220 m!1397207))

(declare-fun m!1397209 () Bool)

(assert (=> b!1514220 m!1397209))

(declare-fun m!1397211 () Bool)

(assert (=> start!129122 m!1397211))

(declare-fun m!1397213 () Bool)

(assert (=> start!129122 m!1397213))

(assert (=> b!1514219 m!1397207))

(assert (=> b!1514219 m!1397207))

(declare-fun m!1397215 () Bool)

(assert (=> b!1514219 m!1397215))

(assert (=> b!1514219 m!1397207))

(declare-fun m!1397217 () Bool)

(assert (=> b!1514219 m!1397217))

(declare-fun m!1397219 () Bool)

(assert (=> b!1514223 m!1397219))

(assert (=> b!1514223 m!1397219))

(declare-fun m!1397221 () Bool)

(assert (=> b!1514223 m!1397221))

(declare-fun m!1397223 () Bool)

(assert (=> b!1514223 m!1397223))

(declare-fun m!1397225 () Bool)

(assert (=> b!1514223 m!1397225))

(assert (=> b!1514218 m!1397207))

(assert (=> b!1514218 m!1397207))

(declare-fun m!1397227 () Bool)

(assert (=> b!1514218 m!1397227))

(declare-fun m!1397229 () Bool)

(assert (=> b!1514217 m!1397229))

(assert (=> b!1514221 m!1397207))

(assert (=> b!1514221 m!1397207))

(declare-fun m!1397231 () Bool)

(assert (=> b!1514221 m!1397231))

(declare-fun m!1397233 () Bool)

(assert (=> b!1514226 m!1397233))

(assert (=> b!1514226 m!1397233))

(declare-fun m!1397235 () Bool)

(assert (=> b!1514226 m!1397235))

(declare-fun m!1397237 () Bool)

(assert (=> b!1514224 m!1397237))

(assert (=> b!1514215 m!1397207))

(assert (=> b!1514215 m!1397207))

(declare-fun m!1397239 () Bool)

(assert (=> b!1514215 m!1397239))

(assert (=> b!1514215 m!1397239))

(assert (=> b!1514215 m!1397207))

(declare-fun m!1397241 () Bool)

(assert (=> b!1514215 m!1397241))

(assert (=> b!1514227 m!1397207))

(assert (=> b!1514227 m!1397207))

(declare-fun m!1397243 () Bool)

(assert (=> b!1514227 m!1397243))

(declare-fun m!1397245 () Bool)

(assert (=> b!1514222 m!1397245))

(declare-fun m!1397247 () Bool)

(assert (=> b!1514222 m!1397247))

(declare-fun m!1397249 () Bool)

(assert (=> b!1514214 m!1397249))

(declare-fun m!1397251 () Bool)

(assert (=> b!1514214 m!1397251))

(push 1)

