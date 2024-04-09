; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64688 () Bool)

(assert start!64688)

(declare-datatypes ((array!41090 0))(
  ( (array!41091 (arr!19661 (Array (_ BitVec 32) (_ BitVec 64))) (size!20082 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41090)

(declare-fun e!407927 () Bool)

(declare-fun b!728718 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7268 0))(
  ( (MissingZero!7268 (index!31439 (_ BitVec 32))) (Found!7268 (index!31440 (_ BitVec 32))) (Intermediate!7268 (undefined!8080 Bool) (index!31441 (_ BitVec 32)) (x!62451 (_ BitVec 32))) (Undefined!7268) (MissingVacant!7268 (index!31442 (_ BitVec 32))) )
))
(declare-fun lt!322828 () SeekEntryResult!7268)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41090 (_ BitVec 32)) SeekEntryResult!7268)

(assert (=> b!728718 (= e!407927 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19661 a!3186) j!159) a!3186 mask!3328) lt!322828))))

(declare-fun b!728719 () Bool)

(declare-fun e!407926 () Bool)

(declare-fun e!407922 () Bool)

(assert (=> b!728719 (= e!407926 e!407922)))

(declare-fun res!489337 () Bool)

(assert (=> b!728719 (=> (not res!489337) (not e!407922))))

(declare-fun lt!322832 () SeekEntryResult!7268)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728719 (= res!489337 (or (= lt!322832 (MissingZero!7268 i!1173)) (= lt!322832 (MissingVacant!7268 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41090 (_ BitVec 32)) SeekEntryResult!7268)

(assert (=> b!728719 (= lt!322832 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728720 () Bool)

(declare-fun e!407923 () Bool)

(declare-fun e!407920 () Bool)

(assert (=> b!728720 (= e!407923 e!407920)))

(declare-fun res!489332 () Bool)

(assert (=> b!728720 (=> (not res!489332) (not e!407920))))

(declare-fun lt!322830 () SeekEntryResult!7268)

(declare-fun lt!322835 () SeekEntryResult!7268)

(assert (=> b!728720 (= res!489332 (= lt!322830 lt!322835))))

(declare-fun lt!322831 () array!41090)

(declare-fun lt!322834 () (_ BitVec 64))

(assert (=> b!728720 (= lt!322835 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322834 lt!322831 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728720 (= lt!322830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322834 mask!3328) lt!322834 lt!322831 mask!3328))))

(assert (=> b!728720 (= lt!322834 (select (store (arr!19661 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728720 (= lt!322831 (array!41091 (store (arr!19661 a!3186) i!1173 k!2102) (size!20082 a!3186)))))

(declare-fun b!728721 () Bool)

(declare-fun res!489331 () Bool)

(assert (=> b!728721 (=> (not res!489331) (not e!407926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728721 (= res!489331 (validKeyInArray!0 k!2102))))

(declare-fun b!728722 () Bool)

(assert (=> b!728722 (= e!407922 e!407923)))

(declare-fun res!489330 () Bool)

(assert (=> b!728722 (=> (not res!489330) (not e!407923))))

(assert (=> b!728722 (= res!489330 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19661 a!3186) j!159) mask!3328) (select (arr!19661 a!3186) j!159) a!3186 mask!3328) lt!322828))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728722 (= lt!322828 (Intermediate!7268 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728723 () Bool)

(declare-fun res!489335 () Bool)

(assert (=> b!728723 (=> (not res!489335) (not e!407923))))

(assert (=> b!728723 (= res!489335 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19661 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728724 () Bool)

(declare-fun res!489334 () Bool)

(assert (=> b!728724 (=> (not res!489334) (not e!407922))))

(assert (=> b!728724 (= res!489334 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20082 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20082 a!3186))))))

(declare-fun b!728726 () Bool)

(declare-fun res!489327 () Bool)

(assert (=> b!728726 (=> (not res!489327) (not e!407926))))

(assert (=> b!728726 (= res!489327 (validKeyInArray!0 (select (arr!19661 a!3186) j!159)))))

(declare-fun b!728727 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41090 (_ BitVec 32)) SeekEntryResult!7268)

(assert (=> b!728727 (= e!407927 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19661 a!3186) j!159) a!3186 mask!3328) (Found!7268 j!159)))))

(declare-fun b!728728 () Bool)

(declare-fun e!407925 () Bool)

(assert (=> b!728728 (= e!407920 (not e!407925))))

(declare-fun res!489339 () Bool)

(assert (=> b!728728 (=> res!489339 e!407925)))

(assert (=> b!728728 (= res!489339 (or (not (is-Intermediate!7268 lt!322835)) (bvsge x!1131 (x!62451 lt!322835))))))

(declare-fun e!407924 () Bool)

(assert (=> b!728728 e!407924))

(declare-fun res!489329 () Bool)

(assert (=> b!728728 (=> (not res!489329) (not e!407924))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41090 (_ BitVec 32)) Bool)

(assert (=> b!728728 (= res!489329 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24854 0))(
  ( (Unit!24855) )
))
(declare-fun lt!322833 () Unit!24854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24854)

(assert (=> b!728728 (= lt!322833 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728729 () Bool)

(declare-fun e!407921 () Bool)

(assert (=> b!728729 (= e!407924 e!407921)))

(declare-fun res!489336 () Bool)

(assert (=> b!728729 (=> (not res!489336) (not e!407921))))

(declare-fun lt!322827 () SeekEntryResult!7268)

(assert (=> b!728729 (= res!489336 (= (seekEntryOrOpen!0 (select (arr!19661 a!3186) j!159) a!3186 mask!3328) lt!322827))))

(assert (=> b!728729 (= lt!322827 (Found!7268 j!159))))

(declare-fun b!728730 () Bool)

(declare-fun res!489342 () Bool)

(assert (=> b!728730 (=> (not res!489342) (not e!407922))))

(assert (=> b!728730 (= res!489342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728731 () Bool)

(declare-fun res!489328 () Bool)

(assert (=> b!728731 (=> (not res!489328) (not e!407926))))

(assert (=> b!728731 (= res!489328 (and (= (size!20082 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20082 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20082 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728732 () Bool)

(declare-fun res!489333 () Bool)

(assert (=> b!728732 (=> (not res!489333) (not e!407923))))

(assert (=> b!728732 (= res!489333 e!407927)))

(declare-fun c!80070 () Bool)

(assert (=> b!728732 (= c!80070 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728733 () Bool)

(declare-fun res!489341 () Bool)

(assert (=> b!728733 (=> (not res!489341) (not e!407922))))

(declare-datatypes ((List!13716 0))(
  ( (Nil!13713) (Cons!13712 (h!14772 (_ BitVec 64)) (t!20039 List!13716)) )
))
(declare-fun arrayNoDuplicates!0 (array!41090 (_ BitVec 32) List!13716) Bool)

(assert (=> b!728733 (= res!489341 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13713))))

(declare-fun b!728734 () Bool)

(declare-fun res!489340 () Bool)

(assert (=> b!728734 (=> (not res!489340) (not e!407926))))

(declare-fun arrayContainsKey!0 (array!41090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728734 (= res!489340 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728735 () Bool)

(assert (=> b!728735 (= e!407921 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19661 a!3186) j!159) a!3186 mask!3328) lt!322827))))

(declare-fun b!728725 () Bool)

(assert (=> b!728725 (= e!407925 true)))

(declare-fun lt!322829 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728725 (= lt!322829 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!489338 () Bool)

(assert (=> start!64688 (=> (not res!489338) (not e!407926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64688 (= res!489338 (validMask!0 mask!3328))))

(assert (=> start!64688 e!407926))

(assert (=> start!64688 true))

(declare-fun array_inv!15435 (array!41090) Bool)

(assert (=> start!64688 (array_inv!15435 a!3186)))

(assert (= (and start!64688 res!489338) b!728731))

(assert (= (and b!728731 res!489328) b!728726))

(assert (= (and b!728726 res!489327) b!728721))

(assert (= (and b!728721 res!489331) b!728734))

(assert (= (and b!728734 res!489340) b!728719))

(assert (= (and b!728719 res!489337) b!728730))

(assert (= (and b!728730 res!489342) b!728733))

(assert (= (and b!728733 res!489341) b!728724))

(assert (= (and b!728724 res!489334) b!728722))

(assert (= (and b!728722 res!489330) b!728723))

(assert (= (and b!728723 res!489335) b!728732))

(assert (= (and b!728732 c!80070) b!728718))

(assert (= (and b!728732 (not c!80070)) b!728727))

(assert (= (and b!728732 res!489333) b!728720))

(assert (= (and b!728720 res!489332) b!728728))

(assert (= (and b!728728 res!489329) b!728729))

(assert (= (and b!728729 res!489336) b!728735))

(assert (= (and b!728728 (not res!489339)) b!728725))

(declare-fun m!682525 () Bool)

(assert (=> b!728729 m!682525))

(assert (=> b!728729 m!682525))

(declare-fun m!682527 () Bool)

(assert (=> b!728729 m!682527))

(declare-fun m!682529 () Bool)

(assert (=> b!728719 m!682529))

(declare-fun m!682531 () Bool)

(assert (=> b!728730 m!682531))

(declare-fun m!682533 () Bool)

(assert (=> b!728734 m!682533))

(declare-fun m!682535 () Bool)

(assert (=> b!728721 m!682535))

(declare-fun m!682537 () Bool)

(assert (=> b!728728 m!682537))

(declare-fun m!682539 () Bool)

(assert (=> b!728728 m!682539))

(assert (=> b!728735 m!682525))

(assert (=> b!728735 m!682525))

(declare-fun m!682541 () Bool)

(assert (=> b!728735 m!682541))

(declare-fun m!682543 () Bool)

(assert (=> b!728725 m!682543))

(assert (=> b!728726 m!682525))

(assert (=> b!728726 m!682525))

(declare-fun m!682545 () Bool)

(assert (=> b!728726 m!682545))

(declare-fun m!682547 () Bool)

(assert (=> b!728723 m!682547))

(assert (=> b!728718 m!682525))

(assert (=> b!728718 m!682525))

(declare-fun m!682549 () Bool)

(assert (=> b!728718 m!682549))

(declare-fun m!682551 () Bool)

(assert (=> b!728720 m!682551))

(declare-fun m!682553 () Bool)

(assert (=> b!728720 m!682553))

(declare-fun m!682555 () Bool)

(assert (=> b!728720 m!682555))

(declare-fun m!682557 () Bool)

(assert (=> b!728720 m!682557))

(declare-fun m!682559 () Bool)

(assert (=> b!728720 m!682559))

(assert (=> b!728720 m!682551))

(declare-fun m!682561 () Bool)

(assert (=> start!64688 m!682561))

(declare-fun m!682563 () Bool)

(assert (=> start!64688 m!682563))

(assert (=> b!728722 m!682525))

(assert (=> b!728722 m!682525))

(declare-fun m!682565 () Bool)

(assert (=> b!728722 m!682565))

(assert (=> b!728722 m!682565))

(assert (=> b!728722 m!682525))

(declare-fun m!682567 () Bool)

(assert (=> b!728722 m!682567))

(assert (=> b!728727 m!682525))

(assert (=> b!728727 m!682525))

(declare-fun m!682569 () Bool)

(assert (=> b!728727 m!682569))

(declare-fun m!682571 () Bool)

(assert (=> b!728733 m!682571))

(push 1)

