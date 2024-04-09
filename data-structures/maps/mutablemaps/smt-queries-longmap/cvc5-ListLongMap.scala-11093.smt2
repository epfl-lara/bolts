; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129612 () Bool)

(assert start!129612)

(declare-fun b!1521045 () Bool)

(declare-fun res!1040409 () Bool)

(declare-fun e!848413 () Bool)

(assert (=> b!1521045 (=> (not res!1040409) (not e!848413))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101214 0))(
  ( (array!101215 (arr!48835 (Array (_ BitVec 32) (_ BitVec 64))) (size!49386 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101214)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521045 (= res!1040409 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49386 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49386 a!2804))))))

(declare-fun b!1521046 () Bool)

(declare-fun res!1040407 () Bool)

(assert (=> b!1521046 (=> (not res!1040407) (not e!848413))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101214 (_ BitVec 32)) Bool)

(assert (=> b!1521046 (= res!1040407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1040405 () Bool)

(assert (=> start!129612 (=> (not res!1040405) (not e!848413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129612 (= res!1040405 (validMask!0 mask!2512))))

(assert (=> start!129612 e!848413))

(assert (=> start!129612 true))

(declare-fun array_inv!37780 (array!101214) Bool)

(assert (=> start!129612 (array_inv!37780 a!2804)))

(declare-fun b!1521047 () Bool)

(declare-fun res!1040410 () Bool)

(assert (=> b!1521047 (=> (not res!1040410) (not e!848413))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521047 (= res!1040410 (validKeyInArray!0 (select (arr!48835 a!2804) i!961)))))

(declare-fun b!1521048 () Bool)

(declare-fun res!1040412 () Bool)

(assert (=> b!1521048 (=> (not res!1040412) (not e!848413))))

(declare-datatypes ((List!35498 0))(
  ( (Nil!35495) (Cons!35494 (h!36916 (_ BitVec 64)) (t!50199 List!35498)) )
))
(declare-fun arrayNoDuplicates!0 (array!101214 (_ BitVec 32) List!35498) Bool)

(assert (=> b!1521048 (= res!1040412 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35495))))

(declare-fun b!1521049 () Bool)

(assert (=> b!1521049 (= e!848413 false)))

(declare-datatypes ((SeekEntryResult!13021 0))(
  ( (MissingZero!13021 (index!54478 (_ BitVec 32))) (Found!13021 (index!54479 (_ BitVec 32))) (Intermediate!13021 (undefined!13833 Bool) (index!54480 (_ BitVec 32)) (x!136188 (_ BitVec 32))) (Undefined!13021) (MissingVacant!13021 (index!54481 (_ BitVec 32))) )
))
(declare-fun lt!659239 () SeekEntryResult!13021)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101214 (_ BitVec 32)) SeekEntryResult!13021)

(assert (=> b!1521049 (= lt!659239 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48835 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1521050 () Bool)

(declare-fun res!1040411 () Bool)

(assert (=> b!1521050 (=> (not res!1040411) (not e!848413))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521050 (= res!1040411 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48835 a!2804) j!70) mask!2512) (select (arr!48835 a!2804) j!70) a!2804 mask!2512) (Intermediate!13021 false resIndex!21 resX!21)))))

(declare-fun b!1521051 () Bool)

(declare-fun res!1040406 () Bool)

(assert (=> b!1521051 (=> (not res!1040406) (not e!848413))))

(assert (=> b!1521051 (= res!1040406 (validKeyInArray!0 (select (arr!48835 a!2804) j!70)))))

(declare-fun b!1521052 () Bool)

(declare-fun res!1040408 () Bool)

(assert (=> b!1521052 (=> (not res!1040408) (not e!848413))))

(assert (=> b!1521052 (= res!1040408 (and (= (size!49386 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49386 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49386 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129612 res!1040405) b!1521052))

(assert (= (and b!1521052 res!1040408) b!1521047))

(assert (= (and b!1521047 res!1040410) b!1521051))

(assert (= (and b!1521051 res!1040406) b!1521046))

(assert (= (and b!1521046 res!1040407) b!1521048))

(assert (= (and b!1521048 res!1040412) b!1521045))

(assert (= (and b!1521045 res!1040409) b!1521050))

(assert (= (and b!1521050 res!1040411) b!1521049))

(declare-fun m!1404209 () Bool)

(assert (=> b!1521049 m!1404209))

(assert (=> b!1521049 m!1404209))

(declare-fun m!1404211 () Bool)

(assert (=> b!1521049 m!1404211))

(assert (=> b!1521051 m!1404209))

(assert (=> b!1521051 m!1404209))

(declare-fun m!1404213 () Bool)

(assert (=> b!1521051 m!1404213))

(declare-fun m!1404215 () Bool)

(assert (=> b!1521046 m!1404215))

(declare-fun m!1404217 () Bool)

(assert (=> b!1521047 m!1404217))

(assert (=> b!1521047 m!1404217))

(declare-fun m!1404219 () Bool)

(assert (=> b!1521047 m!1404219))

(assert (=> b!1521050 m!1404209))

(assert (=> b!1521050 m!1404209))

(declare-fun m!1404221 () Bool)

(assert (=> b!1521050 m!1404221))

(assert (=> b!1521050 m!1404221))

(assert (=> b!1521050 m!1404209))

(declare-fun m!1404223 () Bool)

(assert (=> b!1521050 m!1404223))

(declare-fun m!1404225 () Bool)

(assert (=> start!129612 m!1404225))

(declare-fun m!1404227 () Bool)

(assert (=> start!129612 m!1404227))

(declare-fun m!1404229 () Bool)

(assert (=> b!1521048 m!1404229))

(push 1)

(assert (not b!1521050))

(assert (not b!1521049))

(assert (not b!1521051))

(assert (not b!1521048))

(assert (not start!129612))

(assert (not b!1521046))

(assert (not b!1521047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

