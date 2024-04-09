; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31790 () Bool)

(assert start!31790)

(declare-fun b!317229 () Bool)

(declare-fun res!171969 () Bool)

(declare-fun e!197253 () Bool)

(assert (=> b!317229 (=> (not res!171969) (not e!197253))))

(declare-datatypes ((array!16159 0))(
  ( (array!16160 (arr!7643 (Array (_ BitVec 32) (_ BitVec 64))) (size!7995 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16159)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2794 0))(
  ( (MissingZero!2794 (index!13352 (_ BitVec 32))) (Found!2794 (index!13353 (_ BitVec 32))) (Intermediate!2794 (undefined!3606 Bool) (index!13354 (_ BitVec 32)) (x!31582 (_ BitVec 32))) (Undefined!2794) (MissingVacant!2794 (index!13355 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16159 (_ BitVec 32)) SeekEntryResult!2794)

(assert (=> b!317229 (= res!171969 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2794 i!1240)))))

(declare-fun b!317230 () Bool)

(declare-fun e!197250 () Bool)

(declare-fun e!197254 () Bool)

(assert (=> b!317230 (= e!197250 e!197254)))

(declare-fun res!171971 () Bool)

(assert (=> b!317230 (=> (not res!171971) (not e!197254))))

(declare-fun lt!154910 () SeekEntryResult!2794)

(declare-fun lt!154909 () SeekEntryResult!2794)

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317230 (= res!171971 (and (= lt!154909 lt!154910) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7643 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16159 (_ BitVec 32)) SeekEntryResult!2794)

(assert (=> b!317230 (= lt!154909 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317232 () Bool)

(declare-fun res!171972 () Bool)

(assert (=> b!317232 (=> (not res!171972) (not e!197253))))

(declare-fun arrayContainsKey!0 (array!16159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317232 (= res!171972 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun lt!154907 () (_ BitVec 32))

(declare-fun lt!154908 () array!16159)

(declare-fun e!197252 () Bool)

(declare-fun b!317233 () Bool)

(assert (=> b!317233 (= e!197252 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!154908 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154907 k0!2441 lt!154908 mask!3709)))))

(assert (=> b!317233 (= lt!154908 (array!16160 (store (arr!7643 a!3293) i!1240 k0!2441) (size!7995 a!3293)))))

(declare-fun b!317234 () Bool)

(declare-fun res!171973 () Bool)

(assert (=> b!317234 (=> (not res!171973) (not e!197253))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317234 (= res!171973 (validKeyInArray!0 k0!2441))))

(declare-fun b!317235 () Bool)

(declare-fun res!171967 () Bool)

(assert (=> b!317235 (=> (not res!171967) (not e!197253))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16159 (_ BitVec 32)) Bool)

(assert (=> b!317235 (= res!171967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317236 () Bool)

(assert (=> b!317236 (= e!197253 e!197250)))

(declare-fun res!171968 () Bool)

(assert (=> b!317236 (=> (not res!171968) (not e!197250))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317236 (= res!171968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154910))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317236 (= lt!154910 (Intermediate!2794 false resIndex!52 resX!52))))

(declare-fun b!317231 () Bool)

(declare-fun res!171975 () Bool)

(assert (=> b!317231 (=> (not res!171975) (not e!197253))))

(assert (=> b!317231 (= res!171975 (and (= (size!7995 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7995 a!3293))))))

(declare-fun res!171974 () Bool)

(assert (=> start!31790 (=> (not res!171974) (not e!197253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31790 (= res!171974 (validMask!0 mask!3709))))

(assert (=> start!31790 e!197253))

(declare-fun array_inv!5597 (array!16159) Bool)

(assert (=> start!31790 (array_inv!5597 a!3293)))

(assert (=> start!31790 true))

(declare-fun b!317237 () Bool)

(assert (=> b!317237 (= e!197254 (not true))))

(assert (=> b!317237 e!197252))

(declare-fun res!171970 () Bool)

(assert (=> b!317237 (=> (not res!171970) (not e!197252))))

(assert (=> b!317237 (= res!171970 (= lt!154909 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154907 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317237 (= lt!154907 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317238 () Bool)

(declare-fun res!171966 () Bool)

(assert (=> b!317238 (=> (not res!171966) (not e!197250))))

(assert (=> b!317238 (= res!171966 (and (= (select (arr!7643 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7995 a!3293))))))

(assert (= (and start!31790 res!171974) b!317231))

(assert (= (and b!317231 res!171975) b!317234))

(assert (= (and b!317234 res!171973) b!317232))

(assert (= (and b!317232 res!171972) b!317229))

(assert (= (and b!317229 res!171969) b!317235))

(assert (= (and b!317235 res!171967) b!317236))

(assert (= (and b!317236 res!171968) b!317238))

(assert (= (and b!317238 res!171966) b!317230))

(assert (= (and b!317230 res!171971) b!317237))

(assert (= (and b!317237 res!171970) b!317233))

(declare-fun m!325905 () Bool)

(assert (=> start!31790 m!325905))

(declare-fun m!325907 () Bool)

(assert (=> start!31790 m!325907))

(declare-fun m!325909 () Bool)

(assert (=> b!317237 m!325909))

(declare-fun m!325911 () Bool)

(assert (=> b!317237 m!325911))

(declare-fun m!325913 () Bool)

(assert (=> b!317236 m!325913))

(assert (=> b!317236 m!325913))

(declare-fun m!325915 () Bool)

(assert (=> b!317236 m!325915))

(declare-fun m!325917 () Bool)

(assert (=> b!317230 m!325917))

(declare-fun m!325919 () Bool)

(assert (=> b!317230 m!325919))

(declare-fun m!325921 () Bool)

(assert (=> b!317232 m!325921))

(declare-fun m!325923 () Bool)

(assert (=> b!317238 m!325923))

(declare-fun m!325925 () Bool)

(assert (=> b!317233 m!325925))

(declare-fun m!325927 () Bool)

(assert (=> b!317233 m!325927))

(declare-fun m!325929 () Bool)

(assert (=> b!317233 m!325929))

(declare-fun m!325931 () Bool)

(assert (=> b!317229 m!325931))

(declare-fun m!325933 () Bool)

(assert (=> b!317235 m!325933))

(declare-fun m!325935 () Bool)

(assert (=> b!317234 m!325935))

(check-sat (not b!317229) (not b!317237) (not b!317236) (not b!317232) (not b!317234) (not b!317230) (not b!317233) (not b!317235) (not start!31790))
(check-sat)
