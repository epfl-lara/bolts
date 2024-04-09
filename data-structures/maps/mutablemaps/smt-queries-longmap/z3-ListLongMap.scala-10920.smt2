; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127830 () Bool)

(assert start!127830)

(declare-fun b!1501746 () Bool)

(declare-fun res!1022895 () Bool)

(declare-fun e!840068 () Bool)

(assert (=> b!1501746 (=> (not res!1022895) (not e!840068))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-datatypes ((array!100124 0))(
  ( (array!100125 (arr!48317 (Array (_ BitVec 32) (_ BitVec 64))) (size!48868 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!100124)

(declare-fun i!996 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1501746 (= res!1022895 (and (= (size!48868 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48868 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48868 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1501747 () Bool)

(declare-fun res!1022898 () Bool)

(assert (=> b!1501747 (=> (not res!1022898) (not e!840068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1501747 (= res!1022898 (validKeyInArray!0 (select (arr!48317 a!2850) j!87)))))

(declare-fun b!1501748 () Bool)

(declare-fun res!1022894 () Bool)

(assert (=> b!1501748 (=> (not res!1022894) (not e!840068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100124 (_ BitVec 32)) Bool)

(assert (=> b!1501748 (= res!1022894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1501749 () Bool)

(declare-fun res!1022897 () Bool)

(assert (=> b!1501749 (=> (not res!1022897) (not e!840068))))

(assert (=> b!1501749 (= res!1022897 (validKeyInArray!0 (select (arr!48317 a!2850) i!996)))))

(declare-fun res!1022896 () Bool)

(assert (=> start!127830 (=> (not res!1022896) (not e!840068))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127830 (= res!1022896 (validMask!0 mask!2661))))

(assert (=> start!127830 e!840068))

(assert (=> start!127830 true))

(declare-fun array_inv!37262 (array!100124) Bool)

(assert (=> start!127830 (array_inv!37262 a!2850)))

(declare-fun b!1501750 () Bool)

(assert (=> b!1501750 (= e!840068 false)))

(declare-fun lt!653224 () Bool)

(declare-datatypes ((List!34989 0))(
  ( (Nil!34986) (Cons!34985 (h!36383 (_ BitVec 64)) (t!49690 List!34989)) )
))
(declare-fun arrayNoDuplicates!0 (array!100124 (_ BitVec 32) List!34989) Bool)

(assert (=> b!1501750 (= lt!653224 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34986))))

(assert (= (and start!127830 res!1022896) b!1501746))

(assert (= (and b!1501746 res!1022895) b!1501749))

(assert (= (and b!1501749 res!1022897) b!1501747))

(assert (= (and b!1501747 res!1022898) b!1501748))

(assert (= (and b!1501748 res!1022894) b!1501750))

(declare-fun m!1385077 () Bool)

(assert (=> b!1501750 m!1385077))

(declare-fun m!1385079 () Bool)

(assert (=> start!127830 m!1385079))

(declare-fun m!1385081 () Bool)

(assert (=> start!127830 m!1385081))

(declare-fun m!1385083 () Bool)

(assert (=> b!1501747 m!1385083))

(assert (=> b!1501747 m!1385083))

(declare-fun m!1385085 () Bool)

(assert (=> b!1501747 m!1385085))

(declare-fun m!1385087 () Bool)

(assert (=> b!1501748 m!1385087))

(declare-fun m!1385089 () Bool)

(assert (=> b!1501749 m!1385089))

(assert (=> b!1501749 m!1385089))

(declare-fun m!1385091 () Bool)

(assert (=> b!1501749 m!1385091))

(check-sat (not b!1501750) (not start!127830) (not b!1501749) (not b!1501747) (not b!1501748))
