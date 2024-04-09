; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65578 () Bool)

(assert start!65578)

(declare-fun b!748734 () Bool)

(declare-fun res!505217 () Bool)

(declare-fun e!417878 () Bool)

(assert (=> b!748734 (=> (not res!505217) (not e!417878))))

(declare-datatypes ((array!41704 0))(
  ( (array!41705 (arr!19962 (Array (_ BitVec 32) (_ BitVec 64))) (size!20383 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41704)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!748734 (= res!505217 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19962 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748735 () Bool)

(declare-fun e!417877 () Bool)

(declare-fun e!417875 () Bool)

(assert (=> b!748735 (= e!417877 e!417875)))

(declare-fun res!505222 () Bool)

(assert (=> b!748735 (=> (not res!505222) (not e!417875))))

(declare-datatypes ((SeekEntryResult!7569 0))(
  ( (MissingZero!7569 (index!32643 (_ BitVec 32))) (Found!7569 (index!32644 (_ BitVec 32))) (Intermediate!7569 (undefined!8381 Bool) (index!32645 (_ BitVec 32)) (x!63608 (_ BitVec 32))) (Undefined!7569) (MissingVacant!7569 (index!32646 (_ BitVec 32))) )
))
(declare-fun lt!332870 () SeekEntryResult!7569)

(assert (=> b!748735 (= res!505222 (or (= lt!332870 (MissingZero!7569 i!1173)) (= lt!332870 (MissingVacant!7569 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41704 (_ BitVec 32)) SeekEntryResult!7569)

(assert (=> b!748735 (= lt!332870 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748736 () Bool)

(declare-fun e!417882 () Bool)

(assert (=> b!748736 (= e!417878 e!417882)))

(declare-fun res!505230 () Bool)

(assert (=> b!748736 (=> (not res!505230) (not e!417882))))

(declare-fun lt!332876 () SeekEntryResult!7569)

(declare-fun lt!332868 () SeekEntryResult!7569)

(assert (=> b!748736 (= res!505230 (= lt!332876 lt!332868))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!332873 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!332867 () array!41704)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41704 (_ BitVec 32)) SeekEntryResult!7569)

(assert (=> b!748736 (= lt!332868 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332873 lt!332867 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748736 (= lt!332876 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332873 mask!3328) lt!332873 lt!332867 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!748736 (= lt!332873 (select (store (arr!19962 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748736 (= lt!332867 (array!41705 (store (arr!19962 a!3186) i!1173 k!2102) (size!20383 a!3186)))))

(declare-fun b!748737 () Bool)

(declare-fun res!505233 () Bool)

(assert (=> b!748737 (=> (not res!505233) (not e!417875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41704 (_ BitVec 32)) Bool)

(assert (=> b!748737 (= res!505233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748738 () Bool)

(declare-fun res!505231 () Bool)

(assert (=> b!748738 (=> (not res!505231) (not e!417877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748738 (= res!505231 (validKeyInArray!0 k!2102))))

(declare-fun lt!332872 () SeekEntryResult!7569)

(declare-fun e!417874 () Bool)

(declare-fun b!748739 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41704 (_ BitVec 32)) SeekEntryResult!7569)

(assert (=> b!748739 (= e!417874 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19962 a!3186) j!159) a!3186 mask!3328) lt!332872))))

(declare-fun b!748740 () Bool)

(declare-fun res!505227 () Bool)

(assert (=> b!748740 (=> (not res!505227) (not e!417875))))

(declare-datatypes ((List!14017 0))(
  ( (Nil!14014) (Cons!14013 (h!15085 (_ BitVec 64)) (t!20340 List!14017)) )
))
(declare-fun arrayNoDuplicates!0 (array!41704 (_ BitVec 32) List!14017) Bool)

(assert (=> b!748740 (= res!505227 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14014))))

(declare-fun b!748741 () Bool)

(declare-fun res!505228 () Bool)

(declare-fun e!417876 () Bool)

(assert (=> b!748741 (=> res!505228 e!417876)))

(assert (=> b!748741 (= res!505228 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19962 a!3186) j!159) a!3186 mask!3328) lt!332872)))))

(declare-fun e!417881 () Bool)

(declare-fun b!748742 () Bool)

(assert (=> b!748742 (= e!417881 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19962 a!3186) j!159) a!3186 mask!3328) (Found!7569 j!159)))))

(declare-fun res!505223 () Bool)

(assert (=> start!65578 (=> (not res!505223) (not e!417877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65578 (= res!505223 (validMask!0 mask!3328))))

(assert (=> start!65578 e!417877))

(assert (=> start!65578 true))

(declare-fun array_inv!15736 (array!41704) Bool)

(assert (=> start!65578 (array_inv!15736 a!3186)))

(declare-fun b!748743 () Bool)

(assert (=> b!748743 (= e!417875 e!417878)))

(declare-fun res!505224 () Bool)

(assert (=> b!748743 (=> (not res!505224) (not e!417878))))

(declare-fun lt!332871 () SeekEntryResult!7569)

(assert (=> b!748743 (= res!505224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19962 a!3186) j!159) mask!3328) (select (arr!19962 a!3186) j!159) a!3186 mask!3328) lt!332871))))

(assert (=> b!748743 (= lt!332871 (Intermediate!7569 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748744 () Bool)

(declare-fun res!505218 () Bool)

(assert (=> b!748744 (=> (not res!505218) (not e!417875))))

(assert (=> b!748744 (= res!505218 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20383 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20383 a!3186))))))

(declare-fun b!748745 () Bool)

(declare-fun res!505229 () Bool)

(assert (=> b!748745 (=> res!505229 e!417876)))

(assert (=> b!748745 (= res!505229 (= (select (store (arr!19962 a!3186) i!1173 k!2102) index!1321) lt!332873))))

(declare-fun b!748746 () Bool)

(declare-fun res!505232 () Bool)

(assert (=> b!748746 (=> (not res!505232) (not e!417877))))

(assert (=> b!748746 (= res!505232 (validKeyInArray!0 (select (arr!19962 a!3186) j!159)))))

(declare-fun b!748747 () Bool)

(declare-datatypes ((Unit!25678 0))(
  ( (Unit!25679) )
))
(declare-fun e!417879 () Unit!25678)

(declare-fun Unit!25680 () Unit!25678)

(assert (=> b!748747 (= e!417879 Unit!25680)))

(declare-fun b!748748 () Bool)

(declare-fun res!505221 () Bool)

(assert (=> b!748748 (=> (not res!505221) (not e!417877))))

(assert (=> b!748748 (= res!505221 (and (= (size!20383 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20383 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20383 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!748749 () Bool)

(declare-fun res!505226 () Bool)

(assert (=> b!748749 (=> (not res!505226) (not e!417878))))

(assert (=> b!748749 (= res!505226 e!417881)))

(declare-fun c!82140 () Bool)

(assert (=> b!748749 (= c!82140 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748750 () Bool)

(assert (=> b!748750 (= e!417882 (not e!417876))))

(declare-fun res!505225 () Bool)

(assert (=> b!748750 (=> res!505225 e!417876)))

(assert (=> b!748750 (= res!505225 (or (not (is-Intermediate!7569 lt!332868)) (bvslt x!1131 (x!63608 lt!332868)) (not (= x!1131 (x!63608 lt!332868))) (not (= index!1321 (index!32645 lt!332868)))))))

(assert (=> b!748750 e!417874))

(declare-fun res!505220 () Bool)

(assert (=> b!748750 (=> (not res!505220) (not e!417874))))

(declare-fun lt!332875 () SeekEntryResult!7569)

(assert (=> b!748750 (= res!505220 (= lt!332875 lt!332872))))

(assert (=> b!748750 (= lt!332872 (Found!7569 j!159))))

(assert (=> b!748750 (= lt!332875 (seekEntryOrOpen!0 (select (arr!19962 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748750 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332874 () Unit!25678)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41704 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25678)

(assert (=> b!748750 (= lt!332874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748751 () Bool)

(assert (=> b!748751 (= e!417876 true)))

(assert (=> b!748751 (= (select (store (arr!19962 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332869 () Unit!25678)

(assert (=> b!748751 (= lt!332869 e!417879)))

(declare-fun c!82139 () Bool)

(assert (=> b!748751 (= c!82139 (= (select (store (arr!19962 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!748752 () Bool)

(declare-fun Unit!25681 () Unit!25678)

(assert (=> b!748752 (= e!417879 Unit!25681)))

(assert (=> b!748752 false))

(declare-fun b!748753 () Bool)

(assert (=> b!748753 (= e!417881 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19962 a!3186) j!159) a!3186 mask!3328) lt!332871))))

(declare-fun b!748754 () Bool)

(declare-fun res!505219 () Bool)

(assert (=> b!748754 (=> (not res!505219) (not e!417877))))

(declare-fun arrayContainsKey!0 (array!41704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748754 (= res!505219 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65578 res!505223) b!748748))

(assert (= (and b!748748 res!505221) b!748746))

(assert (= (and b!748746 res!505232) b!748738))

(assert (= (and b!748738 res!505231) b!748754))

(assert (= (and b!748754 res!505219) b!748735))

(assert (= (and b!748735 res!505222) b!748737))

(assert (= (and b!748737 res!505233) b!748740))

(assert (= (and b!748740 res!505227) b!748744))

(assert (= (and b!748744 res!505218) b!748743))

(assert (= (and b!748743 res!505224) b!748734))

(assert (= (and b!748734 res!505217) b!748749))

(assert (= (and b!748749 c!82140) b!748753))

(assert (= (and b!748749 (not c!82140)) b!748742))

(assert (= (and b!748749 res!505226) b!748736))

(assert (= (and b!748736 res!505230) b!748750))

(assert (= (and b!748750 res!505220) b!748739))

(assert (= (and b!748750 (not res!505225)) b!748741))

(assert (= (and b!748741 (not res!505228)) b!748745))

(assert (= (and b!748745 (not res!505229)) b!748751))

(assert (= (and b!748751 c!82139) b!748752))

(assert (= (and b!748751 (not c!82139)) b!748747))

(declare-fun m!698575 () Bool)

(assert (=> b!748754 m!698575))

(declare-fun m!698577 () Bool)

(assert (=> b!748753 m!698577))

(assert (=> b!748753 m!698577))

(declare-fun m!698579 () Bool)

(assert (=> b!748753 m!698579))

(declare-fun m!698581 () Bool)

(assert (=> b!748738 m!698581))

(assert (=> b!748750 m!698577))

(assert (=> b!748750 m!698577))

(declare-fun m!698583 () Bool)

(assert (=> b!748750 m!698583))

(declare-fun m!698585 () Bool)

(assert (=> b!748750 m!698585))

(declare-fun m!698587 () Bool)

(assert (=> b!748750 m!698587))

(declare-fun m!698589 () Bool)

(assert (=> b!748737 m!698589))

(assert (=> b!748742 m!698577))

(assert (=> b!748742 m!698577))

(declare-fun m!698591 () Bool)

(assert (=> b!748742 m!698591))

(declare-fun m!698593 () Bool)

(assert (=> b!748740 m!698593))

(declare-fun m!698595 () Bool)

(assert (=> start!65578 m!698595))

(declare-fun m!698597 () Bool)

(assert (=> start!65578 m!698597))

(declare-fun m!698599 () Bool)

(assert (=> b!748734 m!698599))

(declare-fun m!698601 () Bool)

(assert (=> b!748745 m!698601))

(declare-fun m!698603 () Bool)

(assert (=> b!748745 m!698603))

(assert (=> b!748746 m!698577))

(assert (=> b!748746 m!698577))

(declare-fun m!698605 () Bool)

(assert (=> b!748746 m!698605))

(assert (=> b!748743 m!698577))

(assert (=> b!748743 m!698577))

(declare-fun m!698607 () Bool)

(assert (=> b!748743 m!698607))

(assert (=> b!748743 m!698607))

(assert (=> b!748743 m!698577))

(declare-fun m!698609 () Bool)

(assert (=> b!748743 m!698609))

(declare-fun m!698611 () Bool)

(assert (=> b!748735 m!698611))

(assert (=> b!748741 m!698577))

(assert (=> b!748741 m!698577))

(assert (=> b!748741 m!698591))

(assert (=> b!748736 m!698601))

(declare-fun m!698613 () Bool)

(assert (=> b!748736 m!698613))

(declare-fun m!698615 () Bool)

(assert (=> b!748736 m!698615))

(declare-fun m!698617 () Bool)

(assert (=> b!748736 m!698617))

(declare-fun m!698619 () Bool)

(assert (=> b!748736 m!698619))

(assert (=> b!748736 m!698613))

(assert (=> b!748739 m!698577))

(assert (=> b!748739 m!698577))

(declare-fun m!698621 () Bool)

(assert (=> b!748739 m!698621))

(assert (=> b!748751 m!698601))

(assert (=> b!748751 m!698603))

(push 1)

