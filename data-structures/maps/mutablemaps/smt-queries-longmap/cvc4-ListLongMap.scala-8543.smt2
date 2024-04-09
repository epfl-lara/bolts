; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104254 () Bool)

(assert start!104254)

(declare-fun res!830851 () Bool)

(declare-fun e!706111 () Bool)

(assert (=> start!104254 (=> (not res!830851) (not e!706111))))

(declare-datatypes ((array!80148 0))(
  ( (array!80149 (arr!38654 (Array (_ BitVec 32) (_ BitVec 64))) (size!39191 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!80148)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!104254 (= res!830851 (and (bvslt (size!39191 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39191 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39191 a!3892))))))

(assert (=> start!104254 e!706111))

(declare-fun array_inv!29430 (array!80148) Bool)

(assert (=> start!104254 (array_inv!29430 a!3892)))

(assert (=> start!104254 true))

(declare-fun b!1245243 () Bool)

(assert (=> b!1245243 (= e!706111 false)))

(declare-fun lt!562852 () Bool)

(declare-datatypes ((List!27635 0))(
  ( (Nil!27632) (Cons!27631 (h!28840 (_ BitVec 64)) (t!41111 List!27635)) )
))
(declare-fun arrayNoDuplicates!0 (array!80148 (_ BitVec 32) List!27635) Bool)

(assert (=> b!1245243 (= lt!562852 (arrayNoDuplicates!0 a!3892 from!3270 Nil!27632))))

(assert (= (and start!104254 res!830851) b!1245243))

(declare-fun m!1147367 () Bool)

(assert (=> start!104254 m!1147367))

(declare-fun m!1147369 () Bool)

(assert (=> b!1245243 m!1147369))

(push 1)

(assert (not start!104254))

(assert (not b!1245243))

(check-sat)

