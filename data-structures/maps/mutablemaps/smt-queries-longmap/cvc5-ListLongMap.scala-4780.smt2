; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65758 () Bool)

(assert start!65758)

(declare-fun b!754813 () Bool)

(declare-datatypes ((Unit!26038 0))(
  ( (Unit!26039) )
))
(declare-fun e!420978 () Unit!26038)

(declare-fun Unit!26040 () Unit!26038)

(assert (=> b!754813 (= e!420978 Unit!26040)))

(declare-fun b!754814 () Bool)

(declare-fun e!420971 () Bool)

(declare-fun e!420972 () Bool)

(assert (=> b!754814 (= e!420971 e!420972)))

(declare-fun res!510232 () Bool)

(assert (=> b!754814 (=> (not res!510232) (not e!420972))))

(declare-datatypes ((SeekEntryResult!7659 0))(
  ( (MissingZero!7659 (index!33003 (_ BitVec 32))) (Found!7659 (index!33004 (_ BitVec 32))) (Intermediate!7659 (undefined!8471 Bool) (index!33005 (_ BitVec 32)) (x!63938 (_ BitVec 32))) (Undefined!7659) (MissingVacant!7659 (index!33006 (_ BitVec 32))) )
))
(declare-fun lt!335974 () SeekEntryResult!7659)

(declare-fun lt!335971 () SeekEntryResult!7659)

(assert (=> b!754814 (= res!510232 (= lt!335974 lt!335971))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!335970 () (_ BitVec 64))

(declare-datatypes ((array!41884 0))(
  ( (array!41885 (arr!20052 (Array (_ BitVec 32) (_ BitVec 64))) (size!20473 (_ BitVec 32))) )
))
(declare-fun lt!335967 () array!41884)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41884 (_ BitVec 32)) SeekEntryResult!7659)

(assert (=> b!754814 (= lt!335971 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335970 lt!335967 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754814 (= lt!335974 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335970 mask!3328) lt!335970 lt!335967 mask!3328))))

(declare-fun a!3186 () array!41884)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!754814 (= lt!335970 (select (store (arr!20052 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754814 (= lt!335967 (array!41885 (store (arr!20052 a!3186) i!1173 k!2102) (size!20473 a!3186)))))

(declare-fun res!510233 () Bool)

(declare-fun e!420976 () Bool)

(assert (=> start!65758 (=> (not res!510233) (not e!420976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65758 (= res!510233 (validMask!0 mask!3328))))

(assert (=> start!65758 e!420976))

(assert (=> start!65758 true))

(declare-fun array_inv!15826 (array!41884) Bool)

(assert (=> start!65758 (array_inv!15826 a!3186)))

(declare-fun b!754815 () Bool)

(declare-fun res!510217 () Bool)

(declare-fun e!420969 () Bool)

(assert (=> b!754815 (=> (not res!510217) (not e!420969))))

(declare-datatypes ((List!14107 0))(
  ( (Nil!14104) (Cons!14103 (h!15175 (_ BitVec 64)) (t!20430 List!14107)) )
))
(declare-fun arrayNoDuplicates!0 (array!41884 (_ BitVec 32) List!14107) Bool)

(assert (=> b!754815 (= res!510217 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14104))))

(declare-fun b!754816 () Bool)

(declare-fun res!510234 () Bool)

(assert (=> b!754816 (=> (not res!510234) (not e!420971))))

(declare-fun e!420974 () Bool)

(assert (=> b!754816 (= res!510234 e!420974)))

(declare-fun c!82679 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754816 (= c!82679 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754817 () Bool)

(declare-fun res!510216 () Bool)

(assert (=> b!754817 (=> (not res!510216) (not e!420976))))

(declare-fun arrayContainsKey!0 (array!41884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754817 (= res!510216 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754818 () Bool)

(declare-fun res!510231 () Bool)

(declare-fun e!420977 () Bool)

(assert (=> b!754818 (=> (not res!510231) (not e!420977))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41884 (_ BitVec 32)) SeekEntryResult!7659)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41884 (_ BitVec 32)) SeekEntryResult!7659)

(assert (=> b!754818 (= res!510231 (= (seekEntryOrOpen!0 lt!335970 lt!335967 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335970 lt!335967 mask!3328)))))

(declare-fun b!754819 () Bool)

(declare-fun res!510219 () Bool)

(assert (=> b!754819 (=> (not res!510219) (not e!420969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41884 (_ BitVec 32)) Bool)

(assert (=> b!754819 (= res!510219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!754820 () Bool)

(assert (=> b!754820 (= e!420974 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20052 a!3186) j!159) a!3186 mask!3328) (Found!7659 j!159)))))

(declare-fun b!754821 () Bool)

(declare-fun e!420968 () Bool)

(assert (=> b!754821 (= e!420968 true)))

(assert (=> b!754821 e!420977))

(declare-fun res!510224 () Bool)

(assert (=> b!754821 (=> (not res!510224) (not e!420977))))

(declare-fun lt!335968 () (_ BitVec 64))

(assert (=> b!754821 (= res!510224 (= lt!335968 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335978 () Unit!26038)

(assert (=> b!754821 (= lt!335978 e!420978)))

(declare-fun c!82680 () Bool)

(assert (=> b!754821 (= c!82680 (= lt!335968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754822 () Bool)

(declare-fun e!420970 () Bool)

(assert (=> b!754822 (= e!420972 (not e!420970))))

(declare-fun res!510218 () Bool)

(assert (=> b!754822 (=> res!510218 e!420970)))

(assert (=> b!754822 (= res!510218 (or (not (is-Intermediate!7659 lt!335971)) (bvslt x!1131 (x!63938 lt!335971)) (not (= x!1131 (x!63938 lt!335971))) (not (= index!1321 (index!33005 lt!335971)))))))

(declare-fun e!420973 () Bool)

(assert (=> b!754822 e!420973))

(declare-fun res!510227 () Bool)

(assert (=> b!754822 (=> (not res!510227) (not e!420973))))

(declare-fun lt!335969 () SeekEntryResult!7659)

(declare-fun lt!335972 () SeekEntryResult!7659)

(assert (=> b!754822 (= res!510227 (= lt!335969 lt!335972))))

(assert (=> b!754822 (= lt!335972 (Found!7659 j!159))))

(assert (=> b!754822 (= lt!335969 (seekEntryOrOpen!0 (select (arr!20052 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754822 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335976 () Unit!26038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41884 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26038)

(assert (=> b!754822 (= lt!335976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754823 () Bool)

(declare-fun e!420975 () Bool)

(assert (=> b!754823 (= e!420970 e!420975)))

(declare-fun res!510229 () Bool)

(assert (=> b!754823 (=> res!510229 e!420975)))

(declare-fun lt!335977 () SeekEntryResult!7659)

(assert (=> b!754823 (= res!510229 (not (= lt!335977 lt!335972)))))

(assert (=> b!754823 (= lt!335977 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20052 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754824 () Bool)

(assert (=> b!754824 (= e!420975 e!420968)))

(declare-fun res!510228 () Bool)

(assert (=> b!754824 (=> res!510228 e!420968)))

(assert (=> b!754824 (= res!510228 (= lt!335968 lt!335970))))

(assert (=> b!754824 (= lt!335968 (select (store (arr!20052 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754825 () Bool)

(declare-fun res!510226 () Bool)

(assert (=> b!754825 (=> (not res!510226) (not e!420976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754825 (= res!510226 (validKeyInArray!0 k!2102))))

(declare-fun b!754826 () Bool)

(assert (=> b!754826 (= e!420969 e!420971)))

(declare-fun res!510230 () Bool)

(assert (=> b!754826 (=> (not res!510230) (not e!420971))))

(declare-fun lt!335975 () SeekEntryResult!7659)

(assert (=> b!754826 (= res!510230 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20052 a!3186) j!159) mask!3328) (select (arr!20052 a!3186) j!159) a!3186 mask!3328) lt!335975))))

(assert (=> b!754826 (= lt!335975 (Intermediate!7659 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754827 () Bool)

(declare-fun res!510223 () Bool)

(assert (=> b!754827 (=> (not res!510223) (not e!420971))))

(assert (=> b!754827 (= res!510223 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20052 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754828 () Bool)

(assert (=> b!754828 (= e!420974 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20052 a!3186) j!159) a!3186 mask!3328) lt!335975))))

(declare-fun b!754829 () Bool)

(assert (=> b!754829 (= e!420977 (= lt!335969 lt!335977))))

(declare-fun b!754830 () Bool)

(assert (=> b!754830 (= e!420976 e!420969)))

(declare-fun res!510221 () Bool)

(assert (=> b!754830 (=> (not res!510221) (not e!420969))))

(declare-fun lt!335973 () SeekEntryResult!7659)

(assert (=> b!754830 (= res!510221 (or (= lt!335973 (MissingZero!7659 i!1173)) (= lt!335973 (MissingVacant!7659 i!1173))))))

(assert (=> b!754830 (= lt!335973 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754831 () Bool)

(assert (=> b!754831 (= e!420973 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20052 a!3186) j!159) a!3186 mask!3328) lt!335972))))

(declare-fun b!754832 () Bool)

(declare-fun res!510225 () Bool)

(assert (=> b!754832 (=> (not res!510225) (not e!420976))))

(assert (=> b!754832 (= res!510225 (validKeyInArray!0 (select (arr!20052 a!3186) j!159)))))

(declare-fun b!754833 () Bool)

(declare-fun res!510220 () Bool)

(assert (=> b!754833 (=> (not res!510220) (not e!420969))))

(assert (=> b!754833 (= res!510220 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20473 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20473 a!3186))))))

(declare-fun b!754834 () Bool)

(declare-fun res!510222 () Bool)

(assert (=> b!754834 (=> (not res!510222) (not e!420976))))

(assert (=> b!754834 (= res!510222 (and (= (size!20473 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20473 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20473 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754835 () Bool)

(declare-fun Unit!26041 () Unit!26038)

(assert (=> b!754835 (= e!420978 Unit!26041)))

(assert (=> b!754835 false))

(assert (= (and start!65758 res!510233) b!754834))

(assert (= (and b!754834 res!510222) b!754832))

(assert (= (and b!754832 res!510225) b!754825))

(assert (= (and b!754825 res!510226) b!754817))

(assert (= (and b!754817 res!510216) b!754830))

(assert (= (and b!754830 res!510221) b!754819))

(assert (= (and b!754819 res!510219) b!754815))

(assert (= (and b!754815 res!510217) b!754833))

(assert (= (and b!754833 res!510220) b!754826))

(assert (= (and b!754826 res!510230) b!754827))

(assert (= (and b!754827 res!510223) b!754816))

(assert (= (and b!754816 c!82679) b!754828))

(assert (= (and b!754816 (not c!82679)) b!754820))

(assert (= (and b!754816 res!510234) b!754814))

(assert (= (and b!754814 res!510232) b!754822))

(assert (= (and b!754822 res!510227) b!754831))

(assert (= (and b!754822 (not res!510218)) b!754823))

(assert (= (and b!754823 (not res!510229)) b!754824))

(assert (= (and b!754824 (not res!510228)) b!754821))

(assert (= (and b!754821 c!82680) b!754835))

(assert (= (and b!754821 (not c!82680)) b!754813))

(assert (= (and b!754821 res!510224) b!754818))

(assert (= (and b!754818 res!510231) b!754829))

(declare-fun m!703237 () Bool)

(assert (=> b!754815 m!703237))

(declare-fun m!703239 () Bool)

(assert (=> b!754822 m!703239))

(assert (=> b!754822 m!703239))

(declare-fun m!703241 () Bool)

(assert (=> b!754822 m!703241))

(declare-fun m!703243 () Bool)

(assert (=> b!754822 m!703243))

(declare-fun m!703245 () Bool)

(assert (=> b!754822 m!703245))

(declare-fun m!703247 () Bool)

(assert (=> b!754814 m!703247))

(declare-fun m!703249 () Bool)

(assert (=> b!754814 m!703249))

(declare-fun m!703251 () Bool)

(assert (=> b!754814 m!703251))

(assert (=> b!754814 m!703247))

(declare-fun m!703253 () Bool)

(assert (=> b!754814 m!703253))

(declare-fun m!703255 () Bool)

(assert (=> b!754814 m!703255))

(declare-fun m!703257 () Bool)

(assert (=> b!754825 m!703257))

(declare-fun m!703259 () Bool)

(assert (=> b!754818 m!703259))

(declare-fun m!703261 () Bool)

(assert (=> b!754818 m!703261))

(assert (=> b!754820 m!703239))

(assert (=> b!754820 m!703239))

(declare-fun m!703263 () Bool)

(assert (=> b!754820 m!703263))

(declare-fun m!703265 () Bool)

(assert (=> start!65758 m!703265))

(declare-fun m!703267 () Bool)

(assert (=> start!65758 m!703267))

(assert (=> b!754831 m!703239))

(assert (=> b!754831 m!703239))

(declare-fun m!703269 () Bool)

(assert (=> b!754831 m!703269))

(declare-fun m!703271 () Bool)

(assert (=> b!754827 m!703271))

(assert (=> b!754828 m!703239))

(assert (=> b!754828 m!703239))

(declare-fun m!703273 () Bool)

(assert (=> b!754828 m!703273))

(assert (=> b!754826 m!703239))

(assert (=> b!754826 m!703239))

(declare-fun m!703275 () Bool)

(assert (=> b!754826 m!703275))

(assert (=> b!754826 m!703275))

(assert (=> b!754826 m!703239))

(declare-fun m!703277 () Bool)

(assert (=> b!754826 m!703277))

(declare-fun m!703279 () Bool)

(assert (=> b!754819 m!703279))

(declare-fun m!703281 () Bool)

(assert (=> b!754830 m!703281))

(assert (=> b!754824 m!703253))

(declare-fun m!703283 () Bool)

(assert (=> b!754824 m!703283))

(assert (=> b!754832 m!703239))

(assert (=> b!754832 m!703239))

(declare-fun m!703285 () Bool)

(assert (=> b!754832 m!703285))

(assert (=> b!754823 m!703239))

(assert (=> b!754823 m!703239))

(assert (=> b!754823 m!703263))

(declare-fun m!703287 () Bool)

(assert (=> b!754817 m!703287))

(push 1)

