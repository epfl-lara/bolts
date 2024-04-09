; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66492 () Bool)

(assert start!66492)

(declare-fun b!765889 () Bool)

(declare-fun e!426540 () Bool)

(assert (=> b!765889 (= e!426540 (not true))))

(declare-fun e!426542 () Bool)

(assert (=> b!765889 e!426542))

(declare-fun res!518240 () Bool)

(assert (=> b!765889 (=> (not res!518240) (not e!426542))))

(declare-datatypes ((array!42224 0))(
  ( (array!42225 (arr!20213 (Array (_ BitVec 32) (_ BitVec 64))) (size!20634 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42224)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42224 (_ BitVec 32)) Bool)

(assert (=> b!765889 (= res!518240 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26366 0))(
  ( (Unit!26367) )
))
(declare-fun lt!340702 () Unit!26366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42224 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26366)

(assert (=> b!765889 (= lt!340702 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765890 () Bool)

(declare-fun e!426537 () Bool)

(assert (=> b!765890 (= e!426542 e!426537)))

(declare-fun res!518243 () Bool)

(assert (=> b!765890 (=> (not res!518243) (not e!426537))))

(declare-datatypes ((SeekEntryResult!7820 0))(
  ( (MissingZero!7820 (index!33647 (_ BitVec 32))) (Found!7820 (index!33648 (_ BitVec 32))) (Intermediate!7820 (undefined!8632 Bool) (index!33649 (_ BitVec 32)) (x!64579 (_ BitVec 32))) (Undefined!7820) (MissingVacant!7820 (index!33650 (_ BitVec 32))) )
))
(declare-fun lt!340700 () SeekEntryResult!7820)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42224 (_ BitVec 32)) SeekEntryResult!7820)

(assert (=> b!765890 (= res!518243 (= (seekEntryOrOpen!0 (select (arr!20213 a!3186) j!159) a!3186 mask!3328) lt!340700))))

(assert (=> b!765890 (= lt!340700 (Found!7820 j!159))))

(declare-fun b!765891 () Bool)

(declare-fun res!518237 () Bool)

(declare-fun e!426539 () Bool)

(assert (=> b!765891 (=> (not res!518237) (not e!426539))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765891 (= res!518237 (validKeyInArray!0 k!2102))))

(declare-fun res!518231 () Bool)

(assert (=> start!66492 (=> (not res!518231) (not e!426539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66492 (= res!518231 (validMask!0 mask!3328))))

(assert (=> start!66492 e!426539))

(assert (=> start!66492 true))

(declare-fun array_inv!15987 (array!42224) Bool)

(assert (=> start!66492 (array_inv!15987 a!3186)))

(declare-fun b!765892 () Bool)

(declare-fun res!518241 () Bool)

(assert (=> b!765892 (=> (not res!518241) (not e!426539))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765892 (= res!518241 (and (= (size!20634 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20634 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20634 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765893 () Bool)

(declare-fun res!518242 () Bool)

(declare-fun e!426535 () Bool)

(assert (=> b!765893 (=> (not res!518242) (not e!426535))))

(declare-fun e!426536 () Bool)

(assert (=> b!765893 (= res!518242 e!426536)))

(declare-fun c!84219 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765893 (= c!84219 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765894 () Bool)

(declare-fun res!518234 () Bool)

(declare-fun e!426538 () Bool)

(assert (=> b!765894 (=> (not res!518234) (not e!426538))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!765894 (= res!518234 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20634 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20634 a!3186))))))

(declare-fun lt!340697 () SeekEntryResult!7820)

(declare-fun b!765895 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42224 (_ BitVec 32)) SeekEntryResult!7820)

(assert (=> b!765895 (= e!426536 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20213 a!3186) j!159) a!3186 mask!3328) lt!340697))))

(declare-fun b!765896 () Bool)

(declare-fun res!518235 () Bool)

(assert (=> b!765896 (=> (not res!518235) (not e!426538))))

(declare-datatypes ((List!14268 0))(
  ( (Nil!14265) (Cons!14264 (h!15354 (_ BitVec 64)) (t!20591 List!14268)) )
))
(declare-fun arrayNoDuplicates!0 (array!42224 (_ BitVec 32) List!14268) Bool)

(assert (=> b!765896 (= res!518235 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14265))))

(declare-fun b!765897 () Bool)

(assert (=> b!765897 (= e!426539 e!426538)))

(declare-fun res!518236 () Bool)

(assert (=> b!765897 (=> (not res!518236) (not e!426538))))

(declare-fun lt!340698 () SeekEntryResult!7820)

(assert (=> b!765897 (= res!518236 (or (= lt!340698 (MissingZero!7820 i!1173)) (= lt!340698 (MissingVacant!7820 i!1173))))))

(assert (=> b!765897 (= lt!340698 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!765898 () Bool)

(assert (=> b!765898 (= e!426535 e!426540)))

(declare-fun res!518238 () Bool)

(assert (=> b!765898 (=> (not res!518238) (not e!426540))))

(declare-fun lt!340701 () array!42224)

(declare-fun lt!340699 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765898 (= res!518238 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340699 mask!3328) lt!340699 lt!340701 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340699 lt!340701 mask!3328)))))

(assert (=> b!765898 (= lt!340699 (select (store (arr!20213 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765898 (= lt!340701 (array!42225 (store (arr!20213 a!3186) i!1173 k!2102) (size!20634 a!3186)))))

(declare-fun b!765899 () Bool)

(declare-fun res!518233 () Bool)

(assert (=> b!765899 (=> (not res!518233) (not e!426539))))

(assert (=> b!765899 (= res!518233 (validKeyInArray!0 (select (arr!20213 a!3186) j!159)))))

(declare-fun b!765900 () Bool)

(declare-fun res!518230 () Bool)

(assert (=> b!765900 (=> (not res!518230) (not e!426535))))

(assert (=> b!765900 (= res!518230 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20213 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765901 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42224 (_ BitVec 32)) SeekEntryResult!7820)

(assert (=> b!765901 (= e!426536 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20213 a!3186) j!159) a!3186 mask!3328) (Found!7820 j!159)))))

(declare-fun b!765902 () Bool)

(declare-fun res!518232 () Bool)

(assert (=> b!765902 (=> (not res!518232) (not e!426539))))

(declare-fun arrayContainsKey!0 (array!42224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765902 (= res!518232 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765903 () Bool)

(assert (=> b!765903 (= e!426537 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20213 a!3186) j!159) a!3186 mask!3328) lt!340700))))

(declare-fun b!765904 () Bool)

(assert (=> b!765904 (= e!426538 e!426535)))

(declare-fun res!518239 () Bool)

(assert (=> b!765904 (=> (not res!518239) (not e!426535))))

(assert (=> b!765904 (= res!518239 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20213 a!3186) j!159) mask!3328) (select (arr!20213 a!3186) j!159) a!3186 mask!3328) lt!340697))))

(assert (=> b!765904 (= lt!340697 (Intermediate!7820 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765905 () Bool)

(declare-fun res!518244 () Bool)

(assert (=> b!765905 (=> (not res!518244) (not e!426538))))

(assert (=> b!765905 (= res!518244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66492 res!518231) b!765892))

(assert (= (and b!765892 res!518241) b!765899))

(assert (= (and b!765899 res!518233) b!765891))

(assert (= (and b!765891 res!518237) b!765902))

(assert (= (and b!765902 res!518232) b!765897))

(assert (= (and b!765897 res!518236) b!765905))

(assert (= (and b!765905 res!518244) b!765896))

(assert (= (and b!765896 res!518235) b!765894))

(assert (= (and b!765894 res!518234) b!765904))

(assert (= (and b!765904 res!518239) b!765900))

(assert (= (and b!765900 res!518230) b!765893))

(assert (= (and b!765893 c!84219) b!765895))

(assert (= (and b!765893 (not c!84219)) b!765901))

(assert (= (and b!765893 res!518242) b!765898))

(assert (= (and b!765898 res!518238) b!765889))

(assert (= (and b!765889 res!518240) b!765890))

(assert (= (and b!765890 res!518243) b!765903))

(declare-fun m!712003 () Bool)

(assert (=> b!765905 m!712003))

(declare-fun m!712005 () Bool)

(assert (=> b!765897 m!712005))

(declare-fun m!712007 () Bool)

(assert (=> b!765899 m!712007))

(assert (=> b!765899 m!712007))

(declare-fun m!712009 () Bool)

(assert (=> b!765899 m!712009))

(declare-fun m!712011 () Bool)

(assert (=> b!765891 m!712011))

(declare-fun m!712013 () Bool)

(assert (=> b!765889 m!712013))

(declare-fun m!712015 () Bool)

(assert (=> b!765889 m!712015))

(declare-fun m!712017 () Bool)

(assert (=> b!765898 m!712017))

(assert (=> b!765898 m!712017))

(declare-fun m!712019 () Bool)

(assert (=> b!765898 m!712019))

(declare-fun m!712021 () Bool)

(assert (=> b!765898 m!712021))

(declare-fun m!712023 () Bool)

(assert (=> b!765898 m!712023))

(declare-fun m!712025 () Bool)

(assert (=> b!765898 m!712025))

(declare-fun m!712027 () Bool)

(assert (=> b!765896 m!712027))

(assert (=> b!765890 m!712007))

(assert (=> b!765890 m!712007))

(declare-fun m!712029 () Bool)

(assert (=> b!765890 m!712029))

(assert (=> b!765903 m!712007))

(assert (=> b!765903 m!712007))

(declare-fun m!712031 () Bool)

(assert (=> b!765903 m!712031))

(assert (=> b!765901 m!712007))

(assert (=> b!765901 m!712007))

(declare-fun m!712033 () Bool)

(assert (=> b!765901 m!712033))

(assert (=> b!765895 m!712007))

(assert (=> b!765895 m!712007))

(declare-fun m!712035 () Bool)

(assert (=> b!765895 m!712035))

(assert (=> b!765904 m!712007))

(assert (=> b!765904 m!712007))

(declare-fun m!712037 () Bool)

(assert (=> b!765904 m!712037))

(assert (=> b!765904 m!712037))

(assert (=> b!765904 m!712007))

(declare-fun m!712039 () Bool)

(assert (=> b!765904 m!712039))

(declare-fun m!712041 () Bool)

(assert (=> b!765902 m!712041))

(declare-fun m!712043 () Bool)

(assert (=> b!765900 m!712043))

(declare-fun m!712045 () Bool)

(assert (=> start!66492 m!712045))

(declare-fun m!712047 () Bool)

(assert (=> start!66492 m!712047))

(push 1)

