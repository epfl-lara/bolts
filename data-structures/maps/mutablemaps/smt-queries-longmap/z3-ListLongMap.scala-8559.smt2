; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104556 () Bool)

(assert start!104556)

(declare-fun res!832133 () Bool)

(declare-fun e!707205 () Bool)

(assert (=> start!104556 (=> (not res!832133) (not e!707205))))

(declare-datatypes ((array!80263 0))(
  ( (array!80264 (arr!38701 (Array (_ BitVec 32) (_ BitVec 64))) (size!39238 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80263)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104556 (= res!832133 (and (bvslt (size!39238 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39238 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39238 a!3892))))))

(assert (=> start!104556 e!707205))

(declare-fun array_inv!29477 (array!80263) Bool)

(assert (=> start!104556 (array_inv!29477 a!3892)))

(assert (=> start!104556 true))

(declare-fun b!1246823 () Bool)

(declare-fun res!832134 () Bool)

(assert (=> b!1246823 (=> (not res!832134) (not e!707205))))

(declare-datatypes ((List!27682 0))(
  ( (Nil!27679) (Cons!27678 (h!28887 (_ BitVec 64)) (t!41158 List!27682)) )
))
(declare-fun arrayNoDuplicates!0 (array!80263 (_ BitVec 32) List!27682) Bool)

(assert (=> b!1246823 (= res!832134 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27679))))

(declare-fun b!1246824 () Bool)

(declare-fun res!832135 () Bool)

(assert (=> b!1246824 (=> (not res!832135) (not e!707205))))

(assert (=> b!1246824 (= res!832135 (= from!3270 newFrom!287))))

(declare-fun b!1246825 () Bool)

(assert (=> b!1246825 (= e!707205 (not (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27679)))))

(assert (= (and start!104556 res!832133) b!1246823))

(assert (= (and b!1246823 res!832134) b!1246824))

(assert (= (and b!1246824 res!832135) b!1246825))

(declare-fun m!1148573 () Bool)

(assert (=> start!104556 m!1148573))

(declare-fun m!1148575 () Bool)

(assert (=> b!1246823 m!1148575))

(declare-fun m!1148577 () Bool)

(assert (=> b!1246825 m!1148577))

(check-sat (not b!1246825) (not start!104556) (not b!1246823))
(check-sat)
