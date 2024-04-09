; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123964 () Bool)

(assert start!123964)

(declare-fun b!1435811 () Bool)

(declare-fun res!968910 () Bool)

(declare-fun e!810313 () Bool)

(assert (=> b!1435811 (=> (not res!968910) (not e!810313))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97605 0))(
  ( (array!97606 (arr!47098 (Array (_ BitVec 32) (_ BitVec 64))) (size!47649 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97605)

(assert (=> b!1435811 (= res!968910 (and (= (size!47649 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47649 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47649 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435812 () Bool)

(declare-fun res!968908 () Bool)

(assert (=> b!1435812 (=> (not res!968908) (not e!810313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435812 (= res!968908 (validKeyInArray!0 (select (arr!47098 a!2862) i!1006)))))

(declare-fun b!1435813 () Bool)

(declare-fun res!968911 () Bool)

(assert (=> b!1435813 (=> (not res!968911) (not e!810313))))

(assert (=> b!1435813 (= res!968911 (and (bvsle #b00000000000000000000000000000000 (size!47649 a!2862)) (bvslt (size!47649 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435814 () Bool)

(declare-fun res!968913 () Bool)

(assert (=> b!1435814 (=> (not res!968913) (not e!810313))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97605 (_ BitVec 32)) Bool)

(assert (=> b!1435814 (= res!968913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435815 () Bool)

(declare-datatypes ((List!33779 0))(
  ( (Nil!33776) (Cons!33775 (h!35110 (_ BitVec 64)) (t!48480 List!33779)) )
))
(declare-fun noDuplicate!2645 (List!33779) Bool)

(assert (=> b!1435815 (= e!810313 (not (noDuplicate!2645 Nil!33776)))))

(declare-fun b!1435816 () Bool)

(declare-fun res!968909 () Bool)

(assert (=> b!1435816 (=> (not res!968909) (not e!810313))))

(assert (=> b!1435816 (= res!968909 (validKeyInArray!0 (select (arr!47098 a!2862) j!93)))))

(declare-fun res!968912 () Bool)

(assert (=> start!123964 (=> (not res!968912) (not e!810313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123964 (= res!968912 (validMask!0 mask!2687))))

(assert (=> start!123964 e!810313))

(assert (=> start!123964 true))

(declare-fun array_inv!36043 (array!97605) Bool)

(assert (=> start!123964 (array_inv!36043 a!2862)))

(assert (= (and start!123964 res!968912) b!1435811))

(assert (= (and b!1435811 res!968910) b!1435812))

(assert (= (and b!1435812 res!968908) b!1435816))

(assert (= (and b!1435816 res!968909) b!1435814))

(assert (= (and b!1435814 res!968913) b!1435813))

(assert (= (and b!1435813 res!968911) b!1435815))

(declare-fun m!1325231 () Bool)

(assert (=> b!1435812 m!1325231))

(assert (=> b!1435812 m!1325231))

(declare-fun m!1325233 () Bool)

(assert (=> b!1435812 m!1325233))

(declare-fun m!1325235 () Bool)

(assert (=> b!1435816 m!1325235))

(assert (=> b!1435816 m!1325235))

(declare-fun m!1325237 () Bool)

(assert (=> b!1435816 m!1325237))

(declare-fun m!1325239 () Bool)

(assert (=> b!1435814 m!1325239))

(declare-fun m!1325241 () Bool)

(assert (=> b!1435815 m!1325241))

(declare-fun m!1325243 () Bool)

(assert (=> start!123964 m!1325243))

(declare-fun m!1325245 () Bool)

(assert (=> start!123964 m!1325245))

(push 1)

(assert (not b!1435816))

(assert (not start!123964))

(assert (not b!1435815))

(assert (not b!1435812))

(assert (not b!1435814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154379 () Bool)

(assert (=> d!154379 (= (validKeyInArray!0 (select (arr!47098 a!2862) i!1006)) (and (not (= (select (arr!47098 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47098 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435812 d!154379))

(declare-fun d!154381 () Bool)

(assert (=> d!154381 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!123964 d!154381))

(declare-fun d!154393 () Bool)

(assert (=> d!154393 (= (array_inv!36043 a!2862) (bvsge (size!47649 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!123964 d!154393))

(declare-fun d!154395 () Bool)

(assert (=> d!154395 (= (validKeyInArray!0 (select (arr!47098 a!2862) j!93)) (and (not (= (select (arr!47098 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47098 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435816 d!154395))

(declare-fun d!154397 () Bool)

(declare-fun res!968966 () Bool)

(declare-fun e!810346 () Bool)

(assert (=> d!154397 (=> res!968966 e!810346)))

(assert (=> d!154397 (= res!968966 (is-Nil!33776 Nil!33776))))

(assert (=> d!154397 (= (noDuplicate!2645 Nil!33776) e!810346)))

(declare-fun b!1435875 () Bool)

(declare-fun e!810347 () Bool)

(assert (=> b!1435875 (= e!810346 e!810347)))

(declare-fun res!968967 () Bool)

(assert (=> b!1435875 (=> (not res!968967) (not e!810347))))

(declare-fun contains!9889 (List!33779 (_ BitVec 64)) Bool)

(assert (=> b!1435875 (= res!968967 (not (contains!9889 (t!48480 Nil!33776) (h!35110 Nil!33776))))))

(declare-fun b!1435876 () Bool)

(assert (=> b!1435876 (= e!810347 (noDuplicate!2645 (t!48480 Nil!33776)))))

(assert (= (and d!154397 (not res!968966)) b!1435875))

(assert (= (and b!1435875 res!968967) b!1435876))

(declare-fun m!1325295 () Bool)

(assert (=> b!1435875 m!1325295))

(declare-fun m!1325297 () Bool)

(assert (=> b!1435876 m!1325297))

(assert (=> b!1435815 d!154397))

(declare-fun b!1435899 () Bool)

(declare-fun e!810366 () Bool)

(declare-fun e!810368 () Bool)

(assert (=> b!1435899 (= e!810366 e!810368)))

(declare-fun lt!631981 () (_ BitVec 64))

(assert (=> b!1435899 (= lt!631981 (select (arr!47098 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48482 0))(
  ( (Unit!48483) )
))
(declare-fun lt!631980 () Unit!48482)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97605 (_ BitVec 64) (_ BitVec 32)) Unit!48482)

(assert (=> b!1435899 (= lt!631980 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!631981 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1435899 (arrayContainsKey!0 a!2862 lt!631981 #b00000000000000000000000000000000)))

(declare-fun lt!631979 () Unit!48482)

(assert (=> b!1435899 (= lt!631979 lt!631980)))

(declare-fun res!968983 () Bool)

(declare-datatypes ((SeekEntryResult!11394 0))(
  ( (MissingZero!11394 (index!47967 (_ BitVec 32))) (Found!11394 (index!47968 (_ BitVec 32))) (Intermediate!11394 (undefined!12206 Bool) (index!47969 (_ BitVec 32)) (x!129651 (_ BitVec 32))) (Undefined!11394) (MissingVacant!11394 (index!47970 (_ BitVec 32))) )
))
