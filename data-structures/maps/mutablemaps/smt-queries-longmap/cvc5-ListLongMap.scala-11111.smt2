; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129802 () Bool)

(assert start!129802)

(declare-fun b!1523055 () Bool)

(declare-fun e!849200 () Bool)

(assert (=> b!1523055 (= e!849200 (not true))))

(declare-fun e!849198 () Bool)

(assert (=> b!1523055 e!849198))

(declare-fun res!1042105 () Bool)

(assert (=> b!1523055 (=> (not res!1042105) (not e!849198))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101325 0))(
  ( (array!101326 (arr!48889 (Array (_ BitVec 32) (_ BitVec 64))) (size!49440 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101325)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101325 (_ BitVec 32)) Bool)

(assert (=> b!1523055 (= res!1042105 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50890 0))(
  ( (Unit!50891) )
))
(declare-fun lt!659804 () Unit!50890)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50890)

(assert (=> b!1523055 (= lt!659804 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523056 () Bool)

(declare-fun res!1042106 () Bool)

(declare-fun e!849199 () Bool)

(assert (=> b!1523056 (=> (not res!1042106) (not e!849199))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1523056 (= res!1042106 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49440 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49440 a!2804))))))

(declare-fun b!1523057 () Bool)

(declare-fun res!1042104 () Bool)

(assert (=> b!1523057 (=> (not res!1042104) (not e!849200))))

(declare-datatypes ((SeekEntryResult!13075 0))(
  ( (MissingZero!13075 (index!54694 (_ BitVec 32))) (Found!13075 (index!54695 (_ BitVec 32))) (Intermediate!13075 (undefined!13887 Bool) (index!54696 (_ BitVec 32)) (x!136396 (_ BitVec 32))) (Undefined!13075) (MissingVacant!13075 (index!54697 (_ BitVec 32))) )
))
(declare-fun lt!659806 () SeekEntryResult!13075)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101325 (_ BitVec 32)) SeekEntryResult!13075)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523057 (= res!1042104 (= lt!659806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48889 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48889 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101326 (store (arr!48889 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49440 a!2804)) mask!2512)))))

(declare-fun b!1523058 () Bool)

(declare-fun res!1042100 () Bool)

(assert (=> b!1523058 (=> (not res!1042100) (not e!849199))))

(assert (=> b!1523058 (= res!1042100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523060 () Bool)

(declare-fun res!1042107 () Bool)

(assert (=> b!1523060 (=> (not res!1042107) (not e!849199))))

(declare-datatypes ((List!35552 0))(
  ( (Nil!35549) (Cons!35548 (h!36973 (_ BitVec 64)) (t!50253 List!35552)) )
))
(declare-fun arrayNoDuplicates!0 (array!101325 (_ BitVec 32) List!35552) Bool)

(assert (=> b!1523060 (= res!1042107 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35549))))

(declare-fun b!1523061 () Bool)

(declare-fun res!1042103 () Bool)

(assert (=> b!1523061 (=> (not res!1042103) (not e!849199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523061 (= res!1042103 (validKeyInArray!0 (select (arr!48889 a!2804) i!961)))))

(declare-fun b!1523062 () Bool)

(assert (=> b!1523062 (= e!849199 e!849200)))

(declare-fun res!1042108 () Bool)

(assert (=> b!1523062 (=> (not res!1042108) (not e!849200))))

(declare-fun lt!659805 () SeekEntryResult!13075)

(assert (=> b!1523062 (= res!1042108 (= lt!659806 lt!659805))))

(assert (=> b!1523062 (= lt!659805 (Intermediate!13075 false resIndex!21 resX!21))))

(assert (=> b!1523062 (= lt!659806 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48889 a!2804) j!70) mask!2512) (select (arr!48889 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523063 () Bool)

(declare-fun res!1042109 () Bool)

(assert (=> b!1523063 (=> (not res!1042109) (not e!849199))))

(assert (=> b!1523063 (= res!1042109 (and (= (size!49440 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49440 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49440 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523059 () Bool)

(declare-fun res!1042102 () Bool)

(assert (=> b!1523059 (=> (not res!1042102) (not e!849200))))

(assert (=> b!1523059 (= res!1042102 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48889 a!2804) j!70) a!2804 mask!2512) lt!659805))))

(declare-fun res!1042110 () Bool)

(assert (=> start!129802 (=> (not res!1042110) (not e!849199))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129802 (= res!1042110 (validMask!0 mask!2512))))

(assert (=> start!129802 e!849199))

(assert (=> start!129802 true))

(declare-fun array_inv!37834 (array!101325) Bool)

(assert (=> start!129802 (array_inv!37834 a!2804)))

(declare-fun b!1523064 () Bool)

(declare-fun res!1042101 () Bool)

(assert (=> b!1523064 (=> (not res!1042101) (not e!849199))))

(assert (=> b!1523064 (= res!1042101 (validKeyInArray!0 (select (arr!48889 a!2804) j!70)))))

(declare-fun b!1523065 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101325 (_ BitVec 32)) SeekEntryResult!13075)

(assert (=> b!1523065 (= e!849198 (= (seekEntry!0 (select (arr!48889 a!2804) j!70) a!2804 mask!2512) (Found!13075 j!70)))))

(assert (= (and start!129802 res!1042110) b!1523063))

(assert (= (and b!1523063 res!1042109) b!1523061))

(assert (= (and b!1523061 res!1042103) b!1523064))

(assert (= (and b!1523064 res!1042101) b!1523058))

(assert (= (and b!1523058 res!1042100) b!1523060))

(assert (= (and b!1523060 res!1042107) b!1523056))

(assert (= (and b!1523056 res!1042106) b!1523062))

(assert (= (and b!1523062 res!1042108) b!1523059))

(assert (= (and b!1523059 res!1042102) b!1523057))

(assert (= (and b!1523057 res!1042104) b!1523055))

(assert (= (and b!1523055 res!1042105) b!1523065))

(declare-fun m!1406199 () Bool)

(assert (=> b!1523055 m!1406199))

(declare-fun m!1406201 () Bool)

(assert (=> b!1523055 m!1406201))

(declare-fun m!1406203 () Bool)

(assert (=> b!1523061 m!1406203))

(assert (=> b!1523061 m!1406203))

(declare-fun m!1406205 () Bool)

(assert (=> b!1523061 m!1406205))

(declare-fun m!1406207 () Bool)

(assert (=> b!1523059 m!1406207))

(assert (=> b!1523059 m!1406207))

(declare-fun m!1406209 () Bool)

(assert (=> b!1523059 m!1406209))

(assert (=> b!1523065 m!1406207))

(assert (=> b!1523065 m!1406207))

(declare-fun m!1406211 () Bool)

(assert (=> b!1523065 m!1406211))

(declare-fun m!1406213 () Bool)

(assert (=> b!1523057 m!1406213))

(declare-fun m!1406215 () Bool)

(assert (=> b!1523057 m!1406215))

(assert (=> b!1523057 m!1406215))

(declare-fun m!1406217 () Bool)

(assert (=> b!1523057 m!1406217))

(assert (=> b!1523057 m!1406217))

(assert (=> b!1523057 m!1406215))

(declare-fun m!1406219 () Bool)

(assert (=> b!1523057 m!1406219))

(declare-fun m!1406221 () Bool)

(assert (=> start!129802 m!1406221))

(declare-fun m!1406223 () Bool)

(assert (=> start!129802 m!1406223))

(assert (=> b!1523062 m!1406207))

(assert (=> b!1523062 m!1406207))

(declare-fun m!1406225 () Bool)

(assert (=> b!1523062 m!1406225))

(assert (=> b!1523062 m!1406225))

(assert (=> b!1523062 m!1406207))

(declare-fun m!1406227 () Bool)

(assert (=> b!1523062 m!1406227))

(assert (=> b!1523064 m!1406207))

(assert (=> b!1523064 m!1406207))

(declare-fun m!1406229 () Bool)

(assert (=> b!1523064 m!1406229))

(declare-fun m!1406231 () Bool)

(assert (=> b!1523058 m!1406231))

(declare-fun m!1406233 () Bool)

(assert (=> b!1523060 m!1406233))

(push 1)

