; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127828 () Bool)

(assert start!127828)

(declare-fun b!1501731 () Bool)

(declare-fun res!1022881 () Bool)

(declare-fun e!840062 () Bool)

(assert (=> b!1501731 (=> (not res!1022881) (not e!840062))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100122 0))(
  ( (array!100123 (arr!48316 (Array (_ BitVec 32) (_ BitVec 64))) (size!48867 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100122)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501731 (= res!1022881 (and (= (size!48867 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48867 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48867 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501732 () Bool)

(declare-fun res!1022883 () Bool)

(assert (=> b!1501732 (=> (not res!1022883) (not e!840062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100122 (_ BitVec 32)) Bool)

(assert (=> b!1501732 (= res!1022883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501733 () Bool)

(assert (=> b!1501733 (= e!840062 false)))

(declare-fun lt!653221 () Bool)

(declare-datatypes ((List!34988 0))(
  ( (Nil!34985) (Cons!34984 (h!36382 (_ BitVec 64)) (t!49689 List!34988)) )
))
(declare-fun arrayNoDuplicates!0 (array!100122 (_ BitVec 32) List!34988) Bool)

(assert (=> b!1501733 (= lt!653221 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34985))))

(declare-fun b!1501734 () Bool)

(declare-fun res!1022879 () Bool)

(assert (=> b!1501734 (=> (not res!1022879) (not e!840062))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501734 (= res!1022879 (validKeyInArray!0 (select (arr!48316 a!2850) i!996)))))

(declare-fun b!1501735 () Bool)

(declare-fun res!1022880 () Bool)

(assert (=> b!1501735 (=> (not res!1022880) (not e!840062))))

(assert (=> b!1501735 (= res!1022880 (validKeyInArray!0 (select (arr!48316 a!2850) j!87)))))

(declare-fun res!1022882 () Bool)

(assert (=> start!127828 (=> (not res!1022882) (not e!840062))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127828 (= res!1022882 (validMask!0 mask!2661))))

(assert (=> start!127828 e!840062))

(assert (=> start!127828 true))

(declare-fun array_inv!37261 (array!100122) Bool)

(assert (=> start!127828 (array_inv!37261 a!2850)))

(assert (= (and start!127828 res!1022882) b!1501731))

(assert (= (and b!1501731 res!1022881) b!1501734))

(assert (= (and b!1501734 res!1022879) b!1501735))

(assert (= (and b!1501735 res!1022880) b!1501732))

(assert (= (and b!1501732 res!1022883) b!1501733))

(declare-fun m!1385061 () Bool)

(assert (=> b!1501735 m!1385061))

(assert (=> b!1501735 m!1385061))

(declare-fun m!1385063 () Bool)

(assert (=> b!1501735 m!1385063))

(declare-fun m!1385065 () Bool)

(assert (=> b!1501733 m!1385065))

(declare-fun m!1385067 () Bool)

(assert (=> b!1501732 m!1385067))

(declare-fun m!1385069 () Bool)

(assert (=> b!1501734 m!1385069))

(assert (=> b!1501734 m!1385069))

(declare-fun m!1385071 () Bool)

(assert (=> b!1501734 m!1385071))

(declare-fun m!1385073 () Bool)

(assert (=> start!127828 m!1385073))

(declare-fun m!1385075 () Bool)

(assert (=> start!127828 m!1385075))

(push 1)

(assert (not b!1501735))

(assert (not b!1501733))

(assert (not b!1501734))

(assert (not start!127828))

(assert (not b!1501732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

