; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64942 () Bool)

(assert start!64942)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41206 0))(
  ( (array!41207 (arr!19716 (Array (_ BitVec 32) (_ BitVec 64))) (size!20137 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41206)

(declare-datatypes ((SeekEntryResult!7323 0))(
  ( (MissingZero!7323 (index!31659 (_ BitVec 32))) (Found!7323 (index!31660 (_ BitVec 32))) (Intermediate!7323 (undefined!8135 Bool) (index!31661 (_ BitVec 32)) (x!62682 (_ BitVec 32))) (Undefined!7323) (MissingVacant!7323 (index!31662 (_ BitVec 32))) )
))
(declare-fun lt!324692 () SeekEntryResult!7323)

(declare-fun e!409981 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!732623 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41206 (_ BitVec 32)) SeekEntryResult!7323)

(assert (=> b!732623 (= e!409981 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19716 a!3186) j!159) a!3186 mask!3328) lt!324692))))

(declare-fun b!732624 () Bool)

(declare-fun e!409979 () Bool)

(assert (=> b!732624 (= e!409979 e!409981)))

(declare-fun res!492320 () Bool)

(assert (=> b!732624 (=> (not res!492320) (not e!409981))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41206 (_ BitVec 32)) SeekEntryResult!7323)

(assert (=> b!732624 (= res!492320 (= (seekEntryOrOpen!0 (select (arr!19716 a!3186) j!159) a!3186 mask!3328) lt!324692))))

(assert (=> b!732624 (= lt!324692 (Found!7323 j!159))))

(declare-fun b!732625 () Bool)

(declare-fun res!492322 () Bool)

(declare-fun e!409977 () Bool)

(assert (=> b!732625 (=> (not res!492322) (not e!409977))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!732625 (= res!492322 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20137 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20137 a!3186))))))

(declare-fun b!732626 () Bool)

(declare-fun res!492332 () Bool)

(declare-fun e!409982 () Bool)

(assert (=> b!732626 (=> (not res!492332) (not e!409982))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41206 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732626 (= res!492332 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732627 () Bool)

(declare-fun res!492326 () Bool)

(assert (=> b!732627 (=> (not res!492326) (not e!409982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732627 (= res!492326 (validKeyInArray!0 k!2102))))

(declare-fun b!732628 () Bool)

(declare-fun res!492321 () Bool)

(assert (=> b!732628 (=> (not res!492321) (not e!409982))))

(assert (=> b!732628 (= res!492321 (validKeyInArray!0 (select (arr!19716 a!3186) j!159)))))

(declare-fun b!732629 () Bool)

(assert (=> b!732629 (= e!409982 e!409977)))

(declare-fun res!492325 () Bool)

(assert (=> b!732629 (=> (not res!492325) (not e!409977))))

(declare-fun lt!324689 () SeekEntryResult!7323)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732629 (= res!492325 (or (= lt!324689 (MissingZero!7323 i!1173)) (= lt!324689 (MissingVacant!7323 i!1173))))))

(assert (=> b!732629 (= lt!324689 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732630 () Bool)

(declare-fun e!409976 () Bool)

(declare-fun e!409974 () Bool)

(assert (=> b!732630 (= e!409976 e!409974)))

(declare-fun res!492329 () Bool)

(assert (=> b!732630 (=> res!492329 e!409974)))

(assert (=> b!732630 (= res!492329 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324690 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732630 (= lt!324690 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732631 () Bool)

(declare-fun res!492335 () Bool)

(assert (=> b!732631 (=> (not res!492335) (not e!409977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41206 (_ BitVec 32)) Bool)

(assert (=> b!732631 (= res!492335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!492324 () Bool)

(assert (=> start!64942 (=> (not res!492324) (not e!409982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64942 (= res!492324 (validMask!0 mask!3328))))

(assert (=> start!64942 e!409982))

(assert (=> start!64942 true))

(declare-fun array_inv!15490 (array!41206) Bool)

(assert (=> start!64942 (array_inv!15490 a!3186)))

(declare-fun b!732632 () Bool)

(assert (=> b!732632 (= e!409974 true)))

(declare-fun lt!324693 () SeekEntryResult!7323)

(assert (=> b!732632 (= lt!324693 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19716 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!732633 () Bool)

(declare-fun e!409978 () Bool)

(declare-fun e!409980 () Bool)

(assert (=> b!732633 (= e!409978 e!409980)))

(declare-fun res!492323 () Bool)

(assert (=> b!732633 (=> (not res!492323) (not e!409980))))

(declare-fun lt!324698 () SeekEntryResult!7323)

(declare-fun lt!324691 () SeekEntryResult!7323)

(assert (=> b!732633 (= res!492323 (= lt!324698 lt!324691))))

(declare-fun lt!324696 () (_ BitVec 64))

(declare-fun lt!324695 () array!41206)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41206 (_ BitVec 32)) SeekEntryResult!7323)

(assert (=> b!732633 (= lt!324691 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324696 lt!324695 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732633 (= lt!324698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324696 mask!3328) lt!324696 lt!324695 mask!3328))))

(assert (=> b!732633 (= lt!324696 (select (store (arr!19716 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732633 (= lt!324695 (array!41207 (store (arr!19716 a!3186) i!1173 k!2102) (size!20137 a!3186)))))

(declare-fun b!732634 () Bool)

(declare-fun res!492327 () Bool)

(assert (=> b!732634 (=> (not res!492327) (not e!409982))))

(assert (=> b!732634 (= res!492327 (and (= (size!20137 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20137 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20137 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!732635 () Bool)

(declare-fun res!492328 () Bool)

(assert (=> b!732635 (=> (not res!492328) (not e!409978))))

(assert (=> b!732635 (= res!492328 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19716 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732636 () Bool)

(declare-fun res!492336 () Bool)

(assert (=> b!732636 (=> (not res!492336) (not e!409977))))

(declare-datatypes ((List!13771 0))(
  ( (Nil!13768) (Cons!13767 (h!14833 (_ BitVec 64)) (t!20094 List!13771)) )
))
(declare-fun arrayNoDuplicates!0 (array!41206 (_ BitVec 32) List!13771) Bool)

(assert (=> b!732636 (= res!492336 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13768))))

(declare-fun b!732637 () Bool)

(declare-fun e!409975 () Bool)

(declare-fun lt!324697 () SeekEntryResult!7323)

(assert (=> b!732637 (= e!409975 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19716 a!3186) j!159) a!3186 mask!3328) lt!324697))))

(declare-fun b!732638 () Bool)

(assert (=> b!732638 (= e!409975 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19716 a!3186) j!159) a!3186 mask!3328) (Found!7323 j!159)))))

(declare-fun b!732639 () Bool)

(assert (=> b!732639 (= e!409977 e!409978)))

(declare-fun res!492331 () Bool)

(assert (=> b!732639 (=> (not res!492331) (not e!409978))))

(assert (=> b!732639 (= res!492331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19716 a!3186) j!159) mask!3328) (select (arr!19716 a!3186) j!159) a!3186 mask!3328) lt!324697))))

(assert (=> b!732639 (= lt!324697 (Intermediate!7323 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732640 () Bool)

(assert (=> b!732640 (= e!409980 (not e!409976))))

(declare-fun res!492334 () Bool)

(assert (=> b!732640 (=> res!492334 e!409976)))

(assert (=> b!732640 (= res!492334 (or (not (is-Intermediate!7323 lt!324691)) (bvsge x!1131 (x!62682 lt!324691))))))

(assert (=> b!732640 e!409979))

(declare-fun res!492333 () Bool)

(assert (=> b!732640 (=> (not res!492333) (not e!409979))))

(assert (=> b!732640 (= res!492333 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24964 0))(
  ( (Unit!24965) )
))
(declare-fun lt!324694 () Unit!24964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41206 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24964)

(assert (=> b!732640 (= lt!324694 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732641 () Bool)

(declare-fun res!492330 () Bool)

(assert (=> b!732641 (=> (not res!492330) (not e!409978))))

(assert (=> b!732641 (= res!492330 e!409975)))

(declare-fun c!80529 () Bool)

(assert (=> b!732641 (= c!80529 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64942 res!492324) b!732634))

(assert (= (and b!732634 res!492327) b!732628))

(assert (= (and b!732628 res!492321) b!732627))

(assert (= (and b!732627 res!492326) b!732626))

(assert (= (and b!732626 res!492332) b!732629))

(assert (= (and b!732629 res!492325) b!732631))

(assert (= (and b!732631 res!492335) b!732636))

(assert (= (and b!732636 res!492336) b!732625))

(assert (= (and b!732625 res!492322) b!732639))

(assert (= (and b!732639 res!492331) b!732635))

(assert (= (and b!732635 res!492328) b!732641))

(assert (= (and b!732641 c!80529) b!732637))

(assert (= (and b!732641 (not c!80529)) b!732638))

(assert (= (and b!732641 res!492330) b!732633))

(assert (= (and b!732633 res!492323) b!732640))

(assert (= (and b!732640 res!492333) b!732624))

(assert (= (and b!732624 res!492320) b!732623))

(assert (= (and b!732640 (not res!492334)) b!732630))

(assert (= (and b!732630 (not res!492329)) b!732632))

(declare-fun m!685729 () Bool)

(assert (=> b!732639 m!685729))

(assert (=> b!732639 m!685729))

(declare-fun m!685731 () Bool)

(assert (=> b!732639 m!685731))

(assert (=> b!732639 m!685731))

(assert (=> b!732639 m!685729))

(declare-fun m!685733 () Bool)

(assert (=> b!732639 m!685733))

(assert (=> b!732623 m!685729))

(assert (=> b!732623 m!685729))

(declare-fun m!685735 () Bool)

(assert (=> b!732623 m!685735))

(declare-fun m!685737 () Bool)

(assert (=> start!64942 m!685737))

(declare-fun m!685739 () Bool)

(assert (=> start!64942 m!685739))

(declare-fun m!685741 () Bool)

(assert (=> b!732627 m!685741))

(declare-fun m!685743 () Bool)

(assert (=> b!732626 m!685743))

(assert (=> b!732628 m!685729))

(assert (=> b!732628 m!685729))

(declare-fun m!685745 () Bool)

(assert (=> b!732628 m!685745))

(assert (=> b!732637 m!685729))

(assert (=> b!732637 m!685729))

(declare-fun m!685747 () Bool)

(assert (=> b!732637 m!685747))

(declare-fun m!685749 () Bool)

(assert (=> b!732629 m!685749))

(assert (=> b!732638 m!685729))

(assert (=> b!732638 m!685729))

(declare-fun m!685751 () Bool)

(assert (=> b!732638 m!685751))

(assert (=> b!732624 m!685729))

(assert (=> b!732624 m!685729))

(declare-fun m!685753 () Bool)

(assert (=> b!732624 m!685753))

(declare-fun m!685755 () Bool)

(assert (=> b!732635 m!685755))

(declare-fun m!685757 () Bool)

(assert (=> b!732636 m!685757))

(declare-fun m!685759 () Bool)

(assert (=> b!732633 m!685759))

(declare-fun m!685761 () Bool)

(assert (=> b!732633 m!685761))

(declare-fun m!685763 () Bool)

(assert (=> b!732633 m!685763))

(declare-fun m!685765 () Bool)

(assert (=> b!732633 m!685765))

(assert (=> b!732633 m!685759))

(declare-fun m!685767 () Bool)

(assert (=> b!732633 m!685767))

(declare-fun m!685769 () Bool)

(assert (=> b!732631 m!685769))

(declare-fun m!685771 () Bool)

(assert (=> b!732630 m!685771))

(declare-fun m!685773 () Bool)

(assert (=> b!732640 m!685773))

(declare-fun m!685775 () Bool)

(assert (=> b!732640 m!685775))

(assert (=> b!732632 m!685729))

(assert (=> b!732632 m!685729))

(assert (=> b!732632 m!685751))

(push 1)

