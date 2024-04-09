; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85764 () Bool)

(assert start!85764)

(declare-fun b!994650 () Bool)

(declare-fun res!665313 () Bool)

(declare-fun e!561323 () Bool)

(assert (=> b!994650 (=> (not res!665313) (not e!561323))))

(declare-datatypes ((array!62921 0))(
  ( (array!62922 (arr!30295 (Array (_ BitVec 32) (_ BitVec 64))) (size!30798 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62921)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994650 (= res!665313 (and (= (size!30798 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30798 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30798 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994651 () Bool)

(declare-fun res!665317 () Bool)

(assert (=> b!994651 (=> (not res!665317) (not e!561323))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!62921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994651 (= res!665317 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994652 () Bool)

(declare-fun res!665315 () Bool)

(assert (=> b!994652 (=> (not res!665315) (not e!561323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994652 (= res!665315 (validKeyInArray!0 k!2224))))

(declare-fun res!665314 () Bool)

(assert (=> start!85764 (=> (not res!665314) (not e!561323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85764 (= res!665314 (validMask!0 mask!3464))))

(assert (=> start!85764 e!561323))

(declare-fun array_inv!23285 (array!62921) Bool)

(assert (=> start!85764 (array_inv!23285 a!3219)))

(assert (=> start!85764 true))

(declare-fun b!994653 () Bool)

(declare-fun res!665316 () Bool)

(assert (=> b!994653 (=> (not res!665316) (not e!561323))))

(assert (=> b!994653 (= res!665316 (validKeyInArray!0 (select (arr!30295 a!3219) j!170)))))

(declare-fun b!994654 () Bool)

(assert (=> b!994654 (= e!561323 false)))

(declare-datatypes ((SeekEntryResult!9227 0))(
  ( (MissingZero!9227 (index!39278 (_ BitVec 32))) (Found!9227 (index!39279 (_ BitVec 32))) (Intermediate!9227 (undefined!10039 Bool) (index!39280 (_ BitVec 32)) (x!86757 (_ BitVec 32))) (Undefined!9227) (MissingVacant!9227 (index!39281 (_ BitVec 32))) )
))
(declare-fun lt!440712 () SeekEntryResult!9227)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62921 (_ BitVec 32)) SeekEntryResult!9227)

(assert (=> b!994654 (= lt!440712 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(assert (= (and start!85764 res!665314) b!994650))

(assert (= (and b!994650 res!665313) b!994653))

(assert (= (and b!994653 res!665316) b!994652))

(assert (= (and b!994652 res!665315) b!994651))

(assert (= (and b!994651 res!665317) b!994654))

(declare-fun m!922319 () Bool)

(assert (=> b!994653 m!922319))

(assert (=> b!994653 m!922319))

(declare-fun m!922321 () Bool)

(assert (=> b!994653 m!922321))

(declare-fun m!922323 () Bool)

(assert (=> b!994651 m!922323))

(declare-fun m!922325 () Bool)

(assert (=> b!994652 m!922325))

(declare-fun m!922327 () Bool)

(assert (=> start!85764 m!922327))

(declare-fun m!922329 () Bool)

(assert (=> start!85764 m!922329))

(declare-fun m!922331 () Bool)

(assert (=> b!994654 m!922331))

(push 1)

(assert (not b!994654))

(assert (not start!85764))

(assert (not b!994653))

(assert (not b!994651))

(assert (not b!994652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

