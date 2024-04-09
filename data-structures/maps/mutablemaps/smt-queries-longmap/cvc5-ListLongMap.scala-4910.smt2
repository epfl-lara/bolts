; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67720 () Bool)

(assert start!67720)

(declare-fun b!784829 () Bool)

(declare-fun res!531304 () Bool)

(declare-fun e!436356 () Bool)

(assert (=> b!784829 (=> (not res!531304) (not e!436356))))

(declare-datatypes ((array!42715 0))(
  ( (array!42716 (arr!20442 (Array (_ BitVec 32) (_ BitVec 64))) (size!20863 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42715)

(declare-datatypes ((List!14497 0))(
  ( (Nil!14494) (Cons!14493 (h!15616 (_ BitVec 64)) (t!20820 List!14497)) )
))
(declare-fun arrayNoDuplicates!0 (array!42715 (_ BitVec 32) List!14497) Bool)

(assert (=> b!784829 (= res!531304 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14494))))

(declare-fun b!784830 () Bool)

(declare-fun e!436363 () Bool)

(declare-fun e!436364 () Bool)

(assert (=> b!784830 (= e!436363 e!436364)))

(declare-fun res!531302 () Bool)

(assert (=> b!784830 (=> (not res!531302) (not e!436364))))

(declare-datatypes ((SeekEntryResult!8049 0))(
  ( (MissingZero!8049 (index!34563 (_ BitVec 32))) (Found!8049 (index!34564 (_ BitVec 32))) (Intermediate!8049 (undefined!8861 Bool) (index!34565 (_ BitVec 32)) (x!65542 (_ BitVec 32))) (Undefined!8049) (MissingVacant!8049 (index!34566 (_ BitVec 32))) )
))
(declare-fun lt!349923 () SeekEntryResult!8049)

(declare-fun lt!349926 () SeekEntryResult!8049)

(assert (=> b!784830 (= res!531302 (= lt!349923 lt!349926))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!349927 () array!42715)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!349930 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42715 (_ BitVec 32)) SeekEntryResult!8049)

(assert (=> b!784830 (= lt!349926 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349930 lt!349927 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784830 (= lt!349923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349930 mask!3328) lt!349930 lt!349927 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!784830 (= lt!349930 (select (store (arr!20442 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784830 (= lt!349927 (array!42716 (store (arr!20442 a!3186) i!1173 k!2102) (size!20863 a!3186)))))

(declare-fun b!784831 () Bool)

(declare-fun res!531309 () Bool)

(assert (=> b!784831 (=> (not res!531309) (not e!436356))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784831 (= res!531309 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20863 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20863 a!3186))))))

(declare-fun b!784832 () Bool)

(declare-fun e!436359 () Bool)

(declare-fun lt!349931 () SeekEntryResult!8049)

(declare-fun lt!349925 () SeekEntryResult!8049)

(assert (=> b!784832 (= e!436359 (= lt!349931 lt!349925))))

(declare-fun b!784833 () Bool)

(declare-fun e!436360 () Bool)

(declare-fun e!436358 () Bool)

(assert (=> b!784833 (= e!436360 e!436358)))

(declare-fun res!531306 () Bool)

(assert (=> b!784833 (=> res!531306 e!436358)))

(declare-fun lt!349933 () (_ BitVec 64))

(assert (=> b!784833 (= res!531306 (= lt!349933 lt!349930))))

(assert (=> b!784833 (= lt!349933 (select (store (arr!20442 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784834 () Bool)

(declare-fun res!531305 () Bool)

(declare-fun e!436361 () Bool)

(assert (=> b!784834 (=> (not res!531305) (not e!436361))))

(assert (=> b!784834 (= res!531305 (and (= (size!20863 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20863 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20863 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!531313 () Bool)

(assert (=> start!67720 (=> (not res!531313) (not e!436361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67720 (= res!531313 (validMask!0 mask!3328))))

(assert (=> start!67720 e!436361))

(assert (=> start!67720 true))

(declare-fun array_inv!16216 (array!42715) Bool)

(assert (=> start!67720 (array_inv!16216 a!3186)))

(declare-fun lt!349924 () SeekEntryResult!8049)

(declare-fun b!784835 () Bool)

(declare-fun e!436365 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42715 (_ BitVec 32)) SeekEntryResult!8049)

(assert (=> b!784835 (= e!436365 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20442 a!3186) j!159) a!3186 mask!3328) lt!349924))))

(declare-fun b!784836 () Bool)

(declare-fun res!531307 () Bool)

(assert (=> b!784836 (=> (not res!531307) (not e!436361))))

(declare-fun arrayContainsKey!0 (array!42715 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784836 (= res!531307 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!784837 () Bool)

(declare-fun res!531299 () Bool)

(assert (=> b!784837 (=> (not res!531299) (not e!436363))))

(declare-fun e!436362 () Bool)

(assert (=> b!784837 (= res!531299 e!436362)))

(declare-fun c!87173 () Bool)

(assert (=> b!784837 (= c!87173 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784838 () Bool)

(assert (=> b!784838 (= e!436358 true)))

(assert (=> b!784838 e!436359))

(declare-fun res!531308 () Bool)

(assert (=> b!784838 (=> (not res!531308) (not e!436359))))

(assert (=> b!784838 (= res!531308 (= lt!349933 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27106 0))(
  ( (Unit!27107) )
))
(declare-fun lt!349932 () Unit!27106)

(declare-fun e!436357 () Unit!27106)

(assert (=> b!784838 (= lt!349932 e!436357)))

(declare-fun c!87174 () Bool)

(assert (=> b!784838 (= c!87174 (= lt!349933 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!349929 () SeekEntryResult!8049)

(declare-fun b!784839 () Bool)

(assert (=> b!784839 (= e!436362 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20442 a!3186) j!159) a!3186 mask!3328) lt!349929))))

(declare-fun b!784840 () Bool)

(declare-fun res!531301 () Bool)

(assert (=> b!784840 (=> (not res!531301) (not e!436361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784840 (= res!531301 (validKeyInArray!0 k!2102))))

(declare-fun b!784841 () Bool)

(declare-fun Unit!27108 () Unit!27106)

(assert (=> b!784841 (= e!436357 Unit!27108)))

(assert (=> b!784841 false))

(declare-fun b!784842 () Bool)

(assert (=> b!784842 (= e!436361 e!436356)))

(declare-fun res!531300 () Bool)

(assert (=> b!784842 (=> (not res!531300) (not e!436356))))

(declare-fun lt!349922 () SeekEntryResult!8049)

(assert (=> b!784842 (= res!531300 (or (= lt!349922 (MissingZero!8049 i!1173)) (= lt!349922 (MissingVacant!8049 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42715 (_ BitVec 32)) SeekEntryResult!8049)

(assert (=> b!784842 (= lt!349922 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784843 () Bool)

(assert (=> b!784843 (= e!436362 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20442 a!3186) j!159) a!3186 mask!3328) (Found!8049 j!159)))))

(declare-fun b!784844 () Bool)

(declare-fun Unit!27109 () Unit!27106)

(assert (=> b!784844 (= e!436357 Unit!27109)))

(declare-fun b!784845 () Bool)

(declare-fun e!436355 () Bool)

(assert (=> b!784845 (= e!436355 e!436360)))

(declare-fun res!531312 () Bool)

(assert (=> b!784845 (=> res!531312 e!436360)))

(assert (=> b!784845 (= res!531312 (not (= lt!349925 lt!349924)))))

(assert (=> b!784845 (= lt!349925 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20442 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784846 () Bool)

(assert (=> b!784846 (= e!436364 (not e!436355))))

(declare-fun res!531316 () Bool)

(assert (=> b!784846 (=> res!531316 e!436355)))

(assert (=> b!784846 (= res!531316 (or (not (is-Intermediate!8049 lt!349926)) (bvslt x!1131 (x!65542 lt!349926)) (not (= x!1131 (x!65542 lt!349926))) (not (= index!1321 (index!34565 lt!349926)))))))

(assert (=> b!784846 e!436365))

(declare-fun res!531311 () Bool)

(assert (=> b!784846 (=> (not res!531311) (not e!436365))))

(assert (=> b!784846 (= res!531311 (= lt!349931 lt!349924))))

(assert (=> b!784846 (= lt!349924 (Found!8049 j!159))))

(assert (=> b!784846 (= lt!349931 (seekEntryOrOpen!0 (select (arr!20442 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42715 (_ BitVec 32)) Bool)

(assert (=> b!784846 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349928 () Unit!27106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42715 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27106)

(assert (=> b!784846 (= lt!349928 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784847 () Bool)

(assert (=> b!784847 (= e!436356 e!436363)))

(declare-fun res!531310 () Bool)

(assert (=> b!784847 (=> (not res!531310) (not e!436363))))

(assert (=> b!784847 (= res!531310 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20442 a!3186) j!159) mask!3328) (select (arr!20442 a!3186) j!159) a!3186 mask!3328) lt!349929))))

(assert (=> b!784847 (= lt!349929 (Intermediate!8049 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!784848 () Bool)

(declare-fun res!531314 () Bool)

(assert (=> b!784848 (=> (not res!531314) (not e!436359))))

(assert (=> b!784848 (= res!531314 (= (seekEntryOrOpen!0 lt!349930 lt!349927 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349930 lt!349927 mask!3328)))))

(declare-fun b!784849 () Bool)

(declare-fun res!531298 () Bool)

(assert (=> b!784849 (=> (not res!531298) (not e!436356))))

(assert (=> b!784849 (= res!531298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784850 () Bool)

(declare-fun res!531303 () Bool)

(assert (=> b!784850 (=> (not res!531303) (not e!436363))))

(assert (=> b!784850 (= res!531303 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20442 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784851 () Bool)

(declare-fun res!531315 () Bool)

(assert (=> b!784851 (=> (not res!531315) (not e!436361))))

(assert (=> b!784851 (= res!531315 (validKeyInArray!0 (select (arr!20442 a!3186) j!159)))))

(assert (= (and start!67720 res!531313) b!784834))

(assert (= (and b!784834 res!531305) b!784851))

(assert (= (and b!784851 res!531315) b!784840))

(assert (= (and b!784840 res!531301) b!784836))

(assert (= (and b!784836 res!531307) b!784842))

(assert (= (and b!784842 res!531300) b!784849))

(assert (= (and b!784849 res!531298) b!784829))

(assert (= (and b!784829 res!531304) b!784831))

(assert (= (and b!784831 res!531309) b!784847))

(assert (= (and b!784847 res!531310) b!784850))

(assert (= (and b!784850 res!531303) b!784837))

(assert (= (and b!784837 c!87173) b!784839))

(assert (= (and b!784837 (not c!87173)) b!784843))

(assert (= (and b!784837 res!531299) b!784830))

(assert (= (and b!784830 res!531302) b!784846))

(assert (= (and b!784846 res!531311) b!784835))

(assert (= (and b!784846 (not res!531316)) b!784845))

(assert (= (and b!784845 (not res!531312)) b!784833))

(assert (= (and b!784833 (not res!531306)) b!784838))

(assert (= (and b!784838 c!87174) b!784841))

(assert (= (and b!784838 (not c!87174)) b!784844))

(assert (= (and b!784838 res!531308) b!784848))

(assert (= (and b!784848 res!531314) b!784832))

(declare-fun m!727093 () Bool)

(assert (=> b!784840 m!727093))

(declare-fun m!727095 () Bool)

(assert (=> b!784850 m!727095))

(declare-fun m!727097 () Bool)

(assert (=> b!784847 m!727097))

(assert (=> b!784847 m!727097))

(declare-fun m!727099 () Bool)

(assert (=> b!784847 m!727099))

(assert (=> b!784847 m!727099))

(assert (=> b!784847 m!727097))

(declare-fun m!727101 () Bool)

(assert (=> b!784847 m!727101))

(assert (=> b!784839 m!727097))

(assert (=> b!784839 m!727097))

(declare-fun m!727103 () Bool)

(assert (=> b!784839 m!727103))

(assert (=> b!784835 m!727097))

(assert (=> b!784835 m!727097))

(declare-fun m!727105 () Bool)

(assert (=> b!784835 m!727105))

(assert (=> b!784851 m!727097))

(assert (=> b!784851 m!727097))

(declare-fun m!727107 () Bool)

(assert (=> b!784851 m!727107))

(declare-fun m!727109 () Bool)

(assert (=> b!784833 m!727109))

(declare-fun m!727111 () Bool)

(assert (=> b!784833 m!727111))

(declare-fun m!727113 () Bool)

(assert (=> b!784836 m!727113))

(assert (=> b!784846 m!727097))

(assert (=> b!784846 m!727097))

(declare-fun m!727115 () Bool)

(assert (=> b!784846 m!727115))

(declare-fun m!727117 () Bool)

(assert (=> b!784846 m!727117))

(declare-fun m!727119 () Bool)

(assert (=> b!784846 m!727119))

(declare-fun m!727121 () Bool)

(assert (=> b!784849 m!727121))

(assert (=> b!784845 m!727097))

(assert (=> b!784845 m!727097))

(declare-fun m!727123 () Bool)

(assert (=> b!784845 m!727123))

(assert (=> b!784843 m!727097))

(assert (=> b!784843 m!727097))

(assert (=> b!784843 m!727123))

(declare-fun m!727125 () Bool)

(assert (=> b!784842 m!727125))

(declare-fun m!727127 () Bool)

(assert (=> start!67720 m!727127))

(declare-fun m!727129 () Bool)

(assert (=> start!67720 m!727129))

(declare-fun m!727131 () Bool)

(assert (=> b!784830 m!727131))

(assert (=> b!784830 m!727109))

(declare-fun m!727133 () Bool)

(assert (=> b!784830 m!727133))

(declare-fun m!727135 () Bool)

(assert (=> b!784830 m!727135))

(declare-fun m!727137 () Bool)

(assert (=> b!784830 m!727137))

(assert (=> b!784830 m!727135))

(declare-fun m!727139 () Bool)

(assert (=> b!784829 m!727139))

(declare-fun m!727141 () Bool)

(assert (=> b!784848 m!727141))

(declare-fun m!727143 () Bool)

(assert (=> b!784848 m!727143))

(push 1)

