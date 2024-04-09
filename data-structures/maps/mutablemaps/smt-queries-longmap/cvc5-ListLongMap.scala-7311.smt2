; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93504 () Bool)

(assert start!93504)

(declare-fun res!707323 () Bool)

(declare-fun e!602345 () Bool)

(assert (=> start!93504 (=> (not res!707323) (not e!602345))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66755 0))(
  ( (array!66756 (arr!32092 (Array (_ BitVec 32) (_ BitVec 64))) (size!32629 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66755)

(assert (=> start!93504 (= res!707323 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32629 a!3488)) (bvslt (size!32629 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93504 e!602345))

(assert (=> start!93504 true))

(declare-fun array_inv!24714 (array!66755) Bool)

(assert (=> start!93504 (array_inv!24714 a!3488)))

(declare-fun b!1058640 () Bool)

(assert (=> b!1058640 (= e!602345 false)))

(declare-fun lt!467002 () Bool)

(declare-datatypes ((List!22535 0))(
  ( (Nil!22532) (Cons!22531 (h!23740 (_ BitVec 64)) (t!31849 List!22535)) )
))
(declare-fun arrayNoDuplicates!0 (array!66755 (_ BitVec 32) List!22535) Bool)

(assert (=> b!1058640 (= lt!467002 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22532))))

(assert (= (and start!93504 res!707323) b!1058640))

(declare-fun m!978435 () Bool)

(assert (=> start!93504 m!978435))

(declare-fun m!978437 () Bool)

(assert (=> b!1058640 m!978437))

(push 1)

(assert (not start!93504))

(assert (not b!1058640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

