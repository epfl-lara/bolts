; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32366 () Bool)

(assert start!32366)

(declare-fun b!322017 () Bool)

(declare-fun res!176154 () Bool)

(declare-fun e!199369 () Bool)

(assert (=> b!322017 (=> (not res!176154) (not e!199369))))

(declare-datatypes ((array!16501 0))(
  ( (array!16502 (arr!7805 (Array (_ BitVec 32) (_ BitVec 64))) (size!8157 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16501)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2947 0))(
  ( (MissingZero!2947 (index!13964 (_ BitVec 32))) (Found!2947 (index!13965 (_ BitVec 32))) (Intermediate!2947 (undefined!3759 Bool) (index!13966 (_ BitVec 32)) (x!32194 (_ BitVec 32))) (Undefined!2947) (MissingVacant!2947 (index!13967 (_ BitVec 32))) )
))
(declare-fun lt!156368 () SeekEntryResult!2947)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16501 (_ BitVec 32)) SeekEntryResult!2947)

(assert (=> b!322017 (= res!176154 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!156368))))

(declare-fun b!322018 () Bool)

(declare-fun res!176160 () Bool)

(assert (=> b!322018 (=> (not res!176160) (not e!199369))))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!322018 (= res!176160 (and (= (select (arr!7805 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8157 a!3305))))))

(declare-fun b!322019 () Bool)

(declare-fun res!176159 () Bool)

(declare-fun e!199368 () Bool)

(assert (=> b!322019 (=> (not res!176159) (not e!199368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!322019 (= res!176159 (validKeyInArray!0 k0!2497))))

(declare-fun b!322020 () Bool)

(declare-fun res!176161 () Bool)

(assert (=> b!322020 (=> (not res!176161) (not e!199368))))

(assert (=> b!322020 (= res!176161 (and (= (size!8157 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8157 a!3305))))))

(declare-fun res!176162 () Bool)

(assert (=> start!32366 (=> (not res!176162) (not e!199368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32366 (= res!176162 (validMask!0 mask!3777))))

(assert (=> start!32366 e!199368))

(declare-fun array_inv!5759 (array!16501) Bool)

(assert (=> start!32366 (array_inv!5759 a!3305)))

(assert (=> start!32366 true))

(declare-fun b!322021 () Bool)

(declare-fun res!176163 () Bool)

(assert (=> b!322021 (=> (not res!176163) (not e!199368))))

(declare-fun arrayContainsKey!0 (array!16501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!322021 (= res!176163 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!322022 () Bool)

(assert (=> b!322022 (= e!199368 e!199369)))

(declare-fun res!176156 () Bool)

(assert (=> b!322022 (=> (not res!176156) (not e!199369))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322022 (= res!176156 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!156368))))

(assert (=> b!322022 (= lt!156368 (Intermediate!2947 false resIndex!58 resX!58))))

(declare-fun b!322023 () Bool)

(declare-fun res!176157 () Bool)

(assert (=> b!322023 (=> (not res!176157) (not e!199368))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16501 (_ BitVec 32)) SeekEntryResult!2947)

(assert (=> b!322023 (= res!176157 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!2947 i!1250)))))

(declare-fun b!322024 () Bool)

(assert (=> b!322024 (= e!199369 false)))

(declare-fun lt!156367 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!322024 (= lt!156367 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!322025 () Bool)

(declare-fun res!176158 () Bool)

(assert (=> b!322025 (=> (not res!176158) (not e!199369))))

(assert (=> b!322025 (= res!176158 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7805 a!3305) index!1840) k0!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7805 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7805 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!322026 () Bool)

(declare-fun res!176155 () Bool)

(assert (=> b!322026 (=> (not res!176155) (not e!199368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16501 (_ BitVec 32)) Bool)

(assert (=> b!322026 (= res!176155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(assert (= (and start!32366 res!176162) b!322020))

(assert (= (and b!322020 res!176161) b!322019))

(assert (= (and b!322019 res!176159) b!322021))

(assert (= (and b!322021 res!176163) b!322023))

(assert (= (and b!322023 res!176157) b!322026))

(assert (= (and b!322026 res!176155) b!322022))

(assert (= (and b!322022 res!176156) b!322018))

(assert (= (and b!322018 res!176160) b!322017))

(assert (= (and b!322017 res!176154) b!322025))

(assert (= (and b!322025 res!176158) b!322024))

(declare-fun m!329989 () Bool)

(assert (=> b!322025 m!329989))

(declare-fun m!329991 () Bool)

(assert (=> b!322019 m!329991))

(declare-fun m!329993 () Bool)

(assert (=> b!322018 m!329993))

(declare-fun m!329995 () Bool)

(assert (=> b!322026 m!329995))

(declare-fun m!329997 () Bool)

(assert (=> b!322024 m!329997))

(declare-fun m!329999 () Bool)

(assert (=> start!32366 m!329999))

(declare-fun m!330001 () Bool)

(assert (=> start!32366 m!330001))

(declare-fun m!330003 () Bool)

(assert (=> b!322021 m!330003))

(declare-fun m!330005 () Bool)

(assert (=> b!322023 m!330005))

(declare-fun m!330007 () Bool)

(assert (=> b!322022 m!330007))

(assert (=> b!322022 m!330007))

(declare-fun m!330009 () Bool)

(assert (=> b!322022 m!330009))

(declare-fun m!330011 () Bool)

(assert (=> b!322017 m!330011))

(check-sat (not b!322021) (not b!322017) (not b!322023) (not b!322026) (not b!322022) (not b!322019) (not b!322024) (not start!32366))
(check-sat)
