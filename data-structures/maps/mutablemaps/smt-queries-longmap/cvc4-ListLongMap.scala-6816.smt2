; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85756 () Bool)

(assert start!85756)

(declare-fun b!994590 () Bool)

(declare-fun res!665253 () Bool)

(declare-fun e!561299 () Bool)

(assert (=> b!994590 (=> (not res!665253) (not e!561299))))

(declare-datatypes ((array!62913 0))(
  ( (array!62914 (arr!30291 (Array (_ BitVec 32) (_ BitVec 64))) (size!30794 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62913)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994590 (= res!665253 (validKeyInArray!0 (select (arr!30291 a!3219) j!170)))))

(declare-fun res!665257 () Bool)

(assert (=> start!85756 (=> (not res!665257) (not e!561299))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85756 (= res!665257 (validMask!0 mask!3464))))

(assert (=> start!85756 e!561299))

(declare-fun array_inv!23281 (array!62913) Bool)

(assert (=> start!85756 (array_inv!23281 a!3219)))

(assert (=> start!85756 true))

(declare-fun b!994591 () Bool)

(assert (=> b!994591 (= e!561299 false)))

(declare-datatypes ((SeekEntryResult!9223 0))(
  ( (MissingZero!9223 (index!39262 (_ BitVec 32))) (Found!9223 (index!39263 (_ BitVec 32))) (Intermediate!9223 (undefined!10035 Bool) (index!39264 (_ BitVec 32)) (x!86737 (_ BitVec 32))) (Undefined!9223) (MissingVacant!9223 (index!39265 (_ BitVec 32))) )
))
(declare-fun lt!440700 () SeekEntryResult!9223)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62913 (_ BitVec 32)) SeekEntryResult!9223)

(assert (=> b!994591 (= lt!440700 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!994592 () Bool)

(declare-fun res!665254 () Bool)

(assert (=> b!994592 (=> (not res!665254) (not e!561299))))

(declare-fun arrayContainsKey!0 (array!62913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!994592 (= res!665254 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!994593 () Bool)

(declare-fun res!665255 () Bool)

(assert (=> b!994593 (=> (not res!665255) (not e!561299))))

(assert (=> b!994593 (= res!665255 (validKeyInArray!0 k!2224))))

(declare-fun b!994594 () Bool)

(declare-fun res!665256 () Bool)

(assert (=> b!994594 (=> (not res!665256) (not e!561299))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994594 (= res!665256 (and (= (size!30794 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30794 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30794 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85756 res!665257) b!994594))

(assert (= (and b!994594 res!665256) b!994590))

(assert (= (and b!994590 res!665253) b!994593))

(assert (= (and b!994593 res!665255) b!994592))

(assert (= (and b!994592 res!665254) b!994591))

(declare-fun m!922263 () Bool)

(assert (=> b!994593 m!922263))

(declare-fun m!922265 () Bool)

(assert (=> b!994592 m!922265))

(declare-fun m!922267 () Bool)

(assert (=> b!994591 m!922267))

(declare-fun m!922269 () Bool)

(assert (=> b!994590 m!922269))

(assert (=> b!994590 m!922269))

(declare-fun m!922271 () Bool)

(assert (=> b!994590 m!922271))

(declare-fun m!922273 () Bool)

(assert (=> start!85756 m!922273))

(declare-fun m!922275 () Bool)

(assert (=> start!85756 m!922275))

(push 1)

(assert (not b!994592))

(assert (not b!994591))

(assert (not start!85756))

(assert (not b!994593))

(assert (not b!994590))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

