; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125954 () Bool)

(assert start!125954)

(declare-fun b!1474227 () Bool)

(declare-fun res!1001554 () Bool)

(declare-fun e!827203 () Bool)

(assert (=> b!1474227 (=> (not res!1001554) (not e!827203))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99148 0))(
  ( (array!99149 (arr!47853 (Array (_ BitVec 32) (_ BitVec 64))) (size!48404 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99148)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12116 0))(
  ( (MissingZero!12116 (index!50855 (_ BitVec 32))) (Found!12116 (index!50856 (_ BitVec 32))) (Intermediate!12116 (undefined!12928 Bool) (index!50857 (_ BitVec 32)) (x!132435 (_ BitVec 32))) (Undefined!12116) (MissingVacant!12116 (index!50858 (_ BitVec 32))) )
))
(declare-fun lt!644153 () SeekEntryResult!12116)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99148 (_ BitVec 32)) SeekEntryResult!12116)

(assert (=> b!1474227 (= res!1001554 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47853 a!2862) j!93) a!2862 mask!2687) lt!644153))))

(declare-fun b!1474229 () Bool)

(declare-fun res!1001568 () Bool)

(declare-fun e!827201 () Bool)

(assert (=> b!1474229 (=> (not res!1001568) (not e!827201))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474229 (= res!1001568 (validKeyInArray!0 (select (arr!47853 a!2862) j!93)))))

(declare-fun b!1474230 () Bool)

(declare-fun res!1001567 () Bool)

(assert (=> b!1474230 (=> (not res!1001567) (not e!827201))))

(declare-datatypes ((List!34534 0))(
  ( (Nil!34531) (Cons!34530 (h!35889 (_ BitVec 64)) (t!49235 List!34534)) )
))
(declare-fun arrayNoDuplicates!0 (array!99148 (_ BitVec 32) List!34534) Bool)

(assert (=> b!1474230 (= res!1001567 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34531))))

(declare-fun b!1474231 () Bool)

(declare-fun res!1001558 () Bool)

(assert (=> b!1474231 (=> (not res!1001558) (not e!827201))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1474231 (= res!1001558 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48404 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48404 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48404 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474232 () Bool)

(declare-fun e!827205 () Bool)

(assert (=> b!1474232 (= e!827201 e!827205)))

(declare-fun res!1001560 () Bool)

(assert (=> b!1474232 (=> (not res!1001560) (not e!827205))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474232 (= res!1001560 (= (select (store (arr!47853 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!644151 () array!99148)

(assert (=> b!1474232 (= lt!644151 (array!99149 (store (arr!47853 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48404 a!2862)))))

(declare-fun b!1474233 () Bool)

(declare-fun res!1001562 () Bool)

(declare-fun e!827204 () Bool)

(assert (=> b!1474233 (=> (not res!1001562) (not e!827204))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99148 (_ BitVec 32)) SeekEntryResult!12116)

(assert (=> b!1474233 (= res!1001562 (= (seekEntryOrOpen!0 (select (arr!47853 a!2862) j!93) a!2862 mask!2687) (Found!12116 j!93)))))

(declare-fun b!1474234 () Bool)

(declare-fun res!1001563 () Bool)

(declare-fun e!827202 () Bool)

(assert (=> b!1474234 (=> (not res!1001563) (not e!827202))))

(declare-fun e!827206 () Bool)

(assert (=> b!1474234 (= res!1001563 e!827206)))

(declare-fun c!135854 () Bool)

(assert (=> b!1474234 (= c!135854 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474235 () Bool)

(declare-fun res!1001559 () Bool)

(assert (=> b!1474235 (=> (not res!1001559) (not e!827201))))

(assert (=> b!1474235 (= res!1001559 (validKeyInArray!0 (select (arr!47853 a!2862) i!1006)))))

(declare-fun lt!644155 () (_ BitVec 64))

(declare-fun b!1474236 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99148 (_ BitVec 32)) SeekEntryResult!12116)

(assert (=> b!1474236 (= e!827206 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644155 lt!644151 mask!2687) (seekEntryOrOpen!0 lt!644155 lt!644151 mask!2687)))))

(declare-fun b!1474237 () Bool)

(assert (=> b!1474237 (= e!827202 (not true))))

(assert (=> b!1474237 e!827204))

(declare-fun res!1001566 () Bool)

(assert (=> b!1474237 (=> (not res!1001566) (not e!827204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99148 (_ BitVec 32)) Bool)

(assert (=> b!1474237 (= res!1001566 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49520 0))(
  ( (Unit!49521) )
))
(declare-fun lt!644152 () Unit!49520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99148 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49520)

(assert (=> b!1474237 (= lt!644152 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474228 () Bool)

(declare-fun res!1001557 () Bool)

(assert (=> b!1474228 (=> (not res!1001557) (not e!827201))))

(assert (=> b!1474228 (= res!1001557 (and (= (size!48404 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48404 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48404 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1001561 () Bool)

(assert (=> start!125954 (=> (not res!1001561) (not e!827201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125954 (= res!1001561 (validMask!0 mask!2687))))

(assert (=> start!125954 e!827201))

(assert (=> start!125954 true))

(declare-fun array_inv!36798 (array!99148) Bool)

(assert (=> start!125954 (array_inv!36798 a!2862)))

(declare-fun b!1474238 () Bool)

(declare-fun lt!644154 () SeekEntryResult!12116)

(assert (=> b!1474238 (= e!827206 (= lt!644154 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644155 lt!644151 mask!2687)))))

(declare-fun b!1474239 () Bool)

(assert (=> b!1474239 (= e!827205 e!827203)))

(declare-fun res!1001565 () Bool)

(assert (=> b!1474239 (=> (not res!1001565) (not e!827203))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474239 (= res!1001565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47853 a!2862) j!93) mask!2687) (select (arr!47853 a!2862) j!93) a!2862 mask!2687) lt!644153))))

(assert (=> b!1474239 (= lt!644153 (Intermediate!12116 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474240 () Bool)

(declare-fun res!1001555 () Bool)

(assert (=> b!1474240 (=> (not res!1001555) (not e!827202))))

(assert (=> b!1474240 (= res!1001555 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474241 () Bool)

(assert (=> b!1474241 (= e!827204 (or (= (select (arr!47853 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47853 a!2862) intermediateBeforeIndex!19) (select (arr!47853 a!2862) j!93))))))

(declare-fun b!1474242 () Bool)

(declare-fun res!1001556 () Bool)

(assert (=> b!1474242 (=> (not res!1001556) (not e!827201))))

(assert (=> b!1474242 (= res!1001556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474243 () Bool)

(assert (=> b!1474243 (= e!827203 e!827202)))

(declare-fun res!1001564 () Bool)

(assert (=> b!1474243 (=> (not res!1001564) (not e!827202))))

(assert (=> b!1474243 (= res!1001564 (= lt!644154 (Intermediate!12116 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1474243 (= lt!644154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644155 mask!2687) lt!644155 lt!644151 mask!2687))))

(assert (=> b!1474243 (= lt!644155 (select (store (arr!47853 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125954 res!1001561) b!1474228))

(assert (= (and b!1474228 res!1001557) b!1474235))

(assert (= (and b!1474235 res!1001559) b!1474229))

(assert (= (and b!1474229 res!1001568) b!1474242))

(assert (= (and b!1474242 res!1001556) b!1474230))

(assert (= (and b!1474230 res!1001567) b!1474231))

(assert (= (and b!1474231 res!1001558) b!1474232))

(assert (= (and b!1474232 res!1001560) b!1474239))

(assert (= (and b!1474239 res!1001565) b!1474227))

(assert (= (and b!1474227 res!1001554) b!1474243))

(assert (= (and b!1474243 res!1001564) b!1474234))

(assert (= (and b!1474234 c!135854) b!1474238))

(assert (= (and b!1474234 (not c!135854)) b!1474236))

(assert (= (and b!1474234 res!1001563) b!1474240))

(assert (= (and b!1474240 res!1001555) b!1474237))

(assert (= (and b!1474237 res!1001566) b!1474233))

(assert (= (and b!1474233 res!1001562) b!1474241))

(declare-fun m!1360745 () Bool)

(assert (=> b!1474243 m!1360745))

(assert (=> b!1474243 m!1360745))

(declare-fun m!1360747 () Bool)

(assert (=> b!1474243 m!1360747))

(declare-fun m!1360749 () Bool)

(assert (=> b!1474243 m!1360749))

(declare-fun m!1360751 () Bool)

(assert (=> b!1474243 m!1360751))

(assert (=> b!1474232 m!1360749))

(declare-fun m!1360753 () Bool)

(assert (=> b!1474232 m!1360753))

(declare-fun m!1360755 () Bool)

(assert (=> b!1474242 m!1360755))

(declare-fun m!1360757 () Bool)

(assert (=> b!1474236 m!1360757))

(declare-fun m!1360759 () Bool)

(assert (=> b!1474236 m!1360759))

(declare-fun m!1360761 () Bool)

(assert (=> b!1474233 m!1360761))

(assert (=> b!1474233 m!1360761))

(declare-fun m!1360763 () Bool)

(assert (=> b!1474233 m!1360763))

(declare-fun m!1360765 () Bool)

(assert (=> b!1474235 m!1360765))

(assert (=> b!1474235 m!1360765))

(declare-fun m!1360767 () Bool)

(assert (=> b!1474235 m!1360767))

(assert (=> b!1474227 m!1360761))

(assert (=> b!1474227 m!1360761))

(declare-fun m!1360769 () Bool)

(assert (=> b!1474227 m!1360769))

(declare-fun m!1360771 () Bool)

(assert (=> b!1474241 m!1360771))

(assert (=> b!1474241 m!1360761))

(assert (=> b!1474229 m!1360761))

(assert (=> b!1474229 m!1360761))

(declare-fun m!1360773 () Bool)

(assert (=> b!1474229 m!1360773))

(declare-fun m!1360775 () Bool)

(assert (=> b!1474238 m!1360775))

(declare-fun m!1360777 () Bool)

(assert (=> b!1474237 m!1360777))

(declare-fun m!1360779 () Bool)

(assert (=> b!1474237 m!1360779))

(assert (=> b!1474239 m!1360761))

(assert (=> b!1474239 m!1360761))

(declare-fun m!1360781 () Bool)

(assert (=> b!1474239 m!1360781))

(assert (=> b!1474239 m!1360781))

(assert (=> b!1474239 m!1360761))

(declare-fun m!1360783 () Bool)

(assert (=> b!1474239 m!1360783))

(declare-fun m!1360785 () Bool)

(assert (=> start!125954 m!1360785))

(declare-fun m!1360787 () Bool)

(assert (=> start!125954 m!1360787))

(declare-fun m!1360789 () Bool)

(assert (=> b!1474230 m!1360789))

(push 1)

(assert (not b!1474230))

