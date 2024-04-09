; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129836 () Bool)

(assert start!129836)

(declare-fun b!1523624 () Bool)

(declare-fun e!849422 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101359 0))(
  ( (array!101360 (arr!48906 (Array (_ BitVec 32) (_ BitVec 64))) (size!49457 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101359)

(declare-datatypes ((SeekEntryResult!13092 0))(
  ( (MissingZero!13092 (index!54762 (_ BitVec 32))) (Found!13092 (index!54763 (_ BitVec 32))) (Intermediate!13092 (undefined!13904 Bool) (index!54764 (_ BitVec 32)) (x!136453 (_ BitVec 32))) (Undefined!13092) (MissingVacant!13092 (index!54765 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101359 (_ BitVec 32)) SeekEntryResult!13092)

(assert (=> b!1523624 (= e!849422 (= (seekEntry!0 (select (arr!48906 a!2804) j!70) a!2804 mask!2512) (Found!13092 j!70)))))

(declare-fun b!1523625 () Bool)

(declare-fun e!849419 () Bool)

(declare-fun e!849420 () Bool)

(assert (=> b!1523625 (= e!849419 e!849420)))

(declare-fun res!1042675 () Bool)

(assert (=> b!1523625 (=> (not res!1042675) (not e!849420))))

(declare-fun lt!659975 () SeekEntryResult!13092)

(declare-fun lt!659974 () SeekEntryResult!13092)

(assert (=> b!1523625 (= res!1042675 (= lt!659975 lt!659974))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523625 (= lt!659974 (Intermediate!13092 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101359 (_ BitVec 32)) SeekEntryResult!13092)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523625 (= lt!659975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) (select (arr!48906 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523626 () Bool)

(declare-fun res!1042672 () Bool)

(assert (=> b!1523626 (=> (not res!1042672) (not e!849420))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523626 (= res!1042672 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48906 a!2804) j!70) a!2804 mask!2512) lt!659974))))

(declare-fun res!1042674 () Bool)

(assert (=> start!129836 (=> (not res!1042674) (not e!849419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129836 (= res!1042674 (validMask!0 mask!2512))))

(assert (=> start!129836 e!849419))

(assert (=> start!129836 true))

(declare-fun array_inv!37851 (array!101359) Bool)

(assert (=> start!129836 (array_inv!37851 a!2804)))

(declare-fun b!1523627 () Bool)

(declare-fun res!1042678 () Bool)

(assert (=> b!1523627 (=> (not res!1042678) (not e!849419))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1523627 (= res!1042678 (and (= (size!49457 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49457 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49457 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523628 () Bool)

(declare-fun res!1042669 () Bool)

(assert (=> b!1523628 (=> (not res!1042669) (not e!849419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523628 (= res!1042669 (validKeyInArray!0 (select (arr!48906 a!2804) i!961)))))

(declare-fun b!1523629 () Bool)

(declare-fun lt!659977 () (_ BitVec 64))

(declare-fun lt!659973 () array!101359)

(declare-fun e!849418 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101359 (_ BitVec 32)) SeekEntryResult!13092)

(assert (=> b!1523629 (= e!849418 (= (seekEntryOrOpen!0 (select (arr!48906 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!659977 lt!659973 mask!2512)))))

(declare-fun b!1523630 () Bool)

(declare-fun res!1042670 () Bool)

(assert (=> b!1523630 (=> (not res!1042670) (not e!849419))))

(assert (=> b!1523630 (= res!1042670 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49457 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49457 a!2804))))))

(declare-fun b!1523631 () Bool)

(declare-fun res!1042677 () Bool)

(assert (=> b!1523631 (=> (not res!1042677) (not e!849419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101359 (_ BitVec 32)) Bool)

(assert (=> b!1523631 (= res!1042677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523632 () Bool)

(declare-fun e!849421 () Bool)

(assert (=> b!1523632 (= e!849420 e!849421)))

(declare-fun res!1042671 () Bool)

(assert (=> b!1523632 (=> (not res!1042671) (not e!849421))))

(assert (=> b!1523632 (= res!1042671 (= lt!659975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659977 mask!2512) lt!659977 lt!659973 mask!2512)))))

(assert (=> b!1523632 (= lt!659977 (select (store (arr!48906 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1523632 (= lt!659973 (array!101360 (store (arr!48906 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49457 a!2804)))))

(declare-fun b!1523633 () Bool)

(assert (=> b!1523633 (= e!849421 (not e!849418))))

(declare-fun res!1042680 () Bool)

(assert (=> b!1523633 (=> res!1042680 e!849418)))

(assert (=> b!1523633 (= res!1042680 (or (not (= (select (arr!48906 a!2804) j!70) lt!659977)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48906 a!2804) index!487) (select (arr!48906 a!2804) j!70))) (not (= j!70 index!487))))))

(assert (=> b!1523633 e!849422))

(declare-fun res!1042679 () Bool)

(assert (=> b!1523633 (=> (not res!1042679) (not e!849422))))

(assert (=> b!1523633 (= res!1042679 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50924 0))(
  ( (Unit!50925) )
))
(declare-fun lt!659976 () Unit!50924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50924)

(assert (=> b!1523633 (= lt!659976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523634 () Bool)

(declare-fun res!1042673 () Bool)

(assert (=> b!1523634 (=> (not res!1042673) (not e!849419))))

(assert (=> b!1523634 (= res!1042673 (validKeyInArray!0 (select (arr!48906 a!2804) j!70)))))

(declare-fun b!1523635 () Bool)

(declare-fun res!1042676 () Bool)

(assert (=> b!1523635 (=> (not res!1042676) (not e!849419))))

(declare-datatypes ((List!35569 0))(
  ( (Nil!35566) (Cons!35565 (h!36990 (_ BitVec 64)) (t!50270 List!35569)) )
))
(declare-fun arrayNoDuplicates!0 (array!101359 (_ BitVec 32) List!35569) Bool)

(assert (=> b!1523635 (= res!1042676 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35566))))

(assert (= (and start!129836 res!1042674) b!1523627))

(assert (= (and b!1523627 res!1042678) b!1523628))

(assert (= (and b!1523628 res!1042669) b!1523634))

(assert (= (and b!1523634 res!1042673) b!1523631))

(assert (= (and b!1523631 res!1042677) b!1523635))

(assert (= (and b!1523635 res!1042676) b!1523630))

(assert (= (and b!1523630 res!1042670) b!1523625))

(assert (= (and b!1523625 res!1042675) b!1523626))

(assert (= (and b!1523626 res!1042672) b!1523632))

(assert (= (and b!1523632 res!1042671) b!1523633))

(assert (= (and b!1523633 res!1042679) b!1523624))

(assert (= (and b!1523633 (not res!1042680)) b!1523629))

(declare-fun m!1406823 () Bool)

(assert (=> b!1523624 m!1406823))

(assert (=> b!1523624 m!1406823))

(declare-fun m!1406825 () Bool)

(assert (=> b!1523624 m!1406825))

(assert (=> b!1523633 m!1406823))

(declare-fun m!1406827 () Bool)

(assert (=> b!1523633 m!1406827))

(declare-fun m!1406829 () Bool)

(assert (=> b!1523633 m!1406829))

(declare-fun m!1406831 () Bool)

(assert (=> b!1523633 m!1406831))

(declare-fun m!1406833 () Bool)

(assert (=> b!1523631 m!1406833))

(declare-fun m!1406835 () Bool)

(assert (=> b!1523635 m!1406835))

(declare-fun m!1406837 () Bool)

(assert (=> b!1523632 m!1406837))

(assert (=> b!1523632 m!1406837))

(declare-fun m!1406839 () Bool)

(assert (=> b!1523632 m!1406839))

(declare-fun m!1406841 () Bool)

(assert (=> b!1523632 m!1406841))

(declare-fun m!1406843 () Bool)

(assert (=> b!1523632 m!1406843))

(assert (=> b!1523634 m!1406823))

(assert (=> b!1523634 m!1406823))

(declare-fun m!1406845 () Bool)

(assert (=> b!1523634 m!1406845))

(assert (=> b!1523629 m!1406823))

(assert (=> b!1523629 m!1406823))

(declare-fun m!1406847 () Bool)

(assert (=> b!1523629 m!1406847))

(declare-fun m!1406849 () Bool)

(assert (=> b!1523629 m!1406849))

(assert (=> b!1523625 m!1406823))

(assert (=> b!1523625 m!1406823))

(declare-fun m!1406851 () Bool)

(assert (=> b!1523625 m!1406851))

(assert (=> b!1523625 m!1406851))

(assert (=> b!1523625 m!1406823))

(declare-fun m!1406853 () Bool)

(assert (=> b!1523625 m!1406853))

(declare-fun m!1406855 () Bool)

(assert (=> b!1523628 m!1406855))

(assert (=> b!1523628 m!1406855))

(declare-fun m!1406857 () Bool)

(assert (=> b!1523628 m!1406857))

(assert (=> b!1523626 m!1406823))

(assert (=> b!1523626 m!1406823))

(declare-fun m!1406859 () Bool)

(assert (=> b!1523626 m!1406859))

(declare-fun m!1406861 () Bool)

(assert (=> start!129836 m!1406861))

(declare-fun m!1406863 () Bool)

(assert (=> start!129836 m!1406863))

(push 1)

(assert (not b!1523629))

(assert (not b!1523633))

(assert (not b!1523626))

(assert (not b!1523634))

(assert (not start!129836))

(assert (not b!1523624))

(assert (not b!1523631))

(assert (not b!1523628))

(assert (not b!1523625))

(assert (not b!1523632))

(assert (not b!1523635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1523689 () Bool)

(declare-fun e!849459 () Bool)

(declare-fun call!68410 () Bool)

(assert (=> b!1523689 (= e!849459 call!68410)))

(declare-fun b!1523690 () Bool)

(declare-fun e!849458 () Bool)

(declare-fun contains!9998 (List!35569 (_ BitVec 64)) Bool)

(assert (=> b!1523690 (= e!849458 (contains!9998 Nil!35566 (select (arr!48906 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68407 () Bool)

(declare-fun c!140043 () Bool)

(assert (=> bm!68407 (= call!68410 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140043 (Cons!35565 (select (arr!48906 a!2804) #b00000000000000000000000000000000) Nil!35566) Nil!35566)))))

(declare-fun b!1523691 () Bool)

(declare-fun e!849460 () Bool)

(declare-fun e!849461 () Bool)

(assert (=> b!1523691 (= e!849460 e!849461)))

(declare-fun res!1042707 () Bool)

(assert (=> b!1523691 (=> (not res!1042707) (not e!849461))))

(assert (=> b!1523691 (= res!1042707 (not e!849458))))

(declare-fun res!1042705 () Bool)

(assert (=> b!1523691 (=> (not res!1042705) (not e!849458))))

(assert (=> b!1523691 (= res!1042705 (validKeyInArray!0 (select (arr!48906 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159175 () Bool)

(declare-fun res!1042706 () Bool)

(assert (=> d!159175 (=> res!1042706 e!849460)))

(assert (=> d!159175 (= res!1042706 (bvsge #b00000000000000000000000000000000 (size!49457 a!2804)))))

(assert (=> d!159175 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35566) e!849460)))

(declare-fun b!1523692 () Bool)

(assert (=> b!1523692 (= e!849459 call!68410)))

(declare-fun b!1523693 () Bool)

(assert (=> b!1523693 (= e!849461 e!849459)))

(assert (=> b!1523693 (= c!140043 (validKeyInArray!0 (select (arr!48906 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159175 (not res!1042706)) b!1523691))

(assert (= (and b!1523691 res!1042705) b!1523690))

(assert (= (and b!1523691 res!1042707) b!1523693))

(assert (= (and b!1523693 c!140043) b!1523692))

(assert (= (and b!1523693 (not c!140043)) b!1523689))

(assert (= (or b!1523692 b!1523689) bm!68407))

(declare-fun m!1406893 () Bool)

(assert (=> b!1523690 m!1406893))

(assert (=> b!1523690 m!1406893))

(declare-fun m!1406895 () Bool)

(assert (=> b!1523690 m!1406895))

(assert (=> bm!68407 m!1406893))

(declare-fun m!1406897 () Bool)

(assert (=> bm!68407 m!1406897))

(assert (=> b!1523691 m!1406893))

(assert (=> b!1523691 m!1406893))

(declare-fun m!1406899 () Bool)

(assert (=> b!1523691 m!1406899))

(assert (=> b!1523693 m!1406893))

(assert (=> b!1523693 m!1406893))

(assert (=> b!1523693 m!1406899))

(assert (=> b!1523635 d!159175))

(declare-fun b!1523769 () Bool)

(declare-fun e!849508 () Bool)

(declare-fun lt!660036 () SeekEntryResult!13092)

(assert (=> b!1523769 (= e!849508 (bvsge (x!136453 lt!660036) #b01111111111111111111111111111110))))

(declare-fun b!1523770 () Bool)

(declare-fun e!849505 () SeekEntryResult!13092)

(declare-fun e!849507 () SeekEntryResult!13092)

(assert (=> b!1523770 (= e!849505 e!849507)))

(declare-fun c!140071 () Bool)

(declare-fun lt!660037 () (_ BitVec 64))

(assert (=> b!1523770 (= c!140071 (or (= lt!660037 (select (arr!48906 a!2804) j!70)) (= (bvadd lt!660037 lt!660037) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523771 () Bool)

(assert (=> b!1523771 (and (bvsge (index!54764 lt!660036) #b00000000000000000000000000000000) (bvslt (index!54764 lt!660036) (size!49457 a!2804)))))

(declare-fun res!1042730 () Bool)

(assert (=> b!1523771 (= res!1042730 (= (select (arr!48906 a!2804) (index!54764 lt!660036)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849509 () Bool)

(assert (=> b!1523771 (=> res!1042730 e!849509)))

(declare-fun b!1523772 () Bool)

(assert (=> b!1523772 (= e!849507 (Intermediate!13092 false (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523773 () Bool)

(declare-fun e!849506 () Bool)

(assert (=> b!1523773 (= e!849508 e!849506)))

(declare-fun res!1042729 () Bool)

(assert (=> b!1523773 (= res!1042729 (and (is-Intermediate!13092 lt!660036) (not (undefined!13904 lt!660036)) (bvslt (x!136453 lt!660036) #b01111111111111111111111111111110) (bvsge (x!136453 lt!660036) #b00000000000000000000000000000000) (bvsge (x!136453 lt!660036) #b00000000000000000000000000000000)))))

(assert (=> b!1523773 (=> (not res!1042729) (not e!849506))))

(declare-fun b!1523774 () Bool)

(assert (=> b!1523774 (= e!849505 (Intermediate!13092 true (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523775 () Bool)

(assert (=> b!1523775 (and (bvsge (index!54764 lt!660036) #b00000000000000000000000000000000) (bvslt (index!54764 lt!660036) (size!49457 a!2804)))))

(declare-fun res!1042731 () Bool)

(assert (=> b!1523775 (= res!1042731 (= (select (arr!48906 a!2804) (index!54764 lt!660036)) (select (arr!48906 a!2804) j!70)))))

(assert (=> b!1523775 (=> res!1042731 e!849509)))

(assert (=> b!1523775 (= e!849506 e!849509)))

(declare-fun d!159183 () Bool)

(assert (=> d!159183 e!849508))

(declare-fun c!140073 () Bool)

(assert (=> d!159183 (= c!140073 (and (is-Intermediate!13092 lt!660036) (undefined!13904 lt!660036)))))

(assert (=> d!159183 (= lt!660036 e!849505)))

(declare-fun c!140072 () Bool)

(assert (=> d!159183 (= c!140072 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159183 (= lt!660037 (select (arr!48906 a!2804) (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512)))))

(assert (=> d!159183 (validMask!0 mask!2512)))

(assert (=> d!159183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) (select (arr!48906 a!2804) j!70) a!2804 mask!2512) lt!660036)))

(declare-fun b!1523776 () Bool)

(assert (=> b!1523776 (and (bvsge (index!54764 lt!660036) #b00000000000000000000000000000000) (bvslt (index!54764 lt!660036) (size!49457 a!2804)))))

(assert (=> b!1523776 (= e!849509 (= (select (arr!48906 a!2804) (index!54764 lt!660036)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523777 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523777 (= e!849507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48906 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!159183 c!140072) b!1523774))

(assert (= (and d!159183 (not c!140072)) b!1523770))

(assert (= (and b!1523770 c!140071) b!1523772))

(assert (= (and b!1523770 (not c!140071)) b!1523777))

(assert (= (and d!159183 c!140073) b!1523769))

(assert (= (and d!159183 (not c!140073)) b!1523773))

(assert (= (and b!1523773 res!1042729) b!1523775))

(assert (= (and b!1523775 (not res!1042731)) b!1523771))

(assert (= (and b!1523771 (not res!1042730)) b!1523776))

(declare-fun m!1406919 () Bool)

(assert (=> b!1523775 m!1406919))

(assert (=> d!159183 m!1406851))

(declare-fun m!1406921 () Bool)

(assert (=> d!159183 m!1406921))

(assert (=> d!159183 m!1406861))

(assert (=> b!1523776 m!1406919))

(assert (=> b!1523771 m!1406919))

(assert (=> b!1523777 m!1406851))

(declare-fun m!1406923 () Bool)

(assert (=> b!1523777 m!1406923))

(assert (=> b!1523777 m!1406923))

(assert (=> b!1523777 m!1406823))

(declare-fun m!1406925 () Bool)

(assert (=> b!1523777 m!1406925))

(assert (=> b!1523625 d!159183))

(declare-fun d!159191 () Bool)

(declare-fun lt!660048 () (_ BitVec 32))

(declare-fun lt!660047 () (_ BitVec 32))

(assert (=> d!159191 (= lt!660048 (bvmul (bvxor lt!660047 (bvlshr lt!660047 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159191 (= lt!660047 ((_ extract 31 0) (bvand (bvxor (select (arr!48906 a!2804) j!70) (bvlshr (select (arr!48906 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159191 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1042732 (let ((h!36992 ((_ extract 31 0) (bvand (bvxor (select (arr!48906 a!2804) j!70) (bvlshr (select (arr!48906 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136458 (bvmul (bvxor h!36992 (bvlshr h!36992 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136458 (bvlshr x!136458 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1042732 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1042732 #b00000000000000000000000000000000))))))

(assert (=> d!159191 (= (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) (bvand (bvxor lt!660048 (bvlshr lt!660048 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1523625 d!159191))

(declare-fun d!159201 () Bool)

(assert (=> d!159201 (= (validKeyInArray!0 (select (arr!48906 a!2804) j!70)) (and (not (= (select (arr!48906 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48906 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1523634 d!159201))

(declare-fun b!1523826 () Bool)

(declare-fun e!849536 () SeekEntryResult!13092)

(declare-fun lt!660076 () SeekEntryResult!13092)

(assert (=> b!1523826 (= e!849536 (Found!13092 (index!54764 lt!660076)))))

(declare-fun b!1523827 () Bool)

(declare-fun e!849537 () SeekEntryResult!13092)

(assert (=> b!1523827 (= e!849537 Undefined!13092)))

(declare-fun b!1523828 () Bool)

(assert (=> b!1523828 (= e!849537 e!849536)))

(declare-fun lt!660074 () (_ BitVec 64))

(assert (=> b!1523828 (= lt!660074 (select (arr!48906 a!2804) (index!54764 lt!660076)))))

(declare-fun c!140097 () Bool)

(assert (=> b!1523828 (= c!140097 (= lt!660074 (select (arr!48906 a!2804) j!70)))))

(declare-fun b!1523829 () Bool)

(declare-fun e!849535 () SeekEntryResult!13092)

(assert (=> b!1523829 (= e!849535 (MissingZero!13092 (index!54764 lt!660076)))))

(declare-fun b!1523830 () Bool)

(declare-fun c!140095 () Bool)

(assert (=> b!1523830 (= c!140095 (= lt!660074 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1523830 (= e!849536 e!849535)))

(declare-fun d!159207 () Bool)

(declare-fun lt!660075 () SeekEntryResult!13092)

(assert (=> d!159207 (and (or (is-MissingVacant!13092 lt!660075) (not (is-Found!13092 lt!660075)) (and (bvsge (index!54763 lt!660075) #b00000000000000000000000000000000) (bvslt (index!54763 lt!660075) (size!49457 a!2804)))) (not (is-MissingVacant!13092 lt!660075)) (or (not (is-Found!13092 lt!660075)) (= (select (arr!48906 a!2804) (index!54763 lt!660075)) (select (arr!48906 a!2804) j!70))))))

(assert (=> d!159207 (= lt!660075 e!849537)))

(declare-fun c!140096 () Bool)

(assert (=> d!159207 (= c!140096 (and (is-Intermediate!13092 lt!660076) (undefined!13904 lt!660076)))))

(assert (=> d!159207 (= lt!660076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48906 a!2804) j!70) mask!2512) (select (arr!48906 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159207 (validMask!0 mask!2512)))

(assert (=> d!159207 (= (seekEntry!0 (select (arr!48906 a!2804) j!70) a!2804 mask!2512) lt!660075)))

(declare-fun b!1523831 () Bool)

(declare-fun lt!660073 () SeekEntryResult!13092)

(assert (=> b!1523831 (= e!849535 (ite (is-MissingVacant!13092 lt!660073) (MissingZero!13092 (index!54765 lt!660073)) lt!660073))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101359 (_ BitVec 32)) SeekEntryResult!13092)

(assert (=> b!1523831 (= lt!660073 (seekKeyOrZeroReturnVacant!0 (x!136453 lt!660076) (index!54764 lt!660076) (index!54764 lt!660076) (select (arr!48906 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!159207 c!140096) b!1523827))

(assert (= (and d!159207 (not c!140096)) b!1523828))

(assert (= (and b!1523828 c!140097) b!1523826))

(assert (= (and b!1523828 (not c!140097)) b!1523830))

(assert (= (and b!1523830 c!140095) b!1523829))

(assert (= (and b!1523830 (not c!140095)) b!1523831))

(declare-fun m!1406951 () Bool)

(assert (=> b!1523828 m!1406951))

(declare-fun m!1406953 () Bool)

(assert (=> d!159207 m!1406953))

(assert (=> d!159207 m!1406823))

(assert (=> d!159207 m!1406851))

(assert (=> d!159207 m!1406851))

(assert (=> d!159207 m!1406823))

(assert (=> d!159207 m!1406853))

(assert (=> d!159207 m!1406861))

(assert (=> b!1523831 m!1406823))

(declare-fun m!1406955 () Bool)

(assert (=> b!1523831 m!1406955))

(assert (=> b!1523624 d!159207))

(declare-fun b!1523873 () Bool)

(declare-fun e!849562 () Bool)

(declare-fun e!849563 () Bool)

(assert (=> b!1523873 (= e!849562 e!849563)))

(declare-fun lt!660105 () (_ BitVec 64))

(assert (=> b!1523873 (= lt!660105 (select (arr!48906 a!2804) j!70))))

(declare-fun lt!660104 () Unit!50924)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101359 (_ BitVec 64) (_ BitVec 32)) Unit!50924)

(assert (=> b!1523873 (= lt!660104 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660105 j!70))))

(declare-fun arrayContainsKey!0 (array!101359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1523873 (arrayContainsKey!0 a!2804 lt!660105 #b00000000000000000000000000000000)))

(declare-fun lt!660103 () Unit!50924)

(assert (=> b!1523873 (= lt!660103 lt!660104)))

(declare-fun res!1042748 () Bool)

(assert (=> b!1523873 (= res!1042748 (= (seekEntryOrOpen!0 (select (arr!48906 a!2804) j!70) a!2804 mask!2512) (Found!13092 j!70)))))

(assert (=> b!1523873 (=> (not res!1042748) (not e!849563))))

(declare-fun d!159213 () Bool)

(declare-fun res!1042747 () Bool)

(declare-fun e!849561 () Bool)

(assert (=> d!159213 (=> res!1042747 e!849561)))

(assert (=> d!159213 (= res!1042747 (bvsge j!70 (size!49457 a!2804)))))

(assert (=> d!159213 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!849561)))

(declare-fun b!1523874 () Bool)

(declare-fun call!68416 () Bool)

(assert (=> b!1523874 (= e!849563 call!68416)))

(declare-fun b!1523875 () Bool)

(assert (=> b!1523875 (= e!849561 e!849562)))

(declare-fun c!140115 () Bool)

(assert (=> b!1523875 (= c!140115 (validKeyInArray!0 (select (arr!48906 a!2804) j!70)))))

(declare-fun bm!68413 () Bool)

(assert (=> bm!68413 (= call!68416 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1523876 () Bool)

(assert (=> b!1523876 (= e!849562 call!68416)))

(assert (= (and d!159213 (not res!1042747)) b!1523875))

(assert (= (and b!1523875 c!140115) b!1523873))

(assert (= (and b!1523875 (not c!140115)) b!1523876))

(assert (= (and b!1523873 res!1042748) b!1523874))

(assert (= (or b!1523874 b!1523876) bm!68413))

(assert (=> b!1523873 m!1406823))

(declare-fun m!1406983 () Bool)

(assert (=> b!1523873 m!1406983))

(declare-fun m!1406985 () Bool)

(assert (=> b!1523873 m!1406985))

(assert (=> b!1523873 m!1406823))

(assert (=> b!1523873 m!1406847))

(assert (=> b!1523875 m!1406823))

(assert (=> b!1523875 m!1406823))

(assert (=> b!1523875 m!1406845))

(declare-fun m!1406987 () Bool)

(assert (=> bm!68413 m!1406987))

(assert (=> b!1523633 d!159213))

(declare-fun d!159225 () Bool)

(assert (=> d!159225 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660108 () Unit!50924)

(declare-fun choose!38 (array!101359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50924)

(assert (=> d!159225 (= lt!660108 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159225 (validMask!0 mask!2512)))

(assert (=> d!159225 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660108)))

(declare-fun bs!43732 () Bool)

(assert (= bs!43732 d!159225))

(assert (=> bs!43732 m!1406829))

(declare-fun m!1406989 () Bool)

(assert (=> bs!43732 m!1406989))

(assert (=> bs!43732 m!1406861))

(assert (=> b!1523633 d!159225))

(declare-fun b!1523887 () Bool)

(declare-fun e!849573 () Bool)

(declare-fun e!849574 () Bool)

(assert (=> b!1523887 (= e!849573 e!849574)))

(declare-fun lt!660111 () (_ BitVec 64))

(assert (=> b!1523887 (= lt!660111 (select (arr!48906 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660110 () Unit!50924)

(assert (=> b!1523887 (= lt!660110 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660111 #b00000000000000000000000000000000))))

(assert (=> b!1523887 (arrayContainsKey!0 a!2804 lt!660111 #b00000000000000000000000000000000)))

(declare-fun lt!660109 () Unit!50924)

(assert (=> b!1523887 (= lt!660109 lt!660110)))

(declare-fun res!1042756 () Bool)

(assert (=> b!1523887 (= res!1042756 (= (seekEntryOrOpen!0 (select (arr!48906 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13092 #b00000000000000000000000000000000)))))

(assert (=> b!1523887 (=> (not res!1042756) (not e!849574))))

(declare-fun d!159227 () Bool)

(declare-fun res!1042755 () Bool)

(declare-fun e!849572 () Bool)

(assert (=> d!159227 (=> res!1042755 e!849572)))

(assert (=> d!159227 (= res!1042755 (bvsge #b00000000000000000000000000000000 (size!49457 a!2804)))))

(assert (=> d!159227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!849572)))

(declare-fun b!1523888 () Bool)

(declare-fun call!68419 () Bool)

(assert (=> b!1523888 (= e!849574 call!68419)))

(declare-fun b!1523889 () Bool)

(assert (=> b!1523889 (= e!849572 e!849573)))

(declare-fun c!140118 () Bool)

(assert (=> b!1523889 (= c!140118 (validKeyInArray!0 (select (arr!48906 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68416 () Bool)

(assert (=> bm!68416 (= call!68419 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1523890 () Bool)

(assert (=> b!1523890 (= e!849573 call!68419)))

(assert (= (and d!159227 (not res!1042755)) b!1523889))

(assert (= (and b!1523889 c!140118) b!1523887))

(assert (= (and b!1523889 (not c!140118)) b!1523890))

(assert (= (and b!1523887 res!1042756) b!1523888))

(assert (= (or b!1523888 b!1523890) bm!68416))

(assert (=> b!1523887 m!1406893))

(declare-fun m!1406991 () Bool)

(assert (=> b!1523887 m!1406991))

(declare-fun m!1406993 () Bool)

(assert (=> b!1523887 m!1406993))

(assert (=> b!1523887 m!1406893))

(declare-fun m!1406995 () Bool)

(assert (=> b!1523887 m!1406995))

(assert (=> b!1523889 m!1406893))

(assert (=> b!1523889 m!1406893))

(assert (=> b!1523889 m!1406899))

(declare-fun m!1406997 () Bool)

(assert (=> bm!68416 m!1406997))

(assert (=> b!1523631 d!159227))

(declare-fun b!1523896 () Bool)

(declare-fun e!849582 () Bool)

(declare-fun lt!660112 () SeekEntryResult!13092)

(assert (=> b!1523896 (= e!849582 (bvsge (x!136453 lt!660112) #b01111111111111111111111111111110))))

(declare-fun b!1523897 () Bool)

(declare-fun e!849579 () SeekEntryResult!13092)

(declare-fun e!849581 () SeekEntryResult!13092)

(assert (=> b!1523897 (= e!849579 e!849581)))

(declare-fun c!140120 () Bool)

(declare-fun lt!660113 () (_ BitVec 64))

(assert (=> b!1523897 (= c!140120 (or (= lt!660113 lt!659977) (= (bvadd lt!660113 lt!660113) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1523898 () Bool)

(assert (=> b!1523898 (and (bvsge (index!54764 lt!660112) #b00000000000000000000000000000000) (bvslt (index!54764 lt!660112) (size!49457 lt!659973)))))

(declare-fun res!1042761 () Bool)

(assert (=> b!1523898 (= res!1042761 (= (select (arr!48906 lt!659973) (index!54764 lt!660112)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849583 () Bool)

(assert (=> b!1523898 (=> res!1042761 e!849583)))

(declare-fun b!1523899 () Bool)

(assert (=> b!1523899 (= e!849581 (Intermediate!13092 false (toIndex!0 lt!659977 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523900 () Bool)

(declare-fun e!849580 () Bool)

(assert (=> b!1523900 (= e!849582 e!849580)))

(declare-fun res!1042760 () Bool)

(assert (=> b!1523900 (= res!1042760 (and (is-Intermediate!13092 lt!660112) (not (undefined!13904 lt!660112)) (bvslt (x!136453 lt!660112) #b01111111111111111111111111111110) (bvsge (x!136453 lt!660112) #b00000000000000000000000000000000) (bvsge (x!136453 lt!660112) #b00000000000000000000000000000000)))))

(assert (=> b!1523900 (=> (not res!1042760) (not e!849580))))

(declare-fun b!1523901 () Bool)

(assert (=> b!1523901 (= e!849579 (Intermediate!13092 true (toIndex!0 lt!659977 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1523902 () Bool)

(assert (=> b!1523902 (and (bvsge (index!54764 lt!660112) #b00000000000000000000000000000000) (bvslt (index!54764 lt!660112) (size!49457 lt!659973)))))

(declare-fun res!1042762 () Bool)

(assert (=> b!1523902 (= res!1042762 (= (select (arr!48906 lt!659973) (index!54764 lt!660112)) lt!659977))))

(assert (=> b!1523902 (=> res!1042762 e!849583)))

(assert (=> b!1523902 (= e!849580 e!849583)))

(declare-fun d!159229 () Bool)

(assert (=> d!159229 e!849582))

(declare-fun c!140122 () Bool)

(assert (=> d!159229 (= c!140122 (and (is-Intermediate!13092 lt!660112) (undefined!13904 lt!660112)))))

(assert (=> d!159229 (= lt!660112 e!849579)))

(declare-fun c!140121 () Bool)

(assert (=> d!159229 (= c!140121 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159229 (= lt!660113 (select (arr!48906 lt!659973) (toIndex!0 lt!659977 mask!2512)))))

(assert (=> d!159229 (validMask!0 mask!2512)))

(assert (=> d!159229 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!659977 mask!2512) lt!659977 lt!659973 mask!2512) lt!660112)))

(declare-fun b!1523903 () Bool)

(assert (=> b!1523903 (and (bvsge (index!54764 lt!660112) #b00000000000000000000000000000000) (bvslt (index!54764 lt!660112) (size!49457 lt!659973)))))

(assert (=> b!1523903 (= e!849583 (= (select (arr!48906 lt!659973) (index!54764 lt!660112)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1523904 () Bool)

(assert (=> b!1523904 (= e!849581 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!659977 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659977 lt!659973 mask!2512))))

(assert (= (and d!159229 c!140121) b!1523901))

(assert (= (and d!159229 (not c!140121)) b!1523897))

(assert (= (and b!1523897 c!140120) b!1523899))

(assert (= (and b!1523897 (not c!140120)) b!1523904))

