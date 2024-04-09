; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123198 () Bool)

(assert start!123198)

(declare-fun b!1428001 () Bool)

(declare-fun e!806533 () Bool)

(declare-fun e!806531 () Bool)

(assert (=> b!1428001 (= e!806533 e!806531)))

(declare-fun res!962951 () Bool)

(assert (=> b!1428001 (=> (not res!962951) (not e!806531))))

(declare-fun lt!628773 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11274 0))(
  ( (MissingZero!11274 (index!47487 (_ BitVec 32))) (Found!11274 (index!47488 (_ BitVec 32))) (Intermediate!11274 (undefined!12086 Bool) (index!47489 (_ BitVec 32)) (x!129129 (_ BitVec 32))) (Undefined!11274) (MissingVacant!11274 (index!47490 (_ BitVec 32))) )
))
(declare-fun lt!628771 () SeekEntryResult!11274)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97328 0))(
  ( (array!97329 (arr!46973 (Array (_ BitVec 32) (_ BitVec 64))) (size!47524 (_ BitVec 32))) )
))
(declare-fun lt!628770 () array!97328)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97328 (_ BitVec 32)) SeekEntryResult!11274)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428001 (= res!962951 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628773 mask!2608) lt!628773 lt!628770 mask!2608) lt!628771))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428001 (= lt!628771 (Intermediate!11274 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97328)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428001 (= lt!628773 (select (store (arr!46973 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428001 (= lt!628770 (array!97329 (store (arr!46973 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47524 a!2831)))))

(declare-fun b!1428002 () Bool)

(declare-fun res!962943 () Bool)

(declare-fun e!806534 () Bool)

(assert (=> b!1428002 (=> (not res!962943) (not e!806534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97328 (_ BitVec 32)) Bool)

(assert (=> b!1428002 (= res!962943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428003 () Bool)

(declare-fun res!962944 () Bool)

(assert (=> b!1428003 (=> (not res!962944) (not e!806531))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628772 () SeekEntryResult!11274)

(assert (=> b!1428003 (= res!962944 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46973 a!2831) j!81) a!2831 mask!2608) lt!628772))))

(declare-fun b!1428004 () Bool)

(declare-fun res!962949 () Bool)

(assert (=> b!1428004 (=> (not res!962949) (not e!806534))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428004 (= res!962949 (validKeyInArray!0 (select (arr!46973 a!2831) j!81)))))

(declare-fun b!1428005 () Bool)

(declare-fun res!962945 () Bool)

(assert (=> b!1428005 (=> (not res!962945) (not e!806534))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1428005 (= res!962945 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47524 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47524 a!2831))))))

(declare-fun b!1428006 () Bool)

(declare-fun res!962940 () Bool)

(assert (=> b!1428006 (=> (not res!962940) (not e!806534))))

(assert (=> b!1428006 (= res!962940 (validKeyInArray!0 (select (arr!46973 a!2831) i!982)))))

(declare-fun res!962952 () Bool)

(assert (=> start!123198 (=> (not res!962952) (not e!806534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123198 (= res!962952 (validMask!0 mask!2608))))

(assert (=> start!123198 e!806534))

(assert (=> start!123198 true))

(declare-fun array_inv!35918 (array!97328) Bool)

(assert (=> start!123198 (array_inv!35918 a!2831)))

(declare-fun b!1428007 () Bool)

(assert (=> b!1428007 (= e!806534 e!806533)))

(declare-fun res!962941 () Bool)

(assert (=> b!1428007 (=> (not res!962941) (not e!806533))))

(assert (=> b!1428007 (= res!962941 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46973 a!2831) j!81) mask!2608) (select (arr!46973 a!2831) j!81) a!2831 mask!2608) lt!628772))))

(assert (=> b!1428007 (= lt!628772 (Intermediate!11274 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428008 () Bool)

(assert (=> b!1428008 (= e!806531 (not true))))

(declare-fun e!806530 () Bool)

(assert (=> b!1428008 e!806530))

(declare-fun res!962942 () Bool)

(assert (=> b!1428008 (=> (not res!962942) (not e!806530))))

(assert (=> b!1428008 (= res!962942 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48242 0))(
  ( (Unit!48243) )
))
(declare-fun lt!628774 () Unit!48242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48242)

(assert (=> b!1428008 (= lt!628774 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428009 () Bool)

(declare-fun res!962948 () Bool)

(assert (=> b!1428009 (=> (not res!962948) (not e!806534))))

(assert (=> b!1428009 (= res!962948 (and (= (size!47524 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47524 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47524 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428010 () Bool)

(declare-fun res!962946 () Bool)

(assert (=> b!1428010 (=> (not res!962946) (not e!806531))))

(assert (=> b!1428010 (= res!962946 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428011 () Bool)

(declare-fun res!962950 () Bool)

(assert (=> b!1428011 (=> (not res!962950) (not e!806534))))

(declare-datatypes ((List!33663 0))(
  ( (Nil!33660) (Cons!33659 (h!34970 (_ BitVec 64)) (t!48364 List!33663)) )
))
(declare-fun arrayNoDuplicates!0 (array!97328 (_ BitVec 32) List!33663) Bool)

(assert (=> b!1428011 (= res!962950 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33660))))

(declare-fun b!1428012 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97328 (_ BitVec 32)) SeekEntryResult!11274)

(assert (=> b!1428012 (= e!806530 (= (seekEntryOrOpen!0 (select (arr!46973 a!2831) j!81) a!2831 mask!2608) (Found!11274 j!81)))))

(declare-fun b!1428013 () Bool)

(declare-fun res!962947 () Bool)

(assert (=> b!1428013 (=> (not res!962947) (not e!806531))))

(assert (=> b!1428013 (= res!962947 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628773 lt!628770 mask!2608) lt!628771))))

(assert (= (and start!123198 res!962952) b!1428009))

(assert (= (and b!1428009 res!962948) b!1428006))

(assert (= (and b!1428006 res!962940) b!1428004))

(assert (= (and b!1428004 res!962949) b!1428002))

(assert (= (and b!1428002 res!962943) b!1428011))

(assert (= (and b!1428011 res!962950) b!1428005))

(assert (= (and b!1428005 res!962945) b!1428007))

(assert (= (and b!1428007 res!962941) b!1428001))

(assert (= (and b!1428001 res!962951) b!1428003))

(assert (= (and b!1428003 res!962944) b!1428013))

(assert (= (and b!1428013 res!962947) b!1428010))

(assert (= (and b!1428010 res!962946) b!1428008))

(assert (= (and b!1428008 res!962942) b!1428012))

(declare-fun m!1318303 () Bool)

(assert (=> b!1428001 m!1318303))

(assert (=> b!1428001 m!1318303))

(declare-fun m!1318305 () Bool)

(assert (=> b!1428001 m!1318305))

(declare-fun m!1318307 () Bool)

(assert (=> b!1428001 m!1318307))

(declare-fun m!1318309 () Bool)

(assert (=> b!1428001 m!1318309))

(declare-fun m!1318311 () Bool)

(assert (=> b!1428011 m!1318311))

(declare-fun m!1318313 () Bool)

(assert (=> b!1428004 m!1318313))

(assert (=> b!1428004 m!1318313))

(declare-fun m!1318315 () Bool)

(assert (=> b!1428004 m!1318315))

(declare-fun m!1318317 () Bool)

(assert (=> start!123198 m!1318317))

(declare-fun m!1318319 () Bool)

(assert (=> start!123198 m!1318319))

(declare-fun m!1318321 () Bool)

(assert (=> b!1428006 m!1318321))

(assert (=> b!1428006 m!1318321))

(declare-fun m!1318323 () Bool)

(assert (=> b!1428006 m!1318323))

(assert (=> b!1428012 m!1318313))

(assert (=> b!1428012 m!1318313))

(declare-fun m!1318325 () Bool)

(assert (=> b!1428012 m!1318325))

(assert (=> b!1428007 m!1318313))

(assert (=> b!1428007 m!1318313))

(declare-fun m!1318327 () Bool)

(assert (=> b!1428007 m!1318327))

(assert (=> b!1428007 m!1318327))

(assert (=> b!1428007 m!1318313))

(declare-fun m!1318329 () Bool)

(assert (=> b!1428007 m!1318329))

(assert (=> b!1428003 m!1318313))

(assert (=> b!1428003 m!1318313))

(declare-fun m!1318331 () Bool)

(assert (=> b!1428003 m!1318331))

(declare-fun m!1318333 () Bool)

(assert (=> b!1428013 m!1318333))

(declare-fun m!1318335 () Bool)

(assert (=> b!1428008 m!1318335))

(declare-fun m!1318337 () Bool)

(assert (=> b!1428008 m!1318337))

(declare-fun m!1318339 () Bool)

(assert (=> b!1428002 m!1318339))

(check-sat (not b!1428001) (not b!1428004) (not b!1428002) (not b!1428011) (not b!1428007) (not start!123198) (not b!1428013) (not b!1428008) (not b!1428003) (not b!1428006) (not b!1428012))
(check-sat)
