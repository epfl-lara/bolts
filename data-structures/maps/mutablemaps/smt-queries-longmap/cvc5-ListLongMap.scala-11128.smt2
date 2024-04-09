; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130096 () Bool)

(assert start!130096)

(declare-fun b!1526103 () Bool)

(declare-fun res!1044284 () Bool)

(declare-fun e!850685 () Bool)

(assert (=> b!1526103 (=> (not res!1044284) (not e!850685))))

(declare-datatypes ((array!101436 0))(
  ( (array!101437 (arr!48940 (Array (_ BitVec 32) (_ BitVec 64))) (size!49491 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101436)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1526103 (= res!1044284 (validKeyInArray!0 (select (arr!48940 a!2804) i!961)))))

(declare-fun b!1526104 () Bool)

(declare-fun e!850681 () Bool)

(declare-fun e!850680 () Bool)

(assert (=> b!1526104 (= e!850681 e!850680)))

(declare-fun res!1044283 () Bool)

(assert (=> b!1526104 (=> (not res!1044283) (not e!850680))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13126 0))(
  ( (MissingZero!13126 (index!54898 (_ BitVec 32))) (Found!13126 (index!54899 (_ BitVec 32))) (Intermediate!13126 (undefined!13938 Bool) (index!54900 (_ BitVec 32)) (x!136607 (_ BitVec 32))) (Undefined!13126) (MissingVacant!13126 (index!54901 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101436 (_ BitVec 32)) SeekEntryResult!13126)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101436 (_ BitVec 32)) SeekEntryResult!13126)

(assert (=> b!1526104 (= res!1044283 (= (seekEntryOrOpen!0 (select (arr!48940 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48940 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1526105 () Bool)

(declare-fun res!1044276 () Bool)

(assert (=> b!1526105 (=> (not res!1044276) (not e!850685))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1526105 (= res!1044276 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49491 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49491 a!2804))))))

(declare-fun b!1526106 () Bool)

(declare-fun e!850682 () Bool)

(declare-fun e!850683 () Bool)

(assert (=> b!1526106 (= e!850682 e!850683)))

(declare-fun res!1044280 () Bool)

(assert (=> b!1526106 (=> (not res!1044280) (not e!850683))))

(declare-fun lt!660922 () (_ BitVec 64))

(declare-fun lt!660925 () array!101436)

(declare-fun lt!660921 () SeekEntryResult!13126)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101436 (_ BitVec 32)) SeekEntryResult!13126)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1526106 (= res!1044280 (= lt!660921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660922 mask!2512) lt!660922 lt!660925 mask!2512)))))

(assert (=> b!1526106 (= lt!660922 (select (store (arr!48940 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1526106 (= lt!660925 (array!101437 (store (arr!48940 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49491 a!2804)))))

(declare-fun b!1526107 () Bool)

(assert (=> b!1526107 (= e!850685 e!850682)))

(declare-fun res!1044286 () Bool)

(assert (=> b!1526107 (=> (not res!1044286) (not e!850682))))

(declare-fun lt!660923 () SeekEntryResult!13126)

(assert (=> b!1526107 (= res!1044286 (= lt!660921 lt!660923))))

(assert (=> b!1526107 (= lt!660923 (Intermediate!13126 false resIndex!21 resX!21))))

(assert (=> b!1526107 (= lt!660921 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48940 a!2804) j!70) mask!2512) (select (arr!48940 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1526108 () Bool)

(assert (=> b!1526108 (= e!850680 (= (seekEntryOrOpen!0 lt!660922 lt!660925 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660922 lt!660925 mask!2512)))))

(declare-fun b!1526109 () Bool)

(declare-fun res!1044281 () Bool)

(assert (=> b!1526109 (=> (not res!1044281) (not e!850685))))

(assert (=> b!1526109 (= res!1044281 (and (= (size!49491 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49491 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49491 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1526110 () Bool)

(assert (=> b!1526110 (= e!850683 (not true))))

(declare-fun e!850684 () Bool)

(assert (=> b!1526110 e!850684))

(declare-fun res!1044287 () Bool)

(assert (=> b!1526110 (=> (not res!1044287) (not e!850684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101436 (_ BitVec 32)) Bool)

(assert (=> b!1526110 (= res!1044287 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50992 0))(
  ( (Unit!50993) )
))
(declare-fun lt!660924 () Unit!50992)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50992)

(assert (=> b!1526110 (= lt!660924 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1526111 () Bool)

(declare-fun res!1044278 () Bool)

(assert (=> b!1526111 (=> (not res!1044278) (not e!850685))))

(declare-datatypes ((List!35603 0))(
  ( (Nil!35600) (Cons!35599 (h!37033 (_ BitVec 64)) (t!50304 List!35603)) )
))
(declare-fun arrayNoDuplicates!0 (array!101436 (_ BitVec 32) List!35603) Bool)

(assert (=> b!1526111 (= res!1044278 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35600))))

(declare-fun b!1526112 () Bool)

(declare-fun res!1044288 () Bool)

(assert (=> b!1526112 (=> (not res!1044288) (not e!850685))))

(assert (=> b!1526112 (= res!1044288 (validKeyInArray!0 (select (arr!48940 a!2804) j!70)))))

(declare-fun b!1526113 () Bool)

(assert (=> b!1526113 (= e!850684 e!850681)))

(declare-fun res!1044285 () Bool)

(assert (=> b!1526113 (=> res!1044285 e!850681)))

(assert (=> b!1526113 (= res!1044285 (or (not (= (select (arr!48940 a!2804) j!70) lt!660922)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48940 a!2804) index!487) (select (arr!48940 a!2804) j!70)) (not (= (select (arr!48940 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1526114 () Bool)

(declare-fun res!1044282 () Bool)

(assert (=> b!1526114 (=> (not res!1044282) (not e!850682))))

(assert (=> b!1526114 (= res!1044282 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48940 a!2804) j!70) a!2804 mask!2512) lt!660923))))

(declare-fun res!1044277 () Bool)

(assert (=> start!130096 (=> (not res!1044277) (not e!850685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130096 (= res!1044277 (validMask!0 mask!2512))))

(assert (=> start!130096 e!850685))

(assert (=> start!130096 true))

(declare-fun array_inv!37885 (array!101436) Bool)

(assert (=> start!130096 (array_inv!37885 a!2804)))

(declare-fun b!1526115 () Bool)

(declare-fun res!1044275 () Bool)

(assert (=> b!1526115 (=> (not res!1044275) (not e!850684))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101436 (_ BitVec 32)) SeekEntryResult!13126)

(assert (=> b!1526115 (= res!1044275 (= (seekEntry!0 (select (arr!48940 a!2804) j!70) a!2804 mask!2512) (Found!13126 j!70)))))

(declare-fun b!1526116 () Bool)

(declare-fun res!1044279 () Bool)

(assert (=> b!1526116 (=> (not res!1044279) (not e!850685))))

(assert (=> b!1526116 (= res!1044279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130096 res!1044277) b!1526109))

(assert (= (and b!1526109 res!1044281) b!1526103))

(assert (= (and b!1526103 res!1044284) b!1526112))

(assert (= (and b!1526112 res!1044288) b!1526116))

(assert (= (and b!1526116 res!1044279) b!1526111))

(assert (= (and b!1526111 res!1044278) b!1526105))

(assert (= (and b!1526105 res!1044276) b!1526107))

(assert (= (and b!1526107 res!1044286) b!1526114))

(assert (= (and b!1526114 res!1044282) b!1526106))

(assert (= (and b!1526106 res!1044280) b!1526110))

(assert (= (and b!1526110 res!1044287) b!1526115))

(assert (= (and b!1526115 res!1044275) b!1526113))

(assert (= (and b!1526113 (not res!1044285)) b!1526104))

(assert (= (and b!1526104 res!1044283) b!1526108))

(declare-fun m!1408935 () Bool)

(assert (=> b!1526111 m!1408935))

(declare-fun m!1408937 () Bool)

(assert (=> b!1526106 m!1408937))

(assert (=> b!1526106 m!1408937))

(declare-fun m!1408939 () Bool)

(assert (=> b!1526106 m!1408939))

(declare-fun m!1408941 () Bool)

(assert (=> b!1526106 m!1408941))

(declare-fun m!1408943 () Bool)

(assert (=> b!1526106 m!1408943))

(declare-fun m!1408945 () Bool)

(assert (=> b!1526112 m!1408945))

(assert (=> b!1526112 m!1408945))

(declare-fun m!1408947 () Bool)

(assert (=> b!1526112 m!1408947))

(declare-fun m!1408949 () Bool)

(assert (=> b!1526103 m!1408949))

(assert (=> b!1526103 m!1408949))

(declare-fun m!1408951 () Bool)

(assert (=> b!1526103 m!1408951))

(assert (=> b!1526107 m!1408945))

(assert (=> b!1526107 m!1408945))

(declare-fun m!1408953 () Bool)

(assert (=> b!1526107 m!1408953))

(assert (=> b!1526107 m!1408953))

(assert (=> b!1526107 m!1408945))

(declare-fun m!1408955 () Bool)

(assert (=> b!1526107 m!1408955))

(assert (=> b!1526115 m!1408945))

(assert (=> b!1526115 m!1408945))

(declare-fun m!1408957 () Bool)

(assert (=> b!1526115 m!1408957))

(declare-fun m!1408959 () Bool)

(assert (=> b!1526116 m!1408959))

(assert (=> b!1526114 m!1408945))

(assert (=> b!1526114 m!1408945))

(declare-fun m!1408961 () Bool)

(assert (=> b!1526114 m!1408961))

(declare-fun m!1408963 () Bool)

(assert (=> b!1526110 m!1408963))

(declare-fun m!1408965 () Bool)

(assert (=> b!1526110 m!1408965))

(assert (=> b!1526104 m!1408945))

(assert (=> b!1526104 m!1408945))

(declare-fun m!1408967 () Bool)

(assert (=> b!1526104 m!1408967))

(assert (=> b!1526104 m!1408945))

(declare-fun m!1408969 () Bool)

(assert (=> b!1526104 m!1408969))

(assert (=> b!1526113 m!1408945))

(declare-fun m!1408971 () Bool)

(assert (=> b!1526113 m!1408971))

(declare-fun m!1408973 () Bool)

(assert (=> start!130096 m!1408973))

(declare-fun m!1408975 () Bool)

(assert (=> start!130096 m!1408975))

(declare-fun m!1408977 () Bool)

(assert (=> b!1526108 m!1408977))

(declare-fun m!1408979 () Bool)

(assert (=> b!1526108 m!1408979))

(push 1)

