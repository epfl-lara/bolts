; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124722 () Bool)

(assert start!124722)

(declare-fun b!1444710 () Bool)

(declare-fun res!976775 () Bool)

(declare-fun e!813960 () Bool)

(assert (=> b!1444710 (=> (not res!976775) (not e!813960))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444710 (= res!976775 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444711 () Bool)

(declare-fun e!813965 () Bool)

(declare-fun e!813963 () Bool)

(assert (=> b!1444711 (= e!813965 e!813963)))

(declare-fun res!976776 () Bool)

(assert (=> b!1444711 (=> (not res!976776) (not e!813963))))

(declare-datatypes ((SeekEntryResult!11602 0))(
  ( (MissingZero!11602 (index!48799 (_ BitVec 32))) (Found!11602 (index!48800 (_ BitVec 32))) (Intermediate!11602 (undefined!12414 Bool) (index!48801 (_ BitVec 32)) (x!130494 (_ BitVec 32))) (Undefined!11602) (MissingVacant!11602 (index!48802 (_ BitVec 32))) )
))
(declare-fun lt!634247 () SeekEntryResult!11602)

(declare-datatypes ((array!98087 0))(
  ( (array!98088 (arr!47327 (Array (_ BitVec 32) (_ BitVec 64))) (size!47878 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98087)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98087 (_ BitVec 32)) SeekEntryResult!11602)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444711 (= res!976776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47327 a!2862) j!93) mask!2687) (select (arr!47327 a!2862) j!93) a!2862 mask!2687) lt!634247))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1444711 (= lt!634247 (Intermediate!11602 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444712 () Bool)

(declare-fun res!976778 () Bool)

(declare-fun e!813962 () Bool)

(assert (=> b!1444712 (=> (not res!976778) (not e!813962))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444712 (= res!976778 (validKeyInArray!0 (select (arr!47327 a!2862) i!1006)))))

(declare-fun b!1444713 () Bool)

(declare-fun res!976773 () Bool)

(assert (=> b!1444713 (=> (not res!976773) (not e!813962))))

(assert (=> b!1444713 (= res!976773 (validKeyInArray!0 (select (arr!47327 a!2862) j!93)))))

(declare-fun b!1444714 () Bool)

(assert (=> b!1444714 (= e!813963 e!813960)))

(declare-fun res!976774 () Bool)

(assert (=> b!1444714 (=> (not res!976774) (not e!813960))))

(declare-fun lt!634245 () SeekEntryResult!11602)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444714 (= res!976774 (= lt!634245 (Intermediate!11602 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634246 () array!98087)

(declare-fun lt!634248 () (_ BitVec 64))

(assert (=> b!1444714 (= lt!634245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634248 mask!2687) lt!634248 lt!634246 mask!2687))))

(assert (=> b!1444714 (= lt!634248 (select (store (arr!47327 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444715 () Bool)

(declare-fun res!976769 () Bool)

(declare-fun e!813961 () Bool)

(assert (=> b!1444715 (=> (not res!976769) (not e!813961))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98087 (_ BitVec 32)) SeekEntryResult!11602)

(assert (=> b!1444715 (= res!976769 (= (seekEntryOrOpen!0 (select (arr!47327 a!2862) j!93) a!2862 mask!2687) (Found!11602 j!93)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1444716 () Bool)

(declare-fun e!813959 () Bool)

(assert (=> b!1444716 (= e!813959 (= lt!634245 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634248 lt!634246 mask!2687)))))

(declare-fun res!976780 () Bool)

(assert (=> start!124722 (=> (not res!976780) (not e!813962))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124722 (= res!976780 (validMask!0 mask!2687))))

(assert (=> start!124722 e!813962))

(assert (=> start!124722 true))

(declare-fun array_inv!36272 (array!98087) Bool)

(assert (=> start!124722 (array_inv!36272 a!2862)))

(declare-fun b!1444717 () Bool)

(declare-fun res!976772 () Bool)

(assert (=> b!1444717 (=> (not res!976772) (not e!813962))))

(declare-datatypes ((List!34008 0))(
  ( (Nil!34005) (Cons!34004 (h!35354 (_ BitVec 64)) (t!48709 List!34008)) )
))
(declare-fun arrayNoDuplicates!0 (array!98087 (_ BitVec 32) List!34008) Bool)

(assert (=> b!1444717 (= res!976772 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34005))))

(declare-fun b!1444718 () Bool)

(declare-fun res!976770 () Bool)

(assert (=> b!1444718 (=> (not res!976770) (not e!813960))))

(assert (=> b!1444718 (= res!976770 e!813959)))

(declare-fun c!133484 () Bool)

(assert (=> b!1444718 (= c!133484 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444719 () Bool)

(declare-fun res!976782 () Bool)

(assert (=> b!1444719 (=> (not res!976782) (not e!813963))))

(assert (=> b!1444719 (= res!976782 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47327 a!2862) j!93) a!2862 mask!2687) lt!634247))))

(declare-fun b!1444720 () Bool)

(assert (=> b!1444720 (= e!813962 e!813965)))

(declare-fun res!976768 () Bool)

(assert (=> b!1444720 (=> (not res!976768) (not e!813965))))

(assert (=> b!1444720 (= res!976768 (= (select (store (arr!47327 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444720 (= lt!634246 (array!98088 (store (arr!47327 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47878 a!2862)))))

(declare-fun b!1444721 () Bool)

(declare-fun res!976771 () Bool)

(assert (=> b!1444721 (=> (not res!976771) (not e!813962))))

(assert (=> b!1444721 (= res!976771 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47878 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47878 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47878 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444722 () Bool)

(assert (=> b!1444722 (= e!813960 (not (or (and (= (select (arr!47327 a!2862) index!646) (select (store (arr!47327 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47327 a!2862) index!646) (select (arr!47327 a!2862) j!93))) (not (= (select (arr!47327 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1444722 e!813961))

(declare-fun res!976777 () Bool)

(assert (=> b!1444722 (=> (not res!976777) (not e!813961))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98087 (_ BitVec 32)) Bool)

(assert (=> b!1444722 (= res!976777 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48648 0))(
  ( (Unit!48649) )
))
(declare-fun lt!634249 () Unit!48648)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48648)

(assert (=> b!1444722 (= lt!634249 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444723 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98087 (_ BitVec 32)) SeekEntryResult!11602)

(assert (=> b!1444723 (= e!813959 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634248 lt!634246 mask!2687) (seekEntryOrOpen!0 lt!634248 lt!634246 mask!2687)))))

(declare-fun b!1444724 () Bool)

(declare-fun res!976779 () Bool)

(assert (=> b!1444724 (=> (not res!976779) (not e!813962))))

(assert (=> b!1444724 (= res!976779 (and (= (size!47878 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47878 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47878 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444725 () Bool)

(declare-fun res!976781 () Bool)

(assert (=> b!1444725 (=> (not res!976781) (not e!813962))))

(assert (=> b!1444725 (= res!976781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444726 () Bool)

(assert (=> b!1444726 (= e!813961 (or (= (select (arr!47327 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47327 a!2862) intermediateBeforeIndex!19) (select (arr!47327 a!2862) j!93))))))

(assert (= (and start!124722 res!976780) b!1444724))

(assert (= (and b!1444724 res!976779) b!1444712))

(assert (= (and b!1444712 res!976778) b!1444713))

(assert (= (and b!1444713 res!976773) b!1444725))

(assert (= (and b!1444725 res!976781) b!1444717))

(assert (= (and b!1444717 res!976772) b!1444721))

(assert (= (and b!1444721 res!976771) b!1444720))

(assert (= (and b!1444720 res!976768) b!1444711))

(assert (= (and b!1444711 res!976776) b!1444719))

(assert (= (and b!1444719 res!976782) b!1444714))

(assert (= (and b!1444714 res!976774) b!1444718))

(assert (= (and b!1444718 c!133484) b!1444716))

(assert (= (and b!1444718 (not c!133484)) b!1444723))

(assert (= (and b!1444718 res!976770) b!1444710))

(assert (= (and b!1444710 res!976775) b!1444722))

(assert (= (and b!1444722 res!976777) b!1444715))

(assert (= (and b!1444715 res!976769) b!1444726))

(declare-fun m!1333769 () Bool)

(assert (=> b!1444725 m!1333769))

(declare-fun m!1333771 () Bool)

(assert (=> b!1444717 m!1333771))

(declare-fun m!1333773 () Bool)

(assert (=> b!1444726 m!1333773))

(declare-fun m!1333775 () Bool)

(assert (=> b!1444726 m!1333775))

(assert (=> b!1444719 m!1333775))

(assert (=> b!1444719 m!1333775))

(declare-fun m!1333777 () Bool)

(assert (=> b!1444719 m!1333777))

(assert (=> b!1444711 m!1333775))

(assert (=> b!1444711 m!1333775))

(declare-fun m!1333779 () Bool)

(assert (=> b!1444711 m!1333779))

(assert (=> b!1444711 m!1333779))

(assert (=> b!1444711 m!1333775))

(declare-fun m!1333781 () Bool)

(assert (=> b!1444711 m!1333781))

(declare-fun m!1333783 () Bool)

(assert (=> b!1444712 m!1333783))

(assert (=> b!1444712 m!1333783))

(declare-fun m!1333785 () Bool)

(assert (=> b!1444712 m!1333785))

(assert (=> b!1444713 m!1333775))

(assert (=> b!1444713 m!1333775))

(declare-fun m!1333787 () Bool)

(assert (=> b!1444713 m!1333787))

(declare-fun m!1333789 () Bool)

(assert (=> b!1444723 m!1333789))

(declare-fun m!1333791 () Bool)

(assert (=> b!1444723 m!1333791))

(assert (=> b!1444715 m!1333775))

(assert (=> b!1444715 m!1333775))

(declare-fun m!1333793 () Bool)

(assert (=> b!1444715 m!1333793))

(declare-fun m!1333795 () Bool)

(assert (=> b!1444716 m!1333795))

(declare-fun m!1333797 () Bool)

(assert (=> b!1444722 m!1333797))

(declare-fun m!1333799 () Bool)

(assert (=> b!1444722 m!1333799))

(declare-fun m!1333801 () Bool)

(assert (=> b!1444722 m!1333801))

(declare-fun m!1333803 () Bool)

(assert (=> b!1444722 m!1333803))

(declare-fun m!1333805 () Bool)

(assert (=> b!1444722 m!1333805))

(assert (=> b!1444722 m!1333775))

(declare-fun m!1333807 () Bool)

(assert (=> b!1444714 m!1333807))

(assert (=> b!1444714 m!1333807))

(declare-fun m!1333809 () Bool)

(assert (=> b!1444714 m!1333809))

(assert (=> b!1444714 m!1333799))

(declare-fun m!1333811 () Bool)

(assert (=> b!1444714 m!1333811))

(assert (=> b!1444720 m!1333799))

(declare-fun m!1333813 () Bool)

(assert (=> b!1444720 m!1333813))

(declare-fun m!1333815 () Bool)

(assert (=> start!124722 m!1333815))

(declare-fun m!1333817 () Bool)

(assert (=> start!124722 m!1333817))

(check-sat (not b!1444719) (not b!1444715) (not b!1444722) (not start!124722) (not b!1444717) (not b!1444723) (not b!1444711) (not b!1444716) (not b!1444714) (not b!1444713) (not b!1444712) (not b!1444725))
(check-sat)
