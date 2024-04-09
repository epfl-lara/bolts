; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31956 () Bool)

(assert start!31956)

(declare-fun res!173673 () Bool)

(declare-fun e!198235 () Bool)

(assert (=> start!31956 (=> (not res!173673) (not e!198235))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31956 (= res!173673 (validMask!0 mask!3777))))

(assert (=> start!31956 e!198235))

(assert (=> start!31956 true))

(declare-datatypes ((array!16274 0))(
  ( (array!16275 (arr!7699 (Array (_ BitVec 32) (_ BitVec 64))) (size!8051 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16274)

(declare-fun array_inv!5653 (array!16274) Bool)

(assert (=> start!31956 (array_inv!5653 a!3305)))

(declare-fun b!319129 () Bool)

(declare-fun res!173671 () Bool)

(assert (=> b!319129 (=> (not res!173671) (not e!198235))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319129 (= res!173671 (and (= (size!8051 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8051 a!3305))))))

(declare-fun b!319130 () Bool)

(declare-fun res!173672 () Bool)

(assert (=> b!319130 (=> (not res!173672) (not e!198235))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319130 (= res!173672 (validKeyInArray!0 k!2497))))

(declare-fun b!319131 () Bool)

(assert (=> b!319131 (= e!198235 (and (bvslt #b00000000000000000000000000000000 (size!8051 a!3305)) (bvsge (size!8051 a!3305) #b01111111111111111111111111111111)))))

(assert (= (and start!31956 res!173673) b!319129))

(assert (= (and b!319129 res!173671) b!319130))

(assert (= (and b!319130 res!173672) b!319131))

(declare-fun m!327805 () Bool)

(assert (=> start!31956 m!327805))

(declare-fun m!327807 () Bool)

(assert (=> start!31956 m!327807))

(declare-fun m!327809 () Bool)

(assert (=> b!319130 m!327809))

(push 1)

(assert (not start!31956))

(assert (not b!319130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

