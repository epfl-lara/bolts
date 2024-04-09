; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124948 () Bool)

(assert start!124948)

(declare-fun b!1451040 () Bool)

(declare-fun e!817072 () Bool)

(assert (=> b!1451040 (= e!817072 (not true))))

(declare-fun e!817076 () Bool)

(assert (=> b!1451040 e!817076))

(declare-fun res!982427 () Bool)

(assert (=> b!1451040 (=> (not res!982427) (not e!817076))))

(declare-datatypes ((array!98313 0))(
  ( (array!98314 (arr!47440 (Array (_ BitVec 32) (_ BitVec 64))) (size!47991 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98313)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98313 (_ BitVec 32)) Bool)

(assert (=> b!1451040 (= res!982427 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48874 0))(
  ( (Unit!48875) )
))
(declare-fun lt!636498 () Unit!48874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48874)

(assert (=> b!1451040 (= lt!636498 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!982432 () Bool)

(declare-fun e!817075 () Bool)

(assert (=> start!124948 (=> (not res!982432) (not e!817075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124948 (= res!982432 (validMask!0 mask!2687))))

(assert (=> start!124948 e!817075))

(assert (=> start!124948 true))

(declare-fun array_inv!36385 (array!98313) Bool)

(assert (=> start!124948 (array_inv!36385 a!2862)))

(declare-fun b!1451041 () Bool)

(declare-fun res!982434 () Bool)

(assert (=> b!1451041 (=> (not res!982434) (not e!817072))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451041 (= res!982434 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451042 () Bool)

(declare-fun res!982424 () Bool)

(declare-fun e!817073 () Bool)

(assert (=> b!1451042 (=> (not res!982424) (not e!817073))))

(declare-datatypes ((SeekEntryResult!11715 0))(
  ( (MissingZero!11715 (index!49251 (_ BitVec 32))) (Found!11715 (index!49252 (_ BitVec 32))) (Intermediate!11715 (undefined!12527 Bool) (index!49253 (_ BitVec 32)) (x!130911 (_ BitVec 32))) (Undefined!11715) (MissingVacant!11715 (index!49254 (_ BitVec 32))) )
))
(declare-fun lt!636500 () SeekEntryResult!11715)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98313 (_ BitVec 32)) SeekEntryResult!11715)

(assert (=> b!1451042 (= res!982424 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47440 a!2862) j!93) a!2862 mask!2687) lt!636500))))

(declare-fun b!1451043 () Bool)

(declare-fun res!982429 () Bool)

(assert (=> b!1451043 (=> (not res!982429) (not e!817075))))

(declare-datatypes ((List!34121 0))(
  ( (Nil!34118) (Cons!34117 (h!35467 (_ BitVec 64)) (t!48822 List!34121)) )
))
(declare-fun arrayNoDuplicates!0 (array!98313 (_ BitVec 32) List!34121) Bool)

(assert (=> b!1451043 (= res!982429 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34118))))

(declare-fun b!1451044 () Bool)

(declare-fun res!982431 () Bool)

(assert (=> b!1451044 (=> (not res!982431) (not e!817075))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1451044 (= res!982431 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47991 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47991 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47991 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451045 () Bool)

(declare-fun res!982425 () Bool)

(assert (=> b!1451045 (=> (not res!982425) (not e!817075))))

(assert (=> b!1451045 (= res!982425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451046 () Bool)

(declare-fun e!817071 () Bool)

(assert (=> b!1451046 (= e!817071 e!817073)))

(declare-fun res!982428 () Bool)

(assert (=> b!1451046 (=> (not res!982428) (not e!817073))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451046 (= res!982428 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47440 a!2862) j!93) mask!2687) (select (arr!47440 a!2862) j!93) a!2862 mask!2687) lt!636500))))

(assert (=> b!1451046 (= lt!636500 (Intermediate!11715 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451047 () Bool)

(declare-fun res!982426 () Bool)

(assert (=> b!1451047 (=> (not res!982426) (not e!817075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451047 (= res!982426 (validKeyInArray!0 (select (arr!47440 a!2862) i!1006)))))

(declare-fun b!1451048 () Bool)

(declare-fun res!982422 () Bool)

(assert (=> b!1451048 (=> (not res!982422) (not e!817075))))

(assert (=> b!1451048 (= res!982422 (validKeyInArray!0 (select (arr!47440 a!2862) j!93)))))

(declare-fun b!1451049 () Bool)

(declare-fun res!982423 () Bool)

(assert (=> b!1451049 (=> (not res!982423) (not e!817076))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98313 (_ BitVec 32)) SeekEntryResult!11715)

(assert (=> b!1451049 (= res!982423 (= (seekEntryOrOpen!0 (select (arr!47440 a!2862) j!93) a!2862 mask!2687) (Found!11715 j!93)))))

(declare-fun b!1451050 () Bool)

(declare-fun lt!636501 () (_ BitVec 64))

(declare-fun e!817074 () Bool)

(declare-fun lt!636499 () array!98313)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98313 (_ BitVec 32)) SeekEntryResult!11715)

(assert (=> b!1451050 (= e!817074 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636501 lt!636499 mask!2687) (seekEntryOrOpen!0 lt!636501 lt!636499 mask!2687)))))

(declare-fun b!1451051 () Bool)

(declare-fun res!982421 () Bool)

(assert (=> b!1451051 (=> (not res!982421) (not e!817072))))

(assert (=> b!1451051 (= res!982421 e!817074)))

(declare-fun c!133823 () Bool)

(assert (=> b!1451051 (= c!133823 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451052 () Bool)

(assert (=> b!1451052 (= e!817076 (and (or (= (select (arr!47440 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47440 a!2862) intermediateBeforeIndex!19) (select (arr!47440 a!2862) j!93))) (or (and (= (select (arr!47440 a!2862) index!646) (select (store (arr!47440 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47440 a!2862) index!646) (select (arr!47440 a!2862) j!93))) (= (select (arr!47440 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47440 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451053 () Bool)

(assert (=> b!1451053 (= e!817073 e!817072)))

(declare-fun res!982430 () Bool)

(assert (=> b!1451053 (=> (not res!982430) (not e!817072))))

(declare-fun lt!636502 () SeekEntryResult!11715)

(assert (=> b!1451053 (= res!982430 (= lt!636502 (Intermediate!11715 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451053 (= lt!636502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636501 mask!2687) lt!636501 lt!636499 mask!2687))))

(assert (=> b!1451053 (= lt!636501 (select (store (arr!47440 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451054 () Bool)

(assert (=> b!1451054 (= e!817074 (= lt!636502 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636501 lt!636499 mask!2687)))))

(declare-fun b!1451055 () Bool)

(declare-fun res!982433 () Bool)

(assert (=> b!1451055 (=> (not res!982433) (not e!817075))))

(assert (=> b!1451055 (= res!982433 (and (= (size!47991 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47991 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47991 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451056 () Bool)

(assert (=> b!1451056 (= e!817075 e!817071)))

(declare-fun res!982420 () Bool)

(assert (=> b!1451056 (=> (not res!982420) (not e!817071))))

(assert (=> b!1451056 (= res!982420 (= (select (store (arr!47440 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451056 (= lt!636499 (array!98314 (store (arr!47440 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47991 a!2862)))))

(assert (= (and start!124948 res!982432) b!1451055))

(assert (= (and b!1451055 res!982433) b!1451047))

(assert (= (and b!1451047 res!982426) b!1451048))

(assert (= (and b!1451048 res!982422) b!1451045))

(assert (= (and b!1451045 res!982425) b!1451043))

(assert (= (and b!1451043 res!982429) b!1451044))

(assert (= (and b!1451044 res!982431) b!1451056))

(assert (= (and b!1451056 res!982420) b!1451046))

(assert (= (and b!1451046 res!982428) b!1451042))

(assert (= (and b!1451042 res!982424) b!1451053))

(assert (= (and b!1451053 res!982430) b!1451051))

(assert (= (and b!1451051 c!133823) b!1451054))

(assert (= (and b!1451051 (not c!133823)) b!1451050))

(assert (= (and b!1451051 res!982421) b!1451041))

(assert (= (and b!1451041 res!982434) b!1451040))

(assert (= (and b!1451040 res!982427) b!1451049))

(assert (= (and b!1451049 res!982423) b!1451052))

(declare-fun m!1339701 () Bool)

(assert (=> b!1451045 m!1339701))

(declare-fun m!1339703 () Bool)

(assert (=> b!1451043 m!1339703))

(declare-fun m!1339705 () Bool)

(assert (=> b!1451049 m!1339705))

(assert (=> b!1451049 m!1339705))

(declare-fun m!1339707 () Bool)

(assert (=> b!1451049 m!1339707))

(declare-fun m!1339709 () Bool)

(assert (=> start!124948 m!1339709))

(declare-fun m!1339711 () Bool)

(assert (=> start!124948 m!1339711))

(declare-fun m!1339713 () Bool)

(assert (=> b!1451053 m!1339713))

(assert (=> b!1451053 m!1339713))

(declare-fun m!1339715 () Bool)

(assert (=> b!1451053 m!1339715))

(declare-fun m!1339717 () Bool)

(assert (=> b!1451053 m!1339717))

(declare-fun m!1339719 () Bool)

(assert (=> b!1451053 m!1339719))

(declare-fun m!1339721 () Bool)

(assert (=> b!1451047 m!1339721))

(assert (=> b!1451047 m!1339721))

(declare-fun m!1339723 () Bool)

(assert (=> b!1451047 m!1339723))

(assert (=> b!1451052 m!1339717))

(declare-fun m!1339725 () Bool)

(assert (=> b!1451052 m!1339725))

(declare-fun m!1339727 () Bool)

(assert (=> b!1451052 m!1339727))

(declare-fun m!1339729 () Bool)

(assert (=> b!1451052 m!1339729))

(assert (=> b!1451052 m!1339705))

(declare-fun m!1339731 () Bool)

(assert (=> b!1451054 m!1339731))

(declare-fun m!1339733 () Bool)

(assert (=> b!1451040 m!1339733))

(declare-fun m!1339735 () Bool)

(assert (=> b!1451040 m!1339735))

(assert (=> b!1451048 m!1339705))

(assert (=> b!1451048 m!1339705))

(declare-fun m!1339737 () Bool)

(assert (=> b!1451048 m!1339737))

(assert (=> b!1451046 m!1339705))

(assert (=> b!1451046 m!1339705))

(declare-fun m!1339739 () Bool)

(assert (=> b!1451046 m!1339739))

(assert (=> b!1451046 m!1339739))

(assert (=> b!1451046 m!1339705))

(declare-fun m!1339741 () Bool)

(assert (=> b!1451046 m!1339741))

(assert (=> b!1451042 m!1339705))

(assert (=> b!1451042 m!1339705))

(declare-fun m!1339743 () Bool)

(assert (=> b!1451042 m!1339743))

(declare-fun m!1339745 () Bool)

(assert (=> b!1451050 m!1339745))

(declare-fun m!1339747 () Bool)

(assert (=> b!1451050 m!1339747))

(assert (=> b!1451056 m!1339717))

(declare-fun m!1339749 () Bool)

(assert (=> b!1451056 m!1339749))

(push 1)

