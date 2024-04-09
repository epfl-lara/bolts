; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122730 () Bool)

(assert start!122730)

(declare-fun b!1421273 () Bool)

(declare-fun e!803690 () Bool)

(declare-fun e!803693 () Bool)

(assert (=> b!1421273 (= e!803690 e!803693)))

(declare-fun res!956818 () Bool)

(assert (=> b!1421273 (=> (not res!956818) (not e!803693))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97013 0))(
  ( (array!97014 (arr!46820 (Array (_ BitVec 32) (_ BitVec 64))) (size!47371 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97013)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11127 0))(
  ( (MissingZero!11127 (index!46899 (_ BitVec 32))) (Found!11127 (index!46900 (_ BitVec 32))) (Intermediate!11127 (undefined!11939 Bool) (index!46901 (_ BitVec 32)) (x!128556 (_ BitVec 32))) (Undefined!11127) (MissingVacant!11127 (index!46902 (_ BitVec 32))) )
))
(declare-fun lt!626173 () SeekEntryResult!11127)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97013 (_ BitVec 32)) SeekEntryResult!11127)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421273 (= res!956818 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46820 a!2831) j!81) mask!2608) (select (arr!46820 a!2831) j!81) a!2831 mask!2608) lt!626173))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421273 (= lt!626173 (Intermediate!11127 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421274 () Bool)

(declare-fun res!956825 () Bool)

(assert (=> b!1421274 (=> (not res!956825) (not e!803690))))

(declare-datatypes ((List!33510 0))(
  ( (Nil!33507) (Cons!33506 (h!34808 (_ BitVec 64)) (t!48211 List!33510)) )
))
(declare-fun arrayNoDuplicates!0 (array!97013 (_ BitVec 32) List!33510) Bool)

(assert (=> b!1421274 (= res!956825 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33507))))

(declare-fun b!1421275 () Bool)

(declare-fun res!956823 () Bool)

(assert (=> b!1421275 (=> (not res!956823) (not e!803690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421275 (= res!956823 (validKeyInArray!0 (select (arr!46820 a!2831) j!81)))))

(declare-fun b!1421276 () Bool)

(declare-fun res!956820 () Bool)

(assert (=> b!1421276 (=> (not res!956820) (not e!803690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97013 (_ BitVec 32)) Bool)

(assert (=> b!1421276 (= res!956820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421277 () Bool)

(declare-fun res!956824 () Bool)

(declare-fun e!803692 () Bool)

(assert (=> b!1421277 (=> (not res!956824) (not e!803692))))

(declare-fun lt!626172 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!626171 () SeekEntryResult!11127)

(declare-fun lt!626170 () array!97013)

(assert (=> b!1421277 (= res!956824 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626172 lt!626170 mask!2608) lt!626171))))

(declare-fun b!1421278 () Bool)

(declare-fun res!956822 () Bool)

(assert (=> b!1421278 (=> (not res!956822) (not e!803692))))

(assert (=> b!1421278 (= res!956822 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46820 a!2831) j!81) a!2831 mask!2608) lt!626173))))

(declare-fun res!956821 () Bool)

(assert (=> start!122730 (=> (not res!956821) (not e!803690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122730 (= res!956821 (validMask!0 mask!2608))))

(assert (=> start!122730 e!803690))

(assert (=> start!122730 true))

(declare-fun array_inv!35765 (array!97013) Bool)

(assert (=> start!122730 (array_inv!35765 a!2831)))

(declare-fun b!1421279 () Bool)

(assert (=> b!1421279 (= e!803692 (not true))))

(assert (=> b!1421279 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48038 0))(
  ( (Unit!48039) )
))
(declare-fun lt!626169 () Unit!48038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48038)

(assert (=> b!1421279 (= lt!626169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421280 () Bool)

(declare-fun res!956815 () Bool)

(assert (=> b!1421280 (=> (not res!956815) (not e!803690))))

(assert (=> b!1421280 (= res!956815 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47371 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47371 a!2831))))))

(declare-fun b!1421281 () Bool)

(declare-fun res!956816 () Bool)

(assert (=> b!1421281 (=> (not res!956816) (not e!803692))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421281 (= res!956816 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421282 () Bool)

(declare-fun res!956826 () Bool)

(assert (=> b!1421282 (=> (not res!956826) (not e!803690))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421282 (= res!956826 (validKeyInArray!0 (select (arr!46820 a!2831) i!982)))))

(declare-fun b!1421283 () Bool)

(declare-fun res!956817 () Bool)

(assert (=> b!1421283 (=> (not res!956817) (not e!803690))))

(assert (=> b!1421283 (= res!956817 (and (= (size!47371 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47371 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47371 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421284 () Bool)

(assert (=> b!1421284 (= e!803693 e!803692)))

(declare-fun res!956819 () Bool)

(assert (=> b!1421284 (=> (not res!956819) (not e!803692))))

(assert (=> b!1421284 (= res!956819 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626172 mask!2608) lt!626172 lt!626170 mask!2608) lt!626171))))

(assert (=> b!1421284 (= lt!626171 (Intermediate!11127 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421284 (= lt!626172 (select (store (arr!46820 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421284 (= lt!626170 (array!97014 (store (arr!46820 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47371 a!2831)))))

(assert (= (and start!122730 res!956821) b!1421283))

(assert (= (and b!1421283 res!956817) b!1421282))

(assert (= (and b!1421282 res!956826) b!1421275))

(assert (= (and b!1421275 res!956823) b!1421276))

(assert (= (and b!1421276 res!956820) b!1421274))

(assert (= (and b!1421274 res!956825) b!1421280))

(assert (= (and b!1421280 res!956815) b!1421273))

(assert (= (and b!1421273 res!956818) b!1421284))

(assert (= (and b!1421284 res!956819) b!1421278))

(assert (= (and b!1421278 res!956822) b!1421277))

(assert (= (and b!1421277 res!956824) b!1421281))

(assert (= (and b!1421281 res!956816) b!1421279))

(declare-fun m!1311875 () Bool)

(assert (=> b!1421277 m!1311875))

(declare-fun m!1311877 () Bool)

(assert (=> b!1421275 m!1311877))

(assert (=> b!1421275 m!1311877))

(declare-fun m!1311879 () Bool)

(assert (=> b!1421275 m!1311879))

(declare-fun m!1311881 () Bool)

(assert (=> b!1421282 m!1311881))

(assert (=> b!1421282 m!1311881))

(declare-fun m!1311883 () Bool)

(assert (=> b!1421282 m!1311883))

(declare-fun m!1311885 () Bool)

(assert (=> b!1421276 m!1311885))

(declare-fun m!1311887 () Bool)

(assert (=> b!1421274 m!1311887))

(declare-fun m!1311889 () Bool)

(assert (=> b!1421279 m!1311889))

(declare-fun m!1311891 () Bool)

(assert (=> b!1421279 m!1311891))

(assert (=> b!1421273 m!1311877))

(assert (=> b!1421273 m!1311877))

(declare-fun m!1311893 () Bool)

(assert (=> b!1421273 m!1311893))

(assert (=> b!1421273 m!1311893))

(assert (=> b!1421273 m!1311877))

(declare-fun m!1311895 () Bool)

(assert (=> b!1421273 m!1311895))

(declare-fun m!1311897 () Bool)

(assert (=> b!1421284 m!1311897))

(assert (=> b!1421284 m!1311897))

(declare-fun m!1311899 () Bool)

(assert (=> b!1421284 m!1311899))

(declare-fun m!1311901 () Bool)

(assert (=> b!1421284 m!1311901))

(declare-fun m!1311903 () Bool)

(assert (=> b!1421284 m!1311903))

(assert (=> b!1421278 m!1311877))

(assert (=> b!1421278 m!1311877))

(declare-fun m!1311905 () Bool)

(assert (=> b!1421278 m!1311905))

(declare-fun m!1311907 () Bool)

(assert (=> start!122730 m!1311907))

(declare-fun m!1311909 () Bool)

(assert (=> start!122730 m!1311909))

(check-sat (not b!1421278) (not b!1421274) (not b!1421276) (not b!1421284) (not b!1421279) (not b!1421273) (not start!122730) (not b!1421282) (not b!1421277) (not b!1421275))
(check-sat)
