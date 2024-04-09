; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128822 () Bool)

(assert start!128822)

(declare-fun b!1508872 () Bool)

(declare-fun res!1028850 () Bool)

(declare-fun e!842936 () Bool)

(assert (=> b!1508872 (=> (not res!1028850) (not e!842936))))

(declare-datatypes ((array!100591 0))(
  ( (array!100592 (arr!48528 (Array (_ BitVec 32) (_ BitVec 64))) (size!49079 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100591)

(declare-datatypes ((List!35191 0))(
  ( (Nil!35188) (Cons!35187 (h!36600 (_ BitVec 64)) (t!49892 List!35191)) )
))
(declare-fun arrayNoDuplicates!0 (array!100591 (_ BitVec 32) List!35191) Bool)

(assert (=> b!1508872 (= res!1028850 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35188))))

(declare-fun b!1508873 () Bool)

(declare-fun e!842937 () Bool)

(assert (=> b!1508873 (= e!842936 e!842937)))

(declare-fun res!1028856 () Bool)

(assert (=> b!1508873 (=> (not res!1028856) (not e!842937))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12720 0))(
  ( (MissingZero!12720 (index!53274 (_ BitVec 32))) (Found!12720 (index!53275 (_ BitVec 32))) (Intermediate!12720 (undefined!13532 Bool) (index!53276 (_ BitVec 32)) (x!135043 (_ BitVec 32))) (Undefined!12720) (MissingVacant!12720 (index!53277 (_ BitVec 32))) )
))
(declare-fun lt!654729 () SeekEntryResult!12720)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100591 (_ BitVec 32)) SeekEntryResult!12720)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508873 (= res!1028856 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48528 a!2804) j!70) mask!2512) (select (arr!48528 a!2804) j!70) a!2804 mask!2512) lt!654729))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508873 (= lt!654729 (Intermediate!12720 false resIndex!21 resX!21))))

(declare-fun b!1508874 () Bool)

(declare-fun res!1028852 () Bool)

(assert (=> b!1508874 (=> (not res!1028852) (not e!842936))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508874 (= res!1028852 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49079 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49079 a!2804))))))

(declare-fun b!1508875 () Bool)

(declare-fun res!1028847 () Bool)

(assert (=> b!1508875 (=> (not res!1028847) (not e!842936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508875 (= res!1028847 (validKeyInArray!0 (select (arr!48528 a!2804) j!70)))))

(declare-fun b!1508876 () Bool)

(declare-fun res!1028851 () Bool)

(assert (=> b!1508876 (=> (not res!1028851) (not e!842936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100591 (_ BitVec 32)) Bool)

(assert (=> b!1508876 (= res!1028851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508877 () Bool)

(declare-fun e!842938 () Bool)

(assert (=> b!1508877 (= e!842937 e!842938)))

(declare-fun res!1028848 () Bool)

(assert (=> b!1508877 (=> (not res!1028848) (not e!842938))))

(declare-fun lt!654730 () (_ BitVec 32))

(assert (=> b!1508877 (= res!1028848 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsge lt!654730 #b00000000000000000000000000000000) (bvslt lt!654730 (bvadd #b00000000000000000000000000000001 mask!2512))))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1508877 (= lt!654730 (toIndex!0 (select (store (arr!48528 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512))))

(declare-fun b!1508878 () Bool)

(declare-fun res!1028849 () Bool)

(assert (=> b!1508878 (=> (not res!1028849) (not e!842937))))

(assert (=> b!1508878 (= res!1028849 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48528 a!2804) j!70) a!2804 mask!2512) lt!654729))))

(declare-fun b!1508879 () Bool)

(assert (=> b!1508879 (= e!842938 (not (validKeyInArray!0 (select (store (arr!48528 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))))

(declare-fun b!1508881 () Bool)

(declare-fun res!1028854 () Bool)

(assert (=> b!1508881 (=> (not res!1028854) (not e!842936))))

(assert (=> b!1508881 (= res!1028854 (validKeyInArray!0 (select (arr!48528 a!2804) i!961)))))

(declare-fun res!1028853 () Bool)

(assert (=> start!128822 (=> (not res!1028853) (not e!842936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128822 (= res!1028853 (validMask!0 mask!2512))))

(assert (=> start!128822 e!842936))

(assert (=> start!128822 true))

(declare-fun array_inv!37473 (array!100591) Bool)

(assert (=> start!128822 (array_inv!37473 a!2804)))

(declare-fun b!1508880 () Bool)

(declare-fun res!1028855 () Bool)

(assert (=> b!1508880 (=> (not res!1028855) (not e!842936))))

(assert (=> b!1508880 (= res!1028855 (and (= (size!49079 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49079 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49079 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128822 res!1028853) b!1508880))

(assert (= (and b!1508880 res!1028855) b!1508881))

(assert (= (and b!1508881 res!1028854) b!1508875))

(assert (= (and b!1508875 res!1028847) b!1508876))

(assert (= (and b!1508876 res!1028851) b!1508872))

(assert (= (and b!1508872 res!1028850) b!1508874))

(assert (= (and b!1508874 res!1028852) b!1508873))

(assert (= (and b!1508873 res!1028856) b!1508878))

(assert (= (and b!1508878 res!1028849) b!1508877))

(assert (= (and b!1508877 res!1028848) b!1508879))

(declare-fun m!1391349 () Bool)

(assert (=> start!128822 m!1391349))

(declare-fun m!1391351 () Bool)

(assert (=> start!128822 m!1391351))

(declare-fun m!1391353 () Bool)

(assert (=> b!1508872 m!1391353))

(declare-fun m!1391355 () Bool)

(assert (=> b!1508879 m!1391355))

(declare-fun m!1391357 () Bool)

(assert (=> b!1508879 m!1391357))

(assert (=> b!1508879 m!1391357))

(declare-fun m!1391359 () Bool)

(assert (=> b!1508879 m!1391359))

(declare-fun m!1391361 () Bool)

(assert (=> b!1508881 m!1391361))

(assert (=> b!1508881 m!1391361))

(declare-fun m!1391363 () Bool)

(assert (=> b!1508881 m!1391363))

(declare-fun m!1391365 () Bool)

(assert (=> b!1508875 m!1391365))

(assert (=> b!1508875 m!1391365))

(declare-fun m!1391367 () Bool)

(assert (=> b!1508875 m!1391367))

(assert (=> b!1508873 m!1391365))

(assert (=> b!1508873 m!1391365))

(declare-fun m!1391369 () Bool)

(assert (=> b!1508873 m!1391369))

(assert (=> b!1508873 m!1391369))

(assert (=> b!1508873 m!1391365))

(declare-fun m!1391371 () Bool)

(assert (=> b!1508873 m!1391371))

(declare-fun m!1391373 () Bool)

(assert (=> b!1508876 m!1391373))

(assert (=> b!1508878 m!1391365))

(assert (=> b!1508878 m!1391365))

(declare-fun m!1391375 () Bool)

(assert (=> b!1508878 m!1391375))

(assert (=> b!1508877 m!1391355))

(assert (=> b!1508877 m!1391357))

(assert (=> b!1508877 m!1391357))

(declare-fun m!1391377 () Bool)

(assert (=> b!1508877 m!1391377))

(push 1)

(assert (not b!1508881))

(assert (not b!1508879))

(assert (not b!1508873))

(assert (not b!1508876))

(assert (not b!1508878))

(assert (not b!1508877))

(assert (not start!128822))

(assert (not b!1508875))

(assert (not b!1508872))

