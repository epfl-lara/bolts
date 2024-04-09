; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104246 () Bool)

(assert start!104246)

(declare-fun res!830839 () Bool)

(declare-fun e!706087 () Bool)

(assert (=> start!104246 (=> (not res!830839) (not e!706087))))

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(declare-datatypes ((array!80140 0))(
  ( (array!80141 (arr!38650 (Array (_ BitVec 32) (_ BitVec 64))) (size!39187 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80140)

(assert (=> start!104246 (= res!830839 (and (bvslt (size!39187 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39187 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39187 a!3892))))))

(assert (=> start!104246 e!706087))

(declare-fun array_inv!29426 (array!80140) Bool)

(assert (=> start!104246 (array_inv!29426 a!3892)))

(assert (=> start!104246 true))

(declare-fun b!1245231 () Bool)

(assert (=> b!1245231 (= e!706087 false)))

(declare-fun lt!562840 () Bool)

(declare-datatypes ((List!27631 0))(
  ( (Nil!27628) (Cons!27627 (h!28836 (_ BitVec 64)) (t!41107 List!27631)) )
))
(declare-fun arrayNoDuplicates!0 (array!80140 (_ BitVec 32) List!27631) Bool)

(assert (=> b!1245231 (= lt!562840 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27628))))

(assert (= (and start!104246 res!830839) b!1245231))

(declare-fun m!1147351 () Bool)

(assert (=> start!104246 m!1147351))

(declare-fun m!1147353 () Bool)

(assert (=> b!1245231 m!1147353))

(check-sat (not b!1245231) (not start!104246))
