; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68014 () Bool)

(assert start!68014)

(declare-fun b!791078 () Bool)

(declare-fun e!439681 () Bool)

(declare-fun e!439684 () Bool)

(assert (=> b!791078 (= e!439681 e!439684)))

(declare-fun res!536021 () Bool)

(assert (=> b!791078 (=> (not res!536021) (not e!439684))))

(declare-datatypes ((array!42883 0))(
  ( (array!42884 (arr!20523 (Array (_ BitVec 32) (_ BitVec 64))) (size!20944 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42883)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8130 0))(
  ( (MissingZero!8130 (index!34887 (_ BitVec 32))) (Found!8130 (index!34888 (_ BitVec 32))) (Intermediate!8130 (undefined!8942 Bool) (index!34889 (_ BitVec 32)) (x!65857 (_ BitVec 32))) (Undefined!8130) (MissingVacant!8130 (index!34890 (_ BitVec 32))) )
))
(declare-fun lt!353137 () SeekEntryResult!8130)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42883 (_ BitVec 32)) SeekEntryResult!8130)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791078 (= res!536021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20523 a!3186) j!159) mask!3328) (select (arr!20523 a!3186) j!159) a!3186 mask!3328) lt!353137))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!791078 (= lt!353137 (Intermediate!8130 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!791079 () Bool)

(declare-fun res!536017 () Bool)

(assert (=> b!791079 (=> (not res!536017) (not e!439684))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!791079 (= res!536017 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20523 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!791080 () Bool)

(declare-fun lt!353138 () SeekEntryResult!8130)

(declare-fun e!439683 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42883 (_ BitVec 32)) SeekEntryResult!8130)

(assert (=> b!791080 (= e!439683 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20523 a!3186) j!159) a!3186 mask!3328) lt!353138))))

(declare-fun b!791081 () Bool)

(declare-fun e!439679 () Bool)

(assert (=> b!791081 (= e!439684 e!439679)))

(declare-fun res!536023 () Bool)

(assert (=> b!791081 (=> (not res!536023) (not e!439679))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!353139 () (_ BitVec 64))

(declare-fun lt!353135 () array!42883)

(assert (=> b!791081 (= res!536023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353139 mask!3328) lt!353139 lt!353135 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353139 lt!353135 mask!3328)))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!791081 (= lt!353139 (select (store (arr!20523 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!791081 (= lt!353135 (array!42884 (store (arr!20523 a!3186) i!1173 k!2102) (size!20944 a!3186)))))

(declare-fun b!791082 () Bool)

(declare-fun e!439680 () Bool)

(assert (=> b!791082 (= e!439680 e!439681)))

(declare-fun res!536019 () Bool)

(assert (=> b!791082 (=> (not res!536019) (not e!439681))))

(declare-fun lt!353136 () SeekEntryResult!8130)

(assert (=> b!791082 (= res!536019 (or (= lt!353136 (MissingZero!8130 i!1173)) (= lt!353136 (MissingVacant!8130 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42883 (_ BitVec 32)) SeekEntryResult!8130)

(assert (=> b!791082 (= lt!353136 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!791083 () Bool)

(assert (=> b!791083 (= e!439679 (not true))))

(declare-fun e!439677 () Bool)

(assert (=> b!791083 e!439677))

(declare-fun res!536024 () Bool)

(assert (=> b!791083 (=> (not res!536024) (not e!439677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42883 (_ BitVec 32)) Bool)

(assert (=> b!791083 (= res!536024 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27412 0))(
  ( (Unit!27413) )
))
(declare-fun lt!353140 () Unit!27412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27412)

(assert (=> b!791083 (= lt!353140 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!791084 () Bool)

(declare-fun res!536016 () Bool)

(assert (=> b!791084 (=> (not res!536016) (not e!439680))))

(assert (=> b!791084 (= res!536016 (and (= (size!20944 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20944 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20944 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!791086 () Bool)

(assert (=> b!791086 (= e!439677 e!439683)))

(declare-fun res!536022 () Bool)

(assert (=> b!791086 (=> (not res!536022) (not e!439683))))

(assert (=> b!791086 (= res!536022 (= (seekEntryOrOpen!0 (select (arr!20523 a!3186) j!159) a!3186 mask!3328) lt!353138))))

(assert (=> b!791086 (= lt!353138 (Found!8130 j!159))))

(declare-fun b!791087 () Bool)

(declare-fun e!439678 () Bool)

(assert (=> b!791087 (= e!439678 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20523 a!3186) j!159) a!3186 mask!3328) (Found!8130 j!159)))))

(declare-fun b!791088 () Bool)

(declare-fun res!536020 () Bool)

(assert (=> b!791088 (=> (not res!536020) (not e!439681))))

(assert (=> b!791088 (= res!536020 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20944 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20944 a!3186))))))

(declare-fun b!791089 () Bool)

(declare-fun res!536018 () Bool)

(assert (=> b!791089 (=> (not res!536018) (not e!439681))))

(declare-datatypes ((List!14578 0))(
  ( (Nil!14575) (Cons!14574 (h!15703 (_ BitVec 64)) (t!20901 List!14578)) )
))
(declare-fun arrayNoDuplicates!0 (array!42883 (_ BitVec 32) List!14578) Bool)

(assert (=> b!791089 (= res!536018 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14575))))

(declare-fun b!791090 () Bool)

(declare-fun res!536028 () Bool)

(assert (=> b!791090 (=> (not res!536028) (not e!439681))))

(assert (=> b!791090 (= res!536028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!791091 () Bool)

(declare-fun res!536015 () Bool)

(assert (=> b!791091 (=> (not res!536015) (not e!439684))))

(assert (=> b!791091 (= res!536015 e!439678)))

(declare-fun c!87942 () Bool)

(assert (=> b!791091 (= c!87942 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!536027 () Bool)

(assert (=> start!68014 (=> (not res!536027) (not e!439680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68014 (= res!536027 (validMask!0 mask!3328))))

(assert (=> start!68014 e!439680))

(assert (=> start!68014 true))

(declare-fun array_inv!16297 (array!42883) Bool)

(assert (=> start!68014 (array_inv!16297 a!3186)))

(declare-fun b!791085 () Bool)

(declare-fun res!536026 () Bool)

(assert (=> b!791085 (=> (not res!536026) (not e!439680))))

(declare-fun arrayContainsKey!0 (array!42883 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791085 (= res!536026 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791092 () Bool)

(declare-fun res!536029 () Bool)

(assert (=> b!791092 (=> (not res!536029) (not e!439680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791092 (= res!536029 (validKeyInArray!0 (select (arr!20523 a!3186) j!159)))))

(declare-fun b!791093 () Bool)

(assert (=> b!791093 (= e!439678 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20523 a!3186) j!159) a!3186 mask!3328) lt!353137))))

(declare-fun b!791094 () Bool)

(declare-fun res!536025 () Bool)

(assert (=> b!791094 (=> (not res!536025) (not e!439680))))

(assert (=> b!791094 (= res!536025 (validKeyInArray!0 k!2102))))

(assert (= (and start!68014 res!536027) b!791084))

(assert (= (and b!791084 res!536016) b!791092))

(assert (= (and b!791092 res!536029) b!791094))

(assert (= (and b!791094 res!536025) b!791085))

(assert (= (and b!791085 res!536026) b!791082))

(assert (= (and b!791082 res!536019) b!791090))

(assert (= (and b!791090 res!536028) b!791089))

(assert (= (and b!791089 res!536018) b!791088))

(assert (= (and b!791088 res!536020) b!791078))

(assert (= (and b!791078 res!536021) b!791079))

(assert (= (and b!791079 res!536017) b!791091))

(assert (= (and b!791091 c!87942) b!791093))

(assert (= (and b!791091 (not c!87942)) b!791087))

(assert (= (and b!791091 res!536015) b!791081))

(assert (= (and b!791081 res!536023) b!791083))

(assert (= (and b!791083 res!536024) b!791086))

(assert (= (and b!791086 res!536022) b!791080))

(declare-fun m!731917 () Bool)

(assert (=> b!791087 m!731917))

(assert (=> b!791087 m!731917))

(declare-fun m!731919 () Bool)

(assert (=> b!791087 m!731919))

(assert (=> b!791086 m!731917))

(assert (=> b!791086 m!731917))

(declare-fun m!731921 () Bool)

(assert (=> b!791086 m!731921))

(assert (=> b!791080 m!731917))

(assert (=> b!791080 m!731917))

(declare-fun m!731923 () Bool)

(assert (=> b!791080 m!731923))

(declare-fun m!731925 () Bool)

(assert (=> b!791079 m!731925))

(assert (=> b!791078 m!731917))

(assert (=> b!791078 m!731917))

(declare-fun m!731927 () Bool)

(assert (=> b!791078 m!731927))

(assert (=> b!791078 m!731927))

(assert (=> b!791078 m!731917))

(declare-fun m!731929 () Bool)

(assert (=> b!791078 m!731929))

(assert (=> b!791093 m!731917))

(assert (=> b!791093 m!731917))

(declare-fun m!731931 () Bool)

(assert (=> b!791093 m!731931))

(declare-fun m!731933 () Bool)

(assert (=> b!791082 m!731933))

(assert (=> b!791092 m!731917))

(assert (=> b!791092 m!731917))

(declare-fun m!731935 () Bool)

(assert (=> b!791092 m!731935))

(declare-fun m!731937 () Bool)

(assert (=> b!791083 m!731937))

(declare-fun m!731939 () Bool)

(assert (=> b!791083 m!731939))

(declare-fun m!731941 () Bool)

(assert (=> b!791081 m!731941))

(declare-fun m!731943 () Bool)

(assert (=> b!791081 m!731943))

(declare-fun m!731945 () Bool)

(assert (=> b!791081 m!731945))

(assert (=> b!791081 m!731941))

(declare-fun m!731947 () Bool)

(assert (=> b!791081 m!731947))

(declare-fun m!731949 () Bool)

(assert (=> b!791081 m!731949))

(declare-fun m!731951 () Bool)

(assert (=> b!791090 m!731951))

(declare-fun m!731953 () Bool)

(assert (=> start!68014 m!731953))

(declare-fun m!731955 () Bool)

(assert (=> start!68014 m!731955))

(declare-fun m!731957 () Bool)

(assert (=> b!791094 m!731957))

(declare-fun m!731959 () Bool)

(assert (=> b!791089 m!731959))

(declare-fun m!731961 () Bool)

(assert (=> b!791085 m!731961))

(push 1)

