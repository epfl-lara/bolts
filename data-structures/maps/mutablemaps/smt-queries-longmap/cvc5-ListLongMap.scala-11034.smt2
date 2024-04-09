; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129082 () Bool)

(assert start!129082)

(declare-fun res!1033353 () Bool)

(declare-fun e!844664 () Bool)

(assert (=> start!129082 (=> (not res!1033353) (not e!844664))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129082 (= res!1033353 (validMask!0 mask!2512))))

(assert (=> start!129082 e!844664))

(assert (=> start!129082 true))

(declare-datatypes ((array!100851 0))(
  ( (array!100852 (arr!48658 (Array (_ BitVec 32) (_ BitVec 64))) (size!49209 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100851)

(declare-fun array_inv!37603 (array!100851) Bool)

(assert (=> start!129082 (array_inv!37603 a!2804)))

(declare-fun lt!655930 () (_ BitVec 64))

(declare-fun e!844668 () Bool)

(declare-fun b!1513374 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!655933 () array!100851)

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12850 0))(
  ( (MissingZero!12850 (index!53794 (_ BitVec 32))) (Found!12850 (index!53795 (_ BitVec 32))) (Intermediate!12850 (undefined!13662 Bool) (index!53796 (_ BitVec 32)) (x!135525 (_ BitVec 32))) (Undefined!12850) (MissingVacant!12850 (index!53797 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100851 (_ BitVec 32)) SeekEntryResult!12850)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100851 (_ BitVec 32)) SeekEntryResult!12850)

(assert (=> b!1513374 (= e!844668 (= (seekEntryOrOpen!0 lt!655930 lt!655933 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655930 lt!655933 mask!2512)))))

(declare-fun b!1513375 () Bool)

(declare-fun e!844667 () Bool)

(declare-fun e!844666 () Bool)

(assert (=> b!1513375 (= e!844667 e!844666)))

(declare-fun res!1033359 () Bool)

(assert (=> b!1513375 (=> res!1033359 e!844666)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513375 (= res!1033359 (or (not (= (select (arr!48658 a!2804) j!70) lt!655930)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48658 a!2804) index!487) (select (arr!48658 a!2804) j!70)) (not (= (select (arr!48658 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513376 () Bool)

(declare-fun res!1033352 () Bool)

(assert (=> b!1513376 (=> (not res!1033352) (not e!844664))))

(assert (=> b!1513376 (= res!1033352 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49209 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49209 a!2804))))))

(declare-fun b!1513377 () Bool)

(assert (=> b!1513377 (= e!844666 e!844668)))

(declare-fun res!1033349 () Bool)

(assert (=> b!1513377 (=> (not res!1033349) (not e!844668))))

(assert (=> b!1513377 (= res!1033349 (= (seekEntryOrOpen!0 (select (arr!48658 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48658 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513378 () Bool)

(declare-fun res!1033355 () Bool)

(declare-fun e!844669 () Bool)

(assert (=> b!1513378 (=> (not res!1033355) (not e!844669))))

(declare-fun lt!655931 () SeekEntryResult!12850)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100851 (_ BitVec 32)) SeekEntryResult!12850)

(assert (=> b!1513378 (= res!1033355 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48658 a!2804) j!70) a!2804 mask!2512) lt!655931))))

(declare-fun b!1513379 () Bool)

(declare-fun res!1033350 () Bool)

(assert (=> b!1513379 (=> (not res!1033350) (not e!844667))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100851 (_ BitVec 32)) SeekEntryResult!12850)

(assert (=> b!1513379 (= res!1033350 (= (seekEntry!0 (select (arr!48658 a!2804) j!70) a!2804 mask!2512) (Found!12850 j!70)))))

(declare-fun b!1513380 () Bool)

(declare-fun e!844665 () Bool)

(assert (=> b!1513380 (= e!844669 e!844665)))

(declare-fun res!1033361 () Bool)

(assert (=> b!1513380 (=> (not res!1033361) (not e!844665))))

(declare-fun lt!655932 () SeekEntryResult!12850)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513380 (= res!1033361 (= lt!655932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655930 mask!2512) lt!655930 lt!655933 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513380 (= lt!655930 (select (store (arr!48658 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513380 (= lt!655933 (array!100852 (store (arr!48658 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49209 a!2804)))))

(declare-fun b!1513381 () Bool)

(assert (=> b!1513381 (= e!844664 e!844669)))

(declare-fun res!1033357 () Bool)

(assert (=> b!1513381 (=> (not res!1033357) (not e!844669))))

(assert (=> b!1513381 (= res!1033357 (= lt!655932 lt!655931))))

(assert (=> b!1513381 (= lt!655931 (Intermediate!12850 false resIndex!21 resX!21))))

(assert (=> b!1513381 (= lt!655932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48658 a!2804) j!70) mask!2512) (select (arr!48658 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513382 () Bool)

(declare-fun res!1033362 () Bool)

(assert (=> b!1513382 (=> (not res!1033362) (not e!844664))))

(assert (=> b!1513382 (= res!1033362 (and (= (size!49209 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49209 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49209 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513383 () Bool)

(declare-fun res!1033358 () Bool)

(assert (=> b!1513383 (=> (not res!1033358) (not e!844664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513383 (= res!1033358 (validKeyInArray!0 (select (arr!48658 a!2804) i!961)))))

(declare-fun b!1513384 () Bool)

(declare-fun res!1033354 () Bool)

(assert (=> b!1513384 (=> (not res!1033354) (not e!844664))))

(declare-datatypes ((List!35321 0))(
  ( (Nil!35318) (Cons!35317 (h!36730 (_ BitVec 64)) (t!50022 List!35321)) )
))
(declare-fun arrayNoDuplicates!0 (array!100851 (_ BitVec 32) List!35321) Bool)

(assert (=> b!1513384 (= res!1033354 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35318))))

(declare-fun b!1513385 () Bool)

(assert (=> b!1513385 (= e!844665 (not true))))

(assert (=> b!1513385 e!844667))

(declare-fun res!1033356 () Bool)

(assert (=> b!1513385 (=> (not res!1033356) (not e!844667))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100851 (_ BitVec 32)) Bool)

(assert (=> b!1513385 (= res!1033356 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50524 0))(
  ( (Unit!50525) )
))
(declare-fun lt!655929 () Unit!50524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50524)

(assert (=> b!1513385 (= lt!655929 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513386 () Bool)

(declare-fun res!1033351 () Bool)

(assert (=> b!1513386 (=> (not res!1033351) (not e!844664))))

(assert (=> b!1513386 (= res!1033351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513387 () Bool)

(declare-fun res!1033360 () Bool)

(assert (=> b!1513387 (=> (not res!1033360) (not e!844664))))

(assert (=> b!1513387 (= res!1033360 (validKeyInArray!0 (select (arr!48658 a!2804) j!70)))))

(assert (= (and start!129082 res!1033353) b!1513382))

(assert (= (and b!1513382 res!1033362) b!1513383))

(assert (= (and b!1513383 res!1033358) b!1513387))

(assert (= (and b!1513387 res!1033360) b!1513386))

(assert (= (and b!1513386 res!1033351) b!1513384))

(assert (= (and b!1513384 res!1033354) b!1513376))

(assert (= (and b!1513376 res!1033352) b!1513381))

(assert (= (and b!1513381 res!1033357) b!1513378))

(assert (= (and b!1513378 res!1033355) b!1513380))

(assert (= (and b!1513380 res!1033361) b!1513385))

(assert (= (and b!1513385 res!1033356) b!1513379))

(assert (= (and b!1513379 res!1033350) b!1513375))

(assert (= (and b!1513375 (not res!1033359)) b!1513377))

(assert (= (and b!1513377 res!1033349) b!1513374))

(declare-fun m!1396287 () Bool)

(assert (=> b!1513385 m!1396287))

(declare-fun m!1396289 () Bool)

(assert (=> b!1513385 m!1396289))

(declare-fun m!1396291 () Bool)

(assert (=> b!1513374 m!1396291))

(declare-fun m!1396293 () Bool)

(assert (=> b!1513374 m!1396293))

(declare-fun m!1396295 () Bool)

(assert (=> b!1513381 m!1396295))

(assert (=> b!1513381 m!1396295))

(declare-fun m!1396297 () Bool)

(assert (=> b!1513381 m!1396297))

(assert (=> b!1513381 m!1396297))

(assert (=> b!1513381 m!1396295))

(declare-fun m!1396299 () Bool)

(assert (=> b!1513381 m!1396299))

(declare-fun m!1396301 () Bool)

(assert (=> b!1513386 m!1396301))

(assert (=> b!1513377 m!1396295))

(assert (=> b!1513377 m!1396295))

(declare-fun m!1396303 () Bool)

(assert (=> b!1513377 m!1396303))

(assert (=> b!1513377 m!1396295))

(declare-fun m!1396305 () Bool)

(assert (=> b!1513377 m!1396305))

(assert (=> b!1513379 m!1396295))

(assert (=> b!1513379 m!1396295))

(declare-fun m!1396307 () Bool)

(assert (=> b!1513379 m!1396307))

(declare-fun m!1396309 () Bool)

(assert (=> b!1513383 m!1396309))

(assert (=> b!1513383 m!1396309))

(declare-fun m!1396311 () Bool)

(assert (=> b!1513383 m!1396311))

(assert (=> b!1513387 m!1396295))

(assert (=> b!1513387 m!1396295))

(declare-fun m!1396313 () Bool)

(assert (=> b!1513387 m!1396313))

(assert (=> b!1513378 m!1396295))

(assert (=> b!1513378 m!1396295))

(declare-fun m!1396315 () Bool)

(assert (=> b!1513378 m!1396315))

(declare-fun m!1396317 () Bool)

(assert (=> b!1513384 m!1396317))

(declare-fun m!1396319 () Bool)

(assert (=> b!1513380 m!1396319))

(assert (=> b!1513380 m!1396319))

(declare-fun m!1396321 () Bool)

(assert (=> b!1513380 m!1396321))

(declare-fun m!1396323 () Bool)

(assert (=> b!1513380 m!1396323))

(declare-fun m!1396325 () Bool)

(assert (=> b!1513380 m!1396325))

(declare-fun m!1396327 () Bool)

(assert (=> start!129082 m!1396327))

(declare-fun m!1396329 () Bool)

(assert (=> start!129082 m!1396329))

(assert (=> b!1513375 m!1396295))

(declare-fun m!1396331 () Bool)

(assert (=> b!1513375 m!1396331))

(push 1)

