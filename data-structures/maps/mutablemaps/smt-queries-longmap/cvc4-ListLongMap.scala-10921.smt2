; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127838 () Bool)

(assert start!127838)

(declare-fun res!1022957 () Bool)

(declare-fun e!840092 () Bool)

(assert (=> start!127838 (=> (not res!1022957) (not e!840092))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127838 (= res!1022957 (validMask!0 mask!2661))))

(assert (=> start!127838 e!840092))

(assert (=> start!127838 true))

(declare-datatypes ((array!100132 0))(
  ( (array!100133 (arr!48321 (Array (_ BitVec 32) (_ BitVec 64))) (size!48872 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100132)

(declare-fun array_inv!37266 (array!100132) Bool)

(assert (=> start!127838 (array_inv!37266 a!2850)))

(declare-fun b!1501806 () Bool)

(assert (=> b!1501806 (= e!840092 false)))

(declare-fun lt!653236 () Bool)

(declare-datatypes ((List!34993 0))(
  ( (Nil!34990) (Cons!34989 (h!36387 (_ BitVec 64)) (t!49694 List!34993)) )
))
(declare-fun arrayNoDuplicates!0 (array!100132 (_ BitVec 32) List!34993) Bool)

(assert (=> b!1501806 (= lt!653236 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34990))))

(declare-fun b!1501807 () Bool)

(declare-fun res!1022958 () Bool)

(assert (=> b!1501807 (=> (not res!1022958) (not e!840092))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501807 (= res!1022958 (validKeyInArray!0 (select (arr!48321 a!2850) i!996)))))

(declare-fun b!1501808 () Bool)

(declare-fun res!1022956 () Bool)

(assert (=> b!1501808 (=> (not res!1022956) (not e!840092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100132 (_ BitVec 32)) Bool)

(assert (=> b!1501808 (= res!1022956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501809 () Bool)

(declare-fun res!1022955 () Bool)

(assert (=> b!1501809 (=> (not res!1022955) (not e!840092))))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501809 (= res!1022955 (and (= (size!48872 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48872 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48872 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501810 () Bool)

(declare-fun res!1022954 () Bool)

(assert (=> b!1501810 (=> (not res!1022954) (not e!840092))))

(assert (=> b!1501810 (= res!1022954 (validKeyInArray!0 (select (arr!48321 a!2850) j!87)))))

(assert (= (and start!127838 res!1022957) b!1501809))

(assert (= (and b!1501809 res!1022955) b!1501807))

(assert (= (and b!1501807 res!1022958) b!1501810))

(assert (= (and b!1501810 res!1022954) b!1501808))

(assert (= (and b!1501808 res!1022956) b!1501806))

(declare-fun m!1385141 () Bool)

(assert (=> start!127838 m!1385141))

(declare-fun m!1385143 () Bool)

(assert (=> start!127838 m!1385143))

(declare-fun m!1385145 () Bool)

(assert (=> b!1501808 m!1385145))

(declare-fun m!1385147 () Bool)

(assert (=> b!1501810 m!1385147))

(assert (=> b!1501810 m!1385147))

(declare-fun m!1385149 () Bool)

(assert (=> b!1501810 m!1385149))

(declare-fun m!1385151 () Bool)

(assert (=> b!1501807 m!1385151))

(assert (=> b!1501807 m!1385151))

(declare-fun m!1385153 () Bool)

(assert (=> b!1501807 m!1385153))

(declare-fun m!1385155 () Bool)

(assert (=> b!1501806 m!1385155))

(push 1)

(assert (not start!127838))

(assert (not b!1501807))

(assert (not b!1501808))

(assert (not b!1501806))

(assert (not b!1501810))

(check-sat)

