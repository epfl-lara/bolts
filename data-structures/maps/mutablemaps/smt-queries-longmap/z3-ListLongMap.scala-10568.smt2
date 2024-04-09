; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124590 () Bool)

(assert start!124590)

(declare-fun b!1441369 () Bool)

(declare-fun e!812562 () Bool)

(declare-fun e!812564 () Bool)

(assert (=> b!1441369 (= e!812562 e!812564)))

(declare-fun res!973831 () Bool)

(assert (=> b!1441369 (=> (not res!973831) (not e!812564))))

(declare-datatypes ((SeekEntryResult!11536 0))(
  ( (MissingZero!11536 (index!48535 (_ BitVec 32))) (Found!11536 (index!48536 (_ BitVec 32))) (Intermediate!11536 (undefined!12348 Bool) (index!48537 (_ BitVec 32)) (x!130252 (_ BitVec 32))) (Undefined!11536) (MissingVacant!11536 (index!48538 (_ BitVec 32))) )
))
(declare-fun lt!633184 () SeekEntryResult!11536)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1441369 (= res!973831 (= lt!633184 (Intermediate!11536 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!97955 0))(
  ( (array!97956 (arr!47261 (Array (_ BitVec 32) (_ BitVec 64))) (size!47812 (_ BitVec 32))) )
))
(declare-fun lt!633187 () array!97955)

(declare-fun lt!633186 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97955 (_ BitVec 32)) SeekEntryResult!11536)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441369 (= lt!633184 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633186 mask!2687) lt!633186 lt!633187 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!97955)

(assert (=> b!1441369 (= lt!633186 (select (store (arr!47261 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441370 () Bool)

(declare-fun e!812561 () Bool)

(declare-fun e!812560 () Bool)

(assert (=> b!1441370 (= e!812561 e!812560)))

(declare-fun res!973823 () Bool)

(assert (=> b!1441370 (=> (not res!973823) (not e!812560))))

(assert (=> b!1441370 (= res!973823 (= (select (store (arr!47261 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441370 (= lt!633187 (array!97956 (store (arr!47261 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47812 a!2862)))))

(declare-fun b!1441371 () Bool)

(declare-fun res!973829 () Bool)

(assert (=> b!1441371 (=> (not res!973829) (not e!812561))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1441371 (= res!973829 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47812 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47812 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47812 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441372 () Bool)

(declare-fun res!973833 () Bool)

(assert (=> b!1441372 (=> (not res!973833) (not e!812561))))

(assert (=> b!1441372 (= res!973833 (and (= (size!47812 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47812 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47812 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441373 () Bool)

(assert (=> b!1441373 (= e!812560 e!812562)))

(declare-fun res!973827 () Bool)

(assert (=> b!1441373 (=> (not res!973827) (not e!812562))))

(declare-fun lt!633183 () SeekEntryResult!11536)

(assert (=> b!1441373 (= res!973827 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47261 a!2862) j!93) mask!2687) (select (arr!47261 a!2862) j!93) a!2862 mask!2687) lt!633183))))

(assert (=> b!1441373 (= lt!633183 (Intermediate!11536 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441374 () Bool)

(declare-fun e!812559 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97955 (_ BitVec 32)) SeekEntryResult!11536)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97955 (_ BitVec 32)) SeekEntryResult!11536)

(assert (=> b!1441374 (= e!812559 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633186 lt!633187 mask!2687) (seekEntryOrOpen!0 lt!633186 lt!633187 mask!2687))))))

(declare-fun b!1441375 () Bool)

(declare-fun res!973825 () Bool)

(assert (=> b!1441375 (=> (not res!973825) (not e!812561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97955 (_ BitVec 32)) Bool)

(assert (=> b!1441375 (= res!973825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441376 () Bool)

(declare-fun res!973826 () Bool)

(assert (=> b!1441376 (=> (not res!973826) (not e!812561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441376 (= res!973826 (validKeyInArray!0 (select (arr!47261 a!2862) i!1006)))))

(declare-fun b!1441377 () Bool)

(declare-fun res!973828 () Bool)

(assert (=> b!1441377 (=> (not res!973828) (not e!812561))))

(assert (=> b!1441377 (= res!973828 (validKeyInArray!0 (select (arr!47261 a!2862) j!93)))))

(declare-fun b!1441378 () Bool)

(assert (=> b!1441378 (= e!812559 (not (= lt!633184 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633186 lt!633187 mask!2687))))))

(declare-fun res!973830 () Bool)

(assert (=> start!124590 (=> (not res!973830) (not e!812561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124590 (= res!973830 (validMask!0 mask!2687))))

(assert (=> start!124590 e!812561))

(assert (=> start!124590 true))

(declare-fun array_inv!36206 (array!97955) Bool)

(assert (=> start!124590 (array_inv!36206 a!2862)))

(declare-fun b!1441379 () Bool)

(assert (=> b!1441379 (= e!812564 false)))

(declare-fun lt!633185 () Bool)

(assert (=> b!1441379 (= lt!633185 e!812559)))

(declare-fun c!133286 () Bool)

(assert (=> b!1441379 (= c!133286 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441380 () Bool)

(declare-fun res!973832 () Bool)

(assert (=> b!1441380 (=> (not res!973832) (not e!812562))))

(assert (=> b!1441380 (= res!973832 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47261 a!2862) j!93) a!2862 mask!2687) lt!633183))))

(declare-fun b!1441381 () Bool)

(declare-fun res!973824 () Bool)

(assert (=> b!1441381 (=> (not res!973824) (not e!812561))))

(declare-datatypes ((List!33942 0))(
  ( (Nil!33939) (Cons!33938 (h!35288 (_ BitVec 64)) (t!48643 List!33942)) )
))
(declare-fun arrayNoDuplicates!0 (array!97955 (_ BitVec 32) List!33942) Bool)

(assert (=> b!1441381 (= res!973824 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33939))))

(assert (= (and start!124590 res!973830) b!1441372))

(assert (= (and b!1441372 res!973833) b!1441376))

(assert (= (and b!1441376 res!973826) b!1441377))

(assert (= (and b!1441377 res!973828) b!1441375))

(assert (= (and b!1441375 res!973825) b!1441381))

(assert (= (and b!1441381 res!973824) b!1441371))

(assert (= (and b!1441371 res!973829) b!1441370))

(assert (= (and b!1441370 res!973823) b!1441373))

(assert (= (and b!1441373 res!973827) b!1441380))

(assert (= (and b!1441380 res!973832) b!1441369))

(assert (= (and b!1441369 res!973831) b!1441379))

(assert (= (and b!1441379 c!133286) b!1441378))

(assert (= (and b!1441379 (not c!133286)) b!1441374))

(declare-fun m!1330649 () Bool)

(assert (=> b!1441377 m!1330649))

(assert (=> b!1441377 m!1330649))

(declare-fun m!1330651 () Bool)

(assert (=> b!1441377 m!1330651))

(declare-fun m!1330653 () Bool)

(assert (=> b!1441378 m!1330653))

(assert (=> b!1441373 m!1330649))

(assert (=> b!1441373 m!1330649))

(declare-fun m!1330655 () Bool)

(assert (=> b!1441373 m!1330655))

(assert (=> b!1441373 m!1330655))

(assert (=> b!1441373 m!1330649))

(declare-fun m!1330657 () Bool)

(assert (=> b!1441373 m!1330657))

(declare-fun m!1330659 () Bool)

(assert (=> b!1441370 m!1330659))

(declare-fun m!1330661 () Bool)

(assert (=> b!1441370 m!1330661))

(assert (=> b!1441380 m!1330649))

(assert (=> b!1441380 m!1330649))

(declare-fun m!1330663 () Bool)

(assert (=> b!1441380 m!1330663))

(declare-fun m!1330665 () Bool)

(assert (=> b!1441369 m!1330665))

(assert (=> b!1441369 m!1330665))

(declare-fun m!1330667 () Bool)

(assert (=> b!1441369 m!1330667))

(assert (=> b!1441369 m!1330659))

(declare-fun m!1330669 () Bool)

(assert (=> b!1441369 m!1330669))

(declare-fun m!1330671 () Bool)

(assert (=> b!1441375 m!1330671))

(declare-fun m!1330673 () Bool)

(assert (=> start!124590 m!1330673))

(declare-fun m!1330675 () Bool)

(assert (=> start!124590 m!1330675))

(declare-fun m!1330677 () Bool)

(assert (=> b!1441381 m!1330677))

(declare-fun m!1330679 () Bool)

(assert (=> b!1441376 m!1330679))

(assert (=> b!1441376 m!1330679))

(declare-fun m!1330681 () Bool)

(assert (=> b!1441376 m!1330681))

(declare-fun m!1330683 () Bool)

(assert (=> b!1441374 m!1330683))

(declare-fun m!1330685 () Bool)

(assert (=> b!1441374 m!1330685))

(check-sat (not b!1441380) (not b!1441374) (not b!1441377) (not b!1441381) (not b!1441369) (not b!1441373) (not b!1441378) (not b!1441376) (not start!124590) (not b!1441375))
(check-sat)
