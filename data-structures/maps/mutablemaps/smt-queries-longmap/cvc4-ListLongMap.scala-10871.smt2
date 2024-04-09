; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127472 () Bool)

(assert start!127472)

(declare-fun res!1018982 () Bool)

(declare-fun e!838745 () Bool)

(assert (=> start!127472 (=> (not res!1018982) (not e!838745))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127472 (= res!1018982 (validMask!0 mask!2661))))

(assert (=> start!127472 e!838745))

(assert (=> start!127472 true))

(declare-datatypes ((array!99826 0))(
  ( (array!99827 (arr!48171 (Array (_ BitVec 32) (_ BitVec 64))) (size!48722 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99826)

(declare-fun array_inv!37116 (array!99826) Bool)

(assert (=> start!127472 (array_inv!37116 a!2850)))

(declare-fun b!1497794 () Bool)

(declare-fun res!1018979 () Bool)

(assert (=> b!1497794 (=> (not res!1018979) (not e!838745))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497794 (= res!1018979 (validKeyInArray!0 (select (arr!48171 a!2850) i!996)))))

(declare-fun b!1497795 () Bool)

(declare-fun res!1018981 () Bool)

(assert (=> b!1497795 (=> (not res!1018981) (not e!838745))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99826 (_ BitVec 32)) Bool)

(assert (=> b!1497795 (= res!1018981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497796 () Bool)

(declare-fun res!1018980 () Bool)

(assert (=> b!1497796 (=> (not res!1018980) (not e!838745))))

(assert (=> b!1497796 (= res!1018980 (and (bvsle #b00000000000000000000000000000000 (size!48722 a!2850)) (bvslt (size!48722 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497797 () Bool)

(declare-fun res!1018983 () Bool)

(assert (=> b!1497797 (=> (not res!1018983) (not e!838745))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497797 (= res!1018983 (and (= (size!48722 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48722 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48722 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497798 () Bool)

(declare-datatypes ((List!34843 0))(
  ( (Nil!34840) (Cons!34839 (h!36237 (_ BitVec 64)) (t!49544 List!34843)) )
))
(declare-fun noDuplicate!2653 (List!34843) Bool)

(assert (=> b!1497798 (= e!838745 (not (noDuplicate!2653 Nil!34840)))))

(declare-fun b!1497799 () Bool)

(declare-fun res!1018978 () Bool)

(assert (=> b!1497799 (=> (not res!1018978) (not e!838745))))

(assert (=> b!1497799 (= res!1018978 (validKeyInArray!0 (select (arr!48171 a!2850) j!87)))))

(assert (= (and start!127472 res!1018982) b!1497797))

(assert (= (and b!1497797 res!1018983) b!1497794))

(assert (= (and b!1497794 res!1018979) b!1497799))

(assert (= (and b!1497799 res!1018978) b!1497795))

(assert (= (and b!1497795 res!1018981) b!1497796))

(assert (= (and b!1497796 res!1018980) b!1497798))

(declare-fun m!1380929 () Bool)

(assert (=> b!1497795 m!1380929))

(declare-fun m!1380931 () Bool)

(assert (=> b!1497794 m!1380931))

(assert (=> b!1497794 m!1380931))

(declare-fun m!1380933 () Bool)

(assert (=> b!1497794 m!1380933))

(declare-fun m!1380935 () Bool)

(assert (=> b!1497799 m!1380935))

(assert (=> b!1497799 m!1380935))

(declare-fun m!1380937 () Bool)

(assert (=> b!1497799 m!1380937))

(declare-fun m!1380939 () Bool)

(assert (=> start!127472 m!1380939))

(declare-fun m!1380941 () Bool)

(assert (=> start!127472 m!1380941))

(declare-fun m!1380943 () Bool)

(assert (=> b!1497798 m!1380943))

(push 1)

(assert (not start!127472))

(assert (not b!1497799))

(assert (not b!1497794))

(assert (not b!1497795))

(assert (not b!1497798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157421 () Bool)

(declare-fun res!1018994 () Bool)

(declare-fun e!838756 () Bool)

(assert (=> d!157421 (=> res!1018994 e!838756)))

(assert (=> d!157421 (= res!1018994 (is-Nil!34840 Nil!34840))))

(assert (=> d!157421 (= (noDuplicate!2653 Nil!34840) e!838756)))

(declare-fun b!1497810 () Bool)

(declare-fun e!838757 () Bool)

(assert (=> b!1497810 (= e!838756 e!838757)))

(declare-fun res!1018995 () Bool)

(assert (=> b!1497810 (=> (not res!1018995) (not e!838757))))

(declare-fun contains!9949 (List!34843 (_ BitVec 64)) Bool)

(assert (=> b!1497810 (= res!1018995 (not (contains!9949 (t!49544 Nil!34840) (h!36237 Nil!34840))))))

(declare-fun b!1497811 () Bool)

(assert (=> b!1497811 (= e!838757 (noDuplicate!2653 (t!49544 Nil!34840)))))

(assert (= (and d!157421 (not res!1018994)) b!1497810))

(assert (= (and b!1497810 res!1018995) b!1497811))

(declare-fun m!1380949 () Bool)

(assert (=> b!1497810 m!1380949))

(declare-fun m!1380951 () Bool)

(assert (=> b!1497811 m!1380951))

(assert (=> b!1497798 d!157421))

(declare-fun d!157425 () Bool)

(assert (=> d!157425 (= (validKeyInArray!0 (select (arr!48171 a!2850) j!87)) (and (not (= (select (arr!48171 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48171 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497799 d!157425))

(declare-fun d!157427 () Bool)

(assert (=> d!157427 (= (validKeyInArray!0 (select (arr!48171 a!2850) i!996)) (and (not (= (select (arr!48171 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48171 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497794 d!157427))

(declare-fun d!157429 () Bool)

(assert (=> d!157429 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127472 d!157429))

(declare-fun d!157445 () Bool)

(assert (=> d!157445 (= (array_inv!37116 a!2850) (bvsge (size!48722 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127472 d!157445))

(declare-fun b!1497850 () Bool)

(declare-fun e!838789 () Bool)

(declare-fun call!68058 () Bool)

(assert (=> b!1497850 (= e!838789 call!68058)))

(declare-fun bm!68055 () Bool)

(assert (=> bm!68055 (= call!68058 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1497851 () Bool)

(declare-fun e!838788 () Bool)

(assert (=> b!1497851 (= e!838788 call!68058)))

(declare-fun b!1497853 () Bool)

(assert (=> b!1497853 (= e!838789 e!838788)))

(declare-fun lt!652521 () (_ BitVec 64))

(assert (=> b!1497853 (= lt!652521 (select (arr!48171 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50142 0))(
  ( (Unit!50143) )
))
(declare-fun lt!652520 () Unit!50142)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99826 (_ BitVec 64) (_ BitVec 32)) Unit!50142)

(assert (=> b!1497853 (= lt!652520 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2850 lt!652521 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1497853 (arrayContainsKey!0 a!2850 lt!652521 #b00000000000000000000000000000000)))

(declare-fun lt!652522 () Unit!50142)

(assert (=> b!1497853 (= lt!652522 lt!652520)))

