; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64558 () Bool)

(assert start!64558)

(declare-fun b!726735 () Bool)

(declare-fun res!487812 () Bool)

(declare-fun e!406886 () Bool)

(assert (=> b!726735 (=> (not res!487812) (not e!406886))))

(declare-datatypes ((array!41029 0))(
  ( (array!41030 (arr!19632 (Array (_ BitVec 32) (_ BitVec 64))) (size!20053 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41029)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726735 (= res!487812 (and (= (size!20053 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20053 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20053 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726736 () Bool)

(declare-fun res!487823 () Bool)

(assert (=> b!726736 (=> (not res!487823) (not e!406886))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726736 (= res!487823 (validKeyInArray!0 (select (arr!19632 a!3186) j!159)))))

(declare-fun res!487813 () Bool)

(assert (=> start!64558 (=> (not res!487813) (not e!406886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64558 (= res!487813 (validMask!0 mask!3328))))

(assert (=> start!64558 e!406886))

(assert (=> start!64558 true))

(declare-fun array_inv!15406 (array!41029) Bool)

(assert (=> start!64558 (array_inv!15406 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!406888 () Bool)

(declare-fun b!726737 () Bool)

(declare-datatypes ((SeekEntryResult!7239 0))(
  ( (MissingZero!7239 (index!31323 (_ BitVec 32))) (Found!7239 (index!31324 (_ BitVec 32))) (Intermediate!7239 (undefined!8051 Bool) (index!31325 (_ BitVec 32)) (x!62338 (_ BitVec 32))) (Undefined!7239) (MissingVacant!7239 (index!31326 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41029 (_ BitVec 32)) SeekEntryResult!7239)

(assert (=> b!726737 (= e!406888 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19632 a!3186) j!159) a!3186 mask!3328) (Found!7239 j!159)))))

(declare-fun b!726738 () Bool)

(declare-fun res!487822 () Bool)

(assert (=> b!726738 (=> (not res!487822) (not e!406886))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!726738 (= res!487822 (validKeyInArray!0 k!2102))))

(declare-fun b!726739 () Bool)

(declare-fun e!406893 () Bool)

(declare-fun e!406892 () Bool)

(assert (=> b!726739 (= e!406893 e!406892)))

(declare-fun res!487821 () Bool)

(assert (=> b!726739 (=> (not res!487821) (not e!406892))))

(declare-fun lt!321877 () SeekEntryResult!7239)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41029 (_ BitVec 32)) SeekEntryResult!7239)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726739 (= res!487821 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19632 a!3186) j!159) mask!3328) (select (arr!19632 a!3186) j!159) a!3186 mask!3328) lt!321877))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726739 (= lt!321877 (Intermediate!7239 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726740 () Bool)

(assert (=> b!726740 (= e!406888 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19632 a!3186) j!159) a!3186 mask!3328) lt!321877))))

(declare-fun b!726741 () Bool)

(assert (=> b!726741 (= e!406886 e!406893)))

(declare-fun res!487817 () Bool)

(assert (=> b!726741 (=> (not res!487817) (not e!406893))))

(declare-fun lt!321872 () SeekEntryResult!7239)

(assert (=> b!726741 (= res!487817 (or (= lt!321872 (MissingZero!7239 i!1173)) (= lt!321872 (MissingVacant!7239 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41029 (_ BitVec 32)) SeekEntryResult!7239)

(assert (=> b!726741 (= lt!321872 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726742 () Bool)

(declare-fun e!406885 () Bool)

(assert (=> b!726742 (= e!406885 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000)))))

(declare-fun lt!321874 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726742 (= lt!321874 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726743 () Bool)

(declare-fun res!487818 () Bool)

(assert (=> b!726743 (=> (not res!487818) (not e!406892))))

(assert (=> b!726743 (= res!487818 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19632 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726744 () Bool)

(declare-fun e!406891 () Bool)

(assert (=> b!726744 (= e!406892 e!406891)))

(declare-fun res!487819 () Bool)

(assert (=> b!726744 (=> (not res!487819) (not e!406891))))

(declare-fun lt!321873 () SeekEntryResult!7239)

(declare-fun lt!321871 () SeekEntryResult!7239)

(assert (=> b!726744 (= res!487819 (= lt!321873 lt!321871))))

(declare-fun lt!321878 () array!41029)

(declare-fun lt!321875 () (_ BitVec 64))

(assert (=> b!726744 (= lt!321871 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321875 lt!321878 mask!3328))))

(assert (=> b!726744 (= lt!321873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321875 mask!3328) lt!321875 lt!321878 mask!3328))))

(assert (=> b!726744 (= lt!321875 (select (store (arr!19632 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726744 (= lt!321878 (array!41030 (store (arr!19632 a!3186) i!1173 k!2102) (size!20053 a!3186)))))

(declare-fun b!726745 () Bool)

(declare-fun res!487824 () Bool)

(assert (=> b!726745 (=> (not res!487824) (not e!406893))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41029 (_ BitVec 32)) Bool)

(assert (=> b!726745 (= res!487824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726746 () Bool)

(declare-fun res!487814 () Bool)

(assert (=> b!726746 (=> (not res!487814) (not e!406886))))

(declare-fun arrayContainsKey!0 (array!41029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726746 (= res!487814 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726747 () Bool)

(declare-fun res!487811 () Bool)

(assert (=> b!726747 (=> (not res!487811) (not e!406893))))

(assert (=> b!726747 (= res!487811 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20053 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20053 a!3186))))))

(declare-fun b!726748 () Bool)

(assert (=> b!726748 (= e!406891 (not e!406885))))

(declare-fun res!487820 () Bool)

(assert (=> b!726748 (=> res!487820 e!406885)))

(assert (=> b!726748 (= res!487820 (or (not (is-Intermediate!7239 lt!321871)) (bvsge x!1131 (x!62338 lt!321871))))))

(declare-fun e!406889 () Bool)

(assert (=> b!726748 e!406889))

(declare-fun res!487816 () Bool)

(assert (=> b!726748 (=> (not res!487816) (not e!406889))))

(assert (=> b!726748 (= res!487816 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24796 0))(
  ( (Unit!24797) )
))
(declare-fun lt!321870 () Unit!24796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24796)

(assert (=> b!726748 (= lt!321870 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726749 () Bool)

(declare-fun res!487815 () Bool)

(assert (=> b!726749 (=> (not res!487815) (not e!406892))))

(assert (=> b!726749 (= res!487815 e!406888)))

(declare-fun c!79836 () Bool)

(assert (=> b!726749 (= c!79836 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726750 () Bool)

(declare-fun res!487810 () Bool)

(assert (=> b!726750 (=> (not res!487810) (not e!406893))))

(declare-datatypes ((List!13687 0))(
  ( (Nil!13684) (Cons!13683 (h!14740 (_ BitVec 64)) (t!20010 List!13687)) )
))
(declare-fun arrayNoDuplicates!0 (array!41029 (_ BitVec 32) List!13687) Bool)

(assert (=> b!726750 (= res!487810 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13684))))

(declare-fun b!726751 () Bool)

(declare-fun e!406890 () Bool)

(declare-fun lt!321876 () SeekEntryResult!7239)

(assert (=> b!726751 (= e!406890 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19632 a!3186) j!159) a!3186 mask!3328) lt!321876))))

(declare-fun b!726752 () Bool)

(assert (=> b!726752 (= e!406889 e!406890)))

(declare-fun res!487809 () Bool)

(assert (=> b!726752 (=> (not res!487809) (not e!406890))))

(assert (=> b!726752 (= res!487809 (= (seekEntryOrOpen!0 (select (arr!19632 a!3186) j!159) a!3186 mask!3328) lt!321876))))

(assert (=> b!726752 (= lt!321876 (Found!7239 j!159))))

(assert (= (and start!64558 res!487813) b!726735))

(assert (= (and b!726735 res!487812) b!726736))

(assert (= (and b!726736 res!487823) b!726738))

(assert (= (and b!726738 res!487822) b!726746))

(assert (= (and b!726746 res!487814) b!726741))

(assert (= (and b!726741 res!487817) b!726745))

(assert (= (and b!726745 res!487824) b!726750))

(assert (= (and b!726750 res!487810) b!726747))

(assert (= (and b!726747 res!487811) b!726739))

(assert (= (and b!726739 res!487821) b!726743))

(assert (= (and b!726743 res!487818) b!726749))

(assert (= (and b!726749 c!79836) b!726740))

(assert (= (and b!726749 (not c!79836)) b!726737))

(assert (= (and b!726749 res!487815) b!726744))

(assert (= (and b!726744 res!487819) b!726748))

(assert (= (and b!726748 res!487816) b!726752))

(assert (= (and b!726752 res!487809) b!726751))

(assert (= (and b!726748 (not res!487820)) b!726742))

(declare-fun m!680851 () Bool)

(assert (=> b!726736 m!680851))

(assert (=> b!726736 m!680851))

(declare-fun m!680853 () Bool)

(assert (=> b!726736 m!680853))

(declare-fun m!680855 () Bool)

(assert (=> b!726738 m!680855))

(assert (=> b!726752 m!680851))

(assert (=> b!726752 m!680851))

(declare-fun m!680857 () Bool)

(assert (=> b!726752 m!680857))

(declare-fun m!680859 () Bool)

(assert (=> b!726750 m!680859))

(declare-fun m!680861 () Bool)

(assert (=> b!726744 m!680861))

(declare-fun m!680863 () Bool)

(assert (=> b!726744 m!680863))

(declare-fun m!680865 () Bool)

(assert (=> b!726744 m!680865))

(declare-fun m!680867 () Bool)

(assert (=> b!726744 m!680867))

(assert (=> b!726744 m!680865))

(declare-fun m!680869 () Bool)

(assert (=> b!726744 m!680869))

(declare-fun m!680871 () Bool)

(assert (=> b!726743 m!680871))

(declare-fun m!680873 () Bool)

(assert (=> b!726748 m!680873))

(declare-fun m!680875 () Bool)

(assert (=> b!726748 m!680875))

(declare-fun m!680877 () Bool)

(assert (=> b!726745 m!680877))

(declare-fun m!680879 () Bool)

(assert (=> b!726741 m!680879))

(assert (=> b!726751 m!680851))

(assert (=> b!726751 m!680851))

(declare-fun m!680881 () Bool)

(assert (=> b!726751 m!680881))

(declare-fun m!680883 () Bool)

(assert (=> start!64558 m!680883))

(declare-fun m!680885 () Bool)

(assert (=> start!64558 m!680885))

(assert (=> b!726739 m!680851))

(assert (=> b!726739 m!680851))

(declare-fun m!680887 () Bool)

(assert (=> b!726739 m!680887))

(assert (=> b!726739 m!680887))

(assert (=> b!726739 m!680851))

(declare-fun m!680889 () Bool)

(assert (=> b!726739 m!680889))

(assert (=> b!726740 m!680851))

(assert (=> b!726740 m!680851))

(declare-fun m!680891 () Bool)

(assert (=> b!726740 m!680891))

(declare-fun m!680893 () Bool)

(assert (=> b!726746 m!680893))

(assert (=> b!726737 m!680851))

(assert (=> b!726737 m!680851))

(declare-fun m!680895 () Bool)

(assert (=> b!726737 m!680895))

(declare-fun m!680897 () Bool)

(assert (=> b!726742 m!680897))

(push 1)

