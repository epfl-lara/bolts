; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128556 () Bool)

(assert start!128556)

(declare-fun b!1506829 () Bool)

(declare-fun res!1027224 () Bool)

(declare-fun e!842036 () Bool)

(assert (=> b!1506829 (=> (not res!1027224) (not e!842036))))

(declare-datatypes ((array!100481 0))(
  ( (array!100482 (arr!48479 (Array (_ BitVec 32) (_ BitVec 64))) (size!49030 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100481)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506829 (= res!1027224 (validKeyInArray!0 (select (arr!48479 a!2804) i!961)))))

(declare-fun b!1506830 () Bool)

(assert (=> b!1506830 (= e!842036 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12671 0))(
  ( (MissingZero!12671 (index!53078 (_ BitVec 32))) (Found!12671 (index!53079 (_ BitVec 32))) (Intermediate!12671 (undefined!13483 Bool) (index!53080 (_ BitVec 32)) (x!134842 (_ BitVec 32))) (Undefined!12671) (MissingVacant!12671 (index!53081 (_ BitVec 32))) )
))
(declare-fun lt!654238 () SeekEntryResult!12671)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100481 (_ BitVec 32)) SeekEntryResult!12671)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506830 (= lt!654238 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48479 a!2804) j!70) mask!2512) (select (arr!48479 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506831 () Bool)

(declare-fun res!1027225 () Bool)

(assert (=> b!1506831 (=> (not res!1027225) (not e!842036))))

(declare-datatypes ((List!35142 0))(
  ( (Nil!35139) (Cons!35138 (h!36539 (_ BitVec 64)) (t!49843 List!35142)) )
))
(declare-fun arrayNoDuplicates!0 (array!100481 (_ BitVec 32) List!35142) Bool)

(assert (=> b!1506831 (= res!1027225 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35139))))

(declare-fun b!1506832 () Bool)

(declare-fun res!1027230 () Bool)

(assert (=> b!1506832 (=> (not res!1027230) (not e!842036))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506832 (= res!1027230 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49030 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49030 a!2804))))))

(declare-fun b!1506833 () Bool)

(declare-fun res!1027229 () Bool)

(assert (=> b!1506833 (=> (not res!1027229) (not e!842036))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100481 (_ BitVec 32)) Bool)

(assert (=> b!1506833 (= res!1027229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506834 () Bool)

(declare-fun res!1027228 () Bool)

(assert (=> b!1506834 (=> (not res!1027228) (not e!842036))))

(assert (=> b!1506834 (= res!1027228 (validKeyInArray!0 (select (arr!48479 a!2804) j!70)))))

(declare-fun res!1027227 () Bool)

(assert (=> start!128556 (=> (not res!1027227) (not e!842036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128556 (= res!1027227 (validMask!0 mask!2512))))

(assert (=> start!128556 e!842036))

(assert (=> start!128556 true))

(declare-fun array_inv!37424 (array!100481) Bool)

(assert (=> start!128556 (array_inv!37424 a!2804)))

(declare-fun b!1506835 () Bool)

(declare-fun res!1027226 () Bool)

(assert (=> b!1506835 (=> (not res!1027226) (not e!842036))))

(assert (=> b!1506835 (= res!1027226 (and (= (size!49030 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49030 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49030 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128556 res!1027227) b!1506835))

(assert (= (and b!1506835 res!1027226) b!1506829))

(assert (= (and b!1506829 res!1027224) b!1506834))

(assert (= (and b!1506834 res!1027228) b!1506833))

(assert (= (and b!1506833 res!1027229) b!1506831))

(assert (= (and b!1506831 res!1027225) b!1506832))

(assert (= (and b!1506832 res!1027230) b!1506830))

(declare-fun m!1389785 () Bool)

(assert (=> b!1506829 m!1389785))

(assert (=> b!1506829 m!1389785))

(declare-fun m!1389787 () Bool)

(assert (=> b!1506829 m!1389787))

(declare-fun m!1389789 () Bool)

(assert (=> b!1506830 m!1389789))

(assert (=> b!1506830 m!1389789))

(declare-fun m!1389791 () Bool)

(assert (=> b!1506830 m!1389791))

(assert (=> b!1506830 m!1389791))

(assert (=> b!1506830 m!1389789))

(declare-fun m!1389793 () Bool)

(assert (=> b!1506830 m!1389793))

(assert (=> b!1506834 m!1389789))

(assert (=> b!1506834 m!1389789))

(declare-fun m!1389795 () Bool)

(assert (=> b!1506834 m!1389795))

(declare-fun m!1389797 () Bool)

(assert (=> b!1506833 m!1389797))

(declare-fun m!1389799 () Bool)

(assert (=> start!128556 m!1389799))

(declare-fun m!1389801 () Bool)

(assert (=> start!128556 m!1389801))

(declare-fun m!1389803 () Bool)

(assert (=> b!1506831 m!1389803))

(check-sat (not b!1506833) (not start!128556) (not b!1506834) (not b!1506830) (not b!1506829) (not b!1506831))
