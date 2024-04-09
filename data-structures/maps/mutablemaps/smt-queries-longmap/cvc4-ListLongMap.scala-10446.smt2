; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122882 () Bool)

(assert start!122882)

(declare-fun b!1424761 () Bool)

(declare-fun res!960312 () Bool)

(declare-fun e!805176 () Bool)

(assert (=> b!1424761 (=> (not res!960312) (not e!805176))))

(declare-datatypes ((array!97165 0))(
  ( (array!97166 (arr!46896 (Array (_ BitVec 32) (_ BitVec 64))) (size!47447 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97165)

(declare-datatypes ((List!33586 0))(
  ( (Nil!33583) (Cons!33582 (h!34884 (_ BitVec 64)) (t!48287 List!33586)) )
))
(declare-fun arrayNoDuplicates!0 (array!97165 (_ BitVec 32) List!33586) Bool)

(assert (=> b!1424761 (= res!960312 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33583))))

(declare-fun b!1424762 () Bool)

(declare-fun e!805175 () Bool)

(assert (=> b!1424762 (= e!805175 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11203 0))(
  ( (MissingZero!11203 (index!47203 (_ BitVec 32))) (Found!11203 (index!47204 (_ BitVec 32))) (Intermediate!11203 (undefined!12015 Bool) (index!47205 (_ BitVec 32)) (x!128832 (_ BitVec 32))) (Undefined!11203) (MissingVacant!11203 (index!47206 (_ BitVec 32))) )
))
(declare-fun lt!627673 () SeekEntryResult!11203)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627671 () array!97165)

(declare-fun lt!627670 () (_ BitVec 64))

(declare-fun lt!627667 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97165 (_ BitVec 32)) SeekEntryResult!11203)

(assert (=> b!1424762 (= lt!627673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627667 lt!627670 lt!627671 mask!2608))))

(declare-fun b!1424763 () Bool)

(declare-fun res!960314 () Bool)

(assert (=> b!1424763 (=> (not res!960314) (not e!805176))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424763 (= res!960314 (validKeyInArray!0 (select (arr!46896 a!2831) j!81)))))

(declare-fun b!1424764 () Bool)

(declare-fun e!805180 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97165 (_ BitVec 32)) SeekEntryResult!11203)

(assert (=> b!1424764 (= e!805180 (= (seekEntryOrOpen!0 (select (arr!46896 a!2831) j!81) a!2831 mask!2608) (Found!11203 j!81)))))

(declare-fun res!960318 () Bool)

(assert (=> start!122882 (=> (not res!960318) (not e!805176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122882 (= res!960318 (validMask!0 mask!2608))))

(assert (=> start!122882 e!805176))

(assert (=> start!122882 true))

(declare-fun array_inv!35841 (array!97165) Bool)

(assert (=> start!122882 (array_inv!35841 a!2831)))

(declare-fun b!1424765 () Bool)

(declare-fun res!960308 () Bool)

(declare-fun e!805179 () Bool)

(assert (=> b!1424765 (=> (not res!960308) (not e!805179))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424765 (= res!960308 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424766 () Bool)

(declare-fun res!960315 () Bool)

(assert (=> b!1424766 (=> res!960315 e!805175)))

(declare-fun lt!627669 () SeekEntryResult!11203)

(assert (=> b!1424766 (= res!960315 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627667 (select (arr!46896 a!2831) j!81) a!2831 mask!2608) lt!627669)))))

(declare-fun b!1424767 () Bool)

(declare-fun res!960311 () Bool)

(assert (=> b!1424767 (=> (not res!960311) (not e!805179))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!627672 () SeekEntryResult!11203)

(assert (=> b!1424767 (= res!960311 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627670 lt!627671 mask!2608) lt!627672))))

(declare-fun b!1424768 () Bool)

(declare-fun res!960316 () Bool)

(assert (=> b!1424768 (=> (not res!960316) (not e!805176))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424768 (= res!960316 (validKeyInArray!0 (select (arr!46896 a!2831) i!982)))))

(declare-fun b!1424769 () Bool)

(declare-fun res!960309 () Bool)

(assert (=> b!1424769 (=> (not res!960309) (not e!805176))))

(assert (=> b!1424769 (= res!960309 (and (= (size!47447 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47447 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47447 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424770 () Bool)

(declare-fun e!805178 () Bool)

(assert (=> b!1424770 (= e!805176 e!805178)))

(declare-fun res!960307 () Bool)

(assert (=> b!1424770 (=> (not res!960307) (not e!805178))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424770 (= res!960307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46896 a!2831) j!81) mask!2608) (select (arr!46896 a!2831) j!81) a!2831 mask!2608) lt!627669))))

(assert (=> b!1424770 (= lt!627669 (Intermediate!11203 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424771 () Bool)

(declare-fun res!960310 () Bool)

(assert (=> b!1424771 (=> (not res!960310) (not e!805176))))

(assert (=> b!1424771 (= res!960310 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47447 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47447 a!2831))))))

(declare-fun b!1424772 () Bool)

(declare-fun e!805177 () Bool)

(assert (=> b!1424772 (= e!805179 (not e!805177))))

(declare-fun res!960305 () Bool)

(assert (=> b!1424772 (=> res!960305 e!805177)))

(assert (=> b!1424772 (= res!960305 (or (= (select (arr!46896 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46896 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46896 a!2831) index!585) (select (arr!46896 a!2831) j!81)) (= (select (store (arr!46896 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424772 e!805180))

(declare-fun res!960304 () Bool)

(assert (=> b!1424772 (=> (not res!960304) (not e!805180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97165 (_ BitVec 32)) Bool)

(assert (=> b!1424772 (= res!960304 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48190 0))(
  ( (Unit!48191) )
))
(declare-fun lt!627668 () Unit!48190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48190)

(assert (=> b!1424772 (= lt!627668 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424773 () Bool)

(assert (=> b!1424773 (= e!805177 e!805175)))

(declare-fun res!960317 () Bool)

(assert (=> b!1424773 (=> res!960317 e!805175)))

(assert (=> b!1424773 (= res!960317 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627667 #b00000000000000000000000000000000) (bvsge lt!627667 (size!47447 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424773 (= lt!627667 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424774 () Bool)

(assert (=> b!1424774 (= e!805178 e!805179)))

(declare-fun res!960306 () Bool)

(assert (=> b!1424774 (=> (not res!960306) (not e!805179))))

(assert (=> b!1424774 (= res!960306 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627670 mask!2608) lt!627670 lt!627671 mask!2608) lt!627672))))

(assert (=> b!1424774 (= lt!627672 (Intermediate!11203 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424774 (= lt!627670 (select (store (arr!46896 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424774 (= lt!627671 (array!97166 (store (arr!46896 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47447 a!2831)))))

(declare-fun b!1424775 () Bool)

(declare-fun res!960303 () Bool)

(assert (=> b!1424775 (=> (not res!960303) (not e!805179))))

(assert (=> b!1424775 (= res!960303 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46896 a!2831) j!81) a!2831 mask!2608) lt!627669))))

(declare-fun b!1424776 () Bool)

(declare-fun res!960313 () Bool)

(assert (=> b!1424776 (=> (not res!960313) (not e!805176))))

(assert (=> b!1424776 (= res!960313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122882 res!960318) b!1424769))

(assert (= (and b!1424769 res!960309) b!1424768))

(assert (= (and b!1424768 res!960316) b!1424763))

(assert (= (and b!1424763 res!960314) b!1424776))

(assert (= (and b!1424776 res!960313) b!1424761))

(assert (= (and b!1424761 res!960312) b!1424771))

(assert (= (and b!1424771 res!960310) b!1424770))

(assert (= (and b!1424770 res!960307) b!1424774))

(assert (= (and b!1424774 res!960306) b!1424775))

(assert (= (and b!1424775 res!960303) b!1424767))

(assert (= (and b!1424767 res!960311) b!1424765))

(assert (= (and b!1424765 res!960308) b!1424772))

(assert (= (and b!1424772 res!960304) b!1424764))

(assert (= (and b!1424772 (not res!960305)) b!1424773))

(assert (= (and b!1424773 (not res!960317)) b!1424766))

(assert (= (and b!1424766 (not res!960315)) b!1424762))

(declare-fun m!1315367 () Bool)

(assert (=> b!1424764 m!1315367))

(assert (=> b!1424764 m!1315367))

(declare-fun m!1315369 () Bool)

(assert (=> b!1424764 m!1315369))

(declare-fun m!1315371 () Bool)

(assert (=> b!1424761 m!1315371))

(assert (=> b!1424766 m!1315367))

(assert (=> b!1424766 m!1315367))

(declare-fun m!1315373 () Bool)

(assert (=> b!1424766 m!1315373))

(assert (=> b!1424775 m!1315367))

(assert (=> b!1424775 m!1315367))

(declare-fun m!1315375 () Bool)

(assert (=> b!1424775 m!1315375))

(declare-fun m!1315377 () Bool)

(assert (=> b!1424772 m!1315377))

(declare-fun m!1315379 () Bool)

(assert (=> b!1424772 m!1315379))

(declare-fun m!1315381 () Bool)

(assert (=> b!1424772 m!1315381))

(declare-fun m!1315383 () Bool)

(assert (=> b!1424772 m!1315383))

(assert (=> b!1424772 m!1315367))

(declare-fun m!1315385 () Bool)

(assert (=> b!1424772 m!1315385))

(assert (=> b!1424770 m!1315367))

(assert (=> b!1424770 m!1315367))

(declare-fun m!1315387 () Bool)

(assert (=> b!1424770 m!1315387))

(assert (=> b!1424770 m!1315387))

(assert (=> b!1424770 m!1315367))

(declare-fun m!1315389 () Bool)

(assert (=> b!1424770 m!1315389))

(declare-fun m!1315391 () Bool)

(assert (=> b!1424776 m!1315391))

(declare-fun m!1315393 () Bool)

(assert (=> b!1424762 m!1315393))

(declare-fun m!1315395 () Bool)

(assert (=> b!1424767 m!1315395))

(declare-fun m!1315397 () Bool)

(assert (=> b!1424768 m!1315397))

(assert (=> b!1424768 m!1315397))

(declare-fun m!1315399 () Bool)

(assert (=> b!1424768 m!1315399))

(declare-fun m!1315401 () Bool)

(assert (=> start!122882 m!1315401))

(declare-fun m!1315403 () Bool)

(assert (=> start!122882 m!1315403))

(declare-fun m!1315405 () Bool)

(assert (=> b!1424774 m!1315405))

(assert (=> b!1424774 m!1315405))

(declare-fun m!1315407 () Bool)

(assert (=> b!1424774 m!1315407))

(assert (=> b!1424774 m!1315377))

(declare-fun m!1315409 () Bool)

(assert (=> b!1424774 m!1315409))

(declare-fun m!1315411 () Bool)

(assert (=> b!1424773 m!1315411))

(assert (=> b!1424763 m!1315367))

(assert (=> b!1424763 m!1315367))

(declare-fun m!1315413 () Bool)

(assert (=> b!1424763 m!1315413))

(push 1)

