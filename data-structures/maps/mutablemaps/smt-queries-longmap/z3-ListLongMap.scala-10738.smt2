; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125610 () Bool)

(assert start!125610)

(declare-fun b!1469116 () Bool)

(declare-fun res!997754 () Bool)

(declare-fun e!824828 () Bool)

(assert (=> b!1469116 (=> (not res!997754) (not e!824828))))

(declare-datatypes ((array!98975 0))(
  ( (array!98976 (arr!47771 (Array (_ BitVec 32) (_ BitVec 64))) (size!48322 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98975)

(declare-datatypes ((List!34452 0))(
  ( (Nil!34449) (Cons!34448 (h!35798 (_ BitVec 64)) (t!49153 List!34452)) )
))
(declare-fun arrayNoDuplicates!0 (array!98975 (_ BitVec 32) List!34452) Bool)

(assert (=> b!1469116 (= res!997754 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34449))))

(declare-fun b!1469117 () Bool)

(declare-fun e!824831 () Bool)

(declare-fun e!824829 () Bool)

(assert (=> b!1469117 (= e!824831 e!824829)))

(declare-fun res!997761 () Bool)

(assert (=> b!1469117 (=> (not res!997761) (not e!824829))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12034 0))(
  ( (MissingZero!12034 (index!50527 (_ BitVec 32))) (Found!12034 (index!50528 (_ BitVec 32))) (Intermediate!12034 (undefined!12846 Bool) (index!50529 (_ BitVec 32)) (x!132110 (_ BitVec 32))) (Undefined!12034) (MissingVacant!12034 (index!50530 (_ BitVec 32))) )
))
(declare-fun lt!642410 () SeekEntryResult!12034)

(assert (=> b!1469117 (= res!997761 (= lt!642410 (Intermediate!12034 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642411 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!642408 () array!98975)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98975 (_ BitVec 32)) SeekEntryResult!12034)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469117 (= lt!642410 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642411 mask!2687) lt!642411 lt!642408 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469117 (= lt!642411 (select (store (arr!47771 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469118 () Bool)

(declare-fun res!997759 () Bool)

(assert (=> b!1469118 (=> (not res!997759) (not e!824831))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!642412 () SeekEntryResult!12034)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1469118 (= res!997759 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47771 a!2862) j!93) a!2862 mask!2687) lt!642412))))

(declare-fun b!1469120 () Bool)

(declare-fun res!997755 () Bool)

(assert (=> b!1469120 (=> (not res!997755) (not e!824828))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469120 (= res!997755 (validKeyInArray!0 (select (arr!47771 a!2862) j!93)))))

(declare-fun b!1469121 () Bool)

(declare-fun e!824830 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98975 (_ BitVec 32)) SeekEntryResult!12034)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98975 (_ BitVec 32)) SeekEntryResult!12034)

(assert (=> b!1469121 (= e!824830 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642411 lt!642408 mask!2687) (seekEntryOrOpen!0 lt!642411 lt!642408 mask!2687))))))

(declare-fun b!1469122 () Bool)

(declare-fun e!824827 () Bool)

(assert (=> b!1469122 (= e!824828 e!824827)))

(declare-fun res!997756 () Bool)

(assert (=> b!1469122 (=> (not res!997756) (not e!824827))))

(assert (=> b!1469122 (= res!997756 (= (select (store (arr!47771 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469122 (= lt!642408 (array!98976 (store (arr!47771 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48322 a!2862)))))

(declare-fun b!1469123 () Bool)

(assert (=> b!1469123 (= e!824827 e!824831)))

(declare-fun res!997762 () Bool)

(assert (=> b!1469123 (=> (not res!997762) (not e!824831))))

(assert (=> b!1469123 (= res!997762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47771 a!2862) j!93) mask!2687) (select (arr!47771 a!2862) j!93) a!2862 mask!2687) lt!642412))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469123 (= lt!642412 (Intermediate!12034 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469124 () Bool)

(declare-fun res!997764 () Bool)

(assert (=> b!1469124 (=> (not res!997764) (not e!824828))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98975 (_ BitVec 32)) Bool)

(assert (=> b!1469124 (= res!997764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469125 () Bool)

(assert (=> b!1469125 (= e!824829 false)))

(declare-fun lt!642409 () Bool)

(assert (=> b!1469125 (= lt!642409 e!824830)))

(declare-fun c!135194 () Bool)

(assert (=> b!1469125 (= c!135194 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469126 () Bool)

(declare-fun res!997757 () Bool)

(assert (=> b!1469126 (=> (not res!997757) (not e!824828))))

(assert (=> b!1469126 (= res!997757 (validKeyInArray!0 (select (arr!47771 a!2862) i!1006)))))

(declare-fun b!1469119 () Bool)

(assert (=> b!1469119 (= e!824830 (not (= lt!642410 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642411 lt!642408 mask!2687))))))

(declare-fun res!997763 () Bool)

(assert (=> start!125610 (=> (not res!997763) (not e!824828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125610 (= res!997763 (validMask!0 mask!2687))))

(assert (=> start!125610 e!824828))

(assert (=> start!125610 true))

(declare-fun array_inv!36716 (array!98975) Bool)

(assert (=> start!125610 (array_inv!36716 a!2862)))

(declare-fun b!1469127 () Bool)

(declare-fun res!997760 () Bool)

(assert (=> b!1469127 (=> (not res!997760) (not e!824828))))

(assert (=> b!1469127 (= res!997760 (and (= (size!48322 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48322 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48322 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469128 () Bool)

(declare-fun res!997758 () Bool)

(assert (=> b!1469128 (=> (not res!997758) (not e!824828))))

(assert (=> b!1469128 (= res!997758 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48322 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48322 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48322 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!125610 res!997763) b!1469127))

(assert (= (and b!1469127 res!997760) b!1469126))

(assert (= (and b!1469126 res!997757) b!1469120))

(assert (= (and b!1469120 res!997755) b!1469124))

(assert (= (and b!1469124 res!997764) b!1469116))

(assert (= (and b!1469116 res!997754) b!1469128))

(assert (= (and b!1469128 res!997758) b!1469122))

(assert (= (and b!1469122 res!997756) b!1469123))

(assert (= (and b!1469123 res!997762) b!1469118))

(assert (= (and b!1469118 res!997759) b!1469117))

(assert (= (and b!1469117 res!997761) b!1469125))

(assert (= (and b!1469125 c!135194) b!1469119))

(assert (= (and b!1469125 (not c!135194)) b!1469121))

(declare-fun m!1356359 () Bool)

(assert (=> b!1469119 m!1356359))

(declare-fun m!1356361 () Bool)

(assert (=> b!1469126 m!1356361))

(assert (=> b!1469126 m!1356361))

(declare-fun m!1356363 () Bool)

(assert (=> b!1469126 m!1356363))

(declare-fun m!1356365 () Bool)

(assert (=> b!1469118 m!1356365))

(assert (=> b!1469118 m!1356365))

(declare-fun m!1356367 () Bool)

(assert (=> b!1469118 m!1356367))

(declare-fun m!1356369 () Bool)

(assert (=> b!1469124 m!1356369))

(declare-fun m!1356371 () Bool)

(assert (=> b!1469116 m!1356371))

(declare-fun m!1356373 () Bool)

(assert (=> b!1469121 m!1356373))

(declare-fun m!1356375 () Bool)

(assert (=> b!1469121 m!1356375))

(declare-fun m!1356377 () Bool)

(assert (=> b!1469117 m!1356377))

(assert (=> b!1469117 m!1356377))

(declare-fun m!1356379 () Bool)

(assert (=> b!1469117 m!1356379))

(declare-fun m!1356381 () Bool)

(assert (=> b!1469117 m!1356381))

(declare-fun m!1356383 () Bool)

(assert (=> b!1469117 m!1356383))

(assert (=> b!1469122 m!1356381))

(declare-fun m!1356385 () Bool)

(assert (=> b!1469122 m!1356385))

(assert (=> b!1469120 m!1356365))

(assert (=> b!1469120 m!1356365))

(declare-fun m!1356387 () Bool)

(assert (=> b!1469120 m!1356387))

(assert (=> b!1469123 m!1356365))

(assert (=> b!1469123 m!1356365))

(declare-fun m!1356389 () Bool)

(assert (=> b!1469123 m!1356389))

(assert (=> b!1469123 m!1356389))

(assert (=> b!1469123 m!1356365))

(declare-fun m!1356391 () Bool)

(assert (=> b!1469123 m!1356391))

(declare-fun m!1356393 () Bool)

(assert (=> start!125610 m!1356393))

(declare-fun m!1356395 () Bool)

(assert (=> start!125610 m!1356395))

(check-sat (not b!1469124) (not start!125610) (not b!1469116) (not b!1469121) (not b!1469123) (not b!1469118) (not b!1469120) (not b!1469117) (not b!1469126) (not b!1469119))
(check-sat)
