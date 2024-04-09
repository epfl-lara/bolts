; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129320 () Bool)

(assert start!129320)

(declare-fun b!1518067 () Bool)

(declare-fun e!846930 () Bool)

(declare-fun e!846932 () Bool)

(assert (=> b!1518067 (= e!846930 (not e!846932))))

(declare-fun res!1038042 () Bool)

(assert (=> b!1518067 (=> res!1038042 e!846932)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101089 0))(
  ( (array!101090 (arr!48777 (Array (_ BitVec 32) (_ BitVec 64))) (size!49328 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101089)

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518067 (= res!1038042 (or (not (= (select (arr!48777 a!2804) j!70) (select (store (arr!48777 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846931 () Bool)

(assert (=> b!1518067 e!846931))

(declare-fun res!1038052 () Bool)

(assert (=> b!1518067 (=> (not res!1038052) (not e!846931))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101089 (_ BitVec 32)) Bool)

(assert (=> b!1518067 (= res!1038052 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50762 0))(
  ( (Unit!50763) )
))
(declare-fun lt!658004 () Unit!50762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50762)

(assert (=> b!1518067 (= lt!658004 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518068 () Bool)

(declare-fun res!1038049 () Bool)

(declare-fun e!846933 () Bool)

(assert (=> b!1518068 (=> (not res!1038049) (not e!846933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518068 (= res!1038049 (validKeyInArray!0 (select (arr!48777 a!2804) j!70)))))

(declare-fun b!1518069 () Bool)

(declare-fun res!1038048 () Bool)

(assert (=> b!1518069 (=> (not res!1038048) (not e!846930))))

(declare-datatypes ((SeekEntryResult!12969 0))(
  ( (MissingZero!12969 (index!54270 (_ BitVec 32))) (Found!12969 (index!54271 (_ BitVec 32))) (Intermediate!12969 (undefined!13781 Bool) (index!54272 (_ BitVec 32)) (x!135956 (_ BitVec 32))) (Undefined!12969) (MissingVacant!12969 (index!54273 (_ BitVec 32))) )
))
(declare-fun lt!658002 () SeekEntryResult!12969)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101089 (_ BitVec 32)) SeekEntryResult!12969)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518069 (= res!1038048 (= lt!658002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48777 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48777 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101090 (store (arr!48777 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49328 a!2804)) mask!2512)))))

(declare-fun b!1518071 () Bool)

(declare-fun res!1038051 () Bool)

(assert (=> b!1518071 (=> (not res!1038051) (not e!846933))))

(assert (=> b!1518071 (= res!1038051 (and (= (size!49328 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49328 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49328 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1518072 () Bool)

(declare-fun res!1038054 () Bool)

(assert (=> b!1518072 (=> (not res!1038054) (not e!846933))))

(assert (=> b!1518072 (= res!1038054 (validKeyInArray!0 (select (arr!48777 a!2804) i!961)))))

(declare-fun b!1518073 () Bool)

(declare-fun e!846935 () Bool)

(assert (=> b!1518073 (= e!846935 true)))

(declare-fun lt!658006 () (_ BitVec 32))

(declare-fun lt!658005 () SeekEntryResult!12969)

(assert (=> b!1518073 (= lt!658005 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658006 (select (arr!48777 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518074 () Bool)

(declare-fun res!1038044 () Bool)

(assert (=> b!1518074 (=> (not res!1038044) (not e!846933))))

(assert (=> b!1518074 (= res!1038044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518075 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101089 (_ BitVec 32)) SeekEntryResult!12969)

(assert (=> b!1518075 (= e!846931 (= (seekEntry!0 (select (arr!48777 a!2804) j!70) a!2804 mask!2512) (Found!12969 j!70)))))

(declare-fun b!1518070 () Bool)

(declare-fun res!1038047 () Bool)

(assert (=> b!1518070 (=> (not res!1038047) (not e!846933))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518070 (= res!1038047 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49328 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49328 a!2804))))))

(declare-fun res!1038043 () Bool)

(assert (=> start!129320 (=> (not res!1038043) (not e!846933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129320 (= res!1038043 (validMask!0 mask!2512))))

(assert (=> start!129320 e!846933))

(assert (=> start!129320 true))

(declare-fun array_inv!37722 (array!101089) Bool)

(assert (=> start!129320 (array_inv!37722 a!2804)))

(declare-fun b!1518076 () Bool)

(assert (=> b!1518076 (= e!846932 e!846935)))

(declare-fun res!1038053 () Bool)

(assert (=> b!1518076 (=> res!1038053 e!846935)))

(assert (=> b!1518076 (= res!1038053 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658006 #b00000000000000000000000000000000) (bvsge lt!658006 (size!49328 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518076 (= lt!658006 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518077 () Bool)

(declare-fun res!1038050 () Bool)

(assert (=> b!1518077 (=> (not res!1038050) (not e!846933))))

(declare-datatypes ((List!35440 0))(
  ( (Nil!35437) (Cons!35436 (h!36849 (_ BitVec 64)) (t!50141 List!35440)) )
))
(declare-fun arrayNoDuplicates!0 (array!101089 (_ BitVec 32) List!35440) Bool)

(assert (=> b!1518077 (= res!1038050 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35437))))

(declare-fun b!1518078 () Bool)

(assert (=> b!1518078 (= e!846933 e!846930)))

(declare-fun res!1038045 () Bool)

(assert (=> b!1518078 (=> (not res!1038045) (not e!846930))))

(declare-fun lt!658003 () SeekEntryResult!12969)

(assert (=> b!1518078 (= res!1038045 (= lt!658002 lt!658003))))

(assert (=> b!1518078 (= lt!658003 (Intermediate!12969 false resIndex!21 resX!21))))

(assert (=> b!1518078 (= lt!658002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48777 a!2804) j!70) mask!2512) (select (arr!48777 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518079 () Bool)

(declare-fun res!1038046 () Bool)

(assert (=> b!1518079 (=> (not res!1038046) (not e!846930))))

(assert (=> b!1518079 (= res!1038046 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48777 a!2804) j!70) a!2804 mask!2512) lt!658003))))

(assert (= (and start!129320 res!1038043) b!1518071))

(assert (= (and b!1518071 res!1038051) b!1518072))

(assert (= (and b!1518072 res!1038054) b!1518068))

(assert (= (and b!1518068 res!1038049) b!1518074))

(assert (= (and b!1518074 res!1038044) b!1518077))

(assert (= (and b!1518077 res!1038050) b!1518070))

(assert (= (and b!1518070 res!1038047) b!1518078))

(assert (= (and b!1518078 res!1038045) b!1518079))

(assert (= (and b!1518079 res!1038046) b!1518069))

(assert (= (and b!1518069 res!1038048) b!1518067))

(assert (= (and b!1518067 res!1038052) b!1518075))

(assert (= (and b!1518067 (not res!1038042)) b!1518076))

(assert (= (and b!1518076 (not res!1038053)) b!1518073))

(declare-fun m!1401431 () Bool)

(assert (=> b!1518077 m!1401431))

(declare-fun m!1401433 () Bool)

(assert (=> b!1518079 m!1401433))

(assert (=> b!1518079 m!1401433))

(declare-fun m!1401435 () Bool)

(assert (=> b!1518079 m!1401435))

(assert (=> b!1518073 m!1401433))

(assert (=> b!1518073 m!1401433))

(declare-fun m!1401437 () Bool)

(assert (=> b!1518073 m!1401437))

(declare-fun m!1401439 () Bool)

(assert (=> b!1518069 m!1401439))

(declare-fun m!1401441 () Bool)

(assert (=> b!1518069 m!1401441))

(assert (=> b!1518069 m!1401441))

(declare-fun m!1401443 () Bool)

(assert (=> b!1518069 m!1401443))

(assert (=> b!1518069 m!1401443))

(assert (=> b!1518069 m!1401441))

(declare-fun m!1401445 () Bool)

(assert (=> b!1518069 m!1401445))

(declare-fun m!1401447 () Bool)

(assert (=> b!1518076 m!1401447))

(declare-fun m!1401449 () Bool)

(assert (=> b!1518072 m!1401449))

(assert (=> b!1518072 m!1401449))

(declare-fun m!1401451 () Bool)

(assert (=> b!1518072 m!1401451))

(assert (=> b!1518067 m!1401433))

(declare-fun m!1401453 () Bool)

(assert (=> b!1518067 m!1401453))

(assert (=> b!1518067 m!1401439))

(assert (=> b!1518067 m!1401441))

(declare-fun m!1401455 () Bool)

(assert (=> b!1518067 m!1401455))

(assert (=> b!1518068 m!1401433))

(assert (=> b!1518068 m!1401433))

(declare-fun m!1401457 () Bool)

(assert (=> b!1518068 m!1401457))

(assert (=> b!1518078 m!1401433))

(assert (=> b!1518078 m!1401433))

(declare-fun m!1401459 () Bool)

(assert (=> b!1518078 m!1401459))

(assert (=> b!1518078 m!1401459))

(assert (=> b!1518078 m!1401433))

(declare-fun m!1401461 () Bool)

(assert (=> b!1518078 m!1401461))

(declare-fun m!1401463 () Bool)

(assert (=> start!129320 m!1401463))

(declare-fun m!1401465 () Bool)

(assert (=> start!129320 m!1401465))

(assert (=> b!1518075 m!1401433))

(assert (=> b!1518075 m!1401433))

(declare-fun m!1401467 () Bool)

(assert (=> b!1518075 m!1401467))

(declare-fun m!1401469 () Bool)

(assert (=> b!1518074 m!1401469))

(push 1)

