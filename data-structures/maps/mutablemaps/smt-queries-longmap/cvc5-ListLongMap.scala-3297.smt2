; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45736 () Bool)

(assert start!45736)

(declare-fun b!505246 () Bool)

(declare-fun e!295778 () Bool)

(assert (=> b!505246 (= e!295778 true)))

(declare-datatypes ((array!32452 0))(
  ( (array!32453 (arr!15603 (Array (_ BitVec 32) (_ BitVec 64))) (size!15967 (_ BitVec 32))) )
))
(declare-fun lt!230321 () array!32452)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4077 0))(
  ( (MissingZero!4077 (index!18496 (_ BitVec 32))) (Found!4077 (index!18497 (_ BitVec 32))) (Intermediate!4077 (undefined!4889 Bool) (index!18498 (_ BitVec 32)) (x!47537 (_ BitVec 32))) (Undefined!4077) (MissingVacant!4077 (index!18499 (_ BitVec 32))) )
))
(declare-fun lt!230332 () SeekEntryResult!4077)

(declare-fun lt!230330 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32452 (_ BitVec 32)) SeekEntryResult!4077)

(assert (=> b!505246 (= (seekEntryOrOpen!0 lt!230330 lt!230321 mask!3524) lt!230332)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun a!3235 () array!32452)

(declare-fun lt!230327 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!15398 0))(
  ( (Unit!15399) )
))
(declare-fun lt!230322 () Unit!15398)

(declare-fun lt!230325 () SeekEntryResult!4077)

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15398)

(assert (=> b!505246 (= lt!230322 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230327 #b00000000000000000000000000000000 (index!18498 lt!230325) (x!47537 lt!230325) mask!3524))))

(declare-fun b!505247 () Bool)

(declare-fun e!295775 () Bool)

(assert (=> b!505247 (= e!295775 false)))

(declare-fun res!306467 () Bool)

(declare-fun e!295783 () Bool)

(assert (=> start!45736 (=> (not res!306467) (not e!295783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45736 (= res!306467 (validMask!0 mask!3524))))

(assert (=> start!45736 e!295783))

(assert (=> start!45736 true))

(declare-fun array_inv!11377 (array!32452) Bool)

(assert (=> start!45736 (array_inv!11377 a!3235)))

(declare-fun b!505248 () Bool)

(declare-fun res!306464 () Bool)

(assert (=> b!505248 (=> (not res!306464) (not e!295783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505248 (= res!306464 (validKeyInArray!0 (select (arr!15603 a!3235) j!176)))))

(declare-fun b!505249 () Bool)

(declare-fun e!295781 () Bool)

(assert (=> b!505249 (= e!295783 e!295781)))

(declare-fun res!306471 () Bool)

(assert (=> b!505249 (=> (not res!306471) (not e!295781))))

(declare-fun lt!230324 () SeekEntryResult!4077)

(assert (=> b!505249 (= res!306471 (or (= lt!230324 (MissingZero!4077 i!1204)) (= lt!230324 (MissingVacant!4077 i!1204))))))

(assert (=> b!505249 (= lt!230324 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505250 () Bool)

(declare-fun e!295780 () Unit!15398)

(declare-fun Unit!15400 () Unit!15398)

(assert (=> b!505250 (= e!295780 Unit!15400)))

(declare-fun lt!230333 () Unit!15398)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15398)

(assert (=> b!505250 (= lt!230333 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230327 #b00000000000000000000000000000000 (index!18498 lt!230325) (x!47537 lt!230325) mask!3524))))

(declare-fun res!306461 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32452 (_ BitVec 32)) SeekEntryResult!4077)

(assert (=> b!505250 (= res!306461 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230327 lt!230330 lt!230321 mask!3524) (Intermediate!4077 false (index!18498 lt!230325) (x!47537 lt!230325))))))

(assert (=> b!505250 (=> (not res!306461) (not e!295775))))

(assert (=> b!505250 e!295775))

(declare-fun b!505251 () Bool)

(declare-fun res!306463 () Bool)

(assert (=> b!505251 (=> (not res!306463) (not e!295783))))

(assert (=> b!505251 (= res!306463 (and (= (size!15967 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15967 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15967 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505252 () Bool)

(declare-fun e!295777 () Bool)

(assert (=> b!505252 (= e!295781 (not e!295777))))

(declare-fun res!306462 () Bool)

(assert (=> b!505252 (=> res!306462 e!295777)))

(declare-fun lt!230329 () SeekEntryResult!4077)

(assert (=> b!505252 (= res!306462 (or (= lt!230325 lt!230329) (undefined!4889 lt!230325) (not (is-Intermediate!4077 lt!230325))))))

(declare-fun lt!230323 () (_ BitVec 32))

(assert (=> b!505252 (= lt!230329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230323 lt!230330 lt!230321 mask!3524))))

(assert (=> b!505252 (= lt!230325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230327 (select (arr!15603 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505252 (= lt!230323 (toIndex!0 lt!230330 mask!3524))))

(assert (=> b!505252 (= lt!230330 (select (store (arr!15603 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505252 (= lt!230327 (toIndex!0 (select (arr!15603 a!3235) j!176) mask!3524))))

(assert (=> b!505252 (= lt!230321 (array!32453 (store (arr!15603 a!3235) i!1204 k!2280) (size!15967 a!3235)))))

(assert (=> b!505252 (= lt!230332 (Found!4077 j!176))))

(declare-fun e!295776 () Bool)

(assert (=> b!505252 e!295776))

(declare-fun res!306459 () Bool)

(assert (=> b!505252 (=> (not res!306459) (not e!295776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32452 (_ BitVec 32)) Bool)

(assert (=> b!505252 (= res!306459 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230331 () Unit!15398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32452 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15398)

(assert (=> b!505252 (= lt!230331 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505253 () Bool)

(declare-fun res!306470 () Bool)

(assert (=> b!505253 (=> (not res!306470) (not e!295783))))

(declare-fun arrayContainsKey!0 (array!32452 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505253 (= res!306470 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505254 () Bool)

(assert (=> b!505254 (= e!295777 e!295778)))

(declare-fun res!306468 () Bool)

(assert (=> b!505254 (=> res!306468 e!295778)))

(assert (=> b!505254 (= res!306468 (or (bvsgt (x!47537 lt!230325) #b01111111111111111111111111111110) (bvslt lt!230327 #b00000000000000000000000000000000) (bvsge lt!230327 (size!15967 a!3235)) (bvslt (index!18498 lt!230325) #b00000000000000000000000000000000) (bvsge (index!18498 lt!230325) (size!15967 a!3235)) (not (= lt!230325 (Intermediate!4077 false (index!18498 lt!230325) (x!47537 lt!230325))))))))

(assert (=> b!505254 (= (index!18498 lt!230325) i!1204)))

(declare-fun lt!230326 () Unit!15398)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32452 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15398)

(assert (=> b!505254 (= lt!230326 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230327 #b00000000000000000000000000000000 (index!18498 lt!230325) (x!47537 lt!230325) mask!3524))))

(assert (=> b!505254 (and (or (= (select (arr!15603 a!3235) (index!18498 lt!230325)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15603 a!3235) (index!18498 lt!230325)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15603 a!3235) (index!18498 lt!230325)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15603 a!3235) (index!18498 lt!230325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230328 () Unit!15398)

(assert (=> b!505254 (= lt!230328 e!295780)))

(declare-fun c!59672 () Bool)

(assert (=> b!505254 (= c!59672 (= (select (arr!15603 a!3235) (index!18498 lt!230325)) (select (arr!15603 a!3235) j!176)))))

(assert (=> b!505254 (and (bvslt (x!47537 lt!230325) #b01111111111111111111111111111110) (or (= (select (arr!15603 a!3235) (index!18498 lt!230325)) (select (arr!15603 a!3235) j!176)) (= (select (arr!15603 a!3235) (index!18498 lt!230325)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15603 a!3235) (index!18498 lt!230325)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505255 () Bool)

(assert (=> b!505255 (= e!295776 (= (seekEntryOrOpen!0 (select (arr!15603 a!3235) j!176) a!3235 mask!3524) (Found!4077 j!176)))))

(declare-fun b!505256 () Bool)

(declare-fun Unit!15401 () Unit!15398)

(assert (=> b!505256 (= e!295780 Unit!15401)))

(declare-fun b!505257 () Bool)

(declare-fun res!306469 () Bool)

(assert (=> b!505257 (=> (not res!306469) (not e!295783))))

(assert (=> b!505257 (= res!306469 (validKeyInArray!0 k!2280))))

(declare-fun b!505258 () Bool)

(declare-fun res!306473 () Bool)

(assert (=> b!505258 (=> res!306473 e!295778)))

(declare-fun e!295782 () Bool)

(assert (=> b!505258 (= res!306473 e!295782)))

(declare-fun res!306465 () Bool)

(assert (=> b!505258 (=> (not res!306465) (not e!295782))))

(assert (=> b!505258 (= res!306465 (bvsgt #b00000000000000000000000000000000 (x!47537 lt!230325)))))

(declare-fun b!505259 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32452 (_ BitVec 32)) SeekEntryResult!4077)

(assert (=> b!505259 (= e!295782 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230327 (index!18498 lt!230325) (select (arr!15603 a!3235) j!176) a!3235 mask!3524) lt!230332)))))

(declare-fun b!505260 () Bool)

(declare-fun res!306472 () Bool)

(assert (=> b!505260 (=> (not res!306472) (not e!295781))))

(assert (=> b!505260 (= res!306472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505261 () Bool)

(declare-fun res!306460 () Bool)

(assert (=> b!505261 (=> (not res!306460) (not e!295781))))

(declare-datatypes ((List!9814 0))(
  ( (Nil!9811) (Cons!9810 (h!10687 (_ BitVec 64)) (t!16050 List!9814)) )
))
(declare-fun arrayNoDuplicates!0 (array!32452 (_ BitVec 32) List!9814) Bool)

(assert (=> b!505261 (= res!306460 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9811))))

(declare-fun b!505262 () Bool)

(declare-fun res!306466 () Bool)

(assert (=> b!505262 (=> res!306466 e!295778)))

(assert (=> b!505262 (= res!306466 (not (= lt!230329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230327 lt!230330 lt!230321 mask!3524))))))

(assert (= (and start!45736 res!306467) b!505251))

(assert (= (and b!505251 res!306463) b!505248))

(assert (= (and b!505248 res!306464) b!505257))

(assert (= (and b!505257 res!306469) b!505253))

(assert (= (and b!505253 res!306470) b!505249))

(assert (= (and b!505249 res!306471) b!505260))

(assert (= (and b!505260 res!306472) b!505261))

(assert (= (and b!505261 res!306460) b!505252))

(assert (= (and b!505252 res!306459) b!505255))

(assert (= (and b!505252 (not res!306462)) b!505254))

(assert (= (and b!505254 c!59672) b!505250))

(assert (= (and b!505254 (not c!59672)) b!505256))

(assert (= (and b!505250 res!306461) b!505247))

(assert (= (and b!505254 (not res!306468)) b!505258))

(assert (= (and b!505258 res!306465) b!505259))

(assert (= (and b!505258 (not res!306473)) b!505262))

(assert (= (and b!505262 (not res!306466)) b!505246))

(declare-fun m!485947 () Bool)

(assert (=> b!505253 m!485947))

(declare-fun m!485949 () Bool)

(assert (=> b!505261 m!485949))

(declare-fun m!485951 () Bool)

(assert (=> b!505249 m!485951))

(declare-fun m!485953 () Bool)

(assert (=> b!505254 m!485953))

(declare-fun m!485955 () Bool)

(assert (=> b!505254 m!485955))

(declare-fun m!485957 () Bool)

(assert (=> b!505254 m!485957))

(declare-fun m!485959 () Bool)

(assert (=> start!45736 m!485959))

(declare-fun m!485961 () Bool)

(assert (=> start!45736 m!485961))

(declare-fun m!485963 () Bool)

(assert (=> b!505262 m!485963))

(declare-fun m!485965 () Bool)

(assert (=> b!505246 m!485965))

(declare-fun m!485967 () Bool)

(assert (=> b!505246 m!485967))

(declare-fun m!485969 () Bool)

(assert (=> b!505257 m!485969))

(assert (=> b!505248 m!485957))

(assert (=> b!505248 m!485957))

(declare-fun m!485971 () Bool)

(assert (=> b!505248 m!485971))

(declare-fun m!485973 () Bool)

(assert (=> b!505252 m!485973))

(declare-fun m!485975 () Bool)

(assert (=> b!505252 m!485975))

(declare-fun m!485977 () Bool)

(assert (=> b!505252 m!485977))

(assert (=> b!505252 m!485957))

(declare-fun m!485979 () Bool)

(assert (=> b!505252 m!485979))

(declare-fun m!485981 () Bool)

(assert (=> b!505252 m!485981))

(assert (=> b!505252 m!485957))

(declare-fun m!485983 () Bool)

(assert (=> b!505252 m!485983))

(declare-fun m!485985 () Bool)

(assert (=> b!505252 m!485985))

(assert (=> b!505252 m!485957))

(declare-fun m!485987 () Bool)

(assert (=> b!505252 m!485987))

(declare-fun m!485989 () Bool)

(assert (=> b!505250 m!485989))

(assert (=> b!505250 m!485963))

(declare-fun m!485991 () Bool)

(assert (=> b!505260 m!485991))

(assert (=> b!505259 m!485957))

(assert (=> b!505259 m!485957))

(declare-fun m!485993 () Bool)

(assert (=> b!505259 m!485993))

(assert (=> b!505255 m!485957))

(assert (=> b!505255 m!485957))

(declare-fun m!485995 () Bool)

(assert (=> b!505255 m!485995))

(push 1)

