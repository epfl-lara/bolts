; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65628 () Bool)

(assert start!65628)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41754 0))(
  ( (array!41755 (arr!19987 (Array (_ BitVec 32) (_ BitVec 64))) (size!20408 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41754)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7594 0))(
  ( (MissingZero!7594 (index!32743 (_ BitVec 32))) (Found!7594 (index!32744 (_ BitVec 32))) (Intermediate!7594 (undefined!8406 Bool) (index!32745 (_ BitVec 32)) (x!63697 (_ BitVec 32))) (Undefined!7594) (MissingVacant!7594 (index!32746 (_ BitVec 32))) )
))
(declare-fun lt!333685 () SeekEntryResult!7594)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!750377 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!418682 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41754 (_ BitVec 32)) SeekEntryResult!7594)

(assert (=> b!750377 (= e!418682 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19987 a!3186) j!159) a!3186 mask!3328) lt!333685))))

(declare-fun b!750378 () Bool)

(declare-fun e!418683 () Bool)

(declare-fun e!418680 () Bool)

(assert (=> b!750378 (= e!418683 e!418680)))

(declare-fun res!506568 () Bool)

(assert (=> b!750378 (=> (not res!506568) (not e!418680))))

(declare-fun lt!333676 () SeekEntryResult!7594)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750378 (= res!506568 (or (= lt!333676 (MissingZero!7594 i!1173)) (= lt!333676 (MissingVacant!7594 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41754 (_ BitVec 32)) SeekEntryResult!7594)

(assert (=> b!750378 (= lt!333676 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!750379 () Bool)

(declare-fun res!506560 () Bool)

(assert (=> b!750379 (=> (not res!506560) (not e!418683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750379 (= res!506560 (validKeyInArray!0 k0!2102))))

(declare-fun b!750380 () Bool)

(declare-fun e!418677 () Bool)

(declare-fun e!418684 () Bool)

(assert (=> b!750380 (= e!418677 e!418684)))

(declare-fun res!506571 () Bool)

(assert (=> b!750380 (=> res!506571 e!418684)))

(declare-fun lt!333680 () (_ BitVec 64))

(declare-fun lt!333684 () (_ BitVec 64))

(assert (=> b!750380 (= res!506571 (= lt!333680 lt!333684))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!750380 (= lt!333680 (select (store (arr!19987 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!750381 () Bool)

(declare-fun e!418686 () Bool)

(assert (=> b!750381 (= e!418680 e!418686)))

(declare-fun res!506569 () Bool)

(assert (=> b!750381 (=> (not res!506569) (not e!418686))))

(declare-fun lt!333681 () SeekEntryResult!7594)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41754 (_ BitVec 32)) SeekEntryResult!7594)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750381 (= res!506569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19987 a!3186) j!159) mask!3328) (select (arr!19987 a!3186) j!159) a!3186 mask!3328) lt!333681))))

(assert (=> b!750381 (= lt!333681 (Intermediate!7594 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!506576 () Bool)

(assert (=> start!65628 (=> (not res!506576) (not e!418683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65628 (= res!506576 (validMask!0 mask!3328))))

(assert (=> start!65628 e!418683))

(assert (=> start!65628 true))

(declare-fun array_inv!15761 (array!41754) Bool)

(assert (=> start!65628 (array_inv!15761 a!3186)))

(declare-fun b!750382 () Bool)

(declare-fun res!506565 () Bool)

(assert (=> b!750382 (=> res!506565 e!418677)))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!750382 (= res!506565 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19987 a!3186) j!159) a!3186 mask!3328) lt!333685)))))

(declare-fun b!750383 () Bool)

(declare-fun res!506562 () Bool)

(assert (=> b!750383 (=> (not res!506562) (not e!418683))))

(declare-fun arrayContainsKey!0 (array!41754 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750383 (= res!506562 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750384 () Bool)

(declare-fun e!418681 () Bool)

(assert (=> b!750384 (= e!418686 e!418681)))

(declare-fun res!506570 () Bool)

(assert (=> b!750384 (=> (not res!506570) (not e!418681))))

(declare-fun lt!333679 () SeekEntryResult!7594)

(declare-fun lt!333678 () SeekEntryResult!7594)

(assert (=> b!750384 (= res!506570 (= lt!333679 lt!333678))))

(declare-fun lt!333683 () array!41754)

(assert (=> b!750384 (= lt!333678 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333684 lt!333683 mask!3328))))

(assert (=> b!750384 (= lt!333679 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333684 mask!3328) lt!333684 lt!333683 mask!3328))))

(assert (=> b!750384 (= lt!333684 (select (store (arr!19987 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!750384 (= lt!333683 (array!41755 (store (arr!19987 a!3186) i!1173 k0!2102) (size!20408 a!3186)))))

(declare-fun b!750385 () Bool)

(declare-fun res!506575 () Bool)

(assert (=> b!750385 (=> (not res!506575) (not e!418683))))

(assert (=> b!750385 (= res!506575 (validKeyInArray!0 (select (arr!19987 a!3186) j!159)))))

(declare-fun b!750386 () Bool)

(declare-fun res!506573 () Bool)

(assert (=> b!750386 (=> (not res!506573) (not e!418680))))

(declare-datatypes ((List!14042 0))(
  ( (Nil!14039) (Cons!14038 (h!15110 (_ BitVec 64)) (t!20365 List!14042)) )
))
(declare-fun arrayNoDuplicates!0 (array!41754 (_ BitVec 32) List!14042) Bool)

(assert (=> b!750386 (= res!506573 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14039))))

(declare-fun e!418676 () Bool)

(declare-fun b!750387 () Bool)

(assert (=> b!750387 (= e!418676 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19987 a!3186) j!159) a!3186 mask!3328) lt!333681))))

(declare-fun b!750388 () Bool)

(declare-datatypes ((Unit!25778 0))(
  ( (Unit!25779) )
))
(declare-fun e!418685 () Unit!25778)

(declare-fun Unit!25780 () Unit!25778)

(assert (=> b!750388 (= e!418685 Unit!25780)))

(assert (=> b!750388 false))

(declare-fun b!750389 () Bool)

(assert (=> b!750389 (= e!418684 true)))

(declare-fun e!418678 () Bool)

(assert (=> b!750389 e!418678))

(declare-fun res!506563 () Bool)

(assert (=> b!750389 (=> (not res!506563) (not e!418678))))

(assert (=> b!750389 (= res!506563 (= lt!333680 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333686 () Unit!25778)

(assert (=> b!750389 (= lt!333686 e!418685)))

(declare-fun c!82289 () Bool)

(assert (=> b!750389 (= c!82289 (= lt!333680 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750390 () Bool)

(declare-fun res!506577 () Bool)

(assert (=> b!750390 (=> (not res!506577) (not e!418683))))

(assert (=> b!750390 (= res!506577 (and (= (size!20408 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20408 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20408 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750391 () Bool)

(declare-fun res!506567 () Bool)

(assert (=> b!750391 (=> (not res!506567) (not e!418686))))

(assert (=> b!750391 (= res!506567 e!418676)))

(declare-fun c!82290 () Bool)

(assert (=> b!750391 (= c!82290 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750392 () Bool)

(assert (=> b!750392 (= e!418678 (= (seekEntryOrOpen!0 lt!333684 lt!333683 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333684 lt!333683 mask!3328)))))

(declare-fun b!750393 () Bool)

(assert (=> b!750393 (= e!418681 (not e!418677))))

(declare-fun res!506566 () Bool)

(assert (=> b!750393 (=> res!506566 e!418677)))

(get-info :version)

(assert (=> b!750393 (= res!506566 (or (not ((_ is Intermediate!7594) lt!333678)) (bvslt x!1131 (x!63697 lt!333678)) (not (= x!1131 (x!63697 lt!333678))) (not (= index!1321 (index!32745 lt!333678)))))))

(assert (=> b!750393 e!418682))

(declare-fun res!506561 () Bool)

(assert (=> b!750393 (=> (not res!506561) (not e!418682))))

(declare-fun lt!333682 () SeekEntryResult!7594)

(assert (=> b!750393 (= res!506561 (= lt!333682 lt!333685))))

(assert (=> b!750393 (= lt!333685 (Found!7594 j!159))))

(assert (=> b!750393 (= lt!333682 (seekEntryOrOpen!0 (select (arr!19987 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41754 (_ BitVec 32)) Bool)

(assert (=> b!750393 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333677 () Unit!25778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25778)

(assert (=> b!750393 (= lt!333677 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750394 () Bool)

(declare-fun res!506572 () Bool)

(assert (=> b!750394 (=> (not res!506572) (not e!418680))))

(assert (=> b!750394 (= res!506572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750395 () Bool)

(declare-fun res!506574 () Bool)

(assert (=> b!750395 (=> (not res!506574) (not e!418686))))

(assert (=> b!750395 (= res!506574 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19987 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750396 () Bool)

(declare-fun Unit!25781 () Unit!25778)

(assert (=> b!750396 (= e!418685 Unit!25781)))

(declare-fun b!750397 () Bool)

(declare-fun res!506564 () Bool)

(assert (=> b!750397 (=> (not res!506564) (not e!418680))))

(assert (=> b!750397 (= res!506564 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20408 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20408 a!3186))))))

(declare-fun b!750398 () Bool)

(assert (=> b!750398 (= e!418676 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19987 a!3186) j!159) a!3186 mask!3328) (Found!7594 j!159)))))

(assert (= (and start!65628 res!506576) b!750390))

(assert (= (and b!750390 res!506577) b!750385))

(assert (= (and b!750385 res!506575) b!750379))

(assert (= (and b!750379 res!506560) b!750383))

(assert (= (and b!750383 res!506562) b!750378))

(assert (= (and b!750378 res!506568) b!750394))

(assert (= (and b!750394 res!506572) b!750386))

(assert (= (and b!750386 res!506573) b!750397))

(assert (= (and b!750397 res!506564) b!750381))

(assert (= (and b!750381 res!506569) b!750395))

(assert (= (and b!750395 res!506574) b!750391))

(assert (= (and b!750391 c!82290) b!750387))

(assert (= (and b!750391 (not c!82290)) b!750398))

(assert (= (and b!750391 res!506567) b!750384))

(assert (= (and b!750384 res!506570) b!750393))

(assert (= (and b!750393 res!506561) b!750377))

(assert (= (and b!750393 (not res!506566)) b!750382))

(assert (= (and b!750382 (not res!506565)) b!750380))

(assert (= (and b!750380 (not res!506571)) b!750389))

(assert (= (and b!750389 c!82289) b!750388))

(assert (= (and b!750389 (not c!82289)) b!750396))

(assert (= (and b!750389 res!506563) b!750392))

(declare-fun m!699857 () Bool)

(assert (=> b!750398 m!699857))

(assert (=> b!750398 m!699857))

(declare-fun m!699859 () Bool)

(assert (=> b!750398 m!699859))

(declare-fun m!699861 () Bool)

(assert (=> b!750386 m!699861))

(declare-fun m!699863 () Bool)

(assert (=> b!750395 m!699863))

(assert (=> b!750377 m!699857))

(assert (=> b!750377 m!699857))

(declare-fun m!699865 () Bool)

(assert (=> b!750377 m!699865))

(assert (=> b!750381 m!699857))

(assert (=> b!750381 m!699857))

(declare-fun m!699867 () Bool)

(assert (=> b!750381 m!699867))

(assert (=> b!750381 m!699867))

(assert (=> b!750381 m!699857))

(declare-fun m!699869 () Bool)

(assert (=> b!750381 m!699869))

(declare-fun m!699871 () Bool)

(assert (=> b!750394 m!699871))

(declare-fun m!699873 () Bool)

(assert (=> b!750383 m!699873))

(assert (=> b!750387 m!699857))

(assert (=> b!750387 m!699857))

(declare-fun m!699875 () Bool)

(assert (=> b!750387 m!699875))

(assert (=> b!750382 m!699857))

(assert (=> b!750382 m!699857))

(assert (=> b!750382 m!699859))

(assert (=> b!750385 m!699857))

(assert (=> b!750385 m!699857))

(declare-fun m!699877 () Bool)

(assert (=> b!750385 m!699877))

(declare-fun m!699879 () Bool)

(assert (=> b!750384 m!699879))

(declare-fun m!699881 () Bool)

(assert (=> b!750384 m!699881))

(declare-fun m!699883 () Bool)

(assert (=> b!750384 m!699883))

(declare-fun m!699885 () Bool)

(assert (=> b!750384 m!699885))

(declare-fun m!699887 () Bool)

(assert (=> b!750384 m!699887))

(assert (=> b!750384 m!699879))

(assert (=> b!750380 m!699887))

(declare-fun m!699889 () Bool)

(assert (=> b!750380 m!699889))

(declare-fun m!699891 () Bool)

(assert (=> b!750392 m!699891))

(declare-fun m!699893 () Bool)

(assert (=> b!750392 m!699893))

(declare-fun m!699895 () Bool)

(assert (=> b!750378 m!699895))

(declare-fun m!699897 () Bool)

(assert (=> start!65628 m!699897))

(declare-fun m!699899 () Bool)

(assert (=> start!65628 m!699899))

(assert (=> b!750393 m!699857))

(assert (=> b!750393 m!699857))

(declare-fun m!699901 () Bool)

(assert (=> b!750393 m!699901))

(declare-fun m!699903 () Bool)

(assert (=> b!750393 m!699903))

(declare-fun m!699905 () Bool)

(assert (=> b!750393 m!699905))

(declare-fun m!699907 () Bool)

(assert (=> b!750379 m!699907))

(check-sat (not b!750386) (not b!750377) (not b!750379) (not b!750378) (not b!750398) (not b!750393) (not b!750382) (not b!750392) (not b!750384) (not b!750394) (not start!65628) (not b!750381) (not b!750387) (not b!750383) (not b!750385))
(check-sat)
