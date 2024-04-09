; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128828 () Bool)

(assert start!128828)

(declare-fun b!1508954 () Bool)

(declare-fun res!1028934 () Bool)

(declare-fun e!842964 () Bool)

(assert (=> b!1508954 (=> (not res!1028934) (not e!842964))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100597 0))(
  ( (array!100598 (arr!48531 (Array (_ BitVec 32) (_ BitVec 64))) (size!49082 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100597)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1508954 (= res!1028934 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49082 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49082 a!2804))))))

(declare-fun b!1508955 () Bool)

(declare-fun res!1028933 () Bool)

(assert (=> b!1508955 (=> (not res!1028933) (not e!842964))))

(declare-datatypes ((List!35194 0))(
  ( (Nil!35191) (Cons!35190 (h!36603 (_ BitVec 64)) (t!49895 List!35194)) )
))
(declare-fun arrayNoDuplicates!0 (array!100597 (_ BitVec 32) List!35194) Bool)

(assert (=> b!1508955 (= res!1028933 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35191))))

(declare-fun b!1508956 () Bool)

(declare-fun res!1028937 () Bool)

(assert (=> b!1508956 (=> (not res!1028937) (not e!842964))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1508956 (= res!1028937 (and (= (size!49082 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49082 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49082 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1508957 () Bool)

(declare-fun res!1028935 () Bool)

(assert (=> b!1508957 (=> (not res!1028935) (not e!842964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1508957 (= res!1028935 (validKeyInArray!0 (select (arr!48531 a!2804) j!70)))))

(declare-fun b!1508958 () Bool)

(declare-fun res!1028929 () Bool)

(declare-fun e!842965 () Bool)

(assert (=> b!1508958 (=> (not res!1028929) (not e!842965))))

(declare-datatypes ((SeekEntryResult!12723 0))(
  ( (MissingZero!12723 (index!53286 (_ BitVec 32))) (Found!12723 (index!53287 (_ BitVec 32))) (Intermediate!12723 (undefined!13535 Bool) (index!53288 (_ BitVec 32)) (x!135054 (_ BitVec 32))) (Undefined!12723) (MissingVacant!12723 (index!53289 (_ BitVec 32))) )
))
(declare-fun lt!654747 () SeekEntryResult!12723)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100597 (_ BitVec 32)) SeekEntryResult!12723)

(assert (=> b!1508958 (= res!1028929 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48531 a!2804) j!70) a!2804 mask!2512) lt!654747))))

(declare-fun b!1508959 () Bool)

(declare-fun res!1028936 () Bool)

(assert (=> b!1508959 (=> (not res!1028936) (not e!842964))))

(assert (=> b!1508959 (= res!1028936 (validKeyInArray!0 (select (arr!48531 a!2804) i!961)))))

(declare-fun b!1508960 () Bool)

(assert (=> b!1508960 (= e!842964 e!842965)))

(declare-fun res!1028931 () Bool)

(assert (=> b!1508960 (=> (not res!1028931) (not e!842965))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508960 (= res!1028931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48531 a!2804) j!70) mask!2512) (select (arr!48531 a!2804) j!70) a!2804 mask!2512) lt!654747))))

(assert (=> b!1508960 (= lt!654747 (Intermediate!12723 false resIndex!21 resX!21))))

(declare-fun res!1028930 () Bool)

(assert (=> start!128828 (=> (not res!1028930) (not e!842964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128828 (= res!1028930 (validMask!0 mask!2512))))

(assert (=> start!128828 e!842964))

(assert (=> start!128828 true))

(declare-fun array_inv!37476 (array!100597) Bool)

(assert (=> start!128828 (array_inv!37476 a!2804)))

(declare-fun b!1508961 () Bool)

(assert (=> b!1508961 (= e!842965 false)))

(declare-fun lt!654748 () SeekEntryResult!12723)

(assert (=> b!1508961 (= lt!654748 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48531 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48531 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100598 (store (arr!48531 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49082 a!2804)) mask!2512))))

(declare-fun b!1508962 () Bool)

(declare-fun res!1028932 () Bool)

(assert (=> b!1508962 (=> (not res!1028932) (not e!842964))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100597 (_ BitVec 32)) Bool)

(assert (=> b!1508962 (= res!1028932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128828 res!1028930) b!1508956))

(assert (= (and b!1508956 res!1028937) b!1508959))

(assert (= (and b!1508959 res!1028936) b!1508957))

(assert (= (and b!1508957 res!1028935) b!1508962))

(assert (= (and b!1508962 res!1028932) b!1508955))

(assert (= (and b!1508955 res!1028933) b!1508954))

(assert (= (and b!1508954 res!1028934) b!1508960))

(assert (= (and b!1508960 res!1028931) b!1508958))

(assert (= (and b!1508958 res!1028929) b!1508961))

(declare-fun m!1391439 () Bool)

(assert (=> b!1508957 m!1391439))

(assert (=> b!1508957 m!1391439))

(declare-fun m!1391441 () Bool)

(assert (=> b!1508957 m!1391441))

(declare-fun m!1391443 () Bool)

(assert (=> b!1508961 m!1391443))

(declare-fun m!1391445 () Bool)

(assert (=> b!1508961 m!1391445))

(assert (=> b!1508961 m!1391445))

(declare-fun m!1391447 () Bool)

(assert (=> b!1508961 m!1391447))

(assert (=> b!1508961 m!1391447))

(assert (=> b!1508961 m!1391445))

(declare-fun m!1391449 () Bool)

(assert (=> b!1508961 m!1391449))

(declare-fun m!1391451 () Bool)

(assert (=> start!128828 m!1391451))

(declare-fun m!1391453 () Bool)

(assert (=> start!128828 m!1391453))

(assert (=> b!1508960 m!1391439))

(assert (=> b!1508960 m!1391439))

(declare-fun m!1391455 () Bool)

(assert (=> b!1508960 m!1391455))

(assert (=> b!1508960 m!1391455))

(assert (=> b!1508960 m!1391439))

(declare-fun m!1391457 () Bool)

(assert (=> b!1508960 m!1391457))

(declare-fun m!1391459 () Bool)

(assert (=> b!1508959 m!1391459))

(assert (=> b!1508959 m!1391459))

(declare-fun m!1391461 () Bool)

(assert (=> b!1508959 m!1391461))

(declare-fun m!1391463 () Bool)

(assert (=> b!1508962 m!1391463))

(assert (=> b!1508958 m!1391439))

(assert (=> b!1508958 m!1391439))

(declare-fun m!1391465 () Bool)

(assert (=> b!1508958 m!1391465))

(declare-fun m!1391467 () Bool)

(assert (=> b!1508955 m!1391467))

(push 1)

(assert (not b!1508955))

(assert (not start!128828))

(assert (not b!1508961))

(assert (not b!1508962))

(assert (not b!1508958))

(assert (not b!1508960))

