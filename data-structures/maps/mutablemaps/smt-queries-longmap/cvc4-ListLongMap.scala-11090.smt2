; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129598 () Bool)

(assert start!129598)

(declare-fun res!1040252 () Bool)

(declare-fun e!848372 () Bool)

(assert (=> start!129598 (=> (not res!1040252) (not e!848372))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129598 (= res!1040252 (validMask!0 mask!2512))))

(assert (=> start!129598 e!848372))

(assert (=> start!129598 true))

(declare-datatypes ((array!101200 0))(
  ( (array!101201 (arr!48828 (Array (_ BitVec 32) (_ BitVec 64))) (size!49379 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101200)

(declare-fun array_inv!37773 (array!101200) Bool)

(assert (=> start!129598 (array_inv!37773 a!2804)))

(declare-fun b!1520887 () Bool)

(assert (=> b!1520887 (= e!848372 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lt!659218 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520887 (= lt!659218 (toIndex!0 (select (arr!48828 a!2804) j!70) mask!2512))))

(declare-fun b!1520888 () Bool)

(declare-fun res!1040247 () Bool)

(assert (=> b!1520888 (=> (not res!1040247) (not e!848372))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101200 (_ BitVec 32)) Bool)

(assert (=> b!1520888 (= res!1040247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520889 () Bool)

(declare-fun res!1040248 () Bool)

(assert (=> b!1520889 (=> (not res!1040248) (not e!848372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520889 (= res!1040248 (validKeyInArray!0 (select (arr!48828 a!2804) j!70)))))

(declare-fun b!1520890 () Bool)

(declare-fun res!1040253 () Bool)

(assert (=> b!1520890 (=> (not res!1040253) (not e!848372))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1520890 (= res!1040253 (and (= (size!49379 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49379 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49379 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520891 () Bool)

(declare-fun res!1040251 () Bool)

(assert (=> b!1520891 (=> (not res!1040251) (not e!848372))))

(declare-datatypes ((List!35491 0))(
  ( (Nil!35488) (Cons!35487 (h!36909 (_ BitVec 64)) (t!50192 List!35491)) )
))
(declare-fun arrayNoDuplicates!0 (array!101200 (_ BitVec 32) List!35491) Bool)

(assert (=> b!1520891 (= res!1040251 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35488))))

(declare-fun b!1520892 () Bool)

(declare-fun res!1040250 () Bool)

(assert (=> b!1520892 (=> (not res!1040250) (not e!848372))))

(assert (=> b!1520892 (= res!1040250 (validKeyInArray!0 (select (arr!48828 a!2804) i!961)))))

(declare-fun b!1520893 () Bool)

(declare-fun res!1040249 () Bool)

(assert (=> b!1520893 (=> (not res!1040249) (not e!848372))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1520893 (= res!1040249 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49379 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49379 a!2804))))))

(assert (= (and start!129598 res!1040252) b!1520890))

(assert (= (and b!1520890 res!1040253) b!1520892))

(assert (= (and b!1520892 res!1040250) b!1520889))

(assert (= (and b!1520889 res!1040248) b!1520888))

(assert (= (and b!1520888 res!1040247) b!1520891))

(assert (= (and b!1520891 res!1040251) b!1520893))

(assert (= (and b!1520893 res!1040249) b!1520887))

(declare-fun m!1404065 () Bool)

(assert (=> b!1520892 m!1404065))

(assert (=> b!1520892 m!1404065))

(declare-fun m!1404067 () Bool)

(assert (=> b!1520892 m!1404067))

(declare-fun m!1404069 () Bool)

(assert (=> start!129598 m!1404069))

(declare-fun m!1404071 () Bool)

(assert (=> start!129598 m!1404071))

(declare-fun m!1404073 () Bool)

(assert (=> b!1520888 m!1404073))

(declare-fun m!1404075 () Bool)

(assert (=> b!1520891 m!1404075))

(declare-fun m!1404077 () Bool)

(assert (=> b!1520887 m!1404077))

(assert (=> b!1520887 m!1404077))

(declare-fun m!1404079 () Bool)

(assert (=> b!1520887 m!1404079))

(assert (=> b!1520889 m!1404077))

(assert (=> b!1520889 m!1404077))

(declare-fun m!1404081 () Bool)

(assert (=> b!1520889 m!1404081))

(push 1)

(assert (not b!1520891))

(assert (not b!1520889))

(assert (not b!1520887))

(assert (not b!1520892))

(assert (not b!1520888))

(assert (not start!129598))

(check-sat)

(pop 1)

