; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45264 () Bool)

(assert start!45264)

(declare-fun b!496819 () Bool)

(declare-fun res!299359 () Bool)

(declare-fun e!291280 () Bool)

(assert (=> b!496819 (=> res!299359 e!291280)))

(declare-datatypes ((SeekEntryResult!3910 0))(
  ( (MissingZero!3910 (index!17819 (_ BitVec 32))) (Found!3910 (index!17820 (_ BitVec 32))) (Intermediate!3910 (undefined!4722 Bool) (index!17821 (_ BitVec 32)) (x!46901 (_ BitVec 32))) (Undefined!3910) (MissingVacant!3910 (index!17822 (_ BitVec 32))) )
))
(declare-fun lt!224965 () SeekEntryResult!3910)

(get-info :version)

(assert (=> b!496819 (= res!299359 (or (undefined!4722 lt!224965) (not ((_ is Intermediate!3910) lt!224965))))))

(declare-fun b!496820 () Bool)

(assert (=> b!496820 (= e!291280 true)))

(declare-datatypes ((array!32112 0))(
  ( (array!32113 (arr!15436 (Array (_ BitVec 32) (_ BitVec 64))) (size!15800 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32112)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!496820 (and (bvslt (x!46901 lt!224965) #b01111111111111111111111111111110) (or (= (select (arr!15436 a!3235) (index!17821 lt!224965)) (select (arr!15436 a!3235) j!176)) (= (select (arr!15436 a!3235) (index!17821 lt!224965)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15436 a!3235) (index!17821 lt!224965)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!496821 () Bool)

(declare-fun e!291276 () Bool)

(assert (=> b!496821 (= e!291276 (not e!291280))))

(declare-fun res!299364 () Bool)

(assert (=> b!496821 (=> res!299364 e!291280)))

(declare-fun lt!224968 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32112 (_ BitVec 32)) SeekEntryResult!3910)

(assert (=> b!496821 (= res!299364 (= lt!224965 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224968 (select (store (arr!15436 a!3235) i!1204 k0!2280) j!176) (array!32113 (store (arr!15436 a!3235) i!1204 k0!2280) (size!15800 a!3235)) mask!3524)))))

(declare-fun lt!224966 () (_ BitVec 32))

(assert (=> b!496821 (= lt!224965 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224966 (select (arr!15436 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!496821 (= lt!224968 (toIndex!0 (select (store (arr!15436 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!496821 (= lt!224966 (toIndex!0 (select (arr!15436 a!3235) j!176) mask!3524))))

(declare-fun e!291278 () Bool)

(assert (=> b!496821 e!291278))

(declare-fun res!299357 () Bool)

(assert (=> b!496821 (=> (not res!299357) (not e!291278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32112 (_ BitVec 32)) Bool)

(assert (=> b!496821 (= res!299357 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14758 0))(
  ( (Unit!14759) )
))
(declare-fun lt!224969 () Unit!14758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32112 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14758)

(assert (=> b!496821 (= lt!224969 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!496822 () Bool)

(declare-fun res!299363 () Bool)

(declare-fun e!291277 () Bool)

(assert (=> b!496822 (=> (not res!299363) (not e!291277))))

(assert (=> b!496822 (= res!299363 (and (= (size!15800 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15800 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15800 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!496823 () Bool)

(declare-fun res!299360 () Bool)

(assert (=> b!496823 (=> (not res!299360) (not e!291276))))

(declare-datatypes ((List!9647 0))(
  ( (Nil!9644) (Cons!9643 (h!10514 (_ BitVec 64)) (t!15883 List!9647)) )
))
(declare-fun arrayNoDuplicates!0 (array!32112 (_ BitVec 32) List!9647) Bool)

(assert (=> b!496823 (= res!299360 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9644))))

(declare-fun b!496824 () Bool)

(declare-fun res!299362 () Bool)

(assert (=> b!496824 (=> (not res!299362) (not e!291276))))

(assert (=> b!496824 (= res!299362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!496826 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32112 (_ BitVec 32)) SeekEntryResult!3910)

(assert (=> b!496826 (= e!291278 (= (seekEntryOrOpen!0 (select (arr!15436 a!3235) j!176) a!3235 mask!3524) (Found!3910 j!176)))))

(declare-fun b!496827 () Bool)

(declare-fun res!299358 () Bool)

(assert (=> b!496827 (=> (not res!299358) (not e!291277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!496827 (= res!299358 (validKeyInArray!0 k0!2280))))

(declare-fun b!496825 () Bool)

(declare-fun res!299356 () Bool)

(assert (=> b!496825 (=> (not res!299356) (not e!291277))))

(declare-fun arrayContainsKey!0 (array!32112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!496825 (= res!299356 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!299361 () Bool)

(assert (=> start!45264 (=> (not res!299361) (not e!291277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45264 (= res!299361 (validMask!0 mask!3524))))

(assert (=> start!45264 e!291277))

(assert (=> start!45264 true))

(declare-fun array_inv!11210 (array!32112) Bool)

(assert (=> start!45264 (array_inv!11210 a!3235)))

(declare-fun b!496828 () Bool)

(assert (=> b!496828 (= e!291277 e!291276)))

(declare-fun res!299366 () Bool)

(assert (=> b!496828 (=> (not res!299366) (not e!291276))))

(declare-fun lt!224967 () SeekEntryResult!3910)

(assert (=> b!496828 (= res!299366 (or (= lt!224967 (MissingZero!3910 i!1204)) (= lt!224967 (MissingVacant!3910 i!1204))))))

(assert (=> b!496828 (= lt!224967 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!496829 () Bool)

(declare-fun res!299365 () Bool)

(assert (=> b!496829 (=> (not res!299365) (not e!291277))))

(assert (=> b!496829 (= res!299365 (validKeyInArray!0 (select (arr!15436 a!3235) j!176)))))

(assert (= (and start!45264 res!299361) b!496822))

(assert (= (and b!496822 res!299363) b!496829))

(assert (= (and b!496829 res!299365) b!496827))

(assert (= (and b!496827 res!299358) b!496825))

(assert (= (and b!496825 res!299356) b!496828))

(assert (= (and b!496828 res!299366) b!496824))

(assert (= (and b!496824 res!299362) b!496823))

(assert (= (and b!496823 res!299360) b!496821))

(assert (= (and b!496821 res!299357) b!496826))

(assert (= (and b!496821 (not res!299364)) b!496819))

(assert (= (and b!496819 (not res!299359)) b!496820))

(declare-fun m!478179 () Bool)

(assert (=> start!45264 m!478179))

(declare-fun m!478181 () Bool)

(assert (=> start!45264 m!478181))

(declare-fun m!478183 () Bool)

(assert (=> b!496827 m!478183))

(declare-fun m!478185 () Bool)

(assert (=> b!496821 m!478185))

(declare-fun m!478187 () Bool)

(assert (=> b!496821 m!478187))

(declare-fun m!478189 () Bool)

(assert (=> b!496821 m!478189))

(declare-fun m!478191 () Bool)

(assert (=> b!496821 m!478191))

(declare-fun m!478193 () Bool)

(assert (=> b!496821 m!478193))

(declare-fun m!478195 () Bool)

(assert (=> b!496821 m!478195))

(assert (=> b!496821 m!478187))

(assert (=> b!496821 m!478191))

(declare-fun m!478197 () Bool)

(assert (=> b!496821 m!478197))

(assert (=> b!496821 m!478191))

(declare-fun m!478199 () Bool)

(assert (=> b!496821 m!478199))

(assert (=> b!496821 m!478187))

(declare-fun m!478201 () Bool)

(assert (=> b!496821 m!478201))

(assert (=> b!496826 m!478191))

(assert (=> b!496826 m!478191))

(declare-fun m!478203 () Bool)

(assert (=> b!496826 m!478203))

(declare-fun m!478205 () Bool)

(assert (=> b!496820 m!478205))

(assert (=> b!496820 m!478191))

(declare-fun m!478207 () Bool)

(assert (=> b!496824 m!478207))

(declare-fun m!478209 () Bool)

(assert (=> b!496828 m!478209))

(assert (=> b!496829 m!478191))

(assert (=> b!496829 m!478191))

(declare-fun m!478211 () Bool)

(assert (=> b!496829 m!478211))

(declare-fun m!478213 () Bool)

(assert (=> b!496823 m!478213))

(declare-fun m!478215 () Bool)

(assert (=> b!496825 m!478215))

(check-sat (not b!496823) (not b!496825) (not b!496821) (not b!496827) (not b!496828) (not b!496826) (not b!496829) (not start!45264) (not b!496824))
(check-sat)
