; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85704 () Bool)

(assert start!85704)

(declare-fun b!994289 () Bool)

(declare-fun res!664954 () Bool)

(declare-fun e!561179 () Bool)

(assert (=> b!994289 (=> (not res!664954) (not e!561179))))

(declare-datatypes ((array!62872 0))(
  ( (array!62873 (arr!30271 (Array (_ BitVec 32) (_ BitVec 64))) (size!30774 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62872)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994289 (= res!664954 (validKeyInArray!0 (select (arr!30271 a!3219) j!170)))))

(declare-fun b!994288 () Bool)

(declare-fun res!664953 () Bool)

(assert (=> b!994288 (=> (not res!664953) (not e!561179))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994288 (= res!664953 (and (= (size!30774 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30774 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30774 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!664952 () Bool)

(assert (=> start!85704 (=> (not res!664952) (not e!561179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85704 (= res!664952 (validMask!0 mask!3464))))

(assert (=> start!85704 e!561179))

(declare-fun array_inv!23261 (array!62872) Bool)

(assert (=> start!85704 (array_inv!23261 a!3219)))

(assert (=> start!85704 true))

(declare-fun b!994291 () Bool)

(assert (=> b!994291 (= e!561179 (and (bvslt #b00000000000000000000000000000000 (size!30774 a!3219)) (bvsge (size!30774 a!3219) #b01111111111111111111111111111111)))))

(declare-fun b!994290 () Bool)

(declare-fun res!664951 () Bool)

(assert (=> b!994290 (=> (not res!664951) (not e!561179))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!994290 (= res!664951 (validKeyInArray!0 k!2224))))

(assert (= (and start!85704 res!664952) b!994288))

(assert (= (and b!994288 res!664953) b!994289))

(assert (= (and b!994289 res!664954) b!994290))

(assert (= (and b!994290 res!664951) b!994291))

(declare-fun m!922001 () Bool)

(assert (=> b!994289 m!922001))

(assert (=> b!994289 m!922001))

(declare-fun m!922003 () Bool)

(assert (=> b!994289 m!922003))

(declare-fun m!922005 () Bool)

(assert (=> start!85704 m!922005))

(declare-fun m!922007 () Bool)

(assert (=> start!85704 m!922007))

(declare-fun m!922009 () Bool)

(assert (=> b!994290 m!922009))

(push 1)

(assert (not start!85704))

(assert (not b!994289))

(assert (not b!994290))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

