; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127442 () Bool)

(assert start!127442)

(declare-fun b!1497705 () Bool)

(declare-fun res!1018908 () Bool)

(declare-fun e!838699 () Bool)

(assert (=> b!1497705 (=> (not res!1018908) (not e!838699))))

(declare-datatypes ((array!99817 0))(
  ( (array!99818 (arr!48168 (Array (_ BitVec 32) (_ BitVec 64))) (size!48719 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99817)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497705 (= res!1018908 (validKeyInArray!0 (select (arr!48168 a!2850) i!996)))))

(declare-fun b!1497706 () Bool)

(assert (=> b!1497706 (= e!838699 (and (bvsle #b00000000000000000000000000000000 (size!48719 a!2850)) (bvsge (size!48719 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497707 () Bool)

(declare-fun res!1018907 () Bool)

(assert (=> b!1497707 (=> (not res!1018907) (not e!838699))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1497707 (= res!1018907 (validKeyInArray!0 (select (arr!48168 a!2850) j!87)))))

(declare-fun b!1497708 () Bool)

(declare-fun res!1018910 () Bool)

(assert (=> b!1497708 (=> (not res!1018910) (not e!838699))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99817 (_ BitVec 32)) Bool)

(assert (=> b!1497708 (= res!1018910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497709 () Bool)

(declare-fun res!1018909 () Bool)

(assert (=> b!1497709 (=> (not res!1018909) (not e!838699))))

(assert (=> b!1497709 (= res!1018909 (and (= (size!48719 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48719 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48719 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1018911 () Bool)

(assert (=> start!127442 (=> (not res!1018911) (not e!838699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127442 (= res!1018911 (validMask!0 mask!2661))))

(assert (=> start!127442 e!838699))

(assert (=> start!127442 true))

(declare-fun array_inv!37113 (array!99817) Bool)

(assert (=> start!127442 (array_inv!37113 a!2850)))

(assert (= (and start!127442 res!1018911) b!1497709))

(assert (= (and b!1497709 res!1018909) b!1497705))

(assert (= (and b!1497705 res!1018908) b!1497707))

(assert (= (and b!1497707 res!1018907) b!1497708))

(assert (= (and b!1497708 res!1018910) b!1497706))

(declare-fun m!1380847 () Bool)

(assert (=> b!1497705 m!1380847))

(assert (=> b!1497705 m!1380847))

(declare-fun m!1380849 () Bool)

(assert (=> b!1497705 m!1380849))

(declare-fun m!1380851 () Bool)

(assert (=> b!1497707 m!1380851))

(assert (=> b!1497707 m!1380851))

(declare-fun m!1380853 () Bool)

(assert (=> b!1497707 m!1380853))

(declare-fun m!1380855 () Bool)

(assert (=> b!1497708 m!1380855))

(declare-fun m!1380857 () Bool)

(assert (=> start!127442 m!1380857))

(declare-fun m!1380859 () Bool)

(assert (=> start!127442 m!1380859))

(push 1)

(assert (not b!1497707))

(assert (not b!1497708))

(assert (not start!127442))

(assert (not b!1497705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157389 () Bool)

(assert (=> d!157389 (= (validKeyInArray!0 (select (arr!48168 a!2850) j!87)) (and (not (= (select (arr!48168 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48168 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497707 d!157389))

(declare-fun d!157395 () Bool)

(declare-fun res!1018920 () Bool)

(declare-fun e!838714 () Bool)

(assert (=> d!157395 (=> res!1018920 e!838714)))

(assert (=> d!157395 (= res!1018920 (bvsge #b00000000000000000000000000000000 (size!48719 a!2850)))))

(assert (=> d!157395 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661) e!838714)))

(declare-fun b!1497726 () Bool)

(declare-fun e!838715 () Bool)

(declare-fun call!68045 () Bool)

(assert (=> b!1497726 (= e!838715 call!68045)))

(declare-fun bm!68040 () Bool)

(assert (=> bm!68040 (= call!68045 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2850 mask!2661))))

(declare-fun b!1497727 () Bool)

(declare-fun e!838713 () Bool)

(assert (=> b!1497727 (= e!838713 call!68045)))

(declare-fun b!1497728 () Bool)

(assert (=> b!1497728 (= e!838714 e!838715)))

(declare-fun c!138940 () Bool)

(assert (=> b!1497728 (= c!138940 (validKeyInArray!0 (select (arr!48168 a!2850) #b00000000000000000000000000000000)))))

(declare-fun b!1497729 () Bool)

(assert (=> b!1497729 (= e!838715 e!838713)))

(declare-fun lt!652481 () (_ BitVec 64))

(assert (=> b!1497729 (= lt!652481 (select (arr!48168 a!2850) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50136 0))(
  ( (Unit!50137) )
))
