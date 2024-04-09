; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31960 () Bool)

(assert start!31960)

(declare-fun res!173689 () Bool)

(declare-fun e!198246 () Bool)

(assert (=> start!31960 (=> (not res!173689) (not e!198246))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31960 (= res!173689 (validMask!0 mask!3777))))

(assert (=> start!31960 e!198246))

(assert (=> start!31960 true))

(declare-datatypes ((array!16278 0))(
  ( (array!16279 (arr!7701 (Array (_ BitVec 32) (_ BitVec 64))) (size!8053 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16278)

(declare-fun array_inv!5655 (array!16278) Bool)

(assert (=> start!31960 (array_inv!5655 a!3305)))

(declare-fun b!319147 () Bool)

(declare-fun res!173691 () Bool)

(assert (=> b!319147 (=> (not res!173691) (not e!198246))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!319147 (= res!173691 (and (= (size!8053 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8053 a!3305))))))

(declare-fun b!319148 () Bool)

(declare-fun res!173690 () Bool)

(assert (=> b!319148 (=> (not res!173690) (not e!198246))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!319148 (= res!173690 (validKeyInArray!0 k!2497))))

(declare-fun b!319149 () Bool)

(assert (=> b!319149 (= e!198246 (and (bvslt #b00000000000000000000000000000000 (size!8053 a!3305)) (bvsge (size!8053 a!3305) #b01111111111111111111111111111111)))))

(assert (= (and start!31960 res!173689) b!319147))

(assert (= (and b!319147 res!173691) b!319148))

(assert (= (and b!319148 res!173690) b!319149))

(declare-fun m!327817 () Bool)

(assert (=> start!31960 m!327817))

(declare-fun m!327819 () Bool)

(assert (=> start!31960 m!327819))

(declare-fun m!327821 () Bool)

(assert (=> b!319148 m!327821))

(push 1)

(assert (not b!319148))

(assert (not start!31960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69185 () Bool)

(assert (=> d!69185 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!319148 d!69185))

