; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68012 () Bool)

(assert start!68012)

(declare-fun b!791027 () Bool)

(declare-fun res!535979 () Bool)

(declare-fun e!439657 () Bool)

(assert (=> b!791027 (=> (not res!535979) (not e!439657))))

(declare-datatypes ((array!42881 0))(
  ( (array!42882 (arr!20522 (Array (_ BitVec 32) (_ BitVec 64))) (size!20943 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42881)

(declare-datatypes ((List!14577 0))(
  ( (Nil!14574) (Cons!14573 (h!15702 (_ BitVec 64)) (t!20900 List!14577)) )
))
(declare-fun arrayNoDuplicates!0 (array!42881 (_ BitVec 32) List!14577) Bool)

(assert (=> b!791027 (= res!535979 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14574))))

(declare-fun b!791028 () Bool)

(declare-fun e!439654 () Bool)

(declare-fun e!439659 () Bool)

(assert (=> b!791028 (= e!439654 e!439659)))

(declare-fun res!535976 () Bool)

(assert (=> b!791028 (=> (not res!535976) (not e!439659))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!353121 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!353120 () array!42881)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8129 0))(
  ( (MissingZero!8129 (index!34883 (_ BitVec 32))) (Found!8129 (index!34884 (_ BitVec 32))) (Intermediate!8129 (undefined!8941 Bool) (index!34885 (_ BitVec 32)) (x!65848 (_ BitVec 32))) (Undefined!8129) (MissingVacant!8129 (index!34886 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42881 (_ BitVec 32)) SeekEntryResult!8129)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791028 (= res!535976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353121 mask!3328) lt!353121 lt!353120 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353121 lt!353120 mask!3328)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!791028 (= lt!353121 (select (store (arr!20522 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!791028 (= lt!353120 (array!42882 (store (arr!20522 a!3186) i!1173 k!2102) (size!20943 a!3186)))))

(declare-fun b!791029 () Bool)

(assert (=> b!791029 (= e!439659 (not true))))

(declare-fun e!439656 () Bool)

(assert (=> b!791029 e!439656))

(declare-fun res!535972 () Bool)

(assert (=> b!791029 (=> (not res!535972) (not e!439656))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42881 (_ BitVec 32)) Bool)

(assert (=> b!791029 (= res!535972 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27410 0))(
  ( (Unit!27411) )
))
(declare-fun lt!353118 () Unit!27410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42881 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27410)

(assert (=> b!791029 (= lt!353118 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!791030 () Bool)

(declare-fun res!535974 () Bool)

(declare-fun e!439653 () Bool)

(assert (=> b!791030 (=> (not res!535974) (not e!439653))))

(declare-fun arrayContainsKey!0 (array!42881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791030 (= res!535974 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791031 () Bool)

(declare-fun res!535983 () Bool)

(assert (=> b!791031 (=> (not res!535983) (not e!439653))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791031 (= res!535983 (validKeyInArray!0 (select (arr!20522 a!3186) j!159)))))

(declare-fun b!791032 () Bool)

(declare-fun res!535981 () Bool)

(assert (=> b!791032 (=> (not res!535981) (not e!439654))))

(declare-fun e!439658 () Bool)

(assert (=> b!791032 (= res!535981 e!439658)))

(declare-fun c!87939 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!791032 (= c!87939 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!791033 () Bool)

(declare-fun res!535975 () Bool)

(assert (=> b!791033 (=> (not res!535975) (not e!439654))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!791033 (= res!535975 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20522 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!791034 () Bool)

(declare-fun res!535984 () Bool)

(assert (=> b!791034 (=> (not res!535984) (not e!439657))))

(assert (=> b!791034 (= res!535984 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20943 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20943 a!3186))))))

(declare-fun b!791035 () Bool)

(assert (=> b!791035 (= e!439653 e!439657)))

(declare-fun res!535978 () Bool)

(assert (=> b!791035 (=> (not res!535978) (not e!439657))))

(declare-fun lt!353122 () SeekEntryResult!8129)

(assert (=> b!791035 (= res!535978 (or (= lt!353122 (MissingZero!8129 i!1173)) (= lt!353122 (MissingVacant!8129 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42881 (_ BitVec 32)) SeekEntryResult!8129)

(assert (=> b!791035 (= lt!353122 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!791036 () Bool)

(declare-fun res!535977 () Bool)

(assert (=> b!791036 (=> (not res!535977) (not e!439653))))

(assert (=> b!791036 (= res!535977 (and (= (size!20943 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20943 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20943 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!791037 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42881 (_ BitVec 32)) SeekEntryResult!8129)

(assert (=> b!791037 (= e!439658 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20522 a!3186) j!159) a!3186 mask!3328) (Found!8129 j!159)))))

(declare-fun b!791038 () Bool)

(declare-fun res!535970 () Bool)

(assert (=> b!791038 (=> (not res!535970) (not e!439657))))

(assert (=> b!791038 (= res!535970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun lt!353119 () SeekEntryResult!8129)

(declare-fun b!791039 () Bool)

(assert (=> b!791039 (= e!439658 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20522 a!3186) j!159) a!3186 mask!3328) lt!353119))))

(declare-fun res!535973 () Bool)

(assert (=> start!68012 (=> (not res!535973) (not e!439653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68012 (= res!535973 (validMask!0 mask!3328))))

(assert (=> start!68012 e!439653))

(assert (=> start!68012 true))

(declare-fun array_inv!16296 (array!42881) Bool)

(assert (=> start!68012 (array_inv!16296 a!3186)))

(declare-fun b!791040 () Bool)

(declare-fun res!535971 () Bool)

(assert (=> b!791040 (=> (not res!535971) (not e!439653))))

(assert (=> b!791040 (= res!535971 (validKeyInArray!0 k!2102))))

(declare-fun lt!353117 () SeekEntryResult!8129)

(declare-fun b!791041 () Bool)

(declare-fun e!439655 () Bool)

(assert (=> b!791041 (= e!439655 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20522 a!3186) j!159) a!3186 mask!3328) lt!353117))))

(declare-fun b!791042 () Bool)

(assert (=> b!791042 (= e!439656 e!439655)))

(declare-fun res!535980 () Bool)

(assert (=> b!791042 (=> (not res!535980) (not e!439655))))

(assert (=> b!791042 (= res!535980 (= (seekEntryOrOpen!0 (select (arr!20522 a!3186) j!159) a!3186 mask!3328) lt!353117))))

(assert (=> b!791042 (= lt!353117 (Found!8129 j!159))))

(declare-fun b!791043 () Bool)

(assert (=> b!791043 (= e!439657 e!439654)))

(declare-fun res!535982 () Bool)

(assert (=> b!791043 (=> (not res!535982) (not e!439654))))

(assert (=> b!791043 (= res!535982 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20522 a!3186) j!159) mask!3328) (select (arr!20522 a!3186) j!159) a!3186 mask!3328) lt!353119))))

(assert (=> b!791043 (= lt!353119 (Intermediate!8129 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!68012 res!535973) b!791036))

(assert (= (and b!791036 res!535977) b!791031))

(assert (= (and b!791031 res!535983) b!791040))

(assert (= (and b!791040 res!535971) b!791030))

(assert (= (and b!791030 res!535974) b!791035))

(assert (= (and b!791035 res!535978) b!791038))

(assert (= (and b!791038 res!535970) b!791027))

(assert (= (and b!791027 res!535979) b!791034))

(assert (= (and b!791034 res!535984) b!791043))

(assert (= (and b!791043 res!535982) b!791033))

(assert (= (and b!791033 res!535975) b!791032))

(assert (= (and b!791032 c!87939) b!791039))

(assert (= (and b!791032 (not c!87939)) b!791037))

(assert (= (and b!791032 res!535981) b!791028))

(assert (= (and b!791028 res!535976) b!791029))

(assert (= (and b!791029 res!535972) b!791042))

(assert (= (and b!791042 res!535980) b!791041))

(declare-fun m!731871 () Bool)

(assert (=> b!791029 m!731871))

(declare-fun m!731873 () Bool)

(assert (=> b!791029 m!731873))

(declare-fun m!731875 () Bool)

(assert (=> b!791035 m!731875))

(declare-fun m!731877 () Bool)

(assert (=> b!791041 m!731877))

(assert (=> b!791041 m!731877))

(declare-fun m!731879 () Bool)

(assert (=> b!791041 m!731879))

(declare-fun m!731881 () Bool)

(assert (=> b!791028 m!731881))

(declare-fun m!731883 () Bool)

(assert (=> b!791028 m!731883))

(declare-fun m!731885 () Bool)

(assert (=> b!791028 m!731885))

(declare-fun m!731887 () Bool)

(assert (=> b!791028 m!731887))

(assert (=> b!791028 m!731881))

(declare-fun m!731889 () Bool)

(assert (=> b!791028 m!731889))

(declare-fun m!731891 () Bool)

(assert (=> b!791027 m!731891))

(declare-fun m!731893 () Bool)

(assert (=> b!791038 m!731893))

(assert (=> b!791037 m!731877))

(assert (=> b!791037 m!731877))

(declare-fun m!731895 () Bool)

(assert (=> b!791037 m!731895))

(declare-fun m!731897 () Bool)

(assert (=> b!791033 m!731897))

(assert (=> b!791042 m!731877))

(assert (=> b!791042 m!731877))

(declare-fun m!731899 () Bool)

(assert (=> b!791042 m!731899))

(assert (=> b!791031 m!731877))

(assert (=> b!791031 m!731877))

(declare-fun m!731901 () Bool)

(assert (=> b!791031 m!731901))

(assert (=> b!791043 m!731877))

(assert (=> b!791043 m!731877))

(declare-fun m!731903 () Bool)

(assert (=> b!791043 m!731903))

(assert (=> b!791043 m!731903))

(assert (=> b!791043 m!731877))

(declare-fun m!731905 () Bool)

(assert (=> b!791043 m!731905))

(declare-fun m!731907 () Bool)

(assert (=> b!791030 m!731907))

(declare-fun m!731909 () Bool)

(assert (=> start!68012 m!731909))

(declare-fun m!731911 () Bool)

(assert (=> start!68012 m!731911))

(assert (=> b!791039 m!731877))

(assert (=> b!791039 m!731877))

(declare-fun m!731913 () Bool)

(assert (=> b!791039 m!731913))

(declare-fun m!731915 () Bool)

(assert (=> b!791040 m!731915))

(push 1)

(assert (not start!68012))

(assert (not b!791030))

(assert (not b!791041))

(assert (not b!791029))

(assert (not b!791035))

(assert (not b!791042))

(assert (not b!791028))

(assert (not b!791027))

(assert (not b!791031))

(assert (not b!791038))

(assert (not b!791040))

(assert (not b!791043))

(assert (not b!791037))

(assert (not b!791039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

