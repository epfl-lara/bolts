; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126956 () Bool)

(assert start!126956)

(declare-fun b!1491404 () Bool)

(declare-fun e!835633 () Bool)

(declare-fun e!835636 () Bool)

(assert (=> b!1491404 (= e!835633 (not e!835636))))

(declare-fun res!1014684 () Bool)

(assert (=> b!1491404 (=> res!1014684 e!835636)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99646 0))(
  ( (array!99647 (arr!48090 (Array (_ BitVec 32) (_ BitVec 64))) (size!48641 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99646)

(assert (=> b!1491404 (= res!1014684 (or (and (= (select (arr!48090 a!2862) index!646) (select (store (arr!48090 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48090 a!2862) index!646) (select (arr!48090 a!2862) j!93))) (= (select (arr!48090 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835634 () Bool)

(assert (=> b!1491404 e!835634))

(declare-fun res!1014680 () Bool)

(assert (=> b!1491404 (=> (not res!1014680) (not e!835634))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99646 (_ BitVec 32)) Bool)

(assert (=> b!1491404 (= res!1014680 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49994 0))(
  ( (Unit!49995) )
))
(declare-fun lt!650236 () Unit!49994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99646 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49994)

(assert (=> b!1491404 (= lt!650236 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491405 () Bool)

(declare-fun e!835637 () Bool)

(declare-fun e!835632 () Bool)

(assert (=> b!1491405 (= e!835637 e!835632)))

(declare-fun res!1014686 () Bool)

(assert (=> b!1491405 (=> (not res!1014686) (not e!835632))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491405 (= res!1014686 (= (select (store (arr!48090 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650233 () array!99646)

(assert (=> b!1491405 (= lt!650233 (array!99647 (store (arr!48090 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48641 a!2862)))))

(declare-fun b!1491406 () Bool)

(declare-fun res!1014687 () Bool)

(assert (=> b!1491406 (=> (not res!1014687) (not e!835637))))

(assert (=> b!1491406 (= res!1014687 (and (= (size!48641 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48641 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48641 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491407 () Bool)

(declare-fun e!835630 () Bool)

(assert (=> b!1491407 (= e!835630 e!835633)))

(declare-fun res!1014682 () Bool)

(assert (=> b!1491407 (=> (not res!1014682) (not e!835633))))

(declare-datatypes ((SeekEntryResult!12353 0))(
  ( (MissingZero!12353 (index!51803 (_ BitVec 32))) (Found!12353 (index!51804 (_ BitVec 32))) (Intermediate!12353 (undefined!13165 Bool) (index!51805 (_ BitVec 32)) (x!133388 (_ BitVec 32))) (Undefined!12353) (MissingVacant!12353 (index!51806 (_ BitVec 32))) )
))
(declare-fun lt!650231 () SeekEntryResult!12353)

(assert (=> b!1491407 (= res!1014682 (= lt!650231 (Intermediate!12353 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650232 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99646 (_ BitVec 32)) SeekEntryResult!12353)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491407 (= lt!650231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650232 mask!2687) lt!650232 lt!650233 mask!2687))))

(assert (=> b!1491407 (= lt!650232 (select (store (arr!48090 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491408 () Bool)

(declare-fun res!1014679 () Bool)

(assert (=> b!1491408 (=> (not res!1014679) (not e!835637))))

(declare-datatypes ((List!34771 0))(
  ( (Nil!34768) (Cons!34767 (h!36150 (_ BitVec 64)) (t!49472 List!34771)) )
))
(declare-fun arrayNoDuplicates!0 (array!99646 (_ BitVec 32) List!34771) Bool)

(assert (=> b!1491408 (= res!1014679 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34768))))

(declare-fun b!1491409 () Bool)

(declare-fun res!1014678 () Bool)

(assert (=> b!1491409 (=> (not res!1014678) (not e!835637))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1491409 (= res!1014678 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48641 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48641 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48641 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491410 () Bool)

(declare-fun res!1014685 () Bool)

(assert (=> b!1491410 (=> (not res!1014685) (not e!835637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491410 (= res!1014685 (validKeyInArray!0 (select (arr!48090 a!2862) j!93)))))

(declare-fun b!1491411 () Bool)

(declare-fun res!1014681 () Bool)

(assert (=> b!1491411 (=> (not res!1014681) (not e!835630))))

(declare-fun lt!650234 () SeekEntryResult!12353)

(assert (=> b!1491411 (= res!1014681 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48090 a!2862) j!93) a!2862 mask!2687) lt!650234))))

(declare-fun b!1491413 () Bool)

(assert (=> b!1491413 (= e!835632 e!835630)))

(declare-fun res!1014676 () Bool)

(assert (=> b!1491413 (=> (not res!1014676) (not e!835630))))

(assert (=> b!1491413 (= res!1014676 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48090 a!2862) j!93) mask!2687) (select (arr!48090 a!2862) j!93) a!2862 mask!2687) lt!650234))))

(assert (=> b!1491413 (= lt!650234 (Intermediate!12353 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491414 () Bool)

(assert (=> b!1491414 (= e!835636 true)))

(declare-fun lt!650235 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491414 (= lt!650235 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun e!835631 () Bool)

(declare-fun b!1491415 () Bool)

(assert (=> b!1491415 (= e!835631 (= lt!650231 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650232 lt!650233 mask!2687)))))

(declare-fun b!1491416 () Bool)

(assert (=> b!1491416 (= e!835634 (or (= (select (arr!48090 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48090 a!2862) intermediateBeforeIndex!19) (select (arr!48090 a!2862) j!93))))))

(declare-fun b!1491417 () Bool)

(declare-fun res!1014689 () Bool)

(assert (=> b!1491417 (=> (not res!1014689) (not e!835634))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99646 (_ BitVec 32)) SeekEntryResult!12353)

(assert (=> b!1491417 (= res!1014689 (= (seekEntryOrOpen!0 (select (arr!48090 a!2862) j!93) a!2862 mask!2687) (Found!12353 j!93)))))

(declare-fun b!1491418 () Bool)

(declare-fun res!1014688 () Bool)

(assert (=> b!1491418 (=> (not res!1014688) (not e!835637))))

(assert (=> b!1491418 (= res!1014688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491412 () Bool)

(declare-fun res!1014690 () Bool)

(assert (=> b!1491412 (=> (not res!1014690) (not e!835637))))

(assert (=> b!1491412 (= res!1014690 (validKeyInArray!0 (select (arr!48090 a!2862) i!1006)))))

(declare-fun res!1014675 () Bool)

(assert (=> start!126956 (=> (not res!1014675) (not e!835637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126956 (= res!1014675 (validMask!0 mask!2687))))

(assert (=> start!126956 e!835637))

(assert (=> start!126956 true))

(declare-fun array_inv!37035 (array!99646) Bool)

(assert (=> start!126956 (array_inv!37035 a!2862)))

(declare-fun b!1491419 () Bool)

(declare-fun res!1014683 () Bool)

(assert (=> b!1491419 (=> (not res!1014683) (not e!835633))))

(assert (=> b!1491419 (= res!1014683 e!835631)))

(declare-fun c!137894 () Bool)

(assert (=> b!1491419 (= c!137894 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491420 () Bool)

(declare-fun res!1014677 () Bool)

(assert (=> b!1491420 (=> (not res!1014677) (not e!835633))))

(assert (=> b!1491420 (= res!1014677 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491421 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99646 (_ BitVec 32)) SeekEntryResult!12353)

(assert (=> b!1491421 (= e!835631 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650232 lt!650233 mask!2687) (seekEntryOrOpen!0 lt!650232 lt!650233 mask!2687)))))

(assert (= (and start!126956 res!1014675) b!1491406))

(assert (= (and b!1491406 res!1014687) b!1491412))

(assert (= (and b!1491412 res!1014690) b!1491410))

(assert (= (and b!1491410 res!1014685) b!1491418))

(assert (= (and b!1491418 res!1014688) b!1491408))

(assert (= (and b!1491408 res!1014679) b!1491409))

(assert (= (and b!1491409 res!1014678) b!1491405))

(assert (= (and b!1491405 res!1014686) b!1491413))

(assert (= (and b!1491413 res!1014676) b!1491411))

(assert (= (and b!1491411 res!1014681) b!1491407))

(assert (= (and b!1491407 res!1014682) b!1491419))

(assert (= (and b!1491419 c!137894) b!1491415))

(assert (= (and b!1491419 (not c!137894)) b!1491421))

(assert (= (and b!1491419 res!1014683) b!1491420))

(assert (= (and b!1491420 res!1014677) b!1491404))

(assert (= (and b!1491404 res!1014680) b!1491417))

(assert (= (and b!1491417 res!1014689) b!1491416))

(assert (= (and b!1491404 (not res!1014684)) b!1491414))

(declare-fun m!1375583 () Bool)

(assert (=> b!1491410 m!1375583))

(assert (=> b!1491410 m!1375583))

(declare-fun m!1375585 () Bool)

(assert (=> b!1491410 m!1375585))

(assert (=> b!1491413 m!1375583))

(assert (=> b!1491413 m!1375583))

(declare-fun m!1375587 () Bool)

(assert (=> b!1491413 m!1375587))

(assert (=> b!1491413 m!1375587))

(assert (=> b!1491413 m!1375583))

(declare-fun m!1375589 () Bool)

(assert (=> b!1491413 m!1375589))

(declare-fun m!1375591 () Bool)

(assert (=> b!1491414 m!1375591))

(declare-fun m!1375593 () Bool)

(assert (=> b!1491408 m!1375593))

(declare-fun m!1375595 () Bool)

(assert (=> b!1491418 m!1375595))

(declare-fun m!1375597 () Bool)

(assert (=> b!1491404 m!1375597))

(declare-fun m!1375599 () Bool)

(assert (=> b!1491404 m!1375599))

(declare-fun m!1375601 () Bool)

(assert (=> b!1491404 m!1375601))

(declare-fun m!1375603 () Bool)

(assert (=> b!1491404 m!1375603))

(declare-fun m!1375605 () Bool)

(assert (=> b!1491404 m!1375605))

(assert (=> b!1491404 m!1375583))

(assert (=> b!1491417 m!1375583))

(assert (=> b!1491417 m!1375583))

(declare-fun m!1375607 () Bool)

(assert (=> b!1491417 m!1375607))

(declare-fun m!1375609 () Bool)

(assert (=> b!1491407 m!1375609))

(assert (=> b!1491407 m!1375609))

(declare-fun m!1375611 () Bool)

(assert (=> b!1491407 m!1375611))

(assert (=> b!1491407 m!1375599))

(declare-fun m!1375613 () Bool)

(assert (=> b!1491407 m!1375613))

(declare-fun m!1375615 () Bool)

(assert (=> b!1491421 m!1375615))

(declare-fun m!1375617 () Bool)

(assert (=> b!1491421 m!1375617))

(declare-fun m!1375619 () Bool)

(assert (=> b!1491412 m!1375619))

(assert (=> b!1491412 m!1375619))

(declare-fun m!1375621 () Bool)

(assert (=> b!1491412 m!1375621))

(declare-fun m!1375623 () Bool)

(assert (=> start!126956 m!1375623))

(declare-fun m!1375625 () Bool)

(assert (=> start!126956 m!1375625))

(declare-fun m!1375627 () Bool)

(assert (=> b!1491415 m!1375627))

(declare-fun m!1375629 () Bool)

(assert (=> b!1491416 m!1375629))

(assert (=> b!1491416 m!1375583))

(assert (=> b!1491405 m!1375599))

(declare-fun m!1375631 () Bool)

(assert (=> b!1491405 m!1375631))

(assert (=> b!1491411 m!1375583))

(assert (=> b!1491411 m!1375583))

(declare-fun m!1375633 () Bool)

(assert (=> b!1491411 m!1375633))

(push 1)

(assert (not b!1491417))

(assert (not b!1491412))

(assert (not b!1491415))

(assert (not b!1491404))

(assert (not b!1491414))

(assert (not b!1491413))

(assert (not start!126956))

(assert (not b!1491410))

(assert (not b!1491421))

(assert (not b!1491418))

(assert (not b!1491408))

(assert (not b!1491411))

(assert (not b!1491407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

