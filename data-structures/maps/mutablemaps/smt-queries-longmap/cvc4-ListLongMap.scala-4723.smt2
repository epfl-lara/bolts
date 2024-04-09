; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65420 () Bool)

(assert start!65420)

(declare-fun b!744156 () Bool)

(declare-fun res!501301 () Bool)

(declare-fun e!415740 () Bool)

(assert (=> b!744156 (=> (not res!501301) (not e!415740))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744156 (= res!501301 (validKeyInArray!0 k!2102))))

(declare-fun b!744157 () Bool)

(declare-fun e!415736 () Bool)

(declare-fun e!415733 () Bool)

(assert (=> b!744157 (= e!415736 e!415733)))

(declare-fun res!501299 () Bool)

(assert (=> b!744157 (=> (not res!501299) (not e!415733))))

(declare-datatypes ((SeekEntryResult!7490 0))(
  ( (MissingZero!7490 (index!32327 (_ BitVec 32))) (Found!7490 (index!32328 (_ BitVec 32))) (Intermediate!7490 (undefined!8302 Bool) (index!32329 (_ BitVec 32)) (x!63313 (_ BitVec 32))) (Undefined!7490) (MissingVacant!7490 (index!32330 (_ BitVec 32))) )
))
(declare-fun lt!330601 () SeekEntryResult!7490)

(declare-fun lt!330602 () SeekEntryResult!7490)

(assert (=> b!744157 (= res!501299 (= lt!330601 lt!330602))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!330600 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41546 0))(
  ( (array!41547 (arr!19883 (Array (_ BitVec 32) (_ BitVec 64))) (size!20304 (_ BitVec 32))) )
))
(declare-fun lt!330598 () array!41546)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41546 (_ BitVec 32)) SeekEntryResult!7490)

(assert (=> b!744157 (= lt!330602 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330600 lt!330598 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744157 (= lt!330601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330600 mask!3328) lt!330600 lt!330598 mask!3328))))

(declare-fun a!3186 () array!41546)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744157 (= lt!330600 (select (store (arr!19883 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744157 (= lt!330598 (array!41547 (store (arr!19883 a!3186) i!1173 k!2102) (size!20304 a!3186)))))

(declare-fun b!744158 () Bool)

(declare-fun e!415735 () Bool)

(declare-fun e!415734 () Bool)

(assert (=> b!744158 (= e!415735 e!415734)))

(declare-fun res!501297 () Bool)

(assert (=> b!744158 (=> (not res!501297) (not e!415734))))

(declare-fun lt!330605 () SeekEntryResult!7490)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41546 (_ BitVec 32)) SeekEntryResult!7490)

(assert (=> b!744158 (= res!501297 (= (seekEntryOrOpen!0 (select (arr!19883 a!3186) j!159) a!3186 mask!3328) lt!330605))))

(assert (=> b!744158 (= lt!330605 (Found!7490 j!159))))

(declare-fun b!744159 () Bool)

(declare-fun e!415739 () Bool)

(assert (=> b!744159 (= e!415739 e!415736)))

(declare-fun res!501309 () Bool)

(assert (=> b!744159 (=> (not res!501309) (not e!415736))))

(declare-fun lt!330603 () SeekEntryResult!7490)

(assert (=> b!744159 (= res!501309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19883 a!3186) j!159) mask!3328) (select (arr!19883 a!3186) j!159) a!3186 mask!3328) lt!330603))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744159 (= lt!330603 (Intermediate!7490 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744160 () Bool)

(assert (=> b!744160 (= e!415740 e!415739)))

(declare-fun res!501304 () Bool)

(assert (=> b!744160 (=> (not res!501304) (not e!415739))))

(declare-fun lt!330604 () SeekEntryResult!7490)

(assert (=> b!744160 (= res!501304 (or (= lt!330604 (MissingZero!7490 i!1173)) (= lt!330604 (MissingVacant!7490 i!1173))))))

(assert (=> b!744160 (= lt!330604 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744161 () Bool)

(declare-fun res!501302 () Bool)

(assert (=> b!744161 (=> (not res!501302) (not e!415736))))

(declare-fun e!415732 () Bool)

(assert (=> b!744161 (= res!501302 e!415732)))

(declare-fun c!81810 () Bool)

(assert (=> b!744161 (= c!81810 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744162 () Bool)

(declare-fun res!501308 () Bool)

(assert (=> b!744162 (=> (not res!501308) (not e!415739))))

(declare-datatypes ((List!13938 0))(
  ( (Nil!13935) (Cons!13934 (h!15006 (_ BitVec 64)) (t!20261 List!13938)) )
))
(declare-fun arrayNoDuplicates!0 (array!41546 (_ BitVec 32) List!13938) Bool)

(assert (=> b!744162 (= res!501308 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13935))))

(declare-fun b!744163 () Bool)

(declare-fun res!501310 () Bool)

(assert (=> b!744163 (=> (not res!501310) (not e!415740))))

(declare-fun arrayContainsKey!0 (array!41546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744163 (= res!501310 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744164 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41546 (_ BitVec 32)) SeekEntryResult!7490)

(assert (=> b!744164 (= e!415732 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19883 a!3186) j!159) a!3186 mask!3328) (Found!7490 j!159)))))

(declare-fun b!744165 () Bool)

(assert (=> b!744165 (= e!415732 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19883 a!3186) j!159) a!3186 mask!3328) lt!330603))))

(declare-fun b!744166 () Bool)

(declare-fun e!415738 () Bool)

(assert (=> b!744166 (= e!415738 true)))

(declare-fun lt!330597 () SeekEntryResult!7490)

(assert (=> b!744166 (= lt!330597 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19883 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!744167 () Bool)

(assert (=> b!744167 (= e!415733 (not e!415738))))

(declare-fun res!501307 () Bool)

(assert (=> b!744167 (=> res!501307 e!415738)))

(assert (=> b!744167 (= res!501307 (or (not (is-Intermediate!7490 lt!330602)) (bvslt x!1131 (x!63313 lt!330602)) (not (= x!1131 (x!63313 lt!330602))) (not (= index!1321 (index!32329 lt!330602)))))))

(assert (=> b!744167 e!415735))

(declare-fun res!501303 () Bool)

(assert (=> b!744167 (=> (not res!501303) (not e!415735))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41546 (_ BitVec 32)) Bool)

(assert (=> b!744167 (= res!501303 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25460 0))(
  ( (Unit!25461) )
))
(declare-fun lt!330599 () Unit!25460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25460)

(assert (=> b!744167 (= lt!330599 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!501300 () Bool)

(assert (=> start!65420 (=> (not res!501300) (not e!415740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65420 (= res!501300 (validMask!0 mask!3328))))

(assert (=> start!65420 e!415740))

(assert (=> start!65420 true))

(declare-fun array_inv!15657 (array!41546) Bool)

(assert (=> start!65420 (array_inv!15657 a!3186)))

(declare-fun b!744168 () Bool)

(assert (=> b!744168 (= e!415734 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19883 a!3186) j!159) a!3186 mask!3328) lt!330605))))

(declare-fun b!744169 () Bool)

(declare-fun res!501306 () Bool)

(assert (=> b!744169 (=> (not res!501306) (not e!415739))))

(assert (=> b!744169 (= res!501306 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20304 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20304 a!3186))))))

(declare-fun b!744170 () Bool)

(declare-fun res!501311 () Bool)

(assert (=> b!744170 (=> (not res!501311) (not e!415740))))

(assert (=> b!744170 (= res!501311 (validKeyInArray!0 (select (arr!19883 a!3186) j!159)))))

(declare-fun b!744171 () Bool)

(declare-fun res!501305 () Bool)

(assert (=> b!744171 (=> (not res!501305) (not e!415739))))

(assert (=> b!744171 (= res!501305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744172 () Bool)

(declare-fun res!501312 () Bool)

(assert (=> b!744172 (=> (not res!501312) (not e!415740))))

(assert (=> b!744172 (= res!501312 (and (= (size!20304 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20304 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20304 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744173 () Bool)

(declare-fun res!501298 () Bool)

(assert (=> b!744173 (=> (not res!501298) (not e!415736))))

(assert (=> b!744173 (= res!501298 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19883 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65420 res!501300) b!744172))

(assert (= (and b!744172 res!501312) b!744170))

(assert (= (and b!744170 res!501311) b!744156))

(assert (= (and b!744156 res!501301) b!744163))

(assert (= (and b!744163 res!501310) b!744160))

(assert (= (and b!744160 res!501304) b!744171))

(assert (= (and b!744171 res!501305) b!744162))

(assert (= (and b!744162 res!501308) b!744169))

(assert (= (and b!744169 res!501306) b!744159))

(assert (= (and b!744159 res!501309) b!744173))

(assert (= (and b!744173 res!501298) b!744161))

(assert (= (and b!744161 c!81810) b!744165))

(assert (= (and b!744161 (not c!81810)) b!744164))

(assert (= (and b!744161 res!501302) b!744157))

(assert (= (and b!744157 res!501299) b!744167))

(assert (= (and b!744167 res!501303) b!744158))

(assert (= (and b!744158 res!501297) b!744168))

(assert (= (and b!744167 (not res!501307)) b!744166))

(declare-fun m!694809 () Bool)

(assert (=> b!744171 m!694809))

(declare-fun m!694811 () Bool)

(assert (=> b!744166 m!694811))

(assert (=> b!744166 m!694811))

(declare-fun m!694813 () Bool)

(assert (=> b!744166 m!694813))

(assert (=> b!744164 m!694811))

(assert (=> b!744164 m!694811))

(assert (=> b!744164 m!694813))

(assert (=> b!744158 m!694811))

(assert (=> b!744158 m!694811))

(declare-fun m!694815 () Bool)

(assert (=> b!744158 m!694815))

(declare-fun m!694817 () Bool)

(assert (=> b!744163 m!694817))

(declare-fun m!694819 () Bool)

(assert (=> b!744157 m!694819))

(declare-fun m!694821 () Bool)

(assert (=> b!744157 m!694821))

(assert (=> b!744157 m!694819))

(declare-fun m!694823 () Bool)

(assert (=> b!744157 m!694823))

(declare-fun m!694825 () Bool)

(assert (=> b!744157 m!694825))

(declare-fun m!694827 () Bool)

(assert (=> b!744157 m!694827))

(assert (=> b!744170 m!694811))

(assert (=> b!744170 m!694811))

(declare-fun m!694829 () Bool)

(assert (=> b!744170 m!694829))

(declare-fun m!694831 () Bool)

(assert (=> b!744162 m!694831))

(declare-fun m!694833 () Bool)

(assert (=> b!744167 m!694833))

(declare-fun m!694835 () Bool)

(assert (=> b!744167 m!694835))

(declare-fun m!694837 () Bool)

(assert (=> b!744156 m!694837))

(assert (=> b!744159 m!694811))

(assert (=> b!744159 m!694811))

(declare-fun m!694839 () Bool)

(assert (=> b!744159 m!694839))

(assert (=> b!744159 m!694839))

(assert (=> b!744159 m!694811))

(declare-fun m!694841 () Bool)

(assert (=> b!744159 m!694841))

(assert (=> b!744168 m!694811))

(assert (=> b!744168 m!694811))

(declare-fun m!694843 () Bool)

(assert (=> b!744168 m!694843))

(declare-fun m!694845 () Bool)

(assert (=> b!744160 m!694845))

(assert (=> b!744165 m!694811))

(assert (=> b!744165 m!694811))

(declare-fun m!694847 () Bool)

(assert (=> b!744165 m!694847))

(declare-fun m!694849 () Bool)

(assert (=> start!65420 m!694849))

(declare-fun m!694851 () Bool)

(assert (=> start!65420 m!694851))

(declare-fun m!694853 () Bool)

(assert (=> b!744173 m!694853))

(push 1)

