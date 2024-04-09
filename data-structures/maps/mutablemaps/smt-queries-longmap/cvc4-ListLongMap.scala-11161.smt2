; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130484 () Bool)

(assert start!130484)

(declare-fun b!1530985 () Bool)

(declare-fun res!1048474 () Bool)

(declare-fun e!853100 () Bool)

(assert (=> b!1530985 (=> (not res!1048474) (not e!853100))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101647 0))(
  ( (array!101648 (arr!49041 (Array (_ BitVec 32) (_ BitVec 64))) (size!49592 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101647)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530985 (= res!1048474 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49592 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49592 a!2804))))))

(declare-fun b!1530986 () Bool)

(declare-fun res!1048473 () Bool)

(assert (=> b!1530986 (=> (not res!1048473) (not e!853100))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1530986 (= res!1048473 (and (= (size!49592 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49592 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49592 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530987 () Bool)

(declare-fun res!1048471 () Bool)

(assert (=> b!1530987 (=> (not res!1048471) (not e!853100))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530987 (= res!1048471 (validKeyInArray!0 (select (arr!49041 a!2804) i!961)))))

(declare-fun res!1048470 () Bool)

(assert (=> start!130484 (=> (not res!1048470) (not e!853100))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130484 (= res!1048470 (validMask!0 mask!2512))))

(assert (=> start!130484 e!853100))

(assert (=> start!130484 true))

(declare-fun array_inv!37986 (array!101647) Bool)

(assert (=> start!130484 (array_inv!37986 a!2804)))

(declare-fun b!1530988 () Bool)

(declare-fun e!853098 () Bool)

(assert (=> b!1530988 (= e!853100 e!853098)))

(declare-fun res!1048464 () Bool)

(assert (=> b!1530988 (=> (not res!1048464) (not e!853098))))

(declare-datatypes ((SeekEntryResult!13227 0))(
  ( (MissingZero!13227 (index!55302 (_ BitVec 32))) (Found!13227 (index!55303 (_ BitVec 32))) (Intermediate!13227 (undefined!14039 Bool) (index!55304 (_ BitVec 32)) (x!136999 (_ BitVec 32))) (Undefined!13227) (MissingVacant!13227 (index!55305 (_ BitVec 32))) )
))
(declare-fun lt!663011 () SeekEntryResult!13227)

(declare-fun lt!663012 () SeekEntryResult!13227)

(assert (=> b!1530988 (= res!1048464 (= lt!663011 lt!663012))))

(assert (=> b!1530988 (= lt!663012 (Intermediate!13227 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101647 (_ BitVec 32)) SeekEntryResult!13227)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530988 (= lt!663011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) (select (arr!49041 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530989 () Bool)

(declare-fun e!853101 () Bool)

(assert (=> b!1530989 (= e!853098 (not e!853101))))

(declare-fun res!1048476 () Bool)

(assert (=> b!1530989 (=> res!1048476 e!853101)))

(assert (=> b!1530989 (= res!1048476 (or (not (= (select (arr!49041 a!2804) j!70) (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853099 () Bool)

(assert (=> b!1530989 e!853099))

(declare-fun res!1048475 () Bool)

(assert (=> b!1530989 (=> (not res!1048475) (not e!853099))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101647 (_ BitVec 32)) Bool)

(assert (=> b!1530989 (= res!1048475 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51194 0))(
  ( (Unit!51195) )
))
(declare-fun lt!663010 () Unit!51194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51194)

(assert (=> b!1530989 (= lt!663010 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530990 () Bool)

(declare-fun res!1048467 () Bool)

(assert (=> b!1530990 (=> (not res!1048467) (not e!853098))))

(assert (=> b!1530990 (= res!1048467 (= lt!663011 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804)) mask!2512)))))

(declare-fun b!1530991 () Bool)

(declare-fun res!1048472 () Bool)

(assert (=> b!1530991 (=> (not res!1048472) (not e!853100))))

(declare-datatypes ((List!35704 0))(
  ( (Nil!35701) (Cons!35700 (h!37143 (_ BitVec 64)) (t!50405 List!35704)) )
))
(declare-fun arrayNoDuplicates!0 (array!101647 (_ BitVec 32) List!35704) Bool)

(assert (=> b!1530991 (= res!1048472 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35701))))

(declare-fun b!1530992 () Bool)

(declare-fun e!853102 () Bool)

(assert (=> b!1530992 (= e!853101 e!853102)))

(declare-fun res!1048466 () Bool)

(assert (=> b!1530992 (=> res!1048466 e!853102)))

(declare-fun lt!663013 () (_ BitVec 32))

(assert (=> b!1530992 (= res!1048466 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!663013 #b00000000000000000000000000000000) (bvsge lt!663013 (size!49592 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530992 (= lt!663013 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530993 () Bool)

(assert (=> b!1530993 (= e!853102 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663013 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) lt!663012))))

(declare-fun b!1530994 () Bool)

(declare-fun res!1048468 () Bool)

(assert (=> b!1530994 (=> (not res!1048468) (not e!853100))))

(assert (=> b!1530994 (= res!1048468 (validKeyInArray!0 (select (arr!49041 a!2804) j!70)))))

(declare-fun b!1530995 () Bool)

(declare-fun res!1048465 () Bool)

(assert (=> b!1530995 (=> (not res!1048465) (not e!853098))))

(assert (=> b!1530995 (= res!1048465 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) lt!663012))))

(declare-fun b!1530996 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101647 (_ BitVec 32)) SeekEntryResult!13227)

(assert (=> b!1530996 (= e!853099 (= (seekEntry!0 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) (Found!13227 j!70)))))

(declare-fun b!1530997 () Bool)

(declare-fun res!1048469 () Bool)

(assert (=> b!1530997 (=> (not res!1048469) (not e!853100))))

(assert (=> b!1530997 (= res!1048469 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!130484 res!1048470) b!1530986))

(assert (= (and b!1530986 res!1048473) b!1530987))

(assert (= (and b!1530987 res!1048471) b!1530994))

(assert (= (and b!1530994 res!1048468) b!1530997))

(assert (= (and b!1530997 res!1048469) b!1530991))

(assert (= (and b!1530991 res!1048472) b!1530985))

(assert (= (and b!1530985 res!1048474) b!1530988))

(assert (= (and b!1530988 res!1048464) b!1530995))

(assert (= (and b!1530995 res!1048465) b!1530990))

(assert (= (and b!1530990 res!1048467) b!1530989))

(assert (= (and b!1530989 res!1048475) b!1530996))

(assert (= (and b!1530989 (not res!1048476)) b!1530992))

(assert (= (and b!1530992 (not res!1048466)) b!1530993))

(declare-fun m!1413809 () Bool)

(assert (=> b!1530987 m!1413809))

(assert (=> b!1530987 m!1413809))

(declare-fun m!1413811 () Bool)

(assert (=> b!1530987 m!1413811))

(declare-fun m!1413813 () Bool)

(assert (=> b!1530995 m!1413813))

(assert (=> b!1530995 m!1413813))

(declare-fun m!1413815 () Bool)

(assert (=> b!1530995 m!1413815))

(assert (=> b!1530993 m!1413813))

(assert (=> b!1530993 m!1413813))

(declare-fun m!1413817 () Bool)

(assert (=> b!1530993 m!1413817))

(assert (=> b!1530989 m!1413813))

(declare-fun m!1413819 () Bool)

(assert (=> b!1530989 m!1413819))

(declare-fun m!1413821 () Bool)

(assert (=> b!1530989 m!1413821))

(declare-fun m!1413823 () Bool)

(assert (=> b!1530989 m!1413823))

(declare-fun m!1413825 () Bool)

(assert (=> b!1530989 m!1413825))

(assert (=> b!1530996 m!1413813))

(assert (=> b!1530996 m!1413813))

(declare-fun m!1413827 () Bool)

(assert (=> b!1530996 m!1413827))

(declare-fun m!1413829 () Bool)

(assert (=> b!1530991 m!1413829))

(assert (=> b!1530990 m!1413821))

(assert (=> b!1530990 m!1413823))

(assert (=> b!1530990 m!1413823))

(declare-fun m!1413831 () Bool)

(assert (=> b!1530990 m!1413831))

(assert (=> b!1530990 m!1413831))

(assert (=> b!1530990 m!1413823))

(declare-fun m!1413833 () Bool)

(assert (=> b!1530990 m!1413833))

(declare-fun m!1413835 () Bool)

(assert (=> b!1530997 m!1413835))

(assert (=> b!1530988 m!1413813))

(assert (=> b!1530988 m!1413813))

(declare-fun m!1413837 () Bool)

(assert (=> b!1530988 m!1413837))

(assert (=> b!1530988 m!1413837))

(assert (=> b!1530988 m!1413813))

(declare-fun m!1413839 () Bool)

(assert (=> b!1530988 m!1413839))

(declare-fun m!1413841 () Bool)

(assert (=> start!130484 m!1413841))

(declare-fun m!1413843 () Bool)

(assert (=> start!130484 m!1413843))

(assert (=> b!1530994 m!1413813))

(assert (=> b!1530994 m!1413813))

(declare-fun m!1413845 () Bool)

(assert (=> b!1530994 m!1413845))

(declare-fun m!1413847 () Bool)

(assert (=> b!1530992 m!1413847))

(push 1)

(assert (not b!1530992))

(assert (not b!1530987))

(assert (not b!1530990))

(assert (not b!1530997))

(assert (not b!1530995))

(assert (not b!1530993))

(assert (not b!1530994))

(assert (not start!130484))

(assert (not b!1530989))

(assert (not b!1530988))

(assert (not b!1530991))

(assert (not b!1530996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159851 () Bool)

(assert (=> d!159851 (= (validKeyInArray!0 (select (arr!49041 a!2804) j!70)) (and (not (= (select (arr!49041 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49041 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530994 d!159851))

(declare-fun b!1531082 () Bool)

(declare-fun lt!663046 () SeekEntryResult!13227)

(assert (=> b!1531082 (and (bvsge (index!55304 lt!663046) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663046) (size!49592 a!2804)))))

(declare-fun res!1048511 () Bool)

(assert (=> b!1531082 (= res!1048511 (= (select (arr!49041 a!2804) (index!55304 lt!663046)) (select (arr!49041 a!2804) j!70)))))

(declare-fun e!853157 () Bool)

(assert (=> b!1531082 (=> res!1048511 e!853157)))

(declare-fun e!853154 () Bool)

(assert (=> b!1531082 (= e!853154 e!853157)))

(declare-fun b!1531083 () Bool)

(declare-fun e!853156 () SeekEntryResult!13227)

(assert (=> b!1531083 (= e!853156 (Intermediate!13227 false lt!663013 (bvadd #b00000000000000000000000000000001 x!534)))))

(declare-fun b!1531084 () Bool)

(declare-fun e!853155 () Bool)

(assert (=> b!1531084 (= e!853155 (bvsge (x!136999 lt!663046) #b01111111111111111111111111111110))))

(declare-fun b!1531086 () Bool)

(declare-fun e!853153 () SeekEntryResult!13227)

(assert (=> b!1531086 (= e!853153 (Intermediate!13227 true lt!663013 (bvadd #b00000000000000000000000000000001 x!534)))))

(declare-fun b!1531087 () Bool)

(assert (=> b!1531087 (and (bvsge (index!55304 lt!663046) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663046) (size!49592 a!2804)))))

(declare-fun res!1048509 () Bool)

(assert (=> b!1531087 (= res!1048509 (= (select (arr!49041 a!2804) (index!55304 lt!663046)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531087 (=> res!1048509 e!853157)))

(declare-fun b!1531088 () Bool)

(assert (=> b!1531088 (= e!853156 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534 #b00000000000000000000000000000001) (nextIndex!0 lt!663013 (bvadd #b00000000000000000000000000000001 x!534) mask!2512) (select (arr!49041 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531089 () Bool)

(assert (=> b!1531089 (= e!853153 e!853156)))

(declare-fun c!140848 () Bool)

(declare-fun lt!663045 () (_ BitVec 64))

(assert (=> b!1531089 (= c!140848 (or (= lt!663045 (select (arr!49041 a!2804) j!70)) (= (bvadd lt!663045 lt!663045) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531090 () Bool)

(assert (=> b!1531090 (and (bvsge (index!55304 lt!663046) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663046) (size!49592 a!2804)))))

(assert (=> b!1531090 (= e!853157 (= (select (arr!49041 a!2804) (index!55304 lt!663046)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159853 () Bool)

(assert (=> d!159853 e!853155))

(declare-fun c!140847 () Bool)

(assert (=> d!159853 (= c!140847 (and (is-Intermediate!13227 lt!663046) (undefined!14039 lt!663046)))))

(assert (=> d!159853 (= lt!663046 e!853153)))

(declare-fun c!140849 () Bool)

(assert (=> d!159853 (= c!140849 (bvsge (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110))))

(assert (=> d!159853 (= lt!663045 (select (arr!49041 a!2804) lt!663013))))

(assert (=> d!159853 (validMask!0 mask!2512)))

(assert (=> d!159853 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!663013 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) lt!663046)))

(declare-fun b!1531085 () Bool)

(assert (=> b!1531085 (= e!853155 e!853154)))

(declare-fun res!1048510 () Bool)

(assert (=> b!1531085 (= res!1048510 (and (is-Intermediate!13227 lt!663046) (not (undefined!14039 lt!663046)) (bvslt (x!136999 lt!663046) #b01111111111111111111111111111110) (bvsge (x!136999 lt!663046) #b00000000000000000000000000000000) (bvsge (x!136999 lt!663046) (bvadd #b00000000000000000000000000000001 x!534))))))

(assert (=> b!1531085 (=> (not res!1048510) (not e!853154))))

(assert (= (and d!159853 c!140849) b!1531086))

(assert (= (and d!159853 (not c!140849)) b!1531089))

(assert (= (and b!1531089 c!140848) b!1531083))

(assert (= (and b!1531089 (not c!140848)) b!1531088))

(assert (= (and d!159853 c!140847) b!1531084))

(assert (= (and d!159853 (not c!140847)) b!1531085))

(assert (= (and b!1531085 res!1048510) b!1531082))

(assert (= (and b!1531082 (not res!1048511)) b!1531087))

(assert (= (and b!1531087 (not res!1048509)) b!1531090))

(declare-fun m!1413877 () Bool)

(assert (=> b!1531087 m!1413877))

(assert (=> b!1531090 m!1413877))

(declare-fun m!1413879 () Bool)

(assert (=> d!159853 m!1413879))

(assert (=> d!159853 m!1413841))

(declare-fun m!1413881 () Bool)

(assert (=> b!1531088 m!1413881))

(assert (=> b!1531088 m!1413881))

(assert (=> b!1531088 m!1413813))

(declare-fun m!1413883 () Bool)

(assert (=> b!1531088 m!1413883))

(assert (=> b!1531082 m!1413877))

(assert (=> b!1530993 d!159853))

(declare-fun d!159863 () Bool)

(declare-fun lt!663057 () (_ BitVec 32))

(assert (=> d!159863 (and (bvsge lt!663057 #b00000000000000000000000000000000) (bvslt lt!663057 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159863 (= lt!663057 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159863 (validMask!0 mask!2512)))

(assert (=> d!159863 (= (nextIndex!0 index!487 x!534 mask!2512) lt!663057)))

(declare-fun bs!43889 () Bool)

(assert (= bs!43889 d!159863))

(declare-fun m!1413885 () Bool)

(assert (=> bs!43889 m!1413885))

(assert (=> bs!43889 m!1413841))

(assert (=> b!1530992 d!159863))

(declare-fun b!1531158 () Bool)

(declare-fun e!853199 () SeekEntryResult!13227)

(assert (=> b!1531158 (= e!853199 Undefined!13227)))

(declare-fun b!1531159 () Bool)

(declare-fun e!853202 () SeekEntryResult!13227)

(declare-fun lt!663086 () SeekEntryResult!13227)

(assert (=> b!1531159 (= e!853202 (ite (is-MissingVacant!13227 lt!663086) (MissingZero!13227 (index!55305 lt!663086)) lt!663086))))

(declare-fun lt!663088 () SeekEntryResult!13227)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101647 (_ BitVec 32)) SeekEntryResult!13227)

(assert (=> b!1531159 (= lt!663086 (seekKeyOrZeroReturnVacant!0 (x!136999 lt!663088) (index!55304 lt!663088) (index!55304 lt!663088) (select (arr!49041 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531160 () Bool)

(declare-fun e!853203 () SeekEntryResult!13227)

(assert (=> b!1531160 (= e!853199 e!853203)))

(declare-fun lt!663090 () (_ BitVec 64))

(assert (=> b!1531160 (= lt!663090 (select (arr!49041 a!2804) (index!55304 lt!663088)))))

(declare-fun c!140876 () Bool)

(assert (=> b!1531160 (= c!140876 (= lt!663090 (select (arr!49041 a!2804) j!70)))))

(declare-fun d!159869 () Bool)

(declare-fun lt!663087 () SeekEntryResult!13227)

(assert (=> d!159869 (and (or (is-MissingVacant!13227 lt!663087) (not (is-Found!13227 lt!663087)) (and (bvsge (index!55303 lt!663087) #b00000000000000000000000000000000) (bvslt (index!55303 lt!663087) (size!49592 a!2804)))) (not (is-MissingVacant!13227 lt!663087)) (or (not (is-Found!13227 lt!663087)) (= (select (arr!49041 a!2804) (index!55303 lt!663087)) (select (arr!49041 a!2804) j!70))))))

(assert (=> d!159869 (= lt!663087 e!853199)))

(declare-fun c!140875 () Bool)

(assert (=> d!159869 (= c!140875 (and (is-Intermediate!13227 lt!663088) (undefined!14039 lt!663088)))))

(assert (=> d!159869 (= lt!663088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) (select (arr!49041 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159869 (validMask!0 mask!2512)))

(assert (=> d!159869 (= (seekEntry!0 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) lt!663087)))

(declare-fun b!1531161 () Bool)

(assert (=> b!1531161 (= e!853203 (Found!13227 (index!55304 lt!663088)))))

(declare-fun b!1531163 () Bool)

(assert (=> b!1531163 (= e!853202 (MissingZero!13227 (index!55304 lt!663088)))))

(declare-fun b!1531165 () Bool)

(declare-fun c!140878 () Bool)

(assert (=> b!1531165 (= c!140878 (= lt!663090 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531165 (= e!853203 e!853202)))

(assert (= (and d!159869 c!140875) b!1531158))

(assert (= (and d!159869 (not c!140875)) b!1531160))

(assert (= (and b!1531160 c!140876) b!1531161))

(assert (= (and b!1531160 (not c!140876)) b!1531165))

(assert (= (and b!1531165 c!140878) b!1531163))

(assert (= (and b!1531165 (not c!140878)) b!1531159))

(assert (=> b!1531159 m!1413813))

(declare-fun m!1413921 () Bool)

(assert (=> b!1531159 m!1413921))

(declare-fun m!1413923 () Bool)

(assert (=> b!1531160 m!1413923))

(declare-fun m!1413925 () Bool)

(assert (=> d!159869 m!1413925))

(assert (=> d!159869 m!1413813))

(assert (=> d!159869 m!1413837))

(assert (=> d!159869 m!1413837))

(assert (=> d!159869 m!1413813))

(assert (=> d!159869 m!1413839))

(assert (=> d!159869 m!1413841))

(assert (=> b!1530996 d!159869))

(declare-fun d!159885 () Bool)

(assert (=> d!159885 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130484 d!159885))

(declare-fun d!159901 () Bool)

(assert (=> d!159901 (= (array_inv!37986 a!2804) (bvsge (size!49592 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130484 d!159901))

(declare-fun b!1531199 () Bool)

(declare-fun lt!663110 () SeekEntryResult!13227)

(assert (=> b!1531199 (and (bvsge (index!55304 lt!663110) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663110) (size!49592 a!2804)))))

(declare-fun res!1048544 () Bool)

(assert (=> b!1531199 (= res!1048544 (= (select (arr!49041 a!2804) (index!55304 lt!663110)) (select (arr!49041 a!2804) j!70)))))

(declare-fun e!853226 () Bool)

(assert (=> b!1531199 (=> res!1048544 e!853226)))

(declare-fun e!853223 () Bool)

(assert (=> b!1531199 (= e!853223 e!853226)))

(declare-fun b!1531200 () Bool)

(declare-fun e!853225 () SeekEntryResult!13227)

(assert (=> b!1531200 (= e!853225 (Intermediate!13227 false index!487 x!534))))

(declare-fun b!1531201 () Bool)

(declare-fun e!853224 () Bool)

(assert (=> b!1531201 (= e!853224 (bvsge (x!136999 lt!663110) #b01111111111111111111111111111110))))

(declare-fun b!1531203 () Bool)

(declare-fun e!853222 () SeekEntryResult!13227)

(assert (=> b!1531203 (= e!853222 (Intermediate!13227 true index!487 x!534))))

(declare-fun b!1531204 () Bool)

(assert (=> b!1531204 (and (bvsge (index!55304 lt!663110) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663110) (size!49592 a!2804)))))

(declare-fun res!1048542 () Bool)

(assert (=> b!1531204 (= res!1048542 (= (select (arr!49041 a!2804) (index!55304 lt!663110)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531204 (=> res!1048542 e!853226)))

(declare-fun b!1531205 () Bool)

(assert (=> b!1531205 (= e!853225 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49041 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531206 () Bool)

(assert (=> b!1531206 (= e!853222 e!853225)))

(declare-fun lt!663109 () (_ BitVec 64))

(declare-fun c!140890 () Bool)

(assert (=> b!1531206 (= c!140890 (or (= lt!663109 (select (arr!49041 a!2804) j!70)) (= (bvadd lt!663109 lt!663109) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531207 () Bool)

(assert (=> b!1531207 (and (bvsge (index!55304 lt!663110) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663110) (size!49592 a!2804)))))

(assert (=> b!1531207 (= e!853226 (= (select (arr!49041 a!2804) (index!55304 lt!663110)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159903 () Bool)

(assert (=> d!159903 e!853224))

(declare-fun c!140889 () Bool)

(assert (=> d!159903 (= c!140889 (and (is-Intermediate!13227 lt!663110) (undefined!14039 lt!663110)))))

(assert (=> d!159903 (= lt!663110 e!853222)))

(declare-fun c!140891 () Bool)

(assert (=> d!159903 (= c!140891 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159903 (= lt!663109 (select (arr!49041 a!2804) index!487))))

(assert (=> d!159903 (validMask!0 mask!2512)))

(assert (=> d!159903 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) lt!663110)))

(declare-fun b!1531202 () Bool)

(assert (=> b!1531202 (= e!853224 e!853223)))

(declare-fun res!1048543 () Bool)

(assert (=> b!1531202 (= res!1048543 (and (is-Intermediate!13227 lt!663110) (not (undefined!14039 lt!663110)) (bvslt (x!136999 lt!663110) #b01111111111111111111111111111110) (bvsge (x!136999 lt!663110) #b00000000000000000000000000000000) (bvsge (x!136999 lt!663110) x!534)))))

(assert (=> b!1531202 (=> (not res!1048543) (not e!853223))))

(assert (= (and d!159903 c!140891) b!1531203))

(assert (= (and d!159903 (not c!140891)) b!1531206))

(assert (= (and b!1531206 c!140890) b!1531200))

(assert (= (and b!1531206 (not c!140890)) b!1531205))

(assert (= (and d!159903 c!140889) b!1531201))

(assert (= (and d!159903 (not c!140889)) b!1531202))

(assert (= (and b!1531202 res!1048543) b!1531199))

(assert (= (and b!1531199 (not res!1048544)) b!1531204))

(assert (= (and b!1531204 (not res!1048542)) b!1531207))

(declare-fun m!1413951 () Bool)

(assert (=> b!1531204 m!1413951))

(assert (=> b!1531207 m!1413951))

(declare-fun m!1413953 () Bool)

(assert (=> d!159903 m!1413953))

(assert (=> d!159903 m!1413841))

(assert (=> b!1531205 m!1413847))

(assert (=> b!1531205 m!1413847))

(assert (=> b!1531205 m!1413813))

(declare-fun m!1413955 () Bool)

(assert (=> b!1531205 m!1413955))

(assert (=> b!1531199 m!1413951))

(assert (=> b!1530995 d!159903))

(declare-fun b!1531212 () Bool)

(declare-fun lt!663115 () SeekEntryResult!13227)

(assert (=> b!1531212 (and (bvsge (index!55304 lt!663115) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663115) (size!49592 a!2804)))))

(declare-fun res!1048549 () Bool)

(assert (=> b!1531212 (= res!1048549 (= (select (arr!49041 a!2804) (index!55304 lt!663115)) (select (arr!49041 a!2804) j!70)))))

(declare-fun e!853234 () Bool)

(assert (=> b!1531212 (=> res!1048549 e!853234)))

(declare-fun e!853231 () Bool)

(assert (=> b!1531212 (= e!853231 e!853234)))

(declare-fun b!1531213 () Bool)

(declare-fun e!853233 () SeekEntryResult!13227)

(assert (=> b!1531213 (= e!853233 (Intermediate!13227 false (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531214 () Bool)

(declare-fun e!853232 () Bool)

(assert (=> b!1531214 (= e!853232 (bvsge (x!136999 lt!663115) #b01111111111111111111111111111110))))

(declare-fun b!1531216 () Bool)

(declare-fun e!853230 () SeekEntryResult!13227)

(assert (=> b!1531216 (= e!853230 (Intermediate!13227 true (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531217 () Bool)

(assert (=> b!1531217 (and (bvsge (index!55304 lt!663115) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663115) (size!49592 a!2804)))))

(declare-fun res!1048547 () Bool)

(assert (=> b!1531217 (= res!1048547 (= (select (arr!49041 a!2804) (index!55304 lt!663115)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531217 (=> res!1048547 e!853234)))

(declare-fun b!1531218 () Bool)

(assert (=> b!1531218 (= e!853233 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49041 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531219 () Bool)

(assert (=> b!1531219 (= e!853230 e!853233)))

(declare-fun lt!663114 () (_ BitVec 64))

(declare-fun c!140894 () Bool)

(assert (=> b!1531219 (= c!140894 (or (= lt!663114 (select (arr!49041 a!2804) j!70)) (= (bvadd lt!663114 lt!663114) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531220 () Bool)

(assert (=> b!1531220 (and (bvsge (index!55304 lt!663115) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663115) (size!49592 a!2804)))))

(assert (=> b!1531220 (= e!853234 (= (select (arr!49041 a!2804) (index!55304 lt!663115)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159905 () Bool)

(assert (=> d!159905 e!853232))

(declare-fun c!140893 () Bool)

(assert (=> d!159905 (= c!140893 (and (is-Intermediate!13227 lt!663115) (undefined!14039 lt!663115)))))

(assert (=> d!159905 (= lt!663115 e!853230)))

(declare-fun c!140895 () Bool)

(assert (=> d!159905 (= c!140895 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159905 (= lt!663114 (select (arr!49041 a!2804) (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512)))))

(assert (=> d!159905 (validMask!0 mask!2512)))

(assert (=> d!159905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) (select (arr!49041 a!2804) j!70) a!2804 mask!2512) lt!663115)))

(declare-fun b!1531215 () Bool)

(assert (=> b!1531215 (= e!853232 e!853231)))

(declare-fun res!1048548 () Bool)

(assert (=> b!1531215 (= res!1048548 (and (is-Intermediate!13227 lt!663115) (not (undefined!14039 lt!663115)) (bvslt (x!136999 lt!663115) #b01111111111111111111111111111110) (bvsge (x!136999 lt!663115) #b00000000000000000000000000000000) (bvsge (x!136999 lt!663115) #b00000000000000000000000000000000)))))

(assert (=> b!1531215 (=> (not res!1048548) (not e!853231))))

(assert (= (and d!159905 c!140895) b!1531216))

(assert (= (and d!159905 (not c!140895)) b!1531219))

(assert (= (and b!1531219 c!140894) b!1531213))

(assert (= (and b!1531219 (not c!140894)) b!1531218))

(assert (= (and d!159905 c!140893) b!1531214))

(assert (= (and d!159905 (not c!140893)) b!1531215))

(assert (= (and b!1531215 res!1048548) b!1531212))

(assert (= (and b!1531212 (not res!1048549)) b!1531217))

(assert (= (and b!1531217 (not res!1048547)) b!1531220))

(declare-fun m!1413969 () Bool)

(assert (=> b!1531217 m!1413969))

(assert (=> b!1531220 m!1413969))

(assert (=> d!159905 m!1413837))

(declare-fun m!1413971 () Bool)

(assert (=> d!159905 m!1413971))

(assert (=> d!159905 m!1413841))

(assert (=> b!1531218 m!1413837))

(declare-fun m!1413973 () Bool)

(assert (=> b!1531218 m!1413973))

(assert (=> b!1531218 m!1413973))

(assert (=> b!1531218 m!1413813))

(declare-fun m!1413975 () Bool)

(assert (=> b!1531218 m!1413975))

(assert (=> b!1531212 m!1413969))

(assert (=> b!1530988 d!159905))

(declare-fun d!159909 () Bool)

(declare-fun lt!663139 () (_ BitVec 32))

(declare-fun lt!663138 () (_ BitVec 32))

(assert (=> d!159909 (= lt!663139 (bvmul (bvxor lt!663138 (bvlshr lt!663138 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159909 (= lt!663138 ((_ extract 31 0) (bvand (bvxor (select (arr!49041 a!2804) j!70) (bvlshr (select (arr!49041 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159909 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048552 (let ((h!37146 ((_ extract 31 0) (bvand (bvxor (select (arr!49041 a!2804) j!70) (bvlshr (select (arr!49041 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!137007 (bvmul (bvxor h!37146 (bvlshr h!37146 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!137007 (bvlshr x!137007 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048552 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048552 #b00000000000000000000000000000000))))))

(assert (=> d!159909 (= (toIndex!0 (select (arr!49041 a!2804) j!70) mask!2512) (bvand (bvxor lt!663139 (bvlshr lt!663139 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530988 d!159909))

(declare-fun d!159917 () Bool)

(assert (=> d!159917 (= (validKeyInArray!0 (select (arr!49041 a!2804) i!961)) (and (not (= (select (arr!49041 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49041 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530987 d!159917))

(declare-fun bm!68540 () Bool)

(declare-fun call!68543 () Bool)

(assert (=> bm!68540 (= call!68543 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1531270 () Bool)

(declare-fun e!853266 () Bool)

(assert (=> b!1531270 (= e!853266 call!68543)))

(declare-fun d!159919 () Bool)

(declare-fun res!1048567 () Bool)

(declare-fun e!853268 () Bool)

(assert (=> d!159919 (=> res!1048567 e!853268)))

(assert (=> d!159919 (= res!1048567 (bvsge #b00000000000000000000000000000000 (size!49592 a!2804)))))

(assert (=> d!159919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!853268)))

(declare-fun b!1531271 () Bool)

(declare-fun e!853267 () Bool)

(assert (=> b!1531271 (= e!853267 call!68543)))

(declare-fun b!1531272 () Bool)

(assert (=> b!1531272 (= e!853268 e!853267)))

(declare-fun c!140913 () Bool)

(assert (=> b!1531272 (= c!140913 (validKeyInArray!0 (select (arr!49041 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531273 () Bool)

(assert (=> b!1531273 (= e!853267 e!853266)))

(declare-fun lt!663152 () (_ BitVec 64))

(assert (=> b!1531273 (= lt!663152 (select (arr!49041 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!663153 () Unit!51194)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101647 (_ BitVec 64) (_ BitVec 32)) Unit!51194)

(assert (=> b!1531273 (= lt!663153 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!663152 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1531273 (arrayContainsKey!0 a!2804 lt!663152 #b00000000000000000000000000000000)))

(declare-fun lt!663151 () Unit!51194)

(assert (=> b!1531273 (= lt!663151 lt!663153)))

(declare-fun res!1048566 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101647 (_ BitVec 32)) SeekEntryResult!13227)

(assert (=> b!1531273 (= res!1048566 (= (seekEntryOrOpen!0 (select (arr!49041 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13227 #b00000000000000000000000000000000)))))

(assert (=> b!1531273 (=> (not res!1048566) (not e!853266))))

(assert (= (and d!159919 (not res!1048567)) b!1531272))

(assert (= (and b!1531272 c!140913) b!1531273))

(assert (= (and b!1531272 (not c!140913)) b!1531271))

(assert (= (and b!1531273 res!1048566) b!1531270))

(assert (= (or b!1531270 b!1531271) bm!68540))

(declare-fun m!1414003 () Bool)

(assert (=> bm!68540 m!1414003))

(declare-fun m!1414005 () Bool)

(assert (=> b!1531272 m!1414005))

(assert (=> b!1531272 m!1414005))

(declare-fun m!1414007 () Bool)

(assert (=> b!1531272 m!1414007))

(assert (=> b!1531273 m!1414005))

(declare-fun m!1414009 () Bool)

(assert (=> b!1531273 m!1414009))

(declare-fun m!1414011 () Bool)

(assert (=> b!1531273 m!1414011))

(assert (=> b!1531273 m!1414005))

(declare-fun m!1414013 () Bool)

(assert (=> b!1531273 m!1414013))

(assert (=> b!1530997 d!159919))

(declare-fun b!1531289 () Bool)

(declare-fun e!853281 () Bool)

(declare-fun e!853284 () Bool)

(assert (=> b!1531289 (= e!853281 e!853284)))

(declare-fun res!1048577 () Bool)

(assert (=> b!1531289 (=> (not res!1048577) (not e!853284))))

(declare-fun e!853283 () Bool)

(assert (=> b!1531289 (= res!1048577 (not e!853283))))

(declare-fun res!1048579 () Bool)

(assert (=> b!1531289 (=> (not res!1048579) (not e!853283))))

(assert (=> b!1531289 (= res!1048579 (validKeyInArray!0 (select (arr!49041 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531290 () Bool)

(declare-fun e!853282 () Bool)

(assert (=> b!1531290 (= e!853284 e!853282)))

(declare-fun c!140917 () Bool)

(assert (=> b!1531290 (= c!140917 (validKeyInArray!0 (select (arr!49041 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531291 () Bool)

(declare-fun call!68549 () Bool)

(assert (=> b!1531291 (= e!853282 call!68549)))

(declare-fun b!1531292 () Bool)

(assert (=> b!1531292 (= e!853282 call!68549)))

(declare-fun bm!68546 () Bool)

(assert (=> bm!68546 (= call!68549 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140917 (Cons!35700 (select (arr!49041 a!2804) #b00000000000000000000000000000000) Nil!35701) Nil!35701)))))

(declare-fun d!159925 () Bool)

(declare-fun res!1048578 () Bool)

(assert (=> d!159925 (=> res!1048578 e!853281)))

(assert (=> d!159925 (= res!1048578 (bvsge #b00000000000000000000000000000000 (size!49592 a!2804)))))

(assert (=> d!159925 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35701) e!853281)))

(declare-fun b!1531293 () Bool)

(declare-fun contains!10016 (List!35704 (_ BitVec 64)) Bool)

(assert (=> b!1531293 (= e!853283 (contains!10016 Nil!35701 (select (arr!49041 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159925 (not res!1048578)) b!1531289))

(assert (= (and b!1531289 res!1048579) b!1531293))

(assert (= (and b!1531289 res!1048577) b!1531290))

(assert (= (and b!1531290 c!140917) b!1531292))

(assert (= (and b!1531290 (not c!140917)) b!1531291))

(assert (= (or b!1531292 b!1531291) bm!68546))

(assert (=> b!1531289 m!1414005))

(assert (=> b!1531289 m!1414005))

(assert (=> b!1531289 m!1414007))

(assert (=> b!1531290 m!1414005))

(assert (=> b!1531290 m!1414005))

(assert (=> b!1531290 m!1414007))

(assert (=> bm!68546 m!1414005))

(declare-fun m!1414019 () Bool)

(assert (=> bm!68546 m!1414019))

(assert (=> b!1531293 m!1414005))

(assert (=> b!1531293 m!1414005))

(declare-fun m!1414021 () Bool)

(assert (=> b!1531293 m!1414021))

(assert (=> b!1530991 d!159925))

(declare-fun b!1531294 () Bool)

(declare-fun lt!663155 () SeekEntryResult!13227)

(assert (=> b!1531294 (and (bvsge (index!55304 lt!663155) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663155) (size!49592 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804)))))))

(declare-fun res!1048582 () Bool)

(assert (=> b!1531294 (= res!1048582 (= (select (arr!49041 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804))) (index!55304 lt!663155)) (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!853289 () Bool)

(assert (=> b!1531294 (=> res!1048582 e!853289)))

(declare-fun e!853286 () Bool)

(assert (=> b!1531294 (= e!853286 e!853289)))

(declare-fun b!1531295 () Bool)

(declare-fun e!853288 () SeekEntryResult!13227)

(assert (=> b!1531295 (= e!853288 (Intermediate!13227 false (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531296 () Bool)

(declare-fun e!853287 () Bool)

(assert (=> b!1531296 (= e!853287 (bvsge (x!136999 lt!663155) #b01111111111111111111111111111110))))

(declare-fun e!853285 () SeekEntryResult!13227)

(declare-fun b!1531298 () Bool)

(assert (=> b!1531298 (= e!853285 (Intermediate!13227 true (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531299 () Bool)

(assert (=> b!1531299 (and (bvsge (index!55304 lt!663155) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663155) (size!49592 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804)))))))

(declare-fun res!1048580 () Bool)

(assert (=> b!1531299 (= res!1048580 (= (select (arr!49041 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804))) (index!55304 lt!663155)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531299 (=> res!1048580 e!853289)))

(declare-fun b!1531300 () Bool)

(assert (=> b!1531300 (= e!853288 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804)) mask!2512))))

(declare-fun b!1531301 () Bool)

(assert (=> b!1531301 (= e!853285 e!853288)))

(declare-fun lt!663154 () (_ BitVec 64))

(declare-fun c!140919 () Bool)

(assert (=> b!1531301 (= c!140919 (or (= lt!663154 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!663154 lt!663154) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531302 () Bool)

(assert (=> b!1531302 (and (bvsge (index!55304 lt!663155) #b00000000000000000000000000000000) (bvslt (index!55304 lt!663155) (size!49592 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804)))))))

(assert (=> b!1531302 (= e!853289 (= (select (arr!49041 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804))) (index!55304 lt!663155)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!159929 () Bool)

(assert (=> d!159929 e!853287))

(declare-fun c!140918 () Bool)

(assert (=> d!159929 (= c!140918 (and (is-Intermediate!13227 lt!663155) (undefined!14039 lt!663155)))))

(assert (=> d!159929 (= lt!663155 e!853285)))

(declare-fun c!140920 () Bool)

(assert (=> d!159929 (= c!140920 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159929 (= lt!663154 (select (arr!49041 (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804))) (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159929 (validMask!0 mask!2512)))

(assert (=> d!159929 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101648 (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49592 a!2804)) mask!2512) lt!663155)))

(declare-fun b!1531297 () Bool)

(assert (=> b!1531297 (= e!853287 e!853286)))

(declare-fun res!1048581 () Bool)

(assert (=> b!1531297 (= res!1048581 (and (is-Intermediate!13227 lt!663155) (not (undefined!14039 lt!663155)) (bvslt (x!136999 lt!663155) #b01111111111111111111111111111110) (bvsge (x!136999 lt!663155) #b00000000000000000000000000000000) (bvsge (x!136999 lt!663155) #b00000000000000000000000000000000)))))

(assert (=> b!1531297 (=> (not res!1048581) (not e!853286))))

(assert (= (and d!159929 c!140920) b!1531298))

(assert (= (and d!159929 (not c!140920)) b!1531301))

(assert (= (and b!1531301 c!140919) b!1531295))

(assert (= (and b!1531301 (not c!140919)) b!1531300))

(assert (= (and d!159929 c!140918) b!1531296))

(assert (= (and d!159929 (not c!140918)) b!1531297))

(assert (= (and b!1531297 res!1048581) b!1531294))

(assert (= (and b!1531294 (not res!1048582)) b!1531299))

(assert (= (and b!1531299 (not res!1048580)) b!1531302))

(declare-fun m!1414023 () Bool)

(assert (=> b!1531299 m!1414023))

(assert (=> b!1531302 m!1414023))

(assert (=> d!159929 m!1413831))

(declare-fun m!1414025 () Bool)

(assert (=> d!159929 m!1414025))

(assert (=> d!159929 m!1413841))

(assert (=> b!1531300 m!1413831))

(declare-fun m!1414027 () Bool)

(assert (=> b!1531300 m!1414027))

(assert (=> b!1531300 m!1414027))

(assert (=> b!1531300 m!1413823))

(declare-fun m!1414029 () Bool)

(assert (=> b!1531300 m!1414029))

(assert (=> b!1531294 m!1414023))

(assert (=> b!1530990 d!159929))

(declare-fun d!159931 () Bool)

(declare-fun lt!663157 () (_ BitVec 32))

(declare-fun lt!663156 () (_ BitVec 32))

(assert (=> d!159931 (= lt!663157 (bvmul (bvxor lt!663156 (bvlshr lt!663156 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159931 (= lt!663156 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159931 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048552 (let ((h!37146 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!137007 (bvmul (bvxor h!37146 (bvlshr h!37146 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!137007 (bvlshr x!137007 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048552 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048552 #b00000000000000000000000000000000))))))

(assert (=> d!159931 (= (toIndex!0 (select (store (arr!49041 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!663157 (bvlshr lt!663157 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530990 d!159931))

(declare-fun call!68550 () Bool)

(declare-fun bm!68547 () Bool)

(assert (=> bm!68547 (= call!68550 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1531303 () Bool)

(declare-fun e!853290 () Bool)

(assert (=> b!1531303 (= e!853290 call!68550)))

(declare-fun d!159933 () Bool)

(declare-fun res!1048584 () Bool)

(declare-fun e!853292 () Bool)

(assert (=> d!159933 (=> res!1048584 e!853292)))

(assert (=> d!159933 (= res!1048584 (bvsge j!70 (size!49592 a!2804)))))

(assert (=> d!159933 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!853292)))

(declare-fun b!1531304 () Bool)

(declare-fun e!853291 () Bool)

(assert (=> b!1531304 (= e!853291 call!68550)))

(declare-fun b!1531305 () Bool)

(assert (=> b!1531305 (= e!853292 e!853291)))

(declare-fun c!140921 () Bool)

(assert (=> b!1531305 (= c!140921 (validKeyInArray!0 (select (arr!49041 a!2804) j!70)))))

(declare-fun b!1531306 () Bool)

(assert (=> b!1531306 (= e!853291 e!853290)))

(declare-fun lt!663159 () (_ BitVec 64))

(assert (=> b!1531306 (= lt!663159 (select (arr!49041 a!2804) j!70))))

(declare-fun lt!663160 () Unit!51194)

(assert (=> b!1531306 (= lt!663160 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!663159 j!70))))

(assert (=> b!1531306 (arrayContainsKey!0 a!2804 lt!663159 #b00000000000000000000000000000000)))

(declare-fun lt!663158 () Unit!51194)

(assert (=> b!1531306 (= lt!663158 lt!663160)))

(declare-fun res!1048583 () Bool)

(assert (=> b!1531306 (= res!1048583 (= (seekEntryOrOpen!0 (select (arr!49041 a!2804) j!70) a!2804 mask!2512) (Found!13227 j!70)))))

(assert (=> b!1531306 (=> (not res!1048583) (not e!853290))))

(assert (= (and d!159933 (not res!1048584)) b!1531305))

(assert (= (and b!1531305 c!140921) b!1531306))

(assert (= (and b!1531305 (not c!140921)) b!1531304))

(assert (= (and b!1531306 res!1048583) b!1531303))

(assert (= (or b!1531303 b!1531304) bm!68547))

(declare-fun m!1414031 () Bool)

(assert (=> bm!68547 m!1414031))

(assert (=> b!1531305 m!1413813))

(assert (=> b!1531305 m!1413813))

(assert (=> b!1531305 m!1413845))

(assert (=> b!1531306 m!1413813))

(declare-fun m!1414033 () Bool)

(assert (=> b!1531306 m!1414033))

(declare-fun m!1414035 () Bool)

(assert (=> b!1531306 m!1414035))

(assert (=> b!1531306 m!1413813))

(declare-fun m!1414037 () Bool)

(assert (=> b!1531306 m!1414037))

(assert (=> b!1530989 d!159933))

(declare-fun d!159935 () Bool)

(assert (=> d!159935 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!663163 () Unit!51194)

(declare-fun choose!38 (array!101647 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51194)

(assert (=> d!159935 (= lt!663163 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159935 (validMask!0 mask!2512)))

(assert (=> d!159935 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!663163)))

(declare-fun bs!43894 () Bool)

(assert (= bs!43894 d!159935))

(assert (=> bs!43894 m!1413825))

(declare-fun m!1414039 () Bool)

(assert (=> bs!43894 m!1414039))

(assert (=> bs!43894 m!1413841))

(assert (=> b!1530989 d!159935))

(push 1)

