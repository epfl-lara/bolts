; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31796 () Bool)

(assert start!31796)

(declare-fun res!172063 () Bool)

(declare-fun e!197298 () Bool)

(assert (=> start!31796 (=> (not res!172063) (not e!197298))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31796 (= res!172063 (validMask!0 mask!3709))))

(assert (=> start!31796 e!197298))

(declare-datatypes ((array!16165 0))(
  ( (array!16166 (arr!7646 (Array (_ BitVec 32) (_ BitVec 64))) (size!7998 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16165)

(declare-fun array_inv!5600 (array!16165) Bool)

(assert (=> start!31796 (array_inv!5600 a!3293)))

(assert (=> start!31796 true))

(declare-fun b!317319 () Bool)

(declare-fun res!172065 () Bool)

(assert (=> b!317319 (=> (not res!172065) (not e!197298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16165 (_ BitVec 32)) Bool)

(assert (=> b!317319 (= res!172065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!317320 () Bool)

(declare-fun e!197297 () Bool)

(declare-fun e!197296 () Bool)

(assert (=> b!317320 (= e!197297 e!197296)))

(declare-fun res!172059 () Bool)

(assert (=> b!317320 (=> (not res!172059) (not e!197296))))

(declare-datatypes ((SeekEntryResult!2797 0))(
  ( (MissingZero!2797 (index!13364 (_ BitVec 32))) (Found!2797 (index!13365 (_ BitVec 32))) (Intermediate!2797 (undefined!3609 Bool) (index!13366 (_ BitVec 32)) (x!31593 (_ BitVec 32))) (Undefined!2797) (MissingVacant!2797 (index!13367 (_ BitVec 32))) )
))
(declare-fun lt!154946 () SeekEntryResult!2797)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lt!154945 () SeekEntryResult!2797)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!317320 (= res!172059 (and (= lt!154945 lt!154946) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7646 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16165 (_ BitVec 32)) SeekEntryResult!2797)

(assert (=> b!317320 (= lt!154945 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!317321 () Bool)

(declare-fun res!172062 () Bool)

(assert (=> b!317321 (=> (not res!172062) (not e!197298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!317321 (= res!172062 (validKeyInArray!0 k0!2441))))

(declare-fun b!317322 () Bool)

(declare-fun res!172058 () Bool)

(assert (=> b!317322 (=> (not res!172058) (not e!197298))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!317322 (= res!172058 (and (= (size!7998 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7998 a!3293))))))

(declare-fun b!317323 () Bool)

(declare-fun res!172064 () Bool)

(assert (=> b!317323 (=> (not res!172064) (not e!197297))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!317323 (= res!172064 (and (= (select (arr!7646 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7998 a!3293))))))

(declare-fun b!317324 () Bool)

(declare-fun res!172056 () Bool)

(assert (=> b!317324 (=> (not res!172056) (not e!197298))))

(declare-fun arrayContainsKey!0 (array!16165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!317324 (= res!172056 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!317325 () Bool)

(assert (=> b!317325 (= e!197296 (not true))))

(declare-fun e!197299 () Bool)

(assert (=> b!317325 e!197299))

(declare-fun res!172057 () Bool)

(assert (=> b!317325 (=> (not res!172057) (not e!197299))))

(declare-fun lt!154944 () (_ BitVec 32))

(assert (=> b!317325 (= res!172057 (= lt!154945 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154944 k0!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317325 (= lt!154944 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!317326 () Bool)

(declare-fun res!172060 () Bool)

(assert (=> b!317326 (=> (not res!172060) (not e!197298))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16165 (_ BitVec 32)) SeekEntryResult!2797)

(assert (=> b!317326 (= res!172060 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2797 i!1240)))))

(declare-fun b!317327 () Bool)

(assert (=> b!317327 (= e!197298 e!197297)))

(declare-fun res!172061 () Bool)

(assert (=> b!317327 (=> (not res!172061) (not e!197297))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!317327 (= res!172061 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!154946))))

(assert (=> b!317327 (= lt!154946 (Intermediate!2797 false resIndex!52 resX!52))))

(declare-fun lt!154943 () array!16165)

(declare-fun b!317328 () Bool)

(assert (=> b!317328 (= e!197299 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!154943 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!154944 k0!2441 lt!154943 mask!3709)))))

(assert (=> b!317328 (= lt!154943 (array!16166 (store (arr!7646 a!3293) i!1240 k0!2441) (size!7998 a!3293)))))

(assert (= (and start!31796 res!172063) b!317322))

(assert (= (and b!317322 res!172058) b!317321))

(assert (= (and b!317321 res!172062) b!317324))

(assert (= (and b!317324 res!172056) b!317326))

(assert (= (and b!317326 res!172060) b!317319))

(assert (= (and b!317319 res!172065) b!317327))

(assert (= (and b!317327 res!172061) b!317323))

(assert (= (and b!317323 res!172064) b!317320))

(assert (= (and b!317320 res!172059) b!317325))

(assert (= (and b!317325 res!172057) b!317328))

(declare-fun m!326001 () Bool)

(assert (=> b!317321 m!326001))

(declare-fun m!326003 () Bool)

(assert (=> b!317324 m!326003))

(declare-fun m!326005 () Bool)

(assert (=> b!317328 m!326005))

(declare-fun m!326007 () Bool)

(assert (=> b!317328 m!326007))

(declare-fun m!326009 () Bool)

(assert (=> b!317328 m!326009))

(declare-fun m!326011 () Bool)

(assert (=> b!317325 m!326011))

(declare-fun m!326013 () Bool)

(assert (=> b!317325 m!326013))

(declare-fun m!326015 () Bool)

(assert (=> start!31796 m!326015))

(declare-fun m!326017 () Bool)

(assert (=> start!31796 m!326017))

(declare-fun m!326019 () Bool)

(assert (=> b!317323 m!326019))

(declare-fun m!326021 () Bool)

(assert (=> b!317327 m!326021))

(assert (=> b!317327 m!326021))

(declare-fun m!326023 () Bool)

(assert (=> b!317327 m!326023))

(declare-fun m!326025 () Bool)

(assert (=> b!317326 m!326025))

(declare-fun m!326027 () Bool)

(assert (=> b!317320 m!326027))

(declare-fun m!326029 () Bool)

(assert (=> b!317320 m!326029))

(declare-fun m!326031 () Bool)

(assert (=> b!317319 m!326031))

(check-sat (not b!317328) (not b!317324) (not b!317327) (not start!31796) (not b!317326) (not b!317325) (not b!317320) (not b!317319) (not b!317321))
(check-sat)
