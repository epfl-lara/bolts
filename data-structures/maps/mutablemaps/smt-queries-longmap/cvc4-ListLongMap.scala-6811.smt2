; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85726 () Bool)

(assert start!85726)

(declare-fun b!994357 () Bool)

(declare-fun res!665022 () Bool)

(declare-fun e!561208 () Bool)

(assert (=> b!994357 (=> (not res!665022) (not e!561208))))

(declare-datatypes ((array!62883 0))(
  ( (array!62884 (arr!30276 (Array (_ BitVec 32) (_ BitVec 64))) (size!30779 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62883)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994357 (= res!665022 (and (= (size!30779 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30779 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30779 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994358 () Bool)

(declare-fun res!665020 () Bool)

(assert (=> b!994358 (=> (not res!665020) (not e!561208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994358 (= res!665020 (validKeyInArray!0 (select (arr!30276 a!3219) j!170)))))

(declare-fun b!994359 () Bool)

(declare-fun res!665021 () Bool)

(assert (=> b!994359 (=> (not res!665021) (not e!561208))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!994359 (= res!665021 (validKeyInArray!0 k!2224))))

(declare-fun b!994360 () Bool)

(assert (=> b!994360 (= e!561208 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!994356 () Bool)

(declare-fun res!665019 () Bool)

(assert (=> b!994356 (=> (not res!665019) (not e!561208))))

(declare-fun arrayContainsKey!0 (array!62883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994356 (= res!665019 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!665023 () Bool)

(assert (=> start!85726 (=> (not res!665023) (not e!561208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85726 (= res!665023 (validMask!0 mask!3464))))

(assert (=> start!85726 e!561208))

(declare-fun array_inv!23266 (array!62883) Bool)

(assert (=> start!85726 (array_inv!23266 a!3219)))

(assert (=> start!85726 true))

(assert (= (and start!85726 res!665023) b!994357))

(assert (= (and b!994357 res!665022) b!994358))

(assert (= (and b!994358 res!665020) b!994359))

(assert (= (and b!994359 res!665021) b!994356))

(assert (= (and b!994356 res!665019) b!994360))

(declare-fun m!922055 () Bool)

(assert (=> b!994358 m!922055))

(assert (=> b!994358 m!922055))

(declare-fun m!922057 () Bool)

(assert (=> b!994358 m!922057))

(declare-fun m!922059 () Bool)

(assert (=> b!994359 m!922059))

(declare-fun m!922061 () Bool)

(assert (=> b!994356 m!922061))

(declare-fun m!922063 () Bool)

(assert (=> start!85726 m!922063))

(declare-fun m!922065 () Bool)

(assert (=> start!85726 m!922065))

(push 1)

(assert (not b!994359))

(assert (not b!994358))

(assert (not b!994356))

(assert (not start!85726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

