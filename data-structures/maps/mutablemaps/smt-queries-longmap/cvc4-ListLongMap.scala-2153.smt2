; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36222 () Bool)

(assert start!36222)

(declare-fun res!202207 () Bool)

(declare-fun e!222172 () Bool)

(assert (=> start!36222 (=> (not res!202207) (not e!222172))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20500 0))(
  ( (array!20501 (arr!9729 (Array (_ BitVec 32) (_ BitVec 64))) (size!10081 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20500)

(assert (=> start!36222 (= res!202207 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10081 a!4337))))))

(assert (=> start!36222 e!222172))

(assert (=> start!36222 true))

(declare-fun array_inv!7167 (array!20500) Bool)

(assert (=> start!36222 (array_inv!7167 a!4337)))

(declare-fun b!362762 () Bool)

(declare-fun res!202205 () Bool)

(assert (=> b!362762 (=> (not res!202205) (not e!222172))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362762 (= res!202205 (not (validKeyInArray!0 (select (arr!9729 a!4337) i!1478))))))

(declare-fun b!362763 () Bool)

(declare-fun res!202206 () Bool)

(assert (=> b!362763 (=> (not res!202206) (not e!222172))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362763 (= res!202206 (validKeyInArray!0 k!2980))))

(declare-fun b!362764 () Bool)

(assert (=> b!362764 (= e!222172 (and (bvslt (size!10081 a!4337) #b01111111111111111111111111111111) (bvsgt i!1478 (size!10081 a!4337))))))

(assert (= (and start!36222 res!202207) b!362762))

(assert (= (and b!362762 res!202205) b!362763))

(assert (= (and b!362763 res!202206) b!362764))

(declare-fun m!359675 () Bool)

(assert (=> start!36222 m!359675))

(declare-fun m!359677 () Bool)

(assert (=> b!362762 m!359677))

(assert (=> b!362762 m!359677))

(declare-fun m!359679 () Bool)

(assert (=> b!362762 m!359679))

(declare-fun m!359681 () Bool)

(assert (=> b!362763 m!359681))

(push 1)

(assert (not b!362762))

(assert (not start!36222))

(assert (not b!362763))

(check-sat)

(pop 1)

(push 1)

(check-sat)

