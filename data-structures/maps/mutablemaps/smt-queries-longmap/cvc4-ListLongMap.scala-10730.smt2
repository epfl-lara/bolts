; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125564 () Bool)

(assert start!125564)

(declare-fun b!1468475 () Bool)

(declare-fun res!997130 () Bool)

(declare-fun e!824604 () Bool)

(assert (=> b!1468475 (=> (not res!997130) (not e!824604))))

(declare-datatypes ((array!98929 0))(
  ( (array!98930 (arr!47748 (Array (_ BitVec 32) (_ BitVec 64))) (size!48299 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98929)

(declare-datatypes ((List!34429 0))(
  ( (Nil!34426) (Cons!34425 (h!35775 (_ BitVec 64)) (t!49130 List!34429)) )
))
(declare-fun arrayNoDuplicates!0 (array!98929 (_ BitVec 32) List!34429) Bool)

(assert (=> b!1468475 (= res!997130 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34426))))

(declare-fun b!1468476 () Bool)

(declare-fun e!824606 () Bool)

(assert (=> b!1468476 (= e!824604 e!824606)))

(declare-fun res!997131 () Bool)

(assert (=> b!1468476 (=> (not res!997131) (not e!824606))))

(declare-datatypes ((SeekEntryResult!12011 0))(
  ( (MissingZero!12011 (index!50435 (_ BitVec 32))) (Found!12011 (index!50436 (_ BitVec 32))) (Intermediate!12011 (undefined!12823 Bool) (index!50437 (_ BitVec 32)) (x!132023 (_ BitVec 32))) (Undefined!12011) (MissingVacant!12011 (index!50438 (_ BitVec 32))) )
))
(declare-fun lt!642255 () SeekEntryResult!12011)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98929 (_ BitVec 32)) SeekEntryResult!12011)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468476 (= res!997131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47748 a!2862) j!93) mask!2687) (select (arr!47748 a!2862) j!93) a!2862 mask!2687) lt!642255))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468476 (= lt!642255 (Intermediate!12011 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468477 () Bool)

(assert (=> b!1468477 (= e!824606 false)))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lt!642256 () SeekEntryResult!12011)

(assert (=> b!1468477 (= lt!642256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47748 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47748 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98930 (store (arr!47748 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48299 a!2862)) mask!2687))))

(declare-fun b!1468478 () Bool)

(declare-fun res!997127 () Bool)

(assert (=> b!1468478 (=> (not res!997127) (not e!824604))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468478 (= res!997127 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48299 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48299 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48299 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47748 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468479 () Bool)

(declare-fun res!997126 () Bool)

(assert (=> b!1468479 (=> (not res!997126) (not e!824606))))

(assert (=> b!1468479 (= res!997126 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47748 a!2862) j!93) a!2862 mask!2687) lt!642255))))

(declare-fun b!1468480 () Bool)

(declare-fun res!997125 () Bool)

(assert (=> b!1468480 (=> (not res!997125) (not e!824604))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468480 (= res!997125 (validKeyInArray!0 (select (arr!47748 a!2862) i!1006)))))

(declare-fun b!1468481 () Bool)

(declare-fun res!997128 () Bool)

(assert (=> b!1468481 (=> (not res!997128) (not e!824604))))

(assert (=> b!1468481 (= res!997128 (validKeyInArray!0 (select (arr!47748 a!2862) j!93)))))

(declare-fun res!997123 () Bool)

(assert (=> start!125564 (=> (not res!997123) (not e!824604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125564 (= res!997123 (validMask!0 mask!2687))))

(assert (=> start!125564 e!824604))

(assert (=> start!125564 true))

(declare-fun array_inv!36693 (array!98929) Bool)

(assert (=> start!125564 (array_inv!36693 a!2862)))

(declare-fun b!1468482 () Bool)

(declare-fun res!997124 () Bool)

(assert (=> b!1468482 (=> (not res!997124) (not e!824604))))

(assert (=> b!1468482 (= res!997124 (and (= (size!48299 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48299 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48299 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468483 () Bool)

(declare-fun res!997129 () Bool)

(assert (=> b!1468483 (=> (not res!997129) (not e!824604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98929 (_ BitVec 32)) Bool)

(assert (=> b!1468483 (= res!997129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125564 res!997123) b!1468482))

(assert (= (and b!1468482 res!997124) b!1468480))

(assert (= (and b!1468480 res!997125) b!1468481))

(assert (= (and b!1468481 res!997128) b!1468483))

(assert (= (and b!1468483 res!997129) b!1468475))

(assert (= (and b!1468475 res!997130) b!1468478))

(assert (= (and b!1468478 res!997127) b!1468476))

(assert (= (and b!1468476 res!997131) b!1468479))

(assert (= (and b!1468479 res!997126) b!1468477))

(declare-fun m!1355617 () Bool)

(assert (=> b!1468480 m!1355617))

(assert (=> b!1468480 m!1355617))

(declare-fun m!1355619 () Bool)

(assert (=> b!1468480 m!1355619))

(declare-fun m!1355621 () Bool)

(assert (=> b!1468475 m!1355621))

(declare-fun m!1355623 () Bool)

(assert (=> b!1468478 m!1355623))

(declare-fun m!1355625 () Bool)

(assert (=> b!1468478 m!1355625))

(declare-fun m!1355627 () Bool)

(assert (=> b!1468476 m!1355627))

(assert (=> b!1468476 m!1355627))

(declare-fun m!1355629 () Bool)

(assert (=> b!1468476 m!1355629))

(assert (=> b!1468476 m!1355629))

(assert (=> b!1468476 m!1355627))

(declare-fun m!1355631 () Bool)

(assert (=> b!1468476 m!1355631))

(declare-fun m!1355633 () Bool)

(assert (=> start!125564 m!1355633))

(declare-fun m!1355635 () Bool)

(assert (=> start!125564 m!1355635))

(declare-fun m!1355637 () Bool)

(assert (=> b!1468483 m!1355637))

(assert (=> b!1468481 m!1355627))

(assert (=> b!1468481 m!1355627))

(declare-fun m!1355639 () Bool)

(assert (=> b!1468481 m!1355639))

(assert (=> b!1468479 m!1355627))

(assert (=> b!1468479 m!1355627))

(declare-fun m!1355641 () Bool)

(assert (=> b!1468479 m!1355641))

(assert (=> b!1468477 m!1355623))

(declare-fun m!1355643 () Bool)

(assert (=> b!1468477 m!1355643))

(assert (=> b!1468477 m!1355643))

(declare-fun m!1355645 () Bool)

(assert (=> b!1468477 m!1355645))

(assert (=> b!1468477 m!1355645))

(assert (=> b!1468477 m!1355643))

(declare-fun m!1355647 () Bool)

(assert (=> b!1468477 m!1355647))

(push 1)

(assert (not b!1468477))

(assert (not start!125564))

(assert (not b!1468475))

(assert (not b!1468483))

(assert (not b!1468481))

(assert (not b!1468479))

