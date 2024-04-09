; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104242 () Bool)

(assert start!104242)

(declare-fun res!830833 () Bool)

(declare-fun e!706075 () Bool)

(assert (=> start!104242 (=> (not res!830833) (not e!706075))))

(declare-datatypes ((array!80136 0))(
  ( (array!80137 (arr!38648 (Array (_ BitVec 32) (_ BitVec 64))) (size!39185 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80136)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104242 (= res!830833 (and (bvslt (size!39185 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39185 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39185 a!3892))))))

(assert (=> start!104242 e!706075))

(declare-fun array_inv!29424 (array!80136) Bool)

(assert (=> start!104242 (array_inv!29424 a!3892)))

(assert (=> start!104242 true))

(declare-fun b!1245225 () Bool)

(assert (=> b!1245225 (= e!706075 false)))

(declare-fun lt!562834 () Bool)

(declare-datatypes ((List!27629 0))(
  ( (Nil!27626) (Cons!27625 (h!28834 (_ BitVec 64)) (t!41105 List!27629)) )
))
(declare-fun arrayNoDuplicates!0 (array!80136 (_ BitVec 32) List!27629) Bool)

(assert (=> b!1245225 (= lt!562834 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27626))))

(assert (= (and start!104242 res!830833) b!1245225))

(declare-fun m!1147343 () Bool)

(assert (=> start!104242 m!1147343))

(declare-fun m!1147345 () Bool)

(assert (=> b!1245225 m!1147345))

(push 1)

(assert (not start!104242))

(assert (not b!1245225))

(check-sat)

(pop 1)

