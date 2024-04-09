; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129678 () Bool)

(assert start!129678)

(declare-fun b!1521920 () Bool)

(declare-fun res!1041284 () Bool)

(declare-fun e!848676 () Bool)

(assert (=> b!1521920 (=> (not res!1041284) (not e!848676))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101280 0))(
  ( (array!101281 (arr!48868 (Array (_ BitVec 32) (_ BitVec 64))) (size!49419 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101280)

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1521920 (= res!1041284 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49419 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49419 a!2804))))))

(declare-fun b!1521921 () Bool)

(declare-fun res!1041288 () Bool)

(assert (=> b!1521921 (=> (not res!1041288) (not e!848676))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101280 (_ BitVec 32)) Bool)

(assert (=> b!1521921 (= res!1041288 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521922 () Bool)

(declare-fun e!848678 () Bool)

(assert (=> b!1521922 (= e!848676 e!848678)))

(declare-fun res!1041280 () Bool)

(assert (=> b!1521922 (=> (not res!1041280) (not e!848678))))

(declare-datatypes ((SeekEntryResult!13054 0))(
  ( (MissingZero!13054 (index!54610 (_ BitVec 32))) (Found!13054 (index!54611 (_ BitVec 32))) (Intermediate!13054 (undefined!13866 Bool) (index!54612 (_ BitVec 32)) (x!136309 (_ BitVec 32))) (Undefined!13054) (MissingVacant!13054 (index!54613 (_ BitVec 32))) )
))
(declare-fun lt!659403 () SeekEntryResult!13054)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101280 (_ BitVec 32)) SeekEntryResult!13054)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521922 (= res!1041280 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48868 a!2804) j!70) mask!2512) (select (arr!48868 a!2804) j!70) a!2804 mask!2512) lt!659403))))

(assert (=> b!1521922 (= lt!659403 (Intermediate!13054 false resIndex!21 resX!21))))

(declare-fun b!1521923 () Bool)

(assert (=> b!1521923 (= e!848678 false)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!659404 () SeekEntryResult!13054)

(assert (=> b!1521923 (= lt!659404 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48868 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48868 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101281 (store (arr!48868 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49419 a!2804)) mask!2512))))

(declare-fun b!1521924 () Bool)

(declare-fun res!1041283 () Bool)

(assert (=> b!1521924 (=> (not res!1041283) (not e!848676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521924 (= res!1041283 (validKeyInArray!0 (select (arr!48868 a!2804) j!70)))))

(declare-fun b!1521925 () Bool)

(declare-fun res!1041285 () Bool)

(assert (=> b!1521925 (=> (not res!1041285) (not e!848676))))

(declare-datatypes ((List!35531 0))(
  ( (Nil!35528) (Cons!35527 (h!36949 (_ BitVec 64)) (t!50232 List!35531)) )
))
(declare-fun arrayNoDuplicates!0 (array!101280 (_ BitVec 32) List!35531) Bool)

(assert (=> b!1521925 (= res!1041285 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35528))))

(declare-fun res!1041286 () Bool)

(assert (=> start!129678 (=> (not res!1041286) (not e!848676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129678 (= res!1041286 (validMask!0 mask!2512))))

(assert (=> start!129678 e!848676))

(assert (=> start!129678 true))

(declare-fun array_inv!37813 (array!101280) Bool)

(assert (=> start!129678 (array_inv!37813 a!2804)))

(declare-fun b!1521926 () Bool)

(declare-fun res!1041282 () Bool)

(assert (=> b!1521926 (=> (not res!1041282) (not e!848676))))

(assert (=> b!1521926 (= res!1041282 (and (= (size!49419 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49419 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49419 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521927 () Bool)

(declare-fun res!1041287 () Bool)

(assert (=> b!1521927 (=> (not res!1041287) (not e!848678))))

(assert (=> b!1521927 (= res!1041287 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48868 a!2804) j!70) a!2804 mask!2512) lt!659403))))

(declare-fun b!1521928 () Bool)

(declare-fun res!1041281 () Bool)

(assert (=> b!1521928 (=> (not res!1041281) (not e!848676))))

(assert (=> b!1521928 (= res!1041281 (validKeyInArray!0 (select (arr!48868 a!2804) i!961)))))

(assert (= (and start!129678 res!1041286) b!1521926))

(assert (= (and b!1521926 res!1041282) b!1521928))

(assert (= (and b!1521928 res!1041281) b!1521924))

(assert (= (and b!1521924 res!1041283) b!1521921))

(assert (= (and b!1521921 res!1041288) b!1521925))

(assert (= (and b!1521925 res!1041285) b!1521920))

(assert (= (and b!1521920 res!1041284) b!1521922))

(assert (= (and b!1521922 res!1041280) b!1521927))

(assert (= (and b!1521927 res!1041287) b!1521923))

(declare-fun m!1405091 () Bool)

(assert (=> b!1521922 m!1405091))

(assert (=> b!1521922 m!1405091))

(declare-fun m!1405093 () Bool)

(assert (=> b!1521922 m!1405093))

(assert (=> b!1521922 m!1405093))

(assert (=> b!1521922 m!1405091))

(declare-fun m!1405095 () Bool)

(assert (=> b!1521922 m!1405095))

(declare-fun m!1405097 () Bool)

(assert (=> b!1521925 m!1405097))

(declare-fun m!1405099 () Bool)

(assert (=> b!1521921 m!1405099))

(declare-fun m!1405101 () Bool)

(assert (=> start!129678 m!1405101))

(declare-fun m!1405103 () Bool)

(assert (=> start!129678 m!1405103))

(assert (=> b!1521924 m!1405091))

(assert (=> b!1521924 m!1405091))

(declare-fun m!1405105 () Bool)

(assert (=> b!1521924 m!1405105))

(declare-fun m!1405107 () Bool)

(assert (=> b!1521928 m!1405107))

(assert (=> b!1521928 m!1405107))

(declare-fun m!1405109 () Bool)

(assert (=> b!1521928 m!1405109))

(assert (=> b!1521927 m!1405091))

(assert (=> b!1521927 m!1405091))

(declare-fun m!1405111 () Bool)

(assert (=> b!1521927 m!1405111))

(declare-fun m!1405113 () Bool)

(assert (=> b!1521923 m!1405113))

(declare-fun m!1405115 () Bool)

(assert (=> b!1521923 m!1405115))

(assert (=> b!1521923 m!1405115))

(declare-fun m!1405117 () Bool)

(assert (=> b!1521923 m!1405117))

(assert (=> b!1521923 m!1405117))

(assert (=> b!1521923 m!1405115))

(declare-fun m!1405119 () Bool)

(assert (=> b!1521923 m!1405119))

(push 1)

