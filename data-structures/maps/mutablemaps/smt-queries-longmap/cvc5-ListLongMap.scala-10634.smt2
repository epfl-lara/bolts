; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124984 () Bool)

(assert start!124984)

(declare-fun b!1451967 () Bool)

(declare-fun res!983246 () Bool)

(declare-fun e!817461 () Bool)

(assert (=> b!1451967 (=> (not res!983246) (not e!817461))))

(declare-datatypes ((array!98349 0))(
  ( (array!98350 (arr!47458 (Array (_ BitVec 32) (_ BitVec 64))) (size!48009 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98349)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451967 (= res!983246 (validKeyInArray!0 (select (arr!47458 a!2862) i!1006)))))

(declare-fun b!1451968 () Bool)

(declare-fun e!817460 () Bool)

(assert (=> b!1451968 (= e!817460 (not true))))

(declare-fun e!817457 () Bool)

(assert (=> b!1451968 e!817457))

(declare-fun res!983250 () Bool)

(assert (=> b!1451968 (=> (not res!983250) (not e!817457))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98349 (_ BitVec 32)) Bool)

(assert (=> b!1451968 (= res!983250 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48910 0))(
  ( (Unit!48911) )
))
(declare-fun lt!636768 () Unit!48910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98349 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48910)

(assert (=> b!1451968 (= lt!636768 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!983248 () Bool)

(assert (=> start!124984 (=> (not res!983248) (not e!817461))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124984 (= res!983248 (validMask!0 mask!2687))))

(assert (=> start!124984 e!817461))

(assert (=> start!124984 true))

(declare-fun array_inv!36403 (array!98349) Bool)

(assert (=> start!124984 (array_inv!36403 a!2862)))

(declare-fun b!1451969 () Bool)

(declare-fun e!817463 () Bool)

(assert (=> b!1451969 (= e!817461 e!817463)))

(declare-fun res!983244 () Bool)

(assert (=> b!1451969 (=> (not res!983244) (not e!817463))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1451969 (= res!983244 (= (select (store (arr!47458 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636769 () array!98349)

(assert (=> b!1451969 (= lt!636769 (array!98350 (store (arr!47458 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48009 a!2862)))))

(declare-fun b!1451970 () Bool)

(declare-fun res!983242 () Bool)

(assert (=> b!1451970 (=> (not res!983242) (not e!817461))))

(assert (=> b!1451970 (= res!983242 (and (= (size!48009 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48009 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48009 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1451971 () Bool)

(declare-fun e!817458 () Bool)

(assert (=> b!1451971 (= e!817463 e!817458)))

(declare-fun res!983241 () Bool)

(assert (=> b!1451971 (=> (not res!983241) (not e!817458))))

(declare-datatypes ((SeekEntryResult!11733 0))(
  ( (MissingZero!11733 (index!49323 (_ BitVec 32))) (Found!11733 (index!49324 (_ BitVec 32))) (Intermediate!11733 (undefined!12545 Bool) (index!49325 (_ BitVec 32)) (x!130977 (_ BitVec 32))) (Undefined!11733) (MissingVacant!11733 (index!49326 (_ BitVec 32))) )
))
(declare-fun lt!636770 () SeekEntryResult!11733)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98349 (_ BitVec 32)) SeekEntryResult!11733)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451971 (= res!983241 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47458 a!2862) j!93) mask!2687) (select (arr!47458 a!2862) j!93) a!2862 mask!2687) lt!636770))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451971 (= lt!636770 (Intermediate!11733 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817462 () Bool)

(declare-fun b!1451972 () Bool)

(declare-fun lt!636772 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98349 (_ BitVec 32)) SeekEntryResult!11733)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98349 (_ BitVec 32)) SeekEntryResult!11733)

(assert (=> b!1451972 (= e!817462 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636772 lt!636769 mask!2687) (seekEntryOrOpen!0 lt!636772 lt!636769 mask!2687)))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1451973 () Bool)

(assert (=> b!1451973 (= e!817457 (and (or (= (select (arr!47458 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47458 a!2862) intermediateBeforeIndex!19) (select (arr!47458 a!2862) j!93))) (or (and (= (select (arr!47458 a!2862) index!646) (select (store (arr!47458 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47458 a!2862) index!646) (select (arr!47458 a!2862) j!93))) (= (select (arr!47458 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47458 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451974 () Bool)

(declare-fun res!983249 () Bool)

(assert (=> b!1451974 (=> (not res!983249) (not e!817457))))

(assert (=> b!1451974 (= res!983249 (= (seekEntryOrOpen!0 (select (arr!47458 a!2862) j!93) a!2862 mask!2687) (Found!11733 j!93)))))

(declare-fun b!1451975 () Bool)

(declare-fun res!983240 () Bool)

(assert (=> b!1451975 (=> (not res!983240) (not e!817460))))

(assert (=> b!1451975 (= res!983240 e!817462)))

(declare-fun c!133877 () Bool)

(assert (=> b!1451975 (= c!133877 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451976 () Bool)

(declare-fun res!983253 () Bool)

(assert (=> b!1451976 (=> (not res!983253) (not e!817458))))

(assert (=> b!1451976 (= res!983253 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47458 a!2862) j!93) a!2862 mask!2687) lt!636770))))

(declare-fun b!1451977 () Bool)

(declare-fun res!983239 () Bool)

(assert (=> b!1451977 (=> (not res!983239) (not e!817461))))

(assert (=> b!1451977 (= res!983239 (validKeyInArray!0 (select (arr!47458 a!2862) j!93)))))

(declare-fun b!1451978 () Bool)

(declare-fun res!983247 () Bool)

(assert (=> b!1451978 (=> (not res!983247) (not e!817461))))

(declare-datatypes ((List!34139 0))(
  ( (Nil!34136) (Cons!34135 (h!35485 (_ BitVec 64)) (t!48840 List!34139)) )
))
(declare-fun arrayNoDuplicates!0 (array!98349 (_ BitVec 32) List!34139) Bool)

(assert (=> b!1451978 (= res!983247 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34136))))

(declare-fun b!1451979 () Bool)

(assert (=> b!1451979 (= e!817458 e!817460)))

(declare-fun res!983245 () Bool)

(assert (=> b!1451979 (=> (not res!983245) (not e!817460))))

(declare-fun lt!636771 () SeekEntryResult!11733)

(assert (=> b!1451979 (= res!983245 (= lt!636771 (Intermediate!11733 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1451979 (= lt!636771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636772 mask!2687) lt!636772 lt!636769 mask!2687))))

(assert (=> b!1451979 (= lt!636772 (select (store (arr!47458 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451980 () Bool)

(assert (=> b!1451980 (= e!817462 (= lt!636771 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636772 lt!636769 mask!2687)))))

(declare-fun b!1451981 () Bool)

(declare-fun res!983251 () Bool)

(assert (=> b!1451981 (=> (not res!983251) (not e!817461))))

(assert (=> b!1451981 (= res!983251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451982 () Bool)

(declare-fun res!983252 () Bool)

(assert (=> b!1451982 (=> (not res!983252) (not e!817460))))

(assert (=> b!1451982 (= res!983252 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451983 () Bool)

(declare-fun res!983243 () Bool)

(assert (=> b!1451983 (=> (not res!983243) (not e!817461))))

(assert (=> b!1451983 (= res!983243 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48009 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48009 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48009 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!124984 res!983248) b!1451970))

(assert (= (and b!1451970 res!983242) b!1451967))

(assert (= (and b!1451967 res!983246) b!1451977))

(assert (= (and b!1451977 res!983239) b!1451981))

(assert (= (and b!1451981 res!983251) b!1451978))

(assert (= (and b!1451978 res!983247) b!1451983))

(assert (= (and b!1451983 res!983243) b!1451969))

(assert (= (and b!1451969 res!983244) b!1451971))

(assert (= (and b!1451971 res!983241) b!1451976))

(assert (= (and b!1451976 res!983253) b!1451979))

(assert (= (and b!1451979 res!983245) b!1451975))

(assert (= (and b!1451975 c!133877) b!1451980))

(assert (= (and b!1451975 (not c!133877)) b!1451972))

(assert (= (and b!1451975 res!983240) b!1451982))

(assert (= (and b!1451982 res!983252) b!1451968))

(assert (= (and b!1451968 res!983250) b!1451974))

(assert (= (and b!1451974 res!983249) b!1451973))

(declare-fun m!1340607 () Bool)

(assert (=> b!1451973 m!1340607))

(declare-fun m!1340609 () Bool)

(assert (=> b!1451973 m!1340609))

(declare-fun m!1340611 () Bool)

(assert (=> b!1451973 m!1340611))

(declare-fun m!1340613 () Bool)

(assert (=> b!1451973 m!1340613))

(declare-fun m!1340615 () Bool)

(assert (=> b!1451973 m!1340615))

(declare-fun m!1340617 () Bool)

(assert (=> start!124984 m!1340617))

(declare-fun m!1340619 () Bool)

(assert (=> start!124984 m!1340619))

(assert (=> b!1451969 m!1340607))

(declare-fun m!1340621 () Bool)

(assert (=> b!1451969 m!1340621))

(declare-fun m!1340623 () Bool)

(assert (=> b!1451978 m!1340623))

(assert (=> b!1451974 m!1340615))

(assert (=> b!1451974 m!1340615))

(declare-fun m!1340625 () Bool)

(assert (=> b!1451974 m!1340625))

(assert (=> b!1451971 m!1340615))

(assert (=> b!1451971 m!1340615))

(declare-fun m!1340627 () Bool)

(assert (=> b!1451971 m!1340627))

(assert (=> b!1451971 m!1340627))

(assert (=> b!1451971 m!1340615))

(declare-fun m!1340629 () Bool)

(assert (=> b!1451971 m!1340629))

(declare-fun m!1340631 () Bool)

(assert (=> b!1451967 m!1340631))

(assert (=> b!1451967 m!1340631))

(declare-fun m!1340633 () Bool)

(assert (=> b!1451967 m!1340633))

(declare-fun m!1340635 () Bool)

(assert (=> b!1451972 m!1340635))

(declare-fun m!1340637 () Bool)

(assert (=> b!1451972 m!1340637))

(declare-fun m!1340639 () Bool)

(assert (=> b!1451979 m!1340639))

(assert (=> b!1451979 m!1340639))

(declare-fun m!1340641 () Bool)

(assert (=> b!1451979 m!1340641))

(assert (=> b!1451979 m!1340607))

(declare-fun m!1340643 () Bool)

(assert (=> b!1451979 m!1340643))

(declare-fun m!1340645 () Bool)

(assert (=> b!1451980 m!1340645))

(declare-fun m!1340647 () Bool)

(assert (=> b!1451968 m!1340647))

(declare-fun m!1340649 () Bool)

(assert (=> b!1451968 m!1340649))

(assert (=> b!1451977 m!1340615))

(assert (=> b!1451977 m!1340615))

(declare-fun m!1340651 () Bool)

(assert (=> b!1451977 m!1340651))

(assert (=> b!1451976 m!1340615))

(assert (=> b!1451976 m!1340615))

(declare-fun m!1340653 () Bool)

(assert (=> b!1451976 m!1340653))

(declare-fun m!1340655 () Bool)

(assert (=> b!1451981 m!1340655))

(push 1)

