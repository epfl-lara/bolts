; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123330 () Bool)

(assert start!123330)

(declare-fun b!1429831 () Bool)

(declare-fun res!964581 () Bool)

(declare-fun e!807304 () Bool)

(assert (=> b!1429831 (=> (not res!964581) (not e!807304))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!97409 0))(
  ( (array!97410 (arr!47012 (Array (_ BitVec 32) (_ BitVec 64))) (size!47563 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97409)

(assert (=> b!1429831 (= res!964581 (and (= (size!47563 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47563 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47563 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429832 () Bool)

(declare-fun res!964570 () Bool)

(assert (=> b!1429832 (=> (not res!964570) (not e!807304))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97409 (_ BitVec 32)) Bool)

(assert (=> b!1429832 (= res!964570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429833 () Bool)

(declare-fun res!964569 () Bool)

(assert (=> b!1429833 (=> (not res!964569) (not e!807304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429833 (= res!964569 (validKeyInArray!0 (select (arr!47012 a!2831) j!81)))))

(declare-fun b!1429834 () Bool)

(declare-fun res!964578 () Bool)

(declare-fun e!807306 () Bool)

(assert (=> b!1429834 (=> (not res!964578) (not e!807306))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429834 (= res!964578 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!964573 () Bool)

(assert (=> start!123330 (=> (not res!964573) (not e!807304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123330 (= res!964573 (validMask!0 mask!2608))))

(assert (=> start!123330 e!807304))

(assert (=> start!123330 true))

(declare-fun array_inv!35957 (array!97409) Bool)

(assert (=> start!123330 (array_inv!35957 a!2831)))

(declare-fun b!1429835 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429835 (= e!807306 (not (or (= (select (arr!47012 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47012 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47012 a!2831) index!585) (select (arr!47012 a!2831) j!81)) (not (= (select (store (arr!47012 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!585 intermediateAfterIndex!13))))))

(declare-fun e!807305 () Bool)

(assert (=> b!1429835 e!807305))

(declare-fun res!964576 () Bool)

(assert (=> b!1429835 (=> (not res!964576) (not e!807305))))

(assert (=> b!1429835 (= res!964576 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48320 0))(
  ( (Unit!48321) )
))
(declare-fun lt!629488 () Unit!48320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48320)

(assert (=> b!1429835 (= lt!629488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429836 () Bool)

(declare-fun e!807308 () Bool)

(assert (=> b!1429836 (= e!807304 e!807308)))

(declare-fun res!964579 () Bool)

(assert (=> b!1429836 (=> (not res!964579) (not e!807308))))

(declare-datatypes ((SeekEntryResult!11313 0))(
  ( (MissingZero!11313 (index!47643 (_ BitVec 32))) (Found!11313 (index!47644 (_ BitVec 32))) (Intermediate!11313 (undefined!12125 Bool) (index!47645 (_ BitVec 32)) (x!129278 (_ BitVec 32))) (Undefined!11313) (MissingVacant!11313 (index!47646 (_ BitVec 32))) )
))
(declare-fun lt!629487 () SeekEntryResult!11313)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97409 (_ BitVec 32)) SeekEntryResult!11313)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429836 (= res!964579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) (select (arr!47012 a!2831) j!81) a!2831 mask!2608) lt!629487))))

(assert (=> b!1429836 (= lt!629487 (Intermediate!11313 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429837 () Bool)

(declare-fun res!964571 () Bool)

(assert (=> b!1429837 (=> (not res!964571) (not e!807304))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1429837 (= res!964571 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47563 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47563 a!2831))))))

(declare-fun b!1429838 () Bool)

(assert (=> b!1429838 (= e!807308 e!807306)))

(declare-fun res!964580 () Bool)

(assert (=> b!1429838 (=> (not res!964580) (not e!807306))))

(declare-fun lt!629489 () array!97409)

(declare-fun lt!629491 () (_ BitVec 64))

(declare-fun lt!629490 () SeekEntryResult!11313)

(assert (=> b!1429838 (= res!964580 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629491 mask!2608) lt!629491 lt!629489 mask!2608) lt!629490))))

(assert (=> b!1429838 (= lt!629490 (Intermediate!11313 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429838 (= lt!629491 (select (store (arr!47012 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429838 (= lt!629489 (array!97410 (store (arr!47012 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47563 a!2831)))))

(declare-fun b!1429839 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97409 (_ BitVec 32)) SeekEntryResult!11313)

(assert (=> b!1429839 (= e!807305 (= (seekEntryOrOpen!0 (select (arr!47012 a!2831) j!81) a!2831 mask!2608) (Found!11313 j!81)))))

(declare-fun b!1429840 () Bool)

(declare-fun res!964577 () Bool)

(assert (=> b!1429840 (=> (not res!964577) (not e!807306))))

(assert (=> b!1429840 (= res!964577 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629491 lt!629489 mask!2608) lt!629490))))

(declare-fun b!1429841 () Bool)

(declare-fun res!964575 () Bool)

(assert (=> b!1429841 (=> (not res!964575) (not e!807304))))

(assert (=> b!1429841 (= res!964575 (validKeyInArray!0 (select (arr!47012 a!2831) i!982)))))

(declare-fun b!1429842 () Bool)

(declare-fun res!964574 () Bool)

(assert (=> b!1429842 (=> (not res!964574) (not e!807306))))

(assert (=> b!1429842 (= res!964574 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47012 a!2831) j!81) a!2831 mask!2608) lt!629487))))

(declare-fun b!1429843 () Bool)

(declare-fun res!964572 () Bool)

(assert (=> b!1429843 (=> (not res!964572) (not e!807304))))

(declare-datatypes ((List!33702 0))(
  ( (Nil!33699) (Cons!33698 (h!35012 (_ BitVec 64)) (t!48403 List!33702)) )
))
(declare-fun arrayNoDuplicates!0 (array!97409 (_ BitVec 32) List!33702) Bool)

(assert (=> b!1429843 (= res!964572 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33699))))

(assert (= (and start!123330 res!964573) b!1429831))

(assert (= (and b!1429831 res!964581) b!1429841))

(assert (= (and b!1429841 res!964575) b!1429833))

(assert (= (and b!1429833 res!964569) b!1429832))

(assert (= (and b!1429832 res!964570) b!1429843))

(assert (= (and b!1429843 res!964572) b!1429837))

(assert (= (and b!1429837 res!964571) b!1429836))

(assert (= (and b!1429836 res!964579) b!1429838))

(assert (= (and b!1429838 res!964580) b!1429842))

(assert (= (and b!1429842 res!964574) b!1429840))

(assert (= (and b!1429840 res!964577) b!1429834))

(assert (= (and b!1429834 res!964578) b!1429835))

(assert (= (and b!1429835 res!964576) b!1429839))

(declare-fun m!1319981 () Bool)

(assert (=> b!1429840 m!1319981))

(declare-fun m!1319983 () Bool)

(assert (=> b!1429836 m!1319983))

(assert (=> b!1429836 m!1319983))

(declare-fun m!1319985 () Bool)

(assert (=> b!1429836 m!1319985))

(assert (=> b!1429836 m!1319985))

(assert (=> b!1429836 m!1319983))

(declare-fun m!1319987 () Bool)

(assert (=> b!1429836 m!1319987))

(declare-fun m!1319989 () Bool)

(assert (=> b!1429835 m!1319989))

(declare-fun m!1319991 () Bool)

(assert (=> b!1429835 m!1319991))

(declare-fun m!1319993 () Bool)

(assert (=> b!1429835 m!1319993))

(declare-fun m!1319995 () Bool)

(assert (=> b!1429835 m!1319995))

(assert (=> b!1429835 m!1319983))

(declare-fun m!1319997 () Bool)

(assert (=> b!1429835 m!1319997))

(assert (=> b!1429842 m!1319983))

(assert (=> b!1429842 m!1319983))

(declare-fun m!1319999 () Bool)

(assert (=> b!1429842 m!1319999))

(declare-fun m!1320001 () Bool)

(assert (=> b!1429832 m!1320001))

(assert (=> b!1429839 m!1319983))

(assert (=> b!1429839 m!1319983))

(declare-fun m!1320003 () Bool)

(assert (=> b!1429839 m!1320003))

(declare-fun m!1320005 () Bool)

(assert (=> start!123330 m!1320005))

(declare-fun m!1320007 () Bool)

(assert (=> start!123330 m!1320007))

(assert (=> b!1429833 m!1319983))

(assert (=> b!1429833 m!1319983))

(declare-fun m!1320009 () Bool)

(assert (=> b!1429833 m!1320009))

(declare-fun m!1320011 () Bool)

(assert (=> b!1429843 m!1320011))

(declare-fun m!1320013 () Bool)

(assert (=> b!1429838 m!1320013))

(assert (=> b!1429838 m!1320013))

(declare-fun m!1320015 () Bool)

(assert (=> b!1429838 m!1320015))

(assert (=> b!1429838 m!1319989))

(declare-fun m!1320017 () Bool)

(assert (=> b!1429838 m!1320017))

(declare-fun m!1320019 () Bool)

(assert (=> b!1429841 m!1320019))

(assert (=> b!1429841 m!1320019))

(declare-fun m!1320021 () Bool)

(assert (=> b!1429841 m!1320021))

(check-sat (not b!1429835) (not b!1429838) (not b!1429840) (not b!1429833) (not b!1429836) (not b!1429842) (not b!1429843) (not b!1429841) (not b!1429839) (not b!1429832) (not start!123330))
(check-sat)
(get-model)

(declare-fun d!153501 () Bool)

(declare-fun lt!629513 () SeekEntryResult!11313)

(get-info :version)

(assert (=> d!153501 (and (or ((_ is Undefined!11313) lt!629513) (not ((_ is Found!11313) lt!629513)) (and (bvsge (index!47644 lt!629513) #b00000000000000000000000000000000) (bvslt (index!47644 lt!629513) (size!47563 a!2831)))) (or ((_ is Undefined!11313) lt!629513) ((_ is Found!11313) lt!629513) (not ((_ is MissingZero!11313) lt!629513)) (and (bvsge (index!47643 lt!629513) #b00000000000000000000000000000000) (bvslt (index!47643 lt!629513) (size!47563 a!2831)))) (or ((_ is Undefined!11313) lt!629513) ((_ is Found!11313) lt!629513) ((_ is MissingZero!11313) lt!629513) (not ((_ is MissingVacant!11313) lt!629513)) (and (bvsge (index!47646 lt!629513) #b00000000000000000000000000000000) (bvslt (index!47646 lt!629513) (size!47563 a!2831)))) (or ((_ is Undefined!11313) lt!629513) (ite ((_ is Found!11313) lt!629513) (= (select (arr!47012 a!2831) (index!47644 lt!629513)) (select (arr!47012 a!2831) j!81)) (ite ((_ is MissingZero!11313) lt!629513) (= (select (arr!47012 a!2831) (index!47643 lt!629513)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11313) lt!629513) (= (select (arr!47012 a!2831) (index!47646 lt!629513)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!807331 () SeekEntryResult!11313)

(assert (=> d!153501 (= lt!629513 e!807331)))

(declare-fun c!132132 () Bool)

(declare-fun lt!629515 () SeekEntryResult!11313)

(assert (=> d!153501 (= c!132132 (and ((_ is Intermediate!11313) lt!629515) (undefined!12125 lt!629515)))))

(assert (=> d!153501 (= lt!629515 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) (select (arr!47012 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153501 (validMask!0 mask!2608)))

(assert (=> d!153501 (= (seekEntryOrOpen!0 (select (arr!47012 a!2831) j!81) a!2831 mask!2608) lt!629513)))

(declare-fun b!1429895 () Bool)

(declare-fun e!807330 () SeekEntryResult!11313)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97409 (_ BitVec 32)) SeekEntryResult!11313)

(assert (=> b!1429895 (= e!807330 (seekKeyOrZeroReturnVacant!0 (x!129278 lt!629515) (index!47645 lt!629515) (index!47645 lt!629515) (select (arr!47012 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1429896 () Bool)

(declare-fun e!807332 () SeekEntryResult!11313)

(assert (=> b!1429896 (= e!807332 (Found!11313 (index!47645 lt!629515)))))

(declare-fun b!1429897 () Bool)

(declare-fun c!132133 () Bool)

(declare-fun lt!629514 () (_ BitVec 64))

(assert (=> b!1429897 (= c!132133 (= lt!629514 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1429897 (= e!807332 e!807330)))

(declare-fun b!1429898 () Bool)

(assert (=> b!1429898 (= e!807331 e!807332)))

(assert (=> b!1429898 (= lt!629514 (select (arr!47012 a!2831) (index!47645 lt!629515)))))

(declare-fun c!132134 () Bool)

(assert (=> b!1429898 (= c!132134 (= lt!629514 (select (arr!47012 a!2831) j!81)))))

(declare-fun b!1429899 () Bool)

(assert (=> b!1429899 (= e!807330 (MissingZero!11313 (index!47645 lt!629515)))))

(declare-fun b!1429900 () Bool)

(assert (=> b!1429900 (= e!807331 Undefined!11313)))

(assert (= (and d!153501 c!132132) b!1429900))

(assert (= (and d!153501 (not c!132132)) b!1429898))

(assert (= (and b!1429898 c!132134) b!1429896))

(assert (= (and b!1429898 (not c!132134)) b!1429897))

(assert (= (and b!1429897 c!132133) b!1429899))

(assert (= (and b!1429897 (not c!132133)) b!1429895))

(assert (=> d!153501 m!1319985))

(assert (=> d!153501 m!1319983))

(assert (=> d!153501 m!1319987))

(declare-fun m!1320065 () Bool)

(assert (=> d!153501 m!1320065))

(declare-fun m!1320067 () Bool)

(assert (=> d!153501 m!1320067))

(assert (=> d!153501 m!1319983))

(assert (=> d!153501 m!1319985))

(assert (=> d!153501 m!1320005))

(declare-fun m!1320069 () Bool)

(assert (=> d!153501 m!1320069))

(assert (=> b!1429895 m!1319983))

(declare-fun m!1320071 () Bool)

(assert (=> b!1429895 m!1320071))

(declare-fun m!1320073 () Bool)

(assert (=> b!1429898 m!1320073))

(assert (=> b!1429839 d!153501))

(declare-fun b!1429929 () Bool)

(declare-fun e!807351 () SeekEntryResult!11313)

(declare-fun e!807355 () SeekEntryResult!11313)

(assert (=> b!1429929 (= e!807351 e!807355)))

(declare-fun c!132143 () Bool)

(declare-fun lt!629521 () (_ BitVec 64))

(assert (=> b!1429929 (= c!132143 (or (= lt!629521 lt!629491) (= (bvadd lt!629521 lt!629521) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1429930 () Bool)

(assert (=> b!1429930 (= e!807355 (Intermediate!11313 false index!585 x!605))))

(declare-fun b!1429931 () Bool)

(declare-fun lt!629520 () SeekEntryResult!11313)

(assert (=> b!1429931 (and (bvsge (index!47645 lt!629520) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629520) (size!47563 lt!629489)))))

(declare-fun e!807353 () Bool)

(assert (=> b!1429931 (= e!807353 (= (select (arr!47012 lt!629489) (index!47645 lt!629520)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153503 () Bool)

(declare-fun e!807352 () Bool)

(assert (=> d!153503 e!807352))

(declare-fun c!132144 () Bool)

(assert (=> d!153503 (= c!132144 (and ((_ is Intermediate!11313) lt!629520) (undefined!12125 lt!629520)))))

(assert (=> d!153503 (= lt!629520 e!807351)))

(declare-fun c!132145 () Bool)

(assert (=> d!153503 (= c!132145 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153503 (= lt!629521 (select (arr!47012 lt!629489) index!585))))

(assert (=> d!153503 (validMask!0 mask!2608)))

(assert (=> d!153503 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629491 lt!629489 mask!2608) lt!629520)))

(declare-fun b!1429932 () Bool)

(assert (=> b!1429932 (and (bvsge (index!47645 lt!629520) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629520) (size!47563 lt!629489)))))

(declare-fun res!964633 () Bool)

(assert (=> b!1429932 (= res!964633 (= (select (arr!47012 lt!629489) (index!47645 lt!629520)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1429932 (=> res!964633 e!807353)))

(declare-fun b!1429933 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429933 (= e!807355 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629491 lt!629489 mask!2608))))

(declare-fun b!1429934 () Bool)

(declare-fun e!807354 () Bool)

(assert (=> b!1429934 (= e!807352 e!807354)))

(declare-fun res!964634 () Bool)

(assert (=> b!1429934 (= res!964634 (and ((_ is Intermediate!11313) lt!629520) (not (undefined!12125 lt!629520)) (bvslt (x!129278 lt!629520) #b01111111111111111111111111111110) (bvsge (x!129278 lt!629520) #b00000000000000000000000000000000) (bvsge (x!129278 lt!629520) x!605)))))

(assert (=> b!1429934 (=> (not res!964634) (not e!807354))))

(declare-fun b!1429935 () Bool)

(assert (=> b!1429935 (= e!807352 (bvsge (x!129278 lt!629520) #b01111111111111111111111111111110))))

(declare-fun b!1429936 () Bool)

(assert (=> b!1429936 (and (bvsge (index!47645 lt!629520) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629520) (size!47563 lt!629489)))))

(declare-fun res!964635 () Bool)

(assert (=> b!1429936 (= res!964635 (= (select (arr!47012 lt!629489) (index!47645 lt!629520)) lt!629491))))

(assert (=> b!1429936 (=> res!964635 e!807353)))

(assert (=> b!1429936 (= e!807354 e!807353)))

(declare-fun b!1429937 () Bool)

(assert (=> b!1429937 (= e!807351 (Intermediate!11313 true index!585 x!605))))

(assert (= (and d!153503 c!132145) b!1429937))

(assert (= (and d!153503 (not c!132145)) b!1429929))

(assert (= (and b!1429929 c!132143) b!1429930))

(assert (= (and b!1429929 (not c!132143)) b!1429933))

(assert (= (and d!153503 c!132144) b!1429935))

(assert (= (and d!153503 (not c!132144)) b!1429934))

(assert (= (and b!1429934 res!964634) b!1429936))

(assert (= (and b!1429936 (not res!964635)) b!1429932))

(assert (= (and b!1429932 (not res!964633)) b!1429931))

(declare-fun m!1320075 () Bool)

(assert (=> b!1429933 m!1320075))

(assert (=> b!1429933 m!1320075))

(declare-fun m!1320077 () Bool)

(assert (=> b!1429933 m!1320077))

(declare-fun m!1320079 () Bool)

(assert (=> b!1429936 m!1320079))

(declare-fun m!1320081 () Bool)

(assert (=> d!153503 m!1320081))

(assert (=> d!153503 m!1320005))

(assert (=> b!1429931 m!1320079))

(assert (=> b!1429932 m!1320079))

(assert (=> b!1429840 d!153503))

(declare-fun b!1429965 () Bool)

(declare-fun e!807379 () Bool)

(declare-fun e!807377 () Bool)

(assert (=> b!1429965 (= e!807379 e!807377)))

(declare-fun res!964651 () Bool)

(assert (=> b!1429965 (=> (not res!964651) (not e!807377))))

(declare-fun e!807378 () Bool)

(assert (=> b!1429965 (= res!964651 (not e!807378))))

(declare-fun res!964652 () Bool)

(assert (=> b!1429965 (=> (not res!964652) (not e!807378))))

(assert (=> b!1429965 (= res!964652 (validKeyInArray!0 (select (arr!47012 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67410 () Bool)

(declare-fun call!67413 () Bool)

(declare-fun c!132152 () Bool)

(assert (=> bm!67410 (= call!67413 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132152 (Cons!33698 (select (arr!47012 a!2831) #b00000000000000000000000000000000) Nil!33699) Nil!33699)))))

(declare-fun d!153511 () Bool)

(declare-fun res!964653 () Bool)

(assert (=> d!153511 (=> res!964653 e!807379)))

(assert (=> d!153511 (= res!964653 (bvsge #b00000000000000000000000000000000 (size!47563 a!2831)))))

(assert (=> d!153511 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33699) e!807379)))

(declare-fun b!1429966 () Bool)

(declare-fun contains!9868 (List!33702 (_ BitVec 64)) Bool)

(assert (=> b!1429966 (= e!807378 (contains!9868 Nil!33699 (select (arr!47012 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1429967 () Bool)

(declare-fun e!807380 () Bool)

(assert (=> b!1429967 (= e!807380 call!67413)))

(declare-fun b!1429968 () Bool)

(assert (=> b!1429968 (= e!807377 e!807380)))

(assert (=> b!1429968 (= c!132152 (validKeyInArray!0 (select (arr!47012 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1429969 () Bool)

(assert (=> b!1429969 (= e!807380 call!67413)))

(assert (= (and d!153511 (not res!964653)) b!1429965))

(assert (= (and b!1429965 res!964652) b!1429966))

(assert (= (and b!1429965 res!964651) b!1429968))

(assert (= (and b!1429968 c!132152) b!1429967))

(assert (= (and b!1429968 (not c!132152)) b!1429969))

(assert (= (or b!1429967 b!1429969) bm!67410))

(declare-fun m!1320103 () Bool)

(assert (=> b!1429965 m!1320103))

(assert (=> b!1429965 m!1320103))

(declare-fun m!1320105 () Bool)

(assert (=> b!1429965 m!1320105))

(assert (=> bm!67410 m!1320103))

(declare-fun m!1320107 () Bool)

(assert (=> bm!67410 m!1320107))

(assert (=> b!1429966 m!1320103))

(assert (=> b!1429966 m!1320103))

(declare-fun m!1320109 () Bool)

(assert (=> b!1429966 m!1320109))

(assert (=> b!1429968 m!1320103))

(assert (=> b!1429968 m!1320103))

(assert (=> b!1429968 m!1320105))

(assert (=> b!1429843 d!153511))

(declare-fun b!1429978 () Bool)

(declare-fun e!807387 () SeekEntryResult!11313)

(declare-fun e!807391 () SeekEntryResult!11313)

(assert (=> b!1429978 (= e!807387 e!807391)))

(declare-fun c!132155 () Bool)

(declare-fun lt!629538 () (_ BitVec 64))

(assert (=> b!1429978 (= c!132155 (or (= lt!629538 lt!629491) (= (bvadd lt!629538 lt!629538) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1429979 () Bool)

(assert (=> b!1429979 (= e!807391 (Intermediate!11313 false (toIndex!0 lt!629491 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1429980 () Bool)

(declare-fun lt!629537 () SeekEntryResult!11313)

(assert (=> b!1429980 (and (bvsge (index!47645 lt!629537) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629537) (size!47563 lt!629489)))))

(declare-fun e!807389 () Bool)

(assert (=> b!1429980 (= e!807389 (= (select (arr!47012 lt!629489) (index!47645 lt!629537)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153521 () Bool)

(declare-fun e!807388 () Bool)

(assert (=> d!153521 e!807388))

(declare-fun c!132156 () Bool)

(assert (=> d!153521 (= c!132156 (and ((_ is Intermediate!11313) lt!629537) (undefined!12125 lt!629537)))))

(assert (=> d!153521 (= lt!629537 e!807387)))

(declare-fun c!132157 () Bool)

(assert (=> d!153521 (= c!132157 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153521 (= lt!629538 (select (arr!47012 lt!629489) (toIndex!0 lt!629491 mask!2608)))))

(assert (=> d!153521 (validMask!0 mask!2608)))

(assert (=> d!153521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629491 mask!2608) lt!629491 lt!629489 mask!2608) lt!629537)))

(declare-fun b!1429981 () Bool)

(assert (=> b!1429981 (and (bvsge (index!47645 lt!629537) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629537) (size!47563 lt!629489)))))

(declare-fun res!964658 () Bool)

(assert (=> b!1429981 (= res!964658 (= (select (arr!47012 lt!629489) (index!47645 lt!629537)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1429981 (=> res!964658 e!807389)))

(declare-fun b!1429982 () Bool)

(assert (=> b!1429982 (= e!807391 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629491 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629491 lt!629489 mask!2608))))

(declare-fun b!1429983 () Bool)

(declare-fun e!807390 () Bool)

(assert (=> b!1429983 (= e!807388 e!807390)))

(declare-fun res!964659 () Bool)

(assert (=> b!1429983 (= res!964659 (and ((_ is Intermediate!11313) lt!629537) (not (undefined!12125 lt!629537)) (bvslt (x!129278 lt!629537) #b01111111111111111111111111111110) (bvsge (x!129278 lt!629537) #b00000000000000000000000000000000) (bvsge (x!129278 lt!629537) #b00000000000000000000000000000000)))))

(assert (=> b!1429983 (=> (not res!964659) (not e!807390))))

(declare-fun b!1429984 () Bool)

(assert (=> b!1429984 (= e!807388 (bvsge (x!129278 lt!629537) #b01111111111111111111111111111110))))

(declare-fun b!1429985 () Bool)

(assert (=> b!1429985 (and (bvsge (index!47645 lt!629537) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629537) (size!47563 lt!629489)))))

(declare-fun res!964660 () Bool)

(assert (=> b!1429985 (= res!964660 (= (select (arr!47012 lt!629489) (index!47645 lt!629537)) lt!629491))))

(assert (=> b!1429985 (=> res!964660 e!807389)))

(assert (=> b!1429985 (= e!807390 e!807389)))

(declare-fun b!1429986 () Bool)

(assert (=> b!1429986 (= e!807387 (Intermediate!11313 true (toIndex!0 lt!629491 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153521 c!132157) b!1429986))

(assert (= (and d!153521 (not c!132157)) b!1429978))

(assert (= (and b!1429978 c!132155) b!1429979))

(assert (= (and b!1429978 (not c!132155)) b!1429982))

(assert (= (and d!153521 c!132156) b!1429984))

(assert (= (and d!153521 (not c!132156)) b!1429983))

(assert (= (and b!1429983 res!964659) b!1429985))

(assert (= (and b!1429985 (not res!964660)) b!1429981))

(assert (= (and b!1429981 (not res!964658)) b!1429980))

(assert (=> b!1429982 m!1320013))

(declare-fun m!1320111 () Bool)

(assert (=> b!1429982 m!1320111))

(assert (=> b!1429982 m!1320111))

(declare-fun m!1320113 () Bool)

(assert (=> b!1429982 m!1320113))

(declare-fun m!1320115 () Bool)

(assert (=> b!1429985 m!1320115))

(assert (=> d!153521 m!1320013))

(declare-fun m!1320117 () Bool)

(assert (=> d!153521 m!1320117))

(assert (=> d!153521 m!1320005))

(assert (=> b!1429980 m!1320115))

(assert (=> b!1429981 m!1320115))

(assert (=> b!1429838 d!153521))

(declare-fun d!153523 () Bool)

(declare-fun lt!629547 () (_ BitVec 32))

(declare-fun lt!629546 () (_ BitVec 32))

(assert (=> d!153523 (= lt!629547 (bvmul (bvxor lt!629546 (bvlshr lt!629546 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153523 (= lt!629546 ((_ extract 31 0) (bvand (bvxor lt!629491 (bvlshr lt!629491 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153523 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!964661 (let ((h!35014 ((_ extract 31 0) (bvand (bvxor lt!629491 (bvlshr lt!629491 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129281 (bvmul (bvxor h!35014 (bvlshr h!35014 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129281 (bvlshr x!129281 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!964661 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!964661 #b00000000000000000000000000000000))))))

(assert (=> d!153523 (= (toIndex!0 lt!629491 mask!2608) (bvand (bvxor lt!629547 (bvlshr lt!629547 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1429838 d!153523))

(declare-fun d!153527 () Bool)

(assert (=> d!153527 (= (validKeyInArray!0 (select (arr!47012 a!2831) j!81)) (and (not (= (select (arr!47012 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47012 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1429833 d!153527))

(declare-fun d!153529 () Bool)

(assert (=> d!153529 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123330 d!153529))

(declare-fun d!153535 () Bool)

(assert (=> d!153535 (= (array_inv!35957 a!2831) (bvsge (size!47563 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123330 d!153535))

(declare-fun b!1430009 () Bool)

(declare-fun e!807405 () SeekEntryResult!11313)

(declare-fun e!807409 () SeekEntryResult!11313)

(assert (=> b!1430009 (= e!807405 e!807409)))

(declare-fun c!132165 () Bool)

(declare-fun lt!629553 () (_ BitVec 64))

(assert (=> b!1430009 (= c!132165 (or (= lt!629553 (select (arr!47012 a!2831) j!81)) (= (bvadd lt!629553 lt!629553) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430010 () Bool)

(assert (=> b!1430010 (= e!807409 (Intermediate!11313 false index!585 x!605))))

(declare-fun b!1430011 () Bool)

(declare-fun lt!629552 () SeekEntryResult!11313)

(assert (=> b!1430011 (and (bvsge (index!47645 lt!629552) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629552) (size!47563 a!2831)))))

(declare-fun e!807407 () Bool)

(assert (=> b!1430011 (= e!807407 (= (select (arr!47012 a!2831) (index!47645 lt!629552)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153537 () Bool)

(declare-fun e!807406 () Bool)

(assert (=> d!153537 e!807406))

(declare-fun c!132166 () Bool)

(assert (=> d!153537 (= c!132166 (and ((_ is Intermediate!11313) lt!629552) (undefined!12125 lt!629552)))))

(assert (=> d!153537 (= lt!629552 e!807405)))

(declare-fun c!132167 () Bool)

(assert (=> d!153537 (= c!132167 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153537 (= lt!629553 (select (arr!47012 a!2831) index!585))))

(assert (=> d!153537 (validMask!0 mask!2608)))

(assert (=> d!153537 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47012 a!2831) j!81) a!2831 mask!2608) lt!629552)))

(declare-fun b!1430012 () Bool)

(assert (=> b!1430012 (and (bvsge (index!47645 lt!629552) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629552) (size!47563 a!2831)))))

(declare-fun res!964670 () Bool)

(assert (=> b!1430012 (= res!964670 (= (select (arr!47012 a!2831) (index!47645 lt!629552)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430012 (=> res!964670 e!807407)))

(declare-fun b!1430013 () Bool)

(assert (=> b!1430013 (= e!807409 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47012 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430014 () Bool)

(declare-fun e!807408 () Bool)

(assert (=> b!1430014 (= e!807406 e!807408)))

(declare-fun res!964671 () Bool)

(assert (=> b!1430014 (= res!964671 (and ((_ is Intermediate!11313) lt!629552) (not (undefined!12125 lt!629552)) (bvslt (x!129278 lt!629552) #b01111111111111111111111111111110) (bvsge (x!129278 lt!629552) #b00000000000000000000000000000000) (bvsge (x!129278 lt!629552) x!605)))))

(assert (=> b!1430014 (=> (not res!964671) (not e!807408))))

(declare-fun b!1430015 () Bool)

(assert (=> b!1430015 (= e!807406 (bvsge (x!129278 lt!629552) #b01111111111111111111111111111110))))

(declare-fun b!1430016 () Bool)

(assert (=> b!1430016 (and (bvsge (index!47645 lt!629552) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629552) (size!47563 a!2831)))))

(declare-fun res!964672 () Bool)

(assert (=> b!1430016 (= res!964672 (= (select (arr!47012 a!2831) (index!47645 lt!629552)) (select (arr!47012 a!2831) j!81)))))

(assert (=> b!1430016 (=> res!964672 e!807407)))

(assert (=> b!1430016 (= e!807408 e!807407)))

(declare-fun b!1430017 () Bool)

(assert (=> b!1430017 (= e!807405 (Intermediate!11313 true index!585 x!605))))

(assert (= (and d!153537 c!132167) b!1430017))

(assert (= (and d!153537 (not c!132167)) b!1430009))

(assert (= (and b!1430009 c!132165) b!1430010))

(assert (= (and b!1430009 (not c!132165)) b!1430013))

(assert (= (and d!153537 c!132166) b!1430015))

(assert (= (and d!153537 (not c!132166)) b!1430014))

(assert (= (and b!1430014 res!964671) b!1430016))

(assert (= (and b!1430016 (not res!964672)) b!1430012))

(assert (= (and b!1430012 (not res!964670)) b!1430011))

(assert (=> b!1430013 m!1320075))

(assert (=> b!1430013 m!1320075))

(assert (=> b!1430013 m!1319983))

(declare-fun m!1320127 () Bool)

(assert (=> b!1430013 m!1320127))

(declare-fun m!1320129 () Bool)

(assert (=> b!1430016 m!1320129))

(assert (=> d!153537 m!1319993))

(assert (=> d!153537 m!1320005))

(assert (=> b!1430011 m!1320129))

(assert (=> b!1430012 m!1320129))

(assert (=> b!1429842 d!153537))

(declare-fun b!1430045 () Bool)

(declare-fun e!807432 () Bool)

(declare-fun e!807431 () Bool)

(assert (=> b!1430045 (= e!807432 e!807431)))

(declare-fun c!132174 () Bool)

(assert (=> b!1430045 (= c!132174 (validKeyInArray!0 (select (arr!47012 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1430046 () Bool)

(declare-fun call!67420 () Bool)

(assert (=> b!1430046 (= e!807431 call!67420)))

(declare-fun b!1430047 () Bool)

(declare-fun e!807430 () Bool)

(assert (=> b!1430047 (= e!807430 call!67420)))

(declare-fun b!1430048 () Bool)

(assert (=> b!1430048 (= e!807431 e!807430)))

(declare-fun lt!629569 () (_ BitVec 64))

(assert (=> b!1430048 (= lt!629569 (select (arr!47012 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!629570 () Unit!48320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97409 (_ BitVec 64) (_ BitVec 32)) Unit!48320)

(assert (=> b!1430048 (= lt!629570 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629569 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1430048 (arrayContainsKey!0 a!2831 lt!629569 #b00000000000000000000000000000000)))

(declare-fun lt!629568 () Unit!48320)

(assert (=> b!1430048 (= lt!629568 lt!629570)))

(declare-fun res!964689 () Bool)

(assert (=> b!1430048 (= res!964689 (= (seekEntryOrOpen!0 (select (arr!47012 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11313 #b00000000000000000000000000000000)))))

(assert (=> b!1430048 (=> (not res!964689) (not e!807430))))

(declare-fun bm!67417 () Bool)

(assert (=> bm!67417 (= call!67420 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!153539 () Bool)

(declare-fun res!964688 () Bool)

(assert (=> d!153539 (=> res!964688 e!807432)))

(assert (=> d!153539 (= res!964688 (bvsge #b00000000000000000000000000000000 (size!47563 a!2831)))))

(assert (=> d!153539 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!807432)))

(assert (= (and d!153539 (not res!964688)) b!1430045))

(assert (= (and b!1430045 c!132174) b!1430048))

(assert (= (and b!1430045 (not c!132174)) b!1430046))

(assert (= (and b!1430048 res!964689) b!1430047))

(assert (= (or b!1430047 b!1430046) bm!67417))

(assert (=> b!1430045 m!1320103))

(assert (=> b!1430045 m!1320103))

(assert (=> b!1430045 m!1320105))

(assert (=> b!1430048 m!1320103))

(declare-fun m!1320147 () Bool)

(assert (=> b!1430048 m!1320147))

(declare-fun m!1320149 () Bool)

(assert (=> b!1430048 m!1320149))

(assert (=> b!1430048 m!1320103))

(declare-fun m!1320151 () Bool)

(assert (=> b!1430048 m!1320151))

(declare-fun m!1320153 () Bool)

(assert (=> bm!67417 m!1320153))

(assert (=> b!1429832 d!153539))

(declare-fun b!1430053 () Bool)

(declare-fun e!807437 () Bool)

(declare-fun e!807436 () Bool)

(assert (=> b!1430053 (= e!807437 e!807436)))

(declare-fun c!132177 () Bool)

(assert (=> b!1430053 (= c!132177 (validKeyInArray!0 (select (arr!47012 a!2831) j!81)))))

(declare-fun b!1430054 () Bool)

(declare-fun call!67423 () Bool)

(assert (=> b!1430054 (= e!807436 call!67423)))

(declare-fun b!1430055 () Bool)

(declare-fun e!807435 () Bool)

(assert (=> b!1430055 (= e!807435 call!67423)))

(declare-fun b!1430056 () Bool)

(assert (=> b!1430056 (= e!807436 e!807435)))

(declare-fun lt!629572 () (_ BitVec 64))

(assert (=> b!1430056 (= lt!629572 (select (arr!47012 a!2831) j!81))))

(declare-fun lt!629573 () Unit!48320)

(assert (=> b!1430056 (= lt!629573 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!629572 j!81))))

(assert (=> b!1430056 (arrayContainsKey!0 a!2831 lt!629572 #b00000000000000000000000000000000)))

(declare-fun lt!629571 () Unit!48320)

(assert (=> b!1430056 (= lt!629571 lt!629573)))

(declare-fun res!964691 () Bool)

(assert (=> b!1430056 (= res!964691 (= (seekEntryOrOpen!0 (select (arr!47012 a!2831) j!81) a!2831 mask!2608) (Found!11313 j!81)))))

(assert (=> b!1430056 (=> (not res!964691) (not e!807435))))

(declare-fun bm!67420 () Bool)

(assert (=> bm!67420 (= call!67423 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!153547 () Bool)

(declare-fun res!964690 () Bool)

(assert (=> d!153547 (=> res!964690 e!807437)))

(assert (=> d!153547 (= res!964690 (bvsge j!81 (size!47563 a!2831)))))

(assert (=> d!153547 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!807437)))

(assert (= (and d!153547 (not res!964690)) b!1430053))

(assert (= (and b!1430053 c!132177) b!1430056))

(assert (= (and b!1430053 (not c!132177)) b!1430054))

(assert (= (and b!1430056 res!964691) b!1430055))

(assert (= (or b!1430055 b!1430054) bm!67420))

(assert (=> b!1430053 m!1319983))

(assert (=> b!1430053 m!1319983))

(assert (=> b!1430053 m!1320009))

(assert (=> b!1430056 m!1319983))

(declare-fun m!1320155 () Bool)

(assert (=> b!1430056 m!1320155))

(declare-fun m!1320157 () Bool)

(assert (=> b!1430056 m!1320157))

(assert (=> b!1430056 m!1319983))

(assert (=> b!1430056 m!1320003))

(declare-fun m!1320159 () Bool)

(assert (=> bm!67420 m!1320159))

(assert (=> b!1429835 d!153547))

(declare-fun d!153549 () Bool)

(assert (=> d!153549 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!629580 () Unit!48320)

(declare-fun choose!38 (array!97409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48320)

(assert (=> d!153549 (= lt!629580 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153549 (validMask!0 mask!2608)))

(assert (=> d!153549 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!629580)))

(declare-fun bs!41655 () Bool)

(assert (= bs!41655 d!153549))

(assert (=> bs!41655 m!1319995))

(declare-fun m!1320165 () Bool)

(assert (=> bs!41655 m!1320165))

(assert (=> bs!41655 m!1320005))

(assert (=> b!1429835 d!153549))

(declare-fun d!153553 () Bool)

(assert (=> d!153553 (= (validKeyInArray!0 (select (arr!47012 a!2831) i!982)) (and (not (= (select (arr!47012 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47012 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1429841 d!153553))

(declare-fun b!1430080 () Bool)

(declare-fun e!807452 () SeekEntryResult!11313)

(declare-fun e!807456 () SeekEntryResult!11313)

(assert (=> b!1430080 (= e!807452 e!807456)))

(declare-fun c!132185 () Bool)

(declare-fun lt!629582 () (_ BitVec 64))

(assert (=> b!1430080 (= c!132185 (or (= lt!629582 (select (arr!47012 a!2831) j!81)) (= (bvadd lt!629582 lt!629582) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1430081 () Bool)

(assert (=> b!1430081 (= e!807456 (Intermediate!11313 false (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1430082 () Bool)

(declare-fun lt!629581 () SeekEntryResult!11313)

(assert (=> b!1430082 (and (bvsge (index!47645 lt!629581) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629581) (size!47563 a!2831)))))

(declare-fun e!807454 () Bool)

(assert (=> b!1430082 (= e!807454 (= (select (arr!47012 a!2831) (index!47645 lt!629581)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!153555 () Bool)

(declare-fun e!807453 () Bool)

(assert (=> d!153555 e!807453))

(declare-fun c!132186 () Bool)

(assert (=> d!153555 (= c!132186 (and ((_ is Intermediate!11313) lt!629581) (undefined!12125 lt!629581)))))

(assert (=> d!153555 (= lt!629581 e!807452)))

(declare-fun c!132187 () Bool)

(assert (=> d!153555 (= c!132187 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153555 (= lt!629582 (select (arr!47012 a!2831) (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608)))))

(assert (=> d!153555 (validMask!0 mask!2608)))

(assert (=> d!153555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) (select (arr!47012 a!2831) j!81) a!2831 mask!2608) lt!629581)))

(declare-fun b!1430083 () Bool)

(assert (=> b!1430083 (and (bvsge (index!47645 lt!629581) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629581) (size!47563 a!2831)))))

(declare-fun res!964701 () Bool)

(assert (=> b!1430083 (= res!964701 (= (select (arr!47012 a!2831) (index!47645 lt!629581)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1430083 (=> res!964701 e!807454)))

(declare-fun b!1430084 () Bool)

(assert (=> b!1430084 (= e!807456 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47012 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1430085 () Bool)

(declare-fun e!807455 () Bool)

(assert (=> b!1430085 (= e!807453 e!807455)))

(declare-fun res!964702 () Bool)

(assert (=> b!1430085 (= res!964702 (and ((_ is Intermediate!11313) lt!629581) (not (undefined!12125 lt!629581)) (bvslt (x!129278 lt!629581) #b01111111111111111111111111111110) (bvsge (x!129278 lt!629581) #b00000000000000000000000000000000) (bvsge (x!129278 lt!629581) #b00000000000000000000000000000000)))))

(assert (=> b!1430085 (=> (not res!964702) (not e!807455))))

(declare-fun b!1430086 () Bool)

(assert (=> b!1430086 (= e!807453 (bvsge (x!129278 lt!629581) #b01111111111111111111111111111110))))

(declare-fun b!1430087 () Bool)

(assert (=> b!1430087 (and (bvsge (index!47645 lt!629581) #b00000000000000000000000000000000) (bvslt (index!47645 lt!629581) (size!47563 a!2831)))))

(declare-fun res!964703 () Bool)

(assert (=> b!1430087 (= res!964703 (= (select (arr!47012 a!2831) (index!47645 lt!629581)) (select (arr!47012 a!2831) j!81)))))

(assert (=> b!1430087 (=> res!964703 e!807454)))

(assert (=> b!1430087 (= e!807455 e!807454)))

(declare-fun b!1430088 () Bool)

(assert (=> b!1430088 (= e!807452 (Intermediate!11313 true (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153555 c!132187) b!1430088))

(assert (= (and d!153555 (not c!132187)) b!1430080))

(assert (= (and b!1430080 c!132185) b!1430081))

(assert (= (and b!1430080 (not c!132185)) b!1430084))

(assert (= (and d!153555 c!132186) b!1430086))

(assert (= (and d!153555 (not c!132186)) b!1430085))

(assert (= (and b!1430085 res!964702) b!1430087))

(assert (= (and b!1430087 (not res!964703)) b!1430083))

(assert (= (and b!1430083 (not res!964701)) b!1430082))

(assert (=> b!1430084 m!1319985))

(declare-fun m!1320167 () Bool)

(assert (=> b!1430084 m!1320167))

(assert (=> b!1430084 m!1320167))

(assert (=> b!1430084 m!1319983))

(declare-fun m!1320169 () Bool)

(assert (=> b!1430084 m!1320169))

(declare-fun m!1320171 () Bool)

(assert (=> b!1430087 m!1320171))

(assert (=> d!153555 m!1319985))

(declare-fun m!1320173 () Bool)

(assert (=> d!153555 m!1320173))

(assert (=> d!153555 m!1320005))

(assert (=> b!1430082 m!1320171))

(assert (=> b!1430083 m!1320171))

(assert (=> b!1429836 d!153555))

(declare-fun d!153557 () Bool)

(declare-fun lt!629586 () (_ BitVec 32))

(declare-fun lt!629585 () (_ BitVec 32))

(assert (=> d!153557 (= lt!629586 (bvmul (bvxor lt!629585 (bvlshr lt!629585 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153557 (= lt!629585 ((_ extract 31 0) (bvand (bvxor (select (arr!47012 a!2831) j!81) (bvlshr (select (arr!47012 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153557 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!964661 (let ((h!35014 ((_ extract 31 0) (bvand (bvxor (select (arr!47012 a!2831) j!81) (bvlshr (select (arr!47012 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129281 (bvmul (bvxor h!35014 (bvlshr h!35014 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129281 (bvlshr x!129281 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!964661 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!964661 #b00000000000000000000000000000000))))))

(assert (=> d!153557 (= (toIndex!0 (select (arr!47012 a!2831) j!81) mask!2608) (bvand (bvxor lt!629586 (bvlshr lt!629586 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1429836 d!153557))

(check-sat (not b!1430048) (not b!1430013) (not b!1430045) (not b!1429933) (not b!1429982) (not d!153503) (not b!1430084) (not d!153521) (not b!1429968) (not d!153549) (not b!1430056) (not b!1429965) (not b!1429966) (not bm!67420) (not bm!67417) (not d!153555) (not bm!67410) (not b!1430053) (not d!153501) (not d!153537) (not b!1429895))
(check-sat)
