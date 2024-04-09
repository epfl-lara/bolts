; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130482 () Bool)

(assert start!130482)

(declare-fun b!1530946 () Bool)

(declare-fun res!1048430 () Bool)

(declare-fun e!853080 () Bool)

(assert (=> b!1530946 (=> (not res!1048430) (not e!853080))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101645 0))(
  ( (array!101646 (arr!49040 (Array (_ BitVec 32) (_ BitVec 64))) (size!49591 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101645)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530946 (= res!1048430 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49591 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49591 a!2804))))))

(declare-fun b!1530947 () Bool)

(declare-fun res!1048437 () Bool)

(assert (=> b!1530947 (=> (not res!1048437) (not e!853080))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101645 (_ BitVec 32)) Bool)

(assert (=> b!1530947 (= res!1048437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530948 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lt!662999 () (_ BitVec 32))

(declare-fun e!853084 () Bool)

(declare-datatypes ((SeekEntryResult!13226 0))(
  ( (MissingZero!13226 (index!55298 (_ BitVec 32))) (Found!13226 (index!55299 (_ BitVec 32))) (Intermediate!13226 (undefined!14038 Bool) (index!55300 (_ BitVec 32)) (x!136998 (_ BitVec 32))) (Undefined!13226) (MissingVacant!13226 (index!55301 (_ BitVec 32))) )
))
(declare-fun lt!662998 () SeekEntryResult!13226)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101645 (_ BitVec 32)) SeekEntryResult!13226)

(assert (=> b!1530948 (= e!853084 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!662999 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) lt!662998))))

(declare-fun b!1530949 () Bool)

(declare-fun res!1048428 () Bool)

(assert (=> b!1530949 (=> (not res!1048428) (not e!853080))))

(declare-datatypes ((List!35703 0))(
  ( (Nil!35700) (Cons!35699 (h!37142 (_ BitVec 64)) (t!50404 List!35703)) )
))
(declare-fun arrayNoDuplicates!0 (array!101645 (_ BitVec 32) List!35703) Bool)

(assert (=> b!1530949 (= res!1048428 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35700))))

(declare-fun b!1530950 () Bool)

(declare-fun res!1048429 () Bool)

(assert (=> b!1530950 (=> (not res!1048429) (not e!853080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530950 (= res!1048429 (validKeyInArray!0 (select (arr!49040 a!2804) j!70)))))

(declare-fun b!1530951 () Bool)

(declare-fun e!853081 () Bool)

(assert (=> b!1530951 (= e!853080 e!853081)))

(declare-fun res!1048425 () Bool)

(assert (=> b!1530951 (=> (not res!1048425) (not e!853081))))

(declare-fun lt!663000 () SeekEntryResult!13226)

(assert (=> b!1530951 (= res!1048425 (= lt!663000 lt!662998))))

(assert (=> b!1530951 (= lt!662998 (Intermediate!13226 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530951 (= lt!663000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) (select (arr!49040 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530952 () Bool)

(declare-fun e!853083 () Bool)

(assert (=> b!1530952 (= e!853081 (not e!853083))))

(declare-fun res!1048427 () Bool)

(assert (=> b!1530952 (=> res!1048427 e!853083)))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1530952 (= res!1048427 (or (not (= (select (arr!49040 a!2804) j!70) (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!853085 () Bool)

(assert (=> b!1530952 e!853085))

(declare-fun res!1048426 () Bool)

(assert (=> b!1530952 (=> (not res!1048426) (not e!853085))))

(assert (=> b!1530952 (= res!1048426 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51192 0))(
  ( (Unit!51193) )
))
(declare-fun lt!663001 () Unit!51192)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51192)

(assert (=> b!1530952 (= lt!663001 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530953 () Bool)

(declare-fun res!1048431 () Bool)

(assert (=> b!1530953 (=> (not res!1048431) (not e!853081))))

(assert (=> b!1530953 (= res!1048431 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) lt!662998))))

(declare-fun b!1530954 () Bool)

(declare-fun res!1048432 () Bool)

(assert (=> b!1530954 (=> (not res!1048432) (not e!853080))))

(assert (=> b!1530954 (= res!1048432 (validKeyInArray!0 (select (arr!49040 a!2804) i!961)))))

(declare-fun b!1530955 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101645 (_ BitVec 32)) SeekEntryResult!13226)

(assert (=> b!1530955 (= e!853085 (= (seekEntry!0 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) (Found!13226 j!70)))))

(declare-fun b!1530957 () Bool)

(declare-fun res!1048436 () Bool)

(assert (=> b!1530957 (=> (not res!1048436) (not e!853081))))

(assert (=> b!1530957 (= res!1048436 (= lt!663000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804)) mask!2512)))))

(declare-fun b!1530958 () Bool)

(declare-fun res!1048435 () Bool)

(assert (=> b!1530958 (=> (not res!1048435) (not e!853080))))

(assert (=> b!1530958 (= res!1048435 (and (= (size!49591 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49591 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49591 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530956 () Bool)

(assert (=> b!1530956 (= e!853083 e!853084)))

(declare-fun res!1048434 () Bool)

(assert (=> b!1530956 (=> res!1048434 e!853084)))

(assert (=> b!1530956 (= res!1048434 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!662999 #b00000000000000000000000000000000) (bvsge lt!662999 (size!49591 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530956 (= lt!662999 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1048433 () Bool)

(assert (=> start!130482 (=> (not res!1048433) (not e!853080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130482 (= res!1048433 (validMask!0 mask!2512))))

(assert (=> start!130482 e!853080))

(assert (=> start!130482 true))

(declare-fun array_inv!37985 (array!101645) Bool)

(assert (=> start!130482 (array_inv!37985 a!2804)))

(assert (= (and start!130482 res!1048433) b!1530958))

(assert (= (and b!1530958 res!1048435) b!1530954))

(assert (= (and b!1530954 res!1048432) b!1530950))

(assert (= (and b!1530950 res!1048429) b!1530947))

(assert (= (and b!1530947 res!1048437) b!1530949))

(assert (= (and b!1530949 res!1048428) b!1530946))

(assert (= (and b!1530946 res!1048430) b!1530951))

(assert (= (and b!1530951 res!1048425) b!1530953))

(assert (= (and b!1530953 res!1048431) b!1530957))

(assert (= (and b!1530957 res!1048436) b!1530952))

(assert (= (and b!1530952 res!1048426) b!1530955))

(assert (= (and b!1530952 (not res!1048427)) b!1530956))

(assert (= (and b!1530956 (not res!1048434)) b!1530948))

(declare-fun m!1413769 () Bool)

(assert (=> b!1530951 m!1413769))

(assert (=> b!1530951 m!1413769))

(declare-fun m!1413771 () Bool)

(assert (=> b!1530951 m!1413771))

(assert (=> b!1530951 m!1413771))

(assert (=> b!1530951 m!1413769))

(declare-fun m!1413773 () Bool)

(assert (=> b!1530951 m!1413773))

(assert (=> b!1530952 m!1413769))

(declare-fun m!1413775 () Bool)

(assert (=> b!1530952 m!1413775))

(declare-fun m!1413777 () Bool)

(assert (=> b!1530952 m!1413777))

(declare-fun m!1413779 () Bool)

(assert (=> b!1530952 m!1413779))

(declare-fun m!1413781 () Bool)

(assert (=> b!1530952 m!1413781))

(declare-fun m!1413783 () Bool)

(assert (=> b!1530947 m!1413783))

(assert (=> b!1530955 m!1413769))

(assert (=> b!1530955 m!1413769))

(declare-fun m!1413785 () Bool)

(assert (=> b!1530955 m!1413785))

(assert (=> b!1530953 m!1413769))

(assert (=> b!1530953 m!1413769))

(declare-fun m!1413787 () Bool)

(assert (=> b!1530953 m!1413787))

(assert (=> b!1530950 m!1413769))

(assert (=> b!1530950 m!1413769))

(declare-fun m!1413789 () Bool)

(assert (=> b!1530950 m!1413789))

(assert (=> b!1530957 m!1413777))

(assert (=> b!1530957 m!1413779))

(assert (=> b!1530957 m!1413779))

(declare-fun m!1413791 () Bool)

(assert (=> b!1530957 m!1413791))

(assert (=> b!1530957 m!1413791))

(assert (=> b!1530957 m!1413779))

(declare-fun m!1413793 () Bool)

(assert (=> b!1530957 m!1413793))

(declare-fun m!1413795 () Bool)

(assert (=> b!1530954 m!1413795))

(assert (=> b!1530954 m!1413795))

(declare-fun m!1413797 () Bool)

(assert (=> b!1530954 m!1413797))

(assert (=> b!1530948 m!1413769))

(assert (=> b!1530948 m!1413769))

(declare-fun m!1413799 () Bool)

(assert (=> b!1530948 m!1413799))

(declare-fun m!1413801 () Bool)

(assert (=> b!1530956 m!1413801))

(declare-fun m!1413803 () Bool)

(assert (=> start!130482 m!1413803))

(declare-fun m!1413805 () Bool)

(assert (=> start!130482 m!1413805))

(declare-fun m!1413807 () Bool)

(assert (=> b!1530949 m!1413807))

(check-sat (not b!1530949) (not b!1530952) (not b!1530955) (not b!1530947) (not start!130482) (not b!1530948) (not b!1530953) (not b!1530956) (not b!1530954) (not b!1530951) (not b!1530957) (not b!1530950))
(check-sat)
(get-model)

(declare-fun b!1531006 () Bool)

(declare-fun e!853110 () Bool)

(declare-fun e!853111 () Bool)

(assert (=> b!1531006 (= e!853110 e!853111)))

(declare-fun lt!663022 () (_ BitVec 64))

(assert (=> b!1531006 (= lt!663022 (select (arr!49040 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!663021 () Unit!51192)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101645 (_ BitVec 64) (_ BitVec 32)) Unit!51192)

(assert (=> b!1531006 (= lt!663021 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!663022 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101645 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1531006 (arrayContainsKey!0 a!2804 lt!663022 #b00000000000000000000000000000000)))

(declare-fun lt!663020 () Unit!51192)

(assert (=> b!1531006 (= lt!663020 lt!663021)))

(declare-fun res!1048482 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101645 (_ BitVec 32)) SeekEntryResult!13226)

(assert (=> b!1531006 (= res!1048482 (= (seekEntryOrOpen!0 (select (arr!49040 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13226 #b00000000000000000000000000000000)))))

(assert (=> b!1531006 (=> (not res!1048482) (not e!853111))))

(declare-fun b!1531007 () Bool)

(declare-fun e!853112 () Bool)

(assert (=> b!1531007 (= e!853112 e!853110)))

(declare-fun c!140822 () Bool)

(assert (=> b!1531007 (= c!140822 (validKeyInArray!0 (select (arr!49040 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531008 () Bool)

(declare-fun call!68532 () Bool)

(assert (=> b!1531008 (= e!853110 call!68532)))

(declare-fun b!1531009 () Bool)

(assert (=> b!1531009 (= e!853111 call!68532)))

(declare-fun bm!68529 () Bool)

(assert (=> bm!68529 (= call!68532 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159845 () Bool)

(declare-fun res!1048481 () Bool)

(assert (=> d!159845 (=> res!1048481 e!853112)))

(assert (=> d!159845 (= res!1048481 (bvsge #b00000000000000000000000000000000 (size!49591 a!2804)))))

(assert (=> d!159845 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!853112)))

(assert (= (and d!159845 (not res!1048481)) b!1531007))

(assert (= (and b!1531007 c!140822) b!1531006))

(assert (= (and b!1531007 (not c!140822)) b!1531008))

(assert (= (and b!1531006 res!1048482) b!1531009))

(assert (= (or b!1531009 b!1531008) bm!68529))

(declare-fun m!1413849 () Bool)

(assert (=> b!1531006 m!1413849))

(declare-fun m!1413851 () Bool)

(assert (=> b!1531006 m!1413851))

(declare-fun m!1413853 () Bool)

(assert (=> b!1531006 m!1413853))

(assert (=> b!1531006 m!1413849))

(declare-fun m!1413855 () Bool)

(assert (=> b!1531006 m!1413855))

(assert (=> b!1531007 m!1413849))

(assert (=> b!1531007 m!1413849))

(declare-fun m!1413857 () Bool)

(assert (=> b!1531007 m!1413857))

(declare-fun m!1413859 () Bool)

(assert (=> bm!68529 m!1413859))

(assert (=> b!1530947 d!159845))

(declare-fun e!853123 () SeekEntryResult!13226)

(declare-fun b!1531028 () Bool)

(assert (=> b!1531028 (= e!853123 (Intermediate!13226 true (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531029 () Bool)

(declare-fun lt!663027 () SeekEntryResult!13226)

(assert (=> b!1531029 (and (bvsge (index!55300 lt!663027) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663027) (size!49591 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804)))))))

(declare-fun res!1048491 () Bool)

(assert (=> b!1531029 (= res!1048491 (= (select (arr!49040 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804))) (index!55300 lt!663027)) (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!853126 () Bool)

(assert (=> b!1531029 (=> res!1048491 e!853126)))

(declare-fun e!853127 () Bool)

(assert (=> b!1531029 (= e!853127 e!853126)))

(declare-fun b!1531030 () Bool)

(declare-fun e!853124 () SeekEntryResult!13226)

(assert (=> b!1531030 (= e!853124 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804)) mask!2512))))

(declare-fun b!1531032 () Bool)

(declare-fun e!853125 () Bool)

(assert (=> b!1531032 (= e!853125 e!853127)))

(declare-fun res!1048490 () Bool)

(get-info :version)

(assert (=> b!1531032 (= res!1048490 (and ((_ is Intermediate!13226) lt!663027) (not (undefined!14038 lt!663027)) (bvslt (x!136998 lt!663027) #b01111111111111111111111111111110) (bvsge (x!136998 lt!663027) #b00000000000000000000000000000000) (bvsge (x!136998 lt!663027) #b00000000000000000000000000000000)))))

(assert (=> b!1531032 (=> (not res!1048490) (not e!853127))))

(declare-fun b!1531033 () Bool)

(assert (=> b!1531033 (= e!853125 (bvsge (x!136998 lt!663027) #b01111111111111111111111111111110))))

(declare-fun b!1531034 () Bool)

(assert (=> b!1531034 (= e!853123 e!853124)))

(declare-fun lt!663028 () (_ BitVec 64))

(declare-fun c!140831 () Bool)

(assert (=> b!1531034 (= c!140831 (or (= lt!663028 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!663028 lt!663028) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531035 () Bool)

(assert (=> b!1531035 (and (bvsge (index!55300 lt!663027) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663027) (size!49591 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804)))))))

(declare-fun res!1048489 () Bool)

(assert (=> b!1531035 (= res!1048489 (= (select (arr!49040 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804))) (index!55300 lt!663027)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531035 (=> res!1048489 e!853126)))

(declare-fun b!1531036 () Bool)

(assert (=> b!1531036 (= e!853124 (Intermediate!13226 false (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!159847 () Bool)

(assert (=> d!159847 e!853125))

(declare-fun c!140829 () Bool)

(assert (=> d!159847 (= c!140829 (and ((_ is Intermediate!13226) lt!663027) (undefined!14038 lt!663027)))))

(assert (=> d!159847 (= lt!663027 e!853123)))

(declare-fun c!140830 () Bool)

(assert (=> d!159847 (= c!140830 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159847 (= lt!663028 (select (arr!49040 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804))) (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159847 (validMask!0 mask!2512)))

(assert (=> d!159847 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804)) mask!2512) lt!663027)))

(declare-fun b!1531031 () Bool)

(assert (=> b!1531031 (and (bvsge (index!55300 lt!663027) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663027) (size!49591 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804)))))))

(assert (=> b!1531031 (= e!853126 (= (select (arr!49040 (array!101646 (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49591 a!2804))) (index!55300 lt!663027)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159847 c!140830) b!1531028))

(assert (= (and d!159847 (not c!140830)) b!1531034))

(assert (= (and b!1531034 c!140831) b!1531036))

(assert (= (and b!1531034 (not c!140831)) b!1531030))

(assert (= (and d!159847 c!140829) b!1531033))

(assert (= (and d!159847 (not c!140829)) b!1531032))

(assert (= (and b!1531032 res!1048490) b!1531029))

(assert (= (and b!1531029 (not res!1048491)) b!1531035))

(assert (= (and b!1531035 (not res!1048489)) b!1531031))

(declare-fun m!1413861 () Bool)

(assert (=> b!1531029 m!1413861))

(assert (=> b!1531035 m!1413861))

(assert (=> b!1531031 m!1413861))

(assert (=> b!1531030 m!1413791))

(declare-fun m!1413863 () Bool)

(assert (=> b!1531030 m!1413863))

(assert (=> b!1531030 m!1413863))

(assert (=> b!1531030 m!1413779))

(declare-fun m!1413865 () Bool)

(assert (=> b!1531030 m!1413865))

(assert (=> d!159847 m!1413791))

(declare-fun m!1413867 () Bool)

(assert (=> d!159847 m!1413867))

(assert (=> d!159847 m!1413803))

(assert (=> b!1530957 d!159847))

(declare-fun d!159855 () Bool)

(declare-fun lt!663038 () (_ BitVec 32))

(declare-fun lt!663037 () (_ BitVec 32))

(assert (=> d!159855 (= lt!663038 (bvmul (bvxor lt!663037 (bvlshr lt!663037 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159855 (= lt!663037 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159855 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048492 (let ((h!37144 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!137001 (bvmul (bvxor h!37144 (bvlshr h!37144 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!137001 (bvlshr x!137001 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048492 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048492 #b00000000000000000000000000000000))))))

(assert (=> d!159855 (= (toIndex!0 (select (store (arr!49040 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!663038 (bvlshr lt!663038 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530957 d!159855))

(declare-fun d!159857 () Bool)

(assert (=> d!159857 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130482 d!159857))

(declare-fun d!159861 () Bool)

(assert (=> d!159861 (= (array_inv!37985 a!2804) (bvsge (size!49591 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130482 d!159861))

(declare-fun d!159865 () Bool)

(declare-fun lt!663058 () (_ BitVec 32))

(assert (=> d!159865 (and (bvsge lt!663058 #b00000000000000000000000000000000) (bvslt lt!663058 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159865 (= lt!663058 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159865 (validMask!0 mask!2512)))

(assert (=> d!159865 (= (nextIndex!0 index!487 x!534 mask!2512) lt!663058)))

(declare-fun bs!43890 () Bool)

(assert (= bs!43890 d!159865))

(declare-fun m!1413887 () Bool)

(assert (=> bs!43890 m!1413887))

(assert (=> bs!43890 m!1413803))

(assert (=> b!1530956 d!159865))

(declare-fun d!159871 () Bool)

(assert (=> d!159871 (= (validKeyInArray!0 (select (arr!49040 a!2804) j!70)) (and (not (= (select (arr!49040 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49040 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530950 d!159871))

(declare-fun b!1531101 () Bool)

(declare-fun e!853167 () Bool)

(declare-fun contains!10015 (List!35703 (_ BitVec 64)) Bool)

(assert (=> b!1531101 (= e!853167 (contains!10015 Nil!35700 (select (arr!49040 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1531102 () Bool)

(declare-fun e!853166 () Bool)

(declare-fun call!68535 () Bool)

(assert (=> b!1531102 (= e!853166 call!68535)))

(declare-fun b!1531103 () Bool)

(assert (=> b!1531103 (= e!853166 call!68535)))

(declare-fun b!1531104 () Bool)

(declare-fun e!853169 () Bool)

(declare-fun e!853168 () Bool)

(assert (=> b!1531104 (= e!853169 e!853168)))

(declare-fun res!1048518 () Bool)

(assert (=> b!1531104 (=> (not res!1048518) (not e!853168))))

(assert (=> b!1531104 (= res!1048518 (not e!853167))))

(declare-fun res!1048520 () Bool)

(assert (=> b!1531104 (=> (not res!1048520) (not e!853167))))

(assert (=> b!1531104 (= res!1048520 (validKeyInArray!0 (select (arr!49040 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68532 () Bool)

(declare-fun c!140852 () Bool)

(assert (=> bm!68532 (= call!68535 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140852 (Cons!35699 (select (arr!49040 a!2804) #b00000000000000000000000000000000) Nil!35700) Nil!35700)))))

(declare-fun d!159873 () Bool)

(declare-fun res!1048519 () Bool)

(assert (=> d!159873 (=> res!1048519 e!853169)))

(assert (=> d!159873 (= res!1048519 (bvsge #b00000000000000000000000000000000 (size!49591 a!2804)))))

(assert (=> d!159873 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35700) e!853169)))

(declare-fun b!1531105 () Bool)

(assert (=> b!1531105 (= e!853168 e!853166)))

(assert (=> b!1531105 (= c!140852 (validKeyInArray!0 (select (arr!49040 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159873 (not res!1048519)) b!1531104))

(assert (= (and b!1531104 res!1048520) b!1531101))

(assert (= (and b!1531104 res!1048518) b!1531105))

(assert (= (and b!1531105 c!140852) b!1531103))

(assert (= (and b!1531105 (not c!140852)) b!1531102))

(assert (= (or b!1531103 b!1531102) bm!68532))

(assert (=> b!1531101 m!1413849))

(assert (=> b!1531101 m!1413849))

(declare-fun m!1413889 () Bool)

(assert (=> b!1531101 m!1413889))

(assert (=> b!1531104 m!1413849))

(assert (=> b!1531104 m!1413849))

(assert (=> b!1531104 m!1413857))

(assert (=> bm!68532 m!1413849))

(declare-fun m!1413891 () Bool)

(assert (=> bm!68532 m!1413891))

(assert (=> b!1531105 m!1413849))

(assert (=> b!1531105 m!1413849))

(assert (=> b!1531105 m!1413857))

(assert (=> b!1530949 d!159873))

(declare-fun b!1531106 () Bool)

(declare-fun e!853170 () SeekEntryResult!13226)

(assert (=> b!1531106 (= e!853170 (Intermediate!13226 true lt!662999 (bvadd #b00000000000000000000000000000001 x!534)))))

(declare-fun b!1531107 () Bool)

(declare-fun lt!663059 () SeekEntryResult!13226)

(assert (=> b!1531107 (and (bvsge (index!55300 lt!663059) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663059) (size!49591 a!2804)))))

(declare-fun res!1048523 () Bool)

(assert (=> b!1531107 (= res!1048523 (= (select (arr!49040 a!2804) (index!55300 lt!663059)) (select (arr!49040 a!2804) j!70)))))

(declare-fun e!853173 () Bool)

(assert (=> b!1531107 (=> res!1048523 e!853173)))

(declare-fun e!853174 () Bool)

(assert (=> b!1531107 (= e!853174 e!853173)))

(declare-fun e!853171 () SeekEntryResult!13226)

(declare-fun b!1531108 () Bool)

(assert (=> b!1531108 (= e!853171 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534 #b00000000000000000000000000000001) (nextIndex!0 lt!662999 (bvadd #b00000000000000000000000000000001 x!534) mask!2512) (select (arr!49040 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531110 () Bool)

(declare-fun e!853172 () Bool)

(assert (=> b!1531110 (= e!853172 e!853174)))

(declare-fun res!1048522 () Bool)

(assert (=> b!1531110 (= res!1048522 (and ((_ is Intermediate!13226) lt!663059) (not (undefined!14038 lt!663059)) (bvslt (x!136998 lt!663059) #b01111111111111111111111111111110) (bvsge (x!136998 lt!663059) #b00000000000000000000000000000000) (bvsge (x!136998 lt!663059) (bvadd #b00000000000000000000000000000001 x!534))))))

(assert (=> b!1531110 (=> (not res!1048522) (not e!853174))))

(declare-fun b!1531111 () Bool)

(assert (=> b!1531111 (= e!853172 (bvsge (x!136998 lt!663059) #b01111111111111111111111111111110))))

(declare-fun b!1531112 () Bool)

(assert (=> b!1531112 (= e!853170 e!853171)))

(declare-fun c!140855 () Bool)

(declare-fun lt!663060 () (_ BitVec 64))

(assert (=> b!1531112 (= c!140855 (or (= lt!663060 (select (arr!49040 a!2804) j!70)) (= (bvadd lt!663060 lt!663060) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531113 () Bool)

(assert (=> b!1531113 (and (bvsge (index!55300 lt!663059) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663059) (size!49591 a!2804)))))

(declare-fun res!1048521 () Bool)

(assert (=> b!1531113 (= res!1048521 (= (select (arr!49040 a!2804) (index!55300 lt!663059)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531113 (=> res!1048521 e!853173)))

(declare-fun b!1531114 () Bool)

(assert (=> b!1531114 (= e!853171 (Intermediate!13226 false lt!662999 (bvadd #b00000000000000000000000000000001 x!534)))))

(declare-fun d!159875 () Bool)

(assert (=> d!159875 e!853172))

(declare-fun c!140853 () Bool)

(assert (=> d!159875 (= c!140853 (and ((_ is Intermediate!13226) lt!663059) (undefined!14038 lt!663059)))))

(assert (=> d!159875 (= lt!663059 e!853170)))

(declare-fun c!140854 () Bool)

(assert (=> d!159875 (= c!140854 (bvsge (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110))))

(assert (=> d!159875 (= lt!663060 (select (arr!49040 a!2804) lt!662999))))

(assert (=> d!159875 (validMask!0 mask!2512)))

(assert (=> d!159875 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!662999 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) lt!663059)))

(declare-fun b!1531109 () Bool)

(assert (=> b!1531109 (and (bvsge (index!55300 lt!663059) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663059) (size!49591 a!2804)))))

(assert (=> b!1531109 (= e!853173 (= (select (arr!49040 a!2804) (index!55300 lt!663059)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159875 c!140854) b!1531106))

(assert (= (and d!159875 (not c!140854)) b!1531112))

(assert (= (and b!1531112 c!140855) b!1531114))

(assert (= (and b!1531112 (not c!140855)) b!1531108))

(assert (= (and d!159875 c!140853) b!1531111))

(assert (= (and d!159875 (not c!140853)) b!1531110))

(assert (= (and b!1531110 res!1048522) b!1531107))

(assert (= (and b!1531107 (not res!1048523)) b!1531113))

(assert (= (and b!1531113 (not res!1048521)) b!1531109))

(declare-fun m!1413893 () Bool)

(assert (=> b!1531107 m!1413893))

(assert (=> b!1531113 m!1413893))

(assert (=> b!1531109 m!1413893))

(declare-fun m!1413895 () Bool)

(assert (=> b!1531108 m!1413895))

(assert (=> b!1531108 m!1413895))

(assert (=> b!1531108 m!1413769))

(declare-fun m!1413897 () Bool)

(assert (=> b!1531108 m!1413897))

(declare-fun m!1413899 () Bool)

(assert (=> d!159875 m!1413899))

(assert (=> d!159875 m!1413803))

(assert (=> b!1530948 d!159875))

(declare-fun b!1531119 () Bool)

(declare-fun e!853177 () SeekEntryResult!13226)

(assert (=> b!1531119 (= e!853177 (Intermediate!13226 true index!487 x!534))))

(declare-fun b!1531120 () Bool)

(declare-fun lt!663067 () SeekEntryResult!13226)

(assert (=> b!1531120 (and (bvsge (index!55300 lt!663067) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663067) (size!49591 a!2804)))))

(declare-fun res!1048526 () Bool)

(assert (=> b!1531120 (= res!1048526 (= (select (arr!49040 a!2804) (index!55300 lt!663067)) (select (arr!49040 a!2804) j!70)))))

(declare-fun e!853180 () Bool)

(assert (=> b!1531120 (=> res!1048526 e!853180)))

(declare-fun e!853181 () Bool)

(assert (=> b!1531120 (= e!853181 e!853180)))

(declare-fun b!1531121 () Bool)

(declare-fun e!853178 () SeekEntryResult!13226)

(assert (=> b!1531121 (= e!853178 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49040 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531123 () Bool)

(declare-fun e!853179 () Bool)

(assert (=> b!1531123 (= e!853179 e!853181)))

(declare-fun res!1048525 () Bool)

(assert (=> b!1531123 (= res!1048525 (and ((_ is Intermediate!13226) lt!663067) (not (undefined!14038 lt!663067)) (bvslt (x!136998 lt!663067) #b01111111111111111111111111111110) (bvsge (x!136998 lt!663067) #b00000000000000000000000000000000) (bvsge (x!136998 lt!663067) x!534)))))

(assert (=> b!1531123 (=> (not res!1048525) (not e!853181))))

(declare-fun b!1531124 () Bool)

(assert (=> b!1531124 (= e!853179 (bvsge (x!136998 lt!663067) #b01111111111111111111111111111110))))

(declare-fun b!1531125 () Bool)

(assert (=> b!1531125 (= e!853177 e!853178)))

(declare-fun lt!663068 () (_ BitVec 64))

(declare-fun c!140860 () Bool)

(assert (=> b!1531125 (= c!140860 (or (= lt!663068 (select (arr!49040 a!2804) j!70)) (= (bvadd lt!663068 lt!663068) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531126 () Bool)

(assert (=> b!1531126 (and (bvsge (index!55300 lt!663067) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663067) (size!49591 a!2804)))))

(declare-fun res!1048524 () Bool)

(assert (=> b!1531126 (= res!1048524 (= (select (arr!49040 a!2804) (index!55300 lt!663067)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531126 (=> res!1048524 e!853180)))

(declare-fun b!1531127 () Bool)

(assert (=> b!1531127 (= e!853178 (Intermediate!13226 false index!487 x!534))))

(declare-fun d!159877 () Bool)

(assert (=> d!159877 e!853179))

(declare-fun c!140858 () Bool)

(assert (=> d!159877 (= c!140858 (and ((_ is Intermediate!13226) lt!663067) (undefined!14038 lt!663067)))))

(assert (=> d!159877 (= lt!663067 e!853177)))

(declare-fun c!140859 () Bool)

(assert (=> d!159877 (= c!140859 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159877 (= lt!663068 (select (arr!49040 a!2804) index!487))))

(assert (=> d!159877 (validMask!0 mask!2512)))

(assert (=> d!159877 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) lt!663067)))

(declare-fun b!1531122 () Bool)

(assert (=> b!1531122 (and (bvsge (index!55300 lt!663067) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663067) (size!49591 a!2804)))))

(assert (=> b!1531122 (= e!853180 (= (select (arr!49040 a!2804) (index!55300 lt!663067)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159877 c!140859) b!1531119))

(assert (= (and d!159877 (not c!140859)) b!1531125))

(assert (= (and b!1531125 c!140860) b!1531127))

(assert (= (and b!1531125 (not c!140860)) b!1531121))

(assert (= (and d!159877 c!140858) b!1531124))

(assert (= (and d!159877 (not c!140858)) b!1531123))

(assert (= (and b!1531123 res!1048525) b!1531120))

(assert (= (and b!1531120 (not res!1048526)) b!1531126))

(assert (= (and b!1531126 (not res!1048524)) b!1531122))

(declare-fun m!1413901 () Bool)

(assert (=> b!1531120 m!1413901))

(assert (=> b!1531126 m!1413901))

(assert (=> b!1531122 m!1413901))

(assert (=> b!1531121 m!1413801))

(assert (=> b!1531121 m!1413801))

(assert (=> b!1531121 m!1413769))

(declare-fun m!1413903 () Bool)

(assert (=> b!1531121 m!1413903))

(declare-fun m!1413905 () Bool)

(assert (=> d!159877 m!1413905))

(assert (=> d!159877 m!1413803))

(assert (=> b!1530953 d!159877))

(declare-fun b!1531140 () Bool)

(declare-fun e!853188 () Bool)

(declare-fun e!853189 () Bool)

(assert (=> b!1531140 (= e!853188 e!853189)))

(declare-fun lt!663079 () (_ BitVec 64))

(assert (=> b!1531140 (= lt!663079 (select (arr!49040 a!2804) j!70))))

(declare-fun lt!663078 () Unit!51192)

(assert (=> b!1531140 (= lt!663078 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!663079 j!70))))

(assert (=> b!1531140 (arrayContainsKey!0 a!2804 lt!663079 #b00000000000000000000000000000000)))

(declare-fun lt!663077 () Unit!51192)

(assert (=> b!1531140 (= lt!663077 lt!663078)))

(declare-fun res!1048528 () Bool)

(assert (=> b!1531140 (= res!1048528 (= (seekEntryOrOpen!0 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) (Found!13226 j!70)))))

(assert (=> b!1531140 (=> (not res!1048528) (not e!853189))))

(declare-fun b!1531141 () Bool)

(declare-fun e!853190 () Bool)

(assert (=> b!1531141 (= e!853190 e!853188)))

(declare-fun c!140867 () Bool)

(assert (=> b!1531141 (= c!140867 (validKeyInArray!0 (select (arr!49040 a!2804) j!70)))))

(declare-fun b!1531142 () Bool)

(declare-fun call!68536 () Bool)

(assert (=> b!1531142 (= e!853188 call!68536)))

(declare-fun b!1531143 () Bool)

(assert (=> b!1531143 (= e!853189 call!68536)))

(declare-fun bm!68533 () Bool)

(assert (=> bm!68533 (= call!68536 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159879 () Bool)

(declare-fun res!1048527 () Bool)

(assert (=> d!159879 (=> res!1048527 e!853190)))

(assert (=> d!159879 (= res!1048527 (bvsge j!70 (size!49591 a!2804)))))

(assert (=> d!159879 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!853190)))

(assert (= (and d!159879 (not res!1048527)) b!1531141))

(assert (= (and b!1531141 c!140867) b!1531140))

(assert (= (and b!1531141 (not c!140867)) b!1531142))

(assert (= (and b!1531140 res!1048528) b!1531143))

(assert (= (or b!1531143 b!1531142) bm!68533))

(assert (=> b!1531140 m!1413769))

(declare-fun m!1413907 () Bool)

(assert (=> b!1531140 m!1413907))

(declare-fun m!1413909 () Bool)

(assert (=> b!1531140 m!1413909))

(assert (=> b!1531140 m!1413769))

(declare-fun m!1413911 () Bool)

(assert (=> b!1531140 m!1413911))

(assert (=> b!1531141 m!1413769))

(assert (=> b!1531141 m!1413769))

(assert (=> b!1531141 m!1413789))

(declare-fun m!1413913 () Bool)

(assert (=> bm!68533 m!1413913))

(assert (=> b!1530952 d!159879))

(declare-fun d!159881 () Bool)

(assert (=> d!159881 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!663094 () Unit!51192)

(declare-fun choose!38 (array!101645 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51192)

(assert (=> d!159881 (= lt!663094 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159881 (validMask!0 mask!2512)))

(assert (=> d!159881 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!663094)))

(declare-fun bs!43891 () Bool)

(assert (= bs!43891 d!159881))

(assert (=> bs!43891 m!1413781))

(declare-fun m!1413935 () Bool)

(assert (=> bs!43891 m!1413935))

(assert (=> bs!43891 m!1413803))

(assert (=> b!1530952 d!159881))

(declare-fun e!853206 () SeekEntryResult!13226)

(declare-fun b!1531173 () Bool)

(assert (=> b!1531173 (= e!853206 (Intermediate!13226 true (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1531174 () Bool)

(declare-fun lt!663097 () SeekEntryResult!13226)

(assert (=> b!1531174 (and (bvsge (index!55300 lt!663097) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663097) (size!49591 a!2804)))))

(declare-fun res!1048534 () Bool)

(assert (=> b!1531174 (= res!1048534 (= (select (arr!49040 a!2804) (index!55300 lt!663097)) (select (arr!49040 a!2804) j!70)))))

(declare-fun e!853209 () Bool)

(assert (=> b!1531174 (=> res!1048534 e!853209)))

(declare-fun e!853210 () Bool)

(assert (=> b!1531174 (= e!853210 e!853209)))

(declare-fun b!1531175 () Bool)

(declare-fun e!853207 () SeekEntryResult!13226)

(assert (=> b!1531175 (= e!853207 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49040 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531177 () Bool)

(declare-fun e!853208 () Bool)

(assert (=> b!1531177 (= e!853208 e!853210)))

(declare-fun res!1048533 () Bool)

(assert (=> b!1531177 (= res!1048533 (and ((_ is Intermediate!13226) lt!663097) (not (undefined!14038 lt!663097)) (bvslt (x!136998 lt!663097) #b01111111111111111111111111111110) (bvsge (x!136998 lt!663097) #b00000000000000000000000000000000) (bvsge (x!136998 lt!663097) #b00000000000000000000000000000000)))))

(assert (=> b!1531177 (=> (not res!1048533) (not e!853210))))

(declare-fun b!1531178 () Bool)

(assert (=> b!1531178 (= e!853208 (bvsge (x!136998 lt!663097) #b01111111111111111111111111111110))))

(declare-fun b!1531179 () Bool)

(assert (=> b!1531179 (= e!853206 e!853207)))

(declare-fun lt!663098 () (_ BitVec 64))

(declare-fun c!140883 () Bool)

(assert (=> b!1531179 (= c!140883 (or (= lt!663098 (select (arr!49040 a!2804) j!70)) (= (bvadd lt!663098 lt!663098) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1531180 () Bool)

(assert (=> b!1531180 (and (bvsge (index!55300 lt!663097) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663097) (size!49591 a!2804)))))

(declare-fun res!1048532 () Bool)

(assert (=> b!1531180 (= res!1048532 (= (select (arr!49040 a!2804) (index!55300 lt!663097)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531180 (=> res!1048532 e!853209)))

(declare-fun b!1531181 () Bool)

(assert (=> b!1531181 (= e!853207 (Intermediate!13226 false (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!159889 () Bool)

(assert (=> d!159889 e!853208))

(declare-fun c!140881 () Bool)

(assert (=> d!159889 (= c!140881 (and ((_ is Intermediate!13226) lt!663097) (undefined!14038 lt!663097)))))

(assert (=> d!159889 (= lt!663097 e!853206)))

(declare-fun c!140882 () Bool)

(assert (=> d!159889 (= c!140882 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159889 (= lt!663098 (select (arr!49040 a!2804) (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512)))))

(assert (=> d!159889 (validMask!0 mask!2512)))

(assert (=> d!159889 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) (select (arr!49040 a!2804) j!70) a!2804 mask!2512) lt!663097)))

(declare-fun b!1531176 () Bool)

(assert (=> b!1531176 (and (bvsge (index!55300 lt!663097) #b00000000000000000000000000000000) (bvslt (index!55300 lt!663097) (size!49591 a!2804)))))

(assert (=> b!1531176 (= e!853209 (= (select (arr!49040 a!2804) (index!55300 lt!663097)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159889 c!140882) b!1531173))

(assert (= (and d!159889 (not c!140882)) b!1531179))

(assert (= (and b!1531179 c!140883) b!1531181))

(assert (= (and b!1531179 (not c!140883)) b!1531175))

(assert (= (and d!159889 c!140881) b!1531178))

(assert (= (and d!159889 (not c!140881)) b!1531177))

(assert (= (and b!1531177 res!1048533) b!1531174))

(assert (= (and b!1531174 (not res!1048534)) b!1531180))

(assert (= (and b!1531180 (not res!1048532)) b!1531176))

(declare-fun m!1413937 () Bool)

(assert (=> b!1531174 m!1413937))

(assert (=> b!1531180 m!1413937))

(assert (=> b!1531176 m!1413937))

(assert (=> b!1531175 m!1413771))

(declare-fun m!1413939 () Bool)

(assert (=> b!1531175 m!1413939))

(assert (=> b!1531175 m!1413939))

(assert (=> b!1531175 m!1413769))

(declare-fun m!1413941 () Bool)

(assert (=> b!1531175 m!1413941))

(assert (=> d!159889 m!1413771))

(declare-fun m!1413943 () Bool)

(assert (=> d!159889 m!1413943))

(assert (=> d!159889 m!1413803))

(assert (=> b!1530951 d!159889))

(declare-fun d!159895 () Bool)

(declare-fun lt!663102 () (_ BitVec 32))

(declare-fun lt!663101 () (_ BitVec 32))

(assert (=> d!159895 (= lt!663102 (bvmul (bvxor lt!663101 (bvlshr lt!663101 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159895 (= lt!663101 ((_ extract 31 0) (bvand (bvxor (select (arr!49040 a!2804) j!70) (bvlshr (select (arr!49040 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159895 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048492 (let ((h!37144 ((_ extract 31 0) (bvand (bvxor (select (arr!49040 a!2804) j!70) (bvlshr (select (arr!49040 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!137001 (bvmul (bvxor h!37144 (bvlshr h!37144 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!137001 (bvlshr x!137001 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048492 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048492 #b00000000000000000000000000000000))))))

(assert (=> d!159895 (= (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) (bvand (bvxor lt!663102 (bvlshr lt!663102 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530951 d!159895))

(declare-fun b!1531237 () Bool)

(declare-fun e!853244 () SeekEntryResult!13226)

(declare-fun e!853246 () SeekEntryResult!13226)

(assert (=> b!1531237 (= e!853244 e!853246)))

(declare-fun lt!663128 () (_ BitVec 64))

(declare-fun lt!663130 () SeekEntryResult!13226)

(assert (=> b!1531237 (= lt!663128 (select (arr!49040 a!2804) (index!55300 lt!663130)))))

(declare-fun c!140905 () Bool)

(assert (=> b!1531237 (= c!140905 (= lt!663128 (select (arr!49040 a!2804) j!70)))))

(declare-fun d!159897 () Bool)

(declare-fun lt!663129 () SeekEntryResult!13226)

(assert (=> d!159897 (and (or ((_ is MissingVacant!13226) lt!663129) (not ((_ is Found!13226) lt!663129)) (and (bvsge (index!55299 lt!663129) #b00000000000000000000000000000000) (bvslt (index!55299 lt!663129) (size!49591 a!2804)))) (not ((_ is MissingVacant!13226) lt!663129)) (or (not ((_ is Found!13226) lt!663129)) (= (select (arr!49040 a!2804) (index!55299 lt!663129)) (select (arr!49040 a!2804) j!70))))))

(assert (=> d!159897 (= lt!663129 e!853244)))

(declare-fun c!140904 () Bool)

(assert (=> d!159897 (= c!140904 (and ((_ is Intermediate!13226) lt!663130) (undefined!14038 lt!663130)))))

(assert (=> d!159897 (= lt!663130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49040 a!2804) j!70) mask!2512) (select (arr!49040 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159897 (validMask!0 mask!2512)))

(assert (=> d!159897 (= (seekEntry!0 (select (arr!49040 a!2804) j!70) a!2804 mask!2512) lt!663129)))

(declare-fun b!1531238 () Bool)

(declare-fun e!853245 () SeekEntryResult!13226)

(declare-fun lt!663127 () SeekEntryResult!13226)

(assert (=> b!1531238 (= e!853245 (ite ((_ is MissingVacant!13226) lt!663127) (MissingZero!13226 (index!55301 lt!663127)) lt!663127))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101645 (_ BitVec 32)) SeekEntryResult!13226)

(assert (=> b!1531238 (= lt!663127 (seekKeyOrZeroReturnVacant!0 (x!136998 lt!663130) (index!55300 lt!663130) (index!55300 lt!663130) (select (arr!49040 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1531239 () Bool)

(assert (=> b!1531239 (= e!853246 (Found!13226 (index!55300 lt!663130)))))

(declare-fun b!1531240 () Bool)

(assert (=> b!1531240 (= e!853245 (MissingZero!13226 (index!55300 lt!663130)))))

(declare-fun b!1531241 () Bool)

(assert (=> b!1531241 (= e!853244 Undefined!13226)))

(declare-fun b!1531242 () Bool)

(declare-fun c!140903 () Bool)

(assert (=> b!1531242 (= c!140903 (= lt!663128 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1531242 (= e!853246 e!853245)))

(assert (= (and d!159897 c!140904) b!1531241))

(assert (= (and d!159897 (not c!140904)) b!1531237))

(assert (= (and b!1531237 c!140905) b!1531239))

(assert (= (and b!1531237 (not c!140905)) b!1531242))

(assert (= (and b!1531242 c!140903) b!1531240))

(assert (= (and b!1531242 (not c!140903)) b!1531238))

(declare-fun m!1413985 () Bool)

(assert (=> b!1531237 m!1413985))

(declare-fun m!1413987 () Bool)

(assert (=> d!159897 m!1413987))

(assert (=> d!159897 m!1413769))

(assert (=> d!159897 m!1413771))

(assert (=> d!159897 m!1413771))

(assert (=> d!159897 m!1413769))

(assert (=> d!159897 m!1413773))

(assert (=> d!159897 m!1413803))

(assert (=> b!1531238 m!1413769))

(declare-fun m!1413991 () Bool)

(assert (=> b!1531238 m!1413991))

(assert (=> b!1530955 d!159897))

(declare-fun d!159915 () Bool)

(assert (=> d!159915 (= (validKeyInArray!0 (select (arr!49040 a!2804) i!961)) (and (not (= (select (arr!49040 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49040 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530954 d!159915))

(check-sat (not b!1531101) (not bm!68532) (not b!1531108) (not b!1531105) (not b!1531104) (not bm!68529) (not b!1531030) (not b!1531007) (not b!1531140) (not b!1531175) (not d!159889) (not b!1531121) (not d!159875) (not d!159847) (not b!1531006) (not b!1531141) (not bm!68533) (not d!159897) (not d!159865) (not d!159877) (not b!1531238) (not d!159881))
(check-sat)
