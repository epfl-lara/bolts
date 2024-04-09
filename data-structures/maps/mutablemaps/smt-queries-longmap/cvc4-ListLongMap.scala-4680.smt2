; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65162 () Bool)

(assert start!65162)

(declare-fun b!735834 () Bool)

(declare-fun e!411693 () Bool)

(declare-fun e!411698 () Bool)

(assert (=> b!735834 (= e!411693 e!411698)))

(declare-fun res!494596 () Bool)

(assert (=> b!735834 (=> (not res!494596) (not e!411698))))

(declare-datatypes ((SeekEntryResult!7361 0))(
  ( (MissingZero!7361 (index!31811 (_ BitVec 32))) (Found!7361 (index!31812 (_ BitVec 32))) (Intermediate!7361 (undefined!8173 Bool) (index!31813 (_ BitVec 32)) (x!62840 (_ BitVec 32))) (Undefined!7361) (MissingVacant!7361 (index!31814 (_ BitVec 32))) )
))
(declare-fun lt!326291 () SeekEntryResult!7361)

(declare-datatypes ((array!41288 0))(
  ( (array!41289 (arr!19754 (Array (_ BitVec 32) (_ BitVec 64))) (size!20175 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41288)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41288 (_ BitVec 32)) SeekEntryResult!7361)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735834 (= res!494596 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19754 a!3186) j!159) mask!3328) (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326291))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735834 (= lt!326291 (Intermediate!7361 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735835 () Bool)

(declare-datatypes ((Unit!25062 0))(
  ( (Unit!25063) )
))
(declare-fun e!411691 () Unit!25062)

(declare-fun Unit!25064 () Unit!25062)

(assert (=> b!735835 (= e!411691 Unit!25064)))

(declare-fun lt!326286 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!735835 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326286 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326291)))

(declare-fun b!735836 () Bool)

(declare-fun e!411695 () Bool)

(declare-fun e!411692 () Bool)

(assert (=> b!735836 (= e!411695 e!411692)))

(declare-fun res!494588 () Bool)

(assert (=> b!735836 (=> res!494588 e!411692)))

(assert (=> b!735836 (= res!494588 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326286 #b00000000000000000000000000000000) (bvsge lt!326286 (size!20175 a!3186))))))

(declare-fun lt!326282 () Unit!25062)

(assert (=> b!735836 (= lt!326282 e!411691)))

(declare-fun c!81008 () Bool)

(declare-fun lt!326294 () Bool)

(assert (=> b!735836 (= c!81008 lt!326294)))

(assert (=> b!735836 (= lt!326294 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735836 (= lt!326286 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735837 () Bool)

(declare-fun res!494587 () Bool)

(assert (=> b!735837 (=> (not res!494587) (not e!411693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41288 (_ BitVec 32)) Bool)

(assert (=> b!735837 (= res!494587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735838 () Bool)

(declare-fun e!411699 () Bool)

(assert (=> b!735838 (= e!411698 e!411699)))

(declare-fun res!494594 () Bool)

(assert (=> b!735838 (=> (not res!494594) (not e!411699))))

(declare-fun lt!326292 () SeekEntryResult!7361)

(declare-fun lt!326285 () SeekEntryResult!7361)

(assert (=> b!735838 (= res!494594 (= lt!326292 lt!326285))))

(declare-fun lt!326281 () (_ BitVec 64))

(declare-fun lt!326283 () array!41288)

(assert (=> b!735838 (= lt!326285 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326281 lt!326283 mask!3328))))

(assert (=> b!735838 (= lt!326292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326281 mask!3328) lt!326281 lt!326283 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!735838 (= lt!326281 (select (store (arr!19754 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735838 (= lt!326283 (array!41289 (store (arr!19754 a!3186) i!1173 k!2102) (size!20175 a!3186)))))

(declare-fun b!735839 () Bool)

(declare-fun res!494593 () Bool)

(assert (=> b!735839 (=> (not res!494593) (not e!411693))))

(assert (=> b!735839 (= res!494593 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20175 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20175 a!3186))))))

(declare-fun b!735840 () Bool)

(declare-fun res!494595 () Bool)

(assert (=> b!735840 (=> (not res!494595) (not e!411693))))

(declare-datatypes ((List!13809 0))(
  ( (Nil!13806) (Cons!13805 (h!14877 (_ BitVec 64)) (t!20132 List!13809)) )
))
(declare-fun arrayNoDuplicates!0 (array!41288 (_ BitVec 32) List!13809) Bool)

(assert (=> b!735840 (= res!494595 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13806))))

(declare-fun b!735841 () Bool)

(declare-fun Unit!25065 () Unit!25062)

(assert (=> b!735841 (= e!411691 Unit!25065)))

(declare-fun lt!326290 () SeekEntryResult!7361)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41288 (_ BitVec 32)) SeekEntryResult!7361)

(assert (=> b!735841 (= lt!326290 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19754 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326289 () SeekEntryResult!7361)

(assert (=> b!735841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326286 resIntermediateIndex!5 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326289)))

(declare-fun lt!326284 () SeekEntryResult!7361)

(declare-fun e!411697 () Bool)

(declare-fun b!735842 () Bool)

(assert (=> b!735842 (= e!411697 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326284))))

(declare-fun b!735843 () Bool)

(declare-fun res!494584 () Bool)

(declare-fun e!411690 () Bool)

(assert (=> b!735843 (=> (not res!494584) (not e!411690))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735843 (= res!494584 (validKeyInArray!0 k!2102))))

(declare-fun b!735844 () Bool)

(declare-fun e!411696 () Bool)

(assert (=> b!735844 (= e!411696 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326291))))

(declare-fun b!735845 () Bool)

(assert (=> b!735845 (= e!411696 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) (Found!7361 j!159)))))

(declare-fun e!411688 () Bool)

(declare-fun b!735846 () Bool)

(assert (=> b!735846 (= e!411688 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326286 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326291)))))

(declare-fun b!735847 () Bool)

(declare-fun e!411689 () Bool)

(assert (=> b!735847 (= e!411689 e!411697)))

(declare-fun res!494583 () Bool)

(assert (=> b!735847 (=> (not res!494583) (not e!411697))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41288 (_ BitVec 32)) SeekEntryResult!7361)

(assert (=> b!735847 (= res!494583 (= (seekEntryOrOpen!0 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326284))))

(assert (=> b!735847 (= lt!326284 (Found!7361 j!159))))

(declare-fun b!735848 () Bool)

(assert (=> b!735848 (= e!411688 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326286 resIntermediateIndex!5 (select (arr!19754 a!3186) j!159) a!3186 mask!3328) lt!326289)))))

(declare-fun b!735849 () Bool)

(declare-fun res!494591 () Bool)

(assert (=> b!735849 (=> (not res!494591) (not e!411690))))

(assert (=> b!735849 (= res!494591 (validKeyInArray!0 (select (arr!19754 a!3186) j!159)))))

(declare-fun b!735850 () Bool)

(assert (=> b!735850 (= e!411699 (not e!411695))))

(declare-fun res!494581 () Bool)

(assert (=> b!735850 (=> res!494581 e!411695)))

(assert (=> b!735850 (= res!494581 (or (not (is-Intermediate!7361 lt!326285)) (bvsge x!1131 (x!62840 lt!326285))))))

(assert (=> b!735850 (= lt!326289 (Found!7361 j!159))))

(assert (=> b!735850 e!411689))

(declare-fun res!494586 () Bool)

(assert (=> b!735850 (=> (not res!494586) (not e!411689))))

(assert (=> b!735850 (= res!494586 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326287 () Unit!25062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25062)

(assert (=> b!735850 (= lt!326287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735851 () Bool)

(declare-fun res!494590 () Bool)

(assert (=> b!735851 (=> (not res!494590) (not e!411698))))

(assert (=> b!735851 (= res!494590 e!411696)))

(declare-fun c!81009 () Bool)

(assert (=> b!735851 (= c!81009 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735852 () Bool)

(declare-fun res!494589 () Bool)

(assert (=> b!735852 (=> (not res!494589) (not e!411698))))

(assert (=> b!735852 (= res!494589 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19754 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!494598 () Bool)

(assert (=> start!65162 (=> (not res!494598) (not e!411690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65162 (= res!494598 (validMask!0 mask!3328))))

(assert (=> start!65162 e!411690))

(assert (=> start!65162 true))

(declare-fun array_inv!15528 (array!41288) Bool)

(assert (=> start!65162 (array_inv!15528 a!3186)))

(declare-fun b!735853 () Bool)

(assert (=> b!735853 (= e!411692 true)))

(declare-fun lt!326293 () SeekEntryResult!7361)

(assert (=> b!735853 (= lt!326293 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326286 lt!326281 lt!326283 mask!3328))))

(declare-fun b!735854 () Bool)

(assert (=> b!735854 (= e!411690 e!411693)))

(declare-fun res!494592 () Bool)

(assert (=> b!735854 (=> (not res!494592) (not e!411693))))

(declare-fun lt!326288 () SeekEntryResult!7361)

(assert (=> b!735854 (= res!494592 (or (= lt!326288 (MissingZero!7361 i!1173)) (= lt!326288 (MissingVacant!7361 i!1173))))))

(assert (=> b!735854 (= lt!326288 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735855 () Bool)

(declare-fun res!494597 () Bool)

(assert (=> b!735855 (=> res!494597 e!411692)))

(assert (=> b!735855 (= res!494597 e!411688)))

(declare-fun c!81007 () Bool)

(assert (=> b!735855 (= c!81007 lt!326294)))

(declare-fun b!735856 () Bool)

(declare-fun res!494582 () Bool)

(assert (=> b!735856 (=> (not res!494582) (not e!411690))))

(declare-fun arrayContainsKey!0 (array!41288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735856 (= res!494582 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735857 () Bool)

(declare-fun res!494585 () Bool)

(assert (=> b!735857 (=> (not res!494585) (not e!411690))))

(assert (=> b!735857 (= res!494585 (and (= (size!20175 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20175 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20175 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65162 res!494598) b!735857))

(assert (= (and b!735857 res!494585) b!735849))

(assert (= (and b!735849 res!494591) b!735843))

(assert (= (and b!735843 res!494584) b!735856))

(assert (= (and b!735856 res!494582) b!735854))

(assert (= (and b!735854 res!494592) b!735837))

(assert (= (and b!735837 res!494587) b!735840))

(assert (= (and b!735840 res!494595) b!735839))

(assert (= (and b!735839 res!494593) b!735834))

(assert (= (and b!735834 res!494596) b!735852))

(assert (= (and b!735852 res!494589) b!735851))

(assert (= (and b!735851 c!81009) b!735844))

(assert (= (and b!735851 (not c!81009)) b!735845))

(assert (= (and b!735851 res!494590) b!735838))

(assert (= (and b!735838 res!494594) b!735850))

(assert (= (and b!735850 res!494586) b!735847))

(assert (= (and b!735847 res!494583) b!735842))

(assert (= (and b!735850 (not res!494581)) b!735836))

(assert (= (and b!735836 c!81008) b!735835))

(assert (= (and b!735836 (not c!81008)) b!735841))

(assert (= (and b!735836 (not res!494588)) b!735855))

(assert (= (and b!735855 c!81007) b!735846))

(assert (= (and b!735855 (not c!81007)) b!735848))

(assert (= (and b!735855 (not res!494597)) b!735853))

(declare-fun m!688183 () Bool)

(assert (=> b!735836 m!688183))

(declare-fun m!688185 () Bool)

(assert (=> b!735844 m!688185))

(assert (=> b!735844 m!688185))

(declare-fun m!688187 () Bool)

(assert (=> b!735844 m!688187))

(declare-fun m!688189 () Bool)

(assert (=> b!735853 m!688189))

(declare-fun m!688191 () Bool)

(assert (=> b!735854 m!688191))

(assert (=> b!735835 m!688185))

(assert (=> b!735835 m!688185))

(declare-fun m!688193 () Bool)

(assert (=> b!735835 m!688193))

(declare-fun m!688195 () Bool)

(assert (=> b!735837 m!688195))

(assert (=> b!735849 m!688185))

(assert (=> b!735849 m!688185))

(declare-fun m!688197 () Bool)

(assert (=> b!735849 m!688197))

(assert (=> b!735842 m!688185))

(assert (=> b!735842 m!688185))

(declare-fun m!688199 () Bool)

(assert (=> b!735842 m!688199))

(declare-fun m!688201 () Bool)

(assert (=> b!735843 m!688201))

(assert (=> b!735847 m!688185))

(assert (=> b!735847 m!688185))

(declare-fun m!688203 () Bool)

(assert (=> b!735847 m!688203))

(assert (=> b!735848 m!688185))

(assert (=> b!735848 m!688185))

(declare-fun m!688205 () Bool)

(assert (=> b!735848 m!688205))

(declare-fun m!688207 () Bool)

(assert (=> b!735856 m!688207))

(declare-fun m!688209 () Bool)

(assert (=> b!735850 m!688209))

(declare-fun m!688211 () Bool)

(assert (=> b!735850 m!688211))

(declare-fun m!688213 () Bool)

(assert (=> b!735838 m!688213))

(declare-fun m!688215 () Bool)

(assert (=> b!735838 m!688215))

(assert (=> b!735838 m!688213))

(declare-fun m!688217 () Bool)

(assert (=> b!735838 m!688217))

(declare-fun m!688219 () Bool)

(assert (=> b!735838 m!688219))

(declare-fun m!688221 () Bool)

(assert (=> b!735838 m!688221))

(assert (=> b!735845 m!688185))

(assert (=> b!735845 m!688185))

(declare-fun m!688223 () Bool)

(assert (=> b!735845 m!688223))

(declare-fun m!688225 () Bool)

(assert (=> start!65162 m!688225))

(declare-fun m!688227 () Bool)

(assert (=> start!65162 m!688227))

(declare-fun m!688229 () Bool)

(assert (=> b!735852 m!688229))

(assert (=> b!735846 m!688185))

(assert (=> b!735846 m!688185))

(assert (=> b!735846 m!688193))

(assert (=> b!735834 m!688185))

(assert (=> b!735834 m!688185))

(declare-fun m!688231 () Bool)

(assert (=> b!735834 m!688231))

(assert (=> b!735834 m!688231))

(assert (=> b!735834 m!688185))

(declare-fun m!688233 () Bool)

(assert (=> b!735834 m!688233))

(declare-fun m!688235 () Bool)

(assert (=> b!735840 m!688235))

(assert (=> b!735841 m!688185))

(assert (=> b!735841 m!688185))

(assert (=> b!735841 m!688223))

(assert (=> b!735841 m!688185))

(assert (=> b!735841 m!688205))

(push 1)

