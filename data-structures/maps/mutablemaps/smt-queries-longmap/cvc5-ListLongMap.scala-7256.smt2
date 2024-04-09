; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92664 () Bool)

(assert start!92664)

(declare-fun res!702243 () Bool)

(declare-fun e!598033 () Bool)

(assert (=> start!92664 (=> (not res!702243) (not e!598033))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66386 0))(
  ( (array!66387 (arr!31927 (Array (_ BitVec 32) (_ BitVec 64))) (size!32464 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66386)

(assert (=> start!92664 (= res!702243 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32464 a!3488)) (bvslt (size!32464 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92664 e!598033))

(assert (=> start!92664 true))

(declare-fun array_inv!24549 (array!66386) Bool)

(assert (=> start!92664 (array_inv!24549 a!3488)))

(declare-fun b!1053044 () Bool)

(assert (=> b!1053044 (= e!598033 false)))

(declare-fun lt!465025 () Bool)

(declare-datatypes ((List!22370 0))(
  ( (Nil!22367) (Cons!22366 (h!23575 (_ BitVec 64)) (t!31684 List!22370)) )
))
(declare-fun arrayNoDuplicates!0 (array!66386 (_ BitVec 32) List!22370) Bool)

(assert (=> b!1053044 (= lt!465025 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22367))))

(assert (= (and start!92664 res!702243) b!1053044))

(declare-fun m!973551 () Bool)

(assert (=> start!92664 m!973551))

(declare-fun m!973553 () Bool)

(assert (=> b!1053044 m!973553))

(push 1)

(assert (not start!92664))

(assert (not b!1053044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

