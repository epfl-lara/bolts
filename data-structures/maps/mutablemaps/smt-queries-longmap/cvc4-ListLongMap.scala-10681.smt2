; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125270 () Bool)

(assert start!125270)

(declare-fun b!1460911 () Bool)

(declare-fun e!821397 () Bool)

(declare-fun e!821399 () Bool)

(assert (=> b!1460911 (= e!821397 e!821399)))

(declare-fun res!990724 () Bool)

(assert (=> b!1460911 (=> (not res!990724) (not e!821399))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11876 0))(
  ( (MissingZero!11876 (index!49895 (_ BitVec 32))) (Found!11876 (index!49896 (_ BitVec 32))) (Intermediate!11876 (undefined!12688 Bool) (index!49897 (_ BitVec 32)) (x!131496 (_ BitVec 32))) (Undefined!11876) (MissingVacant!11876 (index!49898 (_ BitVec 32))) )
))
(declare-fun lt!639932 () SeekEntryResult!11876)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460911 (= res!990724 (= lt!639932 (Intermediate!11876 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98635 0))(
  ( (array!98636 (arr!47601 (Array (_ BitVec 32) (_ BitVec 64))) (size!48152 (_ BitVec 32))) )
))
(declare-fun lt!639928 () array!98635)

(declare-fun lt!639929 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98635 (_ BitVec 32)) SeekEntryResult!11876)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460911 (= lt!639932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639929 mask!2687) lt!639929 lt!639928 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98635)

(assert (=> b!1460911 (= lt!639929 (select (store (arr!47601 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460912 () Bool)

(declare-fun e!821395 () Bool)

(declare-fun e!821398 () Bool)

(assert (=> b!1460912 (= e!821395 e!821398)))

(declare-fun res!990719 () Bool)

(assert (=> b!1460912 (=> (not res!990719) (not e!821398))))

(assert (=> b!1460912 (= res!990719 (= (select (store (arr!47601 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1460912 (= lt!639928 (array!98636 (store (arr!47601 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48152 a!2862)))))

(declare-fun b!1460913 () Bool)

(declare-fun res!990717 () Bool)

(assert (=> b!1460913 (=> (not res!990717) (not e!821395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460913 (= res!990717 (validKeyInArray!0 (select (arr!47601 a!2862) i!1006)))))

(declare-fun b!1460914 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!821394 () Bool)

(assert (=> b!1460914 (= e!821394 (or (= (select (arr!47601 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47601 a!2862) intermediateBeforeIndex!19) (select (arr!47601 a!2862) j!93))))))

(declare-fun b!1460915 () Bool)

(declare-fun res!990722 () Bool)

(assert (=> b!1460915 (=> (not res!990722) (not e!821397))))

(declare-fun lt!639933 () SeekEntryResult!11876)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1460915 (= res!990722 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47601 a!2862) j!93) a!2862 mask!2687) lt!639933))))

(declare-fun b!1460916 () Bool)

(declare-fun e!821396 () Bool)

(assert (=> b!1460916 (= e!821399 (not e!821396))))

(declare-fun res!990721 () Bool)

(assert (=> b!1460916 (=> res!990721 e!821396)))

(assert (=> b!1460916 (= res!990721 (or (and (= (select (arr!47601 a!2862) index!646) (select (store (arr!47601 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47601 a!2862) index!646) (select (arr!47601 a!2862) j!93))) (= (select (arr!47601 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1460916 e!821394))

(declare-fun res!990729 () Bool)

(assert (=> b!1460916 (=> (not res!990729) (not e!821394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98635 (_ BitVec 32)) Bool)

(assert (=> b!1460916 (= res!990729 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49196 0))(
  ( (Unit!49197) )
))
(declare-fun lt!639931 () Unit!49196)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49196)

(assert (=> b!1460916 (= lt!639931 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460917 () Bool)

(declare-fun res!990716 () Bool)

(assert (=> b!1460917 (=> (not res!990716) (not e!821399))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460917 (= res!990716 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1460918 () Bool)

(declare-fun res!990718 () Bool)

(assert (=> b!1460918 (=> (not res!990718) (not e!821399))))

(declare-fun e!821401 () Bool)

(assert (=> b!1460918 (= res!990718 e!821401)))

(declare-fun c!134611 () Bool)

(assert (=> b!1460918 (= c!134611 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460919 () Bool)

(declare-fun res!990725 () Bool)

(assert (=> b!1460919 (=> (not res!990725) (not e!821395))))

(declare-datatypes ((List!34282 0))(
  ( (Nil!34279) (Cons!34278 (h!35628 (_ BitVec 64)) (t!48983 List!34282)) )
))
(declare-fun arrayNoDuplicates!0 (array!98635 (_ BitVec 32) List!34282) Bool)

(assert (=> b!1460919 (= res!990725 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34279))))

(declare-fun b!1460921 () Bool)

(declare-fun res!990731 () Bool)

(declare-fun e!821402 () Bool)

(assert (=> b!1460921 (=> res!990731 e!821402)))

(declare-fun lt!639934 () (_ BitVec 32))

(assert (=> b!1460921 (= res!990731 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639934 (select (arr!47601 a!2862) j!93) a!2862 mask!2687) lt!639933)))))

(declare-fun b!1460922 () Bool)

(declare-fun res!990730 () Bool)

(assert (=> b!1460922 (=> (not res!990730) (not e!821395))))

(assert (=> b!1460922 (= res!990730 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48152 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48152 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48152 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460923 () Bool)

(declare-fun res!990726 () Bool)

(assert (=> b!1460923 (=> (not res!990726) (not e!821395))))

(assert (=> b!1460923 (= res!990726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460924 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98635 (_ BitVec 32)) SeekEntryResult!11876)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98635 (_ BitVec 32)) SeekEntryResult!11876)

(assert (=> b!1460924 (= e!821401 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639929 lt!639928 mask!2687) (seekEntryOrOpen!0 lt!639929 lt!639928 mask!2687)))))

(declare-fun b!1460925 () Bool)

(assert (=> b!1460925 (= e!821402 true)))

(declare-fun lt!639930 () Bool)

(declare-fun e!821400 () Bool)

(assert (=> b!1460925 (= lt!639930 e!821400)))

(declare-fun c!134612 () Bool)

(assert (=> b!1460925 (= c!134612 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1460926 () Bool)

(assert (=> b!1460926 (= e!821398 e!821397)))

(declare-fun res!990732 () Bool)

(assert (=> b!1460926 (=> (not res!990732) (not e!821397))))

(assert (=> b!1460926 (= res!990732 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47601 a!2862) j!93) mask!2687) (select (arr!47601 a!2862) j!93) a!2862 mask!2687) lt!639933))))

(assert (=> b!1460926 (= lt!639933 (Intermediate!11876 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460927 () Bool)

(declare-fun res!990727 () Bool)

(assert (=> b!1460927 (=> (not res!990727) (not e!821394))))

(assert (=> b!1460927 (= res!990727 (= (seekEntryOrOpen!0 (select (arr!47601 a!2862) j!93) a!2862 mask!2687) (Found!11876 j!93)))))

(declare-fun b!1460928 () Bool)

(assert (=> b!1460928 (= e!821400 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639934 intermediateAfterIndex!19 lt!639929 lt!639928 mask!2687) (seekEntryOrOpen!0 lt!639929 lt!639928 mask!2687))))))

(declare-fun b!1460929 () Bool)

(declare-fun res!990720 () Bool)

(assert (=> b!1460929 (=> (not res!990720) (not e!821395))))

(assert (=> b!1460929 (= res!990720 (validKeyInArray!0 (select (arr!47601 a!2862) j!93)))))

(declare-fun b!1460930 () Bool)

(declare-fun res!990723 () Bool)

(assert (=> b!1460930 (=> (not res!990723) (not e!821395))))

(assert (=> b!1460930 (= res!990723 (and (= (size!48152 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48152 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48152 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460931 () Bool)

(assert (=> b!1460931 (= e!821396 e!821402)))

(declare-fun res!990715 () Bool)

(assert (=> b!1460931 (=> res!990715 e!821402)))

(assert (=> b!1460931 (= res!990715 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!639934 #b00000000000000000000000000000000) (bvsge lt!639934 (size!48152 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460931 (= lt!639934 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1460932 () Bool)

(assert (=> b!1460932 (= e!821401 (= lt!639932 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639929 lt!639928 mask!2687)))))

(declare-fun b!1460920 () Bool)

(assert (=> b!1460920 (= e!821400 (not (= lt!639932 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!639934 lt!639929 lt!639928 mask!2687))))))

(declare-fun res!990728 () Bool)

(assert (=> start!125270 (=> (not res!990728) (not e!821395))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125270 (= res!990728 (validMask!0 mask!2687))))

(assert (=> start!125270 e!821395))

(assert (=> start!125270 true))

(declare-fun array_inv!36546 (array!98635) Bool)

(assert (=> start!125270 (array_inv!36546 a!2862)))

(assert (= (and start!125270 res!990728) b!1460930))

(assert (= (and b!1460930 res!990723) b!1460913))

(assert (= (and b!1460913 res!990717) b!1460929))

(assert (= (and b!1460929 res!990720) b!1460923))

(assert (= (and b!1460923 res!990726) b!1460919))

(assert (= (and b!1460919 res!990725) b!1460922))

(assert (= (and b!1460922 res!990730) b!1460912))

(assert (= (and b!1460912 res!990719) b!1460926))

(assert (= (and b!1460926 res!990732) b!1460915))

(assert (= (and b!1460915 res!990722) b!1460911))

(assert (= (and b!1460911 res!990724) b!1460918))

(assert (= (and b!1460918 c!134611) b!1460932))

(assert (= (and b!1460918 (not c!134611)) b!1460924))

(assert (= (and b!1460918 res!990718) b!1460917))

(assert (= (and b!1460917 res!990716) b!1460916))

(assert (= (and b!1460916 res!990729) b!1460927))

(assert (= (and b!1460927 res!990727) b!1460914))

(assert (= (and b!1460916 (not res!990721)) b!1460931))

(assert (= (and b!1460931 (not res!990715)) b!1460921))

(assert (= (and b!1460921 (not res!990731)) b!1460925))

(assert (= (and b!1460925 c!134612) b!1460920))

(assert (= (and b!1460925 (not c!134612)) b!1460928))

(declare-fun m!1348601 () Bool)

(assert (=> b!1460920 m!1348601))

(declare-fun m!1348603 () Bool)

(assert (=> start!125270 m!1348603))

(declare-fun m!1348605 () Bool)

(assert (=> start!125270 m!1348605))

(declare-fun m!1348607 () Bool)

(assert (=> b!1460912 m!1348607))

(declare-fun m!1348609 () Bool)

(assert (=> b!1460912 m!1348609))

(declare-fun m!1348611 () Bool)

(assert (=> b!1460928 m!1348611))

(declare-fun m!1348613 () Bool)

(assert (=> b!1460928 m!1348613))

(declare-fun m!1348615 () Bool)

(assert (=> b!1460932 m!1348615))

(declare-fun m!1348617 () Bool)

(assert (=> b!1460921 m!1348617))

(assert (=> b!1460921 m!1348617))

(declare-fun m!1348619 () Bool)

(assert (=> b!1460921 m!1348619))

(assert (=> b!1460915 m!1348617))

(assert (=> b!1460915 m!1348617))

(declare-fun m!1348621 () Bool)

(assert (=> b!1460915 m!1348621))

(declare-fun m!1348623 () Bool)

(assert (=> b!1460911 m!1348623))

(assert (=> b!1460911 m!1348623))

(declare-fun m!1348625 () Bool)

(assert (=> b!1460911 m!1348625))

(assert (=> b!1460911 m!1348607))

(declare-fun m!1348627 () Bool)

(assert (=> b!1460911 m!1348627))

(assert (=> b!1460929 m!1348617))

(assert (=> b!1460929 m!1348617))

(declare-fun m!1348629 () Bool)

(assert (=> b!1460929 m!1348629))

(declare-fun m!1348631 () Bool)

(assert (=> b!1460924 m!1348631))

(assert (=> b!1460924 m!1348613))

(declare-fun m!1348633 () Bool)

(assert (=> b!1460914 m!1348633))

(assert (=> b!1460914 m!1348617))

(declare-fun m!1348635 () Bool)

(assert (=> b!1460919 m!1348635))

(assert (=> b!1460926 m!1348617))

(assert (=> b!1460926 m!1348617))

(declare-fun m!1348637 () Bool)

(assert (=> b!1460926 m!1348637))

(assert (=> b!1460926 m!1348637))

(assert (=> b!1460926 m!1348617))

(declare-fun m!1348639 () Bool)

(assert (=> b!1460926 m!1348639))

(declare-fun m!1348641 () Bool)

(assert (=> b!1460923 m!1348641))

(declare-fun m!1348643 () Bool)

(assert (=> b!1460916 m!1348643))

(assert (=> b!1460916 m!1348607))

(declare-fun m!1348645 () Bool)

(assert (=> b!1460916 m!1348645))

(declare-fun m!1348647 () Bool)

(assert (=> b!1460916 m!1348647))

(declare-fun m!1348649 () Bool)

(assert (=> b!1460916 m!1348649))

(assert (=> b!1460916 m!1348617))

(declare-fun m!1348651 () Bool)

(assert (=> b!1460931 m!1348651))

(assert (=> b!1460927 m!1348617))

(assert (=> b!1460927 m!1348617))

(declare-fun m!1348653 () Bool)

(assert (=> b!1460927 m!1348653))

(declare-fun m!1348655 () Bool)

(assert (=> b!1460913 m!1348655))

(assert (=> b!1460913 m!1348655))

(declare-fun m!1348657 () Bool)

(assert (=> b!1460913 m!1348657))

(push 1)

