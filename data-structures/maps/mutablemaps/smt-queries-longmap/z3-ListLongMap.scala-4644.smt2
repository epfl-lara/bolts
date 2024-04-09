; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64656 () Bool)

(assert start!64656)

(declare-fun b!727854 () Bool)

(declare-fun e!407492 () Bool)

(declare-fun e!407496 () Bool)

(assert (=> b!727854 (= e!407492 e!407496)))

(declare-fun res!488573 () Bool)

(assert (=> b!727854 (=> (not res!488573) (not e!407496))))

(declare-datatypes ((SeekEntryResult!7252 0))(
  ( (MissingZero!7252 (index!31375 (_ BitVec 32))) (Found!7252 (index!31376 (_ BitVec 32))) (Intermediate!7252 (undefined!8064 Bool) (index!31377 (_ BitVec 32)) (x!62395 (_ BitVec 32))) (Undefined!7252) (MissingVacant!7252 (index!31378 (_ BitVec 32))) )
))
(declare-fun lt!322395 () SeekEntryResult!7252)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727854 (= res!488573 (or (= lt!322395 (MissingZero!7252 i!1173)) (= lt!322395 (MissingVacant!7252 i!1173))))))

(declare-datatypes ((array!41058 0))(
  ( (array!41059 (arr!19645 (Array (_ BitVec 32) (_ BitVec 64))) (size!20066 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41058)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41058 (_ BitVec 32)) SeekEntryResult!7252)

(assert (=> b!727854 (= lt!322395 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!727855 () Bool)

(declare-fun e!407494 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!322400 () SeekEntryResult!7252)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41058 (_ BitVec 32)) SeekEntryResult!7252)

(assert (=> b!727855 (= e!407494 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19645 a!3186) j!159) a!3186 mask!3328) lt!322400))))

(declare-fun b!727856 () Bool)

(declare-fun res!488566 () Bool)

(assert (=> b!727856 (=> (not res!488566) (not e!407492))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727856 (= res!488566 (validKeyInArray!0 k0!2102))))

(declare-fun b!727857 () Bool)

(declare-fun res!488561 () Bool)

(assert (=> b!727857 (=> (not res!488561) (not e!407496))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!727857 (= res!488561 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20066 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20066 a!3186))))))

(declare-fun b!727858 () Bool)

(declare-fun res!488562 () Bool)

(assert (=> b!727858 (=> (not res!488562) (not e!407492))))

(assert (=> b!727858 (= res!488562 (validKeyInArray!0 (select (arr!19645 a!3186) j!159)))))

(declare-fun b!727859 () Bool)

(declare-fun res!488559 () Bool)

(declare-fun e!407491 () Bool)

(assert (=> b!727859 (=> (not res!488559) (not e!407491))))

(assert (=> b!727859 (= res!488559 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19645 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727860 () Bool)

(declare-fun res!488568 () Bool)

(assert (=> b!727860 (=> (not res!488568) (not e!407491))))

(declare-fun e!407493 () Bool)

(assert (=> b!727860 (= res!488568 e!407493)))

(declare-fun c!80022 () Bool)

(assert (=> b!727860 (= c!80022 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727861 () Bool)

(assert (=> b!727861 (= e!407493 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19645 a!3186) j!159) a!3186 mask!3328) (Found!7252 j!159)))))

(declare-fun b!727862 () Bool)

(declare-fun res!488571 () Bool)

(assert (=> b!727862 (=> (not res!488571) (not e!407496))))

(declare-datatypes ((List!13700 0))(
  ( (Nil!13697) (Cons!13696 (h!14756 (_ BitVec 64)) (t!20023 List!13700)) )
))
(declare-fun arrayNoDuplicates!0 (array!41058 (_ BitVec 32) List!13700) Bool)

(assert (=> b!727862 (= res!488571 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13697))))

(declare-fun res!488574 () Bool)

(assert (=> start!64656 (=> (not res!488574) (not e!407492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64656 (= res!488574 (validMask!0 mask!3328))))

(assert (=> start!64656 e!407492))

(assert (=> start!64656 true))

(declare-fun array_inv!15419 (array!41058) Bool)

(assert (=> start!64656 (array_inv!15419 a!3186)))

(declare-fun b!727863 () Bool)

(declare-fun e!407489 () Bool)

(assert (=> b!727863 (= e!407489 e!407494)))

(declare-fun res!488569 () Bool)

(assert (=> b!727863 (=> (not res!488569) (not e!407494))))

(assert (=> b!727863 (= res!488569 (= (seekEntryOrOpen!0 (select (arr!19645 a!3186) j!159) a!3186 mask!3328) lt!322400))))

(assert (=> b!727863 (= lt!322400 (Found!7252 j!159))))

(declare-fun b!727864 () Bool)

(declare-fun e!407490 () Bool)

(assert (=> b!727864 (= e!407491 e!407490)))

(declare-fun res!488572 () Bool)

(assert (=> b!727864 (=> (not res!488572) (not e!407490))))

(declare-fun lt!322401 () SeekEntryResult!7252)

(declare-fun lt!322403 () SeekEntryResult!7252)

(assert (=> b!727864 (= res!488572 (= lt!322401 lt!322403))))

(declare-fun lt!322396 () array!41058)

(declare-fun lt!322402 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41058 (_ BitVec 32)) SeekEntryResult!7252)

(assert (=> b!727864 (= lt!322403 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322402 lt!322396 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727864 (= lt!322401 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322402 mask!3328) lt!322402 lt!322396 mask!3328))))

(assert (=> b!727864 (= lt!322402 (select (store (arr!19645 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!727864 (= lt!322396 (array!41059 (store (arr!19645 a!3186) i!1173 k0!2102) (size!20066 a!3186)))))

(declare-fun b!727865 () Bool)

(declare-fun e!407488 () Bool)

(assert (=> b!727865 (= e!407490 (not e!407488))))

(declare-fun res!488560 () Bool)

(assert (=> b!727865 (=> res!488560 e!407488)))

(get-info :version)

(assert (=> b!727865 (= res!488560 (or (not ((_ is Intermediate!7252) lt!322403)) (bvsge x!1131 (x!62395 lt!322403))))))

(assert (=> b!727865 e!407489))

(declare-fun res!488565 () Bool)

(assert (=> b!727865 (=> (not res!488565) (not e!407489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41058 (_ BitVec 32)) Bool)

(assert (=> b!727865 (= res!488565 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24822 0))(
  ( (Unit!24823) )
))
(declare-fun lt!322397 () Unit!24822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41058 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24822)

(assert (=> b!727865 (= lt!322397 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727866 () Bool)

(assert (=> b!727866 (= e!407496 e!407491)))

(declare-fun res!488563 () Bool)

(assert (=> b!727866 (=> (not res!488563) (not e!407491))))

(declare-fun lt!322399 () SeekEntryResult!7252)

(assert (=> b!727866 (= res!488563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19645 a!3186) j!159) mask!3328) (select (arr!19645 a!3186) j!159) a!3186 mask!3328) lt!322399))))

(assert (=> b!727866 (= lt!322399 (Intermediate!7252 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727867 () Bool)

(declare-fun res!488567 () Bool)

(assert (=> b!727867 (=> (not res!488567) (not e!407492))))

(declare-fun arrayContainsKey!0 (array!41058 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727867 (= res!488567 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727868 () Bool)

(declare-fun res!488570 () Bool)

(assert (=> b!727868 (=> (not res!488570) (not e!407492))))

(assert (=> b!727868 (= res!488570 (and (= (size!20066 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20066 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20066 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727869 () Bool)

(assert (=> b!727869 (= e!407493 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19645 a!3186) j!159) a!3186 mask!3328) lt!322399))))

(declare-fun b!727870 () Bool)

(declare-fun res!488564 () Bool)

(assert (=> b!727870 (=> (not res!488564) (not e!407496))))

(assert (=> b!727870 (= res!488564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727871 () Bool)

(assert (=> b!727871 (= e!407488 true)))

(declare-fun lt!322398 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727871 (= lt!322398 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!64656 res!488574) b!727868))

(assert (= (and b!727868 res!488570) b!727858))

(assert (= (and b!727858 res!488562) b!727856))

(assert (= (and b!727856 res!488566) b!727867))

(assert (= (and b!727867 res!488567) b!727854))

(assert (= (and b!727854 res!488573) b!727870))

(assert (= (and b!727870 res!488564) b!727862))

(assert (= (and b!727862 res!488571) b!727857))

(assert (= (and b!727857 res!488561) b!727866))

(assert (= (and b!727866 res!488563) b!727859))

(assert (= (and b!727859 res!488559) b!727860))

(assert (= (and b!727860 c!80022) b!727869))

(assert (= (and b!727860 (not c!80022)) b!727861))

(assert (= (and b!727860 res!488568) b!727864))

(assert (= (and b!727864 res!488572) b!727865))

(assert (= (and b!727865 res!488565) b!727863))

(assert (= (and b!727863 res!488569) b!727855))

(assert (= (and b!727865 (not res!488560)) b!727871))

(declare-fun m!681757 () Bool)

(assert (=> b!727858 m!681757))

(assert (=> b!727858 m!681757))

(declare-fun m!681759 () Bool)

(assert (=> b!727858 m!681759))

(assert (=> b!727863 m!681757))

(assert (=> b!727863 m!681757))

(declare-fun m!681761 () Bool)

(assert (=> b!727863 m!681761))

(declare-fun m!681763 () Bool)

(assert (=> b!727864 m!681763))

(declare-fun m!681765 () Bool)

(assert (=> b!727864 m!681765))

(declare-fun m!681767 () Bool)

(assert (=> b!727864 m!681767))

(declare-fun m!681769 () Bool)

(assert (=> b!727864 m!681769))

(declare-fun m!681771 () Bool)

(assert (=> b!727864 m!681771))

(assert (=> b!727864 m!681767))

(declare-fun m!681773 () Bool)

(assert (=> b!727871 m!681773))

(declare-fun m!681775 () Bool)

(assert (=> b!727870 m!681775))

(declare-fun m!681777 () Bool)

(assert (=> b!727854 m!681777))

(declare-fun m!681779 () Bool)

(assert (=> b!727856 m!681779))

(declare-fun m!681781 () Bool)

(assert (=> b!727862 m!681781))

(assert (=> b!727866 m!681757))

(assert (=> b!727866 m!681757))

(declare-fun m!681783 () Bool)

(assert (=> b!727866 m!681783))

(assert (=> b!727866 m!681783))

(assert (=> b!727866 m!681757))

(declare-fun m!681785 () Bool)

(assert (=> b!727866 m!681785))

(assert (=> b!727861 m!681757))

(assert (=> b!727861 m!681757))

(declare-fun m!681787 () Bool)

(assert (=> b!727861 m!681787))

(declare-fun m!681789 () Bool)

(assert (=> b!727867 m!681789))

(declare-fun m!681791 () Bool)

(assert (=> start!64656 m!681791))

(declare-fun m!681793 () Bool)

(assert (=> start!64656 m!681793))

(declare-fun m!681795 () Bool)

(assert (=> b!727859 m!681795))

(declare-fun m!681797 () Bool)

(assert (=> b!727865 m!681797))

(declare-fun m!681799 () Bool)

(assert (=> b!727865 m!681799))

(assert (=> b!727855 m!681757))

(assert (=> b!727855 m!681757))

(declare-fun m!681801 () Bool)

(assert (=> b!727855 m!681801))

(assert (=> b!727869 m!681757))

(assert (=> b!727869 m!681757))

(declare-fun m!681803 () Bool)

(assert (=> b!727869 m!681803))

(check-sat (not b!727861) (not start!64656) (not b!727862) (not b!727870) (not b!727854) (not b!727858) (not b!727869) (not b!727863) (not b!727871) (not b!727864) (not b!727867) (not b!727866) (not b!727855) (not b!727856) (not b!727865))
(check-sat)
