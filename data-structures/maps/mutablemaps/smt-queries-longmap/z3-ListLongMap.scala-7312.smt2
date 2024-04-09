; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93512 () Bool)

(assert start!93512)

(declare-fun res!707335 () Bool)

(declare-fun e!602369 () Bool)

(assert (=> start!93512 (=> (not res!707335) (not e!602369))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66763 0))(
  ( (array!66764 (arr!32096 (Array (_ BitVec 32) (_ BitVec 64))) (size!32633 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66763)

(assert (=> start!93512 (= res!707335 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32633 a!3488)) (bvslt (size!32633 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93512 e!602369))

(assert (=> start!93512 true))

(declare-fun array_inv!24718 (array!66763) Bool)

(assert (=> start!93512 (array_inv!24718 a!3488)))

(declare-fun b!1058652 () Bool)

(assert (=> b!1058652 (= e!602369 false)))

(declare-fun lt!467014 () Bool)

(declare-datatypes ((List!22539 0))(
  ( (Nil!22536) (Cons!22535 (h!23744 (_ BitVec 64)) (t!31853 List!22539)) )
))
(declare-fun arrayNoDuplicates!0 (array!66763 (_ BitVec 32) List!22539) Bool)

(assert (=> b!1058652 (= lt!467014 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22536))))

(assert (= (and start!93512 res!707335) b!1058652))

(declare-fun m!978451 () Bool)

(assert (=> start!93512 m!978451))

(declare-fun m!978453 () Bool)

(assert (=> b!1058652 m!978453))

(check-sat (not start!93512) (not b!1058652))
