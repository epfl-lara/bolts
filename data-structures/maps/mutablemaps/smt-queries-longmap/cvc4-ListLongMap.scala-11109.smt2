; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129794 () Bool)

(assert start!129794)

(declare-fun b!1522924 () Bool)

(declare-fun res!1041969 () Bool)

(declare-fun e!849150 () Bool)

(assert (=> b!1522924 (=> (not res!1041969) (not e!849150))))

(declare-datatypes ((array!101317 0))(
  ( (array!101318 (arr!48885 (Array (_ BitVec 32) (_ BitVec 64))) (size!49436 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101317)

(declare-datatypes ((List!35548 0))(
  ( (Nil!35545) (Cons!35544 (h!36969 (_ BitVec 64)) (t!50249 List!35548)) )
))
(declare-fun arrayNoDuplicates!0 (array!101317 (_ BitVec 32) List!35548) Bool)

(assert (=> b!1522924 (= res!1041969 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35545))))

(declare-fun b!1522925 () Bool)

(declare-fun res!1041971 () Bool)

(assert (=> b!1522925 (=> (not res!1041971) (not e!849150))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101317 (_ BitVec 32)) Bool)

(assert (=> b!1522925 (= res!1041971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522926 () Bool)

(declare-fun e!849151 () Bool)

(assert (=> b!1522926 (= e!849151 (not true))))

(declare-fun e!849149 () Bool)

(assert (=> b!1522926 e!849149))

(declare-fun res!1041978 () Bool)

(assert (=> b!1522926 (=> (not res!1041978) (not e!849149))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1522926 (= res!1041978 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50882 0))(
  ( (Unit!50883) )
))
(declare-fun lt!659770 () Unit!50882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50882)

(assert (=> b!1522926 (= lt!659770 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522927 () Bool)

(declare-datatypes ((SeekEntryResult!13071 0))(
  ( (MissingZero!13071 (index!54678 (_ BitVec 32))) (Found!13071 (index!54679 (_ BitVec 32))) (Intermediate!13071 (undefined!13883 Bool) (index!54680 (_ BitVec 32)) (x!136376 (_ BitVec 32))) (Undefined!13071) (MissingVacant!13071 (index!54681 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101317 (_ BitVec 32)) SeekEntryResult!13071)

(assert (=> b!1522927 (= e!849149 (= (seekEntry!0 (select (arr!48885 a!2804) j!70) a!2804 mask!2512) (Found!13071 j!70)))))

(declare-fun b!1522928 () Bool)

(assert (=> b!1522928 (= e!849150 e!849151)))

(declare-fun res!1041973 () Bool)

(assert (=> b!1522928 (=> (not res!1041973) (not e!849151))))

(declare-fun lt!659769 () SeekEntryResult!13071)

(declare-fun lt!659768 () SeekEntryResult!13071)

(assert (=> b!1522928 (= res!1041973 (= lt!659769 lt!659768))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1522928 (= lt!659768 (Intermediate!13071 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101317 (_ BitVec 32)) SeekEntryResult!13071)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522928 (= lt!659769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48885 a!2804) j!70) mask!2512) (select (arr!48885 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522929 () Bool)

(declare-fun res!1041975 () Bool)

(assert (=> b!1522929 (=> (not res!1041975) (not e!849150))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522929 (= res!1041975 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49436 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49436 a!2804))))))

(declare-fun b!1522930 () Bool)

(declare-fun res!1041970 () Bool)

(assert (=> b!1522930 (=> (not res!1041970) (not e!849150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522930 (= res!1041970 (validKeyInArray!0 (select (arr!48885 a!2804) j!70)))))

(declare-fun b!1522931 () Bool)

(declare-fun res!1041976 () Bool)

(assert (=> b!1522931 (=> (not res!1041976) (not e!849151))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522931 (= res!1041976 (= lt!659769 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48885 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48885 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101318 (store (arr!48885 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49436 a!2804)) mask!2512)))))

(declare-fun res!1041968 () Bool)

(assert (=> start!129794 (=> (not res!1041968) (not e!849150))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129794 (= res!1041968 (validMask!0 mask!2512))))

(assert (=> start!129794 e!849150))

(assert (=> start!129794 true))

(declare-fun array_inv!37830 (array!101317) Bool)

(assert (=> start!129794 (array_inv!37830 a!2804)))

(declare-fun b!1522923 () Bool)

(declare-fun res!1041974 () Bool)

(assert (=> b!1522923 (=> (not res!1041974) (not e!849151))))

(assert (=> b!1522923 (= res!1041974 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48885 a!2804) j!70) a!2804 mask!2512) lt!659768))))

(declare-fun b!1522932 () Bool)

(declare-fun res!1041977 () Bool)

(assert (=> b!1522932 (=> (not res!1041977) (not e!849150))))

(assert (=> b!1522932 (= res!1041977 (and (= (size!49436 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49436 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49436 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522933 () Bool)

(declare-fun res!1041972 () Bool)

(assert (=> b!1522933 (=> (not res!1041972) (not e!849150))))

(assert (=> b!1522933 (= res!1041972 (validKeyInArray!0 (select (arr!48885 a!2804) i!961)))))

(assert (= (and start!129794 res!1041968) b!1522932))

(assert (= (and b!1522932 res!1041977) b!1522933))

(assert (= (and b!1522933 res!1041972) b!1522930))

(assert (= (and b!1522930 res!1041970) b!1522925))

(assert (= (and b!1522925 res!1041971) b!1522924))

(assert (= (and b!1522924 res!1041969) b!1522929))

(assert (= (and b!1522929 res!1041975) b!1522928))

(assert (= (and b!1522928 res!1041973) b!1522923))

(assert (= (and b!1522923 res!1041974) b!1522931))

(assert (= (and b!1522931 res!1041976) b!1522926))

(assert (= (and b!1522926 res!1041978) b!1522927))

(declare-fun m!1406055 () Bool)

(assert (=> b!1522930 m!1406055))

(assert (=> b!1522930 m!1406055))

(declare-fun m!1406057 () Bool)

(assert (=> b!1522930 m!1406057))

(declare-fun m!1406059 () Bool)

(assert (=> b!1522926 m!1406059))

(declare-fun m!1406061 () Bool)

(assert (=> b!1522926 m!1406061))

(declare-fun m!1406063 () Bool)

(assert (=> b!1522924 m!1406063))

(assert (=> b!1522928 m!1406055))

(assert (=> b!1522928 m!1406055))

(declare-fun m!1406065 () Bool)

(assert (=> b!1522928 m!1406065))

(assert (=> b!1522928 m!1406065))

(assert (=> b!1522928 m!1406055))

(declare-fun m!1406067 () Bool)

(assert (=> b!1522928 m!1406067))

(declare-fun m!1406069 () Bool)

(assert (=> b!1522925 m!1406069))

(assert (=> b!1522923 m!1406055))

(assert (=> b!1522923 m!1406055))

(declare-fun m!1406071 () Bool)

(assert (=> b!1522923 m!1406071))

(declare-fun m!1406073 () Bool)

(assert (=> start!129794 m!1406073))

(declare-fun m!1406075 () Bool)

(assert (=> start!129794 m!1406075))

(assert (=> b!1522927 m!1406055))

(assert (=> b!1522927 m!1406055))

(declare-fun m!1406077 () Bool)

(assert (=> b!1522927 m!1406077))

(declare-fun m!1406079 () Bool)

(assert (=> b!1522931 m!1406079))

(declare-fun m!1406081 () Bool)

(assert (=> b!1522931 m!1406081))

(assert (=> b!1522931 m!1406081))

(declare-fun m!1406083 () Bool)

(assert (=> b!1522931 m!1406083))

(assert (=> b!1522931 m!1406083))

(assert (=> b!1522931 m!1406081))

(declare-fun m!1406085 () Bool)

(assert (=> b!1522931 m!1406085))

(declare-fun m!1406087 () Bool)

(assert (=> b!1522933 m!1406087))

(assert (=> b!1522933 m!1406087))

(declare-fun m!1406089 () Bool)

(assert (=> b!1522933 m!1406089))

(push 1)

(assert (not b!1522926))

