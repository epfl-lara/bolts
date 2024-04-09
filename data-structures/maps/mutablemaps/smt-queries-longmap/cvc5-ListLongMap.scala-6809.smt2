; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85698 () Bool)

(assert start!85698)

(declare-fun b!994252 () Bool)

(declare-fun res!664917 () Bool)

(declare-fun e!561160 () Bool)

(assert (=> b!994252 (=> (not res!664917) (not e!561160))))

(declare-datatypes ((array!62866 0))(
  ( (array!62867 (arr!30268 (Array (_ BitVec 32) (_ BitVec 64))) (size!30771 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62866)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994252 (= res!664917 (and (= (size!30771 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30771 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30771 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994255 () Bool)

(assert (=> b!994255 (= e!561160 (bvsge #b00000000000000000000000000000000 (size!30771 a!3219)))))

(declare-fun b!994253 () Bool)

(declare-fun res!664916 () Bool)

(assert (=> b!994253 (=> (not res!664916) (not e!561160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994253 (= res!664916 (validKeyInArray!0 (select (arr!30268 a!3219) j!170)))))

(declare-fun res!664915 () Bool)

(assert (=> start!85698 (=> (not res!664915) (not e!561160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85698 (= res!664915 (validMask!0 mask!3464))))

(assert (=> start!85698 e!561160))

(declare-fun array_inv!23258 (array!62866) Bool)

(assert (=> start!85698 (array_inv!23258 a!3219)))

(assert (=> start!85698 true))

(declare-fun b!994254 () Bool)

(declare-fun res!664918 () Bool)

(assert (=> b!994254 (=> (not res!664918) (not e!561160))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!994254 (= res!664918 (validKeyInArray!0 k!2224))))

(assert (= (and start!85698 res!664915) b!994252))

(assert (= (and b!994252 res!664917) b!994253))

(assert (= (and b!994253 res!664916) b!994254))

(assert (= (and b!994254 res!664918) b!994255))

(declare-fun m!921971 () Bool)

(assert (=> b!994253 m!921971))

(assert (=> b!994253 m!921971))

(declare-fun m!921973 () Bool)

(assert (=> b!994253 m!921973))

(declare-fun m!921975 () Bool)

(assert (=> start!85698 m!921975))

(declare-fun m!921977 () Bool)

(assert (=> start!85698 m!921977))

(declare-fun m!921979 () Bool)

(assert (=> b!994254 m!921979))

(push 1)

(assert (not b!994254))

(assert (not b!994253))

(assert (not start!85698))

(check-sat)

(pop 1)

