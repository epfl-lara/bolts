; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125076 () Bool)

(assert start!125076)

(declare-fun e!818661 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!637649 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11779 0))(
  ( (MissingZero!11779 (index!49507 (_ BitVec 32))) (Found!11779 (index!49508 (_ BitVec 32))) (Intermediate!11779 (undefined!12591 Bool) (index!49509 (_ BitVec 32)) (x!131143 (_ BitVec 32))) (Undefined!11779) (MissingVacant!11779 (index!49510 (_ BitVec 32))) )
))
(declare-fun lt!637645 () SeekEntryResult!11779)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98441 0))(
  ( (array!98442 (arr!47504 (Array (_ BitVec 32) (_ BitVec 64))) (size!48055 (_ BitVec 32))) )
))
(declare-fun lt!637651 () array!98441)

(declare-fun b!1454680 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98441 (_ BitVec 32)) SeekEntryResult!11779)

(assert (=> b!1454680 (= e!818661 (= lt!637645 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637649 lt!637651 mask!2687)))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1454681 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98441 (_ BitVec 32)) SeekEntryResult!11779)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98441 (_ BitVec 32)) SeekEntryResult!11779)

(assert (=> b!1454681 (= e!818661 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637649 lt!637651 mask!2687) (seekEntryOrOpen!0 lt!637649 lt!637651 mask!2687)))))

(declare-fun b!1454682 () Bool)

(declare-fun res!985593 () Bool)

(declare-fun e!818660 () Bool)

(assert (=> b!1454682 (=> (not res!985593) (not e!818660))))

(declare-fun a!2862 () array!98441)

(declare-datatypes ((List!34185 0))(
  ( (Nil!34182) (Cons!34181 (h!35531 (_ BitVec 64)) (t!48886 List!34185)) )
))
(declare-fun arrayNoDuplicates!0 (array!98441 (_ BitVec 32) List!34185) Bool)

(assert (=> b!1454682 (= res!985593 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34182))))

(declare-fun b!1454683 () Bool)

(declare-fun lt!637644 () SeekEntryResult!11779)

(declare-fun lt!637646 () (_ BitVec 32))

(declare-fun e!818656 () Bool)

(assert (=> b!1454683 (= e!818656 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637646 intermediateAfterIndex!19 lt!637649 lt!637651 mask!2687) lt!637644)))))

(declare-fun b!1454684 () Bool)

(declare-fun res!985589 () Bool)

(declare-fun e!818659 () Bool)

(assert (=> b!1454684 (=> res!985589 e!818659)))

(declare-fun lt!637648 () SeekEntryResult!11779)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1454684 (= res!985589 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637646 (select (arr!47504 a!2862) j!93) a!2862 mask!2687) lt!637648)))))

(declare-fun b!1454685 () Bool)

(assert (=> b!1454685 (= e!818656 (not (= lt!637645 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637646 lt!637649 lt!637651 mask!2687))))))

(declare-fun b!1454686 () Bool)

(declare-fun e!818663 () Bool)

(assert (=> b!1454686 (= e!818663 e!818659)))

(declare-fun res!985580 () Bool)

(assert (=> b!1454686 (=> res!985580 e!818659)))

(assert (=> b!1454686 (= res!985580 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637646 #b00000000000000000000000000000000) (bvsge lt!637646 (size!48055 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454686 (= lt!637646 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1454686 (= lt!637644 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637649 lt!637651 mask!2687))))

(assert (=> b!1454686 (= lt!637644 (seekEntryOrOpen!0 lt!637649 lt!637651 mask!2687))))

(declare-fun b!1454687 () Bool)

(declare-fun res!985582 () Bool)

(declare-fun e!818657 () Bool)

(assert (=> b!1454687 (=> (not res!985582) (not e!818657))))

(assert (=> b!1454687 (= res!985582 (= (seekEntryOrOpen!0 (select (arr!47504 a!2862) j!93) a!2862 mask!2687) (Found!11779 j!93)))))

(declare-fun b!1454688 () Bool)

(declare-fun res!985590 () Bool)

(declare-fun e!818655 () Bool)

(assert (=> b!1454688 (=> (not res!985590) (not e!818655))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1454688 (= res!985590 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1454689 () Bool)

(declare-fun res!985581 () Bool)

(assert (=> b!1454689 (=> (not res!985581) (not e!818660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1454689 (= res!985581 (validKeyInArray!0 (select (arr!47504 a!2862) j!93)))))

(declare-fun b!1454691 () Bool)

(assert (=> b!1454691 (= e!818659 true)))

(declare-fun lt!637650 () Bool)

(assert (=> b!1454691 (= lt!637650 e!818656)))

(declare-fun c!134065 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1454691 (= c!134065 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1454692 () Bool)

(declare-fun e!818658 () Bool)

(declare-fun e!818662 () Bool)

(assert (=> b!1454692 (= e!818658 e!818662)))

(declare-fun res!985577 () Bool)

(assert (=> b!1454692 (=> (not res!985577) (not e!818662))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1454692 (= res!985577 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47504 a!2862) j!93) mask!2687) (select (arr!47504 a!2862) j!93) a!2862 mask!2687) lt!637648))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1454692 (= lt!637648 (Intermediate!11779 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1454693 () Bool)

(assert (=> b!1454693 (= e!818662 e!818655)))

(declare-fun res!985578 () Bool)

(assert (=> b!1454693 (=> (not res!985578) (not e!818655))))

(assert (=> b!1454693 (= res!985578 (= lt!637645 (Intermediate!11779 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1454693 (= lt!637645 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637649 mask!2687) lt!637649 lt!637651 mask!2687))))

(assert (=> b!1454693 (= lt!637649 (select (store (arr!47504 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1454694 () Bool)

(assert (=> b!1454694 (= e!818657 (and (or (= (select (arr!47504 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47504 a!2862) intermediateBeforeIndex!19) (select (arr!47504 a!2862) j!93))) (let ((bdg!53092 (select (store (arr!47504 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47504 a!2862) index!646) bdg!53092) (= (select (arr!47504 a!2862) index!646) (select (arr!47504 a!2862) j!93))) (= (select (arr!47504 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53092 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1454695 () Bool)

(assert (=> b!1454695 (= e!818655 (not e!818663))))

(declare-fun res!985579 () Bool)

(assert (=> b!1454695 (=> res!985579 e!818663)))

(assert (=> b!1454695 (= res!985579 (or (and (= (select (arr!47504 a!2862) index!646) (select (store (arr!47504 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47504 a!2862) index!646) (select (arr!47504 a!2862) j!93))) (= (select (arr!47504 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1454695 e!818657))

(declare-fun res!985587 () Bool)

(assert (=> b!1454695 (=> (not res!985587) (not e!818657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98441 (_ BitVec 32)) Bool)

(assert (=> b!1454695 (= res!985587 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49002 0))(
  ( (Unit!49003) )
))
(declare-fun lt!637647 () Unit!49002)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98441 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49002)

(assert (=> b!1454695 (= lt!637647 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1454696 () Bool)

(declare-fun res!985576 () Bool)

(assert (=> b!1454696 (=> (not res!985576) (not e!818660))))

(assert (=> b!1454696 (= res!985576 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48055 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48055 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48055 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1454697 () Bool)

(declare-fun res!985583 () Bool)

(assert (=> b!1454697 (=> (not res!985583) (not e!818660))))

(assert (=> b!1454697 (= res!985583 (and (= (size!48055 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48055 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48055 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1454698 () Bool)

(declare-fun res!985585 () Bool)

(assert (=> b!1454698 (=> (not res!985585) (not e!818660))))

(assert (=> b!1454698 (= res!985585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1454699 () Bool)

(declare-fun res!985592 () Bool)

(assert (=> b!1454699 (=> (not res!985592) (not e!818655))))

(assert (=> b!1454699 (= res!985592 e!818661)))

(declare-fun c!134066 () Bool)

(assert (=> b!1454699 (= c!134066 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!985586 () Bool)

(assert (=> start!125076 (=> (not res!985586) (not e!818660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125076 (= res!985586 (validMask!0 mask!2687))))

(assert (=> start!125076 e!818660))

(assert (=> start!125076 true))

(declare-fun array_inv!36449 (array!98441) Bool)

(assert (=> start!125076 (array_inv!36449 a!2862)))

(declare-fun b!1454690 () Bool)

(declare-fun res!985588 () Bool)

(assert (=> b!1454690 (=> (not res!985588) (not e!818662))))

(assert (=> b!1454690 (= res!985588 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47504 a!2862) j!93) a!2862 mask!2687) lt!637648))))

(declare-fun b!1454700 () Bool)

(assert (=> b!1454700 (= e!818660 e!818658)))

(declare-fun res!985591 () Bool)

(assert (=> b!1454700 (=> (not res!985591) (not e!818658))))

(assert (=> b!1454700 (= res!985591 (= (select (store (arr!47504 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1454700 (= lt!637651 (array!98442 (store (arr!47504 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48055 a!2862)))))

(declare-fun b!1454701 () Bool)

(declare-fun res!985584 () Bool)

(assert (=> b!1454701 (=> (not res!985584) (not e!818660))))

(assert (=> b!1454701 (= res!985584 (validKeyInArray!0 (select (arr!47504 a!2862) i!1006)))))

(assert (= (and start!125076 res!985586) b!1454697))

(assert (= (and b!1454697 res!985583) b!1454701))

(assert (= (and b!1454701 res!985584) b!1454689))

(assert (= (and b!1454689 res!985581) b!1454698))

(assert (= (and b!1454698 res!985585) b!1454682))

(assert (= (and b!1454682 res!985593) b!1454696))

(assert (= (and b!1454696 res!985576) b!1454700))

(assert (= (and b!1454700 res!985591) b!1454692))

(assert (= (and b!1454692 res!985577) b!1454690))

(assert (= (and b!1454690 res!985588) b!1454693))

(assert (= (and b!1454693 res!985578) b!1454699))

(assert (= (and b!1454699 c!134066) b!1454680))

(assert (= (and b!1454699 (not c!134066)) b!1454681))

(assert (= (and b!1454699 res!985592) b!1454688))

(assert (= (and b!1454688 res!985590) b!1454695))

(assert (= (and b!1454695 res!985587) b!1454687))

(assert (= (and b!1454687 res!985582) b!1454694))

(assert (= (and b!1454695 (not res!985579)) b!1454686))

(assert (= (and b!1454686 (not res!985580)) b!1454684))

(assert (= (and b!1454684 (not res!985589)) b!1454691))

(assert (= (and b!1454691 c!134065) b!1454685))

(assert (= (and b!1454691 (not c!134065)) b!1454683))

(declare-fun m!1343041 () Bool)

(assert (=> b!1454695 m!1343041))

(declare-fun m!1343043 () Bool)

(assert (=> b!1454695 m!1343043))

(declare-fun m!1343045 () Bool)

(assert (=> b!1454695 m!1343045))

(declare-fun m!1343047 () Bool)

(assert (=> b!1454695 m!1343047))

(declare-fun m!1343049 () Bool)

(assert (=> b!1454695 m!1343049))

(declare-fun m!1343051 () Bool)

(assert (=> b!1454695 m!1343051))

(assert (=> b!1454692 m!1343051))

(assert (=> b!1454692 m!1343051))

(declare-fun m!1343053 () Bool)

(assert (=> b!1454692 m!1343053))

(assert (=> b!1454692 m!1343053))

(assert (=> b!1454692 m!1343051))

(declare-fun m!1343055 () Bool)

(assert (=> b!1454692 m!1343055))

(assert (=> b!1454689 m!1343051))

(assert (=> b!1454689 m!1343051))

(declare-fun m!1343057 () Bool)

(assert (=> b!1454689 m!1343057))

(declare-fun m!1343059 () Bool)

(assert (=> b!1454681 m!1343059))

(declare-fun m!1343061 () Bool)

(assert (=> b!1454681 m!1343061))

(assert (=> b!1454690 m!1343051))

(assert (=> b!1454690 m!1343051))

(declare-fun m!1343063 () Bool)

(assert (=> b!1454690 m!1343063))

(declare-fun m!1343065 () Bool)

(assert (=> b!1454685 m!1343065))

(declare-fun m!1343067 () Bool)

(assert (=> b!1454701 m!1343067))

(assert (=> b!1454701 m!1343067))

(declare-fun m!1343069 () Bool)

(assert (=> b!1454701 m!1343069))

(declare-fun m!1343071 () Bool)

(assert (=> b!1454686 m!1343071))

(assert (=> b!1454686 m!1343059))

(assert (=> b!1454686 m!1343061))

(assert (=> b!1454700 m!1343043))

(declare-fun m!1343073 () Bool)

(assert (=> b!1454700 m!1343073))

(assert (=> b!1454694 m!1343043))

(declare-fun m!1343075 () Bool)

(assert (=> b!1454694 m!1343075))

(assert (=> b!1454694 m!1343045))

(assert (=> b!1454694 m!1343047))

(assert (=> b!1454694 m!1343051))

(declare-fun m!1343077 () Bool)

(assert (=> b!1454683 m!1343077))

(declare-fun m!1343079 () Bool)

(assert (=> b!1454682 m!1343079))

(assert (=> b!1454684 m!1343051))

(assert (=> b!1454684 m!1343051))

(declare-fun m!1343081 () Bool)

(assert (=> b!1454684 m!1343081))

(declare-fun m!1343083 () Bool)

(assert (=> b!1454698 m!1343083))

(declare-fun m!1343085 () Bool)

(assert (=> start!125076 m!1343085))

(declare-fun m!1343087 () Bool)

(assert (=> start!125076 m!1343087))

(assert (=> b!1454687 m!1343051))

(assert (=> b!1454687 m!1343051))

(declare-fun m!1343089 () Bool)

(assert (=> b!1454687 m!1343089))

(declare-fun m!1343091 () Bool)

(assert (=> b!1454693 m!1343091))

(assert (=> b!1454693 m!1343091))

(declare-fun m!1343093 () Bool)

(assert (=> b!1454693 m!1343093))

(assert (=> b!1454693 m!1343043))

(declare-fun m!1343095 () Bool)

(assert (=> b!1454693 m!1343095))

(declare-fun m!1343097 () Bool)

(assert (=> b!1454680 m!1343097))

(check-sat (not b!1454683) (not b!1454681) (not b!1454693) (not b!1454701) (not b!1454690) (not b!1454695) (not b!1454682) (not b!1454689) (not b!1454686) (not b!1454687) (not b!1454684) (not b!1454680) (not start!125076) (not b!1454698) (not b!1454685) (not b!1454692))
(check-sat)
