; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125928 () Bool)

(assert start!125928)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99122 0))(
  ( (array!99123 (arr!47840 (Array (_ BitVec 32) (_ BitVec 64))) (size!48391 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99122)

(declare-fun b!1473533 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun e!826901 () Bool)

(assert (=> b!1473533 (= e!826901 (or (= (select (arr!47840 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47840 a!2862) intermediateBeforeIndex!19) (select (arr!47840 a!2862) j!93))))))

(declare-fun b!1473534 () Bool)

(declare-fun res!1000941 () Bool)

(declare-fun e!826903 () Bool)

(assert (=> b!1473534 (=> (not res!1000941) (not e!826903))))

(declare-datatypes ((List!34521 0))(
  ( (Nil!34518) (Cons!34517 (h!35876 (_ BitVec 64)) (t!49222 List!34521)) )
))
(declare-fun arrayNoDuplicates!0 (array!99122 (_ BitVec 32) List!34521) Bool)

(assert (=> b!1473534 (= res!1000941 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34518))))

(declare-fun b!1473535 () Bool)

(declare-fun e!826899 () Bool)

(declare-fun e!826902 () Bool)

(assert (=> b!1473535 (= e!826899 e!826902)))

(declare-fun res!1000952 () Bool)

(assert (=> b!1473535 (=> (not res!1000952) (not e!826902))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12103 0))(
  ( (MissingZero!12103 (index!50803 (_ BitVec 32))) (Found!12103 (index!50804 (_ BitVec 32))) (Intermediate!12103 (undefined!12915 Bool) (index!50805 (_ BitVec 32)) (x!132390 (_ BitVec 32))) (Undefined!12103) (MissingVacant!12103 (index!50806 (_ BitVec 32))) )
))
(declare-fun lt!643930 () SeekEntryResult!12103)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1473535 (= res!1000952 (= lt!643930 (Intermediate!12103 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643929 () (_ BitVec 64))

(declare-fun lt!643926 () array!99122)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99122 (_ BitVec 32)) SeekEntryResult!12103)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473535 (= lt!643930 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643929 mask!2687) lt!643929 lt!643926 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1473535 (= lt!643929 (select (store (arr!47840 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1473536 () Bool)

(declare-fun res!1000938 () Bool)

(assert (=> b!1473536 (=> (not res!1000938) (not e!826901))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99122 (_ BitVec 32)) SeekEntryResult!12103)

(assert (=> b!1473536 (= res!1000938 (= (seekEntryOrOpen!0 (select (arr!47840 a!2862) j!93) a!2862 mask!2687) (Found!12103 j!93)))))

(declare-fun b!1473537 () Bool)

(declare-fun res!1000946 () Bool)

(assert (=> b!1473537 (=> (not res!1000946) (not e!826903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473537 (= res!1000946 (validKeyInArray!0 (select (arr!47840 a!2862) i!1006)))))

(declare-fun b!1473538 () Bool)

(declare-fun e!826897 () Bool)

(assert (=> b!1473538 (= e!826903 e!826897)))

(declare-fun res!1000939 () Bool)

(assert (=> b!1473538 (=> (not res!1000939) (not e!826897))))

(assert (=> b!1473538 (= res!1000939 (= (select (store (arr!47840 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473538 (= lt!643926 (array!99123 (store (arr!47840 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48391 a!2862)))))

(declare-fun b!1473540 () Bool)

(declare-fun res!1000942 () Bool)

(assert (=> b!1473540 (=> (not res!1000942) (not e!826903))))

(assert (=> b!1473540 (= res!1000942 (validKeyInArray!0 (select (arr!47840 a!2862) j!93)))))

(declare-fun b!1473541 () Bool)

(declare-fun res!1000953 () Bool)

(assert (=> b!1473541 (=> (not res!1000953) (not e!826903))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1473541 (= res!1000953 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48391 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48391 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48391 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473542 () Bool)

(declare-fun res!1000951 () Bool)

(assert (=> b!1473542 (=> (not res!1000951) (not e!826902))))

(assert (=> b!1473542 (= res!1000951 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473543 () Bool)

(assert (=> b!1473543 (= e!826897 e!826899)))

(declare-fun res!1000940 () Bool)

(assert (=> b!1473543 (=> (not res!1000940) (not e!826899))))

(declare-fun lt!643927 () SeekEntryResult!12103)

(assert (=> b!1473543 (= res!1000940 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47840 a!2862) j!93) mask!2687) (select (arr!47840 a!2862) j!93) a!2862 mask!2687) lt!643927))))

(assert (=> b!1473543 (= lt!643927 (Intermediate!12103 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!826898 () Bool)

(declare-fun b!1473544 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99122 (_ BitVec 32)) SeekEntryResult!12103)

(assert (=> b!1473544 (= e!826898 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643929 lt!643926 mask!2687) (seekEntryOrOpen!0 lt!643929 lt!643926 mask!2687)))))

(declare-fun b!1473545 () Bool)

(declare-fun e!826904 () Bool)

(assert (=> b!1473545 (= e!826904 true)))

(declare-fun lt!643925 () SeekEntryResult!12103)

(assert (=> b!1473545 (= lt!643925 (seekEntryOrOpen!0 lt!643929 lt!643926 mask!2687))))

(declare-fun b!1473546 () Bool)

(assert (=> b!1473546 (= e!826898 (= lt!643930 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643929 lt!643926 mask!2687)))))

(declare-fun b!1473547 () Bool)

(declare-fun res!1000945 () Bool)

(assert (=> b!1473547 (=> (not res!1000945) (not e!826903))))

(assert (=> b!1473547 (= res!1000945 (and (= (size!48391 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48391 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48391 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473548 () Bool)

(declare-fun res!1000948 () Bool)

(assert (=> b!1473548 (=> (not res!1000948) (not e!826899))))

(assert (=> b!1473548 (= res!1000948 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47840 a!2862) j!93) a!2862 mask!2687) lt!643927))))

(declare-fun b!1473549 () Bool)

(assert (=> b!1473549 (= e!826902 (not e!826904))))

(declare-fun res!1000947 () Bool)

(assert (=> b!1473549 (=> res!1000947 e!826904)))

(assert (=> b!1473549 (= res!1000947 (or (not (= (select (arr!47840 a!2862) index!646) (select (store (arr!47840 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47840 a!2862) index!646) (select (arr!47840 a!2862) j!93)))))))

(assert (=> b!1473549 e!826901))

(declare-fun res!1000950 () Bool)

(assert (=> b!1473549 (=> (not res!1000950) (not e!826901))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99122 (_ BitVec 32)) Bool)

(assert (=> b!1473549 (= res!1000950 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49494 0))(
  ( (Unit!49495) )
))
(declare-fun lt!643928 () Unit!49494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99122 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49494)

(assert (=> b!1473549 (= lt!643928 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473550 () Bool)

(declare-fun res!1000943 () Bool)

(assert (=> b!1473550 (=> (not res!1000943) (not e!826903))))

(assert (=> b!1473550 (= res!1000943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473539 () Bool)

(declare-fun res!1000944 () Bool)

(assert (=> b!1473539 (=> (not res!1000944) (not e!826902))))

(assert (=> b!1473539 (= res!1000944 e!826898)))

(declare-fun c!135815 () Bool)

(assert (=> b!1473539 (= c!135815 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1000949 () Bool)

(assert (=> start!125928 (=> (not res!1000949) (not e!826903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125928 (= res!1000949 (validMask!0 mask!2687))))

(assert (=> start!125928 e!826903))

(assert (=> start!125928 true))

(declare-fun array_inv!36785 (array!99122) Bool)

(assert (=> start!125928 (array_inv!36785 a!2862)))

(assert (= (and start!125928 res!1000949) b!1473547))

(assert (= (and b!1473547 res!1000945) b!1473537))

(assert (= (and b!1473537 res!1000946) b!1473540))

(assert (= (and b!1473540 res!1000942) b!1473550))

(assert (= (and b!1473550 res!1000943) b!1473534))

(assert (= (and b!1473534 res!1000941) b!1473541))

(assert (= (and b!1473541 res!1000953) b!1473538))

(assert (= (and b!1473538 res!1000939) b!1473543))

(assert (= (and b!1473543 res!1000940) b!1473548))

(assert (= (and b!1473548 res!1000948) b!1473535))

(assert (= (and b!1473535 res!1000952) b!1473539))

(assert (= (and b!1473539 c!135815) b!1473546))

(assert (= (and b!1473539 (not c!135815)) b!1473544))

(assert (= (and b!1473539 res!1000944) b!1473542))

(assert (= (and b!1473542 res!1000951) b!1473549))

(assert (= (and b!1473549 res!1000950) b!1473536))

(assert (= (and b!1473536 res!1000938) b!1473533))

(assert (= (and b!1473549 (not res!1000947)) b!1473545))

(declare-fun m!1360103 () Bool)

(assert (=> b!1473545 m!1360103))

(declare-fun m!1360105 () Bool)

(assert (=> b!1473534 m!1360105))

(declare-fun m!1360107 () Bool)

(assert (=> b!1473546 m!1360107))

(declare-fun m!1360109 () Bool)

(assert (=> b!1473540 m!1360109))

(assert (=> b!1473540 m!1360109))

(declare-fun m!1360111 () Bool)

(assert (=> b!1473540 m!1360111))

(assert (=> b!1473543 m!1360109))

(assert (=> b!1473543 m!1360109))

(declare-fun m!1360113 () Bool)

(assert (=> b!1473543 m!1360113))

(assert (=> b!1473543 m!1360113))

(assert (=> b!1473543 m!1360109))

(declare-fun m!1360115 () Bool)

(assert (=> b!1473543 m!1360115))

(declare-fun m!1360117 () Bool)

(assert (=> start!125928 m!1360117))

(declare-fun m!1360119 () Bool)

(assert (=> start!125928 m!1360119))

(assert (=> b!1473548 m!1360109))

(assert (=> b!1473548 m!1360109))

(declare-fun m!1360121 () Bool)

(assert (=> b!1473548 m!1360121))

(declare-fun m!1360123 () Bool)

(assert (=> b!1473533 m!1360123))

(assert (=> b!1473533 m!1360109))

(declare-fun m!1360125 () Bool)

(assert (=> b!1473544 m!1360125))

(assert (=> b!1473544 m!1360103))

(declare-fun m!1360127 () Bool)

(assert (=> b!1473535 m!1360127))

(assert (=> b!1473535 m!1360127))

(declare-fun m!1360129 () Bool)

(assert (=> b!1473535 m!1360129))

(declare-fun m!1360131 () Bool)

(assert (=> b!1473535 m!1360131))

(declare-fun m!1360133 () Bool)

(assert (=> b!1473535 m!1360133))

(declare-fun m!1360135 () Bool)

(assert (=> b!1473549 m!1360135))

(assert (=> b!1473549 m!1360131))

(declare-fun m!1360137 () Bool)

(assert (=> b!1473549 m!1360137))

(declare-fun m!1360139 () Bool)

(assert (=> b!1473549 m!1360139))

(declare-fun m!1360141 () Bool)

(assert (=> b!1473549 m!1360141))

(assert (=> b!1473549 m!1360109))

(assert (=> b!1473538 m!1360131))

(declare-fun m!1360143 () Bool)

(assert (=> b!1473538 m!1360143))

(declare-fun m!1360145 () Bool)

(assert (=> b!1473537 m!1360145))

(assert (=> b!1473537 m!1360145))

(declare-fun m!1360147 () Bool)

(assert (=> b!1473537 m!1360147))

(assert (=> b!1473536 m!1360109))

(assert (=> b!1473536 m!1360109))

(declare-fun m!1360149 () Bool)

(assert (=> b!1473536 m!1360149))

(declare-fun m!1360151 () Bool)

(assert (=> b!1473550 m!1360151))

(check-sat (not b!1473536) (not b!1473535) (not start!125928) (not b!1473549) (not b!1473545) (not b!1473546) (not b!1473537) (not b!1473534) (not b!1473543) (not b!1473550) (not b!1473540) (not b!1473544) (not b!1473548))
(check-sat)
