; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36218 () Bool)

(assert start!36218)

(declare-fun res!202187 () Bool)

(declare-fun e!222160 () Bool)

(assert (=> start!36218 (=> (not res!202187) (not e!222160))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20496 0))(
  ( (array!20497 (arr!9727 (Array (_ BitVec 32) (_ BitVec 64))) (size!10079 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20496)

(assert (=> start!36218 (= res!202187 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10079 a!4337))))))

(assert (=> start!36218 e!222160))

(assert (=> start!36218 true))

(declare-fun array_inv!7165 (array!20496) Bool)

(assert (=> start!36218 (array_inv!7165 a!4337)))

(declare-fun b!362744 () Bool)

(declare-fun res!202189 () Bool)

(assert (=> b!362744 (=> (not res!202189) (not e!222160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362744 (= res!202189 (not (validKeyInArray!0 (select (arr!9727 a!4337) i!1478))))))

(declare-fun b!362745 () Bool)

(declare-fun res!202188 () Bool)

(assert (=> b!362745 (=> (not res!202188) (not e!222160))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362745 (= res!202188 (validKeyInArray!0 k!2980))))

(declare-fun b!362746 () Bool)

(assert (=> b!362746 (= e!222160 (and (bvslt (size!10079 a!4337) #b01111111111111111111111111111111) (bvsgt i!1478 (size!10079 a!4337))))))

(assert (= (and start!36218 res!202187) b!362744))

(assert (= (and b!362744 res!202189) b!362745))

(assert (= (and b!362745 res!202188) b!362746))

(declare-fun m!359659 () Bool)

(assert (=> start!36218 m!359659))

(declare-fun m!359661 () Bool)

(assert (=> b!362744 m!359661))

(assert (=> b!362744 m!359661))

(declare-fun m!359663 () Bool)

(assert (=> b!362744 m!359663))

(declare-fun m!359665 () Bool)

(assert (=> b!362745 m!359665))

(push 1)

(assert (not start!36218))

(assert (not b!362745))

(assert (not b!362744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

