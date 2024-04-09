; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85786 () Bool)

(assert start!85786)

(declare-fun b!994849 () Bool)

(declare-fun res!665516 () Bool)

(declare-fun e!561407 () Bool)

(assert (=> b!994849 (=> (not res!665516) (not e!561407))))

(declare-datatypes ((array!62943 0))(
  ( (array!62944 (arr!30306 (Array (_ BitVec 32) (_ BitVec 64))) (size!30809 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62943)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994849 (= res!665516 (validKeyInArray!0 (select (arr!30306 a!3219) j!170)))))

(declare-fun b!994850 () Bool)

(declare-fun e!561406 () Bool)

(assert (=> b!994850 (= e!561407 e!561406)))

(declare-fun res!665515 () Bool)

(assert (=> b!994850 (=> (not res!665515) (not e!561406))))

(declare-datatypes ((SeekEntryResult!9238 0))(
  ( (MissingZero!9238 (index!39322 (_ BitVec 32))) (Found!9238 (index!39323 (_ BitVec 32))) (Intermediate!9238 (undefined!10050 Bool) (index!39324 (_ BitVec 32)) (x!86792 (_ BitVec 32))) (Undefined!9238) (MissingVacant!9238 (index!39325 (_ BitVec 32))) )
))
(declare-fun lt!440745 () SeekEntryResult!9238)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994850 (= res!665515 (or (= lt!440745 (MissingVacant!9238 i!1194)) (= lt!440745 (MissingZero!9238 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62943 (_ BitVec 32)) SeekEntryResult!9238)

(assert (=> b!994850 (= lt!440745 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994851 () Bool)

(assert (=> b!994851 (= e!561406 (and (bvsle #b00000000000000000000000000000000 (size!30809 a!3219)) (bvsge (size!30809 a!3219) #b01111111111111111111111111111111)))))

(declare-fun res!665513 () Bool)

(assert (=> start!85786 (=> (not res!665513) (not e!561407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85786 (= res!665513 (validMask!0 mask!3464))))

(assert (=> start!85786 e!561407))

(declare-fun array_inv!23296 (array!62943) Bool)

(assert (=> start!85786 (array_inv!23296 a!3219)))

(assert (=> start!85786 true))

(declare-fun b!994852 () Bool)

(declare-fun res!665518 () Bool)

(assert (=> b!994852 (=> (not res!665518) (not e!561407))))

(declare-fun arrayContainsKey!0 (array!62943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994852 (= res!665518 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994853 () Bool)

(declare-fun res!665512 () Bool)

(assert (=> b!994853 (=> (not res!665512) (not e!561407))))

(assert (=> b!994853 (= res!665512 (validKeyInArray!0 k!2224))))

(declare-fun b!994854 () Bool)

(declare-fun res!665514 () Bool)

(assert (=> b!994854 (=> (not res!665514) (not e!561406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62943 (_ BitVec 32)) Bool)

(assert (=> b!994854 (= res!665514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!994855 () Bool)

(declare-fun res!665517 () Bool)

(assert (=> b!994855 (=> (not res!665517) (not e!561407))))

(assert (=> b!994855 (= res!665517 (and (= (size!30809 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30809 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30809 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85786 res!665513) b!994855))

(assert (= (and b!994855 res!665517) b!994849))

(assert (= (and b!994849 res!665516) b!994853))

(assert (= (and b!994853 res!665512) b!994852))

(assert (= (and b!994852 res!665518) b!994850))

(assert (= (and b!994850 res!665515) b!994854))

(assert (= (and b!994854 res!665514) b!994851))

(declare-fun m!922483 () Bool)

(assert (=> b!994854 m!922483))

(declare-fun m!922485 () Bool)

(assert (=> b!994849 m!922485))

(assert (=> b!994849 m!922485))

(declare-fun m!922487 () Bool)

(assert (=> b!994849 m!922487))

(declare-fun m!922489 () Bool)

(assert (=> b!994853 m!922489))

(declare-fun m!922491 () Bool)

(assert (=> start!85786 m!922491))

(declare-fun m!922493 () Bool)

(assert (=> start!85786 m!922493))

(declare-fun m!922495 () Bool)

(assert (=> b!994850 m!922495))

(declare-fun m!922497 () Bool)

(assert (=> b!994852 m!922497))

(push 1)

(assert (not b!994849))

(assert (not b!994850))

(assert (not b!994853))

(assert (not start!85786))

(assert (not b!994852))

(assert (not b!994854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118703 () Bool)

(declare-fun res!665529 () Bool)

(declare-fun e!561418 () Bool)

(assert (=> d!118703 (=> res!665529 e!561418)))

(assert (=> d!118703 (= res!665529 (= (select (arr!30306 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!118703 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!561418)))

(declare-fun b!994866 () Bool)

(declare-fun e!561419 () Bool)

(assert (=> b!994866 (= e!561418 e!561419)))

(declare-fun res!665530 () Bool)

(assert (=> b!994866 (=> (not res!665530) (not e!561419))))

(assert (=> b!994866 (= res!665530 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30809 a!3219)))))

(declare-fun b!994867 () Bool)

(assert (=> b!994867 (= e!561419 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118703 (not res!665529)) b!994866))

(assert (= (and b!994866 res!665530) b!994867))

(declare-fun m!922503 () Bool)

(assert (=> d!118703 m!922503))

(declare-fun m!922505 () Bool)

(assert (=> b!994867 m!922505))

(assert (=> b!994852 d!118703))

(declare-fun d!118707 () Bool)

(assert (=> d!118707 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994853 d!118707))

(declare-fun d!118709 () Bool)

(assert (=> d!118709 (= (validKeyInArray!0 (select (arr!30306 a!3219) j!170)) (and (not (= (select (arr!30306 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30306 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994849 d!118709))

(declare-fun d!118711 () Bool)

(assert (=> d!118711 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85786 d!118711))

