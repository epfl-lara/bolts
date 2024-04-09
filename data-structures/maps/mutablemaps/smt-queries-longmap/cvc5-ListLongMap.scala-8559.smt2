; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104554 () Bool)

(assert start!104554)

(declare-fun res!832125 () Bool)

(declare-fun e!707200 () Bool)

(assert (=> start!104554 (=> (not res!832125) (not e!707200))))

(declare-datatypes ((array!80261 0))(
  ( (array!80262 (arr!38700 (Array (_ BitVec 32) (_ BitVec 64))) (size!39237 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80261)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104554 (= res!832125 (and (bvslt (size!39237 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39237 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39237 a!3892))))))

(assert (=> start!104554 e!707200))

(declare-fun array_inv!29476 (array!80261) Bool)

(assert (=> start!104554 (array_inv!29476 a!3892)))

(assert (=> start!104554 true))

(declare-fun b!1246814 () Bool)

(declare-fun res!832124 () Bool)

(assert (=> b!1246814 (=> (not res!832124) (not e!707200))))

(declare-datatypes ((List!27681 0))(
  ( (Nil!27678) (Cons!27677 (h!28886 (_ BitVec 64)) (t!41157 List!27681)) )
))
(declare-fun arrayNoDuplicates!0 (array!80261 (_ BitVec 32) List!27681) Bool)

(assert (=> b!1246814 (= res!832124 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27678))))

(declare-fun b!1246815 () Bool)

(declare-fun res!832126 () Bool)

(assert (=> b!1246815 (=> (not res!832126) (not e!707200))))

(assert (=> b!1246815 (= res!832126 (= from!3270 newFrom!287))))

(declare-fun b!1246816 () Bool)

(assert (=> b!1246816 (= e!707200 (not (arrayNoDuplicates!0 a!3892 newFrom!287 Nil!27678)))))

(assert (= (and start!104554 res!832125) b!1246814))

(assert (= (and b!1246814 res!832124) b!1246815))

(assert (= (and b!1246815 res!832126) b!1246816))

(declare-fun m!1148567 () Bool)

(assert (=> start!104554 m!1148567))

(declare-fun m!1148569 () Bool)

(assert (=> b!1246814 m!1148569))

(declare-fun m!1148571 () Bool)

(assert (=> b!1246816 m!1148571))

(push 1)

(assert (not b!1246816))

(assert (not b!1246814))

(assert (not start!104554))

(check-sat)

(pop 1)

