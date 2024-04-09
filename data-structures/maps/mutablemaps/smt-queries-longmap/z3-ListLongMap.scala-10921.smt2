; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127836 () Bool)

(assert start!127836)

(declare-fun b!1501791 () Bool)

(declare-fun res!1022943 () Bool)

(declare-fun e!840085 () Bool)

(assert (=> b!1501791 (=> (not res!1022943) (not e!840085))))

(declare-datatypes ((array!100130 0))(
  ( (array!100131 (arr!48320 (Array (_ BitVec 32) (_ BitVec 64))) (size!48871 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100130)

(declare-fun j!87 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501791 (= res!1022943 (validKeyInArray!0 (select (arr!48320 a!2850) j!87)))))

(declare-fun b!1501792 () Bool)

(declare-fun res!1022940 () Bool)

(assert (=> b!1501792 (=> (not res!1022940) (not e!840085))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun i!996 () (_ BitVec 32))

(assert (=> b!1501792 (= res!1022940 (and (= (size!48871 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48871 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48871 a!2850)) (not (= i!996 j!87))))))

(declare-fun res!1022942 () Bool)

(assert (=> start!127836 (=> (not res!1022942) (not e!840085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127836 (= res!1022942 (validMask!0 mask!2661))))

(assert (=> start!127836 e!840085))

(assert (=> start!127836 true))

(declare-fun array_inv!37265 (array!100130) Bool)

(assert (=> start!127836 (array_inv!37265 a!2850)))

(declare-fun b!1501793 () Bool)

(assert (=> b!1501793 (= e!840085 false)))

(declare-fun lt!653233 () Bool)

(declare-datatypes ((List!34992 0))(
  ( (Nil!34989) (Cons!34988 (h!36386 (_ BitVec 64)) (t!49693 List!34992)) )
))
(declare-fun arrayNoDuplicates!0 (array!100130 (_ BitVec 32) List!34992) Bool)

(assert (=> b!1501793 (= lt!653233 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34989))))

(declare-fun b!1501794 () Bool)

(declare-fun res!1022941 () Bool)

(assert (=> b!1501794 (=> (not res!1022941) (not e!840085))))

(assert (=> b!1501794 (= res!1022941 (validKeyInArray!0 (select (arr!48320 a!2850) i!996)))))

(declare-fun b!1501795 () Bool)

(declare-fun res!1022939 () Bool)

(assert (=> b!1501795 (=> (not res!1022939) (not e!840085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100130 (_ BitVec 32)) Bool)

(assert (=> b!1501795 (= res!1022939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(assert (= (and start!127836 res!1022942) b!1501792))

(assert (= (and b!1501792 res!1022940) b!1501794))

(assert (= (and b!1501794 res!1022941) b!1501791))

(assert (= (and b!1501791 res!1022943) b!1501795))

(assert (= (and b!1501795 res!1022939) b!1501793))

(declare-fun m!1385125 () Bool)

(assert (=> b!1501793 m!1385125))

(declare-fun m!1385127 () Bool)

(assert (=> b!1501795 m!1385127))

(declare-fun m!1385129 () Bool)

(assert (=> b!1501794 m!1385129))

(assert (=> b!1501794 m!1385129))

(declare-fun m!1385131 () Bool)

(assert (=> b!1501794 m!1385131))

(declare-fun m!1385133 () Bool)

(assert (=> start!127836 m!1385133))

(declare-fun m!1385135 () Bool)

(assert (=> start!127836 m!1385135))

(declare-fun m!1385137 () Bool)

(assert (=> b!1501791 m!1385137))

(assert (=> b!1501791 m!1385137))

(declare-fun m!1385139 () Bool)

(assert (=> b!1501791 m!1385139))

(check-sat (not b!1501794) (not start!127836) (not b!1501793) (not b!1501791) (not b!1501795))
