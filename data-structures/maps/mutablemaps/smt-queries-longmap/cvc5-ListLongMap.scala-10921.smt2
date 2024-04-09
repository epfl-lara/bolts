; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127834 () Bool)

(assert start!127834)

(declare-fun b!1501776 () Bool)

(declare-fun res!1022925 () Bool)

(declare-fun e!840079 () Bool)

(assert (=> b!1501776 (=> (not res!1022925) (not e!840079))))

(declare-datatypes ((array!100128 0))(
  ( (array!100129 (arr!48319 (Array (_ BitVec 32) (_ BitVec 64))) (size!48870 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100128)

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100128 (_ BitVec 32)) Bool)

(assert (=> b!1501776 (= res!1022925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun res!1022924 () Bool)

(assert (=> start!127834 (=> (not res!1022924) (not e!840079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127834 (= res!1022924 (validMask!0 mask!2661))))

(assert (=> start!127834 e!840079))

(assert (=> start!127834 true))

(declare-fun array_inv!37264 (array!100128) Bool)

(assert (=> start!127834 (array_inv!37264 a!2850)))

(declare-fun b!1501777 () Bool)

(assert (=> b!1501777 (= e!840079 false)))

(declare-fun lt!653230 () Bool)

(declare-datatypes ((List!34991 0))(
  ( (Nil!34988) (Cons!34987 (h!36385 (_ BitVec 64)) (t!49692 List!34991)) )
))
(declare-fun arrayNoDuplicates!0 (array!100128 (_ BitVec 32) List!34991) Bool)

(assert (=> b!1501777 (= lt!653230 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34988))))

(declare-fun b!1501778 () Bool)

(declare-fun res!1022927 () Bool)

(assert (=> b!1501778 (=> (not res!1022927) (not e!840079))))

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501778 (= res!1022927 (validKeyInArray!0 (select (arr!48319 a!2850) j!87)))))

(declare-fun b!1501779 () Bool)

(declare-fun res!1022926 () Bool)

(assert (=> b!1501779 (=> (not res!1022926) (not e!840079))))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501779 (= res!1022926 (and (= (size!48870 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48870 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48870 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501780 () Bool)

(declare-fun res!1022928 () Bool)

(assert (=> b!1501780 (=> (not res!1022928) (not e!840079))))

(assert (=> b!1501780 (= res!1022928 (validKeyInArray!0 (select (arr!48319 a!2850) i!996)))))

(assert (= (and start!127834 res!1022924) b!1501779))

(assert (= (and b!1501779 res!1022926) b!1501780))

(assert (= (and b!1501780 res!1022928) b!1501778))

(assert (= (and b!1501778 res!1022927) b!1501776))

(assert (= (and b!1501776 res!1022925) b!1501777))

(declare-fun m!1385109 () Bool)

(assert (=> start!127834 m!1385109))

(declare-fun m!1385111 () Bool)

(assert (=> start!127834 m!1385111))

(declare-fun m!1385113 () Bool)

(assert (=> b!1501778 m!1385113))

(assert (=> b!1501778 m!1385113))

(declare-fun m!1385115 () Bool)

(assert (=> b!1501778 m!1385115))

(declare-fun m!1385117 () Bool)

(assert (=> b!1501777 m!1385117))

(declare-fun m!1385119 () Bool)

(assert (=> b!1501776 m!1385119))

(declare-fun m!1385121 () Bool)

(assert (=> b!1501780 m!1385121))

(assert (=> b!1501780 m!1385121))

(declare-fun m!1385123 () Bool)

(assert (=> b!1501780 m!1385123))

(push 1)

(assert (not b!1501778))

(assert (not b!1501776))

(assert (not start!127834))

(assert (not b!1501777))

(assert (not b!1501780))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

