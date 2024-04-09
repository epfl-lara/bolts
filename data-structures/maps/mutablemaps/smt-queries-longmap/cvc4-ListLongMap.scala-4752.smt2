; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65594 () Bool)

(assert start!65594)

(declare-fun res!505642 () Bool)

(declare-fun e!418117 () Bool)

(assert (=> start!65594 (=> (not res!505642) (not e!418117))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65594 (= res!505642 (validMask!0 mask!3328))))

(assert (=> start!65594 e!418117))

(assert (=> start!65594 true))

(declare-datatypes ((array!41720 0))(
  ( (array!41721 (arr!19970 (Array (_ BitVec 32) (_ BitVec 64))) (size!20391 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41720)

(declare-fun array_inv!15744 (array!41720) Bool)

(assert (=> start!65594 (array_inv!15744 a!3186)))

(declare-fun b!749255 () Bool)

(declare-fun res!505646 () Bool)

(assert (=> b!749255 (=> (not res!505646) (not e!418117))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749255 (= res!505646 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7577 0))(
  ( (MissingZero!7577 (index!32675 (_ BitVec 32))) (Found!7577 (index!32676 (_ BitVec 32))) (Intermediate!7577 (undefined!8389 Bool) (index!32677 (_ BitVec 32)) (x!63632 (_ BitVec 32))) (Undefined!7577) (MissingVacant!7577 (index!32678 (_ BitVec 32))) )
))
(declare-fun lt!333125 () SeekEntryResult!7577)

(declare-fun e!418124 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!749256 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41720 (_ BitVec 32)) SeekEntryResult!7577)

(assert (=> b!749256 (= e!418124 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19970 a!3186) j!159) a!3186 mask!3328) lt!333125))))

(declare-fun b!749257 () Bool)

(declare-fun e!418122 () Bool)

(declare-fun e!418119 () Bool)

(assert (=> b!749257 (= e!418122 e!418119)))

(declare-fun res!505653 () Bool)

(assert (=> b!749257 (=> res!505653 e!418119)))

(declare-fun lt!333120 () (_ BitVec 64))

(declare-fun lt!333119 () (_ BitVec 64))

(assert (=> b!749257 (= res!505653 (= lt!333120 lt!333119))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!749257 (= lt!333120 (select (store (arr!19970 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749258 () Bool)

(declare-fun res!505656 () Bool)

(declare-fun e!418123 () Bool)

(assert (=> b!749258 (=> (not res!505656) (not e!418123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41720 (_ BitVec 32)) Bool)

(assert (=> b!749258 (= res!505656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749259 () Bool)

(declare-fun res!505652 () Bool)

(assert (=> b!749259 (=> (not res!505652) (not e!418117))))

(assert (=> b!749259 (= res!505652 (validKeyInArray!0 (select (arr!19970 a!3186) j!159)))))

(declare-fun b!749260 () Bool)

(declare-fun res!505643 () Bool)

(declare-fun e!418115 () Bool)

(assert (=> b!749260 (=> (not res!505643) (not e!418115))))

(assert (=> b!749260 (= res!505643 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19970 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749261 () Bool)

(declare-fun res!505654 () Bool)

(assert (=> b!749261 (=> (not res!505654) (not e!418117))))

(declare-fun arrayContainsKey!0 (array!41720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749261 (= res!505654 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749262 () Bool)

(assert (=> b!749262 (= e!418119 true)))

(declare-fun e!418125 () Bool)

(assert (=> b!749262 e!418125))

(declare-fun res!505655 () Bool)

(assert (=> b!749262 (=> (not res!505655) (not e!418125))))

(assert (=> b!749262 (= res!505655 (= lt!333120 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25710 0))(
  ( (Unit!25711) )
))
(declare-fun lt!333117 () Unit!25710)

(declare-fun e!418121 () Unit!25710)

(assert (=> b!749262 (= lt!333117 e!418121)))

(declare-fun c!82188 () Bool)

(assert (=> b!749262 (= c!82188 (= lt!333120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun b!749263 () Bool)

(declare-fun e!418120 () Bool)

(assert (=> b!749263 (= e!418120 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19970 a!3186) j!159) a!3186 mask!3328) (Found!7577 j!159)))))

(declare-fun b!749264 () Bool)

(declare-fun e!418116 () Bool)

(assert (=> b!749264 (= e!418115 e!418116)))

(declare-fun res!505648 () Bool)

(assert (=> b!749264 (=> (not res!505648) (not e!418116))))

(declare-fun lt!333122 () SeekEntryResult!7577)

(declare-fun lt!333118 () SeekEntryResult!7577)

(assert (=> b!749264 (= res!505648 (= lt!333122 lt!333118))))

(declare-fun lt!333116 () array!41720)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41720 (_ BitVec 32)) SeekEntryResult!7577)

(assert (=> b!749264 (= lt!333118 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333119 lt!333116 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749264 (= lt!333122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333119 mask!3328) lt!333119 lt!333116 mask!3328))))

(assert (=> b!749264 (= lt!333119 (select (store (arr!19970 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749264 (= lt!333116 (array!41721 (store (arr!19970 a!3186) i!1173 k!2102) (size!20391 a!3186)))))

(declare-fun b!749265 () Bool)

(declare-fun res!505658 () Bool)

(assert (=> b!749265 (=> res!505658 e!418122)))

(assert (=> b!749265 (= res!505658 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19970 a!3186) j!159) a!3186 mask!3328) lt!333125)))))

(declare-fun b!749266 () Bool)

(assert (=> b!749266 (= e!418116 (not e!418122))))

(declare-fun res!505649 () Bool)

(assert (=> b!749266 (=> res!505649 e!418122)))

(assert (=> b!749266 (= res!505649 (or (not (is-Intermediate!7577 lt!333118)) (bvslt x!1131 (x!63632 lt!333118)) (not (= x!1131 (x!63632 lt!333118))) (not (= index!1321 (index!32677 lt!333118)))))))

(assert (=> b!749266 e!418124))

(declare-fun res!505657 () Bool)

(assert (=> b!749266 (=> (not res!505657) (not e!418124))))

(declare-fun lt!333123 () SeekEntryResult!7577)

(assert (=> b!749266 (= res!505657 (= lt!333123 lt!333125))))

(assert (=> b!749266 (= lt!333125 (Found!7577 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41720 (_ BitVec 32)) SeekEntryResult!7577)

(assert (=> b!749266 (= lt!333123 (seekEntryOrOpen!0 (select (arr!19970 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!749266 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333115 () Unit!25710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41720 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25710)

(assert (=> b!749266 (= lt!333115 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749267 () Bool)

(assert (=> b!749267 (= e!418125 (= (seekEntryOrOpen!0 lt!333119 lt!333116 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333119 lt!333116 mask!3328)))))

(declare-fun b!749268 () Bool)

(declare-fun res!505645 () Bool)

(assert (=> b!749268 (=> (not res!505645) (not e!418117))))

(assert (=> b!749268 (= res!505645 (and (= (size!20391 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20391 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20391 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749269 () Bool)

(declare-fun res!505650 () Bool)

(assert (=> b!749269 (=> (not res!505650) (not e!418123))))

(assert (=> b!749269 (= res!505650 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20391 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20391 a!3186))))))

(declare-fun b!749270 () Bool)

(declare-fun lt!333121 () SeekEntryResult!7577)

(assert (=> b!749270 (= e!418120 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19970 a!3186) j!159) a!3186 mask!3328) lt!333121))))

(declare-fun b!749271 () Bool)

(assert (=> b!749271 (= e!418123 e!418115)))

(declare-fun res!505647 () Bool)

(assert (=> b!749271 (=> (not res!505647) (not e!418115))))

(assert (=> b!749271 (= res!505647 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19970 a!3186) j!159) mask!3328) (select (arr!19970 a!3186) j!159) a!3186 mask!3328) lt!333121))))

(assert (=> b!749271 (= lt!333121 (Intermediate!7577 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749272 () Bool)

(assert (=> b!749272 (= e!418117 e!418123)))

(declare-fun res!505659 () Bool)

(assert (=> b!749272 (=> (not res!505659) (not e!418123))))

(declare-fun lt!333124 () SeekEntryResult!7577)

(assert (=> b!749272 (= res!505659 (or (= lt!333124 (MissingZero!7577 i!1173)) (= lt!333124 (MissingVacant!7577 i!1173))))))

(assert (=> b!749272 (= lt!333124 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749273 () Bool)

(declare-fun res!505651 () Bool)

(assert (=> b!749273 (=> (not res!505651) (not e!418115))))

(assert (=> b!749273 (= res!505651 e!418120)))

(declare-fun c!82187 () Bool)

(assert (=> b!749273 (= c!82187 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749274 () Bool)

(declare-fun Unit!25712 () Unit!25710)

(assert (=> b!749274 (= e!418121 Unit!25712)))

(assert (=> b!749274 false))

(declare-fun b!749275 () Bool)

(declare-fun res!505644 () Bool)

(assert (=> b!749275 (=> (not res!505644) (not e!418123))))

(declare-datatypes ((List!14025 0))(
  ( (Nil!14022) (Cons!14021 (h!15093 (_ BitVec 64)) (t!20348 List!14025)) )
))
(declare-fun arrayNoDuplicates!0 (array!41720 (_ BitVec 32) List!14025) Bool)

(assert (=> b!749275 (= res!505644 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14022))))

(declare-fun b!749276 () Bool)

(declare-fun Unit!25713 () Unit!25710)

(assert (=> b!749276 (= e!418121 Unit!25713)))

(assert (= (and start!65594 res!505642) b!749268))

(assert (= (and b!749268 res!505645) b!749259))

(assert (= (and b!749259 res!505652) b!749255))

(assert (= (and b!749255 res!505646) b!749261))

(assert (= (and b!749261 res!505654) b!749272))

(assert (= (and b!749272 res!505659) b!749258))

(assert (= (and b!749258 res!505656) b!749275))

(assert (= (and b!749275 res!505644) b!749269))

(assert (= (and b!749269 res!505650) b!749271))

(assert (= (and b!749271 res!505647) b!749260))

(assert (= (and b!749260 res!505643) b!749273))

(assert (= (and b!749273 c!82187) b!749270))

(assert (= (and b!749273 (not c!82187)) b!749263))

(assert (= (and b!749273 res!505651) b!749264))

(assert (= (and b!749264 res!505648) b!749266))

(assert (= (and b!749266 res!505657) b!749256))

(assert (= (and b!749266 (not res!505649)) b!749265))

(assert (= (and b!749265 (not res!505658)) b!749257))

(assert (= (and b!749257 (not res!505653)) b!749262))

(assert (= (and b!749262 c!82188) b!749274))

(assert (= (and b!749262 (not c!82188)) b!749276))

(assert (= (and b!749262 res!505655) b!749267))

(declare-fun m!698973 () Bool)

(assert (=> b!749270 m!698973))

(assert (=> b!749270 m!698973))

(declare-fun m!698975 () Bool)

(assert (=> b!749270 m!698975))

(declare-fun m!698977 () Bool)

(assert (=> b!749264 m!698977))

(declare-fun m!698979 () Bool)

(assert (=> b!749264 m!698979))

(declare-fun m!698981 () Bool)

(assert (=> b!749264 m!698981))

(assert (=> b!749264 m!698977))

(declare-fun m!698983 () Bool)

(assert (=> b!749264 m!698983))

(declare-fun m!698985 () Bool)

(assert (=> b!749264 m!698985))

(declare-fun m!698987 () Bool)

(assert (=> start!65594 m!698987))

(declare-fun m!698989 () Bool)

(assert (=> start!65594 m!698989))

(declare-fun m!698991 () Bool)

(assert (=> b!749260 m!698991))

(declare-fun m!698993 () Bool)

(assert (=> b!749272 m!698993))

(assert (=> b!749256 m!698973))

(assert (=> b!749256 m!698973))

(declare-fun m!698995 () Bool)

(assert (=> b!749256 m!698995))

(assert (=> b!749259 m!698973))

(assert (=> b!749259 m!698973))

(declare-fun m!698997 () Bool)

(assert (=> b!749259 m!698997))

(declare-fun m!698999 () Bool)

(assert (=> b!749275 m!698999))

(declare-fun m!699001 () Bool)

(assert (=> b!749258 m!699001))

(declare-fun m!699003 () Bool)

(assert (=> b!749267 m!699003))

(declare-fun m!699005 () Bool)

(assert (=> b!749267 m!699005))

(assert (=> b!749266 m!698973))

(assert (=> b!749266 m!698973))

(declare-fun m!699007 () Bool)

(assert (=> b!749266 m!699007))

(declare-fun m!699009 () Bool)

(assert (=> b!749266 m!699009))

(declare-fun m!699011 () Bool)

(assert (=> b!749266 m!699011))

(declare-fun m!699013 () Bool)

(assert (=> b!749261 m!699013))

(assert (=> b!749263 m!698973))

(assert (=> b!749263 m!698973))

(declare-fun m!699015 () Bool)

(assert (=> b!749263 m!699015))

(assert (=> b!749257 m!698979))

(declare-fun m!699017 () Bool)

(assert (=> b!749257 m!699017))

(declare-fun m!699019 () Bool)

(assert (=> b!749255 m!699019))

(assert (=> b!749271 m!698973))

(assert (=> b!749271 m!698973))

(declare-fun m!699021 () Bool)

(assert (=> b!749271 m!699021))

(assert (=> b!749271 m!699021))

(assert (=> b!749271 m!698973))

(declare-fun m!699023 () Bool)

(assert (=> b!749271 m!699023))

(assert (=> b!749265 m!698973))

(assert (=> b!749265 m!698973))

(assert (=> b!749265 m!699015))

(push 1)

