; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104264 () Bool)

(assert start!104264)

(declare-fun res!830893 () Bool)

(declare-fun e!706141 () Bool)

(assert (=> start!104264 (=> (not res!830893) (not e!706141))))

(declare-datatypes ((array!80158 0))(
  ( (array!80159 (arr!38659 (Array (_ BitVec 32) (_ BitVec 64))) (size!39196 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80158)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104264 (= res!830893 (and (bvslt (size!39196 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39196 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39196 a!3892))))))

(assert (=> start!104264 e!706141))

(declare-fun array_inv!29435 (array!80158) Bool)

(assert (=> start!104264 (array_inv!29435 a!3892)))

(assert (=> start!104264 true))

(declare-fun b!1245285 () Bool)

(assert (=> b!1245285 (= e!706141 false)))

(declare-fun lt!562858 () Bool)

(declare-datatypes ((List!27640 0))(
  ( (Nil!27637) (Cons!27636 (h!28845 (_ BitVec 64)) (t!41116 List!27640)) )
))
(declare-fun arrayNoDuplicates!0 (array!80158 (_ BitVec 32) List!27640) Bool)

(assert (=> b!1245285 (= lt!562858 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27637))))

(assert (= (and start!104264 res!830893) b!1245285))

(declare-fun m!1147399 () Bool)

(assert (=> start!104264 m!1147399))

(declare-fun m!1147401 () Bool)

(assert (=> b!1245285 m!1147401))

(check-sat (not b!1245285) (not start!104264))
