; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64948 () Bool)

(assert start!64948)

(declare-fun b!732794 () Bool)

(declare-fun e!410064 () Bool)

(declare-fun e!410065 () Bool)

(assert (=> b!732794 (= e!410064 (not e!410065))))

(declare-fun res!492487 () Bool)

(assert (=> b!732794 (=> res!492487 e!410065)))

(declare-datatypes ((SeekEntryResult!7326 0))(
  ( (MissingZero!7326 (index!31671 (_ BitVec 32))) (Found!7326 (index!31672 (_ BitVec 32))) (Intermediate!7326 (undefined!8138 Bool) (index!31673 (_ BitVec 32)) (x!62693 (_ BitVec 32))) (Undefined!7326) (MissingVacant!7326 (index!31674 (_ BitVec 32))) )
))
(declare-fun lt!324785 () SeekEntryResult!7326)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!732794 (= res!492487 (or (not (is-Intermediate!7326 lt!324785)) (bvsge x!1131 (x!62693 lt!324785))))))

(declare-fun e!410069 () Bool)

(assert (=> b!732794 e!410069))

(declare-fun res!492484 () Bool)

(assert (=> b!732794 (=> (not res!492484) (not e!410069))))

(declare-datatypes ((array!41212 0))(
  ( (array!41213 (arr!19719 (Array (_ BitVec 32) (_ BitVec 64))) (size!20140 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41212)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41212 (_ BitVec 32)) Bool)

(assert (=> b!732794 (= res!492484 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24970 0))(
  ( (Unit!24971) )
))
(declare-fun lt!324779 () Unit!24970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41212 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24970)

(assert (=> b!732794 (= lt!324779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!732795 () Bool)

(declare-fun res!492478 () Bool)

(declare-fun e!410066 () Bool)

(assert (=> b!732795 (=> (not res!492478) (not e!410066))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!732795 (= res!492478 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!410068 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!324781 () SeekEntryResult!7326)

(declare-fun b!732796 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41212 (_ BitVec 32)) SeekEntryResult!7326)

(assert (=> b!732796 (= e!410068 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19719 a!3186) j!159) a!3186 mask!3328) lt!324781))))

(declare-fun b!732797 () Bool)

(declare-fun e!410071 () Bool)

(assert (=> b!732797 (= e!410065 e!410071)))

(declare-fun res!492475 () Bool)

(assert (=> b!732797 (=> res!492475 e!410071)))

(assert (=> b!732797 (= res!492475 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!324783 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732797 (= lt!324783 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!732798 () Bool)

(declare-fun res!492481 () Bool)

(declare-fun e!410070 () Bool)

(assert (=> b!732798 (=> (not res!492481) (not e!410070))))

(assert (=> b!732798 (= res!492481 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20140 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20140 a!3186))))))

(declare-fun b!732799 () Bool)

(declare-fun e!410072 () Bool)

(assert (=> b!732799 (= e!410072 e!410064)))

(declare-fun res!492474 () Bool)

(assert (=> b!732799 (=> (not res!492474) (not e!410064))))

(declare-fun lt!324782 () SeekEntryResult!7326)

(assert (=> b!732799 (= res!492474 (= lt!324782 lt!324785))))

(declare-fun lt!324787 () array!41212)

(declare-fun lt!324784 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41212 (_ BitVec 32)) SeekEntryResult!7326)

(assert (=> b!732799 (= lt!324785 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!324784 lt!324787 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!732799 (= lt!324782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!324784 mask!3328) lt!324784 lt!324787 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!732799 (= lt!324784 (select (store (arr!19719 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!732799 (= lt!324787 (array!41213 (store (arr!19719 a!3186) i!1173 k!2102) (size!20140 a!3186)))))

(declare-fun b!732800 () Bool)

(declare-fun res!492489 () Bool)

(assert (=> b!732800 (=> (not res!492489) (not e!410072))))

(assert (=> b!732800 (= res!492489 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19719 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!732801 () Bool)

(assert (=> b!732801 (= e!410066 e!410070)))

(declare-fun res!492485 () Bool)

(assert (=> b!732801 (=> (not res!492485) (not e!410070))))

(declare-fun lt!324786 () SeekEntryResult!7326)

(assert (=> b!732801 (= res!492485 (or (= lt!324786 (MissingZero!7326 i!1173)) (= lt!324786 (MissingVacant!7326 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41212 (_ BitVec 32)) SeekEntryResult!7326)

(assert (=> b!732801 (= lt!324786 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!732802 () Bool)

(declare-fun res!492473 () Bool)

(assert (=> b!732802 (=> (not res!492473) (not e!410070))))

(declare-datatypes ((List!13774 0))(
  ( (Nil!13771) (Cons!13770 (h!14836 (_ BitVec 64)) (t!20097 List!13774)) )
))
(declare-fun arrayNoDuplicates!0 (array!41212 (_ BitVec 32) List!13774) Bool)

(assert (=> b!732802 (= res!492473 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13771))))

(declare-fun b!732803 () Bool)

(declare-fun res!492476 () Bool)

(assert (=> b!732803 (=> (not res!492476) (not e!410066))))

(assert (=> b!732803 (= res!492476 (and (= (size!20140 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20140 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20140 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!410073 () Bool)

(declare-fun b!732804 () Bool)

(assert (=> b!732804 (= e!410073 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19719 a!3186) j!159) a!3186 mask!3328) (Found!7326 j!159)))))

(declare-fun res!492483 () Bool)

(assert (=> start!64948 (=> (not res!492483) (not e!410066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64948 (= res!492483 (validMask!0 mask!3328))))

(assert (=> start!64948 e!410066))

(assert (=> start!64948 true))

(declare-fun array_inv!15493 (array!41212) Bool)

(assert (=> start!64948 (array_inv!15493 a!3186)))

(declare-fun b!732805 () Bool)

(declare-fun res!492486 () Bool)

(assert (=> b!732805 (=> (not res!492486) (not e!410070))))

(assert (=> b!732805 (= res!492486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!324788 () SeekEntryResult!7326)

(declare-fun b!732806 () Bool)

(assert (=> b!732806 (= e!410073 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19719 a!3186) j!159) a!3186 mask!3328) lt!324788))))

(declare-fun b!732807 () Bool)

(declare-fun res!492482 () Bool)

(assert (=> b!732807 (=> (not res!492482) (not e!410072))))

(assert (=> b!732807 (= res!492482 e!410073)))

(declare-fun c!80538 () Bool)

(assert (=> b!732807 (= c!80538 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!732808 () Bool)

(declare-fun res!492488 () Bool)

(assert (=> b!732808 (=> (not res!492488) (not e!410066))))

(declare-fun arrayContainsKey!0 (array!41212 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!732808 (= res!492488 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!732809 () Bool)

(assert (=> b!732809 (= e!410070 e!410072)))

(declare-fun res!492479 () Bool)

(assert (=> b!732809 (=> (not res!492479) (not e!410072))))

(assert (=> b!732809 (= res!492479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19719 a!3186) j!159) mask!3328) (select (arr!19719 a!3186) j!159) a!3186 mask!3328) lt!324788))))

(assert (=> b!732809 (= lt!324788 (Intermediate!7326 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!732810 () Bool)

(assert (=> b!732810 (= e!410069 e!410068)))

(declare-fun res!492480 () Bool)

(assert (=> b!732810 (=> (not res!492480) (not e!410068))))

(assert (=> b!732810 (= res!492480 (= (seekEntryOrOpen!0 (select (arr!19719 a!3186) j!159) a!3186 mask!3328) lt!324781))))

(assert (=> b!732810 (= lt!324781 (Found!7326 j!159))))

(declare-fun b!732811 () Bool)

(declare-fun res!492477 () Bool)

(assert (=> b!732811 (=> (not res!492477) (not e!410066))))

(assert (=> b!732811 (= res!492477 (validKeyInArray!0 (select (arr!19719 a!3186) j!159)))))

(declare-fun b!732812 () Bool)

(assert (=> b!732812 (= e!410071 true)))

(declare-fun lt!324780 () SeekEntryResult!7326)

(assert (=> b!732812 (= lt!324780 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19719 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and start!64948 res!492483) b!732803))

(assert (= (and b!732803 res!492476) b!732811))

(assert (= (and b!732811 res!492477) b!732795))

(assert (= (and b!732795 res!492478) b!732808))

(assert (= (and b!732808 res!492488) b!732801))

(assert (= (and b!732801 res!492485) b!732805))

(assert (= (and b!732805 res!492486) b!732802))

(assert (= (and b!732802 res!492473) b!732798))

(assert (= (and b!732798 res!492481) b!732809))

(assert (= (and b!732809 res!492479) b!732800))

(assert (= (and b!732800 res!492489) b!732807))

(assert (= (and b!732807 c!80538) b!732806))

(assert (= (and b!732807 (not c!80538)) b!732804))

(assert (= (and b!732807 res!492482) b!732799))

(assert (= (and b!732799 res!492474) b!732794))

(assert (= (and b!732794 res!492484) b!732810))

(assert (= (and b!732810 res!492480) b!732796))

(assert (= (and b!732794 (not res!492487)) b!732797))

(assert (= (and b!732797 (not res!492475)) b!732812))

(declare-fun m!685873 () Bool)

(assert (=> b!732805 m!685873))

(declare-fun m!685875 () Bool)

(assert (=> b!732804 m!685875))

(assert (=> b!732804 m!685875))

(declare-fun m!685877 () Bool)

(assert (=> b!732804 m!685877))

(assert (=> b!732796 m!685875))

(assert (=> b!732796 m!685875))

(declare-fun m!685879 () Bool)

(assert (=> b!732796 m!685879))

(declare-fun m!685881 () Bool)

(assert (=> b!732800 m!685881))

(declare-fun m!685883 () Bool)

(assert (=> b!732795 m!685883))

(declare-fun m!685885 () Bool)

(assert (=> b!732797 m!685885))

(declare-fun m!685887 () Bool)

(assert (=> b!732794 m!685887))

(declare-fun m!685889 () Bool)

(assert (=> b!732794 m!685889))

(declare-fun m!685891 () Bool)

(assert (=> b!732801 m!685891))

(declare-fun m!685893 () Bool)

(assert (=> b!732799 m!685893))

(declare-fun m!685895 () Bool)

(assert (=> b!732799 m!685895))

(declare-fun m!685897 () Bool)

(assert (=> b!732799 m!685897))

(declare-fun m!685899 () Bool)

(assert (=> b!732799 m!685899))

(assert (=> b!732799 m!685893))

(declare-fun m!685901 () Bool)

(assert (=> b!732799 m!685901))

(assert (=> b!732810 m!685875))

(assert (=> b!732810 m!685875))

(declare-fun m!685903 () Bool)

(assert (=> b!732810 m!685903))

(declare-fun m!685905 () Bool)

(assert (=> b!732802 m!685905))

(assert (=> b!732812 m!685875))

(assert (=> b!732812 m!685875))

(assert (=> b!732812 m!685877))

(assert (=> b!732806 m!685875))

(assert (=> b!732806 m!685875))

(declare-fun m!685907 () Bool)

(assert (=> b!732806 m!685907))

(declare-fun m!685909 () Bool)

(assert (=> start!64948 m!685909))

(declare-fun m!685911 () Bool)

(assert (=> start!64948 m!685911))

(assert (=> b!732809 m!685875))

(assert (=> b!732809 m!685875))

(declare-fun m!685913 () Bool)

(assert (=> b!732809 m!685913))

(assert (=> b!732809 m!685913))

(assert (=> b!732809 m!685875))

(declare-fun m!685915 () Bool)

(assert (=> b!732809 m!685915))

(declare-fun m!685917 () Bool)

(assert (=> b!732808 m!685917))

(assert (=> b!732811 m!685875))

(assert (=> b!732811 m!685875))

(declare-fun m!685919 () Bool)

(assert (=> b!732811 m!685919))

(push 1)

