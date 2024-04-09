; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123968 () Bool)

(assert start!123968)

(declare-fun b!1435847 () Bool)

(declare-fun res!968947 () Bool)

(declare-fun e!810325 () Bool)

(assert (=> b!1435847 (=> (not res!968947) (not e!810325))))

(declare-datatypes ((array!97609 0))(
  ( (array!97610 (arr!47100 (Array (_ BitVec 32) (_ BitVec 64))) (size!47651 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97609)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435847 (= res!968947 (validKeyInArray!0 (select (arr!47100 a!2862) j!93)))))

(declare-fun b!1435848 () Bool)

(declare-fun res!968945 () Bool)

(assert (=> b!1435848 (=> (not res!968945) (not e!810325))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1435848 (= res!968945 (and (= (size!47651 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47651 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47651 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1435849 () Bool)

(declare-fun res!968946 () Bool)

(assert (=> b!1435849 (=> (not res!968946) (not e!810325))))

(assert (=> b!1435849 (= res!968946 (and (bvsle #b00000000000000000000000000000000 (size!47651 a!2862)) (bvslt (size!47651 a!2862) #b01111111111111111111111111111111)))))

(declare-fun b!1435850 () Bool)

(declare-fun res!968949 () Bool)

(assert (=> b!1435850 (=> (not res!968949) (not e!810325))))

(assert (=> b!1435850 (= res!968949 (validKeyInArray!0 (select (arr!47100 a!2862) i!1006)))))

(declare-fun res!968944 () Bool)

(assert (=> start!123968 (=> (not res!968944) (not e!810325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123968 (= res!968944 (validMask!0 mask!2687))))

(assert (=> start!123968 e!810325))

(assert (=> start!123968 true))

(declare-fun array_inv!36045 (array!97609) Bool)

(assert (=> start!123968 (array_inv!36045 a!2862)))

(declare-fun b!1435851 () Bool)

(declare-fun res!968948 () Bool)

(assert (=> b!1435851 (=> (not res!968948) (not e!810325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97609 (_ BitVec 32)) Bool)

(assert (=> b!1435851 (= res!968948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1435852 () Bool)

(declare-datatypes ((List!33781 0))(
  ( (Nil!33778) (Cons!33777 (h!35112 (_ BitVec 64)) (t!48482 List!33781)) )
))
(declare-fun noDuplicate!2647 (List!33781) Bool)

(assert (=> b!1435852 (= e!810325 (not (noDuplicate!2647 Nil!33778)))))

(assert (= (and start!123968 res!968944) b!1435848))

(assert (= (and b!1435848 res!968945) b!1435850))

(assert (= (and b!1435850 res!968949) b!1435847))

(assert (= (and b!1435847 res!968947) b!1435851))

(assert (= (and b!1435851 res!968948) b!1435849))

(assert (= (and b!1435849 res!968946) b!1435852))

(declare-fun m!1325263 () Bool)

(assert (=> b!1435852 m!1325263))

(declare-fun m!1325265 () Bool)

(assert (=> b!1435847 m!1325265))

(assert (=> b!1435847 m!1325265))

(declare-fun m!1325267 () Bool)

(assert (=> b!1435847 m!1325267))

(declare-fun m!1325269 () Bool)

(assert (=> start!123968 m!1325269))

(declare-fun m!1325271 () Bool)

(assert (=> start!123968 m!1325271))

(declare-fun m!1325273 () Bool)

(assert (=> b!1435850 m!1325273))

(assert (=> b!1435850 m!1325273))

(declare-fun m!1325275 () Bool)

(assert (=> b!1435850 m!1325275))

(declare-fun m!1325277 () Bool)

(assert (=> b!1435851 m!1325277))

(push 1)

(assert (not b!1435851))

(assert (not start!123968))

(assert (not b!1435847))

(assert (not b!1435850))

(assert (not b!1435852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154383 () Bool)

(assert (=> d!154383 (= (validKeyInArray!0 (select (arr!47100 a!2862) i!1006)) (and (not (= (select (arr!47100 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47100 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435850 d!154383))

(declare-fun d!154385 () Bool)

(assert (=> d!154385 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!123968 d!154385))

(declare-fun d!154399 () Bool)

(assert (=> d!154399 (= (array_inv!36045 a!2862) (bvsge (size!47651 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!123968 d!154399))

(declare-fun d!154401 () Bool)

(assert (=> d!154401 (= (validKeyInArray!0 (select (arr!47100 a!2862) j!93)) (and (not (= (select (arr!47100 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47100 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1435847 d!154401))

(declare-fun d!154403 () Bool)

(declare-fun res!968972 () Bool)

(declare-fun e!810352 () Bool)

(assert (=> d!154403 (=> res!968972 e!810352)))

(assert (=> d!154403 (= res!968972 (is-Nil!33778 Nil!33778))))

(assert (=> d!154403 (= (noDuplicate!2647 Nil!33778) e!810352)))

(declare-fun b!1435881 () Bool)

(declare-fun e!810353 () Bool)

(assert (=> b!1435881 (= e!810352 e!810353)))

(declare-fun res!968973 () Bool)

(assert (=> b!1435881 (=> (not res!968973) (not e!810353))))

(declare-fun contains!9890 (List!33781 (_ BitVec 64)) Bool)

