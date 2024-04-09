; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85706 () Bool)

(assert start!85706)

(declare-fun b!994303 () Bool)

(declare-fun e!561185 () Bool)

(declare-datatypes ((array!62874 0))(
  ( (array!62875 (arr!30272 (Array (_ BitVec 32) (_ BitVec 64))) (size!30775 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62874)

(assert (=> b!994303 (= e!561185 (and (bvslt #b00000000000000000000000000000000 (size!30775 a!3219)) (bvsge (size!30775 a!3219) #b01111111111111111111111111111111)))))

(declare-fun res!664965 () Bool)

(assert (=> start!85706 (=> (not res!664965) (not e!561185))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85706 (= res!664965 (validMask!0 mask!3464))))

(assert (=> start!85706 e!561185))

(declare-fun array_inv!23262 (array!62874) Bool)

(assert (=> start!85706 (array_inv!23262 a!3219)))

(assert (=> start!85706 true))

(declare-fun b!994302 () Bool)

(declare-fun res!664964 () Bool)

(assert (=> b!994302 (=> (not res!664964) (not e!561185))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994302 (= res!664964 (validKeyInArray!0 k0!2224))))

(declare-fun b!994301 () Bool)

(declare-fun res!664966 () Bool)

(assert (=> b!994301 (=> (not res!664966) (not e!561185))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994301 (= res!664966 (validKeyInArray!0 (select (arr!30272 a!3219) j!170)))))

(declare-fun b!994300 () Bool)

(declare-fun res!664963 () Bool)

(assert (=> b!994300 (=> (not res!664963) (not e!561185))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994300 (= res!664963 (and (= (size!30775 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30775 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30775 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85706 res!664965) b!994300))

(assert (= (and b!994300 res!664963) b!994301))

(assert (= (and b!994301 res!664966) b!994302))

(assert (= (and b!994302 res!664964) b!994303))

(declare-fun m!922011 () Bool)

(assert (=> start!85706 m!922011))

(declare-fun m!922013 () Bool)

(assert (=> start!85706 m!922013))

(declare-fun m!922015 () Bool)

(assert (=> b!994302 m!922015))

(declare-fun m!922017 () Bool)

(assert (=> b!994301 m!922017))

(assert (=> b!994301 m!922017))

(declare-fun m!922019 () Bool)

(assert (=> b!994301 m!922019))

(check-sat (not b!994301) (not start!85706) (not b!994302))
(check-sat)
(get-model)

(declare-fun d!118651 () Bool)

(assert (=> d!118651 (= (validKeyInArray!0 (select (arr!30272 a!3219) j!170)) (and (not (= (select (arr!30272 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30272 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994301 d!118651))

(declare-fun d!118653 () Bool)

(assert (=> d!118653 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85706 d!118653))

(declare-fun d!118663 () Bool)

(assert (=> d!118663 (= (array_inv!23262 a!3219) (bvsge (size!30775 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85706 d!118663))

(declare-fun d!118665 () Bool)

(assert (=> d!118665 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!994302 d!118665))

(check-sat)
