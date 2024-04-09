; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128906 () Bool)

(assert start!128906)

(declare-fun b!1510140 () Bool)

(declare-fun res!1030118 () Bool)

(declare-fun e!843369 () Bool)

(assert (=> b!1510140 (=> (not res!1030118) (not e!843369))))

(declare-datatypes ((array!100675 0))(
  ( (array!100676 (arr!48570 (Array (_ BitVec 32) (_ BitVec 64))) (size!49121 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100675)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510140 (= res!1030118 (validKeyInArray!0 (select (arr!48570 a!2804) i!961)))))

(declare-fun b!1510141 () Bool)

(declare-fun res!1030116 () Bool)

(assert (=> b!1510141 (=> (not res!1030116) (not e!843369))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1510141 (= res!1030116 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49121 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49121 a!2804))))))

(declare-fun b!1510142 () Bool)

(declare-fun res!1030122 () Bool)

(assert (=> b!1510142 (=> (not res!1030122) (not e!843369))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100675 (_ BitVec 32)) Bool)

(assert (=> b!1510142 (= res!1030122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510143 () Bool)

(declare-fun res!1030119 () Bool)

(assert (=> b!1510143 (=> (not res!1030119) (not e!843369))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1510143 (= res!1030119 (and (= (size!49121 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49121 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49121 a!2804)) (not (= i!961 j!70))))))

(declare-fun e!843368 () Bool)

(declare-fun b!1510144 () Bool)

(assert (=> b!1510144 (= e!843368 (not (or (not (= (select (arr!48570 a!2804) j!70) (select (store (arr!48570 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48570 a!2804) index!487) (select (arr!48570 a!2804) j!70))) (not (= j!70 index!487)) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!843371 () Bool)

(assert (=> b!1510144 e!843371))

(declare-fun res!1030115 () Bool)

(assert (=> b!1510144 (=> (not res!1030115) (not e!843371))))

(assert (=> b!1510144 (= res!1030115 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50348 0))(
  ( (Unit!50349) )
))
(declare-fun lt!655061 () Unit!50348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50348)

(assert (=> b!1510144 (= lt!655061 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1030117 () Bool)

(assert (=> start!128906 (=> (not res!1030117) (not e!843369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128906 (= res!1030117 (validMask!0 mask!2512))))

(assert (=> start!128906 e!843369))

(assert (=> start!128906 true))

(declare-fun array_inv!37515 (array!100675) Bool)

(assert (=> start!128906 (array_inv!37515 a!2804)))

(declare-fun b!1510145 () Bool)

(assert (=> b!1510145 (= e!843369 e!843368)))

(declare-fun res!1030121 () Bool)

(assert (=> b!1510145 (=> (not res!1030121) (not e!843368))))

(declare-datatypes ((SeekEntryResult!12762 0))(
  ( (MissingZero!12762 (index!53442 (_ BitVec 32))) (Found!12762 (index!53443 (_ BitVec 32))) (Intermediate!12762 (undefined!13574 Bool) (index!53444 (_ BitVec 32)) (x!135197 (_ BitVec 32))) (Undefined!12762) (MissingVacant!12762 (index!53445 (_ BitVec 32))) )
))
(declare-fun lt!655063 () SeekEntryResult!12762)

(declare-fun lt!655062 () SeekEntryResult!12762)

(assert (=> b!1510145 (= res!1030121 (= lt!655063 lt!655062))))

(assert (=> b!1510145 (= lt!655062 (Intermediate!12762 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100675 (_ BitVec 32)) SeekEntryResult!12762)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510145 (= lt!655063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48570 a!2804) j!70) mask!2512) (select (arr!48570 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510146 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100675 (_ BitVec 32)) SeekEntryResult!12762)

(assert (=> b!1510146 (= e!843371 (= (seekEntry!0 (select (arr!48570 a!2804) j!70) a!2804 mask!2512) (Found!12762 j!70)))))

(declare-fun b!1510147 () Bool)

(declare-fun res!1030124 () Bool)

(assert (=> b!1510147 (=> (not res!1030124) (not e!843368))))

(assert (=> b!1510147 (= res!1030124 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48570 a!2804) j!70) a!2804 mask!2512) lt!655062))))

(declare-fun b!1510148 () Bool)

(declare-fun res!1030120 () Bool)

(assert (=> b!1510148 (=> (not res!1030120) (not e!843369))))

(declare-datatypes ((List!35233 0))(
  ( (Nil!35230) (Cons!35229 (h!36642 (_ BitVec 64)) (t!49934 List!35233)) )
))
(declare-fun arrayNoDuplicates!0 (array!100675 (_ BitVec 32) List!35233) Bool)

(assert (=> b!1510148 (= res!1030120 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35230))))

(declare-fun b!1510149 () Bool)

(declare-fun res!1030123 () Bool)

(assert (=> b!1510149 (=> (not res!1030123) (not e!843368))))

(assert (=> b!1510149 (= res!1030123 (= lt!655063 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48570 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48570 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100676 (store (arr!48570 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49121 a!2804)) mask!2512)))))

(declare-fun b!1510150 () Bool)

(declare-fun res!1030125 () Bool)

(assert (=> b!1510150 (=> (not res!1030125) (not e!843369))))

(assert (=> b!1510150 (= res!1030125 (validKeyInArray!0 (select (arr!48570 a!2804) j!70)))))

(assert (= (and start!128906 res!1030117) b!1510143))

(assert (= (and b!1510143 res!1030119) b!1510140))

(assert (= (and b!1510140 res!1030118) b!1510150))

(assert (= (and b!1510150 res!1030125) b!1510142))

(assert (= (and b!1510142 res!1030122) b!1510148))

(assert (= (and b!1510148 res!1030120) b!1510141))

(assert (= (and b!1510141 res!1030116) b!1510145))

(assert (= (and b!1510145 res!1030121) b!1510147))

(assert (= (and b!1510147 res!1030124) b!1510149))

(assert (= (and b!1510149 res!1030123) b!1510144))

(assert (= (and b!1510144 res!1030115) b!1510146))

(declare-fun m!1392757 () Bool)

(assert (=> b!1510150 m!1392757))

(assert (=> b!1510150 m!1392757))

(declare-fun m!1392759 () Bool)

(assert (=> b!1510150 m!1392759))

(assert (=> b!1510145 m!1392757))

(assert (=> b!1510145 m!1392757))

(declare-fun m!1392761 () Bool)

(assert (=> b!1510145 m!1392761))

(assert (=> b!1510145 m!1392761))

(assert (=> b!1510145 m!1392757))

(declare-fun m!1392763 () Bool)

(assert (=> b!1510145 m!1392763))

(declare-fun m!1392765 () Bool)

(assert (=> b!1510149 m!1392765))

(declare-fun m!1392767 () Bool)

(assert (=> b!1510149 m!1392767))

(assert (=> b!1510149 m!1392767))

(declare-fun m!1392769 () Bool)

(assert (=> b!1510149 m!1392769))

(assert (=> b!1510149 m!1392769))

(assert (=> b!1510149 m!1392767))

(declare-fun m!1392771 () Bool)

(assert (=> b!1510149 m!1392771))

(declare-fun m!1392773 () Bool)

(assert (=> b!1510142 m!1392773))

(assert (=> b!1510147 m!1392757))

(assert (=> b!1510147 m!1392757))

(declare-fun m!1392775 () Bool)

(assert (=> b!1510147 m!1392775))

(declare-fun m!1392777 () Bool)

(assert (=> b!1510148 m!1392777))

(assert (=> b!1510146 m!1392757))

(assert (=> b!1510146 m!1392757))

(declare-fun m!1392779 () Bool)

(assert (=> b!1510146 m!1392779))

(declare-fun m!1392781 () Bool)

(assert (=> b!1510140 m!1392781))

(assert (=> b!1510140 m!1392781))

(declare-fun m!1392783 () Bool)

(assert (=> b!1510140 m!1392783))

(assert (=> b!1510144 m!1392757))

(declare-fun m!1392785 () Bool)

(assert (=> b!1510144 m!1392785))

(assert (=> b!1510144 m!1392765))

(declare-fun m!1392787 () Bool)

(assert (=> b!1510144 m!1392787))

(assert (=> b!1510144 m!1392767))

(declare-fun m!1392789 () Bool)

(assert (=> b!1510144 m!1392789))

(declare-fun m!1392791 () Bool)

(assert (=> start!128906 m!1392791))

(declare-fun m!1392793 () Bool)

(assert (=> start!128906 m!1392793))

(push 1)

(assert (not b!1510148))

(assert (not b!1510144))

(assert (not b!1510145))

(assert (not b!1510142))

