; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85708 () Bool)

(assert start!85708)

(declare-fun b!994314 () Bool)

(declare-fun res!664977 () Bool)

(declare-fun e!561190 () Bool)

(assert (=> b!994314 (=> (not res!664977) (not e!561190))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994314 (= res!664977 (validKeyInArray!0 k!2224))))

(declare-fun res!664976 () Bool)

(assert (=> start!85708 (=> (not res!664976) (not e!561190))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85708 (= res!664976 (validMask!0 mask!3464))))

(assert (=> start!85708 e!561190))

(declare-datatypes ((array!62876 0))(
  ( (array!62877 (arr!30273 (Array (_ BitVec 32) (_ BitVec 64))) (size!30776 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62876)

(declare-fun array_inv!23263 (array!62876) Bool)

(assert (=> start!85708 (array_inv!23263 a!3219)))

(assert (=> start!85708 true))

(declare-fun b!994315 () Bool)

(assert (=> b!994315 (= e!561190 (and (bvslt #b00000000000000000000000000000000 (size!30776 a!3219)) (bvsge (size!30776 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!994313 () Bool)

(declare-fun res!664978 () Bool)

(assert (=> b!994313 (=> (not res!664978) (not e!561190))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994313 (= res!664978 (validKeyInArray!0 (select (arr!30273 a!3219) j!170)))))

(declare-fun b!994312 () Bool)

(declare-fun res!664975 () Bool)

(assert (=> b!994312 (=> (not res!664975) (not e!561190))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994312 (= res!664975 (and (= (size!30776 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30776 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30776 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85708 res!664976) b!994312))

(assert (= (and b!994312 res!664975) b!994313))

(assert (= (and b!994313 res!664978) b!994314))

(assert (= (and b!994314 res!664977) b!994315))

(declare-fun m!922021 () Bool)

(assert (=> b!994314 m!922021))

(declare-fun m!922023 () Bool)

(assert (=> start!85708 m!922023))

(declare-fun m!922025 () Bool)

(assert (=> start!85708 m!922025))

(declare-fun m!922027 () Bool)

(assert (=> b!994313 m!922027))

(assert (=> b!994313 m!922027))

(declare-fun m!922029 () Bool)

(assert (=> b!994313 m!922029))

(push 1)

(assert (not b!994314))

(assert (not b!994313))

(assert (not start!85708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

