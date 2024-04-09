; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122992 () Bool)

(assert start!122992)

(declare-fun b!1426223 () Bool)

(declare-fun res!961768 () Bool)

(declare-fun e!805643 () Bool)

(assert (=> b!1426223 (=> (not res!961768) (not e!805643))))

(declare-datatypes ((array!97275 0))(
  ( (array!97276 (arr!46951 (Array (_ BitVec 32) (_ BitVec 64))) (size!47502 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97275)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97275 (_ BitVec 32)) Bool)

(assert (=> b!1426223 (= res!961768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426224 () Bool)

(declare-fun res!961773 () Bool)

(assert (=> b!1426224 (=> (not res!961773) (not e!805643))))

(declare-datatypes ((List!33641 0))(
  ( (Nil!33638) (Cons!33637 (h!34939 (_ BitVec 64)) (t!48342 List!33641)) )
))
(declare-fun arrayNoDuplicates!0 (array!97275 (_ BitVec 32) List!33641) Bool)

(assert (=> b!1426224 (= res!961773 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33638))))

(declare-fun res!961766 () Bool)

(assert (=> start!122992 (=> (not res!961766) (not e!805643))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122992 (= res!961766 (validMask!0 mask!2608))))

(assert (=> start!122992 e!805643))

(assert (=> start!122992 true))

(declare-fun array_inv!35896 (array!97275) Bool)

(assert (=> start!122992 (array_inv!35896 a!2831)))

(declare-fun b!1426225 () Bool)

(declare-fun res!961767 () Bool)

(assert (=> b!1426225 (=> (not res!961767) (not e!805643))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426225 (= res!961767 (validKeyInArray!0 (select (arr!46951 a!2831) j!81)))))

(declare-fun b!1426226 () Bool)

(declare-fun res!961769 () Bool)

(declare-fun e!805640 () Bool)

(assert (=> b!1426226 (=> (not res!961769) (not e!805640))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11252 0))(
  ( (MissingZero!11252 (index!47399 (_ BitVec 32))) (Found!11252 (index!47400 (_ BitVec 32))) (Intermediate!11252 (undefined!12064 Bool) (index!47401 (_ BitVec 32)) (x!129033 (_ BitVec 32))) (Undefined!11252) (MissingVacant!11252 (index!47402 (_ BitVec 32))) )
))
(declare-fun lt!628045 () SeekEntryResult!11252)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97275 (_ BitVec 32)) SeekEntryResult!11252)

(assert (=> b!1426226 (= res!961769 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46951 a!2831) j!81) a!2831 mask!2608) lt!628045))))

(declare-fun b!1426227 () Bool)

(declare-fun e!805642 () Bool)

(assert (=> b!1426227 (= e!805642 e!805640)))

(declare-fun res!961775 () Bool)

(assert (=> b!1426227 (=> (not res!961775) (not e!805640))))

(declare-fun lt!628047 () array!97275)

(declare-fun lt!628044 () (_ BitVec 64))

(declare-fun lt!628046 () SeekEntryResult!11252)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426227 (= res!961775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628044 mask!2608) lt!628044 lt!628047 mask!2608) lt!628046))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426227 (= lt!628046 (Intermediate!11252 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426227 (= lt!628044 (select (store (arr!46951 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426227 (= lt!628047 (array!97276 (store (arr!46951 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47502 a!2831)))))

(declare-fun b!1426228 () Bool)

(declare-fun res!961776 () Bool)

(assert (=> b!1426228 (=> (not res!961776) (not e!805643))))

(assert (=> b!1426228 (= res!961776 (and (= (size!47502 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47502 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47502 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426229 () Bool)

(declare-fun res!961772 () Bool)

(assert (=> b!1426229 (=> (not res!961772) (not e!805640))))

(assert (=> b!1426229 (= res!961772 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628044 lt!628047 mask!2608) lt!628046))))

(declare-fun b!1426230 () Bool)

(declare-fun res!961774 () Bool)

(assert (=> b!1426230 (=> (not res!961774) (not e!805640))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1426230 (= res!961774 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426231 () Bool)

(assert (=> b!1426231 (= e!805643 e!805642)))

(declare-fun res!961765 () Bool)

(assert (=> b!1426231 (=> (not res!961765) (not e!805642))))

(assert (=> b!1426231 (= res!961765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) (select (arr!46951 a!2831) j!81) a!2831 mask!2608) lt!628045))))

(assert (=> b!1426231 (= lt!628045 (Intermediate!11252 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426232 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97275 (_ BitVec 32)) SeekEntryResult!11252)

(assert (=> b!1426232 (= e!805640 (not (= (seekEntryOrOpen!0 (select (arr!46951 a!2831) j!81) a!2831 mask!2608) (Found!11252 j!81))))))

(assert (=> b!1426232 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48198 0))(
  ( (Unit!48199) )
))
(declare-fun lt!628048 () Unit!48198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48198)

(assert (=> b!1426232 (= lt!628048 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426233 () Bool)

(declare-fun res!961771 () Bool)

(assert (=> b!1426233 (=> (not res!961771) (not e!805643))))

(assert (=> b!1426233 (= res!961771 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47502 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47502 a!2831))))))

(declare-fun b!1426234 () Bool)

(declare-fun res!961770 () Bool)

(assert (=> b!1426234 (=> (not res!961770) (not e!805643))))

(assert (=> b!1426234 (= res!961770 (validKeyInArray!0 (select (arr!46951 a!2831) i!982)))))

(assert (= (and start!122992 res!961766) b!1426228))

(assert (= (and b!1426228 res!961776) b!1426234))

(assert (= (and b!1426234 res!961770) b!1426225))

(assert (= (and b!1426225 res!961767) b!1426223))

(assert (= (and b!1426223 res!961768) b!1426224))

(assert (= (and b!1426224 res!961773) b!1426233))

(assert (= (and b!1426233 res!961771) b!1426231))

(assert (= (and b!1426231 res!961765) b!1426227))

(assert (= (and b!1426227 res!961775) b!1426226))

(assert (= (and b!1426226 res!961769) b!1426229))

(assert (= (and b!1426229 res!961772) b!1426230))

(assert (= (and b!1426230 res!961774) b!1426232))

(declare-fun m!1316891 () Bool)

(assert (=> b!1426234 m!1316891))

(assert (=> b!1426234 m!1316891))

(declare-fun m!1316893 () Bool)

(assert (=> b!1426234 m!1316893))

(declare-fun m!1316895 () Bool)

(assert (=> b!1426224 m!1316895))

(declare-fun m!1316897 () Bool)

(assert (=> b!1426223 m!1316897))

(declare-fun m!1316899 () Bool)

(assert (=> b!1426231 m!1316899))

(assert (=> b!1426231 m!1316899))

(declare-fun m!1316901 () Bool)

(assert (=> b!1426231 m!1316901))

(assert (=> b!1426231 m!1316901))

(assert (=> b!1426231 m!1316899))

(declare-fun m!1316903 () Bool)

(assert (=> b!1426231 m!1316903))

(assert (=> b!1426226 m!1316899))

(assert (=> b!1426226 m!1316899))

(declare-fun m!1316905 () Bool)

(assert (=> b!1426226 m!1316905))

(assert (=> b!1426232 m!1316899))

(assert (=> b!1426232 m!1316899))

(declare-fun m!1316907 () Bool)

(assert (=> b!1426232 m!1316907))

(declare-fun m!1316909 () Bool)

(assert (=> b!1426232 m!1316909))

(declare-fun m!1316911 () Bool)

(assert (=> b!1426232 m!1316911))

(declare-fun m!1316913 () Bool)

(assert (=> b!1426229 m!1316913))

(declare-fun m!1316915 () Bool)

(assert (=> b!1426227 m!1316915))

(assert (=> b!1426227 m!1316915))

(declare-fun m!1316917 () Bool)

(assert (=> b!1426227 m!1316917))

(declare-fun m!1316919 () Bool)

(assert (=> b!1426227 m!1316919))

(declare-fun m!1316921 () Bool)

(assert (=> b!1426227 m!1316921))

(assert (=> b!1426225 m!1316899))

(assert (=> b!1426225 m!1316899))

(declare-fun m!1316923 () Bool)

(assert (=> b!1426225 m!1316923))

(declare-fun m!1316925 () Bool)

(assert (=> start!122992 m!1316925))

(declare-fun m!1316927 () Bool)

(assert (=> start!122992 m!1316927))

(push 1)

(assert (not b!1426232))

(assert (not b!1426227))

(assert (not b!1426226))

(assert (not start!122992))

(assert (not b!1426231))

(assert (not b!1426224))

(assert (not b!1426229))

(assert (not b!1426223))

(assert (not b!1426234))

(assert (not b!1426225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!153109 () Bool)

(assert (=> d!153109 (= (validKeyInArray!0 (select (arr!46951 a!2831) i!982)) (and (not (= (select (arr!46951 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46951 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426234 d!153109))

(declare-fun b!1426357 () Bool)

(declare-fun e!805703 () Bool)

(declare-fun call!67326 () Bool)

(assert (=> b!1426357 (= e!805703 call!67326)))

(declare-fun b!1426358 () Bool)

(declare-fun e!805702 () Bool)

(assert (=> b!1426358 (= e!805702 call!67326)))

(declare-fun bm!67323 () Bool)

(assert (=> bm!67323 (= call!67326 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1426359 () Bool)

(assert (=> b!1426359 (= e!805702 e!805703)))

(declare-fun lt!628092 () (_ BitVec 64))

(assert (=> b!1426359 (= lt!628092 (select (arr!46951 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628091 () Unit!48198)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97275 (_ BitVec 64) (_ BitVec 32)) Unit!48198)

(assert (=> b!1426359 (= lt!628091 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628092 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1426359 (arrayContainsKey!0 a!2831 lt!628092 #b00000000000000000000000000000000)))

(declare-fun lt!628093 () Unit!48198)

(assert (=> b!1426359 (= lt!628093 lt!628091)))

(declare-fun res!961871 () Bool)

(assert (=> b!1426359 (= res!961871 (= (seekEntryOrOpen!0 (select (arr!46951 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11252 #b00000000000000000000000000000000)))))

(assert (=> b!1426359 (=> (not res!961871) (not e!805703))))

(declare-fun b!1426360 () Bool)

(declare-fun e!805701 () Bool)

(assert (=> b!1426360 (= e!805701 e!805702)))

(declare-fun c!131732 () Bool)

(assert (=> b!1426360 (= c!131732 (validKeyInArray!0 (select (arr!46951 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153113 () Bool)

(declare-fun res!961872 () Bool)

(assert (=> d!153113 (=> res!961872 e!805701)))

(assert (=> d!153113 (= res!961872 (bvsge #b00000000000000000000000000000000 (size!47502 a!2831)))))

(assert (=> d!153113 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!805701)))

(assert (= (and d!153113 (not res!961872)) b!1426360))

(assert (= (and b!1426360 c!131732) b!1426359))

(assert (= (and b!1426360 (not c!131732)) b!1426358))

(assert (= (and b!1426359 res!961871) b!1426357))

(assert (= (or b!1426357 b!1426358) bm!67323))

(declare-fun m!1317021 () Bool)

(assert (=> bm!67323 m!1317021))

(declare-fun m!1317023 () Bool)

(assert (=> b!1426359 m!1317023))

(declare-fun m!1317025 () Bool)

(assert (=> b!1426359 m!1317025))

(declare-fun m!1317027 () Bool)

(assert (=> b!1426359 m!1317027))

(assert (=> b!1426359 m!1317023))

(declare-fun m!1317029 () Bool)

(assert (=> b!1426359 m!1317029))

(assert (=> b!1426360 m!1317023))

(assert (=> b!1426360 m!1317023))

(declare-fun m!1317031 () Bool)

(assert (=> b!1426360 m!1317031))

(assert (=> b!1426223 d!153113))

(declare-fun b!1426397 () Bool)

(declare-fun e!805730 () Bool)

(declare-fun call!67331 () Bool)

(assert (=> b!1426397 (= e!805730 call!67331)))

(declare-fun d!153117 () Bool)

(declare-fun res!961890 () Bool)

(declare-fun e!805729 () Bool)

(assert (=> d!153117 (=> res!961890 e!805729)))

(assert (=> d!153117 (= res!961890 (bvsge #b00000000000000000000000000000000 (size!47502 a!2831)))))

(assert (=> d!153117 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33638) e!805729)))

(declare-fun b!1426398 () Bool)

(declare-fun e!805728 () Bool)

(assert (=> b!1426398 (= e!805728 e!805730)))

(declare-fun c!131743 () Bool)

(assert (=> b!1426398 (= c!131743 (validKeyInArray!0 (select (arr!46951 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1426399 () Bool)

(assert (=> b!1426399 (= e!805730 call!67331)))

(declare-fun b!1426400 () Bool)

(declare-fun e!805731 () Bool)

(declare-fun contains!9858 (List!33641 (_ BitVec 64)) Bool)

(assert (=> b!1426400 (= e!805731 (contains!9858 Nil!33638 (select (arr!46951 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67328 () Bool)

(assert (=> bm!67328 (= call!67331 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131743 (Cons!33637 (select (arr!46951 a!2831) #b00000000000000000000000000000000) Nil!33638) Nil!33638)))))

(declare-fun b!1426401 () Bool)

(assert (=> b!1426401 (= e!805729 e!805728)))

(declare-fun res!961889 () Bool)

(assert (=> b!1426401 (=> (not res!961889) (not e!805728))))

(assert (=> b!1426401 (= res!961889 (not e!805731))))

(declare-fun res!961891 () Bool)

(assert (=> b!1426401 (=> (not res!961891) (not e!805731))))

(assert (=> b!1426401 (= res!961891 (validKeyInArray!0 (select (arr!46951 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153117 (not res!961890)) b!1426401))

(assert (= (and b!1426401 res!961891) b!1426400))

(assert (= (and b!1426401 res!961889) b!1426398))

(assert (= (and b!1426398 c!131743) b!1426397))

(assert (= (and b!1426398 (not c!131743)) b!1426399))

(assert (= (or b!1426397 b!1426399) bm!67328))

(assert (=> b!1426398 m!1317023))

(assert (=> b!1426398 m!1317023))

(assert (=> b!1426398 m!1317031))

(assert (=> b!1426400 m!1317023))

(assert (=> b!1426400 m!1317023))

(declare-fun m!1317033 () Bool)

(assert (=> b!1426400 m!1317033))

(assert (=> bm!67328 m!1317023))

(declare-fun m!1317035 () Bool)

(assert (=> bm!67328 m!1317035))

(assert (=> b!1426401 m!1317023))

(assert (=> b!1426401 m!1317023))

(assert (=> b!1426401 m!1317031))

(assert (=> b!1426224 d!153117))

(declare-fun d!153119 () Bool)

(declare-fun e!805786 () Bool)

(assert (=> d!153119 e!805786))

(declare-fun c!131772 () Bool)

(declare-fun lt!628134 () SeekEntryResult!11252)

(assert (=> d!153119 (= c!131772 (and (is-Intermediate!11252 lt!628134) (undefined!12064 lt!628134)))))

(declare-fun e!805783 () SeekEntryResult!11252)

(assert (=> d!153119 (= lt!628134 e!805783)))

(declare-fun c!131774 () Bool)

(assert (=> d!153119 (= c!131774 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628133 () (_ BitVec 64))

(assert (=> d!153119 (= lt!628133 (select (arr!46951 lt!628047) index!585))))

(assert (=> d!153119 (validMask!0 mask!2608)))

(assert (=> d!153119 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628044 lt!628047 mask!2608) lt!628134)))

(declare-fun b!1426487 () Bool)

(assert (=> b!1426487 (and (bvsge (index!47401 lt!628134) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628134) (size!47502 lt!628047)))))

(declare-fun res!961924 () Bool)

(assert (=> b!1426487 (= res!961924 (= (select (arr!46951 lt!628047) (index!47401 lt!628134)) lt!628044))))

(declare-fun e!805784 () Bool)

(assert (=> b!1426487 (=> res!961924 e!805784)))

(declare-fun e!805785 () Bool)

(assert (=> b!1426487 (= e!805785 e!805784)))

(declare-fun b!1426488 () Bool)

(assert (=> b!1426488 (and (bvsge (index!47401 lt!628134) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628134) (size!47502 lt!628047)))))

(assert (=> b!1426488 (= e!805784 (= (select (arr!46951 lt!628047) (index!47401 lt!628134)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426489 () Bool)

(assert (=> b!1426489 (= e!805786 e!805785)))

(declare-fun res!961923 () Bool)

(assert (=> b!1426489 (= res!961923 (and (is-Intermediate!11252 lt!628134) (not (undefined!12064 lt!628134)) (bvslt (x!129033 lt!628134) #b01111111111111111111111111111110) (bvsge (x!129033 lt!628134) #b00000000000000000000000000000000) (bvsge (x!129033 lt!628134) x!605)))))

(assert (=> b!1426489 (=> (not res!961923) (not e!805785))))

(declare-fun b!1426490 () Bool)

(declare-fun e!805787 () SeekEntryResult!11252)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426490 (= e!805787 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628044 lt!628047 mask!2608))))

(declare-fun b!1426491 () Bool)

(assert (=> b!1426491 (= e!805786 (bvsge (x!129033 lt!628134) #b01111111111111111111111111111110))))

(declare-fun b!1426492 () Bool)

(assert (=> b!1426492 (and (bvsge (index!47401 lt!628134) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628134) (size!47502 lt!628047)))))

(declare-fun res!961922 () Bool)

(assert (=> b!1426492 (= res!961922 (= (select (arr!46951 lt!628047) (index!47401 lt!628134)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426492 (=> res!961922 e!805784)))

(declare-fun b!1426493 () Bool)

(assert (=> b!1426493 (= e!805783 e!805787)))

(declare-fun c!131773 () Bool)

(assert (=> b!1426493 (= c!131773 (or (= lt!628133 lt!628044) (= (bvadd lt!628133 lt!628133) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426494 () Bool)

(assert (=> b!1426494 (= e!805783 (Intermediate!11252 true index!585 x!605))))

(declare-fun b!1426495 () Bool)

(assert (=> b!1426495 (= e!805787 (Intermediate!11252 false index!585 x!605))))

(assert (= (and d!153119 c!131774) b!1426494))

(assert (= (and d!153119 (not c!131774)) b!1426493))

(assert (= (and b!1426493 c!131773) b!1426495))

(assert (= (and b!1426493 (not c!131773)) b!1426490))

(assert (= (and d!153119 c!131772) b!1426491))

(assert (= (and d!153119 (not c!131772)) b!1426489))

(assert (= (and b!1426489 res!961923) b!1426487))

(assert (= (and b!1426487 (not res!961924)) b!1426492))

(assert (= (and b!1426492 (not res!961922)) b!1426488))

(declare-fun m!1317083 () Bool)

(assert (=> b!1426488 m!1317083))

(declare-fun m!1317085 () Bool)

(assert (=> d!153119 m!1317085))

(assert (=> d!153119 m!1316925))

(assert (=> b!1426487 m!1317083))

(assert (=> b!1426492 m!1317083))

(declare-fun m!1317087 () Bool)

(assert (=> b!1426490 m!1317087))

(assert (=> b!1426490 m!1317087))

(declare-fun m!1317089 () Bool)

(assert (=> b!1426490 m!1317089))

(assert (=> b!1426229 d!153119))

(declare-fun d!153141 () Bool)

(declare-fun e!805791 () Bool)

(assert (=> d!153141 e!805791))

(declare-fun c!131775 () Bool)

(declare-fun lt!628136 () SeekEntryResult!11252)

(assert (=> d!153141 (= c!131775 (and (is-Intermediate!11252 lt!628136) (undefined!12064 lt!628136)))))

(declare-fun e!805788 () SeekEntryResult!11252)

(assert (=> d!153141 (= lt!628136 e!805788)))

(declare-fun c!131777 () Bool)

(assert (=> d!153141 (= c!131777 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628135 () (_ BitVec 64))

(assert (=> d!153141 (= lt!628135 (select (arr!46951 lt!628047) (toIndex!0 lt!628044 mask!2608)))))

(assert (=> d!153141 (validMask!0 mask!2608)))

(assert (=> d!153141 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628044 mask!2608) lt!628044 lt!628047 mask!2608) lt!628136)))

(declare-fun b!1426496 () Bool)

(assert (=> b!1426496 (and (bvsge (index!47401 lt!628136) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628136) (size!47502 lt!628047)))))

(declare-fun res!961927 () Bool)

(assert (=> b!1426496 (= res!961927 (= (select (arr!46951 lt!628047) (index!47401 lt!628136)) lt!628044))))

(declare-fun e!805789 () Bool)

(assert (=> b!1426496 (=> res!961927 e!805789)))

(declare-fun e!805790 () Bool)

(assert (=> b!1426496 (= e!805790 e!805789)))

(declare-fun b!1426497 () Bool)

(assert (=> b!1426497 (and (bvsge (index!47401 lt!628136) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628136) (size!47502 lt!628047)))))

(assert (=> b!1426497 (= e!805789 (= (select (arr!46951 lt!628047) (index!47401 lt!628136)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426498 () Bool)

(assert (=> b!1426498 (= e!805791 e!805790)))

(declare-fun res!961926 () Bool)

(assert (=> b!1426498 (= res!961926 (and (is-Intermediate!11252 lt!628136) (not (undefined!12064 lt!628136)) (bvslt (x!129033 lt!628136) #b01111111111111111111111111111110) (bvsge (x!129033 lt!628136) #b00000000000000000000000000000000) (bvsge (x!129033 lt!628136) #b00000000000000000000000000000000)))))

(assert (=> b!1426498 (=> (not res!961926) (not e!805790))))

(declare-fun b!1426499 () Bool)

(declare-fun e!805792 () SeekEntryResult!11252)

(assert (=> b!1426499 (= e!805792 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628044 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628044 lt!628047 mask!2608))))

(declare-fun b!1426500 () Bool)

(assert (=> b!1426500 (= e!805791 (bvsge (x!129033 lt!628136) #b01111111111111111111111111111110))))

(declare-fun b!1426501 () Bool)

(assert (=> b!1426501 (and (bvsge (index!47401 lt!628136) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628136) (size!47502 lt!628047)))))

(declare-fun res!961925 () Bool)

(assert (=> b!1426501 (= res!961925 (= (select (arr!46951 lt!628047) (index!47401 lt!628136)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426501 (=> res!961925 e!805789)))

(declare-fun b!1426502 () Bool)

(assert (=> b!1426502 (= e!805788 e!805792)))

(declare-fun c!131776 () Bool)

(assert (=> b!1426502 (= c!131776 (or (= lt!628135 lt!628044) (= (bvadd lt!628135 lt!628135) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426503 () Bool)

(assert (=> b!1426503 (= e!805788 (Intermediate!11252 true (toIndex!0 lt!628044 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426504 () Bool)

(assert (=> b!1426504 (= e!805792 (Intermediate!11252 false (toIndex!0 lt!628044 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153141 c!131777) b!1426503))

(assert (= (and d!153141 (not c!131777)) b!1426502))

(assert (= (and b!1426502 c!131776) b!1426504))

(assert (= (and b!1426502 (not c!131776)) b!1426499))

(assert (= (and d!153141 c!131775) b!1426500))

(assert (= (and d!153141 (not c!131775)) b!1426498))

(assert (= (and b!1426498 res!961926) b!1426496))

(assert (= (and b!1426496 (not res!961927)) b!1426501))

(assert (= (and b!1426501 (not res!961925)) b!1426497))

(declare-fun m!1317091 () Bool)

(assert (=> b!1426497 m!1317091))

(assert (=> d!153141 m!1316915))

(declare-fun m!1317093 () Bool)

(assert (=> d!153141 m!1317093))

(assert (=> d!153141 m!1316925))

(assert (=> b!1426496 m!1317091))

(assert (=> b!1426501 m!1317091))

(assert (=> b!1426499 m!1316915))

(declare-fun m!1317095 () Bool)

(assert (=> b!1426499 m!1317095))

(assert (=> b!1426499 m!1317095))

(declare-fun m!1317097 () Bool)

(assert (=> b!1426499 m!1317097))

(assert (=> b!1426227 d!153141))

(declare-fun d!153143 () Bool)

(declare-fun lt!628148 () (_ BitVec 32))

(declare-fun lt!628147 () (_ BitVec 32))

(assert (=> d!153143 (= lt!628148 (bvmul (bvxor lt!628147 (bvlshr lt!628147 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153143 (= lt!628147 ((_ extract 31 0) (bvand (bvxor lt!628044 (bvlshr lt!628044 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153143 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!961928 (let ((h!34943 ((_ extract 31 0) (bvand (bvxor lt!628044 (bvlshr lt!628044 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129040 (bvmul (bvxor h!34943 (bvlshr h!34943 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129040 (bvlshr x!129040 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!961928 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!961928 #b00000000000000000000000000000000))))))

(assert (=> d!153143 (= (toIndex!0 lt!628044 mask!2608) (bvand (bvxor lt!628148 (bvlshr lt!628148 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426227 d!153143))

(declare-fun d!153149 () Bool)

(declare-fun e!805802 () Bool)

(assert (=> d!153149 e!805802))

(declare-fun c!131782 () Bool)

(declare-fun lt!628150 () SeekEntryResult!11252)

(assert (=> d!153149 (= c!131782 (and (is-Intermediate!11252 lt!628150) (undefined!12064 lt!628150)))))

(declare-fun e!805799 () SeekEntryResult!11252)

(assert (=> d!153149 (= lt!628150 e!805799)))

(declare-fun c!131784 () Bool)

(assert (=> d!153149 (= c!131784 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628149 () (_ BitVec 64))

(assert (=> d!153149 (= lt!628149 (select (arr!46951 a!2831) index!585))))

(assert (=> d!153149 (validMask!0 mask!2608)))

(assert (=> d!153149 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46951 a!2831) j!81) a!2831 mask!2608) lt!628150)))

(declare-fun b!1426515 () Bool)

(assert (=> b!1426515 (and (bvsge (index!47401 lt!628150) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628150) (size!47502 a!2831)))))

(declare-fun res!961933 () Bool)

(assert (=> b!1426515 (= res!961933 (= (select (arr!46951 a!2831) (index!47401 lt!628150)) (select (arr!46951 a!2831) j!81)))))

(declare-fun e!805800 () Bool)

(assert (=> b!1426515 (=> res!961933 e!805800)))

(declare-fun e!805801 () Bool)

(assert (=> b!1426515 (= e!805801 e!805800)))

(declare-fun b!1426516 () Bool)

(assert (=> b!1426516 (and (bvsge (index!47401 lt!628150) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628150) (size!47502 a!2831)))))

(assert (=> b!1426516 (= e!805800 (= (select (arr!46951 a!2831) (index!47401 lt!628150)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426517 () Bool)

(assert (=> b!1426517 (= e!805802 e!805801)))

(declare-fun res!961932 () Bool)

(assert (=> b!1426517 (= res!961932 (and (is-Intermediate!11252 lt!628150) (not (undefined!12064 lt!628150)) (bvslt (x!129033 lt!628150) #b01111111111111111111111111111110) (bvsge (x!129033 lt!628150) #b00000000000000000000000000000000) (bvsge (x!129033 lt!628150) x!605)))))

(assert (=> b!1426517 (=> (not res!961932) (not e!805801))))

(declare-fun b!1426518 () Bool)

(declare-fun e!805803 () SeekEntryResult!11252)

(assert (=> b!1426518 (= e!805803 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46951 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426519 () Bool)

(assert (=> b!1426519 (= e!805802 (bvsge (x!129033 lt!628150) #b01111111111111111111111111111110))))

(declare-fun b!1426520 () Bool)

(assert (=> b!1426520 (and (bvsge (index!47401 lt!628150) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628150) (size!47502 a!2831)))))

(declare-fun res!961931 () Bool)

(assert (=> b!1426520 (= res!961931 (= (select (arr!46951 a!2831) (index!47401 lt!628150)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426520 (=> res!961931 e!805800)))

(declare-fun b!1426521 () Bool)

(assert (=> b!1426521 (= e!805799 e!805803)))

(declare-fun c!131783 () Bool)

(assert (=> b!1426521 (= c!131783 (or (= lt!628149 (select (arr!46951 a!2831) j!81)) (= (bvadd lt!628149 lt!628149) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426522 () Bool)

(assert (=> b!1426522 (= e!805799 (Intermediate!11252 true index!585 x!605))))

(declare-fun b!1426523 () Bool)

(assert (=> b!1426523 (= e!805803 (Intermediate!11252 false index!585 x!605))))

(assert (= (and d!153149 c!131784) b!1426522))

(assert (= (and d!153149 (not c!131784)) b!1426521))

(assert (= (and b!1426521 c!131783) b!1426523))

(assert (= (and b!1426521 (not c!131783)) b!1426518))

(assert (= (and d!153149 c!131782) b!1426519))

(assert (= (and d!153149 (not c!131782)) b!1426517))

(assert (= (and b!1426517 res!961932) b!1426515))

(assert (= (and b!1426515 (not res!961933)) b!1426520))

(assert (= (and b!1426520 (not res!961931)) b!1426516))

(declare-fun m!1317115 () Bool)

(assert (=> b!1426516 m!1317115))

(declare-fun m!1317117 () Bool)

(assert (=> d!153149 m!1317117))

(assert (=> d!153149 m!1316925))

(assert (=> b!1426515 m!1317115))

(assert (=> b!1426520 m!1317115))

(assert (=> b!1426518 m!1317087))

(assert (=> b!1426518 m!1317087))

(assert (=> b!1426518 m!1316899))

(declare-fun m!1317121 () Bool)

(assert (=> b!1426518 m!1317121))

(assert (=> b!1426226 d!153149))

(declare-fun d!153153 () Bool)

(assert (=> d!153153 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122992 d!153153))

(declare-fun d!153171 () Bool)

(assert (=> d!153171 (= (array_inv!35896 a!2831) (bvsge (size!47502 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122992 d!153171))

(declare-fun d!153173 () Bool)

(declare-fun e!805828 () Bool)

(assert (=> d!153173 e!805828))

(declare-fun c!131796 () Bool)

(declare-fun lt!628175 () SeekEntryResult!11252)

(assert (=> d!153173 (= c!131796 (and (is-Intermediate!11252 lt!628175) (undefined!12064 lt!628175)))))

(declare-fun e!805825 () SeekEntryResult!11252)

(assert (=> d!153173 (= lt!628175 e!805825)))

(declare-fun c!131798 () Bool)

(assert (=> d!153173 (= c!131798 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628174 () (_ BitVec 64))

(assert (=> d!153173 (= lt!628174 (select (arr!46951 a!2831) (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608)))))

(assert (=> d!153173 (validMask!0 mask!2608)))

(assert (=> d!153173 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) (select (arr!46951 a!2831) j!81) a!2831 mask!2608) lt!628175)))

(declare-fun b!1426559 () Bool)

(assert (=> b!1426559 (and (bvsge (index!47401 lt!628175) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628175) (size!47502 a!2831)))))

(declare-fun res!961950 () Bool)

(assert (=> b!1426559 (= res!961950 (= (select (arr!46951 a!2831) (index!47401 lt!628175)) (select (arr!46951 a!2831) j!81)))))

(declare-fun e!805826 () Bool)

(assert (=> b!1426559 (=> res!961950 e!805826)))

(declare-fun e!805827 () Bool)

(assert (=> b!1426559 (= e!805827 e!805826)))

(declare-fun b!1426560 () Bool)

(assert (=> b!1426560 (and (bvsge (index!47401 lt!628175) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628175) (size!47502 a!2831)))))

(assert (=> b!1426560 (= e!805826 (= (select (arr!46951 a!2831) (index!47401 lt!628175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426561 () Bool)

(assert (=> b!1426561 (= e!805828 e!805827)))

(declare-fun res!961949 () Bool)

(assert (=> b!1426561 (= res!961949 (and (is-Intermediate!11252 lt!628175) (not (undefined!12064 lt!628175)) (bvslt (x!129033 lt!628175) #b01111111111111111111111111111110) (bvsge (x!129033 lt!628175) #b00000000000000000000000000000000) (bvsge (x!129033 lt!628175) #b00000000000000000000000000000000)))))

(assert (=> b!1426561 (=> (not res!961949) (not e!805827))))

(declare-fun b!1426562 () Bool)

(declare-fun e!805829 () SeekEntryResult!11252)

(assert (=> b!1426562 (= e!805829 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46951 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426563 () Bool)

(assert (=> b!1426563 (= e!805828 (bvsge (x!129033 lt!628175) #b01111111111111111111111111111110))))

(declare-fun b!1426564 () Bool)

(assert (=> b!1426564 (and (bvsge (index!47401 lt!628175) #b00000000000000000000000000000000) (bvslt (index!47401 lt!628175) (size!47502 a!2831)))))

(declare-fun res!961948 () Bool)

(assert (=> b!1426564 (= res!961948 (= (select (arr!46951 a!2831) (index!47401 lt!628175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426564 (=> res!961948 e!805826)))

(declare-fun b!1426565 () Bool)

(assert (=> b!1426565 (= e!805825 e!805829)))

(declare-fun c!131797 () Bool)

(assert (=> b!1426565 (= c!131797 (or (= lt!628174 (select (arr!46951 a!2831) j!81)) (= (bvadd lt!628174 lt!628174) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426566 () Bool)

(assert (=> b!1426566 (= e!805825 (Intermediate!11252 true (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426567 () Bool)

(assert (=> b!1426567 (= e!805829 (Intermediate!11252 false (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153173 c!131798) b!1426566))

(assert (= (and d!153173 (not c!131798)) b!1426565))

(assert (= (and b!1426565 c!131797) b!1426567))

(assert (= (and b!1426565 (not c!131797)) b!1426562))

(assert (= (and d!153173 c!131796) b!1426563))

(assert (= (and d!153173 (not c!131796)) b!1426561))

(assert (= (and b!1426561 res!961949) b!1426559))

(assert (= (and b!1426559 (not res!961950)) b!1426564))

(assert (= (and b!1426564 (not res!961948)) b!1426560))

(declare-fun m!1317145 () Bool)

(assert (=> b!1426560 m!1317145))

(assert (=> d!153173 m!1316901))

(declare-fun m!1317147 () Bool)

(assert (=> d!153173 m!1317147))

(assert (=> d!153173 m!1316925))

(assert (=> b!1426559 m!1317145))

(assert (=> b!1426564 m!1317145))

(assert (=> b!1426562 m!1316901))

(declare-fun m!1317149 () Bool)

(assert (=> b!1426562 m!1317149))

(assert (=> b!1426562 m!1317149))

(assert (=> b!1426562 m!1316899))

(declare-fun m!1317151 () Bool)

(assert (=> b!1426562 m!1317151))

(assert (=> b!1426231 d!153173))

(declare-fun d!153175 () Bool)

(declare-fun lt!628180 () (_ BitVec 32))

(declare-fun lt!628179 () (_ BitVec 32))

(assert (=> d!153175 (= lt!628180 (bvmul (bvxor lt!628179 (bvlshr lt!628179 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153175 (= lt!628179 ((_ extract 31 0) (bvand (bvxor (select (arr!46951 a!2831) j!81) (bvlshr (select (arr!46951 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153175 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!961928 (let ((h!34943 ((_ extract 31 0) (bvand (bvxor (select (arr!46951 a!2831) j!81) (bvlshr (select (arr!46951 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129040 (bvmul (bvxor h!34943 (bvlshr h!34943 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129040 (bvlshr x!129040 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!961928 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!961928 #b00000000000000000000000000000000))))))

(assert (=> d!153175 (= (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) (bvand (bvxor lt!628180 (bvlshr lt!628180 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426231 d!153175))

(declare-fun b!1426596 () Bool)

(declare-fun e!805845 () SeekEntryResult!11252)

(declare-fun e!805846 () SeekEntryResult!11252)

(assert (=> b!1426596 (= e!805845 e!805846)))

(declare-fun lt!628193 () (_ BitVec 64))

(declare-fun lt!628195 () SeekEntryResult!11252)

(assert (=> b!1426596 (= lt!628193 (select (arr!46951 a!2831) (index!47401 lt!628195)))))

(declare-fun c!131814 () Bool)

(assert (=> b!1426596 (= c!131814 (= lt!628193 (select (arr!46951 a!2831) j!81)))))

(declare-fun b!1426597 () Bool)

(assert (=> b!1426597 (= e!805846 (Found!11252 (index!47401 lt!628195)))))

(declare-fun d!153179 () Bool)

(declare-fun lt!628194 () SeekEntryResult!11252)

(assert (=> d!153179 (and (or (is-Undefined!11252 lt!628194) (not (is-Found!11252 lt!628194)) (and (bvsge (index!47400 lt!628194) #b00000000000000000000000000000000) (bvslt (index!47400 lt!628194) (size!47502 a!2831)))) (or (is-Undefined!11252 lt!628194) (is-Found!11252 lt!628194) (not (is-MissingZero!11252 lt!628194)) (and (bvsge (index!47399 lt!628194) #b00000000000000000000000000000000) (bvslt (index!47399 lt!628194) (size!47502 a!2831)))) (or (is-Undefined!11252 lt!628194) (is-Found!11252 lt!628194) (is-MissingZero!11252 lt!628194) (not (is-MissingVacant!11252 lt!628194)) (and (bvsge (index!47402 lt!628194) #b00000000000000000000000000000000) (bvslt (index!47402 lt!628194) (size!47502 a!2831)))) (or (is-Undefined!11252 lt!628194) (ite (is-Found!11252 lt!628194) (= (select (arr!46951 a!2831) (index!47400 lt!628194)) (select (arr!46951 a!2831) j!81)) (ite (is-MissingZero!11252 lt!628194) (= (select (arr!46951 a!2831) (index!47399 lt!628194)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11252 lt!628194) (= (select (arr!46951 a!2831) (index!47402 lt!628194)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153179 (= lt!628194 e!805845)))

(declare-fun c!131813 () Bool)

(assert (=> d!153179 (= c!131813 (and (is-Intermediate!11252 lt!628195) (undefined!12064 lt!628195)))))

(assert (=> d!153179 (= lt!628195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46951 a!2831) j!81) mask!2608) (select (arr!46951 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153179 (validMask!0 mask!2608)))

(assert (=> d!153179 (= (seekEntryOrOpen!0 (select (arr!46951 a!2831) j!81) a!2831 mask!2608) lt!628194)))

(declare-fun b!1426598 () Bool)

(assert (=> b!1426598 (= e!805845 Undefined!11252)))

(declare-fun b!1426599 () Bool)

(declare-fun e!805847 () SeekEntryResult!11252)

(assert (=> b!1426599 (= e!805847 (MissingZero!11252 (index!47401 lt!628195)))))

(declare-fun b!1426600 () Bool)

(declare-fun c!131812 () Bool)

(assert (=> b!1426600 (= c!131812 (= lt!628193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426600 (= e!805846 e!805847)))

(declare-fun b!1426601 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97275 (_ BitVec 32)) SeekEntryResult!11252)

(assert (=> b!1426601 (= e!805847 (seekKeyOrZeroReturnVacant!0 (x!129033 lt!628195) (index!47401 lt!628195) (index!47401 lt!628195) (select (arr!46951 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153179 c!131813) b!1426598))

(assert (= (and d!153179 (not c!131813)) b!1426596))

(assert (= (and b!1426596 c!131814) b!1426597))

(assert (= (and b!1426596 (not c!131814)) b!1426600))

(assert (= (and b!1426600 c!131812) b!1426599))

(assert (= (and b!1426600 (not c!131812)) b!1426601))

(declare-fun m!1317161 () Bool)

(assert (=> b!1426596 m!1317161))

(declare-fun m!1317163 () Bool)

(assert (=> d!153179 m!1317163))

(assert (=> d!153179 m!1316901))

(assert (=> d!153179 m!1316899))

(assert (=> d!153179 m!1316903))

(assert (=> d!153179 m!1316899))

(assert (=> d!153179 m!1316901))

(declare-fun m!1317165 () Bool)

(assert (=> d!153179 m!1317165))

(declare-fun m!1317167 () Bool)

(assert (=> d!153179 m!1317167))

(assert (=> d!153179 m!1316925))

(assert (=> b!1426601 m!1316899))

(declare-fun m!1317169 () Bool)

(assert (=> b!1426601 m!1317169))

(assert (=> b!1426232 d!153179))

(declare-fun b!1426602 () Bool)

(declare-fun e!805850 () Bool)

(declare-fun call!67340 () Bool)

(assert (=> b!1426602 (= e!805850 call!67340)))

(declare-fun b!1426603 () Bool)

(declare-fun e!805849 () Bool)

(assert (=> b!1426603 (= e!805849 call!67340)))

(declare-fun bm!67337 () Bool)

(assert (=> bm!67337 (= call!67340 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1426604 () Bool)

(assert (=> b!1426604 (= e!805849 e!805850)))

(declare-fun lt!628197 () (_ BitVec 64))

(assert (=> b!1426604 (= lt!628197 (select (arr!46951 a!2831) j!81))))

(declare-fun lt!628196 () Unit!48198)

(assert (=> b!1426604 (= lt!628196 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628197 j!81))))

(assert (=> b!1426604 (arrayContainsKey!0 a!2831 lt!628197 #b00000000000000000000000000000000)))

(declare-fun lt!628198 () Unit!48198)

(assert (=> b!1426604 (= lt!628198 lt!628196)))

(declare-fun res!961953 () Bool)

(assert (=> b!1426604 (= res!961953 (= (seekEntryOrOpen!0 (select (arr!46951 a!2831) j!81) a!2831 mask!2608) (Found!11252 j!81)))))

(assert (=> b!1426604 (=> (not res!961953) (not e!805850))))

(declare-fun b!1426605 () Bool)

(declare-fun e!805848 () Bool)

(assert (=> b!1426605 (= e!805848 e!805849)))

(declare-fun c!131815 () Bool)

(assert (=> b!1426605 (= c!131815 (validKeyInArray!0 (select (arr!46951 a!2831) j!81)))))

(declare-fun d!153181 () Bool)

(declare-fun res!961954 () Bool)

(assert (=> d!153181 (=> res!961954 e!805848)))

(assert (=> d!153181 (= res!961954 (bvsge j!81 (size!47502 a!2831)))))

(assert (=> d!153181 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!805848)))

(assert (= (and d!153181 (not res!961954)) b!1426605))

(assert (= (and b!1426605 c!131815) b!1426604))

(assert (= (and b!1426605 (not c!131815)) b!1426603))

(assert (= (and b!1426604 res!961953) b!1426602))

(assert (= (or b!1426602 b!1426603) bm!67337))

(declare-fun m!1317171 () Bool)

(assert (=> bm!67337 m!1317171))

(assert (=> b!1426604 m!1316899))

(declare-fun m!1317173 () Bool)

(assert (=> b!1426604 m!1317173))

(declare-fun m!1317175 () Bool)

(assert (=> b!1426604 m!1317175))

(assert (=> b!1426604 m!1316899))

(assert (=> b!1426604 m!1316907))

(assert (=> b!1426605 m!1316899))

(assert (=> b!1426605 m!1316899))

(assert (=> b!1426605 m!1316923))

(assert (=> b!1426232 d!153181))

(declare-fun d!153183 () Bool)

(assert (=> d!153183 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628207 () Unit!48198)

(declare-fun choose!38 (array!97275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48198)

(assert (=> d!153183 (= lt!628207 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153183 (validMask!0 mask!2608)))

(assert (=> d!153183 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628207)))

(declare-fun bs!41583 () Bool)

(assert (= bs!41583 d!153183))

(assert (=> bs!41583 m!1316909))

(declare-fun m!1317193 () Bool)

(assert (=> bs!41583 m!1317193))

(assert (=> bs!41583 m!1316925))

(assert (=> b!1426232 d!153183))

(declare-fun d!153189 () Bool)

(assert (=> d!153189 (= (validKeyInArray!0 (select (arr!46951 a!2831) j!81)) (and (not (= (select (arr!46951 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46951 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426225 d!153189))

(push 1)

