; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65482 () Bool)

(assert start!65482)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41608 0))(
  ( (array!41609 (arr!19914 (Array (_ BitVec 32) (_ BitVec 64))) (size!20335 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41608)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!745857 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!416577 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7521 0))(
  ( (MissingZero!7521 (index!32451 (_ BitVec 32))) (Found!7521 (index!32452 (_ BitVec 32))) (Intermediate!7521 (undefined!8333 Bool) (index!32453 (_ BitVec 32)) (x!63432 (_ BitVec 32))) (Undefined!7521) (MissingVacant!7521 (index!32454 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41608 (_ BitVec 32)) SeekEntryResult!7521)

(assert (=> b!745857 (= e!416577 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19914 a!3186) j!159) a!3186 mask!3328) (Found!7521 j!159)))))

(declare-fun b!745858 () Bool)

(declare-fun res!502822 () Bool)

(declare-fun e!416576 () Bool)

(assert (=> b!745858 (=> (not res!502822) (not e!416576))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41608 (_ BitVec 32)) Bool)

(assert (=> b!745858 (= res!502822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745859 () Bool)

(declare-fun res!502821 () Bool)

(declare-fun e!416574 () Bool)

(assert (=> b!745859 (=> (not res!502821) (not e!416574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745859 (= res!502821 (validKeyInArray!0 (select (arr!19914 a!3186) j!159)))))

(declare-fun lt!331431 () SeekEntryResult!7521)

(declare-fun b!745860 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41608 (_ BitVec 32)) SeekEntryResult!7521)

(assert (=> b!745860 (= e!416577 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19914 a!3186) j!159) a!3186 mask!3328) lt!331431))))

(declare-fun b!745861 () Bool)

(declare-fun res!502820 () Bool)

(declare-fun e!416569 () Bool)

(assert (=> b!745861 (=> (not res!502820) (not e!416569))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745861 (= res!502820 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19914 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745863 () Bool)

(declare-fun e!416575 () Bool)

(declare-fun e!416572 () Bool)

(assert (=> b!745863 (= e!416575 e!416572)))

(declare-fun res!502818 () Bool)

(assert (=> b!745863 (=> res!502818 e!416572)))

(declare-fun lt!331434 () SeekEntryResult!7521)

(declare-fun lt!331433 () (_ BitVec 64))

(declare-fun lt!331429 () SeekEntryResult!7521)

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!745863 (= res!502818 (or (not (= lt!331429 lt!331434)) (= (select (store (arr!19914 a!3186) i!1173 k!2102) index!1321) lt!331433) (not (= (select (store (arr!19914 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!745863 (= lt!331429 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19914 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745864 () Bool)

(declare-fun res!502823 () Bool)

(assert (=> b!745864 (=> (not res!502823) (not e!416576))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745864 (= res!502823 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20335 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20335 a!3186))))))

(declare-fun b!745865 () Bool)

(declare-fun res!502824 () Bool)

(assert (=> b!745865 (=> (not res!502824) (not e!416574))))

(assert (=> b!745865 (= res!502824 (and (= (size!20335 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20335 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20335 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745866 () Bool)

(declare-fun res!502815 () Bool)

(assert (=> b!745866 (=> (not res!502815) (not e!416574))))

(assert (=> b!745866 (= res!502815 (validKeyInArray!0 k!2102))))

(declare-fun b!745867 () Bool)

(assert (=> b!745867 (= e!416572 true)))

(declare-fun lt!331432 () SeekEntryResult!7521)

(assert (=> b!745867 (= lt!331432 lt!331429)))

(declare-fun b!745868 () Bool)

(declare-fun res!502827 () Bool)

(assert (=> b!745868 (=> (not res!502827) (not e!416569))))

(assert (=> b!745868 (= res!502827 e!416577)))

(declare-fun c!81903 () Bool)

(assert (=> b!745868 (= c!81903 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745869 () Bool)

(declare-fun res!502814 () Bool)

(assert (=> b!745869 (=> (not res!502814) (not e!416574))))

(declare-fun arrayContainsKey!0 (array!41608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745869 (= res!502814 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745870 () Bool)

(assert (=> b!745870 (= e!416576 e!416569)))

(declare-fun res!502816 () Bool)

(assert (=> b!745870 (=> (not res!502816) (not e!416569))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745870 (= res!502816 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19914 a!3186) j!159) mask!3328) (select (arr!19914 a!3186) j!159) a!3186 mask!3328) lt!331431))))

(assert (=> b!745870 (= lt!331431 (Intermediate!7521 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745862 () Bool)

(declare-fun e!416571 () Bool)

(assert (=> b!745862 (= e!416569 e!416571)))

(declare-fun res!502825 () Bool)

(assert (=> b!745862 (=> (not res!502825) (not e!416571))))

(declare-fun lt!331427 () SeekEntryResult!7521)

(declare-fun lt!331435 () SeekEntryResult!7521)

(assert (=> b!745862 (= res!502825 (= lt!331427 lt!331435))))

(declare-fun lt!331436 () array!41608)

(assert (=> b!745862 (= lt!331435 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331433 lt!331436 mask!3328))))

(assert (=> b!745862 (= lt!331427 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331433 mask!3328) lt!331433 lt!331436 mask!3328))))

(assert (=> b!745862 (= lt!331433 (select (store (arr!19914 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745862 (= lt!331436 (array!41609 (store (arr!19914 a!3186) i!1173 k!2102) (size!20335 a!3186)))))

(declare-fun res!502826 () Bool)

(assert (=> start!65482 (=> (not res!502826) (not e!416574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65482 (= res!502826 (validMask!0 mask!3328))))

(assert (=> start!65482 e!416574))

(assert (=> start!65482 true))

(declare-fun array_inv!15688 (array!41608) Bool)

(assert (=> start!65482 (array_inv!15688 a!3186)))

(declare-fun b!745871 () Bool)

(declare-fun res!502812 () Bool)

(assert (=> b!745871 (=> (not res!502812) (not e!416576))))

(declare-datatypes ((List!13969 0))(
  ( (Nil!13966) (Cons!13965 (h!15037 (_ BitVec 64)) (t!20292 List!13969)) )
))
(declare-fun arrayNoDuplicates!0 (array!41608 (_ BitVec 32) List!13969) Bool)

(assert (=> b!745871 (= res!502812 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13966))))

(declare-fun b!745872 () Bool)

(declare-fun e!416573 () Bool)

(assert (=> b!745872 (= e!416573 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19914 a!3186) j!159) a!3186 mask!3328) lt!331434))))

(declare-fun b!745873 () Bool)

(assert (=> b!745873 (= e!416571 (not e!416575))))

(declare-fun res!502813 () Bool)

(assert (=> b!745873 (=> res!502813 e!416575)))

(assert (=> b!745873 (= res!502813 (or (not (is-Intermediate!7521 lt!331435)) (bvslt x!1131 (x!63432 lt!331435)) (not (= x!1131 (x!63432 lt!331435))) (not (= index!1321 (index!32453 lt!331435)))))))

(assert (=> b!745873 e!416573))

(declare-fun res!502817 () Bool)

(assert (=> b!745873 (=> (not res!502817) (not e!416573))))

(assert (=> b!745873 (= res!502817 (= lt!331432 lt!331434))))

(assert (=> b!745873 (= lt!331434 (Found!7521 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41608 (_ BitVec 32)) SeekEntryResult!7521)

(assert (=> b!745873 (= lt!331432 (seekEntryOrOpen!0 (select (arr!19914 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!745873 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25522 0))(
  ( (Unit!25523) )
))
(declare-fun lt!331428 () Unit!25522)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25522)

(assert (=> b!745873 (= lt!331428 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745874 () Bool)

(assert (=> b!745874 (= e!416574 e!416576)))

(declare-fun res!502819 () Bool)

(assert (=> b!745874 (=> (not res!502819) (not e!416576))))

(declare-fun lt!331430 () SeekEntryResult!7521)

(assert (=> b!745874 (= res!502819 (or (= lt!331430 (MissingZero!7521 i!1173)) (= lt!331430 (MissingVacant!7521 i!1173))))))

(assert (=> b!745874 (= lt!331430 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65482 res!502826) b!745865))

(assert (= (and b!745865 res!502824) b!745859))

(assert (= (and b!745859 res!502821) b!745866))

(assert (= (and b!745866 res!502815) b!745869))

(assert (= (and b!745869 res!502814) b!745874))

(assert (= (and b!745874 res!502819) b!745858))

(assert (= (and b!745858 res!502822) b!745871))

(assert (= (and b!745871 res!502812) b!745864))

(assert (= (and b!745864 res!502823) b!745870))

(assert (= (and b!745870 res!502816) b!745861))

(assert (= (and b!745861 res!502820) b!745868))

(assert (= (and b!745868 c!81903) b!745860))

(assert (= (and b!745868 (not c!81903)) b!745857))

(assert (= (and b!745868 res!502827) b!745862))

(assert (= (and b!745862 res!502825) b!745873))

(assert (= (and b!745873 res!502817) b!745872))

(assert (= (and b!745873 (not res!502813)) b!745863))

(assert (= (and b!745863 (not res!502818)) b!745867))

(declare-fun m!696265 () Bool)

(assert (=> b!745859 m!696265))

(assert (=> b!745859 m!696265))

(declare-fun m!696267 () Bool)

(assert (=> b!745859 m!696267))

(assert (=> b!745870 m!696265))

(assert (=> b!745870 m!696265))

(declare-fun m!696269 () Bool)

(assert (=> b!745870 m!696269))

(assert (=> b!745870 m!696269))

(assert (=> b!745870 m!696265))

(declare-fun m!696271 () Bool)

(assert (=> b!745870 m!696271))

(assert (=> b!745860 m!696265))

(assert (=> b!745860 m!696265))

(declare-fun m!696273 () Bool)

(assert (=> b!745860 m!696273))

(declare-fun m!696275 () Bool)

(assert (=> b!745862 m!696275))

(declare-fun m!696277 () Bool)

(assert (=> b!745862 m!696277))

(declare-fun m!696279 () Bool)

(assert (=> b!745862 m!696279))

(assert (=> b!745862 m!696275))

(declare-fun m!696281 () Bool)

(assert (=> b!745862 m!696281))

(declare-fun m!696283 () Bool)

(assert (=> b!745862 m!696283))

(assert (=> b!745872 m!696265))

(assert (=> b!745872 m!696265))

(declare-fun m!696285 () Bool)

(assert (=> b!745872 m!696285))

(declare-fun m!696287 () Bool)

(assert (=> b!745858 m!696287))

(assert (=> b!745857 m!696265))

(assert (=> b!745857 m!696265))

(declare-fun m!696289 () Bool)

(assert (=> b!745857 m!696289))

(assert (=> b!745873 m!696265))

(assert (=> b!745873 m!696265))

(declare-fun m!696291 () Bool)

(assert (=> b!745873 m!696291))

(declare-fun m!696293 () Bool)

(assert (=> b!745873 m!696293))

(declare-fun m!696295 () Bool)

(assert (=> b!745873 m!696295))

(declare-fun m!696297 () Bool)

(assert (=> b!745871 m!696297))

(declare-fun m!696299 () Bool)

(assert (=> b!745866 m!696299))

(assert (=> b!745863 m!696279))

(declare-fun m!696301 () Bool)

(assert (=> b!745863 m!696301))

(assert (=> b!745863 m!696265))

(assert (=> b!745863 m!696265))

(assert (=> b!745863 m!696289))

(declare-fun m!696303 () Bool)

(assert (=> start!65482 m!696303))

(declare-fun m!696305 () Bool)

(assert (=> start!65482 m!696305))

(declare-fun m!696307 () Bool)

(assert (=> b!745869 m!696307))

(declare-fun m!696309 () Bool)

(assert (=> b!745874 m!696309))

(declare-fun m!696311 () Bool)

(assert (=> b!745861 m!696311))

(push 1)

