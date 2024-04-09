; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129992 () Bool)

(assert start!129992)

(declare-fun b!1524889 () Bool)

(declare-fun res!1043396 () Bool)

(declare-fun e!850055 () Bool)

(assert (=> b!1524889 (=> (not res!1043396) (not e!850055))))

(declare-datatypes ((array!101395 0))(
  ( (array!101396 (arr!48921 (Array (_ BitVec 32) (_ BitVec 64))) (size!49472 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101395)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524889 (= res!1043396 (validKeyInArray!0 (select (arr!48921 a!2804) j!70)))))

(declare-fun b!1524890 () Bool)

(declare-fun res!1043391 () Bool)

(declare-fun e!850056 () Bool)

(assert (=> b!1524890 (=> (not res!1043391) (not e!850056))))

(declare-datatypes ((SeekEntryResult!13107 0))(
  ( (MissingZero!13107 (index!54822 (_ BitVec 32))) (Found!13107 (index!54823 (_ BitVec 32))) (Intermediate!13107 (undefined!13919 Bool) (index!54824 (_ BitVec 32)) (x!136523 (_ BitVec 32))) (Undefined!13107) (MissingVacant!13107 (index!54825 (_ BitVec 32))) )
))
(declare-fun lt!660462 () SeekEntryResult!13107)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101395 (_ BitVec 32)) SeekEntryResult!13107)

(assert (=> b!1524890 (= res!1043391 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48921 a!2804) j!70) a!2804 mask!2512) lt!660462))))

(declare-fun b!1524891 () Bool)

(declare-fun res!1043388 () Bool)

(assert (=> b!1524891 (=> (not res!1043388) (not e!850055))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524891 (= res!1043388 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49472 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49472 a!2804))))))

(declare-fun b!1524892 () Bool)

(declare-fun res!1043392 () Bool)

(assert (=> b!1524892 (=> (not res!1043392) (not e!850055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101395 (_ BitVec 32)) Bool)

(assert (=> b!1524892 (= res!1043392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524893 () Bool)

(declare-fun res!1043398 () Bool)

(declare-fun e!850058 () Bool)

(assert (=> b!1524893 (=> (not res!1043398) (not e!850058))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101395 (_ BitVec 32)) SeekEntryResult!13107)

(assert (=> b!1524893 (= res!1043398 (= (seekEntry!0 (select (arr!48921 a!2804) j!70) a!2804 mask!2512) (Found!13107 j!70)))))

(declare-fun res!1043393 () Bool)

(assert (=> start!129992 (=> (not res!1043393) (not e!850055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129992 (= res!1043393 (validMask!0 mask!2512))))

(assert (=> start!129992 e!850055))

(assert (=> start!129992 true))

(declare-fun array_inv!37866 (array!101395) Bool)

(assert (=> start!129992 (array_inv!37866 a!2804)))

(declare-fun b!1524894 () Bool)

(declare-fun res!1043390 () Bool)

(assert (=> b!1524894 (=> (not res!1043390) (not e!850055))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1524894 (= res!1043390 (validKeyInArray!0 (select (arr!48921 a!2804) i!961)))))

(declare-fun b!1524895 () Bool)

(declare-fun res!1043400 () Bool)

(assert (=> b!1524895 (=> (not res!1043400) (not e!850055))))

(assert (=> b!1524895 (= res!1043400 (and (= (size!49472 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49472 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49472 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524896 () Bool)

(assert (=> b!1524896 (= e!850055 e!850056)))

(declare-fun res!1043394 () Bool)

(assert (=> b!1524896 (=> (not res!1043394) (not e!850056))))

(declare-fun lt!660463 () SeekEntryResult!13107)

(assert (=> b!1524896 (= res!1043394 (= lt!660463 lt!660462))))

(assert (=> b!1524896 (= lt!660462 (Intermediate!13107 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524896 (= lt!660463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48921 a!2804) j!70) mask!2512) (select (arr!48921 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!850057 () Bool)

(declare-fun b!1524897 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101395 (_ BitVec 32)) SeekEntryResult!13107)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101395 (_ BitVec 32)) SeekEntryResult!13107)

(assert (=> b!1524897 (= e!850057 (= (seekEntryOrOpen!0 (select (arr!48921 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48921 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524898 () Bool)

(declare-fun res!1043395 () Bool)

(assert (=> b!1524898 (=> (not res!1043395) (not e!850056))))

(assert (=> b!1524898 (= res!1043395 (= lt!660463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48921 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48921 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101396 (store (arr!48921 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49472 a!2804)) mask!2512)))))

(declare-fun b!1524899 () Bool)

(assert (=> b!1524899 (= e!850058 e!850057)))

(declare-fun res!1043397 () Bool)

(assert (=> b!1524899 (=> res!1043397 e!850057)))

(assert (=> b!1524899 (= res!1043397 (or (not (= (select (arr!48921 a!2804) j!70) (select (store (arr!48921 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48921 a!2804) index!487) (select (arr!48921 a!2804) j!70)) (not (= (select (arr!48921 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1524900 () Bool)

(declare-fun res!1043389 () Bool)

(assert (=> b!1524900 (=> (not res!1043389) (not e!850055))))

(declare-datatypes ((List!35584 0))(
  ( (Nil!35581) (Cons!35580 (h!37011 (_ BitVec 64)) (t!50285 List!35584)) )
))
(declare-fun arrayNoDuplicates!0 (array!101395 (_ BitVec 32) List!35584) Bool)

(assert (=> b!1524900 (= res!1043389 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35581))))

(declare-fun b!1524901 () Bool)

(assert (=> b!1524901 (= e!850056 (not true))))

(assert (=> b!1524901 e!850058))

(declare-fun res!1043399 () Bool)

(assert (=> b!1524901 (=> (not res!1043399) (not e!850058))))

(assert (=> b!1524901 (= res!1043399 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50954 0))(
  ( (Unit!50955) )
))
(declare-fun lt!660461 () Unit!50954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50954)

(assert (=> b!1524901 (= lt!660461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129992 res!1043393) b!1524895))

(assert (= (and b!1524895 res!1043400) b!1524894))

(assert (= (and b!1524894 res!1043390) b!1524889))

(assert (= (and b!1524889 res!1043396) b!1524892))

(assert (= (and b!1524892 res!1043392) b!1524900))

(assert (= (and b!1524900 res!1043389) b!1524891))

(assert (= (and b!1524891 res!1043388) b!1524896))

(assert (= (and b!1524896 res!1043394) b!1524890))

(assert (= (and b!1524890 res!1043391) b!1524898))

(assert (= (and b!1524898 res!1043395) b!1524901))

(assert (= (and b!1524901 res!1043399) b!1524893))

(assert (= (and b!1524893 res!1043398) b!1524899))

(assert (= (and b!1524899 (not res!1043397)) b!1524897))

(declare-fun m!1407819 () Bool)

(assert (=> b!1524893 m!1407819))

(assert (=> b!1524893 m!1407819))

(declare-fun m!1407821 () Bool)

(assert (=> b!1524893 m!1407821))

(assert (=> b!1524897 m!1407819))

(assert (=> b!1524897 m!1407819))

(declare-fun m!1407823 () Bool)

(assert (=> b!1524897 m!1407823))

(assert (=> b!1524897 m!1407819))

(declare-fun m!1407825 () Bool)

(assert (=> b!1524897 m!1407825))

(assert (=> b!1524890 m!1407819))

(assert (=> b!1524890 m!1407819))

(declare-fun m!1407827 () Bool)

(assert (=> b!1524890 m!1407827))

(declare-fun m!1407829 () Bool)

(assert (=> b!1524898 m!1407829))

(declare-fun m!1407831 () Bool)

(assert (=> b!1524898 m!1407831))

(assert (=> b!1524898 m!1407831))

(declare-fun m!1407833 () Bool)

(assert (=> b!1524898 m!1407833))

(assert (=> b!1524898 m!1407833))

(assert (=> b!1524898 m!1407831))

(declare-fun m!1407835 () Bool)

(assert (=> b!1524898 m!1407835))

(assert (=> b!1524899 m!1407819))

(assert (=> b!1524899 m!1407829))

(assert (=> b!1524899 m!1407831))

(declare-fun m!1407837 () Bool)

(assert (=> b!1524899 m!1407837))

(declare-fun m!1407839 () Bool)

(assert (=> b!1524894 m!1407839))

(assert (=> b!1524894 m!1407839))

(declare-fun m!1407841 () Bool)

(assert (=> b!1524894 m!1407841))

(declare-fun m!1407843 () Bool)

(assert (=> b!1524901 m!1407843))

(declare-fun m!1407845 () Bool)

(assert (=> b!1524901 m!1407845))

(declare-fun m!1407847 () Bool)

(assert (=> b!1524900 m!1407847))

(declare-fun m!1407849 () Bool)

(assert (=> start!129992 m!1407849))

(declare-fun m!1407851 () Bool)

(assert (=> start!129992 m!1407851))

(assert (=> b!1524889 m!1407819))

(assert (=> b!1524889 m!1407819))

(declare-fun m!1407853 () Bool)

(assert (=> b!1524889 m!1407853))

(declare-fun m!1407855 () Bool)

(assert (=> b!1524892 m!1407855))

(assert (=> b!1524896 m!1407819))

(assert (=> b!1524896 m!1407819))

(declare-fun m!1407857 () Bool)

(assert (=> b!1524896 m!1407857))

(assert (=> b!1524896 m!1407857))

(assert (=> b!1524896 m!1407819))

(declare-fun m!1407859 () Bool)

(assert (=> b!1524896 m!1407859))

(push 1)

(assert (not b!1524900))

(assert (not b!1524896))

(assert (not b!1524894))

(assert (not b!1524892))

(assert (not b!1524889))

(assert (not b!1524890))

(assert (not start!129992))

(assert (not b!1524898))

(assert (not b!1524901))

(assert (not b!1524897))

(assert (not b!1524893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

