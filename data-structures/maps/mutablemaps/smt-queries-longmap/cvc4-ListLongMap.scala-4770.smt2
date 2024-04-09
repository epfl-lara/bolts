; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65702 () Bool)

(assert start!65702)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!752881 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41828 0))(
  ( (array!41829 (arr!20024 (Array (_ BitVec 32) (_ BitVec 64))) (size!20445 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41828)

(declare-fun e!419962 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7631 0))(
  ( (MissingZero!7631 (index!32891 (_ BitVec 32))) (Found!7631 (index!32892 (_ BitVec 32))) (Intermediate!7631 (undefined!8443 Bool) (index!32893 (_ BitVec 32)) (x!63830 (_ BitVec 32))) (Undefined!7631) (MissingVacant!7631 (index!32894 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41828 (_ BitVec 32)) SeekEntryResult!7631)

(assert (=> b!752881 (= e!419962 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20024 a!3186) j!159) a!3186 mask!3328) (Found!7631 j!159)))))

(declare-fun b!752882 () Bool)

(declare-fun e!419959 () Bool)

(declare-fun e!419967 () Bool)

(assert (=> b!752882 (= e!419959 e!419967)))

(declare-fun res!508620 () Bool)

(assert (=> b!752882 (=> (not res!508620) (not e!419967))))

(declare-fun lt!334967 () SeekEntryResult!7631)

(declare-fun lt!334961 () SeekEntryResult!7631)

(assert (=> b!752882 (= res!508620 (= lt!334967 lt!334961))))

(declare-fun lt!334966 () (_ BitVec 64))

(declare-fun lt!334970 () array!41828)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41828 (_ BitVec 32)) SeekEntryResult!7631)

(assert (=> b!752882 (= lt!334961 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334966 lt!334970 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752882 (= lt!334967 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334966 mask!3328) lt!334966 lt!334970 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!752882 (= lt!334966 (select (store (arr!20024 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752882 (= lt!334970 (array!41829 (store (arr!20024 a!3186) i!1173 k!2102) (size!20445 a!3186)))))

(declare-fun b!752883 () Bool)

(declare-fun res!508626 () Bool)

(declare-fun e!419970 () Bool)

(assert (=> b!752883 (=> (not res!508626) (not e!419970))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752883 (= res!508626 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20445 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20445 a!3186))))))

(declare-fun b!752884 () Bool)

(declare-fun e!419969 () Bool)

(declare-fun e!419960 () Bool)

(assert (=> b!752884 (= e!419969 e!419960)))

(declare-fun res!508631 () Bool)

(assert (=> b!752884 (=> res!508631 e!419960)))

(declare-fun lt!334968 () (_ BitVec 64))

(assert (=> b!752884 (= res!508631 (= lt!334968 lt!334966))))

(assert (=> b!752884 (= lt!334968 (select (store (arr!20024 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752885 () Bool)

(declare-fun res!508632 () Bool)

(declare-fun e!419964 () Bool)

(assert (=> b!752885 (=> (not res!508632) (not e!419964))))

(assert (=> b!752885 (= res!508632 (and (= (size!20445 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20445 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20445 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752886 () Bool)

(declare-fun res!508633 () Bool)

(assert (=> b!752886 (=> (not res!508633) (not e!419964))))

(declare-fun arrayContainsKey!0 (array!41828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752886 (= res!508633 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752887 () Bool)

(declare-datatypes ((Unit!25926 0))(
  ( (Unit!25927) )
))
(declare-fun e!419963 () Unit!25926)

(declare-fun Unit!25928 () Unit!25926)

(assert (=> b!752887 (= e!419963 Unit!25928)))

(assert (=> b!752887 false))

(declare-fun b!752888 () Bool)

(declare-fun res!508636 () Bool)

(assert (=> b!752888 (=> (not res!508636) (not e!419970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41828 (_ BitVec 32)) Bool)

(assert (=> b!752888 (= res!508636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752889 () Bool)

(declare-fun e!419966 () Bool)

(assert (=> b!752889 (= e!419967 (not e!419966))))

(declare-fun res!508635 () Bool)

(assert (=> b!752889 (=> res!508635 e!419966)))

(assert (=> b!752889 (= res!508635 (or (not (is-Intermediate!7631 lt!334961)) (bvslt x!1131 (x!63830 lt!334961)) (not (= x!1131 (x!63830 lt!334961))) (not (= index!1321 (index!32893 lt!334961)))))))

(declare-fun e!419968 () Bool)

(assert (=> b!752889 e!419968))

(declare-fun res!508637 () Bool)

(assert (=> b!752889 (=> (not res!508637) (not e!419968))))

(declare-fun lt!334965 () SeekEntryResult!7631)

(declare-fun lt!334963 () SeekEntryResult!7631)

(assert (=> b!752889 (= res!508637 (= lt!334965 lt!334963))))

(assert (=> b!752889 (= lt!334963 (Found!7631 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41828 (_ BitVec 32)) SeekEntryResult!7631)

(assert (=> b!752889 (= lt!334965 (seekEntryOrOpen!0 (select (arr!20024 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752889 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334962 () Unit!25926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41828 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25926)

(assert (=> b!752889 (= lt!334962 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752890 () Bool)

(declare-fun e!419965 () Bool)

(declare-fun lt!334964 () SeekEntryResult!7631)

(assert (=> b!752890 (= e!419965 (= lt!334965 lt!334964))))

(declare-fun b!752891 () Bool)

(assert (=> b!752891 (= e!419960 true)))

(assert (=> b!752891 e!419965))

(declare-fun res!508625 () Bool)

(assert (=> b!752891 (=> (not res!508625) (not e!419965))))

(assert (=> b!752891 (= res!508625 (= lt!334968 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334959 () Unit!25926)

(assert (=> b!752891 (= lt!334959 e!419963)))

(declare-fun c!82511 () Bool)

(assert (=> b!752891 (= c!82511 (= lt!334968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752892 () Bool)

(assert (=> b!752892 (= e!419966 e!419969)))

(declare-fun res!508624 () Bool)

(assert (=> b!752892 (=> res!508624 e!419969)))

(assert (=> b!752892 (= res!508624 (not (= lt!334964 lt!334963)))))

(assert (=> b!752892 (= lt!334964 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20024 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752893 () Bool)

(assert (=> b!752893 (= e!419964 e!419970)))

(declare-fun res!508622 () Bool)

(assert (=> b!752893 (=> (not res!508622) (not e!419970))))

(declare-fun lt!334960 () SeekEntryResult!7631)

(assert (=> b!752893 (= res!508622 (or (= lt!334960 (MissingZero!7631 i!1173)) (= lt!334960 (MissingVacant!7631 i!1173))))))

(assert (=> b!752893 (= lt!334960 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752894 () Bool)

(declare-fun res!508629 () Bool)

(assert (=> b!752894 (=> (not res!508629) (not e!419959))))

(assert (=> b!752894 (= res!508629 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20024 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752895 () Bool)

(assert (=> b!752895 (= e!419970 e!419959)))

(declare-fun res!508623 () Bool)

(assert (=> b!752895 (=> (not res!508623) (not e!419959))))

(declare-fun lt!334969 () SeekEntryResult!7631)

(assert (=> b!752895 (= res!508623 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20024 a!3186) j!159) mask!3328) (select (arr!20024 a!3186) j!159) a!3186 mask!3328) lt!334969))))

(assert (=> b!752895 (= lt!334969 (Intermediate!7631 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752896 () Bool)

(declare-fun res!508621 () Bool)

(assert (=> b!752896 (=> (not res!508621) (not e!419965))))

(assert (=> b!752896 (= res!508621 (= (seekEntryOrOpen!0 lt!334966 lt!334970 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334966 lt!334970 mask!3328)))))

(declare-fun b!752897 () Bool)

(declare-fun res!508634 () Bool)

(assert (=> b!752897 (=> (not res!508634) (not e!419964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752897 (= res!508634 (validKeyInArray!0 k!2102))))

(declare-fun b!752898 () Bool)

(declare-fun res!508638 () Bool)

(assert (=> b!752898 (=> (not res!508638) (not e!419970))))

(declare-datatypes ((List!14079 0))(
  ( (Nil!14076) (Cons!14075 (h!15147 (_ BitVec 64)) (t!20402 List!14079)) )
))
(declare-fun arrayNoDuplicates!0 (array!41828 (_ BitVec 32) List!14079) Bool)

(assert (=> b!752898 (= res!508638 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14076))))

(declare-fun b!752899 () Bool)

(assert (=> b!752899 (= e!419968 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20024 a!3186) j!159) a!3186 mask!3328) lt!334963))))

(declare-fun b!752900 () Bool)

(assert (=> b!752900 (= e!419962 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20024 a!3186) j!159) a!3186 mask!3328) lt!334969))))

(declare-fun res!508628 () Bool)

(assert (=> start!65702 (=> (not res!508628) (not e!419964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65702 (= res!508628 (validMask!0 mask!3328))))

(assert (=> start!65702 e!419964))

(assert (=> start!65702 true))

(declare-fun array_inv!15798 (array!41828) Bool)

(assert (=> start!65702 (array_inv!15798 a!3186)))

(declare-fun b!752901 () Bool)

(declare-fun res!508630 () Bool)

(assert (=> b!752901 (=> (not res!508630) (not e!419959))))

(assert (=> b!752901 (= res!508630 e!419962)))

(declare-fun c!82512 () Bool)

(assert (=> b!752901 (= c!82512 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752902 () Bool)

(declare-fun Unit!25929 () Unit!25926)

(assert (=> b!752902 (= e!419963 Unit!25929)))

(declare-fun b!752903 () Bool)

(declare-fun res!508627 () Bool)

(assert (=> b!752903 (=> (not res!508627) (not e!419964))))

(assert (=> b!752903 (= res!508627 (validKeyInArray!0 (select (arr!20024 a!3186) j!159)))))

(assert (= (and start!65702 res!508628) b!752885))

(assert (= (and b!752885 res!508632) b!752903))

(assert (= (and b!752903 res!508627) b!752897))

(assert (= (and b!752897 res!508634) b!752886))

(assert (= (and b!752886 res!508633) b!752893))

(assert (= (and b!752893 res!508622) b!752888))

(assert (= (and b!752888 res!508636) b!752898))

(assert (= (and b!752898 res!508638) b!752883))

(assert (= (and b!752883 res!508626) b!752895))

(assert (= (and b!752895 res!508623) b!752894))

(assert (= (and b!752894 res!508629) b!752901))

(assert (= (and b!752901 c!82512) b!752900))

(assert (= (and b!752901 (not c!82512)) b!752881))

(assert (= (and b!752901 res!508630) b!752882))

(assert (= (and b!752882 res!508620) b!752889))

(assert (= (and b!752889 res!508637) b!752899))

(assert (= (and b!752889 (not res!508635)) b!752892))

(assert (= (and b!752892 (not res!508624)) b!752884))

(assert (= (and b!752884 (not res!508631)) b!752891))

(assert (= (and b!752891 c!82511) b!752887))

(assert (= (and b!752891 (not c!82511)) b!752902))

(assert (= (and b!752891 res!508625) b!752896))

(assert (= (and b!752896 res!508621) b!752890))

(declare-fun m!701781 () Bool)

(assert (=> b!752886 m!701781))

(declare-fun m!701783 () Bool)

(assert (=> b!752895 m!701783))

(assert (=> b!752895 m!701783))

(declare-fun m!701785 () Bool)

(assert (=> b!752895 m!701785))

(assert (=> b!752895 m!701785))

(assert (=> b!752895 m!701783))

(declare-fun m!701787 () Bool)

(assert (=> b!752895 m!701787))

(assert (=> b!752892 m!701783))

(assert (=> b!752892 m!701783))

(declare-fun m!701789 () Bool)

(assert (=> b!752892 m!701789))

(assert (=> b!752881 m!701783))

(assert (=> b!752881 m!701783))

(assert (=> b!752881 m!701789))

(declare-fun m!701791 () Bool)

(assert (=> b!752894 m!701791))

(declare-fun m!701793 () Bool)

(assert (=> b!752898 m!701793))

(declare-fun m!701795 () Bool)

(assert (=> b!752896 m!701795))

(declare-fun m!701797 () Bool)

(assert (=> b!752896 m!701797))

(assert (=> b!752900 m!701783))

(assert (=> b!752900 m!701783))

(declare-fun m!701799 () Bool)

(assert (=> b!752900 m!701799))

(assert (=> b!752899 m!701783))

(assert (=> b!752899 m!701783))

(declare-fun m!701801 () Bool)

(assert (=> b!752899 m!701801))

(declare-fun m!701803 () Bool)

(assert (=> start!65702 m!701803))

(declare-fun m!701805 () Bool)

(assert (=> start!65702 m!701805))

(declare-fun m!701807 () Bool)

(assert (=> b!752888 m!701807))

(declare-fun m!701809 () Bool)

(assert (=> b!752882 m!701809))

(declare-fun m!701811 () Bool)

(assert (=> b!752882 m!701811))

(declare-fun m!701813 () Bool)

(assert (=> b!752882 m!701813))

(declare-fun m!701815 () Bool)

(assert (=> b!752882 m!701815))

(declare-fun m!701817 () Bool)

(assert (=> b!752882 m!701817))

(assert (=> b!752882 m!701809))

(declare-fun m!701819 () Bool)

(assert (=> b!752897 m!701819))

(assert (=> b!752903 m!701783))

(assert (=> b!752903 m!701783))

(declare-fun m!701821 () Bool)

(assert (=> b!752903 m!701821))

(declare-fun m!701823 () Bool)

(assert (=> b!752893 m!701823))

(assert (=> b!752884 m!701813))

(declare-fun m!701825 () Bool)

(assert (=> b!752884 m!701825))

(assert (=> b!752889 m!701783))

(assert (=> b!752889 m!701783))

(declare-fun m!701827 () Bool)

(assert (=> b!752889 m!701827))

(declare-fun m!701829 () Bool)

(assert (=> b!752889 m!701829))

(declare-fun m!701831 () Bool)

(assert (=> b!752889 m!701831))

(push 1)

