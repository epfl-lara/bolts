; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125570 () Bool)

(assert start!125570)

(declare-fun b!1468556 () Bool)

(declare-fun res!997209 () Bool)

(declare-fun e!824632 () Bool)

(assert (=> b!1468556 (=> (not res!997209) (not e!824632))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98935 0))(
  ( (array!98936 (arr!47751 (Array (_ BitVec 32) (_ BitVec 64))) (size!48302 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98935)

(assert (=> b!1468556 (= res!997209 (and (= (size!48302 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48302 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48302 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468557 () Bool)

(declare-fun res!997204 () Bool)

(assert (=> b!1468557 (=> (not res!997204) (not e!824632))))

(declare-datatypes ((List!34432 0))(
  ( (Nil!34429) (Cons!34428 (h!35778 (_ BitVec 64)) (t!49133 List!34432)) )
))
(declare-fun arrayNoDuplicates!0 (array!98935 (_ BitVec 32) List!34432) Bool)

(assert (=> b!1468557 (= res!997204 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34429))))

(declare-fun res!997212 () Bool)

(assert (=> start!125570 (=> (not res!997212) (not e!824632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125570 (= res!997212 (validMask!0 mask!2687))))

(assert (=> start!125570 e!824632))

(assert (=> start!125570 true))

(declare-fun array_inv!36696 (array!98935) Bool)

(assert (=> start!125570 (array_inv!36696 a!2862)))

(declare-fun b!1468558 () Bool)

(declare-fun e!824631 () Bool)

(assert (=> b!1468558 (= e!824631 false)))

(declare-datatypes ((SeekEntryResult!12014 0))(
  ( (MissingZero!12014 (index!50447 (_ BitVec 32))) (Found!12014 (index!50448 (_ BitVec 32))) (Intermediate!12014 (undefined!12826 Bool) (index!50449 (_ BitVec 32)) (x!132034 (_ BitVec 32))) (Undefined!12014) (MissingVacant!12014 (index!50450 (_ BitVec 32))) )
))
(declare-fun lt!642274 () SeekEntryResult!12014)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98935 (_ BitVec 32)) SeekEntryResult!12014)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468558 (= lt!642274 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47751 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47751 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98936 (store (arr!47751 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48302 a!2862)) mask!2687))))

(declare-fun b!1468559 () Bool)

(assert (=> b!1468559 (= e!824632 e!824631)))

(declare-fun res!997205 () Bool)

(assert (=> b!1468559 (=> (not res!997205) (not e!824631))))

(declare-fun lt!642273 () SeekEntryResult!12014)

(assert (=> b!1468559 (= res!997205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47751 a!2862) j!93) mask!2687) (select (arr!47751 a!2862) j!93) a!2862 mask!2687) lt!642273))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468559 (= lt!642273 (Intermediate!12014 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468560 () Bool)

(declare-fun res!997210 () Bool)

(assert (=> b!1468560 (=> (not res!997210) (not e!824632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98935 (_ BitVec 32)) Bool)

(assert (=> b!1468560 (= res!997210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468561 () Bool)

(declare-fun res!997208 () Bool)

(assert (=> b!1468561 (=> (not res!997208) (not e!824631))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468561 (= res!997208 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47751 a!2862) j!93) a!2862 mask!2687) lt!642273))))

(declare-fun b!1468562 () Bool)

(declare-fun res!997207 () Bool)

(assert (=> b!1468562 (=> (not res!997207) (not e!824632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468562 (= res!997207 (validKeyInArray!0 (select (arr!47751 a!2862) i!1006)))))

(declare-fun b!1468563 () Bool)

(declare-fun res!997206 () Bool)

(assert (=> b!1468563 (=> (not res!997206) (not e!824632))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468563 (= res!997206 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48302 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48302 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48302 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47751 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468564 () Bool)

(declare-fun res!997211 () Bool)

(assert (=> b!1468564 (=> (not res!997211) (not e!824632))))

(assert (=> b!1468564 (= res!997211 (validKeyInArray!0 (select (arr!47751 a!2862) j!93)))))

(assert (= (and start!125570 res!997212) b!1468556))

(assert (= (and b!1468556 res!997209) b!1468562))

(assert (= (and b!1468562 res!997207) b!1468564))

(assert (= (and b!1468564 res!997211) b!1468560))

(assert (= (and b!1468560 res!997210) b!1468557))

(assert (= (and b!1468557 res!997204) b!1468563))

(assert (= (and b!1468563 res!997206) b!1468559))

(assert (= (and b!1468559 res!997205) b!1468561))

(assert (= (and b!1468561 res!997208) b!1468558))

(declare-fun m!1355713 () Bool)

(assert (=> b!1468557 m!1355713))

(declare-fun m!1355715 () Bool)

(assert (=> b!1468559 m!1355715))

(assert (=> b!1468559 m!1355715))

(declare-fun m!1355717 () Bool)

(assert (=> b!1468559 m!1355717))

(assert (=> b!1468559 m!1355717))

(assert (=> b!1468559 m!1355715))

(declare-fun m!1355719 () Bool)

(assert (=> b!1468559 m!1355719))

(assert (=> b!1468561 m!1355715))

(assert (=> b!1468561 m!1355715))

(declare-fun m!1355721 () Bool)

(assert (=> b!1468561 m!1355721))

(declare-fun m!1355723 () Bool)

(assert (=> b!1468562 m!1355723))

(assert (=> b!1468562 m!1355723))

(declare-fun m!1355725 () Bool)

(assert (=> b!1468562 m!1355725))

(declare-fun m!1355727 () Bool)

(assert (=> b!1468560 m!1355727))

(declare-fun m!1355729 () Bool)

(assert (=> b!1468558 m!1355729))

(declare-fun m!1355731 () Bool)

(assert (=> b!1468558 m!1355731))

(assert (=> b!1468558 m!1355731))

(declare-fun m!1355733 () Bool)

(assert (=> b!1468558 m!1355733))

(assert (=> b!1468558 m!1355733))

(assert (=> b!1468558 m!1355731))

(declare-fun m!1355735 () Bool)

(assert (=> b!1468558 m!1355735))

(assert (=> b!1468563 m!1355729))

(declare-fun m!1355737 () Bool)

(assert (=> b!1468563 m!1355737))

(declare-fun m!1355739 () Bool)

(assert (=> start!125570 m!1355739))

(declare-fun m!1355741 () Bool)

(assert (=> start!125570 m!1355741))

(assert (=> b!1468564 m!1355715))

(assert (=> b!1468564 m!1355715))

(declare-fun m!1355743 () Bool)

(assert (=> b!1468564 m!1355743))

(push 1)

(assert (not b!1468559))

(assert (not start!125570))

(assert (not b!1468561))

(assert (not b!1468557))

(assert (not b!1468560))

(assert (not b!1468558))

(assert (not b!1468562))

(assert (not b!1468564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

