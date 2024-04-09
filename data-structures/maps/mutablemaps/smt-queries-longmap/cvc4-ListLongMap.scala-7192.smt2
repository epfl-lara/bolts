; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92224 () Bool)

(assert start!92224)

(declare-fun res!697360 () Bool)

(declare-fun e!594455 () Bool)

(assert (=> start!92224 (=> (not res!697360) (not e!594455))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66000 0))(
  ( (array!66001 (arr!31737 (Array (_ BitVec 32) (_ BitVec 64))) (size!32274 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66000)

(assert (=> start!92224 (= res!697360 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32274 a!3488)) (bvslt (size!32274 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92224 e!594455))

(assert (=> start!92224 true))

(declare-fun array_inv!24359 (array!66000) Bool)

(assert (=> start!92224 (array_inv!24359 a!3488)))

(declare-fun b!1048089 () Bool)

(declare-fun res!697362 () Bool)

(assert (=> b!1048089 (=> (not res!697362) (not e!594455))))

(declare-datatypes ((List!22180 0))(
  ( (Nil!22177) (Cons!22176 (h!23385 (_ BitVec 64)) (t!31494 List!22180)) )
))
(declare-fun arrayNoDuplicates!0 (array!66000 (_ BitVec 32) List!22180) Bool)

(assert (=> b!1048089 (= res!697362 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22177))))

(declare-fun b!1048090 () Bool)

(declare-fun res!697361 () Bool)

(assert (=> b!1048090 (=> (not res!697361) (not e!594455))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048090 (= res!697361 (validKeyInArray!0 k!2747))))

(declare-fun b!1048091 () Bool)

(assert (=> b!1048091 (= e!594455 (and (= (select (arr!31737 a!3488) i!1381) k!2747) (bvsge #b00000000000000000000000000000000 (size!32274 a!3488))))))

(assert (= (and start!92224 res!697360) b!1048089))

(assert (= (and b!1048089 res!697362) b!1048090))

(assert (= (and b!1048090 res!697361) b!1048091))

(declare-fun m!969259 () Bool)

(assert (=> start!92224 m!969259))

(declare-fun m!969261 () Bool)

(assert (=> b!1048089 m!969261))

(declare-fun m!969263 () Bool)

(assert (=> b!1048090 m!969263))

(declare-fun m!969265 () Bool)

(assert (=> b!1048091 m!969265))

(push 1)

(assert (not b!1048089))

(assert (not start!92224))

(assert (not b!1048090))

(check-sat)

