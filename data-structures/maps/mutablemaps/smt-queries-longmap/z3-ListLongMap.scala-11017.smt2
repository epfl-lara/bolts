; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128982 () Bool)

(assert start!128982)

(declare-fun res!1031388 () Bool)

(declare-fun e!843834 () Bool)

(assert (=> start!128982 (=> (not res!1031388) (not e!843834))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128982 (= res!1031388 (validMask!0 mask!2512))))

(assert (=> start!128982 e!843834))

(assert (=> start!128982 true))

(declare-datatypes ((array!100751 0))(
  ( (array!100752 (arr!48608 (Array (_ BitVec 32) (_ BitVec 64))) (size!49159 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100751)

(declare-fun array_inv!37553 (array!100751) Bool)

(assert (=> start!128982 (array_inv!37553 a!2804)))

(declare-fun b!1511403 () Bool)

(declare-fun res!1031380 () Bool)

(assert (=> b!1511403 (=> (not res!1031380) (not e!843834))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511403 (= res!1031380 (validKeyInArray!0 (select (arr!48608 a!2804) j!70)))))

(declare-fun b!1511404 () Bool)

(declare-fun res!1031384 () Bool)

(assert (=> b!1511404 (=> (not res!1031384) (not e!843834))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511404 (= res!1031384 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49159 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49159 a!2804))))))

(declare-fun b!1511405 () Bool)

(declare-fun res!1031379 () Bool)

(assert (=> b!1511405 (=> (not res!1031379) (not e!843834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100751 (_ BitVec 32)) Bool)

(assert (=> b!1511405 (= res!1031379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!843835 () Bool)

(declare-fun b!1511406 () Bool)

(declare-datatypes ((SeekEntryResult!12800 0))(
  ( (MissingZero!12800 (index!53594 (_ BitVec 32))) (Found!12800 (index!53595 (_ BitVec 32))) (Intermediate!12800 (undefined!13612 Bool) (index!53596 (_ BitVec 32)) (x!135339 (_ BitVec 32))) (Undefined!12800) (MissingVacant!12800 (index!53597 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100751 (_ BitVec 32)) SeekEntryResult!12800)

(assert (=> b!1511406 (= e!843835 (= (seekEntry!0 (select (arr!48608 a!2804) j!70) a!2804 mask!2512) (Found!12800 j!70)))))

(declare-fun b!1511407 () Bool)

(declare-fun res!1031378 () Bool)

(declare-fun e!843836 () Bool)

(assert (=> b!1511407 (=> (not res!1031378) (not e!843836))))

(declare-fun lt!655405 () SeekEntryResult!12800)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100751 (_ BitVec 32)) SeekEntryResult!12800)

(assert (=> b!1511407 (= res!1031378 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48608 a!2804) j!70) a!2804 mask!2512) lt!655405))))

(declare-fun b!1511408 () Bool)

(assert (=> b!1511408 (= e!843834 e!843836)))

(declare-fun res!1031387 () Bool)

(assert (=> b!1511408 (=> (not res!1031387) (not e!843836))))

(declare-fun lt!655403 () SeekEntryResult!12800)

(assert (=> b!1511408 (= res!1031387 (= lt!655403 lt!655405))))

(assert (=> b!1511408 (= lt!655405 (Intermediate!12800 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511408 (= lt!655403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48608 a!2804) j!70) mask!2512) (select (arr!48608 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511409 () Bool)

(declare-fun res!1031381 () Bool)

(assert (=> b!1511409 (=> (not res!1031381) (not e!843834))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1511409 (= res!1031381 (validKeyInArray!0 (select (arr!48608 a!2804) i!961)))))

(declare-fun b!1511410 () Bool)

(declare-fun res!1031383 () Bool)

(assert (=> b!1511410 (=> (not res!1031383) (not e!843834))))

(assert (=> b!1511410 (= res!1031383 (and (= (size!49159 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49159 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49159 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511411 () Bool)

(declare-fun res!1031386 () Bool)

(assert (=> b!1511411 (=> (not res!1031386) (not e!843836))))

(assert (=> b!1511411 (= res!1031386 (= lt!655403 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48608 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48608 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100752 (store (arr!48608 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49159 a!2804)) mask!2512)))))

(declare-fun b!1511412 () Bool)

(declare-fun res!1031385 () Bool)

(assert (=> b!1511412 (=> (not res!1031385) (not e!843834))))

(declare-datatypes ((List!35271 0))(
  ( (Nil!35268) (Cons!35267 (h!36680 (_ BitVec 64)) (t!49972 List!35271)) )
))
(declare-fun arrayNoDuplicates!0 (array!100751 (_ BitVec 32) List!35271) Bool)

(assert (=> b!1511412 (= res!1031385 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35268))))

(declare-fun b!1511413 () Bool)

(assert (=> b!1511413 (= e!843836 (not true))))

(assert (=> b!1511413 e!843835))

(declare-fun res!1031382 () Bool)

(assert (=> b!1511413 (=> (not res!1031382) (not e!843835))))

(assert (=> b!1511413 (= res!1031382 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50424 0))(
  ( (Unit!50425) )
))
(declare-fun lt!655404 () Unit!50424)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50424)

(assert (=> b!1511413 (= lt!655404 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!128982 res!1031388) b!1511410))

(assert (= (and b!1511410 res!1031383) b!1511409))

(assert (= (and b!1511409 res!1031381) b!1511403))

(assert (= (and b!1511403 res!1031380) b!1511405))

(assert (= (and b!1511405 res!1031379) b!1511412))

(assert (= (and b!1511412 res!1031385) b!1511404))

(assert (= (and b!1511404 res!1031384) b!1511408))

(assert (= (and b!1511408 res!1031387) b!1511407))

(assert (= (and b!1511407 res!1031378) b!1511411))

(assert (= (and b!1511411 res!1031386) b!1511413))

(assert (= (and b!1511413 res!1031382) b!1511406))

(declare-fun m!1394157 () Bool)

(assert (=> b!1511408 m!1394157))

(assert (=> b!1511408 m!1394157))

(declare-fun m!1394159 () Bool)

(assert (=> b!1511408 m!1394159))

(assert (=> b!1511408 m!1394159))

(assert (=> b!1511408 m!1394157))

(declare-fun m!1394161 () Bool)

(assert (=> b!1511408 m!1394161))

(declare-fun m!1394163 () Bool)

(assert (=> b!1511405 m!1394163))

(assert (=> b!1511403 m!1394157))

(assert (=> b!1511403 m!1394157))

(declare-fun m!1394165 () Bool)

(assert (=> b!1511403 m!1394165))

(assert (=> b!1511406 m!1394157))

(assert (=> b!1511406 m!1394157))

(declare-fun m!1394167 () Bool)

(assert (=> b!1511406 m!1394167))

(declare-fun m!1394169 () Bool)

(assert (=> start!128982 m!1394169))

(declare-fun m!1394171 () Bool)

(assert (=> start!128982 m!1394171))

(declare-fun m!1394173 () Bool)

(assert (=> b!1511409 m!1394173))

(assert (=> b!1511409 m!1394173))

(declare-fun m!1394175 () Bool)

(assert (=> b!1511409 m!1394175))

(declare-fun m!1394177 () Bool)

(assert (=> b!1511413 m!1394177))

(declare-fun m!1394179 () Bool)

(assert (=> b!1511413 m!1394179))

(declare-fun m!1394181 () Bool)

(assert (=> b!1511411 m!1394181))

(declare-fun m!1394183 () Bool)

(assert (=> b!1511411 m!1394183))

(assert (=> b!1511411 m!1394183))

(declare-fun m!1394185 () Bool)

(assert (=> b!1511411 m!1394185))

(assert (=> b!1511411 m!1394185))

(assert (=> b!1511411 m!1394183))

(declare-fun m!1394187 () Bool)

(assert (=> b!1511411 m!1394187))

(declare-fun m!1394189 () Bool)

(assert (=> b!1511412 m!1394189))

(assert (=> b!1511407 m!1394157))

(assert (=> b!1511407 m!1394157))

(declare-fun m!1394191 () Bool)

(assert (=> b!1511407 m!1394191))

(check-sat (not b!1511405) (not start!128982) (not b!1511407) (not b!1511406) (not b!1511408) (not b!1511412) (not b!1511411) (not b!1511413) (not b!1511409) (not b!1511403))
(check-sat)
