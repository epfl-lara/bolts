; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126292 () Bool)

(assert start!126292)

(declare-fun b!1479693 () Bool)

(declare-fun e!830009 () Bool)

(declare-fun e!830000 () Bool)

(assert (=> b!1479693 (= e!830009 e!830000)))

(declare-fun res!1005675 () Bool)

(assert (=> b!1479693 (=> (not res!1005675) (not e!830000))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99315 0))(
  ( (array!99316 (arr!47932 (Array (_ BitVec 32) (_ BitVec 64))) (size!48483 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99315)

(assert (=> b!1479693 (= res!1005675 (= (select (store (arr!47932 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646102 () array!99315)

(assert (=> b!1479693 (= lt!646102 (array!99316 (store (arr!47932 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48483 a!2862)))))

(declare-fun b!1479694 () Bool)

(declare-fun res!1005673 () Bool)

(assert (=> b!1479694 (=> (not res!1005673) (not e!830009))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1479694 (= res!1005673 (and (= (size!48483 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48483 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48483 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479695 () Bool)

(declare-fun res!1005678 () Bool)

(declare-fun e!830006 () Bool)

(assert (=> b!1479695 (=> (not res!1005678) (not e!830006))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12195 0))(
  ( (MissingZero!12195 (index!51171 (_ BitVec 32))) (Found!12195 (index!51172 (_ BitVec 32))) (Intermediate!12195 (undefined!13007 Bool) (index!51173 (_ BitVec 32)) (x!132757 (_ BitVec 32))) (Undefined!12195) (MissingVacant!12195 (index!51174 (_ BitVec 32))) )
))
(declare-fun lt!646101 () SeekEntryResult!12195)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99315 (_ BitVec 32)) SeekEntryResult!12195)

(assert (=> b!1479695 (= res!1005678 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47932 a!2862) j!93) a!2862 mask!2687) lt!646101))))

(declare-fun b!1479696 () Bool)

(declare-fun res!1005685 () Bool)

(assert (=> b!1479696 (=> (not res!1005685) (not e!830009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479696 (= res!1005685 (validKeyInArray!0 (select (arr!47932 a!2862) j!93)))))

(declare-fun b!1479697 () Bool)

(declare-fun res!1005677 () Bool)

(declare-fun e!830001 () Bool)

(assert (=> b!1479697 (=> (not res!1005677) (not e!830001))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479697 (= res!1005677 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479698 () Bool)

(declare-fun e!830008 () Bool)

(declare-fun e!830002 () Bool)

(assert (=> b!1479698 (= e!830008 e!830002)))

(declare-fun res!1005687 () Bool)

(assert (=> b!1479698 (=> res!1005687 e!830002)))

(assert (=> b!1479698 (= res!1005687 (or (and (= (select (arr!47932 a!2862) index!646) (select (store (arr!47932 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47932 a!2862) index!646) (select (arr!47932 a!2862) j!93))) (not (= (select (arr!47932 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479699 () Bool)

(declare-fun res!1005679 () Bool)

(assert (=> b!1479699 (=> (not res!1005679) (not e!830009))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479699 (= res!1005679 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48483 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48483 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48483 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479700 () Bool)

(declare-fun e!830005 () Bool)

(assert (=> b!1479700 (= e!830001 (not e!830005))))

(declare-fun res!1005688 () Bool)

(assert (=> b!1479700 (=> res!1005688 e!830005)))

(assert (=> b!1479700 (= res!1005688 (or (and (= (select (arr!47932 a!2862) index!646) (select (store (arr!47932 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47932 a!2862) index!646) (select (arr!47932 a!2862) j!93))) (not (= (select (arr!47932 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47932 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1479700 e!830008))

(declare-fun res!1005682 () Bool)

(assert (=> b!1479700 (=> (not res!1005682) (not e!830008))))

(declare-fun lt!646098 () SeekEntryResult!12195)

(declare-fun lt!646105 () SeekEntryResult!12195)

(assert (=> b!1479700 (= res!1005682 (and (= lt!646105 lt!646098) (or (= (select (arr!47932 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47932 a!2862) intermediateBeforeIndex!19) (select (arr!47932 a!2862) j!93)))))))

(assert (=> b!1479700 (= lt!646098 (Found!12195 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99315 (_ BitVec 32)) SeekEntryResult!12195)

(assert (=> b!1479700 (= lt!646105 (seekEntryOrOpen!0 (select (arr!47932 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99315 (_ BitVec 32)) Bool)

(assert (=> b!1479700 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49678 0))(
  ( (Unit!49679) )
))
(declare-fun lt!646104 () Unit!49678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49678)

(assert (=> b!1479700 (= lt!646104 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479701 () Bool)

(assert (=> b!1479701 (= e!830000 e!830006)))

(declare-fun res!1005674 () Bool)

(assert (=> b!1479701 (=> (not res!1005674) (not e!830006))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479701 (= res!1005674 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47932 a!2862) j!93) mask!2687) (select (arr!47932 a!2862) j!93) a!2862 mask!2687) lt!646101))))

(assert (=> b!1479701 (= lt!646101 (Intermediate!12195 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1005683 () Bool)

(assert (=> start!126292 (=> (not res!1005683) (not e!830009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126292 (= res!1005683 (validMask!0 mask!2687))))

(assert (=> start!126292 e!830009))

(assert (=> start!126292 true))

(declare-fun array_inv!36877 (array!99315) Bool)

(assert (=> start!126292 (array_inv!36877 a!2862)))

(declare-fun b!1479702 () Bool)

(declare-fun res!1005684 () Bool)

(assert (=> b!1479702 (=> (not res!1005684) (not e!830009))))

(assert (=> b!1479702 (= res!1005684 (validKeyInArray!0 (select (arr!47932 a!2862) i!1006)))))

(declare-fun b!1479703 () Bool)

(declare-fun res!1005676 () Bool)

(assert (=> b!1479703 (=> (not res!1005676) (not e!830009))))

(declare-datatypes ((List!34613 0))(
  ( (Nil!34610) (Cons!34609 (h!35977 (_ BitVec 64)) (t!49314 List!34613)) )
))
(declare-fun arrayNoDuplicates!0 (array!99315 (_ BitVec 32) List!34613) Bool)

(assert (=> b!1479703 (= res!1005676 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34610))))

(declare-fun b!1479704 () Bool)

(declare-fun res!1005690 () Bool)

(assert (=> b!1479704 (=> (not res!1005690) (not e!830009))))

(assert (=> b!1479704 (= res!1005690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!830004 () Bool)

(declare-fun b!1479705 () Bool)

(assert (=> b!1479705 (= e!830004 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479706 () Bool)

(assert (=> b!1479706 (= e!830002 e!830004)))

(declare-fun res!1005680 () Bool)

(assert (=> b!1479706 (=> (not res!1005680) (not e!830004))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99315 (_ BitVec 32)) SeekEntryResult!12195)

(assert (=> b!1479706 (= res!1005680 (= lt!646105 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47932 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun lt!646100 () (_ BitVec 64))

(declare-fun lt!646103 () SeekEntryResult!12195)

(declare-fun b!1479707 () Bool)

(declare-fun e!830007 () Bool)

(assert (=> b!1479707 (= e!830007 (= lt!646103 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646100 lt!646102 mask!2687)))))

(declare-fun b!1479708 () Bool)

(assert (=> b!1479708 (= e!830007 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646100 lt!646102 mask!2687) (seekEntryOrOpen!0 lt!646100 lt!646102 mask!2687)))))

(declare-fun b!1479709 () Bool)

(assert (=> b!1479709 (= e!830005 true)))

(assert (=> b!1479709 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646100 lt!646102 mask!2687) lt!646098)))

(declare-fun lt!646099 () Unit!49678)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49678)

(assert (=> b!1479709 (= lt!646099 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1479710 () Bool)

(declare-fun res!1005686 () Bool)

(assert (=> b!1479710 (=> (not res!1005686) (not e!830001))))

(assert (=> b!1479710 (= res!1005686 e!830007)))

(declare-fun c!136532 () Bool)

(assert (=> b!1479710 (= c!136532 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479711 () Bool)

(assert (=> b!1479711 (= e!830006 e!830001)))

(declare-fun res!1005689 () Bool)

(assert (=> b!1479711 (=> (not res!1005689) (not e!830001))))

(assert (=> b!1479711 (= res!1005689 (= lt!646103 (Intermediate!12195 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1479711 (= lt!646103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646100 mask!2687) lt!646100 lt!646102 mask!2687))))

(assert (=> b!1479711 (= lt!646100 (select (store (arr!47932 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479712 () Bool)

(declare-fun res!1005681 () Bool)

(assert (=> b!1479712 (=> res!1005681 e!830005)))

(assert (=> b!1479712 (= res!1005681 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47932 a!2862) j!93) a!2862 mask!2687) lt!646098)))))

(assert (= (and start!126292 res!1005683) b!1479694))

(assert (= (and b!1479694 res!1005673) b!1479702))

(assert (= (and b!1479702 res!1005684) b!1479696))

(assert (= (and b!1479696 res!1005685) b!1479704))

(assert (= (and b!1479704 res!1005690) b!1479703))

(assert (= (and b!1479703 res!1005676) b!1479699))

(assert (= (and b!1479699 res!1005679) b!1479693))

(assert (= (and b!1479693 res!1005675) b!1479701))

(assert (= (and b!1479701 res!1005674) b!1479695))

(assert (= (and b!1479695 res!1005678) b!1479711))

(assert (= (and b!1479711 res!1005689) b!1479710))

(assert (= (and b!1479710 c!136532) b!1479707))

(assert (= (and b!1479710 (not c!136532)) b!1479708))

(assert (= (and b!1479710 res!1005686) b!1479697))

(assert (= (and b!1479697 res!1005677) b!1479700))

(assert (= (and b!1479700 res!1005682) b!1479698))

(assert (= (and b!1479698 (not res!1005687)) b!1479706))

(assert (= (and b!1479706 res!1005680) b!1479705))

(assert (= (and b!1479700 (not res!1005688)) b!1479712))

(assert (= (and b!1479712 (not res!1005681)) b!1479709))

(declare-fun m!1365597 () Bool)

(assert (=> b!1479706 m!1365597))

(assert (=> b!1479706 m!1365597))

(declare-fun m!1365599 () Bool)

(assert (=> b!1479706 m!1365599))

(declare-fun m!1365601 () Bool)

(assert (=> b!1479702 m!1365601))

(assert (=> b!1479702 m!1365601))

(declare-fun m!1365603 () Bool)

(assert (=> b!1479702 m!1365603))

(declare-fun m!1365605 () Bool)

(assert (=> b!1479709 m!1365605))

(declare-fun m!1365607 () Bool)

(assert (=> b!1479709 m!1365607))

(declare-fun m!1365609 () Bool)

(assert (=> start!126292 m!1365609))

(declare-fun m!1365611 () Bool)

(assert (=> start!126292 m!1365611))

(assert (=> b!1479712 m!1365597))

(assert (=> b!1479712 m!1365597))

(declare-fun m!1365613 () Bool)

(assert (=> b!1479712 m!1365613))

(assert (=> b!1479695 m!1365597))

(assert (=> b!1479695 m!1365597))

(declare-fun m!1365615 () Bool)

(assert (=> b!1479695 m!1365615))

(declare-fun m!1365617 () Bool)

(assert (=> b!1479707 m!1365617))

(assert (=> b!1479708 m!1365605))

(declare-fun m!1365619 () Bool)

(assert (=> b!1479708 m!1365619))

(declare-fun m!1365621 () Bool)

(assert (=> b!1479711 m!1365621))

(assert (=> b!1479711 m!1365621))

(declare-fun m!1365623 () Bool)

(assert (=> b!1479711 m!1365623))

(declare-fun m!1365625 () Bool)

(assert (=> b!1479711 m!1365625))

(declare-fun m!1365627 () Bool)

(assert (=> b!1479711 m!1365627))

(assert (=> b!1479696 m!1365597))

(assert (=> b!1479696 m!1365597))

(declare-fun m!1365629 () Bool)

(assert (=> b!1479696 m!1365629))

(declare-fun m!1365631 () Bool)

(assert (=> b!1479698 m!1365631))

(assert (=> b!1479698 m!1365625))

(declare-fun m!1365633 () Bool)

(assert (=> b!1479698 m!1365633))

(assert (=> b!1479698 m!1365597))

(declare-fun m!1365635 () Bool)

(assert (=> b!1479703 m!1365635))

(assert (=> b!1479693 m!1365625))

(declare-fun m!1365637 () Bool)

(assert (=> b!1479693 m!1365637))

(declare-fun m!1365639 () Bool)

(assert (=> b!1479704 m!1365639))

(assert (=> b!1479701 m!1365597))

(assert (=> b!1479701 m!1365597))

(declare-fun m!1365641 () Bool)

(assert (=> b!1479701 m!1365641))

(assert (=> b!1479701 m!1365641))

(assert (=> b!1479701 m!1365597))

(declare-fun m!1365643 () Bool)

(assert (=> b!1479701 m!1365643))

(declare-fun m!1365645 () Bool)

(assert (=> b!1479700 m!1365645))

(assert (=> b!1479700 m!1365625))

(declare-fun m!1365647 () Bool)

(assert (=> b!1479700 m!1365647))

(assert (=> b!1479700 m!1365633))

(assert (=> b!1479700 m!1365631))

(assert (=> b!1479700 m!1365597))

(declare-fun m!1365649 () Bool)

(assert (=> b!1479700 m!1365649))

(declare-fun m!1365651 () Bool)

(assert (=> b!1479700 m!1365651))

(assert (=> b!1479700 m!1365597))

(push 1)

