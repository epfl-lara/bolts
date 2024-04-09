; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125164 () Bool)

(assert start!125164)

(declare-fun b!1457584 () Bool)

(declare-fun e!819975 () Bool)

(declare-fun e!819978 () Bool)

(assert (=> b!1457584 (= e!819975 (not e!819978))))

(declare-fun res!987969 () Bool)

(assert (=> b!1457584 (=> res!987969 e!819978)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98529 0))(
  ( (array!98530 (arr!47548 (Array (_ BitVec 32) (_ BitVec 64))) (size!48099 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98529)

(assert (=> b!1457584 (= res!987969 (or (and (= (select (arr!47548 a!2862) index!646) (select (store (arr!47548 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47548 a!2862) index!646) (select (arr!47548 a!2862) j!93))) (= (select (arr!47548 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!819976 () Bool)

(assert (=> b!1457584 e!819976))

(declare-fun res!987961 () Bool)

(assert (=> b!1457584 (=> (not res!987961) (not e!819976))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98529 (_ BitVec 32)) Bool)

(assert (=> b!1457584 (= res!987961 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49090 0))(
  ( (Unit!49091) )
))
(declare-fun lt!638704 () Unit!49090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98529 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49090)

(assert (=> b!1457584 (= lt!638704 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-datatypes ((SeekEntryResult!11823 0))(
  ( (MissingZero!11823 (index!49683 (_ BitVec 32))) (Found!11823 (index!49684 (_ BitVec 32))) (Intermediate!11823 (undefined!12635 Bool) (index!49685 (_ BitVec 32)) (x!131307 (_ BitVec 32))) (Undefined!11823) (MissingVacant!11823 (index!49686 (_ BitVec 32))) )
))
(declare-fun lt!638701 () SeekEntryResult!11823)

(declare-fun lt!638703 () array!98529)

(declare-fun e!819980 () Bool)

(declare-fun lt!638705 () (_ BitVec 64))

(declare-fun b!1457585 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98529 (_ BitVec 32)) SeekEntryResult!11823)

(assert (=> b!1457585 (= e!819980 (= lt!638701 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638705 lt!638703 mask!2687)))))

(declare-fun b!1457586 () Bool)

(declare-fun e!819977 () Bool)

(declare-fun e!819982 () Bool)

(assert (=> b!1457586 (= e!819977 e!819982)))

(declare-fun res!987958 () Bool)

(assert (=> b!1457586 (=> (not res!987958) (not e!819982))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1457586 (= res!987958 (= (select (store (arr!47548 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457586 (= lt!638703 (array!98530 (store (arr!47548 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48099 a!2862)))))

(declare-fun lt!638702 () (_ BitVec 32))

(declare-fun b!1457587 () Bool)

(declare-fun e!819983 () Bool)

(declare-fun lt!638706 () SeekEntryResult!11823)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98529 (_ BitVec 32)) SeekEntryResult!11823)

(assert (=> b!1457587 (= e!819983 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638702 intermediateAfterIndex!19 lt!638705 lt!638703 mask!2687) lt!638706)))))

(declare-fun b!1457588 () Bool)

(assert (=> b!1457588 (= e!819983 (not (= lt!638701 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638702 lt!638705 lt!638703 mask!2687))))))

(declare-fun b!1457589 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98529 (_ BitVec 32)) SeekEntryResult!11823)

(assert (=> b!1457589 (= e!819980 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638705 lt!638703 mask!2687) (seekEntryOrOpen!0 lt!638705 lt!638703 mask!2687)))))

(declare-fun b!1457590 () Bool)

(declare-fun res!987952 () Bool)

(assert (=> b!1457590 (=> (not res!987952) (not e!819975))))

(assert (=> b!1457590 (= res!987952 e!819980)))

(declare-fun c!134329 () Bool)

(assert (=> b!1457590 (= c!134329 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457591 () Bool)

(declare-fun e!819979 () Bool)

(assert (=> b!1457591 (= e!819979 e!819975)))

(declare-fun res!987954 () Bool)

(assert (=> b!1457591 (=> (not res!987954) (not e!819975))))

(assert (=> b!1457591 (= res!987954 (= lt!638701 (Intermediate!11823 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457591 (= lt!638701 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638705 mask!2687) lt!638705 lt!638703 mask!2687))))

(assert (=> b!1457591 (= lt!638705 (select (store (arr!47548 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457593 () Bool)

(declare-fun res!987962 () Bool)

(assert (=> b!1457593 (=> (not res!987962) (not e!819977))))

(assert (=> b!1457593 (= res!987962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457594 () Bool)

(declare-fun e!819981 () Bool)

(assert (=> b!1457594 (= e!819978 e!819981)))

(declare-fun res!987968 () Bool)

(assert (=> b!1457594 (=> res!987968 e!819981)))

(assert (=> b!1457594 (= res!987968 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638702 #b00000000000000000000000000000000) (bvsge lt!638702 (size!48099 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457594 (= lt!638702 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457594 (= lt!638706 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638705 lt!638703 mask!2687))))

(assert (=> b!1457594 (= lt!638706 (seekEntryOrOpen!0 lt!638705 lt!638703 mask!2687))))

(declare-fun b!1457595 () Bool)

(declare-fun res!987957 () Bool)

(assert (=> b!1457595 (=> (not res!987957) (not e!819976))))

(assert (=> b!1457595 (= res!987957 (= (seekEntryOrOpen!0 (select (arr!47548 a!2862) j!93) a!2862 mask!2687) (Found!11823 j!93)))))

(declare-fun b!1457596 () Bool)

(declare-fun res!987960 () Bool)

(assert (=> b!1457596 (=> (not res!987960) (not e!819979))))

(declare-fun lt!638700 () SeekEntryResult!11823)

(assert (=> b!1457596 (= res!987960 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47548 a!2862) j!93) a!2862 mask!2687) lt!638700))))

(declare-fun b!1457597 () Bool)

(assert (=> b!1457597 (= e!819981 true)))

(declare-fun lt!638707 () Bool)

(assert (=> b!1457597 (= lt!638707 e!819983)))

(declare-fun c!134330 () Bool)

(assert (=> b!1457597 (= c!134330 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457598 () Bool)

(declare-fun res!987963 () Bool)

(assert (=> b!1457598 (=> res!987963 e!819981)))

(assert (=> b!1457598 (= res!987963 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638702 (select (arr!47548 a!2862) j!93) a!2862 mask!2687) lt!638700)))))

(declare-fun b!1457599 () Bool)

(declare-fun res!987956 () Bool)

(assert (=> b!1457599 (=> (not res!987956) (not e!819977))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457599 (= res!987956 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48099 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48099 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48099 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457600 () Bool)

(declare-fun res!987967 () Bool)

(assert (=> b!1457600 (=> (not res!987967) (not e!819977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457600 (= res!987967 (validKeyInArray!0 (select (arr!47548 a!2862) i!1006)))))

(declare-fun b!1457601 () Bool)

(declare-fun res!987965 () Bool)

(assert (=> b!1457601 (=> (not res!987965) (not e!819975))))

(assert (=> b!1457601 (= res!987965 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457602 () Bool)

(assert (=> b!1457602 (= e!819982 e!819979)))

(declare-fun res!987966 () Bool)

(assert (=> b!1457602 (=> (not res!987966) (not e!819979))))

(assert (=> b!1457602 (= res!987966 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47548 a!2862) j!93) mask!2687) (select (arr!47548 a!2862) j!93) a!2862 mask!2687) lt!638700))))

(assert (=> b!1457602 (= lt!638700 (Intermediate!11823 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457603 () Bool)

(declare-fun res!987959 () Bool)

(assert (=> b!1457603 (=> (not res!987959) (not e!819977))))

(assert (=> b!1457603 (= res!987959 (validKeyInArray!0 (select (arr!47548 a!2862) j!93)))))

(declare-fun b!1457604 () Bool)

(assert (=> b!1457604 (= e!819976 (and (or (= (select (arr!47548 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47548 a!2862) intermediateBeforeIndex!19) (select (arr!47548 a!2862) j!93))) (let ((bdg!53359 (select (store (arr!47548 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47548 a!2862) index!646) bdg!53359) (= (select (arr!47548 a!2862) index!646) (select (arr!47548 a!2862) j!93))) (= (select (arr!47548 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53359 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457605 () Bool)

(declare-fun res!987955 () Bool)

(assert (=> b!1457605 (=> (not res!987955) (not e!819977))))

(assert (=> b!1457605 (= res!987955 (and (= (size!48099 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48099 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48099 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!987964 () Bool)

(assert (=> start!125164 (=> (not res!987964) (not e!819977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125164 (= res!987964 (validMask!0 mask!2687))))

(assert (=> start!125164 e!819977))

(assert (=> start!125164 true))

(declare-fun array_inv!36493 (array!98529) Bool)

(assert (=> start!125164 (array_inv!36493 a!2862)))

(declare-fun b!1457592 () Bool)

(declare-fun res!987953 () Bool)

(assert (=> b!1457592 (=> (not res!987953) (not e!819977))))

(declare-datatypes ((List!34229 0))(
  ( (Nil!34226) (Cons!34225 (h!35575 (_ BitVec 64)) (t!48930 List!34229)) )
))
(declare-fun arrayNoDuplicates!0 (array!98529 (_ BitVec 32) List!34229) Bool)

(assert (=> b!1457592 (= res!987953 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34226))))

(assert (= (and start!125164 res!987964) b!1457605))

(assert (= (and b!1457605 res!987955) b!1457600))

(assert (= (and b!1457600 res!987967) b!1457603))

(assert (= (and b!1457603 res!987959) b!1457593))

(assert (= (and b!1457593 res!987962) b!1457592))

(assert (= (and b!1457592 res!987953) b!1457599))

(assert (= (and b!1457599 res!987956) b!1457586))

(assert (= (and b!1457586 res!987958) b!1457602))

(assert (= (and b!1457602 res!987966) b!1457596))

(assert (= (and b!1457596 res!987960) b!1457591))

(assert (= (and b!1457591 res!987954) b!1457590))

(assert (= (and b!1457590 c!134329) b!1457585))

(assert (= (and b!1457590 (not c!134329)) b!1457589))

(assert (= (and b!1457590 res!987952) b!1457601))

(assert (= (and b!1457601 res!987965) b!1457584))

(assert (= (and b!1457584 res!987961) b!1457595))

(assert (= (and b!1457595 res!987957) b!1457604))

(assert (= (and b!1457584 (not res!987969)) b!1457594))

(assert (= (and b!1457594 (not res!987968)) b!1457598))

(assert (= (and b!1457598 (not res!987963)) b!1457597))

(assert (= (and b!1457597 c!134330) b!1457588))

(assert (= (and b!1457597 (not c!134330)) b!1457587))

(declare-fun m!1345593 () Bool)

(assert (=> b!1457602 m!1345593))

(assert (=> b!1457602 m!1345593))

(declare-fun m!1345595 () Bool)

(assert (=> b!1457602 m!1345595))

(assert (=> b!1457602 m!1345595))

(assert (=> b!1457602 m!1345593))

(declare-fun m!1345597 () Bool)

(assert (=> b!1457602 m!1345597))

(declare-fun m!1345599 () Bool)

(assert (=> b!1457587 m!1345599))

(declare-fun m!1345601 () Bool)

(assert (=> b!1457593 m!1345601))

(declare-fun m!1345603 () Bool)

(assert (=> b!1457586 m!1345603))

(declare-fun m!1345605 () Bool)

(assert (=> b!1457586 m!1345605))

(declare-fun m!1345607 () Bool)

(assert (=> b!1457585 m!1345607))

(assert (=> b!1457604 m!1345603))

(declare-fun m!1345609 () Bool)

(assert (=> b!1457604 m!1345609))

(declare-fun m!1345611 () Bool)

(assert (=> b!1457604 m!1345611))

(declare-fun m!1345613 () Bool)

(assert (=> b!1457604 m!1345613))

(assert (=> b!1457604 m!1345593))

(assert (=> b!1457603 m!1345593))

(assert (=> b!1457603 m!1345593))

(declare-fun m!1345615 () Bool)

(assert (=> b!1457603 m!1345615))

(declare-fun m!1345617 () Bool)

(assert (=> b!1457584 m!1345617))

(assert (=> b!1457584 m!1345603))

(assert (=> b!1457584 m!1345611))

(assert (=> b!1457584 m!1345613))

(declare-fun m!1345619 () Bool)

(assert (=> b!1457584 m!1345619))

(assert (=> b!1457584 m!1345593))

(declare-fun m!1345621 () Bool)

(assert (=> b!1457594 m!1345621))

(declare-fun m!1345623 () Bool)

(assert (=> b!1457594 m!1345623))

(declare-fun m!1345625 () Bool)

(assert (=> b!1457594 m!1345625))

(declare-fun m!1345627 () Bool)

(assert (=> b!1457588 m!1345627))

(declare-fun m!1345629 () Bool)

(assert (=> b!1457600 m!1345629))

(assert (=> b!1457600 m!1345629))

(declare-fun m!1345631 () Bool)

(assert (=> b!1457600 m!1345631))

(declare-fun m!1345633 () Bool)

(assert (=> b!1457592 m!1345633))

(assert (=> b!1457595 m!1345593))

(assert (=> b!1457595 m!1345593))

(declare-fun m!1345635 () Bool)

(assert (=> b!1457595 m!1345635))

(declare-fun m!1345637 () Bool)

(assert (=> b!1457591 m!1345637))

(assert (=> b!1457591 m!1345637))

(declare-fun m!1345639 () Bool)

(assert (=> b!1457591 m!1345639))

(assert (=> b!1457591 m!1345603))

(declare-fun m!1345641 () Bool)

(assert (=> b!1457591 m!1345641))

(assert (=> b!1457598 m!1345593))

(assert (=> b!1457598 m!1345593))

(declare-fun m!1345643 () Bool)

(assert (=> b!1457598 m!1345643))

(declare-fun m!1345645 () Bool)

(assert (=> start!125164 m!1345645))

(declare-fun m!1345647 () Bool)

(assert (=> start!125164 m!1345647))

(assert (=> b!1457596 m!1345593))

(assert (=> b!1457596 m!1345593))

(declare-fun m!1345649 () Bool)

(assert (=> b!1457596 m!1345649))

(assert (=> b!1457589 m!1345623))

(assert (=> b!1457589 m!1345625))

(push 1)

