; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129588 () Bool)

(assert start!129588)

(declare-fun b!1520796 () Bool)

(declare-fun res!1040156 () Bool)

(declare-fun e!848341 () Bool)

(assert (=> b!1520796 (=> (not res!1040156) (not e!848341))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101190 0))(
  ( (array!101191 (arr!48823 (Array (_ BitVec 32) (_ BitVec 64))) (size!49374 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101190)

(assert (=> b!1520796 (= res!1040156 (and (= (size!49374 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49374 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49374 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1040160 () Bool)

(assert (=> start!129588 (=> (not res!1040160) (not e!848341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129588 (= res!1040160 (validMask!0 mask!2512))))

(assert (=> start!129588 e!848341))

(assert (=> start!129588 true))

(declare-fun array_inv!37768 (array!101190) Bool)

(assert (=> start!129588 (array_inv!37768 a!2804)))

(declare-fun b!1520797 () Bool)

(assert (=> b!1520797 (= e!848341 false)))

(declare-fun lt!659203 () Bool)

(declare-datatypes ((List!35486 0))(
  ( (Nil!35483) (Cons!35482 (h!36904 (_ BitVec 64)) (t!50187 List!35486)) )
))
(declare-fun arrayNoDuplicates!0 (array!101190 (_ BitVec 32) List!35486) Bool)

(assert (=> b!1520797 (= lt!659203 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35483))))

(declare-fun b!1520798 () Bool)

(declare-fun res!1040159 () Bool)

(assert (=> b!1520798 (=> (not res!1040159) (not e!848341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101190 (_ BitVec 32)) Bool)

(assert (=> b!1520798 (= res!1040159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1520799 () Bool)

(declare-fun res!1040157 () Bool)

(assert (=> b!1520799 (=> (not res!1040157) (not e!848341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520799 (= res!1040157 (validKeyInArray!0 (select (arr!48823 a!2804) j!70)))))

(declare-fun b!1520800 () Bool)

(declare-fun res!1040158 () Bool)

(assert (=> b!1520800 (=> (not res!1040158) (not e!848341))))

(assert (=> b!1520800 (= res!1040158 (validKeyInArray!0 (select (arr!48823 a!2804) i!961)))))

(assert (= (and start!129588 res!1040160) b!1520796))

(assert (= (and b!1520796 res!1040156) b!1520800))

(assert (= (and b!1520800 res!1040158) b!1520799))

(assert (= (and b!1520799 res!1040157) b!1520798))

(assert (= (and b!1520798 res!1040159) b!1520797))

(declare-fun m!1403981 () Bool)

(assert (=> start!129588 m!1403981))

(declare-fun m!1403983 () Bool)

(assert (=> start!129588 m!1403983))

(declare-fun m!1403985 () Bool)

(assert (=> b!1520800 m!1403985))

(assert (=> b!1520800 m!1403985))

(declare-fun m!1403987 () Bool)

(assert (=> b!1520800 m!1403987))

(declare-fun m!1403989 () Bool)

(assert (=> b!1520798 m!1403989))

(declare-fun m!1403991 () Bool)

(assert (=> b!1520797 m!1403991))

(declare-fun m!1403993 () Bool)

(assert (=> b!1520799 m!1403993))

(assert (=> b!1520799 m!1403993))

(declare-fun m!1403995 () Bool)

(assert (=> b!1520799 m!1403995))

(push 1)

(assert (not start!129588))

(assert (not b!1520797))

(assert (not b!1520799))

(assert (not b!1520798))

(assert (not b!1520800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

