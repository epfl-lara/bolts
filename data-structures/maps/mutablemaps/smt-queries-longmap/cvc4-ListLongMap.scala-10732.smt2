; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125576 () Bool)

(assert start!125576)

(declare-fun b!1468637 () Bool)

(declare-fun res!997291 () Bool)

(declare-fun e!824660 () Bool)

(assert (=> b!1468637 (=> (not res!997291) (not e!824660))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98941 0))(
  ( (array!98942 (arr!47754 (Array (_ BitVec 32) (_ BitVec 64))) (size!48305 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98941)

(assert (=> b!1468637 (= res!997291 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48305 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48305 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48305 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47754 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468638 () Bool)

(declare-fun res!997286 () Bool)

(assert (=> b!1468638 (=> (not res!997286) (not e!824660))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468638 (= res!997286 (and (= (size!48305 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48305 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48305 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468639 () Bool)

(declare-fun res!997285 () Bool)

(assert (=> b!1468639 (=> (not res!997285) (not e!824660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98941 (_ BitVec 32)) Bool)

(assert (=> b!1468639 (= res!997285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468640 () Bool)

(declare-fun res!997293 () Bool)

(declare-fun e!824658 () Bool)

(assert (=> b!1468640 (=> (not res!997293) (not e!824658))))

(declare-datatypes ((SeekEntryResult!12017 0))(
  ( (MissingZero!12017 (index!50459 (_ BitVec 32))) (Found!12017 (index!50460 (_ BitVec 32))) (Intermediate!12017 (undefined!12829 Bool) (index!50461 (_ BitVec 32)) (x!132045 (_ BitVec 32))) (Undefined!12017) (MissingVacant!12017 (index!50462 (_ BitVec 32))) )
))
(declare-fun lt!642291 () SeekEntryResult!12017)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98941 (_ BitVec 32)) SeekEntryResult!12017)

(assert (=> b!1468640 (= res!997293 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47754 a!2862) j!93) a!2862 mask!2687) lt!642291))))

(declare-fun b!1468641 () Bool)

(declare-fun res!997292 () Bool)

(assert (=> b!1468641 (=> (not res!997292) (not e!824660))))

(declare-datatypes ((List!34435 0))(
  ( (Nil!34432) (Cons!34431 (h!35781 (_ BitVec 64)) (t!49136 List!34435)) )
))
(declare-fun arrayNoDuplicates!0 (array!98941 (_ BitVec 32) List!34435) Bool)

(assert (=> b!1468641 (= res!997292 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34432))))

(declare-fun b!1468642 () Bool)

(declare-fun res!997288 () Bool)

(assert (=> b!1468642 (=> (not res!997288) (not e!824660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468642 (= res!997288 (validKeyInArray!0 (select (arr!47754 a!2862) i!1006)))))

(declare-fun b!1468643 () Bool)

(assert (=> b!1468643 (= e!824658 false)))

(declare-fun lt!642292 () SeekEntryResult!12017)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468643 (= lt!642292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47754 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47754 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98942 (store (arr!47754 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48305 a!2862)) mask!2687))))

(declare-fun res!997289 () Bool)

(assert (=> start!125576 (=> (not res!997289) (not e!824660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125576 (= res!997289 (validMask!0 mask!2687))))

(assert (=> start!125576 e!824660))

(assert (=> start!125576 true))

(declare-fun array_inv!36699 (array!98941) Bool)

(assert (=> start!125576 (array_inv!36699 a!2862)))

(declare-fun b!1468644 () Bool)

(assert (=> b!1468644 (= e!824660 e!824658)))

(declare-fun res!997287 () Bool)

(assert (=> b!1468644 (=> (not res!997287) (not e!824658))))

(assert (=> b!1468644 (= res!997287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47754 a!2862) j!93) mask!2687) (select (arr!47754 a!2862) j!93) a!2862 mask!2687) lt!642291))))

(assert (=> b!1468644 (= lt!642291 (Intermediate!12017 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468645 () Bool)

(declare-fun res!997290 () Bool)

(assert (=> b!1468645 (=> (not res!997290) (not e!824660))))

(assert (=> b!1468645 (= res!997290 (validKeyInArray!0 (select (arr!47754 a!2862) j!93)))))

(assert (= (and start!125576 res!997289) b!1468638))

(assert (= (and b!1468638 res!997286) b!1468642))

(assert (= (and b!1468642 res!997288) b!1468645))

(assert (= (and b!1468645 res!997290) b!1468639))

(assert (= (and b!1468639 res!997285) b!1468641))

(assert (= (and b!1468641 res!997292) b!1468637))

(assert (= (and b!1468637 res!997291) b!1468644))

(assert (= (and b!1468644 res!997287) b!1468640))

(assert (= (and b!1468640 res!997293) b!1468643))

(declare-fun m!1355809 () Bool)

(assert (=> b!1468641 m!1355809))

(declare-fun m!1355811 () Bool)

(assert (=> b!1468642 m!1355811))

(assert (=> b!1468642 m!1355811))

(declare-fun m!1355813 () Bool)

(assert (=> b!1468642 m!1355813))

(declare-fun m!1355815 () Bool)

(assert (=> b!1468637 m!1355815))

(declare-fun m!1355817 () Bool)

(assert (=> b!1468637 m!1355817))

(declare-fun m!1355819 () Bool)

(assert (=> b!1468639 m!1355819))

(assert (=> b!1468643 m!1355815))

(declare-fun m!1355821 () Bool)

(assert (=> b!1468643 m!1355821))

(assert (=> b!1468643 m!1355821))

(declare-fun m!1355823 () Bool)

(assert (=> b!1468643 m!1355823))

(assert (=> b!1468643 m!1355823))

(assert (=> b!1468643 m!1355821))

(declare-fun m!1355825 () Bool)

(assert (=> b!1468643 m!1355825))

(declare-fun m!1355827 () Bool)

(assert (=> start!125576 m!1355827))

(declare-fun m!1355829 () Bool)

(assert (=> start!125576 m!1355829))

(declare-fun m!1355831 () Bool)

(assert (=> b!1468645 m!1355831))

(assert (=> b!1468645 m!1355831))

(declare-fun m!1355833 () Bool)

(assert (=> b!1468645 m!1355833))

(assert (=> b!1468640 m!1355831))

(assert (=> b!1468640 m!1355831))

(declare-fun m!1355835 () Bool)

(assert (=> b!1468640 m!1355835))

(assert (=> b!1468644 m!1355831))

(assert (=> b!1468644 m!1355831))

(declare-fun m!1355837 () Bool)

(assert (=> b!1468644 m!1355837))

(assert (=> b!1468644 m!1355837))

(assert (=> b!1468644 m!1355831))

(declare-fun m!1355839 () Bool)

(assert (=> b!1468644 m!1355839))

(push 1)

(assert (not b!1468644))

(assert (not start!125576))

(assert (not b!1468643))

(assert (not b!1468639))

(assert (not b!1468642))

(assert (not b!1468640))

(assert (not b!1468641))

