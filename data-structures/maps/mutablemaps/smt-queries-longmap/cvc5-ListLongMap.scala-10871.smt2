; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127468 () Bool)

(assert start!127468)

(declare-fun b!1497758 () Bool)

(declare-fun res!1018942 () Bool)

(declare-fun e!838732 () Bool)

(assert (=> b!1497758 (=> (not res!1018942) (not e!838732))))

(declare-datatypes ((array!99822 0))(
  ( (array!99823 (arr!48169 (Array (_ BitVec 32) (_ BitVec 64))) (size!48720 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99822)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99822 (_ BitVec 32)) Bool)

(assert (=> b!1497758 (= res!1018942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1018945 () Bool)

(assert (=> start!127468 (=> (not res!1018945) (not e!838732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127468 (= res!1018945 (validMask!0 mask!2661))))

(assert (=> start!127468 e!838732))

(assert (=> start!127468 true))

(declare-fun array_inv!37114 (array!99822) Bool)

(assert (=> start!127468 (array_inv!37114 a!2850)))

(declare-fun b!1497759 () Bool)

(declare-fun res!1018943 () Bool)

(assert (=> b!1497759 (=> (not res!1018943) (not e!838732))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497759 (= res!1018943 (validKeyInArray!0 (select (arr!48169 a!2850) j!87)))))

(declare-fun b!1497760 () Bool)

(declare-datatypes ((List!34841 0))(
  ( (Nil!34838) (Cons!34837 (h!36235 (_ BitVec 64)) (t!49542 List!34841)) )
))
(declare-fun noDuplicate!2651 (List!34841) Bool)

(assert (=> b!1497760 (= e!838732 (not (noDuplicate!2651 Nil!34838)))))

(declare-fun b!1497761 () Bool)

(declare-fun res!1018944 () Bool)

(assert (=> b!1497761 (=> (not res!1018944) (not e!838732))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1497761 (= res!1018944 (and (= (size!48720 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48720 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48720 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497762 () Bool)

(declare-fun res!1018947 () Bool)

(assert (=> b!1497762 (=> (not res!1018947) (not e!838732))))

(assert (=> b!1497762 (= res!1018947 (validKeyInArray!0 (select (arr!48169 a!2850) i!996)))))

(declare-fun b!1497763 () Bool)

(declare-fun res!1018946 () Bool)

(assert (=> b!1497763 (=> (not res!1018946) (not e!838732))))

(assert (=> b!1497763 (= res!1018946 (and (bvsle #b00000000000000000000000000000000 (size!48720 a!2850)) (bvslt (size!48720 a!2850) #b01111111111111111111111111111111)))))

(assert (= (and start!127468 res!1018945) b!1497761))

(assert (= (and b!1497761 res!1018944) b!1497762))

(assert (= (and b!1497762 res!1018947) b!1497759))

(assert (= (and b!1497759 res!1018943) b!1497758))

(assert (= (and b!1497758 res!1018942) b!1497763))

(assert (= (and b!1497763 res!1018946) b!1497760))

(declare-fun m!1380897 () Bool)

(assert (=> b!1497762 m!1380897))

(assert (=> b!1497762 m!1380897))

(declare-fun m!1380899 () Bool)

(assert (=> b!1497762 m!1380899))

(declare-fun m!1380901 () Bool)

(assert (=> b!1497760 m!1380901))

(declare-fun m!1380903 () Bool)

(assert (=> b!1497758 m!1380903))

(declare-fun m!1380905 () Bool)

(assert (=> start!127468 m!1380905))

(declare-fun m!1380907 () Bool)

(assert (=> start!127468 m!1380907))

(declare-fun m!1380909 () Bool)

(assert (=> b!1497759 m!1380909))

(assert (=> b!1497759 m!1380909))

(declare-fun m!1380911 () Bool)

(assert (=> b!1497759 m!1380911))

(push 1)

(assert (not b!1497759))

(assert (not b!1497760))

(assert (not start!127468))

(assert (not b!1497762))

(assert (not b!1497758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157419 () Bool)

(assert (=> d!157419 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127468 d!157419))

(declare-fun d!157431 () Bool)

(assert (=> d!157431 (= (array_inv!37114 a!2850) (bvsge (size!48720 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127468 d!157431))

(declare-fun d!157433 () Bool)

(assert (=> d!157433 (= (validKeyInArray!0 (select (arr!48169 a!2850) j!87)) (and (not (= (select (arr!48169 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48169 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497759 d!157433))

(declare-fun d!157435 () Bool)

(declare-fun res!1019000 () Bool)

(declare-fun e!838762 () Bool)

(assert (=> d!157435 (=> res!1019000 e!838762)))

(assert (=> d!157435 (= res!1019000 (is-Nil!34838 Nil!34838))))

(assert (=> d!157435 (= (noDuplicate!2651 Nil!34838) e!838762)))

(declare-fun b!1497816 () Bool)

(declare-fun e!838763 () Bool)

(assert (=> b!1497816 (= e!838762 e!838763)))

(declare-fun res!1019001 () Bool)

(assert (=> b!1497816 (=> (not res!1019001) (not e!838763))))

(declare-fun contains!9950 (List!34841 (_ BitVec 64)) Bool)

(assert (=> b!1497816 (= res!1019001 (not (contains!9950 (t!49542 Nil!34838) (h!36235 Nil!34838))))))

(declare-fun b!1497817 () Bool)

(assert (=> b!1497817 (= e!838763 (noDuplicate!2651 (t!49542 Nil!34838)))))

(assert (= (and d!157435 (not res!1019000)) b!1497816))

(assert (= (and b!1497816 res!1019001) b!1497817))

(declare-fun m!1380953 () Bool)

(assert (=> b!1497816 m!1380953))

(declare-fun m!1380955 () Bool)

(assert (=> b!1497817 m!1380955))

(assert (=> b!1497760 d!157435))

(declare-fun d!157441 () Bool)

(assert (=> d!157441 (= (validKeyInArray!0 (select (arr!48169 a!2850) i!996)) (and (not (= (select (arr!48169 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48169 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497762 d!157441))

(declare-fun b!1497846 () Bool)

(declare-fun e!838785 () Bool)

(declare-fun e!838787 () Bool)

(assert (=> b!1497846 (= e!838785 e!838787)))

(declare-fun lt!652519 () (_ BitVec 64))

(assert (=> b!1497846 (= lt!652519 (select (arr!48169 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50140 0))(
  ( (Unit!50141) )
))
(declare-fun lt!652518 () Unit!50140)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99822 (_ BitVec 64) (_ BitVec 32)) Unit!50140)

(assert (=> b!1497846 (= lt!652518 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!652519 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1497846 (arrayContainsKey!0 a!2850 lt!652519 #b00000000000000000000000000000000)))

(declare-fun lt!652517 () Unit!50140)

(assert (=> b!1497846 (= lt!652517 lt!652518)))

(declare-fun res!1019016 () Bool)

(declare-datatypes ((SeekEntryResult!12425 0))(
  ( (MissingZero!12425 (index!52091 (_ BitVec 32))) (Found!12425 (index!52092 (_ BitVec 32))) (Intermediate!12425 (undefined!13237 Bool) (index!52093 (_ BitVec 32)) (x!133736 (_ BitVec 32))) (Undefined!12425) (MissingVacant!12425 (index!52094 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99822 (_ BitVec 32)) SeekEntryResult!12425)

(assert (=> b!1497846 (= res!1019016 (= (seekEntryOrOpen!0 (select (arr!48169 a!2850) #b00000000000000000000000000000000) a!2850 mask!2661) (Found!12425 #b00000000000000000000000000000000)))))

(assert (=> b!1497846 (=> (not res!1019016) (not e!838787))))

(declare-fun b!1497847 () Bool)

(declare-fun call!68057 () Bool)

(assert (=> b!1497847 (= e!838785 call!68057)))

(declare-fun b!1497848 () Bool)

(assert (=> b!1497848 (= e!838787 call!68057)))

(declare-fun bm!68054 () Bool)

(assert (=> bm!68054 (= call!68057 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1497849 () Bool)

(declare-fun e!838786 () Bool)

(assert (=> b!1497849 (= e!838786 e!838785)))

(declare-fun c!138952 () Bool)

(assert (=> b!1497849 (= c!138952 (validKeyInArray!0 (select (arr!48169 a!2850) #b00000000000000000000000000000000)))))

(declare-fun d!157443 () Bool)

(declare-fun res!1019017 () Bool)

(assert (=> d!157443 (=> res!1019017 e!838786)))

(assert (=> d!157443 (= res!1019017 (bvsge #b00000000000000000000000000000000 (size!48720 a!2850)))))

(assert (=> d!157443 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!838786)))

(assert (= (and d!157443 (not res!1019017)) b!1497849))

(assert (= (and b!1497849 c!138952) b!1497846))

(assert (= (and b!1497849 (not c!138952)) b!1497847))

(assert (= (and b!1497846 res!1019016) b!1497848))

(assert (= (or b!1497848 b!1497847) bm!68054))

(declare-fun m!1380969 () Bool)

(assert (=> b!1497846 m!1380969))

