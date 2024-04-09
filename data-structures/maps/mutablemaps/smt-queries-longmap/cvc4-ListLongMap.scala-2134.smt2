; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36090 () Bool)

(assert start!36090)

(declare-fun res!201459 () Bool)

(declare-fun e!221725 () Bool)

(assert (=> start!36090 (=> (not res!201459) (not e!221725))))

(declare-fun i!1487 () (_ BitVec 32))

(declare-datatypes ((array!20383 0))(
  ( (array!20384 (arr!9672 (Array (_ BitVec 32) (_ BitVec 64))) (size!10024 (_ BitVec 32))) )
))
(declare-fun a!4392 () array!20383)

(assert (=> start!36090 (= res!201459 (and (bvsge i!1487 #b00000000000000000000000000000000) (bvslt i!1487 (size!10024 a!4392))))))

(assert (=> start!36090 e!221725))

(assert (=> start!36090 true))

(declare-fun array_inv!7110 (array!20383) Bool)

(assert (=> start!36090 (array_inv!7110 a!4392)))

(declare-fun b!361968 () Bool)

(declare-fun res!201460 () Bool)

(assert (=> b!361968 (=> (not res!201460) (not e!221725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361968 (= res!201460 (validKeyInArray!0 (select (arr!9672 a!4392) i!1487)))))

(declare-fun b!361969 () Bool)

(assert (=> b!361969 (= e!221725 (and (bvslt (size!10024 a!4392) #b01111111111111111111111111111111) (bvsgt i!1487 (bvadd #b00000000000000000000000000000001 i!1487))))))

(assert (= (and start!36090 res!201459) b!361968))

(assert (= (and b!361968 res!201460) b!361969))

(declare-fun m!358549 () Bool)

(assert (=> start!36090 m!358549))

(declare-fun m!358551 () Bool)

(assert (=> b!361968 m!358551))

(assert (=> b!361968 m!358551))

(declare-fun m!358553 () Bool)

(assert (=> b!361968 m!358553))

(push 1)

(assert (not start!36090))

(assert (not b!361968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

