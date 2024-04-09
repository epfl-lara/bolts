; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45656 () Bool)

(assert start!45656)

(declare-fun b!503206 () Bool)

(declare-fun e!294697 () Bool)

(assert (=> b!503206 (= e!294697 false)))

(declare-fun b!503207 () Bool)

(declare-fun e!294703 () Bool)

(declare-datatypes ((array!32372 0))(
  ( (array!32373 (arr!15563 (Array (_ BitVec 32) (_ BitVec 64))) (size!15927 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32372)

(declare-datatypes ((SeekEntryResult!4037 0))(
  ( (MissingZero!4037 (index!18336 (_ BitVec 32))) (Found!4037 (index!18337 (_ BitVec 32))) (Intermediate!4037 (undefined!4849 Bool) (index!18338 (_ BitVec 32)) (x!47385 (_ BitVec 32))) (Undefined!4037) (MissingVacant!4037 (index!18339 (_ BitVec 32))) )
))
(declare-fun lt!228964 () SeekEntryResult!4037)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228969 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32372 (_ BitVec 32)) SeekEntryResult!4037)

(assert (=> b!503207 (= e!294703 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228969 (index!18338 lt!228964) (select (arr!15563 a!3235) j!176) a!3235 mask!3524) (Found!4037 j!176))))))

(declare-fun res!304662 () Bool)

(declare-fun e!294702 () Bool)

(assert (=> start!45656 (=> (not res!304662) (not e!294702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45656 (= res!304662 (validMask!0 mask!3524))))

(assert (=> start!45656 e!294702))

(assert (=> start!45656 true))

(declare-fun array_inv!11337 (array!32372) Bool)

(assert (=> start!45656 (array_inv!11337 a!3235)))

(declare-fun b!503208 () Bool)

(declare-fun e!294695 () Bool)

(assert (=> b!503208 (= e!294695 true)))

(declare-fun lt!228971 () (_ BitVec 64))

(declare-fun lt!228962 () SeekEntryResult!4037)

(declare-fun lt!228963 () array!32372)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32372 (_ BitVec 32)) SeekEntryResult!4037)

(assert (=> b!503208 (= lt!228962 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228969 lt!228971 lt!228963 mask!3524))))

(declare-fun b!503209 () Bool)

(declare-fun e!294701 () Bool)

(assert (=> b!503209 (= e!294702 e!294701)))

(declare-fun res!304672 () Bool)

(assert (=> b!503209 (=> (not res!304672) (not e!294701))))

(declare-fun lt!228966 () SeekEntryResult!4037)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503209 (= res!304672 (or (= lt!228966 (MissingZero!4037 i!1204)) (= lt!228966 (MissingVacant!4037 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32372 (_ BitVec 32)) SeekEntryResult!4037)

(assert (=> b!503209 (= lt!228966 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503210 () Bool)

(declare-fun e!294696 () Bool)

(assert (=> b!503210 (= e!294701 (not e!294696))))

(declare-fun res!304664 () Bool)

(assert (=> b!503210 (=> res!304664 e!294696)))

(declare-fun lt!228967 () (_ BitVec 32))

(assert (=> b!503210 (= res!304664 (= lt!228964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228967 lt!228971 lt!228963 mask!3524)))))

(assert (=> b!503210 (= lt!228964 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228969 (select (arr!15563 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503210 (= lt!228967 (toIndex!0 lt!228971 mask!3524))))

(assert (=> b!503210 (= lt!228971 (select (store (arr!15563 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503210 (= lt!228969 (toIndex!0 (select (arr!15563 a!3235) j!176) mask!3524))))

(assert (=> b!503210 (= lt!228963 (array!32373 (store (arr!15563 a!3235) i!1204 k!2280) (size!15927 a!3235)))))

(declare-fun e!294698 () Bool)

(assert (=> b!503210 e!294698))

(declare-fun res!304666 () Bool)

(assert (=> b!503210 (=> (not res!304666) (not e!294698))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32372 (_ BitVec 32)) Bool)

(assert (=> b!503210 (= res!304666 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15238 0))(
  ( (Unit!15239) )
))
(declare-fun lt!228965 () Unit!15238)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32372 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15238)

(assert (=> b!503210 (= lt!228965 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503211 () Bool)

(declare-fun res!304659 () Bool)

(assert (=> b!503211 (=> res!304659 e!294696)))

(assert (=> b!503211 (= res!304659 (or (undefined!4849 lt!228964) (not (is-Intermediate!4037 lt!228964))))))

(declare-fun b!503212 () Bool)

(declare-fun res!304670 () Bool)

(assert (=> b!503212 (=> (not res!304670) (not e!294702))))

(assert (=> b!503212 (= res!304670 (and (= (size!15927 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15927 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15927 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503213 () Bool)

(declare-fun res!304665 () Bool)

(assert (=> b!503213 (=> (not res!304665) (not e!294701))))

(assert (=> b!503213 (= res!304665 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503214 () Bool)

(declare-fun res!304673 () Bool)

(assert (=> b!503214 (=> (not res!304673) (not e!294701))))

(declare-datatypes ((List!9774 0))(
  ( (Nil!9771) (Cons!9770 (h!10647 (_ BitVec 64)) (t!16010 List!9774)) )
))
(declare-fun arrayNoDuplicates!0 (array!32372 (_ BitVec 32) List!9774) Bool)

(assert (=> b!503214 (= res!304673 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9771))))

(declare-fun b!503215 () Bool)

(declare-fun res!304660 () Bool)

(assert (=> b!503215 (=> (not res!304660) (not e!294702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503215 (= res!304660 (validKeyInArray!0 k!2280))))

(declare-fun b!503216 () Bool)

(declare-fun e!294699 () Unit!15238)

(declare-fun Unit!15240 () Unit!15238)

(assert (=> b!503216 (= e!294699 Unit!15240)))

(declare-fun b!503217 () Bool)

(assert (=> b!503217 (= e!294698 (= (seekEntryOrOpen!0 (select (arr!15563 a!3235) j!176) a!3235 mask!3524) (Found!4037 j!176)))))

(declare-fun b!503218 () Bool)

(declare-fun Unit!15241 () Unit!15238)

(assert (=> b!503218 (= e!294699 Unit!15241)))

(declare-fun lt!228968 () Unit!15238)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32372 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15238)

(assert (=> b!503218 (= lt!228968 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228969 #b00000000000000000000000000000000 (index!18338 lt!228964) (x!47385 lt!228964) mask!3524))))

(declare-fun res!304671 () Bool)

(assert (=> b!503218 (= res!304671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228969 lt!228971 lt!228963 mask!3524) (Intermediate!4037 false (index!18338 lt!228964) (x!47385 lt!228964))))))

(assert (=> b!503218 (=> (not res!304671) (not e!294697))))

(assert (=> b!503218 e!294697))

(declare-fun b!503219 () Bool)

(declare-fun res!304667 () Bool)

(assert (=> b!503219 (=> (not res!304667) (not e!294702))))

(declare-fun arrayContainsKey!0 (array!32372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503219 (= res!304667 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503220 () Bool)

(declare-fun res!304661 () Bool)

(assert (=> b!503220 (=> (not res!304661) (not e!294702))))

(assert (=> b!503220 (= res!304661 (validKeyInArray!0 (select (arr!15563 a!3235) j!176)))))

(declare-fun b!503221 () Bool)

(assert (=> b!503221 (= e!294696 e!294695)))

(declare-fun res!304668 () Bool)

(assert (=> b!503221 (=> res!304668 e!294695)))

(assert (=> b!503221 (= res!304668 (or (bvsgt (x!47385 lt!228964) #b01111111111111111111111111111110) (bvslt lt!228969 #b00000000000000000000000000000000) (bvsge lt!228969 (size!15927 a!3235)) (bvslt (index!18338 lt!228964) #b00000000000000000000000000000000) (bvsge (index!18338 lt!228964) (size!15927 a!3235)) (not (= lt!228964 (Intermediate!4037 false (index!18338 lt!228964) (x!47385 lt!228964))))))))

(assert (=> b!503221 (= (index!18338 lt!228964) i!1204)))

(declare-fun lt!228970 () Unit!15238)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32372 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15238)

(assert (=> b!503221 (= lt!228970 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228969 #b00000000000000000000000000000000 (index!18338 lt!228964) (x!47385 lt!228964) mask!3524))))

(assert (=> b!503221 (and (or (= (select (arr!15563 a!3235) (index!18338 lt!228964)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15563 a!3235) (index!18338 lt!228964)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15563 a!3235) (index!18338 lt!228964)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15563 a!3235) (index!18338 lt!228964)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228961 () Unit!15238)

(assert (=> b!503221 (= lt!228961 e!294699)))

(declare-fun c!59552 () Bool)

(assert (=> b!503221 (= c!59552 (= (select (arr!15563 a!3235) (index!18338 lt!228964)) (select (arr!15563 a!3235) j!176)))))

(assert (=> b!503221 (and (bvslt (x!47385 lt!228964) #b01111111111111111111111111111110) (or (= (select (arr!15563 a!3235) (index!18338 lt!228964)) (select (arr!15563 a!3235) j!176)) (= (select (arr!15563 a!3235) (index!18338 lt!228964)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15563 a!3235) (index!18338 lt!228964)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503222 () Bool)

(declare-fun res!304669 () Bool)

(assert (=> b!503222 (=> res!304669 e!294695)))

(assert (=> b!503222 (= res!304669 e!294703)))

(declare-fun res!304663 () Bool)

(assert (=> b!503222 (=> (not res!304663) (not e!294703))))

(assert (=> b!503222 (= res!304663 (bvsgt #b00000000000000000000000000000000 (x!47385 lt!228964)))))

(assert (= (and start!45656 res!304662) b!503212))

(assert (= (and b!503212 res!304670) b!503220))

(assert (= (and b!503220 res!304661) b!503215))

(assert (= (and b!503215 res!304660) b!503219))

(assert (= (and b!503219 res!304667) b!503209))

(assert (= (and b!503209 res!304672) b!503213))

(assert (= (and b!503213 res!304665) b!503214))

(assert (= (and b!503214 res!304673) b!503210))

(assert (= (and b!503210 res!304666) b!503217))

(assert (= (and b!503210 (not res!304664)) b!503211))

(assert (= (and b!503211 (not res!304659)) b!503221))

(assert (= (and b!503221 c!59552) b!503218))

(assert (= (and b!503221 (not c!59552)) b!503216))

(assert (= (and b!503218 res!304671) b!503206))

(assert (= (and b!503221 (not res!304668)) b!503222))

(assert (= (and b!503222 res!304663) b!503207))

(assert (= (and b!503222 (not res!304669)) b!503208))

(declare-fun m!484083 () Bool)

(assert (=> b!503208 m!484083))

(declare-fun m!484085 () Bool)

(assert (=> b!503217 m!484085))

(assert (=> b!503217 m!484085))

(declare-fun m!484087 () Bool)

(assert (=> b!503217 m!484087))

(declare-fun m!484089 () Bool)

(assert (=> b!503215 m!484089))

(declare-fun m!484091 () Bool)

(assert (=> b!503214 m!484091))

(assert (=> b!503220 m!484085))

(assert (=> b!503220 m!484085))

(declare-fun m!484093 () Bool)

(assert (=> b!503220 m!484093))

(declare-fun m!484095 () Bool)

(assert (=> b!503213 m!484095))

(declare-fun m!484097 () Bool)

(assert (=> b!503219 m!484097))

(declare-fun m!484099 () Bool)

(assert (=> start!45656 m!484099))

(declare-fun m!484101 () Bool)

(assert (=> start!45656 m!484101))

(assert (=> b!503207 m!484085))

(assert (=> b!503207 m!484085))

(declare-fun m!484103 () Bool)

(assert (=> b!503207 m!484103))

(declare-fun m!484105 () Bool)

(assert (=> b!503221 m!484105))

(declare-fun m!484107 () Bool)

(assert (=> b!503221 m!484107))

(assert (=> b!503221 m!484085))

(declare-fun m!484109 () Bool)

(assert (=> b!503218 m!484109))

(assert (=> b!503218 m!484083))

(declare-fun m!484111 () Bool)

(assert (=> b!503210 m!484111))

(declare-fun m!484113 () Bool)

(assert (=> b!503210 m!484113))

(declare-fun m!484115 () Bool)

(assert (=> b!503210 m!484115))

(declare-fun m!484117 () Bool)

(assert (=> b!503210 m!484117))

(declare-fun m!484119 () Bool)

(assert (=> b!503210 m!484119))

(declare-fun m!484121 () Bool)

(assert (=> b!503210 m!484121))

(assert (=> b!503210 m!484085))

(declare-fun m!484123 () Bool)

(assert (=> b!503210 m!484123))

(assert (=> b!503210 m!484085))

(assert (=> b!503210 m!484085))

(declare-fun m!484125 () Bool)

(assert (=> b!503210 m!484125))

(declare-fun m!484127 () Bool)

(assert (=> b!503209 m!484127))

(push 1)

