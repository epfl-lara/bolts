; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36144 () Bool)

(assert start!36144)

(declare-fun b!362222 () Bool)

(declare-fun res!201665 () Bool)

(declare-fun e!221858 () Bool)

(assert (=> b!362222 (=> (not res!201665) (not e!221858))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362222 (= res!201665 (validKeyInArray!0 k!2980))))

(declare-fun res!201666 () Bool)

(assert (=> start!36144 (=> (not res!201666) (not e!221858))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20422 0))(
  ( (array!20423 (arr!9690 (Array (_ BitVec 32) (_ BitVec 64))) (size!10042 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20422)

(assert (=> start!36144 (= res!201666 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10042 a!4337))))))

(assert (=> start!36144 e!221858))

(assert (=> start!36144 true))

(declare-fun array_inv!7128 (array!20422) Bool)

(assert (=> start!36144 (array_inv!7128 a!4337)))

(declare-fun b!362224 () Bool)

(assert (=> b!362224 (= e!221858 false)))

(declare-fun lt!166681 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20422 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362224 (= lt!166681 (arrayCountValidKeys!0 (array!20423 (store (arr!9690 a!4337) i!1478 k!2980) (size!10042 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166682 () (_ BitVec 32))

(assert (=> b!362224 (= lt!166682 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362223 () Bool)

(declare-fun res!201667 () Bool)

(assert (=> b!362223 (=> (not res!201667) (not e!221858))))

(assert (=> b!362223 (= res!201667 (and (bvslt (size!10042 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10042 a!4337))))))

(declare-fun b!362221 () Bool)

(declare-fun res!201664 () Bool)

(assert (=> b!362221 (=> (not res!201664) (not e!221858))))

(assert (=> b!362221 (= res!201664 (not (validKeyInArray!0 (select (arr!9690 a!4337) i!1478))))))

(assert (= (and start!36144 res!201666) b!362221))

(assert (= (and b!362221 res!201664) b!362222))

(assert (= (and b!362222 res!201665) b!362223))

(assert (= (and b!362223 res!201667) b!362224))

(declare-fun m!358799 () Bool)

(assert (=> b!362222 m!358799))

(declare-fun m!358801 () Bool)

(assert (=> start!36144 m!358801))

(declare-fun m!358803 () Bool)

(assert (=> b!362224 m!358803))

(declare-fun m!358805 () Bool)

(assert (=> b!362224 m!358805))

(declare-fun m!358807 () Bool)

(assert (=> b!362224 m!358807))

(declare-fun m!358809 () Bool)

(assert (=> b!362221 m!358809))

(assert (=> b!362221 m!358809))

(declare-fun m!358811 () Bool)

(assert (=> b!362221 m!358811))

(push 1)

(assert (not b!362224))

(assert (not b!362222))

(assert (not b!362221))

(assert (not start!36144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

