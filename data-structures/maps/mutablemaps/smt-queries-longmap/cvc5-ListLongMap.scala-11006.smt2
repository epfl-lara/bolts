; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128914 () Bool)

(assert start!128914)

(declare-fun b!1510274 () Bool)

(declare-fun res!1030259 () Bool)

(declare-fun e!843418 () Bool)

(assert (=> b!1510274 (=> (not res!1030259) (not e!843418))))

(declare-datatypes ((array!100683 0))(
  ( (array!100684 (arr!48574 (Array (_ BitVec 32) (_ BitVec 64))) (size!49125 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100683)

(declare-datatypes ((List!35237 0))(
  ( (Nil!35234) (Cons!35233 (h!36646 (_ BitVec 64)) (t!49938 List!35237)) )
))
(declare-fun arrayNoDuplicates!0 (array!100683 (_ BitVec 32) List!35237) Bool)

(assert (=> b!1510274 (= res!1030259 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35234))))

(declare-fun b!1510275 () Bool)

(declare-fun res!1030256 () Bool)

(assert (=> b!1510275 (=> (not res!1030256) (not e!843418))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510275 (= res!1030256 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49125 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49125 a!2804))))))

(declare-fun b!1510276 () Bool)

(declare-fun res!1030249 () Bool)

(assert (=> b!1510276 (=> (not res!1030249) (not e!843418))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100683 (_ BitVec 32)) Bool)

(assert (=> b!1510276 (= res!1030249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510277 () Bool)

(declare-fun res!1030260 () Bool)

(assert (=> b!1510277 (=> (not res!1030260) (not e!843418))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1510277 (= res!1030260 (and (= (size!49125 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49125 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49125 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510278 () Bool)

(declare-fun e!843421 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510278 (= e!843421 (validKeyInArray!0 (select (store (arr!48574 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun b!1510279 () Bool)

(declare-fun e!843422 () Bool)

(assert (=> b!1510279 (= e!843418 e!843422)))

(declare-fun res!1030251 () Bool)

(assert (=> b!1510279 (=> (not res!1030251) (not e!843422))))

(declare-datatypes ((SeekEntryResult!12766 0))(
  ( (MissingZero!12766 (index!53458 (_ BitVec 32))) (Found!12766 (index!53459 (_ BitVec 32))) (Intermediate!12766 (undefined!13578 Bool) (index!53460 (_ BitVec 32)) (x!135217 (_ BitVec 32))) (Undefined!12766) (MissingVacant!12766 (index!53461 (_ BitVec 32))) )
))
(declare-fun lt!655098 () SeekEntryResult!12766)

(declare-fun lt!655097 () SeekEntryResult!12766)

(assert (=> b!1510279 (= res!1030251 (= lt!655098 lt!655097))))

(assert (=> b!1510279 (= lt!655097 (Intermediate!12766 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100683 (_ BitVec 32)) SeekEntryResult!12766)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510279 (= lt!655098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48574 a!2804) j!70) mask!2512) (select (arr!48574 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510280 () Bool)

(declare-fun res!1030252 () Bool)

(assert (=> b!1510280 (=> (not res!1030252) (not e!843418))))

(assert (=> b!1510280 (= res!1030252 (validKeyInArray!0 (select (arr!48574 a!2804) j!70)))))

(declare-fun b!1510281 () Bool)

(declare-fun res!1030253 () Bool)

(assert (=> b!1510281 (=> (not res!1030253) (not e!843422))))

(assert (=> b!1510281 (= res!1030253 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48574 a!2804) j!70) a!2804 mask!2512) lt!655097))))

(declare-fun res!1030258 () Bool)

(assert (=> start!128914 (=> (not res!1030258) (not e!843418))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128914 (= res!1030258 (validMask!0 mask!2512))))

(assert (=> start!128914 e!843418))

(assert (=> start!128914 true))

(declare-fun array_inv!37519 (array!100683) Bool)

(assert (=> start!128914 (array_inv!37519 a!2804)))

(declare-fun e!843419 () Bool)

(declare-fun b!1510282 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100683 (_ BitVec 32)) SeekEntryResult!12766)

(assert (=> b!1510282 (= e!843419 (= (seekEntry!0 (select (arr!48574 a!2804) j!70) a!2804 mask!2512) (Found!12766 j!70)))))

(declare-fun b!1510283 () Bool)

(assert (=> b!1510283 (= e!843422 (not e!843421))))

(declare-fun res!1030250 () Bool)

(assert (=> b!1510283 (=> res!1030250 e!843421)))

(assert (=> b!1510283 (= res!1030250 (or (not (= (select (arr!48574 a!2804) j!70) (select (store (arr!48574 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48574 a!2804) index!487) (select (arr!48574 a!2804) j!70))) (not (= j!70 index!487)) (bvslt mask!2512 #b00000000000000000000000000000000)))))

(assert (=> b!1510283 e!843419))

(declare-fun res!1030255 () Bool)

(assert (=> b!1510283 (=> (not res!1030255) (not e!843419))))

(assert (=> b!1510283 (= res!1030255 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50356 0))(
  ( (Unit!50357) )
))
(declare-fun lt!655099 () Unit!50356)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50356)

(assert (=> b!1510283 (= lt!655099 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510284 () Bool)

(declare-fun res!1030257 () Bool)

(assert (=> b!1510284 (=> (not res!1030257) (not e!843422))))

(assert (=> b!1510284 (= res!1030257 (= lt!655098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48574 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48574 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100684 (store (arr!48574 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49125 a!2804)) mask!2512)))))

(declare-fun b!1510285 () Bool)

(declare-fun res!1030254 () Bool)

(assert (=> b!1510285 (=> (not res!1030254) (not e!843418))))

(assert (=> b!1510285 (= res!1030254 (validKeyInArray!0 (select (arr!48574 a!2804) i!961)))))

(assert (= (and start!128914 res!1030258) b!1510277))

(assert (= (and b!1510277 res!1030260) b!1510285))

(assert (= (and b!1510285 res!1030254) b!1510280))

(assert (= (and b!1510280 res!1030252) b!1510276))

(assert (= (and b!1510276 res!1030249) b!1510274))

(assert (= (and b!1510274 res!1030259) b!1510275))

(assert (= (and b!1510275 res!1030256) b!1510279))

(assert (= (and b!1510279 res!1030251) b!1510281))

(assert (= (and b!1510281 res!1030253) b!1510284))

(assert (= (and b!1510284 res!1030257) b!1510283))

(assert (= (and b!1510283 res!1030255) b!1510282))

(assert (= (and b!1510283 (not res!1030250)) b!1510278))

(declare-fun m!1392903 () Bool)

(assert (=> b!1510285 m!1392903))

(assert (=> b!1510285 m!1392903))

(declare-fun m!1392905 () Bool)

(assert (=> b!1510285 m!1392905))

(declare-fun m!1392907 () Bool)

(assert (=> b!1510279 m!1392907))

(assert (=> b!1510279 m!1392907))

(declare-fun m!1392909 () Bool)

(assert (=> b!1510279 m!1392909))

(assert (=> b!1510279 m!1392909))

(assert (=> b!1510279 m!1392907))

(declare-fun m!1392911 () Bool)

(assert (=> b!1510279 m!1392911))

(declare-fun m!1392913 () Bool)

(assert (=> start!128914 m!1392913))

(declare-fun m!1392915 () Bool)

(assert (=> start!128914 m!1392915))

(declare-fun m!1392917 () Bool)

(assert (=> b!1510278 m!1392917))

(declare-fun m!1392919 () Bool)

(assert (=> b!1510278 m!1392919))

(assert (=> b!1510278 m!1392919))

(declare-fun m!1392921 () Bool)

(assert (=> b!1510278 m!1392921))

(assert (=> b!1510284 m!1392917))

(assert (=> b!1510284 m!1392919))

(assert (=> b!1510284 m!1392919))

(declare-fun m!1392923 () Bool)

(assert (=> b!1510284 m!1392923))

(assert (=> b!1510284 m!1392923))

(assert (=> b!1510284 m!1392919))

(declare-fun m!1392925 () Bool)

(assert (=> b!1510284 m!1392925))

(assert (=> b!1510282 m!1392907))

(assert (=> b!1510282 m!1392907))

(declare-fun m!1392927 () Bool)

(assert (=> b!1510282 m!1392927))

(declare-fun m!1392929 () Bool)

(assert (=> b!1510274 m!1392929))

(assert (=> b!1510281 m!1392907))

(assert (=> b!1510281 m!1392907))

(declare-fun m!1392931 () Bool)

(assert (=> b!1510281 m!1392931))

(assert (=> b!1510283 m!1392907))

(declare-fun m!1392933 () Bool)

(assert (=> b!1510283 m!1392933))

(assert (=> b!1510283 m!1392917))

(declare-fun m!1392935 () Bool)

(assert (=> b!1510283 m!1392935))

(assert (=> b!1510283 m!1392919))

(declare-fun m!1392937 () Bool)

(assert (=> b!1510283 m!1392937))

(assert (=> b!1510280 m!1392907))

(assert (=> b!1510280 m!1392907))

(declare-fun m!1392939 () Bool)

(assert (=> b!1510280 m!1392939))

(declare-fun m!1392941 () Bool)

(assert (=> b!1510276 m!1392941))

(push 1)

