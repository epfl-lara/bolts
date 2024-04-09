; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128336 () Bool)

(assert start!128336)

(declare-fun b!1505603 () Bool)

(declare-fun res!1026106 () Bool)

(declare-fun e!841522 () Bool)

(assert (=> b!1505603 (=> (not res!1026106) (not e!841522))))

(declare-datatypes ((array!100381 0))(
  ( (array!100382 (arr!48435 (Array (_ BitVec 32) (_ BitVec 64))) (size!48986 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100381)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100381 (_ BitVec 32)) Bool)

(assert (=> b!1505603 (= res!1026106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505604 () Bool)

(declare-fun res!1026103 () Bool)

(assert (=> b!1505604 (=> (not res!1026103) (not e!841522))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505604 (= res!1026103 (and (= (size!48986 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48986 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48986 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505605 () Bool)

(declare-fun res!1026104 () Bool)

(assert (=> b!1505605 (=> (not res!1026104) (not e!841522))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505605 (= res!1026104 (validKeyInArray!0 (select (arr!48435 a!2804) i!961)))))

(declare-fun b!1505606 () Bool)

(declare-fun res!1026105 () Bool)

(assert (=> b!1505606 (=> (not res!1026105) (not e!841522))))

(assert (=> b!1505606 (= res!1026105 (validKeyInArray!0 (select (arr!48435 a!2804) j!70)))))

(declare-fun res!1026107 () Bool)

(assert (=> start!128336 (=> (not res!1026107) (not e!841522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128336 (= res!1026107 (validMask!0 mask!2512))))

(assert (=> start!128336 e!841522))

(assert (=> start!128336 true))

(declare-fun array_inv!37380 (array!100381) Bool)

(assert (=> start!128336 (array_inv!37380 a!2804)))

(declare-fun b!1505607 () Bool)

(declare-datatypes ((List!35098 0))(
  ( (Nil!35095) (Cons!35094 (h!36492 (_ BitVec 64)) (t!49799 List!35098)) )
))
(declare-fun noDuplicate!2659 (List!35098) Bool)

(assert (=> b!1505607 (= e!841522 (not (noDuplicate!2659 Nil!35095)))))

(declare-fun b!1505608 () Bool)

(declare-fun res!1026108 () Bool)

(assert (=> b!1505608 (=> (not res!1026108) (not e!841522))))

(assert (=> b!1505608 (= res!1026108 (and (bvsle #b00000000000000000000000000000000 (size!48986 a!2804)) (bvslt (size!48986 a!2804) #b01111111111111111111111111111111)))))

(assert (= (and start!128336 res!1026107) b!1505604))

(assert (= (and b!1505604 res!1026103) b!1505605))

(assert (= (and b!1505605 res!1026104) b!1505606))

(assert (= (and b!1505606 res!1026105) b!1505603))

(assert (= (and b!1505603 res!1026106) b!1505608))

(assert (= (and b!1505608 res!1026108) b!1505607))

(declare-fun m!1388747 () Bool)

(assert (=> b!1505607 m!1388747))

(declare-fun m!1388749 () Bool)

(assert (=> start!128336 m!1388749))

(declare-fun m!1388751 () Bool)

(assert (=> start!128336 m!1388751))

(declare-fun m!1388753 () Bool)

(assert (=> b!1505606 m!1388753))

(assert (=> b!1505606 m!1388753))

(declare-fun m!1388755 () Bool)

(assert (=> b!1505606 m!1388755))

(declare-fun m!1388757 () Bool)

(assert (=> b!1505603 m!1388757))

(declare-fun m!1388759 () Bool)

(assert (=> b!1505605 m!1388759))

(assert (=> b!1505605 m!1388759))

(declare-fun m!1388761 () Bool)

(assert (=> b!1505605 m!1388761))

(push 1)

(assert (not start!128336))

(assert (not b!1505605))

(assert (not b!1505603))

(assert (not b!1505607))

(assert (not b!1505606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158027 () Bool)

(assert (=> d!158027 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128336 d!158027))

(declare-fun d!158037 () Bool)

(assert (=> d!158037 (= (array_inv!37380 a!2804) (bvsge (size!48986 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128336 d!158037))

(declare-fun b!1505647 () Bool)

(declare-fun e!841554 () Bool)

(declare-fun call!68193 () Bool)

(assert (=> b!1505647 (= e!841554 call!68193)))

(declare-fun b!1505648 () Bool)

(declare-fun e!841556 () Bool)

(assert (=> b!1505648 (= e!841556 e!841554)))

(declare-fun c!139295 () Bool)

(assert (=> b!1505648 (= c!139295 (validKeyInArray!0 (select (arr!48435 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68190 () Bool)

(assert (=> bm!68190 (= call!68193 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1505649 () Bool)

(declare-fun e!841555 () Bool)

(assert (=> b!1505649 (= e!841555 call!68193)))

(declare-fun b!1505650 () Bool)

(assert (=> b!1505650 (= e!841554 e!841555)))

(declare-fun lt!654038 () (_ BitVec 64))

(assert (=> b!1505650 (= lt!654038 (select (arr!48435 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50252 0))(
  ( (Unit!50253) )
))
(declare-fun lt!654039 () Unit!50252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100381 (_ BitVec 64) (_ BitVec 32)) Unit!50252)

(assert (=> b!1505650 (= lt!654039 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654038 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505650 (arrayContainsKey!0 a!2804 lt!654038 #b00000000000000000000000000000000)))

(declare-fun lt!654040 () Unit!50252)

(assert (=> b!1505650 (= lt!654040 lt!654039)))

(declare-fun res!1026132 () Bool)

(declare-datatypes ((SeekEntryResult!12645 0))(
  ( (MissingZero!12645 (index!52974 (_ BitVec 32))) (Found!12645 (index!52975 (_ BitVec 32))) (Intermediate!12645 (undefined!13457 Bool) (index!52976 (_ BitVec 32)) (x!134693 (_ BitVec 32))) (Undefined!12645) (MissingVacant!12645 (index!52977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100381 (_ BitVec 32)) SeekEntryResult!12645)

(assert (=> b!1505650 (= res!1026132 (= (seekEntryOrOpen!0 (select (arr!48435 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12645 #b00000000000000000000000000000000)))))

(assert (=> b!1505650 (=> (not res!1026132) (not e!841555))))

(declare-fun d!158039 () Bool)

(declare-fun res!1026131 () Bool)

(assert (=> d!158039 (=> res!1026131 e!841556)))

(assert (=> d!158039 (= res!1026131 (bvsge #b00000000000000000000000000000000 (size!48986 a!2804)))))

(assert (=> d!158039 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841556)))

(assert (= (and d!158039 (not res!1026131)) b!1505648))

(assert (= (and b!1505648 c!139295) b!1505650))

(assert (= (and b!1505648 (not c!139295)) b!1505647))

(assert (= (and b!1505650 res!1026132) b!1505649))

(assert (= (or b!1505649 b!1505647) bm!68190))

(declare-fun m!1388791 () Bool)

(assert (=> b!1505648 m!1388791))

(assert (=> b!1505648 m!1388791))

(declare-fun m!1388793 () Bool)

(assert (=> b!1505648 m!1388793))

(declare-fun m!1388795 () Bool)

(assert (=> bm!68190 m!1388795))

(assert (=> b!1505650 m!1388791))

(declare-fun m!1388797 () Bool)

(assert (=> b!1505650 m!1388797))

(declare-fun m!1388799 () Bool)

(assert (=> b!1505650 m!1388799))

(assert (=> b!1505650 m!1388791))

(declare-fun m!1388801 () Bool)

(assert (=> b!1505650 m!1388801))

(assert (=> b!1505603 d!158039))

(declare-fun d!158047 () Bool)

(assert (=> d!158047 (= (validKeyInArray!0 (select (arr!48435 a!2804) j!70)) (and (not (= (select (arr!48435 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48435 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505606 d!158047))

(declare-fun d!158049 () Bool)

(declare-fun res!1026143 () Bool)

(declare-fun e!841567 () Bool)

(assert (=> d!158049 (=> res!1026143 e!841567)))

(assert (=> d!158049 (= res!1026143 (is-Nil!35095 Nil!35095))))

(assert (=> d!158049 (= (noDuplicate!2659 Nil!35095) e!841567)))

