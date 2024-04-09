; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122796 () Bool)

(assert start!122796)

(declare-fun b!1422697 () Bool)

(declare-fun res!958254 () Bool)

(declare-fun e!804272 () Bool)

(assert (=> b!1422697 (=> (not res!958254) (not e!804272))))

(declare-datatypes ((array!97079 0))(
  ( (array!97080 (arr!46853 (Array (_ BitVec 32) (_ BitVec 64))) (size!47404 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97079)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422697 (= res!958254 (validKeyInArray!0 (select (arr!46853 a!2831) j!81)))))

(declare-fun b!1422698 () Bool)

(declare-fun res!958240 () Bool)

(declare-fun e!804276 () Bool)

(assert (=> b!1422698 (=> (not res!958240) (not e!804276))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422698 (= res!958240 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422699 () Bool)

(declare-fun res!958248 () Bool)

(declare-fun e!804274 () Bool)

(assert (=> b!1422699 (=> res!958248 e!804274)))

(declare-datatypes ((SeekEntryResult!11160 0))(
  ( (MissingZero!11160 (index!47031 (_ BitVec 32))) (Found!11160 (index!47032 (_ BitVec 32))) (Intermediate!11160 (undefined!11972 Bool) (index!47033 (_ BitVec 32)) (x!128677 (_ BitVec 32))) (Undefined!11160) (MissingVacant!11160 (index!47034 (_ BitVec 32))) )
))
(declare-fun lt!626766 () SeekEntryResult!11160)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!626765 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97079 (_ BitVec 32)) SeekEntryResult!11160)

(assert (=> b!1422699 (= res!958248 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626765 (select (arr!46853 a!2831) j!81) a!2831 mask!2608) lt!626766)))))

(declare-fun res!958243 () Bool)

(assert (=> start!122796 (=> (not res!958243) (not e!804272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122796 (= res!958243 (validMask!0 mask!2608))))

(assert (=> start!122796 e!804272))

(assert (=> start!122796 true))

(declare-fun array_inv!35798 (array!97079) Bool)

(assert (=> start!122796 (array_inv!35798 a!2831)))

(declare-fun b!1422700 () Bool)

(declare-fun res!958247 () Bool)

(assert (=> b!1422700 (=> (not res!958247) (not e!804272))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422700 (= res!958247 (and (= (size!47404 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47404 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47404 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422701 () Bool)

(declare-fun e!804278 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97079 (_ BitVec 32)) SeekEntryResult!11160)

(assert (=> b!1422701 (= e!804278 (= (seekEntryOrOpen!0 (select (arr!46853 a!2831) j!81) a!2831 mask!2608) (Found!11160 j!81)))))

(declare-fun b!1422702 () Bool)

(declare-fun res!958241 () Bool)

(assert (=> b!1422702 (=> (not res!958241) (not e!804272))))

(assert (=> b!1422702 (= res!958241 (validKeyInArray!0 (select (arr!46853 a!2831) i!982)))))

(declare-fun b!1422703 () Bool)

(declare-fun res!958244 () Bool)

(assert (=> b!1422703 (=> (not res!958244) (not e!804272))))

(declare-datatypes ((List!33543 0))(
  ( (Nil!33540) (Cons!33539 (h!34841 (_ BitVec 64)) (t!48244 List!33543)) )
))
(declare-fun arrayNoDuplicates!0 (array!97079 (_ BitVec 32) List!33543) Bool)

(assert (=> b!1422703 (= res!958244 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33540))))

(declare-fun b!1422704 () Bool)

(declare-fun e!804275 () Bool)

(assert (=> b!1422704 (= e!804275 e!804274)))

(declare-fun res!958246 () Bool)

(assert (=> b!1422704 (=> res!958246 e!804274)))

(assert (=> b!1422704 (= res!958246 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626765 #b00000000000000000000000000000000) (bvsge lt!626765 (size!47404 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422704 (= lt!626765 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422705 () Bool)

(declare-fun res!958242 () Bool)

(assert (=> b!1422705 (=> (not res!958242) (not e!804272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97079 (_ BitVec 32)) Bool)

(assert (=> b!1422705 (= res!958242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422706 () Bool)

(assert (=> b!1422706 (= e!804274 true)))

(declare-fun lt!626767 () array!97079)

(declare-fun lt!626769 () SeekEntryResult!11160)

(declare-fun lt!626764 () (_ BitVec 64))

(assert (=> b!1422706 (= lt!626769 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626765 lt!626764 lt!626767 mask!2608))))

(declare-fun b!1422707 () Bool)

(declare-fun e!804273 () Bool)

(assert (=> b!1422707 (= e!804273 e!804276)))

(declare-fun res!958253 () Bool)

(assert (=> b!1422707 (=> (not res!958253) (not e!804276))))

(declare-fun lt!626770 () SeekEntryResult!11160)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422707 (= res!958253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626764 mask!2608) lt!626764 lt!626767 mask!2608) lt!626770))))

(assert (=> b!1422707 (= lt!626770 (Intermediate!11160 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422707 (= lt!626764 (select (store (arr!46853 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422707 (= lt!626767 (array!97080 (store (arr!46853 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47404 a!2831)))))

(declare-fun b!1422708 () Bool)

(assert (=> b!1422708 (= e!804276 (not e!804275))))

(declare-fun res!958252 () Bool)

(assert (=> b!1422708 (=> res!958252 e!804275)))

(assert (=> b!1422708 (= res!958252 (or (= (select (arr!46853 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46853 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46853 a!2831) index!585) (select (arr!46853 a!2831) j!81)) (= (select (store (arr!46853 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422708 e!804278))

(declare-fun res!958249 () Bool)

(assert (=> b!1422708 (=> (not res!958249) (not e!804278))))

(assert (=> b!1422708 (= res!958249 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48104 0))(
  ( (Unit!48105) )
))
(declare-fun lt!626768 () Unit!48104)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97079 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48104)

(assert (=> b!1422708 (= lt!626768 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422709 () Bool)

(declare-fun res!958250 () Bool)

(assert (=> b!1422709 (=> (not res!958250) (not e!804276))))

(assert (=> b!1422709 (= res!958250 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46853 a!2831) j!81) a!2831 mask!2608) lt!626766))))

(declare-fun b!1422710 () Bool)

(assert (=> b!1422710 (= e!804272 e!804273)))

(declare-fun res!958251 () Bool)

(assert (=> b!1422710 (=> (not res!958251) (not e!804273))))

(assert (=> b!1422710 (= res!958251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46853 a!2831) j!81) mask!2608) (select (arr!46853 a!2831) j!81) a!2831 mask!2608) lt!626766))))

(assert (=> b!1422710 (= lt!626766 (Intermediate!11160 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422711 () Bool)

(declare-fun res!958239 () Bool)

(assert (=> b!1422711 (=> (not res!958239) (not e!804276))))

(assert (=> b!1422711 (= res!958239 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626764 lt!626767 mask!2608) lt!626770))))

(declare-fun b!1422712 () Bool)

(declare-fun res!958245 () Bool)

(assert (=> b!1422712 (=> (not res!958245) (not e!804272))))

(assert (=> b!1422712 (= res!958245 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47404 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47404 a!2831))))))

(assert (= (and start!122796 res!958243) b!1422700))

(assert (= (and b!1422700 res!958247) b!1422702))

(assert (= (and b!1422702 res!958241) b!1422697))

(assert (= (and b!1422697 res!958254) b!1422705))

(assert (= (and b!1422705 res!958242) b!1422703))

(assert (= (and b!1422703 res!958244) b!1422712))

(assert (= (and b!1422712 res!958245) b!1422710))

(assert (= (and b!1422710 res!958251) b!1422707))

(assert (= (and b!1422707 res!958253) b!1422709))

(assert (= (and b!1422709 res!958250) b!1422711))

(assert (= (and b!1422711 res!958239) b!1422698))

(assert (= (and b!1422698 res!958240) b!1422708))

(assert (= (and b!1422708 res!958249) b!1422701))

(assert (= (and b!1422708 (not res!958252)) b!1422704))

(assert (= (and b!1422704 (not res!958246)) b!1422699))

(assert (= (and b!1422699 (not res!958248)) b!1422706))

(declare-fun m!1313303 () Bool)

(assert (=> b!1422706 m!1313303))

(declare-fun m!1313305 () Bool)

(assert (=> b!1422709 m!1313305))

(assert (=> b!1422709 m!1313305))

(declare-fun m!1313307 () Bool)

(assert (=> b!1422709 m!1313307))

(declare-fun m!1313309 () Bool)

(assert (=> b!1422705 m!1313309))

(declare-fun m!1313311 () Bool)

(assert (=> start!122796 m!1313311))

(declare-fun m!1313313 () Bool)

(assert (=> start!122796 m!1313313))

(declare-fun m!1313315 () Bool)

(assert (=> b!1422702 m!1313315))

(assert (=> b!1422702 m!1313315))

(declare-fun m!1313317 () Bool)

(assert (=> b!1422702 m!1313317))

(declare-fun m!1313319 () Bool)

(assert (=> b!1422703 m!1313319))

(declare-fun m!1313321 () Bool)

(assert (=> b!1422708 m!1313321))

(declare-fun m!1313323 () Bool)

(assert (=> b!1422708 m!1313323))

(declare-fun m!1313325 () Bool)

(assert (=> b!1422708 m!1313325))

(declare-fun m!1313327 () Bool)

(assert (=> b!1422708 m!1313327))

(assert (=> b!1422708 m!1313305))

(declare-fun m!1313329 () Bool)

(assert (=> b!1422708 m!1313329))

(assert (=> b!1422699 m!1313305))

(assert (=> b!1422699 m!1313305))

(declare-fun m!1313331 () Bool)

(assert (=> b!1422699 m!1313331))

(assert (=> b!1422710 m!1313305))

(assert (=> b!1422710 m!1313305))

(declare-fun m!1313333 () Bool)

(assert (=> b!1422710 m!1313333))

(assert (=> b!1422710 m!1313333))

(assert (=> b!1422710 m!1313305))

(declare-fun m!1313335 () Bool)

(assert (=> b!1422710 m!1313335))

(assert (=> b!1422701 m!1313305))

(assert (=> b!1422701 m!1313305))

(declare-fun m!1313337 () Bool)

(assert (=> b!1422701 m!1313337))

(declare-fun m!1313339 () Bool)

(assert (=> b!1422707 m!1313339))

(assert (=> b!1422707 m!1313339))

(declare-fun m!1313341 () Bool)

(assert (=> b!1422707 m!1313341))

(assert (=> b!1422707 m!1313321))

(declare-fun m!1313343 () Bool)

(assert (=> b!1422707 m!1313343))

(declare-fun m!1313345 () Bool)

(assert (=> b!1422711 m!1313345))

(declare-fun m!1313347 () Bool)

(assert (=> b!1422704 m!1313347))

(assert (=> b!1422697 m!1313305))

(assert (=> b!1422697 m!1313305))

(declare-fun m!1313349 () Bool)

(assert (=> b!1422697 m!1313349))

(check-sat (not start!122796) (not b!1422703) (not b!1422704) (not b!1422709) (not b!1422702) (not b!1422706) (not b!1422701) (not b!1422705) (not b!1422708) (not b!1422710) (not b!1422711) (not b!1422699) (not b!1422707) (not b!1422697))
(check-sat)
