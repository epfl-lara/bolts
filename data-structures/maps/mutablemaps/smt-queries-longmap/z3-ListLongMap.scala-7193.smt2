; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92228 () Bool)

(assert start!92228)

(declare-fun res!697368 () Bool)

(declare-fun e!594466 () Bool)

(assert (=> start!92228 (=> (not res!697368) (not e!594466))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66004 0))(
  ( (array!66005 (arr!31739 (Array (_ BitVec 32) (_ BitVec 64))) (size!32276 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66004)

(assert (=> start!92228 (= res!697368 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32276 a!3488)) (bvslt (size!32276 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92228 e!594466))

(assert (=> start!92228 true))

(declare-fun array_inv!24361 (array!66004) Bool)

(assert (=> start!92228 (array_inv!24361 a!3488)))

(declare-fun b!1048097 () Bool)

(assert (=> b!1048097 (= e!594466 false)))

(declare-fun lt!463102 () Bool)

(declare-datatypes ((List!22182 0))(
  ( (Nil!22179) (Cons!22178 (h!23387 (_ BitVec 64)) (t!31496 List!22182)) )
))
(declare-fun arrayNoDuplicates!0 (array!66004 (_ BitVec 32) List!22182) Bool)

(assert (=> b!1048097 (= lt!463102 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22179))))

(assert (= (and start!92228 res!697368) b!1048097))

(declare-fun m!969271 () Bool)

(assert (=> start!92228 m!969271))

(declare-fun m!969273 () Bool)

(assert (=> b!1048097 m!969273))

(check-sat (not b!1048097) (not start!92228))
