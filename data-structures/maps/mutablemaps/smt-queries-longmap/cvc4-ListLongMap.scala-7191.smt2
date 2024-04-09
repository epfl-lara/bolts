; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92218 () Bool)

(assert start!92218)

(declare-fun res!697335 () Bool)

(declare-fun e!594436 () Bool)

(assert (=> start!92218 (=> (not res!697335) (not e!594436))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65994 0))(
  ( (array!65995 (arr!31734 (Array (_ BitVec 32) (_ BitVec 64))) (size!32271 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65994)

(assert (=> start!92218 (= res!697335 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32271 a!3488)) (bvslt (size!32271 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92218 e!594436))

(assert (=> start!92218 true))

(declare-fun array_inv!24356 (array!65994) Bool)

(assert (=> start!92218 (array_inv!24356 a!3488)))

(declare-fun b!1048064 () Bool)

(assert (=> b!1048064 (= e!594436 false)))

(declare-fun lt!463096 () Bool)

(declare-datatypes ((List!22177 0))(
  ( (Nil!22174) (Cons!22173 (h!23382 (_ BitVec 64)) (t!31491 List!22177)) )
))
(declare-fun arrayNoDuplicates!0 (array!65994 (_ BitVec 32) List!22177) Bool)

(assert (=> b!1048064 (= lt!463096 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22174))))

(assert (= (and start!92218 res!697335) b!1048064))

(declare-fun m!969239 () Bool)

(assert (=> start!92218 m!969239))

(declare-fun m!969241 () Bool)

(assert (=> b!1048064 m!969241))

(push 1)

(assert (not b!1048064))

(assert (not start!92218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

