; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85930 () Bool)

(assert start!85930)

(declare-fun b!995466 () Bool)

(declare-fun res!665913 () Bool)

(declare-fun e!561773 () Bool)

(assert (=> b!995466 (=> (not res!665913) (not e!561773))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995466 (= res!665913 (validKeyInArray!0 k!2224))))

(declare-fun b!995467 () Bool)

(declare-fun res!665915 () Bool)

(assert (=> b!995467 (=> (not res!665915) (not e!561773))))

(declare-datatypes ((array!62970 0))(
  ( (array!62971 (arr!30315 (Array (_ BitVec 32) (_ BitVec 64))) (size!30818 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!62970)

(declare-fun arrayContainsKey!0 (array!62970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995467 (= res!665915 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995468 () Bool)

(declare-fun res!665920 () Bool)

(declare-fun e!561772 () Bool)

(assert (=> b!995468 (=> (not res!665920) (not e!561772))))

(declare-datatypes ((List!21117 0))(
  ( (Nil!21114) (Cons!21113 (h!22275 (_ BitVec 64)) (t!30126 List!21117)) )
))
(declare-fun arrayNoDuplicates!0 (array!62970 (_ BitVec 32) List!21117) Bool)

(assert (=> b!995468 (= res!665920 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21114))))

(declare-fun b!995469 () Bool)

(declare-fun res!665919 () Bool)

(assert (=> b!995469 (=> (not res!665919) (not e!561772))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62970 (_ BitVec 32)) Bool)

(assert (=> b!995469 (= res!665919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995470 () Bool)

(declare-fun res!665917 () Bool)

(assert (=> b!995470 (=> (not res!665917) (not e!561773))))

(declare-fun j!170 () (_ BitVec 32))

(assert (=> b!995470 (= res!665917 (validKeyInArray!0 (select (arr!30315 a!3219) j!170)))))

(declare-fun res!665916 () Bool)

(assert (=> start!85930 (=> (not res!665916) (not e!561773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85930 (= res!665916 (validMask!0 mask!3464))))

(assert (=> start!85930 e!561773))

(declare-fun array_inv!23305 (array!62970) Bool)

(assert (=> start!85930 (array_inv!23305 a!3219)))

(assert (=> start!85930 true))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun b!995471 () Bool)

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!995471 (= e!561772 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30818 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30818 a!3219)) (bvslt mask!3464 #b00000000000000000000000000000000)))))

(declare-fun b!995472 () Bool)

(assert (=> b!995472 (= e!561773 e!561772)))

(declare-fun res!665914 () Bool)

(assert (=> b!995472 (=> (not res!665914) (not e!561772))))

(declare-datatypes ((SeekEntryResult!9247 0))(
  ( (MissingZero!9247 (index!39358 (_ BitVec 32))) (Found!9247 (index!39359 (_ BitVec 32))) (Intermediate!9247 (undefined!10059 Bool) (index!39360 (_ BitVec 32)) (x!86825 (_ BitVec 32))) (Undefined!9247) (MissingVacant!9247 (index!39361 (_ BitVec 32))) )
))
(declare-fun lt!440946 () SeekEntryResult!9247)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995472 (= res!665914 (or (= lt!440946 (MissingVacant!9247 i!1194)) (= lt!440946 (MissingZero!9247 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62970 (_ BitVec 32)) SeekEntryResult!9247)

(assert (=> b!995472 (= lt!440946 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!995473 () Bool)

(declare-fun res!665918 () Bool)

(assert (=> b!995473 (=> (not res!665918) (not e!561773))))

(assert (=> b!995473 (= res!665918 (and (= (size!30818 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30818 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30818 a!3219)) (not (= i!1194 j!170))))))

(assert (= (and start!85930 res!665916) b!995473))

(assert (= (and b!995473 res!665918) b!995470))

(assert (= (and b!995470 res!665917) b!995466))

(assert (= (and b!995466 res!665913) b!995467))

(assert (= (and b!995467 res!665915) b!995472))

(assert (= (and b!995472 res!665914) b!995469))

(assert (= (and b!995469 res!665919) b!995468))

(assert (= (and b!995468 res!665920) b!995471))

(declare-fun m!922961 () Bool)

(assert (=> b!995466 m!922961))

(declare-fun m!922963 () Bool)

(assert (=> start!85930 m!922963))

(declare-fun m!922965 () Bool)

(assert (=> start!85930 m!922965))

(declare-fun m!922967 () Bool)

(assert (=> b!995472 m!922967))

(declare-fun m!922969 () Bool)

(assert (=> b!995470 m!922969))

(assert (=> b!995470 m!922969))

(declare-fun m!922971 () Bool)

(assert (=> b!995470 m!922971))

(declare-fun m!922973 () Bool)

(assert (=> b!995469 m!922973))

(declare-fun m!922975 () Bool)

(assert (=> b!995468 m!922975))

(declare-fun m!922977 () Bool)

(assert (=> b!995467 m!922977))

(push 1)

(assert (not b!995468))

(assert (not b!995472))

(assert (not start!85930))

(assert (not b!995466))

(assert (not b!995470))

(assert (not b!995469))

(assert (not b!995467))

(check-sat)

(pop 1)

(push 1)

(check-sat)

