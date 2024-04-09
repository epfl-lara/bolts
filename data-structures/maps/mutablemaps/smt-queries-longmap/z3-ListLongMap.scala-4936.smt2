; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68010 () Bool)

(assert start!68010)

(declare-fun b!790976 () Bool)

(declare-fun res!535935 () Bool)

(declare-fun e!439630 () Bool)

(assert (=> b!790976 (=> (not res!535935) (not e!439630))))

(declare-datatypes ((array!42879 0))(
  ( (array!42880 (arr!20521 (Array (_ BitVec 32) (_ BitVec 64))) (size!20942 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42879)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790976 (= res!535935 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun res!535932 () Bool)

(assert (=> start!68010 (=> (not res!535932) (not e!439630))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68010 (= res!535932 (validMask!0 mask!3328))))

(assert (=> start!68010 e!439630))

(assert (=> start!68010 true))

(declare-fun array_inv!16295 (array!42879) Bool)

(assert (=> start!68010 (array_inv!16295 a!3186)))

(declare-fun e!439635 () Bool)

(declare-datatypes ((SeekEntryResult!8128 0))(
  ( (MissingZero!8128 (index!34879 (_ BitVec 32))) (Found!8128 (index!34880 (_ BitVec 32))) (Intermediate!8128 (undefined!8940 Bool) (index!34881 (_ BitVec 32)) (x!65847 (_ BitVec 32))) (Undefined!8128) (MissingVacant!8128 (index!34882 (_ BitVec 32))) )
))
(declare-fun lt!353101 () SeekEntryResult!8128)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!790977 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42879 (_ BitVec 32)) SeekEntryResult!8128)

(assert (=> b!790977 (= e!439635 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20521 a!3186) j!159) a!3186 mask!3328) lt!353101))))

(declare-fun b!790978 () Bool)

(declare-fun res!535925 () Bool)

(declare-fun e!439629 () Bool)

(assert (=> b!790978 (=> (not res!535925) (not e!439629))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42879 (_ BitVec 32)) Bool)

(assert (=> b!790978 (= res!535925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790979 () Bool)

(declare-fun e!439633 () Bool)

(assert (=> b!790979 (= e!439629 e!439633)))

(declare-fun res!535937 () Bool)

(assert (=> b!790979 (=> (not res!535937) (not e!439633))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790979 (= res!535937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20521 a!3186) j!159) mask!3328) (select (arr!20521 a!3186) j!159) a!3186 mask!3328) lt!353101))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790979 (= lt!353101 (Intermediate!8128 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790980 () Bool)

(assert (=> b!790980 (= e!439630 e!439629)))

(declare-fun res!535939 () Bool)

(assert (=> b!790980 (=> (not res!535939) (not e!439629))))

(declare-fun lt!353104 () SeekEntryResult!8128)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!790980 (= res!535939 (or (= lt!353104 (MissingZero!8128 i!1173)) (= lt!353104 (MissingVacant!8128 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42879 (_ BitVec 32)) SeekEntryResult!8128)

(assert (=> b!790980 (= lt!353104 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!790981 () Bool)

(declare-fun res!535926 () Bool)

(assert (=> b!790981 (=> (not res!535926) (not e!439630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790981 (= res!535926 (validKeyInArray!0 k0!2102))))

(declare-fun b!790982 () Bool)

(declare-fun e!439631 () Bool)

(declare-fun lt!353102 () SeekEntryResult!8128)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42879 (_ BitVec 32)) SeekEntryResult!8128)

(assert (=> b!790982 (= e!439631 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20521 a!3186) j!159) a!3186 mask!3328) lt!353102))))

(declare-fun b!790983 () Bool)

(declare-fun e!439634 () Bool)

(assert (=> b!790983 (= e!439634 e!439631)))

(declare-fun res!535933 () Bool)

(assert (=> b!790983 (=> (not res!535933) (not e!439631))))

(assert (=> b!790983 (= res!535933 (= (seekEntryOrOpen!0 (select (arr!20521 a!3186) j!159) a!3186 mask!3328) lt!353102))))

(assert (=> b!790983 (= lt!353102 (Found!8128 j!159))))

(declare-fun b!790984 () Bool)

(declare-fun res!535936 () Bool)

(assert (=> b!790984 (=> (not res!535936) (not e!439630))))

(assert (=> b!790984 (= res!535936 (and (= (size!20942 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20942 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20942 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790985 () Bool)

(declare-fun res!535931 () Bool)

(assert (=> b!790985 (=> (not res!535931) (not e!439630))))

(assert (=> b!790985 (= res!535931 (validKeyInArray!0 (select (arr!20521 a!3186) j!159)))))

(declare-fun b!790986 () Bool)

(declare-fun res!535934 () Bool)

(assert (=> b!790986 (=> (not res!535934) (not e!439633))))

(assert (=> b!790986 (= res!535934 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20521 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790987 () Bool)

(declare-fun res!535930 () Bool)

(assert (=> b!790987 (=> (not res!535930) (not e!439629))))

(declare-datatypes ((List!14576 0))(
  ( (Nil!14573) (Cons!14572 (h!15701 (_ BitVec 64)) (t!20899 List!14576)) )
))
(declare-fun arrayNoDuplicates!0 (array!42879 (_ BitVec 32) List!14576) Bool)

(assert (=> b!790987 (= res!535930 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14573))))

(declare-fun b!790988 () Bool)

(declare-fun e!439636 () Bool)

(assert (=> b!790988 (= e!439636 (not true))))

(assert (=> b!790988 e!439634))

(declare-fun res!535929 () Bool)

(assert (=> b!790988 (=> (not res!535929) (not e!439634))))

(assert (=> b!790988 (= res!535929 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27408 0))(
  ( (Unit!27409) )
))
(declare-fun lt!353100 () Unit!27408)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27408)

(assert (=> b!790988 (= lt!353100 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!790989 () Bool)

(declare-fun res!535938 () Bool)

(assert (=> b!790989 (=> (not res!535938) (not e!439629))))

(assert (=> b!790989 (= res!535938 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20942 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20942 a!3186))))))

(declare-fun b!790990 () Bool)

(assert (=> b!790990 (= e!439633 e!439636)))

(declare-fun res!535927 () Bool)

(assert (=> b!790990 (=> (not res!535927) (not e!439636))))

(declare-fun lt!353099 () array!42879)

(declare-fun lt!353103 () (_ BitVec 64))

(assert (=> b!790990 (= res!535927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353103 mask!3328) lt!353103 lt!353099 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353103 lt!353099 mask!3328)))))

(assert (=> b!790990 (= lt!353103 (select (store (arr!20521 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!790990 (= lt!353099 (array!42880 (store (arr!20521 a!3186) i!1173 k0!2102) (size!20942 a!3186)))))

(declare-fun b!790991 () Bool)

(declare-fun res!535928 () Bool)

(assert (=> b!790991 (=> (not res!535928) (not e!439633))))

(assert (=> b!790991 (= res!535928 e!439635)))

(declare-fun c!87936 () Bool)

(assert (=> b!790991 (= c!87936 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!790992 () Bool)

(assert (=> b!790992 (= e!439635 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20521 a!3186) j!159) a!3186 mask!3328) (Found!8128 j!159)))))

(assert (= (and start!68010 res!535932) b!790984))

(assert (= (and b!790984 res!535936) b!790985))

(assert (= (and b!790985 res!535931) b!790981))

(assert (= (and b!790981 res!535926) b!790976))

(assert (= (and b!790976 res!535935) b!790980))

(assert (= (and b!790980 res!535939) b!790978))

(assert (= (and b!790978 res!535925) b!790987))

(assert (= (and b!790987 res!535930) b!790989))

(assert (= (and b!790989 res!535938) b!790979))

(assert (= (and b!790979 res!535937) b!790986))

(assert (= (and b!790986 res!535934) b!790991))

(assert (= (and b!790991 c!87936) b!790977))

(assert (= (and b!790991 (not c!87936)) b!790992))

(assert (= (and b!790991 res!535928) b!790990))

(assert (= (and b!790990 res!535927) b!790988))

(assert (= (and b!790988 res!535929) b!790983))

(assert (= (and b!790983 res!535933) b!790982))

(declare-fun m!731825 () Bool)

(assert (=> b!790978 m!731825))

(declare-fun m!731827 () Bool)

(assert (=> b!790977 m!731827))

(assert (=> b!790977 m!731827))

(declare-fun m!731829 () Bool)

(assert (=> b!790977 m!731829))

(assert (=> b!790985 m!731827))

(assert (=> b!790985 m!731827))

(declare-fun m!731831 () Bool)

(assert (=> b!790985 m!731831))

(assert (=> b!790983 m!731827))

(assert (=> b!790983 m!731827))

(declare-fun m!731833 () Bool)

(assert (=> b!790983 m!731833))

(assert (=> b!790982 m!731827))

(assert (=> b!790982 m!731827))

(declare-fun m!731835 () Bool)

(assert (=> b!790982 m!731835))

(declare-fun m!731837 () Bool)

(assert (=> b!790987 m!731837))

(declare-fun m!731839 () Bool)

(assert (=> b!790988 m!731839))

(declare-fun m!731841 () Bool)

(assert (=> b!790988 m!731841))

(declare-fun m!731843 () Bool)

(assert (=> b!790976 m!731843))

(declare-fun m!731845 () Bool)

(assert (=> b!790986 m!731845))

(assert (=> b!790992 m!731827))

(assert (=> b!790992 m!731827))

(declare-fun m!731847 () Bool)

(assert (=> b!790992 m!731847))

(assert (=> b!790979 m!731827))

(assert (=> b!790979 m!731827))

(declare-fun m!731849 () Bool)

(assert (=> b!790979 m!731849))

(assert (=> b!790979 m!731849))

(assert (=> b!790979 m!731827))

(declare-fun m!731851 () Bool)

(assert (=> b!790979 m!731851))

(declare-fun m!731853 () Bool)

(assert (=> b!790980 m!731853))

(declare-fun m!731855 () Bool)

(assert (=> start!68010 m!731855))

(declare-fun m!731857 () Bool)

(assert (=> start!68010 m!731857))

(declare-fun m!731859 () Bool)

(assert (=> b!790981 m!731859))

(declare-fun m!731861 () Bool)

(assert (=> b!790990 m!731861))

(declare-fun m!731863 () Bool)

(assert (=> b!790990 m!731863))

(declare-fun m!731865 () Bool)

(assert (=> b!790990 m!731865))

(declare-fun m!731867 () Bool)

(assert (=> b!790990 m!731867))

(assert (=> b!790990 m!731867))

(declare-fun m!731869 () Bool)

(assert (=> b!790990 m!731869))

(check-sat (not b!790982) (not b!790978) (not b!790987) (not b!790981) (not b!790988) (not start!68010) (not b!790980) (not b!790977) (not b!790976) (not b!790983) (not b!790990) (not b!790985) (not b!790992) (not b!790979))
(check-sat)
