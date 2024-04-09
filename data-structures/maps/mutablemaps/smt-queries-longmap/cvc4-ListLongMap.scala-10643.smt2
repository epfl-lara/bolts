; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125042 () Bool)

(assert start!125042)

(declare-fun b!1453560 () Bool)

(declare-fun res!984668 () Bool)

(declare-fun e!818145 () Bool)

(assert (=> b!1453560 (=> (not res!984668) (not e!818145))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98407 0))(
  ( (array!98408 (arr!47487 (Array (_ BitVec 32) (_ BitVec 64))) (size!48038 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98407)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11762 0))(
  ( (MissingZero!11762 (index!49439 (_ BitVec 32))) (Found!11762 (index!49440 (_ BitVec 32))) (Intermediate!11762 (undefined!12574 Bool) (index!49441 (_ BitVec 32)) (x!131078 (_ BitVec 32))) (Undefined!11762) (MissingVacant!11762 (index!49442 (_ BitVec 32))) )
))
(declare-fun lt!637240 () SeekEntryResult!11762)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98407 (_ BitVec 32)) SeekEntryResult!11762)

(assert (=> b!1453560 (= res!984668 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47487 a!2862) j!93) a!2862 mask!2687) lt!637240))))

(declare-fun b!1453561 () Bool)

(declare-fun res!984659 () Bool)

(declare-fun e!818153 () Bool)

(assert (=> b!1453561 (=> (not res!984659) (not e!818153))))

(declare-datatypes ((List!34168 0))(
  ( (Nil!34165) (Cons!34164 (h!35514 (_ BitVec 64)) (t!48869 List!34168)) )
))
(declare-fun arrayNoDuplicates!0 (array!98407 (_ BitVec 32) List!34168) Bool)

(assert (=> b!1453561 (= res!984659 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34165))))

(declare-fun b!1453562 () Bool)

(declare-fun e!818148 () Bool)

(declare-fun e!818147 () Bool)

(assert (=> b!1453562 (= e!818148 e!818147)))

(declare-fun res!984664 () Bool)

(assert (=> b!1453562 (=> res!984664 e!818147)))

(declare-fun lt!637242 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453562 (= res!984664 (or (and (= (select (arr!47487 a!2862) index!646) lt!637242) (= (select (arr!47487 a!2862) index!646) (select (arr!47487 a!2862) j!93))) (= (select (arr!47487 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453562 (= lt!637242 (select (store (arr!47487 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1453563 () Bool)

(declare-fun res!984667 () Bool)

(assert (=> b!1453563 (=> (not res!984667) (not e!818153))))

(assert (=> b!1453563 (= res!984667 (and (= (size!48038 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48038 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48038 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453564 () Bool)

(declare-fun res!984663 () Bool)

(assert (=> b!1453564 (=> (not res!984663) (not e!818153))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453564 (= res!984663 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48038 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48038 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48038 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453565 () Bool)

(declare-fun res!984665 () Bool)

(assert (=> b!1453565 (=> (not res!984665) (not e!818153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98407 (_ BitVec 32)) Bool)

(assert (=> b!1453565 (= res!984665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453566 () Bool)

(declare-fun e!818150 () Bool)

(assert (=> b!1453566 (= e!818147 e!818150)))

(declare-fun res!984662 () Bool)

(assert (=> b!1453566 (=> (not res!984662) (not e!818150))))

(assert (=> b!1453566 (= res!984662 (and (= index!646 intermediateAfterIndex!19) (= lt!637242 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!984673 () Bool)

(assert (=> start!125042 (=> (not res!984673) (not e!818153))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125042 (= res!984673 (validMask!0 mask!2687))))

(assert (=> start!125042 e!818153))

(assert (=> start!125042 true))

(declare-fun array_inv!36432 (array!98407) Bool)

(assert (=> start!125042 (array_inv!36432 a!2862)))

(declare-fun b!1453567 () Bool)

(declare-fun e!818149 () Bool)

(assert (=> b!1453567 (= e!818145 e!818149)))

(declare-fun res!984670 () Bool)

(assert (=> b!1453567 (=> (not res!984670) (not e!818149))))

(declare-fun lt!637241 () SeekEntryResult!11762)

(assert (=> b!1453567 (= res!984670 (= lt!637241 (Intermediate!11762 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!637243 () array!98407)

(declare-fun lt!637238 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453567 (= lt!637241 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637238 mask!2687) lt!637238 lt!637243 mask!2687))))

(assert (=> b!1453567 (= lt!637238 (select (store (arr!47487 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453568 () Bool)

(declare-fun res!984666 () Bool)

(assert (=> b!1453568 (=> (not res!984666) (not e!818149))))

(assert (=> b!1453568 (= res!984666 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453569 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98407 (_ BitVec 32)) SeekEntryResult!11762)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98407 (_ BitVec 32)) SeekEntryResult!11762)

(assert (=> b!1453569 (= e!818150 (= (seekEntryOrOpen!0 lt!637238 lt!637243 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637238 lt!637243 mask!2687)))))

(declare-fun e!818146 () Bool)

(declare-fun b!1453570 () Bool)

(assert (=> b!1453570 (= e!818146 (= lt!637241 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637238 lt!637243 mask!2687)))))

(declare-fun b!1453571 () Bool)

(declare-fun res!984661 () Bool)

(assert (=> b!1453571 (=> (not res!984661) (not e!818148))))

(assert (=> b!1453571 (= res!984661 (or (= (select (arr!47487 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47487 a!2862) intermediateBeforeIndex!19) (select (arr!47487 a!2862) j!93))))))

(declare-fun b!1453572 () Bool)

(assert (=> b!1453572 (= e!818149 (not true))))

(assert (=> b!1453572 e!818148))

(declare-fun res!984669 () Bool)

(assert (=> b!1453572 (=> (not res!984669) (not e!818148))))

(assert (=> b!1453572 (= res!984669 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48968 0))(
  ( (Unit!48969) )
))
(declare-fun lt!637239 () Unit!48968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48968)

(assert (=> b!1453572 (= lt!637239 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1453573 () Bool)

(declare-fun res!984672 () Bool)

(assert (=> b!1453573 (=> (not res!984672) (not e!818148))))

(assert (=> b!1453573 (= res!984672 (= (seekEntryOrOpen!0 (select (arr!47487 a!2862) j!93) a!2862 mask!2687) (Found!11762 j!93)))))

(declare-fun b!1453574 () Bool)

(declare-fun e!818151 () Bool)

(assert (=> b!1453574 (= e!818153 e!818151)))

(declare-fun res!984674 () Bool)

(assert (=> b!1453574 (=> (not res!984674) (not e!818151))))

(assert (=> b!1453574 (= res!984674 (= (select (store (arr!47487 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453574 (= lt!637243 (array!98408 (store (arr!47487 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48038 a!2862)))))

(declare-fun b!1453575 () Bool)

(declare-fun res!984658 () Bool)

(assert (=> b!1453575 (=> (not res!984658) (not e!818149))))

(assert (=> b!1453575 (= res!984658 e!818146)))

(declare-fun c!133964 () Bool)

(assert (=> b!1453575 (= c!133964 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453576 () Bool)

(declare-fun res!984671 () Bool)

(assert (=> b!1453576 (=> (not res!984671) (not e!818153))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453576 (= res!984671 (validKeyInArray!0 (select (arr!47487 a!2862) j!93)))))

(declare-fun b!1453577 () Bool)

(assert (=> b!1453577 (= e!818151 e!818145)))

(declare-fun res!984675 () Bool)

(assert (=> b!1453577 (=> (not res!984675) (not e!818145))))

(assert (=> b!1453577 (= res!984675 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47487 a!2862) j!93) mask!2687) (select (arr!47487 a!2862) j!93) a!2862 mask!2687) lt!637240))))

(assert (=> b!1453577 (= lt!637240 (Intermediate!11762 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453578 () Bool)

(declare-fun res!984660 () Bool)

(assert (=> b!1453578 (=> (not res!984660) (not e!818153))))

(assert (=> b!1453578 (= res!984660 (validKeyInArray!0 (select (arr!47487 a!2862) i!1006)))))

(declare-fun b!1453579 () Bool)

(assert (=> b!1453579 (= e!818146 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637238 lt!637243 mask!2687) (seekEntryOrOpen!0 lt!637238 lt!637243 mask!2687)))))

(assert (= (and start!125042 res!984673) b!1453563))

(assert (= (and b!1453563 res!984667) b!1453578))

(assert (= (and b!1453578 res!984660) b!1453576))

(assert (= (and b!1453576 res!984671) b!1453565))

(assert (= (and b!1453565 res!984665) b!1453561))

(assert (= (and b!1453561 res!984659) b!1453564))

(assert (= (and b!1453564 res!984663) b!1453574))

(assert (= (and b!1453574 res!984674) b!1453577))

(assert (= (and b!1453577 res!984675) b!1453560))

(assert (= (and b!1453560 res!984668) b!1453567))

(assert (= (and b!1453567 res!984670) b!1453575))

(assert (= (and b!1453575 c!133964) b!1453570))

(assert (= (and b!1453575 (not c!133964)) b!1453579))

(assert (= (and b!1453575 res!984658) b!1453568))

(assert (= (and b!1453568 res!984666) b!1453572))

(assert (= (and b!1453572 res!984669) b!1453573))

(assert (= (and b!1453573 res!984672) b!1453571))

(assert (= (and b!1453571 res!984661) b!1453562))

(assert (= (and b!1453562 (not res!984664)) b!1453566))

(assert (= (and b!1453566 res!984662) b!1453569))

(declare-fun m!1342063 () Bool)

(assert (=> start!125042 m!1342063))

(declare-fun m!1342065 () Bool)

(assert (=> start!125042 m!1342065))

(declare-fun m!1342067 () Bool)

(assert (=> b!1453570 m!1342067))

(declare-fun m!1342069 () Bool)

(assert (=> b!1453576 m!1342069))

(assert (=> b!1453576 m!1342069))

(declare-fun m!1342071 () Bool)

(assert (=> b!1453576 m!1342071))

(assert (=> b!1453560 m!1342069))

(assert (=> b!1453560 m!1342069))

(declare-fun m!1342073 () Bool)

(assert (=> b!1453560 m!1342073))

(declare-fun m!1342075 () Bool)

(assert (=> b!1453574 m!1342075))

(declare-fun m!1342077 () Bool)

(assert (=> b!1453574 m!1342077))

(declare-fun m!1342079 () Bool)

(assert (=> b!1453562 m!1342079))

(assert (=> b!1453562 m!1342069))

(assert (=> b!1453562 m!1342075))

(declare-fun m!1342081 () Bool)

(assert (=> b!1453562 m!1342081))

(declare-fun m!1342083 () Bool)

(assert (=> b!1453571 m!1342083))

(assert (=> b!1453571 m!1342069))

(declare-fun m!1342085 () Bool)

(assert (=> b!1453572 m!1342085))

(declare-fun m!1342087 () Bool)

(assert (=> b!1453572 m!1342087))

(assert (=> b!1453573 m!1342069))

(assert (=> b!1453573 m!1342069))

(declare-fun m!1342089 () Bool)

(assert (=> b!1453573 m!1342089))

(declare-fun m!1342091 () Bool)

(assert (=> b!1453565 m!1342091))

(assert (=> b!1453577 m!1342069))

(assert (=> b!1453577 m!1342069))

(declare-fun m!1342093 () Bool)

(assert (=> b!1453577 m!1342093))

(assert (=> b!1453577 m!1342093))

(assert (=> b!1453577 m!1342069))

(declare-fun m!1342095 () Bool)

(assert (=> b!1453577 m!1342095))

(declare-fun m!1342097 () Bool)

(assert (=> b!1453567 m!1342097))

(assert (=> b!1453567 m!1342097))

(declare-fun m!1342099 () Bool)

(assert (=> b!1453567 m!1342099))

(assert (=> b!1453567 m!1342075))

(declare-fun m!1342101 () Bool)

(assert (=> b!1453567 m!1342101))

(declare-fun m!1342103 () Bool)

(assert (=> b!1453561 m!1342103))

(declare-fun m!1342105 () Bool)

(assert (=> b!1453569 m!1342105))

(declare-fun m!1342107 () Bool)

(assert (=> b!1453569 m!1342107))

(assert (=> b!1453579 m!1342107))

(assert (=> b!1453579 m!1342105))

(declare-fun m!1342109 () Bool)

(assert (=> b!1453578 m!1342109))

(assert (=> b!1453578 m!1342109))

(declare-fun m!1342111 () Bool)

(assert (=> b!1453578 m!1342111))

(push 1)

(assert (not b!1453577))

(assert (not b!1453576))

(assert (not b!1453569))

(assert (not b!1453565))

(assert (not b!1453567))

(assert (not b!1453578))

(assert (not start!125042))

(assert (not b!1453570))

(assert (not b!1453561))

(assert (not b!1453579))

(assert (not b!1453573))

(assert (not b!1453560))

(assert (not b!1453572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

