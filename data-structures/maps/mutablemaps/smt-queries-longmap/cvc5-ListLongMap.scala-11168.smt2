; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130582 () Bool)

(assert start!130582)

(declare-fun b!1532083 () Bool)

(declare-fun res!1049368 () Bool)

(declare-fun e!853673 () Bool)

(assert (=> b!1532083 (=> (not res!1049368) (not e!853673))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101688 0))(
  ( (array!101689 (arr!49060 (Array (_ BitVec 32) (_ BitVec 64))) (size!49611 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101688)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1532083 (= res!1049368 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49611 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49611 a!2804))))))

(declare-fun b!1532084 () Bool)

(declare-fun e!853669 () Bool)

(declare-fun e!853670 () Bool)

(assert (=> b!1532084 (= e!853669 e!853670)))

(declare-fun res!1049369 () Bool)

(assert (=> b!1532084 (=> (not res!1049369) (not e!853670))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!663515 () array!101688)

(declare-datatypes ((SeekEntryResult!13246 0))(
  ( (MissingZero!13246 (index!55378 (_ BitVec 32))) (Found!13246 (index!55379 (_ BitVec 32))) (Intermediate!13246 (undefined!14058 Bool) (index!55380 (_ BitVec 32)) (x!137083 (_ BitVec 32))) (Undefined!13246) (MissingVacant!13246 (index!55381 (_ BitVec 32))) )
))
(declare-fun lt!663511 () SeekEntryResult!13246)

(declare-fun lt!663516 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101688 (_ BitVec 32)) SeekEntryResult!13246)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532084 (= res!1049369 (= lt!663511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!663516 mask!2512) lt!663516 lt!663515 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1532084 (= lt!663516 (select (store (arr!49060 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1532084 (= lt!663515 (array!101689 (store (arr!49060 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49611 a!2804)))))

(declare-fun b!1532085 () Bool)

(declare-fun res!1049367 () Bool)

(assert (=> b!1532085 (=> (not res!1049367) (not e!853673))))

(declare-datatypes ((List!35723 0))(
  ( (Nil!35720) (Cons!35719 (h!37165 (_ BitVec 64)) (t!50424 List!35723)) )
))
(declare-fun arrayNoDuplicates!0 (array!101688 (_ BitVec 32) List!35723) Bool)

(assert (=> b!1532085 (= res!1049367 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35720))))

(declare-fun b!1532086 () Bool)

(declare-fun e!853672 () Bool)

(assert (=> b!1532086 (= e!853670 (not e!853672))))

(declare-fun res!1049361 () Bool)

(assert (=> b!1532086 (=> res!1049361 e!853672)))

(assert (=> b!1532086 (= res!1049361 (or (not (= (select (arr!49060 a!2804) j!70) lt!663516)) (= x!534 resX!21)))))

(declare-fun e!853667 () Bool)

(assert (=> b!1532086 e!853667))

(declare-fun res!1049373 () Bool)

(assert (=> b!1532086 (=> (not res!1049373) (not e!853667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101688 (_ BitVec 32)) Bool)

(assert (=> b!1532086 (= res!1049373 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51232 0))(
  ( (Unit!51233) )
))
(declare-fun lt!663513 () Unit!51232)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101688 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51232)

(assert (=> b!1532086 (= lt!663513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1532087 () Bool)

(declare-fun res!1049362 () Bool)

(assert (=> b!1532087 (=> (not res!1049362) (not e!853673))))

(assert (=> b!1532087 (= res!1049362 (and (= (size!49611 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49611 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49611 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1532088 () Bool)

(declare-fun e!853668 () Bool)

(assert (=> b!1532088 (= e!853668 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101688 (_ BitVec 32)) SeekEntryResult!13246)

(assert (=> b!1532088 (= (seekEntryOrOpen!0 (select (arr!49060 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!663516 lt!663515 mask!2512))))

(declare-fun lt!663512 () (_ BitVec 32))

(declare-fun lt!663514 () Unit!51232)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101688 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51232)

(assert (=> b!1532088 (= lt!663514 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!663512 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1532089 () Bool)

(declare-fun res!1049363 () Bool)

(assert (=> b!1532089 (=> res!1049363 e!853668)))

(declare-fun lt!663517 () SeekEntryResult!13246)

(assert (=> b!1532089 (= res!1049363 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663512 (select (arr!49060 a!2804) j!70) a!2804 mask!2512) lt!663517)))))

(declare-fun b!1532090 () Bool)

(declare-fun res!1049372 () Bool)

(assert (=> b!1532090 (=> (not res!1049372) (not e!853673))))

(assert (=> b!1532090 (= res!1049372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1532091 () Bool)

(declare-fun res!1049365 () Bool)

(assert (=> b!1532091 (=> (not res!1049365) (not e!853669))))

(assert (=> b!1532091 (= res!1049365 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49060 a!2804) j!70) a!2804 mask!2512) lt!663517))))

(declare-fun b!1532092 () Bool)

(assert (=> b!1532092 (= e!853673 e!853669)))

(declare-fun res!1049366 () Bool)

(assert (=> b!1532092 (=> (not res!1049366) (not e!853669))))

(assert (=> b!1532092 (= res!1049366 (= lt!663511 lt!663517))))

(assert (=> b!1532092 (= lt!663517 (Intermediate!13246 false resIndex!21 resX!21))))

(assert (=> b!1532092 (= lt!663511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49060 a!2804) j!70) mask!2512) (select (arr!49060 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1532093 () Bool)

(declare-fun res!1049360 () Bool)

(assert (=> b!1532093 (=> (not res!1049360) (not e!853673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1532093 (= res!1049360 (validKeyInArray!0 (select (arr!49060 a!2804) i!961)))))

(declare-fun b!1532094 () Bool)

(assert (=> b!1532094 (= e!853672 e!853668)))

(declare-fun res!1049364 () Bool)

(assert (=> b!1532094 (=> res!1049364 e!853668)))

(assert (=> b!1532094 (= res!1049364 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663512 #b00000000000000000000000000000000) (bvsge lt!663512 (size!49611 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1532094 (= lt!663512 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1532095 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101688 (_ BitVec 32)) SeekEntryResult!13246)

(assert (=> b!1532095 (= e!853667 (= (seekEntry!0 (select (arr!49060 a!2804) j!70) a!2804 mask!2512) (Found!13246 j!70)))))

(declare-fun b!1532082 () Bool)

(declare-fun res!1049371 () Bool)

(assert (=> b!1532082 (=> (not res!1049371) (not e!853673))))

(assert (=> b!1532082 (= res!1049371 (validKeyInArray!0 (select (arr!49060 a!2804) j!70)))))

(declare-fun res!1049370 () Bool)

(assert (=> start!130582 (=> (not res!1049370) (not e!853673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130582 (= res!1049370 (validMask!0 mask!2512))))

(assert (=> start!130582 e!853673))

(assert (=> start!130582 true))

(declare-fun array_inv!38005 (array!101688) Bool)

(assert (=> start!130582 (array_inv!38005 a!2804)))

(assert (= (and start!130582 res!1049370) b!1532087))

(assert (= (and b!1532087 res!1049362) b!1532093))

(assert (= (and b!1532093 res!1049360) b!1532082))

(assert (= (and b!1532082 res!1049371) b!1532090))

(assert (= (and b!1532090 res!1049372) b!1532085))

(assert (= (and b!1532085 res!1049367) b!1532083))

(assert (= (and b!1532083 res!1049368) b!1532092))

(assert (= (and b!1532092 res!1049366) b!1532091))

(assert (= (and b!1532091 res!1049365) b!1532084))

(assert (= (and b!1532084 res!1049369) b!1532086))

(assert (= (and b!1532086 res!1049373) b!1532095))

(assert (= (and b!1532086 (not res!1049361)) b!1532094))

(assert (= (and b!1532094 (not res!1049364)) b!1532089))

(assert (= (and b!1532089 (not res!1049363)) b!1532088))

(declare-fun m!1414833 () Bool)

(assert (=> b!1532093 m!1414833))

(assert (=> b!1532093 m!1414833))

(declare-fun m!1414835 () Bool)

(assert (=> b!1532093 m!1414835))

(declare-fun m!1414837 () Bool)

(assert (=> b!1532089 m!1414837))

(assert (=> b!1532089 m!1414837))

(declare-fun m!1414839 () Bool)

(assert (=> b!1532089 m!1414839))

(assert (=> b!1532091 m!1414837))

(assert (=> b!1532091 m!1414837))

(declare-fun m!1414841 () Bool)

(assert (=> b!1532091 m!1414841))

(declare-fun m!1414843 () Bool)

(assert (=> b!1532084 m!1414843))

(assert (=> b!1532084 m!1414843))

(declare-fun m!1414845 () Bool)

(assert (=> b!1532084 m!1414845))

(declare-fun m!1414847 () Bool)

(assert (=> b!1532084 m!1414847))

(declare-fun m!1414849 () Bool)

(assert (=> b!1532084 m!1414849))

(declare-fun m!1414851 () Bool)

(assert (=> b!1532090 m!1414851))

(declare-fun m!1414853 () Bool)

(assert (=> b!1532085 m!1414853))

(assert (=> b!1532095 m!1414837))

(assert (=> b!1532095 m!1414837))

(declare-fun m!1414855 () Bool)

(assert (=> b!1532095 m!1414855))

(assert (=> b!1532088 m!1414837))

(assert (=> b!1532088 m!1414837))

(declare-fun m!1414857 () Bool)

(assert (=> b!1532088 m!1414857))

(declare-fun m!1414859 () Bool)

(assert (=> b!1532088 m!1414859))

(declare-fun m!1414861 () Bool)

(assert (=> b!1532088 m!1414861))

(assert (=> b!1532082 m!1414837))

(assert (=> b!1532082 m!1414837))

(declare-fun m!1414863 () Bool)

(assert (=> b!1532082 m!1414863))

(assert (=> b!1532092 m!1414837))

(assert (=> b!1532092 m!1414837))

(declare-fun m!1414865 () Bool)

(assert (=> b!1532092 m!1414865))

(assert (=> b!1532092 m!1414865))

(assert (=> b!1532092 m!1414837))

(declare-fun m!1414867 () Bool)

(assert (=> b!1532092 m!1414867))

(declare-fun m!1414869 () Bool)

(assert (=> b!1532094 m!1414869))

(declare-fun m!1414871 () Bool)

(assert (=> start!130582 m!1414871))

(declare-fun m!1414873 () Bool)

(assert (=> start!130582 m!1414873))

(assert (=> b!1532086 m!1414837))

(declare-fun m!1414875 () Bool)

(assert (=> b!1532086 m!1414875))

(declare-fun m!1414877 () Bool)

(assert (=> b!1532086 m!1414877))

(push 1)

