; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128690 () Bool)

(assert start!128690)

(declare-fun b!1507839 () Bool)

(declare-fun res!1028029 () Bool)

(declare-fun e!842468 () Bool)

(assert (=> b!1507839 (=> (not res!1028029) (not e!842468))))

(declare-datatypes ((array!100537 0))(
  ( (array!100538 (arr!48504 (Array (_ BitVec 32) (_ BitVec 64))) (size!49055 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100537)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507839 (= res!1028029 (validKeyInArray!0 (select (arr!48504 a!2804) i!961)))))

(declare-fun b!1507840 () Bool)

(declare-fun res!1028026 () Bool)

(assert (=> b!1507840 (=> (not res!1028026) (not e!842468))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507840 (= res!1028026 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49055 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49055 a!2804))))))

(declare-fun b!1507841 () Bool)

(declare-fun res!1028028 () Bool)

(assert (=> b!1507841 (=> (not res!1028028) (not e!842468))))

(declare-datatypes ((List!35167 0))(
  ( (Nil!35164) (Cons!35163 (h!36570 (_ BitVec 64)) (t!49868 List!35167)) )
))
(declare-fun arrayNoDuplicates!0 (array!100537 (_ BitVec 32) List!35167) Bool)

(assert (=> b!1507841 (= res!1028028 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35164))))

(declare-fun b!1507842 () Bool)

(declare-fun res!1028024 () Bool)

(assert (=> b!1507842 (=> (not res!1028024) (not e!842468))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1507842 (= res!1028024 (validKeyInArray!0 (select (arr!48504 a!2804) j!70)))))

(declare-fun b!1507843 () Bool)

(assert (=> b!1507843 (= e!842468 false)))

(declare-datatypes ((SeekEntryResult!12696 0))(
  ( (MissingZero!12696 (index!53178 (_ BitVec 32))) (Found!12696 (index!53179 (_ BitVec 32))) (Intermediate!12696 (undefined!13508 Bool) (index!53180 (_ BitVec 32)) (x!134943 (_ BitVec 32))) (Undefined!12696) (MissingVacant!12696 (index!53181 (_ BitVec 32))) )
))
(declare-fun lt!654460 () SeekEntryResult!12696)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100537 (_ BitVec 32)) SeekEntryResult!12696)

(assert (=> b!1507843 (= lt!654460 (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48504 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1507844 () Bool)

(declare-fun res!1028031 () Bool)

(assert (=> b!1507844 (=> (not res!1028031) (not e!842468))))

(assert (=> b!1507844 (= res!1028031 (and (= (size!49055 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49055 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49055 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1028027 () Bool)

(assert (=> start!128690 (=> (not res!1028027) (not e!842468))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128690 (= res!1028027 (validMask!0 mask!2512))))

(assert (=> start!128690 e!842468))

(assert (=> start!128690 true))

(declare-fun array_inv!37449 (array!100537) Bool)

(assert (=> start!128690 (array_inv!37449 a!2804)))

(declare-fun b!1507845 () Bool)

(declare-fun res!1028025 () Bool)

(assert (=> b!1507845 (=> (not res!1028025) (not e!842468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100537 (_ BitVec 32)) Bool)

(assert (=> b!1507845 (= res!1028025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1507846 () Bool)

(declare-fun res!1028030 () Bool)

(assert (=> b!1507846 (=> (not res!1028030) (not e!842468))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507846 (= res!1028030 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48504 a!2804) j!70) mask!2512) (select (arr!48504 a!2804) j!70) a!2804 mask!2512) (Intermediate!12696 false resIndex!21 resX!21)))))

(assert (= (and start!128690 res!1028027) b!1507844))

(assert (= (and b!1507844 res!1028031) b!1507839))

(assert (= (and b!1507839 res!1028029) b!1507842))

(assert (= (and b!1507842 res!1028024) b!1507845))

(assert (= (and b!1507845 res!1028025) b!1507841))

(assert (= (and b!1507841 res!1028028) b!1507840))

(assert (= (and b!1507840 res!1028026) b!1507846))

(assert (= (and b!1507846 res!1028030) b!1507843))

(declare-fun m!1390523 () Bool)

(assert (=> b!1507842 m!1390523))

(assert (=> b!1507842 m!1390523))

(declare-fun m!1390525 () Bool)

(assert (=> b!1507842 m!1390525))

(declare-fun m!1390527 () Bool)

(assert (=> b!1507841 m!1390527))

(assert (=> b!1507846 m!1390523))

(assert (=> b!1507846 m!1390523))

(declare-fun m!1390529 () Bool)

(assert (=> b!1507846 m!1390529))

(assert (=> b!1507846 m!1390529))

(assert (=> b!1507846 m!1390523))

(declare-fun m!1390531 () Bool)

(assert (=> b!1507846 m!1390531))

(declare-fun m!1390533 () Bool)

(assert (=> b!1507845 m!1390533))

(assert (=> b!1507843 m!1390523))

(assert (=> b!1507843 m!1390523))

(declare-fun m!1390535 () Bool)

(assert (=> b!1507843 m!1390535))

(declare-fun m!1390537 () Bool)

(assert (=> b!1507839 m!1390537))

(assert (=> b!1507839 m!1390537))

(declare-fun m!1390539 () Bool)

(assert (=> b!1507839 m!1390539))

(declare-fun m!1390541 () Bool)

(assert (=> start!128690 m!1390541))

(declare-fun m!1390543 () Bool)

(assert (=> start!128690 m!1390543))

(push 1)

(assert (not start!128690))

(assert (not b!1507841))

(assert (not b!1507845))

(assert (not b!1507842))

(assert (not b!1507846))

(assert (not b!1507843))

(assert (not b!1507839))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

