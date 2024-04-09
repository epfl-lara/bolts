; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126898 () Bool)

(assert start!126898)

(declare-fun b!1489774 () Bool)

(declare-fun res!1013258 () Bool)

(declare-fun e!834922 () Bool)

(assert (=> b!1489774 (=> (not res!1013258) (not e!834922))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99588 0))(
  ( (array!99589 (arr!48061 (Array (_ BitVec 32) (_ BitVec 64))) (size!48612 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99588)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1489774 (= res!1013258 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48612 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48612 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48612 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489775 () Bool)

(declare-fun res!1013252 () Bool)

(declare-fun e!834924 () Bool)

(assert (=> b!1489775 (=> res!1013252 e!834924)))

(assert (=> b!1489775 (= res!1013252 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489776 () Bool)

(declare-fun res!1013267 () Bool)

(assert (=> b!1489776 (=> (not res!1013267) (not e!834922))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99588 (_ BitVec 32)) Bool)

(assert (=> b!1489776 (= res!1013267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489777 () Bool)

(declare-fun res!1013259 () Bool)

(assert (=> b!1489777 (=> (not res!1013259) (not e!834922))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1489777 (= res!1013259 (and (= (size!48612 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48612 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48612 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!649663 () array!99588)

(declare-fun b!1489778 () Bool)

(declare-fun lt!649664 () (_ BitVec 64))

(declare-fun lt!649668 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12324 0))(
  ( (MissingZero!12324 (index!51687 (_ BitVec 32))) (Found!12324 (index!51688 (_ BitVec 32))) (Intermediate!12324 (undefined!13136 Bool) (index!51689 (_ BitVec 32)) (x!133287 (_ BitVec 32))) (Undefined!12324) (MissingVacant!12324 (index!51690 (_ BitVec 32))) )
))
(declare-fun lt!649667 () SeekEntryResult!12324)

(declare-fun e!834925 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99588 (_ BitVec 32)) SeekEntryResult!12324)

(assert (=> b!1489778 (= e!834925 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649668 intermediateAfterIndex!19 lt!649664 lt!649663 mask!2687) lt!649667)))))

(declare-fun b!1489779 () Bool)

(declare-fun e!834923 () Bool)

(declare-fun e!834918 () Bool)

(assert (=> b!1489779 (= e!834923 (not e!834918))))

(declare-fun res!1013255 () Bool)

(assert (=> b!1489779 (=> res!1013255 e!834918)))

(assert (=> b!1489779 (= res!1013255 (or (and (= (select (arr!48061 a!2862) index!646) (select (store (arr!48061 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48061 a!2862) index!646) (select (arr!48061 a!2862) j!93))) (= (select (arr!48061 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun lt!649661 () SeekEntryResult!12324)

(assert (=> b!1489779 (and (= lt!649661 (Found!12324 j!93)) (or (= (select (arr!48061 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48061 a!2862) intermediateBeforeIndex!19) (select (arr!48061 a!2862) j!93))) (let ((bdg!54754 (select (store (arr!48061 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48061 a!2862) index!646) bdg!54754) (= (select (arr!48061 a!2862) index!646) (select (arr!48061 a!2862) j!93))) (= (select (arr!48061 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54754 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99588 (_ BitVec 32)) SeekEntryResult!12324)

(assert (=> b!1489779 (= lt!649661 (seekEntryOrOpen!0 (select (arr!48061 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1489779 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49936 0))(
  ( (Unit!49937) )
))
(declare-fun lt!649666 () Unit!49936)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49936)

(assert (=> b!1489779 (= lt!649666 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489780 () Bool)

(declare-fun e!834926 () Bool)

(assert (=> b!1489780 (= e!834922 e!834926)))

(declare-fun res!1013265 () Bool)

(assert (=> b!1489780 (=> (not res!1013265) (not e!834926))))

(assert (=> b!1489780 (= res!1013265 (= (select (store (arr!48061 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489780 (= lt!649663 (array!99589 (store (arr!48061 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48612 a!2862)))))

(declare-fun b!1489782 () Bool)

(declare-fun res!1013262 () Bool)

(assert (=> b!1489782 (=> res!1013262 e!834924)))

(declare-fun lt!649662 () SeekEntryResult!12324)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99588 (_ BitVec 32)) SeekEntryResult!12324)

(assert (=> b!1489782 (= res!1013262 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649668 (select (arr!48061 a!2862) j!93) a!2862 mask!2687) lt!649662)))))

(declare-fun b!1489783 () Bool)

(declare-fun res!1013257 () Bool)

(declare-fun e!834920 () Bool)

(assert (=> b!1489783 (=> (not res!1013257) (not e!834920))))

(assert (=> b!1489783 (= res!1013257 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48061 a!2862) j!93) a!2862 mask!2687) lt!649662))))

(declare-fun b!1489784 () Bool)

(declare-fun res!1013260 () Bool)

(assert (=> b!1489784 (=> (not res!1013260) (not e!834923))))

(assert (=> b!1489784 (= res!1013260 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1489785 () Bool)

(declare-fun res!1013266 () Bool)

(assert (=> b!1489785 (=> (not res!1013266) (not e!834923))))

(declare-fun e!834921 () Bool)

(assert (=> b!1489785 (= res!1013266 e!834921)))

(declare-fun c!137792 () Bool)

(assert (=> b!1489785 (= c!137792 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489786 () Bool)

(assert (=> b!1489786 (= e!834918 e!834924)))

(declare-fun res!1013263 () Bool)

(assert (=> b!1489786 (=> res!1013263 e!834924)))

(assert (=> b!1489786 (= res!1013263 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649668 #b00000000000000000000000000000000) (bvsge lt!649668 (size!48612 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489786 (= lt!649668 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489786 (= lt!649667 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649664 lt!649663 mask!2687))))

(assert (=> b!1489786 (= lt!649667 (seekEntryOrOpen!0 lt!649664 lt!649663 mask!2687))))

(declare-fun b!1489787 () Bool)

(declare-fun res!1013268 () Bool)

(assert (=> b!1489787 (=> res!1013268 e!834924)))

(assert (=> b!1489787 (= res!1013268 e!834925)))

(declare-fun c!137791 () Bool)

(assert (=> b!1489787 (= c!137791 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489788 () Bool)

(declare-fun res!1013261 () Bool)

(assert (=> b!1489788 (=> (not res!1013261) (not e!834922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489788 (= res!1013261 (validKeyInArray!0 (select (arr!48061 a!2862) i!1006)))))

(declare-fun b!1489789 () Bool)

(assert (=> b!1489789 (= e!834926 e!834920)))

(declare-fun res!1013253 () Bool)

(assert (=> b!1489789 (=> (not res!1013253) (not e!834920))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489789 (= res!1013253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48061 a!2862) j!93) mask!2687) (select (arr!48061 a!2862) j!93) a!2862 mask!2687) lt!649662))))

(assert (=> b!1489789 (= lt!649662 (Intermediate!12324 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489790 () Bool)

(assert (=> b!1489790 (= e!834920 e!834923)))

(declare-fun res!1013251 () Bool)

(assert (=> b!1489790 (=> (not res!1013251) (not e!834923))))

(declare-fun lt!649665 () SeekEntryResult!12324)

(assert (=> b!1489790 (= res!1013251 (= lt!649665 (Intermediate!12324 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1489790 (= lt!649665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649664 mask!2687) lt!649664 lt!649663 mask!2687))))

(assert (=> b!1489790 (= lt!649664 (select (store (arr!48061 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489791 () Bool)

(declare-fun res!1013264 () Bool)

(assert (=> b!1489791 (=> (not res!1013264) (not e!834922))))

(declare-datatypes ((List!34742 0))(
  ( (Nil!34739) (Cons!34738 (h!36121 (_ BitVec 64)) (t!49443 List!34742)) )
))
(declare-fun arrayNoDuplicates!0 (array!99588 (_ BitVec 32) List!34742) Bool)

(assert (=> b!1489791 (= res!1013264 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34739))))

(declare-fun b!1489792 () Bool)

(assert (=> b!1489792 (= e!834921 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649664 lt!649663 mask!2687) (seekEntryOrOpen!0 lt!649664 lt!649663 mask!2687)))))

(declare-fun b!1489793 () Bool)

(assert (=> b!1489793 (= e!834924 true)))

(assert (=> b!1489793 (= lt!649661 lt!649667)))

(declare-fun lt!649669 () Unit!49936)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49936)

(assert (=> b!1489793 (= lt!649669 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649668 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489781 () Bool)

(assert (=> b!1489781 (= e!834921 (= lt!649665 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649664 lt!649663 mask!2687)))))

(declare-fun res!1013256 () Bool)

(assert (=> start!126898 (=> (not res!1013256) (not e!834922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126898 (= res!1013256 (validMask!0 mask!2687))))

(assert (=> start!126898 e!834922))

(assert (=> start!126898 true))

(declare-fun array_inv!37006 (array!99588) Bool)

(assert (=> start!126898 (array_inv!37006 a!2862)))

(declare-fun b!1489794 () Bool)

(declare-fun res!1013254 () Bool)

(assert (=> b!1489794 (=> (not res!1013254) (not e!834922))))

(assert (=> b!1489794 (= res!1013254 (validKeyInArray!0 (select (arr!48061 a!2862) j!93)))))

(declare-fun b!1489795 () Bool)

(assert (=> b!1489795 (= e!834925 (not (= lt!649665 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649668 lt!649664 lt!649663 mask!2687))))))

(assert (= (and start!126898 res!1013256) b!1489777))

(assert (= (and b!1489777 res!1013259) b!1489788))

(assert (= (and b!1489788 res!1013261) b!1489794))

(assert (= (and b!1489794 res!1013254) b!1489776))

(assert (= (and b!1489776 res!1013267) b!1489791))

(assert (= (and b!1489791 res!1013264) b!1489774))

(assert (= (and b!1489774 res!1013258) b!1489780))

(assert (= (and b!1489780 res!1013265) b!1489789))

(assert (= (and b!1489789 res!1013253) b!1489783))

(assert (= (and b!1489783 res!1013257) b!1489790))

(assert (= (and b!1489790 res!1013251) b!1489785))

(assert (= (and b!1489785 c!137792) b!1489781))

(assert (= (and b!1489785 (not c!137792)) b!1489792))

(assert (= (and b!1489785 res!1013266) b!1489784))

(assert (= (and b!1489784 res!1013260) b!1489779))

(assert (= (and b!1489779 (not res!1013255)) b!1489786))

(assert (= (and b!1489786 (not res!1013263)) b!1489782))

(assert (= (and b!1489782 (not res!1013262)) b!1489787))

(assert (= (and b!1489787 c!137791) b!1489795))

(assert (= (and b!1489787 (not c!137791)) b!1489778))

(assert (= (and b!1489787 (not res!1013268)) b!1489775))

(assert (= (and b!1489775 (not res!1013252)) b!1489793))

(declare-fun m!1374027 () Bool)

(assert (=> b!1489783 m!1374027))

(assert (=> b!1489783 m!1374027))

(declare-fun m!1374029 () Bool)

(assert (=> b!1489783 m!1374029))

(declare-fun m!1374031 () Bool)

(assert (=> b!1489790 m!1374031))

(assert (=> b!1489790 m!1374031))

(declare-fun m!1374033 () Bool)

(assert (=> b!1489790 m!1374033))

(declare-fun m!1374035 () Bool)

(assert (=> b!1489790 m!1374035))

(declare-fun m!1374037 () Bool)

(assert (=> b!1489790 m!1374037))

(declare-fun m!1374039 () Bool)

(assert (=> b!1489778 m!1374039))

(declare-fun m!1374041 () Bool)

(assert (=> b!1489788 m!1374041))

(assert (=> b!1489788 m!1374041))

(declare-fun m!1374043 () Bool)

(assert (=> b!1489788 m!1374043))

(assert (=> b!1489794 m!1374027))

(assert (=> b!1489794 m!1374027))

(declare-fun m!1374045 () Bool)

(assert (=> b!1489794 m!1374045))

(declare-fun m!1374047 () Bool)

(assert (=> b!1489793 m!1374047))

(assert (=> b!1489789 m!1374027))

(assert (=> b!1489789 m!1374027))

(declare-fun m!1374049 () Bool)

(assert (=> b!1489789 m!1374049))

(assert (=> b!1489789 m!1374049))

(assert (=> b!1489789 m!1374027))

(declare-fun m!1374051 () Bool)

(assert (=> b!1489789 m!1374051))

(declare-fun m!1374053 () Bool)

(assert (=> b!1489781 m!1374053))

(declare-fun m!1374055 () Bool)

(assert (=> start!126898 m!1374055))

(declare-fun m!1374057 () Bool)

(assert (=> start!126898 m!1374057))

(declare-fun m!1374059 () Bool)

(assert (=> b!1489779 m!1374059))

(assert (=> b!1489779 m!1374035))

(declare-fun m!1374061 () Bool)

(assert (=> b!1489779 m!1374061))

(declare-fun m!1374063 () Bool)

(assert (=> b!1489779 m!1374063))

(declare-fun m!1374065 () Bool)

(assert (=> b!1489779 m!1374065))

(assert (=> b!1489779 m!1374027))

(declare-fun m!1374067 () Bool)

(assert (=> b!1489779 m!1374067))

(declare-fun m!1374069 () Bool)

(assert (=> b!1489779 m!1374069))

(assert (=> b!1489779 m!1374027))

(assert (=> b!1489780 m!1374035))

(declare-fun m!1374071 () Bool)

(assert (=> b!1489780 m!1374071))

(assert (=> b!1489782 m!1374027))

(assert (=> b!1489782 m!1374027))

(declare-fun m!1374073 () Bool)

(assert (=> b!1489782 m!1374073))

(declare-fun m!1374075 () Bool)

(assert (=> b!1489776 m!1374075))

(declare-fun m!1374077 () Bool)

(assert (=> b!1489786 m!1374077))

(declare-fun m!1374079 () Bool)

(assert (=> b!1489786 m!1374079))

(declare-fun m!1374081 () Bool)

(assert (=> b!1489786 m!1374081))

(declare-fun m!1374083 () Bool)

(assert (=> b!1489795 m!1374083))

(declare-fun m!1374085 () Bool)

(assert (=> b!1489791 m!1374085))

(assert (=> b!1489792 m!1374079))

(assert (=> b!1489792 m!1374081))

(push 1)

