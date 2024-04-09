; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126584 () Bool)

(assert start!126584)

(declare-fun b!1484777 () Bool)

(declare-fun res!1009641 () Bool)

(declare-fun e!832465 () Bool)

(assert (=> b!1484777 (=> (not res!1009641) (not e!832465))))

(declare-datatypes ((array!99463 0))(
  ( (array!99464 (arr!48003 (Array (_ BitVec 32) (_ BitVec 64))) (size!48554 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99463)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484777 (= res!1009641 (validKeyInArray!0 (select (arr!48003 a!2862) j!93)))))

(declare-fun b!1484778 () Bool)

(declare-fun res!1009626 () Bool)

(declare-fun e!832467 () Bool)

(assert (=> b!1484778 (=> (not res!1009626) (not e!832467))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12266 0))(
  ( (MissingZero!12266 (index!51455 (_ BitVec 32))) (Found!12266 (index!51456 (_ BitVec 32))) (Intermediate!12266 (undefined!13078 Bool) (index!51457 (_ BitVec 32)) (x!133033 (_ BitVec 32))) (Undefined!12266) (MissingVacant!12266 (index!51458 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99463 (_ BitVec 32)) SeekEntryResult!12266)

(assert (=> b!1484778 (= res!1009626 (= (seekEntryOrOpen!0 (select (arr!48003 a!2862) j!93) a!2862 mask!2687) (Found!12266 j!93)))))

(declare-fun b!1484779 () Bool)

(declare-fun res!1009639 () Bool)

(declare-fun e!832466 () Bool)

(assert (=> b!1484779 (=> (not res!1009639) (not e!832466))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484779 (= res!1009639 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484780 () Bool)

(declare-fun res!1009628 () Bool)

(assert (=> b!1484780 (=> (not res!1009628) (not e!832466))))

(declare-fun e!832460 () Bool)

(assert (=> b!1484780 (= res!1009628 e!832460)))

(declare-fun c!137102 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484780 (= c!137102 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484781 () Bool)

(declare-fun e!832463 () Bool)

(assert (=> b!1484781 (= e!832467 e!832463)))

(declare-fun res!1009625 () Bool)

(assert (=> b!1484781 (=> res!1009625 e!832463)))

(declare-fun lt!647844 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1484781 (= res!1009625 (or (and (= (select (arr!48003 a!2862) index!646) lt!647844) (= (select (arr!48003 a!2862) index!646) (select (arr!48003 a!2862) j!93))) (= (select (arr!48003 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484781 (= lt!647844 (select (store (arr!48003 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484782 () Bool)

(declare-fun res!1009627 () Bool)

(assert (=> b!1484782 (=> (not res!1009627) (not e!832465))))

(declare-datatypes ((List!34684 0))(
  ( (Nil!34681) (Cons!34680 (h!36054 (_ BitVec 64)) (t!49385 List!34684)) )
))
(declare-fun arrayNoDuplicates!0 (array!99463 (_ BitVec 32) List!34684) Bool)

(assert (=> b!1484782 (= res!1009627 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34681))))

(declare-fun b!1484783 () Bool)

(declare-fun res!1009631 () Bool)

(assert (=> b!1484783 (=> (not res!1009631) (not e!832467))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484783 (= res!1009631 (or (= (select (arr!48003 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48003 a!2862) intermediateBeforeIndex!19) (select (arr!48003 a!2862) j!93))))))

(declare-fun lt!647843 () SeekEntryResult!12266)

(declare-fun lt!647842 () array!99463)

(declare-fun b!1484784 () Bool)

(declare-fun lt!647839 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99463 (_ BitVec 32)) SeekEntryResult!12266)

(assert (=> b!1484784 (= e!832460 (= lt!647843 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647839 lt!647842 mask!2687)))))

(declare-fun b!1484786 () Bool)

(declare-fun res!1009624 () Bool)

(assert (=> b!1484786 (=> (not res!1009624) (not e!832465))))

(assert (=> b!1484786 (= res!1009624 (validKeyInArray!0 (select (arr!48003 a!2862) i!1006)))))

(declare-fun b!1484787 () Bool)

(declare-fun res!1009629 () Bool)

(assert (=> b!1484787 (=> (not res!1009629) (not e!832465))))

(assert (=> b!1484787 (= res!1009629 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48554 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48554 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48554 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484788 () Bool)

(declare-fun e!832469 () Bool)

(assert (=> b!1484788 (= e!832465 e!832469)))

(declare-fun res!1009633 () Bool)

(assert (=> b!1484788 (=> (not res!1009633) (not e!832469))))

(assert (=> b!1484788 (= res!1009633 (= (select (store (arr!48003 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484788 (= lt!647842 (array!99464 (store (arr!48003 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48554 a!2862)))))

(declare-fun b!1484789 () Bool)

(declare-fun e!832468 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99463 (_ BitVec 32)) SeekEntryResult!12266)

(assert (=> b!1484789 (= e!832468 (= (seekEntryOrOpen!0 lt!647839 lt!647842 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647839 lt!647842 mask!2687)))))

(declare-fun b!1484790 () Bool)

(declare-fun e!832464 () Bool)

(assert (=> b!1484790 (= e!832466 (not e!832464))))

(declare-fun res!1009636 () Bool)

(assert (=> b!1484790 (=> res!1009636 e!832464)))

(assert (=> b!1484790 (= res!1009636 (or (and (= (select (arr!48003 a!2862) index!646) (select (store (arr!48003 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48003 a!2862) index!646) (select (arr!48003 a!2862) j!93))) (= (select (arr!48003 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484790 e!832467))

(declare-fun res!1009632 () Bool)

(assert (=> b!1484790 (=> (not res!1009632) (not e!832467))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99463 (_ BitVec 32)) Bool)

(assert (=> b!1484790 (= res!1009632 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49820 0))(
  ( (Unit!49821) )
))
(declare-fun lt!647841 () Unit!49820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49820)

(assert (=> b!1484790 (= lt!647841 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484791 () Bool)

(declare-fun e!832461 () Bool)

(assert (=> b!1484791 (= e!832469 e!832461)))

(declare-fun res!1009638 () Bool)

(assert (=> b!1484791 (=> (not res!1009638) (not e!832461))))

(declare-fun lt!647840 () SeekEntryResult!12266)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484791 (= res!1009638 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48003 a!2862) j!93) mask!2687) (select (arr!48003 a!2862) j!93) a!2862 mask!2687) lt!647840))))

(assert (=> b!1484791 (= lt!647840 (Intermediate!12266 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484792 () Bool)

(declare-fun res!1009634 () Bool)

(assert (=> b!1484792 (=> (not res!1009634) (not e!832465))))

(assert (=> b!1484792 (= res!1009634 (and (= (size!48554 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48554 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48554 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484793 () Bool)

(assert (=> b!1484793 (= e!832461 e!832466)))

(declare-fun res!1009637 () Bool)

(assert (=> b!1484793 (=> (not res!1009637) (not e!832466))))

(assert (=> b!1484793 (= res!1009637 (= lt!647843 (Intermediate!12266 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484793 (= lt!647843 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647839 mask!2687) lt!647839 lt!647842 mask!2687))))

(assert (=> b!1484793 (= lt!647839 (select (store (arr!48003 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484794 () Bool)

(assert (=> b!1484794 (= e!832460 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647839 lt!647842 mask!2687) (seekEntryOrOpen!0 lt!647839 lt!647842 mask!2687)))))

(declare-fun b!1484795 () Bool)

(assert (=> b!1484795 (= e!832464 true)))

(declare-fun lt!647845 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484795 (= lt!647845 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1009623 () Bool)

(assert (=> start!126584 (=> (not res!1009623) (not e!832465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126584 (= res!1009623 (validMask!0 mask!2687))))

(assert (=> start!126584 e!832465))

(assert (=> start!126584 true))

(declare-fun array_inv!36948 (array!99463) Bool)

(assert (=> start!126584 (array_inv!36948 a!2862)))

(declare-fun b!1484785 () Bool)

(assert (=> b!1484785 (= e!832463 e!832468)))

(declare-fun res!1009640 () Bool)

(assert (=> b!1484785 (=> (not res!1009640) (not e!832468))))

(assert (=> b!1484785 (= res!1009640 (and (= index!646 intermediateAfterIndex!19) (= lt!647844 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1484796 () Bool)

(declare-fun res!1009630 () Bool)

(assert (=> b!1484796 (=> (not res!1009630) (not e!832465))))

(assert (=> b!1484796 (= res!1009630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484797 () Bool)

(declare-fun res!1009635 () Bool)

(assert (=> b!1484797 (=> (not res!1009635) (not e!832461))))

(assert (=> b!1484797 (= res!1009635 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48003 a!2862) j!93) a!2862 mask!2687) lt!647840))))

(assert (= (and start!126584 res!1009623) b!1484792))

(assert (= (and b!1484792 res!1009634) b!1484786))

(assert (= (and b!1484786 res!1009624) b!1484777))

(assert (= (and b!1484777 res!1009641) b!1484796))

(assert (= (and b!1484796 res!1009630) b!1484782))

(assert (= (and b!1484782 res!1009627) b!1484787))

(assert (= (and b!1484787 res!1009629) b!1484788))

(assert (= (and b!1484788 res!1009633) b!1484791))

(assert (= (and b!1484791 res!1009638) b!1484797))

(assert (= (and b!1484797 res!1009635) b!1484793))

(assert (= (and b!1484793 res!1009637) b!1484780))

(assert (= (and b!1484780 c!137102) b!1484784))

(assert (= (and b!1484780 (not c!137102)) b!1484794))

(assert (= (and b!1484780 res!1009628) b!1484779))

(assert (= (and b!1484779 res!1009639) b!1484790))

(assert (= (and b!1484790 res!1009632) b!1484778))

(assert (= (and b!1484778 res!1009626) b!1484783))

(assert (= (and b!1484783 res!1009631) b!1484781))

(assert (= (and b!1484781 (not res!1009625)) b!1484785))

(assert (= (and b!1484785 res!1009640) b!1484789))

(assert (= (and b!1484790 (not res!1009636)) b!1484795))

(declare-fun m!1370069 () Bool)

(assert (=> start!126584 m!1370069))

(declare-fun m!1370071 () Bool)

(assert (=> start!126584 m!1370071))

(declare-fun m!1370073 () Bool)

(assert (=> b!1484782 m!1370073))

(declare-fun m!1370075 () Bool)

(assert (=> b!1484796 m!1370075))

(declare-fun m!1370077 () Bool)

(assert (=> b!1484791 m!1370077))

(assert (=> b!1484791 m!1370077))

(declare-fun m!1370079 () Bool)

(assert (=> b!1484791 m!1370079))

(assert (=> b!1484791 m!1370079))

(assert (=> b!1484791 m!1370077))

(declare-fun m!1370081 () Bool)

(assert (=> b!1484791 m!1370081))

(declare-fun m!1370083 () Bool)

(assert (=> b!1484794 m!1370083))

(declare-fun m!1370085 () Bool)

(assert (=> b!1484794 m!1370085))

(assert (=> b!1484778 m!1370077))

(assert (=> b!1484778 m!1370077))

(declare-fun m!1370087 () Bool)

(assert (=> b!1484778 m!1370087))

(declare-fun m!1370089 () Bool)

(assert (=> b!1484783 m!1370089))

(assert (=> b!1484783 m!1370077))

(declare-fun m!1370091 () Bool)

(assert (=> b!1484788 m!1370091))

(declare-fun m!1370093 () Bool)

(assert (=> b!1484788 m!1370093))

(declare-fun m!1370095 () Bool)

(assert (=> b!1484790 m!1370095))

(assert (=> b!1484790 m!1370091))

(declare-fun m!1370097 () Bool)

(assert (=> b!1484790 m!1370097))

(declare-fun m!1370099 () Bool)

(assert (=> b!1484790 m!1370099))

(declare-fun m!1370101 () Bool)

(assert (=> b!1484790 m!1370101))

(assert (=> b!1484790 m!1370077))

(declare-fun m!1370103 () Bool)

(assert (=> b!1484795 m!1370103))

(assert (=> b!1484797 m!1370077))

(assert (=> b!1484797 m!1370077))

(declare-fun m!1370105 () Bool)

(assert (=> b!1484797 m!1370105))

(assert (=> b!1484777 m!1370077))

(assert (=> b!1484777 m!1370077))

(declare-fun m!1370107 () Bool)

(assert (=> b!1484777 m!1370107))

(declare-fun m!1370109 () Bool)

(assert (=> b!1484786 m!1370109))

(assert (=> b!1484786 m!1370109))

(declare-fun m!1370111 () Bool)

(assert (=> b!1484786 m!1370111))

(assert (=> b!1484781 m!1370099))

(assert (=> b!1484781 m!1370077))

(assert (=> b!1484781 m!1370091))

(assert (=> b!1484781 m!1370097))

(declare-fun m!1370113 () Bool)

(assert (=> b!1484793 m!1370113))

(assert (=> b!1484793 m!1370113))

(declare-fun m!1370115 () Bool)

(assert (=> b!1484793 m!1370115))

(assert (=> b!1484793 m!1370091))

(declare-fun m!1370117 () Bool)

(assert (=> b!1484793 m!1370117))

(assert (=> b!1484789 m!1370085))

(assert (=> b!1484789 m!1370083))

(declare-fun m!1370119 () Bool)

(assert (=> b!1484784 m!1370119))

(push 1)

