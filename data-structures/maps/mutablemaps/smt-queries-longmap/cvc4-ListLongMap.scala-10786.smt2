; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126260 () Bool)

(assert start!126260)

(declare-fun b!1478780 () Bool)

(declare-fun res!1004870 () Bool)

(declare-fun e!829540 () Bool)

(assert (=> b!1478780 (=> (not res!1004870) (not e!829540))))

(declare-datatypes ((array!99283 0))(
  ( (array!99284 (arr!47916 (Array (_ BitVec 32) (_ BitVec 64))) (size!48467 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99283)

(declare-datatypes ((List!34597 0))(
  ( (Nil!34594) (Cons!34593 (h!35961 (_ BitVec 64)) (t!49298 List!34597)) )
))
(declare-fun arrayNoDuplicates!0 (array!99283 (_ BitVec 32) List!34597) Bool)

(assert (=> b!1478780 (= res!1004870 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34594))))

(declare-fun res!1004857 () Bool)

(assert (=> start!126260 (=> (not res!1004857) (not e!829540))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126260 (= res!1004857 (validMask!0 mask!2687))))

(assert (=> start!126260 e!829540))

(assert (=> start!126260 true))

(declare-fun array_inv!36861 (array!99283) Bool)

(assert (=> start!126260 (array_inv!36861 a!2862)))

(declare-fun b!1478781 () Bool)

(declare-fun e!829545 () Bool)

(assert (=> b!1478781 (= e!829545 (not true))))

(declare-fun e!829539 () Bool)

(assert (=> b!1478781 e!829539))

(declare-fun res!1004862 () Bool)

(assert (=> b!1478781 (=> (not res!1004862) (not e!829539))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12179 0))(
  ( (MissingZero!12179 (index!51107 (_ BitVec 32))) (Found!12179 (index!51108 (_ BitVec 32))) (Intermediate!12179 (undefined!12991 Bool) (index!51109 (_ BitVec 32)) (x!132693 (_ BitVec 32))) (Undefined!12179) (MissingVacant!12179 (index!51110 (_ BitVec 32))) )
))
(declare-fun lt!645766 () SeekEntryResult!12179)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1478781 (= res!1004862 (and (= lt!645766 (Found!12179 j!93)) (or (= (select (arr!47916 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47916 a!2862) intermediateBeforeIndex!19) (select (arr!47916 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99283 (_ BitVec 32)) SeekEntryResult!12179)

(assert (=> b!1478781 (= lt!645766 (seekEntryOrOpen!0 (select (arr!47916 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99283 (_ BitVec 32)) Bool)

(assert (=> b!1478781 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49646 0))(
  ( (Unit!49647) )
))
(declare-fun lt!645762 () Unit!49646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49646)

(assert (=> b!1478781 (= lt!645762 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!645763 () (_ BitVec 64))

(declare-fun b!1478782 () Bool)

(declare-fun e!829542 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!645764 () array!99283)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99283 (_ BitVec 32)) SeekEntryResult!12179)

(assert (=> b!1478782 (= e!829542 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645763 lt!645764 mask!2687) (seekEntryOrOpen!0 lt!645763 lt!645764 mask!2687)))))

(declare-fun b!1478783 () Bool)

(declare-fun res!1004858 () Bool)

(assert (=> b!1478783 (=> (not res!1004858) (not e!829540))))

(assert (=> b!1478783 (= res!1004858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1478784 () Bool)

(declare-fun lt!645761 () SeekEntryResult!12179)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99283 (_ BitVec 32)) SeekEntryResult!12179)

(assert (=> b!1478784 (= e!829542 (= lt!645761 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645763 lt!645764 mask!2687)))))

(declare-fun b!1478785 () Bool)

(declare-fun res!1004860 () Bool)

(assert (=> b!1478785 (=> (not res!1004860) (not e!829540))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1478785 (= res!1004860 (validKeyInArray!0 (select (arr!47916 a!2862) j!93)))))

(declare-fun b!1478786 () Bool)

(declare-fun res!1004868 () Bool)

(assert (=> b!1478786 (=> (not res!1004868) (not e!829545))))

(assert (=> b!1478786 (= res!1004868 e!829542)))

(declare-fun c!136484 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1478786 (= c!136484 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1478787 () Bool)

(declare-fun res!1004871 () Bool)

(assert (=> b!1478787 (=> (not res!1004871) (not e!829540))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1478787 (= res!1004871 (and (= (size!48467 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48467 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48467 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1478788 () Bool)

(declare-fun e!829543 () Bool)

(assert (=> b!1478788 (= e!829543 e!829545)))

(declare-fun res!1004865 () Bool)

(assert (=> b!1478788 (=> (not res!1004865) (not e!829545))))

(assert (=> b!1478788 (= res!1004865 (= lt!645761 (Intermediate!12179 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1478788 (= lt!645761 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645763 mask!2687) lt!645763 lt!645764 mask!2687))))

(assert (=> b!1478788 (= lt!645763 (select (store (arr!47916 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1478789 () Bool)

(declare-fun e!829544 () Bool)

(assert (=> b!1478789 (= e!829544 e!829543)))

(declare-fun res!1004861 () Bool)

(assert (=> b!1478789 (=> (not res!1004861) (not e!829543))))

(declare-fun lt!645765 () SeekEntryResult!12179)

(assert (=> b!1478789 (= res!1004861 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47916 a!2862) j!93) mask!2687) (select (arr!47916 a!2862) j!93) a!2862 mask!2687) lt!645765))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1478789 (= lt!645765 (Intermediate!12179 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!829547 () Bool)

(declare-fun b!1478790 () Bool)

(assert (=> b!1478790 (= e!829547 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1478791 () Bool)

(declare-fun e!829541 () Bool)

(assert (=> b!1478791 (= e!829541 e!829547)))

(declare-fun res!1004867 () Bool)

(assert (=> b!1478791 (=> (not res!1004867) (not e!829547))))

(assert (=> b!1478791 (= res!1004867 (= lt!645766 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47916 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1478792 () Bool)

(assert (=> b!1478792 (= e!829539 e!829541)))

(declare-fun res!1004864 () Bool)

(assert (=> b!1478792 (=> res!1004864 e!829541)))

(assert (=> b!1478792 (= res!1004864 (or (and (= (select (arr!47916 a!2862) index!646) (select (store (arr!47916 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47916 a!2862) index!646) (select (arr!47916 a!2862) j!93))) (not (= (select (arr!47916 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1478793 () Bool)

(assert (=> b!1478793 (= e!829540 e!829544)))

(declare-fun res!1004869 () Bool)

(assert (=> b!1478793 (=> (not res!1004869) (not e!829544))))

(assert (=> b!1478793 (= res!1004869 (= (select (store (arr!47916 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1478793 (= lt!645764 (array!99284 (store (arr!47916 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48467 a!2862)))))

(declare-fun b!1478794 () Bool)

(declare-fun res!1004863 () Bool)

(assert (=> b!1478794 (=> (not res!1004863) (not e!829540))))

(assert (=> b!1478794 (= res!1004863 (validKeyInArray!0 (select (arr!47916 a!2862) i!1006)))))

(declare-fun b!1478795 () Bool)

(declare-fun res!1004859 () Bool)

(assert (=> b!1478795 (=> (not res!1004859) (not e!829540))))

(assert (=> b!1478795 (= res!1004859 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48467 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48467 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48467 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1478796 () Bool)

(declare-fun res!1004856 () Bool)

(assert (=> b!1478796 (=> (not res!1004856) (not e!829543))))

(assert (=> b!1478796 (= res!1004856 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47916 a!2862) j!93) a!2862 mask!2687) lt!645765))))

(declare-fun b!1478797 () Bool)

(declare-fun res!1004866 () Bool)

(assert (=> b!1478797 (=> (not res!1004866) (not e!829545))))

(assert (=> b!1478797 (= res!1004866 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126260 res!1004857) b!1478787))

(assert (= (and b!1478787 res!1004871) b!1478794))

(assert (= (and b!1478794 res!1004863) b!1478785))

(assert (= (and b!1478785 res!1004860) b!1478783))

(assert (= (and b!1478783 res!1004858) b!1478780))

(assert (= (and b!1478780 res!1004870) b!1478795))

(assert (= (and b!1478795 res!1004859) b!1478793))

(assert (= (and b!1478793 res!1004869) b!1478789))

(assert (= (and b!1478789 res!1004861) b!1478796))

(assert (= (and b!1478796 res!1004856) b!1478788))

(assert (= (and b!1478788 res!1004865) b!1478786))

(assert (= (and b!1478786 c!136484) b!1478784))

(assert (= (and b!1478786 (not c!136484)) b!1478782))

(assert (= (and b!1478786 res!1004868) b!1478797))

(assert (= (and b!1478797 res!1004866) b!1478781))

(assert (= (and b!1478781 res!1004862) b!1478792))

(assert (= (and b!1478792 (not res!1004864)) b!1478791))

(assert (= (and b!1478791 res!1004867) b!1478790))

(declare-fun m!1364735 () Bool)

(assert (=> b!1478783 m!1364735))

(declare-fun m!1364737 () Bool)

(assert (=> b!1478792 m!1364737))

(declare-fun m!1364739 () Bool)

(assert (=> b!1478792 m!1364739))

(declare-fun m!1364741 () Bool)

(assert (=> b!1478792 m!1364741))

(declare-fun m!1364743 () Bool)

(assert (=> b!1478792 m!1364743))

(assert (=> b!1478793 m!1364739))

(declare-fun m!1364745 () Bool)

(assert (=> b!1478793 m!1364745))

(declare-fun m!1364747 () Bool)

(assert (=> b!1478782 m!1364747))

(declare-fun m!1364749 () Bool)

(assert (=> b!1478782 m!1364749))

(declare-fun m!1364751 () Bool)

(assert (=> start!126260 m!1364751))

(declare-fun m!1364753 () Bool)

(assert (=> start!126260 m!1364753))

(assert (=> b!1478789 m!1364743))

(assert (=> b!1478789 m!1364743))

(declare-fun m!1364755 () Bool)

(assert (=> b!1478789 m!1364755))

(assert (=> b!1478789 m!1364755))

(assert (=> b!1478789 m!1364743))

(declare-fun m!1364757 () Bool)

(assert (=> b!1478789 m!1364757))

(declare-fun m!1364759 () Bool)

(assert (=> b!1478780 m!1364759))

(assert (=> b!1478791 m!1364743))

(assert (=> b!1478791 m!1364743))

(declare-fun m!1364761 () Bool)

(assert (=> b!1478791 m!1364761))

(declare-fun m!1364763 () Bool)

(assert (=> b!1478781 m!1364763))

(declare-fun m!1364765 () Bool)

(assert (=> b!1478781 m!1364765))

(assert (=> b!1478781 m!1364743))

(declare-fun m!1364767 () Bool)

(assert (=> b!1478781 m!1364767))

(declare-fun m!1364769 () Bool)

(assert (=> b!1478781 m!1364769))

(assert (=> b!1478781 m!1364743))

(declare-fun m!1364771 () Bool)

(assert (=> b!1478794 m!1364771))

(assert (=> b!1478794 m!1364771))

(declare-fun m!1364773 () Bool)

(assert (=> b!1478794 m!1364773))

(declare-fun m!1364775 () Bool)

(assert (=> b!1478784 m!1364775))

(assert (=> b!1478785 m!1364743))

(assert (=> b!1478785 m!1364743))

(declare-fun m!1364777 () Bool)

(assert (=> b!1478785 m!1364777))

(declare-fun m!1364779 () Bool)

(assert (=> b!1478788 m!1364779))

(assert (=> b!1478788 m!1364779))

(declare-fun m!1364781 () Bool)

(assert (=> b!1478788 m!1364781))

(assert (=> b!1478788 m!1364739))

(declare-fun m!1364783 () Bool)

(assert (=> b!1478788 m!1364783))

(assert (=> b!1478796 m!1364743))

(assert (=> b!1478796 m!1364743))

(declare-fun m!1364785 () Bool)

(assert (=> b!1478796 m!1364785))

(push 1)

