; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127438 () Bool)

(assert start!127438)

(declare-fun b!1497675 () Bool)

(declare-fun res!1018880 () Bool)

(declare-fun e!838687 () Bool)

(assert (=> b!1497675 (=> (not res!1018880) (not e!838687))))

(declare-datatypes ((array!99813 0))(
  ( (array!99814 (arr!48166 (Array (_ BitVec 32) (_ BitVec 64))) (size!48717 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99813)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1497675 (= res!1018880 (validKeyInArray!0 (select (arr!48166 a!2850) j!87)))))

(declare-fun res!1018881 () Bool)

(assert (=> start!127438 (=> (not res!1018881) (not e!838687))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127438 (= res!1018881 (validMask!0 mask!2661))))

(assert (=> start!127438 e!838687))

(assert (=> start!127438 true))

(declare-fun array_inv!37111 (array!99813) Bool)

(assert (=> start!127438 (array_inv!37111 a!2850)))

(declare-fun b!1497676 () Bool)

(declare-fun res!1018879 () Bool)

(assert (=> b!1497676 (=> (not res!1018879) (not e!838687))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1497676 (= res!1018879 (and (= (size!48717 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48717 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48717 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1497677 () Bool)

(declare-fun res!1018877 () Bool)

(assert (=> b!1497677 (=> (not res!1018877) (not e!838687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99813 (_ BitVec 32)) Bool)

(assert (=> b!1497677 (= res!1018877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1497678 () Bool)

(assert (=> b!1497678 (= e!838687 (and (bvsle #b00000000000000000000000000000000 (size!48717 a!2850)) (bvsge (size!48717 a!2850) #b01111111111111111111111111111111)))))

(declare-fun b!1497679 () Bool)

(declare-fun res!1018878 () Bool)

(assert (=> b!1497679 (=> (not res!1018878) (not e!838687))))

(assert (=> b!1497679 (= res!1018878 (validKeyInArray!0 (select (arr!48166 a!2850) i!996)))))

(assert (= (and start!127438 res!1018881) b!1497676))

(assert (= (and b!1497676 res!1018879) b!1497679))

(assert (= (and b!1497679 res!1018878) b!1497675))

(assert (= (and b!1497675 res!1018880) b!1497677))

(assert (= (and b!1497677 res!1018877) b!1497678))

(declare-fun m!1380819 () Bool)

(assert (=> b!1497675 m!1380819))

(assert (=> b!1497675 m!1380819))

(declare-fun m!1380821 () Bool)

(assert (=> b!1497675 m!1380821))

(declare-fun m!1380823 () Bool)

(assert (=> start!127438 m!1380823))

(declare-fun m!1380825 () Bool)

(assert (=> start!127438 m!1380825))

(declare-fun m!1380827 () Bool)

(assert (=> b!1497677 m!1380827))

(declare-fun m!1380829 () Bool)

(assert (=> b!1497679 m!1380829))

(assert (=> b!1497679 m!1380829))

(declare-fun m!1380831 () Bool)

(assert (=> b!1497679 m!1380831))

(push 1)

(assert (not b!1497679))

(assert (not b!1497675))

(assert (not start!127438))

(assert (not b!1497677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!157387 () Bool)

(assert (=> d!157387 (= (validKeyInArray!0 (select (arr!48166 a!2850) i!996)) (and (not (= (select (arr!48166 a!2850) i!996) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48166 a!2850) i!996) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497679 d!157387))

(declare-fun d!157391 () Bool)

(assert (=> d!157391 (= (validKeyInArray!0 (select (arr!48166 a!2850) j!87)) (and (not (= (select (arr!48166 a!2850) j!87) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48166 a!2850) j!87) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1497675 d!157391))

(declare-fun d!157393 () Bool)

(assert (=> d!157393 (= (validMask!0 mask!2661) (and (or (= mask!2661 #b00000000000000000000000000000111) (= mask!2661 #b00000000000000000000000000001111) (= mask!2661 #b00000000000000000000000000011111) (= mask!2661 #b00000000000000000000000000111111) (= mask!2661 #b00000000000000000000000001111111) (= mask!2661 #b00000000000000000000000011111111) (= mask!2661 #b00000000000000000000000111111111) (= mask!2661 #b00000000000000000000001111111111) (= mask!2661 #b00000000000000000000011111111111) (= mask!2661 #b00000000000000000000111111111111) (= mask!2661 #b00000000000000000001111111111111) (= mask!2661 #b00000000000000000011111111111111) (= mask!2661 #b00000000000000000111111111111111) (= mask!2661 #b00000000000000001111111111111111) (= mask!2661 #b00000000000000011111111111111111) (= mask!2661 #b00000000000000111111111111111111) (= mask!2661 #b00000000000001111111111111111111) (= mask!2661 #b00000000000011111111111111111111) (= mask!2661 #b00000000000111111111111111111111) (= mask!2661 #b00000000001111111111111111111111) (= mask!2661 #b00000000011111111111111111111111) (= mask!2661 #b00000000111111111111111111111111) (= mask!2661 #b00000001111111111111111111111111) (= mask!2661 #b00000011111111111111111111111111) (= mask!2661 #b00000111111111111111111111111111) (= mask!2661 #b00001111111111111111111111111111) (= mask!2661 #b00011111111111111111111111111111) (= mask!2661 #b00111111111111111111111111111111)) (bvsle mask!2661 #b00111111111111111111111111111111)))))

(assert (=> start!127438 d!157393))

(declare-fun d!157405 () Bool)

(assert (=> d!157405 (= (array_inv!37111 a!2850) (bvsge (size!48717 a!2850) #b00000000000000000000000000000000))))

(assert (=> start!127438 d!157405))

(declare-fun d!157407 () Bool)

(declare-fun res!1018928 () Bool)

(declare-fun e!838725 () Bool)

(assert (=> d!157407 (=> res!1018928 e!838725)))

(assert (=> d!157407 (= res!1018928 (bvsge #b00000000000000000000000000000000 (size!48717 a!2850)))))

