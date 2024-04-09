; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125326 () Bool)

(assert start!125326)

(declare-fun b!1462759 () Bool)

(declare-fun res!992242 () Bool)

(declare-fun e!822238 () Bool)

(assert (=> b!1462759 (=> (not res!992242) (not e!822238))))

(declare-datatypes ((array!98691 0))(
  ( (array!98692 (arr!47629 (Array (_ BitVec 32) (_ BitVec 64))) (size!48180 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98691)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11904 0))(
  ( (MissingZero!11904 (index!50007 (_ BitVec 32))) (Found!11904 (index!50008 (_ BitVec 32))) (Intermediate!11904 (undefined!12716 Bool) (index!50009 (_ BitVec 32)) (x!131604 (_ BitVec 32))) (Undefined!11904) (MissingVacant!11904 (index!50010 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98691 (_ BitVec 32)) SeekEntryResult!11904)

(assert (=> b!1462759 (= res!992242 (= (seekEntryOrOpen!0 (select (arr!47629 a!2862) j!93) a!2862 mask!2687) (Found!11904 j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!822233 () Bool)

(declare-fun b!1462760 () Bool)

(declare-fun lt!640520 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!640516 () array!98691)

(declare-fun lt!640522 () SeekEntryResult!11904)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98691 (_ BitVec 32)) SeekEntryResult!11904)

(assert (=> b!1462760 (= e!822233 (= lt!640522 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640520 lt!640516 mask!2687)))))

(declare-fun b!1462761 () Bool)

(declare-fun res!992240 () Bool)

(declare-fun e!822237 () Bool)

(assert (=> b!1462761 (=> (not res!992240) (not e!822237))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462761 (= res!992240 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48180 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48180 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48180 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462762 () Bool)

(declare-fun res!992241 () Bool)

(assert (=> b!1462762 (=> (not res!992241) (not e!822237))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462762 (= res!992241 (validKeyInArray!0 (select (arr!47629 a!2862) i!1006)))))

(declare-fun b!1462763 () Bool)

(declare-fun res!992234 () Bool)

(declare-fun e!822241 () Bool)

(assert (=> b!1462763 (=> res!992234 e!822241)))

(declare-fun lt!640518 () (_ BitVec 32))

(declare-fun lt!640519 () SeekEntryResult!11904)

(assert (=> b!1462763 (= res!992234 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640518 (select (arr!47629 a!2862) j!93) a!2862 mask!2687) lt!640519)))))

(declare-fun b!1462764 () Bool)

(declare-fun res!992237 () Bool)

(declare-fun e!822234 () Bool)

(assert (=> b!1462764 (=> (not res!992237) (not e!822234))))

(assert (=> b!1462764 (= res!992237 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47629 a!2862) j!93) a!2862 mask!2687) lt!640519))))

(declare-fun b!1462765 () Bool)

(declare-fun e!822239 () Bool)

(assert (=> b!1462765 (= e!822237 e!822239)))

(declare-fun res!992227 () Bool)

(assert (=> b!1462765 (=> (not res!992227) (not e!822239))))

(assert (=> b!1462765 (= res!992227 (= (select (store (arr!47629 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462765 (= lt!640516 (array!98692 (store (arr!47629 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48180 a!2862)))))

(declare-fun b!1462767 () Bool)

(declare-fun res!992228 () Bool)

(assert (=> b!1462767 (=> (not res!992228) (not e!822237))))

(assert (=> b!1462767 (= res!992228 (validKeyInArray!0 (select (arr!47629 a!2862) j!93)))))

(declare-fun b!1462768 () Bool)

(declare-fun res!992244 () Bool)

(assert (=> b!1462768 (=> (not res!992244) (not e!822237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98691 (_ BitVec 32)) Bool)

(assert (=> b!1462768 (= res!992244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462769 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98691 (_ BitVec 32)) SeekEntryResult!11904)

(assert (=> b!1462769 (= e!822233 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640520 lt!640516 mask!2687) (seekEntryOrOpen!0 lt!640520 lt!640516 mask!2687)))))

(declare-fun b!1462770 () Bool)

(declare-fun res!992229 () Bool)

(declare-fun e!822235 () Bool)

(assert (=> b!1462770 (=> (not res!992229) (not e!822235))))

(assert (=> b!1462770 (= res!992229 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462771 () Bool)

(assert (=> b!1462771 (= e!822234 e!822235)))

(declare-fun res!992231 () Bool)

(assert (=> b!1462771 (=> (not res!992231) (not e!822235))))

(assert (=> b!1462771 (= res!992231 (= lt!640522 (Intermediate!11904 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462771 (= lt!640522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640520 mask!2687) lt!640520 lt!640516 mask!2687))))

(assert (=> b!1462771 (= lt!640520 (select (store (arr!47629 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun e!822242 () Bool)

(declare-fun b!1462772 () Bool)

(assert (=> b!1462772 (= e!822242 (not (= lt!640522 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640518 lt!640520 lt!640516 mask!2687))))))

(declare-fun b!1462773 () Bool)

(assert (=> b!1462773 (= e!822241 true)))

(declare-fun lt!640521 () Bool)

(assert (=> b!1462773 (= lt!640521 e!822242)))

(declare-fun c!134779 () Bool)

(assert (=> b!1462773 (= c!134779 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462774 () Bool)

(declare-fun res!992243 () Bool)

(assert (=> b!1462774 (=> (not res!992243) (not e!822235))))

(assert (=> b!1462774 (= res!992243 e!822233)))

(declare-fun c!134780 () Bool)

(assert (=> b!1462774 (= c!134780 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462775 () Bool)

(declare-fun e!822236 () Bool)

(assert (=> b!1462775 (= e!822235 (not e!822236))))

(declare-fun res!992239 () Bool)

(assert (=> b!1462775 (=> res!992239 e!822236)))

(assert (=> b!1462775 (= res!992239 (or (and (= (select (arr!47629 a!2862) index!646) (select (store (arr!47629 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47629 a!2862) index!646) (select (arr!47629 a!2862) j!93))) (= (select (arr!47629 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462775 e!822238))

(declare-fun res!992238 () Bool)

(assert (=> b!1462775 (=> (not res!992238) (not e!822238))))

(assert (=> b!1462775 (= res!992238 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49252 0))(
  ( (Unit!49253) )
))
(declare-fun lt!640517 () Unit!49252)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98691 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49252)

(assert (=> b!1462775 (= lt!640517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462776 () Bool)

(assert (=> b!1462776 (= e!822239 e!822234)))

(declare-fun res!992230 () Bool)

(assert (=> b!1462776 (=> (not res!992230) (not e!822234))))

(assert (=> b!1462776 (= res!992230 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47629 a!2862) j!93) mask!2687) (select (arr!47629 a!2862) j!93) a!2862 mask!2687) lt!640519))))

(assert (=> b!1462776 (= lt!640519 (Intermediate!11904 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462766 () Bool)

(declare-fun res!992232 () Bool)

(assert (=> b!1462766 (=> (not res!992232) (not e!822237))))

(assert (=> b!1462766 (= res!992232 (and (= (size!48180 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48180 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48180 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!992235 () Bool)

(assert (=> start!125326 (=> (not res!992235) (not e!822237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125326 (= res!992235 (validMask!0 mask!2687))))

(assert (=> start!125326 e!822237))

(assert (=> start!125326 true))

(declare-fun array_inv!36574 (array!98691) Bool)

(assert (=> start!125326 (array_inv!36574 a!2862)))

(declare-fun b!1462777 () Bool)

(declare-fun res!992233 () Bool)

(assert (=> b!1462777 (=> (not res!992233) (not e!822237))))

(declare-datatypes ((List!34310 0))(
  ( (Nil!34307) (Cons!34306 (h!35656 (_ BitVec 64)) (t!49011 List!34310)) )
))
(declare-fun arrayNoDuplicates!0 (array!98691 (_ BitVec 32) List!34310) Bool)

(assert (=> b!1462777 (= res!992233 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34307))))

(declare-fun b!1462778 () Bool)

(assert (=> b!1462778 (= e!822238 (or (= (select (arr!47629 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47629 a!2862) intermediateBeforeIndex!19) (select (arr!47629 a!2862) j!93))))))

(declare-fun b!1462779 () Bool)

(assert (=> b!1462779 (= e!822242 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640518 intermediateAfterIndex!19 lt!640520 lt!640516 mask!2687) (seekEntryOrOpen!0 lt!640520 lt!640516 mask!2687))))))

(declare-fun b!1462780 () Bool)

(assert (=> b!1462780 (= e!822236 e!822241)))

(declare-fun res!992236 () Bool)

(assert (=> b!1462780 (=> res!992236 e!822241)))

(assert (=> b!1462780 (= res!992236 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640518 #b00000000000000000000000000000000) (bvsge lt!640518 (size!48180 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462780 (= lt!640518 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125326 res!992235) b!1462766))

(assert (= (and b!1462766 res!992232) b!1462762))

(assert (= (and b!1462762 res!992241) b!1462767))

(assert (= (and b!1462767 res!992228) b!1462768))

(assert (= (and b!1462768 res!992244) b!1462777))

(assert (= (and b!1462777 res!992233) b!1462761))

(assert (= (and b!1462761 res!992240) b!1462765))

(assert (= (and b!1462765 res!992227) b!1462776))

(assert (= (and b!1462776 res!992230) b!1462764))

(assert (= (and b!1462764 res!992237) b!1462771))

(assert (= (and b!1462771 res!992231) b!1462774))

(assert (= (and b!1462774 c!134780) b!1462760))

(assert (= (and b!1462774 (not c!134780)) b!1462769))

(assert (= (and b!1462774 res!992243) b!1462770))

(assert (= (and b!1462770 res!992229) b!1462775))

(assert (= (and b!1462775 res!992238) b!1462759))

(assert (= (and b!1462759 res!992242) b!1462778))

(assert (= (and b!1462775 (not res!992239)) b!1462780))

(assert (= (and b!1462780 (not res!992236)) b!1462763))

(assert (= (and b!1462763 (not res!992234)) b!1462773))

(assert (= (and b!1462773 c!134779) b!1462772))

(assert (= (and b!1462773 (not c!134779)) b!1462779))

(declare-fun m!1350225 () Bool)

(assert (=> b!1462760 m!1350225))

(declare-fun m!1350227 () Bool)

(assert (=> b!1462771 m!1350227))

(assert (=> b!1462771 m!1350227))

(declare-fun m!1350229 () Bool)

(assert (=> b!1462771 m!1350229))

(declare-fun m!1350231 () Bool)

(assert (=> b!1462771 m!1350231))

(declare-fun m!1350233 () Bool)

(assert (=> b!1462771 m!1350233))

(assert (=> b!1462765 m!1350231))

(declare-fun m!1350235 () Bool)

(assert (=> b!1462765 m!1350235))

(declare-fun m!1350237 () Bool)

(assert (=> b!1462777 m!1350237))

(declare-fun m!1350239 () Bool)

(assert (=> b!1462772 m!1350239))

(declare-fun m!1350241 () Bool)

(assert (=> b!1462764 m!1350241))

(assert (=> b!1462764 m!1350241))

(declare-fun m!1350243 () Bool)

(assert (=> b!1462764 m!1350243))

(declare-fun m!1350245 () Bool)

(assert (=> b!1462779 m!1350245))

(declare-fun m!1350247 () Bool)

(assert (=> b!1462779 m!1350247))

(assert (=> b!1462759 m!1350241))

(assert (=> b!1462759 m!1350241))

(declare-fun m!1350249 () Bool)

(assert (=> b!1462759 m!1350249))

(declare-fun m!1350251 () Bool)

(assert (=> b!1462769 m!1350251))

(assert (=> b!1462769 m!1350247))

(declare-fun m!1350253 () Bool)

(assert (=> b!1462768 m!1350253))

(assert (=> b!1462767 m!1350241))

(assert (=> b!1462767 m!1350241))

(declare-fun m!1350255 () Bool)

(assert (=> b!1462767 m!1350255))

(declare-fun m!1350257 () Bool)

(assert (=> start!125326 m!1350257))

(declare-fun m!1350259 () Bool)

(assert (=> start!125326 m!1350259))

(assert (=> b!1462776 m!1350241))

(assert (=> b!1462776 m!1350241))

(declare-fun m!1350261 () Bool)

(assert (=> b!1462776 m!1350261))

(assert (=> b!1462776 m!1350261))

(assert (=> b!1462776 m!1350241))

(declare-fun m!1350263 () Bool)

(assert (=> b!1462776 m!1350263))

(declare-fun m!1350265 () Bool)

(assert (=> b!1462780 m!1350265))

(declare-fun m!1350267 () Bool)

(assert (=> b!1462762 m!1350267))

(assert (=> b!1462762 m!1350267))

(declare-fun m!1350269 () Bool)

(assert (=> b!1462762 m!1350269))

(assert (=> b!1462763 m!1350241))

(assert (=> b!1462763 m!1350241))

(declare-fun m!1350271 () Bool)

(assert (=> b!1462763 m!1350271))

(declare-fun m!1350273 () Bool)

(assert (=> b!1462778 m!1350273))

(assert (=> b!1462778 m!1350241))

(declare-fun m!1350275 () Bool)

(assert (=> b!1462775 m!1350275))

(assert (=> b!1462775 m!1350231))

(declare-fun m!1350277 () Bool)

(assert (=> b!1462775 m!1350277))

(declare-fun m!1350279 () Bool)

(assert (=> b!1462775 m!1350279))

(declare-fun m!1350281 () Bool)

(assert (=> b!1462775 m!1350281))

(assert (=> b!1462775 m!1350241))

(push 1)

