; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104240 () Bool)

(assert start!104240)

(declare-fun res!830830 () Bool)

(declare-fun e!706069 () Bool)

(assert (=> start!104240 (=> (not res!830830) (not e!706069))))

(declare-datatypes ((array!80134 0))(
  ( (array!80135 (arr!38647 (Array (_ BitVec 32) (_ BitVec 64))) (size!39184 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80134)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104240 (= res!830830 (and (bvslt (size!39184 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39184 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39184 a!3892))))))

(assert (=> start!104240 e!706069))

(declare-fun array_inv!29423 (array!80134) Bool)

(assert (=> start!104240 (array_inv!29423 a!3892)))

(assert (=> start!104240 true))

(declare-fun b!1245222 () Bool)

(assert (=> b!1245222 (= e!706069 false)))

(declare-fun lt!562831 () Bool)

(declare-datatypes ((List!27628 0))(
  ( (Nil!27625) (Cons!27624 (h!28833 (_ BitVec 64)) (t!41104 List!27628)) )
))
(declare-fun arrayNoDuplicates!0 (array!80134 (_ BitVec 32) List!27628) Bool)

(assert (=> b!1245222 (= lt!562831 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27625))))

(assert (= (and start!104240 res!830830) b!1245222))

(declare-fun m!1147339 () Bool)

(assert (=> start!104240 m!1147339))

(declare-fun m!1147341 () Bool)

(assert (=> b!1245222 m!1147341))

(check-sat (not start!104240) (not b!1245222))
