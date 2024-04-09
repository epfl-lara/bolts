; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85702 () Bool)

(assert start!85702)

(declare-fun b!994276 () Bool)

(declare-fun res!664939 () Bool)

(declare-fun e!561172 () Bool)

(assert (=> b!994276 (=> (not res!664939) (not e!561172))))

(declare-datatypes ((array!62870 0))(
  ( (array!62871 (arr!30270 (Array (_ BitVec 32) (_ BitVec 64))) (size!30773 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62870)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!994276 (= res!664939 (and (= (size!30773 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30773 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30773 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!994278 () Bool)

(declare-fun res!664941 () Bool)

(assert (=> b!994278 (=> (not res!664941) (not e!561172))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!994278 (= res!664941 (validKeyInArray!0 k!2224))))

(declare-fun b!994277 () Bool)

(declare-fun res!664942 () Bool)

(assert (=> b!994277 (=> (not res!664942) (not e!561172))))

(assert (=> b!994277 (= res!664942 (validKeyInArray!0 (select (arr!30270 a!3219) j!170)))))

(declare-fun res!664940 () Bool)

(assert (=> start!85702 (=> (not res!664940) (not e!561172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85702 (= res!664940 (validMask!0 mask!3464))))

(assert (=> start!85702 e!561172))

(declare-fun array_inv!23260 (array!62870) Bool)

(assert (=> start!85702 (array_inv!23260 a!3219)))

(assert (=> start!85702 true))

(declare-fun b!994279 () Bool)

(assert (=> b!994279 (= e!561172 (bvsge #b00000000000000000000000000000000 (size!30773 a!3219)))))

(assert (= (and start!85702 res!664940) b!994276))

(assert (= (and b!994276 res!664939) b!994277))

(assert (= (and b!994277 res!664942) b!994278))

(assert (= (and b!994278 res!664941) b!994279))

(declare-fun m!921991 () Bool)

(assert (=> b!994278 m!921991))

(declare-fun m!921993 () Bool)

(assert (=> b!994277 m!921993))

(assert (=> b!994277 m!921993))

(declare-fun m!921995 () Bool)

(assert (=> b!994277 m!921995))

(declare-fun m!921997 () Bool)

(assert (=> start!85702 m!921997))

(declare-fun m!921999 () Bool)

(assert (=> start!85702 m!921999))

(push 1)

(assert (not b!994278))

(assert (not b!994277))

(assert (not start!85702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

