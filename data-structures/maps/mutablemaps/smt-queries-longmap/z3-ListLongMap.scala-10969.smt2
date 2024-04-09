; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128526 () Bool)

(assert start!128526)

(declare-fun res!1026895 () Bool)

(declare-fun e!841945 () Bool)

(assert (=> start!128526 (=> (not res!1026895) (not e!841945))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128526 (= res!1026895 (validMask!0 mask!2512))))

(assert (=> start!128526 e!841945))

(assert (=> start!128526 true))

(declare-datatypes ((array!100451 0))(
  ( (array!100452 (arr!48464 (Array (_ BitVec 32) (_ BitVec 64))) (size!49015 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100451)

(declare-fun array_inv!37409 (array!100451) Bool)

(assert (=> start!128526 (array_inv!37409 a!2804)))

(declare-fun b!1506496 () Bool)

(declare-fun res!1026896 () Bool)

(assert (=> b!1506496 (=> (not res!1026896) (not e!841945))))

(declare-datatypes ((List!35127 0))(
  ( (Nil!35124) (Cons!35123 (h!36524 (_ BitVec 64)) (t!49828 List!35127)) )
))
(declare-fun arrayNoDuplicates!0 (array!100451 (_ BitVec 32) List!35127) Bool)

(assert (=> b!1506496 (= res!1026896 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35124))))

(declare-fun b!1506497 () Bool)

(declare-fun res!1026893 () Bool)

(assert (=> b!1506497 (=> (not res!1026893) (not e!841945))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1506497 (= res!1026893 (and (= (size!49015 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49015 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49015 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506498 () Bool)

(declare-fun res!1026891 () Bool)

(assert (=> b!1506498 (=> (not res!1026891) (not e!841945))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506498 (= res!1026891 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49015 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49015 a!2804))))))

(declare-fun b!1506499 () Bool)

(declare-fun res!1026894 () Bool)

(assert (=> b!1506499 (=> (not res!1026894) (not e!841945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506499 (= res!1026894 (validKeyInArray!0 (select (arr!48464 a!2804) i!961)))))

(declare-fun b!1506500 () Bool)

(assert (=> b!1506500 (= e!841945 false)))

(declare-datatypes ((SeekEntryResult!12656 0))(
  ( (MissingZero!12656 (index!53018 (_ BitVec 32))) (Found!12656 (index!53019 (_ BitVec 32))) (Intermediate!12656 (undefined!13468 Bool) (index!53020 (_ BitVec 32)) (x!134787 (_ BitVec 32))) (Undefined!12656) (MissingVacant!12656 (index!53021 (_ BitVec 32))) )
))
(declare-fun lt!654211 () SeekEntryResult!12656)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100451 (_ BitVec 32)) SeekEntryResult!12656)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506500 (= lt!654211 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48464 a!2804) j!70) mask!2512) (select (arr!48464 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506501 () Bool)

(declare-fun res!1026897 () Bool)

(assert (=> b!1506501 (=> (not res!1026897) (not e!841945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100451 (_ BitVec 32)) Bool)

(assert (=> b!1506501 (= res!1026897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506502 () Bool)

(declare-fun res!1026892 () Bool)

(assert (=> b!1506502 (=> (not res!1026892) (not e!841945))))

(assert (=> b!1506502 (= res!1026892 (validKeyInArray!0 (select (arr!48464 a!2804) j!70)))))

(assert (= (and start!128526 res!1026895) b!1506497))

(assert (= (and b!1506497 res!1026893) b!1506499))

(assert (= (and b!1506499 res!1026894) b!1506502))

(assert (= (and b!1506502 res!1026892) b!1506501))

(assert (= (and b!1506501 res!1026897) b!1506496))

(assert (= (and b!1506496 res!1026896) b!1506498))

(assert (= (and b!1506498 res!1026891) b!1506500))

(declare-fun m!1389485 () Bool)

(assert (=> b!1506499 m!1389485))

(assert (=> b!1506499 m!1389485))

(declare-fun m!1389487 () Bool)

(assert (=> b!1506499 m!1389487))

(declare-fun m!1389489 () Bool)

(assert (=> start!128526 m!1389489))

(declare-fun m!1389491 () Bool)

(assert (=> start!128526 m!1389491))

(declare-fun m!1389493 () Bool)

(assert (=> b!1506500 m!1389493))

(assert (=> b!1506500 m!1389493))

(declare-fun m!1389495 () Bool)

(assert (=> b!1506500 m!1389495))

(assert (=> b!1506500 m!1389495))

(assert (=> b!1506500 m!1389493))

(declare-fun m!1389497 () Bool)

(assert (=> b!1506500 m!1389497))

(declare-fun m!1389499 () Bool)

(assert (=> b!1506501 m!1389499))

(declare-fun m!1389501 () Bool)

(assert (=> b!1506496 m!1389501))

(assert (=> b!1506502 m!1389493))

(assert (=> b!1506502 m!1389493))

(declare-fun m!1389503 () Bool)

(assert (=> b!1506502 m!1389503))

(check-sat (not start!128526) (not b!1506501) (not b!1506502) (not b!1506499) (not b!1506500) (not b!1506496))
