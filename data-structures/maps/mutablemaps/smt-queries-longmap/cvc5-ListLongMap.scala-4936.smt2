; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68008 () Bool)

(assert start!68008)

(declare-fun b!790925 () Bool)

(declare-fun res!535883 () Bool)

(declare-fun e!439610 () Bool)

(assert (=> b!790925 (=> (not res!535883) (not e!439610))))

(declare-datatypes ((array!42877 0))(
  ( (array!42878 (arr!20520 (Array (_ BitVec 32) (_ BitVec 64))) (size!20941 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42877)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!790925 (= res!535883 (and (= (size!20941 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20941 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20941 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790926 () Bool)

(declare-fun res!535894 () Bool)

(declare-fun e!439608 () Bool)

(assert (=> b!790926 (=> (not res!535894) (not e!439608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42877 (_ BitVec 32)) Bool)

(assert (=> b!790926 (= res!535894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790927 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8127 0))(
  ( (MissingZero!8127 (index!34875 (_ BitVec 32))) (Found!8127 (index!34876 (_ BitVec 32))) (Intermediate!8127 (undefined!8939 Bool) (index!34877 (_ BitVec 32)) (x!65846 (_ BitVec 32))) (Undefined!8127) (MissingVacant!8127 (index!34878 (_ BitVec 32))) )
))
(declare-fun lt!353083 () SeekEntryResult!8127)

(declare-fun e!439606 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42877 (_ BitVec 32)) SeekEntryResult!8127)

(assert (=> b!790927 (= e!439606 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20520 a!3186) j!159) a!3186 mask!3328) lt!353083))))

(declare-fun b!790928 () Bool)

(declare-fun res!535880 () Bool)

(assert (=> b!790928 (=> (not res!535880) (not e!439608))))

(declare-datatypes ((List!14575 0))(
  ( (Nil!14572) (Cons!14571 (h!15700 (_ BitVec 64)) (t!20898 List!14575)) )
))
(declare-fun arrayNoDuplicates!0 (array!42877 (_ BitVec 32) List!14575) Bool)

(assert (=> b!790928 (= res!535880 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14572))))

(declare-fun b!790929 () Bool)

(declare-fun res!535891 () Bool)

(assert (=> b!790929 (=> (not res!535891) (not e!439610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790929 (= res!535891 (validKeyInArray!0 (select (arr!20520 a!3186) j!159)))))

(declare-fun b!790930 () Bool)

(declare-fun res!535884 () Bool)

(declare-fun e!439605 () Bool)

(assert (=> b!790930 (=> (not res!535884) (not e!439605))))

(assert (=> b!790930 (= res!535884 e!439606)))

(declare-fun c!87933 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790930 (= c!87933 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790931 () Bool)

(declare-fun e!439611 () Bool)

(assert (=> b!790931 (= e!439611 (not true))))

(declare-fun e!439607 () Bool)

(assert (=> b!790931 e!439607))

(declare-fun res!535890 () Bool)

(assert (=> b!790931 (=> (not res!535890) (not e!439607))))

(assert (=> b!790931 (= res!535890 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27406 0))(
  ( (Unit!27407) )
))
(declare-fun lt!353082 () Unit!27406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42877 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27406)

(assert (=> b!790931 (= lt!353082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790932 () Bool)

(declare-fun res!535892 () Bool)

(assert (=> b!790932 (=> (not res!535892) (not e!439610))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42877 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790932 (= res!535892 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790933 () Bool)

(assert (=> b!790933 (= e!439605 e!439611)))

(declare-fun res!535881 () Bool)

(assert (=> b!790933 (=> (not res!535881) (not e!439611))))

(declare-fun lt!353081 () (_ BitVec 64))

(declare-fun lt!353086 () array!42877)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790933 (= res!535881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353081 mask!3328) lt!353081 lt!353086 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353081 lt!353086 mask!3328)))))

(assert (=> b!790933 (= lt!353081 (select (store (arr!20520 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!790933 (= lt!353086 (array!42878 (store (arr!20520 a!3186) i!1173 k!2102) (size!20941 a!3186)))))

(declare-fun res!535893 () Bool)

(assert (=> start!68008 (=> (not res!535893) (not e!439610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68008 (= res!535893 (validMask!0 mask!3328))))

(assert (=> start!68008 e!439610))

(assert (=> start!68008 true))

(declare-fun array_inv!16294 (array!42877) Bool)

(assert (=> start!68008 (array_inv!16294 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!790934 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42877 (_ BitVec 32)) SeekEntryResult!8127)

(assert (=> b!790934 (= e!439606 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20520 a!3186) j!159) a!3186 mask!3328) (Found!8127 j!159)))))

(declare-fun b!790935 () Bool)

(assert (=> b!790935 (= e!439608 e!439605)))

(declare-fun res!535885 () Bool)

(assert (=> b!790935 (=> (not res!535885) (not e!439605))))

(assert (=> b!790935 (= res!535885 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20520 a!3186) j!159) mask!3328) (select (arr!20520 a!3186) j!159) a!3186 mask!3328) lt!353083))))

(assert (=> b!790935 (= lt!353083 (Intermediate!8127 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790936 () Bool)

(assert (=> b!790936 (= e!439610 e!439608)))

(declare-fun res!535886 () Bool)

(assert (=> b!790936 (=> (not res!535886) (not e!439608))))

(declare-fun lt!353085 () SeekEntryResult!8127)

(assert (=> b!790936 (= res!535886 (or (= lt!353085 (MissingZero!8127 i!1173)) (= lt!353085 (MissingVacant!8127 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42877 (_ BitVec 32)) SeekEntryResult!8127)

(assert (=> b!790936 (= lt!353085 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!790937 () Bool)

(declare-fun e!439609 () Bool)

(assert (=> b!790937 (= e!439607 e!439609)))

(declare-fun res!535882 () Bool)

(assert (=> b!790937 (=> (not res!535882) (not e!439609))))

(declare-fun lt!353084 () SeekEntryResult!8127)

(assert (=> b!790937 (= res!535882 (= (seekEntryOrOpen!0 (select (arr!20520 a!3186) j!159) a!3186 mask!3328) lt!353084))))

(assert (=> b!790937 (= lt!353084 (Found!8127 j!159))))

(declare-fun b!790938 () Bool)

(declare-fun res!535889 () Bool)

(assert (=> b!790938 (=> (not res!535889) (not e!439608))))

(assert (=> b!790938 (= res!535889 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20941 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20941 a!3186))))))

(declare-fun b!790939 () Bool)

(declare-fun res!535887 () Bool)

(assert (=> b!790939 (=> (not res!535887) (not e!439605))))

(assert (=> b!790939 (= res!535887 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20520 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790940 () Bool)

(assert (=> b!790940 (= e!439609 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20520 a!3186) j!159) a!3186 mask!3328) lt!353084))))

(declare-fun b!790941 () Bool)

(declare-fun res!535888 () Bool)

(assert (=> b!790941 (=> (not res!535888) (not e!439610))))

(assert (=> b!790941 (= res!535888 (validKeyInArray!0 k!2102))))

(assert (= (and start!68008 res!535893) b!790925))

(assert (= (and b!790925 res!535883) b!790929))

(assert (= (and b!790929 res!535891) b!790941))

(assert (= (and b!790941 res!535888) b!790932))

(assert (= (and b!790932 res!535892) b!790936))

(assert (= (and b!790936 res!535886) b!790926))

(assert (= (and b!790926 res!535894) b!790928))

(assert (= (and b!790928 res!535880) b!790938))

(assert (= (and b!790938 res!535889) b!790935))

(assert (= (and b!790935 res!535885) b!790939))

(assert (= (and b!790939 res!535887) b!790930))

(assert (= (and b!790930 c!87933) b!790927))

(assert (= (and b!790930 (not c!87933)) b!790934))

(assert (= (and b!790930 res!535884) b!790933))

(assert (= (and b!790933 res!535881) b!790931))

(assert (= (and b!790931 res!535890) b!790937))

(assert (= (and b!790937 res!535882) b!790940))

(declare-fun m!731779 () Bool)

(assert (=> b!790934 m!731779))

(assert (=> b!790934 m!731779))

(declare-fun m!731781 () Bool)

(assert (=> b!790934 m!731781))

(declare-fun m!731783 () Bool)

(assert (=> start!68008 m!731783))

(declare-fun m!731785 () Bool)

(assert (=> start!68008 m!731785))

(declare-fun m!731787 () Bool)

(assert (=> b!790933 m!731787))

(declare-fun m!731789 () Bool)

(assert (=> b!790933 m!731789))

(declare-fun m!731791 () Bool)

(assert (=> b!790933 m!731791))

(assert (=> b!790933 m!731789))

(declare-fun m!731793 () Bool)

(assert (=> b!790933 m!731793))

(declare-fun m!731795 () Bool)

(assert (=> b!790933 m!731795))

(declare-fun m!731797 () Bool)

(assert (=> b!790928 m!731797))

(declare-fun m!731799 () Bool)

(assert (=> b!790931 m!731799))

(declare-fun m!731801 () Bool)

(assert (=> b!790931 m!731801))

(declare-fun m!731803 () Bool)

(assert (=> b!790932 m!731803))

(declare-fun m!731805 () Bool)

(assert (=> b!790939 m!731805))

(assert (=> b!790927 m!731779))

(assert (=> b!790927 m!731779))

(declare-fun m!731807 () Bool)

(assert (=> b!790927 m!731807))

(assert (=> b!790935 m!731779))

(assert (=> b!790935 m!731779))

(declare-fun m!731809 () Bool)

(assert (=> b!790935 m!731809))

(assert (=> b!790935 m!731809))

(assert (=> b!790935 m!731779))

(declare-fun m!731811 () Bool)

(assert (=> b!790935 m!731811))

(assert (=> b!790929 m!731779))

(assert (=> b!790929 m!731779))

(declare-fun m!731813 () Bool)

(assert (=> b!790929 m!731813))

(declare-fun m!731815 () Bool)

(assert (=> b!790936 m!731815))

(assert (=> b!790937 m!731779))

(assert (=> b!790937 m!731779))

(declare-fun m!731817 () Bool)

(assert (=> b!790937 m!731817))

(declare-fun m!731819 () Bool)

(assert (=> b!790926 m!731819))

(assert (=> b!790940 m!731779))

(assert (=> b!790940 m!731779))

(declare-fun m!731821 () Bool)

(assert (=> b!790940 m!731821))

(declare-fun m!731823 () Bool)

(assert (=> b!790941 m!731823))

(push 1)

