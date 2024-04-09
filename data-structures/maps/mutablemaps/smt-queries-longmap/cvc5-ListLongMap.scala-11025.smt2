; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129028 () Bool)

(assert start!129028)

(declare-fun b!1512283 () Bool)

(declare-fun res!1032267 () Bool)

(declare-fun e!844176 () Bool)

(assert (=> b!1512283 (=> (not res!1032267) (not e!844176))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100797 0))(
  ( (array!100798 (arr!48631 (Array (_ BitVec 32) (_ BitVec 64))) (size!49182 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100797)

(assert (=> b!1512283 (= res!1032267 (and (= (size!49182 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49182 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49182 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512284 () Bool)

(declare-fun e!844174 () Bool)

(declare-fun e!844177 () Bool)

(assert (=> b!1512284 (= e!844174 e!844177)))

(declare-fun res!1032262 () Bool)

(assert (=> b!1512284 (=> res!1032262 e!844177)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512284 (= res!1032262 (or (not (= (select (arr!48631 a!2804) j!70) (select (store (arr!48631 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48631 a!2804) index!487) (select (arr!48631 a!2804) j!70)) (not (= (select (arr!48631 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512285 () Bool)

(declare-fun res!1032264 () Bool)

(assert (=> b!1512285 (=> (not res!1032264) (not e!844176))))

(declare-datatypes ((List!35294 0))(
  ( (Nil!35291) (Cons!35290 (h!36703 (_ BitVec 64)) (t!49995 List!35294)) )
))
(declare-fun arrayNoDuplicates!0 (array!100797 (_ BitVec 32) List!35294) Bool)

(assert (=> b!1512285 (= res!1032264 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35291))))

(declare-fun b!1512286 () Bool)

(declare-fun res!1032259 () Bool)

(assert (=> b!1512286 (=> (not res!1032259) (not e!844176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100797 (_ BitVec 32)) Bool)

(assert (=> b!1512286 (= res!1032259 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512287 () Bool)

(declare-fun res!1032265 () Bool)

(assert (=> b!1512287 (=> (not res!1032265) (not e!844176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512287 (= res!1032265 (validKeyInArray!0 (select (arr!48631 a!2804) j!70)))))

(declare-fun b!1512288 () Bool)

(declare-fun res!1032268 () Bool)

(assert (=> b!1512288 (=> (not res!1032268) (not e!844176))))

(assert (=> b!1512288 (= res!1032268 (validKeyInArray!0 (select (arr!48631 a!2804) i!961)))))

(declare-fun b!1512289 () Bool)

(declare-fun e!844175 () Bool)

(assert (=> b!1512289 (= e!844175 (not true))))

(assert (=> b!1512289 e!844174))

(declare-fun res!1032260 () Bool)

(assert (=> b!1512289 (=> (not res!1032260) (not e!844174))))

(assert (=> b!1512289 (= res!1032260 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50470 0))(
  ( (Unit!50471) )
))
(declare-fun lt!655611 () Unit!50470)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100797 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50470)

(assert (=> b!1512289 (= lt!655611 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1032270 () Bool)

(assert (=> start!129028 (=> (not res!1032270) (not e!844176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129028 (= res!1032270 (validMask!0 mask!2512))))

(assert (=> start!129028 e!844176))

(assert (=> start!129028 true))

(declare-fun array_inv!37576 (array!100797) Bool)

(assert (=> start!129028 (array_inv!37576 a!2804)))

(declare-fun b!1512290 () Bool)

(declare-fun res!1032261 () Bool)

(assert (=> b!1512290 (=> (not res!1032261) (not e!844174))))

(declare-datatypes ((SeekEntryResult!12823 0))(
  ( (MissingZero!12823 (index!53686 (_ BitVec 32))) (Found!12823 (index!53687 (_ BitVec 32))) (Intermediate!12823 (undefined!13635 Bool) (index!53688 (_ BitVec 32)) (x!135426 (_ BitVec 32))) (Undefined!12823) (MissingVacant!12823 (index!53689 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100797 (_ BitVec 32)) SeekEntryResult!12823)

(assert (=> b!1512290 (= res!1032261 (= (seekEntry!0 (select (arr!48631 a!2804) j!70) a!2804 mask!2512) (Found!12823 j!70)))))

(declare-fun b!1512291 () Bool)

(declare-fun res!1032258 () Bool)

(assert (=> b!1512291 (=> (not res!1032258) (not e!844175))))

(declare-fun lt!655612 () SeekEntryResult!12823)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100797 (_ BitVec 32)) SeekEntryResult!12823)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512291 (= res!1032258 (= lt!655612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48631 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48631 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100798 (store (arr!48631 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49182 a!2804)) mask!2512)))))

(declare-fun b!1512292 () Bool)

(assert (=> b!1512292 (= e!844176 e!844175)))

(declare-fun res!1032269 () Bool)

(assert (=> b!1512292 (=> (not res!1032269) (not e!844175))))

(declare-fun lt!655610 () SeekEntryResult!12823)

(assert (=> b!1512292 (= res!1032269 (= lt!655612 lt!655610))))

(assert (=> b!1512292 (= lt!655610 (Intermediate!12823 false resIndex!21 resX!21))))

(assert (=> b!1512292 (= lt!655612 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48631 a!2804) j!70) mask!2512) (select (arr!48631 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512293 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100797 (_ BitVec 32)) SeekEntryResult!12823)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100797 (_ BitVec 32)) SeekEntryResult!12823)

(assert (=> b!1512293 (= e!844177 (= (seekEntryOrOpen!0 (select (arr!48631 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48631 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512294 () Bool)

(declare-fun res!1032266 () Bool)

(assert (=> b!1512294 (=> (not res!1032266) (not e!844176))))

(assert (=> b!1512294 (= res!1032266 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49182 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49182 a!2804))))))

(declare-fun b!1512295 () Bool)

(declare-fun res!1032263 () Bool)

(assert (=> b!1512295 (=> (not res!1032263) (not e!844175))))

(assert (=> b!1512295 (= res!1032263 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48631 a!2804) j!70) a!2804 mask!2512) lt!655610))))

(assert (= (and start!129028 res!1032270) b!1512283))

(assert (= (and b!1512283 res!1032267) b!1512288))

(assert (= (and b!1512288 res!1032268) b!1512287))

(assert (= (and b!1512287 res!1032265) b!1512286))

(assert (= (and b!1512286 res!1032259) b!1512285))

(assert (= (and b!1512285 res!1032264) b!1512294))

(assert (= (and b!1512294 res!1032266) b!1512292))

(assert (= (and b!1512292 res!1032269) b!1512295))

(assert (= (and b!1512295 res!1032263) b!1512291))

(assert (= (and b!1512291 res!1032258) b!1512289))

(assert (= (and b!1512289 res!1032260) b!1512290))

(assert (= (and b!1512290 res!1032261) b!1512284))

(assert (= (and b!1512284 (not res!1032262)) b!1512293))

(declare-fun m!1395099 () Bool)

(assert (=> b!1512286 m!1395099))

(declare-fun m!1395101 () Bool)

(assert (=> start!129028 m!1395101))

(declare-fun m!1395103 () Bool)

(assert (=> start!129028 m!1395103))

(declare-fun m!1395105 () Bool)

(assert (=> b!1512291 m!1395105))

(declare-fun m!1395107 () Bool)

(assert (=> b!1512291 m!1395107))

(assert (=> b!1512291 m!1395107))

(declare-fun m!1395109 () Bool)

(assert (=> b!1512291 m!1395109))

(assert (=> b!1512291 m!1395109))

(assert (=> b!1512291 m!1395107))

(declare-fun m!1395111 () Bool)

(assert (=> b!1512291 m!1395111))

(declare-fun m!1395113 () Bool)

(assert (=> b!1512295 m!1395113))

(assert (=> b!1512295 m!1395113))

(declare-fun m!1395115 () Bool)

(assert (=> b!1512295 m!1395115))

(declare-fun m!1395117 () Bool)

(assert (=> b!1512288 m!1395117))

(assert (=> b!1512288 m!1395117))

(declare-fun m!1395119 () Bool)

(assert (=> b!1512288 m!1395119))

(declare-fun m!1395121 () Bool)

(assert (=> b!1512285 m!1395121))

(assert (=> b!1512284 m!1395113))

(assert (=> b!1512284 m!1395105))

(assert (=> b!1512284 m!1395107))

(declare-fun m!1395123 () Bool)

(assert (=> b!1512284 m!1395123))

(declare-fun m!1395125 () Bool)

(assert (=> b!1512289 m!1395125))

(declare-fun m!1395127 () Bool)

(assert (=> b!1512289 m!1395127))

(assert (=> b!1512292 m!1395113))

(assert (=> b!1512292 m!1395113))

(declare-fun m!1395129 () Bool)

(assert (=> b!1512292 m!1395129))

(assert (=> b!1512292 m!1395129))

(assert (=> b!1512292 m!1395113))

(declare-fun m!1395131 () Bool)

(assert (=> b!1512292 m!1395131))

(assert (=> b!1512290 m!1395113))

(assert (=> b!1512290 m!1395113))

(declare-fun m!1395133 () Bool)

(assert (=> b!1512290 m!1395133))

(assert (=> b!1512293 m!1395113))

(assert (=> b!1512293 m!1395113))

(declare-fun m!1395135 () Bool)

(assert (=> b!1512293 m!1395135))

(assert (=> b!1512293 m!1395113))

(declare-fun m!1395137 () Bool)

(assert (=> b!1512293 m!1395137))

(assert (=> b!1512287 m!1395113))

(assert (=> b!1512287 m!1395113))

(declare-fun m!1395139 () Bool)

(assert (=> b!1512287 m!1395139))

(push 1)

