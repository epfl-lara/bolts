; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123772 () Bool)

(assert start!123772)

(declare-fun b!1434239 () Bool)

(declare-fun res!967810 () Bool)

(declare-fun e!809509 () Bool)

(assert (=> b!1434239 (=> (not res!967810) (not e!809509))))

(declare-datatypes ((array!97548 0))(
  ( (array!97549 (arr!47074 (Array (_ BitVec 32) (_ BitVec 64))) (size!47625 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97548)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434239 (= res!967810 (validKeyInArray!0 (select (arr!47074 a!2831) j!81)))))

(declare-fun b!1434240 () Bool)

(declare-fun e!809504 () Bool)

(declare-fun e!809507 () Bool)

(assert (=> b!1434240 (= e!809504 (not e!809507))))

(declare-fun res!967823 () Bool)

(assert (=> b!1434240 (=> res!967823 e!809507)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434240 (= res!967823 (or (= (select (arr!47074 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47074 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47074 a!2831) index!585) (select (arr!47074 a!2831) j!81)) (= (select (store (arr!47074 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809510 () Bool)

(assert (=> b!1434240 e!809510))

(declare-fun res!967817 () Bool)

(assert (=> b!1434240 (=> (not res!967817) (not e!809510))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97548 (_ BitVec 32)) Bool)

(assert (=> b!1434240 (= res!967817 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48444 0))(
  ( (Unit!48445) )
))
(declare-fun lt!631358 () Unit!48444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48444)

(assert (=> b!1434240 (= lt!631358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434241 () Bool)

(declare-fun e!809508 () Bool)

(assert (=> b!1434241 (= e!809509 e!809508)))

(declare-fun res!967812 () Bool)

(assert (=> b!1434241 (=> (not res!967812) (not e!809508))))

(declare-datatypes ((SeekEntryResult!11375 0))(
  ( (MissingZero!11375 (index!47891 (_ BitVec 32))) (Found!11375 (index!47892 (_ BitVec 32))) (Intermediate!11375 (undefined!12187 Bool) (index!47893 (_ BitVec 32)) (x!129550 (_ BitVec 32))) (Undefined!11375) (MissingVacant!11375 (index!47894 (_ BitVec 32))) )
))
(declare-fun lt!631355 () SeekEntryResult!11375)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97548 (_ BitVec 32)) SeekEntryResult!11375)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434241 (= res!967812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631355))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1434241 (= lt!631355 (Intermediate!11375 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434242 () Bool)

(declare-fun res!967814 () Bool)

(assert (=> b!1434242 (=> (not res!967814) (not e!809504))))

(declare-fun lt!631356 () array!97548)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!631359 () SeekEntryResult!11375)

(declare-fun lt!631360 () (_ BitVec 64))

(assert (=> b!1434242 (= res!967814 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631360 lt!631356 mask!2608) lt!631359))))

(declare-fun b!1434243 () Bool)

(declare-fun e!809505 () Bool)

(assert (=> b!1434243 (= e!809507 e!809505)))

(declare-fun res!967816 () Bool)

(assert (=> b!1434243 (=> res!967816 e!809505)))

(declare-fun lt!631357 () (_ BitVec 32))

(assert (=> b!1434243 (= res!967816 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631357 #b00000000000000000000000000000000) (bvsge lt!631357 (size!47625 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434243 (= lt!631357 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434244 () Bool)

(declare-fun res!967821 () Bool)

(assert (=> b!1434244 (=> (not res!967821) (not e!809509))))

(declare-datatypes ((List!33764 0))(
  ( (Nil!33761) (Cons!33760 (h!35089 (_ BitVec 64)) (t!48465 List!33764)) )
))
(declare-fun arrayNoDuplicates!0 (array!97548 (_ BitVec 32) List!33764) Bool)

(assert (=> b!1434244 (= res!967821 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33761))))

(declare-fun res!967811 () Bool)

(assert (=> start!123772 (=> (not res!967811) (not e!809509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123772 (= res!967811 (validMask!0 mask!2608))))

(assert (=> start!123772 e!809509))

(assert (=> start!123772 true))

(declare-fun array_inv!36019 (array!97548) Bool)

(assert (=> start!123772 (array_inv!36019 a!2831)))

(declare-fun b!1434245 () Bool)

(assert (=> b!1434245 (= e!809505 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631357 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631355))))

(declare-fun b!1434246 () Bool)

(declare-fun res!967820 () Bool)

(assert (=> b!1434246 (=> (not res!967820) (not e!809509))))

(assert (=> b!1434246 (= res!967820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434247 () Bool)

(declare-fun res!967819 () Bool)

(assert (=> b!1434247 (=> (not res!967819) (not e!809509))))

(assert (=> b!1434247 (= res!967819 (validKeyInArray!0 (select (arr!47074 a!2831) i!982)))))

(declare-fun b!1434248 () Bool)

(declare-fun res!967824 () Bool)

(assert (=> b!1434248 (=> (not res!967824) (not e!809504))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434248 (= res!967824 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434249 () Bool)

(declare-fun res!967818 () Bool)

(assert (=> b!1434249 (=> (not res!967818) (not e!809509))))

(assert (=> b!1434249 (= res!967818 (and (= (size!47625 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47625 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47625 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434250 () Bool)

(declare-fun res!967815 () Bool)

(assert (=> b!1434250 (=> (not res!967815) (not e!809509))))

(assert (=> b!1434250 (= res!967815 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47625 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47625 a!2831))))))

(declare-fun b!1434251 () Bool)

(declare-fun res!967813 () Bool)

(assert (=> b!1434251 (=> (not res!967813) (not e!809504))))

(assert (=> b!1434251 (= res!967813 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631355))))

(declare-fun b!1434252 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97548 (_ BitVec 32)) SeekEntryResult!11375)

(assert (=> b!1434252 (= e!809510 (= (seekEntryOrOpen!0 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) (Found!11375 j!81)))))

(declare-fun b!1434253 () Bool)

(assert (=> b!1434253 (= e!809508 e!809504)))

(declare-fun res!967822 () Bool)

(assert (=> b!1434253 (=> (not res!967822) (not e!809504))))

(assert (=> b!1434253 (= res!967822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631360 mask!2608) lt!631360 lt!631356 mask!2608) lt!631359))))

(assert (=> b!1434253 (= lt!631359 (Intermediate!11375 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434253 (= lt!631360 (select (store (arr!47074 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434253 (= lt!631356 (array!97549 (store (arr!47074 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47625 a!2831)))))

(assert (= (and start!123772 res!967811) b!1434249))

(assert (= (and b!1434249 res!967818) b!1434247))

(assert (= (and b!1434247 res!967819) b!1434239))

(assert (= (and b!1434239 res!967810) b!1434246))

(assert (= (and b!1434246 res!967820) b!1434244))

(assert (= (and b!1434244 res!967821) b!1434250))

(assert (= (and b!1434250 res!967815) b!1434241))

(assert (= (and b!1434241 res!967812) b!1434253))

(assert (= (and b!1434253 res!967822) b!1434251))

(assert (= (and b!1434251 res!967813) b!1434242))

(assert (= (and b!1434242 res!967814) b!1434248))

(assert (= (and b!1434248 res!967824) b!1434240))

(assert (= (and b!1434240 res!967817) b!1434252))

(assert (= (and b!1434240 (not res!967823)) b!1434243))

(assert (= (and b!1434243 (not res!967816)) b!1434245))

(declare-fun m!1323917 () Bool)

(assert (=> b!1434251 m!1323917))

(assert (=> b!1434251 m!1323917))

(declare-fun m!1323919 () Bool)

(assert (=> b!1434251 m!1323919))

(declare-fun m!1323921 () Bool)

(assert (=> b!1434247 m!1323921))

(assert (=> b!1434247 m!1323921))

(declare-fun m!1323923 () Bool)

(assert (=> b!1434247 m!1323923))

(assert (=> b!1434252 m!1323917))

(assert (=> b!1434252 m!1323917))

(declare-fun m!1323925 () Bool)

(assert (=> b!1434252 m!1323925))

(declare-fun m!1323927 () Bool)

(assert (=> b!1434240 m!1323927))

(declare-fun m!1323929 () Bool)

(assert (=> b!1434240 m!1323929))

(declare-fun m!1323931 () Bool)

(assert (=> b!1434240 m!1323931))

(declare-fun m!1323933 () Bool)

(assert (=> b!1434240 m!1323933))

(assert (=> b!1434240 m!1323917))

(declare-fun m!1323935 () Bool)

(assert (=> b!1434240 m!1323935))

(declare-fun m!1323937 () Bool)

(assert (=> b!1434243 m!1323937))

(assert (=> b!1434241 m!1323917))

(assert (=> b!1434241 m!1323917))

(declare-fun m!1323939 () Bool)

(assert (=> b!1434241 m!1323939))

(assert (=> b!1434241 m!1323939))

(assert (=> b!1434241 m!1323917))

(declare-fun m!1323941 () Bool)

(assert (=> b!1434241 m!1323941))

(declare-fun m!1323943 () Bool)

(assert (=> start!123772 m!1323943))

(declare-fun m!1323945 () Bool)

(assert (=> start!123772 m!1323945))

(assert (=> b!1434239 m!1323917))

(assert (=> b!1434239 m!1323917))

(declare-fun m!1323947 () Bool)

(assert (=> b!1434239 m!1323947))

(declare-fun m!1323949 () Bool)

(assert (=> b!1434246 m!1323949))

(declare-fun m!1323951 () Bool)

(assert (=> b!1434253 m!1323951))

(assert (=> b!1434253 m!1323951))

(declare-fun m!1323953 () Bool)

(assert (=> b!1434253 m!1323953))

(assert (=> b!1434253 m!1323927))

(declare-fun m!1323955 () Bool)

(assert (=> b!1434253 m!1323955))

(declare-fun m!1323957 () Bool)

(assert (=> b!1434244 m!1323957))

(assert (=> b!1434245 m!1323917))

(assert (=> b!1434245 m!1323917))

(declare-fun m!1323959 () Bool)

(assert (=> b!1434245 m!1323959))

(declare-fun m!1323961 () Bool)

(assert (=> b!1434242 m!1323961))

(push 1)

(assert (not b!1434243))

(assert (not b!1434239))

(assert (not b!1434247))

(assert (not b!1434241))

(assert (not b!1434245))

(assert (not start!123772))

(assert (not b!1434252))

(assert (not b!1434240))

(assert (not b!1434242))

(assert (not b!1434251))

(assert (not b!1434253))

(assert (not b!1434246))

(assert (not b!1434244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1434438 () Bool)

(declare-fun lt!631436 () SeekEntryResult!11375)

(assert (=> b!1434438 (and (bvsge (index!47893 lt!631436) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631436) (size!47625 a!2831)))))

(declare-fun res!967956 () Bool)

(assert (=> b!1434438 (= res!967956 (= (select (arr!47074 a!2831) (index!47893 lt!631436)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809615 () Bool)

(assert (=> b!1434438 (=> res!967956 e!809615)))

(declare-fun b!1434439 () Bool)

(declare-fun e!809616 () SeekEntryResult!11375)

(assert (=> b!1434439 (= e!809616 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631357 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) (select (arr!47074 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434440 () Bool)

(declare-fun e!809614 () Bool)

(declare-fun e!809613 () Bool)

(assert (=> b!1434440 (= e!809614 e!809613)))

(declare-fun res!967955 () Bool)

(assert (=> b!1434440 (= res!967955 (and (is-Intermediate!11375 lt!631436) (not (undefined!12187 lt!631436)) (bvslt (x!129550 lt!631436) #b01111111111111111111111111111110) (bvsge (x!129550 lt!631436) #b00000000000000000000000000000000) (bvsge (x!129550 lt!631436) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1434440 (=> (not res!967955) (not e!809613))))

(declare-fun b!1434442 () Bool)

(assert (=> b!1434442 (= e!809614 (bvsge (x!129550 lt!631436) #b01111111111111111111111111111110))))

(declare-fun b!1434443 () Bool)

(declare-fun e!809612 () SeekEntryResult!11375)

(assert (=> b!1434443 (= e!809612 e!809616)))

(declare-fun lt!631435 () (_ BitVec 64))

(declare-fun c!132747 () Bool)

(assert (=> b!1434443 (= c!132747 (or (= lt!631435 (select (arr!47074 a!2831) j!81)) (= (bvadd lt!631435 lt!631435) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434444 () Bool)

(assert (=> b!1434444 (and (bvsge (index!47893 lt!631436) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631436) (size!47625 a!2831)))))

(declare-fun res!967954 () Bool)

(assert (=> b!1434444 (= res!967954 (= (select (arr!47074 a!2831) (index!47893 lt!631436)) (select (arr!47074 a!2831) j!81)))))

(assert (=> b!1434444 (=> res!967954 e!809615)))

(assert (=> b!1434444 (= e!809613 e!809615)))

(declare-fun b!1434445 () Bool)

(assert (=> b!1434445 (= e!809616 (Intermediate!11375 false lt!631357 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434446 () Bool)

(assert (=> b!1434446 (= e!809612 (Intermediate!11375 true lt!631357 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434441 () Bool)

(assert (=> b!1434441 (and (bvsge (index!47893 lt!631436) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631436) (size!47625 a!2831)))))

(assert (=> b!1434441 (= e!809615 (= (select (arr!47074 a!2831) (index!47893 lt!631436)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154133 () Bool)

(assert (=> d!154133 e!809614))

(declare-fun c!132746 () Bool)

(assert (=> d!154133 (= c!132746 (and (is-Intermediate!11375 lt!631436) (undefined!12187 lt!631436)))))

(assert (=> d!154133 (= lt!631436 e!809612)))

(declare-fun c!132745 () Bool)

(assert (=> d!154133 (= c!132745 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154133 (= lt!631435 (select (arr!47074 a!2831) lt!631357))))

(assert (=> d!154133 (validMask!0 mask!2608)))

(assert (=> d!154133 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631357 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631436)))

(assert (= (and d!154133 c!132745) b!1434446))

(assert (= (and d!154133 (not c!132745)) b!1434443))

(assert (= (and b!1434443 c!132747) b!1434445))

(assert (= (and b!1434443 (not c!132747)) b!1434439))

(assert (= (and d!154133 c!132746) b!1434442))

(assert (= (and d!154133 (not c!132746)) b!1434440))

(assert (= (and b!1434440 res!967955) b!1434444))

(assert (= (and b!1434444 (not res!967954)) b!1434438))

(assert (= (and b!1434438 (not res!967956)) b!1434441))

(declare-fun m!1324103 () Bool)

(assert (=> b!1434444 m!1324103))

(assert (=> b!1434441 m!1324103))

(declare-fun m!1324105 () Bool)

(assert (=> d!154133 m!1324105))

(assert (=> d!154133 m!1323943))

(assert (=> b!1434438 m!1324103))

(declare-fun m!1324107 () Bool)

(assert (=> b!1434439 m!1324107))

(assert (=> b!1434439 m!1324107))

(assert (=> b!1434439 m!1323917))

(declare-fun m!1324109 () Bool)

(assert (=> b!1434439 m!1324109))

(assert (=> b!1434245 d!154133))

(declare-fun b!1434475 () Bool)

(declare-fun e!809635 () Bool)

(declare-fun e!809637 () Bool)

(assert (=> b!1434475 (= e!809635 e!809637)))

(declare-fun c!132759 () Bool)

(assert (=> b!1434475 (= c!132759 (validKeyInArray!0 (select (arr!47074 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!154153 () Bool)

(declare-fun res!967965 () Bool)

(declare-fun e!809636 () Bool)

(assert (=> d!154153 (=> res!967965 e!809636)))

(assert (=> d!154153 (= res!967965 (bvsge #b00000000000000000000000000000000 (size!47625 a!2831)))))

(assert (=> d!154153 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33761) e!809636)))

(declare-fun b!1434476 () Bool)

(declare-fun call!67528 () Bool)

(assert (=> b!1434476 (= e!809637 call!67528)))

(declare-fun b!1434477 () Bool)

(declare-fun e!809634 () Bool)

(declare-fun contains!9883 (List!33764 (_ BitVec 64)) Bool)

(assert (=> b!1434477 (= e!809634 (contains!9883 Nil!33761 (select (arr!47074 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434478 () Bool)

(assert (=> b!1434478 (= e!809636 e!809635)))

(declare-fun res!967964 () Bool)

(assert (=> b!1434478 (=> (not res!967964) (not e!809635))))

(assert (=> b!1434478 (= res!967964 (not e!809634))))

(declare-fun res!967963 () Bool)

(assert (=> b!1434478 (=> (not res!967963) (not e!809634))))

(assert (=> b!1434478 (= res!967963 (validKeyInArray!0 (select (arr!47074 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434479 () Bool)

(assert (=> b!1434479 (= e!809637 call!67528)))

(declare-fun bm!67525 () Bool)

(assert (=> bm!67525 (= call!67528 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132759 (Cons!33760 (select (arr!47074 a!2831) #b00000000000000000000000000000000) Nil!33761) Nil!33761)))))

(assert (= (and d!154153 (not res!967965)) b!1434478))

(assert (= (and b!1434478 res!967963) b!1434477))

(assert (= (and b!1434478 res!967964) b!1434475))

(assert (= (and b!1434475 c!132759) b!1434476))

(assert (= (and b!1434475 (not c!132759)) b!1434479))

(assert (= (or b!1434476 b!1434479) bm!67525))

(declare-fun m!1324121 () Bool)

(assert (=> b!1434475 m!1324121))

(assert (=> b!1434475 m!1324121))

(declare-fun m!1324123 () Bool)

(assert (=> b!1434475 m!1324123))

(assert (=> b!1434477 m!1324121))

(assert (=> b!1434477 m!1324121))

(declare-fun m!1324125 () Bool)

(assert (=> b!1434477 m!1324125))

(assert (=> b!1434478 m!1324121))

(assert (=> b!1434478 m!1324121))

(assert (=> b!1434478 m!1324123))

(assert (=> bm!67525 m!1324121))

(declare-fun m!1324127 () Bool)

(assert (=> bm!67525 m!1324127))

(assert (=> b!1434244 d!154153))

(declare-fun d!154157 () Bool)

(declare-fun lt!631448 () (_ BitVec 32))

(assert (=> d!154157 (and (bvsge lt!631448 #b00000000000000000000000000000000) (bvslt lt!631448 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154157 (= lt!631448 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154157 (validMask!0 mask!2608)))

(assert (=> d!154157 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631448)))

(declare-fun bs!41758 () Bool)

(assert (= bs!41758 d!154157))

(declare-fun m!1324129 () Bool)

(assert (=> bs!41758 m!1324129))

(assert (=> bs!41758 m!1323943))

(assert (=> b!1434243 d!154157))

(declare-fun b!1434484 () Bool)

(declare-fun lt!631454 () SeekEntryResult!11375)

(assert (=> b!1434484 (and (bvsge (index!47893 lt!631454) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631454) (size!47625 lt!631356)))))

(declare-fun res!967968 () Bool)

(assert (=> b!1434484 (= res!967968 (= (select (arr!47074 lt!631356) (index!47893 lt!631454)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809643 () Bool)

(assert (=> b!1434484 (=> res!967968 e!809643)))

(declare-fun e!809644 () SeekEntryResult!11375)

(declare-fun b!1434485 () Bool)

(assert (=> b!1434485 (= e!809644 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631360 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631360 lt!631356 mask!2608))))

(declare-fun b!1434486 () Bool)

(declare-fun e!809642 () Bool)

(declare-fun e!809641 () Bool)

(assert (=> b!1434486 (= e!809642 e!809641)))

(declare-fun res!967967 () Bool)

(assert (=> b!1434486 (= res!967967 (and (is-Intermediate!11375 lt!631454) (not (undefined!12187 lt!631454)) (bvslt (x!129550 lt!631454) #b01111111111111111111111111111110) (bvsge (x!129550 lt!631454) #b00000000000000000000000000000000) (bvsge (x!129550 lt!631454) #b00000000000000000000000000000000)))))

(assert (=> b!1434486 (=> (not res!967967) (not e!809641))))

(declare-fun b!1434488 () Bool)

(assert (=> b!1434488 (= e!809642 (bvsge (x!129550 lt!631454) #b01111111111111111111111111111110))))

(declare-fun b!1434489 () Bool)

(declare-fun e!809640 () SeekEntryResult!11375)

(assert (=> b!1434489 (= e!809640 e!809644)))

(declare-fun c!132764 () Bool)

(declare-fun lt!631453 () (_ BitVec 64))

(assert (=> b!1434489 (= c!132764 (or (= lt!631453 lt!631360) (= (bvadd lt!631453 lt!631453) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434490 () Bool)

(assert (=> b!1434490 (and (bvsge (index!47893 lt!631454) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631454) (size!47625 lt!631356)))))

(declare-fun res!967966 () Bool)

(assert (=> b!1434490 (= res!967966 (= (select (arr!47074 lt!631356) (index!47893 lt!631454)) lt!631360))))

(assert (=> b!1434490 (=> res!967966 e!809643)))

(assert (=> b!1434490 (= e!809641 e!809643)))

(declare-fun b!1434491 () Bool)

(assert (=> b!1434491 (= e!809644 (Intermediate!11375 false (toIndex!0 lt!631360 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434492 () Bool)

(assert (=> b!1434492 (= e!809640 (Intermediate!11375 true (toIndex!0 lt!631360 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434487 () Bool)

(assert (=> b!1434487 (and (bvsge (index!47893 lt!631454) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631454) (size!47625 lt!631356)))))

(assert (=> b!1434487 (= e!809643 (= (select (arr!47074 lt!631356) (index!47893 lt!631454)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154159 () Bool)

(assert (=> d!154159 e!809642))

(declare-fun c!132763 () Bool)

(assert (=> d!154159 (= c!132763 (and (is-Intermediate!11375 lt!631454) (undefined!12187 lt!631454)))))

(assert (=> d!154159 (= lt!631454 e!809640)))

(declare-fun c!132762 () Bool)

(assert (=> d!154159 (= c!132762 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154159 (= lt!631453 (select (arr!47074 lt!631356) (toIndex!0 lt!631360 mask!2608)))))

(assert (=> d!154159 (validMask!0 mask!2608)))

(assert (=> d!154159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631360 mask!2608) lt!631360 lt!631356 mask!2608) lt!631454)))

(assert (= (and d!154159 c!132762) b!1434492))

(assert (= (and d!154159 (not c!132762)) b!1434489))

(assert (= (and b!1434489 c!132764) b!1434491))

(assert (= (and b!1434489 (not c!132764)) b!1434485))

(assert (= (and d!154159 c!132763) b!1434488))

(assert (= (and d!154159 (not c!132763)) b!1434486))

(assert (= (and b!1434486 res!967967) b!1434490))

(assert (= (and b!1434490 (not res!967966)) b!1434484))

(assert (= (and b!1434484 (not res!967968)) b!1434487))

(declare-fun m!1324131 () Bool)

(assert (=> b!1434490 m!1324131))

(assert (=> b!1434487 m!1324131))

(assert (=> d!154159 m!1323951))

(declare-fun m!1324133 () Bool)

(assert (=> d!154159 m!1324133))

(assert (=> d!154159 m!1323943))

(assert (=> b!1434484 m!1324131))

(assert (=> b!1434485 m!1323951))

(declare-fun m!1324135 () Bool)

(assert (=> b!1434485 m!1324135))

(assert (=> b!1434485 m!1324135))

(declare-fun m!1324137 () Bool)

(assert (=> b!1434485 m!1324137))

(assert (=> b!1434253 d!154159))

(declare-fun d!154161 () Bool)

(declare-fun lt!631467 () (_ BitVec 32))

(declare-fun lt!631466 () (_ BitVec 32))

(assert (=> d!154161 (= lt!631467 (bvmul (bvxor lt!631466 (bvlshr lt!631466 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154161 (= lt!631466 ((_ extract 31 0) (bvand (bvxor lt!631360 (bvlshr lt!631360 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154161 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967969 (let ((h!35093 ((_ extract 31 0) (bvand (bvxor lt!631360 (bvlshr lt!631360 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129558 (bvmul (bvxor h!35093 (bvlshr h!35093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129558 (bvlshr x!129558 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967969 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967969 #b00000000000000000000000000000000))))))

(assert (=> d!154161 (= (toIndex!0 lt!631360 mask!2608) (bvand (bvxor lt!631467 (bvlshr lt!631467 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434253 d!154161))

(declare-fun b!1434516 () Bool)

(declare-fun lt!631469 () SeekEntryResult!11375)

(assert (=> b!1434516 (and (bvsge (index!47893 lt!631469) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631469) (size!47625 lt!631356)))))

(declare-fun res!967975 () Bool)

(assert (=> b!1434516 (= res!967975 (= (select (arr!47074 lt!631356) (index!47893 lt!631469)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809660 () Bool)

(assert (=> b!1434516 (=> res!967975 e!809660)))

(declare-fun b!1434517 () Bool)

(declare-fun e!809661 () SeekEntryResult!11375)

(assert (=> b!1434517 (= e!809661 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631360 lt!631356 mask!2608))))

(declare-fun b!1434518 () Bool)

(declare-fun e!809659 () Bool)

(declare-fun e!809658 () Bool)

(assert (=> b!1434518 (= e!809659 e!809658)))

(declare-fun res!967974 () Bool)

(assert (=> b!1434518 (= res!967974 (and (is-Intermediate!11375 lt!631469) (not (undefined!12187 lt!631469)) (bvslt (x!129550 lt!631469) #b01111111111111111111111111111110) (bvsge (x!129550 lt!631469) #b00000000000000000000000000000000) (bvsge (x!129550 lt!631469) x!605)))))

(assert (=> b!1434518 (=> (not res!967974) (not e!809658))))

(declare-fun b!1434520 () Bool)

(assert (=> b!1434520 (= e!809659 (bvsge (x!129550 lt!631469) #b01111111111111111111111111111110))))

(declare-fun b!1434521 () Bool)

(declare-fun e!809657 () SeekEntryResult!11375)

(assert (=> b!1434521 (= e!809657 e!809661)))

(declare-fun c!132777 () Bool)

(declare-fun lt!631468 () (_ BitVec 64))

(assert (=> b!1434521 (= c!132777 (or (= lt!631468 lt!631360) (= (bvadd lt!631468 lt!631468) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434522 () Bool)

(assert (=> b!1434522 (and (bvsge (index!47893 lt!631469) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631469) (size!47625 lt!631356)))))

(declare-fun res!967973 () Bool)

(assert (=> b!1434522 (= res!967973 (= (select (arr!47074 lt!631356) (index!47893 lt!631469)) lt!631360))))

(assert (=> b!1434522 (=> res!967973 e!809660)))

(assert (=> b!1434522 (= e!809658 e!809660)))

(declare-fun b!1434523 () Bool)

(assert (=> b!1434523 (= e!809661 (Intermediate!11375 false index!585 x!605))))

(declare-fun b!1434524 () Bool)

(assert (=> b!1434524 (= e!809657 (Intermediate!11375 true index!585 x!605))))

(declare-fun b!1434519 () Bool)

(assert (=> b!1434519 (and (bvsge (index!47893 lt!631469) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631469) (size!47625 lt!631356)))))

(assert (=> b!1434519 (= e!809660 (= (select (arr!47074 lt!631356) (index!47893 lt!631469)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154165 () Bool)

(assert (=> d!154165 e!809659))

(declare-fun c!132776 () Bool)

(assert (=> d!154165 (= c!132776 (and (is-Intermediate!11375 lt!631469) (undefined!12187 lt!631469)))))

(assert (=> d!154165 (= lt!631469 e!809657)))

(declare-fun c!132775 () Bool)

(assert (=> d!154165 (= c!132775 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154165 (= lt!631468 (select (arr!47074 lt!631356) index!585))))

(assert (=> d!154165 (validMask!0 mask!2608)))

(assert (=> d!154165 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631360 lt!631356 mask!2608) lt!631469)))

(assert (= (and d!154165 c!132775) b!1434524))

(assert (= (and d!154165 (not c!132775)) b!1434521))

(assert (= (and b!1434521 c!132777) b!1434523))

(assert (= (and b!1434521 (not c!132777)) b!1434517))

(assert (= (and d!154165 c!132776) b!1434520))

(assert (= (and d!154165 (not c!132776)) b!1434518))

(assert (= (and b!1434518 res!967974) b!1434522))

(assert (= (and b!1434522 (not res!967973)) b!1434516))

(assert (= (and b!1434516 (not res!967975)) b!1434519))

(declare-fun m!1324153 () Bool)

(assert (=> b!1434522 m!1324153))

(assert (=> b!1434519 m!1324153))

(declare-fun m!1324155 () Bool)

(assert (=> d!154165 m!1324155))

(assert (=> d!154165 m!1323943))

(assert (=> b!1434516 m!1324153))

(assert (=> b!1434517 m!1323937))

(assert (=> b!1434517 m!1323937))

(declare-fun m!1324157 () Bool)

(assert (=> b!1434517 m!1324157))

(assert (=> b!1434242 d!154165))

(declare-fun d!154169 () Bool)

(assert (=> d!154169 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123772 d!154169))

(declare-fun d!154173 () Bool)

(assert (=> d!154173 (= (array_inv!36019 a!2831) (bvsge (size!47625 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123772 d!154173))

(declare-fun b!1434606 () Bool)

(declare-fun e!809711 () SeekEntryResult!11375)

(declare-fun lt!631496 () SeekEntryResult!11375)

(assert (=> b!1434606 (= e!809711 (Found!11375 (index!47893 lt!631496)))))

(declare-fun b!1434607 () Bool)

(declare-fun c!132807 () Bool)

(declare-fun lt!631498 () (_ BitVec 64))

(assert (=> b!1434607 (= c!132807 (= lt!631498 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809712 () SeekEntryResult!11375)

(assert (=> b!1434607 (= e!809711 e!809712)))

(declare-fun b!1434608 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97548 (_ BitVec 32)) SeekEntryResult!11375)

(assert (=> b!1434608 (= e!809712 (seekKeyOrZeroReturnVacant!0 (x!129550 lt!631496) (index!47893 lt!631496) (index!47893 lt!631496) (select (arr!47074 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434609 () Bool)

(declare-fun e!809710 () SeekEntryResult!11375)

(assert (=> b!1434609 (= e!809710 e!809711)))

(assert (=> b!1434609 (= lt!631498 (select (arr!47074 a!2831) (index!47893 lt!631496)))))

(declare-fun c!132805 () Bool)

(assert (=> b!1434609 (= c!132805 (= lt!631498 (select (arr!47074 a!2831) j!81)))))

(declare-fun b!1434611 () Bool)

(assert (=> b!1434611 (= e!809712 (MissingZero!11375 (index!47893 lt!631496)))))

(declare-fun b!1434610 () Bool)

(assert (=> b!1434610 (= e!809710 Undefined!11375)))

(declare-fun d!154175 () Bool)

(declare-fun lt!631497 () SeekEntryResult!11375)

(assert (=> d!154175 (and (or (is-Undefined!11375 lt!631497) (not (is-Found!11375 lt!631497)) (and (bvsge (index!47892 lt!631497) #b00000000000000000000000000000000) (bvslt (index!47892 lt!631497) (size!47625 a!2831)))) (or (is-Undefined!11375 lt!631497) (is-Found!11375 lt!631497) (not (is-MissingZero!11375 lt!631497)) (and (bvsge (index!47891 lt!631497) #b00000000000000000000000000000000) (bvslt (index!47891 lt!631497) (size!47625 a!2831)))) (or (is-Undefined!11375 lt!631497) (is-Found!11375 lt!631497) (is-MissingZero!11375 lt!631497) (not (is-MissingVacant!11375 lt!631497)) (and (bvsge (index!47894 lt!631497) #b00000000000000000000000000000000) (bvslt (index!47894 lt!631497) (size!47625 a!2831)))) (or (is-Undefined!11375 lt!631497) (ite (is-Found!11375 lt!631497) (= (select (arr!47074 a!2831) (index!47892 lt!631497)) (select (arr!47074 a!2831) j!81)) (ite (is-MissingZero!11375 lt!631497) (= (select (arr!47074 a!2831) (index!47891 lt!631497)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11375 lt!631497) (= (select (arr!47074 a!2831) (index!47894 lt!631497)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154175 (= lt!631497 e!809710)))

(declare-fun c!132806 () Bool)

(assert (=> d!154175 (= c!132806 (and (is-Intermediate!11375 lt!631496) (undefined!12187 lt!631496)))))

(assert (=> d!154175 (= lt!631496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) (select (arr!47074 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154175 (validMask!0 mask!2608)))

(assert (=> d!154175 (= (seekEntryOrOpen!0 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631497)))

(assert (= (and d!154175 c!132806) b!1434610))

(assert (= (and d!154175 (not c!132806)) b!1434609))

(assert (= (and b!1434609 c!132805) b!1434606))

(assert (= (and b!1434609 (not c!132805)) b!1434607))

(assert (= (and b!1434607 c!132807) b!1434611))

(assert (= (and b!1434607 (not c!132807)) b!1434608))

(assert (=> b!1434608 m!1323917))

(declare-fun m!1324193 () Bool)

(assert (=> b!1434608 m!1324193))

(declare-fun m!1324195 () Bool)

(assert (=> b!1434609 m!1324195))

(assert (=> d!154175 m!1323943))

(assert (=> d!154175 m!1323939))

(assert (=> d!154175 m!1323917))

(assert (=> d!154175 m!1323941))

(assert (=> d!154175 m!1323917))

(assert (=> d!154175 m!1323939))

(declare-fun m!1324197 () Bool)

(assert (=> d!154175 m!1324197))

(declare-fun m!1324199 () Bool)

(assert (=> d!154175 m!1324199))

(declare-fun m!1324201 () Bool)

(assert (=> d!154175 m!1324201))

(assert (=> b!1434252 d!154175))

(declare-fun b!1434612 () Bool)

(declare-fun lt!631500 () SeekEntryResult!11375)

(assert (=> b!1434612 (and (bvsge (index!47893 lt!631500) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631500) (size!47625 a!2831)))))

(declare-fun res!968006 () Bool)

(assert (=> b!1434612 (= res!968006 (= (select (arr!47074 a!2831) (index!47893 lt!631500)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809716 () Bool)

(assert (=> b!1434612 (=> res!968006 e!809716)))

(declare-fun b!1434613 () Bool)

(declare-fun e!809717 () SeekEntryResult!11375)

(assert (=> b!1434613 (= e!809717 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47074 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434614 () Bool)

(declare-fun e!809715 () Bool)

(declare-fun e!809714 () Bool)

(assert (=> b!1434614 (= e!809715 e!809714)))

(declare-fun res!968005 () Bool)

(assert (=> b!1434614 (= res!968005 (and (is-Intermediate!11375 lt!631500) (not (undefined!12187 lt!631500)) (bvslt (x!129550 lt!631500) #b01111111111111111111111111111110) (bvsge (x!129550 lt!631500) #b00000000000000000000000000000000) (bvsge (x!129550 lt!631500) #b00000000000000000000000000000000)))))

(assert (=> b!1434614 (=> (not res!968005) (not e!809714))))

(declare-fun b!1434616 () Bool)

(assert (=> b!1434616 (= e!809715 (bvsge (x!129550 lt!631500) #b01111111111111111111111111111110))))

(declare-fun b!1434617 () Bool)

(declare-fun e!809713 () SeekEntryResult!11375)

(assert (=> b!1434617 (= e!809713 e!809717)))

(declare-fun c!132810 () Bool)

(declare-fun lt!631499 () (_ BitVec 64))

(assert (=> b!1434617 (= c!132810 (or (= lt!631499 (select (arr!47074 a!2831) j!81)) (= (bvadd lt!631499 lt!631499) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434618 () Bool)

(assert (=> b!1434618 (and (bvsge (index!47893 lt!631500) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631500) (size!47625 a!2831)))))

(declare-fun res!968004 () Bool)

(assert (=> b!1434618 (= res!968004 (= (select (arr!47074 a!2831) (index!47893 lt!631500)) (select (arr!47074 a!2831) j!81)))))

(assert (=> b!1434618 (=> res!968004 e!809716)))

(assert (=> b!1434618 (= e!809714 e!809716)))

(declare-fun b!1434619 () Bool)

(assert (=> b!1434619 (= e!809717 (Intermediate!11375 false (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434620 () Bool)

(assert (=> b!1434620 (= e!809713 (Intermediate!11375 true (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434615 () Bool)

(assert (=> b!1434615 (and (bvsge (index!47893 lt!631500) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631500) (size!47625 a!2831)))))

(assert (=> b!1434615 (= e!809716 (= (select (arr!47074 a!2831) (index!47893 lt!631500)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154189 () Bool)

(assert (=> d!154189 e!809715))

(declare-fun c!132809 () Bool)

(assert (=> d!154189 (= c!132809 (and (is-Intermediate!11375 lt!631500) (undefined!12187 lt!631500)))))

(assert (=> d!154189 (= lt!631500 e!809713)))

(declare-fun c!132808 () Bool)

(assert (=> d!154189 (= c!132808 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154189 (= lt!631499 (select (arr!47074 a!2831) (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608)))))

(assert (=> d!154189 (validMask!0 mask!2608)))

(assert (=> d!154189 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631500)))

(assert (= (and d!154189 c!132808) b!1434620))

(assert (= (and d!154189 (not c!132808)) b!1434617))

(assert (= (and b!1434617 c!132810) b!1434619))

(assert (= (and b!1434617 (not c!132810)) b!1434613))

(assert (= (and d!154189 c!132809) b!1434616))

(assert (= (and d!154189 (not c!132809)) b!1434614))

(assert (= (and b!1434614 res!968005) b!1434618))

(assert (= (and b!1434618 (not res!968004)) b!1434612))

(assert (= (and b!1434612 (not res!968006)) b!1434615))

(declare-fun m!1324203 () Bool)

(assert (=> b!1434618 m!1324203))

(assert (=> b!1434615 m!1324203))

(assert (=> d!154189 m!1323939))

(declare-fun m!1324205 () Bool)

(assert (=> d!154189 m!1324205))

(assert (=> d!154189 m!1323943))

(assert (=> b!1434612 m!1324203))

(assert (=> b!1434613 m!1323939))

(declare-fun m!1324207 () Bool)

(assert (=> b!1434613 m!1324207))

(assert (=> b!1434613 m!1324207))

(assert (=> b!1434613 m!1323917))

(declare-fun m!1324209 () Bool)

(assert (=> b!1434613 m!1324209))

(assert (=> b!1434241 d!154189))

(declare-fun d!154191 () Bool)

(declare-fun lt!631502 () (_ BitVec 32))

(declare-fun lt!631501 () (_ BitVec 32))

(assert (=> d!154191 (= lt!631502 (bvmul (bvxor lt!631501 (bvlshr lt!631501 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154191 (= lt!631501 ((_ extract 31 0) (bvand (bvxor (select (arr!47074 a!2831) j!81) (bvlshr (select (arr!47074 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154191 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967969 (let ((h!35093 ((_ extract 31 0) (bvand (bvxor (select (arr!47074 a!2831) j!81) (bvlshr (select (arr!47074 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129558 (bvmul (bvxor h!35093 (bvlshr h!35093 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129558 (bvlshr x!129558 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967969 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967969 #b00000000000000000000000000000000))))))

(assert (=> d!154191 (= (toIndex!0 (select (arr!47074 a!2831) j!81) mask!2608) (bvand (bvxor lt!631502 (bvlshr lt!631502 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434241 d!154191))

(declare-fun b!1434621 () Bool)

(declare-fun lt!631504 () SeekEntryResult!11375)

(assert (=> b!1434621 (and (bvsge (index!47893 lt!631504) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631504) (size!47625 a!2831)))))

(declare-fun res!968009 () Bool)

(assert (=> b!1434621 (= res!968009 (= (select (arr!47074 a!2831) (index!47893 lt!631504)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809721 () Bool)

(assert (=> b!1434621 (=> res!968009 e!809721)))

(declare-fun b!1434622 () Bool)

(declare-fun e!809722 () SeekEntryResult!11375)

(assert (=> b!1434622 (= e!809722 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47074 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434623 () Bool)

(declare-fun e!809720 () Bool)

(declare-fun e!809719 () Bool)

(assert (=> b!1434623 (= e!809720 e!809719)))

(declare-fun res!968008 () Bool)

(assert (=> b!1434623 (= res!968008 (and (is-Intermediate!11375 lt!631504) (not (undefined!12187 lt!631504)) (bvslt (x!129550 lt!631504) #b01111111111111111111111111111110) (bvsge (x!129550 lt!631504) #b00000000000000000000000000000000) (bvsge (x!129550 lt!631504) x!605)))))

(assert (=> b!1434623 (=> (not res!968008) (not e!809719))))

(declare-fun b!1434625 () Bool)

(assert (=> b!1434625 (= e!809720 (bvsge (x!129550 lt!631504) #b01111111111111111111111111111110))))

(declare-fun b!1434626 () Bool)

(declare-fun e!809718 () SeekEntryResult!11375)

(assert (=> b!1434626 (= e!809718 e!809722)))

(declare-fun c!132813 () Bool)

(declare-fun lt!631503 () (_ BitVec 64))

(assert (=> b!1434626 (= c!132813 (or (= lt!631503 (select (arr!47074 a!2831) j!81)) (= (bvadd lt!631503 lt!631503) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434627 () Bool)

(assert (=> b!1434627 (and (bvsge (index!47893 lt!631504) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631504) (size!47625 a!2831)))))

(declare-fun res!968007 () Bool)

(assert (=> b!1434627 (= res!968007 (= (select (arr!47074 a!2831) (index!47893 lt!631504)) (select (arr!47074 a!2831) j!81)))))

(assert (=> b!1434627 (=> res!968007 e!809721)))

(assert (=> b!1434627 (= e!809719 e!809721)))

(declare-fun b!1434628 () Bool)

(assert (=> b!1434628 (= e!809722 (Intermediate!11375 false index!585 x!605))))

(declare-fun b!1434629 () Bool)

(assert (=> b!1434629 (= e!809718 (Intermediate!11375 true index!585 x!605))))

(declare-fun b!1434624 () Bool)

(assert (=> b!1434624 (and (bvsge (index!47893 lt!631504) #b00000000000000000000000000000000) (bvslt (index!47893 lt!631504) (size!47625 a!2831)))))

(assert (=> b!1434624 (= e!809721 (= (select (arr!47074 a!2831) (index!47893 lt!631504)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!154193 () Bool)

(assert (=> d!154193 e!809720))

(declare-fun c!132812 () Bool)

(assert (=> d!154193 (= c!132812 (and (is-Intermediate!11375 lt!631504) (undefined!12187 lt!631504)))))

(assert (=> d!154193 (= lt!631504 e!809718)))

(declare-fun c!132811 () Bool)

(assert (=> d!154193 (= c!132811 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154193 (= lt!631503 (select (arr!47074 a!2831) index!585))))

(assert (=> d!154193 (validMask!0 mask!2608)))

(assert (=> d!154193 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) lt!631504)))

(assert (= (and d!154193 c!132811) b!1434629))

(assert (= (and d!154193 (not c!132811)) b!1434626))

(assert (= (and b!1434626 c!132813) b!1434628))

(assert (= (and b!1434626 (not c!132813)) b!1434622))

(assert (= (and d!154193 c!132812) b!1434625))

(assert (= (and d!154193 (not c!132812)) b!1434623))

(assert (= (and b!1434623 res!968008) b!1434627))

(assert (= (and b!1434627 (not res!968007)) b!1434621))

(assert (= (and b!1434621 (not res!968009)) b!1434624))

(declare-fun m!1324211 () Bool)

(assert (=> b!1434627 m!1324211))

(assert (=> b!1434624 m!1324211))

(assert (=> d!154193 m!1323931))

(assert (=> d!154193 m!1323943))

(assert (=> b!1434621 m!1324211))

(assert (=> b!1434622 m!1323937))

(assert (=> b!1434622 m!1323937))

(assert (=> b!1434622 m!1323917))

(declare-fun m!1324213 () Bool)

(assert (=> b!1434622 m!1324213))

(assert (=> b!1434251 d!154193))

(declare-fun b!1434638 () Bool)

(declare-fun e!809730 () Bool)

(declare-fun e!809731 () Bool)

(assert (=> b!1434638 (= e!809730 e!809731)))

(declare-fun c!132816 () Bool)

(assert (=> b!1434638 (= c!132816 (validKeyInArray!0 (select (arr!47074 a!2831) j!81)))))

(declare-fun b!1434639 () Bool)

(declare-fun e!809729 () Bool)

(assert (=> b!1434639 (= e!809731 e!809729)))

(declare-fun lt!631511 () (_ BitVec 64))

(assert (=> b!1434639 (= lt!631511 (select (arr!47074 a!2831) j!81))))

(declare-fun lt!631513 () Unit!48444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97548 (_ BitVec 64) (_ BitVec 32)) Unit!48444)

(assert (=> b!1434639 (= lt!631513 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631511 j!81))))

(declare-fun arrayContainsKey!0 (array!97548 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1434639 (arrayContainsKey!0 a!2831 lt!631511 #b00000000000000000000000000000000)))

(declare-fun lt!631512 () Unit!48444)

(assert (=> b!1434639 (= lt!631512 lt!631513)))

(declare-fun res!968014 () Bool)

(assert (=> b!1434639 (= res!968014 (= (seekEntryOrOpen!0 (select (arr!47074 a!2831) j!81) a!2831 mask!2608) (Found!11375 j!81)))))

(assert (=> b!1434639 (=> (not res!968014) (not e!809729))))

(declare-fun d!154195 () Bool)

(declare-fun res!968015 () Bool)

(assert (=> d!154195 (=> res!968015 e!809730)))

(assert (=> d!154195 (= res!968015 (bvsge j!81 (size!47625 a!2831)))))

(assert (=> d!154195 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809730)))

(declare-fun b!1434640 () Bool)

(declare-fun call!67534 () Bool)

(assert (=> b!1434640 (= e!809729 call!67534)))

(declare-fun bm!67531 () Bool)

(assert (=> bm!67531 (= call!67534 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1434641 () Bool)

(assert (=> b!1434641 (= e!809731 call!67534)))

(assert (= (and d!154195 (not res!968015)) b!1434638))

(assert (= (and b!1434638 c!132816) b!1434639))

(assert (= (and b!1434638 (not c!132816)) b!1434641))

(assert (= (and b!1434639 res!968014) b!1434640))

(assert (= (or b!1434640 b!1434641) bm!67531))

(assert (=> b!1434638 m!1323917))

(assert (=> b!1434638 m!1323917))

(assert (=> b!1434638 m!1323947))

(assert (=> b!1434639 m!1323917))

(declare-fun m!1324215 () Bool)

(assert (=> b!1434639 m!1324215))

(declare-fun m!1324217 () Bool)

(assert (=> b!1434639 m!1324217))

(assert (=> b!1434639 m!1323917))

(assert (=> b!1434639 m!1323925))

(declare-fun m!1324219 () Bool)

(assert (=> bm!67531 m!1324219))

(assert (=> b!1434240 d!154195))

(declare-fun d!154201 () Bool)

(assert (=> d!154201 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631516 () Unit!48444)

(declare-fun choose!38 (array!97548 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48444)

(assert (=> d!154201 (= lt!631516 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154201 (validMask!0 mask!2608)))

(assert (=> d!154201 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631516)))

(declare-fun bs!41759 () Bool)

(assert (= bs!41759 d!154201))

(assert (=> bs!41759 m!1323933))

(declare-fun m!1324221 () Bool)

(assert (=> bs!41759 m!1324221))

(assert (=> bs!41759 m!1323943))

(assert (=> b!1434240 d!154201))

(declare-fun d!154203 () Bool)

(assert (=> d!154203 (= (validKeyInArray!0 (select (arr!47074 a!2831) j!81)) (and (not (= (select (arr!47074 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47074 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434239 d!154203))

(declare-fun d!154205 () Bool)

(assert (=> d!154205 (= (validKeyInArray!0 (select (arr!47074 a!2831) i!982)) (and (not (= (select (arr!47074 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47074 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434247 d!154205))

(declare-fun b!1434650 () Bool)

(declare-fun e!809739 () Bool)

(declare-fun e!809740 () Bool)

(assert (=> b!1434650 (= e!809739 e!809740)))

(declare-fun c!132819 () Bool)

(assert (=> b!1434650 (= c!132819 (validKeyInArray!0 (select (arr!47074 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434651 () Bool)

(declare-fun e!809738 () Bool)

(assert (=> b!1434651 (= e!809740 e!809738)))

(declare-fun lt!631523 () (_ BitVec 64))

(assert (=> b!1434651 (= lt!631523 (select (arr!47074 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631525 () Unit!48444)

(assert (=> b!1434651 (= lt!631525 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631523 #b00000000000000000000000000000000))))

(assert (=> b!1434651 (arrayContainsKey!0 a!2831 lt!631523 #b00000000000000000000000000000000)))

(declare-fun lt!631524 () Unit!48444)

(assert (=> b!1434651 (= lt!631524 lt!631525)))

(declare-fun res!968020 () Bool)

(assert (=> b!1434651 (= res!968020 (= (seekEntryOrOpen!0 (select (arr!47074 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11375 #b00000000000000000000000000000000)))))

(assert (=> b!1434651 (=> (not res!968020) (not e!809738))))

(declare-fun d!154207 () Bool)

(declare-fun res!968021 () Bool)

(assert (=> d!154207 (=> res!968021 e!809739)))

(assert (=> d!154207 (= res!968021 (bvsge #b00000000000000000000000000000000 (size!47625 a!2831)))))

(assert (=> d!154207 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809739)))

(declare-fun b!1434652 () Bool)

(declare-fun call!67537 () Bool)

(assert (=> b!1434652 (= e!809738 call!67537)))

(declare-fun bm!67534 () Bool)

(assert (=> bm!67534 (= call!67537 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1434653 () Bool)

(assert (=> b!1434653 (= e!809740 call!67537)))

(assert (= (and d!154207 (not res!968021)) b!1434650))

(assert (= (and b!1434650 c!132819) b!1434651))

(assert (= (and b!1434650 (not c!132819)) b!1434653))

(assert (= (and b!1434651 res!968020) b!1434652))

(assert (= (or b!1434652 b!1434653) bm!67534))

(assert (=> b!1434650 m!1324121))

(assert (=> b!1434650 m!1324121))

(assert (=> b!1434650 m!1324123))

(assert (=> b!1434651 m!1324121))

(declare-fun m!1324223 () Bool)

(assert (=> b!1434651 m!1324223))

(declare-fun m!1324225 () Bool)

(assert (=> b!1434651 m!1324225))

(assert (=> b!1434651 m!1324121))

(declare-fun m!1324227 () Bool)

(assert (=> b!1434651 m!1324227))

(declare-fun m!1324229 () Bool)

(assert (=> bm!67534 m!1324229))

(assert (=> b!1434246 d!154207))

(push 1)

(assert (not b!1434650))

(assert (not b!1434485))

(assert (not b!1434475))

(assert (not bm!67531))

(assert (not b!1434639))

(assert (not b!1434478))

(assert (not b!1434439))

(assert (not d!154175))

(assert (not b!1434622))

(assert (not b!1434638))

(assert (not b!1434613))

(assert (not b!1434517))

(assert (not b!1434651))

(assert (not d!154165))

(assert (not d!154133))

(assert (not d!154189))

(assert (not d!154201))

(assert (not b!1434608))

(assert (not d!154193))

(assert (not d!154157))

(assert (not b!1434477))

(assert (not bm!67525))

(assert (not bm!67534))

(assert (not d!154159))

(check-sat)

