; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125594 () Bool)

(assert start!125594)

(declare-fun b!1468880 () Bool)

(declare-fun res!997533 () Bool)

(declare-fun e!824739 () Bool)

(assert (=> b!1468880 (=> (not res!997533) (not e!824739))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98959 0))(
  ( (array!98960 (arr!47763 (Array (_ BitVec 32) (_ BitVec 64))) (size!48314 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98959)

(assert (=> b!1468880 (= res!997533 (and (= (size!48314 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48314 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48314 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468881 () Bool)

(declare-fun res!997532 () Bool)

(declare-fun e!824741 () Bool)

(assert (=> b!1468881 (=> (not res!997532) (not e!824741))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12026 0))(
  ( (MissingZero!12026 (index!50495 (_ BitVec 32))) (Found!12026 (index!50496 (_ BitVec 32))) (Intermediate!12026 (undefined!12838 Bool) (index!50497 (_ BitVec 32)) (x!132078 (_ BitVec 32))) (Undefined!12026) (MissingVacant!12026 (index!50498 (_ BitVec 32))) )
))
(declare-fun lt!642345 () SeekEntryResult!12026)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98959 (_ BitVec 32)) SeekEntryResult!12026)

(assert (=> b!1468881 (= res!997532 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47763 a!2862) j!93) a!2862 mask!2687) lt!642345))))

(declare-fun b!1468882 () Bool)

(declare-fun res!997536 () Bool)

(assert (=> b!1468882 (=> (not res!997536) (not e!824739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98959 (_ BitVec 32)) Bool)

(assert (=> b!1468882 (= res!997536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468883 () Bool)

(assert (=> b!1468883 (= e!824739 e!824741)))

(declare-fun res!997534 () Bool)

(assert (=> b!1468883 (=> (not res!997534) (not e!824741))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468883 (= res!997534 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47763 a!2862) j!93) mask!2687) (select (arr!47763 a!2862) j!93) a!2862 mask!2687) lt!642345))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468883 (= lt!642345 (Intermediate!12026 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468884 () Bool)

(declare-fun res!997528 () Bool)

(assert (=> b!1468884 (=> (not res!997528) (not e!824739))))

(declare-datatypes ((List!34444 0))(
  ( (Nil!34441) (Cons!34440 (h!35790 (_ BitVec 64)) (t!49145 List!34444)) )
))
(declare-fun arrayNoDuplicates!0 (array!98959 (_ BitVec 32) List!34444) Bool)

(assert (=> b!1468884 (= res!997528 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34441))))

(declare-fun b!1468885 () Bool)

(declare-fun res!997531 () Bool)

(assert (=> b!1468885 (=> (not res!997531) (not e!824739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468885 (= res!997531 (validKeyInArray!0 (select (arr!47763 a!2862) j!93)))))

(declare-fun res!997530 () Bool)

(assert (=> start!125594 (=> (not res!997530) (not e!824739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125594 (= res!997530 (validMask!0 mask!2687))))

(assert (=> start!125594 e!824739))

(assert (=> start!125594 true))

(declare-fun array_inv!36708 (array!98959) Bool)

(assert (=> start!125594 (array_inv!36708 a!2862)))

(declare-fun b!1468886 () Bool)

(declare-fun res!997535 () Bool)

(assert (=> b!1468886 (=> (not res!997535) (not e!824739))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468886 (= res!997535 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48314 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48314 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48314 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47763 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468887 () Bool)

(declare-fun res!997529 () Bool)

(assert (=> b!1468887 (=> (not res!997529) (not e!824739))))

(assert (=> b!1468887 (= res!997529 (validKeyInArray!0 (select (arr!47763 a!2862) i!1006)))))

(declare-fun b!1468888 () Bool)

(assert (=> b!1468888 (= e!824741 false)))

(declare-fun lt!642346 () SeekEntryResult!12026)

(assert (=> b!1468888 (= lt!642346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47763 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47763 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98960 (store (arr!47763 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48314 a!2862)) mask!2687))))

(assert (= (and start!125594 res!997530) b!1468880))

(assert (= (and b!1468880 res!997533) b!1468887))

(assert (= (and b!1468887 res!997529) b!1468885))

(assert (= (and b!1468885 res!997531) b!1468882))

(assert (= (and b!1468882 res!997536) b!1468884))

(assert (= (and b!1468884 res!997528) b!1468886))

(assert (= (and b!1468886 res!997535) b!1468883))

(assert (= (and b!1468883 res!997534) b!1468881))

(assert (= (and b!1468881 res!997532) b!1468888))

(declare-fun m!1356097 () Bool)

(assert (=> b!1468884 m!1356097))

(declare-fun m!1356099 () Bool)

(assert (=> b!1468887 m!1356099))

(assert (=> b!1468887 m!1356099))

(declare-fun m!1356101 () Bool)

(assert (=> b!1468887 m!1356101))

(declare-fun m!1356103 () Bool)

(assert (=> b!1468883 m!1356103))

(assert (=> b!1468883 m!1356103))

(declare-fun m!1356105 () Bool)

(assert (=> b!1468883 m!1356105))

(assert (=> b!1468883 m!1356105))

(assert (=> b!1468883 m!1356103))

(declare-fun m!1356107 () Bool)

(assert (=> b!1468883 m!1356107))

(assert (=> b!1468881 m!1356103))

(assert (=> b!1468881 m!1356103))

(declare-fun m!1356109 () Bool)

(assert (=> b!1468881 m!1356109))

(declare-fun m!1356111 () Bool)

(assert (=> b!1468882 m!1356111))

(assert (=> b!1468885 m!1356103))

(assert (=> b!1468885 m!1356103))

(declare-fun m!1356113 () Bool)

(assert (=> b!1468885 m!1356113))

(declare-fun m!1356115 () Bool)

(assert (=> start!125594 m!1356115))

(declare-fun m!1356117 () Bool)

(assert (=> start!125594 m!1356117))

(declare-fun m!1356119 () Bool)

(assert (=> b!1468886 m!1356119))

(declare-fun m!1356121 () Bool)

(assert (=> b!1468886 m!1356121))

(assert (=> b!1468888 m!1356119))

(declare-fun m!1356123 () Bool)

(assert (=> b!1468888 m!1356123))

(assert (=> b!1468888 m!1356123))

(declare-fun m!1356125 () Bool)

(assert (=> b!1468888 m!1356125))

(assert (=> b!1468888 m!1356125))

(assert (=> b!1468888 m!1356123))

(declare-fun m!1356127 () Bool)

(assert (=> b!1468888 m!1356127))

(push 1)

(assert (not b!1468883))

(assert (not b!1468881))

(assert (not b!1468887))

(assert (not b!1468884))

