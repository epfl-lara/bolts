; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128832 () Bool)

(assert start!128832)

(declare-fun b!1509008 () Bool)

(declare-fun res!1028986 () Bool)

(declare-fun e!842982 () Bool)

(assert (=> b!1509008 (=> (not res!1028986) (not e!842982))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100601 0))(
  ( (array!100602 (arr!48533 (Array (_ BitVec 32) (_ BitVec 64))) (size!49084 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100601)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509008 (= res!1028986 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49084 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49084 a!2804))))))

(declare-fun b!1509009 () Bool)

(declare-fun res!1028991 () Bool)

(assert (=> b!1509009 (=> (not res!1028991) (not e!842982))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100601 (_ BitVec 32)) Bool)

(assert (=> b!1509009 (= res!1028991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509010 () Bool)

(declare-fun e!842984 () Bool)

(assert (=> b!1509010 (= e!842984 false)))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12725 0))(
  ( (MissingZero!12725 (index!53294 (_ BitVec 32))) (Found!12725 (index!53295 (_ BitVec 32))) (Intermediate!12725 (undefined!13537 Bool) (index!53296 (_ BitVec 32)) (x!135064 (_ BitVec 32))) (Undefined!12725) (MissingVacant!12725 (index!53297 (_ BitVec 32))) )
))
(declare-fun lt!654759 () SeekEntryResult!12725)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100601 (_ BitVec 32)) SeekEntryResult!12725)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509010 (= lt!654759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48533 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48533 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100602 (store (arr!48533 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49084 a!2804)) mask!2512))))

(declare-fun b!1509011 () Bool)

(declare-fun res!1028984 () Bool)

(assert (=> b!1509011 (=> (not res!1028984) (not e!842982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509011 (= res!1028984 (validKeyInArray!0 (select (arr!48533 a!2804) j!70)))))

(declare-fun b!1509012 () Bool)

(declare-fun res!1028989 () Bool)

(assert (=> b!1509012 (=> (not res!1028989) (not e!842982))))

(assert (=> b!1509012 (= res!1028989 (validKeyInArray!0 (select (arr!48533 a!2804) i!961)))))

(declare-fun b!1509013 () Bool)

(declare-fun res!1028985 () Bool)

(assert (=> b!1509013 (=> (not res!1028985) (not e!842982))))

(assert (=> b!1509013 (= res!1028985 (and (= (size!49084 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49084 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49084 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509014 () Bool)

(assert (=> b!1509014 (= e!842982 e!842984)))

(declare-fun res!1028990 () Bool)

(assert (=> b!1509014 (=> (not res!1028990) (not e!842984))))

(declare-fun lt!654760 () SeekEntryResult!12725)

(assert (=> b!1509014 (= res!1028990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48533 a!2804) j!70) mask!2512) (select (arr!48533 a!2804) j!70) a!2804 mask!2512) lt!654760))))

(assert (=> b!1509014 (= lt!654760 (Intermediate!12725 false resIndex!21 resX!21))))

(declare-fun b!1509015 () Bool)

(declare-fun res!1028983 () Bool)

(assert (=> b!1509015 (=> (not res!1028983) (not e!842982))))

(declare-datatypes ((List!35196 0))(
  ( (Nil!35193) (Cons!35192 (h!36605 (_ BitVec 64)) (t!49897 List!35196)) )
))
(declare-fun arrayNoDuplicates!0 (array!100601 (_ BitVec 32) List!35196) Bool)

(assert (=> b!1509015 (= res!1028983 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35193))))

(declare-fun res!1028988 () Bool)

(assert (=> start!128832 (=> (not res!1028988) (not e!842982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128832 (= res!1028988 (validMask!0 mask!2512))))

(assert (=> start!128832 e!842982))

(assert (=> start!128832 true))

(declare-fun array_inv!37478 (array!100601) Bool)

(assert (=> start!128832 (array_inv!37478 a!2804)))

(declare-fun b!1509016 () Bool)

(declare-fun res!1028987 () Bool)

(assert (=> b!1509016 (=> (not res!1028987) (not e!842984))))

(assert (=> b!1509016 (= res!1028987 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48533 a!2804) j!70) a!2804 mask!2512) lt!654760))))

(assert (= (and start!128832 res!1028988) b!1509013))

(assert (= (and b!1509013 res!1028985) b!1509012))

(assert (= (and b!1509012 res!1028989) b!1509011))

(assert (= (and b!1509011 res!1028984) b!1509009))

(assert (= (and b!1509009 res!1028991) b!1509015))

(assert (= (and b!1509015 res!1028983) b!1509008))

(assert (= (and b!1509008 res!1028986) b!1509014))

(assert (= (and b!1509014 res!1028990) b!1509016))

(assert (= (and b!1509016 res!1028987) b!1509010))

(declare-fun m!1391499 () Bool)

(assert (=> b!1509010 m!1391499))

(declare-fun m!1391501 () Bool)

(assert (=> b!1509010 m!1391501))

(assert (=> b!1509010 m!1391501))

(declare-fun m!1391503 () Bool)

(assert (=> b!1509010 m!1391503))

(assert (=> b!1509010 m!1391503))

(assert (=> b!1509010 m!1391501))

(declare-fun m!1391505 () Bool)

(assert (=> b!1509010 m!1391505))

(declare-fun m!1391507 () Bool)

(assert (=> b!1509016 m!1391507))

(assert (=> b!1509016 m!1391507))

(declare-fun m!1391509 () Bool)

(assert (=> b!1509016 m!1391509))

(declare-fun m!1391511 () Bool)

(assert (=> b!1509009 m!1391511))

(declare-fun m!1391513 () Bool)

(assert (=> b!1509015 m!1391513))

(assert (=> b!1509011 m!1391507))

(assert (=> b!1509011 m!1391507))

(declare-fun m!1391515 () Bool)

(assert (=> b!1509011 m!1391515))

(assert (=> b!1509014 m!1391507))

(assert (=> b!1509014 m!1391507))

(declare-fun m!1391517 () Bool)

(assert (=> b!1509014 m!1391517))

(assert (=> b!1509014 m!1391517))

(assert (=> b!1509014 m!1391507))

(declare-fun m!1391519 () Bool)

(assert (=> b!1509014 m!1391519))

(declare-fun m!1391521 () Bool)

(assert (=> b!1509012 m!1391521))

(assert (=> b!1509012 m!1391521))

(declare-fun m!1391523 () Bool)

(assert (=> b!1509012 m!1391523))

(declare-fun m!1391525 () Bool)

(assert (=> start!128832 m!1391525))

(declare-fun m!1391527 () Bool)

(assert (=> start!128832 m!1391527))

(check-sat (not b!1509014) (not b!1509015) (not b!1509016) (not start!128832) (not b!1509010) (not b!1509009) (not b!1509011) (not b!1509012))
(check-sat)
