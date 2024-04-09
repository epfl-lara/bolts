; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128884 () Bool)

(assert start!128884)

(declare-fun b!1509777 () Bool)

(declare-fun res!1029755 () Bool)

(declare-fun e!843236 () Bool)

(assert (=> b!1509777 (=> (not res!1029755) (not e!843236))))

(declare-datatypes ((array!100653 0))(
  ( (array!100654 (arr!48559 (Array (_ BitVec 32) (_ BitVec 64))) (size!49110 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100653)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509777 (= res!1029755 (validKeyInArray!0 (select (arr!48559 a!2804) i!961)))))

(declare-fun b!1509778 () Bool)

(declare-fun res!1029756 () Bool)

(declare-fun e!843239 () Bool)

(assert (=> b!1509778 (=> (not res!1029756) (not e!843239))))

(declare-datatypes ((SeekEntryResult!12751 0))(
  ( (MissingZero!12751 (index!53398 (_ BitVec 32))) (Found!12751 (index!53399 (_ BitVec 32))) (Intermediate!12751 (undefined!13563 Bool) (index!53400 (_ BitVec 32)) (x!135162 (_ BitVec 32))) (Undefined!12751) (MissingVacant!12751 (index!53401 (_ BitVec 32))) )
))
(declare-fun lt!654964 () SeekEntryResult!12751)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100653 (_ BitVec 32)) SeekEntryResult!12751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509778 (= res!1029756 (= lt!654964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48559 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48559 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100654 (store (arr!48559 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49110 a!2804)) mask!2512)))))

(declare-fun b!1509779 () Bool)

(declare-fun res!1029762 () Bool)

(assert (=> b!1509779 (=> (not res!1029762) (not e!843236))))

(declare-datatypes ((List!35222 0))(
  ( (Nil!35219) (Cons!35218 (h!36631 (_ BitVec 64)) (t!49923 List!35222)) )
))
(declare-fun arrayNoDuplicates!0 (array!100653 (_ BitVec 32) List!35222) Bool)

(assert (=> b!1509779 (= res!1029762 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35219))))

(declare-fun b!1509780 () Bool)

(declare-fun res!1029757 () Bool)

(assert (=> b!1509780 (=> (not res!1029757) (not e!843236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100653 (_ BitVec 32)) Bool)

(assert (=> b!1509780 (= res!1029757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509781 () Bool)

(assert (=> b!1509781 (= e!843236 e!843239)))

(declare-fun res!1029760 () Bool)

(assert (=> b!1509781 (=> (not res!1029760) (not e!843239))))

(declare-fun lt!654962 () SeekEntryResult!12751)

(assert (=> b!1509781 (= res!1029760 (= lt!654964 lt!654962))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509781 (= lt!654962 (Intermediate!12751 false resIndex!21 resX!21))))

(assert (=> b!1509781 (= lt!654964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48559 a!2804) j!70) mask!2512) (select (arr!48559 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509782 () Bool)

(declare-fun res!1029752 () Bool)

(assert (=> b!1509782 (=> (not res!1029752) (not e!843239))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509782 (= res!1029752 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48559 a!2804) j!70) a!2804 mask!2512) lt!654962))))

(declare-fun b!1509783 () Bool)

(assert (=> b!1509783 (= e!843239 (not true))))

(declare-fun e!843238 () Bool)

(assert (=> b!1509783 e!843238))

(declare-fun res!1029758 () Bool)

(assert (=> b!1509783 (=> (not res!1029758) (not e!843238))))

(assert (=> b!1509783 (= res!1029758 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50326 0))(
  ( (Unit!50327) )
))
(declare-fun lt!654963 () Unit!50326)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100653 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50326)

(assert (=> b!1509783 (= lt!654963 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509784 () Bool)

(declare-fun res!1029759 () Bool)

(assert (=> b!1509784 (=> (not res!1029759) (not e!843236))))

(assert (=> b!1509784 (= res!1029759 (and (= (size!49110 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49110 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49110 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509786 () Bool)

(declare-fun res!1029753 () Bool)

(assert (=> b!1509786 (=> (not res!1029753) (not e!843236))))

(assert (=> b!1509786 (= res!1029753 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49110 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49110 a!2804))))))

(declare-fun b!1509787 () Bool)

(declare-fun res!1029761 () Bool)

(assert (=> b!1509787 (=> (not res!1029761) (not e!843236))))

(assert (=> b!1509787 (= res!1029761 (validKeyInArray!0 (select (arr!48559 a!2804) j!70)))))

(declare-fun b!1509785 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100653 (_ BitVec 32)) SeekEntryResult!12751)

(assert (=> b!1509785 (= e!843238 (= (seekEntry!0 (select (arr!48559 a!2804) j!70) a!2804 mask!2512) (Found!12751 j!70)))))

(declare-fun res!1029754 () Bool)

(assert (=> start!128884 (=> (not res!1029754) (not e!843236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128884 (= res!1029754 (validMask!0 mask!2512))))

(assert (=> start!128884 e!843236))

(assert (=> start!128884 true))

(declare-fun array_inv!37504 (array!100653) Bool)

(assert (=> start!128884 (array_inv!37504 a!2804)))

(assert (= (and start!128884 res!1029754) b!1509784))

(assert (= (and b!1509784 res!1029759) b!1509777))

(assert (= (and b!1509777 res!1029755) b!1509787))

(assert (= (and b!1509787 res!1029761) b!1509780))

(assert (= (and b!1509780 res!1029757) b!1509779))

(assert (= (and b!1509779 res!1029762) b!1509786))

(assert (= (and b!1509786 res!1029753) b!1509781))

(assert (= (and b!1509781 res!1029760) b!1509782))

(assert (= (and b!1509782 res!1029752) b!1509778))

(assert (= (and b!1509778 res!1029756) b!1509783))

(assert (= (and b!1509783 res!1029758) b!1509785))

(declare-fun m!1392357 () Bool)

(assert (=> b!1509783 m!1392357))

(declare-fun m!1392359 () Bool)

(assert (=> b!1509783 m!1392359))

(declare-fun m!1392361 () Bool)

(assert (=> b!1509782 m!1392361))

(assert (=> b!1509782 m!1392361))

(declare-fun m!1392363 () Bool)

(assert (=> b!1509782 m!1392363))

(declare-fun m!1392365 () Bool)

(assert (=> b!1509777 m!1392365))

(assert (=> b!1509777 m!1392365))

(declare-fun m!1392367 () Bool)

(assert (=> b!1509777 m!1392367))

(declare-fun m!1392369 () Bool)

(assert (=> b!1509779 m!1392369))

(declare-fun m!1392371 () Bool)

(assert (=> start!128884 m!1392371))

(declare-fun m!1392373 () Bool)

(assert (=> start!128884 m!1392373))

(declare-fun m!1392375 () Bool)

(assert (=> b!1509778 m!1392375))

(declare-fun m!1392377 () Bool)

(assert (=> b!1509778 m!1392377))

(assert (=> b!1509778 m!1392377))

(declare-fun m!1392379 () Bool)

(assert (=> b!1509778 m!1392379))

(assert (=> b!1509778 m!1392379))

(assert (=> b!1509778 m!1392377))

(declare-fun m!1392381 () Bool)

(assert (=> b!1509778 m!1392381))

(assert (=> b!1509785 m!1392361))

(assert (=> b!1509785 m!1392361))

(declare-fun m!1392383 () Bool)

(assert (=> b!1509785 m!1392383))

(declare-fun m!1392385 () Bool)

(assert (=> b!1509780 m!1392385))

(assert (=> b!1509787 m!1392361))

(assert (=> b!1509787 m!1392361))

(declare-fun m!1392387 () Bool)

(assert (=> b!1509787 m!1392387))

(assert (=> b!1509781 m!1392361))

(assert (=> b!1509781 m!1392361))

(declare-fun m!1392389 () Bool)

(assert (=> b!1509781 m!1392389))

(assert (=> b!1509781 m!1392389))

(assert (=> b!1509781 m!1392361))

(declare-fun m!1392391 () Bool)

(assert (=> b!1509781 m!1392391))

(push 1)

