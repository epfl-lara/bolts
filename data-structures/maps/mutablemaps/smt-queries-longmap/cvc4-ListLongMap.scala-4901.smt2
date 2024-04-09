; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67670 () Bool)

(assert start!67670)

(declare-fun b!783123 () Bool)

(declare-fun res!529892 () Bool)

(declare-fun e!435466 () Bool)

(assert (=> b!783123 (=> (not res!529892) (not e!435466))))

(declare-datatypes ((array!42665 0))(
  ( (array!42666 (arr!20417 (Array (_ BitVec 32) (_ BitVec 64))) (size!20838 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42665)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!783123 (= res!529892 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!349037 () array!42665)

(declare-fun b!783124 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!349039 () (_ BitVec 64))

(declare-fun e!435474 () Bool)

(declare-datatypes ((SeekEntryResult!8024 0))(
  ( (MissingZero!8024 (index!34463 (_ BitVec 32))) (Found!8024 (index!34464 (_ BitVec 32))) (Intermediate!8024 (undefined!8836 Bool) (index!34465 (_ BitVec 32)) (x!65445 (_ BitVec 32))) (Undefined!8024) (MissingVacant!8024 (index!34466 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42665 (_ BitVec 32)) SeekEntryResult!8024)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42665 (_ BitVec 32)) SeekEntryResult!8024)

(assert (=> b!783124 (= e!435474 (= (seekEntryOrOpen!0 lt!349039 lt!349037 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349039 lt!349037 mask!3328)))))

(declare-fun b!783126 () Bool)

(declare-fun res!529904 () Bool)

(assert (=> b!783126 (=> (not res!529904) (not e!435466))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!783126 (= res!529904 (and (= (size!20838 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20838 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20838 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!783127 () Bool)

(declare-fun res!529909 () Bool)

(declare-fun e!435472 () Bool)

(assert (=> b!783127 (=> (not res!529909) (not e!435472))))

(declare-datatypes ((List!14472 0))(
  ( (Nil!14469) (Cons!14468 (h!15591 (_ BitVec 64)) (t!20795 List!14472)) )
))
(declare-fun arrayNoDuplicates!0 (array!42665 (_ BitVec 32) List!14472) Bool)

(assert (=> b!783127 (= res!529909 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14469))))

(declare-fun b!783128 () Bool)

(assert (=> b!783128 (= e!435466 e!435472)))

(declare-fun res!529894 () Bool)

(assert (=> b!783128 (=> (not res!529894) (not e!435472))))

(declare-fun lt!349035 () SeekEntryResult!8024)

(assert (=> b!783128 (= res!529894 (or (= lt!349035 (MissingZero!8024 i!1173)) (= lt!349035 (MissingVacant!8024 i!1173))))))

(assert (=> b!783128 (= lt!349035 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!783129 () Bool)

(declare-datatypes ((Unit!27006 0))(
  ( (Unit!27007) )
))
(declare-fun e!435469 () Unit!27006)

(declare-fun Unit!27008 () Unit!27006)

(assert (=> b!783129 (= e!435469 Unit!27008)))

(assert (=> b!783129 false))

(declare-fun b!783130 () Bool)

(declare-fun res!529899 () Bool)

(assert (=> b!783130 (=> (not res!529899) (not e!435472))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!783130 (= res!529899 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20838 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20838 a!3186))))))

(declare-fun b!783131 () Bool)

(declare-fun e!435465 () Bool)

(assert (=> b!783131 (= e!435465 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20417 a!3186) j!159) a!3186 mask!3328) (Found!8024 j!159)))))

(declare-fun b!783132 () Bool)

(declare-fun res!529896 () Bool)

(assert (=> b!783132 (=> (not res!529896) (not e!435472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42665 (_ BitVec 32)) Bool)

(assert (=> b!783132 (= res!529896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!783133 () Bool)

(declare-fun e!435470 () Bool)

(assert (=> b!783133 (= e!435472 e!435470)))

(declare-fun res!529900 () Bool)

(assert (=> b!783133 (=> (not res!529900) (not e!435470))))

(declare-fun lt!349038 () SeekEntryResult!8024)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42665 (_ BitVec 32)) SeekEntryResult!8024)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!783133 (= res!529900 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20417 a!3186) j!159) mask!3328) (select (arr!20417 a!3186) j!159) a!3186 mask!3328) lt!349038))))

(assert (=> b!783133 (= lt!349038 (Intermediate!8024 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!529893 () Bool)

(assert (=> start!67670 (=> (not res!529893) (not e!435466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67670 (= res!529893 (validMask!0 mask!3328))))

(assert (=> start!67670 e!435466))

(assert (=> start!67670 true))

(declare-fun array_inv!16191 (array!42665) Bool)

(assert (=> start!67670 (array_inv!16191 a!3186)))

(declare-fun b!783125 () Bool)

(declare-fun res!529908 () Bool)

(assert (=> b!783125 (=> (not res!529908) (not e!435470))))

(assert (=> b!783125 (= res!529908 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20417 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!783134 () Bool)

(declare-fun e!435467 () Bool)

(declare-fun e!435468 () Bool)

(assert (=> b!783134 (= e!435467 (not e!435468))))

(declare-fun res!529905 () Bool)

(assert (=> b!783134 (=> res!529905 e!435468)))

(declare-fun lt!349033 () SeekEntryResult!8024)

(assert (=> b!783134 (= res!529905 (or (not (is-Intermediate!8024 lt!349033)) (bvslt x!1131 (x!65445 lt!349033)) (not (= x!1131 (x!65445 lt!349033))) (not (= index!1321 (index!34465 lt!349033)))))))

(declare-fun e!435471 () Bool)

(assert (=> b!783134 e!435471))

(declare-fun res!529897 () Bool)

(assert (=> b!783134 (=> (not res!529897) (not e!435471))))

(declare-fun lt!349042 () SeekEntryResult!8024)

(declare-fun lt!349032 () SeekEntryResult!8024)

(assert (=> b!783134 (= res!529897 (= lt!349042 lt!349032))))

(assert (=> b!783134 (= lt!349032 (Found!8024 j!159))))

(assert (=> b!783134 (= lt!349042 (seekEntryOrOpen!0 (select (arr!20417 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!783134 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349041 () Unit!27006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27006)

(assert (=> b!783134 (= lt!349041 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!783135 () Bool)

(declare-fun res!529903 () Bool)

(assert (=> b!783135 (=> (not res!529903) (not e!435466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!783135 (= res!529903 (validKeyInArray!0 k!2102))))

(declare-fun b!783136 () Bool)

(declare-fun e!435475 () Bool)

(assert (=> b!783136 (= e!435475 true)))

(assert (=> b!783136 e!435474))

(declare-fun res!529895 () Bool)

(assert (=> b!783136 (=> (not res!529895) (not e!435474))))

(declare-fun lt!349040 () (_ BitVec 64))

(assert (=> b!783136 (= res!529895 (= lt!349040 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349036 () Unit!27006)

(assert (=> b!783136 (= lt!349036 e!435469)))

(declare-fun c!87023 () Bool)

(assert (=> b!783136 (= c!87023 (= lt!349040 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!783137 () Bool)

(declare-fun res!529898 () Bool)

(assert (=> b!783137 (=> (not res!529898) (not e!435466))))

(assert (=> b!783137 (= res!529898 (validKeyInArray!0 (select (arr!20417 a!3186) j!159)))))

(declare-fun b!783138 () Bool)

(declare-fun res!529906 () Bool)

(assert (=> b!783138 (=> res!529906 e!435468)))

(assert (=> b!783138 (= res!529906 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20417 a!3186) j!159) a!3186 mask!3328) lt!349032)))))

(declare-fun b!783139 () Bool)

(declare-fun Unit!27009 () Unit!27006)

(assert (=> b!783139 (= e!435469 Unit!27009)))

(declare-fun b!783140 () Bool)

(assert (=> b!783140 (= e!435470 e!435467)))

(declare-fun res!529901 () Bool)

(assert (=> b!783140 (=> (not res!529901) (not e!435467))))

(declare-fun lt!349034 () SeekEntryResult!8024)

(assert (=> b!783140 (= res!529901 (= lt!349034 lt!349033))))

(assert (=> b!783140 (= lt!349033 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349039 lt!349037 mask!3328))))

(assert (=> b!783140 (= lt!349034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349039 mask!3328) lt!349039 lt!349037 mask!3328))))

(assert (=> b!783140 (= lt!349039 (select (store (arr!20417 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!783140 (= lt!349037 (array!42666 (store (arr!20417 a!3186) i!1173 k!2102) (size!20838 a!3186)))))

(declare-fun b!783141 () Bool)

(assert (=> b!783141 (= e!435468 e!435475)))

(declare-fun res!529907 () Bool)

(assert (=> b!783141 (=> res!529907 e!435475)))

(assert (=> b!783141 (= res!529907 (= lt!349040 lt!349039))))

(assert (=> b!783141 (= lt!349040 (select (store (arr!20417 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!783142 () Bool)

(assert (=> b!783142 (= e!435465 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20417 a!3186) j!159) a!3186 mask!3328) lt!349038))))

(declare-fun b!783143 () Bool)

(assert (=> b!783143 (= e!435471 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20417 a!3186) j!159) a!3186 mask!3328) lt!349032))))

(declare-fun b!783144 () Bool)

(declare-fun res!529902 () Bool)

(assert (=> b!783144 (=> (not res!529902) (not e!435470))))

(assert (=> b!783144 (= res!529902 e!435465)))

(declare-fun c!87024 () Bool)

(assert (=> b!783144 (= c!87024 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67670 res!529893) b!783126))

(assert (= (and b!783126 res!529904) b!783137))

(assert (= (and b!783137 res!529898) b!783135))

(assert (= (and b!783135 res!529903) b!783123))

(assert (= (and b!783123 res!529892) b!783128))

(assert (= (and b!783128 res!529894) b!783132))

(assert (= (and b!783132 res!529896) b!783127))

(assert (= (and b!783127 res!529909) b!783130))

(assert (= (and b!783130 res!529899) b!783133))

(assert (= (and b!783133 res!529900) b!783125))

(assert (= (and b!783125 res!529908) b!783144))

(assert (= (and b!783144 c!87024) b!783142))

(assert (= (and b!783144 (not c!87024)) b!783131))

(assert (= (and b!783144 res!529902) b!783140))

(assert (= (and b!783140 res!529901) b!783134))

(assert (= (and b!783134 res!529897) b!783143))

(assert (= (and b!783134 (not res!529905)) b!783138))

(assert (= (and b!783138 (not res!529906)) b!783141))

(assert (= (and b!783141 (not res!529907)) b!783136))

(assert (= (and b!783136 c!87023) b!783129))

(assert (= (and b!783136 (not c!87023)) b!783139))

(assert (= (and b!783136 res!529895) b!783124))

(declare-fun m!725793 () Bool)

(assert (=> b!783128 m!725793))

(declare-fun m!725795 () Bool)

(assert (=> b!783134 m!725795))

(assert (=> b!783134 m!725795))

(declare-fun m!725797 () Bool)

(assert (=> b!783134 m!725797))

(declare-fun m!725799 () Bool)

(assert (=> b!783134 m!725799))

(declare-fun m!725801 () Bool)

(assert (=> b!783134 m!725801))

(declare-fun m!725803 () Bool)

(assert (=> b!783135 m!725803))

(declare-fun m!725805 () Bool)

(assert (=> b!783141 m!725805))

(declare-fun m!725807 () Bool)

(assert (=> b!783141 m!725807))

(assert (=> b!783137 m!725795))

(assert (=> b!783137 m!725795))

(declare-fun m!725809 () Bool)

(assert (=> b!783137 m!725809))

(declare-fun m!725811 () Bool)

(assert (=> b!783123 m!725811))

(declare-fun m!725813 () Bool)

(assert (=> b!783124 m!725813))

(declare-fun m!725815 () Bool)

(assert (=> b!783124 m!725815))

(assert (=> b!783131 m!725795))

(assert (=> b!783131 m!725795))

(declare-fun m!725817 () Bool)

(assert (=> b!783131 m!725817))

(declare-fun m!725819 () Bool)

(assert (=> b!783132 m!725819))

(assert (=> b!783133 m!725795))

(assert (=> b!783133 m!725795))

(declare-fun m!725821 () Bool)

(assert (=> b!783133 m!725821))

(assert (=> b!783133 m!725821))

(assert (=> b!783133 m!725795))

(declare-fun m!725823 () Bool)

(assert (=> b!783133 m!725823))

(declare-fun m!725825 () Bool)

(assert (=> b!783127 m!725825))

(assert (=> b!783143 m!725795))

(assert (=> b!783143 m!725795))

(declare-fun m!725827 () Bool)

(assert (=> b!783143 m!725827))

(assert (=> b!783142 m!725795))

(assert (=> b!783142 m!725795))

(declare-fun m!725829 () Bool)

(assert (=> b!783142 m!725829))

(declare-fun m!725831 () Bool)

(assert (=> b!783140 m!725831))

(assert (=> b!783140 m!725805))

(declare-fun m!725833 () Bool)

(assert (=> b!783140 m!725833))

(assert (=> b!783140 m!725831))

(declare-fun m!725835 () Bool)

(assert (=> b!783140 m!725835))

(declare-fun m!725837 () Bool)

(assert (=> b!783140 m!725837))

(declare-fun m!725839 () Bool)

(assert (=> b!783125 m!725839))

(assert (=> b!783138 m!725795))

(assert (=> b!783138 m!725795))

(assert (=> b!783138 m!725817))

(declare-fun m!725841 () Bool)

(assert (=> start!67670 m!725841))

(declare-fun m!725843 () Bool)

(assert (=> start!67670 m!725843))

(push 1)

