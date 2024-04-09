; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93506 () Bool)

(assert start!93506)

(declare-fun res!707326 () Bool)

(declare-fun e!602351 () Bool)

(assert (=> start!93506 (=> (not res!707326) (not e!602351))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66757 0))(
  ( (array!66758 (arr!32093 (Array (_ BitVec 32) (_ BitVec 64))) (size!32630 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66757)

(assert (=> start!93506 (= res!707326 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32630 a!3488)) (bvslt (size!32630 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93506 e!602351))

(assert (=> start!93506 true))

(declare-fun array_inv!24715 (array!66757) Bool)

(assert (=> start!93506 (array_inv!24715 a!3488)))

(declare-fun b!1058643 () Bool)

(assert (=> b!1058643 (= e!602351 false)))

(declare-fun lt!467005 () Bool)

(declare-datatypes ((List!22536 0))(
  ( (Nil!22533) (Cons!22532 (h!23741 (_ BitVec 64)) (t!31850 List!22536)) )
))
(declare-fun arrayNoDuplicates!0 (array!66757 (_ BitVec 32) List!22536) Bool)

(assert (=> b!1058643 (= lt!467005 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22533))))

(assert (= (and start!93506 res!707326) b!1058643))

(declare-fun m!978439 () Bool)

(assert (=> start!93506 m!978439))

(declare-fun m!978441 () Bool)

(assert (=> b!1058643 m!978441))

(check-sat (not b!1058643) (not start!93506))
(check-sat)
