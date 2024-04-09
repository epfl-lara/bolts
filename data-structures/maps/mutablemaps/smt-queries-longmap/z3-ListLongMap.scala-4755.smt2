; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65610 () Bool)

(assert start!65610)

(declare-fun e!418384 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!749783 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333387 () (_ BitVec 64))

(declare-datatypes ((array!41736 0))(
  ( (array!41737 (arr!19978 (Array (_ BitVec 32) (_ BitVec 64))) (size!20399 (_ BitVec 32))) )
))
(declare-fun lt!333384 () array!41736)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7585 0))(
  ( (MissingZero!7585 (index!32707 (_ BitVec 32))) (Found!7585 (index!32708 (_ BitVec 32))) (Intermediate!7585 (undefined!8397 Bool) (index!32709 (_ BitVec 32)) (x!63664 (_ BitVec 32))) (Undefined!7585) (MissingVacant!7585 (index!32710 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41736 (_ BitVec 32)) SeekEntryResult!7585)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41736 (_ BitVec 32)) SeekEntryResult!7585)

(assert (=> b!749783 (= e!418384 (= (seekEntryOrOpen!0 lt!333387 lt!333384 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333387 lt!333384 mask!3328)))))

(declare-fun b!749784 () Bool)

(declare-fun res!506091 () Bool)

(declare-fun e!418387 () Bool)

(assert (=> b!749784 (=> (not res!506091) (not e!418387))))

(declare-fun a!3186 () array!41736)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749784 (= res!506091 (validKeyInArray!0 (select (arr!19978 a!3186) j!159)))))

(declare-fun b!749785 () Bool)

(declare-fun res!506087 () Bool)

(assert (=> b!749785 (=> (not res!506087) (not e!418387))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41736 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749785 (= res!506087 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749786 () Bool)

(declare-fun e!418380 () Bool)

(declare-fun e!418379 () Bool)

(assert (=> b!749786 (= e!418380 (not e!418379))))

(declare-fun res!506089 () Bool)

(assert (=> b!749786 (=> res!506089 e!418379)))

(declare-fun lt!333381 () SeekEntryResult!7585)

(get-info :version)

(assert (=> b!749786 (= res!506089 (or (not ((_ is Intermediate!7585) lt!333381)) (bvslt x!1131 (x!63664 lt!333381)) (not (= x!1131 (x!63664 lt!333381))) (not (= index!1321 (index!32709 lt!333381)))))))

(declare-fun e!418389 () Bool)

(assert (=> b!749786 e!418389))

(declare-fun res!506077 () Bool)

(assert (=> b!749786 (=> (not res!506077) (not e!418389))))

(declare-fun lt!333388 () SeekEntryResult!7585)

(declare-fun lt!333386 () SeekEntryResult!7585)

(assert (=> b!749786 (= res!506077 (= lt!333388 lt!333386))))

(assert (=> b!749786 (= lt!333386 (Found!7585 j!159))))

(assert (=> b!749786 (= lt!333388 (seekEntryOrOpen!0 (select (arr!19978 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41736 (_ BitVec 32)) Bool)

(assert (=> b!749786 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25742 0))(
  ( (Unit!25743) )
))
(declare-fun lt!333389 () Unit!25742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41736 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25742)

(assert (=> b!749786 (= lt!333389 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749787 () Bool)

(declare-fun res!506079 () Bool)

(assert (=> b!749787 (=> (not res!506079) (not e!418387))))

(assert (=> b!749787 (= res!506079 (validKeyInArray!0 k0!2102))))

(declare-fun b!749788 () Bool)

(declare-fun e!418388 () Bool)

(declare-fun lt!333379 () SeekEntryResult!7585)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41736 (_ BitVec 32)) SeekEntryResult!7585)

(assert (=> b!749788 (= e!418388 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19978 a!3186) j!159) a!3186 mask!3328) lt!333379))))

(declare-fun b!749789 () Bool)

(declare-fun res!506086 () Bool)

(declare-fun e!418381 () Bool)

(assert (=> b!749789 (=> (not res!506086) (not e!418381))))

(assert (=> b!749789 (= res!506086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749790 () Bool)

(declare-fun e!418382 () Bool)

(assert (=> b!749790 (= e!418381 e!418382)))

(declare-fun res!506083 () Bool)

(assert (=> b!749790 (=> (not res!506083) (not e!418382))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749790 (= res!506083 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19978 a!3186) j!159) mask!3328) (select (arr!19978 a!3186) j!159) a!3186 mask!3328) lt!333379))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749790 (= lt!333379 (Intermediate!7585 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749791 () Bool)

(declare-fun res!506075 () Bool)

(assert (=> b!749791 (=> (not res!506075) (not e!418387))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749791 (= res!506075 (and (= (size!20399 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20399 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20399 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749792 () Bool)

(assert (=> b!749792 (= e!418387 e!418381)))

(declare-fun res!506085 () Bool)

(assert (=> b!749792 (=> (not res!506085) (not e!418381))))

(declare-fun lt!333385 () SeekEntryResult!7585)

(assert (=> b!749792 (= res!506085 (or (= lt!333385 (MissingZero!7585 i!1173)) (= lt!333385 (MissingVacant!7585 i!1173))))))

(assert (=> b!749792 (= lt!333385 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!749793 () Bool)

(declare-fun res!506080 () Bool)

(assert (=> b!749793 (=> res!506080 e!418379)))

(assert (=> b!749793 (= res!506080 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19978 a!3186) j!159) a!3186 mask!3328) lt!333386)))))

(declare-fun b!749794 () Bool)

(assert (=> b!749794 (= e!418389 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19978 a!3186) j!159) a!3186 mask!3328) lt!333386))))

(declare-fun b!749795 () Bool)

(declare-fun e!418386 () Bool)

(assert (=> b!749795 (= e!418386 true)))

(assert (=> b!749795 e!418384))

(declare-fun res!506088 () Bool)

(assert (=> b!749795 (=> (not res!506088) (not e!418384))))

(declare-fun lt!333382 () (_ BitVec 64))

(assert (=> b!749795 (= res!506088 (= lt!333382 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333383 () Unit!25742)

(declare-fun e!418383 () Unit!25742)

(assert (=> b!749795 (= lt!333383 e!418383)))

(declare-fun c!82236 () Bool)

(assert (=> b!749795 (= c!82236 (= lt!333382 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749796 () Bool)

(assert (=> b!749796 (= e!418379 e!418386)))

(declare-fun res!506084 () Bool)

(assert (=> b!749796 (=> res!506084 e!418386)))

(assert (=> b!749796 (= res!506084 (= lt!333382 lt!333387))))

(assert (=> b!749796 (= lt!333382 (select (store (arr!19978 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!749797 () Bool)

(declare-fun res!506090 () Bool)

(assert (=> b!749797 (=> (not res!506090) (not e!418381))))

(assert (=> b!749797 (= res!506090 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20399 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20399 a!3186))))))

(declare-fun res!506082 () Bool)

(assert (=> start!65610 (=> (not res!506082) (not e!418387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65610 (= res!506082 (validMask!0 mask!3328))))

(assert (=> start!65610 e!418387))

(assert (=> start!65610 true))

(declare-fun array_inv!15752 (array!41736) Bool)

(assert (=> start!65610 (array_inv!15752 a!3186)))

(declare-fun b!749798 () Bool)

(declare-fun Unit!25744 () Unit!25742)

(assert (=> b!749798 (= e!418383 Unit!25744)))

(declare-fun b!749799 () Bool)

(declare-fun res!506078 () Bool)

(assert (=> b!749799 (=> (not res!506078) (not e!418381))))

(declare-datatypes ((List!14033 0))(
  ( (Nil!14030) (Cons!14029 (h!15101 (_ BitVec 64)) (t!20356 List!14033)) )
))
(declare-fun arrayNoDuplicates!0 (array!41736 (_ BitVec 32) List!14033) Bool)

(assert (=> b!749799 (= res!506078 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14030))))

(declare-fun b!749800 () Bool)

(declare-fun res!506081 () Bool)

(assert (=> b!749800 (=> (not res!506081) (not e!418382))))

(assert (=> b!749800 (= res!506081 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19978 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749801 () Bool)

(declare-fun res!506076 () Bool)

(assert (=> b!749801 (=> (not res!506076) (not e!418382))))

(assert (=> b!749801 (= res!506076 e!418388)))

(declare-fun c!82235 () Bool)

(assert (=> b!749801 (= c!82235 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749802 () Bool)

(assert (=> b!749802 (= e!418382 e!418380)))

(declare-fun res!506074 () Bool)

(assert (=> b!749802 (=> (not res!506074) (not e!418380))))

(declare-fun lt!333380 () SeekEntryResult!7585)

(assert (=> b!749802 (= res!506074 (= lt!333380 lt!333381))))

(assert (=> b!749802 (= lt!333381 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333387 lt!333384 mask!3328))))

(assert (=> b!749802 (= lt!333380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333387 mask!3328) lt!333387 lt!333384 mask!3328))))

(assert (=> b!749802 (= lt!333387 (select (store (arr!19978 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!749802 (= lt!333384 (array!41737 (store (arr!19978 a!3186) i!1173 k0!2102) (size!20399 a!3186)))))

(declare-fun b!749803 () Bool)

(declare-fun Unit!25745 () Unit!25742)

(assert (=> b!749803 (= e!418383 Unit!25745)))

(assert (=> b!749803 false))

(declare-fun b!749804 () Bool)

(assert (=> b!749804 (= e!418388 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19978 a!3186) j!159) a!3186 mask!3328) (Found!7585 j!159)))))

(assert (= (and start!65610 res!506082) b!749791))

(assert (= (and b!749791 res!506075) b!749784))

(assert (= (and b!749784 res!506091) b!749787))

(assert (= (and b!749787 res!506079) b!749785))

(assert (= (and b!749785 res!506087) b!749792))

(assert (= (and b!749792 res!506085) b!749789))

(assert (= (and b!749789 res!506086) b!749799))

(assert (= (and b!749799 res!506078) b!749797))

(assert (= (and b!749797 res!506090) b!749790))

(assert (= (and b!749790 res!506083) b!749800))

(assert (= (and b!749800 res!506081) b!749801))

(assert (= (and b!749801 c!82235) b!749788))

(assert (= (and b!749801 (not c!82235)) b!749804))

(assert (= (and b!749801 res!506076) b!749802))

(assert (= (and b!749802 res!506074) b!749786))

(assert (= (and b!749786 res!506077) b!749794))

(assert (= (and b!749786 (not res!506089)) b!749793))

(assert (= (and b!749793 (not res!506080)) b!749796))

(assert (= (and b!749796 (not res!506084)) b!749795))

(assert (= (and b!749795 c!82236) b!749803))

(assert (= (and b!749795 (not c!82236)) b!749798))

(assert (= (and b!749795 res!506088) b!749783))

(declare-fun m!699389 () Bool)

(assert (=> b!749785 m!699389))

(declare-fun m!699391 () Bool)

(assert (=> b!749792 m!699391))

(declare-fun m!699393 () Bool)

(assert (=> b!749783 m!699393))

(declare-fun m!699395 () Bool)

(assert (=> b!749783 m!699395))

(declare-fun m!699397 () Bool)

(assert (=> b!749788 m!699397))

(assert (=> b!749788 m!699397))

(declare-fun m!699399 () Bool)

(assert (=> b!749788 m!699399))

(declare-fun m!699401 () Bool)

(assert (=> b!749787 m!699401))

(declare-fun m!699403 () Bool)

(assert (=> start!65610 m!699403))

(declare-fun m!699405 () Bool)

(assert (=> start!65610 m!699405))

(assert (=> b!749786 m!699397))

(assert (=> b!749786 m!699397))

(declare-fun m!699407 () Bool)

(assert (=> b!749786 m!699407))

(declare-fun m!699409 () Bool)

(assert (=> b!749786 m!699409))

(declare-fun m!699411 () Bool)

(assert (=> b!749786 m!699411))

(assert (=> b!749794 m!699397))

(assert (=> b!749794 m!699397))

(declare-fun m!699413 () Bool)

(assert (=> b!749794 m!699413))

(declare-fun m!699415 () Bool)

(assert (=> b!749802 m!699415))

(declare-fun m!699417 () Bool)

(assert (=> b!749802 m!699417))

(declare-fun m!699419 () Bool)

(assert (=> b!749802 m!699419))

(declare-fun m!699421 () Bool)

(assert (=> b!749802 m!699421))

(assert (=> b!749802 m!699415))

(declare-fun m!699423 () Bool)

(assert (=> b!749802 m!699423))

(declare-fun m!699425 () Bool)

(assert (=> b!749789 m!699425))

(assert (=> b!749804 m!699397))

(assert (=> b!749804 m!699397))

(declare-fun m!699427 () Bool)

(assert (=> b!749804 m!699427))

(assert (=> b!749790 m!699397))

(assert (=> b!749790 m!699397))

(declare-fun m!699429 () Bool)

(assert (=> b!749790 m!699429))

(assert (=> b!749790 m!699429))

(assert (=> b!749790 m!699397))

(declare-fun m!699431 () Bool)

(assert (=> b!749790 m!699431))

(assert (=> b!749784 m!699397))

(assert (=> b!749784 m!699397))

(declare-fun m!699433 () Bool)

(assert (=> b!749784 m!699433))

(assert (=> b!749793 m!699397))

(assert (=> b!749793 m!699397))

(assert (=> b!749793 m!699427))

(assert (=> b!749796 m!699421))

(declare-fun m!699435 () Bool)

(assert (=> b!749796 m!699435))

(declare-fun m!699437 () Bool)

(assert (=> b!749799 m!699437))

(declare-fun m!699439 () Bool)

(assert (=> b!749800 m!699439))

(check-sat (not b!749788) (not b!749789) (not start!65610) (not b!749783) (not b!749790) (not b!749799) (not b!749784) (not b!749785) (not b!749786) (not b!749792) (not b!749793) (not b!749794) (not b!749802) (not b!749787) (not b!749804))
(check-sat)
