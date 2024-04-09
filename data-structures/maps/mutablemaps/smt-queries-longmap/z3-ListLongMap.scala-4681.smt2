; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65166 () Bool)

(assert start!65166)

(declare-datatypes ((array!41292 0))(
  ( (array!41293 (arr!19756 (Array (_ BitVec 32) (_ BitVec 64))) (size!20177 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41292)

(declare-fun b!735978 () Bool)

(declare-fun e!411770 () Bool)

(declare-fun lt!326377 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7363 0))(
  ( (MissingZero!7363 (index!31819 (_ BitVec 32))) (Found!7363 (index!31820 (_ BitVec 32))) (Intermediate!7363 (undefined!8175 Bool) (index!31821 (_ BitVec 32)) (x!62850 (_ BitVec 32))) (Undefined!7363) (MissingVacant!7363 (index!31822 (_ BitVec 32))) )
))
(declare-fun lt!326373 () SeekEntryResult!7363)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41292 (_ BitVec 32)) SeekEntryResult!7363)

(assert (=> b!735978 (= e!411770 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326377 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326373)))))

(declare-fun b!735979 () Bool)

(declare-datatypes ((Unit!25070 0))(
  ( (Unit!25071) )
))
(declare-fun e!411771 () Unit!25070)

(declare-fun Unit!25072 () Unit!25070)

(assert (=> b!735979 (= e!411771 Unit!25072)))

(assert (=> b!735979 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326377 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326373)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!411764 () Bool)

(declare-fun b!735980 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41292 (_ BitVec 32)) SeekEntryResult!7363)

(assert (=> b!735980 (= e!411764 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) (Found!7363 j!159)))))

(declare-fun b!735981 () Bool)

(declare-fun res!494694 () Bool)

(declare-fun e!411762 () Bool)

(assert (=> b!735981 (=> (not res!494694) (not e!411762))))

(assert (=> b!735981 (= res!494694 e!411764)))

(declare-fun c!81026 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735981 (= c!81026 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735982 () Bool)

(declare-fun res!494698 () Bool)

(declare-fun e!411761 () Bool)

(assert (=> b!735982 (=> res!494698 e!411761)))

(assert (=> b!735982 (= res!494698 e!411770)))

(declare-fun c!81025 () Bool)

(declare-fun lt!326372 () Bool)

(assert (=> b!735982 (= c!81025 lt!326372)))

(declare-fun b!735983 () Bool)

(declare-fun res!494689 () Bool)

(declare-fun e!411766 () Bool)

(assert (=> b!735983 (=> (not res!494689) (not e!411766))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735983 (= res!494689 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735984 () Bool)

(declare-fun e!411763 () Bool)

(assert (=> b!735984 (= e!411766 e!411763)))

(declare-fun res!494700 () Bool)

(assert (=> b!735984 (=> (not res!494700) (not e!411763))))

(declare-fun lt!326375 () SeekEntryResult!7363)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735984 (= res!494700 (or (= lt!326375 (MissingZero!7363 i!1173)) (= lt!326375 (MissingVacant!7363 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41292 (_ BitVec 32)) SeekEntryResult!7363)

(assert (=> b!735984 (= lt!326375 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!735985 () Bool)

(assert (=> b!735985 (= e!411763 e!411762)))

(declare-fun res!494705 () Bool)

(assert (=> b!735985 (=> (not res!494705) (not e!411762))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735985 (= res!494705 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19756 a!3186) j!159) mask!3328) (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326373))))

(assert (=> b!735985 (= lt!326373 (Intermediate!7363 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735986 () Bool)

(declare-fun res!494690 () Bool)

(assert (=> b!735986 (=> (not res!494690) (not e!411766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735986 (= res!494690 (validKeyInArray!0 k0!2102))))

(declare-fun res!494693 () Bool)

(assert (=> start!65166 (=> (not res!494693) (not e!411766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65166 (= res!494693 (validMask!0 mask!3328))))

(assert (=> start!65166 e!411766))

(assert (=> start!65166 true))

(declare-fun array_inv!15530 (array!41292) Bool)

(assert (=> start!65166 (array_inv!15530 a!3186)))

(declare-fun e!411765 () Bool)

(declare-fun b!735987 () Bool)

(declare-fun lt!326371 () SeekEntryResult!7363)

(assert (=> b!735987 (= e!411765 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326371))))

(declare-fun b!735988 () Bool)

(declare-fun res!494703 () Bool)

(assert (=> b!735988 (=> (not res!494703) (not e!411766))))

(assert (=> b!735988 (= res!494703 (and (= (size!20177 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20177 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20177 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735989 () Bool)

(declare-fun Unit!25073 () Unit!25070)

(assert (=> b!735989 (= e!411771 Unit!25073)))

(declare-fun lt!326374 () SeekEntryResult!7363)

(assert (=> b!735989 (= lt!326374 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19756 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326365 () SeekEntryResult!7363)

(assert (=> b!735989 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326377 resIntermediateIndex!5 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326365)))

(declare-fun b!735990 () Bool)

(assert (=> b!735990 (= e!411761 true)))

(declare-fun lt!326367 () array!41292)

(declare-fun lt!326376 () (_ BitVec 64))

(declare-fun lt!326370 () SeekEntryResult!7363)

(assert (=> b!735990 (= lt!326370 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326377 lt!326376 lt!326367 mask!3328))))

(declare-fun b!735991 () Bool)

(declare-fun e!411769 () Bool)

(assert (=> b!735991 (= e!411762 e!411769)))

(declare-fun res!494704 () Bool)

(assert (=> b!735991 (=> (not res!494704) (not e!411769))))

(declare-fun lt!326378 () SeekEntryResult!7363)

(declare-fun lt!326369 () SeekEntryResult!7363)

(assert (=> b!735991 (= res!494704 (= lt!326378 lt!326369))))

(assert (=> b!735991 (= lt!326369 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326376 lt!326367 mask!3328))))

(assert (=> b!735991 (= lt!326378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326376 mask!3328) lt!326376 lt!326367 mask!3328))))

(assert (=> b!735991 (= lt!326376 (select (store (arr!19756 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!735991 (= lt!326367 (array!41293 (store (arr!19756 a!3186) i!1173 k0!2102) (size!20177 a!3186)))))

(declare-fun b!735992 () Bool)

(declare-fun res!494692 () Bool)

(assert (=> b!735992 (=> (not res!494692) (not e!411763))))

(assert (=> b!735992 (= res!494692 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20177 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20177 a!3186))))))

(declare-fun b!735993 () Bool)

(assert (=> b!735993 (= e!411770 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326377 resIntermediateIndex!5 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326365)))))

(declare-fun b!735994 () Bool)

(declare-fun res!494695 () Bool)

(assert (=> b!735994 (=> (not res!494695) (not e!411763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41292 (_ BitVec 32)) Bool)

(assert (=> b!735994 (= res!494695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735995 () Bool)

(declare-fun res!494702 () Bool)

(assert (=> b!735995 (=> (not res!494702) (not e!411763))))

(declare-datatypes ((List!13811 0))(
  ( (Nil!13808) (Cons!13807 (h!14879 (_ BitVec 64)) (t!20134 List!13811)) )
))
(declare-fun arrayNoDuplicates!0 (array!41292 (_ BitVec 32) List!13811) Bool)

(assert (=> b!735995 (= res!494702 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13808))))

(declare-fun b!735996 () Bool)

(declare-fun e!411768 () Bool)

(assert (=> b!735996 (= e!411769 (not e!411768))))

(declare-fun res!494697 () Bool)

(assert (=> b!735996 (=> res!494697 e!411768)))

(get-info :version)

(assert (=> b!735996 (= res!494697 (or (not ((_ is Intermediate!7363) lt!326369)) (bvsge x!1131 (x!62850 lt!326369))))))

(assert (=> b!735996 (= lt!326365 (Found!7363 j!159))))

(declare-fun e!411760 () Bool)

(assert (=> b!735996 e!411760))

(declare-fun res!494691 () Bool)

(assert (=> b!735996 (=> (not res!494691) (not e!411760))))

(assert (=> b!735996 (= res!494691 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326368 () Unit!25070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25070)

(assert (=> b!735996 (= lt!326368 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735997 () Bool)

(declare-fun res!494696 () Bool)

(assert (=> b!735997 (=> (not res!494696) (not e!411762))))

(assert (=> b!735997 (= res!494696 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19756 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735998 () Bool)

(assert (=> b!735998 (= e!411760 e!411765)))

(declare-fun res!494701 () Bool)

(assert (=> b!735998 (=> (not res!494701) (not e!411765))))

(assert (=> b!735998 (= res!494701 (= (seekEntryOrOpen!0 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326371))))

(assert (=> b!735998 (= lt!326371 (Found!7363 j!159))))

(declare-fun b!735999 () Bool)

(declare-fun res!494699 () Bool)

(assert (=> b!735999 (=> (not res!494699) (not e!411766))))

(assert (=> b!735999 (= res!494699 (validKeyInArray!0 (select (arr!19756 a!3186) j!159)))))

(declare-fun b!736000 () Bool)

(assert (=> b!736000 (= e!411768 e!411761)))

(declare-fun res!494706 () Bool)

(assert (=> b!736000 (=> res!494706 e!411761)))

(assert (=> b!736000 (= res!494706 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326377 #b00000000000000000000000000000000) (bvsge lt!326377 (size!20177 a!3186))))))

(declare-fun lt!326366 () Unit!25070)

(assert (=> b!736000 (= lt!326366 e!411771)))

(declare-fun c!81027 () Bool)

(assert (=> b!736000 (= c!81027 lt!326372)))

(assert (=> b!736000 (= lt!326372 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!736000 (= lt!326377 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!736001 () Bool)

(assert (=> b!736001 (= e!411764 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19756 a!3186) j!159) a!3186 mask!3328) lt!326373))))

(assert (= (and start!65166 res!494693) b!735988))

(assert (= (and b!735988 res!494703) b!735999))

(assert (= (and b!735999 res!494699) b!735986))

(assert (= (and b!735986 res!494690) b!735983))

(assert (= (and b!735983 res!494689) b!735984))

(assert (= (and b!735984 res!494700) b!735994))

(assert (= (and b!735994 res!494695) b!735995))

(assert (= (and b!735995 res!494702) b!735992))

(assert (= (and b!735992 res!494692) b!735985))

(assert (= (and b!735985 res!494705) b!735997))

(assert (= (and b!735997 res!494696) b!735981))

(assert (= (and b!735981 c!81026) b!736001))

(assert (= (and b!735981 (not c!81026)) b!735980))

(assert (= (and b!735981 res!494694) b!735991))

(assert (= (and b!735991 res!494704) b!735996))

(assert (= (and b!735996 res!494691) b!735998))

(assert (= (and b!735998 res!494701) b!735987))

(assert (= (and b!735996 (not res!494697)) b!736000))

(assert (= (and b!736000 c!81027) b!735979))

(assert (= (and b!736000 (not c!81027)) b!735989))

(assert (= (and b!736000 (not res!494706)) b!735982))

(assert (= (and b!735982 c!81025) b!735978))

(assert (= (and b!735982 (not c!81025)) b!735993))

(assert (= (and b!735982 (not res!494698)) b!735990))

(declare-fun m!688291 () Bool)

(assert (=> b!735994 m!688291))

(declare-fun m!688293 () Bool)

(assert (=> b!735987 m!688293))

(assert (=> b!735987 m!688293))

(declare-fun m!688295 () Bool)

(assert (=> b!735987 m!688295))

(assert (=> b!735999 m!688293))

(assert (=> b!735999 m!688293))

(declare-fun m!688297 () Bool)

(assert (=> b!735999 m!688297))

(assert (=> b!735989 m!688293))

(assert (=> b!735989 m!688293))

(declare-fun m!688299 () Bool)

(assert (=> b!735989 m!688299))

(assert (=> b!735989 m!688293))

(declare-fun m!688301 () Bool)

(assert (=> b!735989 m!688301))

(declare-fun m!688303 () Bool)

(assert (=> b!735990 m!688303))

(assert (=> b!735998 m!688293))

(assert (=> b!735998 m!688293))

(declare-fun m!688305 () Bool)

(assert (=> b!735998 m!688305))

(assert (=> b!735993 m!688293))

(assert (=> b!735993 m!688293))

(assert (=> b!735993 m!688301))

(declare-fun m!688307 () Bool)

(assert (=> start!65166 m!688307))

(declare-fun m!688309 () Bool)

(assert (=> start!65166 m!688309))

(assert (=> b!735978 m!688293))

(assert (=> b!735978 m!688293))

(declare-fun m!688311 () Bool)

(assert (=> b!735978 m!688311))

(assert (=> b!735979 m!688293))

(assert (=> b!735979 m!688293))

(assert (=> b!735979 m!688311))

(declare-fun m!688313 () Bool)

(assert (=> b!736000 m!688313))

(declare-fun m!688315 () Bool)

(assert (=> b!735984 m!688315))

(declare-fun m!688317 () Bool)

(assert (=> b!735991 m!688317))

(declare-fun m!688319 () Bool)

(assert (=> b!735991 m!688319))

(declare-fun m!688321 () Bool)

(assert (=> b!735991 m!688321))

(declare-fun m!688323 () Bool)

(assert (=> b!735991 m!688323))

(assert (=> b!735991 m!688323))

(declare-fun m!688325 () Bool)

(assert (=> b!735991 m!688325))

(declare-fun m!688327 () Bool)

(assert (=> b!735995 m!688327))

(assert (=> b!735980 m!688293))

(assert (=> b!735980 m!688293))

(assert (=> b!735980 m!688299))

(declare-fun m!688329 () Bool)

(assert (=> b!735986 m!688329))

(declare-fun m!688331 () Bool)

(assert (=> b!735983 m!688331))

(declare-fun m!688333 () Bool)

(assert (=> b!735997 m!688333))

(assert (=> b!735985 m!688293))

(assert (=> b!735985 m!688293))

(declare-fun m!688335 () Bool)

(assert (=> b!735985 m!688335))

(assert (=> b!735985 m!688335))

(assert (=> b!735985 m!688293))

(declare-fun m!688337 () Bool)

(assert (=> b!735985 m!688337))

(declare-fun m!688339 () Bool)

(assert (=> b!735996 m!688339))

(declare-fun m!688341 () Bool)

(assert (=> b!735996 m!688341))

(assert (=> b!736001 m!688293))

(assert (=> b!736001 m!688293))

(declare-fun m!688343 () Bool)

(assert (=> b!736001 m!688343))

(check-sat (not b!735999) (not b!735989) (not b!736001) (not b!735983) (not b!735985) (not b!735979) (not b!736000) (not b!735993) (not b!735995) (not b!735986) (not b!735998) (not b!735987) (not b!735994) (not b!735990) (not start!65166) (not b!735978) (not b!735984) (not b!735980) (not b!735996) (not b!735991))
(check-sat)
