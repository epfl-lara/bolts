; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67290 () Bool)

(assert start!67290)

(declare-fun b!777968 () Bool)

(declare-fun res!526502 () Bool)

(declare-fun e!432852 () Bool)

(assert (=> b!777968 (=> (not res!526502) (not e!432852))))

(declare-fun e!432856 () Bool)

(assert (=> b!777968 (= res!526502 e!432856)))

(declare-fun c!86136 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!777968 (= c!86136 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!777969 () Bool)

(declare-fun res!526510 () Bool)

(declare-fun e!432853 () Bool)

(assert (=> b!777969 (=> (not res!526510) (not e!432853))))

(declare-datatypes ((array!42537 0))(
  ( (array!42538 (arr!20359 (Array (_ BitVec 32) (_ BitVec 64))) (size!20780 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42537)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!777969 (= res!526510 (and (= (size!20780 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20780 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20780 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!777970 () Bool)

(declare-fun res!526504 () Bool)

(declare-fun e!432855 () Bool)

(assert (=> b!777970 (=> (not res!526504) (not e!432855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42537 (_ BitVec 32)) Bool)

(assert (=> b!777970 (= res!526504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!777971 () Bool)

(declare-fun res!526500 () Bool)

(assert (=> b!777971 (=> (not res!526500) (not e!432852))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!777971 (= res!526500 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20359 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!777972 () Bool)

(declare-fun res!526515 () Bool)

(assert (=> b!777972 (=> (not res!526515) (not e!432855))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!777972 (= res!526515 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20780 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20780 a!3186))))))

(declare-fun b!777973 () Bool)

(declare-datatypes ((SeekEntryResult!7966 0))(
  ( (MissingZero!7966 (index!34231 (_ BitVec 32))) (Found!7966 (index!34232 (_ BitVec 32))) (Intermediate!7966 (undefined!8778 Bool) (index!34233 (_ BitVec 32)) (x!65199 (_ BitVec 32))) (Undefined!7966) (MissingVacant!7966 (index!34234 (_ BitVec 32))) )
))
(declare-fun lt!346631 () SeekEntryResult!7966)

(declare-fun lt!346633 () SeekEntryResult!7966)

(declare-fun e!432851 () Bool)

(assert (=> b!777973 (= e!432851 (or (not (= lt!346633 (Found!7966 index!1321))) (= lt!346633 lt!346631)))))

(declare-fun lt!346627 () array!42537)

(declare-fun lt!346630 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42537 (_ BitVec 32)) SeekEntryResult!7966)

(assert (=> b!777973 (= lt!346633 (seekEntryOrOpen!0 lt!346630 lt!346627 mask!3328))))

(declare-fun b!777974 () Bool)

(declare-fun res!526501 () Bool)

(assert (=> b!777974 (=> (not res!526501) (not e!432853))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!777974 (= res!526501 (validKeyInArray!0 k0!2102))))

(declare-fun b!777975 () Bool)

(declare-fun lt!346629 () SeekEntryResult!7966)

(declare-fun e!432849 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42537 (_ BitVec 32)) SeekEntryResult!7966)

(assert (=> b!777975 (= e!432849 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346629))))

(declare-fun b!777976 () Bool)

(assert (=> b!777976 (= e!432855 e!432852)))

(declare-fun res!526514 () Bool)

(assert (=> b!777976 (=> (not res!526514) (not e!432852))))

(declare-fun lt!346628 () SeekEntryResult!7966)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42537 (_ BitVec 32)) SeekEntryResult!7966)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!777976 (= res!526514 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346628))))

(assert (=> b!777976 (= lt!346628 (Intermediate!7966 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!526499 () Bool)

(assert (=> start!67290 (=> (not res!526499) (not e!432853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67290 (= res!526499 (validMask!0 mask!3328))))

(assert (=> start!67290 e!432853))

(assert (=> start!67290 true))

(declare-fun array_inv!16133 (array!42537) Bool)

(assert (=> start!67290 (array_inv!16133 a!3186)))

(declare-fun b!777977 () Bool)

(declare-fun e!432854 () Bool)

(assert (=> b!777977 (= e!432854 (not e!432851))))

(declare-fun res!526513 () Bool)

(assert (=> b!777977 (=> res!526513 e!432851)))

(declare-fun lt!346632 () SeekEntryResult!7966)

(get-info :version)

(assert (=> b!777977 (= res!526513 (or (not ((_ is Intermediate!7966) lt!346632)) (bvslt x!1131 (x!65199 lt!346632)) (not (= x!1131 (x!65199 lt!346632))) (not (= index!1321 (index!34233 lt!346632)))))))

(assert (=> b!777977 (= lt!346631 (Found!7966 j!159))))

(declare-fun e!432850 () Bool)

(assert (=> b!777977 e!432850))

(declare-fun res!526508 () Bool)

(assert (=> b!777977 (=> (not res!526508) (not e!432850))))

(assert (=> b!777977 (= res!526508 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26826 0))(
  ( (Unit!26827) )
))
(declare-fun lt!346636 () Unit!26826)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26826)

(assert (=> b!777977 (= lt!346636 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!777978 () Bool)

(assert (=> b!777978 (= e!432856 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346628))))

(declare-fun b!777979 () Bool)

(declare-fun res!526511 () Bool)

(assert (=> b!777979 (=> res!526511 e!432851)))

(assert (=> b!777979 (= res!526511 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346631)))))

(declare-fun b!777980 () Bool)

(assert (=> b!777980 (= e!432856 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) (Found!7966 j!159)))))

(declare-fun b!777981 () Bool)

(declare-fun res!526512 () Bool)

(assert (=> b!777981 (=> (not res!526512) (not e!432855))))

(declare-datatypes ((List!14414 0))(
  ( (Nil!14411) (Cons!14410 (h!15521 (_ BitVec 64)) (t!20737 List!14414)) )
))
(declare-fun arrayNoDuplicates!0 (array!42537 (_ BitVec 32) List!14414) Bool)

(assert (=> b!777981 (= res!526512 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14411))))

(declare-fun b!777982 () Bool)

(declare-fun res!526506 () Bool)

(assert (=> b!777982 (=> res!526506 e!432851)))

(assert (=> b!777982 (= res!526506 (or (not (= (select (store (arr!20359 a!3186) i!1173 k0!2102) index!1321) lt!346630)) (undefined!8778 lt!346632)))))

(declare-fun b!777983 () Bool)

(declare-fun res!526503 () Bool)

(assert (=> b!777983 (=> (not res!526503) (not e!432853))))

(assert (=> b!777983 (= res!526503 (validKeyInArray!0 (select (arr!20359 a!3186) j!159)))))

(declare-fun b!777984 () Bool)

(declare-fun res!526516 () Bool)

(assert (=> b!777984 (=> (not res!526516) (not e!432853))))

(declare-fun arrayContainsKey!0 (array!42537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!777984 (= res!526516 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!777985 () Bool)

(assert (=> b!777985 (= e!432853 e!432855)))

(declare-fun res!526509 () Bool)

(assert (=> b!777985 (=> (not res!526509) (not e!432855))))

(declare-fun lt!346635 () SeekEntryResult!7966)

(assert (=> b!777985 (= res!526509 (or (= lt!346635 (MissingZero!7966 i!1173)) (= lt!346635 (MissingVacant!7966 i!1173))))))

(assert (=> b!777985 (= lt!346635 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!777986 () Bool)

(assert (=> b!777986 (= e!432850 e!432849)))

(declare-fun res!526507 () Bool)

(assert (=> b!777986 (=> (not res!526507) (not e!432849))))

(assert (=> b!777986 (= res!526507 (= (seekEntryOrOpen!0 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346629))))

(assert (=> b!777986 (= lt!346629 (Found!7966 j!159))))

(declare-fun b!777987 () Bool)

(assert (=> b!777987 (= e!432852 e!432854)))

(declare-fun res!526505 () Bool)

(assert (=> b!777987 (=> (not res!526505) (not e!432854))))

(declare-fun lt!346634 () SeekEntryResult!7966)

(assert (=> b!777987 (= res!526505 (= lt!346634 lt!346632))))

(assert (=> b!777987 (= lt!346632 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346630 lt!346627 mask!3328))))

(assert (=> b!777987 (= lt!346634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346630 mask!3328) lt!346630 lt!346627 mask!3328))))

(assert (=> b!777987 (= lt!346630 (select (store (arr!20359 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!777987 (= lt!346627 (array!42538 (store (arr!20359 a!3186) i!1173 k0!2102) (size!20780 a!3186)))))

(assert (= (and start!67290 res!526499) b!777969))

(assert (= (and b!777969 res!526510) b!777983))

(assert (= (and b!777983 res!526503) b!777974))

(assert (= (and b!777974 res!526501) b!777984))

(assert (= (and b!777984 res!526516) b!777985))

(assert (= (and b!777985 res!526509) b!777970))

(assert (= (and b!777970 res!526504) b!777981))

(assert (= (and b!777981 res!526512) b!777972))

(assert (= (and b!777972 res!526515) b!777976))

(assert (= (and b!777976 res!526514) b!777971))

(assert (= (and b!777971 res!526500) b!777968))

(assert (= (and b!777968 c!86136) b!777978))

(assert (= (and b!777968 (not c!86136)) b!777980))

(assert (= (and b!777968 res!526502) b!777987))

(assert (= (and b!777987 res!526505) b!777977))

(assert (= (and b!777977 res!526508) b!777986))

(assert (= (and b!777986 res!526507) b!777975))

(assert (= (and b!777977 (not res!526513)) b!777979))

(assert (= (and b!777979 (not res!526511)) b!777982))

(assert (= (and b!777982 (not res!526506)) b!777973))

(declare-fun m!721803 () Bool)

(assert (=> start!67290 m!721803))

(declare-fun m!721805 () Bool)

(assert (=> start!67290 m!721805))

(declare-fun m!721807 () Bool)

(assert (=> b!777974 m!721807))

(declare-fun m!721809 () Bool)

(assert (=> b!777976 m!721809))

(assert (=> b!777976 m!721809))

(declare-fun m!721811 () Bool)

(assert (=> b!777976 m!721811))

(assert (=> b!777976 m!721811))

(assert (=> b!777976 m!721809))

(declare-fun m!721813 () Bool)

(assert (=> b!777976 m!721813))

(assert (=> b!777979 m!721809))

(assert (=> b!777979 m!721809))

(declare-fun m!721815 () Bool)

(assert (=> b!777979 m!721815))

(declare-fun m!721817 () Bool)

(assert (=> b!777982 m!721817))

(declare-fun m!721819 () Bool)

(assert (=> b!777982 m!721819))

(assert (=> b!777978 m!721809))

(assert (=> b!777978 m!721809))

(declare-fun m!721821 () Bool)

(assert (=> b!777978 m!721821))

(assert (=> b!777983 m!721809))

(assert (=> b!777983 m!721809))

(declare-fun m!721823 () Bool)

(assert (=> b!777983 m!721823))

(assert (=> b!777980 m!721809))

(assert (=> b!777980 m!721809))

(assert (=> b!777980 m!721815))

(declare-fun m!721825 () Bool)

(assert (=> b!777973 m!721825))

(declare-fun m!721827 () Bool)

(assert (=> b!777970 m!721827))

(declare-fun m!721829 () Bool)

(assert (=> b!777981 m!721829))

(declare-fun m!721831 () Bool)

(assert (=> b!777977 m!721831))

(declare-fun m!721833 () Bool)

(assert (=> b!777977 m!721833))

(assert (=> b!777986 m!721809))

(assert (=> b!777986 m!721809))

(declare-fun m!721835 () Bool)

(assert (=> b!777986 m!721835))

(declare-fun m!721837 () Bool)

(assert (=> b!777971 m!721837))

(assert (=> b!777975 m!721809))

(assert (=> b!777975 m!721809))

(declare-fun m!721839 () Bool)

(assert (=> b!777975 m!721839))

(declare-fun m!721841 () Bool)

(assert (=> b!777987 m!721841))

(declare-fun m!721843 () Bool)

(assert (=> b!777987 m!721843))

(declare-fun m!721845 () Bool)

(assert (=> b!777987 m!721845))

(declare-fun m!721847 () Bool)

(assert (=> b!777987 m!721847))

(assert (=> b!777987 m!721843))

(assert (=> b!777987 m!721817))

(declare-fun m!721849 () Bool)

(assert (=> b!777985 m!721849))

(declare-fun m!721851 () Bool)

(assert (=> b!777984 m!721851))

(check-sat (not b!777970) (not start!67290) (not b!777974) (not b!777985) (not b!777976) (not b!777983) (not b!777980) (not b!777975) (not b!777986) (not b!777984) (not b!777977) (not b!777981) (not b!777973) (not b!777979) (not b!777987) (not b!777978))
(check-sat)
(get-model)

(declare-fun b!778066 () Bool)

(declare-fun e!432894 () Bool)

(declare-fun lt!346671 () SeekEntryResult!7966)

(assert (=> b!778066 (= e!432894 (bvsge (x!65199 lt!346671) #b01111111111111111111111111111110))))

(declare-fun b!778067 () Bool)

(declare-fun e!432898 () SeekEntryResult!7966)

(declare-fun e!432897 () SeekEntryResult!7966)

(assert (=> b!778067 (= e!432898 e!432897)))

(declare-fun c!86146 () Bool)

(declare-fun lt!346672 () (_ BitVec 64))

(assert (=> b!778067 (= c!86146 (or (= lt!346672 (select (arr!20359 a!3186) j!159)) (= (bvadd lt!346672 lt!346672) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778068 () Bool)

(assert (=> b!778068 (= e!432898 (Intermediate!7966 true index!1321 x!1131))))

(declare-fun b!778069 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778069 (= e!432897 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20359 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778070 () Bool)

(assert (=> b!778070 (and (bvsge (index!34233 lt!346671) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346671) (size!20780 a!3186)))))

(declare-fun e!432895 () Bool)

(assert (=> b!778070 (= e!432895 (= (select (arr!20359 a!3186) (index!34233 lt!346671)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778071 () Bool)

(assert (=> b!778071 (= e!432897 (Intermediate!7966 false index!1321 x!1131))))

(declare-fun b!778072 () Bool)

(assert (=> b!778072 (and (bvsge (index!34233 lt!346671) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346671) (size!20780 a!3186)))))

(declare-fun res!526577 () Bool)

(assert (=> b!778072 (= res!526577 (= (select (arr!20359 a!3186) (index!34233 lt!346671)) (select (arr!20359 a!3186) j!159)))))

(assert (=> b!778072 (=> res!526577 e!432895)))

(declare-fun e!432896 () Bool)

(assert (=> b!778072 (= e!432896 e!432895)))

(declare-fun b!778073 () Bool)

(assert (=> b!778073 (and (bvsge (index!34233 lt!346671) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346671) (size!20780 a!3186)))))

(declare-fun res!526579 () Bool)

(assert (=> b!778073 (= res!526579 (= (select (arr!20359 a!3186) (index!34233 lt!346671)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778073 (=> res!526579 e!432895)))

(declare-fun b!778074 () Bool)

(assert (=> b!778074 (= e!432894 e!432896)))

(declare-fun res!526578 () Bool)

(assert (=> b!778074 (= res!526578 (and ((_ is Intermediate!7966) lt!346671) (not (undefined!8778 lt!346671)) (bvslt (x!65199 lt!346671) #b01111111111111111111111111111110) (bvsge (x!65199 lt!346671) #b00000000000000000000000000000000) (bvsge (x!65199 lt!346671) x!1131)))))

(assert (=> b!778074 (=> (not res!526578) (not e!432896))))

(declare-fun d!102179 () Bool)

(assert (=> d!102179 e!432894))

(declare-fun c!86147 () Bool)

(assert (=> d!102179 (= c!86147 (and ((_ is Intermediate!7966) lt!346671) (undefined!8778 lt!346671)))))

(assert (=> d!102179 (= lt!346671 e!432898)))

(declare-fun c!86148 () Bool)

(assert (=> d!102179 (= c!86148 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102179 (= lt!346672 (select (arr!20359 a!3186) index!1321))))

(assert (=> d!102179 (validMask!0 mask!3328)))

(assert (=> d!102179 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346671)))

(assert (= (and d!102179 c!86148) b!778068))

(assert (= (and d!102179 (not c!86148)) b!778067))

(assert (= (and b!778067 c!86146) b!778071))

(assert (= (and b!778067 (not c!86146)) b!778069))

(assert (= (and d!102179 c!86147) b!778066))

(assert (= (and d!102179 (not c!86147)) b!778074))

(assert (= (and b!778074 res!526578) b!778072))

(assert (= (and b!778072 (not res!526577)) b!778073))

(assert (= (and b!778073 (not res!526579)) b!778070))

(declare-fun m!721903 () Bool)

(assert (=> b!778069 m!721903))

(assert (=> b!778069 m!721903))

(assert (=> b!778069 m!721809))

(declare-fun m!721905 () Bool)

(assert (=> b!778069 m!721905))

(declare-fun m!721907 () Bool)

(assert (=> b!778073 m!721907))

(declare-fun m!721909 () Bool)

(assert (=> d!102179 m!721909))

(assert (=> d!102179 m!721803))

(assert (=> b!778070 m!721907))

(assert (=> b!778072 m!721907))

(assert (=> b!777978 d!102179))

(declare-fun call!35196 () Bool)

(declare-fun bm!35193 () Bool)

(assert (=> bm!35193 (= call!35196 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102183 () Bool)

(declare-fun res!526584 () Bool)

(declare-fun e!432906 () Bool)

(assert (=> d!102183 (=> res!526584 e!432906)))

(assert (=> d!102183 (= res!526584 (bvsge j!159 (size!20780 a!3186)))))

(assert (=> d!102183 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!432906)))

(declare-fun b!778083 () Bool)

(declare-fun e!432905 () Bool)

(assert (=> b!778083 (= e!432905 call!35196)))

(declare-fun b!778084 () Bool)

(declare-fun e!432907 () Bool)

(assert (=> b!778084 (= e!432907 e!432905)))

(declare-fun lt!346679 () (_ BitVec 64))

(assert (=> b!778084 (= lt!346679 (select (arr!20359 a!3186) j!159))))

(declare-fun lt!346681 () Unit!26826)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42537 (_ BitVec 64) (_ BitVec 32)) Unit!26826)

(assert (=> b!778084 (= lt!346681 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346679 j!159))))

(assert (=> b!778084 (arrayContainsKey!0 a!3186 lt!346679 #b00000000000000000000000000000000)))

(declare-fun lt!346680 () Unit!26826)

(assert (=> b!778084 (= lt!346680 lt!346681)))

(declare-fun res!526585 () Bool)

(assert (=> b!778084 (= res!526585 (= (seekEntryOrOpen!0 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) (Found!7966 j!159)))))

(assert (=> b!778084 (=> (not res!526585) (not e!432905))))

(declare-fun b!778085 () Bool)

(assert (=> b!778085 (= e!432907 call!35196)))

(declare-fun b!778086 () Bool)

(assert (=> b!778086 (= e!432906 e!432907)))

(declare-fun c!86151 () Bool)

(assert (=> b!778086 (= c!86151 (validKeyInArray!0 (select (arr!20359 a!3186) j!159)))))

(assert (= (and d!102183 (not res!526584)) b!778086))

(assert (= (and b!778086 c!86151) b!778084))

(assert (= (and b!778086 (not c!86151)) b!778085))

(assert (= (and b!778084 res!526585) b!778083))

(assert (= (or b!778083 b!778085) bm!35193))

(declare-fun m!721911 () Bool)

(assert (=> bm!35193 m!721911))

(assert (=> b!778084 m!721809))

(declare-fun m!721913 () Bool)

(assert (=> b!778084 m!721913))

(declare-fun m!721915 () Bool)

(assert (=> b!778084 m!721915))

(assert (=> b!778084 m!721809))

(assert (=> b!778084 m!721835))

(assert (=> b!778086 m!721809))

(assert (=> b!778086 m!721809))

(assert (=> b!778086 m!721823))

(assert (=> b!777977 d!102183))

(declare-fun d!102189 () Bool)

(assert (=> d!102189 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!346690 () Unit!26826)

(declare-fun choose!38 (array!42537 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26826)

(assert (=> d!102189 (= lt!346690 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102189 (validMask!0 mask!3328)))

(assert (=> d!102189 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!346690)))

(declare-fun bs!21682 () Bool)

(assert (= bs!21682 d!102189))

(assert (=> bs!21682 m!721831))

(declare-fun m!721917 () Bool)

(assert (=> bs!21682 m!721917))

(assert (=> bs!21682 m!721803))

(assert (=> b!777977 d!102189))

(declare-fun b!778105 () Bool)

(declare-fun e!432917 () Bool)

(declare-fun lt!346694 () SeekEntryResult!7966)

(assert (=> b!778105 (= e!432917 (bvsge (x!65199 lt!346694) #b01111111111111111111111111111110))))

(declare-fun b!778106 () Bool)

(declare-fun e!432921 () SeekEntryResult!7966)

(declare-fun e!432920 () SeekEntryResult!7966)

(assert (=> b!778106 (= e!432921 e!432920)))

(declare-fun c!86161 () Bool)

(declare-fun lt!346695 () (_ BitVec 64))

(assert (=> b!778106 (= c!86161 (or (= lt!346695 lt!346630) (= (bvadd lt!346695 lt!346695) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778107 () Bool)

(assert (=> b!778107 (= e!432921 (Intermediate!7966 true index!1321 x!1131))))

(declare-fun b!778108 () Bool)

(assert (=> b!778108 (= e!432920 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!346630 lt!346627 mask!3328))))

(declare-fun b!778109 () Bool)

(assert (=> b!778109 (and (bvsge (index!34233 lt!346694) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346694) (size!20780 lt!346627)))))

(declare-fun e!432918 () Bool)

(assert (=> b!778109 (= e!432918 (= (select (arr!20359 lt!346627) (index!34233 lt!346694)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778110 () Bool)

(assert (=> b!778110 (= e!432920 (Intermediate!7966 false index!1321 x!1131))))

(declare-fun b!778111 () Bool)

(assert (=> b!778111 (and (bvsge (index!34233 lt!346694) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346694) (size!20780 lt!346627)))))

(declare-fun res!526586 () Bool)

(assert (=> b!778111 (= res!526586 (= (select (arr!20359 lt!346627) (index!34233 lt!346694)) lt!346630))))

(assert (=> b!778111 (=> res!526586 e!432918)))

(declare-fun e!432919 () Bool)

(assert (=> b!778111 (= e!432919 e!432918)))

(declare-fun b!778112 () Bool)

(assert (=> b!778112 (and (bvsge (index!34233 lt!346694) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346694) (size!20780 lt!346627)))))

(declare-fun res!526588 () Bool)

(assert (=> b!778112 (= res!526588 (= (select (arr!20359 lt!346627) (index!34233 lt!346694)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778112 (=> res!526588 e!432918)))

(declare-fun b!778113 () Bool)

(assert (=> b!778113 (= e!432917 e!432919)))

(declare-fun res!526587 () Bool)

(assert (=> b!778113 (= res!526587 (and ((_ is Intermediate!7966) lt!346694) (not (undefined!8778 lt!346694)) (bvslt (x!65199 lt!346694) #b01111111111111111111111111111110) (bvsge (x!65199 lt!346694) #b00000000000000000000000000000000) (bvsge (x!65199 lt!346694) x!1131)))))

(assert (=> b!778113 (=> (not res!526587) (not e!432919))))

(declare-fun d!102195 () Bool)

(assert (=> d!102195 e!432917))

(declare-fun c!86162 () Bool)

(assert (=> d!102195 (= c!86162 (and ((_ is Intermediate!7966) lt!346694) (undefined!8778 lt!346694)))))

(assert (=> d!102195 (= lt!346694 e!432921)))

(declare-fun c!86163 () Bool)

(assert (=> d!102195 (= c!86163 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102195 (= lt!346695 (select (arr!20359 lt!346627) index!1321))))

(assert (=> d!102195 (validMask!0 mask!3328)))

(assert (=> d!102195 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346630 lt!346627 mask!3328) lt!346694)))

(assert (= (and d!102195 c!86163) b!778107))

(assert (= (and d!102195 (not c!86163)) b!778106))

(assert (= (and b!778106 c!86161) b!778110))

(assert (= (and b!778106 (not c!86161)) b!778108))

(assert (= (and d!102195 c!86162) b!778105))

(assert (= (and d!102195 (not c!86162)) b!778113))

(assert (= (and b!778113 res!526587) b!778111))

(assert (= (and b!778111 (not res!526586)) b!778112))

(assert (= (and b!778112 (not res!526588)) b!778109))

(assert (=> b!778108 m!721903))

(assert (=> b!778108 m!721903))

(declare-fun m!721929 () Bool)

(assert (=> b!778108 m!721929))

(declare-fun m!721931 () Bool)

(assert (=> b!778112 m!721931))

(declare-fun m!721933 () Bool)

(assert (=> d!102195 m!721933))

(assert (=> d!102195 m!721803))

(assert (=> b!778109 m!721931))

(assert (=> b!778111 m!721931))

(assert (=> b!777987 d!102195))

(declare-fun b!778114 () Bool)

(declare-fun e!432922 () Bool)

(declare-fun lt!346696 () SeekEntryResult!7966)

(assert (=> b!778114 (= e!432922 (bvsge (x!65199 lt!346696) #b01111111111111111111111111111110))))

(declare-fun b!778115 () Bool)

(declare-fun e!432926 () SeekEntryResult!7966)

(declare-fun e!432925 () SeekEntryResult!7966)

(assert (=> b!778115 (= e!432926 e!432925)))

(declare-fun c!86164 () Bool)

(declare-fun lt!346697 () (_ BitVec 64))

(assert (=> b!778115 (= c!86164 (or (= lt!346697 lt!346630) (= (bvadd lt!346697 lt!346697) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778116 () Bool)

(assert (=> b!778116 (= e!432926 (Intermediate!7966 true (toIndex!0 lt!346630 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778117 () Bool)

(assert (=> b!778117 (= e!432925 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!346630 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!346630 lt!346627 mask!3328))))

(declare-fun b!778118 () Bool)

(assert (=> b!778118 (and (bvsge (index!34233 lt!346696) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346696) (size!20780 lt!346627)))))

(declare-fun e!432923 () Bool)

(assert (=> b!778118 (= e!432923 (= (select (arr!20359 lt!346627) (index!34233 lt!346696)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778119 () Bool)

(assert (=> b!778119 (= e!432925 (Intermediate!7966 false (toIndex!0 lt!346630 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778120 () Bool)

(assert (=> b!778120 (and (bvsge (index!34233 lt!346696) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346696) (size!20780 lt!346627)))))

(declare-fun res!526589 () Bool)

(assert (=> b!778120 (= res!526589 (= (select (arr!20359 lt!346627) (index!34233 lt!346696)) lt!346630))))

(assert (=> b!778120 (=> res!526589 e!432923)))

(declare-fun e!432924 () Bool)

(assert (=> b!778120 (= e!432924 e!432923)))

(declare-fun b!778121 () Bool)

(assert (=> b!778121 (and (bvsge (index!34233 lt!346696) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346696) (size!20780 lt!346627)))))

(declare-fun res!526591 () Bool)

(assert (=> b!778121 (= res!526591 (= (select (arr!20359 lt!346627) (index!34233 lt!346696)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778121 (=> res!526591 e!432923)))

(declare-fun b!778122 () Bool)

(assert (=> b!778122 (= e!432922 e!432924)))

(declare-fun res!526590 () Bool)

(assert (=> b!778122 (= res!526590 (and ((_ is Intermediate!7966) lt!346696) (not (undefined!8778 lt!346696)) (bvslt (x!65199 lt!346696) #b01111111111111111111111111111110) (bvsge (x!65199 lt!346696) #b00000000000000000000000000000000) (bvsge (x!65199 lt!346696) #b00000000000000000000000000000000)))))

(assert (=> b!778122 (=> (not res!526590) (not e!432924))))

(declare-fun d!102199 () Bool)

(assert (=> d!102199 e!432922))

(declare-fun c!86165 () Bool)

(assert (=> d!102199 (= c!86165 (and ((_ is Intermediate!7966) lt!346696) (undefined!8778 lt!346696)))))

(assert (=> d!102199 (= lt!346696 e!432926)))

(declare-fun c!86166 () Bool)

(assert (=> d!102199 (= c!86166 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102199 (= lt!346697 (select (arr!20359 lt!346627) (toIndex!0 lt!346630 mask!3328)))))

(assert (=> d!102199 (validMask!0 mask!3328)))

(assert (=> d!102199 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346630 mask!3328) lt!346630 lt!346627 mask!3328) lt!346696)))

(assert (= (and d!102199 c!86166) b!778116))

(assert (= (and d!102199 (not c!86166)) b!778115))

(assert (= (and b!778115 c!86164) b!778119))

(assert (= (and b!778115 (not c!86164)) b!778117))

(assert (= (and d!102199 c!86165) b!778114))

(assert (= (and d!102199 (not c!86165)) b!778122))

(assert (= (and b!778122 res!526590) b!778120))

(assert (= (and b!778120 (not res!526589)) b!778121))

(assert (= (and b!778121 (not res!526591)) b!778118))

(assert (=> b!778117 m!721843))

(declare-fun m!721935 () Bool)

(assert (=> b!778117 m!721935))

(assert (=> b!778117 m!721935))

(declare-fun m!721937 () Bool)

(assert (=> b!778117 m!721937))

(declare-fun m!721939 () Bool)

(assert (=> b!778121 m!721939))

(assert (=> d!102199 m!721843))

(declare-fun m!721941 () Bool)

(assert (=> d!102199 m!721941))

(assert (=> d!102199 m!721803))

(assert (=> b!778118 m!721939))

(assert (=> b!778120 m!721939))

(assert (=> b!777987 d!102199))

(declare-fun d!102201 () Bool)

(declare-fun lt!346703 () (_ BitVec 32))

(declare-fun lt!346702 () (_ BitVec 32))

(assert (=> d!102201 (= lt!346703 (bvmul (bvxor lt!346702 (bvlshr lt!346702 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102201 (= lt!346702 ((_ extract 31 0) (bvand (bvxor lt!346630 (bvlshr lt!346630 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102201 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!526592 (let ((h!15523 ((_ extract 31 0) (bvand (bvxor lt!346630 (bvlshr lt!346630 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65202 (bvmul (bvxor h!15523 (bvlshr h!15523 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65202 (bvlshr x!65202 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!526592 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!526592 #b00000000000000000000000000000000))))))

(assert (=> d!102201 (= (toIndex!0 lt!346630 mask!3328) (bvand (bvxor lt!346703 (bvlshr lt!346703 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!777987 d!102201))

(declare-fun bm!35196 () Bool)

(declare-fun call!35199 () Bool)

(declare-fun c!86169 () Bool)

(assert (=> bm!35196 (= call!35199 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86169 (Cons!14410 (select (arr!20359 a!3186) #b00000000000000000000000000000000) Nil!14411) Nil!14411)))))

(declare-fun d!102203 () Bool)

(declare-fun res!526600 () Bool)

(declare-fun e!432938 () Bool)

(assert (=> d!102203 (=> res!526600 e!432938)))

(assert (=> d!102203 (= res!526600 (bvsge #b00000000000000000000000000000000 (size!20780 a!3186)))))

(assert (=> d!102203 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14411) e!432938)))

(declare-fun b!778133 () Bool)

(declare-fun e!432937 () Bool)

(assert (=> b!778133 (= e!432937 call!35199)))

(declare-fun b!778134 () Bool)

(declare-fun e!432936 () Bool)

(assert (=> b!778134 (= e!432938 e!432936)))

(declare-fun res!526601 () Bool)

(assert (=> b!778134 (=> (not res!526601) (not e!432936))))

(declare-fun e!432935 () Bool)

(assert (=> b!778134 (= res!526601 (not e!432935))))

(declare-fun res!526599 () Bool)

(assert (=> b!778134 (=> (not res!526599) (not e!432935))))

(assert (=> b!778134 (= res!526599 (validKeyInArray!0 (select (arr!20359 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778135 () Bool)

(declare-fun contains!4100 (List!14414 (_ BitVec 64)) Bool)

(assert (=> b!778135 (= e!432935 (contains!4100 Nil!14411 (select (arr!20359 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778136 () Bool)

(assert (=> b!778136 (= e!432936 e!432937)))

(assert (=> b!778136 (= c!86169 (validKeyInArray!0 (select (arr!20359 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778137 () Bool)

(assert (=> b!778137 (= e!432937 call!35199)))

(assert (= (and d!102203 (not res!526600)) b!778134))

(assert (= (and b!778134 res!526599) b!778135))

(assert (= (and b!778134 res!526601) b!778136))

(assert (= (and b!778136 c!86169) b!778137))

(assert (= (and b!778136 (not c!86169)) b!778133))

(assert (= (or b!778137 b!778133) bm!35196))

(declare-fun m!721943 () Bool)

(assert (=> bm!35196 m!721943))

(declare-fun m!721945 () Bool)

(assert (=> bm!35196 m!721945))

(assert (=> b!778134 m!721943))

(assert (=> b!778134 m!721943))

(declare-fun m!721947 () Bool)

(assert (=> b!778134 m!721947))

(assert (=> b!778135 m!721943))

(assert (=> b!778135 m!721943))

(declare-fun m!721949 () Bool)

(assert (=> b!778135 m!721949))

(assert (=> b!778136 m!721943))

(assert (=> b!778136 m!721943))

(assert (=> b!778136 m!721947))

(assert (=> b!777981 d!102203))

(declare-fun bm!35197 () Bool)

(declare-fun call!35200 () Bool)

(assert (=> bm!35197 (= call!35200 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!102205 () Bool)

(declare-fun res!526602 () Bool)

(declare-fun e!432944 () Bool)

(assert (=> d!102205 (=> res!526602 e!432944)))

(assert (=> d!102205 (= res!526602 (bvsge #b00000000000000000000000000000000 (size!20780 a!3186)))))

(assert (=> d!102205 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!432944)))

(declare-fun b!778146 () Bool)

(declare-fun e!432943 () Bool)

(assert (=> b!778146 (= e!432943 call!35200)))

(declare-fun b!778147 () Bool)

(declare-fun e!432945 () Bool)

(assert (=> b!778147 (= e!432945 e!432943)))

(declare-fun lt!346708 () (_ BitVec 64))

(assert (=> b!778147 (= lt!346708 (select (arr!20359 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!346710 () Unit!26826)

(assert (=> b!778147 (= lt!346710 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346708 #b00000000000000000000000000000000))))

(assert (=> b!778147 (arrayContainsKey!0 a!3186 lt!346708 #b00000000000000000000000000000000)))

(declare-fun lt!346709 () Unit!26826)

(assert (=> b!778147 (= lt!346709 lt!346710)))

(declare-fun res!526603 () Bool)

(assert (=> b!778147 (= res!526603 (= (seekEntryOrOpen!0 (select (arr!20359 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7966 #b00000000000000000000000000000000)))))

(assert (=> b!778147 (=> (not res!526603) (not e!432943))))

(declare-fun b!778148 () Bool)

(assert (=> b!778148 (= e!432945 call!35200)))

(declare-fun b!778149 () Bool)

(assert (=> b!778149 (= e!432944 e!432945)))

(declare-fun c!86174 () Bool)

(assert (=> b!778149 (= c!86174 (validKeyInArray!0 (select (arr!20359 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102205 (not res!526602)) b!778149))

(assert (= (and b!778149 c!86174) b!778147))

(assert (= (and b!778149 (not c!86174)) b!778148))

(assert (= (and b!778147 res!526603) b!778146))

(assert (= (or b!778146 b!778148) bm!35197))

(declare-fun m!721951 () Bool)

(assert (=> bm!35197 m!721951))

(assert (=> b!778147 m!721943))

(declare-fun m!721953 () Bool)

(assert (=> b!778147 m!721953))

(declare-fun m!721955 () Bool)

(assert (=> b!778147 m!721955))

(assert (=> b!778147 m!721943))

(declare-fun m!721957 () Bool)

(assert (=> b!778147 m!721957))

(assert (=> b!778149 m!721943))

(assert (=> b!778149 m!721943))

(assert (=> b!778149 m!721947))

(assert (=> b!777970 d!102205))

(declare-fun b!778208 () Bool)

(declare-fun e!432978 () SeekEntryResult!7966)

(declare-fun e!432979 () SeekEntryResult!7966)

(assert (=> b!778208 (= e!432978 e!432979)))

(declare-fun lt!346729 () (_ BitVec 64))

(declare-fun c!86196 () Bool)

(assert (=> b!778208 (= c!86196 (= lt!346729 (select (arr!20359 a!3186) j!159)))))

(declare-fun b!778209 () Bool)

(declare-fun c!86195 () Bool)

(assert (=> b!778209 (= c!86195 (= lt!346729 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432980 () SeekEntryResult!7966)

(assert (=> b!778209 (= e!432979 e!432980)))

(declare-fun b!778210 () Bool)

(assert (=> b!778210 (= e!432980 (MissingVacant!7966 resIntermediateIndex!5))))

(declare-fun b!778211 () Bool)

(assert (=> b!778211 (= e!432978 Undefined!7966)))

(declare-fun d!102207 () Bool)

(declare-fun lt!346730 () SeekEntryResult!7966)

(assert (=> d!102207 (and (or ((_ is Undefined!7966) lt!346730) (not ((_ is Found!7966) lt!346730)) (and (bvsge (index!34232 lt!346730) #b00000000000000000000000000000000) (bvslt (index!34232 lt!346730) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346730) ((_ is Found!7966) lt!346730) (not ((_ is MissingVacant!7966) lt!346730)) (not (= (index!34234 lt!346730) resIntermediateIndex!5)) (and (bvsge (index!34234 lt!346730) #b00000000000000000000000000000000) (bvslt (index!34234 lt!346730) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346730) (ite ((_ is Found!7966) lt!346730) (= (select (arr!20359 a!3186) (index!34232 lt!346730)) (select (arr!20359 a!3186) j!159)) (and ((_ is MissingVacant!7966) lt!346730) (= (index!34234 lt!346730) resIntermediateIndex!5) (= (select (arr!20359 a!3186) (index!34234 lt!346730)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102207 (= lt!346730 e!432978)))

(declare-fun c!86197 () Bool)

(assert (=> d!102207 (= c!86197 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102207 (= lt!346729 (select (arr!20359 a!3186) index!1321))))

(assert (=> d!102207 (validMask!0 mask!3328)))

(assert (=> d!102207 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346730)))

(declare-fun b!778212 () Bool)

(assert (=> b!778212 (= e!432980 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778213 () Bool)

(assert (=> b!778213 (= e!432979 (Found!7966 index!1321))))

(assert (= (and d!102207 c!86197) b!778211))

(assert (= (and d!102207 (not c!86197)) b!778208))

(assert (= (and b!778208 c!86196) b!778213))

(assert (= (and b!778208 (not c!86196)) b!778209))

(assert (= (and b!778209 c!86195) b!778210))

(assert (= (and b!778209 (not c!86195)) b!778212))

(declare-fun m!721975 () Bool)

(assert (=> d!102207 m!721975))

(declare-fun m!721977 () Bool)

(assert (=> d!102207 m!721977))

(assert (=> d!102207 m!721909))

(assert (=> d!102207 m!721803))

(assert (=> b!778212 m!721903))

(assert (=> b!778212 m!721903))

(assert (=> b!778212 m!721809))

(declare-fun m!721979 () Bool)

(assert (=> b!778212 m!721979))

(assert (=> b!777980 d!102207))

(assert (=> b!777979 d!102207))

(declare-fun d!102217 () Bool)

(declare-fun lt!346761 () SeekEntryResult!7966)

(assert (=> d!102217 (and (or ((_ is Undefined!7966) lt!346761) (not ((_ is Found!7966) lt!346761)) (and (bvsge (index!34232 lt!346761) #b00000000000000000000000000000000) (bvslt (index!34232 lt!346761) (size!20780 lt!346627)))) (or ((_ is Undefined!7966) lt!346761) ((_ is Found!7966) lt!346761) (not ((_ is MissingZero!7966) lt!346761)) (and (bvsge (index!34231 lt!346761) #b00000000000000000000000000000000) (bvslt (index!34231 lt!346761) (size!20780 lt!346627)))) (or ((_ is Undefined!7966) lt!346761) ((_ is Found!7966) lt!346761) ((_ is MissingZero!7966) lt!346761) (not ((_ is MissingVacant!7966) lt!346761)) (and (bvsge (index!34234 lt!346761) #b00000000000000000000000000000000) (bvslt (index!34234 lt!346761) (size!20780 lt!346627)))) (or ((_ is Undefined!7966) lt!346761) (ite ((_ is Found!7966) lt!346761) (= (select (arr!20359 lt!346627) (index!34232 lt!346761)) lt!346630) (ite ((_ is MissingZero!7966) lt!346761) (= (select (arr!20359 lt!346627) (index!34231 lt!346761)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7966) lt!346761) (= (select (arr!20359 lt!346627) (index!34234 lt!346761)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433020 () SeekEntryResult!7966)

(assert (=> d!102217 (= lt!346761 e!433020)))

(declare-fun c!86232 () Bool)

(declare-fun lt!346762 () SeekEntryResult!7966)

(assert (=> d!102217 (= c!86232 (and ((_ is Intermediate!7966) lt!346762) (undefined!8778 lt!346762)))))

(assert (=> d!102217 (= lt!346762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346630 mask!3328) lt!346630 lt!346627 mask!3328))))

(assert (=> d!102217 (validMask!0 mask!3328)))

(assert (=> d!102217 (= (seekEntryOrOpen!0 lt!346630 lt!346627 mask!3328) lt!346761)))

(declare-fun b!778289 () Bool)

(declare-fun e!433022 () SeekEntryResult!7966)

(assert (=> b!778289 (= e!433020 e!433022)))

(declare-fun lt!346760 () (_ BitVec 64))

(assert (=> b!778289 (= lt!346760 (select (arr!20359 lt!346627) (index!34233 lt!346762)))))

(declare-fun c!86231 () Bool)

(assert (=> b!778289 (= c!86231 (= lt!346760 lt!346630))))

(declare-fun b!778290 () Bool)

(declare-fun e!433021 () SeekEntryResult!7966)

(assert (=> b!778290 (= e!433021 (MissingZero!7966 (index!34233 lt!346762)))))

(declare-fun b!778291 () Bool)

(assert (=> b!778291 (= e!433022 (Found!7966 (index!34233 lt!346762)))))

(declare-fun b!778292 () Bool)

(assert (=> b!778292 (= e!433021 (seekKeyOrZeroReturnVacant!0 (x!65199 lt!346762) (index!34233 lt!346762) (index!34233 lt!346762) lt!346630 lt!346627 mask!3328))))

(declare-fun b!778293 () Bool)

(assert (=> b!778293 (= e!433020 Undefined!7966)))

(declare-fun b!778294 () Bool)

(declare-fun c!86233 () Bool)

(assert (=> b!778294 (= c!86233 (= lt!346760 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778294 (= e!433022 e!433021)))

(assert (= (and d!102217 c!86232) b!778293))

(assert (= (and d!102217 (not c!86232)) b!778289))

(assert (= (and b!778289 c!86231) b!778291))

(assert (= (and b!778289 (not c!86231)) b!778294))

(assert (= (and b!778294 c!86233) b!778290))

(assert (= (and b!778294 (not c!86233)) b!778292))

(assert (=> d!102217 m!721843))

(assert (=> d!102217 m!721845))

(declare-fun m!722023 () Bool)

(assert (=> d!102217 m!722023))

(assert (=> d!102217 m!721843))

(declare-fun m!722025 () Bool)

(assert (=> d!102217 m!722025))

(assert (=> d!102217 m!721803))

(declare-fun m!722027 () Bool)

(assert (=> d!102217 m!722027))

(declare-fun m!722029 () Bool)

(assert (=> b!778289 m!722029))

(declare-fun m!722031 () Bool)

(assert (=> b!778292 m!722031))

(assert (=> b!777973 d!102217))

(declare-fun d!102235 () Bool)

(declare-fun res!526643 () Bool)

(declare-fun e!433035 () Bool)

(assert (=> d!102235 (=> res!526643 e!433035)))

(assert (=> d!102235 (= res!526643 (= (select (arr!20359 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102235 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!433035)))

(declare-fun b!778309 () Bool)

(declare-fun e!433036 () Bool)

(assert (=> b!778309 (= e!433035 e!433036)))

(declare-fun res!526644 () Bool)

(assert (=> b!778309 (=> (not res!526644) (not e!433036))))

(assert (=> b!778309 (= res!526644 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20780 a!3186)))))

(declare-fun b!778310 () Bool)

(assert (=> b!778310 (= e!433036 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102235 (not res!526643)) b!778309))

(assert (= (and b!778309 res!526644) b!778310))

(assert (=> d!102235 m!721943))

(declare-fun m!722033 () Bool)

(assert (=> b!778310 m!722033))

(assert (=> b!777984 d!102235))

(declare-fun d!102237 () Bool)

(assert (=> d!102237 (= (validKeyInArray!0 (select (arr!20359 a!3186) j!159)) (and (not (= (select (arr!20359 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20359 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!777983 d!102237))

(declare-fun d!102243 () Bool)

(assert (=> d!102243 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67290 d!102243))

(declare-fun d!102257 () Bool)

(assert (=> d!102257 (= (array_inv!16133 a!3186) (bvsge (size!20780 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67290 d!102257))

(declare-fun b!778352 () Bool)

(declare-fun e!433063 () Bool)

(declare-fun lt!346780 () SeekEntryResult!7966)

(assert (=> b!778352 (= e!433063 (bvsge (x!65199 lt!346780) #b01111111111111111111111111111110))))

(declare-fun b!778353 () Bool)

(declare-fun e!433067 () SeekEntryResult!7966)

(declare-fun e!433066 () SeekEntryResult!7966)

(assert (=> b!778353 (= e!433067 e!433066)))

(declare-fun c!86249 () Bool)

(declare-fun lt!346781 () (_ BitVec 64))

(assert (=> b!778353 (= c!86249 (or (= lt!346781 (select (arr!20359 a!3186) j!159)) (= (bvadd lt!346781 lt!346781) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778354 () Bool)

(assert (=> b!778354 (= e!433067 (Intermediate!7966 true (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778355 () Bool)

(assert (=> b!778355 (= e!433066 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20359 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778356 () Bool)

(assert (=> b!778356 (and (bvsge (index!34233 lt!346780) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346780) (size!20780 a!3186)))))

(declare-fun e!433064 () Bool)

(assert (=> b!778356 (= e!433064 (= (select (arr!20359 a!3186) (index!34233 lt!346780)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778357 () Bool)

(assert (=> b!778357 (= e!433066 (Intermediate!7966 false (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778358 () Bool)

(assert (=> b!778358 (and (bvsge (index!34233 lt!346780) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346780) (size!20780 a!3186)))))

(declare-fun res!526660 () Bool)

(assert (=> b!778358 (= res!526660 (= (select (arr!20359 a!3186) (index!34233 lt!346780)) (select (arr!20359 a!3186) j!159)))))

(assert (=> b!778358 (=> res!526660 e!433064)))

(declare-fun e!433065 () Bool)

(assert (=> b!778358 (= e!433065 e!433064)))

(declare-fun b!778359 () Bool)

(assert (=> b!778359 (and (bvsge (index!34233 lt!346780) #b00000000000000000000000000000000) (bvslt (index!34233 lt!346780) (size!20780 a!3186)))))

(declare-fun res!526662 () Bool)

(assert (=> b!778359 (= res!526662 (= (select (arr!20359 a!3186) (index!34233 lt!346780)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778359 (=> res!526662 e!433064)))

(declare-fun b!778360 () Bool)

(assert (=> b!778360 (= e!433063 e!433065)))

(declare-fun res!526661 () Bool)

(assert (=> b!778360 (= res!526661 (and ((_ is Intermediate!7966) lt!346780) (not (undefined!8778 lt!346780)) (bvslt (x!65199 lt!346780) #b01111111111111111111111111111110) (bvsge (x!65199 lt!346780) #b00000000000000000000000000000000) (bvsge (x!65199 lt!346780) #b00000000000000000000000000000000)))))

(assert (=> b!778360 (=> (not res!526661) (not e!433065))))

(declare-fun d!102259 () Bool)

(assert (=> d!102259 e!433063))

(declare-fun c!86250 () Bool)

(assert (=> d!102259 (= c!86250 (and ((_ is Intermediate!7966) lt!346780) (undefined!8778 lt!346780)))))

(assert (=> d!102259 (= lt!346780 e!433067)))

(declare-fun c!86251 () Bool)

(assert (=> d!102259 (= c!86251 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102259 (= lt!346781 (select (arr!20359 a!3186) (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328)))))

(assert (=> d!102259 (validMask!0 mask!3328)))

(assert (=> d!102259 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346780)))

(assert (= (and d!102259 c!86251) b!778354))

(assert (= (and d!102259 (not c!86251)) b!778353))

(assert (= (and b!778353 c!86249) b!778357))

(assert (= (and b!778353 (not c!86249)) b!778355))

(assert (= (and d!102259 c!86250) b!778352))

(assert (= (and d!102259 (not c!86250)) b!778360))

(assert (= (and b!778360 res!526661) b!778358))

(assert (= (and b!778358 (not res!526660)) b!778359))

(assert (= (and b!778359 (not res!526662)) b!778356))

(assert (=> b!778355 m!721811))

(declare-fun m!722081 () Bool)

(assert (=> b!778355 m!722081))

(assert (=> b!778355 m!722081))

(assert (=> b!778355 m!721809))

(declare-fun m!722083 () Bool)

(assert (=> b!778355 m!722083))

(declare-fun m!722085 () Bool)

(assert (=> b!778359 m!722085))

(assert (=> d!102259 m!721811))

(declare-fun m!722087 () Bool)

(assert (=> d!102259 m!722087))

(assert (=> d!102259 m!721803))

(assert (=> b!778356 m!722085))

(assert (=> b!778358 m!722085))

(assert (=> b!777976 d!102259))

(declare-fun d!102261 () Bool)

(declare-fun lt!346787 () (_ BitVec 32))

(declare-fun lt!346786 () (_ BitVec 32))

(assert (=> d!102261 (= lt!346787 (bvmul (bvxor lt!346786 (bvlshr lt!346786 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102261 (= lt!346786 ((_ extract 31 0) (bvand (bvxor (select (arr!20359 a!3186) j!159) (bvlshr (select (arr!20359 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102261 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!526592 (let ((h!15523 ((_ extract 31 0) (bvand (bvxor (select (arr!20359 a!3186) j!159) (bvlshr (select (arr!20359 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65202 (bvmul (bvxor h!15523 (bvlshr h!15523 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65202 (bvlshr x!65202 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!526592 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!526592 #b00000000000000000000000000000000))))))

(assert (=> d!102261 (= (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) (bvand (bvxor lt!346787 (bvlshr lt!346787 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!777976 d!102261))

(declare-fun b!778373 () Bool)

(declare-fun e!433074 () SeekEntryResult!7966)

(declare-fun e!433075 () SeekEntryResult!7966)

(assert (=> b!778373 (= e!433074 e!433075)))

(declare-fun c!86259 () Bool)

(declare-fun lt!346788 () (_ BitVec 64))

(assert (=> b!778373 (= c!86259 (= lt!346788 (select (arr!20359 a!3186) j!159)))))

(declare-fun b!778374 () Bool)

(declare-fun c!86258 () Bool)

(assert (=> b!778374 (= c!86258 (= lt!346788 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433076 () SeekEntryResult!7966)

(assert (=> b!778374 (= e!433075 e!433076)))

(declare-fun b!778375 () Bool)

(assert (=> b!778375 (= e!433076 (MissingVacant!7966 resIntermediateIndex!5))))

(declare-fun b!778376 () Bool)

(assert (=> b!778376 (= e!433074 Undefined!7966)))

(declare-fun lt!346789 () SeekEntryResult!7966)

(declare-fun d!102263 () Bool)

(assert (=> d!102263 (and (or ((_ is Undefined!7966) lt!346789) (not ((_ is Found!7966) lt!346789)) (and (bvsge (index!34232 lt!346789) #b00000000000000000000000000000000) (bvslt (index!34232 lt!346789) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346789) ((_ is Found!7966) lt!346789) (not ((_ is MissingVacant!7966) lt!346789)) (not (= (index!34234 lt!346789) resIntermediateIndex!5)) (and (bvsge (index!34234 lt!346789) #b00000000000000000000000000000000) (bvslt (index!34234 lt!346789) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346789) (ite ((_ is Found!7966) lt!346789) (= (select (arr!20359 a!3186) (index!34232 lt!346789)) (select (arr!20359 a!3186) j!159)) (and ((_ is MissingVacant!7966) lt!346789) (= (index!34234 lt!346789) resIntermediateIndex!5) (= (select (arr!20359 a!3186) (index!34234 lt!346789)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102263 (= lt!346789 e!433074)))

(declare-fun c!86260 () Bool)

(assert (=> d!102263 (= c!86260 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102263 (= lt!346788 (select (arr!20359 a!3186) resIntermediateIndex!5))))

(assert (=> d!102263 (validMask!0 mask!3328)))

(assert (=> d!102263 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346789)))

(declare-fun b!778377 () Bool)

(assert (=> b!778377 (= e!433076 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20359 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778378 () Bool)

(assert (=> b!778378 (= e!433075 (Found!7966 resIntermediateIndex!5))))

(assert (= (and d!102263 c!86260) b!778376))

(assert (= (and d!102263 (not c!86260)) b!778373))

(assert (= (and b!778373 c!86259) b!778378))

(assert (= (and b!778373 (not c!86259)) b!778374))

(assert (= (and b!778374 c!86258) b!778375))

(assert (= (and b!778374 (not c!86258)) b!778377))

(declare-fun m!722089 () Bool)

(assert (=> d!102263 m!722089))

(declare-fun m!722091 () Bool)

(assert (=> d!102263 m!722091))

(assert (=> d!102263 m!721837))

(assert (=> d!102263 m!721803))

(declare-fun m!722093 () Bool)

(assert (=> b!778377 m!722093))

(assert (=> b!778377 m!722093))

(assert (=> b!778377 m!721809))

(declare-fun m!722095 () Bool)

(assert (=> b!778377 m!722095))

(assert (=> b!777975 d!102263))

(declare-fun d!102265 () Bool)

(declare-fun lt!346797 () SeekEntryResult!7966)

(assert (=> d!102265 (and (or ((_ is Undefined!7966) lt!346797) (not ((_ is Found!7966) lt!346797)) (and (bvsge (index!34232 lt!346797) #b00000000000000000000000000000000) (bvslt (index!34232 lt!346797) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346797) ((_ is Found!7966) lt!346797) (not ((_ is MissingZero!7966) lt!346797)) (and (bvsge (index!34231 lt!346797) #b00000000000000000000000000000000) (bvslt (index!34231 lt!346797) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346797) ((_ is Found!7966) lt!346797) ((_ is MissingZero!7966) lt!346797) (not ((_ is MissingVacant!7966) lt!346797)) (and (bvsge (index!34234 lt!346797) #b00000000000000000000000000000000) (bvslt (index!34234 lt!346797) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346797) (ite ((_ is Found!7966) lt!346797) (= (select (arr!20359 a!3186) (index!34232 lt!346797)) (select (arr!20359 a!3186) j!159)) (ite ((_ is MissingZero!7966) lt!346797) (= (select (arr!20359 a!3186) (index!34231 lt!346797)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7966) lt!346797) (= (select (arr!20359 a!3186) (index!34234 lt!346797)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433083 () SeekEntryResult!7966)

(assert (=> d!102265 (= lt!346797 e!433083)))

(declare-fun c!86264 () Bool)

(declare-fun lt!346798 () SeekEntryResult!7966)

(assert (=> d!102265 (= c!86264 (and ((_ is Intermediate!7966) lt!346798) (undefined!8778 lt!346798)))))

(assert (=> d!102265 (= lt!346798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20359 a!3186) j!159) mask!3328) (select (arr!20359 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102265 (validMask!0 mask!3328)))

(assert (=> d!102265 (= (seekEntryOrOpen!0 (select (arr!20359 a!3186) j!159) a!3186 mask!3328) lt!346797)))

(declare-fun b!778387 () Bool)

(declare-fun e!433085 () SeekEntryResult!7966)

(assert (=> b!778387 (= e!433083 e!433085)))

(declare-fun lt!346796 () (_ BitVec 64))

(assert (=> b!778387 (= lt!346796 (select (arr!20359 a!3186) (index!34233 lt!346798)))))

(declare-fun c!86263 () Bool)

(assert (=> b!778387 (= c!86263 (= lt!346796 (select (arr!20359 a!3186) j!159)))))

(declare-fun b!778388 () Bool)

(declare-fun e!433084 () SeekEntryResult!7966)

(assert (=> b!778388 (= e!433084 (MissingZero!7966 (index!34233 lt!346798)))))

(declare-fun b!778389 () Bool)

(assert (=> b!778389 (= e!433085 (Found!7966 (index!34233 lt!346798)))))

(declare-fun b!778390 () Bool)

(assert (=> b!778390 (= e!433084 (seekKeyOrZeroReturnVacant!0 (x!65199 lt!346798) (index!34233 lt!346798) (index!34233 lt!346798) (select (arr!20359 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778391 () Bool)

(assert (=> b!778391 (= e!433083 Undefined!7966)))

(declare-fun b!778392 () Bool)

(declare-fun c!86265 () Bool)

(assert (=> b!778392 (= c!86265 (= lt!346796 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778392 (= e!433085 e!433084)))

(assert (= (and d!102265 c!86264) b!778391))

(assert (= (and d!102265 (not c!86264)) b!778387))

(assert (= (and b!778387 c!86263) b!778389))

(assert (= (and b!778387 (not c!86263)) b!778392))

(assert (= (and b!778392 c!86265) b!778388))

(assert (= (and b!778392 (not c!86265)) b!778390))

(assert (=> d!102265 m!721811))

(assert (=> d!102265 m!721809))

(assert (=> d!102265 m!721813))

(declare-fun m!722097 () Bool)

(assert (=> d!102265 m!722097))

(assert (=> d!102265 m!721809))

(assert (=> d!102265 m!721811))

(declare-fun m!722099 () Bool)

(assert (=> d!102265 m!722099))

(assert (=> d!102265 m!721803))

(declare-fun m!722101 () Bool)

(assert (=> d!102265 m!722101))

(declare-fun m!722103 () Bool)

(assert (=> b!778387 m!722103))

(assert (=> b!778390 m!721809))

(declare-fun m!722105 () Bool)

(assert (=> b!778390 m!722105))

(assert (=> b!777986 d!102265))

(declare-fun d!102267 () Bool)

(declare-fun lt!346800 () SeekEntryResult!7966)

(assert (=> d!102267 (and (or ((_ is Undefined!7966) lt!346800) (not ((_ is Found!7966) lt!346800)) (and (bvsge (index!34232 lt!346800) #b00000000000000000000000000000000) (bvslt (index!34232 lt!346800) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346800) ((_ is Found!7966) lt!346800) (not ((_ is MissingZero!7966) lt!346800)) (and (bvsge (index!34231 lt!346800) #b00000000000000000000000000000000) (bvslt (index!34231 lt!346800) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346800) ((_ is Found!7966) lt!346800) ((_ is MissingZero!7966) lt!346800) (not ((_ is MissingVacant!7966) lt!346800)) (and (bvsge (index!34234 lt!346800) #b00000000000000000000000000000000) (bvslt (index!34234 lt!346800) (size!20780 a!3186)))) (or ((_ is Undefined!7966) lt!346800) (ite ((_ is Found!7966) lt!346800) (= (select (arr!20359 a!3186) (index!34232 lt!346800)) k0!2102) (ite ((_ is MissingZero!7966) lt!346800) (= (select (arr!20359 a!3186) (index!34231 lt!346800)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7966) lt!346800) (= (select (arr!20359 a!3186) (index!34234 lt!346800)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433086 () SeekEntryResult!7966)

(assert (=> d!102267 (= lt!346800 e!433086)))

(declare-fun c!86267 () Bool)

(declare-fun lt!346801 () SeekEntryResult!7966)

(assert (=> d!102267 (= c!86267 (and ((_ is Intermediate!7966) lt!346801) (undefined!8778 lt!346801)))))

(assert (=> d!102267 (= lt!346801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102267 (validMask!0 mask!3328)))

(assert (=> d!102267 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!346800)))

(declare-fun b!778393 () Bool)

(declare-fun e!433088 () SeekEntryResult!7966)

(assert (=> b!778393 (= e!433086 e!433088)))

(declare-fun lt!346799 () (_ BitVec 64))

(assert (=> b!778393 (= lt!346799 (select (arr!20359 a!3186) (index!34233 lt!346801)))))

(declare-fun c!86266 () Bool)

(assert (=> b!778393 (= c!86266 (= lt!346799 k0!2102))))

(declare-fun b!778394 () Bool)

(declare-fun e!433087 () SeekEntryResult!7966)

(assert (=> b!778394 (= e!433087 (MissingZero!7966 (index!34233 lt!346801)))))

(declare-fun b!778395 () Bool)

(assert (=> b!778395 (= e!433088 (Found!7966 (index!34233 lt!346801)))))

(declare-fun b!778396 () Bool)

(assert (=> b!778396 (= e!433087 (seekKeyOrZeroReturnVacant!0 (x!65199 lt!346801) (index!34233 lt!346801) (index!34233 lt!346801) k0!2102 a!3186 mask!3328))))

(declare-fun b!778397 () Bool)

(assert (=> b!778397 (= e!433086 Undefined!7966)))

(declare-fun b!778398 () Bool)

(declare-fun c!86268 () Bool)

(assert (=> b!778398 (= c!86268 (= lt!346799 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778398 (= e!433088 e!433087)))

(assert (= (and d!102267 c!86267) b!778397))

(assert (= (and d!102267 (not c!86267)) b!778393))

(assert (= (and b!778393 c!86266) b!778395))

(assert (= (and b!778393 (not c!86266)) b!778398))

(assert (= (and b!778398 c!86268) b!778394))

(assert (= (and b!778398 (not c!86268)) b!778396))

(declare-fun m!722107 () Bool)

(assert (=> d!102267 m!722107))

(declare-fun m!722109 () Bool)

(assert (=> d!102267 m!722109))

(declare-fun m!722111 () Bool)

(assert (=> d!102267 m!722111))

(assert (=> d!102267 m!722107))

(declare-fun m!722113 () Bool)

(assert (=> d!102267 m!722113))

(assert (=> d!102267 m!721803))

(declare-fun m!722115 () Bool)

(assert (=> d!102267 m!722115))

(declare-fun m!722117 () Bool)

(assert (=> b!778393 m!722117))

(declare-fun m!722119 () Bool)

(assert (=> b!778396 m!722119))

(assert (=> b!777985 d!102267))

(declare-fun d!102269 () Bool)

(assert (=> d!102269 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!777974 d!102269))

(check-sat (not bm!35193) (not d!102195) (not d!102189) (not b!778149) (not d!102217) (not b!778136) (not b!778117) (not bm!35197) (not b!778134) (not d!102263) (not b!778355) (not d!102259) (not b!778292) (not b!778396) (not b!778135) (not d!102265) (not b!778147) (not b!778390) (not bm!35196) (not d!102199) (not d!102179) (not d!102267) (not b!778086) (not b!778212) (not b!778069) (not b!778108) (not b!778310) (not b!778084) (not d!102207) (not b!778377))
(check-sat)
