; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32666 () Bool)

(assert start!32666)

(declare-fun b!325968 () Bool)

(declare-fun res!179158 () Bool)

(declare-fun e!200835 () Bool)

(assert (=> b!325968 (=> (not res!179158) (not e!200835))))

(declare-datatypes ((array!16699 0))(
  ( (array!16700 (arr!7901 (Array (_ BitVec 32) (_ BitVec 64))) (size!8253 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16699)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!16699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325968 (= res!179158 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325969 () Bool)

(declare-fun res!179157 () Bool)

(assert (=> b!325969 (=> (not res!179157) (not e!200835))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3043 0))(
  ( (MissingZero!3043 (index!14348 (_ BitVec 32))) (Found!3043 (index!14349 (_ BitVec 32))) (Intermediate!3043 (undefined!3855 Bool) (index!14350 (_ BitVec 32)) (x!32564 (_ BitVec 32))) (Undefined!3043) (MissingVacant!3043 (index!14351 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16699 (_ BitVec 32)) SeekEntryResult!3043)

(assert (=> b!325969 (= res!179157 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3043 i!1250)))))

(declare-fun b!325970 () Bool)

(declare-fun e!200836 () Bool)

(assert (=> b!325970 (= e!200836 false)))

(declare-datatypes ((Unit!10095 0))(
  ( (Unit!10096) )
))
(declare-fun lt!157232 () Unit!10095)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!16699 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!10095)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325970 (= lt!157232 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3305 i!1250 k0!2497 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) resIndex!58 resX!58 mask!3777))))

(declare-fun res!179161 () Bool)

(assert (=> start!32666 (=> (not res!179161) (not e!200835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32666 (= res!179161 (validMask!0 mask!3777))))

(assert (=> start!32666 e!200835))

(declare-fun array_inv!5855 (array!16699) Bool)

(assert (=> start!32666 (array_inv!5855 a!3305)))

(assert (=> start!32666 true))

(declare-fun b!325971 () Bool)

(declare-fun res!179160 () Bool)

(assert (=> b!325971 (=> (not res!179160) (not e!200835))))

(assert (=> b!325971 (= res!179160 (and (= (size!8253 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8253 a!3305))))))

(declare-fun b!325972 () Bool)

(assert (=> b!325972 (= e!200835 e!200836)))

(declare-fun res!179163 () Bool)

(assert (=> b!325972 (=> (not res!179163) (not e!200836))))

(declare-fun lt!157231 () SeekEntryResult!3043)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16699 (_ BitVec 32)) SeekEntryResult!3043)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325972 (= res!179163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157231))))

(assert (=> b!325972 (= lt!157231 (Intermediate!3043 false resIndex!58 resX!58))))

(declare-fun b!325973 () Bool)

(declare-fun res!179159 () Bool)

(assert (=> b!325973 (=> (not res!179159) (not e!200836))))

(assert (=> b!325973 (= res!179159 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157231))))

(declare-fun b!325974 () Bool)

(declare-fun res!179165 () Bool)

(assert (=> b!325974 (=> (not res!179165) (not e!200835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16699 (_ BitVec 32)) Bool)

(assert (=> b!325974 (= res!179165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325975 () Bool)

(declare-fun res!179164 () Bool)

(assert (=> b!325975 (=> (not res!179164) (not e!200836))))

(assert (=> b!325975 (= res!179164 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7901 a!3305) index!1840) k0!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325976 () Bool)

(declare-fun res!179166 () Bool)

(assert (=> b!325976 (=> (not res!179166) (not e!200835))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325976 (= res!179166 (validKeyInArray!0 k0!2497))))

(declare-fun b!325977 () Bool)

(declare-fun res!179162 () Bool)

(assert (=> b!325977 (=> (not res!179162) (not e!200836))))

(assert (=> b!325977 (= res!179162 (and (= (select (arr!7901 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8253 a!3305))))))

(assert (= (and start!32666 res!179161) b!325971))

(assert (= (and b!325971 res!179160) b!325976))

(assert (= (and b!325976 res!179166) b!325968))

(assert (= (and b!325968 res!179158) b!325969))

(assert (= (and b!325969 res!179157) b!325974))

(assert (= (and b!325974 res!179165) b!325972))

(assert (= (and b!325972 res!179163) b!325977))

(assert (= (and b!325977 res!179162) b!325973))

(assert (= (and b!325973 res!179159) b!325975))

(assert (= (and b!325975 res!179164) b!325970))

(declare-fun m!332595 () Bool)

(assert (=> b!325975 m!332595))

(declare-fun m!332597 () Bool)

(assert (=> b!325973 m!332597))

(declare-fun m!332599 () Bool)

(assert (=> b!325970 m!332599))

(assert (=> b!325970 m!332599))

(declare-fun m!332601 () Bool)

(assert (=> b!325970 m!332601))

(declare-fun m!332603 () Bool)

(assert (=> b!325969 m!332603))

(declare-fun m!332605 () Bool)

(assert (=> b!325976 m!332605))

(declare-fun m!332607 () Bool)

(assert (=> start!32666 m!332607))

(declare-fun m!332609 () Bool)

(assert (=> start!32666 m!332609))

(declare-fun m!332611 () Bool)

(assert (=> b!325968 m!332611))

(declare-fun m!332613 () Bool)

(assert (=> b!325974 m!332613))

(declare-fun m!332615 () Bool)

(assert (=> b!325972 m!332615))

(assert (=> b!325972 m!332615))

(declare-fun m!332617 () Bool)

(assert (=> b!325972 m!332617))

(declare-fun m!332619 () Bool)

(assert (=> b!325977 m!332619))

(check-sat (not b!325969) (not b!325973) (not b!325970) (not b!325976) (not b!325974) (not b!325972) (not b!325968) (not start!32666))
(check-sat)
