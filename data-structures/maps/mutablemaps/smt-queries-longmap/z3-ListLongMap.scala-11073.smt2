; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129318 () Bool)

(assert start!129318)

(declare-fun b!1518028 () Bool)

(declare-fun res!1038015 () Bool)

(declare-fun e!846916 () Bool)

(assert (=> b!1518028 (=> (not res!1038015) (not e!846916))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101087 0))(
  ( (array!101088 (arr!48776 (Array (_ BitVec 32) (_ BitVec 64))) (size!49327 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101087)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1518028 (= res!1038015 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49327 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49327 a!2804))))))

(declare-fun b!1518029 () Bool)

(declare-fun e!846917 () Bool)

(assert (=> b!1518029 (= e!846916 e!846917)))

(declare-fun res!1038008 () Bool)

(assert (=> b!1518029 (=> (not res!1038008) (not e!846917))))

(declare-datatypes ((SeekEntryResult!12968 0))(
  ( (MissingZero!12968 (index!54266 (_ BitVec 32))) (Found!12968 (index!54267 (_ BitVec 32))) (Intermediate!12968 (undefined!13780 Bool) (index!54268 (_ BitVec 32)) (x!135955 (_ BitVec 32))) (Undefined!12968) (MissingVacant!12968 (index!54269 (_ BitVec 32))) )
))
(declare-fun lt!657989 () SeekEntryResult!12968)

(declare-fun lt!657988 () SeekEntryResult!12968)

(assert (=> b!1518029 (= res!1038008 (= lt!657989 lt!657988))))

(assert (=> b!1518029 (= lt!657988 (Intermediate!12968 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101087 (_ BitVec 32)) SeekEntryResult!12968)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518029 (= lt!657989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48776 a!2804) j!70) mask!2512) (select (arr!48776 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518030 () Bool)

(declare-fun e!846913 () Bool)

(assert (=> b!1518030 (= e!846917 (not e!846913))))

(declare-fun res!1038007 () Bool)

(assert (=> b!1518030 (=> res!1038007 e!846913)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1518030 (= res!1038007 (or (not (= (select (arr!48776 a!2804) j!70) (select (store (arr!48776 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846912 () Bool)

(assert (=> b!1518030 e!846912))

(declare-fun res!1038014 () Bool)

(assert (=> b!1518030 (=> (not res!1038014) (not e!846912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101087 (_ BitVec 32)) Bool)

(assert (=> b!1518030 (= res!1038014 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50760 0))(
  ( (Unit!50761) )
))
(declare-fun lt!657990 () Unit!50760)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50760)

(assert (=> b!1518030 (= lt!657990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518032 () Bool)

(declare-fun e!846914 () Bool)

(assert (=> b!1518032 (= e!846914 true)))

(declare-fun lt!657991 () SeekEntryResult!12968)

(declare-fun lt!657987 () (_ BitVec 32))

(assert (=> b!1518032 (= lt!657991 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657987 (select (arr!48776 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518033 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101087 (_ BitVec 32)) SeekEntryResult!12968)

(assert (=> b!1518033 (= e!846912 (= (seekEntry!0 (select (arr!48776 a!2804) j!70) a!2804 mask!2512) (Found!12968 j!70)))))

(declare-fun b!1518034 () Bool)

(declare-fun res!1038011 () Bool)

(assert (=> b!1518034 (=> (not res!1038011) (not e!846917))))

(assert (=> b!1518034 (= res!1038011 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48776 a!2804) j!70) a!2804 mask!2512) lt!657988))))

(declare-fun b!1518035 () Bool)

(declare-fun res!1038003 () Bool)

(assert (=> b!1518035 (=> (not res!1038003) (not e!846916))))

(assert (=> b!1518035 (= res!1038003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518036 () Bool)

(assert (=> b!1518036 (= e!846913 e!846914)))

(declare-fun res!1038004 () Bool)

(assert (=> b!1518036 (=> res!1038004 e!846914)))

(assert (=> b!1518036 (= res!1038004 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657987 #b00000000000000000000000000000000) (bvsge lt!657987 (size!49327 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518036 (= lt!657987 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518037 () Bool)

(declare-fun res!1038013 () Bool)

(assert (=> b!1518037 (=> (not res!1038013) (not e!846916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518037 (= res!1038013 (validKeyInArray!0 (select (arr!48776 a!2804) j!70)))))

(declare-fun b!1518038 () Bool)

(declare-fun res!1038005 () Bool)

(assert (=> b!1518038 (=> (not res!1038005) (not e!846916))))

(assert (=> b!1518038 (= res!1038005 (validKeyInArray!0 (select (arr!48776 a!2804) i!961)))))

(declare-fun b!1518031 () Bool)

(declare-fun res!1038012 () Bool)

(assert (=> b!1518031 (=> (not res!1038012) (not e!846916))))

(assert (=> b!1518031 (= res!1038012 (and (= (size!49327 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49327 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49327 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1038009 () Bool)

(assert (=> start!129318 (=> (not res!1038009) (not e!846916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129318 (= res!1038009 (validMask!0 mask!2512))))

(assert (=> start!129318 e!846916))

(assert (=> start!129318 true))

(declare-fun array_inv!37721 (array!101087) Bool)

(assert (=> start!129318 (array_inv!37721 a!2804)))

(declare-fun b!1518039 () Bool)

(declare-fun res!1038010 () Bool)

(assert (=> b!1518039 (=> (not res!1038010) (not e!846916))))

(declare-datatypes ((List!35439 0))(
  ( (Nil!35436) (Cons!35435 (h!36848 (_ BitVec 64)) (t!50140 List!35439)) )
))
(declare-fun arrayNoDuplicates!0 (array!101087 (_ BitVec 32) List!35439) Bool)

(assert (=> b!1518039 (= res!1038010 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35436))))

(declare-fun b!1518040 () Bool)

(declare-fun res!1038006 () Bool)

(assert (=> b!1518040 (=> (not res!1038006) (not e!846917))))

(assert (=> b!1518040 (= res!1038006 (= lt!657989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48776 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48776 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101088 (store (arr!48776 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49327 a!2804)) mask!2512)))))

(assert (= (and start!129318 res!1038009) b!1518031))

(assert (= (and b!1518031 res!1038012) b!1518038))

(assert (= (and b!1518038 res!1038005) b!1518037))

(assert (= (and b!1518037 res!1038013) b!1518035))

(assert (= (and b!1518035 res!1038003) b!1518039))

(assert (= (and b!1518039 res!1038010) b!1518028))

(assert (= (and b!1518028 res!1038015) b!1518029))

(assert (= (and b!1518029 res!1038008) b!1518034))

(assert (= (and b!1518034 res!1038011) b!1518040))

(assert (= (and b!1518040 res!1038006) b!1518030))

(assert (= (and b!1518030 res!1038014) b!1518033))

(assert (= (and b!1518030 (not res!1038007)) b!1518036))

(assert (= (and b!1518036 (not res!1038004)) b!1518032))

(declare-fun m!1401391 () Bool)

(assert (=> b!1518038 m!1401391))

(assert (=> b!1518038 m!1401391))

(declare-fun m!1401393 () Bool)

(assert (=> b!1518038 m!1401393))

(declare-fun m!1401395 () Bool)

(assert (=> b!1518040 m!1401395))

(declare-fun m!1401397 () Bool)

(assert (=> b!1518040 m!1401397))

(assert (=> b!1518040 m!1401397))

(declare-fun m!1401399 () Bool)

(assert (=> b!1518040 m!1401399))

(assert (=> b!1518040 m!1401399))

(assert (=> b!1518040 m!1401397))

(declare-fun m!1401401 () Bool)

(assert (=> b!1518040 m!1401401))

(declare-fun m!1401403 () Bool)

(assert (=> start!129318 m!1401403))

(declare-fun m!1401405 () Bool)

(assert (=> start!129318 m!1401405))

(declare-fun m!1401407 () Bool)

(assert (=> b!1518029 m!1401407))

(assert (=> b!1518029 m!1401407))

(declare-fun m!1401409 () Bool)

(assert (=> b!1518029 m!1401409))

(assert (=> b!1518029 m!1401409))

(assert (=> b!1518029 m!1401407))

(declare-fun m!1401411 () Bool)

(assert (=> b!1518029 m!1401411))

(declare-fun m!1401413 () Bool)

(assert (=> b!1518035 m!1401413))

(assert (=> b!1518037 m!1401407))

(assert (=> b!1518037 m!1401407))

(declare-fun m!1401415 () Bool)

(assert (=> b!1518037 m!1401415))

(assert (=> b!1518032 m!1401407))

(assert (=> b!1518032 m!1401407))

(declare-fun m!1401417 () Bool)

(assert (=> b!1518032 m!1401417))

(declare-fun m!1401419 () Bool)

(assert (=> b!1518036 m!1401419))

(assert (=> b!1518034 m!1401407))

(assert (=> b!1518034 m!1401407))

(declare-fun m!1401421 () Bool)

(assert (=> b!1518034 m!1401421))

(declare-fun m!1401423 () Bool)

(assert (=> b!1518039 m!1401423))

(assert (=> b!1518033 m!1401407))

(assert (=> b!1518033 m!1401407))

(declare-fun m!1401425 () Bool)

(assert (=> b!1518033 m!1401425))

(assert (=> b!1518030 m!1401407))

(declare-fun m!1401427 () Bool)

(assert (=> b!1518030 m!1401427))

(assert (=> b!1518030 m!1401395))

(assert (=> b!1518030 m!1401397))

(declare-fun m!1401429 () Bool)

(assert (=> b!1518030 m!1401429))

(check-sat (not b!1518029) (not b!1518034) (not start!129318) (not b!1518032) (not b!1518040) (not b!1518038) (not b!1518037) (not b!1518033) (not b!1518039) (not b!1518036) (not b!1518035) (not b!1518030))
(check-sat)
