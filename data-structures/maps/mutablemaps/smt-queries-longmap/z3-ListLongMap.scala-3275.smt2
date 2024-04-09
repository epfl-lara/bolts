; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45606 () Bool)

(assert start!45606)

(declare-fun b!501931 () Bool)

(declare-fun res!303547 () Bool)

(declare-fun e!294026 () Bool)

(assert (=> b!501931 (=> (not res!303547) (not e!294026))))

(declare-datatypes ((array!32322 0))(
  ( (array!32323 (arr!15538 (Array (_ BitVec 32) (_ BitVec 64))) (size!15902 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32322)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!501931 (= res!303547 (validKeyInArray!0 (select (arr!15538 a!3235) j!176)))))

(declare-fun b!501932 () Bool)

(declare-fun res!303538 () Bool)

(assert (=> b!501932 (=> (not res!303538) (not e!294026))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!501932 (= res!303538 (validKeyInArray!0 k0!2280))))

(declare-fun b!501933 () Bool)

(declare-fun e!294027 () Bool)

(declare-fun e!294025 () Bool)

(assert (=> b!501933 (= e!294027 e!294025)))

(declare-fun res!303539 () Bool)

(assert (=> b!501933 (=> res!303539 e!294025)))

(declare-datatypes ((SeekEntryResult!4012 0))(
  ( (MissingZero!4012 (index!18236 (_ BitVec 32))) (Found!4012 (index!18237 (_ BitVec 32))) (Intermediate!4012 (undefined!4824 Bool) (index!18238 (_ BitVec 32)) (x!47296 (_ BitVec 32))) (Undefined!4012) (MissingVacant!4012 (index!18239 (_ BitVec 32))) )
))
(declare-fun lt!228139 () SeekEntryResult!4012)

(declare-fun lt!228137 () (_ BitVec 32))

(assert (=> b!501933 (= res!303539 (or (bvsgt (x!47296 lt!228139) #b01111111111111111111111111111110) (bvslt lt!228137 #b00000000000000000000000000000000) (bvsge lt!228137 (size!15902 a!3235)) (bvslt (index!18238 lt!228139) #b00000000000000000000000000000000) (bvsge (index!18238 lt!228139) (size!15902 a!3235)) (not (= lt!228139 (Intermediate!4012 false (index!18238 lt!228139) (x!47296 lt!228139))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!501933 (= (index!18238 lt!228139) i!1204)))

(declare-datatypes ((Unit!15138 0))(
  ( (Unit!15139) )
))
(declare-fun lt!228136 () Unit!15138)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32322 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15138)

(assert (=> b!501933 (= lt!228136 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228137 #b00000000000000000000000000000000 (index!18238 lt!228139) (x!47296 lt!228139) mask!3524))))

(assert (=> b!501933 (and (or (= (select (arr!15538 a!3235) (index!18238 lt!228139)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15538 a!3235) (index!18238 lt!228139)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15538 a!3235) (index!18238 lt!228139)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15538 a!3235) (index!18238 lt!228139)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228142 () Unit!15138)

(declare-fun e!294028 () Unit!15138)

(assert (=> b!501933 (= lt!228142 e!294028)))

(declare-fun c!59477 () Bool)

(assert (=> b!501933 (= c!59477 (= (select (arr!15538 a!3235) (index!18238 lt!228139)) (select (arr!15538 a!3235) j!176)))))

(assert (=> b!501933 (and (bvslt (x!47296 lt!228139) #b01111111111111111111111111111110) (or (= (select (arr!15538 a!3235) (index!18238 lt!228139)) (select (arr!15538 a!3235) j!176)) (= (select (arr!15538 a!3235) (index!18238 lt!228139)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15538 a!3235) (index!18238 lt!228139)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!501934 () Bool)

(declare-fun Unit!15140 () Unit!15138)

(assert (=> b!501934 (= e!294028 Unit!15140)))

(declare-fun b!501935 () Bool)

(declare-fun e!294024 () Bool)

(assert (=> b!501935 (= e!294024 false)))

(declare-fun res!303543 () Bool)

(assert (=> start!45606 (=> (not res!303543) (not e!294026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45606 (= res!303543 (validMask!0 mask!3524))))

(assert (=> start!45606 e!294026))

(assert (=> start!45606 true))

(declare-fun array_inv!11312 (array!32322) Bool)

(assert (=> start!45606 (array_inv!11312 a!3235)))

(declare-fun b!501936 () Bool)

(declare-fun e!294021 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32322 (_ BitVec 32)) SeekEntryResult!4012)

(assert (=> b!501936 (= e!294021 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228137 (index!18238 lt!228139) (select (arr!15538 a!3235) j!176) a!3235 mask!3524) (Found!4012 j!176))))))

(declare-fun b!501937 () Bool)

(declare-fun res!303534 () Bool)

(assert (=> b!501937 (=> res!303534 e!294027)))

(get-info :version)

(assert (=> b!501937 (= res!303534 (or (undefined!4824 lt!228139) (not ((_ is Intermediate!4012) lt!228139))))))

(declare-fun b!501938 () Bool)

(declare-fun e!294020 () Bool)

(assert (=> b!501938 (= e!294026 e!294020)))

(declare-fun res!303545 () Bool)

(assert (=> b!501938 (=> (not res!303545) (not e!294020))))

(declare-fun lt!228144 () SeekEntryResult!4012)

(assert (=> b!501938 (= res!303545 (or (= lt!228144 (MissingZero!4012 i!1204)) (= lt!228144 (MissingVacant!4012 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32322 (_ BitVec 32)) SeekEntryResult!4012)

(assert (=> b!501938 (= lt!228144 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!501939 () Bool)

(declare-fun res!303541 () Bool)

(assert (=> b!501939 (=> (not res!303541) (not e!294026))))

(declare-fun arrayContainsKey!0 (array!32322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!501939 (= res!303541 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!501940 () Bool)

(declare-fun res!303546 () Bool)

(assert (=> b!501940 (=> (not res!303546) (not e!294020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32322 (_ BitVec 32)) Bool)

(assert (=> b!501940 (= res!303546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!501941 () Bool)

(declare-fun res!303544 () Bool)

(assert (=> b!501941 (=> (not res!303544) (not e!294026))))

(assert (=> b!501941 (= res!303544 (and (= (size!15902 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15902 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15902 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!501942 () Bool)

(assert (=> b!501942 (= e!294020 (not e!294027))))

(declare-fun res!303537 () Bool)

(assert (=> b!501942 (=> res!303537 e!294027)))

(declare-fun lt!228146 () array!32322)

(declare-fun lt!228141 () (_ BitVec 32))

(declare-fun lt!228140 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32322 (_ BitVec 32)) SeekEntryResult!4012)

(assert (=> b!501942 (= res!303537 (= lt!228139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228141 lt!228140 lt!228146 mask!3524)))))

(assert (=> b!501942 (= lt!228139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228137 (select (arr!15538 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!501942 (= lt!228141 (toIndex!0 lt!228140 mask!3524))))

(assert (=> b!501942 (= lt!228140 (select (store (arr!15538 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!501942 (= lt!228137 (toIndex!0 (select (arr!15538 a!3235) j!176) mask!3524))))

(assert (=> b!501942 (= lt!228146 (array!32323 (store (arr!15538 a!3235) i!1204 k0!2280) (size!15902 a!3235)))))

(declare-fun e!294022 () Bool)

(assert (=> b!501942 e!294022))

(declare-fun res!303535 () Bool)

(assert (=> b!501942 (=> (not res!303535) (not e!294022))))

(assert (=> b!501942 (= res!303535 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228138 () Unit!15138)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15138)

(assert (=> b!501942 (= lt!228138 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!501943 () Bool)

(declare-fun res!303536 () Bool)

(assert (=> b!501943 (=> res!303536 e!294025)))

(assert (=> b!501943 (= res!303536 e!294021)))

(declare-fun res!303542 () Bool)

(assert (=> b!501943 (=> (not res!303542) (not e!294021))))

(assert (=> b!501943 (= res!303542 (bvsgt #b00000000000000000000000000000000 (x!47296 lt!228139)))))

(declare-fun b!501944 () Bool)

(assert (=> b!501944 (= e!294025 true)))

(declare-fun lt!228143 () SeekEntryResult!4012)

(assert (=> b!501944 (= lt!228143 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228137 lt!228140 lt!228146 mask!3524))))

(declare-fun b!501945 () Bool)

(declare-fun Unit!15141 () Unit!15138)

(assert (=> b!501945 (= e!294028 Unit!15141)))

(declare-fun lt!228145 () Unit!15138)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32322 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15138)

(assert (=> b!501945 (= lt!228145 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228137 #b00000000000000000000000000000000 (index!18238 lt!228139) (x!47296 lt!228139) mask!3524))))

(declare-fun res!303548 () Bool)

(assert (=> b!501945 (= res!303548 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228137 lt!228140 lt!228146 mask!3524) (Intermediate!4012 false (index!18238 lt!228139) (x!47296 lt!228139))))))

(assert (=> b!501945 (=> (not res!303548) (not e!294024))))

(assert (=> b!501945 e!294024))

(declare-fun b!501946 () Bool)

(assert (=> b!501946 (= e!294022 (= (seekEntryOrOpen!0 (select (arr!15538 a!3235) j!176) a!3235 mask!3524) (Found!4012 j!176)))))

(declare-fun b!501947 () Bool)

(declare-fun res!303540 () Bool)

(assert (=> b!501947 (=> (not res!303540) (not e!294020))))

(declare-datatypes ((List!9749 0))(
  ( (Nil!9746) (Cons!9745 (h!10622 (_ BitVec 64)) (t!15985 List!9749)) )
))
(declare-fun arrayNoDuplicates!0 (array!32322 (_ BitVec 32) List!9749) Bool)

(assert (=> b!501947 (= res!303540 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9746))))

(assert (= (and start!45606 res!303543) b!501941))

(assert (= (and b!501941 res!303544) b!501931))

(assert (= (and b!501931 res!303547) b!501932))

(assert (= (and b!501932 res!303538) b!501939))

(assert (= (and b!501939 res!303541) b!501938))

(assert (= (and b!501938 res!303545) b!501940))

(assert (= (and b!501940 res!303546) b!501947))

(assert (= (and b!501947 res!303540) b!501942))

(assert (= (and b!501942 res!303535) b!501946))

(assert (= (and b!501942 (not res!303537)) b!501937))

(assert (= (and b!501937 (not res!303534)) b!501933))

(assert (= (and b!501933 c!59477) b!501945))

(assert (= (and b!501933 (not c!59477)) b!501934))

(assert (= (and b!501945 res!303548) b!501935))

(assert (= (and b!501933 (not res!303539)) b!501943))

(assert (= (and b!501943 res!303542) b!501936))

(assert (= (and b!501943 (not res!303536)) b!501944))

(declare-fun m!482933 () Bool)

(assert (=> b!501939 m!482933))

(declare-fun m!482935 () Bool)

(assert (=> b!501944 m!482935))

(declare-fun m!482937 () Bool)

(assert (=> b!501932 m!482937))

(declare-fun m!482939 () Bool)

(assert (=> b!501946 m!482939))

(assert (=> b!501946 m!482939))

(declare-fun m!482941 () Bool)

(assert (=> b!501946 m!482941))

(assert (=> b!501936 m!482939))

(assert (=> b!501936 m!482939))

(declare-fun m!482943 () Bool)

(assert (=> b!501936 m!482943))

(declare-fun m!482945 () Bool)

(assert (=> b!501940 m!482945))

(declare-fun m!482947 () Bool)

(assert (=> b!501947 m!482947))

(declare-fun m!482949 () Bool)

(assert (=> b!501933 m!482949))

(declare-fun m!482951 () Bool)

(assert (=> b!501933 m!482951))

(assert (=> b!501933 m!482939))

(declare-fun m!482953 () Bool)

(assert (=> b!501938 m!482953))

(assert (=> b!501931 m!482939))

(assert (=> b!501931 m!482939))

(declare-fun m!482955 () Bool)

(assert (=> b!501931 m!482955))

(declare-fun m!482957 () Bool)

(assert (=> b!501945 m!482957))

(assert (=> b!501945 m!482935))

(declare-fun m!482959 () Bool)

(assert (=> b!501942 m!482959))

(declare-fun m!482961 () Bool)

(assert (=> b!501942 m!482961))

(declare-fun m!482963 () Bool)

(assert (=> b!501942 m!482963))

(declare-fun m!482965 () Bool)

(assert (=> b!501942 m!482965))

(assert (=> b!501942 m!482939))

(declare-fun m!482967 () Bool)

(assert (=> b!501942 m!482967))

(declare-fun m!482969 () Bool)

(assert (=> b!501942 m!482969))

(assert (=> b!501942 m!482939))

(declare-fun m!482971 () Bool)

(assert (=> b!501942 m!482971))

(assert (=> b!501942 m!482939))

(declare-fun m!482973 () Bool)

(assert (=> b!501942 m!482973))

(declare-fun m!482975 () Bool)

(assert (=> start!45606 m!482975))

(declare-fun m!482977 () Bool)

(assert (=> start!45606 m!482977))

(check-sat (not b!501932) (not b!501942) (not b!501946) (not start!45606) (not b!501933) (not b!501940) (not b!501938) (not b!501939) (not b!501931) (not b!501947) (not b!501936) (not b!501944) (not b!501945))
(check-sat)
