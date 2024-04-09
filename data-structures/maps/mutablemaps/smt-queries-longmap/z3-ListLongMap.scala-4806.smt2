; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66064 () Bool)

(assert start!66064)

(declare-fun b!760881 () Bool)

(declare-fun e!424201 () Bool)

(declare-fun e!424194 () Bool)

(assert (=> b!760881 (= e!424201 e!424194)))

(declare-fun res!514773 () Bool)

(assert (=> b!760881 (=> (not res!514773) (not e!424194))))

(declare-datatypes ((array!42048 0))(
  ( (array!42049 (arr!20131 (Array (_ BitVec 32) (_ BitVec 64))) (size!20552 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42048)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7738 0))(
  ( (MissingZero!7738 (index!33319 (_ BitVec 32))) (Found!7738 (index!33320 (_ BitVec 32))) (Intermediate!7738 (undefined!8550 Bool) (index!33321 (_ BitVec 32)) (x!64245 (_ BitVec 32))) (Undefined!7738) (MissingVacant!7738 (index!33322 (_ BitVec 32))) )
))
(declare-fun lt!339013 () SeekEntryResult!7738)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42048 (_ BitVec 32)) SeekEntryResult!7738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760881 (= res!514773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339013))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!760881 (= lt!339013 (Intermediate!7738 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!760882 () Bool)

(declare-fun e!424202 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42048 (_ BitVec 32)) SeekEntryResult!7738)

(assert (=> b!760882 (= e!424202 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) (Found!7738 j!159)))))

(declare-fun res!514784 () Bool)

(declare-fun e!424195 () Bool)

(assert (=> start!66064 (=> (not res!514784) (not e!424195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66064 (= res!514784 (validMask!0 mask!3328))))

(assert (=> start!66064 e!424195))

(assert (=> start!66064 true))

(declare-fun array_inv!15905 (array!42048) Bool)

(assert (=> start!66064 (array_inv!15905 a!3186)))

(declare-fun b!760883 () Bool)

(declare-fun res!514771 () Bool)

(assert (=> b!760883 (=> (not res!514771) (not e!424195))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42048 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!760883 (= res!514771 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!760884 () Bool)

(assert (=> b!760884 (= e!424195 e!424201)))

(declare-fun res!514782 () Bool)

(assert (=> b!760884 (=> (not res!514782) (not e!424201))))

(declare-fun lt!339012 () SeekEntryResult!7738)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!760884 (= res!514782 (or (= lt!339012 (MissingZero!7738 i!1173)) (= lt!339012 (MissingVacant!7738 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42048 (_ BitVec 32)) SeekEntryResult!7738)

(assert (=> b!760884 (= lt!339012 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!760885 () Bool)

(declare-fun res!514776 () Bool)

(assert (=> b!760885 (=> (not res!514776) (not e!424201))))

(declare-datatypes ((List!14186 0))(
  ( (Nil!14183) (Cons!14182 (h!15260 (_ BitVec 64)) (t!20509 List!14186)) )
))
(declare-fun arrayNoDuplicates!0 (array!42048 (_ BitVec 32) List!14186) Bool)

(assert (=> b!760885 (= res!514776 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14183))))

(declare-fun b!760886 () Bool)

(declare-fun res!514778 () Bool)

(assert (=> b!760886 (=> (not res!514778) (not e!424195))))

(assert (=> b!760886 (= res!514778 (and (= (size!20552 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20552 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20552 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!424198 () Bool)

(declare-fun b!760887 () Bool)

(assert (=> b!760887 (= e!424198 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) (Found!7738 j!159)))))

(declare-fun b!760888 () Bool)

(declare-fun res!514772 () Bool)

(assert (=> b!760888 (=> (not res!514772) (not e!424194))))

(assert (=> b!760888 (= res!514772 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20131 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760889 () Bool)

(declare-fun e!424200 () Bool)

(declare-fun e!424199 () Bool)

(assert (=> b!760889 (= e!424200 e!424199)))

(declare-fun res!514785 () Bool)

(assert (=> b!760889 (=> (not res!514785) (not e!424199))))

(declare-fun lt!339009 () SeekEntryResult!7738)

(assert (=> b!760889 (= res!514785 (= (seekEntryOrOpen!0 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339009))))

(assert (=> b!760889 (= lt!339009 (Found!7738 j!159))))

(declare-fun b!760890 () Bool)

(assert (=> b!760890 (= e!424199 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339009))))

(declare-fun b!760891 () Bool)

(declare-fun res!514777 () Bool)

(assert (=> b!760891 (=> (not res!514777) (not e!424195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!760891 (= res!514777 (validKeyInArray!0 k0!2102))))

(declare-fun b!760892 () Bool)

(declare-fun res!514774 () Bool)

(assert (=> b!760892 (=> (not res!514774) (not e!424195))))

(assert (=> b!760892 (= res!514774 (validKeyInArray!0 (select (arr!20131 a!3186) j!159)))))

(declare-fun b!760893 () Bool)

(declare-fun res!514783 () Bool)

(assert (=> b!760893 (=> (not res!514783) (not e!424201))))

(assert (=> b!760893 (= res!514783 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20552 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20552 a!3186))))))

(declare-fun b!760894 () Bool)

(declare-fun res!514781 () Bool)

(assert (=> b!760894 (=> (not res!514781) (not e!424201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42048 (_ BitVec 32)) Bool)

(assert (=> b!760894 (= res!514781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!760895 () Bool)

(declare-fun res!514770 () Bool)

(assert (=> b!760895 (=> (not res!514770) (not e!424194))))

(assert (=> b!760895 (= res!514770 e!424198)))

(declare-fun c!83439 () Bool)

(assert (=> b!760895 (= c!83439 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!760896 () Bool)

(declare-fun e!424196 () Bool)

(assert (=> b!760896 (= e!424196 (not e!424202))))

(declare-fun res!514775 () Bool)

(assert (=> b!760896 (=> res!514775 e!424202)))

(declare-fun lt!339010 () SeekEntryResult!7738)

(get-info :version)

(assert (=> b!760896 (= res!514775 (or (not ((_ is Intermediate!7738) lt!339010)) (bvslt x!1131 (x!64245 lt!339010)) (not (= x!1131 (x!64245 lt!339010))) (not (= index!1321 (index!33321 lt!339010)))))))

(assert (=> b!760896 e!424200))

(declare-fun res!514780 () Bool)

(assert (=> b!760896 (=> (not res!514780) (not e!424200))))

(assert (=> b!760896 (= res!514780 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26316 0))(
  ( (Unit!26317) )
))
(declare-fun lt!339011 () Unit!26316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42048 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26316)

(assert (=> b!760896 (= lt!339011 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!760897 () Bool)

(assert (=> b!760897 (= e!424198 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339013))))

(declare-fun b!760898 () Bool)

(assert (=> b!760898 (= e!424194 e!424196)))

(declare-fun res!514779 () Bool)

(assert (=> b!760898 (=> (not res!514779) (not e!424196))))

(declare-fun lt!339016 () SeekEntryResult!7738)

(assert (=> b!760898 (= res!514779 (= lt!339016 lt!339010))))

(declare-fun lt!339014 () (_ BitVec 64))

(declare-fun lt!339015 () array!42048)

(assert (=> b!760898 (= lt!339010 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339014 lt!339015 mask!3328))))

(assert (=> b!760898 (= lt!339016 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339014 mask!3328) lt!339014 lt!339015 mask!3328))))

(assert (=> b!760898 (= lt!339014 (select (store (arr!20131 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!760898 (= lt!339015 (array!42049 (store (arr!20131 a!3186) i!1173 k0!2102) (size!20552 a!3186)))))

(assert (= (and start!66064 res!514784) b!760886))

(assert (= (and b!760886 res!514778) b!760892))

(assert (= (and b!760892 res!514774) b!760891))

(assert (= (and b!760891 res!514777) b!760883))

(assert (= (and b!760883 res!514771) b!760884))

(assert (= (and b!760884 res!514782) b!760894))

(assert (= (and b!760894 res!514781) b!760885))

(assert (= (and b!760885 res!514776) b!760893))

(assert (= (and b!760893 res!514783) b!760881))

(assert (= (and b!760881 res!514773) b!760888))

(assert (= (and b!760888 res!514772) b!760895))

(assert (= (and b!760895 c!83439) b!760897))

(assert (= (and b!760895 (not c!83439)) b!760887))

(assert (= (and b!760895 res!514770) b!760898))

(assert (= (and b!760898 res!514779) b!760896))

(assert (= (and b!760896 res!514780) b!760889))

(assert (= (and b!760889 res!514785) b!760890))

(assert (= (and b!760896 (not res!514775)) b!760882))

(declare-fun m!708063 () Bool)

(assert (=> b!760896 m!708063))

(declare-fun m!708065 () Bool)

(assert (=> b!760896 m!708065))

(declare-fun m!708067 () Bool)

(assert (=> b!760889 m!708067))

(assert (=> b!760889 m!708067))

(declare-fun m!708069 () Bool)

(assert (=> b!760889 m!708069))

(assert (=> b!760897 m!708067))

(assert (=> b!760897 m!708067))

(declare-fun m!708071 () Bool)

(assert (=> b!760897 m!708071))

(declare-fun m!708073 () Bool)

(assert (=> start!66064 m!708073))

(declare-fun m!708075 () Bool)

(assert (=> start!66064 m!708075))

(declare-fun m!708077 () Bool)

(assert (=> b!760883 m!708077))

(assert (=> b!760892 m!708067))

(assert (=> b!760892 m!708067))

(declare-fun m!708079 () Bool)

(assert (=> b!760892 m!708079))

(assert (=> b!760887 m!708067))

(assert (=> b!760887 m!708067))

(declare-fun m!708081 () Bool)

(assert (=> b!760887 m!708081))

(declare-fun m!708083 () Bool)

(assert (=> b!760894 m!708083))

(assert (=> b!760882 m!708067))

(assert (=> b!760882 m!708067))

(assert (=> b!760882 m!708081))

(assert (=> b!760881 m!708067))

(assert (=> b!760881 m!708067))

(declare-fun m!708085 () Bool)

(assert (=> b!760881 m!708085))

(assert (=> b!760881 m!708085))

(assert (=> b!760881 m!708067))

(declare-fun m!708087 () Bool)

(assert (=> b!760881 m!708087))

(declare-fun m!708089 () Bool)

(assert (=> b!760885 m!708089))

(declare-fun m!708091 () Bool)

(assert (=> b!760888 m!708091))

(assert (=> b!760890 m!708067))

(assert (=> b!760890 m!708067))

(declare-fun m!708093 () Bool)

(assert (=> b!760890 m!708093))

(declare-fun m!708095 () Bool)

(assert (=> b!760891 m!708095))

(declare-fun m!708097 () Bool)

(assert (=> b!760884 m!708097))

(declare-fun m!708099 () Bool)

(assert (=> b!760898 m!708099))

(declare-fun m!708101 () Bool)

(assert (=> b!760898 m!708101))

(assert (=> b!760898 m!708099))

(declare-fun m!708103 () Bool)

(assert (=> b!760898 m!708103))

(declare-fun m!708105 () Bool)

(assert (=> b!760898 m!708105))

(declare-fun m!708107 () Bool)

(assert (=> b!760898 m!708107))

(check-sat (not b!760891) (not b!760884) (not b!760883) (not b!760887) (not start!66064) (not b!760894) (not b!760897) (not b!760889) (not b!760882) (not b!760898) (not b!760896) (not b!760881) (not b!760890) (not b!760892) (not b!760885))
(check-sat)
(get-model)

(declare-fun b!760971 () Bool)

(declare-fun e!424240 () SeekEntryResult!7738)

(assert (=> b!760971 (= e!424240 (Intermediate!7738 true (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760972 () Bool)

(declare-fun e!424243 () Bool)

(declare-fun e!424244 () Bool)

(assert (=> b!760972 (= e!424243 e!424244)))

(declare-fun res!514842 () Bool)

(declare-fun lt!339045 () SeekEntryResult!7738)

(assert (=> b!760972 (= res!514842 (and ((_ is Intermediate!7738) lt!339045) (not (undefined!8550 lt!339045)) (bvslt (x!64245 lt!339045) #b01111111111111111111111111111110) (bvsge (x!64245 lt!339045) #b00000000000000000000000000000000) (bvsge (x!64245 lt!339045) #b00000000000000000000000000000000)))))

(assert (=> b!760972 (=> (not res!514842) (not e!424244))))

(declare-fun b!760973 () Bool)

(assert (=> b!760973 (= e!424243 (bvsge (x!64245 lt!339045) #b01111111111111111111111111111110))))

(declare-fun e!424242 () SeekEntryResult!7738)

(declare-fun b!760974 () Bool)

(assert (=> b!760974 (= e!424242 (Intermediate!7738 false (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760975 () Bool)

(assert (=> b!760975 (and (bvsge (index!33321 lt!339045) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339045) (size!20552 a!3186)))))

(declare-fun res!514841 () Bool)

(assert (=> b!760975 (= res!514841 (= (select (arr!20131 a!3186) (index!33321 lt!339045)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424241 () Bool)

(assert (=> b!760975 (=> res!514841 e!424241)))

(declare-fun d!100621 () Bool)

(assert (=> d!100621 e!424243))

(declare-fun c!83450 () Bool)

(assert (=> d!100621 (= c!83450 (and ((_ is Intermediate!7738) lt!339045) (undefined!8550 lt!339045)))))

(assert (=> d!100621 (= lt!339045 e!424240)))

(declare-fun c!83449 () Bool)

(assert (=> d!100621 (= c!83449 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339046 () (_ BitVec 64))

(assert (=> d!100621 (= lt!339046 (select (arr!20131 a!3186) (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328)))))

(assert (=> d!100621 (validMask!0 mask!3328)))

(assert (=> d!100621 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339045)))

(declare-fun b!760976 () Bool)

(assert (=> b!760976 (= e!424240 e!424242)))

(declare-fun c!83451 () Bool)

(assert (=> b!760976 (= c!83451 (or (= lt!339046 (select (arr!20131 a!3186) j!159)) (= (bvadd lt!339046 lt!339046) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760977 () Bool)

(assert (=> b!760977 (and (bvsge (index!33321 lt!339045) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339045) (size!20552 a!3186)))))

(assert (=> b!760977 (= e!424241 (= (select (arr!20131 a!3186) (index!33321 lt!339045)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760978 () Bool)

(assert (=> b!760978 (and (bvsge (index!33321 lt!339045) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339045) (size!20552 a!3186)))))

(declare-fun res!514840 () Bool)

(assert (=> b!760978 (= res!514840 (= (select (arr!20131 a!3186) (index!33321 lt!339045)) (select (arr!20131 a!3186) j!159)))))

(assert (=> b!760978 (=> res!514840 e!424241)))

(assert (=> b!760978 (= e!424244 e!424241)))

(declare-fun b!760979 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760979 (= e!424242 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20131 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100621 c!83449) b!760971))

(assert (= (and d!100621 (not c!83449)) b!760976))

(assert (= (and b!760976 c!83451) b!760974))

(assert (= (and b!760976 (not c!83451)) b!760979))

(assert (= (and d!100621 c!83450) b!760973))

(assert (= (and d!100621 (not c!83450)) b!760972))

(assert (= (and b!760972 res!514842) b!760978))

(assert (= (and b!760978 (not res!514840)) b!760975))

(assert (= (and b!760975 (not res!514841)) b!760977))

(assert (=> b!760979 m!708085))

(declare-fun m!708155 () Bool)

(assert (=> b!760979 m!708155))

(assert (=> b!760979 m!708155))

(assert (=> b!760979 m!708067))

(declare-fun m!708157 () Bool)

(assert (=> b!760979 m!708157))

(assert (=> d!100621 m!708085))

(declare-fun m!708159 () Bool)

(assert (=> d!100621 m!708159))

(assert (=> d!100621 m!708073))

(declare-fun m!708161 () Bool)

(assert (=> b!760978 m!708161))

(assert (=> b!760975 m!708161))

(assert (=> b!760977 m!708161))

(assert (=> b!760881 d!100621))

(declare-fun d!100623 () Bool)

(declare-fun lt!339052 () (_ BitVec 32))

(declare-fun lt!339051 () (_ BitVec 32))

(assert (=> d!100623 (= lt!339052 (bvmul (bvxor lt!339051 (bvlshr lt!339051 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100623 (= lt!339051 ((_ extract 31 0) (bvand (bvxor (select (arr!20131 a!3186) j!159) (bvlshr (select (arr!20131 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100623 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514843 (let ((h!15262 ((_ extract 31 0) (bvand (bvxor (select (arr!20131 a!3186) j!159) (bvlshr (select (arr!20131 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64248 (bvmul (bvxor h!15262 (bvlshr h!15262 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64248 (bvlshr x!64248 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514843 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514843 #b00000000000000000000000000000000))))))

(assert (=> d!100623 (= (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) (bvand (bvxor lt!339052 (bvlshr lt!339052 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760881 d!100623))

(declare-fun d!100625 () Bool)

(assert (=> d!100625 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760891 d!100625))

(declare-fun b!760998 () Bool)

(declare-fun e!424257 () SeekEntryResult!7738)

(assert (=> b!760998 (= e!424257 Undefined!7738)))

(declare-fun b!760999 () Bool)

(declare-fun c!83458 () Bool)

(declare-fun lt!339058 () (_ BitVec 64))

(assert (=> b!760999 (= c!83458 (= lt!339058 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424259 () SeekEntryResult!7738)

(declare-fun e!424258 () SeekEntryResult!7738)

(assert (=> b!760999 (= e!424259 e!424258)))

(declare-fun b!761000 () Bool)

(assert (=> b!761000 (= e!424258 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761002 () Bool)

(assert (=> b!761002 (= e!424259 (Found!7738 index!1321))))

(declare-fun b!761003 () Bool)

(assert (=> b!761003 (= e!424257 e!424259)))

(declare-fun c!83459 () Bool)

(assert (=> b!761003 (= c!83459 (= lt!339058 (select (arr!20131 a!3186) j!159)))))

(declare-fun b!761001 () Bool)

(assert (=> b!761001 (= e!424258 (MissingVacant!7738 resIntermediateIndex!5))))

(declare-fun d!100627 () Bool)

(declare-fun lt!339057 () SeekEntryResult!7738)

(assert (=> d!100627 (and (or ((_ is Undefined!7738) lt!339057) (not ((_ is Found!7738) lt!339057)) (and (bvsge (index!33320 lt!339057) #b00000000000000000000000000000000) (bvslt (index!33320 lt!339057) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339057) ((_ is Found!7738) lt!339057) (not ((_ is MissingVacant!7738) lt!339057)) (not (= (index!33322 lt!339057) resIntermediateIndex!5)) (and (bvsge (index!33322 lt!339057) #b00000000000000000000000000000000) (bvslt (index!33322 lt!339057) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339057) (ite ((_ is Found!7738) lt!339057) (= (select (arr!20131 a!3186) (index!33320 lt!339057)) (select (arr!20131 a!3186) j!159)) (and ((_ is MissingVacant!7738) lt!339057) (= (index!33322 lt!339057) resIntermediateIndex!5) (= (select (arr!20131 a!3186) (index!33322 lt!339057)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100627 (= lt!339057 e!424257)))

(declare-fun c!83460 () Bool)

(assert (=> d!100627 (= c!83460 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100627 (= lt!339058 (select (arr!20131 a!3186) index!1321))))

(assert (=> d!100627 (validMask!0 mask!3328)))

(assert (=> d!100627 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339057)))

(assert (= (and d!100627 c!83460) b!760998))

(assert (= (and d!100627 (not c!83460)) b!761003))

(assert (= (and b!761003 c!83459) b!761002))

(assert (= (and b!761003 (not c!83459)) b!760999))

(assert (= (and b!760999 c!83458) b!761001))

(assert (= (and b!760999 (not c!83458)) b!761000))

(declare-fun m!708167 () Bool)

(assert (=> b!761000 m!708167))

(assert (=> b!761000 m!708167))

(assert (=> b!761000 m!708067))

(declare-fun m!708169 () Bool)

(assert (=> b!761000 m!708169))

(declare-fun m!708171 () Bool)

(assert (=> d!100627 m!708171))

(declare-fun m!708173 () Bool)

(assert (=> d!100627 m!708173))

(declare-fun m!708175 () Bool)

(assert (=> d!100627 m!708175))

(assert (=> d!100627 m!708073))

(assert (=> b!760882 d!100627))

(declare-fun d!100635 () Bool)

(assert (=> d!100635 (= (validKeyInArray!0 (select (arr!20131 a!3186) j!159)) (and (not (= (select (arr!20131 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20131 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760892 d!100635))

(declare-fun b!761012 () Bool)

(declare-fun e!424267 () Bool)

(declare-fun e!424268 () Bool)

(assert (=> b!761012 (= e!424267 e!424268)))

(declare-fun c!83463 () Bool)

(assert (=> b!761012 (= c!83463 (validKeyInArray!0 (select (arr!20131 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761013 () Bool)

(declare-fun e!424266 () Bool)

(declare-fun call!34962 () Bool)

(assert (=> b!761013 (= e!424266 call!34962)))

(declare-fun b!761014 () Bool)

(assert (=> b!761014 (= e!424268 e!424266)))

(declare-fun lt!339065 () (_ BitVec 64))

(assert (=> b!761014 (= lt!339065 (select (arr!20131 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!339067 () Unit!26316)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42048 (_ BitVec 64) (_ BitVec 32)) Unit!26316)

(assert (=> b!761014 (= lt!339067 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339065 #b00000000000000000000000000000000))))

(assert (=> b!761014 (arrayContainsKey!0 a!3186 lt!339065 #b00000000000000000000000000000000)))

(declare-fun lt!339066 () Unit!26316)

(assert (=> b!761014 (= lt!339066 lt!339067)))

(declare-fun res!514854 () Bool)

(assert (=> b!761014 (= res!514854 (= (seekEntryOrOpen!0 (select (arr!20131 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7738 #b00000000000000000000000000000000)))))

(assert (=> b!761014 (=> (not res!514854) (not e!424266))))

(declare-fun bm!34959 () Bool)

(assert (=> bm!34959 (= call!34962 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761015 () Bool)

(assert (=> b!761015 (= e!424268 call!34962)))

(declare-fun d!100637 () Bool)

(declare-fun res!514855 () Bool)

(assert (=> d!100637 (=> res!514855 e!424267)))

(assert (=> d!100637 (= res!514855 (bvsge #b00000000000000000000000000000000 (size!20552 a!3186)))))

(assert (=> d!100637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!424267)))

(assert (= (and d!100637 (not res!514855)) b!761012))

(assert (= (and b!761012 c!83463) b!761014))

(assert (= (and b!761012 (not c!83463)) b!761015))

(assert (= (and b!761014 res!514854) b!761013))

(assert (= (or b!761013 b!761015) bm!34959))

(declare-fun m!708177 () Bool)

(assert (=> b!761012 m!708177))

(assert (=> b!761012 m!708177))

(declare-fun m!708179 () Bool)

(assert (=> b!761012 m!708179))

(assert (=> b!761014 m!708177))

(declare-fun m!708181 () Bool)

(assert (=> b!761014 m!708181))

(declare-fun m!708183 () Bool)

(assert (=> b!761014 m!708183))

(assert (=> b!761014 m!708177))

(declare-fun m!708185 () Bool)

(assert (=> b!761014 m!708185))

(declare-fun m!708187 () Bool)

(assert (=> bm!34959 m!708187))

(assert (=> b!760894 d!100637))

(declare-fun d!100641 () Bool)

(declare-fun res!514860 () Bool)

(declare-fun e!424279 () Bool)

(assert (=> d!100641 (=> res!514860 e!424279)))

(assert (=> d!100641 (= res!514860 (= (select (arr!20131 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!100641 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!424279)))

(declare-fun b!761032 () Bool)

(declare-fun e!424280 () Bool)

(assert (=> b!761032 (= e!424279 e!424280)))

(declare-fun res!514861 () Bool)

(assert (=> b!761032 (=> (not res!514861) (not e!424280))))

(assert (=> b!761032 (= res!514861 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20552 a!3186)))))

(declare-fun b!761033 () Bool)

(assert (=> b!761033 (= e!424280 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100641 (not res!514860)) b!761032))

(assert (= (and b!761032 res!514861) b!761033))

(assert (=> d!100641 m!708177))

(declare-fun m!708189 () Bool)

(assert (=> b!761033 m!708189))

(assert (=> b!760883 d!100641))

(declare-fun d!100643 () Bool)

(declare-fun res!514869 () Bool)

(declare-fun e!424301 () Bool)

(assert (=> d!100643 (=> res!514869 e!424301)))

(assert (=> d!100643 (= res!514869 (bvsge #b00000000000000000000000000000000 (size!20552 a!3186)))))

(assert (=> d!100643 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14183) e!424301)))

(declare-fun b!761062 () Bool)

(declare-fun e!424300 () Bool)

(declare-fun contains!4069 (List!14186 (_ BitVec 64)) Bool)

(assert (=> b!761062 (= e!424300 (contains!4069 Nil!14183 (select (arr!20131 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34962 () Bool)

(declare-fun call!34965 () Bool)

(declare-fun c!83481 () Bool)

(assert (=> bm!34962 (= call!34965 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83481 (Cons!14182 (select (arr!20131 a!3186) #b00000000000000000000000000000000) Nil!14183) Nil!14183)))))

(declare-fun b!761063 () Bool)

(declare-fun e!424298 () Bool)

(declare-fun e!424299 () Bool)

(assert (=> b!761063 (= e!424298 e!424299)))

(assert (=> b!761063 (= c!83481 (validKeyInArray!0 (select (arr!20131 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!761064 () Bool)

(assert (=> b!761064 (= e!424299 call!34965)))

(declare-fun b!761065 () Bool)

(assert (=> b!761065 (= e!424299 call!34965)))

(declare-fun b!761066 () Bool)

(assert (=> b!761066 (= e!424301 e!424298)))

(declare-fun res!514868 () Bool)

(assert (=> b!761066 (=> (not res!514868) (not e!424298))))

(assert (=> b!761066 (= res!514868 (not e!424300))))

(declare-fun res!514870 () Bool)

(assert (=> b!761066 (=> (not res!514870) (not e!424300))))

(assert (=> b!761066 (= res!514870 (validKeyInArray!0 (select (arr!20131 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100643 (not res!514869)) b!761066))

(assert (= (and b!761066 res!514870) b!761062))

(assert (= (and b!761066 res!514868) b!761063))

(assert (= (and b!761063 c!83481) b!761064))

(assert (= (and b!761063 (not c!83481)) b!761065))

(assert (= (or b!761064 b!761065) bm!34962))

(assert (=> b!761062 m!708177))

(assert (=> b!761062 m!708177))

(declare-fun m!708205 () Bool)

(assert (=> b!761062 m!708205))

(assert (=> bm!34962 m!708177))

(declare-fun m!708207 () Bool)

(assert (=> bm!34962 m!708207))

(assert (=> b!761063 m!708177))

(assert (=> b!761063 m!708177))

(assert (=> b!761063 m!708179))

(assert (=> b!761066 m!708177))

(assert (=> b!761066 m!708177))

(assert (=> b!761066 m!708179))

(assert (=> b!760885 d!100643))

(declare-fun b!761130 () Bool)

(declare-fun e!424338 () SeekEntryResult!7738)

(declare-fun e!424337 () SeekEntryResult!7738)

(assert (=> b!761130 (= e!424338 e!424337)))

(declare-fun lt!339099 () (_ BitVec 64))

(declare-fun lt!339100 () SeekEntryResult!7738)

(assert (=> b!761130 (= lt!339099 (select (arr!20131 a!3186) (index!33321 lt!339100)))))

(declare-fun c!83507 () Bool)

(assert (=> b!761130 (= c!83507 (= lt!339099 k0!2102))))

(declare-fun b!761131 () Bool)

(assert (=> b!761131 (= e!424337 (Found!7738 (index!33321 lt!339100)))))

(declare-fun b!761132 () Bool)

(assert (=> b!761132 (= e!424338 Undefined!7738)))

(declare-fun b!761133 () Bool)

(declare-fun c!83506 () Bool)

(assert (=> b!761133 (= c!83506 (= lt!339099 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424336 () SeekEntryResult!7738)

(assert (=> b!761133 (= e!424337 e!424336)))

(declare-fun b!761134 () Bool)

(assert (=> b!761134 (= e!424336 (seekKeyOrZeroReturnVacant!0 (x!64245 lt!339100) (index!33321 lt!339100) (index!33321 lt!339100) k0!2102 a!3186 mask!3328))))

(declare-fun d!100647 () Bool)

(declare-fun lt!339101 () SeekEntryResult!7738)

(assert (=> d!100647 (and (or ((_ is Undefined!7738) lt!339101) (not ((_ is Found!7738) lt!339101)) (and (bvsge (index!33320 lt!339101) #b00000000000000000000000000000000) (bvslt (index!33320 lt!339101) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339101) ((_ is Found!7738) lt!339101) (not ((_ is MissingZero!7738) lt!339101)) (and (bvsge (index!33319 lt!339101) #b00000000000000000000000000000000) (bvslt (index!33319 lt!339101) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339101) ((_ is Found!7738) lt!339101) ((_ is MissingZero!7738) lt!339101) (not ((_ is MissingVacant!7738) lt!339101)) (and (bvsge (index!33322 lt!339101) #b00000000000000000000000000000000) (bvslt (index!33322 lt!339101) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339101) (ite ((_ is Found!7738) lt!339101) (= (select (arr!20131 a!3186) (index!33320 lt!339101)) k0!2102) (ite ((_ is MissingZero!7738) lt!339101) (= (select (arr!20131 a!3186) (index!33319 lt!339101)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7738) lt!339101) (= (select (arr!20131 a!3186) (index!33322 lt!339101)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100647 (= lt!339101 e!424338)))

(declare-fun c!83508 () Bool)

(assert (=> d!100647 (= c!83508 (and ((_ is Intermediate!7738) lt!339100) (undefined!8550 lt!339100)))))

(assert (=> d!100647 (= lt!339100 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!100647 (validMask!0 mask!3328)))

(assert (=> d!100647 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!339101)))

(declare-fun b!761135 () Bool)

(assert (=> b!761135 (= e!424336 (MissingZero!7738 (index!33321 lt!339100)))))

(assert (= (and d!100647 c!83508) b!761132))

(assert (= (and d!100647 (not c!83508)) b!761130))

(assert (= (and b!761130 c!83507) b!761131))

(assert (= (and b!761130 (not c!83507)) b!761133))

(assert (= (and b!761133 c!83506) b!761135))

(assert (= (and b!761133 (not c!83506)) b!761134))

(declare-fun m!708227 () Bool)

(assert (=> b!761130 m!708227))

(declare-fun m!708229 () Bool)

(assert (=> b!761134 m!708229))

(declare-fun m!708231 () Bool)

(assert (=> d!100647 m!708231))

(declare-fun m!708233 () Bool)

(assert (=> d!100647 m!708233))

(assert (=> d!100647 m!708073))

(declare-fun m!708235 () Bool)

(assert (=> d!100647 m!708235))

(declare-fun m!708237 () Bool)

(assert (=> d!100647 m!708237))

(declare-fun m!708239 () Bool)

(assert (=> d!100647 m!708239))

(assert (=> d!100647 m!708235))

(assert (=> b!760884 d!100647))

(declare-fun b!761136 () Bool)

(declare-fun e!424339 () SeekEntryResult!7738)

(assert (=> b!761136 (= e!424339 (Intermediate!7738 true index!1321 x!1131))))

(declare-fun b!761137 () Bool)

(declare-fun e!424342 () Bool)

(declare-fun e!424343 () Bool)

(assert (=> b!761137 (= e!424342 e!424343)))

(declare-fun res!514889 () Bool)

(declare-fun lt!339102 () SeekEntryResult!7738)

(assert (=> b!761137 (= res!514889 (and ((_ is Intermediate!7738) lt!339102) (not (undefined!8550 lt!339102)) (bvslt (x!64245 lt!339102) #b01111111111111111111111111111110) (bvsge (x!64245 lt!339102) #b00000000000000000000000000000000) (bvsge (x!64245 lt!339102) x!1131)))))

(assert (=> b!761137 (=> (not res!514889) (not e!424343))))

(declare-fun b!761138 () Bool)

(assert (=> b!761138 (= e!424342 (bvsge (x!64245 lt!339102) #b01111111111111111111111111111110))))

(declare-fun b!761139 () Bool)

(declare-fun e!424341 () SeekEntryResult!7738)

(assert (=> b!761139 (= e!424341 (Intermediate!7738 false index!1321 x!1131))))

(declare-fun b!761140 () Bool)

(assert (=> b!761140 (and (bvsge (index!33321 lt!339102) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339102) (size!20552 a!3186)))))

(declare-fun res!514888 () Bool)

(assert (=> b!761140 (= res!514888 (= (select (arr!20131 a!3186) (index!33321 lt!339102)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424340 () Bool)

(assert (=> b!761140 (=> res!514888 e!424340)))

(declare-fun d!100653 () Bool)

(assert (=> d!100653 e!424342))

(declare-fun c!83510 () Bool)

(assert (=> d!100653 (= c!83510 (and ((_ is Intermediate!7738) lt!339102) (undefined!8550 lt!339102)))))

(assert (=> d!100653 (= lt!339102 e!424339)))

(declare-fun c!83509 () Bool)

(assert (=> d!100653 (= c!83509 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339103 () (_ BitVec 64))

(assert (=> d!100653 (= lt!339103 (select (arr!20131 a!3186) index!1321))))

(assert (=> d!100653 (validMask!0 mask!3328)))

(assert (=> d!100653 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339102)))

(declare-fun b!761141 () Bool)

(assert (=> b!761141 (= e!424339 e!424341)))

(declare-fun c!83511 () Bool)

(assert (=> b!761141 (= c!83511 (or (= lt!339103 (select (arr!20131 a!3186) j!159)) (= (bvadd lt!339103 lt!339103) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761142 () Bool)

(assert (=> b!761142 (and (bvsge (index!33321 lt!339102) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339102) (size!20552 a!3186)))))

(assert (=> b!761142 (= e!424340 (= (select (arr!20131 a!3186) (index!33321 lt!339102)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761143 () Bool)

(assert (=> b!761143 (and (bvsge (index!33321 lt!339102) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339102) (size!20552 a!3186)))))

(declare-fun res!514887 () Bool)

(assert (=> b!761143 (= res!514887 (= (select (arr!20131 a!3186) (index!33321 lt!339102)) (select (arr!20131 a!3186) j!159)))))

(assert (=> b!761143 (=> res!514887 e!424340)))

(assert (=> b!761143 (= e!424343 e!424340)))

(declare-fun b!761144 () Bool)

(assert (=> b!761144 (= e!424341 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20131 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100653 c!83509) b!761136))

(assert (= (and d!100653 (not c!83509)) b!761141))

(assert (= (and b!761141 c!83511) b!761139))

(assert (= (and b!761141 (not c!83511)) b!761144))

(assert (= (and d!100653 c!83510) b!761138))

(assert (= (and d!100653 (not c!83510)) b!761137))

(assert (= (and b!761137 res!514889) b!761143))

(assert (= (and b!761143 (not res!514887)) b!761140))

(assert (= (and b!761140 (not res!514888)) b!761142))

(assert (=> b!761144 m!708167))

(assert (=> b!761144 m!708167))

(assert (=> b!761144 m!708067))

(declare-fun m!708241 () Bool)

(assert (=> b!761144 m!708241))

(assert (=> d!100653 m!708175))

(assert (=> d!100653 m!708073))

(declare-fun m!708243 () Bool)

(assert (=> b!761143 m!708243))

(assert (=> b!761140 m!708243))

(assert (=> b!761142 m!708243))

(assert (=> b!760897 d!100653))

(declare-fun b!761154 () Bool)

(declare-fun e!424350 () Bool)

(declare-fun e!424351 () Bool)

(assert (=> b!761154 (= e!424350 e!424351)))

(declare-fun c!83515 () Bool)

(assert (=> b!761154 (= c!83515 (validKeyInArray!0 (select (arr!20131 a!3186) j!159)))))

(declare-fun b!761155 () Bool)

(declare-fun e!424349 () Bool)

(declare-fun call!34966 () Bool)

(assert (=> b!761155 (= e!424349 call!34966)))

(declare-fun b!761156 () Bool)

(assert (=> b!761156 (= e!424351 e!424349)))

(declare-fun lt!339106 () (_ BitVec 64))

(assert (=> b!761156 (= lt!339106 (select (arr!20131 a!3186) j!159))))

(declare-fun lt!339108 () Unit!26316)

(assert (=> b!761156 (= lt!339108 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!339106 j!159))))

(assert (=> b!761156 (arrayContainsKey!0 a!3186 lt!339106 #b00000000000000000000000000000000)))

(declare-fun lt!339107 () Unit!26316)

(assert (=> b!761156 (= lt!339107 lt!339108)))

(declare-fun res!514893 () Bool)

(assert (=> b!761156 (= res!514893 (= (seekEntryOrOpen!0 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) (Found!7738 j!159)))))

(assert (=> b!761156 (=> (not res!514893) (not e!424349))))

(declare-fun bm!34963 () Bool)

(assert (=> bm!34963 (= call!34966 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!761157 () Bool)

(assert (=> b!761157 (= e!424351 call!34966)))

(declare-fun d!100655 () Bool)

(declare-fun res!514894 () Bool)

(assert (=> d!100655 (=> res!514894 e!424350)))

(assert (=> d!100655 (= res!514894 (bvsge j!159 (size!20552 a!3186)))))

(assert (=> d!100655 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424350)))

(assert (= (and d!100655 (not res!514894)) b!761154))

(assert (= (and b!761154 c!83515) b!761156))

(assert (= (and b!761154 (not c!83515)) b!761157))

(assert (= (and b!761156 res!514893) b!761155))

(assert (= (or b!761155 b!761157) bm!34963))

(assert (=> b!761154 m!708067))

(assert (=> b!761154 m!708067))

(assert (=> b!761154 m!708079))

(assert (=> b!761156 m!708067))

(declare-fun m!708251 () Bool)

(assert (=> b!761156 m!708251))

(declare-fun m!708253 () Bool)

(assert (=> b!761156 m!708253))

(assert (=> b!761156 m!708067))

(assert (=> b!761156 m!708069))

(declare-fun m!708255 () Bool)

(assert (=> bm!34963 m!708255))

(assert (=> b!760896 d!100655))

(declare-fun d!100659 () Bool)

(assert (=> d!100659 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!339119 () Unit!26316)

(declare-fun choose!38 (array!42048 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26316)

(assert (=> d!100659 (= lt!339119 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100659 (validMask!0 mask!3328)))

(assert (=> d!100659 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!339119)))

(declare-fun bs!21396 () Bool)

(assert (= bs!21396 d!100659))

(assert (=> bs!21396 m!708063))

(declare-fun m!708265 () Bool)

(assert (=> bs!21396 m!708265))

(assert (=> bs!21396 m!708073))

(assert (=> b!760896 d!100659))

(declare-fun b!761167 () Bool)

(declare-fun e!424357 () SeekEntryResult!7738)

(assert (=> b!761167 (= e!424357 (Intermediate!7738 true index!1321 x!1131))))

(declare-fun b!761168 () Bool)

(declare-fun e!424360 () Bool)

(declare-fun e!424361 () Bool)

(assert (=> b!761168 (= e!424360 e!424361)))

(declare-fun res!514901 () Bool)

(declare-fun lt!339120 () SeekEntryResult!7738)

(assert (=> b!761168 (= res!514901 (and ((_ is Intermediate!7738) lt!339120) (not (undefined!8550 lt!339120)) (bvslt (x!64245 lt!339120) #b01111111111111111111111111111110) (bvsge (x!64245 lt!339120) #b00000000000000000000000000000000) (bvsge (x!64245 lt!339120) x!1131)))))

(assert (=> b!761168 (=> (not res!514901) (not e!424361))))

(declare-fun b!761169 () Bool)

(assert (=> b!761169 (= e!424360 (bvsge (x!64245 lt!339120) #b01111111111111111111111111111110))))

(declare-fun b!761170 () Bool)

(declare-fun e!424359 () SeekEntryResult!7738)

(assert (=> b!761170 (= e!424359 (Intermediate!7738 false index!1321 x!1131))))

(declare-fun b!761171 () Bool)

(assert (=> b!761171 (and (bvsge (index!33321 lt!339120) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339120) (size!20552 lt!339015)))))

(declare-fun res!514900 () Bool)

(assert (=> b!761171 (= res!514900 (= (select (arr!20131 lt!339015) (index!33321 lt!339120)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424358 () Bool)

(assert (=> b!761171 (=> res!514900 e!424358)))

(declare-fun d!100665 () Bool)

(assert (=> d!100665 e!424360))

(declare-fun c!83520 () Bool)

(assert (=> d!100665 (= c!83520 (and ((_ is Intermediate!7738) lt!339120) (undefined!8550 lt!339120)))))

(assert (=> d!100665 (= lt!339120 e!424357)))

(declare-fun c!83519 () Bool)

(assert (=> d!100665 (= c!83519 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!339121 () (_ BitVec 64))

(assert (=> d!100665 (= lt!339121 (select (arr!20131 lt!339015) index!1321))))

(assert (=> d!100665 (validMask!0 mask!3328)))

(assert (=> d!100665 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!339014 lt!339015 mask!3328) lt!339120)))

(declare-fun b!761172 () Bool)

(assert (=> b!761172 (= e!424357 e!424359)))

(declare-fun c!83521 () Bool)

(assert (=> b!761172 (= c!83521 (or (= lt!339121 lt!339014) (= (bvadd lt!339121 lt!339121) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761173 () Bool)

(assert (=> b!761173 (and (bvsge (index!33321 lt!339120) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339120) (size!20552 lt!339015)))))

(assert (=> b!761173 (= e!424358 (= (select (arr!20131 lt!339015) (index!33321 lt!339120)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761174 () Bool)

(assert (=> b!761174 (and (bvsge (index!33321 lt!339120) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339120) (size!20552 lt!339015)))))

(declare-fun res!514899 () Bool)

(assert (=> b!761174 (= res!514899 (= (select (arr!20131 lt!339015) (index!33321 lt!339120)) lt!339014))))

(assert (=> b!761174 (=> res!514899 e!424358)))

(assert (=> b!761174 (= e!424361 e!424358)))

(declare-fun b!761175 () Bool)

(assert (=> b!761175 (= e!424359 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!339014 lt!339015 mask!3328))))

(assert (= (and d!100665 c!83519) b!761167))

(assert (= (and d!100665 (not c!83519)) b!761172))

(assert (= (and b!761172 c!83521) b!761170))

(assert (= (and b!761172 (not c!83521)) b!761175))

(assert (= (and d!100665 c!83520) b!761169))

(assert (= (and d!100665 (not c!83520)) b!761168))

(assert (= (and b!761168 res!514901) b!761174))

(assert (= (and b!761174 (not res!514899)) b!761171))

(assert (= (and b!761171 (not res!514900)) b!761173))

(assert (=> b!761175 m!708167))

(assert (=> b!761175 m!708167))

(declare-fun m!708267 () Bool)

(assert (=> b!761175 m!708267))

(declare-fun m!708269 () Bool)

(assert (=> d!100665 m!708269))

(assert (=> d!100665 m!708073))

(declare-fun m!708271 () Bool)

(assert (=> b!761174 m!708271))

(assert (=> b!761171 m!708271))

(assert (=> b!761173 m!708271))

(assert (=> b!760898 d!100665))

(declare-fun b!761176 () Bool)

(declare-fun e!424362 () SeekEntryResult!7738)

(assert (=> b!761176 (= e!424362 (Intermediate!7738 true (toIndex!0 lt!339014 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761177 () Bool)

(declare-fun e!424365 () Bool)

(declare-fun e!424366 () Bool)

(assert (=> b!761177 (= e!424365 e!424366)))

(declare-fun res!514904 () Bool)

(declare-fun lt!339128 () SeekEntryResult!7738)

(assert (=> b!761177 (= res!514904 (and ((_ is Intermediate!7738) lt!339128) (not (undefined!8550 lt!339128)) (bvslt (x!64245 lt!339128) #b01111111111111111111111111111110) (bvsge (x!64245 lt!339128) #b00000000000000000000000000000000) (bvsge (x!64245 lt!339128) #b00000000000000000000000000000000)))))

(assert (=> b!761177 (=> (not res!514904) (not e!424366))))

(declare-fun b!761178 () Bool)

(assert (=> b!761178 (= e!424365 (bvsge (x!64245 lt!339128) #b01111111111111111111111111111110))))

(declare-fun b!761179 () Bool)

(declare-fun e!424364 () SeekEntryResult!7738)

(assert (=> b!761179 (= e!424364 (Intermediate!7738 false (toIndex!0 lt!339014 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!761180 () Bool)

(assert (=> b!761180 (and (bvsge (index!33321 lt!339128) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339128) (size!20552 lt!339015)))))

(declare-fun res!514903 () Bool)

(assert (=> b!761180 (= res!514903 (= (select (arr!20131 lt!339015) (index!33321 lt!339128)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424363 () Bool)

(assert (=> b!761180 (=> res!514903 e!424363)))

(declare-fun d!100667 () Bool)

(assert (=> d!100667 e!424365))

(declare-fun c!83523 () Bool)

(assert (=> d!100667 (= c!83523 (and ((_ is Intermediate!7738) lt!339128) (undefined!8550 lt!339128)))))

(assert (=> d!100667 (= lt!339128 e!424362)))

(declare-fun c!83522 () Bool)

(assert (=> d!100667 (= c!83522 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!339129 () (_ BitVec 64))

(assert (=> d!100667 (= lt!339129 (select (arr!20131 lt!339015) (toIndex!0 lt!339014 mask!3328)))))

(assert (=> d!100667 (validMask!0 mask!3328)))

(assert (=> d!100667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!339014 mask!3328) lt!339014 lt!339015 mask!3328) lt!339128)))

(declare-fun b!761181 () Bool)

(assert (=> b!761181 (= e!424362 e!424364)))

(declare-fun c!83524 () Bool)

(assert (=> b!761181 (= c!83524 (or (= lt!339129 lt!339014) (= (bvadd lt!339129 lt!339129) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!761182 () Bool)

(assert (=> b!761182 (and (bvsge (index!33321 lt!339128) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339128) (size!20552 lt!339015)))))

(assert (=> b!761182 (= e!424363 (= (select (arr!20131 lt!339015) (index!33321 lt!339128)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!761183 () Bool)

(assert (=> b!761183 (and (bvsge (index!33321 lt!339128) #b00000000000000000000000000000000) (bvslt (index!33321 lt!339128) (size!20552 lt!339015)))))

(declare-fun res!514902 () Bool)

(assert (=> b!761183 (= res!514902 (= (select (arr!20131 lt!339015) (index!33321 lt!339128)) lt!339014))))

(assert (=> b!761183 (=> res!514902 e!424363)))

(assert (=> b!761183 (= e!424366 e!424363)))

(declare-fun b!761184 () Bool)

(assert (=> b!761184 (= e!424364 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!339014 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!339014 lt!339015 mask!3328))))

(assert (= (and d!100667 c!83522) b!761176))

(assert (= (and d!100667 (not c!83522)) b!761181))

(assert (= (and b!761181 c!83524) b!761179))

(assert (= (and b!761181 (not c!83524)) b!761184))

(assert (= (and d!100667 c!83523) b!761178))

(assert (= (and d!100667 (not c!83523)) b!761177))

(assert (= (and b!761177 res!514904) b!761183))

(assert (= (and b!761183 (not res!514902)) b!761180))

(assert (= (and b!761180 (not res!514903)) b!761182))

(assert (=> b!761184 m!708099))

(declare-fun m!708273 () Bool)

(assert (=> b!761184 m!708273))

(assert (=> b!761184 m!708273))

(declare-fun m!708275 () Bool)

(assert (=> b!761184 m!708275))

(assert (=> d!100667 m!708099))

(declare-fun m!708277 () Bool)

(assert (=> d!100667 m!708277))

(assert (=> d!100667 m!708073))

(declare-fun m!708279 () Bool)

(assert (=> b!761183 m!708279))

(assert (=> b!761180 m!708279))

(assert (=> b!761182 m!708279))

(assert (=> b!760898 d!100667))

(declare-fun d!100671 () Bool)

(declare-fun lt!339137 () (_ BitVec 32))

(declare-fun lt!339136 () (_ BitVec 32))

(assert (=> d!100671 (= lt!339137 (bvmul (bvxor lt!339136 (bvlshr lt!339136 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100671 (= lt!339136 ((_ extract 31 0) (bvand (bvxor lt!339014 (bvlshr lt!339014 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100671 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514843 (let ((h!15262 ((_ extract 31 0) (bvand (bvxor lt!339014 (bvlshr lt!339014 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64248 (bvmul (bvxor h!15262 (bvlshr h!15262 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64248 (bvlshr x!64248 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514843 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514843 #b00000000000000000000000000000000))))))

(assert (=> d!100671 (= (toIndex!0 lt!339014 mask!3328) (bvand (bvxor lt!339137 (bvlshr lt!339137 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760898 d!100671))

(assert (=> b!760887 d!100627))

(declare-fun b!761193 () Bool)

(declare-fun e!424375 () SeekEntryResult!7738)

(declare-fun e!424374 () SeekEntryResult!7738)

(assert (=> b!761193 (= e!424375 e!424374)))

(declare-fun lt!339138 () (_ BitVec 64))

(declare-fun lt!339139 () SeekEntryResult!7738)

(assert (=> b!761193 (= lt!339138 (select (arr!20131 a!3186) (index!33321 lt!339139)))))

(declare-fun c!83528 () Bool)

(assert (=> b!761193 (= c!83528 (= lt!339138 (select (arr!20131 a!3186) j!159)))))

(declare-fun b!761194 () Bool)

(assert (=> b!761194 (= e!424374 (Found!7738 (index!33321 lt!339139)))))

(declare-fun b!761195 () Bool)

(assert (=> b!761195 (= e!424375 Undefined!7738)))

(declare-fun b!761196 () Bool)

(declare-fun c!83527 () Bool)

(assert (=> b!761196 (= c!83527 (= lt!339138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424373 () SeekEntryResult!7738)

(assert (=> b!761196 (= e!424374 e!424373)))

(declare-fun b!761197 () Bool)

(assert (=> b!761197 (= e!424373 (seekKeyOrZeroReturnVacant!0 (x!64245 lt!339139) (index!33321 lt!339139) (index!33321 lt!339139) (select (arr!20131 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!100673 () Bool)

(declare-fun lt!339140 () SeekEntryResult!7738)

(assert (=> d!100673 (and (or ((_ is Undefined!7738) lt!339140) (not ((_ is Found!7738) lt!339140)) (and (bvsge (index!33320 lt!339140) #b00000000000000000000000000000000) (bvslt (index!33320 lt!339140) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339140) ((_ is Found!7738) lt!339140) (not ((_ is MissingZero!7738) lt!339140)) (and (bvsge (index!33319 lt!339140) #b00000000000000000000000000000000) (bvslt (index!33319 lt!339140) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339140) ((_ is Found!7738) lt!339140) ((_ is MissingZero!7738) lt!339140) (not ((_ is MissingVacant!7738) lt!339140)) (and (bvsge (index!33322 lt!339140) #b00000000000000000000000000000000) (bvslt (index!33322 lt!339140) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339140) (ite ((_ is Found!7738) lt!339140) (= (select (arr!20131 a!3186) (index!33320 lt!339140)) (select (arr!20131 a!3186) j!159)) (ite ((_ is MissingZero!7738) lt!339140) (= (select (arr!20131 a!3186) (index!33319 lt!339140)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7738) lt!339140) (= (select (arr!20131 a!3186) (index!33322 lt!339140)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100673 (= lt!339140 e!424375)))

(declare-fun c!83529 () Bool)

(assert (=> d!100673 (= c!83529 (and ((_ is Intermediate!7738) lt!339139) (undefined!8550 lt!339139)))))

(assert (=> d!100673 (= lt!339139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20131 a!3186) j!159) mask!3328) (select (arr!20131 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100673 (validMask!0 mask!3328)))

(assert (=> d!100673 (= (seekEntryOrOpen!0 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339140)))

(declare-fun b!761198 () Bool)

(assert (=> b!761198 (= e!424373 (MissingZero!7738 (index!33321 lt!339139)))))

(assert (= (and d!100673 c!83529) b!761195))

(assert (= (and d!100673 (not c!83529)) b!761193))

(assert (= (and b!761193 c!83528) b!761194))

(assert (= (and b!761193 (not c!83528)) b!761196))

(assert (= (and b!761196 c!83527) b!761198))

(assert (= (and b!761196 (not c!83527)) b!761197))

(declare-fun m!708281 () Bool)

(assert (=> b!761193 m!708281))

(assert (=> b!761197 m!708067))

(declare-fun m!708283 () Bool)

(assert (=> b!761197 m!708283))

(declare-fun m!708285 () Bool)

(assert (=> d!100673 m!708285))

(declare-fun m!708287 () Bool)

(assert (=> d!100673 m!708287))

(assert (=> d!100673 m!708073))

(assert (=> d!100673 m!708085))

(assert (=> d!100673 m!708067))

(assert (=> d!100673 m!708087))

(declare-fun m!708289 () Bool)

(assert (=> d!100673 m!708289))

(assert (=> d!100673 m!708067))

(assert (=> d!100673 m!708085))

(assert (=> b!760889 d!100673))

(declare-fun d!100675 () Bool)

(assert (=> d!100675 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66064 d!100675))

(declare-fun d!100681 () Bool)

(assert (=> d!100681 (= (array_inv!15905 a!3186) (bvsge (size!20552 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66064 d!100681))

(declare-fun b!761203 () Bool)

(declare-fun e!424379 () SeekEntryResult!7738)

(assert (=> b!761203 (= e!424379 Undefined!7738)))

(declare-fun b!761204 () Bool)

(declare-fun c!83531 () Bool)

(declare-fun lt!339145 () (_ BitVec 64))

(assert (=> b!761204 (= c!83531 (= lt!339145 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424381 () SeekEntryResult!7738)

(declare-fun e!424380 () SeekEntryResult!7738)

(assert (=> b!761204 (= e!424381 e!424380)))

(declare-fun b!761205 () Bool)

(assert (=> b!761205 (= e!424380 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!761207 () Bool)

(assert (=> b!761207 (= e!424381 (Found!7738 resIntermediateIndex!5))))

(declare-fun b!761208 () Bool)

(assert (=> b!761208 (= e!424379 e!424381)))

(declare-fun c!83532 () Bool)

(assert (=> b!761208 (= c!83532 (= lt!339145 (select (arr!20131 a!3186) j!159)))))

(declare-fun b!761206 () Bool)

(assert (=> b!761206 (= e!424380 (MissingVacant!7738 resIntermediateIndex!5))))

(declare-fun d!100683 () Bool)

(declare-fun lt!339144 () SeekEntryResult!7738)

(assert (=> d!100683 (and (or ((_ is Undefined!7738) lt!339144) (not ((_ is Found!7738) lt!339144)) (and (bvsge (index!33320 lt!339144) #b00000000000000000000000000000000) (bvslt (index!33320 lt!339144) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339144) ((_ is Found!7738) lt!339144) (not ((_ is MissingVacant!7738) lt!339144)) (not (= (index!33322 lt!339144) resIntermediateIndex!5)) (and (bvsge (index!33322 lt!339144) #b00000000000000000000000000000000) (bvslt (index!33322 lt!339144) (size!20552 a!3186)))) (or ((_ is Undefined!7738) lt!339144) (ite ((_ is Found!7738) lt!339144) (= (select (arr!20131 a!3186) (index!33320 lt!339144)) (select (arr!20131 a!3186) j!159)) (and ((_ is MissingVacant!7738) lt!339144) (= (index!33322 lt!339144) resIntermediateIndex!5) (= (select (arr!20131 a!3186) (index!33322 lt!339144)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100683 (= lt!339144 e!424379)))

(declare-fun c!83533 () Bool)

(assert (=> d!100683 (= c!83533 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100683 (= lt!339145 (select (arr!20131 a!3186) resIntermediateIndex!5))))

(assert (=> d!100683 (validMask!0 mask!3328)))

(assert (=> d!100683 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20131 a!3186) j!159) a!3186 mask!3328) lt!339144)))

(assert (= (and d!100683 c!83533) b!761203))

(assert (= (and d!100683 (not c!83533)) b!761208))

(assert (= (and b!761208 c!83532) b!761207))

(assert (= (and b!761208 (not c!83532)) b!761204))

(assert (= (and b!761204 c!83531) b!761206))

(assert (= (and b!761204 (not c!83531)) b!761205))

(declare-fun m!708301 () Bool)

(assert (=> b!761205 m!708301))

(assert (=> b!761205 m!708301))

(assert (=> b!761205 m!708067))

(declare-fun m!708303 () Bool)

(assert (=> b!761205 m!708303))

(declare-fun m!708305 () Bool)

(assert (=> d!100683 m!708305))

(declare-fun m!708307 () Bool)

(assert (=> d!100683 m!708307))

(assert (=> d!100683 m!708091))

(assert (=> d!100683 m!708073))

(assert (=> b!760890 d!100683))

(check-sat (not b!761066) (not b!761175) (not b!761205) (not b!761154) (not b!761184) (not b!761062) (not d!100647) (not b!761033) (not b!761156) (not d!100659) (not d!100627) (not d!100653) (not b!761014) (not b!761000) (not b!761063) (not b!761144) (not b!760979) (not b!761134) (not b!761197) (not d!100665) (not bm!34959) (not d!100673) (not bm!34963) (not d!100667) (not bm!34962) (not b!761012) (not d!100621) (not d!100683))
(check-sat)
