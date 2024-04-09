; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104096 () Bool)

(assert start!104096)

(declare-fun res!830382 () Bool)

(declare-fun e!705607 () Bool)

(assert (=> start!104096 (=> (not res!830382) (not e!705607))))

(declare-datatypes ((array!80062 0))(
  ( (array!80063 (arr!38617 (Array (_ BitVec 32) (_ BitVec 64))) (size!39154 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80062)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104096 (= res!830382 (and (bvslt (size!39154 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39154 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39154 a!3892))))))

(assert (=> start!104096 e!705607))

(declare-fun array_inv!29393 (array!80062) Bool)

(assert (=> start!104096 (array_inv!29393 a!3892)))

(assert (=> start!104096 true))

(declare-fun b!1244702 () Bool)

(declare-fun res!830383 () Bool)

(assert (=> b!1244702 (=> (not res!830383) (not e!705607))))

(declare-datatypes ((List!27598 0))(
  ( (Nil!27595) (Cons!27594 (h!28803 (_ BitVec 64)) (t!41074 List!27598)) )
))
(declare-fun arrayNoDuplicates!0 (array!80062 (_ BitVec 32) List!27598) Bool)

(assert (=> b!1244702 (= res!830383 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27595))))

(declare-fun b!1244703 () Bool)

(assert (=> b!1244703 (= e!705607 (and (not (= from!3270 newFrom!287)) (bvslt from!3270 (size!39154 a!3892)) (= newFrom!287 (size!39154 a!3892)) (bvslt newFrom!287 #b00000000000000000000000000000000)))))

(assert (= (and start!104096 res!830382) b!1244702))

(assert (= (and b!1244702 res!830383) b!1244703))

(declare-fun m!1146967 () Bool)

(assert (=> start!104096 m!1146967))

(declare-fun m!1146969 () Bool)

(assert (=> b!1244702 m!1146969))

(check-sat (not start!104096) (not b!1244702))
(check-sat)
