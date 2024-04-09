; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130002 () Bool)

(assert start!130002)

(declare-fun b!1525090 () Bool)

(declare-fun res!1043598 () Bool)

(declare-fun e!850139 () Bool)

(assert (=> b!1525090 (=> (not res!1043598) (not e!850139))))

(declare-datatypes ((SeekEntryResult!13112 0))(
  ( (MissingZero!13112 (index!54842 (_ BitVec 32))) (Found!13112 (index!54843 (_ BitVec 32))) (Intermediate!13112 (undefined!13924 Bool) (index!54844 (_ BitVec 32)) (x!136544 (_ BitVec 32))) (Undefined!13112) (MissingVacant!13112 (index!54845 (_ BitVec 32))) )
))
(declare-fun lt!660517 () SeekEntryResult!13112)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101405 0))(
  ( (array!101406 (arr!48926 (Array (_ BitVec 32) (_ BitVec 64))) (size!49477 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101405)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101405 (_ BitVec 32)) SeekEntryResult!13112)

(assert (=> b!1525090 (= res!1043598 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) lt!660517))))

(declare-fun e!850145 () Bool)

(declare-fun b!1525091 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101405 (_ BitVec 32)) SeekEntryResult!13112)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101405 (_ BitVec 32)) SeekEntryResult!13112)

(assert (=> b!1525091 (= e!850145 (= (seekEntryOrOpen!0 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48926 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1525092 () Bool)

(declare-fun res!1043589 () Bool)

(declare-fun e!850144 () Bool)

(assert (=> b!1525092 (=> (not res!1043589) (not e!850144))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525092 (= res!1043589 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49477 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49477 a!2804))))))

(declare-fun b!1525093 () Bool)

(declare-fun e!850143 () Bool)

(declare-fun e!850141 () Bool)

(assert (=> b!1525093 (= e!850143 (not e!850141))))

(declare-fun res!1043595 () Bool)

(assert (=> b!1525093 (=> res!1043595 e!850141)))

(declare-fun lt!660519 () (_ BitVec 64))

(assert (=> b!1525093 (= res!1043595 (or (not (= (select (arr!48926 a!2804) j!70) lt!660519)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48926 a!2804) index!487) (select (arr!48926 a!2804) j!70)) (not (= (select (arr!48926 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!850140 () Bool)

(assert (=> b!1525093 e!850140))

(declare-fun res!1043601 () Bool)

(assert (=> b!1525093 (=> (not res!1043601) (not e!850140))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101405 (_ BitVec 32)) Bool)

(assert (=> b!1525093 (= res!1043601 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50964 0))(
  ( (Unit!50965) )
))
(declare-fun lt!660520 () Unit!50964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50964)

(assert (=> b!1525093 (= lt!660520 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525094 () Bool)

(declare-fun res!1043591 () Bool)

(assert (=> b!1525094 (=> (not res!1043591) (not e!850140))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101405 (_ BitVec 32)) SeekEntryResult!13112)

(assert (=> b!1525094 (= res!1043591 (= (seekEntry!0 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) (Found!13112 j!70)))))

(declare-fun b!1525095 () Bool)

(declare-fun res!1043599 () Bool)

(assert (=> b!1525095 (=> (not res!1043599) (not e!850144))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1525095 (= res!1043599 (and (= (size!49477 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49477 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49477 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525096 () Bool)

(assert (=> b!1525096 (= e!850139 e!850143)))

(declare-fun res!1043596 () Bool)

(assert (=> b!1525096 (=> (not res!1043596) (not e!850143))))

(declare-fun lt!660516 () SeekEntryResult!13112)

(declare-fun lt!660518 () array!101405)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525096 (= res!1043596 (= lt!660516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660519 mask!2512) lt!660519 lt!660518 mask!2512)))))

(assert (=> b!1525096 (= lt!660519 (select (store (arr!48926 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525096 (= lt!660518 (array!101406 (store (arr!48926 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49477 a!2804)))))

(declare-fun b!1525097 () Bool)

(declare-fun res!1043593 () Bool)

(assert (=> b!1525097 (=> (not res!1043593) (not e!850144))))

(assert (=> b!1525097 (= res!1043593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525089 () Bool)

(assert (=> b!1525089 (= e!850144 e!850139)))

(declare-fun res!1043590 () Bool)

(assert (=> b!1525089 (=> (not res!1043590) (not e!850139))))

(assert (=> b!1525089 (= res!1043590 (= lt!660516 lt!660517))))

(assert (=> b!1525089 (= lt!660517 (Intermediate!13112 false resIndex!21 resX!21))))

(assert (=> b!1525089 (= lt!660516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1043592 () Bool)

(assert (=> start!130002 (=> (not res!1043592) (not e!850144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130002 (= res!1043592 (validMask!0 mask!2512))))

(assert (=> start!130002 e!850144))

(assert (=> start!130002 true))

(declare-fun array_inv!37871 (array!101405) Bool)

(assert (=> start!130002 (array_inv!37871 a!2804)))

(declare-fun b!1525098 () Bool)

(declare-fun res!1043597 () Bool)

(assert (=> b!1525098 (=> (not res!1043597) (not e!850144))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525098 (= res!1043597 (validKeyInArray!0 (select (arr!48926 a!2804) j!70)))))

(declare-fun b!1525099 () Bool)

(declare-fun res!1043594 () Bool)

(assert (=> b!1525099 (=> (not res!1043594) (not e!850144))))

(assert (=> b!1525099 (= res!1043594 (validKeyInArray!0 (select (arr!48926 a!2804) i!961)))))

(declare-fun b!1525100 () Bool)

(assert (=> b!1525100 (= e!850141 (= (seekEntryOrOpen!0 lt!660519 lt!660518 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660519 lt!660518 mask!2512)))))

(declare-fun b!1525101 () Bool)

(declare-fun res!1043600 () Bool)

(assert (=> b!1525101 (=> (not res!1043600) (not e!850144))))

(declare-datatypes ((List!35589 0))(
  ( (Nil!35586) (Cons!35585 (h!37016 (_ BitVec 64)) (t!50290 List!35589)) )
))
(declare-fun arrayNoDuplicates!0 (array!101405 (_ BitVec 32) List!35589) Bool)

(assert (=> b!1525101 (= res!1043600 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35586))))

(declare-fun b!1525102 () Bool)

(assert (=> b!1525102 (= e!850140 e!850145)))

(declare-fun res!1043588 () Bool)

(assert (=> b!1525102 (=> res!1043588 e!850145)))

(assert (=> b!1525102 (= res!1043588 (or (not (= (select (arr!48926 a!2804) j!70) lt!660519)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48926 a!2804) index!487) (select (arr!48926 a!2804) j!70)) (not (= (select (arr!48926 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!130002 res!1043592) b!1525095))

(assert (= (and b!1525095 res!1043599) b!1525099))

(assert (= (and b!1525099 res!1043594) b!1525098))

(assert (= (and b!1525098 res!1043597) b!1525097))

(assert (= (and b!1525097 res!1043593) b!1525101))

(assert (= (and b!1525101 res!1043600) b!1525092))

(assert (= (and b!1525092 res!1043589) b!1525089))

(assert (= (and b!1525089 res!1043590) b!1525090))

(assert (= (and b!1525090 res!1043598) b!1525096))

(assert (= (and b!1525096 res!1043596) b!1525093))

(assert (= (and b!1525093 res!1043601) b!1525094))

(assert (= (and b!1525094 res!1043591) b!1525102))

(assert (= (and b!1525102 (not res!1043588)) b!1525091))

(assert (= (and b!1525093 (not res!1043595)) b!1525100))

(declare-fun m!1408033 () Bool)

(assert (=> b!1525091 m!1408033))

(assert (=> b!1525091 m!1408033))

(declare-fun m!1408035 () Bool)

(assert (=> b!1525091 m!1408035))

(assert (=> b!1525091 m!1408033))

(declare-fun m!1408037 () Bool)

(assert (=> b!1525091 m!1408037))

(assert (=> b!1525089 m!1408033))

(assert (=> b!1525089 m!1408033))

(declare-fun m!1408039 () Bool)

(assert (=> b!1525089 m!1408039))

(assert (=> b!1525089 m!1408039))

(assert (=> b!1525089 m!1408033))

(declare-fun m!1408041 () Bool)

(assert (=> b!1525089 m!1408041))

(declare-fun m!1408043 () Bool)

(assert (=> b!1525097 m!1408043))

(declare-fun m!1408045 () Bool)

(assert (=> b!1525096 m!1408045))

(assert (=> b!1525096 m!1408045))

(declare-fun m!1408047 () Bool)

(assert (=> b!1525096 m!1408047))

(declare-fun m!1408049 () Bool)

(assert (=> b!1525096 m!1408049))

(declare-fun m!1408051 () Bool)

(assert (=> b!1525096 m!1408051))

(assert (=> b!1525093 m!1408033))

(declare-fun m!1408053 () Bool)

(assert (=> b!1525093 m!1408053))

(declare-fun m!1408055 () Bool)

(assert (=> b!1525093 m!1408055))

(declare-fun m!1408057 () Bool)

(assert (=> b!1525093 m!1408057))

(declare-fun m!1408059 () Bool)

(assert (=> start!130002 m!1408059))

(declare-fun m!1408061 () Bool)

(assert (=> start!130002 m!1408061))

(assert (=> b!1525094 m!1408033))

(assert (=> b!1525094 m!1408033))

(declare-fun m!1408063 () Bool)

(assert (=> b!1525094 m!1408063))

(assert (=> b!1525102 m!1408033))

(assert (=> b!1525102 m!1408053))

(declare-fun m!1408065 () Bool)

(assert (=> b!1525099 m!1408065))

(assert (=> b!1525099 m!1408065))

(declare-fun m!1408067 () Bool)

(assert (=> b!1525099 m!1408067))

(assert (=> b!1525098 m!1408033))

(assert (=> b!1525098 m!1408033))

(declare-fun m!1408069 () Bool)

(assert (=> b!1525098 m!1408069))

(assert (=> b!1525090 m!1408033))

(assert (=> b!1525090 m!1408033))

(declare-fun m!1408071 () Bool)

(assert (=> b!1525090 m!1408071))

(declare-fun m!1408073 () Bool)

(assert (=> b!1525100 m!1408073))

(declare-fun m!1408075 () Bool)

(assert (=> b!1525100 m!1408075))

(declare-fun m!1408077 () Bool)

(assert (=> b!1525101 m!1408077))

(check-sat (not b!1525089) (not b!1525090) (not b!1525097) (not b!1525101) (not b!1525096) (not start!130002) (not b!1525091) (not b!1525093) (not b!1525094) (not b!1525099) (not b!1525098) (not b!1525100))
(check-sat)
(get-model)

(declare-fun b!1525157 () Bool)

(declare-fun e!850175 () SeekEntryResult!13112)

(declare-fun e!850173 () SeekEntryResult!13112)

(assert (=> b!1525157 (= e!850175 e!850173)))

(declare-fun lt!660544 () (_ BitVec 64))

(declare-fun lt!660542 () SeekEntryResult!13112)

(assert (=> b!1525157 (= lt!660544 (select (arr!48926 lt!660518) (index!54844 lt!660542)))))

(declare-fun c!140311 () Bool)

(assert (=> b!1525157 (= c!140311 (= lt!660544 lt!660519))))

(declare-fun e!850174 () SeekEntryResult!13112)

(declare-fun b!1525158 () Bool)

(assert (=> b!1525158 (= e!850174 (seekKeyOrZeroReturnVacant!0 (x!136544 lt!660542) (index!54844 lt!660542) (index!54844 lt!660542) lt!660519 lt!660518 mask!2512))))

(declare-fun b!1525159 () Bool)

(assert (=> b!1525159 (= e!850174 (MissingZero!13112 (index!54844 lt!660542)))))

(declare-fun b!1525160 () Bool)

(assert (=> b!1525160 (= e!850175 Undefined!13112)))

(declare-fun d!159373 () Bool)

(declare-fun lt!660543 () SeekEntryResult!13112)

(get-info :version)

(assert (=> d!159373 (and (or ((_ is Undefined!13112) lt!660543) (not ((_ is Found!13112) lt!660543)) (and (bvsge (index!54843 lt!660543) #b00000000000000000000000000000000) (bvslt (index!54843 lt!660543) (size!49477 lt!660518)))) (or ((_ is Undefined!13112) lt!660543) ((_ is Found!13112) lt!660543) (not ((_ is MissingZero!13112) lt!660543)) (and (bvsge (index!54842 lt!660543) #b00000000000000000000000000000000) (bvslt (index!54842 lt!660543) (size!49477 lt!660518)))) (or ((_ is Undefined!13112) lt!660543) ((_ is Found!13112) lt!660543) ((_ is MissingZero!13112) lt!660543) (not ((_ is MissingVacant!13112) lt!660543)) (and (bvsge (index!54845 lt!660543) #b00000000000000000000000000000000) (bvslt (index!54845 lt!660543) (size!49477 lt!660518)))) (or ((_ is Undefined!13112) lt!660543) (ite ((_ is Found!13112) lt!660543) (= (select (arr!48926 lt!660518) (index!54843 lt!660543)) lt!660519) (ite ((_ is MissingZero!13112) lt!660543) (= (select (arr!48926 lt!660518) (index!54842 lt!660543)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13112) lt!660543) (= (select (arr!48926 lt!660518) (index!54845 lt!660543)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159373 (= lt!660543 e!850175)))

(declare-fun c!140312 () Bool)

(assert (=> d!159373 (= c!140312 (and ((_ is Intermediate!13112) lt!660542) (undefined!13924 lt!660542)))))

(assert (=> d!159373 (= lt!660542 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660519 mask!2512) lt!660519 lt!660518 mask!2512))))

(assert (=> d!159373 (validMask!0 mask!2512)))

(assert (=> d!159373 (= (seekEntryOrOpen!0 lt!660519 lt!660518 mask!2512) lt!660543)))

(declare-fun b!1525161 () Bool)

(assert (=> b!1525161 (= e!850173 (Found!13112 (index!54844 lt!660542)))))

(declare-fun b!1525162 () Bool)

(declare-fun c!140310 () Bool)

(assert (=> b!1525162 (= c!140310 (= lt!660544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525162 (= e!850173 e!850174)))

(assert (= (and d!159373 c!140312) b!1525160))

(assert (= (and d!159373 (not c!140312)) b!1525157))

(assert (= (and b!1525157 c!140311) b!1525161))

(assert (= (and b!1525157 (not c!140311)) b!1525162))

(assert (= (and b!1525162 c!140310) b!1525159))

(assert (= (and b!1525162 (not c!140310)) b!1525158))

(declare-fun m!1408125 () Bool)

(assert (=> b!1525157 m!1408125))

(declare-fun m!1408127 () Bool)

(assert (=> b!1525158 m!1408127))

(assert (=> d!159373 m!1408059))

(assert (=> d!159373 m!1408045))

(assert (=> d!159373 m!1408047))

(declare-fun m!1408129 () Bool)

(assert (=> d!159373 m!1408129))

(declare-fun m!1408131 () Bool)

(assert (=> d!159373 m!1408131))

(declare-fun m!1408133 () Bool)

(assert (=> d!159373 m!1408133))

(assert (=> d!159373 m!1408045))

(assert (=> b!1525100 d!159373))

(declare-fun b!1525190 () Bool)

(declare-fun e!850194 () SeekEntryResult!13112)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525190 (= e!850194 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 lt!660519 lt!660518 mask!2512))))

(declare-fun d!159375 () Bool)

(declare-fun lt!660550 () SeekEntryResult!13112)

(assert (=> d!159375 (and (or ((_ is Undefined!13112) lt!660550) (not ((_ is Found!13112) lt!660550)) (and (bvsge (index!54843 lt!660550) #b00000000000000000000000000000000) (bvslt (index!54843 lt!660550) (size!49477 lt!660518)))) (or ((_ is Undefined!13112) lt!660550) ((_ is Found!13112) lt!660550) (not ((_ is MissingVacant!13112) lt!660550)) (not (= (index!54845 lt!660550) index!487)) (and (bvsge (index!54845 lt!660550) #b00000000000000000000000000000000) (bvslt (index!54845 lt!660550) (size!49477 lt!660518)))) (or ((_ is Undefined!13112) lt!660550) (ite ((_ is Found!13112) lt!660550) (= (select (arr!48926 lt!660518) (index!54843 lt!660550)) lt!660519) (and ((_ is MissingVacant!13112) lt!660550) (= (index!54845 lt!660550) index!487) (= (select (arr!48926 lt!660518) (index!54845 lt!660550)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!850195 () SeekEntryResult!13112)

(assert (=> d!159375 (= lt!660550 e!850195)))

(declare-fun c!140324 () Bool)

(assert (=> d!159375 (= c!140324 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660549 () (_ BitVec 64))

(assert (=> d!159375 (= lt!660549 (select (arr!48926 lt!660518) index!487))))

(assert (=> d!159375 (validMask!0 mask!2512)))

(assert (=> d!159375 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660519 lt!660518 mask!2512) lt!660550)))

(declare-fun b!1525191 () Bool)

(declare-fun c!140323 () Bool)

(assert (=> b!1525191 (= c!140323 (= lt!660549 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850196 () SeekEntryResult!13112)

(assert (=> b!1525191 (= e!850196 e!850194)))

(declare-fun b!1525192 () Bool)

(assert (=> b!1525192 (= e!850195 e!850196)))

(declare-fun c!140322 () Bool)

(assert (=> b!1525192 (= c!140322 (= lt!660549 lt!660519))))

(declare-fun b!1525193 () Bool)

(assert (=> b!1525193 (= e!850196 (Found!13112 index!487))))

(declare-fun b!1525194 () Bool)

(assert (=> b!1525194 (= e!850194 (MissingVacant!13112 index!487))))

(declare-fun b!1525195 () Bool)

(assert (=> b!1525195 (= e!850195 Undefined!13112)))

(assert (= (and d!159375 c!140324) b!1525195))

(assert (= (and d!159375 (not c!140324)) b!1525192))

(assert (= (and b!1525192 c!140322) b!1525193))

(assert (= (and b!1525192 (not c!140322)) b!1525191))

(assert (= (and b!1525191 c!140323) b!1525194))

(assert (= (and b!1525191 (not c!140323)) b!1525190))

(declare-fun m!1408143 () Bool)

(assert (=> b!1525190 m!1408143))

(assert (=> b!1525190 m!1408143))

(declare-fun m!1408145 () Bool)

(assert (=> b!1525190 m!1408145))

(declare-fun m!1408147 () Bool)

(assert (=> d!159375 m!1408147))

(declare-fun m!1408149 () Bool)

(assert (=> d!159375 m!1408149))

(declare-fun m!1408151 () Bool)

(assert (=> d!159375 m!1408151))

(assert (=> d!159375 m!1408059))

(assert (=> b!1525100 d!159375))

(declare-fun b!1525268 () Bool)

(declare-fun e!850241 () Bool)

(declare-fun lt!660574 () SeekEntryResult!13112)

(assert (=> b!1525268 (= e!850241 (bvsge (x!136544 lt!660574) #b01111111111111111111111111111110))))

(declare-fun b!1525269 () Bool)

(assert (=> b!1525269 (and (bvsge (index!54844 lt!660574) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660574) (size!49477 a!2804)))))

(declare-fun res!1043681 () Bool)

(assert (=> b!1525269 (= res!1043681 (= (select (arr!48926 a!2804) (index!54844 lt!660574)) (select (arr!48926 a!2804) j!70)))))

(declare-fun e!850237 () Bool)

(assert (=> b!1525269 (=> res!1043681 e!850237)))

(declare-fun e!850239 () Bool)

(assert (=> b!1525269 (= e!850239 e!850237)))

(declare-fun e!850240 () SeekEntryResult!13112)

(declare-fun b!1525271 () Bool)

(assert (=> b!1525271 (= e!850240 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!850238 () SeekEntryResult!13112)

(declare-fun b!1525272 () Bool)

(assert (=> b!1525272 (= e!850238 (Intermediate!13112 true (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525273 () Bool)

(assert (=> b!1525273 (= e!850240 (Intermediate!13112 false (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525274 () Bool)

(assert (=> b!1525274 (= e!850238 e!850240)))

(declare-fun lt!660573 () (_ BitVec 64))

(declare-fun c!140350 () Bool)

(assert (=> b!1525274 (= c!140350 (or (= lt!660573 (select (arr!48926 a!2804) j!70)) (= (bvadd lt!660573 lt!660573) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525275 () Bool)

(assert (=> b!1525275 (and (bvsge (index!54844 lt!660574) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660574) (size!49477 a!2804)))))

(assert (=> b!1525275 (= e!850237 (= (select (arr!48926 a!2804) (index!54844 lt!660574)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1525276 () Bool)

(assert (=> b!1525276 (= e!850241 e!850239)))

(declare-fun res!1043680 () Bool)

(assert (=> b!1525276 (= res!1043680 (and ((_ is Intermediate!13112) lt!660574) (not (undefined!13924 lt!660574)) (bvslt (x!136544 lt!660574) #b01111111111111111111111111111110) (bvsge (x!136544 lt!660574) #b00000000000000000000000000000000) (bvsge (x!136544 lt!660574) #b00000000000000000000000000000000)))))

(assert (=> b!1525276 (=> (not res!1043680) (not e!850239))))

(declare-fun d!159383 () Bool)

(assert (=> d!159383 e!850241))

(declare-fun c!140351 () Bool)

(assert (=> d!159383 (= c!140351 (and ((_ is Intermediate!13112) lt!660574) (undefined!13924 lt!660574)))))

(assert (=> d!159383 (= lt!660574 e!850238)))

(declare-fun c!140349 () Bool)

(assert (=> d!159383 (= c!140349 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159383 (= lt!660573 (select (arr!48926 a!2804) (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512)))))

(assert (=> d!159383 (validMask!0 mask!2512)))

(assert (=> d!159383 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) (select (arr!48926 a!2804) j!70) a!2804 mask!2512) lt!660574)))

(declare-fun b!1525270 () Bool)

(assert (=> b!1525270 (and (bvsge (index!54844 lt!660574) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660574) (size!49477 a!2804)))))

(declare-fun res!1043679 () Bool)

(assert (=> b!1525270 (= res!1043679 (= (select (arr!48926 a!2804) (index!54844 lt!660574)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525270 (=> res!1043679 e!850237)))

(assert (= (and d!159383 c!140349) b!1525272))

(assert (= (and d!159383 (not c!140349)) b!1525274))

(assert (= (and b!1525274 c!140350) b!1525273))

(assert (= (and b!1525274 (not c!140350)) b!1525271))

(assert (= (and d!159383 c!140351) b!1525268))

(assert (= (and d!159383 (not c!140351)) b!1525276))

(assert (= (and b!1525276 res!1043680) b!1525269))

(assert (= (and b!1525269 (not res!1043681)) b!1525270))

(assert (= (and b!1525270 (not res!1043679)) b!1525275))

(declare-fun m!1408169 () Bool)

(assert (=> b!1525269 m!1408169))

(assert (=> b!1525270 m!1408169))

(assert (=> d!159383 m!1408039))

(declare-fun m!1408171 () Bool)

(assert (=> d!159383 m!1408171))

(assert (=> d!159383 m!1408059))

(assert (=> b!1525275 m!1408169))

(assert (=> b!1525271 m!1408039))

(declare-fun m!1408173 () Bool)

(assert (=> b!1525271 m!1408173))

(assert (=> b!1525271 m!1408173))

(assert (=> b!1525271 m!1408033))

(declare-fun m!1408175 () Bool)

(assert (=> b!1525271 m!1408175))

(assert (=> b!1525089 d!159383))

(declare-fun d!159391 () Bool)

(declare-fun lt!660586 () (_ BitVec 32))

(declare-fun lt!660585 () (_ BitVec 32))

(assert (=> d!159391 (= lt!660586 (bvmul (bvxor lt!660585 (bvlshr lt!660585 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159391 (= lt!660585 ((_ extract 31 0) (bvand (bvxor (select (arr!48926 a!2804) j!70) (bvlshr (select (arr!48926 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159391 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043682 (let ((h!37020 ((_ extract 31 0) (bvand (bvxor (select (arr!48926 a!2804) j!70) (bvlshr (select (arr!48926 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136552 (bvmul (bvxor h!37020 (bvlshr h!37020 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136552 (bvlshr x!136552 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043682 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043682 #b00000000000000000000000000000000))))))

(assert (=> d!159391 (= (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) (bvand (bvxor lt!660586 (bvlshr lt!660586 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1525089 d!159391))

(declare-fun b!1525277 () Bool)

(declare-fun e!850246 () Bool)

(declare-fun lt!660588 () SeekEntryResult!13112)

(assert (=> b!1525277 (= e!850246 (bvsge (x!136544 lt!660588) #b01111111111111111111111111111110))))

(declare-fun b!1525278 () Bool)

(assert (=> b!1525278 (and (bvsge (index!54844 lt!660588) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660588) (size!49477 a!2804)))))

(declare-fun res!1043685 () Bool)

(assert (=> b!1525278 (= res!1043685 (= (select (arr!48926 a!2804) (index!54844 lt!660588)) (select (arr!48926 a!2804) j!70)))))

(declare-fun e!850242 () Bool)

(assert (=> b!1525278 (=> res!1043685 e!850242)))

(declare-fun e!850244 () Bool)

(assert (=> b!1525278 (= e!850244 e!850242)))

(declare-fun e!850245 () SeekEntryResult!13112)

(declare-fun b!1525280 () Bool)

(assert (=> b!1525280 (= e!850245 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525281 () Bool)

(declare-fun e!850243 () SeekEntryResult!13112)

(assert (=> b!1525281 (= e!850243 (Intermediate!13112 true index!487 x!534))))

(declare-fun b!1525282 () Bool)

(assert (=> b!1525282 (= e!850245 (Intermediate!13112 false index!487 x!534))))

(declare-fun b!1525283 () Bool)

(assert (=> b!1525283 (= e!850243 e!850245)))

(declare-fun c!140353 () Bool)

(declare-fun lt!660587 () (_ BitVec 64))

(assert (=> b!1525283 (= c!140353 (or (= lt!660587 (select (arr!48926 a!2804) j!70)) (= (bvadd lt!660587 lt!660587) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525284 () Bool)

(assert (=> b!1525284 (and (bvsge (index!54844 lt!660588) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660588) (size!49477 a!2804)))))

(assert (=> b!1525284 (= e!850242 (= (select (arr!48926 a!2804) (index!54844 lt!660588)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1525285 () Bool)

(assert (=> b!1525285 (= e!850246 e!850244)))

(declare-fun res!1043684 () Bool)

(assert (=> b!1525285 (= res!1043684 (and ((_ is Intermediate!13112) lt!660588) (not (undefined!13924 lt!660588)) (bvslt (x!136544 lt!660588) #b01111111111111111111111111111110) (bvsge (x!136544 lt!660588) #b00000000000000000000000000000000) (bvsge (x!136544 lt!660588) x!534)))))

(assert (=> b!1525285 (=> (not res!1043684) (not e!850244))))

(declare-fun d!159395 () Bool)

(assert (=> d!159395 e!850246))

(declare-fun c!140354 () Bool)

(assert (=> d!159395 (= c!140354 (and ((_ is Intermediate!13112) lt!660588) (undefined!13924 lt!660588)))))

(assert (=> d!159395 (= lt!660588 e!850243)))

(declare-fun c!140352 () Bool)

(assert (=> d!159395 (= c!140352 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159395 (= lt!660587 (select (arr!48926 a!2804) index!487))))

(assert (=> d!159395 (validMask!0 mask!2512)))

(assert (=> d!159395 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) lt!660588)))

(declare-fun b!1525279 () Bool)

(assert (=> b!1525279 (and (bvsge (index!54844 lt!660588) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660588) (size!49477 a!2804)))))

(declare-fun res!1043683 () Bool)

(assert (=> b!1525279 (= res!1043683 (= (select (arr!48926 a!2804) (index!54844 lt!660588)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525279 (=> res!1043683 e!850242)))

(assert (= (and d!159395 c!140352) b!1525281))

(assert (= (and d!159395 (not c!140352)) b!1525283))

(assert (= (and b!1525283 c!140353) b!1525282))

(assert (= (and b!1525283 (not c!140353)) b!1525280))

(assert (= (and d!159395 c!140354) b!1525277))

(assert (= (and d!159395 (not c!140354)) b!1525285))

(assert (= (and b!1525285 res!1043684) b!1525278))

(assert (= (and b!1525278 (not res!1043685)) b!1525279))

(assert (= (and b!1525279 (not res!1043683)) b!1525284))

(declare-fun m!1408177 () Bool)

(assert (=> b!1525278 m!1408177))

(assert (=> b!1525279 m!1408177))

(assert (=> d!159395 m!1408053))

(assert (=> d!159395 m!1408059))

(assert (=> b!1525284 m!1408177))

(assert (=> b!1525280 m!1408143))

(assert (=> b!1525280 m!1408143))

(assert (=> b!1525280 m!1408033))

(declare-fun m!1408179 () Bool)

(assert (=> b!1525280 m!1408179))

(assert (=> b!1525090 d!159395))

(declare-fun d!159397 () Bool)

(assert (=> d!159397 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130002 d!159397))

(declare-fun d!159409 () Bool)

(assert (=> d!159409 (= (array_inv!37871 a!2804) (bvsge (size!49477 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130002 d!159409))

(declare-fun d!159411 () Bool)

(assert (=> d!159411 (= (validKeyInArray!0 (select (arr!48926 a!2804) i!961)) (and (not (= (select (arr!48926 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48926 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525099 d!159411))

(declare-fun b!1525308 () Bool)

(declare-fun e!850267 () Bool)

(declare-fun call!68454 () Bool)

(assert (=> b!1525308 (= e!850267 call!68454)))

(declare-fun b!1525309 () Bool)

(declare-fun e!850266 () Bool)

(declare-fun contains!10005 (List!35589 (_ BitVec 64)) Bool)

(assert (=> b!1525309 (= e!850266 (contains!10005 Nil!35586 (select (arr!48926 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1525310 () Bool)

(declare-fun e!850265 () Bool)

(declare-fun e!850264 () Bool)

(assert (=> b!1525310 (= e!850265 e!850264)))

(declare-fun res!1043698 () Bool)

(assert (=> b!1525310 (=> (not res!1043698) (not e!850264))))

(assert (=> b!1525310 (= res!1043698 (not e!850266))))

(declare-fun res!1043699 () Bool)

(assert (=> b!1525310 (=> (not res!1043699) (not e!850266))))

(assert (=> b!1525310 (= res!1043699 (validKeyInArray!0 (select (arr!48926 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1525311 () Bool)

(assert (=> b!1525311 (= e!850264 e!850267)))

(declare-fun c!140360 () Bool)

(assert (=> b!1525311 (= c!140360 (validKeyInArray!0 (select (arr!48926 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159413 () Bool)

(declare-fun res!1043700 () Bool)

(assert (=> d!159413 (=> res!1043700 e!850265)))

(assert (=> d!159413 (= res!1043700 (bvsge #b00000000000000000000000000000000 (size!49477 a!2804)))))

(assert (=> d!159413 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35586) e!850265)))

(declare-fun bm!68451 () Bool)

(assert (=> bm!68451 (= call!68454 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140360 (Cons!35585 (select (arr!48926 a!2804) #b00000000000000000000000000000000) Nil!35586) Nil!35586)))))

(declare-fun b!1525312 () Bool)

(assert (=> b!1525312 (= e!850267 call!68454)))

(assert (= (and d!159413 (not res!1043700)) b!1525310))

(assert (= (and b!1525310 res!1043699) b!1525309))

(assert (= (and b!1525310 res!1043698) b!1525311))

(assert (= (and b!1525311 c!140360) b!1525308))

(assert (= (and b!1525311 (not c!140360)) b!1525312))

(assert (= (or b!1525308 b!1525312) bm!68451))

(declare-fun m!1408189 () Bool)

(assert (=> b!1525309 m!1408189))

(assert (=> b!1525309 m!1408189))

(declare-fun m!1408191 () Bool)

(assert (=> b!1525309 m!1408191))

(assert (=> b!1525310 m!1408189))

(assert (=> b!1525310 m!1408189))

(declare-fun m!1408193 () Bool)

(assert (=> b!1525310 m!1408193))

(assert (=> b!1525311 m!1408189))

(assert (=> b!1525311 m!1408189))

(assert (=> b!1525311 m!1408193))

(assert (=> bm!68451 m!1408189))

(declare-fun m!1408195 () Bool)

(assert (=> bm!68451 m!1408195))

(assert (=> b!1525101 d!159413))

(declare-fun b!1525313 () Bool)

(declare-fun e!850270 () SeekEntryResult!13112)

(declare-fun e!850268 () SeekEntryResult!13112)

(assert (=> b!1525313 (= e!850270 e!850268)))

(declare-fun lt!660603 () (_ BitVec 64))

(declare-fun lt!660601 () SeekEntryResult!13112)

(assert (=> b!1525313 (= lt!660603 (select (arr!48926 a!2804) (index!54844 lt!660601)))))

(declare-fun c!140362 () Bool)

(assert (=> b!1525313 (= c!140362 (= lt!660603 (select (arr!48926 a!2804) j!70)))))

(declare-fun b!1525314 () Bool)

(declare-fun e!850269 () SeekEntryResult!13112)

(assert (=> b!1525314 (= e!850269 (seekKeyOrZeroReturnVacant!0 (x!136544 lt!660601) (index!54844 lt!660601) (index!54844 lt!660601) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525315 () Bool)

(assert (=> b!1525315 (= e!850269 (MissingZero!13112 (index!54844 lt!660601)))))

(declare-fun b!1525316 () Bool)

(assert (=> b!1525316 (= e!850270 Undefined!13112)))

(declare-fun d!159419 () Bool)

(declare-fun lt!660602 () SeekEntryResult!13112)

(assert (=> d!159419 (and (or ((_ is Undefined!13112) lt!660602) (not ((_ is Found!13112) lt!660602)) (and (bvsge (index!54843 lt!660602) #b00000000000000000000000000000000) (bvslt (index!54843 lt!660602) (size!49477 a!2804)))) (or ((_ is Undefined!13112) lt!660602) ((_ is Found!13112) lt!660602) (not ((_ is MissingZero!13112) lt!660602)) (and (bvsge (index!54842 lt!660602) #b00000000000000000000000000000000) (bvslt (index!54842 lt!660602) (size!49477 a!2804)))) (or ((_ is Undefined!13112) lt!660602) ((_ is Found!13112) lt!660602) ((_ is MissingZero!13112) lt!660602) (not ((_ is MissingVacant!13112) lt!660602)) (and (bvsge (index!54845 lt!660602) #b00000000000000000000000000000000) (bvslt (index!54845 lt!660602) (size!49477 a!2804)))) (or ((_ is Undefined!13112) lt!660602) (ite ((_ is Found!13112) lt!660602) (= (select (arr!48926 a!2804) (index!54843 lt!660602)) (select (arr!48926 a!2804) j!70)) (ite ((_ is MissingZero!13112) lt!660602) (= (select (arr!48926 a!2804) (index!54842 lt!660602)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13112) lt!660602) (= (select (arr!48926 a!2804) (index!54845 lt!660602)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159419 (= lt!660602 e!850270)))

(declare-fun c!140363 () Bool)

(assert (=> d!159419 (= c!140363 (and ((_ is Intermediate!13112) lt!660601) (undefined!13924 lt!660601)))))

(assert (=> d!159419 (= lt!660601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159419 (validMask!0 mask!2512)))

(assert (=> d!159419 (= (seekEntryOrOpen!0 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) lt!660602)))

(declare-fun b!1525317 () Bool)

(assert (=> b!1525317 (= e!850268 (Found!13112 (index!54844 lt!660601)))))

(declare-fun b!1525318 () Bool)

(declare-fun c!140361 () Bool)

(assert (=> b!1525318 (= c!140361 (= lt!660603 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525318 (= e!850268 e!850269)))

(assert (= (and d!159419 c!140363) b!1525316))

(assert (= (and d!159419 (not c!140363)) b!1525313))

(assert (= (and b!1525313 c!140362) b!1525317))

(assert (= (and b!1525313 (not c!140362)) b!1525318))

(assert (= (and b!1525318 c!140361) b!1525315))

(assert (= (and b!1525318 (not c!140361)) b!1525314))

(declare-fun m!1408197 () Bool)

(assert (=> b!1525313 m!1408197))

(assert (=> b!1525314 m!1408033))

(declare-fun m!1408199 () Bool)

(assert (=> b!1525314 m!1408199))

(assert (=> d!159419 m!1408059))

(assert (=> d!159419 m!1408039))

(assert (=> d!159419 m!1408033))

(assert (=> d!159419 m!1408041))

(declare-fun m!1408201 () Bool)

(assert (=> d!159419 m!1408201))

(declare-fun m!1408203 () Bool)

(assert (=> d!159419 m!1408203))

(declare-fun m!1408205 () Bool)

(assert (=> d!159419 m!1408205))

(assert (=> d!159419 m!1408033))

(assert (=> d!159419 m!1408039))

(assert (=> b!1525091 d!159419))

(declare-fun e!850271 () SeekEntryResult!13112)

(declare-fun b!1525319 () Bool)

(assert (=> b!1525319 (= e!850271 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159421 () Bool)

(declare-fun lt!660605 () SeekEntryResult!13112)

(assert (=> d!159421 (and (or ((_ is Undefined!13112) lt!660605) (not ((_ is Found!13112) lt!660605)) (and (bvsge (index!54843 lt!660605) #b00000000000000000000000000000000) (bvslt (index!54843 lt!660605) (size!49477 a!2804)))) (or ((_ is Undefined!13112) lt!660605) ((_ is Found!13112) lt!660605) (not ((_ is MissingVacant!13112) lt!660605)) (not (= (index!54845 lt!660605) index!487)) (and (bvsge (index!54845 lt!660605) #b00000000000000000000000000000000) (bvslt (index!54845 lt!660605) (size!49477 a!2804)))) (or ((_ is Undefined!13112) lt!660605) (ite ((_ is Found!13112) lt!660605) (= (select (arr!48926 a!2804) (index!54843 lt!660605)) (select (arr!48926 a!2804) j!70)) (and ((_ is MissingVacant!13112) lt!660605) (= (index!54845 lt!660605) index!487) (= (select (arr!48926 a!2804) (index!54845 lt!660605)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!850272 () SeekEntryResult!13112)

(assert (=> d!159421 (= lt!660605 e!850272)))

(declare-fun c!140366 () Bool)

(assert (=> d!159421 (= c!140366 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660604 () (_ BitVec 64))

(assert (=> d!159421 (= lt!660604 (select (arr!48926 a!2804) index!487))))

(assert (=> d!159421 (validMask!0 mask!2512)))

(assert (=> d!159421 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) lt!660605)))

(declare-fun b!1525320 () Bool)

(declare-fun c!140365 () Bool)

(assert (=> b!1525320 (= c!140365 (= lt!660604 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850273 () SeekEntryResult!13112)

(assert (=> b!1525320 (= e!850273 e!850271)))

(declare-fun b!1525321 () Bool)

(assert (=> b!1525321 (= e!850272 e!850273)))

(declare-fun c!140364 () Bool)

(assert (=> b!1525321 (= c!140364 (= lt!660604 (select (arr!48926 a!2804) j!70)))))

(declare-fun b!1525322 () Bool)

(assert (=> b!1525322 (= e!850273 (Found!13112 index!487))))

(declare-fun b!1525323 () Bool)

(assert (=> b!1525323 (= e!850271 (MissingVacant!13112 index!487))))

(declare-fun b!1525324 () Bool)

(assert (=> b!1525324 (= e!850272 Undefined!13112)))

(assert (= (and d!159421 c!140366) b!1525324))

(assert (= (and d!159421 (not c!140366)) b!1525321))

(assert (= (and b!1525321 c!140364) b!1525322))

(assert (= (and b!1525321 (not c!140364)) b!1525320))

(assert (= (and b!1525320 c!140365) b!1525323))

(assert (= (and b!1525320 (not c!140365)) b!1525319))

(assert (=> b!1525319 m!1408143))

(assert (=> b!1525319 m!1408143))

(assert (=> b!1525319 m!1408033))

(declare-fun m!1408207 () Bool)

(assert (=> b!1525319 m!1408207))

(declare-fun m!1408209 () Bool)

(assert (=> d!159421 m!1408209))

(declare-fun m!1408211 () Bool)

(assert (=> d!159421 m!1408211))

(assert (=> d!159421 m!1408053))

(assert (=> d!159421 m!1408059))

(assert (=> b!1525091 d!159421))

(declare-fun b!1525351 () Bool)

(declare-fun e!850289 () Bool)

(declare-fun call!68457 () Bool)

(assert (=> b!1525351 (= e!850289 call!68457)))

(declare-fun b!1525352 () Bool)

(declare-fun e!850290 () Bool)

(assert (=> b!1525352 (= e!850290 call!68457)))

(declare-fun b!1525353 () Bool)

(assert (=> b!1525353 (= e!850289 e!850290)))

(declare-fun lt!660622 () (_ BitVec 64))

(assert (=> b!1525353 (= lt!660622 (select (arr!48926 a!2804) j!70))))

(declare-fun lt!660623 () Unit!50964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101405 (_ BitVec 64) (_ BitVec 32)) Unit!50964)

(assert (=> b!1525353 (= lt!660623 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660622 j!70))))

(declare-fun arrayContainsKey!0 (array!101405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1525353 (arrayContainsKey!0 a!2804 lt!660622 #b00000000000000000000000000000000)))

(declare-fun lt!660621 () Unit!50964)

(assert (=> b!1525353 (= lt!660621 lt!660623)))

(declare-fun res!1043705 () Bool)

(assert (=> b!1525353 (= res!1043705 (= (seekEntryOrOpen!0 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) (Found!13112 j!70)))))

(assert (=> b!1525353 (=> (not res!1043705) (not e!850290))))

(declare-fun bm!68454 () Bool)

(assert (=> bm!68454 (= call!68457 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1525354 () Bool)

(declare-fun e!850291 () Bool)

(assert (=> b!1525354 (= e!850291 e!850289)))

(declare-fun c!140378 () Bool)

(assert (=> b!1525354 (= c!140378 (validKeyInArray!0 (select (arr!48926 a!2804) j!70)))))

(declare-fun d!159423 () Bool)

(declare-fun res!1043706 () Bool)

(assert (=> d!159423 (=> res!1043706 e!850291)))

(assert (=> d!159423 (= res!1043706 (bvsge j!70 (size!49477 a!2804)))))

(assert (=> d!159423 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!850291)))

(assert (= (and d!159423 (not res!1043706)) b!1525354))

(assert (= (and b!1525354 c!140378) b!1525353))

(assert (= (and b!1525354 (not c!140378)) b!1525351))

(assert (= (and b!1525353 res!1043705) b!1525352))

(assert (= (or b!1525352 b!1525351) bm!68454))

(assert (=> b!1525353 m!1408033))

(declare-fun m!1408223 () Bool)

(assert (=> b!1525353 m!1408223))

(declare-fun m!1408225 () Bool)

(assert (=> b!1525353 m!1408225))

(assert (=> b!1525353 m!1408033))

(assert (=> b!1525353 m!1408035))

(declare-fun m!1408227 () Bool)

(assert (=> bm!68454 m!1408227))

(assert (=> b!1525354 m!1408033))

(assert (=> b!1525354 m!1408033))

(assert (=> b!1525354 m!1408069))

(assert (=> b!1525093 d!159423))

(declare-fun d!159427 () Bool)

(assert (=> d!159427 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660632 () Unit!50964)

(declare-fun choose!38 (array!101405 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50964)

(assert (=> d!159427 (= lt!660632 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159427 (validMask!0 mask!2512)))

(assert (=> d!159427 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660632)))

(declare-fun bs!43758 () Bool)

(assert (= bs!43758 d!159427))

(assert (=> bs!43758 m!1408055))

(declare-fun m!1408229 () Bool)

(assert (=> bs!43758 m!1408229))

(assert (=> bs!43758 m!1408059))

(assert (=> b!1525093 d!159427))

(declare-fun b!1525433 () Bool)

(declare-fun e!850334 () SeekEntryResult!13112)

(declare-fun lt!660663 () SeekEntryResult!13112)

(assert (=> b!1525433 (= e!850334 (Found!13112 (index!54844 lt!660663)))))

(declare-fun b!1525434 () Bool)

(declare-fun e!850333 () SeekEntryResult!13112)

(assert (=> b!1525434 (= e!850333 e!850334)))

(declare-fun lt!660664 () (_ BitVec 64))

(assert (=> b!1525434 (= lt!660664 (select (arr!48926 a!2804) (index!54844 lt!660663)))))

(declare-fun c!140415 () Bool)

(assert (=> b!1525434 (= c!140415 (= lt!660664 (select (arr!48926 a!2804) j!70)))))

(declare-fun b!1525435 () Bool)

(declare-fun c!140417 () Bool)

(assert (=> b!1525435 (= c!140417 (= lt!660664 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850332 () SeekEntryResult!13112)

(assert (=> b!1525435 (= e!850334 e!850332)))

(declare-fun d!159429 () Bool)

(declare-fun lt!660661 () SeekEntryResult!13112)

(assert (=> d!159429 (and (or ((_ is MissingVacant!13112) lt!660661) (not ((_ is Found!13112) lt!660661)) (and (bvsge (index!54843 lt!660661) #b00000000000000000000000000000000) (bvslt (index!54843 lt!660661) (size!49477 a!2804)))) (not ((_ is MissingVacant!13112) lt!660661)) (or (not ((_ is Found!13112) lt!660661)) (= (select (arr!48926 a!2804) (index!54843 lt!660661)) (select (arr!48926 a!2804) j!70))))))

(assert (=> d!159429 (= lt!660661 e!850333)))

(declare-fun c!140416 () Bool)

(assert (=> d!159429 (= c!140416 (and ((_ is Intermediate!13112) lt!660663) (undefined!13924 lt!660663)))))

(assert (=> d!159429 (= lt!660663 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48926 a!2804) j!70) mask!2512) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159429 (validMask!0 mask!2512)))

(assert (=> d!159429 (= (seekEntry!0 (select (arr!48926 a!2804) j!70) a!2804 mask!2512) lt!660661)))

(declare-fun b!1525436 () Bool)

(assert (=> b!1525436 (= e!850333 Undefined!13112)))

(declare-fun b!1525437 () Bool)

(assert (=> b!1525437 (= e!850332 (MissingZero!13112 (index!54844 lt!660663)))))

(declare-fun b!1525438 () Bool)

(declare-fun lt!660662 () SeekEntryResult!13112)

(assert (=> b!1525438 (= e!850332 (ite ((_ is MissingVacant!13112) lt!660662) (MissingZero!13112 (index!54845 lt!660662)) lt!660662))))

(assert (=> b!1525438 (= lt!660662 (seekKeyOrZeroReturnVacant!0 (x!136544 lt!660663) (index!54844 lt!660663) (index!54844 lt!660663) (select (arr!48926 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!159429 c!140416) b!1525436))

(assert (= (and d!159429 (not c!140416)) b!1525434))

(assert (= (and b!1525434 c!140415) b!1525433))

(assert (= (and b!1525434 (not c!140415)) b!1525435))

(assert (= (and b!1525435 c!140417) b!1525437))

(assert (= (and b!1525435 (not c!140417)) b!1525438))

(declare-fun m!1408279 () Bool)

(assert (=> b!1525434 m!1408279))

(declare-fun m!1408281 () Bool)

(assert (=> d!159429 m!1408281))

(assert (=> d!159429 m!1408033))

(assert (=> d!159429 m!1408039))

(assert (=> d!159429 m!1408039))

(assert (=> d!159429 m!1408033))

(assert (=> d!159429 m!1408041))

(assert (=> d!159429 m!1408059))

(assert (=> b!1525438 m!1408033))

(declare-fun m!1408283 () Bool)

(assert (=> b!1525438 m!1408283))

(assert (=> b!1525094 d!159429))

(declare-fun b!1525451 () Bool)

(declare-fun e!850341 () Bool)

(declare-fun call!68458 () Bool)

(assert (=> b!1525451 (= e!850341 call!68458)))

(declare-fun b!1525452 () Bool)

(declare-fun e!850342 () Bool)

(assert (=> b!1525452 (= e!850342 call!68458)))

(declare-fun b!1525453 () Bool)

(assert (=> b!1525453 (= e!850341 e!850342)))

(declare-fun lt!660670 () (_ BitVec 64))

(assert (=> b!1525453 (= lt!660670 (select (arr!48926 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660671 () Unit!50964)

(assert (=> b!1525453 (= lt!660671 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660670 #b00000000000000000000000000000000))))

(assert (=> b!1525453 (arrayContainsKey!0 a!2804 lt!660670 #b00000000000000000000000000000000)))

(declare-fun lt!660669 () Unit!50964)

(assert (=> b!1525453 (= lt!660669 lt!660671)))

(declare-fun res!1043713 () Bool)

(assert (=> b!1525453 (= res!1043713 (= (seekEntryOrOpen!0 (select (arr!48926 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13112 #b00000000000000000000000000000000)))))

(assert (=> b!1525453 (=> (not res!1043713) (not e!850342))))

(declare-fun bm!68455 () Bool)

(assert (=> bm!68455 (= call!68458 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1525454 () Bool)

(declare-fun e!850343 () Bool)

(assert (=> b!1525454 (= e!850343 e!850341)))

(declare-fun c!140424 () Bool)

(assert (=> b!1525454 (= c!140424 (validKeyInArray!0 (select (arr!48926 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159447 () Bool)

(declare-fun res!1043714 () Bool)

(assert (=> d!159447 (=> res!1043714 e!850343)))

(assert (=> d!159447 (= res!1043714 (bvsge #b00000000000000000000000000000000 (size!49477 a!2804)))))

(assert (=> d!159447 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!850343)))

(assert (= (and d!159447 (not res!1043714)) b!1525454))

(assert (= (and b!1525454 c!140424) b!1525453))

(assert (= (and b!1525454 (not c!140424)) b!1525451))

(assert (= (and b!1525453 res!1043713) b!1525452))

(assert (= (or b!1525452 b!1525451) bm!68455))

(assert (=> b!1525453 m!1408189))

(declare-fun m!1408285 () Bool)

(assert (=> b!1525453 m!1408285))

(declare-fun m!1408287 () Bool)

(assert (=> b!1525453 m!1408287))

(assert (=> b!1525453 m!1408189))

(declare-fun m!1408289 () Bool)

(assert (=> b!1525453 m!1408289))

(declare-fun m!1408291 () Bool)

(assert (=> bm!68455 m!1408291))

(assert (=> b!1525454 m!1408189))

(assert (=> b!1525454 m!1408189))

(assert (=> b!1525454 m!1408193))

(assert (=> b!1525097 d!159447))

(declare-fun d!159449 () Bool)

(assert (=> d!159449 (= (validKeyInArray!0 (select (arr!48926 a!2804) j!70)) (and (not (= (select (arr!48926 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48926 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525098 d!159449))

(declare-fun b!1525455 () Bool)

(declare-fun e!850348 () Bool)

(declare-fun lt!660673 () SeekEntryResult!13112)

(assert (=> b!1525455 (= e!850348 (bvsge (x!136544 lt!660673) #b01111111111111111111111111111110))))

(declare-fun b!1525456 () Bool)

(assert (=> b!1525456 (and (bvsge (index!54844 lt!660673) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660673) (size!49477 lt!660518)))))

(declare-fun res!1043717 () Bool)

(assert (=> b!1525456 (= res!1043717 (= (select (arr!48926 lt!660518) (index!54844 lt!660673)) lt!660519))))

(declare-fun e!850344 () Bool)

(assert (=> b!1525456 (=> res!1043717 e!850344)))

(declare-fun e!850346 () Bool)

(assert (=> b!1525456 (= e!850346 e!850344)))

(declare-fun b!1525458 () Bool)

(declare-fun e!850347 () SeekEntryResult!13112)

(assert (=> b!1525458 (= e!850347 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!660519 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!660519 lt!660518 mask!2512))))

(declare-fun b!1525459 () Bool)

(declare-fun e!850345 () SeekEntryResult!13112)

(assert (=> b!1525459 (= e!850345 (Intermediate!13112 true (toIndex!0 lt!660519 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525460 () Bool)

(assert (=> b!1525460 (= e!850347 (Intermediate!13112 false (toIndex!0 lt!660519 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525461 () Bool)

(assert (=> b!1525461 (= e!850345 e!850347)))

(declare-fun c!140426 () Bool)

(declare-fun lt!660672 () (_ BitVec 64))

(assert (=> b!1525461 (= c!140426 (or (= lt!660672 lt!660519) (= (bvadd lt!660672 lt!660672) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525462 () Bool)

(assert (=> b!1525462 (and (bvsge (index!54844 lt!660673) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660673) (size!49477 lt!660518)))))

(assert (=> b!1525462 (= e!850344 (= (select (arr!48926 lt!660518) (index!54844 lt!660673)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1525463 () Bool)

(assert (=> b!1525463 (= e!850348 e!850346)))

(declare-fun res!1043716 () Bool)

(assert (=> b!1525463 (= res!1043716 (and ((_ is Intermediate!13112) lt!660673) (not (undefined!13924 lt!660673)) (bvslt (x!136544 lt!660673) #b01111111111111111111111111111110) (bvsge (x!136544 lt!660673) #b00000000000000000000000000000000) (bvsge (x!136544 lt!660673) #b00000000000000000000000000000000)))))

(assert (=> b!1525463 (=> (not res!1043716) (not e!850346))))

(declare-fun d!159451 () Bool)

(assert (=> d!159451 e!850348))

(declare-fun c!140427 () Bool)

(assert (=> d!159451 (= c!140427 (and ((_ is Intermediate!13112) lt!660673) (undefined!13924 lt!660673)))))

(assert (=> d!159451 (= lt!660673 e!850345)))

(declare-fun c!140425 () Bool)

(assert (=> d!159451 (= c!140425 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159451 (= lt!660672 (select (arr!48926 lt!660518) (toIndex!0 lt!660519 mask!2512)))))

(assert (=> d!159451 (validMask!0 mask!2512)))

(assert (=> d!159451 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660519 mask!2512) lt!660519 lt!660518 mask!2512) lt!660673)))

(declare-fun b!1525457 () Bool)

(assert (=> b!1525457 (and (bvsge (index!54844 lt!660673) #b00000000000000000000000000000000) (bvslt (index!54844 lt!660673) (size!49477 lt!660518)))))

(declare-fun res!1043715 () Bool)

(assert (=> b!1525457 (= res!1043715 (= (select (arr!48926 lt!660518) (index!54844 lt!660673)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525457 (=> res!1043715 e!850344)))

(assert (= (and d!159451 c!140425) b!1525459))

(assert (= (and d!159451 (not c!140425)) b!1525461))

(assert (= (and b!1525461 c!140426) b!1525460))

(assert (= (and b!1525461 (not c!140426)) b!1525458))

(assert (= (and d!159451 c!140427) b!1525455))

(assert (= (and d!159451 (not c!140427)) b!1525463))

(assert (= (and b!1525463 res!1043716) b!1525456))

(assert (= (and b!1525456 (not res!1043717)) b!1525457))

(assert (= (and b!1525457 (not res!1043715)) b!1525462))

(declare-fun m!1408293 () Bool)

(assert (=> b!1525456 m!1408293))

(assert (=> b!1525457 m!1408293))

(assert (=> d!159451 m!1408045))

(declare-fun m!1408295 () Bool)

(assert (=> d!159451 m!1408295))

(assert (=> d!159451 m!1408059))

(assert (=> b!1525462 m!1408293))

(assert (=> b!1525458 m!1408045))

(declare-fun m!1408297 () Bool)

(assert (=> b!1525458 m!1408297))

(assert (=> b!1525458 m!1408297))

(declare-fun m!1408299 () Bool)

(assert (=> b!1525458 m!1408299))

(assert (=> b!1525096 d!159451))

(declare-fun d!159453 () Bool)

(declare-fun lt!660675 () (_ BitVec 32))

(declare-fun lt!660674 () (_ BitVec 32))

(assert (=> d!159453 (= lt!660675 (bvmul (bvxor lt!660674 (bvlshr lt!660674 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159453 (= lt!660674 ((_ extract 31 0) (bvand (bvxor lt!660519 (bvlshr lt!660519 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159453 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043682 (let ((h!37020 ((_ extract 31 0) (bvand (bvxor lt!660519 (bvlshr lt!660519 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136552 (bvmul (bvxor h!37020 (bvlshr h!37020 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136552 (bvlshr x!136552 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043682 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043682 #b00000000000000000000000000000000))))))

(assert (=> d!159453 (= (toIndex!0 lt!660519 mask!2512) (bvand (bvxor lt!660675 (bvlshr lt!660675 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1525096 d!159453))

(check-sat (not d!159383) (not d!159427) (not d!159451) (not d!159421) (not d!159419) (not b!1525158) (not b!1525454) (not b!1525353) (not b!1525280) (not bm!68454) (not b!1525458) (not b!1525438) (not d!159375) (not b!1525310) (not b!1525354) (not b!1525319) (not d!159429) (not b!1525453) (not d!159373) (not d!159395) (not b!1525309) (not bm!68451) (not b!1525190) (not b!1525311) (not bm!68455) (not b!1525314) (not b!1525271))
(check-sat)
