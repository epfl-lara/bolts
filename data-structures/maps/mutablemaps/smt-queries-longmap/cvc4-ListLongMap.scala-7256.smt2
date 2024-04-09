; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92668 () Bool)

(assert start!92668)

(declare-fun res!702249 () Bool)

(declare-fun e!598045 () Bool)

(assert (=> start!92668 (=> (not res!702249) (not e!598045))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66390 0))(
  ( (array!66391 (arr!31929 (Array (_ BitVec 32) (_ BitVec 64))) (size!32466 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66390)

(assert (=> start!92668 (= res!702249 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32466 a!3488)) (bvslt (size!32466 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92668 e!598045))

(assert (=> start!92668 true))

(declare-fun array_inv!24551 (array!66390) Bool)

(assert (=> start!92668 (array_inv!24551 a!3488)))

(declare-fun b!1053050 () Bool)

(assert (=> b!1053050 (= e!598045 false)))

(declare-fun lt!465031 () Bool)

(declare-datatypes ((List!22372 0))(
  ( (Nil!22369) (Cons!22368 (h!23577 (_ BitVec 64)) (t!31686 List!22372)) )
))
(declare-fun arrayNoDuplicates!0 (array!66390 (_ BitVec 32) List!22372) Bool)

(assert (=> b!1053050 (= lt!465031 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22369))))

(assert (= (and start!92668 res!702249) b!1053050))

(declare-fun m!973559 () Bool)

(assert (=> start!92668 m!973559))

(declare-fun m!973561 () Bool)

(assert (=> b!1053050 m!973561))

(push 1)

(assert (not b!1053050))

(assert (not start!92668))

(check-sat)

(pop 1)

(push 1)

