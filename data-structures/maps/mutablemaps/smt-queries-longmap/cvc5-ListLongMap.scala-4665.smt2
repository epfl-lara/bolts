; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64852 () Bool)

(assert start!64852)

(declare-fun b!731677 () Bool)

(declare-fun res!491732 () Bool)

(declare-fun e!409455 () Bool)

(assert (=> b!731677 (=> (not res!491732) (not e!409455))))

(declare-datatypes ((array!41185 0))(
  ( (array!41186 (arr!19707 (Array (_ BitVec 32) (_ BitVec 64))) (size!20128 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41185)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41185 (_ BitVec 32)) Bool)

(assert (=> b!731677 (= res!491732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!731678 () Bool)

(declare-fun e!409459 () Bool)

(assert (=> b!731678 (= e!409459 e!409455)))

(declare-fun res!491728 () Bool)

(assert (=> b!731678 (=> (not res!491728) (not e!409455))))

(declare-datatypes ((SeekEntryResult!7314 0))(
  ( (MissingZero!7314 (index!31623 (_ BitVec 32))) (Found!7314 (index!31624 (_ BitVec 32))) (Intermediate!7314 (undefined!8126 Bool) (index!31625 (_ BitVec 32)) (x!62637 (_ BitVec 32))) (Undefined!7314) (MissingVacant!7314 (index!31626 (_ BitVec 32))) )
))
(declare-fun lt!324261 () SeekEntryResult!7314)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!731678 (= res!491728 (or (= lt!324261 (MissingZero!7314 i!1173)) (= lt!324261 (MissingVacant!7314 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41185 (_ BitVec 32)) SeekEntryResult!7314)

(assert (=> b!731678 (= lt!324261 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!731679 () Bool)

(declare-fun res!491722 () Bool)

(declare-fun e!409461 () Bool)

(assert (=> b!731679 (=> res!491722 e!409461)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41185 (_ BitVec 32)) SeekEntryResult!7314)

(assert (=> b!731679 (= res!491722 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) (Found!7314 j!159))))))

(declare-fun res!491721 () Bool)

(assert (=> start!64852 (=> (not res!491721) (not e!409459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64852 (= res!491721 (validMask!0 mask!3328))))

(assert (=> start!64852 e!409459))

(assert (=> start!64852 true))

(declare-fun array_inv!15481 (array!41185) Bool)

(assert (=> start!64852 (array_inv!15481 a!3186)))

(declare-fun b!731680 () Bool)

(declare-fun res!491719 () Bool)

(assert (=> b!731680 (=> (not res!491719) (not e!409459))))

(assert (=> b!731680 (= res!491719 (and (= (size!20128 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20128 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20128 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!731681 () Bool)

(declare-fun e!409454 () Bool)

(assert (=> b!731681 (= e!409454 e!409461)))

(declare-fun res!491731 () Bool)

(assert (=> b!731681 (=> res!491731 e!409461)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!731681 (= res!491731 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324262 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731681 (= lt!324262 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!731682 () Bool)

(declare-fun res!491724 () Bool)

(assert (=> b!731682 (=> (not res!491724) (not e!409459))))

(declare-fun arrayContainsKey!0 (array!41185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!731682 (= res!491724 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!409456 () Bool)

(declare-fun b!731683 () Bool)

(assert (=> b!731683 (= e!409456 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) (Found!7314 j!159)))))

(declare-fun b!731684 () Bool)

(declare-fun e!409458 () Bool)

(declare-fun e!409457 () Bool)

(assert (=> b!731684 (= e!409458 e!409457)))

(declare-fun res!491725 () Bool)

(assert (=> b!731684 (=> (not res!491725) (not e!409457))))

(declare-fun lt!324269 () SeekEntryResult!7314)

(assert (=> b!731684 (= res!491725 (= (seekEntryOrOpen!0 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324269))))

(assert (=> b!731684 (= lt!324269 (Found!7314 j!159))))

(declare-fun b!731685 () Bool)

(declare-fun res!491736 () Bool)

(assert (=> b!731685 (=> (not res!491736) (not e!409455))))

(assert (=> b!731685 (= res!491736 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20128 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20128 a!3186))))))

(declare-fun b!731686 () Bool)

(declare-fun res!491735 () Bool)

(declare-fun e!409452 () Bool)

(assert (=> b!731686 (=> (not res!491735) (not e!409452))))

(assert (=> b!731686 (= res!491735 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19707 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731687 () Bool)

(declare-fun e!409453 () Bool)

(assert (=> b!731687 (= e!409453 (not e!409454))))

(declare-fun res!491726 () Bool)

(assert (=> b!731687 (=> res!491726 e!409454)))

(declare-fun lt!324264 () SeekEntryResult!7314)

(assert (=> b!731687 (= res!491726 (or (not (is-Intermediate!7314 lt!324264)) (bvsge x!1131 (x!62637 lt!324264))))))

(assert (=> b!731687 e!409458))

(declare-fun res!491720 () Bool)

(assert (=> b!731687 (=> (not res!491720) (not e!409458))))

(assert (=> b!731687 (= res!491720 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24946 0))(
  ( (Unit!24947) )
))
(declare-fun lt!324268 () Unit!24946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24946)

(assert (=> b!731687 (= lt!324268 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!731688 () Bool)

(declare-fun res!491734 () Bool)

(assert (=> b!731688 (=> (not res!491734) (not e!409455))))

(declare-datatypes ((List!13762 0))(
  ( (Nil!13759) (Cons!13758 (h!14821 (_ BitVec 64)) (t!20085 List!13762)) )
))
(declare-fun arrayNoDuplicates!0 (array!41185 (_ BitVec 32) List!13762) Bool)

(assert (=> b!731688 (= res!491734 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13759))))

(declare-fun b!731689 () Bool)

(assert (=> b!731689 (= e!409452 e!409453)))

(declare-fun res!491729 () Bool)

(assert (=> b!731689 (=> (not res!491729) (not e!409453))))

(declare-fun lt!324266 () SeekEntryResult!7314)

(assert (=> b!731689 (= res!491729 (= lt!324266 lt!324264))))

(declare-fun lt!324265 () (_ BitVec 64))

(declare-fun lt!324267 () array!41185)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41185 (_ BitVec 32)) SeekEntryResult!7314)

(assert (=> b!731689 (= lt!324264 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324265 lt!324267 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731689 (= lt!324266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324265 mask!3328) lt!324265 lt!324267 mask!3328))))

(assert (=> b!731689 (= lt!324265 (select (store (arr!19707 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!731689 (= lt!324267 (array!41186 (store (arr!19707 a!3186) i!1173 k!2102) (size!20128 a!3186)))))

(declare-fun b!731690 () Bool)

(declare-fun res!491727 () Bool)

(assert (=> b!731690 (=> (not res!491727) (not e!409452))))

(assert (=> b!731690 (= res!491727 e!409456)))

(declare-fun c!80355 () Bool)

(assert (=> b!731690 (= c!80355 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!731691 () Bool)

(declare-fun res!491733 () Bool)

(assert (=> b!731691 (=> (not res!491733) (not e!409459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!731691 (= res!491733 (validKeyInArray!0 k!2102))))

(declare-fun b!731692 () Bool)

(assert (=> b!731692 (= e!409455 e!409452)))

(declare-fun res!491723 () Bool)

(assert (=> b!731692 (=> (not res!491723) (not e!409452))))

(declare-fun lt!324263 () SeekEntryResult!7314)

(assert (=> b!731692 (= res!491723 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324263))))

(assert (=> b!731692 (= lt!324263 (Intermediate!7314 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!731693 () Bool)

(assert (=> b!731693 (= e!409461 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!324262 #b00000000000000000000000000000000) (bvsge lt!324262 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun b!731694 () Bool)

(declare-fun res!491730 () Bool)

(assert (=> b!731694 (=> (not res!491730) (not e!409459))))

(assert (=> b!731694 (= res!491730 (validKeyInArray!0 (select (arr!19707 a!3186) j!159)))))

(declare-fun b!731695 () Bool)

(assert (=> b!731695 (= e!409457 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324269))))

(declare-fun b!731696 () Bool)

(assert (=> b!731696 (= e!409456 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324263))))

(assert (= (and start!64852 res!491721) b!731680))

(assert (= (and b!731680 res!491719) b!731694))

(assert (= (and b!731694 res!491730) b!731691))

(assert (= (and b!731691 res!491733) b!731682))

(assert (= (and b!731682 res!491724) b!731678))

(assert (= (and b!731678 res!491728) b!731677))

(assert (= (and b!731677 res!491732) b!731688))

(assert (= (and b!731688 res!491734) b!731685))

(assert (= (and b!731685 res!491736) b!731692))

(assert (= (and b!731692 res!491723) b!731686))

(assert (= (and b!731686 res!491735) b!731690))

(assert (= (and b!731690 c!80355) b!731696))

(assert (= (and b!731690 (not c!80355)) b!731683))

(assert (= (and b!731690 res!491727) b!731689))

(assert (= (and b!731689 res!491729) b!731687))

(assert (= (and b!731687 res!491720) b!731684))

(assert (= (and b!731684 res!491725) b!731695))

(assert (= (and b!731687 (not res!491726)) b!731681))

(assert (= (and b!731681 (not res!491731)) b!731679))

(assert (= (and b!731679 (not res!491722)) b!731693))

(declare-fun m!685015 () Bool)

(assert (=> b!731678 m!685015))

(declare-fun m!685017 () Bool)

(assert (=> b!731691 m!685017))

(declare-fun m!685019 () Bool)

(assert (=> b!731684 m!685019))

(assert (=> b!731684 m!685019))

(declare-fun m!685021 () Bool)

(assert (=> b!731684 m!685021))

(assert (=> b!731683 m!685019))

(assert (=> b!731683 m!685019))

(declare-fun m!685023 () Bool)

(assert (=> b!731683 m!685023))

(declare-fun m!685025 () Bool)

(assert (=> b!731687 m!685025))

(declare-fun m!685027 () Bool)

(assert (=> b!731687 m!685027))

(assert (=> b!731694 m!685019))

(assert (=> b!731694 m!685019))

(declare-fun m!685029 () Bool)

(assert (=> b!731694 m!685029))

(declare-fun m!685031 () Bool)

(assert (=> start!64852 m!685031))

(declare-fun m!685033 () Bool)

(assert (=> start!64852 m!685033))

(declare-fun m!685035 () Bool)

(assert (=> b!731689 m!685035))

(declare-fun m!685037 () Bool)

(assert (=> b!731689 m!685037))

(declare-fun m!685039 () Bool)

(assert (=> b!731689 m!685039))

(declare-fun m!685041 () Bool)

(assert (=> b!731689 m!685041))

(assert (=> b!731689 m!685035))

(declare-fun m!685043 () Bool)

(assert (=> b!731689 m!685043))

(declare-fun m!685045 () Bool)

(assert (=> b!731677 m!685045))

(declare-fun m!685047 () Bool)

(assert (=> b!731686 m!685047))

(assert (=> b!731696 m!685019))

(assert (=> b!731696 m!685019))

(declare-fun m!685049 () Bool)

(assert (=> b!731696 m!685049))

(declare-fun m!685051 () Bool)

(assert (=> b!731688 m!685051))

(declare-fun m!685053 () Bool)

(assert (=> b!731681 m!685053))

(assert (=> b!731679 m!685019))

(assert (=> b!731679 m!685019))

(assert (=> b!731679 m!685023))

(assert (=> b!731692 m!685019))

(assert (=> b!731692 m!685019))

(declare-fun m!685055 () Bool)

(assert (=> b!731692 m!685055))

(assert (=> b!731692 m!685055))

(assert (=> b!731692 m!685019))

(declare-fun m!685057 () Bool)

(assert (=> b!731692 m!685057))

(assert (=> b!731695 m!685019))

(assert (=> b!731695 m!685019))

(declare-fun m!685059 () Bool)

(assert (=> b!731695 m!685059))

(declare-fun m!685061 () Bool)

(assert (=> b!731682 m!685061))

(push 1)

(assert (not b!731684))

(assert (not b!731682))

(assert (not b!731683))

(assert (not b!731691))

(assert (not b!731688))

(assert (not b!731689))

(assert (not b!731695))

(assert (not b!731679))

(assert (not b!731696))

(assert (not b!731681))

(assert (not b!731687))

(assert (not start!64852))

(assert (not b!731692))

(assert (not b!731677))

(assert (not b!731678))

(assert (not b!731694))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!731870 () Bool)

(declare-fun e!409554 () Bool)

(declare-fun e!409552 () Bool)

(assert (=> b!731870 (= e!409554 e!409552)))

(declare-fun lt!324346 () (_ BitVec 64))

(assert (=> b!731870 (= lt!324346 (select (arr!19707 a!3186) j!159))))

(declare-fun lt!324345 () Unit!24946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41185 (_ BitVec 64) (_ BitVec 32)) Unit!24946)

(assert (=> b!731870 (= lt!324345 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324346 j!159))))

(assert (=> b!731870 (arrayContainsKey!0 a!3186 lt!324346 #b00000000000000000000000000000000)))

(declare-fun lt!324347 () Unit!24946)

(assert (=> b!731870 (= lt!324347 lt!324345)))

(declare-fun res!491859 () Bool)

(assert (=> b!731870 (= res!491859 (= (seekEntryOrOpen!0 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) (Found!7314 j!159)))))

(assert (=> b!731870 (=> (not res!491859) (not e!409552))))

(declare-fun b!731871 () Bool)

(declare-fun e!409553 () Bool)

(assert (=> b!731871 (= e!409553 e!409554)))

(declare-fun c!80382 () Bool)

(assert (=> b!731871 (= c!80382 (validKeyInArray!0 (select (arr!19707 a!3186) j!159)))))

(declare-fun call!34851 () Bool)

(declare-fun bm!34848 () Bool)

(assert (=> bm!34848 (= call!34851 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!731872 () Bool)

(assert (=> b!731872 (= e!409552 call!34851)))

(declare-fun b!731873 () Bool)

(assert (=> b!731873 (= e!409554 call!34851)))

(declare-fun d!99675 () Bool)

(declare-fun res!491858 () Bool)

(assert (=> d!99675 (=> res!491858 e!409553)))

(assert (=> d!99675 (= res!491858 (bvsge j!159 (size!20128 a!3186)))))

(assert (=> d!99675 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!409553)))

(assert (= (and d!99675 (not res!491858)) b!731871))

(assert (= (and b!731871 c!80382) b!731870))

(assert (= (and b!731871 (not c!80382)) b!731873))

(assert (= (and b!731870 res!491859) b!731872))

(assert (= (or b!731872 b!731873) bm!34848))

(assert (=> b!731870 m!685019))

(declare-fun m!685179 () Bool)

(assert (=> b!731870 m!685179))

(declare-fun m!685181 () Bool)

(assert (=> b!731870 m!685181))

(assert (=> b!731870 m!685019))

(assert (=> b!731870 m!685021))

(assert (=> b!731871 m!685019))

(assert (=> b!731871 m!685019))

(assert (=> b!731871 m!685029))

(declare-fun m!685183 () Bool)

(assert (=> bm!34848 m!685183))

(assert (=> b!731687 d!99675))

(declare-fun d!99681 () Bool)

(assert (=> d!99681 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!324359 () Unit!24946)

(declare-fun choose!38 (array!41185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24946)

(assert (=> d!99681 (= lt!324359 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99681 (validMask!0 mask!3328)))

(assert (=> d!99681 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!324359)))

(declare-fun bs!20939 () Bool)

(assert (= bs!20939 d!99681))

(assert (=> bs!20939 m!685025))

(declare-fun m!685197 () Bool)

(assert (=> bs!20939 m!685197))

(assert (=> bs!20939 m!685031))

(assert (=> b!731687 d!99681))

(declare-fun b!731886 () Bool)

(declare-fun e!409566 () Bool)

(declare-fun e!409564 () Bool)

(assert (=> b!731886 (= e!409566 e!409564)))

(declare-fun lt!324361 () (_ BitVec 64))

(assert (=> b!731886 (= lt!324361 (select (arr!19707 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!324360 () Unit!24946)

(assert (=> b!731886 (= lt!324360 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!324361 #b00000000000000000000000000000000))))

(assert (=> b!731886 (arrayContainsKey!0 a!3186 lt!324361 #b00000000000000000000000000000000)))

(declare-fun lt!324362 () Unit!24946)

(assert (=> b!731886 (= lt!324362 lt!324360)))

(declare-fun res!491867 () Bool)

(assert (=> b!731886 (= res!491867 (= (seekEntryOrOpen!0 (select (arr!19707 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7314 #b00000000000000000000000000000000)))))

(assert (=> b!731886 (=> (not res!491867) (not e!409564))))

(declare-fun b!731887 () Bool)

(declare-fun e!409565 () Bool)

(assert (=> b!731887 (= e!409565 e!409566)))

(declare-fun c!80386 () Bool)

(assert (=> b!731887 (= c!80386 (validKeyInArray!0 (select (arr!19707 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34852 () Bool)

(declare-fun call!34855 () Bool)

(assert (=> bm!34852 (= call!34855 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!731888 () Bool)

(assert (=> b!731888 (= e!409564 call!34855)))

(declare-fun b!731889 () Bool)

(assert (=> b!731889 (= e!409566 call!34855)))

(declare-fun d!99685 () Bool)

(declare-fun res!491866 () Bool)

(assert (=> d!99685 (=> res!491866 e!409565)))

(assert (=> d!99685 (= res!491866 (bvsge #b00000000000000000000000000000000 (size!20128 a!3186)))))

(assert (=> d!99685 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!409565)))

(assert (= (and d!99685 (not res!491866)) b!731887))

(assert (= (and b!731887 c!80386) b!731886))

(assert (= (and b!731887 (not c!80386)) b!731889))

(assert (= (and b!731886 res!491867) b!731888))

(assert (= (or b!731888 b!731889) bm!34852))

(declare-fun m!685199 () Bool)

(assert (=> b!731886 m!685199))

(declare-fun m!685201 () Bool)

(assert (=> b!731886 m!685201))

(declare-fun m!685203 () Bool)

(assert (=> b!731886 m!685203))

(assert (=> b!731886 m!685199))

(declare-fun m!685205 () Bool)

(assert (=> b!731886 m!685205))

(assert (=> b!731887 m!685199))

(assert (=> b!731887 m!685199))

(declare-fun m!685207 () Bool)

(assert (=> b!731887 m!685207))

(declare-fun m!685209 () Bool)

(assert (=> bm!34852 m!685209))

(assert (=> b!731677 d!99685))

(declare-fun d!99687 () Bool)

(declare-fun res!491883 () Bool)

(declare-fun e!409596 () Bool)

(assert (=> d!99687 (=> res!491883 e!409596)))

(assert (=> d!99687 (= res!491883 (bvsge #b00000000000000000000000000000000 (size!20128 a!3186)))))

(assert (=> d!99687 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13759) e!409596)))

(declare-fun b!731933 () Bool)

(declare-fun e!409598 () Bool)

(assert (=> b!731933 (= e!409596 e!409598)))

(declare-fun res!491884 () Bool)

(assert (=> b!731933 (=> (not res!491884) (not e!409598))))

(declare-fun e!409597 () Bool)

(assert (=> b!731933 (= res!491884 (not e!409597))))

(declare-fun res!491885 () Bool)

(assert (=> b!731933 (=> (not res!491885) (not e!409597))))

(assert (=> b!731933 (= res!491885 (validKeyInArray!0 (select (arr!19707 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731934 () Bool)

(declare-fun e!409599 () Bool)

(declare-fun call!34861 () Bool)

(assert (=> b!731934 (= e!409599 call!34861)))

(declare-fun bm!34858 () Bool)

(declare-fun c!80401 () Bool)

(assert (=> bm!34858 (= call!34861 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!80401 (Cons!13758 (select (arr!19707 a!3186) #b00000000000000000000000000000000) Nil!13759) Nil!13759)))))

(declare-fun b!731935 () Bool)

(declare-fun contains!4058 (List!13762 (_ BitVec 64)) Bool)

(assert (=> b!731935 (= e!409597 (contains!4058 Nil!13759 (select (arr!19707 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731936 () Bool)

(assert (=> b!731936 (= e!409598 e!409599)))

(assert (=> b!731936 (= c!80401 (validKeyInArray!0 (select (arr!19707 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!731937 () Bool)

(assert (=> b!731937 (= e!409599 call!34861)))

(assert (= (and d!99687 (not res!491883)) b!731933))

(assert (= (and b!731933 res!491885) b!731935))

(assert (= (and b!731933 res!491884) b!731936))

(assert (= (and b!731936 c!80401) b!731934))

(assert (= (and b!731936 (not c!80401)) b!731937))

(assert (= (or b!731934 b!731937) bm!34858))

(assert (=> b!731933 m!685199))

(assert (=> b!731933 m!685199))

(assert (=> b!731933 m!685207))

(assert (=> bm!34858 m!685199))

(declare-fun m!685223 () Bool)

(assert (=> bm!34858 m!685223))

(assert (=> b!731935 m!685199))

(assert (=> b!731935 m!685199))

(declare-fun m!685225 () Bool)

(assert (=> b!731935 m!685225))

(assert (=> b!731936 m!685199))

(assert (=> b!731936 m!685199))

(assert (=> b!731936 m!685207))

(assert (=> b!731688 d!99687))

(declare-fun d!99693 () Bool)

(assert (=> d!99693 (= (validKeyInArray!0 (select (arr!19707 a!3186) j!159)) (and (not (= (select (arr!19707 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19707 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!731694 d!99693))

(declare-fun b!731989 () Bool)

(declare-fun c!80420 () Bool)

(declare-fun lt!324385 () (_ BitVec 64))

(assert (=> b!731989 (= c!80420 (= lt!324385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409632 () SeekEntryResult!7314)

(declare-fun e!409631 () SeekEntryResult!7314)

(assert (=> b!731989 (= e!409632 e!409631)))

(declare-fun b!731990 () Bool)

(declare-fun e!409630 () SeekEntryResult!7314)

(assert (=> b!731990 (= e!409630 e!409632)))

(declare-fun lt!324383 () SeekEntryResult!7314)

(assert (=> b!731990 (= lt!324385 (select (arr!19707 a!3186) (index!31625 lt!324383)))))

(declare-fun c!80421 () Bool)

(assert (=> b!731990 (= c!80421 (= lt!324385 (select (arr!19707 a!3186) j!159)))))

(declare-fun b!731991 () Bool)

(assert (=> b!731991 (= e!409632 (Found!7314 (index!31625 lt!324383)))))

(declare-fun d!99697 () Bool)

(declare-fun lt!324384 () SeekEntryResult!7314)

(assert (=> d!99697 (and (or (is-Undefined!7314 lt!324384) (not (is-Found!7314 lt!324384)) (and (bvsge (index!31624 lt!324384) #b00000000000000000000000000000000) (bvslt (index!31624 lt!324384) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324384) (is-Found!7314 lt!324384) (not (is-MissingZero!7314 lt!324384)) (and (bvsge (index!31623 lt!324384) #b00000000000000000000000000000000) (bvslt (index!31623 lt!324384) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324384) (is-Found!7314 lt!324384) (is-MissingZero!7314 lt!324384) (not (is-MissingVacant!7314 lt!324384)) (and (bvsge (index!31626 lt!324384) #b00000000000000000000000000000000) (bvslt (index!31626 lt!324384) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324384) (ite (is-Found!7314 lt!324384) (= (select (arr!19707 a!3186) (index!31624 lt!324384)) (select (arr!19707 a!3186) j!159)) (ite (is-MissingZero!7314 lt!324384) (= (select (arr!19707 a!3186) (index!31623 lt!324384)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7314 lt!324384) (= (select (arr!19707 a!3186) (index!31626 lt!324384)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99697 (= lt!324384 e!409630)))

(declare-fun c!80422 () Bool)

(assert (=> d!99697 (= c!80422 (and (is-Intermediate!7314 lt!324383) (undefined!8126 lt!324383)))))

(assert (=> d!99697 (= lt!324383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) (select (arr!19707 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99697 (validMask!0 mask!3328)))

(assert (=> d!99697 (= (seekEntryOrOpen!0 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324384)))

(declare-fun b!731992 () Bool)

(assert (=> b!731992 (= e!409631 (MissingZero!7314 (index!31625 lt!324383)))))

(declare-fun b!731993 () Bool)

(assert (=> b!731993 (= e!409630 Undefined!7314)))

(declare-fun b!731994 () Bool)

(assert (=> b!731994 (= e!409631 (seekKeyOrZeroReturnVacant!0 (x!62637 lt!324383) (index!31625 lt!324383) (index!31625 lt!324383) (select (arr!19707 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99697 c!80422) b!731993))

(assert (= (and d!99697 (not c!80422)) b!731990))

(assert (= (and b!731990 c!80421) b!731991))

(assert (= (and b!731990 (not c!80421)) b!731989))

(assert (= (and b!731989 c!80420) b!731992))

(assert (= (and b!731989 (not c!80420)) b!731994))

(declare-fun m!685241 () Bool)

(assert (=> b!731990 m!685241))

(assert (=> d!99697 m!685055))

(assert (=> d!99697 m!685019))

(assert (=> d!99697 m!685057))

(declare-fun m!685243 () Bool)

(assert (=> d!99697 m!685243))

(declare-fun m!685245 () Bool)

(assert (=> d!99697 m!685245))

(assert (=> d!99697 m!685019))

(assert (=> d!99697 m!685055))

(declare-fun m!685247 () Bool)

(assert (=> d!99697 m!685247))

(assert (=> d!99697 m!685031))

(assert (=> b!731994 m!685019))

(declare-fun m!685249 () Bool)

(assert (=> b!731994 m!685249))

(assert (=> b!731684 d!99697))

(declare-fun b!732038 () Bool)

(declare-fun e!409658 () SeekEntryResult!7314)

(assert (=> b!732038 (= e!409658 (MissingVacant!7314 resIntermediateIndex!5))))

(declare-fun lt!324411 () SeekEntryResult!7314)

(declare-fun d!99707 () Bool)

(assert (=> d!99707 (and (or (is-Undefined!7314 lt!324411) (not (is-Found!7314 lt!324411)) (and (bvsge (index!31624 lt!324411) #b00000000000000000000000000000000) (bvslt (index!31624 lt!324411) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324411) (is-Found!7314 lt!324411) (not (is-MissingVacant!7314 lt!324411)) (not (= (index!31626 lt!324411) resIntermediateIndex!5)) (and (bvsge (index!31626 lt!324411) #b00000000000000000000000000000000) (bvslt (index!31626 lt!324411) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324411) (ite (is-Found!7314 lt!324411) (= (select (arr!19707 a!3186) (index!31624 lt!324411)) (select (arr!19707 a!3186) j!159)) (and (is-MissingVacant!7314 lt!324411) (= (index!31626 lt!324411) resIntermediateIndex!5) (= (select (arr!19707 a!3186) (index!31626 lt!324411)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409656 () SeekEntryResult!7314)

(assert (=> d!99707 (= lt!324411 e!409656)))

(declare-fun c!80444 () Bool)

(assert (=> d!99707 (= c!80444 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!324410 () (_ BitVec 64))

(assert (=> d!99707 (= lt!324410 (select (arr!19707 a!3186) resIntermediateIndex!5))))

(assert (=> d!99707 (validMask!0 mask!3328)))

(assert (=> d!99707 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324411)))

(declare-fun b!732039 () Bool)

(assert (=> b!732039 (= e!409656 Undefined!7314)))

(declare-fun b!732040 () Bool)

(declare-fun e!409657 () SeekEntryResult!7314)

(assert (=> b!732040 (= e!409656 e!409657)))

(declare-fun c!80443 () Bool)

(assert (=> b!732040 (= c!80443 (= lt!324410 (select (arr!19707 a!3186) j!159)))))

(declare-fun b!732041 () Bool)

(assert (=> b!732041 (= e!409657 (Found!7314 resIntermediateIndex!5))))

(declare-fun b!732042 () Bool)

(declare-fun c!80442 () Bool)

(assert (=> b!732042 (= c!80442 (= lt!324410 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732042 (= e!409657 e!409658)))

(declare-fun b!732043 () Bool)

(assert (=> b!732043 (= e!409658 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99707 c!80444) b!732039))

(assert (= (and d!99707 (not c!80444)) b!732040))

(assert (= (and b!732040 c!80443) b!732041))

(assert (= (and b!732040 (not c!80443)) b!732042))

(assert (= (and b!732042 c!80442) b!732038))

(assert (= (and b!732042 (not c!80442)) b!732043))

(declare-fun m!685273 () Bool)

(assert (=> d!99707 m!685273))

(declare-fun m!685275 () Bool)

(assert (=> d!99707 m!685275))

(assert (=> d!99707 m!685047))

(assert (=> d!99707 m!685031))

(declare-fun m!685277 () Bool)

(assert (=> b!732043 m!685277))

(assert (=> b!732043 m!685277))

(assert (=> b!732043 m!685019))

(declare-fun m!685279 () Bool)

(assert (=> b!732043 m!685279))

(assert (=> b!731695 d!99707))

(declare-fun b!732118 () Bool)

(declare-fun e!409704 () SeekEntryResult!7314)

(declare-fun e!409700 () SeekEntryResult!7314)

(assert (=> b!732118 (= e!409704 e!409700)))

(declare-fun lt!324445 () (_ BitVec 64))

(declare-fun c!80475 () Bool)

(assert (=> b!732118 (= c!80475 (or (= lt!324445 (select (arr!19707 a!3186) j!159)) (= (bvadd lt!324445 lt!324445) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732119 () Bool)

(assert (=> b!732119 (= e!409700 (Intermediate!7314 false index!1321 x!1131))))

(declare-fun b!732120 () Bool)

(assert (=> b!732120 (= e!409700 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19707 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732121 () Bool)

(declare-fun lt!324446 () SeekEntryResult!7314)

(assert (=> b!732121 (and (bvsge (index!31625 lt!324446) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324446) (size!20128 a!3186)))))

(declare-fun res!491924 () Bool)

(assert (=> b!732121 (= res!491924 (= (select (arr!19707 a!3186) (index!31625 lt!324446)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409702 () Bool)

(assert (=> b!732121 (=> res!491924 e!409702)))

(declare-fun b!732122 () Bool)

(declare-fun e!409703 () Bool)

(declare-fun e!409701 () Bool)

(assert (=> b!732122 (= e!409703 e!409701)))

(declare-fun res!491923 () Bool)

(assert (=> b!732122 (= res!491923 (and (is-Intermediate!7314 lt!324446) (not (undefined!8126 lt!324446)) (bvslt (x!62637 lt!324446) #b01111111111111111111111111111110) (bvsge (x!62637 lt!324446) #b00000000000000000000000000000000) (bvsge (x!62637 lt!324446) x!1131)))))

(assert (=> b!732122 (=> (not res!491923) (not e!409701))))

(declare-fun b!732123 () Bool)

(assert (=> b!732123 (and (bvsge (index!31625 lt!324446) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324446) (size!20128 a!3186)))))

(declare-fun res!491925 () Bool)

(assert (=> b!732123 (= res!491925 (= (select (arr!19707 a!3186) (index!31625 lt!324446)) (select (arr!19707 a!3186) j!159)))))

(assert (=> b!732123 (=> res!491925 e!409702)))

(assert (=> b!732123 (= e!409701 e!409702)))

(declare-fun b!732125 () Bool)

(assert (=> b!732125 (= e!409703 (bvsge (x!62637 lt!324446) #b01111111111111111111111111111110))))

(declare-fun b!732126 () Bool)

(assert (=> b!732126 (and (bvsge (index!31625 lt!324446) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324446) (size!20128 a!3186)))))

(assert (=> b!732126 (= e!409702 (= (select (arr!19707 a!3186) (index!31625 lt!324446)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!732124 () Bool)

(assert (=> b!732124 (= e!409704 (Intermediate!7314 true index!1321 x!1131))))

(declare-fun d!99725 () Bool)

(assert (=> d!99725 e!409703))

(declare-fun c!80474 () Bool)

(assert (=> d!99725 (= c!80474 (and (is-Intermediate!7314 lt!324446) (undefined!8126 lt!324446)))))

(assert (=> d!99725 (= lt!324446 e!409704)))

(declare-fun c!80476 () Bool)

(assert (=> d!99725 (= c!80476 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99725 (= lt!324445 (select (arr!19707 a!3186) index!1321))))

(assert (=> d!99725 (validMask!0 mask!3328)))

(assert (=> d!99725 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324446)))

(assert (= (and d!99725 c!80476) b!732124))

(assert (= (and d!99725 (not c!80476)) b!732118))

(assert (= (and b!732118 c!80475) b!732119))

(assert (= (and b!732118 (not c!80475)) b!732120))

(assert (= (and d!99725 c!80474) b!732125))

(assert (= (and d!99725 (not c!80474)) b!732122))

(assert (= (and b!732122 res!491923) b!732123))

(assert (= (and b!732123 (not res!491925)) b!732121))

(assert (= (and b!732121 (not res!491924)) b!732126))

(declare-fun m!685325 () Bool)

(assert (=> b!732123 m!685325))

(declare-fun m!685327 () Bool)

(assert (=> d!99725 m!685327))

(assert (=> d!99725 m!685031))

(assert (=> b!732121 m!685325))

(assert (=> b!732126 m!685325))

(assert (=> b!732120 m!685053))

(assert (=> b!732120 m!685053))

(assert (=> b!732120 m!685019))

(declare-fun m!685329 () Bool)

(assert (=> b!732120 m!685329))

(assert (=> b!731696 d!99725))

(declare-fun d!99741 () Bool)

(declare-fun lt!324452 () (_ BitVec 32))

(assert (=> d!99741 (and (bvsge lt!324452 #b00000000000000000000000000000000) (bvslt lt!324452 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99741 (= lt!324452 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99741 (validMask!0 mask!3328)))

(assert (=> d!99741 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!324452)))

(declare-fun bs!20942 () Bool)

(assert (= bs!20942 d!99741))

(declare-fun m!685337 () Bool)

(assert (=> bs!20942 m!685337))

(assert (=> bs!20942 m!685031))

(assert (=> b!731681 d!99741))

(declare-fun d!99745 () Bool)

(assert (=> d!99745 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64852 d!99745))

(declare-fun d!99753 () Bool)

(assert (=> d!99753 (= (array_inv!15481 a!3186) (bvsge (size!20128 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64852 d!99753))

(declare-fun b!732148 () Bool)

(declare-fun e!409723 () SeekEntryResult!7314)

(declare-fun e!409719 () SeekEntryResult!7314)

(assert (=> b!732148 (= e!409723 e!409719)))

(declare-fun c!80482 () Bool)

(declare-fun lt!324464 () (_ BitVec 64))

(assert (=> b!732148 (= c!80482 (or (= lt!324464 (select (arr!19707 a!3186) j!159)) (= (bvadd lt!324464 lt!324464) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732149 () Bool)

(assert (=> b!732149 (= e!409719 (Intermediate!7314 false (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!732150 () Bool)

(assert (=> b!732150 (= e!409719 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19707 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732151 () Bool)

(declare-fun lt!324465 () SeekEntryResult!7314)

(assert (=> b!732151 (and (bvsge (index!31625 lt!324465) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324465) (size!20128 a!3186)))))

(declare-fun res!491939 () Bool)

(assert (=> b!732151 (= res!491939 (= (select (arr!19707 a!3186) (index!31625 lt!324465)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409721 () Bool)

(assert (=> b!732151 (=> res!491939 e!409721)))

(declare-fun b!732152 () Bool)

(declare-fun e!409722 () Bool)

(declare-fun e!409720 () Bool)

(assert (=> b!732152 (= e!409722 e!409720)))

(declare-fun res!491938 () Bool)

(assert (=> b!732152 (= res!491938 (and (is-Intermediate!7314 lt!324465) (not (undefined!8126 lt!324465)) (bvslt (x!62637 lt!324465) #b01111111111111111111111111111110) (bvsge (x!62637 lt!324465) #b00000000000000000000000000000000) (bvsge (x!62637 lt!324465) #b00000000000000000000000000000000)))))

(assert (=> b!732152 (=> (not res!491938) (not e!409720))))

(declare-fun b!732153 () Bool)

(assert (=> b!732153 (and (bvsge (index!31625 lt!324465) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324465) (size!20128 a!3186)))))

(declare-fun res!491940 () Bool)

(assert (=> b!732153 (= res!491940 (= (select (arr!19707 a!3186) (index!31625 lt!324465)) (select (arr!19707 a!3186) j!159)))))

(assert (=> b!732153 (=> res!491940 e!409721)))

(assert (=> b!732153 (= e!409720 e!409721)))

(declare-fun b!732155 () Bool)

(assert (=> b!732155 (= e!409722 (bvsge (x!62637 lt!324465) #b01111111111111111111111111111110))))

(declare-fun b!732156 () Bool)

(assert (=> b!732156 (and (bvsge (index!31625 lt!324465) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324465) (size!20128 a!3186)))))

(assert (=> b!732156 (= e!409721 (= (select (arr!19707 a!3186) (index!31625 lt!324465)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!732154 () Bool)

(assert (=> b!732154 (= e!409723 (Intermediate!7314 true (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99755 () Bool)

(assert (=> d!99755 e!409722))

(declare-fun c!80481 () Bool)

(assert (=> d!99755 (= c!80481 (and (is-Intermediate!7314 lt!324465) (undefined!8126 lt!324465)))))

(assert (=> d!99755 (= lt!324465 e!409723)))

(declare-fun c!80483 () Bool)

(assert (=> d!99755 (= c!80483 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99755 (= lt!324464 (select (arr!19707 a!3186) (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328)))))

(assert (=> d!99755 (validMask!0 mask!3328)))

(assert (=> d!99755 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324465)))

(assert (= (and d!99755 c!80483) b!732154))

(assert (= (and d!99755 (not c!80483)) b!732148))

(assert (= (and b!732148 c!80482) b!732149))

(assert (= (and b!732148 (not c!80482)) b!732150))

(assert (= (and d!99755 c!80481) b!732155))

(assert (= (and d!99755 (not c!80481)) b!732152))

(assert (= (and b!732152 res!491938) b!732153))

(assert (= (and b!732153 (not res!491940)) b!732151))

(assert (= (and b!732151 (not res!491939)) b!732156))

(declare-fun m!685349 () Bool)

(assert (=> b!732153 m!685349))

(assert (=> d!99755 m!685055))

(declare-fun m!685351 () Bool)

(assert (=> d!99755 m!685351))

(assert (=> d!99755 m!685031))

(assert (=> b!732151 m!685349))

(assert (=> b!732156 m!685349))

(assert (=> b!732150 m!685055))

(declare-fun m!685353 () Bool)

(assert (=> b!732150 m!685353))

(assert (=> b!732150 m!685353))

(assert (=> b!732150 m!685019))

(declare-fun m!685355 () Bool)

(assert (=> b!732150 m!685355))

(assert (=> b!731692 d!99755))

(declare-fun d!99757 () Bool)

(declare-fun lt!324481 () (_ BitVec 32))

(declare-fun lt!324480 () (_ BitVec 32))

(assert (=> d!99757 (= lt!324481 (bvmul (bvxor lt!324480 (bvlshr lt!324480 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99757 (= lt!324480 ((_ extract 31 0) (bvand (bvxor (select (arr!19707 a!3186) j!159) (bvlshr (select (arr!19707 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99757 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!491941 (let ((h!14826 ((_ extract 31 0) (bvand (bvxor (select (arr!19707 a!3186) j!159) (bvlshr (select (arr!19707 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62650 (bvmul (bvxor h!14826 (bvlshr h!14826 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62650 (bvlshr x!62650 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!491941 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!491941 #b00000000000000000000000000000000))))))

(assert (=> d!99757 (= (toIndex!0 (select (arr!19707 a!3186) j!159) mask!3328) (bvand (bvxor lt!324481 (bvlshr lt!324481 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!731692 d!99757))

(declare-fun d!99769 () Bool)

(declare-fun res!491957 () Bool)

(declare-fun e!409750 () Bool)

(assert (=> d!99769 (=> res!491957 e!409750)))

(assert (=> d!99769 (= res!491957 (= (select (arr!19707 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99769 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!409750)))

(declare-fun b!732196 () Bool)

(declare-fun e!409751 () Bool)

(assert (=> b!732196 (= e!409750 e!409751)))

(declare-fun res!491958 () Bool)

(assert (=> b!732196 (=> (not res!491958) (not e!409751))))

(assert (=> b!732196 (= res!491958 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20128 a!3186)))))

(declare-fun b!732197 () Bool)

(assert (=> b!732197 (= e!409751 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99769 (not res!491957)) b!732196))

(assert (= (and b!732196 res!491958) b!732197))

(assert (=> d!99769 m!685199))

(declare-fun m!685401 () Bool)

(assert (=> b!732197 m!685401))

(assert (=> b!731682 d!99769))

(declare-fun b!732198 () Bool)

(declare-fun e!409754 () SeekEntryResult!7314)

(assert (=> b!732198 (= e!409754 (MissingVacant!7314 resIntermediateIndex!5))))

(declare-fun d!99775 () Bool)

(declare-fun lt!324488 () SeekEntryResult!7314)

(assert (=> d!99775 (and (or (is-Undefined!7314 lt!324488) (not (is-Found!7314 lt!324488)) (and (bvsge (index!31624 lt!324488) #b00000000000000000000000000000000) (bvslt (index!31624 lt!324488) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324488) (is-Found!7314 lt!324488) (not (is-MissingVacant!7314 lt!324488)) (not (= (index!31626 lt!324488) resIntermediateIndex!5)) (and (bvsge (index!31626 lt!324488) #b00000000000000000000000000000000) (bvslt (index!31626 lt!324488) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324488) (ite (is-Found!7314 lt!324488) (= (select (arr!19707 a!3186) (index!31624 lt!324488)) (select (arr!19707 a!3186) j!159)) (and (is-MissingVacant!7314 lt!324488) (= (index!31626 lt!324488) resIntermediateIndex!5) (= (select (arr!19707 a!3186) (index!31626 lt!324488)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!409752 () SeekEntryResult!7314)

(assert (=> d!99775 (= lt!324488 e!409752)))

(declare-fun c!80499 () Bool)

(assert (=> d!99775 (= c!80499 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!324487 () (_ BitVec 64))

(assert (=> d!99775 (= lt!324487 (select (arr!19707 a!3186) index!1321))))

(assert (=> d!99775 (validMask!0 mask!3328)))

(assert (=> d!99775 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328) lt!324488)))

(declare-fun b!732199 () Bool)

(assert (=> b!732199 (= e!409752 Undefined!7314)))

(declare-fun b!732200 () Bool)

(declare-fun e!409753 () SeekEntryResult!7314)

(assert (=> b!732200 (= e!409752 e!409753)))

(declare-fun c!80498 () Bool)

(assert (=> b!732200 (= c!80498 (= lt!324487 (select (arr!19707 a!3186) j!159)))))

(declare-fun b!732201 () Bool)

(assert (=> b!732201 (= e!409753 (Found!7314 index!1321))))

(declare-fun b!732202 () Bool)

(declare-fun c!80497 () Bool)

(assert (=> b!732202 (= c!80497 (= lt!324487 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!732202 (= e!409753 e!409754)))

(declare-fun b!732203 () Bool)

(assert (=> b!732203 (= e!409754 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19707 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99775 c!80499) b!732199))

(assert (= (and d!99775 (not c!80499)) b!732200))

(assert (= (and b!732200 c!80498) b!732201))

(assert (= (and b!732200 (not c!80498)) b!732202))

(assert (= (and b!732202 c!80497) b!732198))

(assert (= (and b!732202 (not c!80497)) b!732203))

(declare-fun m!685405 () Bool)

(assert (=> d!99775 m!685405))

(declare-fun m!685407 () Bool)

(assert (=> d!99775 m!685407))

(assert (=> d!99775 m!685327))

(assert (=> d!99775 m!685031))

(assert (=> b!732203 m!685053))

(assert (=> b!732203 m!685053))

(assert (=> b!732203 m!685019))

(declare-fun m!685409 () Bool)

(assert (=> b!732203 m!685409))

(assert (=> b!731683 d!99775))

(declare-fun b!732204 () Bool)

(declare-fun c!80500 () Bool)

(declare-fun lt!324491 () (_ BitVec 64))

(assert (=> b!732204 (= c!80500 (= lt!324491 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409757 () SeekEntryResult!7314)

(declare-fun e!409756 () SeekEntryResult!7314)

(assert (=> b!732204 (= e!409757 e!409756)))

(declare-fun b!732205 () Bool)

(declare-fun e!409755 () SeekEntryResult!7314)

(assert (=> b!732205 (= e!409755 e!409757)))

(declare-fun lt!324489 () SeekEntryResult!7314)

(assert (=> b!732205 (= lt!324491 (select (arr!19707 a!3186) (index!31625 lt!324489)))))

(declare-fun c!80501 () Bool)

(assert (=> b!732205 (= c!80501 (= lt!324491 k!2102))))

(declare-fun b!732206 () Bool)

(assert (=> b!732206 (= e!409757 (Found!7314 (index!31625 lt!324489)))))

(declare-fun d!99779 () Bool)

(declare-fun lt!324490 () SeekEntryResult!7314)

(assert (=> d!99779 (and (or (is-Undefined!7314 lt!324490) (not (is-Found!7314 lt!324490)) (and (bvsge (index!31624 lt!324490) #b00000000000000000000000000000000) (bvslt (index!31624 lt!324490) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324490) (is-Found!7314 lt!324490) (not (is-MissingZero!7314 lt!324490)) (and (bvsge (index!31623 lt!324490) #b00000000000000000000000000000000) (bvslt (index!31623 lt!324490) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324490) (is-Found!7314 lt!324490) (is-MissingZero!7314 lt!324490) (not (is-MissingVacant!7314 lt!324490)) (and (bvsge (index!31626 lt!324490) #b00000000000000000000000000000000) (bvslt (index!31626 lt!324490) (size!20128 a!3186)))) (or (is-Undefined!7314 lt!324490) (ite (is-Found!7314 lt!324490) (= (select (arr!19707 a!3186) (index!31624 lt!324490)) k!2102) (ite (is-MissingZero!7314 lt!324490) (= (select (arr!19707 a!3186) (index!31623 lt!324490)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7314 lt!324490) (= (select (arr!19707 a!3186) (index!31626 lt!324490)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99779 (= lt!324490 e!409755)))

(declare-fun c!80502 () Bool)

(assert (=> d!99779 (= c!80502 (and (is-Intermediate!7314 lt!324489) (undefined!8126 lt!324489)))))

(assert (=> d!99779 (= lt!324489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99779 (validMask!0 mask!3328)))

(assert (=> d!99779 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!324490)))

(declare-fun b!732207 () Bool)

(assert (=> b!732207 (= e!409756 (MissingZero!7314 (index!31625 lt!324489)))))

(declare-fun b!732208 () Bool)

(assert (=> b!732208 (= e!409755 Undefined!7314)))

(declare-fun b!732209 () Bool)

(assert (=> b!732209 (= e!409756 (seekKeyOrZeroReturnVacant!0 (x!62637 lt!324489) (index!31625 lt!324489) (index!31625 lt!324489) k!2102 a!3186 mask!3328))))

(assert (= (and d!99779 c!80502) b!732208))

(assert (= (and d!99779 (not c!80502)) b!732205))

(assert (= (and b!732205 c!80501) b!732206))

(assert (= (and b!732205 (not c!80501)) b!732204))

(assert (= (and b!732204 c!80500) b!732207))

(assert (= (and b!732204 (not c!80500)) b!732209))

(declare-fun m!685411 () Bool)

(assert (=> b!732205 m!685411))

(declare-fun m!685413 () Bool)

(assert (=> d!99779 m!685413))

(declare-fun m!685415 () Bool)

(assert (=> d!99779 m!685415))

(declare-fun m!685417 () Bool)

(assert (=> d!99779 m!685417))

(declare-fun m!685419 () Bool)

(assert (=> d!99779 m!685419))

(assert (=> d!99779 m!685413))

(declare-fun m!685421 () Bool)

(assert (=> d!99779 m!685421))

(assert (=> d!99779 m!685031))

(declare-fun m!685423 () Bool)

(assert (=> b!732209 m!685423))

(assert (=> b!731678 d!99779))

(declare-fun b!732214 () Bool)

(declare-fun e!409766 () SeekEntryResult!7314)

(declare-fun e!409762 () SeekEntryResult!7314)

(assert (=> b!732214 (= e!409766 e!409762)))

(declare-fun c!80504 () Bool)

(declare-fun lt!324492 () (_ BitVec 64))

(assert (=> b!732214 (= c!80504 (or (= lt!324492 lt!324265) (= (bvadd lt!324492 lt!324492) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732215 () Bool)

(assert (=> b!732215 (= e!409762 (Intermediate!7314 false index!1321 x!1131))))

(declare-fun b!732216 () Bool)

(assert (=> b!732216 (= e!409762 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!324265 lt!324267 mask!3328))))

(declare-fun b!732217 () Bool)

(declare-fun lt!324493 () SeekEntryResult!7314)

(assert (=> b!732217 (and (bvsge (index!31625 lt!324493) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324493) (size!20128 lt!324267)))))

(declare-fun res!491964 () Bool)

(assert (=> b!732217 (= res!491964 (= (select (arr!19707 lt!324267) (index!31625 lt!324493)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!409764 () Bool)

(assert (=> b!732217 (=> res!491964 e!409764)))

(declare-fun b!732218 () Bool)

(declare-fun e!409765 () Bool)

(declare-fun e!409763 () Bool)

(assert (=> b!732218 (= e!409765 e!409763)))

(declare-fun res!491963 () Bool)

(assert (=> b!732218 (= res!491963 (and (is-Intermediate!7314 lt!324493) (not (undefined!8126 lt!324493)) (bvslt (x!62637 lt!324493) #b01111111111111111111111111111110) (bvsge (x!62637 lt!324493) #b00000000000000000000000000000000) (bvsge (x!62637 lt!324493) x!1131)))))

(assert (=> b!732218 (=> (not res!491963) (not e!409763))))

(declare-fun b!732219 () Bool)

(assert (=> b!732219 (and (bvsge (index!31625 lt!324493) #b00000000000000000000000000000000) (bvslt (index!31625 lt!324493) (size!20128 lt!324267)))))

(declare-fun res!491965 () Bool)

(assert (=> b!732219 (= res!491965 (= (select (arr!19707 lt!324267) (index!31625 lt!324493)) lt!324265))))

(assert (=> b!732219 (=> res!491965 e!409764)))

