; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104252 () Bool)

(assert start!104252)

(declare-fun res!830848 () Bool)

(declare-fun e!706105 () Bool)

(assert (=> start!104252 (=> (not res!830848) (not e!706105))))

(declare-datatypes ((array!80146 0))(
  ( (array!80147 (arr!38653 (Array (_ BitVec 32) (_ BitVec 64))) (size!39190 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80146)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104252 (= res!830848 (and (bvslt (size!39190 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39190 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39190 a!3892))))))

(assert (=> start!104252 e!706105))

(declare-fun array_inv!29429 (array!80146) Bool)

(assert (=> start!104252 (array_inv!29429 a!3892)))

(assert (=> start!104252 true))

(declare-fun b!1245240 () Bool)

(assert (=> b!1245240 (= e!706105 false)))

(declare-fun lt!562849 () Bool)

(declare-datatypes ((List!27634 0))(
  ( (Nil!27631) (Cons!27630 (h!28839 (_ BitVec 64)) (t!41110 List!27634)) )
))
(declare-fun arrayNoDuplicates!0 (array!80146 (_ BitVec 32) List!27634) Bool)

(assert (=> b!1245240 (= lt!562849 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27631))))

(assert (= (and start!104252 res!830848) b!1245240))

(declare-fun m!1147363 () Bool)

(assert (=> start!104252 m!1147363))

(declare-fun m!1147365 () Bool)

(assert (=> b!1245240 m!1147365))

(check-sat (not b!1245240) (not start!104252))
