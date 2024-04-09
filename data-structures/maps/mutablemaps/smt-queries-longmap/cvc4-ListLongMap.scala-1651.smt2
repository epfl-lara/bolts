; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30748 () Bool)

(assert start!30748)

(declare-fun lt!151321 () (_ BitVec 32))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun e!192759 () Bool)

(declare-fun b!308205 () Bool)

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!308205 (= e!192759 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsge lt!151321 #b00000000000000000000000000000000) (bvslt lt!151321 (bvadd #b00000000000000000000000000000001 mask!3709)) (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000))))))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308205 (= lt!151321 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!308206 () Bool)

(declare-fun res!164985 () Bool)

(assert (=> b!308206 (=> (not res!164985) (not e!192759))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((array!15699 0))(
  ( (array!15700 (arr!7431 (Array (_ BitVec 32) (_ BitVec 64))) (size!7783 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15699)

(assert (=> b!308206 (= res!164985 (and (= (select (arr!7431 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7783 a!3293))))))

(declare-fun b!308207 () Bool)

(declare-fun res!164982 () Bool)

(assert (=> b!308207 (=> (not res!164982) (not e!192759))))

(declare-datatypes ((SeekEntryResult!2582 0))(
  ( (MissingZero!2582 (index!12504 (_ BitVec 32))) (Found!2582 (index!12505 (_ BitVec 32))) (Intermediate!2582 (undefined!3394 Bool) (index!12506 (_ BitVec 32)) (x!30709 (_ BitVec 32))) (Undefined!2582) (MissingVacant!2582 (index!12507 (_ BitVec 32))) )
))
(declare-fun lt!151322 () SeekEntryResult!2582)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15699 (_ BitVec 32)) SeekEntryResult!2582)

(assert (=> b!308207 (= res!164982 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151322))))

(declare-fun b!308208 () Bool)

(declare-fun e!192760 () Bool)

(assert (=> b!308208 (= e!192760 e!192759)))

(declare-fun res!164979 () Bool)

(assert (=> b!308208 (=> (not res!164979) (not e!192759))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!308208 (= res!164979 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151322))))

(assert (=> b!308208 (= lt!151322 (Intermediate!2582 false resIndex!52 resX!52))))

(declare-fun res!164978 () Bool)

(assert (=> start!30748 (=> (not res!164978) (not e!192760))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30748 (= res!164978 (validMask!0 mask!3709))))

(assert (=> start!30748 e!192760))

(declare-fun array_inv!5385 (array!15699) Bool)

(assert (=> start!30748 (array_inv!5385 a!3293)))

(assert (=> start!30748 true))

(declare-fun b!308209 () Bool)

(declare-fun res!164983 () Bool)

(assert (=> b!308209 (=> (not res!164983) (not e!192760))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15699 (_ BitVec 32)) SeekEntryResult!2582)

(assert (=> b!308209 (= res!164983 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2582 i!1240)))))

(declare-fun b!308210 () Bool)

(declare-fun res!164984 () Bool)

(assert (=> b!308210 (=> (not res!164984) (not e!192760))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!308210 (= res!164984 (validKeyInArray!0 k!2441))))

(declare-fun b!308211 () Bool)

(declare-fun res!164980 () Bool)

(assert (=> b!308211 (=> (not res!164980) (not e!192760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15699 (_ BitVec 32)) Bool)

(assert (=> b!308211 (= res!164980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!308212 () Bool)

(declare-fun res!164981 () Bool)

(assert (=> b!308212 (=> (not res!164981) (not e!192760))))

(assert (=> b!308212 (= res!164981 (and (= (size!7783 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7783 a!3293))))))

(declare-fun b!308213 () Bool)

(declare-fun res!164976 () Bool)

(assert (=> b!308213 (=> (not res!164976) (not e!192759))))

(assert (=> b!308213 (= res!164976 (and (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7431 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun b!308214 () Bool)

(declare-fun res!164977 () Bool)

(assert (=> b!308214 (=> (not res!164977) (not e!192760))))

(declare-fun arrayContainsKey!0 (array!15699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!308214 (= res!164977 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!30748 res!164978) b!308212))

(assert (= (and b!308212 res!164981) b!308210))

(assert (= (and b!308210 res!164984) b!308214))

(assert (= (and b!308214 res!164977) b!308209))

(assert (= (and b!308209 res!164983) b!308211))

(assert (= (and b!308211 res!164980) b!308208))

(assert (= (and b!308208 res!164979) b!308206))

(assert (= (and b!308206 res!164985) b!308207))

(assert (= (and b!308207 res!164982) b!308213))

(assert (= (and b!308213 res!164976) b!308205))

(declare-fun m!318307 () Bool)

(assert (=> b!308210 m!318307))

(declare-fun m!318309 () Bool)

(assert (=> b!308211 m!318309))

(declare-fun m!318311 () Bool)

(assert (=> b!308208 m!318311))

(assert (=> b!308208 m!318311))

(declare-fun m!318313 () Bool)

(assert (=> b!308208 m!318313))

(declare-fun m!318315 () Bool)

(assert (=> b!308213 m!318315))

(declare-fun m!318317 () Bool)

(assert (=> b!308207 m!318317))

(declare-fun m!318319 () Bool)

(assert (=> b!308214 m!318319))

(declare-fun m!318321 () Bool)

(assert (=> b!308206 m!318321))

(declare-fun m!318323 () Bool)

(assert (=> b!308209 m!318323))

(declare-fun m!318325 () Bool)

(assert (=> start!30748 m!318325))

(declare-fun m!318327 () Bool)

(assert (=> start!30748 m!318327))

(declare-fun m!318329 () Bool)

(assert (=> b!308205 m!318329))

(push 1)

(assert (not b!308208))

(assert (not b!308205))

(assert (not b!308214))

(assert (not b!308207))

(assert (not b!308209))

(assert (not b!308210))

(assert (not b!308211))

(assert (not start!30748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

