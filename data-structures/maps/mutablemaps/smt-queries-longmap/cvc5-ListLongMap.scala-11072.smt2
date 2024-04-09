; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129310 () Bool)

(assert start!129310)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101079 0))(
  ( (array!101080 (arr!48772 (Array (_ BitVec 32) (_ BitVec 64))) (size!49323 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101079)

(declare-fun e!846843 () Bool)

(declare-fun b!1517872 () Bool)

(declare-datatypes ((SeekEntryResult!12964 0))(
  ( (MissingZero!12964 (index!54250 (_ BitVec 32))) (Found!12964 (index!54251 (_ BitVec 32))) (Intermediate!12964 (undefined!13776 Bool) (index!54252 (_ BitVec 32)) (x!135943 (_ BitVec 32))) (Undefined!12964) (MissingVacant!12964 (index!54253 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101079 (_ BitVec 32)) SeekEntryResult!12964)

(assert (=> b!1517872 (= e!846843 (= (seekEntry!0 (select (arr!48772 a!2804) j!70) a!2804 mask!2512) (Found!12964 j!70)))))

(declare-fun b!1517873 () Bool)

(declare-fun res!1037856 () Bool)

(declare-fun e!846844 () Bool)

(assert (=> b!1517873 (=> (not res!1037856) (not e!846844))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517873 (= res!1037856 (and (= (size!49323 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49323 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49323 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517874 () Bool)

(declare-fun res!1037847 () Bool)

(assert (=> b!1517874 (=> (not res!1037847) (not e!846844))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517874 (= res!1037847 (validKeyInArray!0 (select (arr!48772 a!2804) i!961)))))

(declare-fun res!1037858 () Bool)

(assert (=> start!129310 (=> (not res!1037858) (not e!846844))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129310 (= res!1037858 (validMask!0 mask!2512))))

(assert (=> start!129310 e!846844))

(assert (=> start!129310 true))

(declare-fun array_inv!37717 (array!101079) Bool)

(assert (=> start!129310 (array_inv!37717 a!2804)))

(declare-fun b!1517875 () Bool)

(declare-fun res!1037850 () Bool)

(assert (=> b!1517875 (=> (not res!1037850) (not e!846844))))

(declare-datatypes ((List!35435 0))(
  ( (Nil!35432) (Cons!35431 (h!36844 (_ BitVec 64)) (t!50136 List!35435)) )
))
(declare-fun arrayNoDuplicates!0 (array!101079 (_ BitVec 32) List!35435) Bool)

(assert (=> b!1517875 (= res!1037850 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35432))))

(declare-fun b!1517876 () Bool)

(declare-fun e!846845 () Bool)

(declare-fun e!846840 () Bool)

(assert (=> b!1517876 (= e!846845 (not e!846840))))

(declare-fun res!1037855 () Bool)

(assert (=> b!1517876 (=> res!1037855 e!846840)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517876 (= res!1037855 (or (not (= (select (arr!48772 a!2804) j!70) (select (store (arr!48772 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517876 e!846843))

(declare-fun res!1037851 () Bool)

(assert (=> b!1517876 (=> (not res!1037851) (not e!846843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101079 (_ BitVec 32)) Bool)

(assert (=> b!1517876 (= res!1037851 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50752 0))(
  ( (Unit!50753) )
))
(declare-fun lt!657929 () Unit!50752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50752)

(assert (=> b!1517876 (= lt!657929 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517877 () Bool)

(declare-fun res!1037853 () Bool)

(assert (=> b!1517877 (=> (not res!1037853) (not e!846845))))

(declare-fun lt!657930 () SeekEntryResult!12964)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101079 (_ BitVec 32)) SeekEntryResult!12964)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517877 (= res!1037853 (= lt!657930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48772 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48772 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101080 (store (arr!48772 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49323 a!2804)) mask!2512)))))

(declare-fun b!1517878 () Bool)

(assert (=> b!1517878 (= e!846844 e!846845)))

(declare-fun res!1037857 () Bool)

(assert (=> b!1517878 (=> (not res!1037857) (not e!846845))))

(declare-fun lt!657927 () SeekEntryResult!12964)

(assert (=> b!1517878 (= res!1037857 (= lt!657930 lt!657927))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517878 (= lt!657927 (Intermediate!12964 false resIndex!21 resX!21))))

(assert (=> b!1517878 (= lt!657930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48772 a!2804) j!70) mask!2512) (select (arr!48772 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517879 () Bool)

(declare-fun res!1037854 () Bool)

(assert (=> b!1517879 (=> (not res!1037854) (not e!846845))))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1517879 (= res!1037854 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48772 a!2804) j!70) a!2804 mask!2512) lt!657927))))

(declare-fun b!1517880 () Bool)

(declare-fun res!1037852 () Bool)

(assert (=> b!1517880 (=> (not res!1037852) (not e!846844))))

(assert (=> b!1517880 (= res!1037852 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49323 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49323 a!2804))))))

(declare-fun b!1517881 () Bool)

(declare-fun res!1037849 () Bool)

(assert (=> b!1517881 (=> (not res!1037849) (not e!846844))))

(assert (=> b!1517881 (= res!1037849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517882 () Bool)

(declare-fun e!846842 () Bool)

(assert (=> b!1517882 (= e!846840 e!846842)))

(declare-fun res!1037848 () Bool)

(assert (=> b!1517882 (=> res!1037848 e!846842)))

(declare-fun lt!657928 () (_ BitVec 32))

(assert (=> b!1517882 (= res!1037848 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657928 #b00000000000000000000000000000000) (bvsge lt!657928 (size!49323 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517882 (= lt!657928 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517883 () Bool)

(assert (=> b!1517883 (= e!846842 true)))

(declare-fun lt!657931 () SeekEntryResult!12964)

(assert (=> b!1517883 (= lt!657931 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657928 (select (arr!48772 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517884 () Bool)

(declare-fun res!1037859 () Bool)

(assert (=> b!1517884 (=> (not res!1037859) (not e!846844))))

(assert (=> b!1517884 (= res!1037859 (validKeyInArray!0 (select (arr!48772 a!2804) j!70)))))

(assert (= (and start!129310 res!1037858) b!1517873))

(assert (= (and b!1517873 res!1037856) b!1517874))

(assert (= (and b!1517874 res!1037847) b!1517884))

(assert (= (and b!1517884 res!1037859) b!1517881))

(assert (= (and b!1517881 res!1037849) b!1517875))

(assert (= (and b!1517875 res!1037850) b!1517880))

(assert (= (and b!1517880 res!1037852) b!1517878))

(assert (= (and b!1517878 res!1037857) b!1517879))

(assert (= (and b!1517879 res!1037854) b!1517877))

(assert (= (and b!1517877 res!1037853) b!1517876))

(assert (= (and b!1517876 res!1037851) b!1517872))

(assert (= (and b!1517876 (not res!1037855)) b!1517882))

(assert (= (and b!1517882 (not res!1037848)) b!1517883))

(declare-fun m!1401231 () Bool)

(assert (=> start!129310 m!1401231))

(declare-fun m!1401233 () Bool)

(assert (=> start!129310 m!1401233))

(declare-fun m!1401235 () Bool)

(assert (=> b!1517874 m!1401235))

(assert (=> b!1517874 m!1401235))

(declare-fun m!1401237 () Bool)

(assert (=> b!1517874 m!1401237))

(declare-fun m!1401239 () Bool)

(assert (=> b!1517872 m!1401239))

(assert (=> b!1517872 m!1401239))

(declare-fun m!1401241 () Bool)

(assert (=> b!1517872 m!1401241))

(assert (=> b!1517876 m!1401239))

(declare-fun m!1401243 () Bool)

(assert (=> b!1517876 m!1401243))

(declare-fun m!1401245 () Bool)

(assert (=> b!1517876 m!1401245))

(declare-fun m!1401247 () Bool)

(assert (=> b!1517876 m!1401247))

(declare-fun m!1401249 () Bool)

(assert (=> b!1517876 m!1401249))

(assert (=> b!1517878 m!1401239))

(assert (=> b!1517878 m!1401239))

(declare-fun m!1401251 () Bool)

(assert (=> b!1517878 m!1401251))

(assert (=> b!1517878 m!1401251))

(assert (=> b!1517878 m!1401239))

(declare-fun m!1401253 () Bool)

(assert (=> b!1517878 m!1401253))

(declare-fun m!1401255 () Bool)

(assert (=> b!1517875 m!1401255))

(declare-fun m!1401257 () Bool)

(assert (=> b!1517881 m!1401257))

(assert (=> b!1517883 m!1401239))

(assert (=> b!1517883 m!1401239))

(declare-fun m!1401259 () Bool)

(assert (=> b!1517883 m!1401259))

(declare-fun m!1401261 () Bool)

(assert (=> b!1517882 m!1401261))

(assert (=> b!1517877 m!1401245))

(assert (=> b!1517877 m!1401247))

(assert (=> b!1517877 m!1401247))

(declare-fun m!1401263 () Bool)

(assert (=> b!1517877 m!1401263))

(assert (=> b!1517877 m!1401263))

(assert (=> b!1517877 m!1401247))

(declare-fun m!1401265 () Bool)

(assert (=> b!1517877 m!1401265))

(assert (=> b!1517884 m!1401239))

(assert (=> b!1517884 m!1401239))

(declare-fun m!1401267 () Bool)

(assert (=> b!1517884 m!1401267))

(assert (=> b!1517879 m!1401239))

(assert (=> b!1517879 m!1401239))

(declare-fun m!1401269 () Bool)

(assert (=> b!1517879 m!1401269))

(push 1)

