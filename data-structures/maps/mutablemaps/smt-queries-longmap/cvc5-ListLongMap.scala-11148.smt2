; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130282 () Bool)

(assert start!130282)

(declare-fun b!1528937 () Bool)

(declare-fun res!1046782 () Bool)

(declare-fun e!852129 () Bool)

(assert (=> b!1528937 (=> (not res!1046782) (not e!852129))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101559 0))(
  ( (array!101560 (arr!49000 (Array (_ BitVec 32) (_ BitVec 64))) (size!49551 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101559)

(assert (=> b!1528937 (= res!1046782 (and (= (size!49551 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49551 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49551 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528938 () Bool)

(declare-fun res!1046785 () Bool)

(assert (=> b!1528938 (=> (not res!1046785) (not e!852129))))

(declare-datatypes ((List!35663 0))(
  ( (Nil!35660) (Cons!35659 (h!37096 (_ BitVec 64)) (t!50364 List!35663)) )
))
(declare-fun arrayNoDuplicates!0 (array!101559 (_ BitVec 32) List!35663) Bool)

(assert (=> b!1528938 (= res!1046785 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35660))))

(declare-fun b!1528939 () Bool)

(declare-fun e!852127 () Bool)

(assert (=> b!1528939 (= e!852127 true)))

(declare-fun lt!662230 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528939 (= lt!662230 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1528940 () Bool)

(declare-fun e!852131 () Bool)

(assert (=> b!1528940 (= e!852129 e!852131)))

(declare-fun res!1046783 () Bool)

(assert (=> b!1528940 (=> (not res!1046783) (not e!852131))))

(declare-datatypes ((SeekEntryResult!13186 0))(
  ( (MissingZero!13186 (index!55138 (_ BitVec 32))) (Found!13186 (index!55139 (_ BitVec 32))) (Intermediate!13186 (undefined!13998 Bool) (index!55140 (_ BitVec 32)) (x!136836 (_ BitVec 32))) (Undefined!13186) (MissingVacant!13186 (index!55141 (_ BitVec 32))) )
))
(declare-fun lt!662232 () SeekEntryResult!13186)

(declare-fun lt!662231 () SeekEntryResult!13186)

(assert (=> b!1528940 (= res!1046783 (= lt!662232 lt!662231))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528940 (= lt!662231 (Intermediate!13186 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101559 (_ BitVec 32)) SeekEntryResult!13186)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528940 (= lt!662232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49000 a!2804) j!70) mask!2512) (select (arr!49000 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1046787 () Bool)

(assert (=> start!130282 (=> (not res!1046787) (not e!852129))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130282 (= res!1046787 (validMask!0 mask!2512))))

(assert (=> start!130282 e!852129))

(assert (=> start!130282 true))

(declare-fun array_inv!37945 (array!101559) Bool)

(assert (=> start!130282 (array_inv!37945 a!2804)))

(declare-fun b!1528941 () Bool)

(declare-fun res!1046792 () Bool)

(assert (=> b!1528941 (=> (not res!1046792) (not e!852129))))

(assert (=> b!1528941 (= res!1046792 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49551 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49551 a!2804))))))

(declare-fun b!1528942 () Bool)

(declare-fun res!1046786 () Bool)

(assert (=> b!1528942 (=> (not res!1046786) (not e!852131))))

(assert (=> b!1528942 (= res!1046786 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49000 a!2804) j!70) a!2804 mask!2512) lt!662231))))

(declare-fun b!1528943 () Bool)

(declare-fun res!1046791 () Bool)

(assert (=> b!1528943 (=> (not res!1046791) (not e!852129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528943 (= res!1046791 (validKeyInArray!0 (select (arr!49000 a!2804) i!961)))))

(declare-fun b!1528944 () Bool)

(declare-fun e!852130 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101559 (_ BitVec 32)) SeekEntryResult!13186)

(assert (=> b!1528944 (= e!852130 (= (seekEntry!0 (select (arr!49000 a!2804) j!70) a!2804 mask!2512) (Found!13186 j!70)))))

(declare-fun b!1528945 () Bool)

(declare-fun res!1046789 () Bool)

(assert (=> b!1528945 (=> (not res!1046789) (not e!852129))))

(assert (=> b!1528945 (= res!1046789 (validKeyInArray!0 (select (arr!49000 a!2804) j!70)))))

(declare-fun b!1528946 () Bool)

(declare-fun res!1046788 () Bool)

(assert (=> b!1528946 (=> (not res!1046788) (not e!852129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101559 (_ BitVec 32)) Bool)

(assert (=> b!1528946 (= res!1046788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528947 () Bool)

(declare-fun res!1046784 () Bool)

(assert (=> b!1528947 (=> (not res!1046784) (not e!852131))))

(assert (=> b!1528947 (= res!1046784 (= lt!662232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49000 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49000 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101560 (store (arr!49000 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49551 a!2804)) mask!2512)))))

(declare-fun b!1528948 () Bool)

(assert (=> b!1528948 (= e!852131 (not e!852127))))

(declare-fun res!1046790 () Bool)

(assert (=> b!1528948 (=> res!1046790 e!852127)))

(assert (=> b!1528948 (= res!1046790 (or (not (= (select (arr!49000 a!2804) j!70) (select (store (arr!49000 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1528948 e!852130))

(declare-fun res!1046793 () Bool)

(assert (=> b!1528948 (=> (not res!1046793) (not e!852130))))

(assert (=> b!1528948 (= res!1046793 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51112 0))(
  ( (Unit!51113) )
))
(declare-fun lt!662233 () Unit!51112)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101559 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51112)

(assert (=> b!1528948 (= lt!662233 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130282 res!1046787) b!1528937))

(assert (= (and b!1528937 res!1046782) b!1528943))

(assert (= (and b!1528943 res!1046791) b!1528945))

(assert (= (and b!1528945 res!1046789) b!1528946))

(assert (= (and b!1528946 res!1046788) b!1528938))

(assert (= (and b!1528938 res!1046785) b!1528941))

(assert (= (and b!1528941 res!1046792) b!1528940))

(assert (= (and b!1528940 res!1046783) b!1528942))

(assert (= (and b!1528942 res!1046786) b!1528947))

(assert (= (and b!1528947 res!1046784) b!1528948))

(assert (= (and b!1528948 res!1046793) b!1528944))

(assert (= (and b!1528948 (not res!1046790)) b!1528939))

(declare-fun m!1411911 () Bool)

(assert (=> b!1528940 m!1411911))

(assert (=> b!1528940 m!1411911))

(declare-fun m!1411913 () Bool)

(assert (=> b!1528940 m!1411913))

(assert (=> b!1528940 m!1411913))

(assert (=> b!1528940 m!1411911))

(declare-fun m!1411915 () Bool)

(assert (=> b!1528940 m!1411915))

(declare-fun m!1411917 () Bool)

(assert (=> b!1528943 m!1411917))

(assert (=> b!1528943 m!1411917))

(declare-fun m!1411919 () Bool)

(assert (=> b!1528943 m!1411919))

(declare-fun m!1411921 () Bool)

(assert (=> b!1528947 m!1411921))

(declare-fun m!1411923 () Bool)

(assert (=> b!1528947 m!1411923))

(assert (=> b!1528947 m!1411923))

(declare-fun m!1411925 () Bool)

(assert (=> b!1528947 m!1411925))

(assert (=> b!1528947 m!1411925))

(assert (=> b!1528947 m!1411923))

(declare-fun m!1411927 () Bool)

(assert (=> b!1528947 m!1411927))

(declare-fun m!1411929 () Bool)

(assert (=> start!130282 m!1411929))

(declare-fun m!1411931 () Bool)

(assert (=> start!130282 m!1411931))

(declare-fun m!1411933 () Bool)

(assert (=> b!1528946 m!1411933))

(assert (=> b!1528945 m!1411911))

(assert (=> b!1528945 m!1411911))

(declare-fun m!1411935 () Bool)

(assert (=> b!1528945 m!1411935))

(assert (=> b!1528942 m!1411911))

(assert (=> b!1528942 m!1411911))

(declare-fun m!1411937 () Bool)

(assert (=> b!1528942 m!1411937))

(assert (=> b!1528944 m!1411911))

(assert (=> b!1528944 m!1411911))

(declare-fun m!1411939 () Bool)

(assert (=> b!1528944 m!1411939))

(declare-fun m!1411941 () Bool)

(assert (=> b!1528939 m!1411941))

(declare-fun m!1411943 () Bool)

(assert (=> b!1528938 m!1411943))

(assert (=> b!1528948 m!1411911))

(declare-fun m!1411945 () Bool)

(assert (=> b!1528948 m!1411945))

(assert (=> b!1528948 m!1411921))

(assert (=> b!1528948 m!1411923))

(declare-fun m!1411947 () Bool)

(assert (=> b!1528948 m!1411947))

(push 1)

