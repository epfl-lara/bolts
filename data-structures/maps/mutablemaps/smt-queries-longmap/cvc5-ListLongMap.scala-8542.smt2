; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104244 () Bool)

(assert start!104244)

(declare-fun res!830836 () Bool)

(declare-fun e!706081 () Bool)

(assert (=> start!104244 (=> (not res!830836) (not e!706081))))

(declare-datatypes ((array!80138 0))(
  ( (array!80139 (arr!38649 (Array (_ BitVec 32) (_ BitVec 64))) (size!39186 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80138)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104244 (= res!830836 (and (bvslt (size!39186 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39186 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39186 a!3892))))))

(assert (=> start!104244 e!706081))

(declare-fun array_inv!29425 (array!80138) Bool)

(assert (=> start!104244 (array_inv!29425 a!3892)))

(assert (=> start!104244 true))

(declare-fun b!1245228 () Bool)

(assert (=> b!1245228 (= e!706081 false)))

(declare-fun lt!562837 () Bool)

(declare-datatypes ((List!27630 0))(
  ( (Nil!27627) (Cons!27626 (h!28835 (_ BitVec 64)) (t!41106 List!27630)) )
))
(declare-fun arrayNoDuplicates!0 (array!80138 (_ BitVec 32) List!27630) Bool)

(assert (=> b!1245228 (= lt!562837 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27627))))

(assert (= (and start!104244 res!830836) b!1245228))

(declare-fun m!1147347 () Bool)

(assert (=> start!104244 m!1147347))

(declare-fun m!1147349 () Bool)

(assert (=> b!1245228 m!1147349))

(push 1)

(assert (not start!104244))

(assert (not b!1245228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

