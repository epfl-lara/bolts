; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128848 () Bool)

(assert start!128848)

(declare-fun b!1509224 () Bool)

(declare-fun e!843054 () Bool)

(assert (=> b!1509224 (= e!843054 false)))

(declare-datatypes ((SeekEntryResult!12733 0))(
  ( (MissingZero!12733 (index!53326 (_ BitVec 32))) (Found!12733 (index!53327 (_ BitVec 32))) (Intermediate!12733 (undefined!13545 Bool) (index!53328 (_ BitVec 32)) (x!135096 (_ BitVec 32))) (Undefined!12733) (MissingVacant!12733 (index!53329 (_ BitVec 32))) )
))
(declare-fun lt!654808 () SeekEntryResult!12733)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100617 0))(
  ( (array!100618 (arr!48541 (Array (_ BitVec 32) (_ BitVec 64))) (size!49092 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100617)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100617 (_ BitVec 32)) SeekEntryResult!12733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509224 (= lt!654808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48541 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48541 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100618 (store (arr!48541 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49092 a!2804)) mask!2512))))

(declare-fun b!1509225 () Bool)

(declare-fun res!1029204 () Bool)

(declare-fun e!843055 () Bool)

(assert (=> b!1509225 (=> (not res!1029204) (not e!843055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100617 (_ BitVec 32)) Bool)

(assert (=> b!1509225 (= res!1029204 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509226 () Bool)

(declare-fun res!1029201 () Bool)

(assert (=> b!1509226 (=> (not res!1029201) (not e!843055))))

(assert (=> b!1509226 (= res!1029201 (and (= (size!49092 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49092 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49092 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509227 () Bool)

(declare-fun res!1029200 () Bool)

(assert (=> b!1509227 (=> (not res!1029200) (not e!843055))))

(declare-datatypes ((List!35204 0))(
  ( (Nil!35201) (Cons!35200 (h!36613 (_ BitVec 64)) (t!49905 List!35204)) )
))
(declare-fun arrayNoDuplicates!0 (array!100617 (_ BitVec 32) List!35204) Bool)

(assert (=> b!1509227 (= res!1029200 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35201))))

(declare-fun b!1509228 () Bool)

(declare-fun res!1029203 () Bool)

(assert (=> b!1509228 (=> (not res!1029203) (not e!843054))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!654807 () SeekEntryResult!12733)

(assert (=> b!1509228 (= res!1029203 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48541 a!2804) j!70) a!2804 mask!2512) lt!654807))))

(declare-fun b!1509229 () Bool)

(assert (=> b!1509229 (= e!843055 e!843054)))

(declare-fun res!1029205 () Bool)

(assert (=> b!1509229 (=> (not res!1029205) (not e!843054))))

(assert (=> b!1509229 (= res!1029205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48541 a!2804) j!70) mask!2512) (select (arr!48541 a!2804) j!70) a!2804 mask!2512) lt!654807))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509229 (= lt!654807 (Intermediate!12733 false resIndex!21 resX!21))))

(declare-fun b!1509230 () Bool)

(declare-fun res!1029206 () Bool)

(assert (=> b!1509230 (=> (not res!1029206) (not e!843055))))

(assert (=> b!1509230 (= res!1029206 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49092 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49092 a!2804))))))

(declare-fun b!1509231 () Bool)

(declare-fun res!1029202 () Bool)

(assert (=> b!1509231 (=> (not res!1029202) (not e!843055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509231 (= res!1029202 (validKeyInArray!0 (select (arr!48541 a!2804) j!70)))))

(declare-fun b!1509232 () Bool)

(declare-fun res!1029207 () Bool)

(assert (=> b!1509232 (=> (not res!1029207) (not e!843055))))

(assert (=> b!1509232 (= res!1029207 (validKeyInArray!0 (select (arr!48541 a!2804) i!961)))))

(declare-fun res!1029199 () Bool)

(assert (=> start!128848 (=> (not res!1029199) (not e!843055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128848 (= res!1029199 (validMask!0 mask!2512))))

(assert (=> start!128848 e!843055))

(assert (=> start!128848 true))

(declare-fun array_inv!37486 (array!100617) Bool)

(assert (=> start!128848 (array_inv!37486 a!2804)))

(assert (= (and start!128848 res!1029199) b!1509226))

(assert (= (and b!1509226 res!1029201) b!1509232))

(assert (= (and b!1509232 res!1029207) b!1509231))

(assert (= (and b!1509231 res!1029202) b!1509225))

(assert (= (and b!1509225 res!1029204) b!1509227))

(assert (= (and b!1509227 res!1029200) b!1509230))

(assert (= (and b!1509230 res!1029206) b!1509229))

(assert (= (and b!1509229 res!1029205) b!1509228))

(assert (= (and b!1509228 res!1029203) b!1509224))

(declare-fun m!1391739 () Bool)

(assert (=> b!1509228 m!1391739))

(assert (=> b!1509228 m!1391739))

(declare-fun m!1391741 () Bool)

(assert (=> b!1509228 m!1391741))

(assert (=> b!1509231 m!1391739))

(assert (=> b!1509231 m!1391739))

(declare-fun m!1391743 () Bool)

(assert (=> b!1509231 m!1391743))

(declare-fun m!1391745 () Bool)

(assert (=> b!1509232 m!1391745))

(assert (=> b!1509232 m!1391745))

(declare-fun m!1391747 () Bool)

(assert (=> b!1509232 m!1391747))

(declare-fun m!1391749 () Bool)

(assert (=> b!1509225 m!1391749))

(declare-fun m!1391751 () Bool)

(assert (=> b!1509224 m!1391751))

(declare-fun m!1391753 () Bool)

(assert (=> b!1509224 m!1391753))

(assert (=> b!1509224 m!1391753))

(declare-fun m!1391755 () Bool)

(assert (=> b!1509224 m!1391755))

(assert (=> b!1509224 m!1391755))

(assert (=> b!1509224 m!1391753))

(declare-fun m!1391757 () Bool)

(assert (=> b!1509224 m!1391757))

(declare-fun m!1391759 () Bool)

(assert (=> b!1509227 m!1391759))

(declare-fun m!1391761 () Bool)

(assert (=> start!128848 m!1391761))

(declare-fun m!1391763 () Bool)

(assert (=> start!128848 m!1391763))

(assert (=> b!1509229 m!1391739))

(assert (=> b!1509229 m!1391739))

(declare-fun m!1391765 () Bool)

(assert (=> b!1509229 m!1391765))

(assert (=> b!1509229 m!1391765))

(assert (=> b!1509229 m!1391739))

(declare-fun m!1391767 () Bool)

(assert (=> b!1509229 m!1391767))

(push 1)

