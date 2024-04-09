; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104102 () Bool)

(assert start!104102)

(declare-fun res!830395 () Bool)

(declare-fun e!705625 () Bool)

(assert (=> start!104102 (=> (not res!830395) (not e!705625))))

(declare-datatypes ((array!80068 0))(
  ( (array!80069 (arr!38620 (Array (_ BitVec 32) (_ BitVec 64))) (size!39157 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80068)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104102 (= res!830395 (and (bvslt (size!39157 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39157 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39157 a!3892))))))

(assert (=> start!104102 e!705625))

(declare-fun array_inv!29396 (array!80068) Bool)

(assert (=> start!104102 (array_inv!29396 a!3892)))

(assert (=> start!104102 true))

(declare-fun b!1244715 () Bool)

(assert (=> b!1244715 (= e!705625 false)))

(declare-fun lt!562780 () Bool)

(declare-datatypes ((List!27601 0))(
  ( (Nil!27598) (Cons!27597 (h!28806 (_ BitVec 64)) (t!41077 List!27601)) )
))
(declare-fun arrayNoDuplicates!0 (array!80068 (_ BitVec 32) List!27601) Bool)

(assert (=> b!1244715 (= lt!562780 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27598))))

(assert (= (and start!104102 res!830395) b!1244715))

(declare-fun m!1146979 () Bool)

(assert (=> start!104102 m!1146979))

(declare-fun m!1146981 () Bool)

(assert (=> b!1244715 m!1146981))

(check-sat (not b!1244715) (not start!104102))
