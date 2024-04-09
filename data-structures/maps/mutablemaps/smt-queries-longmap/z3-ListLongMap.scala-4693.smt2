; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65238 () Bool)

(assert start!65238)

(declare-fun b!738570 () Bool)

(declare-fun res!496642 () Bool)

(declare-fun e!413066 () Bool)

(assert (=> b!738570 (=> (not res!496642) (not e!413066))))

(declare-datatypes ((array!41364 0))(
  ( (array!41365 (arr!19792 (Array (_ BitVec 32) (_ BitVec 64))) (size!20213 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41364)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738570 (= res!496642 (validKeyInArray!0 (select (arr!19792 a!3186) j!159)))))

(declare-fun b!738571 () Bool)

(declare-datatypes ((Unit!25214 0))(
  ( (Unit!25215) )
))
(declare-fun e!413062 () Unit!25214)

(declare-fun Unit!25216 () Unit!25214)

(assert (=> b!738571 (= e!413062 Unit!25216)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7399 0))(
  ( (MissingZero!7399 (index!31963 (_ BitVec 32))) (Found!7399 (index!31964 (_ BitVec 32))) (Intermediate!7399 (undefined!8211 Bool) (index!31965 (_ BitVec 32)) (x!62982 (_ BitVec 32))) (Undefined!7399) (MissingVacant!7399 (index!31966 (_ BitVec 32))) )
))
(declare-fun lt!327882 () SeekEntryResult!7399)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41364 (_ BitVec 32)) SeekEntryResult!7399)

(assert (=> b!738571 (= lt!327882 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19792 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327888 () (_ BitVec 32))

(declare-fun lt!327886 () SeekEntryResult!7399)

(assert (=> b!738571 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327888 resIntermediateIndex!5 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327886)))

(declare-fun b!738572 () Bool)

(declare-fun Unit!25217 () Unit!25214)

(assert (=> b!738572 (= e!413062 Unit!25217)))

(declare-fun lt!327889 () SeekEntryResult!7399)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41364 (_ BitVec 32)) SeekEntryResult!7399)

(assert (=> b!738572 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327888 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327889)))

(declare-fun b!738573 () Bool)

(declare-fun e!413057 () Bool)

(assert (=> b!738573 (= e!413057 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327888 resIntermediateIndex!5 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327886)))))

(declare-fun b!738574 () Bool)

(assert (=> b!738574 (= e!413057 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327888 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327889)))))

(declare-fun e!413065 () Bool)

(declare-fun b!738576 () Bool)

(assert (=> b!738576 (= e!413065 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327889))))

(declare-fun b!738577 () Bool)

(declare-fun e!413059 () Bool)

(declare-fun e!413063 () Bool)

(assert (=> b!738577 (= e!413059 e!413063)))

(declare-fun res!496636 () Bool)

(assert (=> b!738577 (=> (not res!496636) (not e!413063))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738577 (= res!496636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19792 a!3186) j!159) mask!3328) (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327889))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738577 (= lt!327889 (Intermediate!7399 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738578 () Bool)

(assert (=> b!738578 (= e!413066 e!413059)))

(declare-fun res!496643 () Bool)

(assert (=> b!738578 (=> (not res!496643) (not e!413059))))

(declare-fun lt!327880 () SeekEntryResult!7399)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738578 (= res!496643 (or (= lt!327880 (MissingZero!7399 i!1173)) (= lt!327880 (MissingVacant!7399 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41364 (_ BitVec 32)) SeekEntryResult!7399)

(assert (=> b!738578 (= lt!327880 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!738579 () Bool)

(declare-fun e!413061 () Bool)

(declare-fun e!413067 () Bool)

(assert (=> b!738579 (= e!413061 e!413067)))

(declare-fun res!496640 () Bool)

(assert (=> b!738579 (=> (not res!496640) (not e!413067))))

(declare-fun lt!327883 () SeekEntryResult!7399)

(assert (=> b!738579 (= res!496640 (= (seekEntryOrOpen!0 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327883))))

(assert (=> b!738579 (= lt!327883 (Found!7399 j!159))))

(declare-fun b!738580 () Bool)

(declare-fun res!496647 () Bool)

(assert (=> b!738580 (=> (not res!496647) (not e!413066))))

(assert (=> b!738580 (= res!496647 (validKeyInArray!0 k0!2102))))

(declare-fun b!738581 () Bool)

(declare-fun e!413058 () Bool)

(assert (=> b!738581 (= e!413063 e!413058)))

(declare-fun res!496646 () Bool)

(assert (=> b!738581 (=> (not res!496646) (not e!413058))))

(declare-fun lt!327881 () SeekEntryResult!7399)

(declare-fun lt!327885 () SeekEntryResult!7399)

(assert (=> b!738581 (= res!496646 (= lt!327881 lt!327885))))

(declare-fun lt!327887 () (_ BitVec 64))

(declare-fun lt!327890 () array!41364)

(assert (=> b!738581 (= lt!327885 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327887 lt!327890 mask!3328))))

(assert (=> b!738581 (= lt!327881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327887 mask!3328) lt!327887 lt!327890 mask!3328))))

(assert (=> b!738581 (= lt!327887 (select (store (arr!19792 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!738581 (= lt!327890 (array!41365 (store (arr!19792 a!3186) i!1173 k0!2102) (size!20213 a!3186)))))

(declare-fun b!738582 () Bool)

(declare-fun res!496644 () Bool)

(assert (=> b!738582 (=> (not res!496644) (not e!413066))))

(assert (=> b!738582 (= res!496644 (and (= (size!20213 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20213 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20213 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738583 () Bool)

(declare-fun res!496633 () Bool)

(assert (=> b!738583 (=> (not res!496633) (not e!413063))))

(assert (=> b!738583 (= res!496633 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19792 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738584 () Bool)

(declare-fun e!413060 () Bool)

(assert (=> b!738584 (= e!413058 (not e!413060))))

(declare-fun res!496650 () Bool)

(assert (=> b!738584 (=> res!496650 e!413060)))

(get-info :version)

(assert (=> b!738584 (= res!496650 (or (not ((_ is Intermediate!7399) lt!327885)) (bvsge x!1131 (x!62982 lt!327885))))))

(assert (=> b!738584 (= lt!327886 (Found!7399 j!159))))

(assert (=> b!738584 e!413061))

(declare-fun res!496648 () Bool)

(assert (=> b!738584 (=> (not res!496648) (not e!413061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41364 (_ BitVec 32)) Bool)

(assert (=> b!738584 (= res!496648 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327878 () Unit!25214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25214)

(assert (=> b!738584 (= lt!327878 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738585 () Bool)

(declare-fun res!496638 () Bool)

(assert (=> b!738585 (=> (not res!496638) (not e!413059))))

(assert (=> b!738585 (= res!496638 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20213 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20213 a!3186))))))

(declare-fun b!738586 () Bool)

(declare-fun res!496645 () Bool)

(assert (=> b!738586 (=> (not res!496645) (not e!413059))))

(declare-datatypes ((List!13847 0))(
  ( (Nil!13844) (Cons!13843 (h!14915 (_ BitVec 64)) (t!20170 List!13847)) )
))
(declare-fun arrayNoDuplicates!0 (array!41364 (_ BitVec 32) List!13847) Bool)

(assert (=> b!738586 (= res!496645 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13844))))

(declare-fun b!738587 () Bool)

(declare-fun res!496639 () Bool)

(declare-fun e!413056 () Bool)

(assert (=> b!738587 (=> res!496639 e!413056)))

(assert (=> b!738587 (= res!496639 e!413057)))

(declare-fun c!81349 () Bool)

(declare-fun lt!327877 () Bool)

(assert (=> b!738587 (= c!81349 lt!327877)))

(declare-fun res!496635 () Bool)

(assert (=> start!65238 (=> (not res!496635) (not e!413066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65238 (= res!496635 (validMask!0 mask!3328))))

(assert (=> start!65238 e!413066))

(assert (=> start!65238 true))

(declare-fun array_inv!15566 (array!41364) Bool)

(assert (=> start!65238 (array_inv!15566 a!3186)))

(declare-fun b!738575 () Bool)

(assert (=> b!738575 (= e!413065 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) (Found!7399 j!159)))))

(declare-fun b!738588 () Bool)

(declare-fun res!496634 () Bool)

(assert (=> b!738588 (=> (not res!496634) (not e!413063))))

(assert (=> b!738588 (= res!496634 e!413065)))

(declare-fun c!81350 () Bool)

(assert (=> b!738588 (= c!81350 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738589 () Bool)

(assert (=> b!738589 (= e!413056 true)))

(declare-fun lt!327879 () SeekEntryResult!7399)

(assert (=> b!738589 (= lt!327879 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327888 lt!327887 lt!327890 mask!3328))))

(declare-fun b!738590 () Bool)

(declare-fun res!496641 () Bool)

(assert (=> b!738590 (=> (not res!496641) (not e!413066))))

(declare-fun arrayContainsKey!0 (array!41364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738590 (= res!496641 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738591 () Bool)

(declare-fun res!496649 () Bool)

(assert (=> b!738591 (=> (not res!496649) (not e!413059))))

(assert (=> b!738591 (= res!496649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738592 () Bool)

(assert (=> b!738592 (= e!413067 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19792 a!3186) j!159) a!3186 mask!3328) lt!327883))))

(declare-fun b!738593 () Bool)

(assert (=> b!738593 (= e!413060 e!413056)))

(declare-fun res!496637 () Bool)

(assert (=> b!738593 (=> res!496637 e!413056)))

(assert (=> b!738593 (= res!496637 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327888 #b00000000000000000000000000000000) (bvsge lt!327888 (size!20213 a!3186))))))

(declare-fun lt!327884 () Unit!25214)

(assert (=> b!738593 (= lt!327884 e!413062)))

(declare-fun c!81351 () Bool)

(assert (=> b!738593 (= c!81351 lt!327877)))

(assert (=> b!738593 (= lt!327877 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738593 (= lt!327888 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!65238 res!496635) b!738582))

(assert (= (and b!738582 res!496644) b!738570))

(assert (= (and b!738570 res!496642) b!738580))

(assert (= (and b!738580 res!496647) b!738590))

(assert (= (and b!738590 res!496641) b!738578))

(assert (= (and b!738578 res!496643) b!738591))

(assert (= (and b!738591 res!496649) b!738586))

(assert (= (and b!738586 res!496645) b!738585))

(assert (= (and b!738585 res!496638) b!738577))

(assert (= (and b!738577 res!496636) b!738583))

(assert (= (and b!738583 res!496633) b!738588))

(assert (= (and b!738588 c!81350) b!738576))

(assert (= (and b!738588 (not c!81350)) b!738575))

(assert (= (and b!738588 res!496634) b!738581))

(assert (= (and b!738581 res!496646) b!738584))

(assert (= (and b!738584 res!496648) b!738579))

(assert (= (and b!738579 res!496640) b!738592))

(assert (= (and b!738584 (not res!496650)) b!738593))

(assert (= (and b!738593 c!81351) b!738572))

(assert (= (and b!738593 (not c!81351)) b!738571))

(assert (= (and b!738593 (not res!496637)) b!738587))

(assert (= (and b!738587 c!81349) b!738574))

(assert (= (and b!738587 (not c!81349)) b!738573))

(assert (= (and b!738587 (not res!496639)) b!738589))

(declare-fun m!690235 () Bool)

(assert (=> b!738590 m!690235))

(declare-fun m!690237 () Bool)

(assert (=> b!738592 m!690237))

(assert (=> b!738592 m!690237))

(declare-fun m!690239 () Bool)

(assert (=> b!738592 m!690239))

(assert (=> b!738575 m!690237))

(assert (=> b!738575 m!690237))

(declare-fun m!690241 () Bool)

(assert (=> b!738575 m!690241))

(declare-fun m!690243 () Bool)

(assert (=> start!65238 m!690243))

(declare-fun m!690245 () Bool)

(assert (=> start!65238 m!690245))

(assert (=> b!738570 m!690237))

(assert (=> b!738570 m!690237))

(declare-fun m!690247 () Bool)

(assert (=> b!738570 m!690247))

(assert (=> b!738576 m!690237))

(assert (=> b!738576 m!690237))

(declare-fun m!690249 () Bool)

(assert (=> b!738576 m!690249))

(declare-fun m!690251 () Bool)

(assert (=> b!738589 m!690251))

(declare-fun m!690253 () Bool)

(assert (=> b!738584 m!690253))

(declare-fun m!690255 () Bool)

(assert (=> b!738584 m!690255))

(assert (=> b!738572 m!690237))

(assert (=> b!738572 m!690237))

(declare-fun m!690257 () Bool)

(assert (=> b!738572 m!690257))

(assert (=> b!738579 m!690237))

(assert (=> b!738579 m!690237))

(declare-fun m!690259 () Bool)

(assert (=> b!738579 m!690259))

(assert (=> b!738573 m!690237))

(assert (=> b!738573 m!690237))

(declare-fun m!690261 () Bool)

(assert (=> b!738573 m!690261))

(assert (=> b!738574 m!690237))

(assert (=> b!738574 m!690237))

(assert (=> b!738574 m!690257))

(declare-fun m!690263 () Bool)

(assert (=> b!738578 m!690263))

(declare-fun m!690265 () Bool)

(assert (=> b!738583 m!690265))

(declare-fun m!690267 () Bool)

(assert (=> b!738581 m!690267))

(declare-fun m!690269 () Bool)

(assert (=> b!738581 m!690269))

(declare-fun m!690271 () Bool)

(assert (=> b!738581 m!690271))

(assert (=> b!738581 m!690267))

(declare-fun m!690273 () Bool)

(assert (=> b!738581 m!690273))

(declare-fun m!690275 () Bool)

(assert (=> b!738581 m!690275))

(declare-fun m!690277 () Bool)

(assert (=> b!738593 m!690277))

(declare-fun m!690279 () Bool)

(assert (=> b!738580 m!690279))

(declare-fun m!690281 () Bool)

(assert (=> b!738586 m!690281))

(assert (=> b!738577 m!690237))

(assert (=> b!738577 m!690237))

(declare-fun m!690283 () Bool)

(assert (=> b!738577 m!690283))

(assert (=> b!738577 m!690283))

(assert (=> b!738577 m!690237))

(declare-fun m!690285 () Bool)

(assert (=> b!738577 m!690285))

(declare-fun m!690287 () Bool)

(assert (=> b!738591 m!690287))

(assert (=> b!738571 m!690237))

(assert (=> b!738571 m!690237))

(assert (=> b!738571 m!690241))

(assert (=> b!738571 m!690237))

(assert (=> b!738571 m!690261))

(check-sat (not b!738584) (not b!738579) (not b!738580) (not b!738592) (not b!738570) (not b!738574) (not b!738573) (not b!738576) (not b!738577) (not b!738575) (not b!738581) (not b!738578) (not b!738589) (not b!738590) (not b!738586) (not b!738591) (not b!738572) (not b!738593) (not b!738571) (not start!65238))
(check-sat)
