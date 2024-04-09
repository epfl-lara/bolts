; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92232 () Bool)

(assert start!92232)

(declare-fun res!697383 () Bool)

(declare-fun e!594479 () Bool)

(assert (=> start!92232 (=> (not res!697383) (not e!594479))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66008 0))(
  ( (array!66009 (arr!31741 (Array (_ BitVec 32) (_ BitVec 64))) (size!32278 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66008)

(assert (=> start!92232 (= res!697383 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32278 a!3488)) (bvslt (size!32278 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92232 e!594479))

(assert (=> start!92232 true))

(declare-fun array_inv!24363 (array!66008) Bool)

(assert (=> start!92232 (array_inv!24363 a!3488)))

(declare-fun b!1048111 () Bool)

(declare-fun res!697382 () Bool)

(assert (=> b!1048111 (=> (not res!697382) (not e!594479))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048111 (= res!697382 (arrayContainsKey!0 (array!66009 (store (arr!31741 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32278 a!3488)) k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048112 () Bool)

(declare-fun res!697386 () Bool)

(assert (=> b!1048112 (=> (not res!697386) (not e!594479))))

(assert (=> b!1048112 (= res!697386 (= (select (arr!31741 a!3488) i!1381) k!2747))))

(declare-fun b!1048113 () Bool)

(assert (=> b!1048113 (= e!594479 (bvsge #b00000000000000000000000000000000 (size!32278 a!3488)))))

(declare-fun b!1048114 () Bool)

(declare-fun res!697385 () Bool)

(assert (=> b!1048114 (=> (not res!697385) (not e!594479))))

(declare-datatypes ((List!22184 0))(
  ( (Nil!22181) (Cons!22180 (h!23389 (_ BitVec 64)) (t!31498 List!22184)) )
))
(declare-fun arrayNoDuplicates!0 (array!66008 (_ BitVec 32) List!22184) Bool)

(assert (=> b!1048114 (= res!697385 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22181))))

(declare-fun b!1048115 () Bool)

(declare-fun res!697384 () Bool)

(assert (=> b!1048115 (=> (not res!697384) (not e!594479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048115 (= res!697384 (validKeyInArray!0 k!2747))))

(assert (= (and start!92232 res!697383) b!1048114))

(assert (= (and b!1048114 res!697385) b!1048115))

(assert (= (and b!1048115 res!697384) b!1048112))

(assert (= (and b!1048112 res!697386) b!1048111))

(assert (= (and b!1048111 res!697382) b!1048113))

(declare-fun m!969279 () Bool)

(assert (=> b!1048115 m!969279))

(declare-fun m!969281 () Bool)

(assert (=> b!1048114 m!969281))

(declare-fun m!969283 () Bool)

(assert (=> start!92232 m!969283))

(declare-fun m!969285 () Bool)

(assert (=> b!1048112 m!969285))

(declare-fun m!969287 () Bool)

(assert (=> b!1048111 m!969287))

(declare-fun m!969289 () Bool)

(assert (=> b!1048111 m!969289))

(push 1)

