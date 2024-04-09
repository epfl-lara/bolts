; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129898 () Bool)

(assert start!129898)

(declare-fun b!1524012 () Bool)

(declare-fun res!1042804 () Bool)

(declare-fun e!849641 () Bool)

(assert (=> b!1524012 (=> (not res!1042804) (not e!849641))))

(declare-datatypes ((array!101364 0))(
  ( (array!101365 (arr!48907 (Array (_ BitVec 32) (_ BitVec 64))) (size!49458 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101364)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524012 (= res!1042804 (validKeyInArray!0 (select (arr!48907 a!2804) i!961)))))

(declare-fun b!1524013 () Bool)

(declare-fun res!1042811 () Bool)

(assert (=> b!1524013 (=> (not res!1042811) (not e!849641))))

(declare-datatypes ((List!35570 0))(
  ( (Nil!35567) (Cons!35566 (h!36994 (_ BitVec 64)) (t!50271 List!35570)) )
))
(declare-fun arrayNoDuplicates!0 (array!101364 (_ BitVec 32) List!35570) Bool)

(assert (=> b!1524013 (= res!1042811 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35567))))

(declare-fun b!1524014 () Bool)

(declare-fun res!1042808 () Bool)

(assert (=> b!1524014 (=> (not res!1042808) (not e!849641))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101364 (_ BitVec 32)) Bool)

(assert (=> b!1524014 (= res!1042808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524015 () Bool)

(declare-fun res!1042807 () Bool)

(assert (=> b!1524015 (=> (not res!1042807) (not e!849641))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1524015 (= res!1042807 (and (= (size!49458 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49458 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49458 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524016 () Bool)

(declare-fun res!1042806 () Bool)

(declare-fun e!849642 () Bool)

(assert (=> b!1524016 (=> (not res!1042806) (not e!849642))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13093 0))(
  ( (MissingZero!13093 (index!54766 (_ BitVec 32))) (Found!13093 (index!54767 (_ BitVec 32))) (Intermediate!13093 (undefined!13905 Bool) (index!54768 (_ BitVec 32)) (x!136468 (_ BitVec 32))) (Undefined!13093) (MissingVacant!13093 (index!54769 (_ BitVec 32))) )
))
(declare-fun lt!660157 () SeekEntryResult!13093)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101364 (_ BitVec 32)) SeekEntryResult!13093)

(assert (=> b!1524016 (= res!1042806 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48907 a!2804) j!70) a!2804 mask!2512) lt!660157))))

(declare-fun b!1524017 () Bool)

(declare-fun res!1042802 () Bool)

(assert (=> b!1524017 (=> (not res!1042802) (not e!849642))))

(declare-fun lt!660156 () SeekEntryResult!13093)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524017 (= res!1042802 (= lt!660156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48907 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48907 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101365 (store (arr!48907 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49458 a!2804)) mask!2512)))))

(declare-fun e!849644 () Bool)

(declare-fun b!1524019 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101364 (_ BitVec 32)) SeekEntryResult!13093)

(assert (=> b!1524019 (= e!849644 (= (seekEntry!0 (select (arr!48907 a!2804) j!70) a!2804 mask!2512) (Found!13093 j!70)))))

(declare-fun b!1524020 () Bool)

(declare-fun res!1042805 () Bool)

(assert (=> b!1524020 (=> (not res!1042805) (not e!849641))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524020 (= res!1042805 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49458 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49458 a!2804))))))

(declare-fun b!1524021 () Bool)

(assert (=> b!1524021 (= e!849641 e!849642)))

(declare-fun res!1042810 () Bool)

(assert (=> b!1524021 (=> (not res!1042810) (not e!849642))))

(assert (=> b!1524021 (= res!1042810 (= lt!660156 lt!660157))))

(assert (=> b!1524021 (= lt!660157 (Intermediate!13093 false resIndex!21 resX!21))))

(assert (=> b!1524021 (= lt!660156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48907 a!2804) j!70) mask!2512) (select (arr!48907 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524022 () Bool)

(declare-fun res!1042812 () Bool)

(assert (=> b!1524022 (=> (not res!1042812) (not e!849641))))

(assert (=> b!1524022 (= res!1042812 (validKeyInArray!0 (select (arr!48907 a!2804) j!70)))))

(declare-fun res!1042803 () Bool)

(assert (=> start!129898 (=> (not res!1042803) (not e!849641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129898 (= res!1042803 (validMask!0 mask!2512))))

(assert (=> start!129898 e!849641))

(assert (=> start!129898 true))

(declare-fun array_inv!37852 (array!101364) Bool)

(assert (=> start!129898 (array_inv!37852 a!2804)))

(declare-fun b!1524018 () Bool)

(assert (=> b!1524018 (= e!849642 (not true))))

(assert (=> b!1524018 e!849644))

(declare-fun res!1042809 () Bool)

(assert (=> b!1524018 (=> (not res!1042809) (not e!849644))))

(assert (=> b!1524018 (= res!1042809 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50926 0))(
  ( (Unit!50927) )
))
(declare-fun lt!660155 () Unit!50926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50926)

(assert (=> b!1524018 (= lt!660155 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129898 res!1042803) b!1524015))

(assert (= (and b!1524015 res!1042807) b!1524012))

(assert (= (and b!1524012 res!1042804) b!1524022))

(assert (= (and b!1524022 res!1042812) b!1524014))

(assert (= (and b!1524014 res!1042808) b!1524013))

(assert (= (and b!1524013 res!1042811) b!1524020))

(assert (= (and b!1524020 res!1042805) b!1524021))

(assert (= (and b!1524021 res!1042810) b!1524016))

(assert (= (and b!1524016 res!1042806) b!1524017))

(assert (= (and b!1524017 res!1042802) b!1524018))

(assert (= (and b!1524018 res!1042809) b!1524019))

(declare-fun m!1407081 () Bool)

(assert (=> b!1524013 m!1407081))

(declare-fun m!1407083 () Bool)

(assert (=> b!1524018 m!1407083))

(declare-fun m!1407085 () Bool)

(assert (=> b!1524018 m!1407085))

(declare-fun m!1407087 () Bool)

(assert (=> b!1524022 m!1407087))

(assert (=> b!1524022 m!1407087))

(declare-fun m!1407089 () Bool)

(assert (=> b!1524022 m!1407089))

(assert (=> b!1524019 m!1407087))

(assert (=> b!1524019 m!1407087))

(declare-fun m!1407091 () Bool)

(assert (=> b!1524019 m!1407091))

(declare-fun m!1407093 () Bool)

(assert (=> start!129898 m!1407093))

(declare-fun m!1407095 () Bool)

(assert (=> start!129898 m!1407095))

(declare-fun m!1407097 () Bool)

(assert (=> b!1524014 m!1407097))

(declare-fun m!1407099 () Bool)

(assert (=> b!1524012 m!1407099))

(assert (=> b!1524012 m!1407099))

(declare-fun m!1407101 () Bool)

(assert (=> b!1524012 m!1407101))

(declare-fun m!1407103 () Bool)

(assert (=> b!1524017 m!1407103))

(declare-fun m!1407105 () Bool)

(assert (=> b!1524017 m!1407105))

(assert (=> b!1524017 m!1407105))

(declare-fun m!1407107 () Bool)

(assert (=> b!1524017 m!1407107))

(assert (=> b!1524017 m!1407107))

(assert (=> b!1524017 m!1407105))

(declare-fun m!1407109 () Bool)

(assert (=> b!1524017 m!1407109))

(assert (=> b!1524016 m!1407087))

(assert (=> b!1524016 m!1407087))

(declare-fun m!1407111 () Bool)

(assert (=> b!1524016 m!1407111))

(assert (=> b!1524021 m!1407087))

(assert (=> b!1524021 m!1407087))

(declare-fun m!1407113 () Bool)

(assert (=> b!1524021 m!1407113))

(assert (=> b!1524021 m!1407113))

(assert (=> b!1524021 m!1407087))

(declare-fun m!1407115 () Bool)

(assert (=> b!1524021 m!1407115))

(push 1)

