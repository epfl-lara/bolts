; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65624 () Bool)

(assert start!65624)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!750245 () Bool)

(declare-fun lt!333619 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41750 0))(
  ( (array!41751 (arr!19985 (Array (_ BitVec 32) (_ BitVec 64))) (size!20406 (_ BitVec 32))) )
))
(declare-fun lt!333616 () array!41750)

(declare-fun e!418612 () Bool)

(declare-datatypes ((SeekEntryResult!7592 0))(
  ( (MissingZero!7592 (index!32735 (_ BitVec 32))) (Found!7592 (index!32736 (_ BitVec 32))) (Intermediate!7592 (undefined!8404 Bool) (index!32737 (_ BitVec 32)) (x!63687 (_ BitVec 32))) (Undefined!7592) (MissingVacant!7592 (index!32738 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41750 (_ BitVec 32)) SeekEntryResult!7592)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41750 (_ BitVec 32)) SeekEntryResult!7592)

(assert (=> b!750245 (= e!418612 (= (seekEntryOrOpen!0 lt!333619 lt!333616 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333619 lt!333616 mask!3328)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun a!3186 () array!41750)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!418614 () Bool)

(declare-fun lt!333618 () SeekEntryResult!7592)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!750246 () Bool)

(assert (=> b!750246 (= e!418614 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19985 a!3186) j!159) a!3186 mask!3328) lt!333618))))

(declare-fun b!750247 () Bool)

(declare-fun e!418617 () Bool)

(assert (=> b!750247 (= e!418617 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!750247 e!418612))

(declare-fun res!506462 () Bool)

(assert (=> b!750247 (=> (not res!506462) (not e!418612))))

(declare-fun lt!333610 () (_ BitVec 64))

(assert (=> b!750247 (= res!506462 (= lt!333610 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25770 0))(
  ( (Unit!25771) )
))
(declare-fun lt!333617 () Unit!25770)

(declare-fun e!418618 () Unit!25770)

(assert (=> b!750247 (= lt!333617 e!418618)))

(declare-fun c!82277 () Bool)

(assert (=> b!750247 (= c!82277 (= lt!333610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750248 () Bool)

(declare-fun res!506466 () Bool)

(declare-fun e!418615 () Bool)

(assert (=> b!750248 (=> (not res!506466) (not e!418615))))

(declare-datatypes ((List!14040 0))(
  ( (Nil!14037) (Cons!14036 (h!15108 (_ BitVec 64)) (t!20363 List!14040)) )
))
(declare-fun arrayNoDuplicates!0 (array!41750 (_ BitVec 32) List!14040) Bool)

(assert (=> b!750248 (= res!506466 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14037))))

(declare-fun b!750249 () Bool)

(declare-fun e!418611 () Bool)

(assert (=> b!750249 (= e!418611 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19985 a!3186) j!159) a!3186 mask!3328) (Found!7592 j!159)))))

(declare-fun b!750250 () Bool)

(declare-fun res!506453 () Bool)

(declare-fun e!418620 () Bool)

(assert (=> b!750250 (=> (not res!506453) (not e!418620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750250 (= res!506453 (validKeyInArray!0 (select (arr!19985 a!3186) j!159)))))

(declare-fun b!750251 () Bool)

(declare-fun res!506461 () Bool)

(assert (=> b!750251 (=> (not res!506461) (not e!418620))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750251 (= res!506461 (and (= (size!20406 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20406 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20406 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750252 () Bool)

(declare-fun e!418610 () Bool)

(assert (=> b!750252 (= e!418615 e!418610)))

(declare-fun res!506467 () Bool)

(assert (=> b!750252 (=> (not res!506467) (not e!418610))))

(declare-fun lt!333611 () SeekEntryResult!7592)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41750 (_ BitVec 32)) SeekEntryResult!7592)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750252 (= res!506467 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19985 a!3186) j!159) mask!3328) (select (arr!19985 a!3186) j!159) a!3186 mask!3328) lt!333611))))

(assert (=> b!750252 (= lt!333611 (Intermediate!7592 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750253 () Bool)

(declare-fun e!418619 () Bool)

(assert (=> b!750253 (= e!418610 e!418619)))

(declare-fun res!506459 () Bool)

(assert (=> b!750253 (=> (not res!506459) (not e!418619))))

(declare-fun lt!333615 () SeekEntryResult!7592)

(declare-fun lt!333614 () SeekEntryResult!7592)

(assert (=> b!750253 (= res!506459 (= lt!333615 lt!333614))))

(assert (=> b!750253 (= lt!333614 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333619 lt!333616 mask!3328))))

(assert (=> b!750253 (= lt!333615 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333619 mask!3328) lt!333619 lt!333616 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!750253 (= lt!333619 (select (store (arr!19985 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750253 (= lt!333616 (array!41751 (store (arr!19985 a!3186) i!1173 k!2102) (size!20406 a!3186)))))

(declare-fun b!750254 () Bool)

(declare-fun Unit!25772 () Unit!25770)

(assert (=> b!750254 (= e!418618 Unit!25772)))

(assert (=> b!750254 false))

(declare-fun b!750255 () Bool)

(assert (=> b!750255 (= e!418620 e!418615)))

(declare-fun res!506465 () Bool)

(assert (=> b!750255 (=> (not res!506465) (not e!418615))))

(declare-fun lt!333613 () SeekEntryResult!7592)

(assert (=> b!750255 (= res!506465 (or (= lt!333613 (MissingZero!7592 i!1173)) (= lt!333613 (MissingVacant!7592 i!1173))))))

(assert (=> b!750255 (= lt!333613 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750256 () Bool)

(declare-fun res!506452 () Bool)

(assert (=> b!750256 (=> (not res!506452) (not e!418615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41750 (_ BitVec 32)) Bool)

(assert (=> b!750256 (= res!506452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750257 () Bool)

(declare-fun res!506458 () Bool)

(declare-fun e!418613 () Bool)

(assert (=> b!750257 (=> res!506458 e!418613)))

(assert (=> b!750257 (= res!506458 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19985 a!3186) j!159) a!3186 mask!3328) lt!333618)))))

(declare-fun b!750258 () Bool)

(declare-fun Unit!25773 () Unit!25770)

(assert (=> b!750258 (= e!418618 Unit!25773)))

(declare-fun b!750259 () Bool)

(assert (=> b!750259 (= e!418611 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19985 a!3186) j!159) a!3186 mask!3328) lt!333611))))

(declare-fun b!750260 () Bool)

(assert (=> b!750260 (= e!418613 e!418617)))

(declare-fun res!506468 () Bool)

(assert (=> b!750260 (=> res!506468 e!418617)))

(assert (=> b!750260 (= res!506468 (= lt!333610 lt!333619))))

(assert (=> b!750260 (= lt!333610 (select (store (arr!19985 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750261 () Bool)

(declare-fun res!506455 () Bool)

(assert (=> b!750261 (=> (not res!506455) (not e!418615))))

(assert (=> b!750261 (= res!506455 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20406 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20406 a!3186))))))

(declare-fun b!750262 () Bool)

(declare-fun res!506469 () Bool)

(assert (=> b!750262 (=> (not res!506469) (not e!418620))))

(assert (=> b!750262 (= res!506469 (validKeyInArray!0 k!2102))))

(declare-fun b!750263 () Bool)

(declare-fun res!506463 () Bool)

(assert (=> b!750263 (=> (not res!506463) (not e!418610))))

(assert (=> b!750263 (= res!506463 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19985 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750264 () Bool)

(assert (=> b!750264 (= e!418619 (not e!418613))))

(declare-fun res!506456 () Bool)

(assert (=> b!750264 (=> res!506456 e!418613)))

(assert (=> b!750264 (= res!506456 (or (not (is-Intermediate!7592 lt!333614)) (bvslt x!1131 (x!63687 lt!333614)) (not (= x!1131 (x!63687 lt!333614))) (not (= index!1321 (index!32737 lt!333614)))))))

(assert (=> b!750264 e!418614))

(declare-fun res!506454 () Bool)

(assert (=> b!750264 (=> (not res!506454) (not e!418614))))

(declare-fun lt!333612 () SeekEntryResult!7592)

(assert (=> b!750264 (= res!506454 (= lt!333612 lt!333618))))

(assert (=> b!750264 (= lt!333618 (Found!7592 j!159))))

(assert (=> b!750264 (= lt!333612 (seekEntryOrOpen!0 (select (arr!19985 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750264 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333620 () Unit!25770)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25770)

(assert (=> b!750264 (= lt!333620 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750265 () Bool)

(declare-fun res!506460 () Bool)

(assert (=> b!750265 (=> (not res!506460) (not e!418610))))

(assert (=> b!750265 (= res!506460 e!418611)))

(declare-fun c!82278 () Bool)

(assert (=> b!750265 (= c!82278 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750266 () Bool)

(declare-fun res!506464 () Bool)

(assert (=> b!750266 (=> (not res!506464) (not e!418620))))

(declare-fun arrayContainsKey!0 (array!41750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750266 (= res!506464 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!506457 () Bool)

(assert (=> start!65624 (=> (not res!506457) (not e!418620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65624 (= res!506457 (validMask!0 mask!3328))))

(assert (=> start!65624 e!418620))

(assert (=> start!65624 true))

(declare-fun array_inv!15759 (array!41750) Bool)

(assert (=> start!65624 (array_inv!15759 a!3186)))

(assert (= (and start!65624 res!506457) b!750251))

(assert (= (and b!750251 res!506461) b!750250))

(assert (= (and b!750250 res!506453) b!750262))

(assert (= (and b!750262 res!506469) b!750266))

(assert (= (and b!750266 res!506464) b!750255))

(assert (= (and b!750255 res!506465) b!750256))

(assert (= (and b!750256 res!506452) b!750248))

(assert (= (and b!750248 res!506466) b!750261))

(assert (= (and b!750261 res!506455) b!750252))

(assert (= (and b!750252 res!506467) b!750263))

(assert (= (and b!750263 res!506463) b!750265))

(assert (= (and b!750265 c!82278) b!750259))

(assert (= (and b!750265 (not c!82278)) b!750249))

(assert (= (and b!750265 res!506460) b!750253))

(assert (= (and b!750253 res!506459) b!750264))

(assert (= (and b!750264 res!506454) b!750246))

(assert (= (and b!750264 (not res!506456)) b!750257))

(assert (= (and b!750257 (not res!506458)) b!750260))

(assert (= (and b!750260 (not res!506468)) b!750247))

(assert (= (and b!750247 c!82277) b!750254))

(assert (= (and b!750247 (not c!82277)) b!750258))

(assert (= (and b!750247 res!506462) b!750245))

(declare-fun m!699753 () Bool)

(assert (=> b!750252 m!699753))

(assert (=> b!750252 m!699753))

(declare-fun m!699755 () Bool)

(assert (=> b!750252 m!699755))

(assert (=> b!750252 m!699755))

(assert (=> b!750252 m!699753))

(declare-fun m!699757 () Bool)

(assert (=> b!750252 m!699757))

(assert (=> b!750246 m!699753))

(assert (=> b!750246 m!699753))

(declare-fun m!699759 () Bool)

(assert (=> b!750246 m!699759))

(declare-fun m!699761 () Bool)

(assert (=> b!750255 m!699761))

(declare-fun m!699763 () Bool)

(assert (=> start!65624 m!699763))

(declare-fun m!699765 () Bool)

(assert (=> start!65624 m!699765))

(assert (=> b!750264 m!699753))

(assert (=> b!750264 m!699753))

(declare-fun m!699767 () Bool)

(assert (=> b!750264 m!699767))

(declare-fun m!699769 () Bool)

(assert (=> b!750264 m!699769))

(declare-fun m!699771 () Bool)

(assert (=> b!750264 m!699771))

(declare-fun m!699773 () Bool)

(assert (=> b!750260 m!699773))

(declare-fun m!699775 () Bool)

(assert (=> b!750260 m!699775))

(assert (=> b!750259 m!699753))

(assert (=> b!750259 m!699753))

(declare-fun m!699777 () Bool)

(assert (=> b!750259 m!699777))

(declare-fun m!699779 () Bool)

(assert (=> b!750253 m!699779))

(declare-fun m!699781 () Bool)

(assert (=> b!750253 m!699781))

(declare-fun m!699783 () Bool)

(assert (=> b!750253 m!699783))

(assert (=> b!750253 m!699773))

(declare-fun m!699785 () Bool)

(assert (=> b!750253 m!699785))

(assert (=> b!750253 m!699779))

(declare-fun m!699787 () Bool)

(assert (=> b!750262 m!699787))

(assert (=> b!750249 m!699753))

(assert (=> b!750249 m!699753))

(declare-fun m!699789 () Bool)

(assert (=> b!750249 m!699789))

(declare-fun m!699791 () Bool)

(assert (=> b!750256 m!699791))

(declare-fun m!699793 () Bool)

(assert (=> b!750266 m!699793))

(declare-fun m!699795 () Bool)

(assert (=> b!750248 m!699795))

(declare-fun m!699797 () Bool)

(assert (=> b!750245 m!699797))

(declare-fun m!699799 () Bool)

(assert (=> b!750245 m!699799))

(declare-fun m!699801 () Bool)

(assert (=> b!750263 m!699801))

(assert (=> b!750250 m!699753))

(assert (=> b!750250 m!699753))

(declare-fun m!699803 () Bool)

(assert (=> b!750250 m!699803))

(assert (=> b!750257 m!699753))

(assert (=> b!750257 m!699753))

(assert (=> b!750257 m!699789))

(push 1)

