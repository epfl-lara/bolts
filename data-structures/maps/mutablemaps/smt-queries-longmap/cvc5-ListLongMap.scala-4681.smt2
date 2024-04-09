; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65164 () Bool)

(assert start!65164)

(declare-datatypes ((array!41290 0))(
  ( (array!41291 (arr!19755 (Array (_ BitVec 32) (_ BitVec 64))) (size!20176 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41290)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!735906 () Bool)

(declare-datatypes ((SeekEntryResult!7362 0))(
  ( (MissingZero!7362 (index!31815 (_ BitVec 32))) (Found!7362 (index!31816 (_ BitVec 32))) (Intermediate!7362 (undefined!8174 Bool) (index!31817 (_ BitVec 32)) (x!62849 (_ BitVec 32))) (Undefined!7362) (MissingVacant!7362 (index!31818 (_ BitVec 32))) )
))
(declare-fun lt!326327 () SeekEntryResult!7362)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!411730 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41290 (_ BitVec 32)) SeekEntryResult!7362)

(assert (=> b!735906 (= e!411730 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326327))))

(declare-fun b!735907 () Bool)

(declare-fun res!494642 () Bool)

(declare-fun e!411727 () Bool)

(assert (=> b!735907 (=> (not res!494642) (not e!411727))))

(declare-datatypes ((List!13810 0))(
  ( (Nil!13807) (Cons!13806 (h!14878 (_ BitVec 64)) (t!20133 List!13810)) )
))
(declare-fun arrayNoDuplicates!0 (array!41290 (_ BitVec 32) List!13810) Bool)

(assert (=> b!735907 (= res!494642 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13807))))

(declare-fun b!735908 () Bool)

(declare-fun e!411733 () Bool)

(declare-fun e!411725 () Bool)

(assert (=> b!735908 (= e!411733 e!411725)))

(declare-fun res!494646 () Bool)

(assert (=> b!735908 (=> res!494646 e!411725)))

(declare-fun lt!326331 () (_ BitVec 32))

(assert (=> b!735908 (= res!494646 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!326331 #b00000000000000000000000000000000) (bvsge lt!326331 (size!20176 a!3186))))))

(declare-datatypes ((Unit!25066 0))(
  ( (Unit!25067) )
))
(declare-fun lt!326326 () Unit!25066)

(declare-fun e!411731 () Unit!25066)

(assert (=> b!735908 (= lt!326326 e!411731)))

(declare-fun c!81016 () Bool)

(declare-fun lt!326336 () Bool)

(assert (=> b!735908 (= c!81016 lt!326336)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!735908 (= lt!326336 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735908 (= lt!326331 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735909 () Bool)

(declare-fun e!411728 () Bool)

(assert (=> b!735909 (= e!411727 e!411728)))

(declare-fun res!494636 () Bool)

(assert (=> b!735909 (=> (not res!494636) (not e!411728))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735909 (= res!494636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19755 a!3186) j!159) mask!3328) (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326327))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!735909 (= lt!326327 (Intermediate!7362 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735910 () Bool)

(declare-fun res!494645 () Bool)

(declare-fun e!411734 () Bool)

(assert (=> b!735910 (=> (not res!494645) (not e!411734))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735910 (= res!494645 (validKeyInArray!0 k!2102))))

(declare-fun b!735911 () Bool)

(assert (=> b!735911 (= e!411725 true)))

(declare-fun lt!326323 () SeekEntryResult!7362)

(declare-fun lt!326324 () array!41290)

(declare-fun lt!326325 () (_ BitVec 64))

(assert (=> b!735911 (= lt!326323 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326331 lt!326325 lt!326324 mask!3328))))

(declare-fun b!735912 () Bool)

(declare-fun e!411735 () Bool)

(assert (=> b!735912 (= e!411728 e!411735)))

(declare-fun res!494651 () Bool)

(assert (=> b!735912 (=> (not res!494651) (not e!411735))))

(declare-fun lt!326328 () SeekEntryResult!7362)

(declare-fun lt!326329 () SeekEntryResult!7362)

(assert (=> b!735912 (= res!494651 (= lt!326328 lt!326329))))

(assert (=> b!735912 (= lt!326329 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!326325 lt!326324 mask!3328))))

(assert (=> b!735912 (= lt!326328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!326325 mask!3328) lt!326325 lt!326324 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735912 (= lt!326325 (select (store (arr!19755 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!735912 (= lt!326324 (array!41291 (store (arr!19755 a!3186) i!1173 k!2102) (size!20176 a!3186)))))

(declare-fun b!735913 () Bool)

(declare-fun Unit!25068 () Unit!25066)

(assert (=> b!735913 (= e!411731 Unit!25068)))

(declare-fun lt!326333 () SeekEntryResult!7362)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41290 (_ BitVec 32)) SeekEntryResult!7362)

(assert (=> b!735913 (= lt!326333 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19755 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!326330 () SeekEntryResult!7362)

(assert (=> b!735913 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326331 resIntermediateIndex!5 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326330)))

(declare-fun b!735914 () Bool)

(declare-fun res!494652 () Bool)

(assert (=> b!735914 (=> (not res!494652) (not e!411734))))

(assert (=> b!735914 (= res!494652 (validKeyInArray!0 (select (arr!19755 a!3186) j!159)))))

(declare-fun b!735916 () Bool)

(declare-fun res!494638 () Bool)

(assert (=> b!735916 (=> (not res!494638) (not e!411728))))

(assert (=> b!735916 (= res!494638 e!411730)))

(declare-fun c!81017 () Bool)

(assert (=> b!735916 (= c!81017 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735917 () Bool)

(declare-fun res!494640 () Bool)

(assert (=> b!735917 (=> (not res!494640) (not e!411734))))

(declare-fun arrayContainsKey!0 (array!41290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735917 (= res!494640 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735918 () Bool)

(assert (=> b!735918 (= e!411730 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) (Found!7362 j!159)))))

(declare-fun b!735919 () Bool)

(declare-fun res!494641 () Bool)

(assert (=> b!735919 (=> (not res!494641) (not e!411728))))

(assert (=> b!735919 (= res!494641 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19755 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735920 () Bool)

(assert (=> b!735920 (= e!411735 (not e!411733))))

(declare-fun res!494643 () Bool)

(assert (=> b!735920 (=> res!494643 e!411733)))

(assert (=> b!735920 (= res!494643 (or (not (is-Intermediate!7362 lt!326329)) (bvsge x!1131 (x!62849 lt!326329))))))

(assert (=> b!735920 (= lt!326330 (Found!7362 j!159))))

(declare-fun e!411729 () Bool)

(assert (=> b!735920 e!411729))

(declare-fun res!494647 () Bool)

(assert (=> b!735920 (=> (not res!494647) (not e!411729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41290 (_ BitVec 32)) Bool)

(assert (=> b!735920 (= res!494647 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!326334 () Unit!25066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25066)

(assert (=> b!735920 (= lt!326334 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735921 () Bool)

(declare-fun res!494649 () Bool)

(assert (=> b!735921 (=> (not res!494649) (not e!411734))))

(assert (=> b!735921 (= res!494649 (and (= (size!20176 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20176 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20176 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!735922 () Bool)

(declare-fun Unit!25069 () Unit!25066)

(assert (=> b!735922 (= e!411731 Unit!25069)))

(assert (=> b!735922 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326331 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326327)))

(declare-fun e!411724 () Bool)

(declare-fun b!735923 () Bool)

(assert (=> b!735923 (= e!411724 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326331 resIntermediateIndex!5 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326330)))))

(declare-fun res!494635 () Bool)

(assert (=> start!65164 (=> (not res!494635) (not e!411734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65164 (= res!494635 (validMask!0 mask!3328))))

(assert (=> start!65164 e!411734))

(assert (=> start!65164 true))

(declare-fun array_inv!15529 (array!41290) Bool)

(assert (=> start!65164 (array_inv!15529 a!3186)))

(declare-fun b!735915 () Bool)

(declare-fun res!494637 () Bool)

(assert (=> b!735915 (=> res!494637 e!411725)))

(assert (=> b!735915 (= res!494637 e!411724)))

(declare-fun c!81018 () Bool)

(assert (=> b!735915 (= c!81018 lt!326336)))

(declare-fun b!735924 () Bool)

(declare-fun e!411726 () Bool)

(assert (=> b!735924 (= e!411729 e!411726)))

(declare-fun res!494648 () Bool)

(assert (=> b!735924 (=> (not res!494648) (not e!411726))))

(declare-fun lt!326332 () SeekEntryResult!7362)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41290 (_ BitVec 32)) SeekEntryResult!7362)

(assert (=> b!735924 (= res!494648 (= (seekEntryOrOpen!0 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326332))))

(assert (=> b!735924 (= lt!326332 (Found!7362 j!159))))

(declare-fun b!735925 () Bool)

(assert (=> b!735925 (= e!411724 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!326331 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326327)))))

(declare-fun b!735926 () Bool)

(assert (=> b!735926 (= e!411734 e!411727)))

(declare-fun res!494650 () Bool)

(assert (=> b!735926 (=> (not res!494650) (not e!411727))))

(declare-fun lt!326335 () SeekEntryResult!7362)

(assert (=> b!735926 (= res!494650 (or (= lt!326335 (MissingZero!7362 i!1173)) (= lt!326335 (MissingVacant!7362 i!1173))))))

(assert (=> b!735926 (= lt!326335 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!735927 () Bool)

(declare-fun res!494639 () Bool)

(assert (=> b!735927 (=> (not res!494639) (not e!411727))))

(assert (=> b!735927 (= res!494639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735928 () Bool)

(assert (=> b!735928 (= e!411726 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19755 a!3186) j!159) a!3186 mask!3328) lt!326332))))

(declare-fun b!735929 () Bool)

(declare-fun res!494644 () Bool)

(assert (=> b!735929 (=> (not res!494644) (not e!411727))))

(assert (=> b!735929 (= res!494644 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20176 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20176 a!3186))))))

(assert (= (and start!65164 res!494635) b!735921))

(assert (= (and b!735921 res!494649) b!735914))

(assert (= (and b!735914 res!494652) b!735910))

(assert (= (and b!735910 res!494645) b!735917))

(assert (= (and b!735917 res!494640) b!735926))

(assert (= (and b!735926 res!494650) b!735927))

(assert (= (and b!735927 res!494639) b!735907))

(assert (= (and b!735907 res!494642) b!735929))

(assert (= (and b!735929 res!494644) b!735909))

(assert (= (and b!735909 res!494636) b!735919))

(assert (= (and b!735919 res!494641) b!735916))

(assert (= (and b!735916 c!81017) b!735906))

(assert (= (and b!735916 (not c!81017)) b!735918))

(assert (= (and b!735916 res!494638) b!735912))

(assert (= (and b!735912 res!494651) b!735920))

(assert (= (and b!735920 res!494647) b!735924))

(assert (= (and b!735924 res!494648) b!735928))

(assert (= (and b!735920 (not res!494643)) b!735908))

(assert (= (and b!735908 c!81016) b!735922))

(assert (= (and b!735908 (not c!81016)) b!735913))

(assert (= (and b!735908 (not res!494646)) b!735915))

(assert (= (and b!735915 c!81018) b!735925))

(assert (= (and b!735915 (not c!81018)) b!735923))

(assert (= (and b!735915 (not res!494637)) b!735911))

(declare-fun m!688237 () Bool)

(assert (=> b!735910 m!688237))

(declare-fun m!688239 () Bool)

(assert (=> b!735913 m!688239))

(assert (=> b!735913 m!688239))

(declare-fun m!688241 () Bool)

(assert (=> b!735913 m!688241))

(assert (=> b!735913 m!688239))

(declare-fun m!688243 () Bool)

(assert (=> b!735913 m!688243))

(assert (=> b!735918 m!688239))

(assert (=> b!735918 m!688239))

(assert (=> b!735918 m!688241))

(assert (=> b!735922 m!688239))

(assert (=> b!735922 m!688239))

(declare-fun m!688245 () Bool)

(assert (=> b!735922 m!688245))

(declare-fun m!688247 () Bool)

(assert (=> b!735927 m!688247))

(assert (=> b!735909 m!688239))

(assert (=> b!735909 m!688239))

(declare-fun m!688249 () Bool)

(assert (=> b!735909 m!688249))

(assert (=> b!735909 m!688249))

(assert (=> b!735909 m!688239))

(declare-fun m!688251 () Bool)

(assert (=> b!735909 m!688251))

(declare-fun m!688253 () Bool)

(assert (=> b!735908 m!688253))

(declare-fun m!688255 () Bool)

(assert (=> b!735907 m!688255))

(assert (=> b!735923 m!688239))

(assert (=> b!735923 m!688239))

(assert (=> b!735923 m!688243))

(declare-fun m!688257 () Bool)

(assert (=> b!735926 m!688257))

(assert (=> b!735924 m!688239))

(assert (=> b!735924 m!688239))

(declare-fun m!688259 () Bool)

(assert (=> b!735924 m!688259))

(assert (=> b!735925 m!688239))

(assert (=> b!735925 m!688239))

(assert (=> b!735925 m!688245))

(declare-fun m!688261 () Bool)

(assert (=> b!735920 m!688261))

(declare-fun m!688263 () Bool)

(assert (=> b!735920 m!688263))

(declare-fun m!688265 () Bool)

(assert (=> start!65164 m!688265))

(declare-fun m!688267 () Bool)

(assert (=> start!65164 m!688267))

(assert (=> b!735928 m!688239))

(assert (=> b!735928 m!688239))

(declare-fun m!688269 () Bool)

(assert (=> b!735928 m!688269))

(declare-fun m!688271 () Bool)

(assert (=> b!735917 m!688271))

(declare-fun m!688273 () Bool)

(assert (=> b!735919 m!688273))

(assert (=> b!735906 m!688239))

(assert (=> b!735906 m!688239))

(declare-fun m!688275 () Bool)

(assert (=> b!735906 m!688275))

(declare-fun m!688277 () Bool)

(assert (=> b!735912 m!688277))

(declare-fun m!688279 () Bool)

(assert (=> b!735912 m!688279))

(declare-fun m!688281 () Bool)

(assert (=> b!735912 m!688281))

(declare-fun m!688283 () Bool)

(assert (=> b!735912 m!688283))

(declare-fun m!688285 () Bool)

(assert (=> b!735912 m!688285))

(assert (=> b!735912 m!688281))

(declare-fun m!688287 () Bool)

(assert (=> b!735911 m!688287))

(assert (=> b!735914 m!688239))

(assert (=> b!735914 m!688239))

(declare-fun m!688289 () Bool)

(assert (=> b!735914 m!688289))

(push 1)

