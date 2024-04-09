; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66680 () Bool)

(assert start!66680)

(declare-fun b!768004 () Bool)

(declare-fun res!519598 () Bool)

(declare-fun e!427700 () Bool)

(assert (=> b!768004 (=> (not res!519598) (not e!427700))))

(declare-datatypes ((array!42274 0))(
  ( (array!42275 (arr!20235 (Array (_ BitVec 32) (_ BitVec 64))) (size!20656 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42274)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!768004 (= res!519598 (and (= (size!20656 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20656 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20656 a!3186)) (not (= i!1173 j!159))))))

(declare-datatypes ((SeekEntryResult!7842 0))(
  ( (MissingZero!7842 (index!33735 (_ BitVec 32))) (Found!7842 (index!33736 (_ BitVec 32))) (Intermediate!7842 (undefined!8654 Bool) (index!33737 (_ BitVec 32)) (x!64689 (_ BitVec 32))) (Undefined!7842) (MissingVacant!7842 (index!33738 (_ BitVec 32))) )
))
(declare-fun lt!341682 () SeekEntryResult!7842)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!427695 () Bool)

(declare-fun b!768005 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42274 (_ BitVec 32)) SeekEntryResult!7842)

(assert (=> b!768005 (= e!427695 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341682))))

(declare-fun b!768006 () Bool)

(declare-fun e!427701 () Bool)

(declare-fun e!427702 () Bool)

(assert (=> b!768006 (= e!427701 e!427702)))

(declare-fun res!519608 () Bool)

(assert (=> b!768006 (=> (not res!519608) (not e!427702))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768006 (= res!519608 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341682))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768006 (= lt!341682 (Intermediate!7842 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!768007 () Bool)

(declare-fun res!519604 () Bool)

(assert (=> b!768007 (=> (not res!519604) (not e!427702))))

(assert (=> b!768007 (= res!519604 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20235 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768008 () Bool)

(declare-fun lt!341677 () (_ BitVec 32))

(declare-fun lt!341683 () SeekEntryResult!7842)

(declare-fun e!427698 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42274 (_ BitVec 32)) SeekEntryResult!7842)

(assert (=> b!768008 (= e!427698 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341677 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341683))))

(declare-fun b!768009 () Bool)

(assert (=> b!768009 (= e!427695 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) (Found!7842 j!159)))))

(declare-fun b!768010 () Bool)

(declare-fun res!519605 () Bool)

(assert (=> b!768010 (=> (not res!519605) (not e!427700))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42274 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768010 (= res!519605 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768011 () Bool)

(declare-fun e!427696 () Bool)

(declare-fun e!427697 () Bool)

(assert (=> b!768011 (= e!427696 e!427697)))

(declare-fun res!519606 () Bool)

(assert (=> b!768011 (=> (not res!519606) (not e!427697))))

(declare-fun lt!341685 () SeekEntryResult!7842)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42274 (_ BitVec 32)) SeekEntryResult!7842)

(assert (=> b!768011 (= res!519606 (= (seekEntryOrOpen!0 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341685))))

(assert (=> b!768011 (= lt!341685 (Found!7842 j!159))))

(declare-fun b!768012 () Bool)

(declare-fun e!427699 () Bool)

(declare-fun e!427694 () Bool)

(assert (=> b!768012 (= e!427699 (not e!427694))))

(declare-fun res!519601 () Bool)

(assert (=> b!768012 (=> res!519601 e!427694)))

(declare-fun lt!341686 () SeekEntryResult!7842)

(assert (=> b!768012 (= res!519601 (or (not (is-Intermediate!7842 lt!341686)) (bvsge x!1131 (x!64689 lt!341686))))))

(assert (=> b!768012 (= lt!341683 (Found!7842 j!159))))

(assert (=> b!768012 e!427696))

(declare-fun res!519603 () Bool)

(assert (=> b!768012 (=> (not res!519603) (not e!427696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42274 (_ BitVec 32)) Bool)

(assert (=> b!768012 (= res!519603 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26410 0))(
  ( (Unit!26411) )
))
(declare-fun lt!341679 () Unit!26410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26410)

(assert (=> b!768012 (= lt!341679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768013 () Bool)

(assert (=> b!768013 (= e!427697 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341685))))

(declare-fun b!768014 () Bool)

(assert (=> b!768014 (= e!427694 e!427698)))

(declare-fun res!519597 () Bool)

(assert (=> b!768014 (=> res!519597 e!427698)))

(assert (=> b!768014 (= res!519597 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768014 (= lt!341677 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768015 () Bool)

(assert (=> b!768015 (= e!427700 e!427701)))

(declare-fun res!519600 () Bool)

(assert (=> b!768015 (=> (not res!519600) (not e!427701))))

(declare-fun lt!341678 () SeekEntryResult!7842)

(assert (=> b!768015 (= res!519600 (or (= lt!341678 (MissingZero!7842 i!1173)) (= lt!341678 (MissingVacant!7842 i!1173))))))

(assert (=> b!768015 (= lt!341678 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!768016 () Bool)

(declare-fun res!519610 () Bool)

(assert (=> b!768016 (=> (not res!519610) (not e!427701))))

(declare-datatypes ((List!14290 0))(
  ( (Nil!14287) (Cons!14286 (h!15382 (_ BitVec 64)) (t!20613 List!14290)) )
))
(declare-fun arrayNoDuplicates!0 (array!42274 (_ BitVec 32) List!14290) Bool)

(assert (=> b!768016 (= res!519610 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14287))))

(declare-fun b!768017 () Bool)

(declare-fun res!519611 () Bool)

(assert (=> b!768017 (=> (not res!519611) (not e!427702))))

(assert (=> b!768017 (= res!519611 e!427695)))

(declare-fun c!84597 () Bool)

(assert (=> b!768017 (= c!84597 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768018 () Bool)

(declare-fun res!519602 () Bool)

(assert (=> b!768018 (=> (not res!519602) (not e!427701))))

(assert (=> b!768018 (= res!519602 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20656 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20656 a!3186))))))

(declare-fun b!768019 () Bool)

(declare-fun res!519596 () Bool)

(assert (=> b!768019 (=> (not res!519596) (not e!427700))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768019 (= res!519596 (validKeyInArray!0 k!2102))))

(declare-fun res!519599 () Bool)

(assert (=> start!66680 (=> (not res!519599) (not e!427700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66680 (= res!519599 (validMask!0 mask!3328))))

(assert (=> start!66680 e!427700))

(assert (=> start!66680 true))

(declare-fun array_inv!16009 (array!42274) Bool)

(assert (=> start!66680 (array_inv!16009 a!3186)))

(declare-fun b!768020 () Bool)

(declare-fun res!519595 () Bool)

(assert (=> b!768020 (=> (not res!519595) (not e!427701))))

(assert (=> b!768020 (= res!519595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768021 () Bool)

(declare-fun res!519609 () Bool)

(assert (=> b!768021 (=> (not res!519609) (not e!427700))))

(assert (=> b!768021 (= res!519609 (validKeyInArray!0 (select (arr!20235 a!3186) j!159)))))

(declare-fun b!768022 () Bool)

(declare-fun res!519607 () Bool)

(assert (=> b!768022 (=> res!519607 e!427698)))

(assert (=> b!768022 (= res!519607 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341683))))

(declare-fun b!768023 () Bool)

(assert (=> b!768023 (= e!427702 e!427699)))

(declare-fun res!519612 () Bool)

(assert (=> b!768023 (=> (not res!519612) (not e!427699))))

(declare-fun lt!341684 () SeekEntryResult!7842)

(assert (=> b!768023 (= res!519612 (= lt!341684 lt!341686))))

(declare-fun lt!341680 () (_ BitVec 64))

(declare-fun lt!341681 () array!42274)

(assert (=> b!768023 (= lt!341686 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341680 lt!341681 mask!3328))))

(assert (=> b!768023 (= lt!341684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341680 mask!3328) lt!341680 lt!341681 mask!3328))))

(assert (=> b!768023 (= lt!341680 (select (store (arr!20235 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!768023 (= lt!341681 (array!42275 (store (arr!20235 a!3186) i!1173 k!2102) (size!20656 a!3186)))))

(assert (= (and start!66680 res!519599) b!768004))

(assert (= (and b!768004 res!519598) b!768021))

(assert (= (and b!768021 res!519609) b!768019))

(assert (= (and b!768019 res!519596) b!768010))

(assert (= (and b!768010 res!519605) b!768015))

(assert (= (and b!768015 res!519600) b!768020))

(assert (= (and b!768020 res!519595) b!768016))

(assert (= (and b!768016 res!519610) b!768018))

(assert (= (and b!768018 res!519602) b!768006))

(assert (= (and b!768006 res!519608) b!768007))

(assert (= (and b!768007 res!519604) b!768017))

(assert (= (and b!768017 c!84597) b!768005))

(assert (= (and b!768017 (not c!84597)) b!768009))

(assert (= (and b!768017 res!519611) b!768023))

(assert (= (and b!768023 res!519612) b!768012))

(assert (= (and b!768012 res!519603) b!768011))

(assert (= (and b!768011 res!519606) b!768013))

(assert (= (and b!768012 (not res!519601)) b!768014))

(assert (= (and b!768014 (not res!519597)) b!768022))

(assert (= (and b!768022 (not res!519607)) b!768008))

(declare-fun m!713687 () Bool)

(assert (=> b!768013 m!713687))

(assert (=> b!768013 m!713687))

(declare-fun m!713689 () Bool)

(assert (=> b!768013 m!713689))

(assert (=> b!768021 m!713687))

(assert (=> b!768021 m!713687))

(declare-fun m!713691 () Bool)

(assert (=> b!768021 m!713691))

(declare-fun m!713693 () Bool)

(assert (=> b!768016 m!713693))

(assert (=> b!768009 m!713687))

(assert (=> b!768009 m!713687))

(declare-fun m!713695 () Bool)

(assert (=> b!768009 m!713695))

(declare-fun m!713697 () Bool)

(assert (=> b!768020 m!713697))

(declare-fun m!713699 () Bool)

(assert (=> b!768010 m!713699))

(assert (=> b!768008 m!713687))

(assert (=> b!768008 m!713687))

(declare-fun m!713701 () Bool)

(assert (=> b!768008 m!713701))

(assert (=> b!768005 m!713687))

(assert (=> b!768005 m!713687))

(declare-fun m!713703 () Bool)

(assert (=> b!768005 m!713703))

(declare-fun m!713705 () Bool)

(assert (=> start!66680 m!713705))

(declare-fun m!713707 () Bool)

(assert (=> start!66680 m!713707))

(assert (=> b!768011 m!713687))

(assert (=> b!768011 m!713687))

(declare-fun m!713709 () Bool)

(assert (=> b!768011 m!713709))

(assert (=> b!768006 m!713687))

(assert (=> b!768006 m!713687))

(declare-fun m!713711 () Bool)

(assert (=> b!768006 m!713711))

(assert (=> b!768006 m!713711))

(assert (=> b!768006 m!713687))

(declare-fun m!713713 () Bool)

(assert (=> b!768006 m!713713))

(declare-fun m!713715 () Bool)

(assert (=> b!768014 m!713715))

(declare-fun m!713717 () Bool)

(assert (=> b!768012 m!713717))

(declare-fun m!713719 () Bool)

(assert (=> b!768012 m!713719))

(declare-fun m!713721 () Bool)

(assert (=> b!768015 m!713721))

(declare-fun m!713723 () Bool)

(assert (=> b!768007 m!713723))

(assert (=> b!768022 m!713687))

(assert (=> b!768022 m!713687))

(assert (=> b!768022 m!713695))

(declare-fun m!713725 () Bool)

(assert (=> b!768023 m!713725))

(declare-fun m!713727 () Bool)

(assert (=> b!768023 m!713727))

(declare-fun m!713729 () Bool)

(assert (=> b!768023 m!713729))

(declare-fun m!713731 () Bool)

(assert (=> b!768023 m!713731))

(assert (=> b!768023 m!713727))

(declare-fun m!713733 () Bool)

(assert (=> b!768023 m!713733))

(declare-fun m!713735 () Bool)

(assert (=> b!768019 m!713735))

(push 1)

(assert (not b!768021))

(assert (not b!768009))

(assert (not start!66680))

(assert (not b!768005))

(assert (not b!768014))

(assert (not b!768019))

(assert (not b!768012))

(assert (not b!768013))

(assert (not b!768016))

(assert (not b!768008))

(assert (not b!768020))

(assert (not b!768011))

(assert (not b!768015))

(assert (not b!768006))

(assert (not b!768023))

(assert (not b!768022))

(assert (not b!768010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!101429 () Bool)

(declare-fun res!519753 () Bool)

(declare-fun e!427841 () Bool)

(assert (=> d!101429 (=> res!519753 e!427841)))

(assert (=> d!101429 (= res!519753 (bvsge #b00000000000000000000000000000000 (size!20656 a!3186)))))

(assert (=> d!101429 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427841)))

(declare-fun b!768276 () Bool)

(declare-fun e!427839 () Bool)

(declare-fun e!427840 () Bool)

(assert (=> b!768276 (= e!427839 e!427840)))

(declare-fun lt!341813 () (_ BitVec 64))

(assert (=> b!768276 (= lt!341813 (select (arr!20235 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341811 () Unit!26410)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42274 (_ BitVec 64) (_ BitVec 32)) Unit!26410)

(assert (=> b!768276 (= lt!341811 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341813 #b00000000000000000000000000000000))))

(assert (=> b!768276 (arrayContainsKey!0 a!3186 lt!341813 #b00000000000000000000000000000000)))

(declare-fun lt!341812 () Unit!26410)

(assert (=> b!768276 (= lt!341812 lt!341811)))

(declare-fun res!519752 () Bool)

(assert (=> b!768276 (= res!519752 (= (seekEntryOrOpen!0 (select (arr!20235 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7842 #b00000000000000000000000000000000)))))

(assert (=> b!768276 (=> (not res!519752) (not e!427840))))

(declare-fun b!768277 () Bool)

(declare-fun call!35092 () Bool)

(assert (=> b!768277 (= e!427840 call!35092)))

(declare-fun b!768278 () Bool)

(assert (=> b!768278 (= e!427839 call!35092)))

(declare-fun bm!35089 () Bool)

(assert (=> bm!35089 (= call!35092 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!768279 () Bool)

(assert (=> b!768279 (= e!427841 e!427839)))

(declare-fun c!84655 () Bool)

(assert (=> b!768279 (= c!84655 (validKeyInArray!0 (select (arr!20235 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101429 (not res!519753)) b!768279))

(assert (= (and b!768279 c!84655) b!768276))

(assert (= (and b!768279 (not c!84655)) b!768278))

(assert (= (and b!768276 res!519752) b!768277))

(assert (= (or b!768277 b!768278) bm!35089))

(declare-fun m!713913 () Bool)

(assert (=> b!768276 m!713913))

(declare-fun m!713915 () Bool)

(assert (=> b!768276 m!713915))

(declare-fun m!713917 () Bool)

(assert (=> b!768276 m!713917))

(assert (=> b!768276 m!713913))

(declare-fun m!713919 () Bool)

(assert (=> b!768276 m!713919))

(declare-fun m!713921 () Bool)

(assert (=> bm!35089 m!713921))

(assert (=> b!768279 m!713913))

(assert (=> b!768279 m!713913))

(declare-fun m!713923 () Bool)

(assert (=> b!768279 m!713923))

(assert (=> b!768020 d!101429))

(declare-fun b!768358 () Bool)

(declare-fun e!427891 () SeekEntryResult!7842)

(assert (=> b!768358 (= e!427891 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768359 () Bool)

(declare-fun c!84683 () Bool)

(declare-fun lt!341833 () (_ BitVec 64))

(assert (=> b!768359 (= c!84683 (= lt!341833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427892 () SeekEntryResult!7842)

(assert (=> b!768359 (= e!427892 e!427891)))

(declare-fun b!768360 () Bool)

(declare-fun e!427890 () SeekEntryResult!7842)

(assert (=> b!768360 (= e!427890 e!427892)))

(declare-fun c!84685 () Bool)

(assert (=> b!768360 (= c!84685 (= lt!341833 (select (arr!20235 a!3186) j!159)))))

(declare-fun b!768361 () Bool)

(assert (=> b!768361 (= e!427890 Undefined!7842)))

(declare-fun d!101431 () Bool)

(declare-fun lt!341832 () SeekEntryResult!7842)

(assert (=> d!101431 (and (or (is-Undefined!7842 lt!341832) (not (is-Found!7842 lt!341832)) (and (bvsge (index!33736 lt!341832) #b00000000000000000000000000000000) (bvslt (index!33736 lt!341832) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341832) (is-Found!7842 lt!341832) (not (is-MissingVacant!7842 lt!341832)) (not (= (index!33738 lt!341832) resIntermediateIndex!5)) (and (bvsge (index!33738 lt!341832) #b00000000000000000000000000000000) (bvslt (index!33738 lt!341832) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341832) (ite (is-Found!7842 lt!341832) (= (select (arr!20235 a!3186) (index!33736 lt!341832)) (select (arr!20235 a!3186) j!159)) (and (is-MissingVacant!7842 lt!341832) (= (index!33738 lt!341832) resIntermediateIndex!5) (= (select (arr!20235 a!3186) (index!33738 lt!341832)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101431 (= lt!341832 e!427890)))

(declare-fun c!84684 () Bool)

(assert (=> d!101431 (= c!84684 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101431 (= lt!341833 (select (arr!20235 a!3186) index!1321))))

(assert (=> d!101431 (validMask!0 mask!3328)))

(assert (=> d!101431 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341832)))

(declare-fun b!768362 () Bool)

(assert (=> b!768362 (= e!427892 (Found!7842 index!1321))))

(declare-fun b!768363 () Bool)

(assert (=> b!768363 (= e!427891 (MissingVacant!7842 resIntermediateIndex!5))))

(assert (= (and d!101431 c!84684) b!768361))

(assert (= (and d!101431 (not c!84684)) b!768360))

(assert (= (and b!768360 c!84685) b!768362))

(assert (= (and b!768360 (not c!84685)) b!768359))

(assert (= (and b!768359 c!84683) b!768363))

(assert (= (and b!768359 (not c!84683)) b!768358))

(assert (=> b!768358 m!713715))

(assert (=> b!768358 m!713715))

(assert (=> b!768358 m!713687))

(declare-fun m!713969 () Bool)

(assert (=> b!768358 m!713969))

(declare-fun m!713971 () Bool)

(assert (=> d!101431 m!713971))

(declare-fun m!713973 () Bool)

(assert (=> d!101431 m!713973))

(declare-fun m!713975 () Bool)

(assert (=> d!101431 m!713975))

(assert (=> d!101431 m!713705))

(assert (=> b!768009 d!101431))

(declare-fun d!101445 () Bool)

(assert (=> d!101445 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768019 d!101445))

(declare-fun d!101447 () Bool)

(assert (=> d!101447 (= (validKeyInArray!0 (select (arr!20235 a!3186) j!159)) (and (not (= (select (arr!20235 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20235 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768021 d!101447))

(declare-fun d!101449 () Bool)

(declare-fun res!519782 () Bool)

(declare-fun e!427897 () Bool)

(assert (=> d!101449 (=> res!519782 e!427897)))

(assert (=> d!101449 (= res!519782 (= (select (arr!20235 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101449 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!427897)))

(declare-fun b!768368 () Bool)

(declare-fun e!427898 () Bool)

(assert (=> b!768368 (= e!427897 e!427898)))

(declare-fun res!519783 () Bool)

(assert (=> b!768368 (=> (not res!519783) (not e!427898))))

(assert (=> b!768368 (= res!519783 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20656 a!3186)))))

(declare-fun b!768369 () Bool)

(assert (=> b!768369 (= e!427898 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101449 (not res!519782)) b!768368))

(assert (= (and b!768368 res!519783) b!768369))

(assert (=> d!101449 m!713913))

(declare-fun m!713977 () Bool)

(assert (=> b!768369 m!713977))

(assert (=> b!768010 d!101449))

(declare-fun d!101451 () Bool)

(declare-fun res!519785 () Bool)

(declare-fun e!427901 () Bool)

(assert (=> d!101451 (=> res!519785 e!427901)))

(assert (=> d!101451 (= res!519785 (bvsge j!159 (size!20656 a!3186)))))

(assert (=> d!101451 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!427901)))

(declare-fun b!768370 () Bool)

(declare-fun e!427899 () Bool)

(declare-fun e!427900 () Bool)

(assert (=> b!768370 (= e!427899 e!427900)))

(declare-fun lt!341836 () (_ BitVec 64))

(assert (=> b!768370 (= lt!341836 (select (arr!20235 a!3186) j!159))))

(declare-fun lt!341834 () Unit!26410)

(assert (=> b!768370 (= lt!341834 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341836 j!159))))

(assert (=> b!768370 (arrayContainsKey!0 a!3186 lt!341836 #b00000000000000000000000000000000)))

(declare-fun lt!341835 () Unit!26410)

(assert (=> b!768370 (= lt!341835 lt!341834)))

(declare-fun res!519784 () Bool)

(assert (=> b!768370 (= res!519784 (= (seekEntryOrOpen!0 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) (Found!7842 j!159)))))

(assert (=> b!768370 (=> (not res!519784) (not e!427900))))

(declare-fun b!768371 () Bool)

(declare-fun call!35096 () Bool)

(assert (=> b!768371 (= e!427900 call!35096)))

(declare-fun b!768372 () Bool)

(assert (=> b!768372 (= e!427899 call!35096)))

(declare-fun bm!35093 () Bool)

(assert (=> bm!35093 (= call!35096 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!768373 () Bool)

(assert (=> b!768373 (= e!427901 e!427899)))

(declare-fun c!84686 () Bool)

(assert (=> b!768373 (= c!84686 (validKeyInArray!0 (select (arr!20235 a!3186) j!159)))))

(assert (= (and d!101451 (not res!519785)) b!768373))

(assert (= (and b!768373 c!84686) b!768370))

(assert (= (and b!768373 (not c!84686)) b!768372))

(assert (= (and b!768370 res!519784) b!768371))

(assert (= (or b!768371 b!768372) bm!35093))

(assert (=> b!768370 m!713687))

(declare-fun m!713979 () Bool)

(assert (=> b!768370 m!713979))

(declare-fun m!713981 () Bool)

(assert (=> b!768370 m!713981))

(assert (=> b!768370 m!713687))

(assert (=> b!768370 m!713709))

(declare-fun m!713983 () Bool)

(assert (=> bm!35093 m!713983))

(assert (=> b!768373 m!713687))

(assert (=> b!768373 m!713687))

(assert (=> b!768373 m!713691))

(assert (=> b!768012 d!101451))

(declare-fun d!101453 () Bool)

(assert (=> d!101453 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341839 () Unit!26410)

(declare-fun choose!38 (array!42274 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26410)

(assert (=> d!101453 (= lt!341839 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101453 (validMask!0 mask!3328)))

(assert (=> d!101453 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341839)))

(declare-fun bs!21527 () Bool)

(assert (= bs!21527 d!101453))

(assert (=> bs!21527 m!713717))

(declare-fun m!713985 () Bool)

(assert (=> bs!21527 m!713985))

(assert (=> bs!21527 m!713705))

(assert (=> b!768012 d!101453))

(assert (=> b!768022 d!101431))

(declare-fun b!768410 () Bool)

(declare-fun e!427925 () SeekEntryResult!7842)

(declare-fun lt!341857 () SeekEntryResult!7842)

(assert (=> b!768410 (= e!427925 (MissingZero!7842 (index!33737 lt!341857)))))

(declare-fun b!768411 () Bool)

(declare-fun e!427924 () SeekEntryResult!7842)

(declare-fun e!427923 () SeekEntryResult!7842)

(assert (=> b!768411 (= e!427924 e!427923)))

(declare-fun lt!341856 () (_ BitVec 64))

(assert (=> b!768411 (= lt!341856 (select (arr!20235 a!3186) (index!33737 lt!341857)))))

(declare-fun c!84702 () Bool)

(assert (=> b!768411 (= c!84702 (= lt!341856 (select (arr!20235 a!3186) j!159)))))

(declare-fun d!101455 () Bool)

(declare-fun lt!341855 () SeekEntryResult!7842)

(assert (=> d!101455 (and (or (is-Undefined!7842 lt!341855) (not (is-Found!7842 lt!341855)) (and (bvsge (index!33736 lt!341855) #b00000000000000000000000000000000) (bvslt (index!33736 lt!341855) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341855) (is-Found!7842 lt!341855) (not (is-MissingZero!7842 lt!341855)) (and (bvsge (index!33735 lt!341855) #b00000000000000000000000000000000) (bvslt (index!33735 lt!341855) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341855) (is-Found!7842 lt!341855) (is-MissingZero!7842 lt!341855) (not (is-MissingVacant!7842 lt!341855)) (and (bvsge (index!33738 lt!341855) #b00000000000000000000000000000000) (bvslt (index!33738 lt!341855) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341855) (ite (is-Found!7842 lt!341855) (= (select (arr!20235 a!3186) (index!33736 lt!341855)) (select (arr!20235 a!3186) j!159)) (ite (is-MissingZero!7842 lt!341855) (= (select (arr!20235 a!3186) (index!33735 lt!341855)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7842 lt!341855) (= (select (arr!20235 a!3186) (index!33738 lt!341855)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101455 (= lt!341855 e!427924)))

(declare-fun c!84704 () Bool)

(assert (=> d!101455 (= c!84704 (and (is-Intermediate!7842 lt!341857) (undefined!8654 lt!341857)))))

(assert (=> d!101455 (= lt!341857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101455 (validMask!0 mask!3328)))

(assert (=> d!101455 (= (seekEntryOrOpen!0 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341855)))

(declare-fun b!768412 () Bool)

(assert (=> b!768412 (= e!427923 (Found!7842 (index!33737 lt!341857)))))

(declare-fun b!768413 () Bool)

(assert (=> b!768413 (= e!427924 Undefined!7842)))

(declare-fun b!768414 () Bool)

(assert (=> b!768414 (= e!427925 (seekKeyOrZeroReturnVacant!0 (x!64689 lt!341857) (index!33737 lt!341857) (index!33737 lt!341857) (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768415 () Bool)

(declare-fun c!84703 () Bool)

(assert (=> b!768415 (= c!84703 (= lt!341856 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768415 (= e!427923 e!427925)))

(assert (= (and d!101455 c!84704) b!768413))

(assert (= (and d!101455 (not c!84704)) b!768411))

(assert (= (and b!768411 c!84702) b!768412))

(assert (= (and b!768411 (not c!84702)) b!768415))

(assert (= (and b!768415 c!84703) b!768410))

(assert (= (and b!768415 (not c!84703)) b!768414))

(declare-fun m!714001 () Bool)

(assert (=> b!768411 m!714001))

(declare-fun m!714003 () Bool)

(assert (=> d!101455 m!714003))

(assert (=> d!101455 m!713705))

(declare-fun m!714005 () Bool)

(assert (=> d!101455 m!714005))

(assert (=> d!101455 m!713687))

(assert (=> d!101455 m!713711))

(assert (=> d!101455 m!713711))

(assert (=> d!101455 m!713687))

(assert (=> d!101455 m!713713))

(declare-fun m!714007 () Bool)

(assert (=> d!101455 m!714007))

(assert (=> b!768414 m!713687))

(declare-fun m!714009 () Bool)

(assert (=> b!768414 m!714009))

(assert (=> b!768011 d!101455))

(declare-fun e!427927 () SeekEntryResult!7842)

(declare-fun b!768416 () Bool)

(assert (=> b!768416 (= e!427927 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768417 () Bool)

(declare-fun c!84705 () Bool)

(declare-fun lt!341859 () (_ BitVec 64))

(assert (=> b!768417 (= c!84705 (= lt!341859 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427928 () SeekEntryResult!7842)

(assert (=> b!768417 (= e!427928 e!427927)))

(declare-fun b!768418 () Bool)

(declare-fun e!427926 () SeekEntryResult!7842)

(assert (=> b!768418 (= e!427926 e!427928)))

(declare-fun c!84707 () Bool)

(assert (=> b!768418 (= c!84707 (= lt!341859 (select (arr!20235 a!3186) j!159)))))

(declare-fun b!768419 () Bool)

(assert (=> b!768419 (= e!427926 Undefined!7842)))

(declare-fun lt!341858 () SeekEntryResult!7842)

(declare-fun d!101461 () Bool)

(assert (=> d!101461 (and (or (is-Undefined!7842 lt!341858) (not (is-Found!7842 lt!341858)) (and (bvsge (index!33736 lt!341858) #b00000000000000000000000000000000) (bvslt (index!33736 lt!341858) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341858) (is-Found!7842 lt!341858) (not (is-MissingVacant!7842 lt!341858)) (not (= (index!33738 lt!341858) resIntermediateIndex!5)) (and (bvsge (index!33738 lt!341858) #b00000000000000000000000000000000) (bvslt (index!33738 lt!341858) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341858) (ite (is-Found!7842 lt!341858) (= (select (arr!20235 a!3186) (index!33736 lt!341858)) (select (arr!20235 a!3186) j!159)) (and (is-MissingVacant!7842 lt!341858) (= (index!33738 lt!341858) resIntermediateIndex!5) (= (select (arr!20235 a!3186) (index!33738 lt!341858)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101461 (= lt!341858 e!427926)))

(declare-fun c!84706 () Bool)

(assert (=> d!101461 (= c!84706 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101461 (= lt!341859 (select (arr!20235 a!3186) resIntermediateIndex!5))))

(assert (=> d!101461 (validMask!0 mask!3328)))

(assert (=> d!101461 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341858)))

(declare-fun b!768420 () Bool)

(assert (=> b!768420 (= e!427928 (Found!7842 resIntermediateIndex!5))))

(declare-fun b!768421 () Bool)

(assert (=> b!768421 (= e!427927 (MissingVacant!7842 resIntermediateIndex!5))))

(assert (= (and d!101461 c!84706) b!768419))

(assert (= (and d!101461 (not c!84706)) b!768418))

(assert (= (and b!768418 c!84707) b!768420))

(assert (= (and b!768418 (not c!84707)) b!768417))

(assert (= (and b!768417 c!84705) b!768421))

(assert (= (and b!768417 (not c!84705)) b!768416))

(declare-fun m!714011 () Bool)

(assert (=> b!768416 m!714011))

(assert (=> b!768416 m!714011))

(assert (=> b!768416 m!713687))

(declare-fun m!714013 () Bool)

(assert (=> b!768416 m!714013))

(declare-fun m!714015 () Bool)

(assert (=> d!101461 m!714015))

(declare-fun m!714017 () Bool)

(assert (=> d!101461 m!714017))

(assert (=> d!101461 m!713723))

(assert (=> d!101461 m!713705))

(assert (=> b!768013 d!101461))

(declare-fun b!768464 () Bool)

(declare-fun e!427952 () Bool)

(declare-fun e!427955 () Bool)

(assert (=> b!768464 (= e!427952 e!427955)))

(declare-fun res!519806 () Bool)

(declare-fun lt!341877 () SeekEntryResult!7842)

(assert (=> b!768464 (= res!519806 (and (is-Intermediate!7842 lt!341877) (not (undefined!8654 lt!341877)) (bvslt (x!64689 lt!341877) #b01111111111111111111111111111110) (bvsge (x!64689 lt!341877) #b00000000000000000000000000000000) (bvsge (x!64689 lt!341877) x!1131)))))

(assert (=> b!768464 (=> (not res!519806) (not e!427955))))

(declare-fun b!768465 () Bool)

(declare-fun e!427953 () SeekEntryResult!7842)

(assert (=> b!768465 (= e!427953 (Intermediate!7842 true index!1321 x!1131))))

(declare-fun e!427956 () SeekEntryResult!7842)

(declare-fun b!768467 () Bool)

(assert (=> b!768467 (= e!427956 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341680 lt!341681 mask!3328))))

(declare-fun b!768468 () Bool)

(assert (=> b!768468 (= e!427953 e!427956)))

(declare-fun c!84724 () Bool)

(declare-fun lt!341876 () (_ BitVec 64))

(assert (=> b!768468 (= c!84724 (or (= lt!341876 lt!341680) (= (bvadd lt!341876 lt!341876) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768469 () Bool)

(assert (=> b!768469 (and (bvsge (index!33737 lt!341877) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341877) (size!20656 lt!341681)))))

(declare-fun e!427954 () Bool)

(assert (=> b!768469 (= e!427954 (= (select (arr!20235 lt!341681) (index!33737 lt!341877)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768470 () Bool)

(assert (=> b!768470 (= e!427956 (Intermediate!7842 false index!1321 x!1131))))

(declare-fun b!768471 () Bool)

(assert (=> b!768471 (= e!427952 (bvsge (x!64689 lt!341877) #b01111111111111111111111111111110))))

(declare-fun b!768472 () Bool)

(assert (=> b!768472 (and (bvsge (index!33737 lt!341877) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341877) (size!20656 lt!341681)))))

(declare-fun res!519805 () Bool)

(assert (=> b!768472 (= res!519805 (= (select (arr!20235 lt!341681) (index!33737 lt!341877)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768472 (=> res!519805 e!427954)))

(declare-fun d!101463 () Bool)

(assert (=> d!101463 e!427952))

(declare-fun c!84725 () Bool)

(assert (=> d!101463 (= c!84725 (and (is-Intermediate!7842 lt!341877) (undefined!8654 lt!341877)))))

(assert (=> d!101463 (= lt!341877 e!427953)))

(declare-fun c!84723 () Bool)

(assert (=> d!101463 (= c!84723 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101463 (= lt!341876 (select (arr!20235 lt!341681) index!1321))))

(assert (=> d!101463 (validMask!0 mask!3328)))

(assert (=> d!101463 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341680 lt!341681 mask!3328) lt!341877)))

(declare-fun b!768466 () Bool)

(assert (=> b!768466 (and (bvsge (index!33737 lt!341877) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341877) (size!20656 lt!341681)))))

(declare-fun res!519807 () Bool)

(assert (=> b!768466 (= res!519807 (= (select (arr!20235 lt!341681) (index!33737 lt!341877)) lt!341680))))

(assert (=> b!768466 (=> res!519807 e!427954)))

(assert (=> b!768466 (= e!427955 e!427954)))

(assert (= (and d!101463 c!84723) b!768465))

(assert (= (and d!101463 (not c!84723)) b!768468))

(assert (= (and b!768468 c!84724) b!768470))

(assert (= (and b!768468 (not c!84724)) b!768467))

(assert (= (and d!101463 c!84725) b!768471))

(assert (= (and d!101463 (not c!84725)) b!768464))

(assert (= (and b!768464 res!519806) b!768466))

(assert (= (and b!768466 (not res!519807)) b!768472))

(assert (= (and b!768472 (not res!519805)) b!768469))

(assert (=> b!768467 m!713715))

(assert (=> b!768467 m!713715))

(declare-fun m!714039 () Bool)

(assert (=> b!768467 m!714039))

(declare-fun m!714041 () Bool)

(assert (=> b!768469 m!714041))

(declare-fun m!714043 () Bool)

(assert (=> d!101463 m!714043))

(assert (=> d!101463 m!713705))

(assert (=> b!768466 m!714041))

(assert (=> b!768472 m!714041))

(assert (=> b!768023 d!101463))

(declare-fun b!768473 () Bool)

(declare-fun e!427957 () Bool)

(declare-fun e!427960 () Bool)

(assert (=> b!768473 (= e!427957 e!427960)))

(declare-fun res!519809 () Bool)

(declare-fun lt!341879 () SeekEntryResult!7842)

(assert (=> b!768473 (= res!519809 (and (is-Intermediate!7842 lt!341879) (not (undefined!8654 lt!341879)) (bvslt (x!64689 lt!341879) #b01111111111111111111111111111110) (bvsge (x!64689 lt!341879) #b00000000000000000000000000000000) (bvsge (x!64689 lt!341879) #b00000000000000000000000000000000)))))

(assert (=> b!768473 (=> (not res!519809) (not e!427960))))

(declare-fun b!768474 () Bool)

(declare-fun e!427958 () SeekEntryResult!7842)

(assert (=> b!768474 (= e!427958 (Intermediate!7842 true (toIndex!0 lt!341680 mask!3328) #b00000000000000000000000000000000))))

(declare-fun e!427961 () SeekEntryResult!7842)

(declare-fun b!768476 () Bool)

(assert (=> b!768476 (= e!427961 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341680 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341680 lt!341681 mask!3328))))

(declare-fun b!768477 () Bool)

(assert (=> b!768477 (= e!427958 e!427961)))

(declare-fun c!84727 () Bool)

(declare-fun lt!341878 () (_ BitVec 64))

(assert (=> b!768477 (= c!84727 (or (= lt!341878 lt!341680) (= (bvadd lt!341878 lt!341878) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768478 () Bool)

(assert (=> b!768478 (and (bvsge (index!33737 lt!341879) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341879) (size!20656 lt!341681)))))

(declare-fun e!427959 () Bool)

(assert (=> b!768478 (= e!427959 (= (select (arr!20235 lt!341681) (index!33737 lt!341879)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768479 () Bool)

(assert (=> b!768479 (= e!427961 (Intermediate!7842 false (toIndex!0 lt!341680 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768480 () Bool)

(assert (=> b!768480 (= e!427957 (bvsge (x!64689 lt!341879) #b01111111111111111111111111111110))))

(declare-fun b!768481 () Bool)

(assert (=> b!768481 (and (bvsge (index!33737 lt!341879) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341879) (size!20656 lt!341681)))))

(declare-fun res!519808 () Bool)

(assert (=> b!768481 (= res!519808 (= (select (arr!20235 lt!341681) (index!33737 lt!341879)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768481 (=> res!519808 e!427959)))

(declare-fun d!101477 () Bool)

(assert (=> d!101477 e!427957))

(declare-fun c!84728 () Bool)

(assert (=> d!101477 (= c!84728 (and (is-Intermediate!7842 lt!341879) (undefined!8654 lt!341879)))))

(assert (=> d!101477 (= lt!341879 e!427958)))

(declare-fun c!84726 () Bool)

(assert (=> d!101477 (= c!84726 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101477 (= lt!341878 (select (arr!20235 lt!341681) (toIndex!0 lt!341680 mask!3328)))))

(assert (=> d!101477 (validMask!0 mask!3328)))

(assert (=> d!101477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341680 mask!3328) lt!341680 lt!341681 mask!3328) lt!341879)))

(declare-fun b!768475 () Bool)

(assert (=> b!768475 (and (bvsge (index!33737 lt!341879) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341879) (size!20656 lt!341681)))))

(declare-fun res!519810 () Bool)

(assert (=> b!768475 (= res!519810 (= (select (arr!20235 lt!341681) (index!33737 lt!341879)) lt!341680))))

(assert (=> b!768475 (=> res!519810 e!427959)))

(assert (=> b!768475 (= e!427960 e!427959)))

(assert (= (and d!101477 c!84726) b!768474))

(assert (= (and d!101477 (not c!84726)) b!768477))

(assert (= (and b!768477 c!84727) b!768479))

(assert (= (and b!768477 (not c!84727)) b!768476))

(assert (= (and d!101477 c!84728) b!768480))

(assert (= (and d!101477 (not c!84728)) b!768473))

(assert (= (and b!768473 res!519809) b!768475))

(assert (= (and b!768475 (not res!519810)) b!768481))

(assert (= (and b!768481 (not res!519808)) b!768478))

(assert (=> b!768476 m!713727))

(declare-fun m!714045 () Bool)

(assert (=> b!768476 m!714045))

(assert (=> b!768476 m!714045))

(declare-fun m!714047 () Bool)

(assert (=> b!768476 m!714047))

(declare-fun m!714049 () Bool)

(assert (=> b!768478 m!714049))

(assert (=> d!101477 m!713727))

(declare-fun m!714051 () Bool)

(assert (=> d!101477 m!714051))

(assert (=> d!101477 m!713705))

(assert (=> b!768475 m!714049))

(assert (=> b!768481 m!714049))

(assert (=> b!768023 d!101477))

(declare-fun d!101479 () Bool)

(declare-fun lt!341894 () (_ BitVec 32))

(declare-fun lt!341893 () (_ BitVec 32))

(assert (=> d!101479 (= lt!341894 (bvmul (bvxor lt!341893 (bvlshr lt!341893 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101479 (= lt!341893 ((_ extract 31 0) (bvand (bvxor lt!341680 (bvlshr lt!341680 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101479 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519813 (let ((h!15387 ((_ extract 31 0) (bvand (bvxor lt!341680 (bvlshr lt!341680 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64701 (bvmul (bvxor h!15387 (bvlshr h!15387 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64701 (bvlshr x!64701 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519813 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519813 #b00000000000000000000000000000000))))))

(assert (=> d!101479 (= (toIndex!0 lt!341680 mask!3328) (bvand (bvxor lt!341894 (bvlshr lt!341894 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!768023 d!101479))

(declare-fun d!101481 () Bool)

(declare-fun lt!341900 () (_ BitVec 32))

(assert (=> d!101481 (and (bvsge lt!341900 #b00000000000000000000000000000000) (bvslt lt!341900 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101481 (= lt!341900 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101481 (validMask!0 mask!3328)))

(assert (=> d!101481 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341900)))

(declare-fun bs!21528 () Bool)

(assert (= bs!21528 d!101481))

(declare-fun m!714077 () Bool)

(assert (=> bs!21528 m!714077))

(assert (=> bs!21528 m!713705))

(assert (=> b!768014 d!101481))

(declare-fun d!101487 () Bool)

(declare-fun res!519826 () Bool)

(declare-fun e!427985 () Bool)

(assert (=> d!101487 (=> res!519826 e!427985)))

(assert (=> d!101487 (= res!519826 (bvsge #b00000000000000000000000000000000 (size!20656 a!3186)))))

(assert (=> d!101487 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14287) e!427985)))

(declare-fun b!768514 () Bool)

(declare-fun e!427986 () Bool)

(declare-fun contains!4087 (List!14290 (_ BitVec 64)) Bool)

(assert (=> b!768514 (= e!427986 (contains!4087 Nil!14287 (select (arr!20235 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!768515 () Bool)

(declare-fun e!427987 () Bool)

(declare-fun e!427988 () Bool)

(assert (=> b!768515 (= e!427987 e!427988)))

(declare-fun c!84738 () Bool)

(assert (=> b!768515 (= c!84738 (validKeyInArray!0 (select (arr!20235 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35100 () Bool)

(declare-fun call!35103 () Bool)

(assert (=> bm!35100 (= call!35103 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84738 (Cons!14286 (select (arr!20235 a!3186) #b00000000000000000000000000000000) Nil!14287) Nil!14287)))))

(declare-fun b!768516 () Bool)

(assert (=> b!768516 (= e!427988 call!35103)))

(declare-fun b!768517 () Bool)

(assert (=> b!768517 (= e!427988 call!35103)))

(declare-fun b!768518 () Bool)

(assert (=> b!768518 (= e!427985 e!427987)))

(declare-fun res!519828 () Bool)

(assert (=> b!768518 (=> (not res!519828) (not e!427987))))

(assert (=> b!768518 (= res!519828 (not e!427986))))

(declare-fun res!519827 () Bool)

(assert (=> b!768518 (=> (not res!519827) (not e!427986))))

(assert (=> b!768518 (= res!519827 (validKeyInArray!0 (select (arr!20235 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101487 (not res!519826)) b!768518))

(assert (= (and b!768518 res!519827) b!768514))

(assert (= (and b!768518 res!519828) b!768515))

(assert (= (and b!768515 c!84738) b!768517))

(assert (= (and b!768515 (not c!84738)) b!768516))

(assert (= (or b!768517 b!768516) bm!35100))

(assert (=> b!768514 m!713913))

(assert (=> b!768514 m!713913))

(declare-fun m!714085 () Bool)

(assert (=> b!768514 m!714085))

(assert (=> b!768515 m!713913))

(assert (=> b!768515 m!713913))

(assert (=> b!768515 m!713923))

(assert (=> bm!35100 m!713913))

(declare-fun m!714087 () Bool)

(assert (=> bm!35100 m!714087))

(assert (=> b!768518 m!713913))

(assert (=> b!768518 m!713913))

(assert (=> b!768518 m!713923))

(assert (=> b!768016 d!101487))

(declare-fun b!768519 () Bool)

(declare-fun e!427989 () Bool)

(declare-fun e!427992 () Bool)

(assert (=> b!768519 (= e!427989 e!427992)))

(declare-fun res!519830 () Bool)

(declare-fun lt!341908 () SeekEntryResult!7842)

(assert (=> b!768519 (= res!519830 (and (is-Intermediate!7842 lt!341908) (not (undefined!8654 lt!341908)) (bvslt (x!64689 lt!341908) #b01111111111111111111111111111110) (bvsge (x!64689 lt!341908) #b00000000000000000000000000000000) (bvsge (x!64689 lt!341908) x!1131)))))

(assert (=> b!768519 (=> (not res!519830) (not e!427992))))

(declare-fun b!768520 () Bool)

(declare-fun e!427990 () SeekEntryResult!7842)

(assert (=> b!768520 (= e!427990 (Intermediate!7842 true index!1321 x!1131))))

(declare-fun b!768522 () Bool)

(declare-fun e!427993 () SeekEntryResult!7842)

(assert (=> b!768522 (= e!427993 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768523 () Bool)

(assert (=> b!768523 (= e!427990 e!427993)))

(declare-fun c!84740 () Bool)

(declare-fun lt!341907 () (_ BitVec 64))

(assert (=> b!768523 (= c!84740 (or (= lt!341907 (select (arr!20235 a!3186) j!159)) (= (bvadd lt!341907 lt!341907) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768524 () Bool)

(assert (=> b!768524 (and (bvsge (index!33737 lt!341908) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341908) (size!20656 a!3186)))))

(declare-fun e!427991 () Bool)

(assert (=> b!768524 (= e!427991 (= (select (arr!20235 a!3186) (index!33737 lt!341908)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768525 () Bool)

(assert (=> b!768525 (= e!427993 (Intermediate!7842 false index!1321 x!1131))))

(declare-fun b!768526 () Bool)

(assert (=> b!768526 (= e!427989 (bvsge (x!64689 lt!341908) #b01111111111111111111111111111110))))

(declare-fun b!768527 () Bool)

(assert (=> b!768527 (and (bvsge (index!33737 lt!341908) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341908) (size!20656 a!3186)))))

(declare-fun res!519829 () Bool)

(assert (=> b!768527 (= res!519829 (= (select (arr!20235 a!3186) (index!33737 lt!341908)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768527 (=> res!519829 e!427991)))

(declare-fun d!101493 () Bool)

(assert (=> d!101493 e!427989))

(declare-fun c!84741 () Bool)

(assert (=> d!101493 (= c!84741 (and (is-Intermediate!7842 lt!341908) (undefined!8654 lt!341908)))))

(assert (=> d!101493 (= lt!341908 e!427990)))

(declare-fun c!84739 () Bool)

(assert (=> d!101493 (= c!84739 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101493 (= lt!341907 (select (arr!20235 a!3186) index!1321))))

(assert (=> d!101493 (validMask!0 mask!3328)))

(assert (=> d!101493 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341908)))

(declare-fun b!768521 () Bool)

(assert (=> b!768521 (and (bvsge (index!33737 lt!341908) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341908) (size!20656 a!3186)))))

(declare-fun res!519831 () Bool)

(assert (=> b!768521 (= res!519831 (= (select (arr!20235 a!3186) (index!33737 lt!341908)) (select (arr!20235 a!3186) j!159)))))

(assert (=> b!768521 (=> res!519831 e!427991)))

(assert (=> b!768521 (= e!427992 e!427991)))

(assert (= (and d!101493 c!84739) b!768520))

(assert (= (and d!101493 (not c!84739)) b!768523))

(assert (= (and b!768523 c!84740) b!768525))

(assert (= (and b!768523 (not c!84740)) b!768522))

(assert (= (and d!101493 c!84741) b!768526))

(assert (= (and d!101493 (not c!84741)) b!768519))

(assert (= (and b!768519 res!519830) b!768521))

(assert (= (and b!768521 (not res!519831)) b!768527))

(assert (= (and b!768527 (not res!519829)) b!768524))

(assert (=> b!768522 m!713715))

(assert (=> b!768522 m!713715))

(assert (=> b!768522 m!713687))

(declare-fun m!714091 () Bool)

(assert (=> b!768522 m!714091))

(declare-fun m!714093 () Bool)

(assert (=> b!768524 m!714093))

(assert (=> d!101493 m!713975))

(assert (=> d!101493 m!713705))

(assert (=> b!768521 m!714093))

(assert (=> b!768527 m!714093))

(assert (=> b!768005 d!101493))

(declare-fun d!101497 () Bool)

(assert (=> d!101497 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66680 d!101497))

(declare-fun d!101503 () Bool)

(assert (=> d!101503 (= (array_inv!16009 a!3186) (bvsge (size!20656 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66680 d!101503))

(declare-fun b!768544 () Bool)

(declare-fun e!428007 () SeekEntryResult!7842)

(declare-fun lt!341916 () SeekEntryResult!7842)

(assert (=> b!768544 (= e!428007 (MissingZero!7842 (index!33737 lt!341916)))))

(declare-fun b!768545 () Bool)

(declare-fun e!428006 () SeekEntryResult!7842)

(declare-fun e!428005 () SeekEntryResult!7842)

(assert (=> b!768545 (= e!428006 e!428005)))

(declare-fun lt!341915 () (_ BitVec 64))

(assert (=> b!768545 (= lt!341915 (select (arr!20235 a!3186) (index!33737 lt!341916)))))

(declare-fun c!84747 () Bool)

(assert (=> b!768545 (= c!84747 (= lt!341915 k!2102))))

(declare-fun d!101505 () Bool)

(declare-fun lt!341914 () SeekEntryResult!7842)

(assert (=> d!101505 (and (or (is-Undefined!7842 lt!341914) (not (is-Found!7842 lt!341914)) (and (bvsge (index!33736 lt!341914) #b00000000000000000000000000000000) (bvslt (index!33736 lt!341914) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341914) (is-Found!7842 lt!341914) (not (is-MissingZero!7842 lt!341914)) (and (bvsge (index!33735 lt!341914) #b00000000000000000000000000000000) (bvslt (index!33735 lt!341914) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341914) (is-Found!7842 lt!341914) (is-MissingZero!7842 lt!341914) (not (is-MissingVacant!7842 lt!341914)) (and (bvsge (index!33738 lt!341914) #b00000000000000000000000000000000) (bvslt (index!33738 lt!341914) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341914) (ite (is-Found!7842 lt!341914) (= (select (arr!20235 a!3186) (index!33736 lt!341914)) k!2102) (ite (is-MissingZero!7842 lt!341914) (= (select (arr!20235 a!3186) (index!33735 lt!341914)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7842 lt!341914) (= (select (arr!20235 a!3186) (index!33738 lt!341914)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101505 (= lt!341914 e!428006)))

(declare-fun c!84749 () Bool)

(assert (=> d!101505 (= c!84749 (and (is-Intermediate!7842 lt!341916) (undefined!8654 lt!341916)))))

(assert (=> d!101505 (= lt!341916 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101505 (validMask!0 mask!3328)))

(assert (=> d!101505 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!341914)))

(declare-fun b!768546 () Bool)

(assert (=> b!768546 (= e!428005 (Found!7842 (index!33737 lt!341916)))))

(declare-fun b!768547 () Bool)

(assert (=> b!768547 (= e!428006 Undefined!7842)))

(declare-fun b!768548 () Bool)

(assert (=> b!768548 (= e!428007 (seekKeyOrZeroReturnVacant!0 (x!64689 lt!341916) (index!33737 lt!341916) (index!33737 lt!341916) k!2102 a!3186 mask!3328))))

(declare-fun b!768549 () Bool)

(declare-fun c!84748 () Bool)

(assert (=> b!768549 (= c!84748 (= lt!341915 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768549 (= e!428005 e!428007)))

(assert (= (and d!101505 c!84749) b!768547))

(assert (= (and d!101505 (not c!84749)) b!768545))

(assert (= (and b!768545 c!84747) b!768546))

(assert (= (and b!768545 (not c!84747)) b!768549))

(assert (= (and b!768549 c!84748) b!768544))

(assert (= (and b!768549 (not c!84748)) b!768548))

(declare-fun m!714105 () Bool)

(assert (=> b!768545 m!714105))

(declare-fun m!714107 () Bool)

(assert (=> d!101505 m!714107))

(assert (=> d!101505 m!713705))

(declare-fun m!714109 () Bool)

(assert (=> d!101505 m!714109))

(declare-fun m!714111 () Bool)

(assert (=> d!101505 m!714111))

(assert (=> d!101505 m!714111))

(declare-fun m!714113 () Bool)

(assert (=> d!101505 m!714113))

(declare-fun m!714115 () Bool)

(assert (=> d!101505 m!714115))

(declare-fun m!714117 () Bool)

(assert (=> b!768548 m!714117))

(assert (=> b!768015 d!101505))

(declare-fun b!768555 () Bool)

(declare-fun e!428012 () Bool)

(declare-fun e!428015 () Bool)

(assert (=> b!768555 (= e!428012 e!428015)))

(declare-fun res!519842 () Bool)

(declare-fun lt!341918 () SeekEntryResult!7842)

(assert (=> b!768555 (= res!519842 (and (is-Intermediate!7842 lt!341918) (not (undefined!8654 lt!341918)) (bvslt (x!64689 lt!341918) #b01111111111111111111111111111110) (bvsge (x!64689 lt!341918) #b00000000000000000000000000000000) (bvsge (x!64689 lt!341918) #b00000000000000000000000000000000)))))

(assert (=> b!768555 (=> (not res!519842) (not e!428015))))

(declare-fun e!428013 () SeekEntryResult!7842)

(declare-fun b!768556 () Bool)

(assert (=> b!768556 (= e!428013 (Intermediate!7842 true (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768558 () Bool)

(declare-fun e!428016 () SeekEntryResult!7842)

(assert (=> b!768558 (= e!428016 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768559 () Bool)

(assert (=> b!768559 (= e!428013 e!428016)))

(declare-fun lt!341917 () (_ BitVec 64))

(declare-fun c!84752 () Bool)

(assert (=> b!768559 (= c!84752 (or (= lt!341917 (select (arr!20235 a!3186) j!159)) (= (bvadd lt!341917 lt!341917) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768560 () Bool)

(assert (=> b!768560 (and (bvsge (index!33737 lt!341918) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341918) (size!20656 a!3186)))))

(declare-fun e!428014 () Bool)

(assert (=> b!768560 (= e!428014 (= (select (arr!20235 a!3186) (index!33737 lt!341918)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768561 () Bool)

(assert (=> b!768561 (= e!428016 (Intermediate!7842 false (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768562 () Bool)

(assert (=> b!768562 (= e!428012 (bvsge (x!64689 lt!341918) #b01111111111111111111111111111110))))

(declare-fun b!768563 () Bool)

(assert (=> b!768563 (and (bvsge (index!33737 lt!341918) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341918) (size!20656 a!3186)))))

(declare-fun res!519841 () Bool)

(assert (=> b!768563 (= res!519841 (= (select (arr!20235 a!3186) (index!33737 lt!341918)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768563 (=> res!519841 e!428014)))

(declare-fun d!101507 () Bool)

(assert (=> d!101507 e!428012))

(declare-fun c!84753 () Bool)

(assert (=> d!101507 (= c!84753 (and (is-Intermediate!7842 lt!341918) (undefined!8654 lt!341918)))))

(assert (=> d!101507 (= lt!341918 e!428013)))

(declare-fun c!84751 () Bool)

(assert (=> d!101507 (= c!84751 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101507 (= lt!341917 (select (arr!20235 a!3186) (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328)))))

(assert (=> d!101507 (validMask!0 mask!3328)))

(assert (=> d!101507 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341918)))

(declare-fun b!768557 () Bool)

(assert (=> b!768557 (and (bvsge (index!33737 lt!341918) #b00000000000000000000000000000000) (bvslt (index!33737 lt!341918) (size!20656 a!3186)))))

(declare-fun res!519843 () Bool)

(assert (=> b!768557 (= res!519843 (= (select (arr!20235 a!3186) (index!33737 lt!341918)) (select (arr!20235 a!3186) j!159)))))

(assert (=> b!768557 (=> res!519843 e!428014)))

(assert (=> b!768557 (= e!428015 e!428014)))

(assert (= (and d!101507 c!84751) b!768556))

(assert (= (and d!101507 (not c!84751)) b!768559))

(assert (= (and b!768559 c!84752) b!768561))

(assert (= (and b!768559 (not c!84752)) b!768558))

(assert (= (and d!101507 c!84753) b!768562))

(assert (= (and d!101507 (not c!84753)) b!768555))

(assert (= (and b!768555 res!519842) b!768557))

(assert (= (and b!768557 (not res!519843)) b!768563))

(assert (= (and b!768563 (not res!519841)) b!768560))

(assert (=> b!768558 m!713711))

(declare-fun m!714121 () Bool)

(assert (=> b!768558 m!714121))

(assert (=> b!768558 m!714121))

(assert (=> b!768558 m!713687))

(declare-fun m!714123 () Bool)

(assert (=> b!768558 m!714123))

(declare-fun m!714125 () Bool)

(assert (=> b!768560 m!714125))

(assert (=> d!101507 m!713711))

(declare-fun m!714127 () Bool)

(assert (=> d!101507 m!714127))

(assert (=> d!101507 m!713705))

(assert (=> b!768557 m!714125))

(assert (=> b!768563 m!714125))

(assert (=> b!768006 d!101507))

(declare-fun d!101509 () Bool)

(declare-fun lt!341920 () (_ BitVec 32))

(declare-fun lt!341919 () (_ BitVec 32))

(assert (=> d!101509 (= lt!341920 (bvmul (bvxor lt!341919 (bvlshr lt!341919 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101509 (= lt!341919 ((_ extract 31 0) (bvand (bvxor (select (arr!20235 a!3186) j!159) (bvlshr (select (arr!20235 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101509 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519813 (let ((h!15387 ((_ extract 31 0) (bvand (bvxor (select (arr!20235 a!3186) j!159) (bvlshr (select (arr!20235 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64701 (bvmul (bvxor h!15387 (bvlshr h!15387 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64701 (bvlshr x!64701 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519813 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519813 #b00000000000000000000000000000000))))))

(assert (=> d!101509 (= (toIndex!0 (select (arr!20235 a!3186) j!159) mask!3328) (bvand (bvxor lt!341920 (bvlshr lt!341920 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!768006 d!101509))

(declare-fun e!428023 () SeekEntryResult!7842)

(declare-fun b!768573 () Bool)

(assert (=> b!768573 (= e!428023 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341677 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768574 () Bool)

(declare-fun c!84757 () Bool)

(declare-fun lt!341924 () (_ BitVec 64))

(assert (=> b!768574 (= c!84757 (= lt!341924 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!428024 () SeekEntryResult!7842)

(assert (=> b!768574 (= e!428024 e!428023)))

(declare-fun b!768575 () Bool)

(declare-fun e!428022 () SeekEntryResult!7842)

(assert (=> b!768575 (= e!428022 e!428024)))

(declare-fun c!84759 () Bool)

(assert (=> b!768575 (= c!84759 (= lt!341924 (select (arr!20235 a!3186) j!159)))))

(declare-fun b!768576 () Bool)

(assert (=> b!768576 (= e!428022 Undefined!7842)))

(declare-fun d!101513 () Bool)

(declare-fun lt!341923 () SeekEntryResult!7842)

(assert (=> d!101513 (and (or (is-Undefined!7842 lt!341923) (not (is-Found!7842 lt!341923)) (and (bvsge (index!33736 lt!341923) #b00000000000000000000000000000000) (bvslt (index!33736 lt!341923) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341923) (is-Found!7842 lt!341923) (not (is-MissingVacant!7842 lt!341923)) (not (= (index!33738 lt!341923) resIntermediateIndex!5)) (and (bvsge (index!33738 lt!341923) #b00000000000000000000000000000000) (bvslt (index!33738 lt!341923) (size!20656 a!3186)))) (or (is-Undefined!7842 lt!341923) (ite (is-Found!7842 lt!341923) (= (select (arr!20235 a!3186) (index!33736 lt!341923)) (select (arr!20235 a!3186) j!159)) (and (is-MissingVacant!7842 lt!341923) (= (index!33738 lt!341923) resIntermediateIndex!5) (= (select (arr!20235 a!3186) (index!33738 lt!341923)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101513 (= lt!341923 e!428022)))

(declare-fun c!84758 () Bool)

(assert (=> d!101513 (= c!84758 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101513 (= lt!341924 (select (arr!20235 a!3186) lt!341677))))

(assert (=> d!101513 (validMask!0 mask!3328)))

(assert (=> d!101513 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341677 resIntermediateIndex!5 (select (arr!20235 a!3186) j!159) a!3186 mask!3328) lt!341923)))

(declare-fun b!768577 () Bool)

(assert (=> b!768577 (= e!428024 (Found!7842 lt!341677))))

(declare-fun b!768578 () Bool)

(assert (=> b!768578 (= e!428023 (MissingVacant!7842 resIntermediateIndex!5))))

(assert (= (and d!101513 c!84758) b!768576))

(assert (= (and d!101513 (not c!84758)) b!768575))

(assert (= (and b!768575 c!84759) b!768577))

(assert (= (and b!768575 (not c!84759)) b!768574))

(assert (= (and b!768574 c!84757) b!768578))

(assert (= (and b!768574 (not c!84757)) b!768573))

(declare-fun m!714131 () Bool)

(assert (=> b!768573 m!714131))

(assert (=> b!768573 m!714131))

(assert (=> b!768573 m!713687))

(declare-fun m!714133 () Bool)

(assert (=> b!768573 m!714133))

(declare-fun m!714135 () Bool)

(assert (=> d!101513 m!714135))

(declare-fun m!714137 () Bool)

(assert (=> d!101513 m!714137))

(declare-fun m!714141 () Bool)

(assert (=> d!101513 m!714141))

(assert (=> d!101513 m!713705))

(assert (=> b!768008 d!101513))

(push 1)

(assert (not b!768558))

(assert (not b!768279))

(assert (not b!768515))

(assert (not b!768467))

(assert (not d!101505))

(assert (not bm!35093))

(assert (not b!768276))

(assert (not d!101493))

(assert (not d!101463))

(assert (not d!101461))

(assert (not b!768370))

(assert (not d!101453))

(assert (not b!768522))

(assert (not b!768414))

(assert (not d!101513))

(assert (not d!101455))

(assert (not bm!35100))

(assert (not b!768369))

(assert (not b!768476))

(assert (not b!768514))

(assert (not b!768373))

(assert (not b!768358))

(assert (not b!768548))

(assert (not b!768416))

(assert (not d!101431))

(assert (not d!101507))

(assert (not d!101481))

(assert (not b!768518))

(assert (not d!101477))

(assert (not b!768573))

(assert (not bm!35089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

