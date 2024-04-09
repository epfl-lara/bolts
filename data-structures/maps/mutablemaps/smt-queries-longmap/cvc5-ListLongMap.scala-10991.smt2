; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128824 () Bool)

(assert start!128824)

(declare-fun b!1508900 () Bool)

(declare-fun res!1028882 () Bool)

(declare-fun e!842948 () Bool)

(assert (=> b!1508900 (=> (not res!1028882) (not e!842948))))

(declare-datatypes ((array!100593 0))(
  ( (array!100594 (arr!48529 (Array (_ BitVec 32) (_ BitVec 64))) (size!49080 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100593)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100593 (_ BitVec 32)) Bool)

(assert (=> b!1508900 (= res!1028882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1508901 () Bool)

(declare-fun res!1028880 () Bool)

(assert (=> b!1508901 (=> (not res!1028880) (not e!842948))))

(declare-datatypes ((List!35192 0))(
  ( (Nil!35189) (Cons!35188 (h!36601 (_ BitVec 64)) (t!49893 List!35192)) )
))
(declare-fun arrayNoDuplicates!0 (array!100593 (_ BitVec 32) List!35192) Bool)

(assert (=> b!1508901 (= res!1028880 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35189))))

(declare-fun b!1508902 () Bool)

(declare-fun res!1028879 () Bool)

(assert (=> b!1508902 (=> (not res!1028879) (not e!842948))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1508902 (= res!1028879 (and (= (size!49080 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49080 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49080 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508903 () Bool)

(declare-fun res!1028878 () Bool)

(assert (=> b!1508903 (=> (not res!1028878) (not e!842948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508903 (= res!1028878 (validKeyInArray!0 (select (arr!48529 a!2804) j!70)))))

(declare-fun b!1508904 () Bool)

(declare-fun res!1028881 () Bool)

(assert (=> b!1508904 (=> (not res!1028881) (not e!842948))))

(assert (=> b!1508904 (= res!1028881 (validKeyInArray!0 (select (arr!48529 a!2804) i!961)))))

(declare-fun b!1508905 () Bool)

(declare-fun e!842946 () Bool)

(assert (=> b!1508905 (= e!842946 false)))

(declare-datatypes ((SeekEntryResult!12721 0))(
  ( (MissingZero!12721 (index!53278 (_ BitVec 32))) (Found!12721 (index!53279 (_ BitVec 32))) (Intermediate!12721 (undefined!13533 Bool) (index!53280 (_ BitVec 32)) (x!135052 (_ BitVec 32))) (Undefined!12721) (MissingVacant!12721 (index!53281 (_ BitVec 32))) )
))
(declare-fun lt!654736 () SeekEntryResult!12721)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100593 (_ BitVec 32)) SeekEntryResult!12721)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508905 (= lt!654736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48529 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48529 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100594 (store (arr!48529 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49080 a!2804)) mask!2512))))

(declare-fun b!1508907 () Bool)

(assert (=> b!1508907 (= e!842948 e!842946)))

(declare-fun res!1028883 () Bool)

(assert (=> b!1508907 (=> (not res!1028883) (not e!842946))))

(declare-fun lt!654735 () SeekEntryResult!12721)

(assert (=> b!1508907 (= res!1028883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48529 a!2804) j!70) mask!2512) (select (arr!48529 a!2804) j!70) a!2804 mask!2512) lt!654735))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1508907 (= lt!654735 (Intermediate!12721 false resIndex!21 resX!21))))

(declare-fun b!1508908 () Bool)

(declare-fun res!1028876 () Bool)

(assert (=> b!1508908 (=> (not res!1028876) (not e!842946))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1508908 (= res!1028876 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48529 a!2804) j!70) a!2804 mask!2512) lt!654735))))

(declare-fun b!1508906 () Bool)

(declare-fun res!1028875 () Bool)

(assert (=> b!1508906 (=> (not res!1028875) (not e!842948))))

(assert (=> b!1508906 (= res!1028875 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49080 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49080 a!2804))))))

(declare-fun res!1028877 () Bool)

(assert (=> start!128824 (=> (not res!1028877) (not e!842948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128824 (= res!1028877 (validMask!0 mask!2512))))

(assert (=> start!128824 e!842948))

(assert (=> start!128824 true))

(declare-fun array_inv!37474 (array!100593) Bool)

(assert (=> start!128824 (array_inv!37474 a!2804)))

(assert (= (and start!128824 res!1028877) b!1508902))

(assert (= (and b!1508902 res!1028879) b!1508904))

(assert (= (and b!1508904 res!1028881) b!1508903))

(assert (= (and b!1508903 res!1028878) b!1508900))

(assert (= (and b!1508900 res!1028882) b!1508901))

(assert (= (and b!1508901 res!1028880) b!1508906))

(assert (= (and b!1508906 res!1028875) b!1508907))

(assert (= (and b!1508907 res!1028883) b!1508908))

(assert (= (and b!1508908 res!1028876) b!1508905))

(declare-fun m!1391379 () Bool)

(assert (=> b!1508908 m!1391379))

(assert (=> b!1508908 m!1391379))

(declare-fun m!1391381 () Bool)

(assert (=> b!1508908 m!1391381))

(assert (=> b!1508907 m!1391379))

(assert (=> b!1508907 m!1391379))

(declare-fun m!1391383 () Bool)

(assert (=> b!1508907 m!1391383))

(assert (=> b!1508907 m!1391383))

(assert (=> b!1508907 m!1391379))

(declare-fun m!1391385 () Bool)

(assert (=> b!1508907 m!1391385))

(declare-fun m!1391387 () Bool)

(assert (=> b!1508904 m!1391387))

(assert (=> b!1508904 m!1391387))

(declare-fun m!1391389 () Bool)

(assert (=> b!1508904 m!1391389))

(declare-fun m!1391391 () Bool)

(assert (=> b!1508901 m!1391391))

(declare-fun m!1391393 () Bool)

(assert (=> start!128824 m!1391393))

(declare-fun m!1391395 () Bool)

(assert (=> start!128824 m!1391395))

(declare-fun m!1391397 () Bool)

(assert (=> b!1508905 m!1391397))

(declare-fun m!1391399 () Bool)

(assert (=> b!1508905 m!1391399))

(assert (=> b!1508905 m!1391399))

(declare-fun m!1391401 () Bool)

(assert (=> b!1508905 m!1391401))

(assert (=> b!1508905 m!1391401))

(assert (=> b!1508905 m!1391399))

(declare-fun m!1391403 () Bool)

(assert (=> b!1508905 m!1391403))

(assert (=> b!1508903 m!1391379))

(assert (=> b!1508903 m!1391379))

(declare-fun m!1391405 () Bool)

(assert (=> b!1508903 m!1391405))

(declare-fun m!1391407 () Bool)

(assert (=> b!1508900 m!1391407))

(push 1)

