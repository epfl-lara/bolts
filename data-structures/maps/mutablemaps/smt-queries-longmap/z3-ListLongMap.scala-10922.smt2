; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127842 () Bool)

(assert start!127842)

(declare-fun b!1501836 () Bool)

(declare-fun res!1022988 () Bool)

(declare-fun e!840104 () Bool)

(assert (=> b!1501836 (=> (not res!1022988) (not e!840104))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100136 0))(
  ( (array!100137 (arr!48323 (Array (_ BitVec 32) (_ BitVec 64))) (size!48874 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100136)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501836 (= res!1022988 (and (= (size!48874 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48874 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48874 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501837 () Bool)

(declare-fun res!1022985 () Bool)

(assert (=> b!1501837 (=> (not res!1022985) (not e!840104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501837 (= res!1022985 (validKeyInArray!0 (select (arr!48323 a!2850) i!996)))))

(declare-fun b!1501838 () Bool)

(declare-fun res!1022987 () Bool)

(assert (=> b!1501838 (=> (not res!1022987) (not e!840104))))

(assert (=> b!1501838 (= res!1022987 (validKeyInArray!0 (select (arr!48323 a!2850) j!87)))))

(declare-fun b!1501839 () Bool)

(assert (=> b!1501839 (= e!840104 false)))

(declare-fun lt!653242 () Bool)

(declare-datatypes ((List!34995 0))(
  ( (Nil!34992) (Cons!34991 (h!36389 (_ BitVec 64)) (t!49696 List!34995)) )
))
(declare-fun arrayNoDuplicates!0 (array!100136 (_ BitVec 32) List!34995) Bool)

(assert (=> b!1501839 (= lt!653242 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34992))))

(declare-fun res!1022986 () Bool)

(assert (=> start!127842 (=> (not res!1022986) (not e!840104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127842 (= res!1022986 (validMask!0 mask!2661))))

(assert (=> start!127842 e!840104))

(assert (=> start!127842 true))

(declare-fun array_inv!37268 (array!100136) Bool)

(assert (=> start!127842 (array_inv!37268 a!2850)))

(declare-fun b!1501840 () Bool)

(declare-fun res!1022984 () Bool)

(assert (=> b!1501840 (=> (not res!1022984) (not e!840104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100136 (_ BitVec 32)) Bool)

(assert (=> b!1501840 (= res!1022984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127842 res!1022986) b!1501836))

(assert (= (and b!1501836 res!1022988) b!1501837))

(assert (= (and b!1501837 res!1022985) b!1501838))

(assert (= (and b!1501838 res!1022987) b!1501840))

(assert (= (and b!1501840 res!1022984) b!1501839))

(declare-fun m!1385173 () Bool)

(assert (=> b!1501840 m!1385173))

(declare-fun m!1385175 () Bool)

(assert (=> b!1501837 m!1385175))

(assert (=> b!1501837 m!1385175))

(declare-fun m!1385177 () Bool)

(assert (=> b!1501837 m!1385177))

(declare-fun m!1385179 () Bool)

(assert (=> b!1501839 m!1385179))

(declare-fun m!1385181 () Bool)

(assert (=> start!127842 m!1385181))

(declare-fun m!1385183 () Bool)

(assert (=> start!127842 m!1385183))

(declare-fun m!1385185 () Bool)

(assert (=> b!1501838 m!1385185))

(assert (=> b!1501838 m!1385185))

(declare-fun m!1385187 () Bool)

(assert (=> b!1501838 m!1385187))

(check-sat (not b!1501840) (not b!1501839) (not b!1501838) (not b!1501837) (not start!127842))
