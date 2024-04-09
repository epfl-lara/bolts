; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85722 () Bool)

(assert start!85722)

(declare-fun b!994326 () Bool)

(declare-fun e!561197 () Bool)

(declare-fun mask!3464 () (_ BitVec 32))

(assert (=> b!994326 (= e!561197 (bvslt mask!3464 #b00000000000000000000000000000000))))

(declare-fun b!994327 () Bool)

(declare-fun res!664992 () Bool)

(assert (=> b!994327 (=> (not res!664992) (not e!561197))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994327 (= res!664992 (validKeyInArray!0 k!2224))))

(declare-fun res!664990 () Bool)

(assert (=> start!85722 (=> (not res!664990) (not e!561197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85722 (= res!664990 (validMask!0 mask!3464))))

(assert (=> start!85722 e!561197))

(declare-datatypes ((array!62879 0))(
  ( (array!62880 (arr!30274 (Array (_ BitVec 32) (_ BitVec 64))) (size!30777 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62879)

(declare-fun array_inv!23264 (array!62879) Bool)

(assert (=> start!85722 (array_inv!23264 a!3219)))

(assert (=> start!85722 true))

(declare-fun b!994328 () Bool)

(declare-fun res!664993 () Bool)

(assert (=> b!994328 (=> (not res!664993) (not e!561197))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!994328 (= res!664993 (validKeyInArray!0 (select (arr!30274 a!3219) j!170)))))

(declare-fun b!994329 () Bool)

(declare-fun res!664991 () Bool)

(assert (=> b!994329 (=> (not res!664991) (not e!561197))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994329 (= res!664991 (and (= (size!30777 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30777 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30777 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994330 () Bool)

(declare-fun res!664989 () Bool)

(assert (=> b!994330 (=> (not res!664989) (not e!561197))))

(declare-fun arrayContainsKey!0 (array!62879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994330 (= res!664989 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!85722 res!664990) b!994329))

(assert (= (and b!994329 res!664991) b!994328))

(assert (= (and b!994328 res!664993) b!994327))

(assert (= (and b!994327 res!664992) b!994330))

(assert (= (and b!994330 res!664989) b!994326))

(declare-fun m!922031 () Bool)

(assert (=> b!994327 m!922031))

(declare-fun m!922033 () Bool)

(assert (=> start!85722 m!922033))

(declare-fun m!922035 () Bool)

(assert (=> start!85722 m!922035))

(declare-fun m!922037 () Bool)

(assert (=> b!994328 m!922037))

(assert (=> b!994328 m!922037))

(declare-fun m!922039 () Bool)

(assert (=> b!994328 m!922039))

(declare-fun m!922041 () Bool)

(assert (=> b!994330 m!922041))

(push 1)

(assert (not b!994328))

(assert (not b!994327))

(assert (not start!85722))

(assert (not b!994330))

(check-sat)

