; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129800 () Bool)

(assert start!129800)

(declare-fun b!1523022 () Bool)

(declare-fun res!1042077 () Bool)

(declare-fun e!849185 () Bool)

(assert (=> b!1523022 (=> (not res!1042077) (not e!849185))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101323 0))(
  ( (array!101324 (arr!48888 (Array (_ BitVec 32) (_ BitVec 64))) (size!49439 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101323)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1523022 (= res!1042077 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49439 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49439 a!2804))))))

(declare-fun b!1523023 () Bool)

(declare-fun res!1042072 () Bool)

(assert (=> b!1523023 (=> (not res!1042072) (not e!849185))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523023 (= res!1042072 (validKeyInArray!0 (select (arr!48888 a!2804) i!961)))))

(declare-fun b!1523024 () Bool)

(declare-fun res!1042074 () Bool)

(assert (=> b!1523024 (=> (not res!1042074) (not e!849185))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1523024 (= res!1042074 (validKeyInArray!0 (select (arr!48888 a!2804) j!70)))))

(declare-fun b!1523025 () Bool)

(declare-fun res!1042069 () Bool)

(assert (=> b!1523025 (=> (not res!1042069) (not e!849185))))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1523025 (= res!1042069 (and (= (size!49439 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49439 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49439 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523026 () Bool)

(declare-fun res!1042073 () Bool)

(assert (=> b!1523026 (=> (not res!1042073) (not e!849185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101323 (_ BitVec 32)) Bool)

(assert (=> b!1523026 (= res!1042073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523027 () Bool)

(declare-fun res!1042067 () Bool)

(declare-fun e!849186 () Bool)

(assert (=> b!1523027 (=> (not res!1042067) (not e!849186))))

(declare-datatypes ((SeekEntryResult!13074 0))(
  ( (MissingZero!13074 (index!54690 (_ BitVec 32))) (Found!13074 (index!54691 (_ BitVec 32))) (Intermediate!13074 (undefined!13886 Bool) (index!54692 (_ BitVec 32)) (x!136387 (_ BitVec 32))) (Undefined!13074) (MissingVacant!13074 (index!54693 (_ BitVec 32))) )
))
(declare-fun lt!659797 () SeekEntryResult!13074)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101323 (_ BitVec 32)) SeekEntryResult!13074)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523027 (= res!1042067 (= lt!659797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48888 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48888 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101324 (store (arr!48888 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49439 a!2804)) mask!2512)))))

(declare-fun b!1523028 () Bool)

(assert (=> b!1523028 (= e!849185 e!849186)))

(declare-fun res!1042071 () Bool)

(assert (=> b!1523028 (=> (not res!1042071) (not e!849186))))

(declare-fun lt!659795 () SeekEntryResult!13074)

(assert (=> b!1523028 (= res!1042071 (= lt!659797 lt!659795))))

(assert (=> b!1523028 (= lt!659795 (Intermediate!13074 false resIndex!21 resX!21))))

(assert (=> b!1523028 (= lt!659797 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48888 a!2804) j!70) mask!2512) (select (arr!48888 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1042076 () Bool)

(assert (=> start!129800 (=> (not res!1042076) (not e!849185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129800 (= res!1042076 (validMask!0 mask!2512))))

(assert (=> start!129800 e!849185))

(assert (=> start!129800 true))

(declare-fun array_inv!37833 (array!101323) Bool)

(assert (=> start!129800 (array_inv!37833 a!2804)))

(declare-fun b!1523029 () Bool)

(assert (=> b!1523029 (= e!849186 (not true))))

(declare-fun e!849187 () Bool)

(assert (=> b!1523029 e!849187))

(declare-fun res!1042068 () Bool)

(assert (=> b!1523029 (=> (not res!1042068) (not e!849187))))

(assert (=> b!1523029 (= res!1042068 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50888 0))(
  ( (Unit!50889) )
))
(declare-fun lt!659796 () Unit!50888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50888)

(assert (=> b!1523029 (= lt!659796 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523030 () Bool)

(declare-fun res!1042075 () Bool)

(assert (=> b!1523030 (=> (not res!1042075) (not e!849186))))

(assert (=> b!1523030 (= res!1042075 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48888 a!2804) j!70) a!2804 mask!2512) lt!659795))))

(declare-fun b!1523031 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101323 (_ BitVec 32)) SeekEntryResult!13074)

(assert (=> b!1523031 (= e!849187 (= (seekEntry!0 (select (arr!48888 a!2804) j!70) a!2804 mask!2512) (Found!13074 j!70)))))

(declare-fun b!1523032 () Bool)

(declare-fun res!1042070 () Bool)

(assert (=> b!1523032 (=> (not res!1042070) (not e!849185))))

(declare-datatypes ((List!35551 0))(
  ( (Nil!35548) (Cons!35547 (h!36972 (_ BitVec 64)) (t!50252 List!35551)) )
))
(declare-fun arrayNoDuplicates!0 (array!101323 (_ BitVec 32) List!35551) Bool)

(assert (=> b!1523032 (= res!1042070 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35548))))

(assert (= (and start!129800 res!1042076) b!1523025))

(assert (= (and b!1523025 res!1042069) b!1523023))

(assert (= (and b!1523023 res!1042072) b!1523024))

(assert (= (and b!1523024 res!1042074) b!1523026))

(assert (= (and b!1523026 res!1042073) b!1523032))

(assert (= (and b!1523032 res!1042070) b!1523022))

(assert (= (and b!1523022 res!1042077) b!1523028))

(assert (= (and b!1523028 res!1042071) b!1523030))

(assert (= (and b!1523030 res!1042075) b!1523027))

(assert (= (and b!1523027 res!1042067) b!1523029))

(assert (= (and b!1523029 res!1042068) b!1523031))

(declare-fun m!1406163 () Bool)

(assert (=> b!1523032 m!1406163))

(declare-fun m!1406165 () Bool)

(assert (=> b!1523024 m!1406165))

(assert (=> b!1523024 m!1406165))

(declare-fun m!1406167 () Bool)

(assert (=> b!1523024 m!1406167))

(declare-fun m!1406169 () Bool)

(assert (=> b!1523023 m!1406169))

(assert (=> b!1523023 m!1406169))

(declare-fun m!1406171 () Bool)

(assert (=> b!1523023 m!1406171))

(declare-fun m!1406173 () Bool)

(assert (=> b!1523027 m!1406173))

(declare-fun m!1406175 () Bool)

(assert (=> b!1523027 m!1406175))

(assert (=> b!1523027 m!1406175))

(declare-fun m!1406177 () Bool)

(assert (=> b!1523027 m!1406177))

(assert (=> b!1523027 m!1406177))

(assert (=> b!1523027 m!1406175))

(declare-fun m!1406179 () Bool)

(assert (=> b!1523027 m!1406179))

(declare-fun m!1406181 () Bool)

(assert (=> b!1523026 m!1406181))

(declare-fun m!1406183 () Bool)

(assert (=> b!1523029 m!1406183))

(declare-fun m!1406185 () Bool)

(assert (=> b!1523029 m!1406185))

(assert (=> b!1523028 m!1406165))

(assert (=> b!1523028 m!1406165))

(declare-fun m!1406187 () Bool)

(assert (=> b!1523028 m!1406187))

(assert (=> b!1523028 m!1406187))

(assert (=> b!1523028 m!1406165))

(declare-fun m!1406189 () Bool)

(assert (=> b!1523028 m!1406189))

(assert (=> b!1523030 m!1406165))

(assert (=> b!1523030 m!1406165))

(declare-fun m!1406191 () Bool)

(assert (=> b!1523030 m!1406191))

(declare-fun m!1406193 () Bool)

(assert (=> start!129800 m!1406193))

(declare-fun m!1406195 () Bool)

(assert (=> start!129800 m!1406195))

(assert (=> b!1523031 m!1406165))

(assert (=> b!1523031 m!1406165))

(declare-fun m!1406197 () Bool)

(assert (=> b!1523031 m!1406197))

(push 1)

