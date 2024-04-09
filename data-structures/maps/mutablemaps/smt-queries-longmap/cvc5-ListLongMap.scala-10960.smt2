; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128368 () Bool)

(assert start!128368)

(declare-fun res!1026163 () Bool)

(declare-fun e!841577 () Bool)

(assert (=> start!128368 (=> (not res!1026163) (not e!841577))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128368 (= res!1026163 (validMask!0 mask!2512))))

(assert (=> start!128368 e!841577))

(assert (=> start!128368 true))

(declare-datatypes ((array!100386 0))(
  ( (array!100387 (arr!48436 (Array (_ BitVec 32) (_ BitVec 64))) (size!48987 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100386)

(declare-fun array_inv!37381 (array!100386) Bool)

(assert (=> start!128368 (array_inv!37381 a!2804)))

(declare-fun b!1505679 () Bool)

(declare-fun res!1026166 () Bool)

(assert (=> b!1505679 (=> (not res!1026166) (not e!841577))))

(assert (=> b!1505679 (= res!1026166 (and (bvsle #b00000000000000000000000000000000 (size!48987 a!2804)) (bvslt (size!48987 a!2804) #b01111111111111111111111111111111)))))

(declare-fun b!1505680 () Bool)

(declare-fun res!1026162 () Bool)

(assert (=> b!1505680 (=> (not res!1026162) (not e!841577))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505680 (= res!1026162 (validKeyInArray!0 (select (arr!48436 a!2804) j!70)))))

(declare-fun b!1505681 () Bool)

(declare-fun res!1026168 () Bool)

(assert (=> b!1505681 (=> (not res!1026168) (not e!841577))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1505681 (= res!1026168 (validKeyInArray!0 (select (arr!48436 a!2804) i!961)))))

(declare-fun b!1505682 () Bool)

(declare-fun e!841575 () Bool)

(declare-datatypes ((List!35099 0))(
  ( (Nil!35096) (Cons!35095 (h!36493 (_ BitVec 64)) (t!49800 List!35099)) )
))
(declare-fun contains!9969 (List!35099 (_ BitVec 64)) Bool)

(assert (=> b!1505682 (= e!841575 (contains!9969 Nil!35096 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505683 () Bool)

(assert (=> b!1505683 (= e!841577 e!841575)))

(declare-fun res!1026161 () Bool)

(assert (=> b!1505683 (=> res!1026161 e!841575)))

(assert (=> b!1505683 (= res!1026161 (contains!9969 Nil!35096 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505684 () Bool)

(declare-fun res!1026165 () Bool)

(assert (=> b!1505684 (=> (not res!1026165) (not e!841577))))

(declare-fun noDuplicate!2660 (List!35099) Bool)

(assert (=> b!1505684 (= res!1026165 (noDuplicate!2660 Nil!35096))))

(declare-fun b!1505685 () Bool)

(declare-fun res!1026167 () Bool)

(assert (=> b!1505685 (=> (not res!1026167) (not e!841577))))

(assert (=> b!1505685 (= res!1026167 (and (= (size!48987 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48987 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48987 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505686 () Bool)

(declare-fun res!1026164 () Bool)

(assert (=> b!1505686 (=> (not res!1026164) (not e!841577))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100386 (_ BitVec 32)) Bool)

(assert (=> b!1505686 (= res!1026164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128368 res!1026163) b!1505685))

(assert (= (and b!1505685 res!1026167) b!1505681))

(assert (= (and b!1505681 res!1026168) b!1505680))

(assert (= (and b!1505680 res!1026162) b!1505686))

(assert (= (and b!1505686 res!1026164) b!1505679))

(assert (= (and b!1505679 res!1026166) b!1505684))

(assert (= (and b!1505684 res!1026165) b!1505683))

(assert (= (and b!1505683 (not res!1026161)) b!1505682))

(declare-fun m!1388811 () Bool)

(assert (=> b!1505686 m!1388811))

(declare-fun m!1388813 () Bool)

(assert (=> b!1505682 m!1388813))

(declare-fun m!1388815 () Bool)

(assert (=> b!1505683 m!1388815))

(declare-fun m!1388817 () Bool)

(assert (=> b!1505684 m!1388817))

(declare-fun m!1388819 () Bool)

(assert (=> b!1505680 m!1388819))

(assert (=> b!1505680 m!1388819))

(declare-fun m!1388821 () Bool)

(assert (=> b!1505680 m!1388821))

(declare-fun m!1388823 () Bool)

(assert (=> start!128368 m!1388823))

(declare-fun m!1388825 () Bool)

(assert (=> start!128368 m!1388825))

(declare-fun m!1388827 () Bool)

(assert (=> b!1505681 m!1388827))

(assert (=> b!1505681 m!1388827))

(declare-fun m!1388829 () Bool)

(assert (=> b!1505681 m!1388829))

(push 1)

(assert (not b!1505682))

(assert (not b!1505684))

(assert (not b!1505686))

(assert (not b!1505680))

(assert (not b!1505681))

(assert (not b!1505683))

(assert (not start!128368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158059 () Bool)

(declare-fun lt!654043 () Bool)

(declare-fun content!787 (List!35099) (Set (_ BitVec 64)))

(assert (=> d!158059 (= lt!654043 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!787 Nil!35096)))))

(declare-fun e!841603 () Bool)

(assert (=> d!158059 (= lt!654043 e!841603)))

(declare-fun res!1026223 () Bool)

(assert (=> d!158059 (=> (not res!1026223) (not e!841603))))

(assert (=> d!158059 (= res!1026223 (is-Cons!35095 Nil!35096))))

(assert (=> d!158059 (= (contains!9969 Nil!35096 #b1000000000000000000000000000000000000000000000000000000000000000) lt!654043)))

(declare-fun b!1505741 () Bool)

(declare-fun e!841602 () Bool)

(assert (=> b!1505741 (= e!841603 e!841602)))

(declare-fun res!1026224 () Bool)

(assert (=> b!1505741 (=> res!1026224 e!841602)))

(assert (=> b!1505741 (= res!1026224 (= (h!36493 Nil!35096) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505742 () Bool)

(assert (=> b!1505742 (= e!841602 (contains!9969 (t!49800 Nil!35096) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158059 res!1026223) b!1505741))

(assert (= (and b!1505741 (not res!1026224)) b!1505742))

(declare-fun m!1388871 () Bool)

(assert (=> d!158059 m!1388871))

(declare-fun m!1388873 () Bool)

(assert (=> d!158059 m!1388873))

(declare-fun m!1388875 () Bool)

(assert (=> b!1505742 m!1388875))

(assert (=> b!1505682 d!158059))

(declare-fun d!158067 () Bool)

(assert (=> d!158067 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128368 d!158067))

(declare-fun d!158081 () Bool)

(assert (=> d!158081 (= (array_inv!37381 a!2804) (bvsge (size!48987 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128368 d!158081))

(declare-fun d!158083 () Bool)

(assert (=> d!158083 (= (validKeyInArray!0 (select (arr!48436 a!2804) j!70)) (and (not (= (select (arr!48436 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48436 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505680 d!158083))

(declare-fun d!158087 () Bool)

(declare-fun res!1026263 () Bool)

(declare-fun e!841651 () Bool)

(assert (=> d!158087 (=> res!1026263 e!841651)))

(assert (=> d!158087 (= res!1026263 (bvsge #b00000000000000000000000000000000 (size!48987 a!2804)))))

(assert (=> d!158087 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841651)))

(declare-fun b!1505797 () Bool)

(declare-fun e!841650 () Bool)

(declare-fun call!68202 () Bool)

(assert (=> b!1505797 (= e!841650 call!68202)))

(declare-fun b!1505798 () Bool)

(declare-fun e!841652 () Bool)

(assert (=> b!1505798 (= e!841652 call!68202)))

(declare-fun bm!68199 () Bool)

(assert (=> bm!68199 (= call!68202 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1505799 () Bool)

(assert (=> b!1505799 (= e!841652 e!841650)))

(declare-fun lt!654076 () (_ BitVec 64))

(assert (=> b!1505799 (= lt!654076 (select (arr!48436 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50256 0))(
  ( (Unit!50257) )
))
(declare-fun lt!654075 () Unit!50256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100386 (_ BitVec 64) (_ BitVec 32)) Unit!50256)

(assert (=> b!1505799 (= lt!654075 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654076 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100386 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505799 (arrayContainsKey!0 a!2804 lt!654076 #b00000000000000000000000000000000)))

(declare-fun lt!654074 () Unit!50256)

(assert (=> b!1505799 (= lt!654074 lt!654075)))

(declare-fun res!1026264 () Bool)

(declare-datatypes ((SeekEntryResult!12647 0))(
  ( (MissingZero!12647 (index!52982 (_ BitVec 32))) (Found!12647 (index!52983 (_ BitVec 32))) (Intermediate!12647 (undefined!13459 Bool) (index!52984 (_ BitVec 32)) (x!134703 (_ BitVec 32))) (Undefined!12647) (MissingVacant!12647 (index!52985 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100386 (_ BitVec 32)) SeekEntryResult!12647)

(assert (=> b!1505799 (= res!1026264 (= (seekEntryOrOpen!0 (select (arr!48436 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12647 #b00000000000000000000000000000000)))))

(assert (=> b!1505799 (=> (not res!1026264) (not e!841650))))

(declare-fun b!1505800 () Bool)

(assert (=> b!1505800 (= e!841651 e!841652)))

(declare-fun c!139304 () Bool)

(assert (=> b!1505800 (= c!139304 (validKeyInArray!0 (select (arr!48436 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158087 (not res!1026263)) b!1505800))

(assert (= (and b!1505800 c!139304) b!1505799))

(assert (= (and b!1505800 (not c!139304)) b!1505798))

(assert (= (and b!1505799 res!1026264) b!1505797))

(assert (= (or b!1505797 b!1505798) bm!68199))

(declare-fun m!1388921 () Bool)

(assert (=> bm!68199 m!1388921))

(declare-fun m!1388923 () Bool)

(assert (=> b!1505799 m!1388923))

(declare-fun m!1388925 () Bool)

(assert (=> b!1505799 m!1388925))

(declare-fun m!1388927 () Bool)

(assert (=> b!1505799 m!1388927))

(assert (=> b!1505799 m!1388923))

(declare-fun m!1388929 () Bool)

(assert (=> b!1505799 m!1388929))

(assert (=> b!1505800 m!1388923))

(assert (=> b!1505800 m!1388923))

(declare-fun m!1388931 () Bool)

(assert (=> b!1505800 m!1388931))

(assert (=> b!1505686 d!158087))

(declare-fun d!158093 () Bool)

(assert (=> d!158093 (= (validKeyInArray!0 (select (arr!48436 a!2804) i!961)) (and (not (= (select (arr!48436 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48436 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505681 d!158093))

(declare-fun d!158095 () Bool)

(declare-fun res!1026271 () Bool)

(declare-fun e!841659 () Bool)

(assert (=> d!158095 (=> res!1026271 e!841659)))

(assert (=> d!158095 (= res!1026271 (is-Nil!35096 Nil!35096))))

(assert (=> d!158095 (= (noDuplicate!2660 Nil!35096) e!841659)))

(declare-fun b!1505807 () Bool)

(declare-fun e!841660 () Bool)

(assert (=> b!1505807 (= e!841659 e!841660)))

(declare-fun res!1026272 () Bool)

(assert (=> b!1505807 (=> (not res!1026272) (not e!841660))))

(assert (=> b!1505807 (= res!1026272 (not (contains!9969 (t!49800 Nil!35096) (h!36493 Nil!35096))))))

(declare-fun b!1505808 () Bool)

(assert (=> b!1505808 (= e!841660 (noDuplicate!2660 (t!49800 Nil!35096)))))

(assert (= (and d!158095 (not res!1026271)) b!1505807))

(assert (= (and b!1505807 res!1026272) b!1505808))

(declare-fun m!1388937 () Bool)

(assert (=> b!1505807 m!1388937))

(declare-fun m!1388939 () Bool)

(assert (=> b!1505808 m!1388939))

(assert (=> b!1505684 d!158095))

(declare-fun d!158099 () Bool)

(declare-fun lt!654078 () Bool)

(assert (=> d!158099 (= lt!654078 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!787 Nil!35096)))))

(declare-fun e!841662 () Bool)

(assert (=> d!158099 (= lt!654078 e!841662)))

(declare-fun res!1026273 () Bool)

(assert (=> d!158099 (=> (not res!1026273) (not e!841662))))

(assert (=> d!158099 (= res!1026273 (is-Cons!35095 Nil!35096))))

(assert (=> d!158099 (= (contains!9969 Nil!35096 #b0000000000000000000000000000000000000000000000000000000000000000) lt!654078)))

(declare-fun b!1505809 () Bool)

(declare-fun e!841661 () Bool)

(assert (=> b!1505809 (= e!841662 e!841661)))

(declare-fun res!1026274 () Bool)

(assert (=> b!1505809 (=> res!1026274 e!841661)))

(assert (=> b!1505809 (= res!1026274 (= (h!36493 Nil!35096) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1505810 () Bool)

(assert (=> b!1505810 (= e!841661 (contains!9969 (t!49800 Nil!35096) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158099 res!1026273) b!1505809))

