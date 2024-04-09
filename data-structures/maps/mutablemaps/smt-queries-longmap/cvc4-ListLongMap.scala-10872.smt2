; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127508 () Bool)

(assert start!127508)

(declare-fun b!1497918 () Bool)

(declare-fun res!1019088 () Bool)

(declare-fun e!838817 () Bool)

(assert (=> b!1497918 (=> (not res!1019088) (not e!838817))))

(declare-datatypes ((List!34846 0))(
  ( (Nil!34843) (Cons!34842 (h!36240 (_ BitVec 64)) (t!49547 List!34846)) )
))
(declare-fun noDuplicate!2656 (List!34846) Bool)

(assert (=> b!1497918 (= res!1019088 (noDuplicate!2656 Nil!34843))))

(declare-fun b!1497919 () Bool)

(declare-fun res!1019089 () Bool)

(assert (=> b!1497919 (=> (not res!1019089) (not e!838817))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!99835 0))(
  ( (array!99836 (arr!48174 (Array (_ BitVec 32) (_ BitVec 64))) (size!48725 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99835)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497919 (= res!1019089 (and (= (size!48725 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48725 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48725 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497920 () Bool)

(declare-fun res!1019084 () Bool)

(assert (=> b!1497920 (=> (not res!1019084) (not e!838817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99835 (_ BitVec 32)) Bool)

(assert (=> b!1497920 (= res!1019084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497921 () Bool)

(declare-fun res!1019087 () Bool)

(assert (=> b!1497921 (=> (not res!1019087) (not e!838817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497921 (= res!1019087 (validKeyInArray!0 (select (arr!48174 a!2850) i!996)))))

(declare-fun b!1497922 () Bool)

(declare-fun e!838815 () Bool)

(assert (=> b!1497922 (= e!838817 e!838815)))

(declare-fun res!1019090 () Bool)

(assert (=> b!1497922 (=> res!1019090 e!838815)))

(declare-fun contains!9953 (List!34846 (_ BitVec 64)) Bool)

(assert (=> b!1497922 (= res!1019090 (contains!9953 Nil!34843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497923 () Bool)

(declare-fun res!1019085 () Bool)

(assert (=> b!1497923 (=> (not res!1019085) (not e!838817))))

(assert (=> b!1497923 (= res!1019085 (validKeyInArray!0 (select (arr!48174 a!2850) j!87)))))

(declare-fun b!1497924 () Bool)

(declare-fun res!1019086 () Bool)

(assert (=> b!1497924 (=> (not res!1019086) (not e!838817))))

(assert (=> b!1497924 (= res!1019086 (and (bvsle #b00000000000000000000000000000000 (size!48725 a!2850)) (bvslt (size!48725 a!2850) #b01111111111111111111111111111111)))))

(declare-fun res!1019091 () Bool)

(assert (=> start!127508 (=> (not res!1019091) (not e!838817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127508 (= res!1019091 (validMask!0 mask!2661))))

(assert (=> start!127508 e!838817))

(assert (=> start!127508 true))

(declare-fun array_inv!37119 (array!99835) Bool)

(assert (=> start!127508 (array_inv!37119 a!2850)))

(declare-fun b!1497925 () Bool)

(assert (=> b!1497925 (= e!838815 (contains!9953 Nil!34843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!127508 res!1019091) b!1497919))

(assert (= (and b!1497919 res!1019089) b!1497921))

(assert (= (and b!1497921 res!1019087) b!1497923))

(assert (= (and b!1497923 res!1019085) b!1497920))

(assert (= (and b!1497920 res!1019084) b!1497924))

(assert (= (and b!1497924 res!1019086) b!1497918))

(assert (= (and b!1497918 res!1019088) b!1497922))

(assert (= (and b!1497922 (not res!1019090)) b!1497925))

(declare-fun m!1381033 () Bool)

(assert (=> b!1497920 m!1381033))

(declare-fun m!1381035 () Bool)

(assert (=> start!127508 m!1381035))

(declare-fun m!1381037 () Bool)

(assert (=> start!127508 m!1381037))

(declare-fun m!1381039 () Bool)

(assert (=> b!1497923 m!1381039))

(assert (=> b!1497923 m!1381039))

(declare-fun m!1381041 () Bool)

(assert (=> b!1497923 m!1381041))

(declare-fun m!1381043 () Bool)

(assert (=> b!1497925 m!1381043))

(declare-fun m!1381045 () Bool)

(assert (=> b!1497922 m!1381045))

(declare-fun m!1381047 () Bool)

(assert (=> b!1497918 m!1381047))

(declare-fun m!1381049 () Bool)

(assert (=> b!1497921 m!1381049))

(assert (=> b!1497921 m!1381049))

(declare-fun m!1381051 () Bool)

(assert (=> b!1497921 m!1381051))

(push 1)

(assert (not b!1497918))

(assert (not start!127508))

(assert (not b!1497925))

(assert (not b!1497921))

(assert (not b!1497923))

(assert (not b!1497920))

(assert (not b!1497922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157463 () Bool)

(declare-fun lt!652528 () Bool)

(declare-fun content!785 (List!34846) (Set (_ BitVec 64)))

(assert (=> d!157463 (= lt!652528 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!785 Nil!34843)))))

(declare-fun e!838828 () Bool)

(assert (=> d!157463 (= lt!652528 e!838828)))

(declare-fun res!1019102 () Bool)

(assert (=> d!157463 (=> (not res!1019102) (not e!838828))))

(assert (=> d!157463 (= res!1019102 (is-Cons!34842 Nil!34843))))

(assert (=> d!157463 (= (contains!9953 Nil!34843 #b0000000000000000000000000000000000000000000000000000000000000000) lt!652528)))

(declare-fun b!1497936 () Bool)

(declare-fun e!838829 () Bool)

(assert (=> b!1497936 (= e!838828 e!838829)))

(declare-fun res!1019103 () Bool)

(assert (=> b!1497936 (=> res!1019103 e!838829)))

(assert (=> b!1497936 (= res!1019103 (= (h!36240 Nil!34843) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497937 () Bool)

(assert (=> b!1497937 (= e!838829 (contains!9953 (t!49547 Nil!34843) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!157463 res!1019102) b!1497936))

(assert (= (and b!1497936 (not res!1019103)) b!1497937))

(declare-fun m!1381059 () Bool)

(assert (=> d!157463 m!1381059))

(declare-fun m!1381061 () Bool)

(assert (=> d!157463 m!1381061))

(declare-fun m!1381063 () Bool)

(assert (=> b!1497937 m!1381063))

(assert (=> b!1497922 d!157463))

(declare-fun d!157465 () Bool)

(assert (=> d!157465 (= (validKeyInArray!0 (select (arr!48174 a!2850) j!87)) (and (not (= (select (arr!48174 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48174 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497923 d!157465))

(declare-fun d!157467 () Bool)

(declare-fun res!1019118 () Bool)

(declare-fun e!838849 () Bool)

(assert (=> d!157467 (=> res!1019118 e!838849)))

(assert (=> d!157467 (= res!1019118 (is-Nil!34843 Nil!34843))))

(assert (=> d!157467 (= (noDuplicate!2656 Nil!34843) e!838849)))

(declare-fun b!1497962 () Bool)

(declare-fun e!838850 () Bool)

(assert (=> b!1497962 (= e!838849 e!838850)))

(declare-fun res!1019119 () Bool)

(assert (=> b!1497962 (=> (not res!1019119) (not e!838850))))

(assert (=> b!1497962 (= res!1019119 (not (contains!9953 (t!49547 Nil!34843) (h!36240 Nil!34843))))))

(declare-fun b!1497963 () Bool)

(assert (=> b!1497963 (= e!838850 (noDuplicate!2656 (t!49547 Nil!34843)))))

(assert (= (and d!157467 (not res!1019118)) b!1497962))

(assert (= (and b!1497962 res!1019119) b!1497963))

(declare-fun m!1381065 () Bool)

(assert (=> b!1497962 m!1381065))

(declare-fun m!1381067 () Bool)

(assert (=> b!1497963 m!1381067))

(assert (=> b!1497918 d!157467))

(declare-fun d!157469 () Bool)

(declare-fun lt!652544 () Bool)

(assert (=> d!157469 (= lt!652544 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!785 Nil!34843)))))

(declare-fun e!838851 () Bool)

(assert (=> d!157469 (= lt!652544 e!838851)))

(declare-fun res!1019120 () Bool)

(assert (=> d!157469 (=> (not res!1019120) (not e!838851))))

(assert (=> d!157469 (= res!1019120 (is-Cons!34842 Nil!34843))))

(assert (=> d!157469 (= (contains!9953 Nil!34843 #b1000000000000000000000000000000000000000000000000000000000000000) lt!652544)))

(declare-fun b!1497964 () Bool)

(declare-fun e!838852 () Bool)

(assert (=> b!1497964 (= e!838851 e!838852)))

(declare-fun res!1019121 () Bool)

(assert (=> b!1497964 (=> res!1019121 e!838852)))

(assert (=> b!1497964 (= res!1019121 (= (h!36240 Nil!34843) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1497965 () Bool)

(assert (=> b!1497965 (= e!838852 (contains!9953 (t!49547 Nil!34843) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!157469 res!1019120) b!1497964))

(assert (= (and b!1497964 (not res!1019121)) b!1497965))

(assert (=> d!157469 m!1381059))

(declare-fun m!1381081 () Bool)

(assert (=> d!157469 m!1381081))

(declare-fun m!1381083 () Bool)

(assert (=> b!1497965 m!1381083))

(assert (=> b!1497925 d!157469))

(declare-fun bm!68064 () Bool)

(declare-fun call!68067 () Bool)

(assert (=> bm!68064 (= call!68067 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1497992 () Bool)

(declare-fun e!838877 () Bool)

(declare-fun e!838878 () Bool)

(assert (=> b!1497992 (= e!838877 e!838878)))

(declare-fun lt!652558 () (_ BitVec 64))

(assert (=> b!1497992 (= lt!652558 (select (arr!48174 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50148 0))(
  ( (Unit!50149) )
))
(declare-fun lt!652560 () Unit!50148)

