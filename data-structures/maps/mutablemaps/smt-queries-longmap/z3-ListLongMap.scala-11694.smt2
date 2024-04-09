; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136818 () Bool)

(assert start!136818)

(declare-fun res!1078600 () Bool)

(declare-fun e!880475 () Bool)

(assert (=> start!136818 (=> (not res!1078600) (not e!880475))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105747 0))(
  ( (array!105748 (arr!50978 (Array (_ BitVec 32) (_ BitVec 64))) (size!51529 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105747)

(assert (=> start!136818 (= res!1078600 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51529 a!3559)) (bvslt (size!51529 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136818 e!880475))

(assert (=> start!136818 true))

(declare-fun array_inv!39623 (array!105747) Bool)

(assert (=> start!136818 (array_inv!39623 a!3559)))

(declare-fun b!1578523 () Bool)

(declare-fun res!1078601 () Bool)

(assert (=> b!1578523 (=> (not res!1078601) (not e!880475))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578523 (= res!1078601 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(declare-fun b!1578524 () Bool)

(assert (=> b!1578524 (= e!880475 (and (bvsle from!2937 #b00000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!51529 a!3559))))))

(assert (= (and start!136818 res!1078600) b!1578523))

(assert (= (and b!1578523 res!1078601) b!1578524))

(declare-fun m!1450629 () Bool)

(assert (=> start!136818 m!1450629))

(declare-fun m!1450631 () Bool)

(assert (=> b!1578523 m!1450631))

(check-sat (not start!136818) (not b!1578523))
(check-sat)
