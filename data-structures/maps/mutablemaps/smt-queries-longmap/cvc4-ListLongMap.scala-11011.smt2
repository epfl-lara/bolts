; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128948 () Bool)

(assert start!128948)

(declare-fun b!1510842 () Bool)

(declare-fun res!1030825 () Bool)

(declare-fun e!843629 () Bool)

(assert (=> b!1510842 (=> (not res!1030825) (not e!843629))))

(declare-fun i!961 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12783 0))(
  ( (MissingZero!12783 (index!53526 (_ BitVec 32))) (Found!12783 (index!53527 (_ BitVec 32))) (Intermediate!12783 (undefined!13595 Bool) (index!53528 (_ BitVec 32)) (x!135274 (_ BitVec 32))) (Undefined!12783) (MissingVacant!12783 (index!53529 (_ BitVec 32))) )
))
(declare-fun lt!655250 () SeekEntryResult!12783)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100717 0))(
  ( (array!100718 (arr!48591 (Array (_ BitVec 32) (_ BitVec 64))) (size!49142 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100717)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100717 (_ BitVec 32)) SeekEntryResult!12783)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510842 (= res!1030825 (= lt!655250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48591 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48591 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100718 (store (arr!48591 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49142 a!2804)) mask!2512)))))

(declare-fun e!843631 () Bool)

(declare-fun b!1510843 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100717 (_ BitVec 32)) SeekEntryResult!12783)

(assert (=> b!1510843 (= e!843631 (= (seekEntry!0 (select (arr!48591 a!2804) j!70) a!2804 mask!2512) (Found!12783 j!70)))))

(declare-fun b!1510844 () Bool)

(declare-fun res!1030819 () Bool)

(assert (=> b!1510844 (=> (not res!1030819) (not e!843629))))

(declare-fun lt!655251 () SeekEntryResult!12783)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510844 (= res!1030819 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48591 a!2804) j!70) a!2804 mask!2512) lt!655251))))

(declare-fun b!1510845 () Bool)

(declare-fun res!1030824 () Bool)

(declare-fun e!843632 () Bool)

(assert (=> b!1510845 (=> (not res!1030824) (not e!843632))))

(declare-datatypes ((List!35254 0))(
  ( (Nil!35251) (Cons!35250 (h!36663 (_ BitVec 64)) (t!49955 List!35254)) )
))
(declare-fun arrayNoDuplicates!0 (array!100717 (_ BitVec 32) List!35254) Bool)

(assert (=> b!1510845 (= res!1030824 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35251))))

(declare-fun res!1030817 () Bool)

(assert (=> start!128948 (=> (not res!1030817) (not e!843632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128948 (= res!1030817 (validMask!0 mask!2512))))

(assert (=> start!128948 e!843632))

(assert (=> start!128948 true))

(declare-fun array_inv!37536 (array!100717) Bool)

(assert (=> start!128948 (array_inv!37536 a!2804)))

(declare-fun b!1510846 () Bool)

(declare-fun res!1030821 () Bool)

(assert (=> b!1510846 (=> (not res!1030821) (not e!843632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510846 (= res!1030821 (validKeyInArray!0 (select (arr!48591 a!2804) j!70)))))

(declare-fun b!1510847 () Bool)

(assert (=> b!1510847 (= e!843632 e!843629)))

(declare-fun res!1030822 () Bool)

(assert (=> b!1510847 (=> (not res!1030822) (not e!843629))))

(assert (=> b!1510847 (= res!1030822 (= lt!655250 lt!655251))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510847 (= lt!655251 (Intermediate!12783 false resIndex!21 resX!21))))

(assert (=> b!1510847 (= lt!655250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48591 a!2804) j!70) mask!2512) (select (arr!48591 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510848 () Bool)

(declare-fun res!1030818 () Bool)

(assert (=> b!1510848 (=> (not res!1030818) (not e!843632))))

(assert (=> b!1510848 (= res!1030818 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49142 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49142 a!2804))))))

(declare-fun b!1510849 () Bool)

(declare-fun res!1030823 () Bool)

(assert (=> b!1510849 (=> (not res!1030823) (not e!843632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100717 (_ BitVec 32)) Bool)

(assert (=> b!1510849 (= res!1030823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510850 () Bool)

(declare-fun res!1030820 () Bool)

(assert (=> b!1510850 (=> (not res!1030820) (not e!843632))))

(assert (=> b!1510850 (= res!1030820 (and (= (size!49142 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49142 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49142 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510851 () Bool)

(declare-fun res!1030826 () Bool)

(assert (=> b!1510851 (=> (not res!1030826) (not e!843632))))

(assert (=> b!1510851 (= res!1030826 (validKeyInArray!0 (select (arr!48591 a!2804) i!961)))))

(declare-fun b!1510852 () Bool)

(assert (=> b!1510852 (= e!843629 (not true))))

(assert (=> b!1510852 e!843631))

(declare-fun res!1030827 () Bool)

(assert (=> b!1510852 (=> (not res!1030827) (not e!843631))))

(assert (=> b!1510852 (= res!1030827 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50390 0))(
  ( (Unit!50391) )
))
(declare-fun lt!655252 () Unit!50390)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50390)

(assert (=> b!1510852 (= lt!655252 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!128948 res!1030817) b!1510850))

(assert (= (and b!1510850 res!1030820) b!1510851))

(assert (= (and b!1510851 res!1030826) b!1510846))

(assert (= (and b!1510846 res!1030821) b!1510849))

(assert (= (and b!1510849 res!1030823) b!1510845))

(assert (= (and b!1510845 res!1030824) b!1510848))

(assert (= (and b!1510848 res!1030818) b!1510847))

(assert (= (and b!1510847 res!1030822) b!1510844))

(assert (= (and b!1510844 res!1030819) b!1510842))

(assert (= (and b!1510842 res!1030825) b!1510852))

(assert (= (and b!1510852 res!1030827) b!1510843))

(declare-fun m!1393533 () Bool)

(assert (=> start!128948 m!1393533))

(declare-fun m!1393535 () Bool)

(assert (=> start!128948 m!1393535))

(declare-fun m!1393537 () Bool)

(assert (=> b!1510851 m!1393537))

(assert (=> b!1510851 m!1393537))

(declare-fun m!1393539 () Bool)

(assert (=> b!1510851 m!1393539))

(declare-fun m!1393541 () Bool)

(assert (=> b!1510845 m!1393541))

(declare-fun m!1393543 () Bool)

(assert (=> b!1510842 m!1393543))

(declare-fun m!1393545 () Bool)

(assert (=> b!1510842 m!1393545))

(assert (=> b!1510842 m!1393545))

(declare-fun m!1393547 () Bool)

(assert (=> b!1510842 m!1393547))

(assert (=> b!1510842 m!1393547))

(assert (=> b!1510842 m!1393545))

(declare-fun m!1393549 () Bool)

(assert (=> b!1510842 m!1393549))

(declare-fun m!1393551 () Bool)

(assert (=> b!1510852 m!1393551))

(declare-fun m!1393553 () Bool)

(assert (=> b!1510852 m!1393553))

(declare-fun m!1393555 () Bool)

(assert (=> b!1510844 m!1393555))

(assert (=> b!1510844 m!1393555))

(declare-fun m!1393557 () Bool)

(assert (=> b!1510844 m!1393557))

(assert (=> b!1510846 m!1393555))

(assert (=> b!1510846 m!1393555))

(declare-fun m!1393559 () Bool)

(assert (=> b!1510846 m!1393559))

(assert (=> b!1510843 m!1393555))

(assert (=> b!1510843 m!1393555))

(declare-fun m!1393561 () Bool)

(assert (=> b!1510843 m!1393561))

(declare-fun m!1393563 () Bool)

(assert (=> b!1510849 m!1393563))

(assert (=> b!1510847 m!1393555))

(assert (=> b!1510847 m!1393555))

(declare-fun m!1393565 () Bool)

(assert (=> b!1510847 m!1393565))

(assert (=> b!1510847 m!1393565))

(assert (=> b!1510847 m!1393555))

(declare-fun m!1393567 () Bool)

(assert (=> b!1510847 m!1393567))

(push 1)

(assert (not b!1510852))

