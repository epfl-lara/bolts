; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104234 () Bool)

(assert start!104234)

(declare-fun res!830821 () Bool)

(declare-fun e!706051 () Bool)

(assert (=> start!104234 (=> (not res!830821) (not e!706051))))

(declare-datatypes ((array!80128 0))(
  ( (array!80129 (arr!38644 (Array (_ BitVec 32) (_ BitVec 64))) (size!39181 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80128)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104234 (= res!830821 (and (bvslt (size!39181 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39181 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39181 a!3892))))))

(assert (=> start!104234 e!706051))

(declare-fun array_inv!29420 (array!80128) Bool)

(assert (=> start!104234 (array_inv!29420 a!3892)))

(assert (=> start!104234 true))

(declare-fun b!1245213 () Bool)

(assert (=> b!1245213 (= e!706051 false)))

(declare-fun lt!562822 () Bool)

(declare-datatypes ((List!27625 0))(
  ( (Nil!27622) (Cons!27621 (h!28830 (_ BitVec 64)) (t!41101 List!27625)) )
))
(declare-fun arrayNoDuplicates!0 (array!80128 (_ BitVec 32) List!27625) Bool)

(assert (=> b!1245213 (= lt!562822 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27622))))

(assert (= (and start!104234 res!830821) b!1245213))

(declare-fun m!1147327 () Bool)

(assert (=> start!104234 m!1147327))

(declare-fun m!1147329 () Bool)

(assert (=> b!1245213 m!1147329))

(check-sat (not start!104234) (not b!1245213))
