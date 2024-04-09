; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135500 () Bool)

(assert start!135500)

(declare-fun res!1075468 () Bool)

(declare-fun e!877830 () Bool)

(assert (=> start!135500 (=> (not res!1075468) (not e!877830))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135500 (= res!1075468 (validMask!0 mask!877))))

(assert (=> start!135500 e!877830))

(assert (=> start!135500 true))

(declare-datatypes ((array!105171 0))(
  ( (array!105172 (arr!50732 (Array (_ BitVec 32) (_ BitVec 64))) (size!51283 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105171)

(declare-fun array_inv!39377 (array!105171) Bool)

(assert (=> start!135500 (array_inv!39377 _keys!591)))

(declare-fun b!1574037 () Bool)

(declare-fun res!1075467 () Bool)

(assert (=> b!1574037 (=> (not res!1075467) (not e!877830))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574037 (= res!1075467 (and (= (size!51283 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51283 _keys!591)) (bvslt i!537 (size!51283 _keys!591))))))

(declare-fun b!1574038 () Bool)

(declare-fun res!1075469 () Bool)

(assert (=> b!1574038 (=> (not res!1075469) (not e!877830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574038 (= res!1075469 (not (validKeyInArray!0 (select (arr!50732 _keys!591) i!537))))))

(declare-fun b!1574039 () Bool)

(assert (=> b!1574039 (= e!877830 (bvslt (bvadd #b00000000000000000000000000000001 i!537) #b00000000000000000000000000000000))))

(assert (= (and start!135500 res!1075468) b!1574037))

(assert (= (and b!1574037 res!1075467) b!1574038))

(assert (= (and b!1574038 res!1075469) b!1574039))

(declare-fun m!1447347 () Bool)

(assert (=> start!135500 m!1447347))

(declare-fun m!1447349 () Bool)

(assert (=> start!135500 m!1447349))

(declare-fun m!1447351 () Bool)

(assert (=> b!1574038 m!1447351))

(assert (=> b!1574038 m!1447351))

(declare-fun m!1447353 () Bool)

(assert (=> b!1574038 m!1447353))

(check-sat (not start!135500) (not b!1574038))
(check-sat)
